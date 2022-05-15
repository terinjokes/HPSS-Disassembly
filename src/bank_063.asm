; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $063", ROMX[$4000], BANK[$63]

    ld h, e                                       ; $4000: $63
    dec de                                        ; $4001: $1b
    sub c                                         ; $4002: $91
    db $eb                                        ; $4003: $eb
    add d                                         ; $4004: $82
    ld a, [$2a1d]                                 ; $4005: $fa $1d $2a
    rrca                                          ; $4008: $0f
    add [hl]                                      ; $4009: $86
    and $b5                                       ; $400a: $e6 $b5
    ld b, d                                       ; $400c: $42
    ld c, e                                       ; $400d: $4b
    rst $28                                       ; $400e: $ef
    sub h                                         ; $400f: $94
    db $f4                                        ; $4010: $f4
    sbc [hl]                                      ; $4011: $9e
    ld e, a                                       ; $4012: $5f
    ld b, b                                       ; $4013: $40
    add hl, sp                                    ; $4014: $39
    dec de                                        ; $4015: $1b
    ld e, a                                       ; $4016: $5f
    sub b                                         ; $4017: $90
    or [hl]                                       ; $4018: $b6
    ld [hl], $ef                                  ; $4019: $36 $ef
    db $10                                        ; $401b: $10
    dec h                                         ; $401c: $25
    cp l                                          ; $401d: $bd
    ld b, e                                       ; $401e: $43
    call nc, $e9ca                                ; $401f: $d4 $ca $e9
    ei                                            ; $4022: $fb
    dec b                                         ; $4023: $05
    dec de                                        ; $4024: $1b
    sub c                                         ; $4025: $91
    ld l, e                                       ; $4026: $6b
    ld [hl-], a                                   ; $4027: $32
    inc a                                         ; $4028: $3c
    adc a                                         ; $4029: $8f
    ld l, e                                       ; $402a: $6b
    rst $38                                       ; $402b: $ff
    push bc                                       ; $402c: $c5
    add hl, sp                                    ; $402d: $39
    db $18, $9a                                   ; $402e: $18 $9a
    rst $10                                       ; $4030: $d7
    ld a, [bc]                                    ; $4031: $0a
    dec l                                         ; $4032: $2d
    cp l                                          ; $4033: $bd
    ld d, e                                       ; $4034: $53
    jp nc, $7e7b                                  ; $4035: $d2 $7b $7e

    ld bc, $6ce5                                  ; $4038: $01 $e5 $6c
    ld a, h                                       ; $403b: $7c
    ld b, c                                       ; $403c: $41
    jp c, $bcda                                   ; $403d: $da $da $bc

    ld b, e                                       ; $4040: $43
    sub h                                         ; $4041: $94
    db $f4                                        ; $4042: $f4
    ld c, $51                                     ; $4043: $0e $51
    dec hl                                        ; $4045: $2b
    and a                                         ; $4046: $a7
    rst $28                                       ; $4047: $ef
    rla                                           ; $4048: $17
    dec de                                        ; $4049: $1b
    sub c                                         ; $404a: $91
    dec hl                                        ; $404b: $2b
    ld b, e                                       ; $404c: $43
    ld c, e                                       ; $404d: $4b
    rst $28                                       ; $404e: $ef
    sub h                                         ; $404f: $94
    ld e, h                                       ; $4050: $5c
    push de                                       ; $4051: $d5
    ld c, b                                       ; $4052: $48
    or c                                          ; $4053: $b1
    and b                                         ; $4054: $a0
    rst $00                                       ; $4055: $c7
    add hl, de                                    ; $4056: $19
    ld a, [hl-]                                   ; $4057: $3a
    xor d                                         ; $4058: $aa
    jr jr_063_405f                                ; $4059: $18 $04

    ld a, l                                       ; $405b: $7d
    cp a                                          ; $405c: $bf
    dec de                                        ; $405d: $1b
    sub c                                         ; $405e: $91

jr_063_405f:
    xor e                                         ; $405f: $ab
    dec [hl]                                      ; $4060: $35
    db $fc                                        ; $4061: $fc
    cp b                                          ; $4062: $b8
    add sp, -$40                                  ; $4063: $e8 $c0
    ccf                                           ; $4065: $3f
    and c                                         ; $4066: $a1
    ld a, [c]                                     ; $4067: $f2
    ld h, b                                       ; $4068: $60
    ld l, b                                       ; $4069: $68
    ld e, [hl]                                    ; $406a: $5e
    dec hl                                        ; $406b: $2b
    or h                                          ; $406c: $b4
    db $f4                                        ; $406d: $f4
    ld c, [hl]                                    ; $406e: $4e
    ld c, c                                       ; $406f: $49
    rst $28                                       ; $4070: $ef
    ld sp, hl                                     ; $4071: $f9
    dec b                                         ; $4072: $05
    sub h                                         ; $4073: $94
    or e                                          ; $4074: $b3
    pop af                                        ; $4075: $f1
    dec b                                         ; $4076: $05
    ld l, c                                       ; $4077: $69
    ld l, e                                       ; $4078: $6b
    di                                            ; $4079: $f3
    ld c, $51                                     ; $407a: $0e $51
    jp nc, Jump_063_443b                          ; $407c: $d2 $3b $44

    xor l                                         ; $407f: $ad
    sbc h                                         ; $4080: $9c
    cp [hl]                                       ; $4081: $be
    ld e, a                                       ; $4082: $5f
    dec de                                        ; $4083: $1b
    sub c                                         ; $4084: $91
    dec bc                                        ; $4085: $0b
    call c, Call_063_543b                         ; $4086: $dc $3b $54
    ld e, $0c                                     ; $4089: $1e $0c
    call $856b                                    ; $408b: $cd $6b $85
    sub [hl]                                      ; $408e: $96
    sbc $29                                       ; $408f: $de $29
    jp hl                                         ; $4091: $e9


    dec a                                         ; $4092: $3d
    cp a                                          ; $4093: $bf
    add b                                         ; $4094: $80
    ld [hl], d                                    ; $4095: $72
    ld [hl], $be                                  ; $4096: $36 $be
    jr nz, jr_063_4107                            ; $4098: $20 $6d

    ld l, l                                       ; $409a: $6d
    sbc $21                                       ; $409b: $de $21
    ld c, d                                       ; $409d: $4a
    ld a, d                                       ; $409e: $7a
    add a                                         ; $409f: $87
    xor b                                         ; $40a0: $a8
    sub l                                         ; $40a1: $95
    db $d3                                        ; $40a2: $d3
    rst $30                                       ; $40a3: $f7
    dec bc                                        ; $40a4: $0b
    dec de                                        ; $40a5: $1b
    sub c                                         ; $40a6: $91
    di                                            ; $40a7: $f3
    sbc l                                         ; $40a8: $9d
    call nc, Call_000_1787                        ; $40a9: $d4 $87 $17
    add l                                         ; $40ac: $85
    call c, $91e7                                 ; $40ad: $dc $e7 $91
    ccf                                           ; $40b0: $3f
    or $74                                        ; $40b1: $f6 $74
    adc h                                         ; $40b3: $8c
    ld b, c                                       ; $40b4: $41
    ld [hl], l                                    ; $40b5: $75
    di                                            ; $40b6: $f3
    jp c, $2bcc                                   ; $40b7: $da $cc $2b

    sbc d                                         ; $40ba: $9a
    adc [hl]                                      ; $40bb: $8e
    ld [c], a                                     ; $40bc: $e2
    ld [hl], l                                    ; $40bd: $75
    adc l                                         ; $40be: $8d
    call c, Call_000_1b2f                         ; $40bf: $dc $2f $1b
    sub c                                         ; $40c2: $91
    xor e                                         ; $40c3: $ab
    xor l                                         ; $40c4: $ad
    ld b, d                                       ; $40c5: $42
    ld [hl+], a                                   ; $40c6: $22
    ld [$fc9a], sp                                ; $40c7: $08 $9a $fc
    or c                                          ; $40ca: $b1
    ld [hl], e                                    ; $40cb: $73
    ccf                                           ; $40cc: $3f
    ld a, [de]                                    ; $40cd: $1a
    sbc d                                         ; $40ce: $9a
    ld b, a                                       ; $40cf: $47
    ld d, d                                       ; $40d0: $52
    jp hl                                         ; $40d1: $e9


    xor [hl]                                      ; $40d2: $ae
    db $ec                                        ; $40d3: $ec
    ld a, l                                       ; $40d4: $7d
    pop hl                                        ; $40d5: $e1
    rst $18                                       ; $40d6: $df
    ld d, a                                       ; $40d7: $57
    adc c                                         ; $40d8: $89
    add [hl]                                      ; $40d9: $86
    inc b                                         ; $40da: $04
    add hl, hl                                    ; $40db: $29
    adc $c1                                       ; $40dc: $ce $c1
    ret nc                                        ; $40de: $d0

    cp h                                          ; $40df: $bc
    ld b, [hl]                                    ; $40e0: $46
    ld [bc], a                                    ; $40e1: $02
    ld b, e                                       ; $40e2: $43
    ld d, l                                       ; $40e3: $55
    sbc $e3                                       ; $40e4: $de $e3
    jp z, $aace                                   ; $40e6: $ca $ce $aa

    ld a, [hl]                                    ; $40e9: $7e
    ld h, e                                       ; $40ea: $63
    jr nc, jr_063_4121                            ; $40eb: $30 $34

    or e                                          ; $40ed: $b3
    rst $10                                       ; $40ee: $d7
    ld c, h                                       ; $40ef: $4c
    ld d, d                                       ; $40f0: $52
    rla                                           ; $40f1: $17
    ld c, h                                       ; $40f2: $4c
    and e                                         ; $40f3: $a3
    rst $28                                       ; $40f4: $ef
    rla                                           ; $40f5: $17
    dec de                                        ; $40f6: $1b
    sub c                                         ; $40f7: $91
    di                                            ; $40f8: $f3
    inc h                                         ; $40f9: $24
    and d                                         ; $40fa: $a2
    and [hl]                                      ; $40fb: $a6
    ld [hl], e                                    ; $40fc: $73
    ld d, c                                       ; $40fd: $51
    ret z                                         ; $40fe: $c8

    and c                                         ; $40ff: $a1
    ld a, c                                       ; $4100: $79
    ld d, $57                                     ; $4101: $16 $57
    or $54                                        ; $4103: $f6 $54
    inc c                                         ; $4105: $0c
    add d                                         ; $4106: $82

jr_063_4107:
    xor $50                                       ; $4107: $ee $50
    cp h                                          ; $4109: $bc
    xor e                                         ; $410a: $ab
    ld [hl], h                                    ; $410b: $74
    ld b, b                                       ; $410c: $40
    inc b                                         ; $410d: $04
    ld h, $4a                                     ; $410e: $26 $4a
    sub d                                         ; $4110: $92
    and c                                         ; $4111: $a1
    inc hl                                        ; $4112: $23
    ld l, l                                       ; $4113: $6d
    db $ed                                        ; $4114: $ed
    sub h                                         ; $4115: $94
    adc h                                         ; $4116: $8c
    ld c, l                                       ; $4117: $4d
    xor a                                         ; $4118: $af
    db $e4                                        ; $4119: $e4
    rst $08                                       ; $411a: $cf
    sub [hl]                                      ; $411b: $96
    add $29                                       ; $411c: $c6 $29
    cp [hl]                                       ; $411e: $be
    ld e, a                                       ; $411f: $5f
    dec de                                        ; $4120: $1b

jr_063_4121:
    sub c                                         ; $4121: $91
    dec bc                                        ; $4122: $0b
    push bc                                       ; $4123: $c5
    sub l                                         ; $4124: $95
    cp l                                          ; $4125: $bd
    xor e                                         ; $4126: $ab
    ld [hl], h                                    ; $4127: $74
    ld b, b                                       ; $4128: $40
    inc b                                         ; $4129: $04
    ld h, $4a                                     ; $412a: $26 $4a
    ld h, d                                       ; $412c: $62
    ld a, b                                       ; $412d: $78
    ld e, $e7                                     ; $412e: $1e $e7
    ret nc                                        ; $4130: $d0

    add hl, sp                                    ; $4131: $39
    add hl, bc                                    ; $4132: $09
    push bc                                       ; $4133: $c5
    ld d, d                                       ; $4134: $52
    ld b, c                                       ; $4135: $41
    ret nc                                        ; $4136: $d0

    ld [hl], e                                    ; $4137: $73
    ld c, $a9                                     ; $4138: $0e $a9
    jr c, jr_063_4199                             ; $413a: $38 $5d

jr_063_413c:
    ret nc                                        ; $413c: $d0

    add hl, sp                                    ; $413d: $39
    set 2, h                                      ; $413e: $cb $d4
    ld a, a                                       ; $4140: $7f
    ld e, d                                       ; $4141: $5a
    rst $30                                       ; $4142: $f7
    dec bc                                        ; $4143: $0b
    dec de                                        ; $4144: $1b
    sub c                                         ; $4145: $91
    ld b, e                                       ; $4146: $43
    inc c                                         ; $4147: $0c
    ld de, $f73b                                  ; $4148: $11 $3b $f7
    and e                                         ; $414b: $a3
    ld e, l                                       ; $414c: $5d
    ld c, $4f                                     ; $414d: $0e $4f
    ld b, e                                       ; $414f: $43
    xor a                                         ; $4150: $af
    bit 1, a                                      ; $4151: $cb $4f

Call_063_4153:
jr_063_4153:
    call nc, Call_063_42a9                        ; $4153: $d4 $a9 $42
    push hl                                       ; $4156: $e5
    ld [$d55e], a                                 ; $4157: $ea $5e $d5
    ld l, a                                       ; $415a: $6f
    sbc b                                         ; $415b: $98
    rst $28                                       ; $415c: $ef
    rla                                           ; $415d: $17
    dec de                                        ; $415e: $1b
    sub c                                         ; $415f: $91
    set 6, l                                      ; $4160: $cb $f5
    sbc b                                         ; $4162: $98
    sub d                                         ; $4163: $92
    ld d, $f4                                     ; $4164: $16 $f4
    cp d                                          ; $4166: $ba
    pop de                                        ; $4167: $d1
    cp c                                          ; $4168: $b9
    rra                                           ; $4169: $1f
    db $ed                                        ; $416a: $ed
    ld a, [hl+]                                   ; $416b: $2a
    dec e                                         ; $416c: $1d
    db $10                                        ; $416d: $10

jr_063_416e:
    add c                                         ; $416e: $81
    adc c                                         ; $416f: $89
    sub d                                         ; $4170: $92
    db $eb                                        ; $4171: $eb
    ld b, [hl]                                    ; $4172: $46
    rst $30                                       ; $4173: $f7
    ld [$b21a], a                                 ; $4174: $ea $1a $b2
    ld a, h                                       ; $4177: $7c
    ld sp, $aaef                                  ; $4178: $31 $ef $aa
    ld l, e                                       ; $417b: $6b
    rst $08                                       ; $417c: $cf
    dec sp                                        ; $417d: $3b
    rst $38                                       ; $417e: $ff
    db $fc                                        ; $417f: $fc
    sra [hl]                                      ; $4180: $cb $2e
    cp h                                          ; $4182: $bc
    ld e, a                                       ; $4183: $5f
    dec de                                        ; $4184: $1b
    sub c                                         ; $4185: $91
    adc e                                         ; $4186: $8b
    xor b                                         ; $4187: $a8
    ld e, c                                       ; $4188: $59
    reti                                          ; $4189: $d9


    ld l, e                                       ; $418a: $6b
    inc h                                         ; $418b: $24
    jr nc, jr_063_41e2                            ; $418c: $30 $54

    push hl                                       ; $418e: $e5
    sub c                                         ; $418f: $91
    ld d, [hl]                                    ; $4190: $56
    ld [hl], l                                    ; $4191: $75
    add sp, $1c                                   ; $4192: $e8 $1c
    ld sp, hl                                     ; $4194: $f9
    ld [hl], e                                    ; $4195: $73
    ld sp, $32a4                                  ; $4196: $31 $a4 $32

jr_063_4199:
    xor a                                         ; $4199: $af
    add [hl]                                      ; $419a: $86
    ld h, a                                       ; $419b: $67
    jr jr_063_413c                                ; $419c: $18 $9e

    rst $00                                       ; $419e: $c7
    cp c                                          ; $419f: $b9
    ret c                                         ; $41a0: $d8

    jr c, jr_063_416e                             ; $41a1: $38 $cb

    xor [hl]                                      ; $41a3: $ae
    jp nc, Jump_000_1101                          ; $41a4: $d2 $01 $11

    sbc b                                         ; $41a7: $98
    jr z, jr_063_4153                             ; $41a8: $28 $a9

    cp $d3                                        ; $41aa: $fe $d3
    cp d                                          ; $41ac: $ba
    ld e, a                                       ; $41ad: $5f
    dec de                                        ; $41ae: $1b
    sub c                                         ; $41af: $91
    ld c, e                                       ; $41b0: $4b
    inc b                                         ; $41b1: $04
    ld c, l                                       ; $41b2: $4d
    cp $d8                                        ; $41b3: $fe $d8
    cp c                                          ; $41b5: $b9
    rra                                           ; $41b6: $1f
    dec c                                         ; $41b7: $0d
    dec l                                         ; $41b8: $2d
    ld l, e                                       ; $41b9: $6b
    inc h                                         ; $41ba: $24
    jr nc, jr_063_4211                            ; $41bb: $30 $54

    push hl                                       ; $41bd: $e5
    and l                                         ; $41be: $a5
    ld d, l                                       ; $41bf: $55
    ld c, b                                       ; $41c0: $48
    ld e, h                                       ; $41c1: $5c
    inc d                                         ; $41c2: $14
    ld [hl], d                                    ; $41c3: $72
    and h                                         ; $41c4: $a4
    sbc [hl]                                      ; $41c5: $9e
    inc c                                         ; $41c6: $0c
    and l                                         ; $41c7: $a5
    or d                                          ; $41c8: $b2
    rla                                           ; $41c9: $17
    ld a, l                                       ; $41ca: $7d
    add hl, hl                                    ; $41cb: $29
    sub l                                         ; $41cc: $95
    rst $30                                       ; $41cd: $f7
    and e                                         ; $41ce: $a3
    or l                                          ; $41cf: $b5
    sbc c                                         ; $41d0: $99
    ld d, a                                       ; $41d1: $57
    inc [hl]                                      ; $41d2: $34
    dec e                                         ; $41d3: $1d
    push bc                                       ; $41d4: $c5
    db $eb                                        ; $41d5: $eb
    ld a, [de]                                    ; $41d6: $1a
    add hl, sp                                    ; $41d7: $39
    ld l, e                                       ; $41d8: $6b
    sbc h                                         ; $41d9: $9c
    sbc [hl]                                      ; $41da: $9e
    ld a, c                                       ; $41db: $79
    db $e4                                        ; $41dc: $e4
    rst $28                                       ; $41dd: $ef
    ld sp, $5aaf                                  ; $41de: $31 $af $5a
    jp hl                                         ; $41e1: $e9


jr_063_41e2:
    add d                                         ; $41e2: $82
    rst $30                                       ; $41e3: $f7
    dec bc                                        ; $41e4: $0b
    dec de                                        ; $41e5: $1b
    sub c                                         ; $41e6: $91
    set 6, l                                      ; $41e7: $cb $f5
    sbc b                                         ; $41e9: $98
    sub d                                         ; $41ea: $92
    ld d, $f4                                     ; $41eb: $16 $f4
    ld e, d                                       ; $41ed: $5a
    ld c, c                                       ; $41ee: $49
    xor c                                         ; $41ef: $a9
    add b                                         ; $41f0: $80
    ld d, $5e                                     ; $41f1: $16 $5e
    inc d                                         ; $41f3: $14
    ld [hl], d                                    ; $41f4: $72
    rla                                           ; $41f5: $17
    ld c, d                                       ; $41f6: $4a
    jp hl                                         ; $41f7: $e9


    ld e, a                                       ; $41f8: $5f
    or b                                          ; $41f9: $b0
    xor $50                                       ; $41fa: $ee $50
    ld c, e                                       ; $41fc: $4b
    jp $2f4a                                      ; $41fd: $c3 $4a $2f


    db $dd                                        ; $4200: $dd
    cp e                                          ; $4201: $bb
    ld c, d                                       ; $4202: $4a
    rlca                                          ; $4203: $07
    ld b, h                                       ; $4204: $44
    ld h, b                                       ; $4205: $60
    and d                                         ; $4206: $a2
    inc h                                         ; $4207: $24
    add hl, de                                    ; $4208: $19
    ld a, [hl-]                                   ; $4209: $3a
    sbc $2f                                       ; $420a: $de $2f
    dec de                                        ; $420c: $1b
    sub c                                         ; $420d: $91
    ld l, e                                       ; $420e: $6b
    nop                                           ; $420f: $00
    dec sp                                        ; $4210: $3b

jr_063_4211:
    sub h                                         ; $4211: $94
    jp z, $1653                                   ; $4212: $ca $53 $16

    ld h, h                                       ; $4215: $64
    xor a                                         ; $4216: $af
    xor d                                         ; $4217: $aa
    rst $18                                       ; $4218: $df
    ld [hl], b                                    ; $4219: $70
    xor $47                                       ; $421a: $ee $47

Call_063_421c:
    dec sp                                        ; $421c: $3b
    rst $38                                       ; $421d: $ff
    ld d, a                                       ; $421e: $57
    add sp, $50                                   ; $421f: $e8 $50
    sub l                                         ; $4221: $95
    push hl                                       ; $4222: $e5
    ld a, [hl]                                    ; $4223: $7e
    ld bc, $911b                                  ; $4224: $01 $1b $91
    ld b, e                                       ; $4227: $43
    ld d, b                                       ; $4228: $50
    ld e, h                                       ; $4229: $5c
    rst $30                                       ; $422a: $f7
    ld a, c                                       ; $422b: $79
    db $e4                                        ; $422c: $e4
    adc a                                         ; $422d: $8f
    cp l                                          ; $422e: $bd
    sbc b                                         ; $422f: $98
    sub d                                         ; $4230: $92
    and $a1                                       ; $4231: $e6 $a1
    ld h, l                                       ; $4233: $65
    ld d, $57                                     ; $4234: $16 $57
    or $38                                        ; $4236: $f6 $38
    ld b, e                                       ; $4238: $43
    rst $00                                       ; $4239: $c7
    rst $20                                       ; $423a: $e7
    dec bc                                        ; $423b: $0b
    ld c, $9d                                     ; $423c: $0e $9d
    inc hl                                        ; $423e: $23
    ld a, a                                       ; $423f: $7f
    ld l, $4a                                     ; $4240: $2e $4a
    ccf                                           ; $4242: $3f
    adc l                                         ; $4243: $8d
    db $fc                                        ; $4244: $fc
    add l                                         ; $4245: $85
    ld h, a                                       ; $4246: $67
    ld e, c                                       ; $4247: $59
    db $eb                                        ; $4248: $eb
    ld [hl], e                                    ; $4249: $73
    ld b, $d1                                     ; $424a: $06 $d1
    db $eb                                        ; $424c: $eb
    ld a, [hl]                                    ; $424d: $7e
    inc [hl]                                      ; $424e: $34
    ld b, l                                       ; $424f: $45
    ld a, c                                       ; $4250: $79
    ld e, d                                       ; $4251: $5a
    xor [hl]                                      ; $4252: $ae
    ld c, h                                       ; $4253: $4c
    call $af74                                    ; $4254: $cd $74 $af
    cp [hl]                                       ; $4257: $be
    ld e, a                                       ; $4258: $5f
    dec de                                        ; $4259: $1b
    sub c                                         ; $425a: $91
    halt                                          ; $425b: $76
    ld a, [hl+]                                   ; $425c: $2a
    cp l                                          ; $425d: $bd
    ld a, [c]                                     ; $425e: $f2
    ld c, h                                       ; $425f: $4c
    sbc h                                         ; $4260: $9c
    xor b                                         ; $4261: $a8
    add l                                         ; $4262: $85
    inc de                                        ; $4263: $13
    xor d                                         ; $4264: $aa
    ld a, [de]                                    ; $4265: $1a
    ld h, a                                       ; $4266: $67
    add sp, -$08                                  ; $4267: $e8 $f8
    ld a, h                                       ; $4269: $7c
    pop bc                                        ; $426a: $c1
    or e                                          ; $426b: $b3
    and a                                         ; $426c: $a7
    inc l                                         ; $426d: $2c
    ret z                                         ; $426e: $c8

    adc e                                         ; $426f: $8b
    ld b, d                                       ; $4270: $42
    xor $f3                                       ; $4271: $ee $f3
    ld a, [de]                                    ; $4273: $1a
    sub h                                         ; $4274: $94
    db $f4                                        ; $4275: $f4
    inc l                                         ; $4276: $2c
    adc e                                         ; $4277: $8b
    cp a                                          ; $4278: $bf
    ldh [$f3], a                                  ; $4279: $e0 $f3
    dec b                                         ; $427b: $05
    rst $10                                       ; $427c: $d7
    ld l, d                                       ; $427d: $6a
    adc [hl]                                      ; $427e: $8e
    inc c                                         ; $427f: $0c
    or c                                          ; $4280: $b1
    pop de                                        ; $4281: $d1
    inc a                                         ; $4282: $3c
    ld e, b                                       ; $4283: $58
    ld h, l                                       ; $4284: $65
    and e                                         ; $4285: $a3
    ld a, c                                       ; $4286: $79
    ld d, c                                       ; $4287: $51
    ret z                                         ; $4288: $c8

    ld e, c                                       ; $4289: $59
    ld b, [hl]                                    ; $428a: $46

Call_063_428b:
    ld a, [hl]                                    ; $428b: $7e
    cp [hl]                                       ; $428c: $be
    ld e, a                                       ; $428d: $5f
    dec de                                        ; $428e: $1b
    sub c                                         ; $428f: $91
    di                                            ; $4290: $f3
    ld [c], a                                     ; $4291: $e2
    xor $dc                                       ; $4292: $ee $dc
    adc a                                         ; $4294: $8f
    ld d, $75                                     ; $4295: $16 $75
    ld c, l                                       ; $4297: $4d
    ld l, h                                       ; $4298: $6c
    ld b, c                                       ; $4299: $41
    adc a                                         ; $429a: $8f
    ld [hl], h                                    ; $429b: $74
    ld h, l                                       ; $429c: $65
    rst $18                                       ; $429d: $df
    cpl                                           ; $429e: $2f
    dec de                                        ; $429f: $1b
    sub c                                         ; $42a0: $91
    adc e                                         ; $42a1: $8b
    rst $38                                       ; $42a2: $ff
    di                                            ; $42a3: $f3
    cp b                                          ; $42a4: $b8
    xor a                                         ; $42a5: $af

Call_063_42a6:
    inc h                                         ; $42a6: $24
    ld b, l                                       ; $42a7: $45
    add hl, sp                                    ; $42a8: $39

Call_063_42a9:
    ld b, c                                       ; $42a9: $41
    ret nc                                        ; $42aa: $d0

    rst $30                                       ; $42ab: $f7
    ld l, $73                                     ; $42ac: $2e $73
    ld l, h                                       ; $42ae: $6c
    db $f4                                        ; $42af: $f4
    ld e, d                                       ; $42b0: $5a
    call $2d51                                    ; $42b1: $cd $51 $2d
    dec sp                                        ; $42b4: $3b
    rst $08                                       ; $42b5: $cf
    rst $18                                       ; $42b6: $df
    rst $38                                       ; $42b7: $ff
    sbc $85                                       ; $42b8: $de $85
    xor d                                         ; $42ba: $aa
    or [hl]                                       ; $42bb: $b6
    sbc h                                         ; $42bc: $9c
    inc a                                         ; $42bd: $3c
    ret c                                         ; $42be: $d8

    rst $20                                       ; $42bf: $e7
    ld b, l                                       ; $42c0: $45
    ld hl, $2fe3                                  ; $42c1: $21 $e3 $2f
    ret c                                         ; $42c4: $d8

    cp l                                          ; $42c5: $bd
    jr z, jr_063_42ec                             ; $42c6: $28 $24

    rst $38                                       ; $42c8: $ff
    ld b, $7b                                     ; $42c9: $06 $7b
    sub l                                         ; $42cb: $95
    ld a, [$0450]                                 ; $42cc: $fa $50 $04
    rst $00                                       ; $42cf: $c7
    ret nc                                        ; $42d0: $d0

    ld d, a                                       ; $42d1: $57
    ld h, e                                       ; $42d2: $63
    sub b                                         ; $42d3: $90
    ei                                            ; $42d4: $fb
    dec b                                         ; $42d5: $05
    dec de                                        ; $42d6: $1b
    sub c                                         ; $42d7: $91
    di                                            ; $42d8: $f3
    sbc l                                         ; $42d9: $9d
    call nc, Call_000_1787                        ; $42da: $d4 $87 $17
    add l                                         ; $42dd: $85
    call c, $45e7                                 ; $42de: $dc $e7 $45
    ld hl, $abdd                                  ; $42e1: $21 $dd $ab
    ld a, [c]                                     ; $42e4: $f2
    ld a, [hl+]                                   ; $42e5: $2a
    sub h                                         ; $42e6: $94
    pop bc                                        ; $42e7: $c1
    inc l                                         ; $42e8: $2c
    inc hl                                        ; $42e9: $23
    ld a, a                                       ; $42ea: $7f
    db $fc                                        ; $42eb: $fc

jr_063_42ec:
    ld a, h                                       ; $42ec: $7c
    pop bc                                        ; $42ed: $c1
    add l                                         ; $42ee: $85
    or d                                          ; $42ef: $b2
    jr z, jr_063_4356                             ; $42f0: $28 $64

    db $fc                                        ; $42f2: $fc
    dec b                                         ; $42f3: $05
    cp e                                          ; $42f4: $bb
    ld d, a                                       ; $42f5: $57
    and c                                         ; $42f6: $a1
    xor h                                         ; $42f7: $ac
    cp d                                          ; $42f8: $ba
    rst $00                                       ; $42f9: $c7
    ld h, e                                       ; $42fa: $63
    add sp, -$4d                                  ; $42fb: $e8 $b3
    ld c, h                                       ; $42fd: $4c
    jp hl                                         ; $42fe: $e9


    cp l                                          ; $42ff: $bd
    dec sp                                        ; $4300: $3b
    rst $28                                       ; $4301: $ef
    rla                                           ; $4302: $17
    dec de                                        ; $4303: $1b
    sub c                                         ; $4304: $91
    dec hl                                        ; $4305: $2b
    ld e, d                                       ; $4306: $5a
    ld de, $3a08                                  ; $4307: $11 $08 $3a
    rst $30                                       ; $430a: $f7

jr_063_430b:
    and e                                         ; $430b: $a3
    sbc l                                         ; $430c: $9d
    rst $28                                       ; $430d: $ef
    ld h, h                                       ; $430e: $64
    ld [hl], b                                    ; $430f: $70
    db $dd                                        ; $4310: $dd
    ld b, c                                       ; $4311: $41
    cp l                                          ; $4312: $bd
    inc sp                                        ; $4313: $33
    call nc, $97e7                                ; $4314: $d4 $e7 $97
    jp c, $8aa0                                   ; $4317: $da $a0 $8a

    jr c, jr_063_430b                             ; $431a: $38 $ef

    rla                                           ; $431c: $17
    dec de                                        ; $431d: $1b
    sub c                                         ; $431e: $91
    di                                            ; $431f: $f3
    sbc l                                         ; $4320: $9d
    call nc, Call_000_1787                        ; $4321: $d4 $87 $17
    add l                                         ; $4324: $85
    call c, $91e7                                 ; $4325: $dc $e7 $91
    ccf                                           ; $4328: $3f
    or $a2                                        ; $4329: $f6 $a2
    and [hl]                                      ; $432b: $a6
    ld a, c                                       ; $432c: $79
    ld d, l                                       ; $432d: $55
    inc de                                        ; $432e: $13
    xor a                                         ; $432f: $af
    ld d, d                                       ; $4330: $52
    ld b, l                                       ; $4331: $45
    sbc h                                         ; $4332: $9c
    dec bc                                        ; $4333: $0b
    ld h, l                                       ; $4334: $65
    add sp, $74                                   ; $4335: $e8 $74
    call nz, $7dce                                ; $4337: $c4 $ce $7d
    ld e, $f9                                     ; $433a: $1e $f9
    ld h, e                                       ; $433c: $63
    cpl                                           ; $433d: $2f
    ld a, [bc]                                    ; $433e: $0a
    add hl, de                                    ; $433f: $19
    ld a, a                                       ; $4340: $7f
    pop bc                                        ; $4341: $c1
    ld l, [hl]                                    ; $4342: $6e
    ld e, $fa                                     ; $4343: $1e $fa
    reti                                          ; $4345: $d9


    rst $28                                       ; $4346: $ef
    db $dd                                        ; $4347: $dd
    ld h, e                                       ; $4348: $63
    add sp, $6b                                   ; $4349: $e8 $6b
    add c                                         ; $434b: $81
    ld h, b                                       ; $434c: $60
    adc l                                         ; $434d: $8d
    ld b, c                                       ; $434e: $41
    xor $17                                       ; $434f: $ee $17
    dec de                                        ; $4351: $1b
    sub c                                         ; $4352: $91
    ld [hl], $7d                                  ; $4353: $36 $7d
    db $e4                                        ; $4355: $e4

jr_063_4356:
    rst $08                                       ; $4356: $cf
    ld e, c                                       ; $4357: $59
    ld d, b                                       ; $4358: $50
    db $f4                                        ; $4359: $f4
    add c                                         ; $435a: $81
    ld d, d                                       ; $435b: $52
    ld e, [hl]                                    ; $435c: $5e
    and h                                         ; $435d: $a4
    dec bc                                        ; $435e: $0b
    sbc d                                         ; $435f: $9a
    add a                                         ; $4360: $87
    ld h, [hl]                                    ; $4361: $66
    or $54                                        ; $4362: $f6 $54
    ld c, b                                       ; $4364: $48
    cp [hl]                                       ; $4365: $be
    ld e, a                                       ; $4366: $5f
    ld l, l                                       ; $4367: $6d
    ld a, [$9fc8]                                 ; $4368: $fa $c8 $9f
    inc bc                                        ; $436b: $03
    add hl, hl                                    ; $436c: $29
    sub [hl]                                      ; $436d: $96
    xor c                                         ; $436e: $a9
    sub b                                         ; $436f: $90
    cp h                                          ; $4370: $bc
    rst $08                                       ; $4371: $cf
    adc e                                         ; $4372: $8b
    jp nc, Jump_000_0c4f                          ; $4373: $d2 $4f $0c

    push de                                       ; $4376: $d5
    rst $30                                       ; $4377: $f7
    dec bc                                        ; $4378: $0b
    rst $10                                       ; $4379: $d7
    ld h, d                                       ; $437a: $62
    ld b, h                                       ; $437b: $44
    call $99a1                                    ; $437c: $cd $a1 $99
    dec a                                         ; $437f: $3d
    dec d                                         ; $4380: $15
    sub d                                         ; $4381: $92
    cp a                                          ; $4382: $bf
    sub h                                         ; $4383: $94
    ld [hl], h                                    ; $4384: $74
    db $e3                                        ; $4385: $e3
    ld a, [hl]                                    ; $4386: $7e
    ld bc, $75e7                                  ; $4387: $01 $e7 $75
    and l                                         ; $438a: $a5
    ld a, c                                       ; $438b: $79
    ldh [rTIMA], a                                ; $438c: $e0 $05
    rst $20                                       ; $438e: $e7
    cp e                                          ; $438f: $bb
    add $94                                       ; $4390: $c6 $94
    inc l                                         ; $4392: $2c
    xor $d5                                       ; $4393: $ee $d5
    ld sp, hl                                     ; $4395: $f9
    ld [bc], a                                    ; $4396: $02
    rla                                           ; $4397: $17
    add l                                         ; $4398: $85
    ld l, h                                       ; $4399: $6c
    ld a, h                                       ; $439a: $7c
    ld b, c                                       ; $439b: $41
    rst $30                                       ; $439c: $f7
    ld [$017c], a                                 ; $439d: $ea $7c $01
    rst $20                                       ; $43a0: $e7
    cp e                                          ; $43a1: $bb
    ld a, [hl+]                                   ; $43a2: $2a
    dec c                                         ; $43a3: $0d
    or e                                          ; $43a4: $b3
    ld a, e                                       ; $43a5: $7b
    push af                                       ; $43a6: $f5
    dec bc                                        ; $43a7: $0b
    add a                                         ; $43a8: $87
    ld e, d                                       ; $43a9: $5a
    ld c, l                                       ; $43aa: $4d
    inc c                                         ; $43ab: $0c
    rst $08                                       ; $43ac: $cf
    dec bc                                        ; $43ad: $0b
    rla                                           ; $43ae: $17
    ld e, e                                       ; $43af: $5b
    sbc h                                         ; $43b0: $9c
    cp a                                          ; $43b1: $bf
    ld b, e                                       ; $43b2: $43
    push hl                                       ; $43b3: $e5
    rla                                           ; $43b4: $17
    db $ed                                        ; $43b5: $ed
    cp $1d                                        ; $43b6: $fe $1d
    and h                                         ; $43b8: $a4
    cp h                                          ; $43b9: $bc
    db $ed                                        ; $43ba: $ed
    and c                                         ; $43bb: $a1
    db $10                                        ; $43bc: $10

Call_063_43bd:
    ei                                            ; $43bd: $fb
    ret                                           ; $43be: $c9


    push af                                       ; $43bf: $f5
    dec b                                         ; $43c0: $05
    rlca                                          ; $43c1: $07
    push af                                       ; $43c2: $f5
    ld a, [bc]                                    ; $43c3: $0a
    jp z, $02f9                                   ; $43c4: $ca $f9 $02

    ld d, a                                       ; $43c7: $57
    jp hl                                         ; $43c8: $e9


    add b                                         ; $43c9: $80
    ld [$944c], sp                                ; $43ca: $08 $4c $94
    ld a, h                                       ; $43cd: $7c
    ld bc, $8517                                  ; $43ce: $01 $17 $85
    adc h                                         ; $43d1: $8c
    cp a                                          ; $43d2: $bf
    ld h, b                                       ; $43d3: $60
    rlca                                          ; $43d4: $07
    add hl, hl                                    ; $43d5: $29
    cpl                                           ; $43d6: $2f
    rla                                           ; $43d7: $17
    ld h, [hl]                                    ; $43d8: $66
    db $f4                                        ; $43d9: $f4
    inc de                                        ; $43da: $13
    and h                                         ; $43db: $a4
    cp h                                          ; $43dc: $bc
    add a                                         ; $43dd: $87
    xor b                                         ; $43de: $a8
    dec a                                         ; $43df: $3d
    xor [hl]                                      ; $43e0: $ae
    ld l, $fd                                     ; $43e1: $2e $fd
    dec b                                         ; $43e3: $05
    db $ed                                        ; $43e4: $ed
    ccf                                           ; $43e5: $3f
    ld d, e                                       ; $43e6: $53
    or e                                          ; $43e7: $b3
    ld c, b                                       ; $43e8: $48
    rla                                           ; $43e9: $17
    inc [hl]                                      ; $43ea: $34
    cp a                                          ; $43eb: $bf
    rla                                           ; $43ec: $17
    ld d, e                                       ; $43ed: $53
    ld [hl], e                                    ; $43ee: $73
    ld l, b                                       ; $43ef: $68
    ld de, $fc8f                                  ; $43f0: $11 $8f $fc
    add d                                         ; $43f3: $82
    xor $e7                                       ; $43f4: $ee $e7
    cp h                                          ; $43f6: $bc
    db $db                                        ; $43f7: $db
    halt                                          ; $43f8: $76
    ldh [$bf], a                                  ; $43f9: $e0 $bf
    db $db                                        ; $43fb: $db
    halt                                          ; $43fc: $76
    cp c                                          ; $43fd: $b9
    jp hl                                         ; $43fe: $e9


    cpl                                           ; $43ff: $2f
    ld l, l                                       ; $4400: $6d
    ld d, $f1                                     ; $4401: $16 $f1
    sub b                                         ; $4403: $90
    sbc d                                         ; $4404: $9a
    ld [hl], e                                    ; $4405: $73
    ld l, $0a                                     ; $4406: $2e $0a
    ld e, c                                       ; $4408: $59
    db $e3                                        ; $4409: $e3
    sbc a                                         ; $440a: $9f
    dec e                                         ; $440b: $1d
    ld a, [bc]                                    ; $440c: $0a
    xor a                                         ; $440d: $af
    scf                                           ; $440e: $37
    dec hl                                        ; $440f: $2b
    ld l, e                                       ; $4410: $6b
    ld a, a                                       ; $4411: $7f
    ld bc, $2717                                  ; $4412: $01 $17 $27
    ld c, b                                       ; $4415: $48
    add hl, bc                                    ; $4416: $09
    call z, $f1b5                                 ; $4417: $cc $b5 $f1
    ld b, l                                       ; $441a: $45
    ld e, c                                       ; $441b: $59
    ld [$411a], a                                 ; $441c: $ea $1a $41
    ld d, l                                       ; $441f: $55
    rst $08                                       ; $4420: $cf
    cp c                                          ; $4421: $b9
    jr jr_063_4476                                ; $4422: $18 $52

    cp c                                          ; $4424: $b9
    ld b, e                                       ; $4425: $43
    ld e, c                                       ; $4426: $59
    dec b                                         ; $4427: $05
    sub l                                         ; $4428: $95
    sub $fe                                       ; $4429: $d6 $fe
    ld [bc], a                                    ; $442b: $02
    db $ed                                        ; $442c: $ed
    or c                                          ; $442d: $b1
    sbc a                                         ; $442e: $9f
    push bc                                       ; $442f: $c5
    add $91                                       ; $4430: $c6 $91
    pop af                                        ; $4432: $f1
    rst $00                                       ; $4433: $c7
    and c                                         ; $4434: $a1
    ld [hl], e                                    ; $4435: $73
    ld [$62cb], a                                 ; $4436: $ea $cb $62
    ld c, d                                       ; $4439: $4a
    ld a, d                                       ; $443a: $7a

Jump_063_443b:
    jr nc, @-$4a                                  ; $443b: $30 $b4

    adc b                                         ; $443d: $88
    rst $10                                       ; $443e: $d7
    ld [$9eaa], sp                                ; $443f: $08 $aa $9e
    or e                                          ; $4442: $b3
    ld c, e                                       ; $4443: $4b
    sub h                                         ; $4444: $94
    ld a, [c]                                     ; $4445: $f2
    db $10                                        ; $4446: $10
    ld a, [bc]                                    ; $4447: $0a
    ld l, l                                       ; $4448: $6d
    jr nc, jr_063_447d                            ; $4449: $30 $32

    halt                                          ; $444b: $76
    ld a, [c]                                     ; $444c: $f2
    and d                                         ; $444d: $a2
    rst $18                                       ; $444e: $df
    pop af                                        ; $444f: $f1
    ld a, [hl]                                    ; $4450: $7e
    ld bc, $9a87                                  ; $4451: $01 $87 $9a
    ld a, e                                       ; $4454: $7b
    cp [hl]                                       ; $4455: $be
    inc d                                         ; $4456: $14
    xor a                                         ; $4457: $af
    scf                                           ; $4458: $37
    dec hl                                        ; $4459: $2b
    ld a, e                                       ; $445a: $7b
    ld c, b                                       ; $445b: $48
    ld c, l                                       ; $445c: $4d
    ld l, e                                       ; $445d: $6b
    ld a, a                                       ; $445e: $7f
    ld bc, $966d                                  ; $445f: $01 $6d $96
    ld e, c                                       ; $4462: $59
    ld e, h                                       ; $4463: $5c
    reti                                          ; $4464: $d9


    ld l, e                                       ; $4465: $6b
    inc b                                         ; $4466: $04
    ld d, l                                       ; $4467: $55
    add a                                         ; $4468: $87
    ld a, [$97d4]                                 ; $4469: $fa $d4 $97
    ld b, l                                       ; $446c: $45
    call Call_000_2c7d                            ; $446d: $cd $7d $2c
    ld e, a                                       ; $4470: $5f
    jp z, $fa18                                   ; $4471: $ca $18 $fa

    sbc h                                         ; $4474: $9c
    ld b, e                                       ; $4475: $43

jr_063_4476:
    sub b                                         ; $4476: $90
    cp c                                          ; $4477: $b9
    ld e, b                                       ; $4478: $58
    xor $17                                       ; $4479: $ee $17
    sub a                                         ; $447b: $97
    scf                                           ; $447c: $37

jr_063_447d:
    ld [hl], e                                    ; $447d: $73
    xor b                                         ; $447e: $a8
    rst $28                                       ; $447f: $ef
    add hl, bc                                    ; $4480: $09
    ld [hl-], a                                   ; $4481: $32
    add hl, bc                                    ; $4482: $09
    push bc                                       ; $4483: $c5
    ld d, d                                       ; $4484: $52
    ld b, c                                       ; $4485: $41
    ret nc                                        ; $4486: $d0

    adc e                                         ; $4487: $8b
    jp nc, $18cf                                  ; $4488: $d2 $cf $18

    ld a, [$6410]                                 ; $448b: $fa $10 $64
    adc l                                         ; $448e: $8d
    and b                                         ; $448f: $a0
    ld [$2f39], a                                 ; $4490: $ea $39 $2f
    rla                                           ; $4493: $17
    ld a, [bc]                                    ; $4494: $0a
    adc d                                         ; $4495: $8a
    ld a, $cb                                     ; $4496: $3e $cb
    cp d                                          ; $4498: $ba
    xor [hl]                                      ; $4499: $ae
    sub h                                         ; $449a: $94
    ld a, c                                       ; $449b: $79
    ld c, b                                       ; $449c: $48
    call Call_000_05fb                            ; $449d: $cd $fb $05
    sub a                                         ; $44a0: $97
    inc c                                         ; $44a1: $0c
    call $407b                                    ; $44a2: $cd $7b $40
    or b                                          ; $44a5: $b0
    or d                                          ; $44a6: $b2
    ld d, a                                       ; $44a7: $57
    jr nz, jr_063_4520                            ; $44a8: $20 $76

    xor $f7                                       ; $44aa: $ee $f7
    xor $21                                       ; $44ac: $ee $21
    call nc, $f5ea                                ; $44ae: $d4 $ea $f5
    ld h, [hl]                                    ; $44b1: $66
    ld h, l                                       ; $44b2: $65
    rrca                                          ; $44b3: $0f
    xor c                                         ; $44b4: $a9
    jp hl                                         ; $44b5: $e9


    ld hl, $5994                                  ; $44b6: $21 $94 $59
    ld d, $51                                     ; $44b9: $16 $51
    cp e                                          ; $44bb: $bb
    ld a, e                                       ; $44bc: $7b
    push af                                       ; $44bd: $f5
    ld a, [hl]                                    ; $44be: $7e
    or h                                          ; $44bf: $b4
    rst $08                                       ; $44c0: $cf
    ld b, e                                       ; $44c1: $43
    sub b                                         ; $44c2: $90
    cp c                                          ; $44c3: $b9
    ld e, b                                       ; $44c4: $58
    sub $08                                       ; $44c5: $d6 $08
    xor d                                         ; $44c7: $aa
    adc $b9                                       ; $44c8: $ce $b9
    ld a, [bc]                                    ; $44ca: $0a
    ld a, [hl+]                                   ; $44cb: $2a
    call Call_000_0bf7                            ; $44cc: $cd $f7 $0b
    db $ed                                        ; $44cf: $ed
    ld [hl], c                                    ; $44d0: $71
    ret z                                         ; $44d1: $c8

    add hl, sp                                    ; $44d2: $39
    add a                                         ; $44d3: $87
    ld d, $f1                                     ; $44d4: $16 $f1
    sub b                                         ; $44d6: $90
    sbc d                                         ; $44d7: $9a
    jp $1650                                      ; $44d8: $c3 $50 $16


    add l                                         ; $44db: $85
    xor h                                         ; $44dc: $ac
    pop af                                        ; $44dd: $f1
    rst $08                                       ; $44de: $cf
    ld c, $85                                     ; $44df: $0e $85
    rst $10                                       ; $44e1: $d7
    sbc e                                         ; $44e2: $9b
    sub l                                         ; $44e3: $95
    rst $28                                       ; $44e4: $ef
    rla                                           ; $44e5: $17
    ld l, l                                       ; $44e6: $6d
    ld a, [$0b42]                                 ; $44e7: $fa $42 $0b
    ld a, a                                       ; $44ea: $7f
    ld [hl], c                                    ; $44eb: $71
    xor $f3                                       ; $44ec: $ee $f3
    ret nc                                        ; $44ee: $d0

    ld [hl+], a                                   ; $44ef: $22
    ld e, $52                                     ; $44f0: $1e $52
    ld [hl], e                                    ; $44f2: $73
    adc $55                                       ; $44f3: $ce $55
    ld d, b                                       ; $44f5: $50
    jp z, $ebc9                                   ; $44f6: $ca $c9 $eb

    call $f7ca                                    ; $44f9: $cd $ca $f7
    dec bc                                        ; $44fc: $0b
    add a                                         ; $44fd: $87
    call c, $b5e3                                 ; $44fe: $dc $e3 $b5
    rst $38                                       ; $4501: $ff
    sub d                                         ; $4502: $92
    add b                                         ; $4503: $80
    ld d, e                                       ; $4504: $53
    cp d                                          ; $4505: $ba
    adc b                                         ; $4506: $88
    rlca                                          ; $4507: $07
    ld c, d                                       ; $4508: $4a
    ld a, c                                       ; $4509: $79

jr_063_450a:
    call Call_063_7886                            ; $450a: $cd $86 $78
    ld l, b                                       ; $450d: $68
    ld de, $a90f                                  ; $450e: $11 $0f $a9
    ld a, c                                       ; $4511: $79
    cp a                                          ; $4512: $bf
    db $ed                                        ; $4513: $ed
    pop af                                        ; $4514: $f1
    rst $00                                       ; $4515: $c7
    push de                                       ; $4516: $d5
    ldh a, [$8c]                                  ; $4517: $f0 $8c
    ld [hl], h                                    ; $4519: $74
    xor a                                         ; $451a: $af
    inc a                                         ; $451b: $3c
    push af                                       ; $451c: $f5
    ld h, l                                       ; $451d: $65
    dec c                                         ; $451e: $0d
    ld b, a                                       ; $451f: $47

jr_063_4520:
    jr nz, jr_063_450a                            ; $4520: $20 $e8

    ld d, l                                       ; $4522: $55
    jr z, jr_063_4590                             ; $4523: $28 $6b

    db $fc                                        ; $4525: $fc
    ld [hl-], a                                   ; $4526: $32
    or h                                          ; $4527: $b4
    adc b                                         ; $4528: $88
    rst $10                                       ; $4529: $d7
    sbc e                                         ; $452a: $9b
    sub l                                         ; $452b: $95
    dec a                                         ; $452c: $3d
    and h                                         ; $452d: $a4
    and [hl]                                      ; $452e: $a6
    or $9d                                        ; $452f: $f6 $9d
    rst $10                                       ; $4531: $d7
    ld a, c                                       ; $4532: $79
    ld e, a                                       ; $4533: $5f
    ret nc                                        ; $4534: $d0

    inc a                                         ; $4535: $3c
    dec bc                                        ; $4536: $0b
    ld c, $a1                                     ; $4537: $0e $a1
    xor h                                         ; $4539: $ac
    cp d                                          ; $453a: $ba
    rst $00                                       ; $453b: $c7
    or h                                          ; $453c: $b4
    db $fd                                        ; $453d: $fd
    adc $b5                                       ; $453e: $ce $b5
    ld sp, hl                                     ; $4540: $f9
    ld [bc], a                                    ; $4541: $02
    add a                                         ; $4542: $87
    sbc d                                         ; $4543: $9a
    ld a, e                                       ; $4544: $7b
    cp [hl]                                       ; $4545: $be
    inc d                                         ; $4546: $14
    xor a                                         ; $4547: $af
    scf                                           ; $4548: $37
    dec hl                                        ; $4549: $2b
    ld a, e                                       ; $454a: $7b
    ld c, b                                       ; $454b: $48
    ld c, l                                       ; $454c: $4d
    rst $28                                       ; $454d: $ef
    cp [hl]                                       ; $454e: $be
    rst $28                                       ; $454f: $ef
    push de                                       ; $4550: $d5
    and $a2                                       ; $4551: $e6 $a2
    and $84                                       ; $4553: $e6 $84
    ld e, d                                       ; $4555: $5a
    cp d                                          ; $4556: $ba
    di                                            ; $4557: $f3
    ld a, [hl]                                    ; $4558: $7e
    ld bc, $fa6d                                  ; $4559: $01 $6d $fa
    call nc, $8197                                ; $455c: $d4 $97 $81
    ld d, d                                       ; $455f: $52
    ld e, [hl]                                    ; $4560: $5e
    call nc, $c7dc                                ; $4561: $d4 $dc $c7
    ld a, [c]                                     ; $4564: $f2
    and l                                         ; $4565: $a5
    adc h                                         ; $4566: $8c
    and c                                         ; $4567: $a1
    rst $28                                       ; $4568: $ef
    dec bc                                        ; $4569: $0b
    and [hl]                                      ; $456a: $a6
    rst $10                                       ; $456b: $d7
    ld [$7aaa], sp                                ; $456c: $08 $aa $7a
    ld d, $1c                                     ; $456f: $16 $1c
    add d                                         ; $4571: $82
    call z, Call_063_72c5                         ; $4572: $cc $c5 $72
    cp a                                          ; $4575: $bf
    sub a                                         ; $4576: $97
    ld [$5e22], a                                 ; $4577: $ea $22 $5e
    db $db                                        ; $457a: $db
    add l                                         ; $457b: $85
    rst $10                                       ; $457c: $d7
    ld e, h                                       ; $457d: $5c
    ld [hl], e                                    ; $457e: $73
    pop hl                                        ; $457f: $e1
    ld h, d                                       ; $4580: $62
    ld c, d                                       ; $4581: $4a
    ld a, d                                       ; $4582: $7a
    db $ed                                        ; $4583: $ed
    ccf                                           ; $4584: $3f
    ld d, e                                       ; $4585: $53
    or e                                          ; $4586: $b3
    dec hl                                        ; $4587: $2b
    inc bc                                        ; $4588: $03
    or e                                          ; $4589: $b3
    or e                                          ; $458a: $b3
    xor [hl]                                      ; $458b: $ae
    ld de, $3d54                                  ; $458c: $11 $54 $3d
    ld h, a                                       ; $458f: $67

jr_063_4590:
    sub a                                         ; $4590: $97
    sbc e                                         ; $4591: $9b
    ld c, [hl]                                    ; $4592: $4e
    dec de                                        ; $4593: $1b
    sbc d                                         ; $4594: $9a
    and a                                         ; $4595: $a7
    cp [hl]                                       ; $4596: $be
    inc c                                         ; $4597: $0c
    call $a503                                    ; $4598: $cd $03 $a5
    ld a, h                                       ; $459b: $7c
    cp a                                          ; $459c: $bf
    ld l, l                                       ; $459d: $6d
    ld a, [$97d4]                                 ; $459e: $fa $d4 $97
    add c                                         ; $45a1: $81
    ld d, d                                       ; $45a2: $52
    sbc [hl]                                      ; $45a3: $9e
    ld a, [bc]                                    ; $45a4: $0a
    rst $08                                       ; $45a5: $cf
    db $e3                                        ; $45a6: $e3
    add c                                         ; $45a7: $81
    ldh [rNR34], a                                ; $45a8: $e0 $1e
    bit 2, b                                      ; $45aa: $cb $50
    ld e, a                                       ; $45ac: $5f
    jp Jump_000_3524                              ; $45ad: $c3 $24 $35


    halt                                          ; $45b0: $76
    ld c, $86                                     ; $45b1: $0e $86
    and $3d                                       ; $45b3: $e6 $3d
    jr nz, jr_063_460f                            ; $45b5: $20 $58

    reti                                          ; $45b7: $d9


    inc bc                                        ; $45b8: $03
    and l                                         ; $45b9: $a5
    cp h                                          ; $45ba: $bc
    rst $08                                       ; $45bb: $cf
    ld l, e                                       ; $45bc: $6b
    dec h                                         ; $45bd: $25
    dec [hl]                                      ; $45be: $35
    or $3e                                        ; $45bf: $f6 $3e
    ld c, a                                       ; $45c1: $4f
    add l                                         ; $45c2: $85
    rst $20                                       ; $45c3: $e7
    pop af                                        ; $45c4: $f1
    ld [hl], h                                    ; $45c5: $74

Jump_063_45c6:
    call nc, $02fe                                ; $45c6: $d4 $fe $02
    db $ed                                        ; $45c9: $ed
    ld sp, $6574                                  ; $45ca: $31 $74 $65
    ld e, c                                       ; $45cd: $59
    adc b                                         ; $45ce: $88
    sbc l                                         ; $45cf: $9d

Call_063_45d0:
    ld sp, hl                                     ; $45d0: $f9
    xor e                                         ; $45d1: $ab
    ld [hl], d                                    ; $45d2: $72
    xor a                                         ; $45d3: $af
    sbc $7d                                       ; $45d4: $de $7d
    rst $18                                       ; $45d6: $df
    ld b, e                                       ; $45d7: $43
    adc e                                         ; $45d8: $8b
    ld a, b                                       ; $45d9: $78
    ld c, b                                       ; $45da: $48
    call $d739                                    ; $45db: $cd $39 $d7
    sbc e                                         ; $45de: $9b
    sub l                                         ; $45df: $95
    rst $28                                       ; $45e0: $ef
    ei                                            ; $45e1: $fb
    dec b                                         ; $45e2: $05
    rla                                           ; $45e3: $17
    ld a, [bc]                                    ; $45e4: $0a
    adc d                                         ; $45e5: $8a
    ld a, $cb                                     ; $45e6: $3e $cb
    ld a, [de]                                    ; $45e8: $1a
    ld b, c                                       ; $45e9: $41
    push de                                       ; $45ea: $d5
    and c                                         ; $45eb: $a1
    ld a, $50                                     ; $45ec: $3e $50
    jp z, Jump_063_5f53                           ; $45ee: $ca $53 $5f

    ld d, $35                                     ; $45f1: $16 $35
    rst $30                                       ; $45f3: $f7
    or c                                          ; $45f4: $b1
    ld a, h                                       ; $45f5: $7c
    add hl, hl                                    ; $45f6: $29
    ld h, e                                       ; $45f7: $63
    add sp, -$09                                  ; $45f8: $e8 $f7
    dec bc                                        ; $45fa: $0b
    ld l, l                                       ; $45fb: $6d
    ld d, $f1                                     ; $45fc: $16 $f1
    sub b                                         ; $45fe: $90
    sbc d                                         ; $45ff: $9a
    ld [hl], e                                    ; $4600: $73
    ld l, $0a                                     ; $4601: $2e $0a
    ld e, c                                       ; $4603: $59
    db $e3                                        ; $4604: $e3
    sbc a                                         ; $4605: $9f
    dec e                                         ; $4606: $1d
    ld a, [bc]                                    ; $4607: $0a
    xor a                                         ; $4608: $af
    scf                                           ; $4609: $37
    dec hl                                        ; $460a: $2b
    rst $18                                       ; $460b: $df
    cpl                                           ; $460c: $2f
    rst $10                                       ; $460d: $d7
    ld d, c                                       ; $460e: $51

jr_063_460f:
    ld a, d                                       ; $460f: $7a
    add hl, de                                    ; $4610: $19
    add d                                         ; $4611: $82
    ld a, b                                       ; $4612: $78
    jr nz, jr_063_463a                            ; $4613: $20 $25

    adc l                                         ; $4615: $8d
    ld h, b                                       ; $4616: $60
    xor c                                         ; $4617: $a9
    adc $85                                       ; $4618: $ce $85
    ld [hl-], a                                   ; $461a: $32
    ld c, [hl]                                    ; $461b: $4e
    adc l                                         ; $461c: $8d
    jp c, Jump_063_6ba1                           ; $461d: $da $a1 $6b

    adc $bb                                       ; $4620: $ce $bb
    ld a, [$299a]                                 ; $4622: $fa $9a $29
    ld sp, hl                                     ; $4625: $f9
    xor l                                         ; $4626: $ad
    ld b, l                                       ; $4627: $45
    ld hl, $79f7                                  ; $4628: $21 $f7 $79
    adc l                                         ; $462b: $8d
    cp $05                                        ; $462c: $fe $05
    dec a                                         ; $462e: $3d
    db $f4                                        ; $462f: $f4
    ld [hl], e                                    ; $4630: $73
    cp a                                          ; $4631: $bf
    ld a, e                                       ; $4632: $7b
    ld bc, $017b                                  ; $4633: $01 $7b $01
    sub a                                         ; $4636: $97
    ld c, b                                       ; $4637: $48
    or c                                          ; $4638: $b1
    inc l                                         ; $4639: $2c

jr_063_463a:
    add [hl]                                      ; $463a: $86
    ld d, h                                       ; $463b: $54
    ld [bc], a                                    ; $463c: $02
    ld d, d                                       ; $463d: $52
    xor $b5                                       ; $463e: $ee $b5
    jp hl                                         ; $4640: $e9


    ld a, e                                       ; $4641: $7b
    and b                                         ; $4642: $a0
    or d                                          ; $4643: $b2
    ld [hl], e                                    ; $4644: $73
    ld [$81e2], sp                                ; $4645: $08 $e2 $81
    sub h                                         ; $4648: $94
    inc [hl]                                      ; $4649: $34
    add d                                         ; $464a: $82
    and l                                         ; $464b: $a5
    ld a, [hl-]                                   ; $464c: $3a
    rst $28                                       ; $464d: $ef
    rla                                           ; $464e: $17
    rla                                           ; $464f: $17
    push af                                       ; $4650: $f5
    ret nz                                        ; $4651: $c0

    jp c, $a6d7                                   ; $4652: $da $d7 $a6

    xor a                                         ; $4655: $af
    rst $38                                       ; $4656: $ff
    ret c                                         ; $4657: $d8

    add sp, -$4d                                  ; $4658: $e8 $b3
    ld e, [hl]                                    ; $465a: $5e
    sub a                                         ; $465b: $97
    ld l, e                                       ; $465c: $6b
    ld a, b                                       ; $465d: $78
    or l                                          ; $465e: $b5
    dec b                                         ; $465f: $05
    ld a, l                                       ; $4660: $7d
    cpl                                           ; $4661: $2f
    sub a                                         ; $4662: $97
    ld [$4a76], sp                                ; $4663: $08 $76 $4a
    ld e, l                                       ; $4666: $5d

jr_063_4667:
    ld l, l                                       ; $4667: $6d
    ld b, c                                       ; $4668: $41
    rst $18                                       ; $4669: $df
    dec bc                                        ; $466a: $0b
    rst $10                                       ; $466b: $d7
    ld d, c                                       ; $466c: $51
    ld a, d                                       ; $466d: $7a
    ld e, c                                       ; $466e: $59
    ld l, l                                       ; $466f: $6d
    ld h, l                                       ; $4670: $65
    jr z, jr_063_46ee                             ; $4671: $28 $7b

    ld bc, $07e7                                  ; $4673: $01 $e7 $07
    pop de                                        ; $4676: $d1
    ld l, e                                       ; $4677: $6b
    ld l, l                                       ; $4678: $6d
    ld b, c                                       ; $4679: $41
    rst $18                                       ; $467a: $df
    dec bc                                        ; $467b: $0b
    rla                                           ; $467c: $17
    and $50                                       ; $467d: $e6 $50
    rra                                           ; $467f: $1f
    jr z, jr_063_4667                             ; $4680: $28 $e5

    ld [hl], c                                    ; $4682: $71
    ld d, d                                       ; $4683: $52

jr_063_4684:
    ld a, b                                       ; $4684: $78
    ccf                                           ; $4685: $3f
    ld e, d                                       ; $4686: $5a
    cp e                                          ; $4687: $bb
    di                                            ; $4688: $f3
    add c                                         ; $4689: $81
    jr nz, jr_063_46ca                            ; $468a: $20 $3e

    ld h, a                                       ; $468c: $67
    db $ed                                        ; $468d: $ed
    cp d                                          ; $468e: $ba
    adc h                                         ; $468f: $8c
    inc sp                                        ; $4690: $33
    db $e4                                        ; $4691: $e4
    ld a, $8f                                     ; $4692: $3e $8f
    call nc, $b165                                ; $4694: $d4 $65 $b1
    ld [hl], c                                    ; $4697: $71
    cp a                                          ; $4698: $bf
    di                                            ; $4699: $f3
    db $fd                                        ; $469a: $fd
    ld [bc], a                                    ; $469b: $02
    sub a                                         ; $469c: $97
    jr z, jr_063_4684                             ; $469d: $28 $e5

    ld d, l                                       ; $469f: $55
    ld c, d                                       ; $46a0: $4a
    ld a, [c]                                     ; $46a1: $f2
    ld a, $0f                                     ; $46a2: $3e $0f
    and h                                         ; $46a4: $a4
    ld e, b                                       ; $46a5: $58
    and [hl]                                      ; $46a6: $a6
    cp [hl]                                       ; $46a7: $be
    adc h                                         ; $46a8: $8c
    inc c                                         ; $46a9: $0c
    dec e                                         ; $46aa: $1d
    dec a                                         ; $46ab: $3d
    jp nc, $9e82                                  ; $46ac: $d2 $82 $9e

    adc [hl]                                      ; $46af: $8e
    rst $30                                       ; $46b0: $f7
    dec bc                                        ; $46b1: $0b
    db $ed                                        ; $46b2: $ed
    ld [hl], c                                    ; $46b3: $71
    ld c, b                                       ; $46b4: $48
    db $fc                                        ; $46b5: $fc
    or d                                          ; $46b6: $b2
    ei                                            ; $46b7: $fb
    cp [hl]                                       ; $46b8: $be
    ld b, a                                       ; $46b9: $47
    add $21                                       ; $46ba: $c6 $21

Call_063_46bc:
    pop af                                        ; $46bc: $f1
    res 2, h                                      ; $46bd: $cb $94
    ld l, $e2                                     ; $46bf: $2e $e2
    and c                                         ; $46c1: $a1
    ld d, a                                       ; $46c2: $57
    and c                                         ; $46c3: $a1
    ld a, b                                       ; $46c4: $78
    ld l, b                                       ; $46c5: $68
    ld e, [hl]                                    ; $46c6: $5e
    ld a, b                                       ; $46c7: $78
    or $40                                        ; $46c8: $f6 $40

jr_063_46ca:
    cp c                                          ; $46ca: $b9
    rst $28                                       ; $46cb: $ef
    ei                                            ; $46cc: $fb
    dec b                                         ; $46cd: $05
    rlca                                          ; $46ce: $07
    ld e, h                                       ; $46cf: $5c
    add $19                                       ; $46d0: $c6 $19
    ld [hl], d                                    ; $46d2: $72
    sbc a                                         ; $46d3: $9f
    ld b, a                                       ; $46d4: $47
    ld [$9232], a                                 ; $46d5: $ea $32 $92
    sbc d                                         ; $46d8: $9a

jr_063_46d9:
    db $ec                                        ; $46d9: $ec
    add l                                         ; $46da: $85
    ld a, d                                       ; $46db: $7a
    rst $18                                       ; $46dc: $df
    rst $30                                       ; $46dd: $f7
    dec bc                                        ; $46de: $0b
    db $ed                                        ; $46df: $ed
    ccf                                           ; $46e0: $3f
    add a                                         ; $46e1: $87
    ld a, [$79aa]                                 ; $46e2: $fa $aa $79
    db $ed                                        ; $46e5: $ed
    adc $07                                       ; $46e6: $ce $07
    add d                                         ; $46e8: $82
    ld a, b                                       ; $46e9: $78
    rla                                           ; $46ea: $17
    rst $20                                       ; $46eb: $e7
    sub a                                         ; $46ec: $97
    ld [c], a                                     ; $46ed: $e2

jr_063_46ee:
    inc a                                         ; $46ee: $3c
    rst $20                                       ; $46ef: $e7
    dec b                                         ; $46f0: $05
    rlca                                          ; $46f1: $07
    ld e, h                                       ; $46f2: $5c
    ld d, [hl]                                    ; $46f3: $56
    sbc e                                         ; $46f4: $9b
    inc hl                                        ; $46f5: $23
    dec l                                         ; $46f6: $2d
    add sp, $75                                   ; $46f7: $e8 $75
    jr z, jr_063_46d9                             ; $46f9: $28 $de

    ld h, e                                       ; $46fb: $63
    add hl, de                                    ; $46fc: $19
    db $dd                                        ; $46fd: $dd
    ld h, l                                       ; $46fe: $65
    or c                                          ; $46ff: $b1
    ld [hl], c                                    ; $4700: $71
    and b                                         ; $4701: $a0
    sub h                                         ; $4702: $94
    ld l, c                                       ; $4703: $69
    inc hl                                        ; $4704: $23
    db $e3                                        ; $4705: $e3
    sub b                                         ; $4706: $90
    inc hl                                        ; $4707: $23
    ld [hl], l                                    ; $4708: $75
    ld e, c                                       ; $4709: $59
    ld bc, $d235                                  ; $470a: $01 $35 $d2
    ld [hl], d                                    ; $470d: $72
    cp a                                          ; $470e: $bf
    sub a                                         ; $470f: $97
    scf                                           ; $4710: $37
    ld l, c                                       ; $4711: $69
    xor e                                         ; $4712: $ab
    ld e, [hl]                                    ; $4713: $5e
    add a                                         ; $4714: $87
    ld [c], a                                     ; $4715: $e2
    add hl, sp                                    ; $4716: $39
    ld h, d                                       ; $4717: $62
    rst $20                                       ; $4718: $e7
    ld c, b                                       ; $4719: $48
    dec bc                                        ; $471a: $0b
    ld a, [$79de]                                 ; $471b: $fa $de $79
    cp l                                          ; $471e: $bd
    ld a, e                                       ; $471f: $7b
    ld d, l                                       ; $4720: $55
    db $fd                                        ; $4721: $fd
    cp [hl]                                       ; $4722: $be
    ld a, [$ee9f]                                 ; $4723: $fa $9f $ee
    ld a, [hl-]                                   ; $4726: $3a
    add [hl]                                      ; $4727: $86
    cp [hl]                                       ; $4728: $be
    rst $18                                       ; $4729: $df
    cp e                                          ; $472a: $bb
    ld c, c                                       ; $472b: $49
    rst $30                                       ; $472c: $f7
    ld h, d                                       ; $472d: $62
    xor c                                         ; $472e: $a9
    sub c                                         ; $472f: $91
    dec hl                                        ; $4730: $2b
    ld e, e                                       ; $4731: $5b

jr_063_4732:
    xor $17                                       ; $4732: $ee $17
    ld d, a                                       ; $4734: $57
    ld h, $35                                     ; $4735: $26 $35
    halt                                          ; $4737: $76
    ld c, $f5                                     ; $4738: $0e $f5
    ld a, l                                       ; $473a: $7d
    ld e, [hl]                                    ; $473b: $5e
    dec d                                         ; $473c: $15
    jr z, jr_063_475d                             ; $473d: $28 $1e

    ld b, d                                       ; $473f: $42
    ld e, c                                       ; $4740: $59
    ld c, h                                       ; $4741: $4c
    ld d, c                                       ; $4742: $51
    rst $20                                       ; $4743: $e7
    xor h                                         ; $4744: $ac
    ld c, l                                       ; $4745: $4d
    sbc a                                         ; $4746: $9f
    ld a, [bc]                                    ; $4747: $0a
    rst $08                                       ; $4748: $cf
    db $e3                                        ; $4749: $e3
    inc e                                         ; $474a: $1c
    jr z, jr_063_4732                             ; $474b: $28 $e5

    ld b, l                                       ; $474d: $45
    ld hl, $b01b                                  ; $474e: $21 $1b $b0
    rlca                                          ; $4751: $07
    jp z, $f3bd                                   ; $4752: $ca $bd $f3

    dec sp                                        ; $4755: $3b
    call nz, $9d23                                ; $4756: $c4 $23 $9d
    ld h, e                                       ; $4759: $63
    add sp, -$75                                  ; $475a: $e8 $8b
    ld e, h                                       ; $475c: $5c

jr_063_475d:
    ld sp, hl                                     ; $475d: $f9
    ld bc, $5fc4                                  ; $475e: $01 $c4 $5f
    inc l                                         ; $4761: $2c
    rst $30                                       ; $4762: $f7
    dec bc                                        ; $4763: $0b
    rlca                                          ; $4764: $07
    ld e, h                                       ; $4765: $5c
    sub $70                                       ; $4766: $d6 $70
    inc e                                         ; $4768: $1c
    ld a, [bc]                                    ; $4769: $0a
    dec sp                                        ; $476a: $3b
    add a                                         ; $476b: $87
    ld d, $f1                                     ; $476c: $16 $f1
    sub b                                         ; $476e: $90
    sbc d                                         ; $476f: $9a
    inc bc                                        ; $4770: $03
    ld b, c                                       ; $4771: $41
    add [hl]                                      ; $4772: $86
    cp [hl]                                       ; $4773: $be
    ret z                                         ; $4774: $c8

    sub l                                         ; $4775: $95
    rra                                           ; $4776: $1f
    ld b, b                                       ; $4777: $40
    db $fc                                        ; $4778: $fc
    push bc                                       ; $4779: $c5
    or d                                          ; $477a: $b2
    add [hl]                                      ; $477b: $86
    adc e                                         ; $477c: $8b
    ld b, [hl]                                    ; $477d: $46
    ret nc                                        ; $477e: $d0

    ld a, c                                       ; $477f: $79
    rst $28                                       ; $4780: $ef
    ld a, [hl-]                                   ; $4781: $3a
    sbc b                                         ; $4782: $98
    ld a, [$5032]                                 ; $4783: $fa $32 $50
    jp z, $7f23                                   ; $4786: $ca $23 $7f

    db $ec                                        ; $4789: $ec
    db $fd                                        ; $478a: $fd
    ld a, $b4                                     ; $478b: $3e $b4
    xor h                                         ; $478d: $ac
    ld a, [bc]                                    ; $478e: $0a
    inc d                                         ; $478f: $14
    sra d                                         ; $4790: $cb $2a
    sub h                                         ; $4792: $94
    push bc                                       ; $4793: $c5
    inc d                                         ; $4794: $14
    ld [hl], l                                    ; $4795: $75
    cp a                                          ; $4796: $bf
    ld l, l                                       ; $4797: $6d
    adc $39                                       ; $4798: $ce $39
    rlca                                          ; $479a: $07
    jp nz, Jump_063_7de6                          ; $479b: $c2 $e6 $7d

    ld e, [hl]                                    ; $479e: $5e
    push af                                       ; $479f: $f5
    ret nc                                        ; $47a0: $d0

    add hl, de                                    ; $47a1: $19
    ld e, d                                       ; $47a2: $5a
    dec l                                         ; $47a3: $2d
    db $d3                                        ; $47a4: $d3
    sub $fe                                       ; $47a5: $d6 $fe
    inc sp                                        ; $47a7: $33
    dec [hl]                                      ; $47a8: $35
    rst $30                                       ; $47a9: $f7
    adc $eb                                       ; $47aa: $ce $eb
    inc a                                         ; $47ac: $3c
    inc [hl]                                      ; $47ad: $34
    xor a                                         ; $47ae: $af
    jp nc, $ec43                                  ; $47af: $d2 $43 $ec

    ld b, l                                       ; $47b2: $45
    ld hl, $9a5d                                  ; $47b3: $21 $5d $9a
    add hl, sp                                    ; $47b6: $39
    jp nc, $4629                                  ; $47b7: $d2 $29 $46

    ld l, e                                       ; $47ba: $6b
    ld a, a                                       ; $47bb: $7f
    ld bc, $fa6d                                  ; $47bc: $01 $6d $fa
    xor d                                         ; $47bf: $aa
    ld a, [$a07d]                                 ; $47c0: $fa $7d $a0
    sub h                                         ; $47c3: $94
    sub a                                         ; $47c4: $97
    ld bc, $d83d                                  ; $47c5: $01 $3d $d8
    inc bc                                        ; $47c8: $03
    or d                                          ; $47c9: $b2
    ld d, $45                                     ; $47ca: $16 $45
    ld c, h                                       ; $47cc: $4c
    ld e, e                                       ; $47cd: $5b
    ld e, d                                       ; $47ce: $5a
    inc a                                         ; $47cf: $3c
    sub l                                         ; $47d0: $95
    sbc d                                         ; $47d1: $9a
    ld d, $df                                     ; $47d2: $16 $df
    dec sp                                        ; $47d4: $3b
    cp a                                          ; $47d5: $bf
    ld b, e                                       ; $47d6: $43
    inc a                                         ; $47d7: $3c
    jp nc, $8639                                  ; $47d8: $d2 $39 $86

    cp [hl]                                       ; $47db: $be
    ret z                                         ; $47dc: $c8

    sub l                                         ; $47dd: $95

jr_063_47de:
    dec l                                         ; $47de: $2d
    cp e                                          ; $47df: $bb
    rst $28                                       ; $47e0: $ef
    ld a, e                                       ; $47e1: $7b

jr_063_47e2:
    ld l, b                                       ; $47e2: $68
    sbc [hl]                                      ; $47e3: $9e
    ld [hl], e                                    ; $47e4: $73
    ld [de], a                                    ; $47e5: $12
    adc d                                         ; $47e6: $8a
    ld a, c                                       ; $47e7: $79
    ld [hl], h                                    ; $47e8: $74
    sub a                                         ; $47e9: $97
    dec a                                         ; $47ea: $3d
    call Call_063_6a15                            ; $47eb: $cd $15 $6a
    ld a, d                                       ; $47ee: $7a
    ld l, c                                       ; $47ef: $69
    pop hl                                        ; $47f0: $e1
    add hl, sp                                    ; $47f1: $39
    ld h, d                                       ; $47f2: $62
    rst $20                                       ; $47f3: $e7
    db $fd                                        ; $47f4: $fd
    ld [bc], a                                    ; $47f5: $02
    sub a                                         ; $47f6: $97
    jr z, jr_063_47de                             ; $47f7: $28 $e5

    ld c, c                                       ; $47f9: $49
    jr z, jr_063_47e2                             ; $47fa: $28 $e6

    dec a                                         ; $47fc: $3d
    add $7d                                       ; $47fd: $c6 $7d
    ld e, [hl]                                    ; $47ff: $5e
    ld l, c                                       ; $4800: $69
    ld c, $9d                                     ; $4801: $0e $9d
    jr nz, jr_063_483d                            ; $4803: $20 $38

    dec bc                                        ; $4805: $0b
    adc d                                         ; $4806: $8a
    ld a, [hl]                                    ; $4807: $7e
    xor a                                         ; $4808: $af
    call $e42a                                    ; $4809: $cd $2a $e4
    ld h, a                                       ; $480c: $67
    ld [$14e2], sp                                ; $480d: $08 $e2 $14
    rst $08                                       ; $4810: $cf
    add hl, sp                                    ; $4811: $39
    ld d, b                                       ; $4812: $50
    jp z, Jump_000_288b                           ; $4813: $ca $8b $28

    adc c                                         ; $4816: $89
    ld d, b                                       ; $4817: $50
    ld a, h                                       ; $4818: $7c
    cp a                                          ; $4819: $bf
    rst $10                                       ; $481a: $d7
    pop bc                                        ; $481b: $c1
    call nc, $723f                                ; $481c: $d4 $3f $72
    and b                                         ; $481f: $a0
    adc [hl]                                      ; $4820: $8e
    inc e                                         ; $4821: $1c
    ld sp, hl                                     ; $4822: $f9
    adc a                                         ; $4823: $8f
    inc e                                         ; $4824: $1c
    ld b, d                                       ; $4825: $42
    add hl, de                                    ; $4826: $19
    ld b, e                                       ; $4827: $43
    rst $18                                       ; $4828: $df
    rst $20                                       ; $4829: $e7
    ld d, l                                       ; $482a: $55
    ld c, [hl]                                    ; $482b: $4e
    db $d3                                        ; $482c: $d3
    inc hl                                        ; $482d: $23
    cpl                                           ; $482e: $2f
    inc a                                         ; $482f: $3c
    inc hl                                        ; $4830: $23
    sbc l                                         ; $4831: $9d
    ld a, [hl-]                                   ; $4832: $3a
    ld a, d                                       ; $4833: $7a
    xor l                                         ; $4834: $ad
    and $d0                                       ; $4835: $e6 $d0
    ld [hl+], a                                   ; $4837: $22
    ld e, $03                                     ; $4838: $1e $03
    jp nc, $fed6                                  ; $483a: $d2 $d6 $fe

jr_063_483d:
    inc sp                                        ; $483d: $33
    dec [hl]                                      ; $483e: $35
    rst $30                                       ; $483f: $f7
    dec bc                                        ; $4840: $0b
    db $ed                                        ; $4841: $ed
    ccf                                           ; $4842: $3f
    add a                                         ; $4843: $87
    ld a, [$79aa]                                 ; $4844: $fa $aa $79
    db $ed                                        ; $4847: $ed
    adc $07                                       ; $4848: $ce $07
    add d                                         ; $484a: $82
    ld hl, sp-$64                                 ; $484b: $f8 $9c
    rla                                           ; $484d: $17
    rlca                                          ; $484e: $07
    ld e, h                                       ; $484f: $5c
    ld d, [hl]                                    ; $4850: $56
    dec [hl]                                      ; $4851: $35
    jp nz, $fbae                                  ; $4852: $c2 $ae $fb

    inc a                                         ; $4855: $3c
    cp d                                          ; $4856: $ba
    bit 5, d                                      ; $4857: $cb $6a
    ld [hl], e                                    ; $4859: $73
    and h                                         ; $485a: $a4
    dec b                                         ; $485b: $05
    cp l                                          ; $485c: $bd
    ret c                                         ; $485d: $d8

    jr c, jr_063_4875                             ; $485e: $38 $15

    ld a, [hl+]                                   ; $4860: $2a
    cp e                                          ; $4861: $bb
    xor d                                         ; $4862: $aa
    rst $18                                       ; $4863: $df
    jr nc, @-$1f                                  ; $4864: $30 $df

    cpl                                           ; $4866: $2f
    db $ed                                        ; $4867: $ed

jr_063_4868:
    ld d, $74                                     ; $4868: $16 $74
    sbc l                                         ; $486a: $9d
    ld d, b                                       ; $486b: $50
    xor d                                         ; $486c: $aa
    rst $20                                       ; $486d: $e7
    ld e, h                                       ; $486e: $5c
    dec b                                         ; $486f: $05
    and l                                         ; $4870: $a5
    sbc h                                         ; $4871: $9c
    inc a                                         ; $4872: $3c
    sbc b                                         ; $4873: $98
    ld h, l                                       ; $4874: $65

jr_063_4875:
    adc l                                         ; $4875: $8d
    ld d, b                                       ; $4876: $50
    ld l, b                                       ; $4877: $68
    ld a, e                                       ; $4878: $7b
    inc l                                         ; $4879: $2c
    and e                                         ; $487a: $a3
    cp e                                          ; $487b: $bb
    inc l                                         ; $487c: $2c
    ld [hl], $0e                                  ; $487d: $36 $0e
    sub h                                         ; $487f: $94
    ld a, [c]                                     ; $4880: $f2
    ret z                                         ; $4881: $c8

    jr c, jr_063_4868                             ; $4882: $38 $e4

    jp nc, Jump_000_2d95                          ; $4884: $d2 $95 $2d

    ei                                            ; $4887: $fb
    pop de                                        ; $4888: $d1
    ld c, b                                       ; $4889: $48
    dec bc                                        ; $488a: $0b
    ld a, d                                       ; $488b: $7a
    adc $fb                                       ; $488c: $ce $fb
    dec b                                         ; $488e: $05
    rlca                                          ; $488f: $07
    sbc e                                         ; $4890: $9b
    ld d, l                                       ; $4891: $55
    ld a, c                                       ; $4892: $79
    adc $91                                       ; $4893: $ce $91
    cp d                                          ; $4895: $ba
    xor h                                         ; $4896: $ac
    cp $e7                                        ; $4897: $fe $e7
    or c                                          ; $4899: $b1
    db $ec                                        ; $489a: $ec
    ld sp, $72ee                                  ; $489b: $31 $ee $72
    rst $00                                       ; $489e: $c7
    ret nc                                        ; $489f: $d0

    cp e                                          ; $48a0: $bb
    db $eb                                        ; $48a1: $eb
    ld e, b                                       ; $48a2: $58
    rst $00                                       ; $48a3: $c7
    ld l, d                                       ; $48a4: $6a
    jp c, $d942                                   ; $48a5: $da $42 $d9

    db $d3                                        ; $48a8: $d3
    xor h                                         ; $48a9: $ac
    jp z, Jump_000_0e73                           ; $48aa: $ca $73 $0e

    cp l                                          ; $48ad: $bd
    add [hl]                                      ; $48ae: $86
    ld c, e                                       ; $48af: $4b
    pop af                                        ; $48b0: $f1
    and d                                         ; $48b1: $a2
    sbc a                                         ; $48b2: $9f
    and $c5                                       ; $48b3: $e6 $c5
    ret nc                                        ; $48b5: $d0

    pop af                                        ; $48b6: $f1
    ld a, [hl]                                    ; $48b7: $7e
    ld bc, $baed                                  ; $48b8: $01 $ed $ba
    call z, Call_063_56b9                         ; $48bb: $cc $b9 $56
    ld [hl], e                                    ; $48be: $73
    ld de, $2b35                                  ; $48bf: $11 $35 $2b
    cp e                                          ; $48c2: $bb
    cp $6e                                        ; $48c3: $fe $6e
    xor c                                         ; $48c5: $a9
    ld l, e                                       ; $48c6: $6b
    ld b, c                                       ; $48c7: $41
    ld sp, $e807                                  ; $48c8: $31 $07 $e8
    ld h, [hl]                                    ; $48cb: $66
    halt                                          ; $48cc: $76
    ld l, $94                                     ; $48cd: $2e $94
    sub l                                         ; $48cf: $95
    and h                                         ; $48d0: $a4
    and b                                         ; $48d1: $a0
    ld [hl], e                                    ; $48d2: $73
    xor l                                         ; $48d3: $ad
    and $4a                                       ; $48d4: $e6 $4a
    ld [$fb82], a                                 ; $48d6: $ea $82 $fb
    pop de                                        ; $48d9: $d1
    add sp, $4e                                   ; $48da: $e8 $4e
    db $ed                                        ; $48dc: $ed
    cpl                                           ; $48dd: $2f
    add a                                         ; $48de: $87
    sub e                                         ; $48df: $93
    or h                                          ; $48e0: $b4
    adc c                                         ; $48e1: $89
    jp hl                                         ; $48e2: $e9


    jp c, Jump_063_66d7                           ; $48e3: $da $d7 $66

    ld e, [hl]                                    ; $48e6: $5e
    db $fc                                        ; $48e7: $fc
    ld [hl], e                                    ; $48e8: $73
    and b                                         ; $48e9: $a0
    sub h                                         ; $48ea: $94
    rst $30                                       ; $48eb: $f7
    add b                                         ; $48ec: $80
    db $ec                                        ; $48ed: $ec
    or c                                          ; $48ee: $b1
    add b                                         ; $48ef: $80
    sub h                                         ; $48f0: $94
    ld a, l                                       ; $48f1: $7d
    ld e, $9a                                     ; $48f2: $1e $9a
    ld d, a                                       ; $48f4: $57
    sub l                                         ; $48f5: $95
    sbc $bb                                       ; $48f6: $de $bb
    ld d, a                                       ; $48f8: $57
    sub l                                         ; $48f9: $95
    rst $28                                       ; $48fa: $ef
    rla                                           ; $48fb: $17
    sub a                                         ; $48fc: $97
    ld a, l                                       ; $48fd: $7d
    ld e, h                                       ; $48fe: $5c
    xor b                                         ; $48ff: $a8
    db $e3                                        ; $4900: $e3
    rst $18                                       ; $4901: $df
    cp l                                          ; $4902: $bd
    rst $00                                       ; $4903: $c7
    jr c, @-$2c                                   ; $4904: $38 $d2

    add d                                         ; $4906: $82
    sbc [hl]                                      ; $4907: $9e
    inc [hl]                                      ; $4908: $34
    ld [hl], e                                    ; $4909: $73
    and h                                         ; $490a: $a4
    ld l, $53                                     ; $490b: $2e $53
    pop hl                                        ; $490d: $e1
    ld a, c                                       ; $490e: $79
    sbc h                                         ; $490f: $9c
    ld h, e                                       ; $4910: $63
    add sp, -$73                                  ; $4911: $e8 $8d
    ld e, a                                       ; $4913: $5f
    ld a, h                                       ; $4914: $7c
    cp a                                          ; $4915: $bf
    rst $20                                       ; $4916: $e7
    push af                                       ; $4917: $f5
    xor $81                                       ; $4918: $ee $81
    ldh [$60], a                                  ; $491a: $e0 $60
    add a                                         ; $491c: $87
    jr c, jr_063_4983                             ; $491d: $38 $64

    db $fd                                        ; $491f: $fd
    db $dd                                        ; $4920: $dd
    and d                                         ; $4921: $a2
    ld a, l                                       ; $4922: $7d
    sub a                                         ; $4923: $97
    ld a, l                                       ; $4924: $7d
    call c, $ddef                                 ; $4925: $dc $ef $dd
    and h                                         ; $4928: $a4
    ld a, e                                       ; $4929: $7b
    or c                                          ; $492a: $b1
    call nc, $95c8                                ; $492b: $d4 $c8 $95
    dec l                                         ; $492e: $2d
    ld l, e                                       ; $492f: $6b
    cp b                                          ; $4930: $b8
    ld l, b                                       ; $4931: $68
    inc b                                         ; $4932: $04
    xor l                                         ; $4933: $ad
    db $fd                                        ; $4934: $fd
    dec b                                         ; $4935: $05
    rst $10                                       ; $4936: $d7
    inc e                                         ; $4937: $1c
    rst $00                                       ; $4938: $c7
    rst $00                                       ; $4939: $c7
    ld [hl], c                                    ; $493a: $71
    add [hl]                                      ; $493b: $86
    adc [hl]                                      ; $493c: $8e
    cp e                                          ; $493d: $bb
    rst $28                                       ; $493e: $ef
    ld a, e                                       ; $493f: $7b
    xor l                                         ; $4940: $ad
    and $a2                                       ; $4941: $e6 $a2
    db $e3                                        ; $4943: $e3
    and d                                         ; $4944: $a2
    db $e3                                        ; $4945: $e3
    ld [hl+], a                                   ; $4946: $22
    ld l, d                                       ; $4947: $6a
    ld d, [hl]                                    ; $4948: $56
    or $ea                                        ; $4949: $f6 $ea
    rst $28                                       ; $494b: $ef
    cp e                                          ; $494c: $bb
    rst $28                                       ; $494d: $ef
    ld a, e                                       ; $494e: $7b
    ld [hl], h                                    ; $494f: $74
    sub a                                         ; $4950: $97
    ld d, l                                       ; $4951: $55
    adc l                                         ; $4952: $8d
    or b                                          ; $4953: $b0
    db $eb                                        ; $4954: $eb
    ld a, $ef                                     ; $4955: $3e $ef
    sub d                                         ; $4957: $92
    dec [hl]                                      ; $4958: $35
    db $f4                                        ; $4959: $f4
    ld b, h                                       ; $495a: $44
    adc a                                         ; $495b: $8f
    db $fc                                        ; $495c: $fc
    or c                                          ; $495d: $b1
    rst $10                                       ; $495e: $d7
    ld [hl], b                                    ; $495f: $70
    ld d, l                                       ; $4960: $55
    add $fb                                       ; $4961: $c6 $fb
    dec b                                         ; $4963: $05
    rst $10                                       ; $4964: $d7
    sbc c                                         ; $4965: $99
    sbc $8d                                       ; $4966: $de $8d
    ld c, [hl]                                    ; $4968: $4e
    db $d3                                        ; $4969: $d3
    ld d, $51                                     ; $496a: $16 $51
    ld [hl], e                                    ; $496c: $73
    pop hl                                        ; $496d: $e1
    add hl, hl                                    ; $496e: $29
    ld c, l                                       ; $496f: $4d
    dec bc                                        ; $4970: $0b
    ld a, d                                       ; $4971: $7a
    ld [hl], h                                    ; $4972: $74
    and a                                         ; $4973: $a7
    db $eb                                        ; $4974: $eb
    ld d, h                                       ; $4975: $54
    add sp, -$23                                  ; $4976: $e8 $dd
    dec b                                         ; $4978: $05
    xor h                                         ; $4979: $ac
    cp $f3                                        ; $497a: $fe $f3
    jr c, jr_063_49bd                             ; $497c: $38 $3f

    dec sp                                        ; $497e: $3b
    rst $00                                       ; $497f: $c7
    ret nc                                        ; $4980: $d0

    dec de                                        ; $4981: $1b
    cp a                                          ; $4982: $bf

jr_063_4983:
    ld a, b                                       ; $4983: $78
    inc c                                         ; $4984: $0c
    ld a, l                                       ; $4985: $7d
    dec [hl]                                      ; $4986: $35
    call nz, $bfae                                ; $4987: $c4 $ae $bf
    ld e, e                                       ; $498a: $5b
    xor h                                         ; $498b: $ac

jr_063_498c:
    db $fd                                        ; $498c: $fd
    dec b                                         ; $498d: $05
    db $ed                                        ; $498e: $ed
    and c                                         ; $498f: $a1
    db $e3                                        ; $4990: $e3
    add sp, -$32                                  ; $4991: $e8 $ce
    ld sp, $91f4                                  ; $4993: $31 $f4 $91
    jr nz, @+$61                                  ; $4996: $20 $5f

    ret nc                                        ; $4998: $d0

    ld b, d                                       ; $4999: $42
    ld e, e                                       ; $499a: $5b
    ld b, h                                       ; $499b: $44
    call Call_063_6eca                            ; $499c: $cd $ca $6e
    ld h, [hl]                                    ; $499f: $66
    ld [hl], l                                    ; $49a0: $75
    ld [hl], a                                    ; $49a1: $77
    db $ec                                        ; $49a2: $ec
    call nc, $8bbe                                ; $49a3: $d4 $be $8b
    xor b                                         ; $49a6: $a8
    cp l                                          ; $49a7: $bd
    db $ec                                        ; $49a8: $ec
    add c                                         ; $49a9: $81
    and d                                         ; $49aa: $a2
    db $fd                                        ; $49ab: $fd
    dec b                                         ; $49ac: $05
    db $ed                                        ; $49ad: $ed
    ld [hl], c                                    ; $49ae: $71
    ld c, b                                       ; $49af: $48
    db $fc                                        ; $49b0: $fc
    ld [hl-], a                                   ; $49b1: $32
    and l                                         ; $49b2: $a5
    adc e                                         ; $49b3: $8b
    ld a, b                                       ; $49b4: $78
    ld l, b                                       ; $49b5: $68
    add hl, de                                    ; $49b6: $19
    ld h, a                                       ; $49b7: $67
    add sp, -$48                                  ; $49b8: $e8 $b8
    jp c, $d5a1                                   ; $49ba: $da $a1 $d5

jr_063_49bd:
    ld a, [c]                                     ; $49bd: $f2
    ld b, b                                       ; $49be: $40
    ldh a, [$9c]                                  ; $49bf: $f0 $9c
    rla                                           ; $49c1: $17
    rlca                                          ; $49c2: $07
    sbc e                                         ; $49c3: $9b
    ld d, l                                       ; $49c4: $55
    ld a, c                                       ; $49c5: $79
    db $e4                                        ; $49c6: $e4
    rst $08                                       ; $49c7: $cf
    ld e, l                                       ; $49c8: $5d
    ld l, c                                       ; $49c9: $69
    rst $00                                       ; $49ca: $c7
    xor [hl]                                      ; $49cb: $ae
    db $eb                                        ; $49cc: $eb
    cp d                                          ; $49cd: $ba
    ld d, d                                       ; $49ce: $52
    and $a1                                       ; $49cf: $e6 $a1
    ld h, l                                       ; $49d1: $65
    jr nz, jr_063_498c                            ; $49d2: $20 $b8

    ld a, [de]                                    ; $49d4: $1a
    sbc [hl]                                      ; $49d5: $9e
    ld e, c                                       ; $49d6: $59
    or $7b                                        ; $49d7: $f6 $7b
    scf                                           ; $49d9: $37
    jp hl                                         ; $49da: $e9


    ld e, [hl]                                    ; $49db: $5e
    inc l                                         ; $49dc: $2c
    or l                                          ; $49dd: $b5
    ld b, l                                       ; $49de: $45
    dec l                                         ; $49df: $2d
    rst $30                                       ; $49e0: $f7
    dec bc                                        ; $49e1: $0b
    rst $10                                       ; $49e2: $d7
    ld e, c                                       ; $49e3: $59
    ld a, b                                       ; $49e4: $78
    dec e                                         ; $49e5: $1d
    sub b                                         ; $49e6: $90
    ld [hl], a                                    ; $49e7: $77
    rst $18                                       ; $49e8: $df
    rst $30                                       ; $49e9: $f7
    jp c, Jump_000_0f9d                           ; $49ea: $da $9d $0f

    inc b                                         ; $49ed: $04
    pop af                                        ; $49ee: $f1
    ld h, d                                       ; $49ef: $62
    db $e3                                        ; $49f0: $e3
    ld b, b                                       ; $49f1: $40
    add hl, hl                                    ; $49f2: $29
    ld c, a                                       ; $49f3: $4f
    ld b, d                                       ; $49f4: $42
    ld sp, $3c2f                                  ; $49f5: $31 $2f $3c
    db $e3                                        ; $49f8: $e3

Jump_063_49f9:
    inc c                                         ; $49f9: $0c
    dec e                                         ; $49fa: $1d
    dec l                                         ; $49fb: $2d
    rst $30                                       ; $49fc: $f7
    xor [hl]                                      ; $49fd: $ae
    add e                                         ; $49fe: $83
    dec a                                         ; $49ff: $3d
    call $8c7d                                    ; $4a00: $cd $7d $8c
    ld a, a                                       ; $4a03: $7f
    ld a, d                                       ; $4a04: $7a
    and h                                         ; $4a05: $a4
    dec b                                         ; $4a06: $05
    xor l                                         ; $4a07: $ad
    db $fd                                        ; $4a08: $fd
    dec b                                         ; $4a09: $05
    db $ed                                        ; $4a0a: $ed
    pop af                                        ; $4a0b: $f1
    rst $00                                       ; $4a0c: $c7
    push af                                       ; $4a0d: $f5
    rra                                           ; $4a0e: $1f
    dec de                                        ; $4a0f: $1b
    cp l                                          ; $4a10: $bd
    ld b, e                                       ; $4a11: $43
    ld a, [c]                                     ; $4a12: $f2
    ld e, e                                       ; $4a13: $5b
    ld e, $e9                                     ; $4a14: $1e $e9
    inc c                                         ; $4a16: $0c
    xor l                                         ; $4a17: $ad
    sub [hl]                                      ; $4a18: $96
    rst $08                                       ; $4a19: $cf
    ld a, c                                       ; $4a1a: $79
    ld bc, $ffed                                  ; $4a1b: $01 $ed $ff

jr_063_4a1e:
    sbc c                                         ; $4a1e: $99
    ld a, [$d432]                                 ; $4a1f: $fa $32 $d4
    rst $10                                       ; $4a22: $d7
    or b                                          ; $4a23: $b0
    jp nc, $e93c                                  ; $4a24: $d2 $3c $e9

    ld hl, $8594                                  ; $4a27: $21 $94 $85
    ld h, a                                       ; $4a2a: $67
    push de                                       ; $4a2b: $d5
    ld [c], a                                     ; $4a2c: $e2
    db $f4                                        ; $4a2d: $f4
    cp l                                          ; $4a2e: $bd
    srl [hl]                                      ; $4a2f: $cb $3e
    ld l, $d4                                     ; $4a31: $2e $d4
    ld b, l                                       ; $4a33: $45
    jr nz, jr_063_4a1e                            ; $4a34: $20 $e8

    or l                                          ; $4a36: $b5
    dec sp                                        ; $4a37: $3b
    rra                                           ; $4a38: $1f
    ld [$ed62], sp                                ; $4a39: $08 $62 $ed
    cpl                                           ; $4a3c: $2f
    sub a                                         ; $4a3d: $97
    ld a, [hl]                                    ; $4a3e: $7e
    add hl, de                                    ; $4a3f: $19
    ld [$7aeb], a                                 ; $4a40: $ea $eb $7a
    ld h, c                                       ; $4a43: $61
    ld c, a                                       ; $4a44: $4f
    ld b, d                                       ; $4a45: $42
    ld sp, $f39f                                  ; $4a46: $31 $9f $f3
    ld [bc], a                                    ; $4a49: $02
    rlca                                          ; $4a4a: $07
    cp $ee                                        ; $4a4b: $fe $ee
    ei                                            ; $4a4d: $fb
    ld e, $9a                                     ; $4a4e: $1e $9a
    rst $20                                       ; $4a50: $e7
    ld e, h                                       ; $4a51: $5c
    dec c                                         ; $4a52: $0d
    rst $08                                       ; $4a53: $cf
    xor d                                         ; $4a54: $aa
    sbc [hl]                                      ; $4a55: $9e
    ld e, [hl]                                    ; $4a56: $5e
    dec c                                         ; $4a57: $0d
    ld c, d                                       ; $4a58: $4a
    add hl, sp                                    ; $4a59: $39
    rla                                           ; $4a5a: $17
    jp z, $0bcc                                   ; $4a5b: $ca $cc $0b

    ld d, c                                       ; $4a5e: $51
    ld h, h                                       ; $4a5f: $64
    pop hl                                        ; $4a60: $e1
    ld c, $85                                     ; $4a61: $0e $85
    rst $00                                       ; $4a63: $c7
    ld bc, $f9ba                                  ; $4a64: $01 $ba $f9
    sbc $c1                                       ; $4a67: $de $c1
    ld h, [hl]                                    ; $4a69: $66
    ld d, l                                       ; $4a6a: $55
    sbc [hl]                                      ; $4a6b: $9e
    ld [hl], e                                    ; $4a6c: $73
    ld sp, $260c                                  ; $4a6d: $31 $0c $26
    sub h                                         ; $4a70: $94
    inc h                                         ; $4a71: $24
    adc l                                         ; $4a72: $8d
    sub [hl]                                      ; $4a73: $96
    db $fd                                        ; $4a74: $fd
    ld l, b                                       ; $4a75: $68
    add a                                         ; $4a76: $87
    cp d                                          ; $4a77: $ba
    add [hl]                                      ; $4a78: $86
    ld c, c                                       ; $4a79: $49
    daa                                           ; $4a7a: $27
    ret z                                         ; $4a7b: $c8

    db $fd                                        ; $4a7c: $fd
    ld [bc], a                                    ; $4a7d: $02
    ld d, a                                       ; $4a7e: $57
    rlca                                          ; $4a7f: $07
    reti                                          ; $4a80: $d9


    ld a, l                                       ; $4a81: $7d
    rst $18                                       ; $4a82: $df
    xor e                                         ; $4a83: $ab
    sub $fe                                       ; $4a84: $d6 $fe
    ld [bc], a                                    ; $4a86: $02
    db $ed                                        ; $4a87: $ed
    ld [hl], c                                    ; $4a88: $71
    ret z                                         ; $4a89: $c8

    ld d, l                                       ; $4a8a: $55
    push af                                       ; $4a8b: $f5
    ei                                            ; $4a8c: $fb
    ret nc                                        ; $4a8d: $d0

    ld [hl-], a                                   ; $4a8e: $32
    jp nc, $ce72                                  ; $4a8f: $d2 $72 $ce

    dec bc                                        ; $4a92: $0b
    db $ed                                        ; $4a93: $ed
    ld sp, $8800                                  ; $4a94: $31 $00 $88
    halt                                          ; $4a97: $76
    db $ed                                        ; $4a98: $ed
    jp c, $ed5f                                   ; $4a99: $da $5f $ed

    pop af                                        ; $4a9c: $f1
    rst $00                                       ; $4a9d: $c7
    push bc                                       ; $4a9e: $c5
    ccf                                           ; $4a9f: $3f
    add a                                         ; $4aa0: $87
    and $73                                       ; $4aa1: $e6 $73
    ld e, [hl]                                    ; $4aa3: $5e
    db $ed                                        ; $4aa4: $ed
    adc $07                                       ; $4aa5: $ce $07
    add d                                         ; $4aa7: $82
    ld e, b                                       ; $4aa8: $58
    ei                                            ; $4aa9: $fb
    xor [hl]                                      ; $4aaa: $ae
    ret                                           ; $4aab: $c9


    ret nc                                        ; $4aac: $d0

    pop de                                        ; $4aad: $d1
    ld [hl-], a                                   ; $4aae: $32
    ld a, [c]                                     ; $4aaf: $f2
    rst $20                                       ; $4ab0: $e7

jr_063_4ab1:
    ld [hl+], a                                   ; $4ab1: $22
    ld e, l                                       ; $4ab2: $5d
    ret nc                                        ; $4ab3: $d0

    inc a                                         ; $4ab4: $3c
    jp nc, $d682                                  ; $4ab5: $d2 $82 $d6

    cp $02                                        ; $4ab8: $fe $02
    db $ed                                        ; $4aba: $ed
    ccf                                           ; $4abb: $3f
    ld d, e                                       ; $4abc: $53
    ld b, e                                       ; $4abd: $43
    dec de                                        ; $4abe: $1b
    ld [$9a7b], a                                 ; $4abf: $ea $7b $9a
    ld c, e                                       ; $4ac2: $4b
    inc hl                                        ; $4ac3: $23
    ld a, d                                       ; $4ac4: $7a
    and h                                         ; $4ac5: $a4
    dec b                                         ; $4ac6: $05
    xor l                                         ; $4ac7: $ad
    db $fd                                        ; $4ac8: $fd
    dec b                                         ; $4ac9: $05
    rlca                                          ; $4aca: $07
    ld e, h                                       ; $4acb: $5c
    ld d, $81                                     ; $4acc: $16 $81
    ld a, [de]                                    ; $4ace: $1a
    ld b, d                                       ; $4acf: $42
    sbc c                                         ; $4ad0: $99
    adc [hl]                                      ; $4ad1: $8e
    add e                                         ; $4ad2: $83
    ld d, l                                       ; $4ad3: $55
    ret nz                                        ; $4ad4: $c0

    jp z, $951e                                   ; $4ad5: $ca $1e $95

    xor $46                                       ; $4ad8: $ee $46
    rlca                                          ; $4ada: $07
    and l                                         ; $4adb: $a5
    ld a, l                                       ; $4adc: $7d
    rla                                           ; $4add: $17
    rlca                                          ; $4ade: $07
    db $e4                                        ; $4adf: $e4
    ld a, l                                       ; $4ae0: $7d
    ld e, $dd                                     ; $4ae1: $1e $dd
    ld h, l                                       ; $4ae3: $65
    db $e4                                        ; $4ae4: $e4
    adc a                                         ; $4ae5: $8f
    pop de                                        ; $4ae6: $d1
    or e                                          ; $4ae7: $b3
    db $ec                                        ; $4ae8: $ec
    ld a, d                                       ; $4ae9: $7a
    jr z, jr_063_4ab1                             ; $4aea: $28 $c5

    ld b, d                                       ; $4aec: $42
    call z, $8f1d                                 ; $4aed: $cc $1d $8f
    ld [hl], e                                    ; $4af0: $73
    rlca                                          ; $4af1: $07
    ld d, l                                       ; $4af2: $55
    ld hl, $ef77                                  ; $4af3: $21 $77 $ef
    and b                                         ; $4af6: $a0
    ld h, l                                       ; $4af7: $65
    db $ed                                        ; $4af8: $ed

jr_063_4af9:
    adc $07                                       ; $4af9: $ce $07
    add d                                         ; $4afb: $82
    ld a, b                                       ; $4afc: $78
    adc $55                                       ; $4afd: $ce $55
    cp $08                                        ; $4aff: $fe $08
    ld h, l                                       ; $4b01: $65
    add sp, $04                                   ; $4b02: $e8 $04
    ld b, c                                       ; $4b04: $41
    rst $18                                       ; $4b05: $df
    ld l, e                                       ; $4b06: $6b
    db $d3                                        ; $4b07: $d3
    rst $30                                       ; $4b08: $f7
    inc [hl]                                      ; $4b09: $34
    sub a                                         ; $4b0a: $97
    ld b, [hl]                                    ; $4b0b: $46
    db $f4                                        ; $4b0c: $f4
    ld c, b                                       ; $4b0d: $48
    dec bc                                        ; $4b0e: $0b
    ld e, d                                       ; $4b0f: $5a
    ei                                            ; $4b10: $fb
    dec bc                                        ; $4b11: $0b
    rlca                                          ; $4b12: $07
    ld e, h                                       ; $4b13: $5c
    ld d, $81                                     ; $4b14: $16 $81
    ld a, [de]                                    ; $4b16: $1a
    ld b, d                                       ; $4b17: $42
    sbc c                                         ; $4b18: $99
    adc [hl]                                      ; $4b19: $8e
    add e                                         ; $4b1a: $83
    ld d, l                                       ; $4b1b: $55
    ret nz                                        ; $4b1c: $c0

    jp z, $951e                                   ; $4b1d: $ca $1e $95

    xor $46                                       ; $4b20: $ee $46
    rlca                                          ; $4b22: $07
    and l                                         ; $4b23: $a5
    ld a, l                                       ; $4b24: $7d
    rla                                           ; $4b25: $17
    rlca                                          ; $4b26: $07
    db $e4                                        ; $4b27: $e4
    ld a, l                                       ; $4b28: $7d
    ld e, $dd                                     ; $4b29: $1e $dd
    ld h, l                                       ; $4b2b: $65
    db $e4                                        ; $4b2c: $e4
    adc a                                         ; $4b2d: $8f
    pop de                                        ; $4b2e: $d1
    or e                                          ; $4b2f: $b3
    db $ec                                        ; $4b30: $ec
    ld a, d                                       ; $4b31: $7a
    jr z, jr_063_4af9                             ; $4b32: $28 $c5

    ld b, d                                       ; $4b34: $42
    call z, $8f1d                                 ; $4b35: $cc $1d $8f
    ld [hl], e                                    ; $4b38: $73
    rlca                                          ; $4b39: $07
    ld d, l                                       ; $4b3a: $55
    ld hl, $ef77                                  ; $4b3b: $21 $77 $ef
    and b                                         ; $4b3e: $a0
    ld h, l                                       ; $4b3f: $65
    xor b                                         ; $4b40: $a8
    rst $28                                       ; $4b41: $ef
    ld l, c                                       ; $4b42: $69
    xor [hl]                                      ; $4b43: $ae
    ld a, [c]                                     ; $4b44: $f2
    ld b, a                                       ; $4b45: $47
    jr z, jr_063_4b93                             ; $4b46: $28 $4b

    inc hl                                        ; $4b48: $23
    ld a, d                                       ; $4b49: $7a
    db $ed                                        ; $4b4a: $ed
    adc $07                                       ; $4b4b: $ce $07
    add d                                         ; $4b4d: $82
    ld e, b                                       ; $4b4e: $58
    ei                                            ; $4b4f: $fb
    dec bc                                        ; $4b50: $0b
    db $ed                                        ; $4b51: $ed
    adc $07                                       ; $4b52: $ce $07
    add d                                         ; $4b54: $82
    sbc b                                         ; $4b55: $98
    ld [hl], $d5                                  ; $4b56: $36 $d5
    ld a, a                                       ; $4b58: $7f
    ld a, [hl-]                                   ; $4b59: $3a
    add a                                         ; $4b5a: $87
    ld a, [$ca10]                                 ; $4b5b: $fa $10 $ca
    add hl, sp                                    ; $4b5e: $39
    cpl                                           ; $4b5f: $2f
    rlca                                          ; $4b60: $07
    cp $ee                                        ; $4b61: $fe $ee
    ei                                            ; $4b63: $fb
    ld e, $9a                                     ; $4b64: $1e $9a
    rst $00                                       ; $4b66: $c7
    add hl, de                                    ; $4b67: $19
    ld [hl], d                                    ; $4b68: $72
    ld [hl], h                                    ; $4b69: $74
    sub a                                         ; $4b6a: $97
    ei                                            ; $4b6b: $fb
    cp [hl]                                       ; $4b6c: $be
    ld e, a                                       ; $4b6d: $5f
    db $ed                                        ; $4b6e: $ed
    pop af                                        ; $4b6f: $f1
    rst $00                                       ; $4b70: $c7
    ld d, l                                       ; $4b71: $55
    ld h, l                                       ; $4b72: $65
    or $d0                                        ; $4b73: $f6 $d0
    cp c                                          ; $4b75: $b9
    ei                                            ; $4b76: $fb
    cp [hl]                                       ; $4b77: $be
    rst $30                                       ; $4b78: $f7
    ld sp, $8b69                                  ; $4b79: $31 $69 $8b
    ld h, c                                       ; $4b7c: $61
    adc $81                                       ; $4b7d: $ce $81
    and b                                         ; $4b7f: $a0
    rst $10                                       ; $4b80: $d7
    ld l, d                                       ; $4b81: $6a
    xor [hl]                                      ; $4b82: $ae
    dec b                                         ; $4b83: $05
    push bc                                       ; $4b84: $c5
    inc e                                         ; $4b85: $1c
    and b                                         ; $4b86: $a0

jr_063_4b87:
    sbc e                                         ; $4b87: $9b
    reti                                          ; $4b88: $d9


    ld a, h                                       ; $4b89: $7c
    cp a                                          ; $4b8a: $bf
    rla                                           ; $4b8b: $17
    add e                                         ; $4b8c: $83
    jp c, $e325                                   ; $4b8d: $da $25 $e3

    db $f4                                        ; $4b90: $f4
    ld [hl], h                                    ; $4b91: $74
    ld e, h                                       ; $4b92: $5c

jr_063_4b93:
    inc d                                         ; $4b93: $14
    ld [hl], d                                    ; $4b94: $72
    sbc a                                         ; $4b95: $9f
    rst $10                                       ; $4b96: $d7
    adc l                                         ; $4b97: $8d
    sbc [hl]                                      ; $4b98: $9e
    inc hl                                        ; $4b99: $23
    halt                                          ; $4b9a: $76
    ld c, $2d                                     ; $4b9b: $0e $2d
    db $e3                                        ; $4b9d: $e3
    inc c                                         ; $4b9e: $0c
    dec e                                         ; $4b9f: $1d
    rst $08                                       ; $4ba0: $cf
    reti                                          ; $4ba1: $d9


    dec h                                         ; $4ba2: $25
    ld [hl], e                                    ; $4ba3: $73
    adc [hl]                                      ; $4ba4: $8e

Call_063_4ba5:
    ld [hl], h                                    ; $4ba5: $74
    ld b, a                                       ; $4ba6: $47
    jr z, jr_063_4b87                             ; $4ba7: $28 $de

    rst $20                                       ; $4ba9: $e7
    ld e, l                                       ; $4baa: $5d
    ld [hl-], a                                   ; $4bab: $32
    ld d, b                                       ; $4bac: $50
    jp z, Jump_063_746b                           ; $4bad: $ca $6b $74

    rst $00                                       ; $4bb0: $c7
    jp $34a4                                      ; $4bb1: $c3 $a4 $34


    ld e, b                                       ; $4bb4: $58
    ei                                            ; $4bb5: $fb
    dec bc                                        ; $4bb6: $0b
    rlca                                          ; $4bb7: $07
    ld e, h                                       ; $4bb8: $5c
    ld d, [hl]                                    ; $4bb9: $56
    ld b, b                                       ; $4bba: $40
    ld c, l                                       ; $4bbb: $4d
    rst $00                                       ; $4bbc: $c7
    ld b, l                                       ; $4bbd: $45
    ld hl, $79f7                                  ; $4bbe: $21 $f7 $79
    db $dd                                        ; $4bc1: $dd
    add sp, $39                                   ; $4bc2: $e8 $39
    ld h, d                                       ; $4bc4: $62
    rst $20                                       ; $4bc5: $e7
    jr c, jr_063_4c0b                             ; $4bc6: $38 $43

    ld b, a                                       ; $4bc8: $47
    bit 7, [hl]                                   ; $4bc9: $cb $7e
    or a                                          ; $4bcb: $b7
    ld hl, sp-$22                                 ; $4bcc: $f8 $de
    ld bc, $7197                                  ; $4bce: $01 $97 $71
    ld b, $a3                                     ; $4bd1: $06 $a3
    rst $30                                       ; $4bd3: $f7
    ld a, c                                       ; $4bd4: $79
    ld [hl], h                                    ; $4bd5: $74
    sub a                                         ; $4bd6: $97
    add hl, hl                                    ; $4bd7: $29
    ld e, l                                       ; $4bd8: $5d
    call nz, $890b                                ; $4bd9: $c4 $0b $89
    ld [c], a                                     ; $4bdc: $e2
    and c                                         ; $4bdd: $a1
    ld h, l                                       ; $4bde: $65
    ld d, c                                       ; $4bdf: $51
    ld c, b                                       ; $4be0: $48
    add h                                         ; $4be1: $84
    pop de                                        ; $4be2: $d1
    ld e, l                                       ; $4be3: $5d
    ld b, [hl]                                    ; $4be4: $46
    cp $5c                                        ; $4be5: $fe $5c
    and a                                         ; $4be7: $a7
    ld d, h                                       ; $4be8: $54
    sbc $ef                                       ; $4be9: $de $ef
    cp h                                          ; $4beb: $bc
    ldh a, [$8c]                                  ; $4bec: $f0 $8c
    inc sp                                        ; $4bee: $33
    ld [hl], h                                    ; $4bef: $74
    db $f4                                        ; $4bf0: $f4
    cp l                                          ; $4bf1: $bd
    or $18                                        ; $4bf2: $f6 $18
    ld [$0eae], a                                 ; $4bf4: $ea $ae $0e
    or d                                          ; $4bf7: $b2
    ld d, b                                       ; $4bf8: $50
    sub $fe                                       ; $4bf9: $d6 $fe
    inc sp                                        ; $4bfb: $33
    dec [hl]                                      ; $4bfc: $35
    inc bc                                        ; $4bfd: $03
    and l                                         ; $4bfe: $a5
    inc a                                         ; $4bff: $3c
    ld a, [c]                                     ; $4c00: $f2
    rst $00                                       ; $4c01: $c7
    add sp, $45                                   ; $4c02: $e8 $45
    cp d                                          ; $4c04: $ba
    and b                                         ; $4c05: $a0
    ld a, c                                       ; $4c06: $79
    rrca                                          ; $4c07: $0f
    sub h                                         ; $4c08: $94
    push bc                                       ; $4c09: $c5
    ret nc                                        ; $4c0a: $d0

jr_063_4c0b:
    cp e                                          ; $4c0b: $bb
    ld b, a                                       ; $4c0c: $47
    ld [hl], a                                    ; $4c0d: $77
    ld e, c                                       ; $4c0e: $59
    ld c, h                                       ; $4c0f: $4c
    ld c, c                                       ; $4c10: $49
    rrca                                          ; $4c11: $0f
    xor c                                         ; $4c12: $a9
    jr c, @-$2d                                   ; $4c13: $38 $d1

    rst $28                                       ; $4c15: $ef
    rla                                           ; $4c16: $17
    add a                                         ; $4c17: $87
    sbc d                                         ; $4c18: $9a
    ld b, e                                       ; $4c19: $43
    di                                            ; $4c1a: $f3
    ld [c], a                                     ; $4c1b: $e2
    sbc a                                         ; $4c1c: $9f
    ei                                            ; $4c1d: $fb
    sbc l                                         ; $4c1e: $9d
    ld l, e                                       ; $4c1f: $6b
    ld [hl], e                                    ; $4c20: $73
    ld [$2fbc], sp                                ; $4c21: $08 $bc $2f
    dec [hl]                                      ; $4c24: $35
    cp $a9                                        ; $4c25: $fe $a9

jr_063_4c27:
    ld a, l                                       ; $4c27: $7d
    rla                                           ; $4c28: $17
    ld sp, hl                                     ; $4c29: $f9
    ld e, c                                       ; $4c2a: $59
    dec hl                                        ; $4c2b: $2b
    add b                                         ; $4c2c: $80
    ldh a, [$a2]                                  ; $4c2d: $f0 $a2
    db $fc                                        ; $4c2f: $fc
    sbc h                                         ; $4c30: $9c
    inc d                                         ; $4c31: $14
    and l                                         ; $4c32: $a5
    ld e, h                                       ; $4c33: $5c
    ld [hl], a                                    ; $4c34: $77
    ld [hl], c                                    ; $4c35: $71
    ld l, d                                       ; $4c36: $6a
    and d                                         ; $4c37: $a2
    ld [$4304], sp                                ; $4c38: $08 $04 $43
    sbc $bb                                       ; $4c3b: $de $bb
    adc $82                                       ; $4c3d: $ce $82
    ld h, e                                       ; $4c3f: $63
    add sp, -$73                                  ; $4c40: $e8 $8d
    ld e, a                                       ; $4c42: $5f
    inc a                                         ; $4c43: $3c
    add [hl]                                      ; $4c44: $86
    ld a, $ba                                     ; $4c45: $3e $ba
    db $d3                                        ; $4c47: $d3
    ld [hl], l                                    ; $4c48: $75
    dec [hl]                                      ; $4c49: $35
    call nz, $bfae                                ; $4c4a: $c4 $ae $bf
    ei                                            ; $4c4d: $fb
    ld a, [hl]                                    ; $4c4e: $7e
    ld bc, $f1ed                                  ; $4c4f: $01 $ed $f1
    rst $00                                       ; $4c52: $c7
    pop de                                        ; $4c53: $d1
    sbc l                                         ; $4c54: $9d
    db $e3                                        ; $4c55: $e3
    or b                                          ; $4c56: $b0
    cpl                                           ; $4c57: $2f
    and l                                         ; $4c58: $a5
    sbc c                                         ; $4c59: $99
    ld h, a                                       ; $4c5a: $67
    db $ed                                        ; $4c5b: $ed
    ld [de], a                                    ; $4c5c: $12

jr_063_4c5d:
    and l                                         ; $4c5d: $a5
    cp h                                          ; $4c5e: $bc
    rst $20                                       ; $4c5f: $e7
    ld c, e                                       ; $4c60: $4b
    pop af                                        ; $4c61: $f1
    ld [hl+], a                                   ; $4c62: $22
    ld l, d                                       ; $4c63: $6a
    ld d, [hl]                                    ; $4c64: $56
    halt                                          ; $4c65: $76
    inc sp                                        ; $4c66: $33
    xor e                                         ; $4c67: $ab
    cp e                                          ; $4c68: $bb
    ld h, e                                       ; $4c69: $63
    rst $20                                       ; $4c6a: $e7
    sub h                                         ; $4c6b: $94
    ld l, $e2                                     ; $4c6c: $2e $e2
    sub c                                         ; $4c6e: $91
    ccf                                           ; $4c6f: $3f
    or $c8                                        ; $4c70: $f6 $c8
    rst $38                                       ; $4c72: $ff
    ld [hl], h                                    ; $4c73: $74
    di                                            ; $4c74: $f3
    ld b, d                                       ; $4c75: $42
    ld l, e                                       ; $4c76: $6b
    adc a                                         ; $4c77: $8f
    ld [hl], c                                    ; $4c78: $71
    sub [hl]                                      ; $4c79: $96
    ld b, l                                       ; $4c7a: $45
    ld a, d                                       ; $4c7b: $7a
    rst $00                                       ; $4c7c: $c7
    jr c, jr_063_4c27                             ; $4c7d: $38 $a8

    ld l, d                                       ; $4c7f: $6a
    ld e, c                                       ; $4c80: $59
    add e                                         ; $4c81: $83
    xor $2c                                       ; $4c82: $ee $2c
    sbc h                                         ; $4c84: $9c
    and c                                         ; $4c85: $a1
    db $e3                                        ; $4c86: $e3
    cp l                                          ; $4c87: $bd
    ld c, e                                       ; $4c88: $4b
    ld d, $83                                     ; $4c89: $16 $83
    and b                                         ; $4c8b: $a0
    ld [hl], e                                    ; $4c8c: $73
    ld h, h                                       ; $4c8d: $64
    db $ec                                        ; $4c8e: $ec
    ld e, h                                       ; $4c8f: $5c
    db $e4                                        ; $4c90: $e4
    ld h, a                                       ; $4c91: $67
    xor l                                         ; $4c92: $ad
    nop                                           ; $4c93: $00
    jp nz, $e863                                  ; $4c94: $c2 $63 $e8

    cp e                                          ; $4c97: $bb
    jr c, jr_063_4ccf                             ; $4c98: $38 $35

    ld d, c                                       ; $4c9a: $51
    inc b                                         ; $4c9b: $04
    add d                                         ; $4c9c: $82
    ld hl, $5def                                  ; $4c9d: $21 $ef $5d
    ld [hl-], a                                   ; $4ca0: $32
    push af                                       ; $4ca1: $f5
    ld h, l                                       ; $4ca2: $65
    and l                                         ; $4ca3: $a5
    ld a, c                                       ; $4ca4: $79
    cp a                                          ; $4ca5: $bf
    ld l, l                                       ; $4ca6: $6d
    and $c5                                       ; $4ca7: $e6 $c5
    ccf                                           ; $4ca9: $3f
    rst $10                                       ; $4caa: $d7
    and d                                         ; $4cab: $a2
    ld [$47ef], sp                                ; $4cac: $08 $ef $47
    ld b, e                                       ; $4caf: $43
    jr z, jr_063_4c5d                             ; $4cb0: $28 $ab

    ld c, l                                       ; $4cb2: $4d
    db $fc                                        ; $4cb3: $fc
    or d                                          ; $4cb4: $b2
    rst $08                                       ; $4cb5: $cf
    ld c, e                                       ; $4cb6: $4b
    inc hl                                        ; $4cb7: $23
    ld a, d                                       ; $4cb8: $7a
    and c                                         ; $4cb9: $a1
    ld l, $ca                                     ; $4cba: $2e $ca
    cp a                                          ; $4cbc: $bf
    add $ef                                       ; $4cbd: $c6 $ef
    db $fd                                        ; $4cbf: $fd
    and e                                         ; $4cc0: $a3
    rst $28                                       ; $4cc1: $ef
    rla                                           ; $4cc2: $17
    rst $10                                       ; $4cc3: $d7
    ret nc                                        ; $4cc4: $d0

    ccf                                           ; $4cc5: $3f
    ld l, l                                       ; $4cc6: $6d
    sub a                                         ; $4cc7: $97
    inc l                                         ; $4cc8: $2c
    adc l                                         ; $4cc9: $8d
    ld l, b                                       ; $4cca: $68
    db $f4                                        ; $4ccb: $f4
    ld e, $28                                     ; $4ccc: $1e $28
    db $e3                                        ; $4cce: $e3

jr_063_4ccf:
    inc c                                         ; $4ccf: $0c
    ld e, b                                       ; $4cd0: $58
    rst $30                                       ; $4cd1: $f7
    dec sp                                        ; $4cd2: $3b
    db $d3                                        ; $4cd3: $d3
    ld d, [hl]                                    ; $4cd4: $56
    db $dd                                        ; $4cd5: $dd
    db $e3                                        ; $4cd6: $e3
    add hl, sp                                    ; $4cd7: $39
    ld h, d                                       ; $4cd8: $62
    rst $20                                       ; $4cd9: $e7
    xor $fb                                       ; $4cda: $ee $fb
    ld e, $5a                                     ; $4cdc: $1e $5a
    or $34                                        ; $4cde: $f6 $34
    pop de                                        ; $4ce0: $d1
    and e                                         ; $4ce1: $a3
    cp e                                          ; $4ce2: $bb
    inc l                                         ; $4ce3: $2c
    or h                                          ; $4ce4: $b4
    ld [hl+], a                                   ; $4ce5: $22
    ld l, d                                       ; $4ce6: $6a
    or d                                          ; $4ce7: $b2
    rst $30                                       ; $4ce8: $f7
    ld b, b                                       ; $4ce9: $40
    ld e, c                                       ; $4cea: $59
    xor e                                         ; $4ceb: $ab
    ld a, c                                       ; $4cec: $79
    cp a                                          ; $4ced: $bf
    db $ed                                        ; $4cee: $ed
    call nc, $2da4                                ; $4cef: $d4 $a4 $2d
    add [hl]                                      ; $4cf2: $86
    dec [hl]                                      ; $4cf3: $35
    db $f4                                        ; $4cf4: $f4
    ld b, h                                       ; $4cf5: $44
    cpl                                           ; $4cf6: $2f
    and [hl]                                      ; $4cf7: $a6
    and h                                         ; $4cf8: $a4
    rla                                           ; $4cf9: $17
    ld e, e                                       ; $4cfa: $5b
    call nz, $50b9                                ; $4cfb: $c4 $b9 $50
    ld b, [hl]                                    ; $4cfe: $46
    jp nc, $bd29                                  ; $4cff: $d2 $29 $bd

    push hl                                       ; $4d02: $e5
    sub c                                         ; $4d03: $91
    jr nz, jr_063_4d65                            ; $4d04: $20 $5f

    ret nc                                        ; $4d06: $d0

    ld [hl], d                                    ; $4d07: $72
    rst $28                                       ; $4d08: $ef
    inc a                                         ; $4d09: $3c
    ld e, [hl]                                    ; $4d0a: $5e
    jp $f4d5                                      ; $4d0b: $c3 $d5 $f4


    db $f4                                        ; $4d0e: $f4
    inc l                                         ; $4d0f: $2c
    db $e3                                        ; $4d10: $e3
    inc c                                         ; $4d11: $0c
    dec e                                         ; $4d12: $1d
    rst $20                                       ; $4d13: $e7
    sbc h                                         ; $4d14: $9c
    add h                                         ; $4d15: $84
    ld h, d                                       ; $4d16: $62
    ld e, $3a                                     ; $4d17: $1e $3a
    rst $10                                       ; $4d19: $d7
    nop                                           ; $4d1a: $00
    ld b, c                                       ; $4d1b: $41
    rst $20                                       ; $4d1c: $e7
    and d                                         ; $4d1d: $a2
    ret nc                                        ; $4d1e: $d0

    push de                                       ; $4d1f: $d5
    ld [$1e7f], a                                 ; $4d20: $ea $7f $1e
    set 7, l                                      ; $4d23: $cb $fd
    ld [bc], a                                    ; $4d25: $02
    add a                                         ; $4d26: $87
    sbc d                                         ; $4d27: $9a
    db $eb                                        ; $4d28: $eb
    rra                                           ; $4d29: $1f
    rla                                           ; $4d2a: $17
    ld [$4a62], a                                 ; $4d2b: $ea $62 $4a
    ld a, d                                       ; $4d2e: $7a
    or c                                          ; $4d2f: $b1
    ld b, l                                       ; $4d30: $45
    sbc h                                         ; $4d31: $9c
    jp c, $d75f                                   ; $4d32: $da $5f $d7

    pop bc                                        ; $4d35: $c1
    ld a, [de]                                    ; $4d36: $1a
    ld a, d                                       ; $4d37: $7a
    and d                                         ; $4d38: $a2
    ld b, a                                       ; $4d39: $47
    cp $d8                                        ; $4d3a: $fe $d8
    adc e                                         ; $4d3c: $8b
    sbc d                                         ; $4d3d: $9a
    and $45                                       ; $4d3e: $e6 $45
    db $dd                                        ; $4d40: $dd
    jp hl                                         ; $4d41: $e9


    xor c                                         ; $4d42: $a9
    ret nc                                        ; $4d43: $d0

    cp e                                          ; $4d44: $bb
    dec bc                                        ; $4d45: $0b
    cp b                                          ; $4d46: $b8
    dec d                                         ; $4d47: $15
    ld b, b                                       ; $4d48: $40
    ld a, b                                       ; $4d49: $78
    ld d, c                                       ; $4d4a: $51
    ret z                                         ; $4d4b: $c8

    and c                                         ; $4d4c: $a1
    sbc c                                         ; $4d4d: $99
    or [hl]                                       ; $4d4e: $b6
    xor d                                         ; $4d4f: $aa
    ld de, $d1d7                                  ; $4d50: $11 $d7 $d1
    ld e, l                                       ; $4d53: $5d
    xor $17                                       ; $4d54: $ee $17
    rlca                                          ; $4d56: $07
    ld e, h                                       ; $4d57: $5c
    ld b, [hl]                                    ; $4d58: $46
    cp $9c                                        ; $4d59: $fe $9c
    ld h, l                                       ; $4d5b: $65
    add b                                         ; $4d5c: $80
    sbc $7d                                       ; $4d5d: $de $7d
    rst $18                                       ; $4d5f: $df
    adc e                                         ; $4d60: $8b
    ld h, c                                       ; $4d61: $61
    dec c                                         ; $4d62: $0d
    dec a                                         ; $4d63: $3d
    pop de                                        ; $4d64: $d1

jr_063_4d65:
    dec hl                                        ; $4d65: $2b
    call $7189                                    ; $4d66: $cd $89 $71
    and c                                         ; $4d69: $a1
    xor h                                         ; $4d6a: $ac
    jp z, $ca57                                   ; $4d6b: $ca $57 $ca

    ld a, e                                       ; $4d6e: $7b
    adc h                                         ; $4d6f: $8c
    ld l, e                                       ; $4d70: $6b
    rst $38                                       ; $4d71: $ff
    dec h                                         ; $4d72: $25
    ld bc, $b5ef                                  ; $4d73: $01 $ef $b5
    ld a, a                                       ; $4d76: $7f
    add hl, de                                    ; $4d77: $19
    rst $38                                       ; $4d78: $ff
    ld [c], a                                     ; $4d79: $e2
    ld e, h                                       ; $4d7a: $5c
    add l                                         ; $4d7b: $85
    or d                                          ; $4d7c: $b2
    rra                                           ; $4d7d: $1f
    dec c                                         ; $4d7e: $0d
    dec [hl]                                      ; $4d7f: $35
    cp c                                          ; $4d80: $b9
    ld d, b                                       ; $4d81: $50
    ld d, $1b                                     ; $4d82: $16 $1b
    rst $30                                       ; $4d84: $f7
    dec sp                                        ; $4d85: $3b
    cpl                                           ; $4d86: $2f
    inc a                                         ; $4d87: $3c
    ld b, e                                       ; $4d88: $43
    ccf                                           ; $4d89: $3f
    rst $30                                       ; $4d8a: $f7
    ld c, $36                                     ; $4d8b: $0e $36
    xor e                                         ; $4d8d: $ab
    ld a, [c]                                     ; $4d8e: $f2
    ld h, d                                       ; $4d8f: $62
    db $e3                                        ; $4d90: $e3
    ret z                                         ; $4d91: $c8

    cpl                                           ; $4d92: $2f

jr_063_4d93:
    sub e                                         ; $4d93: $93
    ld d, b                                       ; $4d94: $50
    call z, $cf0b                                 ; $4d95: $cc $0b $cf
    ld c, b                                       ; $4d98: $48
    ld e, l                                       ; $4d99: $5d
    ret nc                                        ; $4d9a: $d0

    or d                                          ; $4d9b: $b2
    rst $00                                       ; $4d9c: $c7
    jr c, jr_063_4d93                             ; $4d9d: $38 $f4

    jr c, jr_063_4dde                             ; $4d9f: $38 $3d

    ld [hl-], a                                   ; $4da1: $32
    call nz, $e746                                ; $4da2: $c4 $46 $e7
    db $fd                                        ; $4da5: $fd
    ld [bc], a                                    ; $4da6: $02
    ld l, l                                       ; $4da7: $6d
    and $91                                       ; $4da8: $e6 $91
    ccf                                           ; $4daa: $3f
    ld b, [hl]                                    ; $4dab: $46
    adc a                                         ; $4dac: $8f
    xor $b2                                       ; $4dad: $ee $b2
    jp c, Jump_000_03cd                           ; $4daf: $da $cd $03

    and l                                         ; $4db2: $a5
    inc a                                         ; $4db3: $3c
    and [hl]                                      ; $4db4: $a6
    adc b                                         ; $4db5: $88
    ld [c], a                                     ; $4db6: $e2
    or l                                          ; $4db7: $b5
    sbc d                                         ; $4db8: $9a
    rst $30                                       ; $4db9: $f7
    jp c, $a863                                   ; $4dba: $da $63 $a8

    inc bc                                        ; $4dbd: $03
    and l                                         ; $4dbe: $a5
    inc a                                         ; $4dbf: $3c
    ld a, [c]                                     ; $4dc0: $f2
    bit 7, [hl]                                   ; $4dc1: $cb $7e
    rst $28                                       ; $4dc3: $ef
    ld c, [hl]                                    ; $4dc4: $4e
    and e                                         ; $4dc5: $a3
    rla                                           ; $4dc6: $17
    dec de                                        ; $4dc7: $1b

jr_063_4dc8:
    daa                                           ; $4dc8: $27
    and c                                         ; $4dc9: $a1
    sbc b                                         ; $4dca: $98
    ld l, c                                       ; $4dcb: $69
    ld h, e                                       ; $4dcc: $63
    ld l, d                                       ; $4dcd: $6a
    adc [hl]                                      ; $4dce: $8e
    xor $b2                                       ; $4dcf: $ee $b2
    sbc b                                         ; $4dd1: $98
    add d                                         ; $4dd2: $82
    add sp, -$4b                                  ; $4dd3: $e8 $b5
    sbc d                                         ; $4dd5: $9a
    ei                                            ; $4dd6: $fb
    inc a                                         ; $4dd7: $3c
    ld a, [c]                                     ; $4dd8: $f2
    res 2, h                                      ; $4dd9: $cb $94
    ld l, $e2                                     ; $4ddb: $2e $e2
    ld b, l                                       ; $4ddd: $45

jr_063_4dde:
    jr nz, jr_063_4dc8                            ; $4dde: $20 $e8

    jp hl                                         ; $4de0: $e9


    cp b                                          ; $4de1: $b8
    rra                                           ; $4de2: $1f
    dec c                                         ; $4de3: $0d
    call $2ef7                                    ; $4de4: $cd $f7 $2e
    ei                                            ; $4de7: $fb
    cp b                                          ; $4de8: $b8
    ld d, b                                       ; $4de9: $50
    and a                                         ; $4dea: $a7
    jp nz, $78f3                                  ; $4deb: $c2 $f3 $78

    ccf                                           ; $4dee: $3f
    ld e, d                                       ; $4def: $5a
    ld h, l                                       ; $4df0: $65
    db $e3                                        ; $4df1: $e3
    db $fd                                        ; $4df2: $fd
    ld [bc], a                                    ; $4df3: $02
    rla                                           ; $4df4: $17
    add l                                         ; $4df5: $85
    ld l, h                                       ; $4df6: $6c
    db $fc                                        ; $4df7: $fc
    xor d                                         ; $4df8: $aa
    adc h                                         ; $4df9: $8c
    sbc [hl]                                      ; $4dfa: $9e

jr_063_4dfb:
    ld c, d                                       ; $4dfb: $4a
    ld a, [bc]                                    ; $4dfc: $0a
    ld l, l                                       ; $4dfd: $6d
    ld c, h                                       ; $4dfe: $4c
    ld de, $cfb5                                  ; $4dff: $11 $b5 $cf
    ld l, e                                       ; $4e02: $6b
    nop                                           ; $4e03: $00
    ld a, d                                       ; $4e04: $7a
    rrca                                          ; $4e05: $0f
    sub h                                         ; $4e06: $94
    push de                                       ; $4e07: $d5
    ld h, $7e                                     ; $4e08: $26 $7e
    cp c                                          ; $4e0a: $b9
    rst $10                                       ; $4e0b: $d7
    ld e, $87                                     ; $4e0c: $1e $87
    call nz, $ab2f                                ; $4e0e: $c4 $2f $ab
    ld [$3df7], a                                 ; $4e11: $ea $f7 $3d
    ld e, a                                       ; $4e14: $5f
    and [hl]                                      ; $4e15: $a6
    ld [hl], h                                    ; $4e16: $74
    ld de, $0c8f                                  ; $4e17: $11 $8f $0c
    dec e                                         ; $4e1a: $1d
    dec a                                         ; $4e1b: $3d
    ld a, [hl+]                                   ; $4e1c: $2a
    db $dd                                        ; $4e1d: $dd
    ld a, e                                       ; $4e1e: $7b
    adc h                                         ; $4e1f: $8c
    ei                                            ; $4e20: $fb
    cp l                                          ; $4e21: $bd
    ld a, e                                       ; $4e22: $7b
    sbc h                                         ; $4e23: $9c
    ld e, $19                                     ; $4e24: $1e $19
    ld h, d                                       ; $4e26: $62
    and e                                         ; $4e27: $a3
    ld [hl], e                                    ; $4e28: $73
    xor l                                         ; $4e29: $ad
    and $2c                                       ; $4e2a: $e6 $2c
    dec hl                                        ; $4e2c: $2b
    ld e, a                                       ; $4e2d: $5f
    jp z, $2f39                                   ; $4e2e: $ca $39 $2f

    rst $10                                       ; $4e31: $d7
    ld a, [bc]                                    ; $4e32: $0a
    ld d, [hl]                                    ; $4e33: $56
    and l                                         ; $4e34: $a5
    jp hl                                         ; $4e35: $e9


    cp b                                          ; $4e36: $b8
    rlca                                          ; $4e37: $07
    ld a, [bc]                                    ; $4e38: $0a
    ld l, l                                       ; $4e39: $6d
    adc $a1                                       ; $4e3a: $ce $a1
    ld [hl], e                                    ; $4e3c: $73
    ld [de], a                                    ; $4e3d: $12
    adc d                                         ; $4e3e: $8a
    ld a, c                                       ; $4e3f: $79
    or b                                          ; $4e40: $b0
    ret c                                         ; $4e41: $d8

    ld [hl], h                                    ; $4e42: $74
    srl c                                         ; $4e43: $cb $39
    ld l, e                                       ; $4e45: $6b
    db $d3                                        ; $4e46: $d3
    ld b, a                                       ; $4e47: $47
    cp $ce                                        ; $4e48: $fe $ce
    adc $fb                                       ; $4e4a: $ce $fb
    dec b                                         ; $4e4c: $05
    rst $10                                       ; $4e4d: $d7
    ld h, d                                       ; $4e4e: $62
    ld l, l                                       ; $4e4f: $6d
    ld b, c                                       ; $4e50: $41
    db $10                                        ; $4e51: $10
    and a                                         ; $4e52: $a7
    ld [hl], e                                    ; $4e53: $73
    xor b                                         ; $4e54: $a8

jr_063_4e55:
    rst $28                                       ; $4e55: $ef
    add c                                         ; $4e56: $81
    ld b, d                                       ; $4e57: $42
    ld e, e                                       ; $4e58: $5b
    ei                                            ; $4e59: $fb
    rst $08                                       ; $4e5a: $cf
    call nc, $caec                                ; $4e5b: $d4 $ec $ca
    ret nz                                        ; $4e5e: $c0

    db $ec                                        ; $4e5f: $ec
    inc a                                         ; $4e60: $3c
    ld h, a                                       ; $4e61: $67
    rlca                                          ; $4e62: $07
    sbc e                                         ; $4e63: $9b
    ld d, l                                       ; $4e64: $55
    ld a, c                                       ; $4e65: $79
    dec c                                         ; $4e66: $0d
    dec a                                         ; $4e67: $3d
    pop de                                        ; $4e68: $d1
    ld b, e                                       ; $4e69: $43
    ld a, l                                       ; $4e6a: $7d
    dec c                                         ; $4e6b: $0d
    ld d, a                                       ; $4e6c: $57
    ld b, l                                       ; $4e6d: $45
    adc c                                         ; $4e6e: $89
    jr jr_063_4dfb                                ; $4e6f: $18 $8a

    add a                                         ; $4e71: $87
    ld d, b                                       ; $4e72: $50
    or $38                                        ; $4e73: $f6 $38
    cp l                                          ; $4e75: $bd
    rst $00                                       ; $4e76: $c7
    jr c, @+$06                                   ; $4e77: $38 $04

    pop af                                        ; $4e79: $f1
    ld a, [hl+]                                   ; $4e7a: $2a
    db $eb                                        ; $4e7b: $eb
    ld [$85ce], sp                                ; $4e7c: $08 $ce $85
    or d                                          ; $4e7f: $b2
    rlca                                          ; $4e80: $07
    inc b                                         ; $4e81: $04
    db $d3                                        ; $4e82: $d3
    ld a, e                                       ; $4e83: $7b
    adc h                                         ; $4e84: $8c
    ld h, e                                       ; $4e85: $63
    sub b                                         ; $4e86: $90
    ld [hl-], a                                   ; $4e87: $32
    ld [hl], h                                    ; $4e88: $74
    ld c, $94                                     ; $4e89: $0e $94
    ld a, [c]                                     ; $4e8b: $f2
    cp [hl]                                       ; $4e8c: $be
    sub h                                         ; $4e8d: $94
    ld h, [hl]                                    ; $4e8e: $66
    ld c, $a1                                     ; $4e8f: $0e $a1
    call c, $d72f                                 ; $4e91: $dc $2f $d7
    and h                                         ; $4e94: $a4
    ld b, a                                       ; $4e95: $47
    add [hl]                                      ; $4e96: $86
    ret c                                         ; $4e97: $d8

    add sp, $3c                                   ; $4e98: $e8 $3c
    ld h, a                                       ; $4e9a: $67
    db $ed                                        ; $4e9b: $ed
    ld e, a                                       ; $4e9c: $5f
    sub $4a                                       ; $4e9d: $d6 $4a
    ld l, d                                       ; $4e9f: $6a
    ld l, h                                       ; $4ea0: $6c
    db $f4                                        ; $4ea1: $f4
    ld a, $4f                                     ; $4ea2: $3e $4f
    add l                                         ; $4ea4: $85
    rst $20                                       ; $4ea5: $e7
    pop af                                        ; $4ea6: $f1
    and d                                         ; $4ea7: $a2
    sub b                                         ; $4ea8: $90
    dec c                                         ; $4ea9: $0d
    jr jr_063_4e55                                ; $4eaa: $18 $a9

    dec bc                                        ; $4eac: $0b
    ld e, d                                       ; $4ead: $5a
    or $18                                        ; $4eae: $f6 $18
    add a                                         ; $4eb0: $87
    ld e, $a7                                     ; $4eb1: $1e $a7
    ld b, a                                       ; $4eb3: $47
    add [hl]                                      ; $4eb4: $86
    ret c                                         ; $4eb5: $d8

    add sp, $1c                                   ; $4eb6: $e8 $1c
    ld b, e                                       ; $4eb8: $43
    rst $18                                       ; $4eb9: $df
    rst $28                                       ; $4eba: $ef
    db $dd                                        ; $4ebb: $dd
    and h                                         ; $4ebc: $a4
    ld a, e                                       ; $4ebd: $7b

jr_063_4ebe:
    or c                                          ; $4ebe: $b1
    ld l, b                                       ; $4ebf: $68
    rst $18                                       ; $4ec0: $df
    dec d                                         ; $4ec1: $15
    ld h, l                                       ; $4ec2: $65
    ld [hl], h                                    ; $4ec3: $74
    sub a                                         ; $4ec4: $97
    ld sp, $1735                                  ; $4ec5: $31 $35 $17
    ld d, e                                       ; $4ec8: $53
    db $10                                        ; $4ec9: $10
    cp l                                          ; $4eca: $bd
    ld d, [hl]                                    ; $4ecb: $56
    ld [hl], e                                    ; $4ecc: $73
    sbc a                                         ; $4ecd: $9f
    ld b, a                                       ; $4ece: $47
    ld a, [hl]                                    ; $4ecf: $7e
    ld e, c                                       ; $4ed0: $59
    rst $10                                       ; $4ed1: $d7
    sub l                                         ; $4ed2: $95
    ld [hl-], a                                   ; $4ed3: $32
    ld a, d                                       ; $4ed4: $7a
    sbc h                                         ; $4ed5: $9c
    and c                                         ; $4ed6: $a1
    and e                                         ; $4ed7: $a3
    ld h, l                                       ; $4ed8: $65
    jr nz, @-$46                                  ; $4ed9: $20 $b8

    ld a, [de]                                    ; $4edb: $1a
    sbc [hl]                                      ; $4edc: $9e
    ld e, c                                       ; $4edd: $59
    or $a3                                        ; $4ede: $f6 $a3
    ld l, [hl]                                    ; $4ee0: $6e
    inc d                                         ; $4ee1: $14
    sub b                                         ; $4ee2: $90
    ld d, d                                       ; $4ee3: $52
    sbc a                                         ; $4ee4: $9f
    cpl                                           ; $4ee5: $2f
    call nc, $ad38                                ; $4ee6: $d4 $38 $ad
    ld a, l                                       ; $4ee9: $7d
    sub a                                         ; $4eea: $97
    ld a, l                                       ; $4eeb: $7d
    ld e, h                                       ; $4eec: $5c
    xor b                                         ; $4eed: $a8
    xor e                                         ; $4eee: $ab
    sbc $e7                                       ; $4eef: $de $e7
    xor c                                         ; $4ef1: $a9
    ldh a, [$3c]                                  ; $4ef2: $f0 $3c
    sbc [hl]                                      ; $4ef4: $9e
    jr jr_063_4ebe                                ; $4ef5: $18 $c7

    ret nc                                        ; $4ef7: $d0

    rst $10                                       ; $4ef8: $d7
    cp $4b                                        ; $4ef9: $fe $4b
    ld [bc], a                                    ; $4efb: $02
    ld l, d                                       ; $4efc: $6a
    ld a, a                                       ; $4efd: $7f
    ld bc, $bfed                                  ; $4efe: $01 $ed $bf
    ld [hl], a                                    ; $4f01: $77
    ld a, [hl+]                                   ; $4f02: $2a
    cp l                                          ; $4f03: $bd
    ld a, [hl]                                    ; $4f04: $7e
    db $ed                                        ; $4f05: $ed
    dec sp                                        ; $4f06: $3b
    ldh [$b2], a                                  ; $4f07: $e0 $b2
    ret c                                         ; $4f09: $d8

    jp nz, Jump_000_0f46                          ; $4f0a: $c2 $46 $0f

    call nc, $fb91                                ; $4f0d: $d4 $91 $fb
    cp h                                          ; $4f10: $bc
    xor b                                         ; $4f11: $a8
    cp c                                          ; $4f12: $b9
    add [hl]                                      ; $4f13: $86
    dec hl                                        ; $4f14: $2b
    or l                                          ; $4f15: $b5
    db $ec                                        ; $4f16: $ec
    ld b, a                                       ; $4f17: $47
    and e                                         ; $4f18: $a3

jr_063_4f19:
    dec sp                                        ; $4f19: $3b
    rlca                                          ; $4f1a: $07
    jp $ee5f                                      ; $4f1b: $c3 $5f $ee


    rla                                           ; $4f1e: $17
    add a                                         ; $4f1f: $87
    db $e4                                        ; $4f20: $e4
    or a                                          ; $4f21: $b7
    cp h                                          ; $4f22: $bc
    ld d, [hl]                                    ; $4f23: $56
    ld d, d                                       ; $4f24: $52
    ld h, e                                       ; $4f25: $63
    and e                                         ; $4f26: $a3
    rst $30                                       ; $4f27: $f7
    ld a, c                                       ; $4f28: $79
    ld a, [hl+]                                   ; $4f29: $2a
    inc a                                         ; $4f2a: $3c

jr_063_4f2b:
    adc a                                         ; $4f2b: $8f
    rla                                           ; $4f2c: $17
    add l                                         ; $4f2d: $85
    ld l, h                                       ; $4f2e: $6c
    ret nz                                        ; $4f2f: $c0

    ld c, b                                       ; $4f30: $48
    ld e, l                                       ; $4f31: $5d
    ret nc                                        ; $4f32: $d0

    or d                                          ; $4f33: $b2
    rst $00                                       ; $4f34: $c7
    jr c, jr_063_4f2b                             ; $4f35: $38 $f4

    jr c, jr_063_4f76                             ; $4f37: $38 $3d

    ld [hl-], a                                   ; $4f39: $32
    call nz, $e746                                ; $4f3a: $c4 $46 $e7
    ld h, b                                       ; $4f3d: $60
    ld l, b                                       ; $4f3e: $68
    ld e, c                                       ; $4f3f: $59
    inc d                                         ; $4f40: $14
    or d                                          ; $4f41: $b2
    and c                                         ; $4f42: $a1
    inc hl                                        ; $4f43: $23
    ld a, e                                       ; $4f44: $7b
    ld a, [hl+]                                   ; $4f45: $2a
    ld h, h                                       ; $4f46: $64
    ld [bc], a                                    ; $4f47: $02
    add [hl]                                      ; $4f48: $86
    cp h                                          ; $4f49: $bc
    rst $10                                       ; $4f4a: $d7
    ld h, [hl]                                    ; $4f4b: $66
    ld e, c                                       ; $4f4c: $59
    jp $f238                                      ; $4f4d: $c3 $38 $f2


    ccf                                           ; $4f50: $3f
    rst $30                                       ; $4f51: $f7
    xor [hl]                                      ; $4f52: $ae
    add e                                         ; $4f53: $83
    ld [hl], c                                    ; $4f54: $71
    add [hl]                                      ; $4f55: $86
    call c, $91e7                                 ; $4f56: $dc $e7 $91
    ld e, a                                       ; $4f59: $5f
    sub $4a                                       ; $4f5a: $d6 $4a
    ld l, d                                       ; $4f5c: $6a
    ld l, h                                       ; $4f5d: $6c
    db $f4                                        ; $4f5e: $f4
    ld a, $af                                     ; $4f5f: $3e $af
    ld [hl-], a                                   ; $4f61: $32
    sbc l                                         ; $4f62: $9d
    jp nc, Jump_000_323d                          ; $4f63: $d2 $3d $32

    cp $38                                        ; $4f66: $fe $38
    inc [hl]                                      ; $4f68: $34
    rst $08                                       ; $4f69: $cf
    add hl, sp                                    ; $4f6a: $39
    or h                                          ; $4f6b: $b4
    xor h                                         ; $4f6c: $ac
    pop hl                                        ; $4f6d: $e1
    jr c, jr_063_4f84                             ; $4f6e: $38 $14

    halt                                          ; $4f70: $76
    sbc $2f                                       ; $4f71: $de $2f
    db $ed                                        ; $4f73: $ed
    ld [hl], c                                    ; $4f74: $71
    ld c, b                                       ; $4f75: $48

jr_063_4f76:
    db $fc                                        ; $4f76: $fc
    ld [hl-], a                                   ; $4f77: $32
    push af                                       ; $4f78: $f5
    adc a                                         ; $4f79: $8f
    call c, $8b25                                 ; $4f7a: $dc $25 $8b
    ld bc, $093d                                  ; $4f7d: $01 $3d $09
    ld b, a                                       ; $4f80: $47
    sbc d                                         ; $4f81: $9a
    rla                                           ; $4f82: $17
    sbc [hl]                                      ; $4f83: $9e

jr_063_4f84:
    ld e, l                                       ; $4f84: $5d
    call nc, Call_000_28f5                        ; $4f85: $d4 $f5 $28
    jp nc, $f6d0                                  ; $4f88: $d2 $d0 $f6

    add b                                         ; $4f8b: $80
    adc h                                         ; $4f8c: $8c
    call nc, $f705                                ; $4f8d: $d4 $05 $f7
    jr jr_063_4f19                                ; $4f90: $18 $87

    ld e, $a7                                     ; $4f92: $1e $a7
    ld b, a                                       ; $4f94: $47
    add [hl]                                      ; $4f95: $86
    inc hl                                        ; $4f96: $23
    pop de                                        ; $4f97: $d1
    ld a, c                                       ; $4f98: $79
    adc $0e                                       ; $4f99: $ce $0e
    cp b                                          ; $4f9b: $b8
    ld c, h                                       ; $4f9c: $4c
    ld d, c                                       ; $4f9d: $51
    dec de                                        ; $4f9e: $1b
    db $ec                                        ; $4f9f: $ec
    sub c                                         ; $4fa0: $91
    rst $38                                       ; $4fa1: $ff
    reti                                          ; $4fa2: $d9


    adc a                                         ; $4fa3: $8f
    ld h, [hl]                                    ; $4fa4: $66
    ld e, c                                       ; $4fa5: $59
    ld c, c                                       ; $4fa6: $49
    ld c, d                                       ; $4fa7: $4a
    ld d, l                                       ; $4fa8: $55
    adc e                                         ; $4fa9: $8b
    inc [hl]                                      ; $4faa: $34
    cp c                                          ; $4fab: $b9
    ld a, [bc]                                    ; $4fac: $0a
    ld e, b                                       ; $4fad: $58
    reti                                          ; $4fae: $d9


    ld l, e                                       ; $4faf: $6b
    and $42                                       ; $4fb0: $e6 $42
    ld e, c                                       ; $4fb2: $59
    ld l, a                                       ; $4fb3: $6f
    ld a, [bc]                                    ; $4fb4: $0a
    ld a, e                                       ; $4fb5: $7b
    db $e4                                        ; $4fb6: $e4
    ld a, a                                       ; $4fb7: $7f
    add $d0                                       ; $4fb8: $c6 $d0
    rst $10                                       ; $4fba: $d7
    and [hl]                                      ; $4fbb: $a6
    ccf                                           ; $4fbc: $3f
    adc l                                         ; $4fbd: $8d
    ld l, [hl]                                    ; $4fbe: $6e
    inc c                                         ; $4fbf: $0c
    jp hl                                         ; $4fc0: $e9


    push de                                       ; $4fc1: $d5
    and $c8                                       ; $4fc2: $e6 $c8
    cpl                                           ; $4fc4: $2f
    ld d, e                                       ; $4fc5: $53
    rst $38                                       ; $4fc6: $ff
    ret z                                         ; $4fc7: $c8

    dec [hl]                                      ; $4fc8: $35
    inc e                                         ; $4fc9: $1c
    add a                                         ; $4fca: $87
    jp nz, Jump_063_7dde                          ; $4fcb: $c2 $de $7d

    rst $18                                       ; $4fce: $df
    and e                                         ; $4fcf: $a3
    sub d                                         ; $4fd0: $92
    cp e                                          ; $4fd1: $bb
    rst $28                                       ; $4fd2: $ef
    ld a, e                                       ; $4fd3: $7b

jr_063_4fd4:
    jp nc, Jump_000_0da4                          ; $4fd4: $d2 $a4 $0d

    call $ff53                                    ; $4fd7: $cd $53 $ff
    ret z                                         ; $4fda: $c8

    push bc                                       ; $4fdb: $c5
    sub h                                         ; $4fdc: $94
    db $f4                                        ; $4fdd: $f4
    ld a, [hl-]                                   ; $4fde: $3a
    inc d                                         ; $4fdf: $14
    ccf                                           ; $4fe0: $3f
    ld l, $e6                                     ; $4fe1: $2e $e6
    ei                                            ; $4fe3: $fb
    dec b                                         ; $4fe4: $05
    rst $20                                       ; $4fe5: $e7
    dec sp                                        ; $4fe6: $3b
    ld c, $85                                     ; $4fe7: $0e $85
    dec a                                         ; $4fe9: $3d
    ld [hl-], a                                   ; $4fea: $32
    cp $78                                        ; $4feb: $fe $78
    adc $0b                                       ; $4fed: $ce $0b
    db $ed                                        ; $4fef: $ed
    call nc, $e89c                                ; $4ff0: $d4 $9c $e8
    inc hl                                        ; $4ff3: $23
    sbc l                                         ; $4ff4: $9d
    or h                                          ; $4ff5: $b4
    ld e, l                                       ; $4ff6: $5d
    or d                                          ; $4ff7: $b2
    ld b, [hl]                                    ; $4ff8: $46
    rst $38                                       ; $4ff9: $ff
    add d                                         ; $4ffa: $82
    adc $d1                                       ; $4ffb: $ce $d1
    sbc l                                         ; $4ffd: $9d
    add e                                         ; $4ffe: $83
    ld c, c                                       ; $4fff: $49
    jr c, jr_063_4fd4                             ; $5000: $38 $d2

    cp h                                          ; $5002: $bc
    ld a, [de]                                    ; $5003: $1a
    sbc [hl]                                      ; $5004: $9e
    add c                                         ; $5005: $81
    ld d, d                                       ; $5006: $52
    ld e, [hl]                                    ; $5007: $5e
    ld l, h                                       ; $5008: $6c
    ld d, h                                       ; $5009: $54
    pop hl                                        ; $500a: $e1
    ld a, c                                       ; $500b: $79
    sbc h                                         ; $500c: $9c
    and e                                         ; $500d: $a3
    dec sp                                        ; $500e: $3b
    rst $28                                       ; $500f: $ef
    ld e, l                                       ; $5010: $5d
    call c, $0cfd                                 ; $5011: $dc $fd $0c
    dec l                                         ; $5014: $2d
    inc hl                                        ; $5015: $23
    ld [hl], l                                    ; $5016: $75
    pop bc                                        ; $5017: $c1
    add l                                         ; $5018: $85
    ld [hl-], a                                   ; $5019: $32
    ld [hl-], a                                   ; $501a: $32
    cp $47                                        ; $501b: $fe $47
    ld c, $2d                                     ; $501d: $0e $2d
    ld l, e                                       ; $501f: $6b
    jr c, jr_063_5030                             ; $5020: $38 $0e

    add l                                         ; $5022: $85
    sbc l                                         ; $5023: $9d
    cp e                                          ; $5024: $bb
    rst $28                                       ; $5025: $ef
    ld a, e                                       ; $5026: $7b
    ld l, b                                       ; $5027: $68
    sbc [hl]                                      ; $5028: $9e
    ld [hl], e                                    ; $5029: $73
    sub [hl]                                      ; $502a: $96
    push de                                       ; $502b: $d5
    ld e, a                                       ; $502c: $5f
    or $b8                                        ; $502d: $f6 $b8
    ld [hl], a                                    ; $502f: $77

jr_063_5030:
    ccf                                           ; $5030: $3f
    ld l, e                                       ; $5031: $6b
    db $d3                                        ; $5032: $d3
    sbc a                                         ; $5033: $9f
    ld b, [hl]                                    ; $5034: $46
    scf                                           ; $5035: $37
    add [hl]                                      ; $5036: $86
    db $f4                                        ; $5037: $f4
    ld b, d                                       ; $5038: $42

Call_063_5039:
    reti                                          ; $5039: $d9


    push hl                                       ; $503a: $e5
    ld b, b                                       ; $503b: $40
    sub h                                         ; $503c: $94
    inc c                                         ; $503d: $0c
    db $fd                                        ; $503e: $fd
    rst $10                                       ; $503f: $d7
    ld e, l                                       ; $5040: $5d
    call nc, $e3ff                                ; $5041: $d4 $ff $e3
    ld a, [hl]                                    ; $5044: $7e
    cp a                                          ; $5045: $bf
    add a                                         ; $5046: $87
    sbc d                                         ; $5047: $9a
    ld b, e                                       ; $5048: $43
    rst $20                                       ; $5049: $e7
    sbc h                                         ; $504a: $9c
    ei                                            ; $504b: $fb
    sbc l                                         ; $504c: $9d
    ld l, e                                       ; $504d: $6b
    ld [hl], e                                    ; $504e: $73
    sub [hl]                                      ; $504f: $96
    push bc                                       ; $5050: $c5
    add $c9                                       ; $5051: $c6 $c9
    adc a                                         ; $5053: $8f
    ld h, l                                       ; $5054: $65
    sub a                                         ; $5055: $97
    inc bc                                        ; $5056: $03
    pop de                                        ; $5057: $d1
    ret nc                                        ; $5058: $d0

    ld a, a                                       ; $5059: $7f
    db $dd                                        ; $505a: $dd
    ld b, l                                       ; $505b: $45
    db $fd                                        ; $505c: $fd
    ccf                                           ; $505d: $3f
    xor $03                                       ; $505e: $ee $03
    adc c                                         ; $5060: $89
    ld b, e                                       ; $5061: $43
    adc a                                         ; $5062: $8f
    sbc l                                         ; $5063: $9d
    and $fb                                       ; $5064: $e6 $fb
    dec b                                         ; $5066: $05
    rlca                                          ; $5067: $07
    ld b, c                                       ; $5068: $41
    or $e8                                        ; $5069: $f6 $e8
    add d                                         ; $506b: $82
    ld [hl], e                                    ; $506c: $73
    xor [hl]                                      ; $506d: $ae
    db $eb                                        ; $506e: $eb
    ld c, d                                       ; $506f: $4a
    sbc c                                         ; $5070: $99
    rst $30                                       ; $5071: $f7
    jr jr_063_50cb                                ; $5072: $18 $57

    dec [hl]                                      ; $5074: $35
    pop af                                        ; $5075: $f1
    xor d                                         ; $5076: $aa
    ld c, e                                       ; $5077: $4b
    rst $10                                       ; $5078: $d7
    cp $02                                        ; $5079: $fe $02
    rst $10                                       ; $507b: $d7
    pop bc                                        ; $507c: $c1
    sbc [hl]                                      ; $507d: $9e
    and $aa                                       ; $507e: $e6 $aa
    jp nc, Jump_063_7a08                          ; $5080: $d2 $08 $7a

    and c                                         ; $5083: $a1
    xor $f3                                       ; $5084: $ee $f3
    ld [hl+], a                                   ; $5086: $22
    db $10                                        ; $5087: $10
    db $f4                                        ; $5088: $f4
    jp c, Jump_000_0f9d                           ; $5089: $da $9d $0f

    inc b                                         ; $508c: $04
    ld sp, $ed6d                                  ; $508d: $31 $6d $ed
    ccf                                           ; $5090: $3f
    ld d, e                                       ; $5091: $53
    ld [hl], e                                    ; $5092: $73

Call_063_5093:
    rst $28                                       ; $5093: $ef
    ld a, [hl-]                                   ; $5094: $3a
    ld e, b                                       ; $5095: $58
    ld l, h                                       ; $5096: $6c
    call c, $91e7                                 ; $5097: $dc $e7 $91
    cp d                                          ; $509a: $ba
    call z, $f339                                 ; $509b: $cc $39 $f3
    ld a, [hl+]                                   ; $509e: $2a
    dec de                                        ; $509f: $1b
    rst $10                                       ; $50a0: $d7
    ld l, d                                       ; $50a1: $6a
    ld l, $a2                                     ; $50a2: $2e $a2
    ld h, [hl]                                    ; $50a4: $66
    ld h, l                                       ; $50a5: $65
    xor a                                         ; $50a6: $af
    cp $ae                                        ; $50a7: $fe $ae
    db $fd                                        ; $50a9: $fd
    dec b                                         ; $50aa: $05
    db $ed                                        ; $50ab: $ed
    ld a, c                                       ; $50ac: $79
    rst $28                                       ; $50ad: $ef
    ld [hl+], a                                   ; $50ae: $22
    add sp, $44                                   ; $50af: $e8 $44
    ret                                           ; $50b1: $c9


    add l                                         ; $50b2: $85
    ld d, $fe                                     ; $50b3: $16 $fe
    ld h, d                                       ; $50b5: $62
    db $f4                                        ; $50b6: $f4
    db $10                                        ; $50b7: $10
    jp z, $bf60                                   ; $50b8: $ca $60 $bf

    ld [hl], d                                    ; $50bb: $72
    ld b, $09                                     ; $50bc: $06 $09
    rrca                                          ; $50be: $0f
    ld [hl], b                                    ; $50bf: $70
    inc sp                                        ; $50c0: $33
    push bc                                       ; $50c1: $c5
    xor h                                         ; $50c2: $ac
    db $fd                                        ; $50c3: $fd
    dec b                                         ; $50c4: $05
    db $ed                                        ; $50c5: $ed
    ccf                                           ; $50c6: $3f
    ld d, e                                       ; $50c7: $53
    and e                                         ; $50c8: $a3
    ld a, l                                       ; $50c9: $7d
    rlca                                          ; $50ca: $07

jr_063_50cb:
    ld e, h                                       ; $50cb: $5c
    sub $4a                                       ; $50cc: $d6 $4a
    ld l, d                                       ; $50ce: $6a
    ld l, h                                       ; $50cf: $6c

jr_063_50d0:
    db $f4                                        ; $50d0: $f4
    ld a, $ef                                     ; $50d1: $3e $ef
    ld h, e                                       ; $50d3: $63
    db $fc                                        ; $50d4: $fc
    db $d3                                        ; $50d5: $d3
    ld b, e                                       ; $50d6: $43
    jr z, jr_063_50d0                             ; $50d7: $28 $f7

    ld c, $fe                                     ; $50d9: $0e $fe
    ld e, $05                                     ; $50db: $1e $05
    call Call_000_2fea                            ; $50dd: $cd $ea $2f
    add sp, $7d                                   ; $50e0: $e8 $7d
    ld e, $ea                                     ; $50e2: $1e $ea
    inc hl                                        ; $50e4: $23
    ld a, a                                       ; $50e5: $7f
    adc h                                         ; $50e6: $8c
    sbc [hl]                                      ; $50e7: $9e
    ld h, l                                       ; $50e8: $65
    sbc b                                         ; $50e9: $98
    cp a                                          ; $50ea: $bf
    call c, $fdf7                                 ; $50eb: $dc $f7 $fd
    ld [bc], a                                    ; $50ee: $02
    add a                                         ; $50ef: $87
    ld c, b                                       ; $50f0: $48
    ld d, d                                       ; $50f1: $52
    ei                                            ; $50f2: $fb
    dec bc                                        ; $50f3: $0b
    ld l, l                                       ; $50f4: $6d
    ld a, [$90a2]                                 ; $50f5: $fa $a2 $90
    db $fc                                        ; $50f8: $fc
    dec sp                                        ; $50f9: $3b
    ld a, e                                       ; $50fa: $7b
    rlca                                          ; $50fb: $07
    ld a, a                                       ; $50fc: $7f
    adc a                                         ; $50fd: $8f
    add d                                         ; $50fe: $82
    ld h, [hl]                                    ; $50ff: $66
    sub [hl]                                      ; $5100: $96
    ld d, l                                       ; $5101: $55
    sub l                                         ; $5102: $95
    ld d, h                                       ; $5103: $54
    pop af                                        ; $5104: $f1
    jp nz, $cb33                                  ; $5105: $c2 $33 $cb

    jr nc, jr_063_5189                            ; $5108: $30 $7f

    pop af                                        ; $510a: $f1
    and d                                         ; $510b: $a2
    sub b                                         ; $510c: $90
    ei                                            ; $510d: $fb

Jump_063_510e:
    cp h                                          ; $510e: $bc
    ld e, $94                                     ; $510f: $1e $94
    ld a, [c]                                     ; $5111: $f2
    ret z                                         ; $5112: $c8

    rst $38                                       ; $5113: $ff
    ld c, h                                       ; $5114: $4c
    rst $00                                       ; $5115: $c7
    db $fd                                        ; $5116: $fd
    ld l, b                                       ; $5117: $68
    push de                                       ; $5118: $d5
    ld d, d                                       ; $5119: $52
    inc l                                         ; $511a: $2c
    xor e                                         ; $511b: $ab
    call $5f91                                    ; $511c: $cd $91 $5f

jr_063_511f:
    and [hl]                                      ; $511f: $a6
    ld [hl], h                                    ; $5120: $74
    ld de, $032f                                  ; $5121: $11 $2f $03
    ld a, d                                       ; $5124: $7a
    dec d                                         ; $5125: $15
    jp z, Jump_000_1c74                           ; $5126: $ca $74 $1c

    xor h                                         ; $5129: $ac
    sub l                                         ; $512a: $95
    and c                                         ; $512b: $a1
    pop de                                        ; $512c: $d1
    db $fd                                        ; $512d: $fd
    jr c, jr_063_511f                             ; $512e: $38 $ef

    dec e                                         ; $5130: $1d
    ld [hl], b                                    ; $5131: $70
    add hl, de                                    ; $5132: $19
    ld sp, hl                                     ; $5133: $f9
    ld [hl], e                                    ; $5134: $73
    cp a                                          ; $5135: $bf
    ld [hl], a                                    ; $5136: $77
    and a                                         ; $5137: $a7
    pop de                                        ; $5138: $d1
    adc e                                         ; $5139: $8b
    cp [hl]                                       ; $513a: $be
    inc d                                         ; $513b: $14
    di                                            ; $513c: $f3
    ret z                                         ; $513d: $c8

    rst $38                                       ; $513e: $ff
    call c, $dcbb                                 ; $513f: $dc $bb $dc
    ld sp, $eef4                                  ; $5142: $31 $f4 $ee
    ld [hl], c                                    ; $5145: $71
    ld b, $a3                                     ; $5146: $06 $a3
    rla                                           ; $5148: $17
    ld c, d                                       ; $5149: $4a
    ld l, l                                       ; $514a: $6d
    xor [hl]                                      ; $514b: $ae
    push de                                       ; $514c: $d5
    inc e                                         ; $514d: $1c
    ld e, d                                       ; $514e: $5a
    ld d, $ca                                     ; $514f: $16 $ca
    ld a, [bc]                                    ; $5151: $0a
    xor b                                         ; $5152: $a8
    add l                                         ; $5153: $85
    ld d, d                                       ; $5154: $52
    sbc e                                         ; $5155: $9b
    db $d3                                        ; $5156: $d3
    pop af                                        ; $5157: $f1
    ld a, [hl]                                    ; $5158: $7e
    ld bc, $2d07                                  ; $5159: $01 $07 $2d
    rst $30                                       ; $515c: $f7
    ld a, l                                       ; $515d: $7d
    cp a                                          ; $515e: $bf
    sub a                                         ; $515f: $97
    inc l                                         ; $5160: $2c
    ld l, d                                       ; $5161: $6a
    and $7e                                       ; $5162: $e6 $7e
    rst $28                                       ; $5164: $ef
    ld e, $a7                                     ; $5165: $1e $a7
    ld h, a                                       ; $5167: $67
    ld e, c                                       ; $5168: $59
    adc l                                         ; $5169: $8d
    adc l                                         ; $516a: $8d
    adc $85                                       ; $516b: $ce $85
    ld [hl-], a                                   ; $516d: $32
    ld [hl], h                                    ; $516e: $74

jr_063_516f:
    ld l, $86                                     ; $516f: $2e $86
    cp [hl]                                       ; $5171: $be
    ld b, [hl]                                    ; $5172: $46
    add a                                         ; $5173: $87
    ret c                                         ; $5174: $d8

    adc e                                         ; $5175: $8b
    ld a, [c]                                     ; $5176: $f2
    ld [hl], e                                    ; $5177: $73
    ld [$994a], a                                 ; $5178: $ea $4a $99
    ld [hl], a                                    ; $517b: $77
    ld [$6b09], a                                 ; $517c: $ea $09 $6b
    dec b                                         ; $517f: $05
    db $10                                        ; $5180: $10
    ld e, [hl]                                    ; $5181: $5e
    sub h                                         ; $5182: $94
    ld a, a                                       ; $5183: $7f
    rla                                           ; $5184: $17
    and a                                         ; $5185: $a7
    ld h, $8a                                     ; $5186: $26 $8a
    ld b, b                                       ; $5188: $40

jr_063_5189:
    jr nc, jr_063_516f                            ; $5189: $30 $e4

    xor $fb                                       ; $518b: $ee $fb
    sbc $a9                                       ; $518d: $de $a9
    daa                                           ; $518f: $27
    xor h                                         ; $5190: $ac
    dec d                                         ; $5191: $15
    ld b, b                                       ; $5192: $40
    ld a, b                                       ; $5193: $78
    ld d, c                                       ; $5194: $51
    cp $91                                        ; $5195: $fe $91
    or c                                          ; $5197: $b1
    ld d, e                                       ; $5198: $53
    ei                                            ; $5199: $fb
    dec bc                                        ; $519a: $0b
    and a                                         ; $519b: $a7
    sbc [hl]                                      ; $519c: $9e
    jr nc, jr_063_51d1                            ; $519d: $30 $32

    halt                                          ; $519f: $76
    ld l, d                                       ; $51a0: $6a
    ld a, a                                       ; $51a1: $7f
    ld bc, $9c07                                  ; $51a2: $01 $07 $9c
    xor [hl]                                      ; $51a5: $ae
    xor e                                         ; $51a6: $ab
    sbc h                                         ; $51a7: $9c
    ccf                                           ; $51a8: $3f
    ld e, d                                       ; $51a9: $5a
    jp Jump_000_2345                              ; $51aa: $c3 $45 $23


    add sp, -$64                                  ; $51ad: $e8 $9c
    ld [$2941], a                                 ; $51af: $ea $41 $29
    set 3, h                                      ; $51b2: $cb $dc
    cp e                                          ; $51b4: $bb
    ld h, e                                       ; $51b5: $63
    rrca                                          ; $51b6: $0f
    or $84                                        ; $51b7: $f6 $84
    inc l                                         ; $51b9: $2c
    sub [hl]                                      ; $51ba: $96
    db $fd                                        ; $51bb: $fd
    adc b                                         ; $51bc: $88
    dec l                                         ; $51bd: $2d
    rst $30                                       ; $51be: $f7
    ld c, $52                                     ; $51bf: $0e $52
    ld [hl], c                                    ; $51c1: $71
    ld h, h                                       ; $51c2: $64
    sbc $bb                                       ; $51c3: $de $bb
    ld [$513a], sp                                ; $51c5: $08 $3a $51
    ld [hl], d                                    ; $51c8: $72
    or c                                          ; $51c9: $b1
    ld [hl], c                                    ; $51ca: $71
    ld h, h                                       ; $51cb: $64
    adc b                                         ; $51cc: $88
    adc l                                         ; $51cd: $8d
    jr nz, @+$5a                                  ; $51ce: $20 $58

    cp [hl]                                       ; $51d0: $be

jr_063_51d1:
    inc d                                         ; $51d1: $14
    res 7, l                                      ; $51d2: $cb $bd
    ld b, e                                       ; $51d4: $43
    ld e, [hl]                                    ; $51d5: $5e
    ld l, l                                       ; $51d6: $6d
    xor $f3                                       ; $51d7: $ee $f3
    ld d, h                                       ; $51d9: $54
    ld a, b                                       ; $51da: $78
    ld e, $8f                                     ; $51db: $1e $8f
    and c                                         ; $51dd: $a1
    scf                                           ; $51de: $37
    ld a, [hl]                                    ; $51df: $7e
    pop af                                        ; $51e0: $f1
    ld h, b                                       ; $51e1: $60
    push de                                       ; $51e2: $d5
    ld d, d                                       ; $51e3: $52
    ld l, b                                       ; $51e4: $68
    ld b, e                                       ; $51e5: $43
    di                                            ; $51e6: $f3
    ld a, [bc]                                    ; $51e7: $0a
    and l                                         ; $51e8: $a5
    and e                                         ; $51e9: $a3
    ld [hl], e                                    ; $51ea: $73
    ld [hl], h                                    ; $51eb: $74
    rst $20                                       ; $51ec: $e7
    ld a, [hl]                                    ; $51ed: $7e
    rst $28                                       ; $51ee: $ef
    cp [hl]                                       ; $51ef: $be
    ld [hl], a                                    ; $51f0: $77
    ret nz                                        ; $51f1: $c0

    ld h, l                                       ; $51f2: $65
    db $e4                                        ; $51f3: $e4
    rst $08                                       ; $51f4: $cf
    db $fd                                        ; $51f5: $fd
    adc [hl]                                      ; $51f6: $8e
    add hl, bc                                    ; $51f7: $09
    ld h, l                                       ; $51f8: $65
    ld d, l                                       ; $51f9: $55
    db $fd                                        ; $51fa: $fd
    rst $20                                       ; $51fb: $e7
    ld sp, $81ef                                  ; $51fc: $31 $ef $81
    or d                                          ; $51ff: $b2
    jp c, $e3dc                                   ; $5200: $da $dc $e3

    ld h, d                                       ; $5203: $62
    ld e, [hl]                                    ; $5204: $5e
    adc b                                         ; $5205: $88
    sbc l                                         ; $5206: $9d
    cp e                                          ; $5207: $bb
    jr c, @+$37                                   ; $5208: $38 $35

    ld d, c                                       ; $520a: $51
    inc b                                         ; $520b: $04
    add d                                         ; $520c: $82
    ld hl, $1ddd                                  ; $520d: $21 $dd $1d
    dec sp                                        ; $5210: $3b

jr_063_5211:
    rst $28                                       ; $5211: $ef
    rla                                           ; $5212: $17
    ld l, l                                       ; $5213: $6d
    and $91                                       ; $5214: $e6 $91
    ccf                                           ; $5216: $3f
    rla                                           ; $5217: $17
    ld d, e                                       ; $5218: $53
    jp nc, $b43c                                  ; $5219: $d2 $3c $b4

    inc l                                         ; $521c: $2c
    and [hl]                                      ; $521d: $a6
    ld h, h                                       ; $521e: $64
    ld h, l                                       ; $521f: $65
    rrca                                          ; $5220: $0f
    ld a, a                                       ; $5221: $7f
    add hl, de                                    ; $5222: $19
    db $ec                                        ; $5223: $ec
    ld bc, $875e                                  ; $5224: $01 $5e $87
    ld hl, sp-$22                                 ; $5227: $f8 $de

jr_063_5229:
    ld a, c                                       ; $5229: $79
    cp l                                          ; $522a: $bd
    ld a, e                                       ; $522b: $7b
    or c                                          ; $522c: $b1
    ld [hl], c                                    ; $522d: $71
    sbc a                                         ; $522e: $9f
    rla                                           ; $522f: $17
    jp $a854                                      ; $5230: $c3 $54 $a8


    ld l, h                                       ; $5233: $6c
    db $f4                                        ; $5234: $f4
    ld l, $4e                                     ; $5235: $2e $4e
    ld c, l                                       ; $5237: $4d
    inc d                                         ; $5238: $14
    add c                                         ; $5239: $81
    ld h, b                                       ; $523a: $60
    ret z                                         ; $523b: $c8

    sbc l                                         ; $523c: $9d
    ld a, b                                       ; $523d: $78
    ld [$6b09], a                                 ; $523e: $ea $09 $6b
    dec b                                         ; $5241: $05
    db $10                                        ; $5242: $10
    cp [hl]                                       ; $5243: $be
    ld e, a                                       ; $5244: $5f
    add a                                         ; $5245: $87
    call c, $a1e3                                 ; $5246: $dc $e3 $a1
    sbc a                                         ; $5249: $9f
    ld b, l                                       ; $524a: $45
    ld sp, hl                                     ; $524b: $f9
    rst $10                                       ; $524c: $d7
    xor [hl]                                      ; $524d: $ae
    ld b, a                                       ; $524e: $47
    ld d, c                                       ; $524f: $51
    ld [hl], a                                    ; $5250: $77
    ld c, e                                       ; $5251: $4b
    adc a                                         ; $5252: $8f
    and d                                         ; $5253: $a2
    add l                                         ; $5254: $85
    or d                                          ; $5255: $b2
    xor e                                         ; $5256: $ab
    ld a, a                                       ; $5257: $7f
    ld l, h                                       ; $5258: $6c
    ld hl, $3fda                                  ; $5259: $21 $da $3f
    or c                                          ; $525c: $b1
    add hl, sp                                    ; $525d: $39
    sub a                                         ; $525e: $97
    cp a                                          ; $525f: $bf
    ld e, d                                       ; $5260: $5a
    ret nc                                        ; $5261: $d0

    ld l, e                                       ; $5262: $6b
    dec [hl]                                      ; $5263: $35
    rla                                           ; $5264: $17
    ld [$36bd], a                                 ; $5265: $ea $bd $36
    adc a                                         ; $5268: $8f
    inc sp                                        ; $5269: $33
    jr jr_063_5229                                ; $526a: $18 $bd

    rst $08                                       ; $526c: $cf
    adc e                                         ; $526d: $8b
    ld h, c                                       ; $526e: $61
    pop af                                        ; $526f: $f1
    rst $08                                       ; $5270: $cf
    and c                                         ; $5271: $a1
    ld h, a                                       ; $5272: $67
    ld [hl], c                                    ; $5273: $71
    ld h, l                                       ; $5274: $65
    xor a                                         ; $5275: $af
    add [hl]                                      ; $5276: $86
    ld h, a                                       ; $5277: $67
    ld c, d                                       ; $5278: $4a
    rla                                           ; $5279: $17
    pop af                                        ; $527a: $f1
    ld l, d                                       ; $527b: $6a
    ld l, a                                       ; $527c: $6f
    xor $50                                       ; $527d: $ee $50
    rst $10                                       ; $527f: $d7
    jr nc, @-$15                                  ; $5280: $30 $e9

Call_063_5282:
    inc b                                         ; $5282: $04
    ld e, c                                       ; $5283: $59
    jr z, jr_063_5211                             ; $5284: $28 $8b

    ld b, c                                       ; $5286: $41
    ret nc                                        ; $5287: $d0

    ld d, e                                       ; $5288: $53
    and c                                         ; $5289: $a1
    ld [hl], a                                    ; $528a: $77
    rla                                           ; $528b: $17
    ld [hl], b                                    ; $528c: $70
    dec hl                                        ; $528d: $2b
    xor b                                         ; $528e: $a8

jr_063_528f:
    rst $18                                       ; $528f: $df
    dec l                                         ; $5290: $2d
    adc e                                         ; $5291: $8b
    ld a, [c]                                     ; $5292: $f2
    rrca                                          ; $5293: $0f
    db $fd                                        ; $5294: $fd
    call c, Call_000_0ebb                         ; $5295: $dc $bb $0e
    ld d, [hl]                                    ; $5298: $56
    ld e, l                                       ; $5299: $5d
    daa                                           ; $529a: $27
    ld b, [hl]                                    ; $529b: $46
    adc e                                         ; $529c: $8b
    ld l, $e8                                     ; $529d: $2e $e8
    cp h                                          ; $529f: $bc
    ld e, a                                       ; $52a0: $5f
    sub a                                         ; $52a1: $97
    sbc e                                         ; $52a2: $9b
    ld c, [hl]                                    ; $52a3: $4e
    sbc e                                         ; $52a4: $9b
    sbc b                                         ; $52a5: $98
    ld c, [hl]                                    ; $52a6: $4e
    dec de                                        ; $52a7: $1b
    jr z, jr_063_528f                             ; $52a8: $28 $e5

    dec a                                         ; $52aa: $3d
    ld c, [hl]                                    ; $52ab: $4e
    db $d3                                        ; $52ac: $d3
    ld b, [hl]                                    ; $52ad: $46
    ld [hl], a                                    ; $52ae: $77
    ld e, c                                       ; $52af: $59
    add e                                         ; $52b0: $83
    ld a, [hl+]                                   ; $52b1: $2a
    pop de                                        ; $52b2: $d1
    rst $28                                       ; $52b3: $ef
    add sp, -$44                                  ; $52b4: $e8 $bc
    rst $28                                       ; $52b6: $ef
    ei                                            ; $52b7: $fb
    dec b                                         ; $52b8: $05
    ld l, l                                       ; $52b9: $6d
    and $75                                       ; $52ba: $e6 $75
    dec c                                         ; $52bc: $0d
    ld a, [hl-]                                   ; $52bd: $3a
    ld d, a                                       ; $52be: $57
    jp $abb3                                      ; $52bf: $c3 $b3 $ab


    ld [hl], h                                    ; $52c2: $74
    ret z                                         ; $52c3: $c8

    ld [hl], h                                    ; $52c4: $74
    rst $28                                       ; $52c5: $ef
    rst $30                                       ; $52c6: $f7
    dec bc                                        ; $52c7: $0b
    rlca                                          ; $52c8: $07
    push af                                       ; $52c9: $f5
    and a                                         ; $52ca: $a7
    sbc e                                         ; $52cb: $9b
    or [hl]                                       ; $52cc: $b6
    ld b, a                                       ; $52cd: $47
    ld a, a                                       ; $52ce: $7f
    cp d                                          ; $52cf: $ba
    ld l, c                                       ; $52d0: $69
    dec hl                                        ; $52d1: $2b
    sbc c                                         ; $52d2: $99
    rst $30                                       ; $52d3: $f7
    dec bc                                        ; $52d4: $0b
    rlca                                          ; $52d5: $07
    ld a, [hl]                                    ; $52d6: $7e
    db $ec                                        ; $52d7: $ec
    cp [hl]                                       ; $52d8: $be
    ei                                            ; $52d9: $fb
    cp [hl]                                       ; $52da: $be
    ld b, a                                       ; $52db: $47
    rst $38                                       ; $52dc: $ff
    or c                                          ; $52dd: $b1
    ei                                            ; $52de: $fb
    xor $fb                                       ; $52df: $ee $fb
    ld e, $dd                                     ; $52e1: $1e $dd
    ld h, l                                       ; $52e3: $65
    ld d, l                                       ; $52e4: $55
    db $fd                                        ; $52e5: $fd
    ld a, $09                                     ; $52e6: $3e $09
    ld l, d                                       ; $52e8: $6a
    ld d, c                                       ; $52e9: $51
    ld c, b                                       ; $52ea: $48
    and [hl]                                      ; $52eb: $a6
    db $f4                                        ; $52ec: $f4
    xor $21                                       ; $52ed: $ee $21
    sub h                                         ; $52ef: $94
    ei                                            ; $52f0: $fb
    cp [hl]                                       ; $52f1: $be
    ld e, a                                       ; $52f2: $5f
    ld d, a                                       ; $52f3: $57
    sub $ca                                       ; $52f4: $d6 $ca
    cp e                                          ; $52f6: $bb
    rst $28                                       ; $52f7: $ef
    ld a, e                                       ; $52f8: $7b
    db $ed                                        ; $52f9: $ed
    adc $07                                       ; $52fa: $ce $07
    add d                                         ; $52fc: $82
    ld a, b                                       ; $52fd: $78
    rst $30                                       ; $52fe: $f7
    ld a, l                                       ; $52ff: $7d
    rst $28                                       ; $5300: $ef
    add b                                         ; $5301: $80
    bit 1, b                                      ; $5302: $cb $48
    ld l, d                                       ; $5304: $6a
    or d                                          ; $5305: $b2
    rst $10                                       ; $5306: $d7
    and c                                         ; $5307: $a1
    ld a, b                                       ; $5308: $78
    ld d, a                                       ; $5309: $57
    jp hl                                         ; $530a: $e9


    sub b                                         ; $530b: $90
    jp hl                                         ; $530c: $e9


    sbc $c7                                       ; $530d: $de $c7
    cp a                                          ; $530f: $bf
    ld a, e                                       ; $5310: $7b
    adc a                                         ; $5311: $8f
    ld [hl], c                                    ; $5312: $71
    sub [hl]                                      ; $5313: $96
    cp c                                          ; $5314: $b9
    ld [hl], a                                    ; $5315: $77
    rst $20                                       ; $5316: $e7
    cp [hl]                                       ; $5317: $be
    and b                                         ; $5318: $a0
    push hl                                       ; $5319: $e5
    ld e, [hl]                                    ; $531a: $5e
    ei                                            ; $531b: $fb
    sub a                                         ; $531c: $97
    ld [hl], l                                    ; $531d: $75
    ld a, [hl+]                                   ; $531e: $2a
    xor [hl]                                      ; $531f: $ae
    pop af                                        ; $5320: $f1
    and l                                         ; $5321: $a5
    ld hl, sp+$7e                                 ; $5322: $f8 $7e
    ld bc, $e66d                                  ; $5324: $01 $6d $e6
    dec a                                         ; $5327: $3d
    call $3f91                                    ; $5328: $cd $91 $3f
    or $62                                        ; $532b: $f6 $62
    ld c, d                                       ; $532d: $4a
    sbc d                                         ; $532e: $9a
    ld [hl], a                                    ; $532f: $77
    ld c, b                                       ; $5330: $48
    ld a, [hl]                                    ; $5331: $7e
    res 0, e                                      ; $5332: $cb $83
    ld h, d                                       ; $5334: $62
    pop de                                        ; $5335: $d1
    cp $02                                        ; $5336: $fe $02
    rlca                                          ; $5338: $07
    ld e, h                                       ; $5339: $5c
    add $19                                       ; $533a: $c6 $19
    ld [hl], d                                    ; $533c: $72
    sbc a                                         ; $533d: $9f
    ld b, a                                       ; $533e: $47
    ld a, [hl]                                    ; $533f: $7e
    ld e, c                                       ; $5340: $59
    inc c                                         ; $5341: $0c
    ld a, l                                       ; $5342: $7d
    ld d, c                                       ; $5343: $51
    ld c, b                                       ; $5344: $48
    and [hl]                                      ; $5345: $a6
    db $f4                                        ; $5346: $f4
    xor $1d                                       ; $5347: $ee $1d
    sub d                                         ; $5349: $92
    rst $18                                       ; $534a: $df
    ld a, [c]                                     ; $534b: $f2
    ret z                                         ; $534c: $c8

    jr c, @+$26                                   ; $534d: $38 $24

    ld a, [hl]                                    ; $534f: $7e
    reti                                          ; $5350: $d9


    di                                            ; $5351: $f3
    ld h, l                                       ; $5352: $65
    jp nc, $45cc                                  ; $5353: $d2 $cc $45

    jp hl                                         ; $5356: $e9


    ld h, a                                       ; $5357: $67
    inc c                                         ; $5358: $0c
    ld a, l                                       ; $5359: $7d
    add a                                         ; $535a: $87
    ret c                                         ; $535b: $d8

    ld h, d                                       ; $535c: $62
    pop de                                        ; $535d: $d1
    cp $02                                        ; $535e: $fe $02
    rst $10                                       ; $5360: $d7
    pop bc                                        ; $5361: $c1
    sbc [hl]                                      ; $5362: $9e
    and $c8                                       ; $5363: $e6 $c8
    rra                                           ; $5365: $1f

jr_063_5366:
    ld a, e                                       ; $5366: $7b
    pop de                                        ; $5367: $d1
    rst $20                                       ; $5368: $e7
    pop bc                                        ; $5369: $c1
    jp c, $a7f4                                   ; $536a: $da $f4 $a7

    pop de                                        ; $536d: $d1
    adc l                                         ; $536e: $8d
    ld hl, $af7d                                  ; $536f: $21 $7d $af
    call $aabc                                    ; $5372: $cd $bc $aa
    db $f4                                        ; $5375: $f4
    sbc $bd                                       ; $5376: $de $bd
    jr jr_063_53c0                                ; $5378: $18 $46

    cp $d8                                        ; $537a: $fe $d8
    dec hl                                        ; $537c: $2b
    db $f4                                        ; $537d: $f4
    sub b                                         ; $537e: $90
    cp h                                          ; $537f: $bc
    jr z, jr_063_5366                             ; $5380: $28 $e4

    ld a, [hl-]                                   ; $5382: $3a
    ld b, l                                       ; $5383: $45
    ld c, d                                       ; $5384: $4a
    push hl                                       ; $5385: $e5
    ei                                            ; $5386: $fb
    dec b                                         ; $5387: $05
    rlca                                          ; $5388: $07
    dec l                                         ; $5389: $2d
    adc e                                         ; $538a: $8b
    ld h, c                                       ; $538b: $61
    db $e4                                        ; $538c: $e4
    rst $08                                       ; $538d: $cf
    add c                                         ; $538e: $81
    or b                                          ; $538f: $b0
    ld a, c                                       ; $5390: $79
    dec c                                         ; $5391: $0d
    rst $00                                       ; $5392: $c7
    ld d, b                                       ; $5393: $50
    or l                                          ; $5394: $b5
    rst $28                                       ; $5395: $ef
    adc d                                         ; $5396: $8a
    ld [hl-], a                                   ; $5397: $32
    inc [hl]                                      ; $5398: $34
    rst $08                                       ; $5399: $cf
    cp c                                          ; $539a: $b9
    jp c, Jump_000_03cd                           ; $539b: $da $cd $03

    and l                                         ; $539e: $a5
    cp h                                          ; $539f: $bc
    rst $00                                       ; $53a0: $c7
    ld [bc], a                                    ; $53a1: $02
    ld d, d                                       ; $53a2: $52
    inc l                                         ; $53a3: $2c
    ei                                            ; $53a4: $fb
    cp h                                          ; $53a5: $bc
    jr jr_063_53fe                                ; $53a6: $18 $56

    push de                                       ; $53a8: $d5
    rst $28                                       ; $53a9: $ef
    adc e                                         ; $53aa: $8b
    ld bc, $093d                                  ; $53ab: $01 $3d $09
    push bc                                       ; $53ae: $c5
    cp h                                          ; $53af: $bc
    ldh a, [$ec]                                  ; $53b0: $f0 $ec
    db $10                                        ; $53b2: $10
    ld e, e                                       ; $53b3: $5b
    inc l                                         ; $53b4: $2c
    ld [hl], e                                    ; $53b5: $73
    rst $28                                       ; $53b6: $ef
    adc $5d                                       ; $53b7: $ce $5d
    call nc, Call_000_28f5                        ; $53b9: $d4 $f5 $28
    jp nc, $c42c                                  ; $53bc: $d2 $2c $c4

    ld c, [hl]                                    ; $53bf: $4e

jr_063_53c0:
    ld [hl-], a                                   ; $53c0: $32
    call nz, $f346                                ; $53c1: $c4 $46 $f3
    db $fd                                        ; $53c4: $fd
    ld [bc], a                                    ; $53c5: $02
    rla                                           ; $53c6: $17
    ld d, c                                       ; $53c7: $51
    ld a, e                                       ; $53c8: $7b
    reti                                          ; $53c9: $d9


    inc bc                                        ; $53ca: $03
    push hl                                       ; $53cb: $e5
    sbc $01                                       ; $53cc: $de $01
    sub a                                         ; $53ce: $97
    ld sp, $1735                                  ; $53cf: $31 $35 $17
    ld d, e                                       ; $53d2: $53
    db $10                                        ; $53d3: $10
    cp l                                          ; $53d4: $bd
    ld d, [hl]                                    ; $53d5: $56
    ld [hl], e                                    ; $53d6: $73
    sbc a                                         ; $53d7: $9f
    ld [hl], a                                    ; $53d8: $77
    ret                                           ; $53d9: $c9


    sbc b                                         ; $53da: $98
    ld [hl+], a                                   ; $53db: $22
    jp z, $ba39                                   ; $53dc: $ca $39 $ba

    ld [hl], e                                    ; $53df: $73
    dec c                                         ; $53e0: $0d
    ld h, e                                       ; $53e1: $63
    ld a, d                                       ; $53e2: $7a
    pop hl                                        ; $53e3: $e1
    ld e, c                                       ; $53e4: $59
    ld b, h                                       ; $53e5: $44
    call $b25d                                    ; $53e6: $cd $5d $b2
    ld b, [hl]                                    ; $53e9: $46
    ld l, d                                       ; $53ea: $6a
    ret nc                                        ; $53eb: $d0

    cp c                                          ; $53ec: $b9
    xor d                                         ; $53ed: $aa
    ld b, d                                       ; $53ee: $42
    or a                                          ; $53ef: $b7
    call nc, Call_063_4ba5                        ; $53f0: $d4 $a5 $4b
    rst $30                                       ; $53f3: $f7
    ld h, e                                       ; $53f4: $63
    pop hl                                        ; $53f5: $e1
    ld b, c                                       ; $53f6: $41
    or c                                          ; $53f7: $b1
    ret nc                                        ; $53f8: $d0

    ld b, $4a                                     ; $53f9: $06 $4a
    ld a, c                                       ; $53fb: $79
    push af                                       ; $53fc: $f5
    dec bc                                        ; $53fd: $0b

jr_063_53fe:
    ld a, [c]                                     ; $53fe: $f2
    add hl, sp                                    ; $53ff: $39
    cpl                                           ; $5400: $2f
    ld l, l                                       ; $5401: $6d
    and $39                                       ; $5402: $e6 $39
    ld h, a                                       ; $5404: $67
    ld e, c                                       ; $5405: $59
    ld d, l                                       ; $5406: $55
    rst $38                                       ; $5407: $ff
    reti                                          ; $5408: $d9


    rst $20                                       ; $5409: $e7
    and c                                         ; $540a: $a1
    rst $30                                       ; $540b: $f7
    and e                                         ; $540c: $a3
    xor d                                         ; $540d: $aa
    ld a, [hl]                                    ; $540e: $7e
    inc d                                         ; $540f: $14
    add hl, de                                    ; $5410: $19
    dec a                                         ; $5411: $3d
    db $f4                                        ; $5412: $f4
    jp z, $ba7f                                   ; $5413: $ca $7f $ba

jr_063_5416:
    rst $30                                       ; $5416: $f7
    and e                                         ; $5417: $a3
    jp z, $a3f9                                   ; $5418: $ca $f9 $a3

    ret z                                         ; $541b: $c8

    cp l                                          ; $541c: $bd

Call_063_541d:
    cp d                                          ; $541d: $ba
    ld a, $e6                                     ; $541e: $3e $e6
    add b                                         ; $5420: $80
    adc $7b                                       ; $5421: $ce $7b
    rlca                                          ; $5423: $07
    ld e, h                                       ; $5424: $5c
    ld b, [hl]                                    ; $5425: $46
    cp $5c                                        ; $5426: $fe $5c
    push hl                                       ; $5428: $e5
    adc a                                         ; $5429: $8f
    ld d, b                                       ; $542a: $50
    and [hl]                                      ; $542b: $a6
    jr z, jr_063_5416                             ; $542c: $28 $e8

    inc d                                         ; $542e: $14
    xor a                                         ; $542f: $af
    push de                                       ; $5430: $d5
    call c, Call_000_3c03                         ; $5431: $dc $03 $3c
    dec d                                         ; $5434: $15
    add h                                         ; $5435: $84
    ld b, e                                       ; $5436: $43
    sbc $2f                                       ; $5437: $de $2f
    sub a                                         ; $5439: $97
    scf                                           ; $543a: $37

Call_063_543b:
    ld l, c                                       ; $543b: $69
    inc hl                                        ; $543c: $23
    di                                            ; $543d: $f3
    sbc $da                                       ; $543e: $de $da
    ld a, a                                       ; $5440: $7f
    and [hl]                                      ; $5441: $a6
    ld h, [hl]                                    ; $5442: $66
    ld d, a                                       ; $5443: $57
    ld b, $66                                     ; $5444: $06 $66
    rst $20                                       ; $5446: $e7
    jp c, $74a9                                   ; $5447: $da $a9 $74

    sbc $95                                       ; $544a: $de $95
    call $e21d                                    ; $544c: $cd $1d $e2
    ld l, h                                       ; $544f: $6c
    xor [hl]                                      ; $5450: $ae
    halt                                          ; $5451: $76
    sbc l                                         ; $5452: $9d
    reti                                          ; $5453: $d9


    cp c                                          ; $5454: $b9
    ld a, [bc]                                    ; $5455: $0a
    ld h, l                                       ; $5456: $65
    ld d, $74                                     ; $5457: $16 $74
    add a                                         ; $5459: $87
    ld [hl-], a                                   ; $545a: $32
    add [hl]                                      ; $545b: $86
    cp [hl]                                       ; $545c: $be
    ld d, b                                       ; $545d: $50
    rst $28                                       ; $545e: $ef
    ld e, l                                       ; $545f: $5d
    ld h, a                                       ; $5460: $67
    pop hl                                        ; $5461: $e1
    sub c                                         ; $5462: $91
    adc $31                                       ; $5463: $ce $31
    db $f4                                        ; $5465: $f4
    or l                                          ; $5466: $b5
    rst $38                                       ; $5467: $ff
    sub d                                         ; $5468: $92
    add b                                         ; $5469: $80
    ld d, e                                       ; $546a: $53
    pop hl                                        ; $546b: $e1
    ld a, c                                       ; $546c: $79
    sbc h                                         ; $546d: $9c
    dec bc                                        ; $546e: $0b
    ld h, l                                       ; $546f: $65
    ld [hl], c                                    ; $5470: $71
    adc b                                         ; $5471: $88
    rlca                                          ; $5472: $07
    ld c, d                                       ; $5473: $4a
    ld a, c                                       ; $5474: $79
    sbc a                                         ; $5475: $9f
    ld d, a                                       ; $5476: $57
    add hl, de                                    ; $5477: $19
    sub h                                         ; $5478: $94
    ld a, [c]                                     ; $5479: $f2
    ld a, [hl]                                    ; $547a: $7e
    ld [hl], h                                    ; $547b: $74
    xor a                                         ; $547c: $af
    call Call_063_46bc                            ; $547d: $cd $bc $46
    add a                                         ; $5480: $87
    ret c                                         ; $5481: $d8

    cp c                                          ; $5482: $b9
    sbc b                                         ; $5483: $98
    sub d                                         ; $5484: $92
    sub l                                         ; $5485: $95
    rla                                           ; $5486: $17
    add l                                         ; $5487: $85
    inc e                                         ; $5488: $1c
    db $dd                                        ; $5489: $dd
    cp c                                          ; $548a: $b9
    ld [$d31e], a                                 ; $548b: $ea $1e $d3
    ld b, [hl]                                    ; $548e: $46
    add $50                                       ; $548f: $c6 $50
    ld [hl], a                                    ; $5491: $77
    ret                                           ; $5492: $c9


    ld a, [bc]                                    ; $5493: $0a
    dec [hl]                                      ; $5494: $35
    add a                                         ; $5495: $87
    and $fb                                       ; $5496: $e6 $fb
    dec b                                         ; $5498: $05
    rla                                           ; $5499: $17
    rra                                           ; $549a: $1f
    ld sp, hl                                     ; $549b: $f9
    inc hl                                        ; $549c: $23
    or [hl]                                       ; $549d: $b6
    call c, $b4bb                                 ; $549e: $dc $bb $b4
    rst $38                                       ; $54a1: $ff
    inc e                                         ; $54a2: $1c
    ld b, e                                       ; $54a3: $43
    sbc a                                         ; $54a4: $9f
    ld h, l                                       ; $54a5: $65

jr_063_54a6:
    or l                                          ; $54a6: $b5
    push af                                       ; $54a7: $f5
    or c                                          ; $54a8: $b1
    ld a, [hl-]                                   ; $54a9: $3a
    call Call_000_0e7a                            ; $54aa: $cd $7a $0e
    ld d, [hl]                                    ; $54ad: $56
    ld d, l                                       ; $54ae: $55
    adc b                                         ; $54af: $88
    dec l                                         ; $54b0: $2d
    rst $20                                       ; $54b1: $e7
    cp h                                          ; $54b2: $bc
    rlca                                          ; $54b3: $07
    ld e, h                                       ; $54b4: $5c
    ld h, $94                                     ; $54b5: $26 $94
    jp nz, $7dce                                  ; $54b7: $c2 $ce $7d

    ld e, [hl]                                    ; $54ba: $5e
    ld l, c                                       ; $54bb: $69
    ld c, $04                                     ; $54bc: $0e $04
    rlca                                          ; $54be: $07
    ld b, e                                       ; $54bf: $43
    res 5, d                                      ; $54c0: $cb $aa
    ld a, [bc]                                    ; $54c2: $0a
    or c                                          ; $54c3: $b1
    or $17                                        ; $54c4: $f6 $17
    ld l, l                                       ; $54c6: $6d
    ld a, [$334a]                                 ; $54c7: $fa $4a $33
    add a                                         ; $54ca: $87
    ld c, [hl]                                    ; $54cb: $4e
    db $10                                        ; $54cc: $10
    and h                                         ; $54cd: $a4
    adc l                                         ; $54ce: $8d
    adc h                                         ; $54cf: $8c
    and c                                         ; $54d0: $a1
    ld c, $f5                                     ; $54d1: $0e $f5
    ld d, c                                       ; $54d3: $51
    and l                                         ; $54d4: $a5
    ld a, [hl+]                                   ; $54d5: $2a
    rst $20                                       ; $54d6: $e7
    ld a, $af                                     ; $54d7: $3e $af
    pop de                                        ; $54d9: $d1
    pop hl                                        ; $54da: $e1
    ld c, b                                       ; $54db: $48
    xor a                                         ; $54dc: $af
    push de                                       ; $54dd: $d5
    ld e, h                                       ; $54de: $5c
    ld a, e                                       ; $54df: $7b
    jr z, jr_063_54a6                             ; $54e0: $28 $c4

    ld a, [hl]                                    ; $54e2: $7e
    ld [hl], d                                    ; $54e3: $72
    push de                                       ; $54e4: $d5
    cp [hl]                                       ; $54e5: $be
    halt                                          ; $54e6: $76
    ld l, d                                       ; $54e7: $6a
    adc [hl]                                      ; $54e8: $8e
    ld [hl], h                                    ; $54e9: $74
    jp nc, $e686                                  ; $54ea: $d2 $86 $e6

    ld d, l                                       ; $54ed: $55
    ld l, d                                       ; $54ee: $6a
    adc a                                         ; $54ef: $8f
    and e                                         ; $54f0: $a3
    sbc a                                         ; $54f1: $9f
    or c                                          ; $54f2: $b1
    pop de                                        ; $54f3: $d1
    sub e                                         ; $54f4: $93
    ld [hl], b                                    ; $54f5: $70
    and h                                         ; $54f6: $a4
    ld a, c                                       ; $54f7: $79
    add sp, $5c                                   ; $54f8: $e8 $5c
    add a                                         ; $54fa: $87
    ld d, d                                       ; $54fb: $52
    sbc h                                         ; $54fc: $9c
    ld l, e                                       ; $54fd: $6b
    dec [hl]                                      ; $54fe: $35
    ld b, a                                       ; $54ff: $47
    rrca                                          ; $5500: $0f
    adc c                                         ; $5501: $89
    sub [hl]                                      ; $5502: $96
    add hl, sp                                    ; $5503: $39
    ld h, a                                       ; $5504: $67
    ld hl, $d4e9                                  ; $5505: $21 $e9 $d4
    inc d                                         ; $5508: $14
    sub b                                         ; $5509: $90
    ld [c], a                                     ; $550a: $e2
    ld b, [hl]                                    ; $550b: $46
    rrca                                          ; $550c: $0f
    ld a, b                                       ; $550d: $78
    xor a                                         ; $550e: $af
    call $e739                                    ; $550f: $cd $39 $e7
    inc l                                         ; $5512: $2c
    inc hl                                        ; $5513: $23
    sbc e                                         ; $5514: $9b
    adc c                                         ; $5515: $89
    cp h                                          ; $5516: $bc
    jp c, $f34c                                   ; $5517: $da $4c $f3

    inc l                                         ; $551a: $2c
    inc h                                         ; $551b: $24
    sbc l                                         ; $551c: $9d
    sbc d                                         ; $551d: $9a
    ld [bc], a                                    ; $551e: $02
    ld d, d                                       ; $551f: $52
    add [hl]                                      ; $5520: $86
    ld c, [hl]                                    ; $5521: $4e
    db $10                                        ; $5522: $10
    db $f4                                        ; $5523: $f4
    cp l                                          ; $5524: $bd
    db $eb                                        ; $5525: $eb
    ld h, b                                       ; $5526: $60
    ld c, a                                       ; $5527: $4f
    ld [hl], e                                    ; $5528: $73
    ld de, $7a08                                  ; $5529: $11 $08 $7a
    ld l, b                                       ; $552c: $68
    sbc $cf                                       ; $552d: $de $cf
    rst $00                                       ; $552f: $c7
    ld d, e                                       ; $5530: $53
    ld c, c                                       ; $5531: $49
    cp c                                          ; $5532: $b9
    ld e, a                                       ; $5533: $5f
    db $ed                                        ; $5534: $ed
    pop af                                        ; $5535: $f1
    rst $00                                       ; $5536: $c7
    ld d, l                                       ; $5537: $55
    push hl                                       ; $5538: $e5
    inc e                                         ; $5539: $1c
    ld a, [hl-]                                   ; $553a: $3a
    ld b, a                                       ; $553b: $47
    add $50                                       ; $553c: $c6 $50
    add a                                         ; $553e: $87
    and $d5                                       ; $553f: $e6 $d5

Call_063_5541:
    ldh a, [$ac]                                  ; $5541: $f0 $ac
    ld [hl], $d3                                  ; $5543: $36 $d3
    add sp, $59                                   ; $5545: $e8 $59
    ld c, b                                       ; $5547: $48
    ld a, [hl-]                                   ; $5548: $3a
    dec [hl]                                      ; $5549: $35
    dec b                                         ; $554a: $05
    and h                                         ; $554b: $a4
    ld e, b                                       ; $554c: $58
    ld d, $81                                     ; $554d: $16 $81
    and b                                         ; $554f: $a0
    ld [hl], e                                    ; $5550: $73
    and c                                         ; $5551: $a1
    ld l, $a2                                     ; $5552: $2e $a2
    ld h, [hl]                                    ; $5554: $66
    push hl                                       ; $5555: $e5
    ld [hl], e                                    ; $5556: $73
    ld e, [hl]                                    ; $5557: $5e
    sub a                                         ; $5558: $97
    ld [$079b], sp                                ; $5559: $08 $9b $07
    xor e                                         ; $555c: $ab
    ld a, [hl+]                                   ; $555d: $2a
    call nz, $a996                                ; $555e: $c4 $96 $a9
    cpl                                           ; $5561: $2f
    xor e                                         ; $5562: $ab
    ld [$47a3], a                                 ; $5563: $ea $a3 $47
    ld [hl], a                                    ; $5566: $77
    jp nc, $c646                                  ; $5567: $d2 $46 $c6

    ld d, b                                       ; $556a: $50
    ld [hl], a                                    ; $556b: $77
    ret                                           ; $556c: $c9


    ret z                                         ; $556d: $c8

    ret nc                                        ; $556e: $d0

    pop de                                        ; $556f: $d1
    add hl, sp                                    ; $5570: $39
    cp d                                          ; $5571: $ba
    ld [hl], e                                    ; $5572: $73
    inc c                                         ; $5573: $0c
    ld a, l                                       ; $5574: $7d
    rrca                                          ; $5575: $0f
    sub h                                         ; $5576: $94
    cp c                                          ; $5577: $b9
    ld [hl], a                                    ; $5578: $77
    rst $20                                       ; $5579: $e7
    xor [hl]                                      ; $557a: $ae
    ret                                           ; $557b: $c9


    db $10                                        ; $557c: $10
    db $fd                                        ; $557d: $fd
    jp z, $cef7                                   ; $557e: $ca $f7 $ce

    rst $28                                       ; $5581: $ef
    db $10                                        ; $5582: $10
    xor a                                         ; $5583: $af
    push de                                       ; $5584: $d5
    ld e, h                                       ; $5585: $5c
    ld h, l                                       ; $5586: $65
    or b                                          ; $5587: $b0
    call c, Call_000_0ebb                         ; $5588: $dc $bb $0e
    add [hl]                                      ; $558b: $86
    xor $ce                                       ; $558c: $ee $ce
    add l                                         ; $558e: $85
    ld a, [hl-]                                   ; $558f: $3a
    jr @-$77                                      ; $5590: $18 $87

    sub l                                         ; $5592: $95
    call nc, Call_000_2d5b                        ; $5593: $d4 $5b $2d
    rst $20                                       ; $5596: $e7
    and d                                         ; $5597: $a2
    sub b                                         ; $5598: $90
    ei                                            ; $5599: $fb
    cp h                                          ; $559a: $bc
    ld l, [hl]                                    ; $559b: $6e
    db $f4                                        ; $559c: $f4
    db $fd                                        ; $559d: $fd
    ld [bc], a                                    ; $559e: $02
    db $ed                                        ; $559f: $ed
    ld sp, $d1d4                                  ; $55a0: $31 $d4 $d1
    ld e, l                                       ; $55a3: $5d
    ld d, [hl]                                    ; $55a4: $56
    push de                                       ; $55a5: $d5
    rst $28                                       ; $55a6: $ef
    ld b, e                                       ; $55a7: $43
    daa                                           ; $55a8: $27
    ld [$862e], sp                                ; $55a9: $08 $2e $86
    ld a, $ba                                     ; $55ac: $3e $ba
    rr [hl]                                       ; $55ae: $cb $1e
    db $e3                                        ; $55b0: $e3
    xor [hl]                                      ; $55b1: $ae
    ret                                           ; $55b2: $c9


    db $10                                        ; $55b3: $10
    db $fd                                        ; $55b4: $fd
    jp z, Jump_000_0bf7                           ; $55b5: $ca $f7 $0b

    rla                                           ; $55b8: $17
    rlca                                          ; $55b9: $07
    ld h, h                                       ; $55ba: $64
    db $ed                                        ; $55bb: $ed
    dec sp                                        ; $55bc: $3b
    ld [$b685], sp                                ; $55bd: $08 $85 $b6
    or $9f                                        ; $55c0: $f6 $9f
    xor c                                         ; $55c2: $a9
    ld e, c                                       ; $55c3: $59
    jr z, jr_063_5631                             ; $55c4: $28 $6b

jr_063_55c6:
    ld [hl], a                                    ; $55c6: $77
    ld a, $10                                     ; $55c7: $3e $10
    call nz, $cd2b                                ; $55c9: $c4 $2b $cd
    call c, Call_063_5cef                         ; $55cc: $dc $ef $5c
    sbc e                                         ; $55cf: $9b
    ld b, e                                       ; $55d0: $43
    rl [hl]                                       ; $55d1: $cb $16
    sbc e                                         ; $55d3: $9b
    ld a, [hl]                                    ; $55d4: $7e
    rst $28                                       ; $55d5: $ef
    ldh [$ef], a                                  ; $55d6: $e0 $ef
    ld d, c                                       ; $55d8: $51
    ret nc                                        ; $55d9: $d0

    ret nc                                        ; $55da: $d0

    add [hl]                                      ; $55db: $86
    ld a, [$334a]                                 ; $55dc: $fa $4a $33
    rst $30                                       ; $55df: $f7
    jr @+$79                                      ; $55e0: $18 $77

    cp c                                          ; $55e2: $b9
    ld h, e                                       ; $55e3: $63
    add sp, -$23                                  ; $55e4: $e8 $dd
    dec bc                                        ; $55e6: $0b
    ld h, l                                       ; $55e7: $65
    rst $10                                       ; $55e8: $d7
    ld h, h                                       ; $55e9: $64
    adc b                                         ; $55ea: $88
    ld a, [hl]                                    ; $55eb: $7e
    push hl                                       ; $55ec: $e5
    ld a, e                                       ; $55ed: $7b
    db $ed                                        ; $55ee: $ed
    ld sp, $49d4                                  ; $55ef: $31 $d4 $49
    jr c, jr_063_55c6                             ; $55f2: $38 $d2

    or d                                          ; $55f4: $b2
    rra                                           ; $55f5: $1f
    adc l                                         ; $55f6: $8d
    xor $5c                                       ; $55f7: $ee $5c
    call nc, $b5cc                                ; $55f9: $d4 $cc $b5
    ld [hl-], a                                   ; $55fc: $32
    inc [hl]                                      ; $55fd: $34
    cp d                                          ; $55fe: $ba
    rra                                           ; $55ff: $1f
    rst $20                                       ; $5600: $e7
    xor d                                         ; $5601: $aa
    ld a, [$ee47]                                 ; $5602: $fa $47 $ee
    sub d                                         ; $5605: $92
    ld d, l                                       ; $5606: $55
    dec bc                                        ; $5607: $0b
    ld a, d                                       ; $5608: $7a
    ld c, c                                       ; $5609: $49
    ld b, l                                       ; $560a: $45
    xor a                                         ; $560b: $af
    ld [$7654], sp                                ; $560c: $08 $54 $76
    ld c, $16                                     ; $560f: $0e $16
    sbc e                                         ; $5611: $9b
    sbc [hl]                                      ; $5612: $9e
    and $3d                                       ; $5613: $e6 $3d
    add $d1                                       ; $5615: $c6 $d1
    sbc l                                         ; $5617: $9d
    xor [hl]                                      ; $5618: $ae
    db $e3                                        ; $5619: $e3
    call nc, $eef4                                ; $561a: $d4 $f4 $ee
    jp z, $f63f                                   ; $561d: $ca $3f $f6

    db $fd                                        ; $5620: $fd
    ld [bc], a                                    ; $5621: $02
    sub a                                         ; $5622: $97
    db $eb                                        ; $5623: $eb
    ld a, e                                       ; $5624: $7b
    sbc d                                         ; $5625: $9a
    ld b, e                                       ; $5626: $43
    ld a, l                                       ; $5627: $7d
    push de                                       ; $5628: $d5
    ei                                            ; $5629: $fb
    cp h                                          ; $562a: $bc
    adc b                                         ; $562b: $88
    jp c, $f78b                                   ; $562c: $da $8b $f7

    jr jr_063_5648                                ; $562f: $18 $17

jr_063_5631:
    ld a, [hl+]                                   ; $5631: $2a
    ld l, l                                       ; $5632: $6d
    db $ed                                        ; $5633: $ed
    ccf                                           ; $5634: $3f
    ld d, e                                       ; $5635: $53
    ld [hl], e                                    ; $5636: $73
    xor a                                         ; $5637: $af
    call $5e22                                    ; $5638: $cd $22 $5e
    ld d, l                                       ; $563b: $55
    ld hl, $739e                                  ; $563c: $21 $9e $73
    pop de                                        ; $563f: $d1
    rst $08                                       ; $5640: $cf
    ld c, $e5                                     ; $5641: $0e $e5
    ld a, [hl]                                    ; $5643: $7e
    ld bc, $b1ed                                  ; $5644: $01 $ed $b1
    sbc a                                         ; $5647: $9f

jr_063_5648:
    and c                                         ; $5648: $a1
    ld [hl], e                                    ; $5649: $73
    rst $30                                       ; $564a: $f7
    ld a, l                                       ; $564b: $7d
    xor a                                         ; $564c: $af
    ld c, c                                       ; $564d: $49
    jp nc, Jump_000_1ce6                          ; $564e: $d2 $e6 $1c

    sbc d                                         ; $5651: $9a
    add a                                         ; $5652: $87
    ld d, b                                       ; $5653: $50
    xor $17                                       ; $5654: $ee $17
    rla                                           ; $5656: $17
    rlca                                          ; $5657: $07
    call c, $d88f                                 ; $5658: $dc $8f $d8
    ld b, d                                       ; $565b: $42
    ld e, e                                       ; $565c: $5b
    ei                                            ; $565d: $fb
    cpl                                           ; $565e: $2f
    add hl, bc                                    ; $565f: $09
    ld a, b                                       ; $5660: $78
    cp a                                          ; $5661: $bf
    ld l, l                                       ; $5662: $6d
    ld h, [hl]                                    ; $5663: $66
    or $9c                                        ; $5664: $f6 $9c
    ld l, e                                       ; $5666: $6b
    rst $38                                       ; $5667: $ff
    sbc c                                         ; $5668: $99
    sbc d                                         ; $5669: $9a
    ld e, l                                       ; $566a: $5d
    add hl, de                                    ; $566b: $19
    sbc b                                         ; $566c: $98
    sbc l                                         ; $566d: $9d
    dec bc                                        ; $566e: $0b
    ld h, l                                       ; $566f: $65
    db $ed                                        ; $5670: $ed
    adc $07                                       ; $5671: $ce $07
    add d                                         ; $5673: $82
    ld a, b                                       ; $5674: $78
    rla                                           ; $5675: $17
    rst $20                                       ; $5676: $e7
    sub a                                         ; $5677: $97
    ld [c], a                                     ; $5678: $e2
    and h                                         ; $5679: $a4
    call $b1dd                                    ; $567a: $cd $dd $b1
    ld [hl], e                                    ; $567d: $73
    and c                                         ; $567e: $a1
    push de                                       ; $567f: $d5
    ld a, [c]                                     ; $5680: $f2
    and d                                         ; $5681: $a2
    db $fc                                        ; $5682: $fc
    xor e                                         ; $5683: $ab
    ld a, [hl+]                                   ; $5684: $2a
    ld [hl], h                                    ; $5685: $74
    res 7, l                                      ; $5686: $cb $bd
    dec hl                                        ; $5688: $2b
    jp z, $3cd0                                   ; $5689: $ca $d0 $3c

    rst $20                                       ; $568c: $e7
    xor [hl]                                      ; $568d: $ae
    ld c, $f2                                     ; $568e: $0e $f2
    add l                                         ; $5690: $85
    ld [hl], $f2                                  ; $5691: $36 $f2
    res 3, h                                      ; $5693: $cb $9c
    or e                                          ; $5695: $b3
    ld c, h                                       ; $5696: $4c
    ld e, c                                       ; $5697: $59
    ld hl, sp-$15                                 ; $5698: $f8 $eb
    ld a, c                                       ; $569a: $79
    cp a                                          ; $569b: $bf
    ld l, l                                       ; $569c: $6d
    and $91                                       ; $569d: $e6 $91
    ccf                                           ; $569f: $3f
    rla                                           ; $56a0: $17
    jp Jump_063_7e1a                              ; $56a1: $c3 $1a $7e


    jr z, @-$55                                   ; $56a4: $28 $a9

    call z, Call_000_0bf7                         ; $56a6: $cc $f7 $0b
    ld l, l                                       ; $56a9: $6d
    adc $39                                       ; $56aa: $ce $39
    ld h, a                                       ; $56ac: $67
    sbc c                                         ; $56ad: $99
    add l                                         ; $56ae: $85
    and h                                         ; $56af: $a4
    ld d, e                                       ; $56b0: $53
    ld d, e                                       ; $56b1: $53
    ld b, b                                       ; $56b2: $40
    jp z, $786a                                   ; $56b3: $ca $6a $78

    and $5c                                       ; $56b6: $e6 $5c
    ld l, l                                       ; $56b8: $6d

Call_063_56b9:
    and [hl]                                      ; $56b9: $a6
    ld a, c                                       ; $56ba: $79
    rst $00                                       ; $56bb: $c7
    adc l                                         ; $56bc: $8d
    db $fc                                        ; $56bd: $fc
    add hl, sp                                    ; $56be: $39
    call nc, $cd57                                ; $56bf: $d4 $57 $cd
    sub e                                         ; $56c2: $93
    ld [hl], b                                    ; $56c3: $70
    and h                                         ; $56c4: $a4
    ld a, c                                       ; $56c5: $79
    ld a, d                                       ; $56c6: $7a
    and l                                         ; $56c7: $a5
    ld h, b                                       ; $56c8: $60
    db $fc                                        ; $56c9: $fc
    and l                                         ; $56ca: $a5
    ld b, e                                       ; $56cb: $43
    pop hl                                        ; $56cc: $e1
    ld [hl], e                                    ; $56cd: $73
    ld e, [hl]                                    ; $56ce: $5e
    rlca                                          ; $56cf: $07
    ld a, a                                       ; $56d0: $7f
    sub $39                                       ; $56d1: $d6 $39
    and a                                         ; $56d3: $a7
    ld d, a                                       ; $56d4: $57
    ld a, [bc]                                    ; $56d5: $0a
    add $5f                                       ; $56d6: $c6 $5f
    ld a, [hl-]                                   ; $56d8: $3a
    sub h                                         ; $56d9: $94
    xor c                                         ; $56da: $a9
    cp $73                                        ; $56db: $fe $73
    or b                                          ; $56dd: $b0
    rra                                           ; $56de: $1f
    or c                                          ; $56df: $b1
    push hl                                       ; $56e0: $e5
    ld a, [hl]                                    ; $56e1: $7e
    ld bc, $5c07                                  ; $56e2: $01 $07 $5c
    or $58                                        ; $56e5: $f6 $58
    ret c                                         ; $56e7: $d8

    sub e                                         ; $56e8: $93
    ld [hl], b                                    ; $56e9: $70
    and h                                         ; $56ea: $a4
    ld a, c                                       ; $56eb: $79
    ld a, d                                       ; $56ec: $7a
    and l                                         ; $56ed: $a5
    ld h, b                                       ; $56ee: $60
    db $fc                                        ; $56ef: $fc
    and l                                         ; $56f0: $a5
    ld b, e                                       ; $56f1: $43
    pop hl                                        ; $56f2: $e1
    sub c                                         ; $56f3: $91
    adc $c1                                       ; $56f4: $ce $c1
    add h                                         ; $56f6: $84
    sub d                                         ; $56f7: $92
    and h                                         ; $56f8: $a4
    pop de                                        ; $56f9: $d1
    ld [hl], d                                    ; $56fa: $72
    cp a                                          ; $56fb: $bf
    add a                                         ; $56fc: $87
    ld d, h                                       ; $56fd: $54
    adc b                                         ; $56fe: $88
    dec l                                         ; $56ff: $2d
    ld c, e                                       ; $5700: $4b
    db $fd                                        ; $5701: $fd
    ld a, c                                       ; $5702: $79
    sbc h                                         ; $5703: $9c
    ld a, e                                       ; $5704: $7b
    cp [hl]                                       ; $5705: $be
    inc d                                         ; $5706: $14
    adc a                                         ; $5707: $8f
    db $f4                                        ; $5708: $f4
    di                                            ; $5709: $f3
    cp b                                          ; $570a: $b8
    ld b, e                                       ; $570b: $43
    ld hl, $ce8d                                  ; $570c: $21 $8d $ce
    ei                                            ; $570f: $fb
    dec b                                         ; $5710: $05
    ld d, a                                       ; $5711: $57
    ld d, d                                       ; $5712: $52
    add h                                         ; $5713: $84
    rst $30                                       ; $5714: $f7
    and e                                         ; $5715: $a3
    ld hl, $7d94                                  ; $5716: $21 $94 $7d
    ld e, $49                                     ; $5719: $1e $49
    and a                                         ; $571b: $a7
    db $f4                                        ; $571c: $f4
    sub [hl]                                      ; $571d: $96
    add a                                         ; $571e: $87
    sub [hl]                                      ; $571f: $96
    dec a                                         ; $5720: $3d
    add $7d                                       ; $5721: $c6 $7d
    ld e, $19                                     ; $5723: $1e $19
    ld a, [hl-]                                   ; $5725: $3a
    ld a, d                                       ; $5726: $7a
    xor l                                         ; $5727: $ad
    and $d0                                       ; $5728: $e6 $d0
    rst $08                                       ; $572a: $cf
    db $fd                                        ; $572b: $fd
    ld [bc], a                                    ; $572c: $02
    db $ed                                        ; $572d: $ed
    and [hl]                                      ; $572e: $a6
    db $d3                                        ; $572f: $d3
    sub $fe                                       ; $5730: $d6 $fe
    ld c, e                                       ; $5732: $4b
    ld [bc], a                                    ; $5733: $02
    sbc $2f                                       ; $5734: $de $2f
    db $ed                                        ; $5736: $ed
    and [hl]                                      ; $5737: $a6
    rst $28                                       ; $5738: $ef
    db $fc                                        ; $5739: $fc
    cpl                                           ; $573a: $2f
    cp [hl]                                       ; $573b: $be
    ld [hl], a                                    ; $573c: $77
    jr z, jr_063_577b                             ; $573d: $28 $3c

    and e                                         ; $573f: $a3
    cp e                                          ; $5740: $bb
    ld c, h                                       ; $5741: $4c
    call z, $b5a1                                 ; $5742: $cc $a1 $b5
    jp c, $b3d2                                   ; $5745: $da $d2 $b3

    or b                                          ; $5748: $b0
    ld [hl], a                                    ; $5749: $77
    ld [hl], l                                    ; $574a: $75
    sub b                                         ; $574b: $90
    cpl                                           ; $574c: $2f
    inc hl                                        ; $574d: $23
    sbc l                                         ; $574e: $9d
    or h                                          ; $574f: $b4
    sub c                                         ; $5750: $91
    ccf                                           ; $5751: $3f
    add a                                         ; $5752: $87
    ld a, [$79aa]                                 ; $5753: $fa $aa $79
    ld [de], a                                    ; $5756: $12
    adc [hl]                                      ; $5757: $8e
    inc [hl]                                      ; $5758: $34
    ld c, a                                       ; $5759: $4f
    xor a                                         ; $575a: $af
    inc d                                         ; $575b: $14
    adc h                                         ; $575c: $8c
    cp a                                          ; $575d: $bf
    ld [hl], h                                    ; $575e: $74
    jr z, jr_063_579d                             ; $575f: $28 $3c

    add [hl]                                      ; $5761: $86
    cp [hl]                                       ; $5762: $be
    rra                                           ; $5763: $1f
    or c                                          ; $5764: $b1
    push hl                                       ; $5765: $e5
    sbc h                                         ; $5766: $9c
    rla                                           ; $5767: $17
    rlca                                          ; $5768: $07
    ld a, a                                       ; $5769: $7f
    sub $39                                       ; $576a: $d6 $39
    and a                                         ; $576c: $a7
    ld d, a                                       ; $576d: $57
    ld a, [bc]                                    ; $576e: $0a
    add $5f                                       ; $576f: $c6 $5f
    ld a, [hl-]                                   ; $5771: $3a
    sub h                                         ; $5772: $94
    xor c                                         ; $5773: $a9
    cp $73                                        ; $5774: $fe $73
    or b                                          ; $5776: $b0
    rra                                           ; $5777: $1f
    or c                                          ; $5778: $b1
    push hl                                       ; $5779: $e5
    ld a, [hl]                                    ; $577a: $7e

jr_063_577b:
    ld bc, $3657                                  ; $577b: $01 $57 $36
    add a                                         ; $577e: $87
    and $b5                                       ; $577f: $e6 $b5
    ld [hl], h                                    ; $5781: $74
    ld d, c                                       ; $5782: $51
    inc a                                         ; $5783: $3c
    rst $20                                       ; $5784: $e7
    ld l, $99                                     ; $5785: $2e $99
    dec b                                         ; $5787: $05
    adc d                                         ; $5788: $8a
    rst $28                                       ; $5789: $ef
    ld e, l                                       ; $578a: $5d
    rlca                                          ; $578b: $07
    ld a, e                                       ; $578c: $7b
    sbc d                                         ; $578d: $9a
    adc e                                         ; $578e: $8b
    ld bc, $be9d                                  ; $578f: $01 $9d $be
    ld [hl], a                                    ; $5792: $77
    ld d, c                                       ; $5793: $51
    ld c, b                                       ; $5794: $48
    and [hl]                                      ; $5795: $a6
    db $f4                                        ; $5796: $f4
    dec a                                         ; $5797: $3d
    ld d, b                                       ; $5798: $50
    ld l, b                                       ; $5799: $68
    inc hl                                        ; $579a: $23
    ld h, e                                       ; $579b: $63
    xor b                                         ; $579c: $a8

jr_063_579d:
    cp e                                          ; $579d: $bb
    ld h, h                                       ; $579e: $64
    push de                                       ; $579f: $d5
    add hl, sp                                    ; $57a0: $39
    add hl, bc                                    ; $57a1: $09
    push bc                                       ; $57a2: $c5
    inc a                                         ; $57a3: $3c
    cp l                                          ; $57a4: $bd
    ld d, d                                       ; $57a5: $52

jr_063_57a6:
    jr nc, jr_063_57a6                            ; $57a6: $30 $fe

    jp nc, $f0a1                                  ; $57a8: $d2 $a1 $f0

    ld a, [hl]                                    ; $57ab: $7e
    or h                                          ; $57ac: $b4
    rst $00                                       ; $57ad: $c7
    jp hl                                         ; $57ae: $e9


    push af                                       ; $57af: $f5
    and b                                         ; $57b0: $a0
    ld a, [hl]                                    ; $57b1: $7e
    sbc a                                         ; $57b2: $9f
    ld a, [$15f9]                                 ; $57b3: $fa $f9 $15
    dec sp                                        ; $57b6: $3b
    rst $28                                       ; $57b7: $ef
    rla                                           ; $57b8: $17
    add a                                         ; $57b9: $87
    sbc b                                         ; $57ba: $98
    xor $14                                       ; $57bb: $ee $14
    and a                                         ; $57bd: $a7
    ld a, b                                       ; $57be: $78
    ld d, c                                       ; $57bf: $51
    ld c, b                                       ; $57c0: $48
    dec e                                         ; $57c1: $1d
    dec hl                                        ; $57c2: $2b
    inc d                                         ; $57c3: $14
    rst $20                                       ; $57c4: $e7
    ld [c], a                                     ; $57c5: $e2
    sub b                                         ; $57c6: $90
    ld e, [hl]                                    ; $57c7: $5e
    ld d, l                                       ; $57c8: $55
    sub h                                         ; $57c9: $94
    add [hl]                                      ; $57ca: $86
    jr c, @-$0f                                   ; $57cb: $38 $ef

jr_063_57cd:
    ld e, l                                       ; $57cd: $5d
    rlca                                          ; $57ce: $07
    ld l, e                                       ; $57cf: $6b
    ld d, b                                       ; $57d0: $50
    ld [hl], e                                    ; $57d1: $73
    sbc a                                         ; $57d2: $9f
    jr z, jr_063_5826                             ; $57d3: $28 $51

    or a                                          ; $57d5: $b7
    ret c                                         ; $57d6: $d8

    jp hl                                         ; $57d7: $e9


    and c                                         ; $57d8: $a1
    ld sp, hl                                     ; $57d9: $f9

jr_063_57da:
    ld a, [hl]                                    ; $57da: $7e
    ld bc, $f1ed                                  ; $57db: $01 $ed $f1
    rst $00                                       ; $57de: $c7
    ld d, l                                       ; $57df: $55
    and [hl]                                      ; $57e0: $a6
    dec sp                                        ; $57e1: $3b
    push bc                                       ; $57e2: $c5
    add hl, hl                                    ; $57e3: $29
    ld e, [hl]                                    ; $57e4: $5e
    inc d                                         ; $57e5: $14
    ld d, d                                       ; $57e6: $52
    rst $00                                       ; $57e7: $c7
    ld a, [bc]                                    ; $57e8: $0a
    push bc                                       ; $57e9: $c5
    add hl, sp                                    ; $57ea: $39
    rst $20                                       ; $57eb: $e7
    ld b, b                                       ; $57ec: $40
    add hl, hl                                    ; $57ed: $29
    rst $28                                       ; $57ee: $ef
    ld [hl], a                                    ; $57ef: $77
    ld b, $5c                                     ; $57f0: $06 $5c
    rst $10                                       ; $57f2: $d7
    jr z, jr_063_57da                             ; $57f3: $28 $e5

    ld c, $85                                     ; $57f5: $0e $85
    rst $28                                       ; $57f7: $ef
    rla                                           ; $57f8: $17
    sub a                                         ; $57f9: $97
    cp e                                          ; $57fa: $bb
    push bc                                       ; $57fb: $c5
    cp d                                          ; $57fc: $ba
    call z, Call_063_5039                         ; $57fd: $cc $39 $50
    jp z, $94ab                                   ; $5800: $ca $ab $94

    db $ec                                        ; $5803: $ec
    ld d, b                                       ; $5804: $50
    and [hl]                                      ; $5805: $a6
    ld a, [$c1cf]                                 ; $5806: $fa $cf $c1
    ld a, [hl]                                    ; $5809: $7e
    call nz, $da16                                ; $580a: $c4 $16 $da
    ld e, $cb                                     ; $580d: $1e $cb
    ret nc                                        ; $580f: $d0

    ld [hl-], a                                   ; $5810: $32
    rst $20                                       ; $5811: $e7
    ld d, h                                       ; $5812: $54
    rst $38                                       ; $5813: $ff
    jp hl                                         ; $5814: $e9


    db $f4                                        ; $5815: $f4
    inc l                                         ; $5816: $2c
    jr c, jr_063_57cd                             ; $5817: $38 $b4

    xor h                                         ; $5819: $ac
    push de                                       ; $581a: $d5
    ld c, l                                       ; $581b: $4d
    ld [hl], a                                    ; $581c: $77
    xor $f3                                       ; $581d: $ee $f3
    ld h, d                                       ; $581f: $62
    ld c, d                                       ; $5820: $4a
    ld a, [$017e]                                 ; $5821: $fa $7e $01
    rst $10                                       ; $5824: $d7
    pop bc                                        ; $5825: $c1

jr_063_5826:
    ld a, [de]                                    ; $5826: $1a
    call nc, $281c                                ; $5827: $d4 $1c $28
    push hl                                       ; $582a: $e5
    sub c                                         ; $582b: $91
    ld [hl], h                                    ; $582c: $74
    ld c, d                                       ; $582d: $4a
    ld l, a                                       ; $582e: $6f
    ld a, c                                       ; $582f: $79
    add sp, $67                                   ; $5830: $e8 $67
    dec [hl]                                      ; $5832: $35
    inc a                                         ; $5833: $3c

jr_063_5834:
    xor e                                         ; $5834: $ab
    ld c, h                                       ; $5835: $4c
    ld [hl], a                                    ; $5836: $77
    adc d                                         ; $5837: $8a
    ld d, e                                       ; $5838: $53
    cp h                                          ; $5839: $bc
    ld a, [bc]                                    ; $583a: $0a
    push bc                                       ; $583b: $c5
    add hl, sp                                    ; $583c: $39
    rst $20                                       ; $583d: $e7
    and d                                         ; $583e: $a2
    sub b                                         ; $583f: $90
    db $fc                                        ; $5840: $fc
    dec de                                        ; $5841: $1b
    db $ec                                        ; $5842: $ec
    ei                                            ; $5843: $fb
    dec b                                         ; $5844: $05
    rst $10                                       ; $5845: $d7
    pop bc                                        ; $5846: $c1
    sbc [hl]                                      ; $5847: $9e
    and $1a                                       ; $5848: $e6 $1a
    ld d, h                                       ; $584a: $54
    cp d                                          ; $584b: $ba
    rla                                           ; $584c: $17
    ld [$90a2], a                                 ; $584d: $ea $a2 $90
    xor e                                         ; $5850: $ab
    ld c, h                                       ; $5851: $4c
    ld [hl], a                                    ; $5852: $77
    adc d                                         ; $5853: $8a
    ld d, e                                       ; $5854: $53
    ld e, h                                       ; $5855: $5c
    rla                                           ; $5856: $17
    ld b, e                                       ; $5857: $43
    and a                                         ; $5858: $a7
    ei                                            ; $5859: $fb
    ld a, [hl]                                    ; $585a: $7e
    ld bc, $5487                                  ; $585b: $01 $87 $54
    adc b                                         ; $585e: $88
    dec l                                         ; $585f: $2d
    ld [hl], e                                    ; $5860: $73
    adc $bc                                       ; $5861: $ce $bc
    ld b, a                                       ; $5863: $47
    ld d, e                                       ; $5864: $53
    add hl, de                                    ; $5865: $19
    xor d                                         ; $5866: $aa
    ld e, d                                       ; $5867: $5a
    ld h, l                                       ; $5868: $65
    db $e3                                        ; $5869: $e3
    db $fd                                        ; $586a: $fd
    ld [bc], a                                    ; $586b: $02
    db $ed                                        ; $586c: $ed
    cp a                                          ; $586d: $bf
    inc h                                         ; $586e: $24
    jr nz, jr_063_58de                            ; $586f: $20 $6d

    push de                                       ; $5871: $d5
    jp c, $3577                                   ; $5872: $da $77 $35

    dec d                                         ; $5875: $15
    cp l                                          ; $5876: $bd
    ld [hl+], a                                   ; $5877: $22
    ld d, b                                       ; $5878: $50
    reti                                          ; $5879: $d9


    xor c                                         ; $587a: $a9
    ld a, l                                       ; $587b: $7d
    ld l, l                                       ; $587c: $6d
    sbc $17                                       ; $587d: $de $17

jr_063_587f:
    ld c, h                                       ; $587f: $4c
    adc a                                         ; $5880: $8f
    db $fc                                        ; $5881: $fc
    cp c                                          ; $5882: $b9
    ld d, [hl]                                    ; $5883: $56
    add [hl]                                      ; $5884: $86
    ld b, [hl]                                    ; $5885: $46
    rst $30                                       ; $5886: $f7
    db $e3                                        ; $5887: $e3
    cp h                                          ; $5888: $bc
    ld e, a                                       ; $5889: $5f
    rst $10                                       ; $588a: $d7
    ld e, c                                       ; $588b: $59
    ld a, b                                       ; $588c: $78
    and h                                         ; $588d: $a4
    di                                            ; $588e: $f3
    ld a, [hl]                                    ; $588f: $7e
    ld bc, $5c07                                  ; $5890: $01 $07 $5c
    ld b, [hl]                                    ; $5893: $46
    ld [hl], $1b                                  ; $5894: $36 $1b
    adc $81                                       ; $5896: $ce $81
    ld d, d                                       ; $5898: $52
    sbc $e7                                       ; $5899: $de $e7
    ld c, c                                       ; $589b: $49
    jr z, jr_063_5834                             ; $589c: $28 $96

    add hl, sp                                    ; $589e: $39
    and a                                         ; $589f: $a7
    jp nz, $98f3                                  ; $58a0: $c2 $f3 $98

    rst $00                                       ; $58a3: $c7
    ret nc                                        ; $58a4: $d0

    ld d, a                                       ; $58a5: $57
    push de                                       ; $58a6: $d5
    ld b, a                                       ; $58a7: $47
    ld l, e                                       ; $58a8: $6b
    ld a, a                                       ; $58a9: $7f
    ld bc, $0ad7                                  ; $58aa: $01 $d7 $0a
    ld a, [c]                                     ; $58ad: $f2
    cpl                                           ; $58ae: $2f
    sub [hl]                                      ; $58af: $96
    dec e                                         ; $58b0: $1d
    db $fc                                        ; $58b1: $fc
    dec a                                         ; $58b2: $3d
    ld a, [bc]                                    ; $58b3: $0a
    ld a, [de]                                    ; $58b4: $1a
    jp c, Jump_063_669e                           ; $58b5: $da $9e $66

    ld d, l                                       ; $58b8: $55
    cp [hl]                                       ; $58b9: $be
    rst $28                                       ; $58ba: $ef
    ei                                            ; $58bb: $fb
    dec b                                         ; $58bc: $05
    db $ed                                        ; $58bd: $ed
    pop af                                        ; $58be: $f1
    rst $00                                       ; $58bf: $c7
    ld d, l                                       ; $58c0: $55
    ld h, l                                       ; $58c1: $65
    or $d0                                        ; $58c2: $f6 $d0
    ld a, c                                       ; $58c4: $79
    adc $0b                                       ; $58c5: $ce $0b
    rlca                                          ; $58c7: $07
    ld a, a                                       ; $58c8: $7f
    adc a                                         ; $58c9: $8f
    add d                                         ; $58ca: $82
    ld h, [hl]                                    ; $58cb: $66
    dec h                                         ; $58cc: $25
    db $dd                                        ; $58cd: $dd
    ld e, b                                       ; $58ce: $58
    db $f4                                        ; $58cf: $f4
    ld a, c                                       ; $58d0: $79
    or b                                          ; $58d1: $b0
    rlca                                          ; $58d2: $07
    jp z, $bf1a                                   ; $58d3: $ca $1a $bf

    ld b, h                                       ; $58d6: $44
    ld sp, hl                                     ; $58d7: $f9
    rla                                           ; $58d8: $17
    add l                                         ; $58d9: $85
    call c, $f5e7                                 ; $58da: $dc $e7 $f5
    rra                                           ; $58dd: $1f

jr_063_58de:
    ld a, e                                       ; $58de: $7b
    sub l                                         ; $58df: $95
    ld e, $e2                                     ; $58e0: $1e $e2

jr_063_58e2:
    add l                                         ; $58e2: $85
    or d                                          ; $58e3: $b2
    ei                                            ; $58e4: $fb
    cp [hl]                                       ; $58e5: $be

jr_063_58e6:
    rst $00                                       ; $58e6: $c7
    db $f4                                        ; $58e7: $f4
    ld c, a                                       ; $58e8: $4f
    dec de                                        ; $58e9: $1b
    db $dd                                        ; $58ea: $dd
    ld h, l                                       ; $58eb: $65
    adc l                                         ; $58ec: $8d
    xor $78                                       ; $58ed: $ee $78
    dec h                                         ; $58ef: $25
    db $dd                                        ; $58f0: $dd
    jr nc, jr_063_58e2                            ; $58f1: $30 $ef

    ld b, a                                       ; $58f3: $47
    ld l, e                                       ; $58f4: $6b
    ld a, l                                       ; $58f5: $7d
    ld bc, $bf75                                  ; $58f6: $01 $75 $bf
    rst $10                                       ; $58f9: $d7
    pop bc                                        ; $58fa: $c1
    jr z, jr_063_587f                             ; $58fb: $28 $82

    jp hl                                         ; $58fd: $e9


    ld e, h                                       ; $58fe: $5c
    ld c, c                                       ; $58ff: $49
    cp l                                          ; $5900: $bd
    push de                                       ; $5901: $d5
    ld [hl], d                                    ; $5902: $72
    adc d                                         ; $5903: $8a
    rst $28                                       ; $5904: $ef
    ld e, l                                       ; $5905: $5d
    xor $18                                       ; $5906: $ee $18
    ld a, d                                       ; $5908: $7a
    rst $30                                       ; $5909: $f7
    ld b, d                                       ; $590a: $42
    ld e, c                                       ; $590b: $59
    cp e                                          ; $590c: $bb
    di                                            ; $590d: $f3
    add c                                         ; $590e: $81
    jr nz, @-$58                                  ; $590f: $20 $a6

    ld c, l                                       ; $5911: $4d
    add l                                         ; $5912: $85
    ld h, a                                       ; $5913: $67
    adc a                                         ; $5914: $8f
    ld [hl], c                                    ; $5915: $71
    rrca                                          ; $5916: $0f
    sub h                                         ; $5917: $94
    ld a, e                                       ; $5918: $7b
    db $ed                                        ; $5919: $ed
    ccf                                           ; $591a: $3f
    ld d, e                                       ; $591b: $53
    ld b, e                                       ; $591c: $43
    dec de                                        ; $591d: $1b
    ld [$cd2b], a                                 ; $591e: $ea $2b $cd
    call c, $dc63                                 ; $5921: $dc $63 $dc
    pop bc                                        ; $5924: $c1
    rst $18                                       ; $5925: $df
    and e                                         ; $5926: $a3
    and b                                         ; $5927: $a0
    ld e, c                                       ; $5928: $59
    jr z, jr_063_58e6                             ; $5929: $28 $bb

    ld h, $43                                     ; $592b: $26 $43
    db $f4                                        ; $592d: $f4
    dec hl                                        ; $592e: $2b
    rst $18                                       ; $592f: $df
    ld l, e                                       ; $5930: $6b
    or e                                          ; $5931: $b3
    inc c                                         ; $5932: $0c
    db $10                                        ; $5933: $10
    ld [bc], a                                    ; $5934: $02
    cpl                                           ; $5935: $2f
    ld l, d                                       ; $5936: $6a
    and $6a                                       ; $5937: $e6 $6a
    ld c, h                                       ; $5939: $4c
    ld c, c                                       ; $593a: $49
    and a                                         ; $593b: $a7
    rla                                           ; $593c: $17
    dec de                                        ; $593d: $1b
    rst $30                                       ; $593e: $f7
    ld a, c                                       ; $593f: $79
    ld d, l                                       ; $5940: $55
    dec h                                         ; $5941: $25
    push hl                                       ; $5942: $e5
    ld a, c                                       ; $5943: $79
    inc a                                         ; $5944: $3c
    add h                                         ; $5945: $84
    ld [hl], d                                    ; $5946: $72
    cp a                                          ; $5947: $bf
    add a                                         ; $5948: $87
    xor h                                         ; $5949: $ac
    ld a, l                                       ; $594a: $7d
    ld l, l                                       ; $594b: $6d
    and $3d                                       ; $594c: $e6 $3d
    call $94c5                                    ; $594e: $cd $c5 $94
    db $f4                                        ; $5951: $f4
    inc l                                         ; $5952: $2c
    inc h                                         ; $5953: $24
    sbc l                                         ; $5954: $9d
    sbc d                                         ; $5955: $9a
    ld [bc], a                                    ; $5956: $02
    ld d, d                                       ; $5957: $52
    inc l                                         ; $5958: $2c
    rst $30                                       ; $5959: $f7
    jp c, Jump_063_732c                           ; $595a: $da $2c $73

    ld c, $a9                                     ; $595d: $0e $a9
    xor b                                         ; $595f: $a8
    db $fd                                        ; $5960: $fd
    dec b                                         ; $5961: $05
    rst $20                                       ; $5962: $e7
    db $fd                                        ; $5963: $fd
    ld e, a                                       ; $5964: $5f
    ld c, d                                       ; $5965: $4a
    ld hl, $9249                                  ; $5966: $21 $49 $92
    call nc, $02fe                                ; $5969: $d4 $fe $02
    add a                                         ; $596c: $87
    scf                                           ; $596d: $37
    ret                                           ; $596e: $c9


    db $dd                                        ; $596f: $dd
    rst $30                                       ; $5970: $f7
    cp l                                          ; $5971: $bd
    ld a, [$d938]                                 ; $5972: $fa $38 $d9
    cp e                                          ; $5975: $bb
    rst $28                                       ; $5976: $ef
    ld a, e                                       ; $5977: $7b
    or b                                          ; $5978: $b0
    rlca                                          ; $5979: $07
    ld a, b                                       ; $597a: $78
    ld h, h                                       ; $597b: $64
    adc b                                         ; $597c: $88
    adc l                                         ; $597d: $8d
    rst $30                                       ; $597e: $f7
    ld a, l                                       ; $597f: $7d
    cp a                                          ; $5980: $bf
    db $ed                                        ; $5981: $ed
    pop af                                        ; $5982: $f1
    rst $00                                       ; $5983: $c7
    ld d, l                                       ; $5984: $55
    ld h, l                                       ; $5985: $65
    or $d0                                        ; $5986: $f6 $d0
    ld a, c                                       ; $5988: $79
    adc $0b                                       ; $5989: $ce $0b
    db $ed                                        ; $598b: $ed
    ld e, a                                       ; $598c: $5f
    and $5c                                       ; $598d: $e6 $5c
    ld c, h                                       ; $598f: $4c
    ld d, c                                       ; $5990: $51
    inc de                                        ; $5991: $13
    db $fd                                        ; $5992: $fd
    sbc $41                                       ; $5993: $de $41
    ldh [$c9], a                                  ; $5995: $e0 $c9
    adc a                                         ; $5997: $8f
    ld h, l                                       ; $5998: $65
    adc $5d                                       ; $5999: $ce $5d
    inc b                                         ; $599b: $04
    ld l, c                                       ; $599c: $69
    pop de                                        ; $599d: $d1
    ld [c], a                                     ; $599e: $e2
    ld a, e                                       ; $599f: $7b
    rst $10                                       ; $59a0: $d7
    pop bc                                        ; $59a1: $c1
    sbc [hl]                                      ; $59a2: $9e
    and $a2                                       ; $59a3: $e6 $a2
    and $10                                       ; $59a5: $e6 $10
    jp z, Jump_063_7a18                           ; $59a7: $ca $18 $7a

    db $e3                                        ; $59aa: $e3
    rla                                           ; $59ab: $17
    adc a                                         ; $59ac: $8f
    and c                                         ; $59ad: $a1
    xor a                                         ; $59ae: $af
    db $fd                                        ; $59af: $fd
    sub a                                         ; $59b0: $97
    inc b                                         ; $59b1: $04
    cp h                                          ; $59b2: $bc
    ld e, a                                       ; $59b3: $5f
    rst $10                                       ; $59b4: $d7
    ld e, c                                       ; $59b5: $59
    ld a, b                                       ; $59b6: $78
    rst $30                                       ; $59b7: $f7
    ld a, l                                       ; $59b8: $7d
    cpl                                           ; $59b9: $2f
    ld [hl], $0e                                  ; $59ba: $36 $0e
    push af                                       ; $59bc: $f5
    sub c                                         ; $59bd: $91
    pop af                                        ; $59be: $f1
    rst $00                                       ; $59bf: $c7
    and c                                         ; $59c0: $a1
    ld a, c                                       ; $59c1: $79
    adc $d5                                       ; $59c2: $ce $d5
    ldh a, [$8c]                                  ; $59c4: $f0 $8c
    db $fc                                        ; $59c6: $fc
    add hl, sp                                    ; $59c7: $39
    ld c, h                                       ; $59c8: $4c
    ld c, d                                       ; $59c9: $4a
    add e                                         ; $59ca: $83
    ld h, a                                       ; $59cb: $67
    ld hl, $d4e9                                  ; $59cc: $21 $e9 $d4
    inc d                                         ; $59cf: $14
    sub b                                         ; $59d0: $90
    ld h, d                                       ; $59d1: $62
    pop af                                        ; $59d2: $f1
    add hl, sp                                    ; $59d3: $39
    cpl                                           ; $59d4: $2f
    rla                                           ; $59d5: $17
    jp z, $786a                                   ; $59d6: $ca $6a $78

    ld d, $43                                     ; $59d9: $16 $43
    rra                                           ; $59db: $1f
    ld sp, hl                                     ; $59dc: $f9
    ld h, e                                       ; $59dd: $63
    rrca                                          ; $59de: $0f
    sbc l                                         ; $59df: $9d
    xor [hl]                                      ; $59e0: $ae
    ld l, e                                       ; $59e1: $6b
    db $f4                                        ; $59e2: $f4
    add b                                         ; $59e3: $80
    rst $30                                       ; $59e4: $f7
    adc $e3                                       ; $59e5: $ce $e3
    ld h, c                                       ; $59e7: $61
    add d                                         ; $59e8: $82
    ld d, d                                       ; $59e9: $52
    ld e, [hl]                                    ; $59ea: $5e
    and e                                         ; $59eb: $a3
    rlca                                          ; $59ec: $07
    inc [hl]                                      ; $59ed: $34
    adc a                                         ; $59ee: $8f
    inc c                                         ; $59ef: $0c
    dec e                                         ; $59f0: $1d
    sbc l                                         ; $59f1: $9d
    inc hl                                        ; $59f2: $23
    rst $38                                       ; $59f3: $ff
    inc sp                                        ; $59f4: $33
    ld e, b                                       ; $59f5: $58

jr_063_59f6:
    add a                                         ; $59f6: $87
    ret c                                         ; $59f7: $d8

    or h                                          ; $59f8: $b4
    ld d, l                                       ; $59f9: $55
    rst $30                                       ; $59fa: $f7
    jr c, @+$3e                                   ; $59fb: $38 $3c

    inc hl                                        ; $59fd: $23
    cp a                                          ; $59fe: $bf
    ld h, b                                       ; $59ff: $60
    rlca                                          ; $5a00: $07
    add hl, hl                                    ; $5a01: $29
    sub [hl]                                      ; $5a02: $96
    dec d                                         ; $5a03: $15
    ld l, d                                       ; $5a04: $6a
    adc [hl]                                      ; $5a05: $8e
    db $fc                                        ; $5a06: $fc
    rst $08                                       ; $5a07: $cf
    and d                                         ; $5a08: $a2
    sub b                                         ; $5a09: $90
    adc l                                         ; $5a0a: $8d
    cpl                                           ; $5a0b: $2f
    ld l, b                                       ; $5a0c: $68
    ld e, $43                                     ; $5a0d: $1e $43
    sbc a                                         ; $5a0f: $9f
    ld h, e                                       ; $5a10: $63
    jr z, jr_063_5a76                             ; $5a11: $28 $63

    ret nz                                        ; $5a13: $c0

    ld a, e                                       ; $5a14: $7b
    rlca                                          ; $5a15: $07
    dec l                                         ; $5a16: $2d
    inc hl                                        ; $5a17: $23
    cp a                                          ; $5a18: $bf
    adc h                                         ; $5a19: $8c
    inc sp                                        ; $5a1a: $33
    db $e4                                        ; $5a1b: $e4
    ld a, $8f                                     ; $5a1c: $3e $8f
    db $fc                                        ; $5a1e: $fc
    ld [hl-], a                                   ; $5a1f: $32
    db $10                                        ; $5a20: $10
    or h                                          ; $5a21: $b4
    xor h                                         ; $5a22: $ac
    ld d, e                                       ; $5a23: $53
    and h                                         ; $5a24: $a4
    ld a, b                                       ; $5a25: $78
    ld sp, $61f4                                  ; $5a26: $31 $f4 $61
    add d                                         ; $5a29: $82
    ld d, d                                       ; $5a2a: $52
    sbc [hl]                                      ; $5a2b: $9e
    add h                                         ; $5a2c: $84
    ld h, d                                       ; $5a2d: $62
    ld e, [hl]                                    ; $5a2e: $5e
    dec c                                         ; $5a2f: $0d
    rst $08                                       ; $5a30: $cf
    ld a, [bc]                                    ; $5a31: $0a
    call nz, $91ce                                ; $5a32: $c4 $ce $91
    rst $38                                       ; $5a35: $ff
    sbc c                                         ; $5a36: $99
    ld h, e                                       ; $5a37: $63
    jr z, jr_063_59f6                             ; $5a38: $28 $bc

    ld c, $f1                                     ; $5a3a: $0e $f1
    db $fd                                        ; $5a3c: $fd
    ld [bc], a                                    ; $5a3d: $02
    add a                                         ; $5a3e: $87
    call c, $88e3                                 ; $5a3f: $dc $e3 $88
    jp c, Jump_000_3b8b                           ; $5a42: $da $8b $3b

    sub h                                         ; $5a45: $94
    dec e                                         ; $5a46: $1d
    or a                                          ; $5a47: $b7
    sla b                                         ; $5a48: $cb $20
    xor [hl]                                      ; $5a4a: $ae
    xor $a0                                       ; $5a4b: $ee $a0
    ld a, [hl+]                                   ; $5a4d: $2a
    and h                                         ; $5a4e: $a4
    ld h, l                                       ; $5a4f: $65
    ld d, c                                       ; $5a50: $51
    cp $b5                                        ; $5a51: $fe $b5
    ld a, c                                       ; $5a53: $79
    rst $10                                       ; $5a54: $d7
    ld b, c                                       ; $5a55: $41
    ld [hl], l                                    ; $5a56: $75
    db $dd                                        ; $5a57: $dd
    ld hl, $68b6                                  ; $5a58: $21 $b6 $68
    rst $18                                       ; $5a5b: $df
    ld b, c                                       ; $5a5c: $41
    set 1, b                                      ; $5a5d: $cb $c8
    ret c                                         ; $5a5f: $d8

    rst $08                                       ; $5a60: $cf
    call nc, $c597                                ; $5a61: $d4 $97 $c5
    sub h                                         ; $5a64: $94
    db $f4                                        ; $5a65: $f4
    ld l, d                                       ; $5a66: $6a
    ld [hl], e                                    ; $5a67: $73
    add sp, -$26                                  ; $5a68: $e8 $da
    ld [hl], d                                    ; $5a6a: $72
    ld a, [hl]                                    ; $5a6b: $7e
    ld a, $e7                                     ; $5a6c: $3e $e7
    dec b                                         ; $5a6e: $05
    ld l, l                                       ; $5a6f: $6d
    sub [hl]                                      ; $5a70: $96
    push de                                       ; $5a71: $d5
    rst $38                                       ; $5a72: $ff
    inc a                                         ; $5a73: $3c
    ld e, [hl]                                    ; $5a74: $5e
    dec c                                         ; $5a75: $0d

jr_063_5a76:
    rst $08                                       ; $5a76: $cf
    inc h                                         ; $5a77: $24
    sub h                                         ; $5a78: $94
    xor $5d                                       ; $5a79: $ee $5d
    ld l, d                                       ; $5a7b: $6a
    pop hl                                        ; $5a7c: $e1
    xor a                                         ; $5a7d: $af
    and a                                         ; $5a7e: $a7

jr_063_5a7f:
    ld [hl], e                                    ; $5a7f: $73
    adc a                                         ; $5a80: $8f
    push bc                                       ; $5a81: $c5
    cp c                                          ; $5a82: $b9
    jr jr_063_5a7f                                ; $5a83: $18 $fa

    jr nc, jr_063_5ab0                            ; $5a85: $30 $29

    dec c                                         ; $5a87: $0d
    rrca                                          ; $5a88: $0f
    and c                                         ; $5a89: $a1
    call c, $b36b                                 ; $5a8a: $dc $6b $b3
    xor h                                         ; $5a8d: $ac
    cp $e7                                        ; $5a8e: $fe $e7
    pop af                                        ; $5a90: $f1
    ret nc                                        ; $5a91: $d0

    add hl, sp                                    ; $5a92: $39
    push de                                       ; $5a93: $d5
    dec [hl]                                      ; $5a94: $35
    ld d, d                                       ; $5a95: $52
    adc h                                         ; $5a96: $8c
    ld e, [hl]                                    ; $5a97: $5e
    add l                                         ; $5a98: $85
    ld [hl-], a                                   ; $5a99: $32
    add [hl]                                      ; $5a9a: $86
    cp [hl]                                       ; $5a9b: $be
    ld c, $b1                                     ; $5a9c: $0e $b1
    ld a, c                                       ; $5a9e: $79
    or l                                          ; $5a9f: $b5
    cp c                                          ; $5aa0: $b9
    ld c, [hl]                                    ; $5aa1: $4e
    sub c                                         ; $5aa2: $91
    ld [c], a                                     ; $5aa3: $e2
    add l                                         ; $5aa4: $85
    or d                                          ; $5aa5: $b2
    ret c                                         ; $5aa6: $d8

    jp nz, $af46                                  ; $5aa7: $c2 $46 $af

    push de                                       ; $5aaa: $d5
    call c, $c5e7                                 ; $5aab: $dc $e7 $c5
    ld d, $f4                                     ; $5aae: $16 $f4

jr_063_5ab0:
    sbc [hl]                                      ; $5ab0: $9e
    ld e, a                                       ; $5ab1: $5f
    jr c, @-$2c                                   ; $5ab2: $38 $d2

    dec sp                                        ; $5ab4: $3b

Jump_063_5ab5:
    adc [hl]                                      ; $5ab5: $8e
    and c                                         ; $5ab6: $a1
    scf                                           ; $5ab7: $37
    ld a, [hl]                                    ; $5ab8: $7e
    pop af                                        ; $5ab9: $f1
    db $fd                                        ; $5aba: $fd
    ld [bc], a                                    ; $5abb: $02
    rst $10                                       ; $5abc: $d7
    add l                                         ; $5abd: $85
    adc [hl]                                      ; $5abe: $8e
    ld a, [hl]                                    ; $5abf: $7e
    ld b, d                                       ; $5ac0: $42
    or d                                          ; $5ac1: $b2
    or $17                                        ; $5ac2: $f6 $17
    db $ed                                        ; $5ac4: $ed
    ccf                                           ; $5ac5: $3f
    ld d, e                                       ; $5ac6: $53
    and e                                         ; $5ac7: $a3
    ld a, l                                       ; $5ac8: $7d
    rla                                           ; $5ac9: $17
    and $d0                                       ; $5aca: $e6 $d0
    cp c                                          ; $5acc: $b9
    xor d                                         ; $5acd: $aa
    call z, $2843                                 ; $5ace: $cc $43 $28
    sub e                                         ; $5ad1: $93
    ld d, b                                       ; $5ad2: $50
    call z, $bce7                                 ; $5ad3: $cc $e7 $bc
    sub a                                         ; $5ad6: $97
    sbc e                                         ; $5ad7: $9b
    ld a, [hl]                                    ; $5ad8: $7e
    rst $28                                       ; $5ad9: $ef
    and b                                         ; $5ada: $a0
    ld h, l                                       ; $5adb: $65
    ld d, $92                                     ; $5adc: $16 $92
    ld c, [hl]                                    ; $5ade: $4e
    ld c, l                                       ; $5adf: $4d
    ld bc, $9629                                  ; $5ae0: $01 $29 $96
    and c                                         ; $5ae3: $a1
    inc sp                                        ; $5ae4: $33
    call nz, $39e9                                ; $5ae5: $c4 $e9 $39
    add a                                         ; $5ae8: $87
    ld d, h                                       ; $5ae9: $54
    cp h                                          ; $5aea: $bc
    ld e, a                                       ; $5aeb: $5f
    rlca                                          ; $5aec: $07
    ld e, h                                       ; $5aed: $5c
    or $34                                        ; $5aee: $f6 $34
    rla                                           ; $5af0: $17
    add l                                         ; $5af1: $85
    db $ec                                        ; $5af2: $ec
    rra                                           ; $5af3: $1f
    dec a                                         ; $5af4: $3d
    add h                                         ; $5af5: $84
    ld [hl-], a                                   ; $5af6: $32
    pop de                                        ; $5af7: $d1
    ld l, c                                       ; $5af8: $69
    ld l, e                                       ; $5af9: $6b
    rst $38                                       ; $5afa: $ff
    sbc c                                         ; $5afb: $99
    sbc d                                         ; $5afc: $9a
    ld a, e                                       ; $5afd: $7b
    ld l, l                                       ; $5afe: $6d
    ld a, [$839c]                                 ; $5aff: $fa $9c $83
    ld d, l                                       ; $5b02: $55
    ld d, b                                       ; $5b03: $50
    jp z, $1a49                                   ; $5b04: $ca $49 $1a

    daa                                           ; $5b07: $27
    ld a, [$2bbd]                                 ; $5b08: $fa $bd $2b
    jp z, $bd48                                   ; $5b0b: $ca $48 $bd

    ld a, [hl+]                                   ; $5b0e: $2a
    jp c, $786a                                   ; $5b0f: $da $6a $78

    ld e, $8f                                     ; $5b12: $1e $8f
    ld bc, $e39d                                  ; $5b14: $01 $9d $e3
    ld e, a                                       ; $5b17: $5f
    sbc h                                         ; $5b18: $9c
    xor e                                         ; $5b19: $ab
    ld c, h                                       ; $5b1a: $4c
    ld [hl], a                                    ; $5b1b: $77
    adc d                                         ; $5b1c: $8a
    ld d, e                                       ; $5b1d: $53
    cp h                                          ; $5b1e: $bc
    ret z                                         ; $5b1f: $c8

    db $f4                                        ; $5b20: $f4
    ld a, [hl]                                    ; $5b21: $7e
    cp a                                          ; $5b22: $bf
    sub a                                         ; $5b23: $97
    ld a, l                                       ; $5b24: $7d
    ld e, h                                       ; $5b25: $5c
    xor b                                         ; $5b26: $a8
    inc de                                        ; $5b27: $13
    ld a, l                                       ; $5b28: $7d
    or c                                          ; $5b29: $b1
    dec b                                         ; $5b2a: $05
    dec a                                         ; $5b2b: $3d
    sub d                                         ; $5b2c: $92
    xor $67                                       ; $5b2d: $ee $67
    ld d, b                                       ; $5b2f: $50
    inc l                                         ; $5b30: $2c
    rst $30                                       ; $5b31: $f7
    ld c, $b8                                     ; $5b32: $0e $b8
    adc h                                         ; $5b34: $8c
    xor c                                         ; $5b35: $a9
    cp c                                          ; $5b36: $b9
    sbc b                                         ; $5b37: $98
    add d                                         ; $5b38: $82
    add sp, -$4b                                  ; $5b39: $e8 $b5
    sbc d                                         ; $5b3b: $9a
    ei                                            ; $5b3c: $fb
    inc a                                         ; $5b3d: $3c
    db $f4                                        ; $5b3e: $f4
    cp [hl]                                       ; $5b3f: $be
    ld h, b                                       ; $5b40: $60
    ld a, d                                       ; $5b41: $7a
    cp a                                          ; $5b42: $bf
    ld [hl], a                                    ; $5b43: $77
    and a                                         ; $5b44: $a7
    pop de                                        ; $5b45: $d1
    ld [hl], e                                    ; $5b46: $73
    ld c, $9d                                     ; $5b47: $0e $9d
    rst $30                                       ; $5b49: $f7
    dec bc                                        ; $5b4a: $0b
    ld l, l                                       ; $5b4b: $6d
    and $c5                                       ; $5b4c: $e6 $c5
    ccf                                           ; $5b4e: $3f
    ld d, a                                       ; $5b4f: $57
    ld [bc], a                                    ; $5b50: $02
    ld a, [c]                                     ; $5b51: $f2
    ld a, $af                                     ; $5b52: $3e $af
    db $fd                                        ; $5b54: $fd
    sub a                                         ; $5b55: $97
    inc b                                         ; $5b56: $04
    ld e, h                                       ; $5b57: $5c
    db $f4                                        ; $5b58: $f4
    dec b                                         ; $5b59: $05
    ld a, c                                       ; $5b5a: $79
    ld [$b065], sp                                ; $5b5b: $08 $65 $b0
    xor d                                         ; $5b5e: $aa
    ld b, d                                       ; $5b5f: $42
    ld l, h                                       ; $5b60: $6c
    cp c                                          ; $5b61: $b9
    ld [hl], a                                    ; $5b62: $77
    cp c                                          ; $5b63: $b9
    cp [hl]                                       ; $5b64: $be
    and a                                         ; $5b65: $a7
    add hl, sp                                    ; $5b66: $39
    call nc, $ba47                                ; $5b67: $d4 $47 $ba
    ld [hl], a                                    ; $5b6a: $77
    and a                                         ; $5b6b: $a7
    ld d, a                                       ; $5b6c: $57
    sbc d                                         ; $5b6d: $9a
    ld b, e                                       ; $5b6e: $43
    ld c, b                                       ; $5b6f: $48
    dec hl                                        ; $5b70: $2b
    or $18                                        ; $5b71: $f6 $18
    ld a, d                                       ; $5b73: $7a
    db $e3                                        ; $5b74: $e3
    rla                                           ; $5b75: $17
    adc a                                         ; $5b76: $8f
    and c                                         ; $5b77: $a1
    rst $28                                       ; $5b78: $ef
    ld [c], a                                     ; $5b79: $e2
    call nc, Call_000_1144                        ; $5b7a: $d4 $44 $11
    ld [$bc86], sp                                ; $5b7d: $08 $86 $bc
    ld e, a                                       ; $5b80: $5f
    ld d, a                                       ; $5b81: $57
    inc a                                         ; $5b82: $3c
    and l                                         ; $5b83: $a5
    ld l, c                                       ; $5b84: $69
    ld b, c                                       ; $5b85: $41
    adc a                                         ; $5b86: $8f
    and c                                         ; $5b87: $a1
    scf                                           ; $5b88: $37
    ld a, [hl]                                    ; $5b89: $7e
    pop af                                        ; $5b8a: $f1
    ld h, b                                       ; $5b8b: $60
    push de                                       ; $5b8c: $d5
    ld d, d                                       ; $5b8d: $52
    ld l, b                                       ; $5b8e: $68
    cp e                                          ; $5b8f: $bb
    ld [hl-], a                                   ; $5b90: $32
    jr nc, jr_063_5bce                            ; $5b91: $30 $3b

    rst $28                                       ; $5b93: $ef
    rla                                           ; $5b94: $17
    ld l, l                                       ; $5b95: $6d
    ld a, [$9fc8]                                 ; $5b96: $fa $c8 $9f
    db $d3                                        ; $5b99: $d3
    or c                                          ; $5b9a: $b1
    ld [hl], d                                    ; $5b9b: $72
    db $d3                                        ; $5b9c: $d3
    inc a                                         ; $5b9d: $3c
    inc b                                         ; $5b9e: $04
    ld e, c                                       ; $5b9f: $59
    push hl                                       ; $5ba0: $e5
    db $fc                                        ; $5ba1: $fc
    ld de, $ed6d                                  ; $5ba2: $11 $6d $ed
    ccf                                           ; $5ba5: $3f
    ld d, e                                       ; $5ba6: $53
    ld [hl], e                                    ; $5ba7: $73
    rst $28                                       ; $5ba8: $ef
    ld [c], a                                     ; $5ba9: $e2
    and $10                                       ; $5baa: $e6 $10
    jp nc, $bd8a                                  ; $5bac: $d2 $8a $bd

    ret nc                                        ; $5baf: $d0

    ld a, [de]                                    ; $5bb0: $1a
    ld b, e                                       ; $5bb1: $43
    rst $18                                       ; $5bb2: $df
    push bc                                       ; $5bb3: $c5
    xor c                                         ; $5bb4: $a9
    adc c                                         ; $5bb5: $89
    ld [hl+], a                                   ; $5bb6: $22
    db $10                                        ; $5bb7: $10
    inc c                                         ; $5bb8: $0c
    ld a, c                                       ; $5bb9: $79
    cp a                                          ; $5bba: $bf
    rla                                           ; $5bbb: $17
    daa                                           ; $5bbc: $27
    ld d, h                                       ; $5bbd: $54
    ld [hl], e                                    ; $5bbe: $73
    ld l, d                                       ; $5bbf: $6a
    call nz, Call_000_0bf7                        ; $5bc0: $c4 $f7 $0b
    db $ed                                        ; $5bc3: $ed
    ccf                                           ; $5bc4: $3f
    ld d, e                                       ; $5bc5: $53
    ld b, e                                       ; $5bc6: $43
    dec de                                        ; $5bc7: $1b
    add hl, de                                    ; $5bc8: $19
    ld a, a                                       ; $5bc9: $7f
    ld e, h                                       ; $5bca: $5c
    ld d, l                                       ; $5bcb: $55
    ld h, [hl]                                    ; $5bcc: $66
    rrca                                          ; $5bcd: $0f

jr_063_5bce:
    sbc l                                         ; $5bce: $9d
    rst $20                                       ; $5bcf: $e7
    cp h                                          ; $5bd0: $bc
    rst $10                                       ; $5bd1: $d7
    add l                                         ; $5bd2: $85
    adc [hl]                                      ; $5bd3: $8e
    ld a, [hl]                                    ; $5bd4: $7e
    ld b, d                                       ; $5bd5: $42
    ld a, [c]                                     ; $5bd6: $f2
    sbc h                                         ; $5bd7: $9c
    add e                                         ; $5bd8: $83
    ld d, l                                       ; $5bd9: $55
    dec d                                         ; $5bda: $15
    ld h, d                                       ; $5bdb: $62
    dec bc                                        ; $5bdc: $0b
    ld l, l                                       ; $5bdd: $6d
    ld h, h                                       ; $5bde: $64
    inc e                                         ; $5bdf: $1c
    ld [hl], d                                    ; $5be0: $72
    db $e4                                        ; $5be1: $e4
    sub a                                         ; $5be2: $97
    push bc                                       ; $5be3: $c5
    ld d, $76                                     ; $5be4: $16 $76
    xor [hl]                                      ; $5be6: $ae
    push de                                       ; $5be7: $d5
    call c, $45e7                                 ; $5be8: $dc $e7 $45
    call $9f45                                    ; $5beb: $cd $45 $9f
    rlca                                          ; $5bee: $07
    ld l, e                                       ; $5bef: $6b
    di                                            ; $5bf0: $f3
    xor [hl]                                      ; $5bf1: $ae
    add e                                         ; $5bf2: $83
    ld [$43ba], a                                 ; $5bf3: $ea $ba $43
    ld l, h                                       ; $5bf6: $6c
    cp c                                          ; $5bf7: $b9
    ld [hl], a                                    ; $5bf8: $77
    ld b, l                                       ; $5bf9: $45
    add hl, de                                    ; $5bfa: $19
    db $dd                                        ; $5bfb: $dd
    ld h, l                                       ; $5bfc: $65
    sbc h                                         ; $5bfd: $9c
    ld hl, $79f7                                  ; $5bfe: $21 $f7 $79
    add a                                         ; $5c01: $87
    db $e4                                        ; $5c02: $e4
    or a                                          ; $5c03: $b7
    inc a                                         ; $5c04: $3c
    ld a, [c]                                     ; $5c05: $f2
    rst $20                                       ; $5c06: $e7
    jr c, jr_063_5c7e                             ; $5c07: $38 $75

    di                                            ; $5c09: $f3
    xor [hl]                                      ; $5c0a: $ae
    jp nc, $d321                                  ; $5c0b: $d2 $21 $d3

    cp l                                          ; $5c0e: $bd
    adc a                                         ; $5c0f: $8f
    and c                                         ; $5c10: $a1
    rst $28                                       ; $5c11: $ef
    di                                            ; $5c12: $f3
    ld c, b                                       ; $5c13: $48
    ld a, [hl-]                                   ; $5c14: $3a
    and l                                         ; $5c15: $a5
    or a                                          ; $5c16: $b7
    inc a                                         ; $5c17: $3c
    ld a, [c]                                     ; $5c18: $f2
    ccf                                           ; $5c19: $3f
    rst $30                                       ; $5c1a: $f7
    dec bc                                        ; $5c1b: $0b
    add a                                         ; $5c1c: $87
    and b                                         ; $5c1d: $a0
    inc c                                         ; $5c1e: $0c
    sub h                                         ; $5c1f: $94
    ld a, [c]                                     ; $5c20: $f2
    ret z                                         ; $5c21: $c8

    cpl                                           ; $5c22: $2f
    ld [hl], l                                    ; $5c23: $75
    ld a, [c]                                     ; $5c24: $f2
    ld h, e                                       ; $5c25: $63
    pop de                                        ; $5c26: $d1
    cp $02                                        ; $5c27: $fe $02
    sub a                                         ; $5c29: $97
    ld e, d                                       ; $5c2a: $5a
    ld hl, sp-$15                                 ; $5c2b: $f8 $eb
    ld l, c                                       ; $5c2d: $69
    reti                                          ; $5c2e: $d9


    ld b, l                                       ; $5c2f: $45
    sub b                                         ; $5c30: $90
    ld d, $2d                                     ; $5c31: $16 $2d
    ld e, [hl]                                    ; $5c33: $5e
    ld a, [de]                                    ; $5c34: $1a
    pop de                                        ; $5c35: $d1
    add sp, $3d                                   ; $5c36: $e8 $3d
    ld d, b                                       ; $5c38: $50
    or $58                                        ; $5c39: $f6 $58
    add [hl]                                      ; $5c3b: $86

jr_063_5c3c:
    sbc $17                                       ; $5c3c: $de $17
    ld c, h                                       ; $5c3e: $4c
    ld c, a                                       ; $5c3f: $4f
    ld e, c                                       ; $5c40: $59
    ld hl, sp-$15                                 ; $5c41: $f8 $eb
    jp hl                                         ; $5c43: $e9


    call c, Call_063_7163                         ; $5c44: $dc $63 $71
    xor $f3                                       ; $5c47: $ee $f3
    xor [hl]                                      ; $5c49: $ae
    dec bc                                        ; $5c4a: $0b
    dec e                                         ; $5c4b: $1d
    db $fd                                        ; $5c4c: $fd
    add h                                         ; $5c4d: $84
    db $e4                                        ; $5c4e: $e4
    push bc                                       ; $5c4f: $c5
    ret nc                                        ; $5c50: $d0

    rla                                           ; $5c51: $17

jr_063_5c52:
    dec [hl]                                      ; $5c52: $35
    ld b, a                                       ; $5c53: $47
    cp d                                          ; $5c54: $ba
    db $e3                                        ; $5c55: $e3
    jr jr_063_5c52                                ; $5c56: $18 $fa

    ld a, $0f                                     ; $5c58: $3e $0f
    sub e                                         ; $5c5a: $93
    jp nc, Jump_000_1ef0                          ; $5c5b: $d2 $f0 $1e

    jr z, @-$07                                   ; $5c5e: $28 $f7

    jp c, $abcc                                   ; $5c60: $da $cc $ab

    ld d, b                                       ; $5c63: $50
    sbc h                                         ; $5c64: $9c
    xor e                                         ; $5c65: $ab
    ld c, h                                       ; $5c66: $4c
    ld [hl], a                                    ; $5c67: $77
    adc d                                         ; $5c68: $8a
    ld d, e                                       ; $5c69: $53
    ld a, h                                       ; $5c6a: $7c
    cp a                                          ; $5c6b: $bf
    db $ed                                        ; $5c6c: $ed
    ld e, a                                       ; $5c6d: $5f
    ld d, $35                                     ; $5c6e: $16 $35
    ld [hl], e                                    ; $5c70: $73
    ld sp, hl                                     ; $5c71: $f9
    sbc a                                         ; $5c72: $9f
    or l                                          ; $5c73: $b5
    sbc d                                         ; $5c74: $9a
    dec bc                                        ; $5c75: $0b
    ld [hl], l                                    ; $5c76: $75
    cp a                                          ; $5c77: $bf
    ld [hl], a                                    ; $5c78: $77
    db $d3                                        ; $5c79: $d3
    ld b, [hl]                                    ; $5c7a: $46
    add $50                                       ; $5c7b: $c6 $50
    add a                                         ; $5c7d: $87

jr_063_5c7e:
    ld a, [$1d1a]                                 ; $5c7e: $fa $1a $1d
    ld h, d                                       ; $5c81: $62
    rst $20                                       ; $5c82: $e7
    ld h, d                                       ; $5c83: $62
    db $e3                                        ; $5c84: $e3
    ld e, $e3                                     ; $5c85: $1e $e3
    ld a, $4f                                     ; $5c87: $3e $4f
    jr z, jr_063_5c3c                             ; $5c89: $28 $b1

    ld a, b                                       ; $5c8b: $78
    db $e4                                        ; $5c8c: $e4
    sub a                                         ; $5c8d: $97
    ld a, [hl-]                                   ; $5c8e: $3a

jr_063_5c8f:
    ld sp, hl                                     ; $5c8f: $f9
    or c                                          ; $5c90: $b1
    ld l, b                                       ; $5c91: $68
    ld a, a                                       ; $5c92: $7f
    ld bc, $3fed                                  ; $5c93: $01 $ed $3f
    ld d, e                                       ; $5c96: $53
    ld b, e                                       ; $5c97: $43
    dec de                                        ; $5c98: $1b
    db $dd                                        ; $5c99: $dd
    ld h, l                                       ; $5c9a: $65
    db $e4                                        ; $5c9b: $e4
    rst $08                                       ; $5c9c: $cf
    sub c                                         ; $5c9d: $91
    call nc, $7de4                                ; $5c9e: $d4 $e4 $7d
    sbc $75                                       ; $5ca1: $de $75
    and c                                         ; $5ca3: $a1
    and e                                         ; $5ca4: $a3
    sbc a                                         ; $5ca5: $9f
    sub b                                         ; $5ca6: $90
    inc a                                         ; $5ca7: $3c
    rst $20                                       ; $5ca8: $e7
    ld a, [de]                                    ; $5ca9: $1a
    ld e, a                                       ; $5caa: $5f
    adc d                                         ; $5cab: $8a
    rla                                           ; $5cac: $17
    add l                                         ; $5cad: $85
    ld e, h                                       ; $5cae: $5c
    sbc e                                         ; $5caf: $9b
    cp $34                                        ; $5cb0: $fe $34
    cp d                                          ; $5cb2: $ba
    ld sp, $efa4                                  ; $5cb3: $31 $a4 $ef
    dec e                                         ; $5cb6: $1d
    ld l, d                                       ; $5cb7: $6a
    xor [hl]                                      ; $5cb8: $ae
    ld d, e                                       ; $5cb9: $53
    and h                                         ; $5cba: $a4
    ld a, b                                       ; $5cbb: $78
    db $e4                                        ; $5cbc: $e4
    sub a                                         ; $5cbd: $97
    add hl, sp                                    ; $5cbe: $39
    ld b, a                                       ; $5cbf: $47
    ld a, [hl-]                                   ; $5cc0: $3a
    rla                                           ; $5cc1: $17
    ld b, e                                       ; $5cc2: $43
    rra                                           ; $5cc3: $1f
    ld [$298b], a                                 ; $5cc4: $ea $8b $29
    jp hl                                         ; $5cc7: $e9


    ld d, l                                       ; $5cc8: $55
    ld d, b                                       ; $5cc9: $50
    jp z, $ef79                                   ; $5cca: $ca $79 $ef

    ld [hl], d                                    ; $5ccd: $72
    ld a, l                                       ; $5cce: $7d
    ld c, a                                       ; $5ccf: $4f
    ld [hl], e                                    ; $5cd0: $73
    ld sp, $748c                                  ; $5cd1: $31 $8c $74
    rst $28                                       ; $5cd4: $ef
    ld c, [hl]                                    ; $5cd5: $4e
    xor a                                         ; $5cd6: $af
    ld a, d                                       ; $5cd7: $7a
    sbc a                                         ; $5cd8: $9f
    rla                                           ; $5cd9: $17
    dec [hl]                                      ; $5cda: $35
    daa                                           ; $5cdb: $27
    and c                                         ; $5cdc: $a1
    sbc b                                         ; $5cdd: $98
    ld d, a                                       ; $5cde: $57
    xor c                                         ; $5cdf: $a9
    or c                                          ; $5ce0: $b1
    call c, Call_000_072f                         ; $5ce1: $dc $2f $07
    ld b, c                                       ; $5ce4: $41
    and [hl]                                      ; $5ce5: $a6
    ld d, a                                       ; $5ce6: $57
    adc l                                         ; $5ce7: $8d
    ld [hl], h                                    ; $5ce8: $74
    jr z, jr_063_5c8f                             ; $5ce9: $28 $a4

    or c                                          ; $5ceb: $b1
    xor d                                         ; $5cec: $aa
    rst $18                                       ; $5ced: $df
    ld l, d                                       ; $5cee: $6a

Call_063_5cef:
    ld a, c                                       ; $5cef: $79
    rst $30                                       ; $5cf0: $f7
    ld a, l                                       ; $5cf1: $7d
    rrca                                          ; $5cf2: $0f
    dec l                                         ; $5cf3: $2d
    ld [hl], e                                    ; $5cf4: $73
    ld c, [hl]                                    ; $5cf5: $4e
    add l                                         ; $5cf6: $85
    rst $20                                       ; $5cf7: $e7
    ld sp, $a18f                                  ; $5cf8: $31 $8f $a1
    scf                                           ; $5cfb: $37
    ld a, [hl]                                    ; $5cfc: $7e
    or c                                          ; $5cfd: $b1
    or $5d                                        ; $5cfe: $f6 $5d
    ld d, c                                       ; $5d00: $51
    add [hl]                                      ; $5d01: $86
    adc $39                                       ; $5d02: $ce $39
    ld h, a                                       ; $5d04: $67
    ld e, c                                       ; $5d05: $59
    dec [hl]                                      ; $5d06: $35
    and d                                         ; $5d07: $a2
    ei                                            ; $5d08: $fb
    ld h, d                                       ; $5d09: $62

jr_063_5d0a:
    db $e3                                        ; $5d0a: $e3
    ret nc                                        ; $5d0b: $d0

    ld [hl], d                                    ; $5d0c: $72
    cp a                                          ; $5d0d: $bf
    rla                                           ; $5d0e: $17
    add l                                         ; $5d0f: $85
    sbc h                                         ; $5d10: $9c
    ld h, l                                       ; $5d11: $65
    dec d                                         ; $5d12: $15
    sub h                                         ; $5d13: $94
    ld [hl], d                                    ; $5d14: $72
    sub d                                         ; $5d15: $92
    add $ba                                       ; $5d16: $c6 $ba
    xor d                                         ; $5d18: $aa
    inc [hl]                                      ; $5d19: $34
    dec e                                         ; $5d1a: $1d
    rst $28                                       ; $5d1b: $ef
    rla                                           ; $5d1c: $17
    rla                                           ; $5d1d: $17
    add c                                         ; $5d1e: $81
    ldh [$da], a                                  ; $5d1f: $e0 $da
    ld a, a                                       ; $5d21: $7f
    ld c, c                                       ; $5d22: $49
    ret nz                                        ; $5d23: $c0

    pop bc                                        ; $5d24: $c1
    ld l, $4e                                     ; $5d25: $2e $4e
    sub b                                         ; $5d27: $90
    ld [de], a                                    ; $5d28: $12
    sbc b                                         ; $5d29: $98
    db $eb                                        ; $5d2a: $eb
    and d                                         ; $5d2b: $a2
    sub b                                         ; $5d2c: $90
    db $e4                                        ; $5d2d: $e4
    rst $28                                       ; $5d2e: $ef
    rst $30                                       ; $5d2f: $f7
    dec bc                                        ; $5d30: $0b
    sub a                                         ; $5d31: $97
    ld d, d                                       ; $5d32: $52
    dec de                                        ; $5d33: $1b
    adc e                                         ; $5d34: $8b
    ld b, d                                       ; $5d35: $42
    ld d, [hl]                                    ; $5d36: $56
    adc l                                         ; $5d37: $8d
    add b                                         ; $5d38: $80
    inc d                                         ; $5d39: $14
    rst $20                                       ; $5d3a: $e7
    db $fd                                        ; $5d3b: $fd
    ld [bc], a                                    ; $5d3c: $02
    add a                                         ; $5d3d: $87
    jr jr_063_5d0a                                ; $5d3e: $18 $ca

    ld e, d                                       ; $5d40: $5a
    call Call_000_2871                            ; $5d41: $cd $71 $28
    and $fb                                       ; $5d44: $e6 $fb
    dec b                                         ; $5d46: $05
    rla                                           ; $5d47: $17
    add c                                         ; $5d48: $81
    ldh [$ae], a                                  ; $5d49: $e0 $ae
    ld c, $b2                                     ; $5d4b: $0e $b2
    ld d, [hl]                                    ; $5d4d: $56
    ld [hl], e                                    ; $5d4e: $73
    inc e                                         ; $5d4f: $1c
    adc d                                         ; $5d50: $8a
    ld sp, hl                                     ; $5d51: $f9
    ld a, [hl]                                    ; $5d52: $7e
    ld bc, $a697                                  ; $5d53: $01 $97 $a6
    ld b, $eb                                     ; $5d56: $06 $eb
    ld a, [hl+]                                   ; $5d58: $2a
    push de                                       ; $5d59: $d5
    or d                                          ; $5d5a: $b2
    rla                                           ; $5d5b: $17
    rst $10                                       ; $5d5c: $d7
    db $fc                                        ; $5d5d: $fc
    ld [hl-], a                                   ; $5d5e: $32
    add [hl]                                      ; $5d5f: $86
    cp [hl]                                       ; $5d60: $be
    or $50                                        ; $5d61: $f6 $50
    adc b                                         ; $5d63: $88
    db $fd                                        ; $5d64: $fd
    db $e4                                        ; $5d65: $e4
    ld a, d                                       ; $5d66: $7a
    cp a                                          ; $5d67: $bf
    rst $20                                       ; $5d68: $e7
    ld [hl], a                                    ; $5d69: $77
    adc b                                         ; $5d6a: $88
    rla                                           ; $5d6b: $17
    add l                                         ; $5d6c: $85
    ld b, h                                       ; $5d6d: $44
    ld [hl], a                                    ; $5d6e: $77
    cp [hl]                                       ; $5d6f: $be
    ld e, a                                       ; $5d70: $5f
    rla                                           ; $5d71: $17
    add c                                         ; $5d72: $81
    ldh [rOCPS], a                                ; $5d73: $e0 $6a
    adc b                                         ; $5d75: $88
    ld e, l                                       ; $5d76: $5d
    ld a, a                                       ; $5d77: $7f
    or a                                          ; $5d78: $b7
    call c, $d72f                                 ; $5d79: $dc $2f $d7
    db $fc                                        ; $5d7c: $fc
    ld [hl-], a                                   ; $5d7d: $32
    add [hl]                                      ; $5d7e: $86
    ld a, $77                                     ; $5d7f: $3e $77
    ld d, b                                       ; $5d81: $50
    dec d                                         ; $5d82: $15
    sub d                                         ; $5d83: $92
    pop hl                                        ; $5d84: $e1
    pop af                                        ; $5d85: $f1
    db $fd                                        ; $5d86: $fd
    ld [bc], a                                    ; $5d87: $02
    rla                                           ; $5d88: $17
    add c                                         ; $5d89: $81
    ldh [rLCDC], a                                ; $5d8a: $e0 $40
    ld c, d                                       ; $5d8c: $4a
    ld a, [de]                                    ; $5d8d: $1a
    pop bc                                        ; $5d8e: $c1
    ld d, d                                       ; $5d8f: $52
    sbc l                                         ; $5d90: $9d
    ld [c], a                                     ; $5d91: $e2
    ld sp, $1df4                                  ; $5d92: $31 $f4 $1d
    sub d                                         ; $5d95: $92
    rst $18                                       ; $5d96: $df
    ld a, [c]                                     ; $5d97: $f2
    db $fd                                        ; $5d98: $fd
    ld [bc], a                                    ; $5d99: $02
    ld a, e                                       ; $5d9a: $7b
    ld bc, $7d17                                  ; $5d9b: $01 $17 $7d
    add hl, hl                                    ; $5d9e: $29

jr_063_5d9f:
    ld b, e                                       ; $5d9f: $43
    bit 4, d                                      ; $5da0: $cb $62
    ld [$ccdd], sp                                ; $5da2: $08 $dd $cc
    sbc [hl]                                      ; $5da5: $9e
    ld a, [$7202]                                 ; $5da6: $fa $02 $72
    cp a                                          ; $5da9: $bf
    rla                                           ; $5daa: $17
    add c                                         ; $5dab: $81
    ldh [$4e], a                                  ; $5dac: $e0 $4e

jr_063_5dae:
    dec de                                        ; $5dae: $1b
    ld c, b                                       ; $5daf: $48
    ld c, c                                       ; $5db0: $49
    inc hl                                        ; $5db1: $23
    ld e, b                                       ; $5db2: $58
    xor d                                         ; $5db3: $aa
    ld [hl], e                                    ; $5db4: $73
    inc c                                         ; $5db5: $0c
    ld a, l                                       ; $5db6: $7d
    rst $20                                       ; $5db7: $e7
    rlca                                          ; $5db8: $07
    cp $02                                        ; $5db9: $fe $02
    ld [$017e], a                                 ; $5dbb: $ea $7e $01
    rla                                           ; $5dbe: $17
    add c                                         ; $5dbf: $81
    ldh [$4e], a                                  ; $5dc0: $e0 $4e
    dec de                                        ; $5dc2: $1b
    ld c, b                                       ; $5dc3: $48
    ld c, c                                       ; $5dc4: $49
    inc hl                                        ; $5dc5: $23
    ld e, b                                       ; $5dc6: $58
    xor d                                         ; $5dc7: $aa
    ld [hl], e                                    ; $5dc8: $73
    inc c                                         ; $5dc9: $0c
    ld a, l                                       ; $5dca: $7d
    rst $20                                       ; $5dcb: $e7
    rlca                                          ; $5dcc: $07
    cp $02                                        ; $5dcd: $fe $02
    ld [$017e], a                                 ; $5dcf: $ea $7e $01
    ld a, e                                       ; $5dd2: $7b
    ld bc, $017b                                  ; $5dd3: $01 $7b $01
    rla                                           ; $5dd6: $17
    add c                                         ; $5dd7: $81
    ldh [rNR23], a                                ; $5dd8: $e0 $18
    ld e, $cb                                     ; $5dda: $1e $cb
    ld h, b                                       ; $5ddc: $60
    rla                                           ; $5ddd: $17
    add l                                         ; $5dde: $85
    xor h                                         ; $5ddf: $ac
    pop af                                        ; $5de0: $f1
    rst $08                                       ; $5de1: $cf
    dec a                                         ; $5de2: $3d
    ld bc, $9077                                  ; $5de3: $01 $77 $90
    sbc d                                         ; $5de6: $9a
    jp z, Jump_063_775c                           ; $5de7: $ca $5c $77

Call_063_5dea:
    ld l, c                                       ; $5dea: $69
    ld d, d                                       ; $5deb: $52
    ld [hl+], a                                   ; $5dec: $22
    halt                                          ; $5ded: $76
    sbc $2f                                       ; $5dee: $de $2f
    ld d, a                                       ; $5df0: $57
    or h                                          ; $5df1: $b4
    ld c, b                                       ; $5df2: $48
    ld c, d                                       ; $5df3: $4a
    inc a                                         ; $5df4: $3c
    inc b                                         ; $5df5: $04
    ld e, c                                       ; $5df6: $59
    inc d                                         ; $5df7: $14
    or d                                          ; $5df8: $b2
    pop af                                        ; $5df9: $f1
    dec b                                         ; $5dfa: $05
    db $dd                                        ; $5dfb: $dd
    xor e                                         ; $5dfc: $ab
    rst $28                                       ; $5dfd: $ef
    rla                                           ; $5dfe: $17
    ld a, e                                       ; $5dff: $7b
    ld bc, $8117                                  ; $5e00: $01 $17 $81
    ldh [$9c], a                                  ; $5e03: $e0 $9c
    jr nz, jr_063_5d9f                            ; $5e05: $20 $98

    jr nz, jr_063_5dae                            ; $5e07: $20 $a5

    ld a, [hl+]                                   ; $5e09: $2a
    cp l                                          ; $5e0a: $bd
    ld [hl], h                                    ; $5e0b: $74
    set 7, l                                      ; $5e0c: $cb $fd
    ld [bc], a                                    ; $5e0e: $02
    ld a, e                                       ; $5e0f: $7b
    ld bc, $017b                                  ; $5e10: $01 $7b $01
    rst $10                                       ; $5e13: $d7
    ld e, c                                       ; $5e14: $59
    ld [hl], b                                    ; $5e15: $70
    inc c                                         ; $5e16: $0c
    cp l                                          ; $5e17: $bd
    pop af                                        ; $5e18: $f1
    adc e                                         ; $5e19: $8b
    rst $00                                       ; $5e1a: $c7
    ret nc                                        ; $5e1b: $d0

    rst $00                                       ; $5e1c: $c7
    ldh a, [$58]                                  ; $5e1d: $f0 $58
    ld b, $3b                                     ; $5e1f: $06 $3b
    ld hl, sp+$0b                                 ; $5e21: $f8 $0b
    ld e, b                                       ; $5e23: $58
    ld [$a1da], a                                 ; $5e24: $ea $da $a1
    ld [hl], d                                    ; $5e27: $72
    ld c, b                                       ; $5e28: $48
    ldh a, [$fd]                                  ; $5e29: $f0 $fd
    ld [bc], a                                    ; $5e2b: $02
    rla                                           ; $5e2c: $17
    add c                                         ; $5e2d: $81
    ldh [rHDMA4], a                               ; $5e2e: $e0 $54
    ld c, b                                       ; $5e30: $48
    ld [hl], $ef                                  ; $5e31: $36 $ef
    ld sp, $52ee                                  ; $5e33: $31 $ee $52
    ld c, b                                       ; $5e36: $48
    push hl                                       ; $5e37: $e5
    ei                                            ; $5e38: $fb
    dec b                                         ; $5e39: $05
    rla                                           ; $5e3a: $17
    add c                                         ; $5e3b: $81
    ldh [rHDMA4], a                               ; $5e3c: $e0 $54
    ld c, b                                       ; $5e3e: $48
    ld [hl], $ef                                  ; $5e3f: $36 $ef
    ld sp, $52ee                                  ; $5e41: $31 $ee $52
    ld c, b                                       ; $5e44: $48
    push hl                                       ; $5e45: $e5
    ei                                            ; $5e46: $fb
    dec b                                         ; $5e47: $05
    ld a, e                                       ; $5e48: $7b
    ld bc, $017b                                  ; $5e49: $01 $7b $01
    ld a, e                                       ; $5e4c: $7b
    ld bc, $59d7                                  ; $5e4d: $01 $d7 $59
    ld [hl], b                                    ; $5e50: $70
    inc c                                         ; $5e51: $0c

jr_063_5e52:
    cp l                                          ; $5e52: $bd
    pop af                                        ; $5e53: $f1
    adc e                                         ; $5e54: $8b
    rst $00                                       ; $5e55: $c7
    ret nc                                        ; $5e56: $d0

    rst $00                                       ; $5e57: $c7
    ldh a, [$58]                                  ; $5e58: $f0 $58
    ld b, $3b                                     ; $5e5a: $06 $3b
    ld hl, sp+$0b                                 ; $5e5c: $f8 $0b
    ld e, b                                       ; $5e5e: $58
    ld [$a1da], a                                 ; $5e5f: $ea $da $a1
    ld [hl], d                                    ; $5e62: $72
    ld c, b                                       ; $5e63: $48
    ldh a, [$fd]                                  ; $5e64: $f0 $fd
    ld [bc], a                                    ; $5e66: $02
    ld a, e                                       ; $5e67: $7b
    ld bc, $017b                                  ; $5e68: $01 $7b $01
    ld a, e                                       ; $5e6b: $7b
    ld bc, $017b                                  ; $5e6c: $01 $7b $01
    ld a, e                                       ; $5e6f: $7b
    ld bc, $017b                                  ; $5e70: $01 $7b $01
    ld a, e                                       ; $5e73: $7b
    ld bc, $017b                                  ; $5e74: $01 $7b $01
    rlca                                          ; $5e77: $07
    xor c                                         ; $5e78: $a9
    cp b                                          ; $5e79: $b8
    or [hl]                                       ; $5e7a: $b6
    db $fc                                        ; $5e7b: $fc
    ld b, h                                       ; $5e7c: $44
    jp Jump_000_02fd                              ; $5e7d: $c3 $fd $02


    rla                                           ; $5e80: $17
    scf                                           ; $5e81: $37

jr_063_5e82:
    rst $00                                       ; $5e82: $c7
    ret nc                                        ; $5e83: $d0

    ld [hl], a                                    ; $5e84: $77
    ld c, l                                       ; $5e85: $4d
    add [hl]                                      ; $5e86: $86
    adc b                                         ; $5e87: $88
    jp nc, $fa83                                  ; $5e88: $d2 $83 $fa

    db $dd                                        ; $5e8b: $dd
    ld a, h                                       ; $5e8c: $7c
    cp a                                          ; $5e8d: $bf
    rla                                           ; $5e8e: $17
    scf                                           ; $5e8f: $37
    rst $00                                       ; $5e90: $c7
    ret nc                                        ; $5e91: $d0

    dec de                                        ; $5e92: $1b
    cp a                                          ; $5e93: $bf
    ld a, b                                       ; $5e94: $78
    inc c                                         ; $5e95: $0c
    ld a, l                                       ; $5e96: $7d
    rla                                           ; $5e97: $17
    and a                                         ; $5e98: $a7
    ld h, $8a                                     ; $5e99: $26 $8a
    ld b, b                                       ; $5e9b: $40
    jr nc, jr_063_5e82                            ; $5e9c: $30 $e4

    db $fd                                        ; $5e9e: $fd
    ld [bc], a                                    ; $5e9f: $02
    ld a, e                                       ; $5ea0: $7b
    ld bc, $017b                                  ; $5ea1: $01 $7b $01
    ld a, e                                       ; $5ea4: $7b
    ld bc, $017b                                  ; $5ea5: $01 $7b $01
    ld a, e                                       ; $5ea8: $7b
    ld bc, $017b                                  ; $5ea9: $01 $7b $01
    ld a, e                                       ; $5eac: $7b
    ld bc, $017b                                  ; $5ead: $01 $7b $01
    ld a, e                                       ; $5eb0: $7b
    ld bc, $017b                                  ; $5eb1: $01 $7b $01
    add a                                         ; $5eb4: $87
    sbc d                                         ; $5eb5: $9a
    cp c                                          ; $5eb6: $b9
    halt                                          ; $5eb7: $76
    rst $20                                       ; $5eb8: $e7
    inc bc                                        ; $5eb9: $03
    ld b, c                                       ; $5eba: $41
    ld e, h                                       ; $5ebb: $5c
    rla                                           ; $5ebc: $17
    ld d, c                                       ; $5ebd: $51
    cp e                                          ; $5ebe: $bb
    ld a, e                                       ; $5ebf: $7b
    ld [hl], l                                    ; $5ec0: $75
    sbc $2f                                       ; $5ec1: $de $2f
    ld d, a                                       ; $5ec3: $57
    dec de                                        ; $5ec4: $1b
    rst $10                                       ; $5ec5: $d7
    xor $7c                                       ; $5ec6: $ee $7c
    jr nz, jr_063_5e52                            ; $5ec8: $20 $88

    rla                                           ; $5eca: $17
    push hl                                       ; $5ecb: $e5
    rra                                           ; $5ecc: $1f
    ld h, a                                       ; $5ecd: $67
    add sp, $78                                   ; $5ece: $e8 $78
    cp a                                          ; $5ed0: $bf
    rla                                           ; $5ed1: $17
    scf                                           ; $5ed2: $37

jr_063_5ed3:
    rst $00                                       ; $5ed3: $c7
    ret nc                                        ; $5ed4: $d0

    rst $10                                       ; $5ed5: $d7
    cp $4b                                        ; $5ed6: $fe $4b
    ld [bc], a                                    ; $5ed8: $02
    sub $91                                       ; $5ed9: $d6 $91
    ld a, [de]                                    ; $5edb: $1a
    ld h, [hl]                                    ; $5edc: $66
    rst $18                                       ; $5edd: $df
    cpl                                           ; $5ede: $2f
    rla                                           ; $5edf: $17
    scf                                           ; $5ee0: $37
    rst $00                                       ; $5ee1: $c7
    ret nc                                        ; $5ee2: $d0

    dec de                                        ; $5ee3: $1b
    cp a                                          ; $5ee4: $bf
    ld a, b                                       ; $5ee5: $78
    inc c                                         ; $5ee6: $0c
    ld a, l                                       ; $5ee7: $7d
    rla                                           ; $5ee8: $17
    and a                                         ; $5ee9: $a7
    ld h, $8a                                     ; $5eea: $26 $8a
    ld b, b                                       ; $5eec: $40
    jr nc, jr_063_5ed3                            ; $5eed: $30 $e4

    db $fd                                        ; $5eef: $fd
    ld [bc], a                                    ; $5ef0: $02
    rlca                                          ; $5ef1: $07
    inc bc                                        ; $5ef2: $03
    ld a, [c]                                     ; $5ef3: $f2
    cpl                                           ; $5ef4: $2f
    and e                                         ; $5ef5: $a3
    db $eb                                        ; $5ef6: $eb
    db $dd                                        ; $5ef7: $dd
    push hl                                       ; $5ef8: $e5
    rst $00                                       ; $5ef9: $c7
    adc $bd                                       ; $5efa: $ce $bd
    rst $10                                       ; $5efc: $d7
    ld a, [bc]                                    ; $5efd: $0a
    ld a, [hl-]                                   ; $5efe: $3a
    dec hl                                        ; $5eff: $2b
    or l                                          ; $5f00: $b5
    db $ec                                        ; $5f01: $ec
    or c                                          ; $5f02: $b1
    call nc, Call_000_3ea1                        ; $5f03: $d4 $a1 $3e
    rst $20                                       ; $5f06: $e7
    db $f4                                        ; $5f07: $f4
    xor d                                         ; $5f08: $aa
    sub c                                         ; $5f09: $91
    ld c, $e5                                     ; $5f0a: $0e $e5
    ld a, [hl]                                    ; $5f0c: $7e
    ld bc, $017b                                  ; $5f0d: $01 $7b $01
    add a                                         ; $5f10: $87
    ld a, [hl-]                                   ; $5f11: $3a
    or h                                          ; $5f12: $b4
    ld d, $53                                     ; $5f13: $16 $53
    call nc, $fca2                                ; $5f15: $d4 $a2 $fc
    ld l, e                                       ; $5f18: $6b
    ld b, b                                       ; $5f19: $40
    and e                                         ; $5f1a: $a3
    ld b, e                                       ; $5f1b: $43
    ld h, b                                       ; $5f1c: $60
    dec hl                                        ; $5f1d: $2b
    di                                            ; $5f1e: $f3
    db $fd                                        ; $5f1f: $fd
    ld [bc], a                                    ; $5f20: $02

Jump_063_5f21:
    ld a, e                                       ; $5f21: $7b
    ld bc, $8117                                  ; $5f22: $01 $17 $81
    ldh [$da], a                                  ; $5f25: $e0 $da
    sub d                                         ; $5f27: $92
    ld a, [$ae3c]                                 ; $5f28: $fa $3c $ae
    dec l                                         ; $5f2b: $2d
    db $d3                                        ; $5f2c: $d3
    cp e                                          ; $5f2d: $bb
    ld sp, hl                                     ; $5f2e: $f9
    ld a, [hl]                                    ; $5f2f: $7e
    ld bc, $017b                                  ; $5f30: $01 $7b $01
    db $ed                                        ; $5f33: $ed
    call nc, Call_063_785c                        ; $5f34: $d4 $5c $78
    halt                                          ; $5f37: $76
    ld a, c                                       ; $5f38: $79
    ret z                                         ; $5f39: $c8

    add [hl]                                      ; $5f3a: $86
    sub e                                         ; $5f3b: $93
    rst $28                                       ; $5f3c: $ef
    rla                                           ; $5f3d: $17
    ld a, e                                       ; $5f3e: $7b
    ld bc, $8117                                  ; $5f3f: $01 $17 $81
    ldh [rOBP0], a                                ; $5f42: $e0 $48
    xor d                                         ; $5f44: $aa
    call nc, $f431                                ; $5f45: $d4 $31 $f4
    ld e, l                                       ; $5f48: $5d
    ld e, $b2                                     ; $5f49: $1e $b2
    pop hl                                        ; $5f4b: $e1
    db $e4                                        ; $5f4c: $e4
    ei                                            ; $5f4d: $fb
    dec b                                         ; $5f4e: $05
    rla                                           ; $5f4f: $17
    ld a, l                                       ; $5f50: $7d
    add hl, hl                                    ; $5f51: $29
    cp e                                          ; $5f52: $bb

Call_063_5f53:
Jump_063_5f53:
    inc a                                         ; $5f53: $3c
    ld h, h                                       ; $5f54: $64
    jp $f7c9                                      ; $5f55: $c3 $c9 $f7


    dec bc                                        ; $5f58: $0b
    rla                                           ; $5f59: $17
    ld d, c                                       ; $5f5a: $51
    ld [hl], e                                    ; $5f5b: $73
    sub a                                         ; $5f5c: $97
    add a                                         ; $5f5d: $87
    ld l, h                                       ; $5f5e: $6c
    jr c, @+$7b                                   ; $5f5f: $38 $79

    inc c                                         ; $5f61: $0c
    ld a, l                                       ; $5f62: $7d
    cp a                                          ; $5f63: $bf
    ld [hl], d                                    ; $5f64: $72
    ld b, $09                                     ; $5f65: $06 $09
    rrca                                          ; $5f67: $0f
    ld [hl], b                                    ; $5f68: $70
    inc sp                                        ; $5f69: $33
    push bc                                       ; $5f6a: $c5
    ld a, h                                       ; $5f6b: $7c
    cp a                                          ; $5f6c: $bf
    rst $20                                       ; $5f6d: $e7
    ld [hl], a                                    ; $5f6e: $77
    adc b                                         ; $5f6f: $88
    rla                                           ; $5f70: $17
    ld a, l                                       ; $5f71: $7d
    add hl, hl                                    ; $5f72: $29
    and $fd                                       ; $5f73: $e6 $fd
    ld l, b                                       ; $5f75: $68
    rla                                           ; $5f76: $17
    ld b, c                                       ; $5f77: $41
    daa                                           ; $5f78: $27
    ld c, d                                       ; $5f79: $4a
    sbc $2f                                       ; $5f7a: $de $2f
    rla                                           ; $5f7c: $17
    add c                                         ; $5f7d: $81
    ldh [rOCPS], a                                ; $5f7e: $e0 $6a

jr_063_5f80:
    inc sp                                        ; $5f80: $33
    call $90b3                                    ; $5f81: $cd $b3 $90
    ld [hl], h                                    ; $5f84: $74
    ld l, d                                       ; $5f85: $6a
    ld a, [bc]                                    ; $5f86: $0a
    ld c, b                                       ; $5f87: $48
    cp c                                          ; $5f88: $b9
    ld e, a                                       ; $5f89: $5f
    ld a, e                                       ; $5f8a: $7b
    ld bc, $017b                                  ; $5f8b: $01 $7b $01
    ld a, e                                       ; $5f8e: $7b
    ld bc, $017b                                  ; $5f8f: $01 $7b $01
    rla                                           ; $5f92: $17
    scf                                           ; $5f93: $37
    rst $00                                       ; $5f94: $c7
    ret nc                                        ; $5f95: $d0

    rla                                           ; $5f96: $17
    add l                                         ; $5f97: $85
    ld l, h                                       ; $5f98: $6c
    add sp, -$38                                  ; $5f99: $e8 $c8
    ld d, e                                       ; $5f9b: $53
    ld hl, $3013                                  ; $5f9c: $21 $13 $30
    db $e4                                        ; $5f9f: $e4
    db $fd                                        ; $5fa0: $fd
    ld [bc], a                                    ; $5fa1: $02
    ld d, a                                       ; $5fa2: $57
    call nz, $18ce                                ; $5fa3: $c4 $ce $18
    inc b                                         ; $5fa6: $04
    rst $10                                       ; $5fa7: $d7
    ld b, [hl]                                    ; $5fa8: $46
    and a                                         ; $5fa9: $a7
    call nz, $b5dd                                ; $5faa: $c4 $dd $b5
    ld l, e                                       ; $5fad: $6b
    and h                                         ; $5fae: $a4
    ld e, b                                       ; $5faf: $58
    xor $17                                       ; $5fb0: $ee $17
    rla                                           ; $5fb2: $17
    add c                                         ; $5fb3: $81
    ldh [$a2], a                                  ; $5fb4: $e0 $a2
    xor [hl]                                      ; $5fb6: $ae
    adc c                                         ; $5fb7: $89
    dec l                                         ; $5fb8: $2d
    add sp, $09                                   ; $5fb9: $e8 $09
    or l                                          ; $5fbb: $b5
    ld [hl], h                                    ; $5fbc: $74
    rst $18                                       ; $5fbd: $df
    cpl                                           ; $5fbe: $2f
    sub a                                         ; $5fbf: $97
    ld d, d                                       ; $5fc0: $52
    sbc [hl]                                      ; $5fc1: $9e
    sub $9e                                       ; $5fc2: $d6 $9e
    add b                                         ; $5fc4: $80
    xor e                                         ; $5fc5: $ab
    ld [$46ab], a                                 ; $5fc6: $ea $ab $46
    add d                                         ; $5fc9: $82
    ld d, d                                       ; $5fca: $52
    ld c, [hl]                                    ; $5fcb: $4e
    pop af                                        ; $5fcc: $f1
    db $fd                                        ; $5fcd: $fd
    ld [bc], a                                    ; $5fce: $02
    sub a                                         ; $5fcf: $97
    ld d, c                                       ; $5fd0: $51
    db $eb                                        ; $5fd1: $eb
    call c, Call_063_5541                         ; $5fd2: $dc $41 $55
    ret z                                         ; $5fd5: $c8

    ld b, [hl]                                    ; $5fd6: $46
    rst $38                                       ; $5fd7: $ff
    add d                                         ; $5fd8: $82
    jr nz, jr_063_5f80                            ; $5fd9: $20 $a5

    sub [hl]                                      ; $5fdb: $96
    ld h, $5a                                     ; $5fdc: $26 $5a
    xor $17                                       ; $5fde: $ee $17
    sub a                                         ; $5fe0: $97
    ld d, c                                       ; $5fe1: $51
    db $eb                                        ; $5fe2: $eb
    call c, Call_063_5541                         ; $5fe3: $dc $41 $55
    ret z                                         ; $5fe6: $c8

    ld b, [hl]                                    ; $5fe7: $46
    rst $38                                       ; $5fe8: $ff
    add d                                         ; $5fe9: $82
    jr nz, @-$59                                  ; $5fea: $20 $a5

    sub [hl]                                      ; $5fec: $96
    ld h, $5a                                     ; $5fed: $26 $5a
    xor $17                                       ; $5fef: $ee $17
    rla                                           ; $5ff1: $17
    add c                                         ; $5ff2: $81
    ldh [$da], a                                  ; $5ff3: $e0 $da
    cp h                                          ; $5ff5: $bc
    db $eb                                        ; $5ff6: $eb
    and b                                         ; $5ff7: $a0
    cp d                                          ; $5ff8: $ba
    xor $10                                       ; $5ff9: $ee $10
    ld e, e                                       ; $5ffb: $5b
    xor $17                                       ; $5ffc: $ee $17
    rla                                           ; $5ffe: $17
    scf                                           ; $5fff: $37
    rst $00                                       ; $6000: $c7
    ret nc                                        ; $6001: $d0

    ld [hl], a                                    ; $6002: $77
    adc b                                         ; $6003: $88
    ld b, e                                       ; $6004: $43
    sub $df                                       ; $6005: $d6 $df
    dec l                                         ; $6007: $2d
    rst $30                                       ; $6008: $f7
    dec bc                                        ; $6009: $0b
    rla                                           ; $600a: $17
    add c                                         ; $600b: $81
    ldh [$da], a                                  ; $600c: $e0 $da
    ld a, a                                       ; $600e: $7f
    and [hl]                                      ; $600f: $a6
    ld h, [hl]                                    ; $6010: $66
    sbc h                                         ; $6011: $9c
    and c                                         ; $6012: $a1
    db $e3                                        ; $6013: $e3
    di                                            ; $6014: $f3
    dec b                                         ; $6015: $05
    xor e                                         ; $6016: $ab
    ld a, [bc]                                    ; $6017: $0a
    ret                                           ; $6018: $c9


    and $fb                                       ; $6019: $e6 $fb
    dec b                                         ; $601b: $05
    rla                                           ; $601c: $17
    add c                                         ; $601d: $81
    ldh [$da], a                                  ; $601e: $e0 $da
    ld a, a                                       ; $6020: $7f
    ld c, c                                       ; $6021: $49
    ret nz                                        ; $6022: $c0

    pop bc                                        ; $6023: $c1
    ld a, [de]                                    ; $6024: $1a
    ld b, c                                       ; $6025: $41
    ld d, l                                       ; $6026: $55
    set 7, l                                      ; $6027: $cb $fd
    ld [bc], a                                    ; $6029: $02
    rla                                           ; $602a: $17
    add c                                         ; $602b: $81
    ldh [$2e], a                                  ; $602c: $e0 $2e
    ld c, [hl]                                    ; $602e: $4e
    ld c, l                                       ; $602f: $4d
    inc d                                         ; $6030: $14
    add c                                         ; $6031: $81
    ld h, b                                       ; $6032: $60
    ret z                                         ; $6033: $c8

    ld a, [hl-]                                   ; $6034: $3a
    dec d                                         ; $6035: $15
    ret nc                                        ; $6036: $d0

    ld hl, $7ef1                                  ; $6037: $21 $f1 $7e
    ld bc, $8117                                  ; $603a: $01 $17 $81
    ldh [$84], a                                  ; $603d: $e0 $84
    ld d, d                                       ; $603f: $52
    reti                                          ; $6040: $d9


    ld h, e                                       ; $6041: $63
    ld a, b                                       ; $6042: $78
    ld a, h                                       ; $6043: $7c
    cp a                                          ; $6044: $bf
    rst $20                                       ; $6045: $e7
    ld b, l                                       ; $6046: $45
    db $dd                                        ; $6047: $dd
    or c                                          ; $6048: $b1
    ld [hl], e                                    ; $6049: $73
    ld d, c                                       ; $604a: $51
    ret z                                         ; $604b: $c8

    add $17                                       ; $604c: $c6 $17
    ld [hl], h                                    ; $604e: $74
    xor a                                         ; $604f: $af
    xor [hl]                                      ; $6050: $ae
    adc l                                         ; $6051: $8d
    ld d, b                                       ; $6052: $50
    inc l                                         ; $6053: $2c
    rst $30                                       ; $6054: $f7
    dec bc                                        ; $6055: $0b
    ld a, e                                       ; $6056: $7b
    ld bc, $3517                                  ; $6057: $01 $17 $35
    rst $20                                       ; $605a: $e7
    ld c, $aa                                     ; $605b: $0e $aa
    ld b, d                                       ; $605d: $42
    add [hl]                                      ; $605e: $86
    ld d, [hl]                                    ; $605f: $56
    ld d, l                                       ; $6060: $55
    add hl, bc                                    ; $6061: $09
    ld de, $ca2f                                  ; $6062: $11 $2f $ca
    cp a                                          ; $6065: $bf
    ld b, e                                       ; $6066: $43
    ld a, [c]                                     ; $6067: $f2
    ld e, e                                       ; $6068: $5b
    cp [hl]                                       ; $6069: $be
    ld e, a                                       ; $606a: $5f
    add a                                         ; $606b: $87
    ld a, [hl-]                                   ; $606c: $3a
    or h                                          ; $606d: $b4
    ld d, $53                                     ; $606e: $16 $53
    call nc, $fca2                                ; $6070: $d4 $a2 $fc
    cp e                                          ; $6073: $bb
    ld h, $43                                     ; $6074: $26 $43
    ld b, h                                       ; $6076: $44
    jp hl                                         ; $6077: $e9


    ld b, c                                       ; $6078: $41
    db $fd                                        ; $6079: $fd
    ld l, [hl]                                    ; $607a: $6e
    cp [hl]                                       ; $607b: $be
    ld e, a                                       ; $607c: $5f
    rla                                           ; $607d: $17
    add c                                         ; $607e: $81
    ldh [$8a], a                                  ; $607f: $e0 $8a
    rra                                           ; $6081: $1f
    ld e, [hl]                                    ; $6082: $5e
    db $eb                                        ; $6083: $eb
    dec hl                                        ; $6084: $2b
    push hl                                       ; $6085: $e5
    ei                                            ; $6086: $fb
    dec b                                         ; $6087: $05
    sub a                                         ; $6088: $97
    ld d, d                                       ; $6089: $52
    dec de                                        ; $608a: $1b
    db $e3                                        ; $608b: $e3
    call nc, $eef4                                ; $608c: $d4 $f4 $ee
    jp z, $be3f                                   ; $608f: $ca $3f $be

    ld e, a                                       ; $6092: $5f
    rst $10                                       ; $6093: $d7
    ld e, c                                       ; $6094: $59
    ld [hl], b                                    ; $6095: $70
    inc c                                         ; $6096: $0c
    cp l                                          ; $6097: $bd
    pop af                                        ; $6098: $f1
    adc e                                         ; $6099: $8b
    rst $00                                       ; $609a: $c7
    ret nc                                        ; $609b: $d0

    ld [hl], a                                    ; $609c: $77
    ld [hl], c                                    ; $609d: $71
    ld l, d                                       ; $609e: $6a
    and d                                         ; $609f: $a2
    ld [$4304], sp                                ; $60a0: $08 $04 $43
    sbc $2f                                       ; $60a3: $de $2f
    rla                                           ; $60a5: $17
    scf                                           ; $60a6: $37
    and a                                         ; $60a7: $a7
    and e                                         ; $60a8: $a3
    dec h                                         ; $60a9: $25
    inc a                                         ; $60aa: $3c
    cp e                                          ; $60ab: $bb
    call c, $f431                                 ; $60ac: $dc $31 $f4
    xor $fb                                       ; $60af: $ee $fb
    dec b                                         ; $60b1: $05
    sub a                                         ; $60b2: $97
    add hl, de                                    ; $60b3: $19
    rst $20                                       ; $60b4: $e7
    adc b                                         ; $60b5: $88
    sbc l                                         ; $60b6: $9d
    ld l, e                                       ; $60b7: $6b
    db $d3                                        ; $60b8: $d3
    sbc a                                         ; $60b9: $9f
    ld b, [hl]                                    ; $60ba: $46
    scf                                           ; $60bb: $37
    add [hl]                                      ; $60bc: $86
    db $f4                                        ; $60bd: $f4
    db $fd                                        ; $60be: $fd
    ld [bc], a                                    ; $60bf: $02
    rla                                           ; $60c0: $17
    scf                                           ; $60c1: $37
    rst $00                                       ; $60c2: $c7
    ret nc                                        ; $60c3: $d0

    dec de                                        ; $60c4: $1b
    cp a                                          ; $60c5: $bf
    ld a, b                                       ; $60c6: $78
    inc c                                         ; $60c7: $0c
    ld a, l                                       ; $60c8: $7d
    rst $10                                       ; $60c9: $d7
    ld h, h                                       ; $60ca: $64
    adc b                                         ; $60cb: $88
    jr z, @+$3f                                   ; $60cc: $28 $3d

    xor b                                         ; $60ce: $a8
    rst $18                                       ; $60cf: $df
    call Call_000_0bf7                            ; $60d0: $cd $f7 $0b
    rla                                           ; $60d3: $17
    add c                                         ; $60d4: $81
    ldh [rHDMA4], a                               ; $60d5: $e0 $54
    ld c, b                                       ; $60d7: $48
    ld [hl], $ef                                  ; $60d8: $36 $ef
    ld sp, $52ee                                  ; $60da: $31 $ee $52
    ld c, b                                       ; $60dd: $48
    push hl                                       ; $60de: $e5
    ei                                            ; $60df: $fb
    dec b                                         ; $60e0: $05
    ld l, l                                       ; $60e1: $6d
    ldh a, [rWX]                                  ; $60e2: $f0 $4b
    sub b                                         ; $60e4: $90
    rst $18                                       ; $60e5: $df
    dec hl                                        ; $60e6: $2b
    daa                                           ; $60e7: $27
    dec b                                         ; $60e8: $05
    db $fd                                        ; $60e9: $fd
    ld [bc], a                                    ; $60ea: $02
    sub a                                         ; $60eb: $97
    ld a, [de]                                    ; $60ec: $1a
    db $dd                                        ; $60ed: $dd
    dec de                                        ; $60ee: $1b
    ld a, [hl-]                                   ; $60ef: $3a
    add e                                         ; $60f0: $83
    ld a, d                                       ; $60f1: $7a
    ld bc, $b5e7                                  ; $60f2: $01 $e7 $b5
    ld [bc], a                                    ; $60f5: $02
    ld e, e                                       ; $60f6: $5b
    cp l                                          ; $60f7: $bd
    rst $10                                       ; $60f8: $d7
    sub [hl]                                      ; $60f9: $96
    ld l, [hl]                                    ; $60fa: $6e
    and d                                         ; $60fb: $a2
    ld d, $76                                     ; $60fc: $16 $76
    cp [hl]                                       ; $60fe: $be
    rst $10                                       ; $60ff: $d7
    and h                                         ; $6100: $a4
    and [hl]                                      ; $6101: $a6
    ld [hl], a                                    ; $6102: $77
    ld d, a                                       ; $6103: $57
    cp $71                                        ; $6104: $fe $71
    ld l, l                                       ; $6106: $6d
    add sp, $0c                                   ; $6107: $e8 $0c
    ld [$e705], a                                 ; $6109: $ea $05 $e7
    add a                                         ; $610c: $87
    ld b, d                                       ; $610d: $42
    ld a, [hl]                                    ; $610e: $7e
    ld b, c                                       ; $610f: $41
    rst $30                                       ; $6110: $f7
    rla                                           ; $6111: $17
    sub a                                         ; $6112: $97
    cp $56                                        ; $6113: $fe $56
    rrc l                                         ; $6115: $cb $0d
    sbc l                                         ; $6117: $9d
    ld b, c                                       ; $6118: $41
    cp l                                          ; $6119: $bd
    add a                                         ; $611a: $87
    ld a, [hl-]                                   ; $611b: $3a
    xor b                                         ; $611c: $a8
    add [hl]                                      ; $611d: $86
    adc $a0                                       ; $611e: $ce $a0
    ld e, [hl]                                    ; $6120: $5e
    rla                                           ; $6121: $17
    daa                                           ; $6122: $27
    ld c, b                                       ; $6123: $48
    add hl, bc                                    ; $6124: $09
    call z, $f1b5                                 ; $6125: $cc $b5 $f1
    ld b, l                                       ; $6128: $45
    ld e, c                                       ; $6129: $59
    ld [$b040], a                                 ; $612a: $ea $40 $b0
    ld a, h                                       ; $612d: $7c
    add hl, hl                                    ; $612e: $29
    cpl                                           ; $612f: $2f
    rla                                           ; $6130: $17
    daa                                           ; $6131: $27
    ld c, b                                       ; $6132: $48
    add hl, bc                                    ; $6133: $09
    call z, $f1b5                                 ; $6134: $cc $b5 $f1
    ld b, l                                       ; $6137: $45
    ld e, c                                       ; $6138: $59
    ld [$6a54], a                                 ; $6139: $ea $54 $6a
    ld e, d                                       ; $613c: $5a
    cp h                                          ; $613d: $bc
    inc de                                        ; $613e: $13
    ld e, a                                       ; $613f: $5f
    ld d, a                                       ; $6140: $57
    call nz, $55ce                                ; $6141: $c4 $ce $55
    xor d                                         ; $6144: $aa
    push hl                                       ; $6145: $e5
    dec b                                         ; $6146: $05
    db $ed                                        ; $6147: $ed
    and c                                         ; $6148: $a1
    db $10                                        ; $6149: $10
    ei                                            ; $614a: $fb
    ret                                           ; $614b: $c9


    ld [hl], l                                    ; $614c: $75
    ld a, [hl+]                                   ; $614d: $2a
    dec [hl]                                      ; $614e: $35
    dec l                                         ; $614f: $2d
    sbc $89                                       ; $6150: $de $89
    cpl                                           ; $6152: $2f
    db $ed                                        ; $6153: $ed
    and c                                         ; $6154: $a1
    db $10                                        ; $6155: $10
    ei                                            ; $6156: $fb
    ret                                           ; $6157: $c9


jr_063_6158:
    ld [hl], l                                    ; $6158: $75
    ld a, [hl+]                                   ; $6159: $2a
    dec [hl]                                      ; $615a: $35
    dec l                                         ; $615b: $2d
    sbc $49                                       ; $615c: $de $49
    cpl                                           ; $615e: $2f
    db $ed                                        ; $615f: $ed
    and c                                         ; $6160: $a1
    db $10                                        ; $6161: $10
    ei                                            ; $6162: $fb
    ret                                           ; $6163: $c9


    ld [hl], l                                    ; $6164: $75
    ld a, [hl+]                                   ; $6165: $2a
    dec [hl]                                      ; $6166: $35
    dec l                                         ; $6167: $2d
    sbc $c9                                       ; $6168: $de $c9
    cpl                                           ; $616a: $2f
    db $ed                                        ; $616b: $ed
    and c                                         ; $616c: $a1
    db $10                                        ; $616d: $10
    ei                                            ; $616e: $fb
    ret                                           ; $616f: $c9


    push de                                       ; $6170: $d5
    xor d                                         ; $6171: $aa
    or [hl]                                       ; $6172: $b6
    jp nc, Jump_063_5ab5                          ; $6173: $d2 $b5 $5a

    ld e, [hl]                                    ; $6176: $5e
    ld d, a                                       ; $6177: $57
    ld [hl], h                                    ; $6178: $74
    ld h, h                                       ; $6179: $64
    ld b, b                                       ; $617a: $40
    ld c, e                                       ; $617b: $4b
    db $dd                                        ; $617c: $dd
    push de                                       ; $617d: $d5
    cp d                                          ; $617e: $ba
    jr c, jr_063_6158                             ; $617f: $38 $d7

    add e                                         ; $6181: $83
    ld a, [$fcdd]                                 ; $6182: $fa $dd $fc
    ld [bc], a                                    ; $6185: $02
    rst $10                                       ; $6186: $d7
    db $fc                                        ; $6187: $fc
    cp $fc                                        ; $6188: $fe $fc
    ld [bc], a                                    ; $618a: $02
    db $eb                                        ; $618b: $eb
    ld b, c                                       ; $618c: $41
    db $fd                                        ; $618d: $fd
    ld l, [hl]                                    ; $618e: $6e
    ld a, [hl]                                    ; $618f: $7e
    ld bc, $35d7                                  ; $6190: $01 $d7 $35
    dec de                                        ; $6193: $1b
    sub [hl]                                      ; $6194: $96
    ld a, [c]                                     ; $6195: $f2
    ld a, e                                       ; $6196: $7b
    ld [hl], a                                    ; $6197: $77
    add d                                         ; $6198: $82
    ld sp, hl                                     ; $6199: $f9
    dec b                                         ; $619a: $05
    rst $20                                       ; $619b: $e7
    ld d, l                                       ; $619c: $55
    adc $20                                       ; $619d: $ce $20
    pop hl                                        ; $619f: $e1
    add c                                         ; $61a0: $81
    push af                                       ; $61a1: $f5
    and b                                         ; $61a2: $a0
    ld a, [hl]                                    ; $61a3: $7e
    scf                                           ; $61a4: $37
    cp a                                          ; $61a5: $bf
    sub a                                         ; $61a6: $97
    ld a, a                                       ; $61a7: $7f
    ld l, [hl]                                    ; $61a8: $6e
    dec b                                         ; $61a9: $05
    ld h, [hl]                                    ; $61aa: $66
    and a                                         ; $61ab: $a7
    cp $3c                                        ; $61ac: $fe $3c
    and $17                                       ; $61ae: $e6 $17
    sub a                                         ; $61b0: $97
    add [hl]                                      ; $61b1: $86
    jp z, $e86e                                   ; $61b2: $ca $6e $e8

    inc c                                         ; $61b5: $0c
    ld [$e705], a                                 ; $61b6: $ea $05 $e7
    cp e                                          ; $61b9: $bb
    add $94                                       ; $61ba: $c6 $94
    inc l                                         ; $61bc: $2c
    xor $d5                                       ; $61bd: $ee $d5
    or l                                          ; $61bf: $b5
    rlca                                          ; $61c0: $07
    push af                                       ; $61c1: $f5
    cp e                                          ; $61c2: $bb
    ld sp, hl                                     ; $61c3: $f9
    dec b                                         ; $61c4: $05
    rla                                           ; $61c5: $17
    add l                                         ; $61c6: $85
    xor h                                         ; $61c7: $ac
    pop af                                        ; $61c8: $f1
    rst $08                                       ; $61c9: $cf
    dec a                                         ; $61ca: $3d
    ld bc, $9077                                  ; $61cb: $01 $77 $90
    sbc d                                         ; $61ce: $9a
    jp z, Jump_063_775c                           ; $61cf: $ca $5c $77

    ld l, c                                       ; $61d2: $69
    ld d, d                                       ; $61d3: $52
    ld [hl+], a                                   ; $61d4: $22
    halt                                          ; $61d5: $76
    ld e, $d7                                     ; $61d6: $1e $d7
    add e                                         ; $61d8: $83
    ld a, [$fcdd]                                 ; $61d9: $fa $dd $fc
    ld [bc], a                                    ; $61dc: $02
    ld l, l                                       ; $61dd: $6d
    ld c, c                                       ; $61de: $49
    ld a, l                                       ; $61df: $7d
    ld e, $d7                                     ; $61e0: $1e $d7
    sub [hl]                                      ; $61e2: $96
    jp hl                                         ; $61e3: $e9


    db $dd                                        ; $61e4: $dd
    db $fc                                        ; $61e5: $fc
    ld [bc], a                                    ; $61e6: $02
    rla                                           ; $61e7: $17
    add l                                         ; $61e8: $85
    ld l, h                                       ; $61e9: $6c
    add sp, -$38                                  ; $61ea: $e8 $c8
    ld e, [hl]                                    ; $61ec: $5e
    ld d, l                                       ; $61ed: $55
    ld hl, $89de                                  ; $61ee: $21 $de $89
    cpl                                           ; $61f1: $2f
    rla                                           ; $61f2: $17
    add l                                         ; $61f3: $85
    ld l, h                                       ; $61f4: $6c
    add sp, -$38                                  ; $61f5: $e8 $c8
    ld e, [hl]                                    ; $61f7: $5e
    ld d, l                                       ; $61f8: $55
    ld hl, $49de                                  ; $61f9: $21 $de $49
    cpl                                           ; $61fc: $2f
    rla                                           ; $61fd: $17
    add l                                         ; $61fe: $85
    ld l, h                                       ; $61ff: $6c
    add sp, -$38                                  ; $6200: $e8 $c8
    ld e, [hl]                                    ; $6202: $5e
    ld d, l                                       ; $6203: $55
    ld hl, $c9de                                  ; $6204: $21 $de $c9
    cpl                                           ; $6207: $2f
    rla                                           ; $6208: $17
    add l                                         ; $6209: $85
    ld l, h                                       ; $620a: $6c
    add sp, -$38                                  ; $620b: $e8 $c8
    ld e, [hl]                                    ; $620d: $5e
    ld d, l                                       ; $620e: $55
    ld hl, $29de                                  ; $620f: $21 $de $29
    cpl                                           ; $6212: $2f
    rla                                           ; $6213: $17
    add l                                         ; $6214: $85
    ld l, h                                       ; $6215: $6c
    add sp, -$38                                  ; $6216: $e8 $c8
    ld e, [hl]                                    ; $6218: $5e
    ld d, l                                       ; $6219: $55
    ld hl, $a9de                                  ; $621a: $21 $de $a9
    cpl                                           ; $621d: $2f
    rla                                           ; $621e: $17
    add l                                         ; $621f: $85
    ld l, h                                       ; $6220: $6c
    add sp, -$38                                  ; $6221: $e8 $c8
    ld e, [hl]                                    ; $6223: $5e
    ld d, l                                       ; $6224: $55
    ld hl, $69de                                  ; $6225: $21 $de $69
    cpl                                           ; $6228: $2f
    add a                                         ; $6229: $87
    nop                                           ; $622a: $00
    dec hl                                        ; $622b: $2b
    ld a, e                                       ; $622c: $7b
    ld a, [hl+]                                   ; $622d: $2a
    dec [hl]                                      ; $622e: $35
    dec l                                         ; $622f: $2d
    sbc $89                                       ; $6230: $de $89
    cpl                                           ; $6232: $2f
    add a                                         ; $6233: $87
    nop                                           ; $6234: $00
    dec hl                                        ; $6235: $2b
    ld a, e                                       ; $6236: $7b
    ld a, [hl+]                                   ; $6237: $2a
    dec [hl]                                      ; $6238: $35
    dec l                                         ; $6239: $2d
    sbc $49                                       ; $623a: $de $49
    cpl                                           ; $623c: $2f
    add a                                         ; $623d: $87
    nop                                           ; $623e: $00
    dec hl                                        ; $623f: $2b
    ld a, e                                       ; $6240: $7b
    ld a, [hl+]                                   ; $6241: $2a
    dec [hl]                                      ; $6242: $35
    dec l                                         ; $6243: $2d
    sbc $c9                                       ; $6244: $de $c9
    cpl                                           ; $6246: $2f
    add a                                         ; $6247: $87
    nop                                           ; $6248: $00
    dec hl                                        ; $6249: $2b
    ld a, e                                       ; $624a: $7b
    ld a, [hl+]                                   ; $624b: $2a
    dec [hl]                                      ; $624c: $35
    dec l                                         ; $624d: $2d
    sbc $29                                       ; $624e: $de $29
    cpl                                           ; $6250: $2f
    add a                                         ; $6251: $87
    nop                                           ; $6252: $00
    dec hl                                        ; $6253: $2b
    ld a, e                                       ; $6254: $7b
    ld a, [hl+]                                   ; $6255: $2a
    dec [hl]                                      ; $6256: $35
    dec l                                         ; $6257: $2d
    sbc $a9                                       ; $6258: $de $a9
    cpl                                           ; $625a: $2f
    add a                                         ; $625b: $87
    nop                                           ; $625c: $00
    dec hl                                        ; $625d: $2b
    ld a, e                                       ; $625e: $7b
    ld a, [hl+]                                   ; $625f: $2a
    dec [hl]                                      ; $6260: $35
    dec l                                         ; $6261: $2d
    sbc $69                                       ; $6262: $de $69
    cpl                                           ; $6264: $2f
    rla                                           ; $6265: $17
    ld [hl], l                                    ; $6266: $75
    ld h, b                                       ; $6267: $60
    ld h, d                                       ; $6268: $62
    ld b, b                                       ; $6269: $40
    ld d, h                                       ; $626a: $54
    push de                                       ; $626b: $d5
    xor c                                         ; $626c: $a9
    jr nz, jr_063_628b                            ; $626d: $20 $1c

    ld a, [c]                                     ; $626f: $f2
    dec b                                         ; $6270: $05
    rst $10                                       ; $6271: $d7
    add h                                         ; $6272: $84
    add a                                         ; $6273: $87
    and a                                         ; $6274: $a7
    ld a, [$d5af]                                 ; $6275: $fa $af $d5
    dec a                                         ; $6278: $3d
    xor b                                         ; $6279: $a8
    rst $18                                       ; $627a: $df
    db $fd                                        ; $627b: $fd
    ld [bc], a                                    ; $627c: $02
    rst $10                                       ; $627d: $d7
    add h                                         ; $627e: $84
    add a                                         ; $627f: $87
    and a                                         ; $6280: $a7
    ld a, [$d5af]                                 ; $6281: $fa $af $d5
    dec a                                         ; $6284: $3d
    xor b                                         ; $6285: $a8
    rst $18                                       ; $6286: $df
    db $fd                                        ; $6287: $fd
    ld [bc], a                                    ; $6288: $02
    rla                                           ; $6289: $17
    add l                                         ; $628a: $85

jr_063_628b:
    ld l, h                                       ; $628b: $6c
    add sp, -$38                                  ; $628c: $e8 $c8
    ld d, e                                       ; $628e: $53
    ld hl, $3013                                  ; $628f: $21 $13 $30
    db $e4                                        ; $6292: $e4
    ld e, [hl]                                    ; $6293: $5e
    ld l, l                                       ; $6294: $6d
    add hl, bc                                    ; $6295: $09
    ld sp, $d7a9                                  ; $6296: $31 $a9 $d7
    rla                                           ; $6299: $17
    ld d, a                                       ; $629a: $57
    ld b, d                                       ; $629b: $42
    ld sp, $e807                                  ; $629c: $31 $07 $e8
    and $17                                       ; $629f: $e6 $17
    db $ed                                        ; $62a1: $ed
    and c                                         ; $62a2: $a1
    db $10                                        ; $62a3: $10
    ei                                            ; $62a4: $fb
    ret                                           ; $62a5: $c9


    ld [hl], l                                    ; $62a6: $75
    ld h, h                                       ; $62a7: $64
    adc b                                         ; $62a8: $88
    adc l                                         ; $62a9: $8d
    pop hl                                        ; $62aa: $e1
    ret                                           ; $62ab: $c9


    ld h, $7a                                     ; $62ac: $26 $7a
    daa                                           ; $62ae: $27
    cp [hl]                                       ; $62af: $be
    db $ed                                        ; $62b0: $ed
    cp a                                          ; $62b1: $bf
    inc h                                         ; $62b2: $24
    ld h, b                                       ; $62b3: $60
    dec e                                         ; $62b4: $1d
    xor c                                         ; $62b5: $a9
    ld h, c                                       ; $62b6: $61
    or $40                                        ; $62b7: $f6 $40
    ret nc                                        ; $62b9: $d0

    ld [de], a                                    ; $62ba: $12
    add l                                         ; $62bb: $85
    ld a, h                                       ; $62bc: $7c
    ld bc, $ae27                                  ; $62bd: $01 $27 $ae
    cp $3e                                        ; $62c0: $fe $3e
    dec d                                         ; $62c2: $15
    ld [hl-], a                                   ; $62c3: $32
    ld bc, $be43                                  ; $62c4: $01 $43 $be
    daa                                           ; $62c7: $27
    xor l                                         ; $62c8: $ad
    cp $3e                                        ; $62c9: $fe $3e
    dec d                                         ; $62cb: $15
    ld [hl-], a                                   ; $62cc: $32
    ld bc, $be43                                  ; $62cd: $01 $43 $be
    daa                                           ; $62d0: $27
    xor a                                         ; $62d1: $af
    cp $3e                                        ; $62d2: $fe $3e
    dec d                                         ; $62d4: $15
    ld [hl-], a                                   ; $62d5: $32
    ld bc, $be43                                  ; $62d6: $01 $43 $be
    and a                                         ; $62d9: $a7
    xor h                                         ; $62da: $ac
    cp $3e                                        ; $62db: $fe $3e
    dec d                                         ; $62dd: $15
    ld [hl-], a                                   ; $62de: $32
    ld bc, $be43                                  ; $62df: $01 $43 $be
    and a                                         ; $62e2: $a7
    xor [hl]                                      ; $62e3: $ae
    cp $3e                                        ; $62e4: $fe $3e
    dec d                                         ; $62e6: $15
    ld [hl-], a                                   ; $62e7: $32
    ld bc, $be43                                  ; $62e8: $01 $43 $be
    and a                                         ; $62eb: $a7
    xor l                                         ; $62ec: $ad
    cp $3e                                        ; $62ed: $fe $3e
    dec d                                         ; $62ef: $15
    ld [hl-], a                                   ; $62f0: $32
    ld bc, $be43                                  ; $62f1: $01 $43 $be
    and a                                         ; $62f4: $a7
    xor a                                         ; $62f5: $af
    cp $3e                                        ; $62f6: $fe $3e
    dec d                                         ; $62f8: $15
    ld [hl-], a                                   ; $62f9: $32
    ld bc, $be43                                  ; $62fa: $01 $43 $be
    db $ed                                        ; $62fd: $ed
    cp $dd                                        ; $62fe: $fe $dd
    reti                                          ; $6300: $d9


    ret nc                                        ; $6301: $d0

    add hl, de                                    ; $6302: $19
    sub h                                         ; $6303: $94
    or d                                          ; $6304: $b2
    cp h                                          ; $6305: $bc
    rlca                                          ; $6306: $07
    ld a, a                                       ; $6307: $7f
    ld bc, $5d4b                                  ; $6308: $01 $4b $5d
    dec sp                                        ; $630b: $3b
    ld d, h                                       ; $630c: $54
    ld c, $09                                     ; $630d: $0e $09
    ld a, $ae                                     ; $630f: $3e $ae
    rlca                                          ; $6311: $07
    push af                                       ; $6312: $f5
    cp e                                          ; $6313: $bb
    ld sp, hl                                     ; $6314: $f9
    dec b                                         ; $6315: $05
    db $ed                                        ; $6316: $ed
    and c                                         ; $6317: $a1
    or [hl]                                       ; $6318: $b6
    add b                                         ; $6319: $80
    ld a, a                                       ; $631a: $7f
    xor a                                         ; $631b: $af
    ld d, c                                       ; $631c: $51
    and a                                         ; $631d: $a7
    jp nc, Jump_000_2f2d                          ; $631e: $d2 $2d $2f

    rst $20                                       ; $6321: $e7
    ld b, e                                       ; $6322: $43

Call_063_6323:
    and e                                         ; $6323: $a3
    ld b, e                                       ; $6324: $43
    ld h, b                                       ; $6325: $60
    xor e                                         ; $6326: $ab
    sbc l                                         ; $6327: $9d
    ld hl, sp+$02                                 ; $6328: $f8 $02
    rst $20                                       ; $632a: $e7
    ld b, e                                       ; $632b: $43
    and e                                         ; $632c: $a3
    ld b, e                                       ; $632d: $43
    ld h, b                                       ; $632e: $60
    xor e                                         ; $632f: $ab
    sbc l                                         ; $6330: $9d
    db $f4                                        ; $6331: $f4
    ld [bc], a                                    ; $6332: $02
    rlca                                          ; $6333: $07
    adc c                                         ; $6334: $89
    ld e, [hl]                                    ; $6335: $5e
    inc e                                         ; $6336: $1c
    db $e4                                        ; $6337: $e4
    sub a                                         ; $6338: $97
    rst $18                                       ; $6339: $df
    ld a, e                                       ; $633a: $7b
    sbc l                                         ; $633b: $9d
    ld a, [bc]                                    ; $633c: $0a
    jp nz, Jump_063_5f21                          ; $633d: $c2 $21 $5f

    rlca                                          ; $6340: $07
    push af                                       ; $6341: $f5
    ld d, d                                       ; $6342: $52
    cp d                                          ; $6343: $ba
    or e                                          ; $6344: $b3
    or d                                          ; $6345: $b2
    adc [hl]                                      ; $6346: $8e
    ldh [$3c], a                                  ; $6347: $e0 $3c
    xor [hl]                                      ; $6349: $ae
    rlca                                          ; $634a: $07
    push af                                       ; $634b: $f5
    cp e                                          ; $634c: $bb
    ld a, c                                       ; $634d: $79
    cpl                                           ; $634e: $2f
    ld d, a                                       ; $634f: $57
    add [hl]                                      ; $6350: $86
    daa                                           ; $6351: $27
    ld c, d                                       ; $6352: $4a
    ld l, e                                       ; $6353: $6b
    ld [$1054], a                                 ; $6354: $ea $54 $10
    ld c, $f9                                     ; $6357: $0e $f9
    ld [bc], a                                    ; $6359: $02
    rla                                           ; $635a: $17
    halt                                          ; $635b: $76
    ld d, b                                       ; $635c: $50
    dec d                                         ; $635d: $15
    or d                                          ; $635e: $b2
    rlca                                          ; $635f: $07
    push af                                       ; $6360: $f5
    cp e                                          ; $6361: $bb
    ld sp, hl                                     ; $6362: $f9
    dec b                                         ; $6363: $05

jr_063_6364:
    ld d, a                                       ; $6364: $57
    jp hl                                         ; $6365: $e9


    sub b                                         ; $6366: $90
    jp hl                                         ; $6367: $e9


    sbc $eb                                       ; $6368: $de $eb
    ld d, h                                       ; $636a: $54
    db $10                                        ; $636b: $10
    ld c, $f9                                     ; $636c: $0e $f9
    ld [bc], a                                    ; $636e: $02
    add a                                         ; $636f: $87
    db $e4                                        ; $6370: $e4
    or a                                          ; $6371: $b7
    ld e, h                                       ; $6372: $5c
    and a                                         ; $6373: $a7
    add d                                         ; $6374: $82
    ld [hl], b                                    ; $6375: $70
    ret z                                         ; $6376: $c8

    rla                                           ; $6377: $17
    add a                                         ; $6378: $87
    ld e, d                                       ; $6379: $5a
    sub b                                         ; $637a: $90
    xor [hl]                                      ; $637b: $ae
    ld d, e                                       ; $637c: $53
    ld b, c                                       ; $637d: $41
    jr c, jr_063_6364                             ; $637e: $38 $e4

    dec bc                                        ; $6380: $0b
    sub a                                         ; $6381: $97
    db $fd                                        ; $6382: $fd
    ld [c], a                                     ; $6383: $e2
    ld c, h                                       ; $6384: $4c
    db $fd                                        ; $6385: $fd
    ld a, c                                       ; $6386: $79
    ld bc, $8517                                  ; $6387: $01 $17 $85
    adc h                                         ; $638a: $8c
    cp a                                          ; $638b: $bf
    ld h, b                                       ; $638c: $60
    rlca                                          ; $638d: $07
    add hl, hl                                    ; $638e: $29
    or l                                          ; $638f: $b5
    rlca                                          ; $6390: $07
    push af                                       ; $6391: $f5
    cp e                                          ; $6392: $bb
    ld sp, hl                                     ; $6393: $f9
    dec b                                         ; $6394: $05
    rst $10                                       ; $6395: $d7
    ld h, h                                       ; $6396: $64
    adc b                                         ; $6397: $88
    jr z, jr_063_63d7                             ; $6398: $28 $3d

    xor b                                         ; $639a: $a8
    rst $18                                       ; $639b: $df
    call $172f                                    ; $639c: $cd $2f $17
    daa                                           ; $639f: $27
    ld c, b                                       ; $63a0: $48
    add hl, bc                                    ; $63a1: $09
    call z, $f1b5                                 ; $63a2: $cc $b5 $f1
    ld b, l                                       ; $63a5: $45
    ld e, c                                       ; $63a6: $59
    ld [$6a54], a                                 ; $63a7: $ea $54 $6a
    ld e, d                                       ; $63aa: $5a
    cp h                                          ; $63ab: $bc
    sub e                                         ; $63ac: $93
    ld e, [hl]                                    ; $63ad: $5e
    ld d, a                                       ; $63ae: $57
    ld a, [hl-]                                   ; $63af: $3a
    inc sp                                        ; $63b0: $33
    ret z                                         ; $63b1: $c8

    adc $dc                                       ; $63b2: $ce $dc
    ret                                           ; $63b4: $c9


    rst $00                                       ; $63b5: $c7
    sbc a                                         ; $63b6: $9f
    ld a, [c]                                     ; $63b7: $f2
    ld [bc], a                                    ; $63b8: $02
    add a                                         ; $63b9: $87
    xor b                                         ; $63ba: $a8
    adc l                                         ; $63bb: $8d
    inc [hl]                                      ; $63bc: $34
    cp [hl]                                       ; $63bd: $be
    db $ed                                        ; $63be: $ed
    and c                                         ; $63bf: $a1
    db $10                                        ; $63c0: $10
    ei                                            ; $63c1: $fb
    ret                                           ; $63c2: $c9


    ld [hl], l                                    ; $63c3: $75
    jr nz, jr_063_641e                            ; $63c4: $20 $58

    cp [hl]                                       ; $63c6: $be
    sub h                                         ; $63c7: $94
    ld c, d                                       ; $63c8: $4a
    cp $fe                                        ; $63c9: $fe $fe
    ld [bc], a                                    ; $63cb: $02
    rla                                           ; $63cc: $17
    and a                                         ; $63cd: $a7
    ld h, $8a                                     ; $63ce: $26 $8a
    ld b, b                                       ; $63d0: $40
    jr nc, jr_063_6437                            ; $63d1: $30 $64

    dec e                                         ; $63d3: $1d
    and [hl]                                      ; $63d4: $a6
    and l                                         ; $63d5: $a5
    cp b                                          ; $63d6: $b8

jr_063_63d7:
    add [hl]                                      ; $63d7: $86
    ret c                                         ; $63d8: $d8

    ccf                                           ; $63d9: $3f
    ld b, d                                       ; $63da: $42
    ld [hl], a                                    ; $63db: $77
    sub b                                         ; $63dc: $90
    ld a, [c]                                     ; $63dd: $f2
    ld [bc], a                                    ; $63de: $02
    rla                                           ; $63df: $17
    and a                                         ; $63e0: $a7
    ld h, $8a                                     ; $63e1: $26 $8a
    ld b, b                                       ; $63e3: $40
    jr nc, jr_063_644a                            ; $63e4: $30 $64

    ld e, l                                       ; $63e6: $5d
    ld l, b                                       ; $63e7: $68
    sub c                                         ; $63e8: $91
    and c                                         ; $63e9: $a1
    ld h, e                                       ; $63ea: $63
    xor l                                         ; $63eb: $ad
    xor h                                         ; $63ec: $ac
    ei                                            ; $63ed: $fb
    dec b                                         ; $63ee: $05
    sub a                                         ; $63ef: $97
    add [hl]                                      ; $63f0: $86
    jp z, $eaae                                   ; $63f1: $ca $ae $ea

    scf                                           ; $63f4: $37
    ld e, [hl]                                    ; $63f5: $5e
    rla                                           ; $63f6: $17
    ld b, c                                       ; $63f7: $41
    daa                                           ; $63f8: $27
    ld c, d                                       ; $63f9: $4a
    sub $a9                                       ; $63fa: $d6 $a9
    jr nz, jr_063_641a                            ; $63fc: $20 $1c

    ld a, [c]                                     ; $63fe: $f2
    dec b                                         ; $63ff: $05
    db $ed                                        ; $6400: $ed
    and c                                         ; $6401: $a1
    db $10                                        ; $6402: $10
    ei                                            ; $6403: $fb
    ret                                           ; $6404: $c9


    push af                                       ; $6405: $f5
    ret z                                         ; $6406: $c8

    dec e                                         ; $6407: $1d
    ld [c], a                                     ; $6408: $e2
    sub b                                         ; $6409: $90
    push af                                       ; $640a: $f5
    rst $30                                       ; $640b: $f7
    rla                                           ; $640c: $17
    db $ed                                        ; $640d: $ed
    and c                                         ; $640e: $a1
    db $10                                        ; $640f: $10
    ei                                            ; $6410: $fb
    ret                                           ; $6411: $c9


    push af                                       ; $6412: $f5
    ret z                                         ; $6413: $c8

    ld [hl], l                                    ; $6414: $75
    ld c, d                                       ; $6415: $4a
    ld a, [hl-]                                   ; $6416: $3a
    ld h, e                                       ; $6417: $63
    ld c, d                                       ; $6418: $4a
    cp d                                          ; $6419: $ba

jr_063_641a:
    ld d, a                                       ; $641a: $57
    cp a                                          ; $641b: $bf
    ld d, a                                       ; $641c: $57
    add [hl]                                      ; $641d: $86

jr_063_641e:
    db $e4                                        ; $641e: $e4
    and h                                         ; $641f: $a4
    ld [hl], b                                    ; $6420: $70
    ld c, h                                       ; $6421: $4c
    ld c, c                                       ; $6422: $49
    rst $30                                       ; $6423: $f7
    ld l, d                                       ; $6424: $6a
    ld a, [hl]                                    ; $6425: $7e
    ld bc, $ac27                                  ; $6426: $01 $27 $ac
    cp $3e                                        ; $6429: $fe $3e
    sub l                                         ; $642b: $95
    sbc d                                         ; $642c: $9a
    ld d, $5b                                     ; $642d: $16 $5b
    ld e, [hl]                                    ; $642f: $5e
    rla                                           ; $6430: $17
    halt                                          ; $6431: $76
    ld d, b                                       ; $6432: $50
    dec d                                         ; $6433: $15
    ld [hl], d                                    ; $6434: $72
    daa                                           ; $6435: $27
    cp l                                          ; $6436: $bd

jr_063_6437:
    rla                                           ; $6437: $17
    daa                                           ; $6438: $27
    ld c, b                                       ; $6439: $48
    add hl, bc                                    ; $643a: $09
    call z, $f1b5                                 ; $643b: $cc $b5 $f1
    ld b, l                                       ; $643e: $45
    ld e, c                                       ; $643f: $59
    ld [$411a], a                                 ; $6440: $ea $1a $41
    push de                                       ; $6443: $d5
    rla                                           ; $6444: $17
    rst $20                                       ; $6445: $e7
    ld d, l                                       ; $6446: $55
    adc $20                                       ; $6447: $ce $20
    pop hl                                        ; $6449: $e1

jr_063_644a:
    add c                                         ; $644a: $81
    xor c                                         ; $644b: $a9
    sub b                                         ; $644c: $90
    add hl, bc                                    ; $644d: $09
    jr @-$0c                                      ; $644e: $18 $f2

    dec b                                         ; $6450: $05
    db $ed                                        ; $6451: $ed
    and c                                         ; $6452: $a1
    db $10                                        ; $6453: $10
    ei                                            ; $6454: $fb
    ret                                           ; $6455: $c9


    ld [hl], l                                    ; $6456: $75
    ld h, h                                       ; $6457: $64
    adc b                                         ; $6458: $88
    adc l                                         ; $6459: $8d
    pop hl                                        ; $645a: $e1
    ret                                           ; $645b: $c9


    ld h, $7a                                     ; $645c: $26 $7a
    daa                                           ; $645e: $27
    cp l                                          ; $645f: $bd
    db $ed                                        ; $6460: $ed
    and c                                         ; $6461: $a1
    db $10                                        ; $6462: $10
    ei                                            ; $6463: $fb
    ret                                           ; $6464: $c9


    ld [hl], l                                    ; $6465: $75
    ld h, h                                       ; $6466: $64
    adc b                                         ; $6467: $88
    adc l                                         ; $6468: $8d
    pop hl                                        ; $6469: $e1
    ret                                           ; $646a: $c9


    ld h, $7a                                     ; $646b: $26 $7a
    daa                                           ; $646d: $27
    cp a                                          ; $646e: $bf
    db $ed                                        ; $646f: $ed
    and c                                         ; $6470: $a1
    db $10                                        ; $6471: $10
    ei                                            ; $6472: $fb
    ret                                           ; $6473: $c9


    ld [hl], l                                    ; $6474: $75
    ld h, h                                       ; $6475: $64
    adc b                                         ; $6476: $88
    adc l                                         ; $6477: $8d
    pop hl                                        ; $6478: $e1
    ret                                           ; $6479: $c9


    ld h, $7a                                     ; $647a: $26 $7a
    and a                                         ; $647c: $a7
    cp h                                          ; $647d: $bc
    db $ed                                        ; $647e: $ed
    cp a                                          ; $647f: $bf
    inc h                                         ; $6480: $24
    ld h, b                                       ; $6481: $60
    dec e                                         ; $6482: $1d
    xor c                                         ; $6483: $a9
    ld h, c                                       ; $6484: $61
    or $74                                        ; $6485: $f6 $74
    or h                                          ; $6487: $b4
    ld b, h                                       ; $6488: $44
    ld hl, $975f                                  ; $6489: $21 $5f $97
    add [hl]                                      ; $648c: $86
    db $e4                                        ; $648d: $e4
    add [hl]                                      ; $648e: $86
    add [hl]                                      ; $648f: $86
    reti                                          ; $6490: $d9


    xor d                                         ; $6491: $aa
    db $eb                                        ; $6492: $eb
    adc l                                         ; $6493: $8d
    rla                                           ; $6494: $17
    add a                                         ; $6495: $87
    jr c, jr_063_64fc                             ; $6496: $38 $64

    db $fd                                        ; $6498: $fd
    ld a, l                                       ; $6499: $7d
    rst $00                                       ; $649a: $c7
    adc l                                         ; $649b: $8d
    jp Jump_000_02f3                              ; $649c: $c3 $f3 $02


    rlca                                          ; $649f: $07
    push af                                       ; $64a0: $f5
    ld d, d                                       ; $64a1: $52
    cp d                                          ; $64a2: $ba
    sub e                                         ; $64a3: $93
    db $f4                                        ; $64a4: $f4
    di                                            ; $64a5: $f3
    cp b                                          ; $64a6: $b8
    ld b, e                                       ; $64a7: $43
    ld hl, $ce8d                                  ; $64a8: $21 $8d $ce
    db $e3                                        ; $64ab: $e3
    ld a, d                                       ; $64ac: $7a
    ld d, b                                       ; $64ad: $50
    cp a                                          ; $64ae: $bf
    sbc e                                         ; $64af: $9b
    ld e, a                                       ; $64b0: $5f
    add a                                         ; $64b1: $87
    ld d, h                                       ; $64b2: $54
    ld b, d                                       ; $64b3: $42
    db $ec                                        ; $64b4: $ec
    rst $20                                       ; $64b5: $e7
    or e                                          ; $64b6: $b3
    inc de                                        ; $64b7: $13
    ld a, [hl]                                    ; $64b8: $7e
    ld [hl], a                                    ; $64b9: $77
    inc d                                         ; $64ba: $14
    or d                                          ; $64bb: $b2
    ld l, d                                       ; $64bc: $6a
    inc b                                         ; $64bd: $04
    and h                                         ; $64be: $a4
    jr c, jr_063_6520                             ; $64bf: $38 $5f

    ld l, l                                       ; $64c1: $6d
    ld l, c                                       ; $64c2: $69
    add hl, hl                                    ; $64c3: $29
    and $00                                       ; $64c4: $e6 $00
    db $dd                                        ; $64c6: $dd
    call z, $17e6                                 ; $64c7: $cc $e6 $17
    rlca                                          ; $64ca: $07
    push af                                       ; $64cb: $f5
    ld d, d                                       ; $64cc: $52
    cp d                                          ; $64cd: $ba
    di                                            ; $64ce: $f3
    pop de                                        ; $64cf: $d1
    dec hl                                        ; $64d0: $2b
    xor b                                         ; $64d1: $a8
    db $e3                                        ; $64d2: $e3
    ld a, d                                       ; $64d3: $7a
    ld d, b                                       ; $64d4: $50
    cp a                                          ; $64d5: $bf
    sbc e                                         ; $64d6: $9b
    ld e, a                                       ; $64d7: $5f
    rlca                                          ; $64d8: $07
    push af                                       ; $64d9: $f5
    ld d, d                                       ; $64da: $52
    cp d                                          ; $64db: $ba
    ld d, e                                       ; $64dc: $53
    jp hl                                         ; $64dd: $e9


    ld d, d                                       ; $64de: $52
    ld sp, hl                                     ; $64df: $f9
    cp b                                          ; $64e0: $b8
    ld e, $d4                                     ; $64e1: $1e $d4
    rst $28                                       ; $64e3: $ef
    and $17                                       ; $64e4: $e6 $17
    sub a                                         ; $64e6: $97
    add [hl]                                      ; $64e7: $86
    db $e4                                        ; $64e8: $e4
    dec [hl]                                      ; $64e9: $35
    add d                                         ; $64ea: $82
    xor d                                         ; $64eb: $aa
    cpl                                           ; $64ec: $2f
    and a                                         ; $64ed: $a7
    xor l                                         ; $64ee: $ad
    cp $3e                                        ; $64ef: $fe $3e
    jp nc, $e3cf                                  ; $64f1: $d2 $cf $e3

    ld c, $65                                     ; $64f4: $0e $65
    push hl                                       ; $64f6: $e5
    ld c, e                                       ; $64f7: $4b
    ld a, c                                       ; $64f8: $79
    ld bc, $83e7                                  ; $64f9: $01 $e7 $83

jr_063_64fc:
    ld c, b                                       ; $64fc: $48
    sbc l                                         ; $64fd: $9d
    ld a, [bc]                                    ; $64fe: $0a
    jp nz, Jump_063_5f21                          ; $64ff: $c2 $21 $5f

    rst $10                                       ; $6502: $d7
    add h                                         ; $6503: $84
    add a                                         ; $6504: $87
    and a                                         ; $6505: $a7
    ld a, [$d5af]                                 ; $6506: $fa $af $d5
    dec a                                         ; $6509: $3d
    xor b                                         ; $650a: $a8
    rst $18                                       ; $650b: $df
    db $fd                                        ; $650c: $fd
    ld [bc], a                                    ; $650d: $02
    rla                                           ; $650e: $17
    ld [hl], l                                    ; $650f: $75
    ld c, l                                       ; $6510: $4d
    ld l, h                                       ; $6511: $6c
    ld b, c                                       ; $6512: $41
    ld c, a                                       ; $6513: $4f
    xor b                                         ; $6514: $a8
    and l                                         ; $6515: $a5
    ld e, e                                       ; $6516: $5b
    add l                                         ; $6517: $85
    db $e4                                        ; $6518: $e4
    rla                                           ; $6519: $17
    add a                                         ; $651a: $87
    jr c, jr_063_6581                             ; $651b: $38 $64

    db $fd                                        ; $651d: $fd
    db $dd                                        ; $651e: $dd
    or d                                          ; $651f: $b2

jr_063_6520:
    db $e3                                        ; $6520: $e3
    ld d, [hl]                                    ; $6521: $56
    ld e, e                                       ; $6522: $5b
    ret nc                                        ; $6523: $d0

    ld d, a                                       ; $6524: $57
    cp e                                          ; $6525: $bb
    adc $2f                                       ; $6526: $ce $2f
    add a                                         ; $6528: $87
    add d                                         ; $6529: $82
    ld l, $78                                     ; $652a: $2e $78
    db $fc                                        ; $652c: $fc
    ld b, c                                       ; $652d: $41
    cp l                                          ; $652e: $bd
    ld [bc], a                                    ; $652f: $02
    pop de                                        ; $6530: $d1
    or e                                          ; $6531: $b3
    halt                                          ; $6532: $76
    xor $89                                       ; $6533: $ee $89
    ld a, e                                       ; $6535: $7b
    ld bc, $fa6d                                  ; $6536: $01 $6d $fa
    sbc h                                         ; $6539: $9c
    add e                                         ; $653a: $83
    or l                                          ; $653b: $b5
    pop bc                                        ; $653c: $c1
    cpl                                           ; $653d: $2f
    ld b, c                                       ; $653e: $41
    ld a, [hl]                                    ; $653f: $7e
    xor a                                         ; $6540: $af
    sbc h                                         ; $6541: $9c
    inc d                                         ; $6542: $14
    db $f4                                        ; $6543: $f4
    db $fd                                        ; $6544: $fd
    ld [bc], a                                    ; $6545: $02
    ld l, l                                       ; $6546: $6d
    ld a, [$839c]                                 ; $6547: $fa $9c $83
    ld e, l                                       ; $654a: $5d
    add hl, de                                    ; $654b: $19
    ld hl, sp+$17                                 ; $654c: $f8 $17
    rst $10                                       ; $654e: $d7
    ld e, l                                       ; $654f: $5d
    ld l, d                                       ; $6550: $6a
    ld [hl], h                                    ; $6551: $74
    ld l, a                                       ; $6552: $6f
    add sp, $0c                                   ; $6553: $e8 $0c
    ld [$017e], a                                 ; $6555: $ea $7e $01
    ld l, l                                       ; $6558: $6d
    ld a, [$6b9c]                                 ; $6559: $fa $9c $6b
    dec [hl]                                      ; $655c: $35
    ld [hl], a                                    ; $655d: $77
    ld e, [hl]                                    ; $655e: $5e
    dec hl                                        ; $655f: $2b
    or b                                          ; $6560: $b0
    push de                                       ; $6561: $d5
    db $fd                                        ; $6562: $fd
    ld [bc], a                                    ; $6563: $02
    ld l, l                                       ; $6564: $6d
    ld a, [$839c]                                 ; $6565: $fa $9c $83

jr_063_6568:
    ld e, l                                       ; $6568: $5d
    ld l, b                                       ; $6569: $68
    ld c, l                                       ; $656a: $4d
    rrca                                          ; $656b: $0f
    xor l                                         ; $656c: $ad
    ld a, d                                       ; $656d: $7a
    db $e4                                        ; $656e: $e4
    xor [hl]                                      ; $656f: $ae
    dec l                                         ; $6570: $2d
    db $dd                                        ; $6571: $dd
    ld b, h                                       ; $6572: $44
    dec l                                         ; $6573: $2d
    db $ec                                        ; $6574: $ec
    cp h                                          ; $6575: $bc
    ld e, a                                       ; $6576: $5f
    ld l, l                                       ; $6577: $6d
    ld a, [$839c]                                 ; $6578: $fa $9c $83
    ld e, l                                       ; $657b: $5d
    pop de                                        ; $657c: $d1
    dec sp                                        ; $657d: $3b
    call nz, $d05f                                ; $657e: $c4 $5f $d0

jr_063_6581:
    ld e, c                                       ; $6581: $59
    ld [hl], a                                    ; $6582: $77
    ld c, l                                       ; $6583: $4d
    ld l, d                                       ; $6584: $6a
    ld a, d                                       ; $6585: $7a
    ld [hl], a                                    ; $6586: $77
    push hl                                       ; $6587: $e5
    rra                                           ; $6588: $1f
    rst $10                                       ; $6589: $d7
    add [hl]                                      ; $658a: $86
    adc $a0                                       ; $658b: $ce $a0
    xor $17                                       ; $658d: $ee $17
    ld l, l                                       ; $658f: $6d
    ld a, [$839c]                                 ; $6590: $fa $9c $83
    dec [hl]                                      ; $6593: $35
    ld b, d                                       ; $6594: $42
    ld hl, $60bf                                  ; $6595: $21 $bf $60
    or a                                          ; $6598: $b7
    db $ec                                        ; $6599: $ec
    and d                                         ; $659a: $a2
    ld e, $f4                                     ; $659b: $1e $f4
    add h                                         ; $659d: $84
    ld c, d                                       ; $659e: $4a
    xor $88                                       ; $659f: $ee $88

Call_063_65a1:
    sbc l                                         ; $65a1: $9d
    rst $18                                       ; $65a2: $df
    inc bc                                        ; $65a3: $03
    ld [hl], e                                    ; $65a4: $73
    cp l                                          ; $65a5: $bd
    ld e, a                                       ; $65a6: $5f
    ld l, l                                       ; $65a7: $6d
    ld a, [$839c]                                 ; $65a8: $fa $9c $83
    dec e                                         ; $65ab: $1d
    db $fc                                        ; $65ac: $fc
    ld hl, sp-$61                                 ; $65ad: $f8 $9f
    dec e                                         ; $65af: $1d
    db $fc                                        ; $65b0: $fc
    ld e, l                                       ; $65b1: $5d
    add c                                         ; $65b2: $81
    sbc h                                         ; $65b3: $9c
    or l                                          ; $65b4: $b5
    ld c, e                                       ; $65b5: $4b
    ld a, a                                       ; $65b6: $7f
    xor e                                         ; $65b7: $ab
    push hl                                       ; $65b8: $e5
    inc e                                         ; $65b9: $1c
    ld b, e                                       ; $65ba: $43
    sbc a                                         ; $65bb: $9f
    add l                                         ; $65bc: $85
    adc h                                         ; $65bd: $8c
    sbc l                                         ; $65be: $9d
    db $eb                                        ; $65bf: $eb
    and [hl]                                      ; $65c0: $a6

jr_063_65c1:
    ld [hl], a                                    ; $65c1: $77
    jr z, jr_063_6568                             ; $65c2: $28 $a4

    pop af                                        ; $65c4: $f1
    ld a, [hl]                                    ; $65c5: $7e
    ld bc, $fa6d                                  ; $65c6: $01 $6d $fa
    sbc h                                         ; $65c9: $9c
    add e                                         ; $65ca: $83
    dec e                                         ; $65cb: $1d
    jp nc, Jump_063_7295                          ; $65cc: $d2 $95 $72

    sub [hl]                                      ; $65cf: $96
    add b                                         ; $65d0: $80
    db $ec                                        ; $65d1: $ec
    cp d                                          ; $65d2: $ba
    add e                                         ; $65d3: $83
    cp a                                          ; $65d4: $bf
    ld b, b                                       ; $65d5: $40
    ld d, l                                       ; $65d6: $55
    sbc $a1                                       ; $65d7: $de $a1
    ld c, $aa                                     ; $65d9: $0e $aa
    and c                                         ; $65db: $a1
    inc sp                                        ; $65dc: $33
    xor b                                         ; $65dd: $a8
    ei                                            ; $65de: $fb
    dec b                                         ; $65df: $05
    ld l, l                                       ; $65e0: $6d
    ld a, [$839c]                                 ; $65e1: $fa $9c $83
    ld e, l                                       ; $65e4: $5d
    sbc h                                         ; $65e5: $9c
    jr nz, jr_063_660d                            ; $65e6: $20 $25

    jr nc, jr_063_65c1                            ; $65e8: $30 $d7

    ld e, l                                       ; $65ea: $5d
    sub e                                         ; $65eb: $93
    and c                                         ; $65ec: $a1
    db $e3                                        ; $65ed: $e3
    di                                            ; $65ee: $f3
    dec b                                         ; $65ef: $05
    ld l, e                                       ; $65f0: $6b
    db $e3                                        ; $65f1: $e3
    adc e                                         ; $65f2: $8b
    or d                                          ; $65f3: $b2
    call c, $6d2f                                 ; $65f4: $dc $2f $6d
    ld a, [$839c]                                 ; $65f7: $fa $9c $83
    xor c                                         ; $65fa: $a9
    call nc, $d8b4                                ; $65fb: $d4 $b4 $d8
    ld [hl-], a                                   ; $65fe: $32
    ld e, l                                       ; $65ff: $5d
    ret nc                                        ; $6600: $d0

    cp c                                          ; $6601: $b9
    adc e                                         ; $6602: $8b
    inc de                                        ; $6603: $13
    and h                                         ; $6604: $a4
    inc b                                         ; $6605: $04
    and $7a                                       ; $6606: $e6 $7a
    cp a                                          ; $6608: $bf
    ld l, l                                       ; $6609: $6d
    ld a, [$6a54]                                 ; $660a: $fa $54 $6a

jr_063_660d:
    or b                                          ; $660d: $b0
    ld a, [hl-]                                   ; $660e: $3a
    ld d, a                                       ; $660f: $57
    xor c                                         ; $6610: $a9
    sub [hl]                                      ; $6611: $96
    ei                                            ; $6612: $fb
    dec b                                         ; $6613: $05
    ld l, l                                       ; $6614: $6d
    ld a, [$839c]                                 ; $6615: $fa $9c $83
    xor c                                         ; $6618: $a9
    call nc, $d8b4                                ; $6619: $d4 $b4 $d8
    ld [hl], d                                    ; $661c: $72
    cp a                                          ; $661d: $bf
    ld l, l                                       ; $661e: $6d
    ld a, [$839c]                                 ; $661f: $fa $9c $83
    xor c                                         ; $6622: $a9
    call nc, $d8b4                                ; $6623: $d4 $b4 $d8
    ld [hl], d                                    ; $6626: $72
    cp a                                          ; $6627: $bf
    ld l, l                                       ; $6628: $6d
    ld a, [$839c]                                 ; $6629: $fa $9c $83
    xor c                                         ; $662c: $a9
    call nc, $d8b4                                ; $662d: $d4 $b4 $d8
    ld [hl], d                                    ; $6630: $72
    cp a                                          ; $6631: $bf
    ld l, l                                       ; $6632: $6d
    ld a, [$6b9c]                                 ; $6633: $fa $9c $6b
    dec [hl]                                      ; $6636: $35
    rst $10                                       ; $6637: $d7
    ld e, $0a                                     ; $6638: $1e $0a
    or c                                          ; $663a: $b1
    sbc a                                         ; $663b: $9f
    ld e, h                                       ; $663c: $5c
    xor l                                         ; $663d: $ad
    ld l, d                                       ; $663e: $6a
    dec hl                                        ; $663f: $2b
    ld e, l                                       ; $6640: $5d
    xor e                                         ; $6641: $ab
    push hl                                       ; $6642: $e5
    ld a, [hl]                                    ; $6643: $7e
    ld bc, $fa6d                                  ; $6644: $01 $6d $fa
    sbc h                                         ; $6647: $9c
    add e                                         ; $6648: $83
    ld e, l                                       ; $6649: $5d
    pop de                                        ; $664a: $d1
    sub c                                         ; $664b: $91
    ld bc, $752d                                  ; $664c: $01 $2d $75
    ld d, a                                       ; $664f: $57
    db $eb                                        ; $6650: $eb
    ld [c], a                                     ; $6651: $e2
    inc a                                         ; $6652: $3c
    xor [hl]                                      ; $6653: $ae
    rlca                                          ; $6654: $07
    push af                                       ; $6655: $f5
    cp e                                          ; $6656: $bb
    ld sp, hl                                     ; $6657: $f9
    ld a, [hl]                                    ; $6658: $7e
    ld bc, $fa6d                                  ; $6659: $01 $6d $fa
    sbc h                                         ; $665c: $9c
    add e                                         ; $665d: $83
    ld e, l                                       ; $665e: $5d
    di                                            ; $665f: $f3
    ei                                            ; $6660: $fb
    di                                            ; $6661: $f3
    dec bc                                        ; $6662: $0b
    inc e                                         ; $6663: $1c
    rst $10                                       ; $6664: $d7
    add e                                         ; $6665: $83
    ld a, [$7cdd]                                 ; $6666: $fa $dd $7c
    cp a                                          ; $6669: $bf
    ld l, l                                       ; $666a: $6d
    ld a, [$839c]                                 ; $666b: $fa $9c $83
    push bc                                       ; $666e: $c5
    call $a586                                    ; $666f: $cd $86 $a5
    db $fc                                        ; $6672: $fc
    sbc $9d                                       ; $6673: $de $9d
    ld h, b                                       ; $6675: $60
    cp [hl]                                       ; $6676: $be
    ld e, a                                       ; $6677: $5f
    ld l, l                                       ; $6678: $6d
    ld a, [$839c]                                 ; $6679: $fa $9c $83
    db $fd                                        ; $667c: $fd
    jp z, Jump_000_2419                           ; $667d: $ca $19 $24

    inc a                                         ; $6680: $3c
    ret nz                                        ; $6681: $c0

    call $f314                                    ; $6682: $cd $14 $f3
    db $fd                                        ; $6685: $fd
    ld [bc], a                                    ; $6686: $02
    ld l, l                                       ; $6687: $6d
    ld a, [$839c]                                 ; $6688: $fa $9c $83
    ret                                           ; $668b: $c9


    rst $20                                       ; $668c: $e7
    ld d, [hl]                                    ; $668d: $56
    ld h, b                                       ; $668e: $60
    halt                                          ; $668f: $76
    ld [$63cf], a                                 ; $6690: $ea $cf $63
    cp [hl]                                       ; $6693: $be
    ld e, a                                       ; $6694: $5f
    ld l, l                                       ; $6695: $6d
    ld a, [$839c]                                 ; $6696: $fa $9c $83
    xor c                                         ; $6699: $a9
    ld d, b                                       ; $669a: $50
    reti                                          ; $669b: $d9


    dec c                                         ; $669c: $0d
    sbc l                                         ; $669d: $9d

Jump_063_669e:
    ld b, c                                       ; $669e: $41
    add hl, hl                                    ; $669f: $29
    set 7, l                                      ; $66a0: $cb $fd
    ld [bc], a                                    ; $66a2: $02
    ld l, l                                       ; $66a3: $6d
    ld a, [$839c]                                 ; $66a4: $fa $9c $83
    sbc l                                         ; $66a7: $9d
    rst $28                                       ; $66a8: $ef
    ld a, [de]                                    ; $66a9: $1a
    ld d, e                                       ; $66aa: $53
    or d                                          ; $66ab: $b2
    cp b                                          ; $66ac: $b8
    ld d, a                                       ; $66ad: $57
    rst $10                                       ; $66ae: $d7
    ld e, $d4                                     ; $66af: $1e $d4
    rst $28                                       ; $66b1: $ef
    and $fb                                       ; $66b2: $e6 $fb
    dec b                                         ; $66b4: $05
    ld l, l                                       ; $66b5: $6d
    ld a, [$839c]                                 ; $66b6: $fa $9c $83
    ld e, l                                       ; $66b9: $5d
    inc d                                         ; $66ba: $14
    or d                                          ; $66bb: $b2
    add $3f                                       ; $66bc: $c6 $3f
    rst $30                                       ; $66be: $f7
    inc b                                         ; $66bf: $04
    call c, Call_063_6a41                         ; $66c0: $dc $41 $6a
    ld a, [hl+]                                   ; $66c3: $2a
    ld [hl], e                                    ; $66c4: $73
    db $dd                                        ; $66c5: $dd
    and l                                         ; $66c6: $a5
    ld c, c                                       ; $66c7: $49
    adc c                                         ; $66c8: $89
    ret c                                         ; $66c9: $d8

    ld a, c                                       ; $66ca: $79
    ld e, h                                       ; $66cb: $5c
    rrca                                          ; $66cc: $0f
    ld [$f377], a                                 ; $66cd: $ea $77 $f3
    db $fd                                        ; $66d0: $fd
    ld [bc], a                                    ; $66d1: $02
    ld l, l                                       ; $66d2: $6d
    ld a, [$9fc8]                                 ; $66d3: $fa $c8 $9f
    adc e                                         ; $66d6: $8b

Jump_063_66d7:
    ld [hl], h                                    ; $66d7: $74
    ld b, c                                       ; $66d8: $41
    di                                            ; $66d9: $f3
    jp c, $fa92                                   ; $66da: $da $92 $fa

    inc a                                         ; $66dd: $3c
    xor [hl]                                      ; $66de: $ae
    dec l                                         ; $66df: $2d
    db $d3                                        ; $66e0: $d3
    cp e                                          ; $66e1: $bb
    ld sp, hl                                     ; $66e2: $f9
    ld a, [hl]                                    ; $66e3: $7e
    ld bc, $fa6d                                  ; $66e4: $01 $6d $fa
    sbc h                                         ; $66e7: $9c
    add e                                         ; $66e8: $83
    and c                                         ; $66e9: $a1
    ld h, l                                       ; $66ea: $65
    daa                                           ; $66eb: $27
    sbc $ab                                       ; $66ec: $de $ab
    ld d, [hl]                                    ; $66ee: $56
    inc e                                         ; $66ef: $1c
    ld [hl], d                                    ; $66f0: $72
    ccf                                           ; $66f1: $3f
    ld e, d                                       ; $66f2: $5a
    sbc e                                         ; $66f3: $9b
    ld h, l                                       ; $66f4: $65
    ld d, c                                       ; $66f5: $51
    ret z                                         ; $66f6: $c8

    add [hl]                                      ; $66f7: $86
    adc [hl]                                      ; $66f8: $8e
    db $ec                                        ; $66f9: $ec
    ld d, l                                       ; $66fa: $55
    dec d                                         ; $66fb: $15
    ld [c], a                                     ; $66fc: $e2
    ei                                            ; $66fd: $fb
    dec b                                         ; $66fe: $05
    ld l, l                                       ; $66ff: $6d
    ld a, [$839c]                                 ; $6700: $fa $9c $83
    and c                                         ; $6703: $a1
    ld h, l                                       ; $6704: $65
    daa                                           ; $6705: $27
    db $dd                                        ; $6706: $dd
    xor e                                         ; $6707: $ab
    ld d, [hl]                                    ; $6708: $56
    inc e                                         ; $6709: $1c
    ld [hl], d                                    ; $670a: $72
    ccf                                           ; $670b: $3f
    ld e, d                                       ; $670c: $5a
    sbc e                                         ; $670d: $9b
    ld h, l                                       ; $670e: $65
    ld d, c                                       ; $670f: $51
    ret z                                         ; $6710: $c8

    add [hl]                                      ; $6711: $86
    adc [hl]                                      ; $6712: $8e
    db $ec                                        ; $6713: $ec
    ld d, l                                       ; $6714: $55
    dec d                                         ; $6715: $15
    ld [c], a                                     ; $6716: $e2
    ei                                            ; $6717: $fb
    dec b                                         ; $6718: $05
    ld l, l                                       ; $6719: $6d
    ld a, [$839c]                                 ; $671a: $fa $9c $83
    and c                                         ; $671d: $a1
    ld h, l                                       ; $671e: $65
    daa                                           ; $671f: $27
    rst $18                                       ; $6720: $df
    xor e                                         ; $6721: $ab
    ld d, [hl]                                    ; $6722: $56
    inc e                                         ; $6723: $1c
    ld [hl], d                                    ; $6724: $72
    ccf                                           ; $6725: $3f
    ld e, d                                       ; $6726: $5a
    sbc e                                         ; $6727: $9b
    ld h, l                                       ; $6728: $65
    ld d, c                                       ; $6729: $51
    ret z                                         ; $672a: $c8

    add [hl]                                      ; $672b: $86
    adc [hl]                                      ; $672c: $8e
    db $ec                                        ; $672d: $ec
    ld d, l                                       ; $672e: $55
    dec d                                         ; $672f: $15
    ld [c], a                                     ; $6730: $e2
    ei                                            ; $6731: $fb
    dec b                                         ; $6732: $05
    ld l, l                                       ; $6733: $6d
    ld a, [$839c]                                 ; $6734: $fa $9c $83
    and c                                         ; $6737: $a1
    ld h, l                                       ; $6738: $65
    and a                                         ; $6739: $a7
    call c, $56ab                                 ; $673a: $dc $ab $56
    inc e                                         ; $673d: $1c
    ld [hl], d                                    ; $673e: $72
    ccf                                           ; $673f: $3f
    ld e, d                                       ; $6740: $5a
    sbc e                                         ; $6741: $9b
    ld h, l                                       ; $6742: $65
    ld d, c                                       ; $6743: $51
    ret z                                         ; $6744: $c8

    add [hl]                                      ; $6745: $86
    adc [hl]                                      ; $6746: $8e
    db $ec                                        ; $6747: $ec
    ld d, l                                       ; $6748: $55
    dec d                                         ; $6749: $15
    ld [c], a                                     ; $674a: $e2
    ei                                            ; $674b: $fb
    dec b                                         ; $674c: $05
    ld l, l                                       ; $674d: $6d
    ld a, [$839c]                                 ; $674e: $fa $9c $83
    and c                                         ; $6751: $a1
    ld h, l                                       ; $6752: $65
    and a                                         ; $6753: $a7
    sbc $ab                                       ; $6754: $de $ab
    ld d, [hl]                                    ; $6756: $56
    inc e                                         ; $6757: $1c
    ld [hl], d                                    ; $6758: $72
    ccf                                           ; $6759: $3f
    ld e, d                                       ; $675a: $5a
    sbc e                                         ; $675b: $9b
    ld h, l                                       ; $675c: $65
    ld d, c                                       ; $675d: $51
    ret z                                         ; $675e: $c8

    add [hl]                                      ; $675f: $86
    adc [hl]                                      ; $6760: $8e
    db $ec                                        ; $6761: $ec
    ld d, l                                       ; $6762: $55
    dec d                                         ; $6763: $15
    ld [c], a                                     ; $6764: $e2
    ei                                            ; $6765: $fb
    dec b                                         ; $6766: $05
    ld l, l                                       ; $6767: $6d
    ld a, [$839c]                                 ; $6768: $fa $9c $83
    and c                                         ; $676b: $a1
    ld h, l                                       ; $676c: $65
    and a                                         ; $676d: $a7
    db $dd                                        ; $676e: $dd
    xor e                                         ; $676f: $ab
    ld d, [hl]                                    ; $6770: $56
    inc e                                         ; $6771: $1c
    ld [hl], d                                    ; $6772: $72
    ccf                                           ; $6773: $3f
    ld e, d                                       ; $6774: $5a
    sbc e                                         ; $6775: $9b
    ld h, l                                       ; $6776: $65
    ld d, c                                       ; $6777: $51
    ret z                                         ; $6778: $c8

    add [hl]                                      ; $6779: $86
    adc [hl]                                      ; $677a: $8e
    db $ec                                        ; $677b: $ec
    ld d, l                                       ; $677c: $55
    dec d                                         ; $677d: $15
    ld [c], a                                     ; $677e: $e2
    ei                                            ; $677f: $fb
    dec b                                         ; $6780: $05
    ld l, l                                       ; $6781: $6d
    ld a, [$839c]                                 ; $6782: $fa $9c $83
    xor c                                         ; $6785: $a9
    call nc, $d8b4                                ; $6786: $d4 $b4 $d8
    ld [hl], d                                    ; $6789: $72
    cp a                                          ; $678a: $bf
    ld l, l                                       ; $678b: $6d
    ld a, [$839c]                                 ; $678c: $fa $9c $83
    xor c                                         ; $678f: $a9
    call nc, $d8b4                                ; $6790: $d4 $b4 $d8
    ld [hl], d                                    ; $6793: $72
    cp a                                          ; $6794: $bf
    ld l, l                                       ; $6795: $6d
    ld a, [$839c]                                 ; $6796: $fa $9c $83
    xor c                                         ; $6799: $a9
    call nc, $d8b4                                ; $679a: $d4 $b4 $d8
    ld [hl], d                                    ; $679d: $72
    cp a                                          ; $679e: $bf
    ld l, l                                       ; $679f: $6d
    ld a, [$839c]                                 ; $67a0: $fa $9c $83
    xor c                                         ; $67a3: $a9
    call nc, $d8b4                                ; $67a4: $d4 $b4 $d8
    ld [hl], d                                    ; $67a7: $72
    cp a                                          ; $67a8: $bf
    ld l, l                                       ; $67a9: $6d
    ld a, [$839c]                                 ; $67aa: $fa $9c $83
    xor c                                         ; $67ad: $a9
    call nc, $d8b4                                ; $67ae: $d4 $b4 $d8
    ld [hl], d                                    ; $67b1: $72
    cp a                                          ; $67b2: $bf
    ld l, l                                       ; $67b3: $6d
    ld a, [$839c]                                 ; $67b4: $fa $9c $83
    xor c                                         ; $67b7: $a9
    call nc, $d8b4                                ; $67b8: $d4 $b4 $d8
    ld [hl], d                                    ; $67bb: $72
    cp a                                          ; $67bc: $bf
    ld l, l                                       ; $67bd: $6d
    ld a, [$6b9c]                                 ; $67be: $fa $9c $6b
    dec [hl]                                      ; $67c1: $35
    rst $10                                       ; $67c2: $d7
    jp z, $b910                                   ; $67c3: $ca $10 $b9

    sub $90                                       ; $67c6: $d6 $90
    cp e                                          ; $67c8: $bb
    xor b                                         ; $67c9: $a8
    inc bc                                        ; $67ca: $03
    inc de                                        ; $67cb: $13
    inc bc                                        ; $67cc: $03
    and d                                         ; $67cd: $a2
    xor d                                         ; $67ce: $aa
    ld c, [hl]                                    ; $67cf: $4e
    dec b                                         ; $67d0: $05
    pop hl                                        ; $67d1: $e1
    sub b                                         ; $67d2: $90
    rst $30                                       ; $67d3: $f7
    dec bc                                        ; $67d4: $0b
    ld l, l                                       ; $67d5: $6d
    ld a, [$839c]                                 ; $67d6: $fa $9c $83
    sbc c                                         ; $67d9: $99
    rst $00                                       ; $67da: $c7
    pop hl                                        ; $67db: $e1
    pop hl                                        ; $67dc: $e1
    xor c                                         ; $67dd: $a9
    cp $6b                                        ; $67de: $fe $6b
    ld [hl], l                                    ; $67e0: $75
    rrca                                          ; $67e1: $0f
    ld [$df77], a                                 ; $67e2: $ea $77 $df
    cpl                                           ; $67e5: $2f
    ld l, l                                       ; $67e6: $6d
    ld a, [$839c]                                 ; $67e7: $fa $9c $83
    sbc c                                         ; $67ea: $99
    rst $00                                       ; $67eb: $c7
    pop hl                                        ; $67ec: $e1
    pop hl                                        ; $67ed: $e1
    xor c                                         ; $67ee: $a9
    cp $6b                                        ; $67ef: $fe $6b

jr_063_67f1:
    ld [hl], l                                    ; $67f1: $75
    rrca                                          ; $67f2: $0f
    ld [$df77], a                                 ; $67f3: $ea $77 $df
    cpl                                           ; $67f6: $2f
    ld l, l                                       ; $67f7: $6d
    ld a, [$839c]                                 ; $67f8: $fa $9c $83
    and c                                         ; $67fb: $a1
    ld h, l                                       ; $67fc: $65
    ld d, c                                       ; $67fd: $51
    ret z                                         ; $67fe: $c8

    add [hl]                                      ; $67ff: $86
    adc [hl]                                      ; $6800: $8e
    db $ec                                        ; $6801: $ec
    xor c                                         ; $6802: $a9
    sub b                                         ; $6803: $90
    add hl, bc                                    ; $6804: $09
    jr @-$0c                                      ; $6805: $18 $f2

    ld a, [hl]                                    ; $6807: $7e
    ld bc, $fa6d                                  ; $6808: $01 $6d $fa
    sbc h                                         ; $680b: $9c
    add e                                         ; $680c: $83
    ld h, c                                       ; $680d: $61
    ld b, d                                       ; $680e: $42
    ld c, h                                       ; $680f: $4c
    ld [$7cd5], a                                 ; $6810: $ea $d5 $7c
    cp a                                          ; $6813: $bf
    ld l, l                                       ; $6814: $6d
    ld a, [$6b9c]                                 ; $6815: $fa $9c $6b
    dec [hl]                                      ; $6818: $35
    rst $10                                       ; $6819: $d7
    add d                                         ; $681a: $82
    ld h, d                                       ; $681b: $62
    ld c, $d0                                     ; $681c: $0e $d0
    call $be6c                                    ; $681e: $cd $6c $be
    ld e, a                                       ; $6821: $5f
    ld l, l                                       ; $6822: $6d
    ld a, [$d39c]                                 ; $6823: $fa $9c $d3
    pop de                                        ; $6826: $d1
    ld [de], a                                    ; $6827: $12
    add l                                         ; $6828: $85
    ld e, h                                       ; $6829: $5c
    ld a, e                                       ; $682a: $7b
    jr z, jr_063_67f1                             ; $682b: $28 $c4

    ld a, [hl]                                    ; $682d: $7e
    ld [hl], d                                    ; $682e: $72
    cp l                                          ; $682f: $bd
    ld e, a                                       ; $6830: $5f
    ld l, l                                       ; $6831: $6d
    ld a, [$039c]                                 ; $6832: $fa $9c $03
    ld b, c                                       ; $6835: $41
    rrca                                          ; $6836: $0f
    sub $fe                                       ; $6837: $d6 $fe
    ld c, e                                       ; $6839: $4b
    ld [bc], a                                    ; $683a: $02
    sub $91                                       ; $683b: $d6 $91
    ld a, [de]                                    ; $683d: $1a
    ld h, [hl]                                    ; $683e: $66
    rst $18                                       ; $683f: $df
    cpl                                           ; $6840: $2f
    ld l, l                                       ; $6841: $6d
    ld a, [$6b9c]                                 ; $6842: $fa $9c $6b
    dec [hl]                                      ; $6845: $35
    ld [hl], a                                    ; $6846: $77
    ld [c], a                                     ; $6847: $e2
    cp l                                          ; $6848: $bd
    ld a, [$5d7b]                                 ; $6849: $fa $7b $5d
    ld sp, hl                                     ; $684c: $f9
    ld d, d                                       ; $684d: $52
    xor $17                                       ; $684e: $ee $17
    ld l, l                                       ; $6850: $6d
    ld a, [$6b9c]                                 ; $6851: $fa $9c $6b
    dec [hl]                                      ; $6854: $35
    ld [hl], a                                    ; $6855: $77
    jp nc, $fabd                                  ; $6856: $d2 $bd $fa

    ld a, e                                       ; $6859: $7b
    ld e, l                                       ; $685a: $5d
    ld sp, hl                                     ; $685b: $f9
    ld d, d                                       ; $685c: $52
    xor $17                                       ; $685d: $ee $17
    ld l, l                                       ; $685f: $6d
    ld a, [$6b9c]                                 ; $6860: $fa $9c $6b
    dec [hl]                                      ; $6863: $35
    ld [hl], a                                    ; $6864: $77
    ld a, [c]                                     ; $6865: $f2
    cp l                                          ; $6866: $bd
    ld a, [$5d7b]                                 ; $6867: $fa $7b $5d
    ld sp, hl                                     ; $686a: $f9
    ld d, d                                       ; $686b: $52
    xor $17                                       ; $686c: $ee $17
    ld l, l                                       ; $686e: $6d
    ld a, [$6b9c]                                 ; $686f: $fa $9c $6b
    dec [hl]                                      ; $6872: $35
    ld [hl], a                                    ; $6873: $77
    jp z, $fabd                                   ; $6874: $ca $bd $fa

    ld a, e                                       ; $6877: $7b
    ld e, l                                       ; $6878: $5d
    ld sp, hl                                     ; $6879: $f9
    ld d, d                                       ; $687a: $52
    xor $17                                       ; $687b: $ee $17
    ld l, l                                       ; $687d: $6d
    ld a, [$6b9c]                                 ; $687e: $fa $9c $6b
    dec [hl]                                      ; $6881: $35
    ld [hl], a                                    ; $6882: $77
    ld [$fabd], a                                 ; $6883: $ea $bd $fa
    ld a, e                                       ; $6886: $7b
    ld e, l                                       ; $6887: $5d
    ld sp, hl                                     ; $6888: $f9
    ld d, d                                       ; $6889: $52
    xor $17                                       ; $688a: $ee $17
    ld l, l                                       ; $688c: $6d
    ld a, [$6b9c]                                 ; $688d: $fa $9c $6b
    dec [hl]                                      ; $6890: $35
    ld [hl], a                                    ; $6891: $77
    jp c, $fabd                                   ; $6892: $da $bd $fa

    ld a, e                                       ; $6895: $7b
    ld e, l                                       ; $6896: $5d
    ld sp, hl                                     ; $6897: $f9
    ld d, d                                       ; $6898: $52
    xor $17                                       ; $6899: $ee $17
    ld l, l                                       ; $689b: $6d
    ld a, [$6b9c]                                 ; $689c: $fa $9c $6b
    dec [hl]                                      ; $689f: $35
    ld [hl], a                                    ; $68a0: $77
    ld a, [$fabd]                                 ; $68a1: $fa $bd $fa
    ld a, e                                       ; $68a4: $7b
    ld e, l                                       ; $68a5: $5d
    ld sp, hl                                     ; $68a6: $f9
    ld d, d                                       ; $68a7: $52
    xor $17                                       ; $68a8: $ee $17
    ld l, l                                       ; $68aa: $6d
    ld a, [$839c]                                 ; $68ab: $fa $9c $83
    sub c                                         ; $68ae: $91
    cp $dd                                        ; $68af: $fe $dd
    ld l, c                                       ; $68b1: $69
    xor c                                         ; $68b2: $a9
    adc e                                         ; $68b3: $8b
    ld b, d                                       ; $68b4: $42
    and [hl]                                      ; $68b5: $a6
    ld e, c                                       ; $68b6: $59
    ld b, b                                       ; $68b7: $40
    jp z, Jump_000_02fd                           ; $68b8: $ca $fd $02

    ld l, l                                       ; $68bb: $6d
    ld a, [$839c]                                 ; $68bc: $fa $9c $83
    dec e                                         ; $68bf: $1d
    db $fc                                        ; $68c0: $fc
    dec b                                         ; $68c1: $05
    inc l                                         ; $68c2: $2c
    ld [hl], l                                    ; $68c3: $75
    db $ed                                        ; $68c4: $ed
    ld d, b                                       ; $68c5: $50
    add hl, sp                                    ; $68c6: $39
    inc h                                         ; $68c7: $24
    ld hl, sp-$48                                 ; $68c8: $f8 $b8
    ld e, $d4                                     ; $68ca: $1e $d4

jr_063_68cc:
    rst $28                                       ; $68cc: $ef
    and $fb                                       ; $68cd: $e6 $fb
    dec b                                         ; $68cf: $05
    ld l, l                                       ; $68d0: $6d
    ld a, [$839c]                                 ; $68d1: $fa $9c $83
    sub c                                         ; $68d4: $91
    and c                                         ; $68d5: $a1
    or [hl]                                       ; $68d6: $b6
    add b                                         ; $68d7: $80
    ld a, a                                       ; $68d8: $7f
    xor a                                         ; $68d9: $af
    ld d, c                                       ; $68da: $51
    and a                                         ; $68db: $a7
    jp nc, $f72d                                  ; $68dc: $d2 $2d $f7

    dec bc                                        ; $68df: $0b
    ld l, l                                       ; $68e0: $6d
    ld a, [$6b9c]                                 ; $68e1: $fa $9c $6b
    dec [hl]                                      ; $68e4: $35
    rst $10                                       ; $68e5: $d7
    add b                                         ; $68e6: $80
    ld b, [hl]                                    ; $68e7: $46
    add a                                         ; $68e8: $87
    ret nz                                        ; $68e9: $c0

    ld d, [hl]                                    ; $68ea: $56
    and $fb                                       ; $68eb: $e6 $fb
    dec b                                         ; $68ed: $05
    ld l, l                                       ; $68ee: $6d
    ld a, [$6b9c]                                 ; $68ef: $fa $9c $6b
    dec [hl]                                      ; $68f2: $35
    rst $10                                       ; $68f3: $d7
    add b                                         ; $68f4: $80
    ld b, [hl]                                    ; $68f5: $46
    add a                                         ; $68f6: $87
    ret nz                                        ; $68f7: $c0

    ld d, [hl]                                    ; $68f8: $56
    and $fb                                       ; $68f9: $e6 $fb
    dec b                                         ; $68fb: $05
    ld l, l                                       ; $68fc: $6d
    ld a, [$6b9c]                                 ; $68fd: $fa $9c $6b
    dec [hl]                                      ; $6900: $35
    rst $10                                       ; $6901: $d7
    jp z, $b910                                   ; $6902: $ca $10 $b9

    sub $90                                       ; $6905: $d6 $90
    dec sp                                        ; $6907: $3b
    ld c, b                                       ; $6908: $48
    db $f4                                        ; $6909: $f4
    ld [c], a                                     ; $690a: $e2
    jr nz, jr_063_68cc                            ; $690b: $20 $bf

    db $fc                                        ; $690d: $fc
    sbc $eb                                       ; $690e: $de $eb
    ld d, h                                       ; $6910: $54
    db $10                                        ; $6911: $10
    ld c, $79                                     ; $6912: $0e $79
    cp a                                          ; $6914: $bf
    ld l, l                                       ; $6915: $6d
    ld a, [$839c]                                 ; $6916: $fa $9c $83
    dec e                                         ; $6919: $1d
    call nc, $e94b                                ; $691a: $d4 $4b $e9
    adc $ca                                       ; $691d: $ce $ca
    ld a, [hl-]                                   ; $691f: $3a
    add d                                         ; $6920: $82
    di                                            ; $6921: $f3
    cp b                                          ; $6922: $b8
    ld e, $d4                                     ; $6923: $1e $d4
    rst $28                                       ; $6925: $ef
    and $fb                                       ; $6926: $e6 $fb
    dec b                                         ; $6928: $05
    ld l, l                                       ; $6929: $6d
    ld a, [$6b9c]                                 ; $692a: $fa $9c $6b
    dec [hl]                                      ; $692d: $35
    rst $30                                       ; $692e: $f7
    ld a, h                                       ; $692f: $7c
    db $fc                                        ; $6930: $fc
    rst $08                                       ; $6931: $cf
    xor [hl]                                      ; $6932: $ae
    inc c                                         ; $6933: $0c
    ld c, a                                       ; $6934: $4f
    sub h                                         ; $6935: $94
    sub $d4                                       ; $6936: $d6 $d4
    xor c                                         ; $6938: $a9
    jr nz, jr_063_6957                            ; $6939: $20 $1c

    ld a, [c]                                     ; $693b: $f2
    ld a, [hl]                                    ; $693c: $7e
    ld bc, $fa6d                                  ; $693d: $01 $6d $fa
    sbc h                                         ; $6940: $9c
    add e                                         ; $6941: $83
    cp c                                          ; $6942: $b9
    add e                                         ; $6943: $83
    xor d                                         ; $6944: $aa
    sub b                                         ; $6945: $90
    dec a                                         ; $6946: $3d
    xor b                                         ; $6947: $a8
    rst $18                                       ; $6948: $df
    call Call_000_0bf7                            ; $6949: $cd $f7 $0b
    ld l, l                                       ; $694c: $6d
    ld a, [$6b9c]                                 ; $694d: $fa $9c $6b
    dec [hl]                                      ; $6950: $35
    rst $10                                       ; $6951: $d7
    jp z, $b910                                   ; $6952: $ca $10 $b9

    sub $90                                       ; $6955: $d6 $90

jr_063_6957:
    cp e                                          ; $6957: $bb
    ld c, d                                       ; $6958: $4a
    add a                                         ; $6959: $87
    ld c, h                                       ; $695a: $4c
    rst $30                                       ; $695b: $f7
    ld e, [hl]                                    ; $695c: $5e
    and a                                         ; $695d: $a7
    add d                                         ; $695e: $82
    ld [hl], b                                    ; $695f: $70
    ret z                                         ; $6960: $c8

    ei                                            ; $6961: $fb
    dec b                                         ; $6962: $05
    ld l, l                                       ; $6963: $6d
    ld a, [$6b9c]                                 ; $6964: $fa $9c $6b
    dec [hl]                                      ; $6967: $35
    rst $10                                       ; $6968: $d7
    jp z, $b910                                   ; $6969: $ca $10 $b9

    sub $90                                       ; $696c: $d6 $90
    dec sp                                        ; $696e: $3b
    inc h                                         ; $696f: $24
    cp a                                          ; $6970: $bf
    push hl                                       ; $6971: $e5
    ld a, [hl-]                                   ; $6972: $3a
    dec d                                         ; $6973: $15
    add h                                         ; $6974: $84
    ld b, e                                       ; $6975: $43
    sbc $2f                                       ; $6976: $de $2f
    ld l, l                                       ; $6978: $6d
    ld a, [$6b9c]                                 ; $6979: $fa $9c $6b
    dec [hl]                                      ; $697c: $35
    rst $10                                       ; $697d: $d7
    ld l, d                                       ; $697e: $6a
    xor [hl]                                      ; $697f: $ae
    sub l                                         ; $6980: $95
    ld hl, $ad72                                  ; $6981: $21 $72 $ad
    ld hl, $a877                                  ; $6984: $21 $77 $a8
    dec b                                         ; $6987: $05
    jp hl                                         ; $6988: $e9


    ld a, [hl-]                                   ; $6989: $3a
    dec d                                         ; $698a: $15
    add h                                         ; $698b: $84
    ld b, e                                       ; $698c: $43
    sbc $2f                                       ; $698d: $de $2f
    ld l, l                                       ; $698f: $6d
    ld a, [$839c]                                 ; $6990: $fa $9c $83
    sbc c                                         ; $6993: $99
    rst $10                                       ; $6994: $d7
    ld a, a                                       ; $6995: $7f
    ld [hl], c                                    ; $6996: $71
    and [hl]                                      ; $6997: $a6
    cp $dc                                        ; $6998: $fe $dc
    cpl                                           ; $699a: $2f
    ld l, l                                       ; $699b: $6d
    ld a, [$839c]                                 ; $699c: $fa $9c $83
    ld e, l                                       ; $699f: $5d
    inc d                                         ; $69a0: $14
    ld [hl-], a                                   ; $69a1: $32
    cp $82                                        ; $69a2: $fe $82
    dec e                                         ; $69a4: $1d
    and h                                         ; $69a5: $a4
    call nc, $d41e                                ; $69a6: $d4 $1e $d4
    rst $28                                       ; $69a9: $ef
    and $fb                                       ; $69aa: $e6 $fb
    dec b                                         ; $69ac: $05
    ld l, l                                       ; $69ad: $6d
    ld a, [$839c]                                 ; $69ae: $fa $9c $83
    ld e, l                                       ; $69b1: $5d
    sub e                                         ; $69b2: $93
    ld hl, $f4a2                                  ; $69b3: $21 $a2 $f4
    and b                                         ; $69b6: $a0
    ld a, [hl]                                    ; $69b7: $7e
    scf                                           ; $69b8: $37
    rst $18                                       ; $69b9: $df
    cpl                                           ; $69ba: $2f
    ld l, l                                       ; $69bb: $6d
    ld a, [$839c]                                 ; $69bc: $fa $9c $83
    xor c                                         ; $69bf: $a9
    call nc, $d8b4                                ; $69c0: $d4 $b4 $d8
    ld [hl-], a                                   ; $69c3: $32
    ld e, l                                       ; $69c4: $5d
    ret nc                                        ; $69c5: $d0

    cp c                                          ; $69c6: $b9
    adc e                                         ; $69c7: $8b
    inc de                                        ; $69c8: $13
    and h                                         ; $69c9: $a4
    inc b                                         ; $69ca: $04
    and $da                                       ; $69cb: $e6 $da
    ld hl, sp-$5e                                 ; $69cd: $f8 $a2
    inc l                                         ; $69cf: $2c
    rst $30                                       ; $69d0: $f7
    dec bc                                        ; $69d1: $0b
    ld l, l                                       ; $69d2: $6d
    ld a, [$6b9c]                                 ; $69d3: $fa $9c $6b
    dec [hl]                                      ; $69d6: $35
    rst $10                                       ; $69d7: $d7
    ld [hl], d                                    ; $69d8: $72
    ld h, [hl]                                    ; $69d9: $66
    sub b                                         ; $69da: $90
    sbc l                                         ; $69db: $9d
    cp c                                          ; $69dc: $b9
    sub e                                         ; $69dd: $93
    adc a                                         ; $69de: $8f
    ccf                                           ; $69df: $3f
    push hl                                       ; $69e0: $e5
    ld a, [hl]                                    ; $69e1: $7e
    ld bc, $fa6d                                  ; $69e2: $01 $6d $fa
    sbc h                                         ; $69e5: $9c
    adc e                                         ; $69e6: $8b
    adc l                                         ; $69e7: $8d
    xor e                                         ; $69e8: $ab
    call nc, $1a46                                ; $69e9: $d4 $46 $1a
    pop de                                        ; $69ec: $d1
    ld [hl], d                                    ; $69ed: $72
    cp a                                          ; $69ee: $bf
    ld l, l                                       ; $69ef: $6d
    ld a, [$839c]                                 ; $69f0: $fa $9c $83
    or l                                          ; $69f3: $b5
    add a                                         ; $69f4: $87
    ld b, d                                       ; $69f5: $42
    db $ec                                        ; $69f6: $ec
    daa                                           ; $69f7: $27
    rst $10                                       ; $69f8: $d7
    inc hl                                        ; $69f9: $23
    rlca                                          ; $69fa: $07
    add d                                         ; $69fb: $82
    push hl                                       ; $69fc: $e5
    ld c, e                                       ; $69fd: $4b
    xor c                                         ; $69fe: $a9
    db $e4                                        ; $69ff: $e4
    rst $28                                       ; $6a00: $ef
    rst $30                                       ; $6a01: $f7
    dec bc                                        ; $6a02: $0b
    ld l, l                                       ; $6a03: $6d
    ld a, [$839c]                                 ; $6a04: $fa $9c $83
    ld e, l                                       ; $6a07: $5d
    sbc h                                         ; $6a08: $9c
    sbc d                                         ; $6a09: $9a
    jr z, jr_063_6a0e                             ; $6a0a: $28 $02

    pop bc                                        ; $6a0c: $c1
    sub b                                         ; $6a0d: $90

jr_063_6a0e:
    ld [hl], l                                    ; $6a0e: $75
    sbc b                                         ; $6a0f: $98
    sub [hl]                                      ; $6a10: $96
    ld [c], a                                     ; $6a11: $e2
    ld a, [de]                                    ; $6a12: $1a
    ld h, d                                       ; $6a13: $62
    rst $38                                       ; $6a14: $ff

Call_063_6a15:
    ld [$41dd], sp                                ; $6a15: $08 $dd $41
    jp z, Jump_000_02fd                           ; $6a18: $ca $fd $02

    ld l, l                                       ; $6a1b: $6d
    ld a, [$839c]                                 ; $6a1c: $fa $9c $83
    ld e, l                                       ; $6a1f: $5d
    sbc h                                         ; $6a20: $9c

Call_063_6a21:
    sbc d                                         ; $6a21: $9a
    jr z, jr_063_6a26                             ; $6a22: $28 $02

    pop bc                                        ; $6a24: $c1
    sub b                                         ; $6a25: $90

jr_063_6a26:
    ld [hl], l                                    ; $6a26: $75
    and c                                         ; $6a27: $a1
    ld b, l                                       ; $6a28: $45
    add [hl]                                      ; $6a29: $86
    adc [hl]                                      ; $6a2a: $8e
    or l                                          ; $6a2b: $b5
    or d                                          ; $6a2c: $b2
    xor $fb                                       ; $6a2d: $ee $fb
    dec b                                         ; $6a2f: $05
    ld l, l                                       ; $6a30: $6d
    ld a, [$839c]                                 ; $6a31: $fa $9c $83
    sbc c                                         ; $6a34: $99
    and a                                         ; $6a35: $a7
    ld b, d                                       ; $6a36: $42
    ld h, l                                       ; $6a37: $65
    ld d, a                                       ; $6a38: $57
    push af                                       ; $6a39: $f5
    dec de                                        ; $6a3a: $1b
    rst $30                                       ; $6a3b: $f7
    dec bc                                        ; $6a3c: $0b
    ld l, l                                       ; $6a3d: $6d
    ld a, [$6b9c]                                 ; $6a3e: $fa $9c $6b

Call_063_6a41:
    dec [hl]                                      ; $6a41: $35
    ld [hl], a                                    ; $6a42: $77
    ld de, $a274                                  ; $6a43: $11 $74 $a2
    ld h, h                                       ; $6a46: $64
    sbc l                                         ; $6a47: $9d
    ld a, [bc]                                    ; $6a48: $0a
    jp nz, $ef21                                  ; $6a49: $c2 $21 $ef

    rla                                           ; $6a4c: $17
    ld l, l                                       ; $6a4d: $6d
    ld a, [$839c]                                 ; $6a4e: $fa $9c $83
    dec e                                         ; $6a51: $1d
    ld [c], a                                     ; $6a52: $e2
    sub b                                         ; $6a53: $90
    push af                                       ; $6a54: $f5
    ld [hl], a                                    ; $6a55: $77
    set 7, l                                      ; $6a56: $cb $fd
    ld [bc], a                                    ; $6a58: $02
    ld l, l                                       ; $6a59: $6d
    ld a, [$6b9c]                                 ; $6a5a: $fa $9c $6b
    dec [hl]                                      ; $6a5d: $35
    rst $10                                       ; $6a5e: $d7
    add hl, hl                                    ; $6a5f: $29
    jp hl                                         ; $6a60: $e9


    adc h                                         ; $6a61: $8c
    add hl, hl                                    ; $6a62: $29
    jp hl                                         ; $6a63: $e9


    ld e, [hl]                                    ; $6a64: $5e
    call Call_000_0bf7                            ; $6a65: $cd $f7 $0b
    ld l, l                                       ; $6a68: $6d
    ld a, [$839c]                                 ; $6a69: $fa $9c $83
    ld e, l                                       ; $6a6c: $5d
    add hl, de                                    ; $6a6d: $19
    sub d                                         ; $6a6e: $92
    sub e                                         ; $6a6f: $93
    jp nz, $2531                                  ; $6a70: $c2 $31 $25

    db $dd                                        ; $6a73: $dd
    xor e                                         ; $6a74: $ab
    ld sp, hl                                     ; $6a75: $f9
    ld a, [hl]                                    ; $6a76: $7e
    ld bc, $fa6d                                  ; $6a77: $01 $6d $fa
    sbc h                                         ; $6a7a: $9c
    add e                                         ; $6a7b: $83
    xor c                                         ; $6a7c: $a9
    call nc, $d8b4                                ; $6a7d: $d4 $b4 $d8
    ld [hl], d                                    ; $6a80: $72

jr_063_6a81:
    cp a                                          ; $6a81: $bf
    ld l, l                                       ; $6a82: $6d
    ld a, [$839c]                                 ; $6a83: $fa $9c $83
    cp c                                          ; $6a86: $b9
    add e                                         ; $6a87: $83
    xor d                                         ; $6a88: $aa
    sub b                                         ; $6a89: $90
    adc l                                         ; $6a8a: $8d
    cp $05                                        ; $6a8b: $fe $05
    sbc l                                         ; $6a8d: $9d
    dec a                                         ; $6a8e: $3d
    xor b                                         ; $6a8f: $a8

jr_063_6a90:
    rst $18                                       ; $6a90: $df
    call Call_000_0bf7                            ; $6a91: $cd $f7 $0b
    ld l, l                                       ; $6a94: $6d
    ld a, [$839c]                                 ; $6a95: $fa $9c $83
    or l                                          ; $6a98: $b5
    rst $38                                       ; $6a99: $ff
    ld c, h                                       ; $6a9a: $4c
    ld c, l                                       ; $6a9b: $4d
    ld e, l                                       ; $6a9c: $5d
    inc hl                                        ; $6a9d: $23
    xor b                                         ; $6a9e: $a8

jr_063_6a9f:
    ld a, d                                       ; $6a9f: $7a
    cp a                                          ; $6aa0: $bf
    ld l, l                                       ; $6aa1: $6d
    ld a, [$839c]                                 ; $6aa2: $fa $9c $83
    db $fd                                        ; $6aa5: $fd
    jp z, Jump_000_2419                           ; $6aa6: $ca $19 $24

    inc a                                         ; $6aa9: $3c
    and b                                         ; $6aaa: $a0
    ld b, d                                       ; $6aab: $42
    ld h, $60                                     ; $6aac: $26 $60
    ld c, b                                       ; $6aae: $48
    set 7, l                                      ; $6aaf: $cb $fd
    ld [bc], a                                    ; $6ab1: $02
    ld l, l                                       ; $6ab2: $6d
    ld a, [$d39c]                                 ; $6ab3: $fa $9c $d3
    pop de                                        ; $6ab6: $d1
    ld [de], a                                    ; $6ab7: $12
    add l                                         ; $6ab8: $85
    ld e, h                                       ; $6ab9: $5c
    ld a, e                                       ; $6aba: $7b
    jr z, jr_063_6a81                             ; $6abb: $28 $c4

    ld a, [hl]                                    ; $6abd: $7e
    ld [hl], d                                    ; $6abe: $72
    cp l                                          ; $6abf: $bd
    ld e, a                                       ; $6ac0: $5f
    ld l, l                                       ; $6ac1: $6d
    ld a, [$d39c]                                 ; $6ac2: $fa $9c $d3
    pop de                                        ; $6ac5: $d1
    ld [de], a                                    ; $6ac6: $12
    add l                                         ; $6ac7: $85
    ld e, h                                       ; $6ac8: $5c
    ld a, e                                       ; $6ac9: $7b
    jr z, jr_063_6a90                             ; $6aca: $28 $c4

    ld a, [hl]                                    ; $6acc: $7e
    ld [hl], d                                    ; $6acd: $72
    cp l                                          ; $6ace: $bd
    ld e, a                                       ; $6acf: $5f
    ld l, l                                       ; $6ad0: $6d
    ld a, [$d39c]                                 ; $6ad1: $fa $9c $d3
    pop de                                        ; $6ad4: $d1
    ld [de], a                                    ; $6ad5: $12
    add l                                         ; $6ad6: $85
    ld e, h                                       ; $6ad7: $5c
    ld a, e                                       ; $6ad8: $7b
    jr z, jr_063_6a9f                             ; $6ad9: $28 $c4

    ld a, [hl]                                    ; $6adb: $7e
    ld [hl], d                                    ; $6adc: $72
    cp l                                          ; $6add: $bd
    ld e, a                                       ; $6ade: $5f
    ld l, l                                       ; $6adf: $6d
    ld a, [$d39c]                                 ; $6ae0: $fa $9c $d3
    pop de                                        ; $6ae3: $d1
    ld [de], a                                    ; $6ae4: $12
    add l                                         ; $6ae5: $85
    ld e, h                                       ; $6ae6: $5c
    ei                                            ; $6ae7: $fb
    cpl                                           ; $6ae8: $2f
    add hl, bc                                    ; $6ae9: $09
    ld e, b                                       ; $6aea: $58
    ld b, a                                       ; $6aeb: $47
    ld l, d                                       ; $6aec: $6a
    sbc b                                         ; $6aed: $98
    ld a, l                                       ; $6aee: $7d
    cp a                                          ; $6aef: $bf
    ld l, l                                       ; $6af0: $6d
    ld a, [$839c]                                 ; $6af1: $fa $9c $83
    xor c                                         ; $6af4: $a9
    sub b                                         ; $6af5: $90
    call c, Call_000_30d0                         ; $6af6: $dc $d0 $30
    dec sp                                        ; $6af9: $3b
    ld d, l                                       ; $6afa: $55
    rst $10                                       ; $6afb: $d7
    dec de                                        ; $6afc: $1b
    dec c                                         ; $6afd: $0d
    set 7, l                                      ; $6afe: $cb $fd
    ld [bc], a                                    ; $6b00: $02
    ld l, l                                       ; $6b01: $6d
    ld a, [$839c]                                 ; $6b02: $fa $9c $83
    dec e                                         ; $6b05: $1d
    ld [c], a                                     ; $6b06: $e2
    sub b                                         ; $6b07: $90
    push af                                       ; $6b08: $f5
    ld [hl], a                                    ; $6b09: $77
    set 7, l                                      ; $6b0a: $cb $fd
    ld [bc], a                                    ; $6b0c: $02
    ld l, l                                       ; $6b0d: $6d
    ld a, [$839c]                                 ; $6b0e: $fa $9c $83
    dec e                                         ; $6b11: $1d
    call nc, $e94b                                ; $6b12: $d4 $4b $e9
    ld c, [hl]                                    ; $6b15: $4e
    jp nc, $e3cf                                  ; $6b16: $d2 $cf $e3

    ld c, $85                                     ; $6b19: $0e $85
    inc [hl]                                      ; $6b1b: $34
    ld e, $d7                                     ; $6b1c: $1e $d7
    add e                                         ; $6b1e: $83
    ld a, [$7cdd]                                 ; $6b1f: $fa $dd $7c
    cp a                                          ; $6b22: $bf
    ld l, l                                       ; $6b23: $6d
    ld a, [$839c]                                 ; $6b24: $fa $9c $83
    or l                                          ; $6b27: $b5
    inc l                                         ; $6b28: $2c
    rst $00                                       ; $6b29: $c7
    dec l                                         ; $6b2a: $2d
    sub h                                         ; $6b2b: $94
    or l                                          ; $6b2c: $b5
    ld a, [hl]                                    ; $6b2d: $7e
    dec bc                                        ; $6b2e: $0b
    ld [hl-], a                                   ; $6b2f: $32
    ld a, [bc]                                    ; $6b30: $0a
    ld e, c                                       ; $6b31: $59
    dec [hl]                                      ; $6b32: $35
    ld [bc], a                                    ; $6b33: $02
    ld d, d                                       ; $6b34: $52
    ld [$2a71], a                                 ; $6b35: $ea $71 $2a
    ld [$3487], sp                                ; $6b38: $08 $87 $34
    cp a                                          ; $6b3b: $bf
    ld l, l                                       ; $6b3c: $6d
    ld a, [$6b9c]                                 ; $6b3d: $fa $9c $6b
    dec [hl]                                      ; $6b40: $35
    add a                                         ; $6b41: $87
    ld l, c                                       ; $6b42: $69
    add hl, hl                                    ; $6b43: $29
    and $00                                       ; $6b44: $e6 $00
    db $dd                                        ; $6b46: $dd
    call z, $fbe6                                 ; $6b47: $cc $e6 $fb
    dec b                                         ; $6b4a: $05
    ld l, l                                       ; $6b4b: $6d
    ld a, [$839c]                                 ; $6b4c: $fa $9c $83
    dec e                                         ; $6b4f: $1d
    call nc, $e94b                                ; $6b50: $d4 $4b $e9
    adc $47                                       ; $6b53: $ce $47
    xor a                                         ; $6b55: $af
    and b                                         ; $6b56: $a0
    adc [hl]                                      ; $6b57: $8e
    db $eb                                        ; $6b58: $eb
    ld b, c                                       ; $6b59: $41
    db $fd                                        ; $6b5a: $fd
    ld l, [hl]                                    ; $6b5b: $6e
    cp [hl]                                       ; $6b5c: $be
    ld e, a                                       ; $6b5d: $5f
    ld l, l                                       ; $6b5e: $6d
    ld a, [$839c]                                 ; $6b5f: $fa $9c $83
    dec e                                         ; $6b62: $1d
    call nc, $e94b                                ; $6b63: $d4 $4b $e9
    ld c, [hl]                                    ; $6b66: $4e
    and l                                         ; $6b67: $a5
    ld c, e                                       ; $6b68: $4b
    push hl                                       ; $6b69: $e5
    db $e3                                        ; $6b6a: $e3
    ld a, d                                       ; $6b6b: $7a
    ld d, b                                       ; $6b6c: $50
    cp a                                          ; $6b6d: $bf
    sbc e                                         ; $6b6e: $9b
    rst $28                                       ; $6b6f: $ef
    rla                                           ; $6b70: $17
    ld l, l                                       ; $6b71: $6d
    ld a, [$839c]                                 ; $6b72: $fa $9c $83
    xor c                                         ; $6b75: $a9
    sub b                                         ; $6b76: $90
    call c, $aa08                                 ; $6b77: $dc $08 $aa
    ld e, d                                       ; $6b7a: $5a
    xor $17                                       ; $6b7b: $ee $17
    ld l, l                                       ; $6b7d: $6d
    ld a, [$839c]                                 ; $6b7e: $fa $9c $83
    ld e, c                                       ; $6b81: $59
    ld b, [hl]                                    ; $6b82: $46
    ld a, [$dc79]                                 ; $6b83: $fa $79 $dc
    and c                                         ; $6b86: $a1
    xor h                                         ; $6b87: $ac
    ld a, h                                       ; $6b88: $7c
    add hl, hl                                    ; $6b89: $29
    rst $30                                       ; $6b8a: $f7
    dec bc                                        ; $6b8b: $0b
    ld l, l                                       ; $6b8c: $6d
    ld a, [$6b9c]                                 ; $6b8d: $fa $9c $6b
    dec [hl]                                      ; $6b90: $35
    rst $10                                       ; $6b91: $d7
    jp z, $b910                                   ; $6b92: $ca $10 $b9

    sub $90                                       ; $6b95: $d6 $90
    dec sp                                        ; $6b97: $3b
    rra                                           ; $6b98: $1f
    ld b, h                                       ; $6b99: $44
    ld [$1054], a                                 ; $6b9a: $ea $54 $10
    ld c, $79                                     ; $6b9d: $0e $79
    cp a                                          ; $6b9f: $bf
    ld l, l                                       ; $6ba0: $6d

Call_063_6ba1:
Jump_063_6ba1:
    ld a, [$839c]                                 ; $6ba1: $fa $9c $83
    sbc c                                         ; $6ba4: $99
    rst $00                                       ; $6ba5: $c7
    pop hl                                        ; $6ba6: $e1
    pop hl                                        ; $6ba7: $e1
    xor c                                         ; $6ba8: $a9
    cp $6b                                        ; $6ba9: $fe $6b
    ld [hl], l                                    ; $6bab: $75
    rrca                                          ; $6bac: $0f
    ld [$df77], a                                 ; $6bad: $ea $77 $df
    cpl                                           ; $6bb0: $2f
    ld l, l                                       ; $6bb1: $6d
    ld a, [$839c]                                 ; $6bb2: $fa $9c $83
    and l                                         ; $6bb5: $a5
    cp $3c                                        ; $6bb6: $fe $3c
    and $3d                                       ; $6bb8: $e6 $3d
    add $a1                                       ; $6bba: $c6 $a1
    rla                                           ; $6bbc: $17
    ld [hl], l                                    ; $6bbd: $75
    ld c, l                                       ; $6bbe: $4d
    ld l, h                                       ; $6bbf: $6c
    ld b, c                                       ; $6bc0: $41
    ld c, a                                       ; $6bc1: $4f
    xor b                                         ; $6bc2: $a8
    and l                                         ; $6bc3: $a5
    dec sp                                        ; $6bc4: $3b
    rst $28                                       ; $6bc5: $ef
    rla                                           ; $6bc6: $17
    ld l, l                                       ; $6bc7: $6d
    ld a, [$839c]                                 ; $6bc8: $fa $9c $83
    dec e                                         ; $6bcb: $1d
    ld [c], a                                     ; $6bcc: $e2
    sub b                                         ; $6bcd: $90
    push af                                       ; $6bce: $f5

jr_063_6bcf:
    ld [hl], a                                    ; $6bcf: $77
    set 7, l                                      ; $6bd0: $cb $fd
    ld [bc], a                                    ; $6bd2: $02
    rla                                           ; $6bd3: $17
    jr c, jr_063_6bcf                             ; $6bd4: $38 $f9

    add e                                         ; $6bd6: $83
    adc h                                         ; $6bd7: $8c
    ld c, l                                       ; $6bd8: $4d
    sub h                                         ; $6bd9: $94
    sub h                                         ; $6bda: $94
    ret nc                                        ; $6bdb: $d0

    ld b, e                                       ; $6bdc: $43
    pop de                                        ; $6bdd: $d1
    ld c, h                                       ; $6bde: $4c
    db $eb                                        ; $6bdf: $eb
    ld c, [hl]                                    ; $6be0: $4e
    ld a, [hl-]                                   ; $6be1: $3a
    pop hl                                        ; $6be2: $e1
    add h                                         ; $6be3: $84
    inc de                                        ; $6be4: $13
    ld [hl], a                                    ; $6be5: $77
    sbc $f3                                       ; $6be6: $de $f3
    or l                                          ; $6be8: $b5
    ld a, b                                       ; $6be9: $78
    rla                                           ; $6bea: $17
    ld a, [bc]                                    ; $6beb: $0a

jr_063_6bec:
    dec sp                                        ; $6bec: $3b
    ld sp, hl                                     ; $6bed: $f9
    add e                                         ; $6bee: $83
    inc a                                         ; $6bef: $3c
    ld d, $de                                     ; $6bf0: $16 $de
    dec h                                         ; $6bf2: $25
    ld b, d                                       ; $6bf3: $42
    db $f4                                        ; $6bf4: $f4
    ld e, $91                                     ; $6bf5: $1e $91
    adc l                                         ; $6bf7: $8d
    ret z                                         ; $6bf8: $c8

    ld a, c                                       ; $6bf9: $79
    rst $08                                       ; $6bfa: $cf
    rst $10                                       ; $6bfb: $d7
    ld [c], a                                     ; $6bfc: $e2
    ld e, l                                       ; $6bfd: $5d
    jr z, jr_063_6bec                             ; $6bfe: $28 $ec

    db $e4                                        ; $6c00: $e4
    rrca                                          ; $6c01: $0f
    ld a, [c]                                     ; $6c02: $f2
    ld e, b                                       ; $6c03: $58
    ld a, b                                       ; $6c04: $78
    and c                                         ; $6c05: $a1
    db $ec                                        ; $6c06: $ec
    cp h                                          ; $6c07: $bc
    rst $20                                       ; $6c08: $e7
    ld l, e                                       ; $6c09: $6b
    pop af                                        ; $6c0a: $f1
    ld l, $14                                     ; $6c0b: $2e $14
    halt                                          ; $6c0d: $76
    ld a, [c]                                     ; $6c0e: $f2
    rlca                                          ; $6c0f: $07
    ld a, c                                       ; $6c10: $79
    inc l                                         ; $6c11: $2c
    cp h                                          ; $6c12: $bc
    db $e3                                        ; $6c13: $e3
    ld [hl], a                                    ; $6c14: $77
    ld [hl], c                                    ; $6c15: $71
    ld b, d                                       ; $6c16: $42
    adc e                                         ; $6c17: $8b
    add e                                         ; $6c18: $83
    nop                                           ; $6c19: $00
    ld a, e                                       ; $6c1a: $7b
    dec a                                         ; $6c1b: $3d
    sub h                                         ; $6c1c: $94
    ld h, b                                       ; $6c1d: $60
    sbc [hl]                                      ; $6c1e: $9e
    ld [hl], e                                    ; $6c1f: $73
    jp hl                                         ; $6c20: $e9


    ld [bc], a                                    ; $6c21: $02
    sub l                                         ; $6c22: $95
    db $d3                                        ; $6c23: $d3
    ld l, c                                       ; $6c24: $69
    ld e, [hl]                                    ; $6c25: $5e
    db $fc                                        ; $6c26: $fc
    db $d3                                        ; $6c27: $d3
    rrca                                          ; $6c28: $0f
    dec h                                         ; $6c29: $25
    sub l                                         ; $6c2a: $95
    rst $00                                       ; $6c2b: $c7
    ret nc                                        ; $6c2c: $d0

    ld c, c                                       ; $6c2d: $49
    ld l, d                                       ; $6c2e: $6a
    ld e, d                                       ; $6c2f: $5a
    ret nc                                        ; $6c30: $d0

    dec sp                                        ; $6c31: $3b
    rst $28                                       ; $6c32: $ef
    ld sp, hl                                     ; $6c33: $f9
    ld e, d                                       ; $6c34: $5a
    cp h                                          ; $6c35: $bc
    dec bc                                        ; $6c36: $0b
    add l                                         ; $6c37: $85
    sbc l                                         ; $6c38: $9d
    db $fc                                        ; $6c39: $fc
    ld b, c                                       ; $6c3a: $41
    ld e, $0b                                     ; $6c3b: $1e $0b
    rst $28                                       ; $6c3d: $ef
    ld [de], a                                    ; $6c3e: $12
    ld hl, $0f7a                                  ; $6c3f: $21 $7a $0f
    sub $e6                                       ; $6c42: $d6 $e6
    ld e, l                                       ; $6c44: $5d
    inc d                                         ; $6c45: $14
    jp nc, $f462                                  ; $6c46: $d2 $62 $f4

    ld c, $f1                                     ; $6c49: $0e $f1
    ld h, a                                       ; $6c4b: $67
    rst $20                                       ; $6c4c: $e7
    adc [hl]                                      ; $6c4d: $8e
    ld [hl], a                                    ; $6c4e: $77
    rst $28                                       ; $6c4f: $ef
    adc $7d                                       ; $6c50: $ce $7d
    pop bc                                        ; $6c52: $c1
    db $f4                                        ; $6c53: $f4
    ld a, [$f417]                                 ; $6c54: $fa $17 $f4
    dec a                                         ; $6c57: $3d
    ld [hl+], a                                   ; $6c58: $22
    dec de                                        ; $6c59: $1b
    sub c                                         ; $6c5a: $91
    add e                                         ; $6c5b: $83
    ld a, d                                       ; $6c5c: $7a
    push de                                       ; $6c5d: $d5
    db $10                                        ; $6c5e: $10
    ret c                                         ; $6c5f: $d8

    ld a, c                                       ; $6c60: $79
    ld a, [hl-]                                   ; $6c61: $3a
    ld b, d                                       ; $6c62: $42
    ret c                                         ; $6c63: $d8

    dec [hl]                                      ; $6c64: $35
    ld hl, $baf4                                  ; $6c65: $21 $f4 $ba
    rst $00                                       ; $6c68: $c7
    jr c, @-$78                                   ; $6c69: $38 $86

    sbc $3f                                       ; $6c6b: $de $3f
    cp d                                          ; $6c6d: $ba
    ld d, a                                       ; $6c6e: $57
    cpl                                           ; $6c6f: $2f
    jp z, $8bbf                                   ; $6c70: $ca $bf $8b

    ld a, $51                                     ; $6c73: $3e $51
    ld c, $b9                                     ; $6c75: $0e $b9
    ld d, e                                       ; $6c77: $53
    ld b, a                                       ; $6c78: $47
    ld h, h                                       ; $6c79: $64
    inc hl                                        ; $6c7a: $23
    ld [hl], d                                    ; $6c7b: $72
    reti                                          ; $6c7c: $d9


    dec h                                         ; $6c7d: $25
    rla                                           ; $6c7e: $17
    ld e, h                                       ; $6c7f: $5c
    ld a, b                                       ; $6c80: $78
    ld sp, hl                                     ; $6c81: $f9
    and c                                         ; $6c82: $a1
    dec bc                                        ; $6c83: $0b
    db $db                                        ; $6c84: $db
    halt                                          ; $6c85: $76
    ld a, $c1                                     ; $6c86: $3e $c1
    ld e, l                                       ; $6c88: $5d
    ld a, [hl]                                    ; $6c89: $7e
    ret                                           ; $6c8a: $c9


    push hl                                       ; $6c8b: $e5
    rst $10                                       ; $6c8c: $d7
    ld e, h                                       ; $6c8d: $5c
    ld a, b                                       ; $6c8e: $78
    ld a, c                                       ; $6c8f: $79
    db $db                                        ; $6c90: $db
    dec d                                         ; $6c91: $15
    cpl                                           ; $6c92: $2f
    ld e, d                                       ; $6c93: $5a
    ld [hl], a                                    ; $6c94: $77
    jp nc, Jump_000_2709                          ; $6c95: $d2 $09 $27

    sbc h                                         ; $6c98: $9c
    cp b                                          ; $6c99: $b8
    dec bc                                        ; $6c9a: $0b
    cp e                                          ; $6c9b: $bb
    adc c                                         ; $6c9c: $89
    ld [hl], d                                    ; $6c9d: $72
    ld b, $01                                     ; $6c9e: $06 $01
    and d                                         ; $6ca0: $a2
    dec sp                                        ; $6ca1: $3b
    cpl                                           ; $6ca2: $2f
    cp c                                          ; $6ca3: $b9
    xor $12                                       ; $6ca4: $ee $12
    ld hl, $8f7a                                  ; $6ca6: $21 $7a $8f
    ret z                                         ; $6ca9: $c8

    ld a, c                                       ; $6caa: $79
    cp l                                          ; $6cab: $bd
    ld a, e                                       ; $6cac: $7b
    ld l, c                                       ; $6cad: $69
    ld h, [hl]                                    ; $6cae: $66
    jr z, @-$5a                                   ; $6caf: $28 $a4

    pop de                                        ; $6cb1: $d1
    cp c                                          ; $6cb2: $b9
    jr z, @+$66                                   ; $6cb3: $28 $64

    jp $e864                                      ; $6cb5: $c3 $64 $e8


    ret z                                         ; $6cb8: $c8

    rst $30                                       ; $6cb9: $f7
    dec bc                                        ; $6cba: $0b
    rst $10                                       ; $6cbb: $d7
    and h                                         ; $6cbc: $a4
    ld b, [hl]                                    ; $6cbd: $46
    xor l                                         ; $6cbe: $ad
    push de                                       ; $6cbf: $d5
    call c, Call_063_6ba1                         ; $6cc0: $dc $a1 $6b
    adc $bb                                       ; $6cc3: $ce $bb
    ld a, [$299a]                                 ; $6cc5: $fa $9a $29
    ld sp, hl                                     ; $6cc8: $f9
    xor l                                         ; $6cc9: $ad
    rla                                           ; $6cca: $17
    sub a                                         ; $6ccb: $97

jr_063_6ccc:
    ld b, e                                       ; $6ccc: $43
    db $ec                                        ; $6ccd: $ec
    xor a                                         ; $6cce: $af
    sbc a                                         ; $6ccf: $9f
    or l                                          ; $6cd0: $b5
    ld [hl], e                                    ; $6cd1: $73
    ld c, a                                       ; $6cd2: $4f
    call c, $d70b                                 ; $6cd3: $dc $0b $d7
    nop                                           ; $6cd6: $00
    sbc [hl]                                      ; $6cd7: $9e
    or l                                          ; $6cd8: $b5
    ld [hl], e                                    ; $6cd9: $73
    ld c, a                                       ; $6cda: $4f
    inc a                                         ; $6cdb: $3c
    db $eb                                        ; $6cdc: $eb
    call c, $ce93                                 ; $6cdd: $dc $93 $ce
    ld a, [hl-]                                   ; $6ce0: $3a
    rst $30                                       ; $6ce1: $f7
    db $e4                                        ; $6ce2: $e4
    cp l                                          ; $6ce3: $bd
    sub a                                         ; $6ce4: $97
    jr z, jr_063_6ccc                             ; $6ce5: $28 $e5

    pop bc                                        ; $6ce7: $c1
    ld a, [de]                                    ; $6ce8: $1a
    xor c                                         ; $6ce9: $a9
    sub a                                         ; $6cea: $97
    ld de, $88d9                                  ; $6ceb: $11 $d9 $88
    ld l, h                                       ; $6cee: $6c
    ld b, h                                       ; $6cef: $44
    or [hl]                                       ; $6cf0: $b6
    rla                                           ; $6cf1: $17
    ld l, l                                       ; $6cf2: $6d
    xor $83                                       ; $6cf3: $ee $83
    dec [hl]                                      ; $6cf5: $35
    ld d, d                                       ; $6cf6: $52
    cpl                                           ; $6cf7: $2f
    rst $30                                       ; $6cf8: $f7
    adc b                                         ; $6cf9: $88
    ld e, h                                       ; $6cfa: $5c
    ld de, $ab3b                                  ; $6cfb: $11 $3b $ab
    ld c, d                                       ; $6cfe: $4a
    adc b                                         ; $6cff: $88
    rst $08                                       ; $6d00: $cf
    ld a, c                                       ; $6d01: $79
    ld bc, $ce04                                  ; $6d02: $01 $04 $ce
    ld a, [hl-]                                   ; $6d05: $3a
    rst $30                                       ; $6d06: $f7
    call nz, $3c11                                ; $6d07: $c4 $11 $3c
    db $eb                                        ; $6d0a: $eb
    call c, $f693                                 ; $6d0b: $dc $93 $f6
    ld [bc], a                                    ; $6d0e: $02
    ld l, l                                       ; $6d0f: $6d
    ld d, $f1                                     ; $6d10: $16 $f1
    inc d                                         ; $6d12: $14
    ld d, h                                       ; $6d13: $54
    or $9c                                        ; $6d14: $f6 $9c
    db $eb                                        ; $6d16: $eb
    call $daca                                    ; $6d17: $cd $ca $da
    ld e, a                                       ; $6d1a: $5f
    rst $20                                       ; $6d1b: $e7
    and a                                         ; $6d1c: $a7
    ld e, [hl]                                    ; $6d1d: $5e
    adc $7a                                       ; $6d1e: $ce $7a
    ld bc, $1e27                                  ; $6d20: $01 $27 $1e
    cp l                                          ; $6d23: $bd
    ld [hl], e                                    ; $6d24: $73
    ld c, a                                       ; $6d25: $4f
    call c, $270b                                 ; $6d26: $dc $0b $27
    dec e                                         ; $6d29: $1d
    cp l                                          ; $6d2a: $bd
    ld [hl], e                                    ; $6d2b: $73
    ld c, a                                       ; $6d2c: $4f
    call c, $270b                                 ; $6d2d: $dc $0b $27
    rra                                           ; $6d30: $1f

jr_063_6d31:
    cp l                                          ; $6d31: $bd
    ld [hl], e                                    ; $6d32: $73
    ld c, a                                       ; $6d33: $4f
    call c, $a70b                                 ; $6d34: $dc $0b $a7
    inc e                                         ; $6d37: $1c
    cp l                                          ; $6d38: $bd
    ld [hl], e                                    ; $6d39: $73
    ld c, a                                       ; $6d3a: $4f
    call c, Call_000_170b                         ; $6d3b: $dc $0b $17
    add l                                         ; $6d3e: $85
    call c, $f5e7                                 ; $6d3f: $dc $e7 $f5
    rra                                           ; $6d42: $1f
    ei                                            ; $6d43: $fb
    xor h                                         ; $6d44: $ac
    rla                                           ; $6d45: $17
    ld l, l                                       ; $6d46: $6d
    ld a, [$9fc8]                                 ; $6d47: $fa $c8 $9f
    inc bc                                        ; $6d4a: $03
    and l                                         ; $6d4b: $a5
    cp h                                          ; $6d4c: $bc
    ld c, [hl]                                    ; $6d4d: $4e
    ld c, c                                       ; $6d4e: $49
    ld e, $5a                                     ; $6d4f: $1e $5a
    call nz, $ad0b                                ; $6d51: $c4 $0b $ad
    xor d                                         ; $6d54: $aa
    ld [de], a                                    ; $6d55: $12
    ld [hl+], a                                   ; $6d56: $22
    sbc [hl]                                      ; $6d57: $9e
    dec b                                         ; $6d58: $05
    ld b, l                                       ; $6d59: $45
    rst $10                                       ; $6d5a: $d7
    cp $02                                        ; $6d5b: $fe $02
    add a                                         ; $6d5d: $87
    cp $f3                                        ; $6d5e: $fe $f3
    ld e, b                                       ; $6d60: $58
    ld d, h                                       ; $6d61: $54
    rst $38                                       ; $6d62: $ff
    xor l                                         ; $6d63: $ad
    sub [hl]                                      ; $6d64: $96
    dec sp                                        ; $6d65: $3b
    sub h                                         ; $6d66: $94
    add hl, hl                                    ; $6d67: $29
    and e                                         ; $6d68: $a3
    ei                                            ; $6d69: $fb
    dec bc                                        ; $6d6a: $0b
    sub a                                         ; $6d6b: $97
    add [hl]                                      ; $6d6c: $86
    ld b, [hl]                                    ; $6d6d: $46
    jp $8ca9                                      ; $6d6e: $c3 $a9 $8c


    xor $2f                                       ; $6d71: $ee $2f
    rlca                                          ; $6d73: $07
    ld e, l                                       ; $6d74: $5d
    dec hl                                        ; $6d75: $2b
    ld c, b                                       ; $6d76: $48
    ld d, c                                       ; $6d77: $51
    ld b, [hl]                                    ; $6d78: $46
    rst $30                                       ; $6d79: $f7
    rla                                           ; $6d7a: $17
    add a                                         ; $6d7b: $87
    xor b                                         ; $6d7c: $a8
    dec a                                         ; $6d7d: $3d
    ld d, [hl]                                    ; $6d7e: $56
    ld b, [hl]                                    ; $6d7f: $46
    rst $30                                       ; $6d80: $f7
    rla                                           ; $6d81: $17
    add a                                         ; $6d82: $87
    call c, $a4e3                                 ; $6d83: $dc $e3 $a4
    and [hl]                                      ; $6d86: $a6
    dec b                                         ; $6d87: $05
    dec a                                         ; $6d88: $3d
    ld h, l                                       ; $6d89: $65
    ld [hl], h                                    ; $6d8a: $74
    ld a, a                                       ; $6d8b: $7f
    ld bc, $d5e7                                  ; $6d8c: $01 $e7 $d5
    jr z, jr_063_6d31                             ; $6d8f: $28 $a0

    ld a, e                                       ; $6d91: $7b
    ld b, $dc                                     ; $6d92: $06 $dc
    dec bc                                        ; $6d94: $0b
    rst $10                                       ; $6d95: $d7
    ld e, c                                       ; $6d96: $59
    db $f4                                        ; $6d97: $f4
    ld a, [de]                                    ; $6d98: $1a
    add a                                         ; $6d99: $87
    ld [hl+], a                                   ; $6d9a: $22
    cpl                                           ; $6d9b: $2f
    rst $10                                       ; $6d9c: $d7
    ld d, b                                       ; $6d9d: $50
    inc sp                                        ; $6d9e: $33
    adc l                                         ; $6d9f: $8d
    sbc [hl]                                      ; $6da0: $9e
    ld d, b                                       ; $6da1: $50
    ld a, [hl-]                                   ; $6da2: $3a
    ld a, [hl-]                                   ; $6da3: $3a
    ld e, a                                       ; $6da4: $5f
    ld d, a                                       ; $6da5: $57
    and h                                         ; $6da6: $a4
    res 2, a                                      ; $6da7: $cb $97
    ldh a, [rSC]                                  ; $6da9: $f0 $02
    rlca                                          ; $6dab: $07
    ld a, a                                       ; $6dac: $7f
    rst $10                                       ; $6dad: $d7
    sub e                                         ; $6dae: $93
    ld e, a                                       ; $6daf: $5f
    rlca                                          ; $6db0: $07
    cp a                                          ; $6db1: $bf
    ld h, b                                       ; $6db2: $60
    ld a, [hl]                                    ; $6db3: $7e
    push hl                                       ; $6db4: $e5
    call z, $2f80                                 ; $6db5: $cc $80 $2f
    rst $20                                       ; $6db8: $e7
    add a                                         ; $6db9: $87
    ldh a, [$d4]                                  ; $6dba: $f0 $d4
    cp $a5                                        ; $6dbc: $fe $a5
    ld d, h                                       ; $6dbe: $54
    dec b                                         ; $6dbf: $05
    add d                                         ; $6dc0: $82
    cpl                                           ; $6dc1: $2f
    db $ed                                        ; $6dc2: $ed
    ld a, d                                       ; $6dc3: $7a
    ld [hl], a                                    ; $6dc4: $77
    ld l, l                                       ; $6dc5: $6d
    add c                                         ; $6dc6: $81
    ld h, b                                       ; $6dc7: $60
    adc l                                         ; $6dc8: $8d
    ld b, c                                       ; $6dc9: $41
    call c, Call_063_5282                         ; $6dca: $dc $82 $52
    db $fc                                        ; $6dcd: $fc
    ld [bc], a                                    ; $6dce: $02
    rst $20                                       ; $6dcf: $e7
    ld [hl], a                                    ; $6dd0: $77
    adc d                                         ; $6dd1: $8a
    xor d                                         ; $6dd2: $aa
    xor l                                         ; $6dd3: $ad
    call nc, $dd99                                ; $6dd4: $d4 $99 $dd
    jp nc, $ec7b                                  ; $6dd7: $d2 $7b $ec

    ld a, h                                       ; $6dda: $7c
    ld bc, $43e7                                  ; $6ddb: $01 $e7 $43
    rst $28                                       ; $6dde: $ef
    and [hl]                                      ; $6ddf: $a6
    jp nc, Jump_000_2fc5                          ; $6de0: $d2 $c5 $2f

    rst $10                                       ; $6de3: $d7
    call nz, $e926                                ; $6de4: $c4 $26 $e9
    call nc, $9014                                ; $6de7: $d4 $14 $90
    ld h, d                                       ; $6dea: $62
    ld [hl-], a                                   ; $6deb: $32
    and h                                         ; $6dec: $a4
    cp h                                          ; $6ded: $bc
    add a                                         ; $6dee: $87
    ld a, [$6297]                                 ; $6def: $fa $97 $62
    cp $82                                        ; $6df2: $fe $82
    cpl                                           ; $6df4: $2f
    rst $20                                       ; $6df5: $e7
    ld e, e                                       ; $6df6: $5b
    ld c, e                                       ; $6df7: $4b
    ld hl, sp+$59                                 ; $6df8: $f8 $59
    reti                                          ; $6dfa: $d9


    ld a, [c]                                     ; $6dfb: $f2
    ld [bc], a                                    ; $6dfc: $02
    add a                                         ; $6dfd: $87
    xor b                                         ; $6dfe: $a8
    dec a                                         ; $6dff: $3d
    or [hl]                                       ; $6e00: $b6
    sub b                                         ; $6e01: $90
    ld [hl], h                                    ; $6e02: $74
    ld l, d                                       ; $6e03: $6a
    ld a, [bc]                                    ; $6e04: $0a
    ld c, b                                       ; $6e05: $48
    ld sp, $5219                                  ; $6e06: $31 $19 $52
    ld e, [hl]                                    ; $6e09: $5e
    add a                                         ; $6e0a: $87
    jr c, @-$1a                                   ; $6e0b: $38 $e4

    ld b, e                                       ; $6e0d: $43
    ld a, [hl]                                    ; $6e0e: $7e
    ld a, [hl]                                    ; $6e0f: $7e
    ld bc, $81d7                                  ; $6e10: $01 $d7 $81
    or b                                          ; $6e13: $b0
    db $d3                                        ; $6e14: $d3
    ld sp, hl                                     ; $6e15: $f9
    add l                                         ; $6e16: $85
    and c                                         ; $6e17: $a1
    cp [hl]                                       ; $6e18: $be
    rlca                                          ; $6e19: $07
    inc bc                                        ; $6e1a: $03
    ld d, $88                                     ; $6e1b: $16 $88
    ld hl, sp+$05                                 ; $6e1d: $f8 $05
    rst $10                                       ; $6e1f: $d7
    ld b, e                                       ; $6e20: $43
    add hl, hl                                    ; $6e21: $29
    ld d, $62                                     ; $6e22: $16 $62
    xor $78                                       ; $6e24: $ee $78
    sbc h                                         ; $6e26: $9c
    dec sp                                        ; $6e27: $3b
    xor b                                         ; $6e28: $a8
    ld a, [bc]                                    ; $6e29: $0a
    cp c                                          ; $6e2a: $b9
    rla                                           ; $6e2b: $17
    add a                                         ; $6e2c: $87
    db $f4                                        ; $6e2d: $f4
    sub [hl]                                      ; $6e2e: $96
    ld [hl], e                                    ; $6e2f: $73
    rst $10                                       ; $6e30: $d7
    ld b, e                                       ; $6e31: $43
    add hl, hl                                    ; $6e32: $29
    ld d, $62                                     ; $6e33: $16 $62
    xor $78                                       ; $6e35: $ee $78
    sbc h                                         ; $6e37: $9c
    dec sp                                        ; $6e38: $3b
    xor b                                         ; $6e39: $a8
    ld a, [bc]                                    ; $6e3a: $0a
    cp c                                          ; $6e3b: $b9
    rla                                           ; $6e3c: $17
    rst $10                                       ; $6e3d: $d7
    ld bc, $07ff                                  ; $6e3e: $01 $ff $07
    adc b                                         ; $6e41: $88
    rst $08                                       ; $6e42: $cf
    dec e                                         ; $6e43: $1d
    ld d, h                                       ; $6e44: $54
    add l                                         ; $6e45: $85
    ld a, h                                       ; $6e46: $7c
    ld bc, $f657                                  ; $6e47: $01 $57 $f6
    cpl                                           ; $6e4a: $2f
    ld l, h                                       ; $6e4b: $6c
    ld c, h                                       ; $6e4c: $4c
    ld c, d                                       ; $6e4d: $4a
    jp Jump_063_7739                              ; $6e4e: $c3 $39 $77


    ld d, b                                       ; $6e51: $50
    dec d                                         ; $6e52: $15
    ld a, [c]                                     ; $6e53: $f2
    dec b                                         ; $6e54: $05
    sub a                                         ; $6e55: $97
    add $a0                                       ; $6e56: $c6 $a0
    ld b, d                                       ; $6e58: $42
    xor e                                         ; $6e59: $ab
    push hl                                       ; $6e5a: $e5
    sbc h                                         ; $6e5b: $9c
    dec sp                                        ; $6e5c: $3b
    xor b                                         ; $6e5d: $a8
    ld a, [bc]                                    ; $6e5e: $0a
    ld sp, hl                                     ; $6e5f: $f9
    ld [bc], a                                    ; $6e60: $02
    add a                                         ; $6e61: $87
    db $f4                                        ; $6e62: $f4
    sub [hl]                                      ; $6e63: $96
    ld [hl], e                                    ; $6e64: $73
    sub a                                         ; $6e65: $97
    add $a0                                       ; $6e66: $c6 $a0
    ld b, d                                       ; $6e68: $42
    xor e                                         ; $6e69: $ab
    push hl                                       ; $6e6a: $e5
    sbc h                                         ; $6e6b: $9c
    dec sp                                        ; $6e6c: $3b
    xor b                                         ; $6e6d: $a8
    ld a, [bc]                                    ; $6e6e: $0a
    ld sp, hl                                     ; $6e6f: $f9
    ld [bc], a                                    ; $6e70: $02
    rst $10                                       ; $6e71: $d7
    ld h, d                                       ; $6e72: $62
    ld b, h                                       ; $6e73: $44
    call $9717                                    ; $6e74: $cd $17 $97
    add [hl]                                      ; $6e77: $86
    db $e4                                        ; $6e78: $e4
    adc c                                         ; $6e79: $89
    cp $3c                                        ; $6e7a: $fe $3c
    adc $b3                                       ; $6e7c: $ce $b3
    halt                                          ; $6e7e: $76
    xor $89                                       ; $6e7f: $ee $89
    cpl                                           ; $6e81: $2f
    rst $10                                       ; $6e82: $d7
    ld d, c                                       ; $6e83: $51
    ld a, d                                       ; $6e84: $7a
    sbc c                                         ; $6e85: $99
    ld a, [bc]                                    ; $6e86: $0a
    ret                                           ; $6e87: $c9


    cpl                                           ; $6e88: $2f
    rst $20                                       ; $6e89: $e7
    ld l, e                                       ; $6e8a: $6b
    ld hl, sp+$05                                 ; $6e8b: $f8 $05
    rst $20                                       ; $6e8d: $e7
    ld b, l                                       ; $6e8e: $45
    or l                                          ; $6e8f: $b5
    db $eb                                        ; $6e90: $eb
    db $fc                                        ; $6e91: $fc
    ld [bc], a                                    ; $6e92: $02
    sub a                                         ; $6e93: $97
    or $9f                                        ; $6e94: $f6 $9f
    ld h, e                                       ; $6e96: $63
    add sp, -$05                                  ; $6e97: $e8 $fb
    inc a                                         ; $6e99: $3c
    ld a, [c]                                     ; $6e9a: $f2
    dec bc                                        ; $6e9b: $0b
    halt                                          ; $6e9c: $76
    ld l, e                                       ; $6e9d: $6b
    ld a, a                                       ; $6e9e: $7f
    ld bc, $31ed                                  ; $6e9f: $01 $ed $31

jr_063_6ea2:
    call nc, $bea1                                ; $6ea2: $d4 $a1 $be
    ret c                                         ; $6ea5: $d8

    jp nz, $b5ce                                  ; $6ea6: $c2 $ce $b5

    sbc d                                         ; $6ea9: $9a
    ei                                            ; $6eaa: $fb
    add d                                         ; $6eab: $82
    sub [hl]                                      ; $6eac: $96
    push de                                       ; $6ead: $d5
    ld d, $f4                                     ; $6eae: $16 $f4
    xor $a4                                       ; $6eb0: $ee $a4
    adc l                                         ; $6eb2: $8d
    ld d, e                                       ; $6eb3: $53
    and e                                         ; $6eb4: $a3
    halt                                          ; $6eb5: $76
    cp $94                                        ; $6eb6: $fe $94
    db $fc                                        ; $6eb8: $fc
    ld d, [hl]                                    ; $6eb9: $56
    res 6, d                                      ; $6eba: $cb $b2
    jr z, jr_063_6ea2                             ; $6ebc: $28 $e4

    ld a, $af                                     ; $6ebe: $3e $af
    halt                                          ; $6ec0: $76
    inc sp                                        ; $6ec1: $33
    ld a, e                                       ; $6ec2: $7b
    db $e4                                        ; $6ec3: $e4
    rla                                           ; $6ec4: $17
    ld [hl], h                                    ; $6ec5: $74
    cp a                                          ; $6ec6: $bf
    ld e, a                                       ; $6ec7: $5f
    db $ed                                        ; $6ec8: $ed
    ld e, a                                       ; $6ec9: $5f

Call_063_6eca:
    ret nc                                        ; $6eca: $d0

    ld a, l                                       ; $6ecb: $7d
    or l                                          ; $6ecc: $b5
    sbc e                                         ; $6ecd: $9b

jr_063_6ece:
    reti                                          ; $6ece: $d9


    xor h                                         ; $6ecf: $ac
    db $fd                                        ; $6ed0: $fd
    dec b                                         ; $6ed1: $05
    db $ed                                        ; $6ed2: $ed
    ld e, a                                       ; $6ed3: $5f
    ret nc                                        ; $6ed4: $d0

    ld a, l                                       ; $6ed5: $7d
    sub c                                         ; $6ed6: $91
    sbc $31                                       ; $6ed7: $de $31
    and d                                         ; $6ed9: $a2
    ld h, $6b                                     ; $6eda: $26 $6b
    ld a, a                                       ; $6edc: $7f
    ld bc, $fa6d                                  ; $6edd: $01 $6d $fa
    call nc, $8197                                ; $6ee0: $d4 $97 $81
    ld d, d                                       ; $6ee3: $52
    ld e, $ff                                     ; $6ee4: $1e $ff
    ld [c], a                                     ; $6ee6: $e2
    ld b, l                                       ; $6ee7: $45
    db $dd                                        ; $6ee8: $dd
    jp hl                                         ; $6ee9: $e9


    xor c                                         ; $6eea: $a9
    sub b                                         ; $6eeb: $90
    inc a                                         ; $6eec: $3c
    db $fc                                        ; $6eed: $fc
    ld b, e                                       ; $6eee: $43
    sub b                                         ; $6eef: $90
    push de                                       ; $6ef0: $d5
    ld d, $f4                                     ; $6ef1: $16 $f4
    xor $e7                                       ; $6ef3: $ee $e7
    or a                                          ; $6ef5: $b7
    ld e, d                                       ; $6ef6: $5a
    sbc [hl]                                      ; $6ef7: $9e
    ld [hl], e                                    ; $6ef8: $73
    sub c                                         ; $6ef9: $91
    sbc $51                                       ; $6efa: $de $51
    ei                                            ; $6efc: $fb
    dec bc                                        ; $6efd: $0b
    ld l, l                                       ; $6efe: $6d
    ld a, [$9fc8]                                 ; $6eff: $fa $c8 $9f
    adc e                                         ; $6f02: $8b
    ld [hl], h                                    ; $6f03: $74
    ld b, c                                       ; $6f04: $41
    di                                            ; $6f05: $f3
    call z, $df3b                                 ; $6f06: $cc $3b $df
    ld c, c                                       ; $6f09: $49
    ld a, l                                       ; $6f0a: $7d
    ret c                                         ; $6f0b: $d8

    inc hl                                        ; $6f0c: $23
    xor l                                         ; $6f0d: $ad
    xor d                                         ; $6f0e: $aa
    rla                                           ; $6f0f: $17
    jp z, $4338                                   ; $6f10: $ca $38 $43

    rst $00                                       ; $6f13: $c7
    add a                                         ; $6f14: $87
    ld [hl+], a                                   ; $6f15: $22
    ld a, b                                       ; $6f16: $78
    sbc h                                         ; $6f17: $9c
    ld a, [bc]                                    ; $6f18: $0a
    ret                                           ; $6f19: $c9


    jp c, $6d5f                                   ; $6f1a: $da $5f $6d

    ld a, [$17f8]                                 ; $6f1d: $fa $f8 $17
    rst $20                                       ; $6f20: $e7
    ld l, $4e                                     ; $6f21: $2e $4e
    ld c, l                                       ; $6f23: $4d
    inc d                                         ; $6f24: $14
    add c                                         ; $6f25: $81
    ld h, b                                       ; $6f26: $60
    ret z                                         ; $6f27: $c8

    xor c                                         ; $6f28: $a9
    sub b                                         ; $6f29: $90
    call c, Call_063_45d0                         ; $6f2a: $dc $d0 $45
    ld e, c                                       ; $6f2d: $59
    or h                                          ; $6f2e: $b4
    cp a                                          ; $6f2f: $bf
    ld l, l                                       ; $6f30: $6d
    ld a, [$17f8]                                 ; $6f31: $fa $f8 $17
    rst $20                                       ; $6f34: $e7
    jp c, Jump_000_28f5                           ; $6f35: $da $f5 $28

    ld [$e96e], a                                 ; $6f38: $ea $6e $e9
    ld d, c                                       ; $6f3b: $51
    inc [hl]                                      ; $6f3c: $34
    dec d                                         ; $6f3d: $15
    sub d                                         ; $6f3e: $92
    dec de                                        ; $6f3f: $1b
    cp d                                          ; $6f40: $ba
    jr z, jr_063_6ece                             ; $6f41: $28 $8b

    or $17                                        ; $6f43: $f6 $17
    ld l, l                                       ; $6f45: $6d
    ld a, [$17f8]                                 ; $6f46: $fa $f8 $17
    rst $20                                       ; $6f49: $e7
    xor [hl]                                      ; $6f4a: $ae
    cp $b1                                        ; $6f4b: $fe $b1
    add l                                         ; $6f4d: $85
    ld l, b                                       ; $6f4e: $68
    rst $38                                       ; $6f4f: $ff
    call nz, Call_063_42a6                        ; $6f50: $c4 $a6 $42
    ld [hl], d                                    ; $6f53: $72
    ld b, e                                       ; $6f54: $43
    rla                                           ; $6f55: $17
    ld h, l                                       ; $6f56: $65
    pop de                                        ; $6f57: $d1
    cp $02                                        ; $6f58: $fe $02
    ld l, l                                       ; $6f5a: $6d
    ld a, [$17f8]                                 ; $6f5b: $fa $f8 $17
    rst $20                                       ; $6f5e: $e7
    ld c, $75                                     ; $6f5f: $0e $75
    dec c                                         ; $6f61: $0d
    sub e                                         ; $6f62: $93
    ld c, [hl]                                    ; $6f63: $4e
    sub b                                         ; $6f64: $90
    xor c                                         ; $6f65: $a9
    sub b                                         ; $6f66: $90
    call c, Call_063_45d0                         ; $6f67: $dc $d0 $45
    ld e, c                                       ; $6f6a: $59
    or h                                          ; $6f6b: $b4
    cp a                                          ; $6f6c: $bf
    ld l, l                                       ; $6f6d: $6d
    ld a, [$9fc8]                                 ; $6f6e: $fa $c8 $9f
    inc bc                                        ; $6f71: $03
    and l                                         ; $6f72: $a5
    cp h                                          ; $6f73: $bc
    ld h, [hl]                                    ; $6f74: $66
    ld b, e                                       ; $6f75: $43
    call z, $3343                                 ; $6f76: $cc $43 $33
    ld a, e                                       ; $6f79: $7b
    or l                                          ; $6f7a: $b5
    dec b                                         ; $6f7b: $05
    ld a, l                                       ; $6f7c: $7d
    ld d, $14                                     ; $6f7d: $16 $14
    ld e, l                                       ; $6f7f: $5d
    ei                                            ; $6f80: $fb
    dec bc                                        ; $6f81: $0b
    rla                                           ; $6f82: $17
    ld [hl], l                                    ; $6f83: $75
    ld c, l                                       ; $6f84: $4d
    cp h                                          ; $6f85: $bc
    ldh a, [$4c]                                  ; $6f86: $f0 $4c
    db $fd                                        ; $6f88: $fd
    sub $1e                                       ; $6f89: $d6 $1e
    db $e3                                        ; $6f8b: $e3
    jp c, $13f2                                   ; $6f8c: $da $f2 $13

    dec c                                         ; $6f8f: $0d
    adc e                                         ; $6f90: $8b
    ld b, d                                       ; $6f91: $42
    xor $f3                                       ; $6f92: $ee $f3
    and d                                         ; $6f94: $a2
    and $2e                                       ; $6f95: $e6 $2e
    ld [hl], a                                    ; $6f97: $77
    inc c                                         ; $6f98: $0c
    cp l                                          ; $6f99: $bd
    cp e                                          ; $6f9a: $bb
    adc $09                                       ; $6f9b: $ce $09
    add d                                         ; $6f9d: $82
    add hl, bc                                    ; $6f9e: $09
    ld d, d                                       ; $6f9f: $52
    xor d                                         ; $6fa0: $aa
    jp nc, $f74b                                  ; $6fa1: $d2 $4b $f7

    jr jr_063_7020                                ; $6fa4: $18 $7a

    db $e3                                        ; $6fa6: $e3
    rla                                           ; $6fa7: $17
    ld l, e                                       ; $6fa8: $6b
    ld a, a                                       ; $6fa9: $7f
    ld bc, $8797                                  ; $6faa: $01 $97 $87
    ld l, h                                       ; $6fad: $6c
    jr c, jr_063_7029                             ; $6fae: $38 $79

    adc $e9                                       ; $6fb0: $ce $e9
    add d                                         ; $6fb2: $82
    or l                                          ; $6fb3: $b5
    db $eb                                        ; $6fb4: $eb
    xor l                                         ; $6fb5: $ad
    sub [hl]                                      ; $6fb6: $96
    ld e, c                                       ; $6fb7: $59
    ei                                            ; $6fb8: $fb
    ld c, $29                                     ; $6fb9: $0e $29
    adc l                                         ; $6fbb: $8d
    ldh [rNR10], a                                ; $6fbc: $e0 $10
    jp z, $b47e                                   ; $6fbe: $ca $7e $b4

    jp z, Jump_063_45c6                           ; $6fc1: $ca $c6 $45

    ld hl, $79f7                                  ; $6fc4: $21 $f7 $79
    and h                                         ; $6fc7: $a4
    add l                                         ; $6fc8: $85
    dec a                                         ; $6fc9: $3d
    ld a, [c]                                     ; $6fca: $f2
    ccf                                           ; $6fcb: $3f
    ld h, e                                       ; $6fcc: $63
    add sp, -$73                                  ; $6fcd: $e8 $8d
    ld e, a                                       ; $6fcf: $5f
    ld a, h                                       ; $6fd0: $7c
    cp a                                          ; $6fd1: $bf
    rla                                           ; $6fd2: $17
    add c                                         ; $6fd3: $81
    ldh [$d0], a                                  ; $6fd4: $e0 $d0
    or d                                          ; $6fd6: $b2
    add h                                         ; $6fd7: $84
    jp nz, Jump_000_3c50                          ; $6fd8: $c2 $50 $3c

    and c                                         ; $6fdb: $a1
    sub [hl]                                      ; $6fdc: $96
    xor $31                                       ; $6fdd: $ee $31
    db $f4                                        ; $6fdf: $f4
    ld a, l                                       ; $6fe0: $7d
    ld e, [hl]                                    ; $6fe1: $5e
    or e                                          ; $6fe2: $b3
    ld hl, $521e                                  ; $6fe3: $21 $1e $52
    db $d3                                        ; $6fe6: $d3
    and d                                         ; $6fe7: $a2
    db $fd                                        ; $6fe8: $fd
    dec b                                         ; $6fe9: $05
    ld d, a                                       ; $6fea: $57
    ld h, $35                                     ; $6feb: $26 $35
    sbc $e7                                       ; $6fed: $de $e7
    ld b, l                                       ; $6fef: $45
    ld e, a                                       ; $6ff0: $5f
    adc d                                         ; $6ff1: $8a
    and a                                         ; $6ff2: $a7
    sub a                                         ; $6ff3: $97
    ld l, [hl]                                    ; $6ff4: $6e
    pop de                                        ; $6ff5: $d1
    cp $02                                        ; $6ff6: $fe $02
    rla                                           ; $6ff8: $17
    ld d, c                                       ; $6ff9: $51
    ld a, e                                       ; $6ffa: $7b
    sbc c                                         ; $6ffb: $99
    inc hl                                        ; $6ffc: $23
    halt                                          ; $6ffd: $76
    xor $a2                                       ; $6ffe: $ee $a2
    ld c, $4c                                     ; $7000: $0e $4c
    inc c                                         ; $7002: $0c
    adc b                                         ; $7003: $88
    ld a, [hl+]                                   ; $7004: $2a
    db $ed                                        ; $7005: $ed
    cpl                                           ; $7006: $2f
    rst $20                                       ; $7007: $e7
    and a                                         ; $7008: $a7
    and [hl]                                      ; $7009: $a6
    inc c                                         ; $700a: $0c
    dec l                                         ; $700b: $2d
    ld d, e                                       ; $700c: $53
    ld hl, $8ad3                                  ; $700d: $21 $d3 $8a
    dec a                                         ; $7010: $3d
    ld [hl], a                                    ; $7011: $77
    ld d, b                                       ; $7012: $50
    dec d                                         ; $7013: $15
    ld d, d                                       ; $7014: $52
    ei                                            ; $7015: $fb
    dec bc                                        ; $7016: $0b
    rst $20                                       ; $7017: $e7
    dec sp                                        ; $7018: $3b
    xor c                                         ; $7019: $a9
    rrca                                          ; $701a: $0f
    ld a, e                                       ; $701b: $7b
    and h                                         ; $701c: $a4
    ld d, l                                       ; $701d: $55
    push af                                       ; $701e: $f5
    ld b, d                                       ; $701f: $42

jr_063_7020:
    add hl, de                                    ; $7020: $19
    ld h, a                                       ; $7021: $67
    add sp, -$08                                  ; $7022: $e8 $f8
    ld d, b                                       ; $7024: $50
    inc b                                         ; $7025: $04
    and a                                         ; $7026: $a7
    ld b, d                                       ; $7027: $42
    ld a, [c]                                     ; $7028: $f2

jr_063_7029:
    ld l, d                                       ; $7029: $6a
    dec bc                                        ; $702a: $0b
    cp d                                          ; $702b: $ba
    or $17                                        ; $702c: $f6 $17
    ld l, l                                       ; $702e: $6d
    ld a, [$939c]                                 ; $702f: $fa $9c $93
    and [hl]                                      ; $7032: $a6
    ld a, c                                       ; $7033: $79
    inc c                                         ; $7034: $0c
    ld a, l                                       ; $7035: $7d
    and $89                                       ; $7036: $e6 $89
    add [hl]                                      ; $7038: $86
    daa                                           ; $7039: $27
    db $10                                        ; $703a: $10
    ei                                            ; $703b: $fb
    db $eb                                        ; $703c: $eb
    cpl                                           ; $703d: $2f
    ld l, l                                       ; $703e: $6d
    ld a, [$939c]                                 ; $703f: $fa $9c $93
    and [hl]                                      ; $7042: $a6
    ld a, c                                       ; $7043: $79
    inc c                                         ; $7044: $0c
    ld a, l                                       ; $7045: $7d
    and $89                                       ; $7046: $e6 $89
    add [hl]                                      ; $7048: $86
    rst $00                                       ; $7049: $c7
    xor c                                         ; $704a: $a9
    jp hl                                         ; $704b: $e9


    db $dd                                        ; $704c: $dd
    ld d, c                                       ; $704d: $51
    ret z                                         ; $704e: $c8

    ld b, a                                       ; $704f: $47
    rst $28                                       ; $7050: $ef
    ccf                                           ; $7051: $3f
    dec b                                         ; $7052: $05
    ld h, d                                       ; $7053: $62
    ld a, a                                       ; $7054: $7f
    db $fd                                        ; $7055: $fd
    dec b                                         ; $7056: $05
    add a                                         ; $7057: $87
    ld e, b                                       ; $7058: $58
    sub e                                         ; $7059: $93
    jp z, $f63b                                   ; $705a: $ca $3b $f6

    call c, $f713                                 ; $705d: $dc $13 $f7
    ld [bc], a                                    ; $7060: $02
    rla                                           ; $7061: $17
    add l                                         ; $7062: $85
    xor h                                         ; $7063: $ac
    pop af                                        ; $7064: $f1
    rst $08                                       ; $7065: $cf
    dec e                                         ; $7066: $1d
    ld a, e                                       ; $7067: $7b
    xor $89                                       ; $7068: $ee $89
    ld a, e                                       ; $706a: $7b
    ld bc, $7f07                                  ; $706b: $01 $07 $7f
    add c                                         ; $706e: $81
    xor d                                         ; $706f: $aa
    halt                                          ; $7070: $76
    adc b                                         ; $7071: $88
    dec [hl]                                      ; $7072: $35
    xor c                                         ; $7073: $a9
    cp h                                          ; $7074: $bc
    ld h, e                                       ; $7075: $63
    rst $08                                       ; $7076: $cf
    dec a                                         ; $7077: $3d
    ld [hl], c                                    ; $7078: $71
    cpl                                           ; $7079: $2f
    rlca                                          ; $707a: $07
    ld a, a                                       ; $707b: $7f
    add c                                         ; $707c: $81
    xor d                                         ; $707d: $aa
    halt                                          ; $707e: $76
    ld d, c                                       ; $707f: $51
    ret z                                         ; $7080: $c8

    ld a, [de]                                    ; $7081: $1a
    rst $38                                       ; $7082: $ff
    call c, $e7b1                                 ; $7083: $dc $b1 $e7
    sbc [hl]                                      ; $7086: $9e
    cp b                                          ; $7087: $b8
    rla                                           ; $7088: $17
    rst $20                                       ; $7089: $e7
    sbc e                                         ; $708a: $9b
    and h                                         ; $708b: $a4
    ld [$2142], sp                                ; $708c: $08 $42 $21
    adc l                                         ; $708f: $8d
    dec sp                                        ; $7090: $3b
    or $dc                                        ; $7091: $f6 $dc
    inc de                                        ; $7093: $13
    rst $30                                       ; $7094: $f7
    ld [bc], a                                    ; $7095: $02
    rst $10                                       ; $7096: $d7
    ld [hl+], a                                   ; $7097: $22
    add hl, de                                    ; $7098: $19
    ld a, [hl-]                                   ; $7099: $3a
    ld e, d                                       ; $709a: $5a
    ld c, b                                       ; $709b: $48
    db $e3                                        ; $709c: $e3
    adc [hl]                                      ; $709d: $8e
    dec a                                         ; $709e: $3d
    rst $30                                       ; $709f: $f7
    call nz, $6dbd                                ; $70a0: $c4 $bd $6d
    and $d5                                       ; $70a3: $e6 $d5
    rst $20                                       ; $70a5: $e7
    rla                                           ; $70a6: $17
    rst $20                                       ; $70a7: $e7
    xor d                                         ; $70a8: $aa
    and d                                         ; $70a9: $a2
    ld a, [bc]                                    ; $70aa: $0a
    cpl                                           ; $70ab: $2f
    sub h                                         ; $70ac: $94
    and c                                         ; $70ad: $a1
    ld [hl], e                                    ; $70ae: $73
    ld de, $17b5                                  ; $70af: $11 $b5 $17
    rst $20                                       ; $70b2: $e7
    ld b, d                                       ; $70b3: $42
    xor c                                         ; $70b4: $a9
    call $a799                                    ; $70b5: $cd $99 $a7
    ld b, d                                       ; $70b8: $42
    ld a, [c]                                     ; $70b9: $f2
    ld e, $a3                                     ; $70ba: $1e $a3
    or $17                                        ; $70bc: $f6 $17
    db $ed                                        ; $70be: $ed
    adc $91                                       ; $70bf: $ce $91
    ccf                                           ; $70c1: $3f
    add a                                         ; $70c2: $87
    ld a, [$6410]                                 ; $70c3: $fa $10 $64
    ld c, [hl]                                    ; $70c6: $4e
    db $10                                        ; $70c7: $10
    ld c, h                                       ; $70c8: $4c
    sub b                                         ; $70c9: $90
    ld d, d                                       ; $70ca: $52
    sub l                                         ; $70cb: $95
    ld e, [hl]                                    ; $70cc: $5e
    cp d                                          ; $70cd: $ba
    rst $00                                       ; $70ce: $c7
    ret nc                                        ; $70cf: $d0

    dec de                                        ; $70d0: $1b
    cp a                                          ; $70d1: $bf
    sbc b                                         ; $70d2: $98
    or [hl]                                       ; $70d3: $b6
    rr l                                          ; $70d4: $cb $1d
    ld b, e                                       ; $70d6: $43
    rst $28                                       ; $70d7: $ef
    cp [hl]                                       ; $70d8: $be
    ld e, a                                       ; $70d9: $5f
    rst $20                                       ; $70da: $e7
    sbc e                                         ; $70db: $9b
    inc c                                         ; $70dc: $0c
    dec e                                         ; $70dd: $1d
    add a                                         ; $70de: $87
    ld a, [$b2d0]                                 ; $70df: $fa $d0 $b2
    add $4f                                       ; $70e2: $c6 $4f
    db $d3                                        ; $70e4: $d3
    sub $fe                                       ; $70e5: $d6 $fe
    inc sp                                        ; $70e7: $33
    dec [hl]                                      ; $70e8: $35
    rst $30                                       ; $70e9: $f7
    jp c, Jump_000_29f4                           ; $70ea: $da $f4 $29

    jp z, Jump_000_32d3                           ; $70ed: $ca $d3 $32

    ld a, d                                       ; $70f0: $7a
    ld h, h                                       ; $70f1: $64
    inc sp                                        ; $70f2: $33
    sub c                                         ; $70f3: $91
    rla                                           ; $70f4: $17
    add l                                         ; $70f5: $85
    call c, $45e7                                 ; $70f6: $dc $e7 $45
    call $9f45                                    ; $70f9: $cd $45 $9f
    rlca                                          ; $70fc: $07
    ld b, e                                       ; $70fd: $43
    set 7, l                                      ; $70fe: $cb $fd
    ld [bc], a                                    ; $7100: $02
    db $ed                                        ; $7101: $ed
    ld sp, $81d4                                  ; $7102: $31 $d4 $81
    ld d, d                                       ; $7105: $52
    ld e, $ea                                     ; $7106: $1e $ea
    ld d, e                                       ; $7108: $53
    call nc, $7386                                ; $7109: $d4 $86 $73
    rst $10                                       ; $710c: $d7
    ld h, h                                       ; $710d: $64
    add sp, -$08                                  ; $710e: $e8 $f8
    ld a, h                                       ; $7110: $7c
    pop bc                                        ; $7111: $c1
    xor d                                         ; $7112: $aa
    ld b, d                                       ; $7113: $42
    ld a, [c]                                     ; $7114: $f2
    ret z                                         ; $7115: $c8

    sbc a                                         ; $7116: $9f
    adc e                                         ; $7117: $8b
    ld h, c                                       ; $7118: $61
    jr nz, jr_063_7187                            ; $7119: $20 $6c

    sbc $e7                                       ; $711b: $de $e7
    pop af                                        ; $711d: $f1
    rst $28                                       ; $711e: $ef
    ld e, [hl]                                    ; $711f: $5e
    ld a, b                                       ; $7120: $78
    xor $17                                       ; $7121: $ee $17
    ld l, l                                       ; $7123: $6d
    and $55                                       ; $7124: $e6 $55
    rst $20                                       ; $7126: $e7
    ld [hl], h                                    ; $7127: $74
    inc e                                         ; $7128: $1c
    ld b, e                                       ; $7129: $43
    rst $18                                       ; $712a: $df
    rst $20                                       ; $712b: $e7
    and c                                         ; $712c: $a1
    ld a, $f2                                     ; $712d: $3e $f2
    rst $20                                       ; $712f: $e7
    ret z                                         ; $7130: $c8

    rra                                           ; $7131: $1f
    pop af                                        ; $7132: $f1
    ret nc                                        ; $7133: $d0

    inc a                                         ; $7134: $3c
    or d                                          ; $7135: $b2
    sbc c                                         ; $7136: $99
    ret z                                         ; $7137: $c8

    or h                                          ; $7138: $b4
    or l                                          ; $7139: $b5
    rst $38                                       ; $713a: $ff
    ld c, h                                       ; $713b: $4c
    call Call_063_43bd                            ; $713c: $cd $bd $43
    ld [$d1f7], a                                 ; $713f: $ea $f7 $d1
    ld e, l                                       ; $7142: $5d
    ld b, [hl]                                    ; $7143: $46
    jp nc, $bd29                                  ; $7144: $d2 $29 $bd

    push hl                                       ; $7147: $e5
    ld hl, $b594                                  ; $7148: $21 $94 $b5
    sbc d                                         ; $714b: $9a
    ld a, e                                       ; $714c: $7b
    jr z, @-$55                                   ; $714d: $28 $a9

    sbc h                                         ; $714f: $9c
    ld [c], a                                     ; $7150: $e2
    ld b, c                                       ; $7151: $41
    or c                                          ; $7152: $b1
    sbc h                                         ; $7153: $9c
    di                                            ; $7154: $f3
    ld [bc], a                                    ; $7155: $02
    sub a                                         ; $7156: $97
    add [hl]                                      ; $7157: $86
    ld h, a                                       ; $7158: $67
    or l                                          ; $7159: $b5
    cp c                                          ; $715a: $b9
    ret nc                                        ; $715b: $d0

    ld a, [de]                                    ; $715c: $1a
    inc c                                         ; $715d: $0c
    ld b, c                                       ; $715e: $41
    sub $68                                       ; $715f: $d6 $68
    ld [hl+], a                                   ; $7161: $22
    ld l, l                                       ; $7162: $6d

Call_063_7163:
    db $ed                                        ; $7163: $ed
    ccf                                           ; $7164: $3f
    ld d, e                                       ; $7165: $53
    ld [hl], e                                    ; $7166: $73
    cp a                                          ; $7167: $bf
    ld b, a                                       ; $7168: $47
    sbc l                                         ; $7169: $9d
    ld a, e                                       ; $716a: $7b
    jp nc, Jump_063_510e                          ; $716b: $d2 $0e $51

    ld a, e                                       ; $716e: $7b
    ld e, h                                       ; $716f: $5c
    ld e, l                                       ; $7170: $5d
    ld a, [$7fea]                                 ; $7171: $fa $ea $7f
    ld e, $4b                                     ; $7174: $1e $4b
    rst $38                                       ; $7176: $ff
    add l                                         ; $7177: $85
    adc a                                         ; $7178: $8f
    ld a, [hl]                                    ; $7179: $7e
    ld bc, $8517                                  ; $717a: $01 $17 $85
    adc h                                         ; $717d: $8c
    cp a                                          ; $717e: $bf
    ld h, b                                       ; $717f: $60
    rlca                                          ; $7180: $07
    add hl, hl                                    ; $7181: $29
    sub l                                         ; $7182: $95
    pop hl                                        ; $7183: $e1
    pop af                                        ; $7184: $f1
    dec bc                                        ; $7185: $0b
    rst $20                                       ; $7186: $e7

jr_063_7187:
    rlca                                          ; $7187: $07
    cp $02                                        ; $7188: $fe $02
    adc d                                         ; $718a: $8a
    pop hl                                        ; $718b: $e1
    pop af                                        ; $718c: $f1
    dec bc                                        ; $718d: $0b
    rla                                           ; $718e: $17
    add l                                         ; $718f: $85
    xor h                                         ; $7190: $ac
    pop af                                        ; $7191: $f1
    rst $08                                       ; $7192: $cf
    dec a                                         ; $7193: $3d
    ld bc, $9077                                  ; $7194: $01 $77 $90
    sbc d                                         ; $7197: $9a
    jp z, Jump_063_775c                           ; $7198: $ca $5c $77

    ld l, c                                       ; $719b: $69
    ld d, d                                       ; $719c: $52
    ld [hl+], a                                   ; $719d: $22
    halt                                          ; $719e: $76
    adc [hl]                                      ; $719f: $8e
    pop hl                                        ; $71a0: $e1
    pop af                                        ; $71a1: $f1
    dec bc                                        ; $71a2: $0b
    sub a                                         ; $71a3: $97
    add [hl]                                      ; $71a4: $86
    jp z, $ba8e                                   ; $71a5: $ca $8e $ba

    ld h, $36                                     ; $71a8: $26 $36
    jp Jump_000_17e3                              ; $71aa: $c3 $e3 $17


    rst $20                                       ; $71ad: $e7
    cp e                                          ; $71ae: $bb
    add $94                                       ; $71af: $c6 $94
    inc l                                         ; $71b1: $2c
    xor $d5                                       ; $71b2: $ee $d5
    sub l                                         ; $71b4: $95
    pop hl                                        ; $71b5: $e1
    pop af                                        ; $71b6: $f1
    dec bc                                        ; $71b7: $0b
    rlca                                          ; $71b8: $07
    ld a, a                                       ; $71b9: $7f
    ld bc, $5d4b                                  ; $71ba: $01 $4b $5d
    dec sp                                        ; $71bd: $3b
    ld d, h                                       ; $71be: $54
    ld c, $09                                     ; $71bf: $0e $09
    ld e, $c3                                     ; $71c1: $1e $c3
    db $e3                                        ; $71c3: $e3
    rla                                           ; $71c4: $17
    rlca                                          ; $71c5: $07
    ld e, h                                       ; $71c6: $5c
    or $34                                        ; $71c7: $f6 $34
    ld b, a                                       ; $71c9: $47
    cp d                                          ; $71ca: $ba
    ld [hl], a                                    ; $71cb: $77
    and a                                         ; $71cc: $a7
    rst $10                                       ; $71cd: $d7
    ccf                                           ; $71ce: $3f
    ld a, d                                       ; $71cf: $7a
    ld sp, $bd25                                  ; $71d0: $31 $25 $bd
    rst $00                                       ; $71d3: $c7
    cp b                                          ; $71d4: $b8
    rst $08                                       ; $71d5: $cf
    dec hl                                        ; $71d6: $2b
    call Call_063_65a1                            ; $71d7: $cd $a1 $65
    or c                                          ; $71da: $b1
    jp hl                                         ; $71db: $e9


    rst $30                                       ; $71dc: $f7
    ld c, $c9                                     ; $71dd: $0e $c9
    ld l, a                                       ; $71df: $6f
    ld a, c                                       ; $71e0: $79
    ld [$2acb], a                                 ; $71e1: $ea $cb $2a
    ld a, a                                       ; $71e4: $7f
    add h                                         ; $71e5: $84
    or d                                          ; $71e6: $b2
    xor [hl]                                      ; $71e7: $ae
    ld d, a                                       ; $71e8: $57
    push hl                                       ; $71e9: $e5
    add l                                         ; $71ea: $85
    ld b, a                                       ; $71eb: $47
    dec h                                         ; $71ec: $25
    ld c, b                                       ; $71ed: $48
    cp c                                          ; $71ee: $b9
    ld e, a                                       ; $71ef: $5f
    rst $20                                       ; $71f0: $e7
    ld [hl], a                                    ; $71f1: $77
    adc b                                         ; $71f2: $88
    ld b, a                                       ; $71f3: $47
    ld a, [hl-]                                   ; $71f4: $3a
    push bc                                       ; $71f5: $c5
    ld l, b                                       ; $71f6: $68
    jp c, Jump_063_7fda                           ; $71f7: $da $da $7f

    and [hl]                                      ; $71fa: $a6
    and $de                                       ; $71fb: $e6 $de
    ld b, l                                       ; $71fd: $45
    ld hl, $1dd1                                  ; $71fe: $21 $d1 $1d
    and h                                         ; $7201: $a4
    ld d, h                                       ; $7202: $54
    and d                                         ; $7203: $a2
    ld c, [hl]                                    ; $7204: $4e
    ccf                                           ; $7205: $3f
    ld b, c                                       ; $7206: $41
    ret nz                                        ; $7207: $c0

    or d                                          ; $7208: $b2
    xor d                                         ; $7209: $aa
    ld a, [hl]                                    ; $720a: $7e
    sbc a                                         ; $720b: $9f
    sbc b                                         ; $720c: $98
    ld b, e                                       ; $720d: $43
    ld l, e                                       ; $720e: $6b
    inc c                                         ; $720f: $0c
    ld a, l                                       ; $7210: $7d
    sbc a                                         ; $7211: $9f
    rst $10                                       ; $7212: $d7
    ld [hl], b                                    ; $7213: $70
    pop de                                        ; $7214: $d1
    ld [$7efa], sp                                ; $7215: $08 $fa $7e
    ld bc, $c1d7                                  ; $7218: $01 $d7 $c1
    ld a, [de]                                    ; $721b: $1a
    ld a, d                                       ; $721c: $7a
    and d                                         ; $721d: $a2
    rlca                                          ; $721e: $07
    ld c, d                                       ; $721f: $4a
    ld a, c                                       ; $7220: $79
    and l                                         ; $7221: $a5
    add hl, sp                                    ; $7222: $39
    ld [hl], h                                    ; $7223: $74
    adc d                                         ; $7224: $8a
    sub c                                         ; $7225: $91
    or [hl]                                       ; $7226: $b6
    or $9f                                        ; $7227: $f6 $9f
    xor c                                         ; $7229: $a9
    cp c                                          ; $722a: $b9
    ld [hl], a                                    ; $722b: $77
    dec e                                         ; $722c: $1d
    db $ec                                        ; $722d: $ec
    ld l, c                                       ; $722e: $69
    ld l, $b6                                     ; $722f: $2e $b6
    and b                                         ; $7231: $a0
    rst $00                                       ; $7232: $c7
    ret nc                                        ; $7233: $d0

    dec de                                        ; $7234: $1b
    cp a                                          ; $7235: $bf
    ld a, b                                       ; $7236: $78
    inc c                                         ; $7237: $0c
    ld a, l                                       ; $7238: $7d
    dec [hl]                                      ; $7239: $35
    call nz, $bfae                                ; $723a: $c4 $ae $bf
    ld e, e                                       ; $723d: $5b
    xor $17                                       ; $723e: $ee $17
    rlca                                          ; $7240: $07
    ld e, h                                       ; $7241: $5c
    add $19                                       ; $7242: $c6 $19
    ld [hl], d                                    ; $7244: $72
    sbc a                                         ; $7245: $9f
    ld b, a                                       ; $7246: $47

jr_063_7247:
    ld [hl], a                                    ; $7247: $77
    sbc c                                         ; $7248: $99
    ld a, [$9232]                                 ; $7249: $fa $32 $92
    sbc d                                         ; $724c: $9a
    sbc [hl]                                      ; $724d: $9e
    add h                                         ; $724e: $84
    ld h, d                                       ; $724f: $62
    add hl, de                                    ; $7250: $19
    ld a, [hl-]                                   ; $7251: $3a
    push bc                                       ; $7252: $c5
    add sp, $7b                                   ; $7253: $e8 $7b
    rlca                                          ; $7255: $07
    ld e, h                                       ; $7256: $5c
    sub $d0                                       ; $7257: $d6 $d0
    inc de                                        ; $7259: $13
    dec a                                         ; $725a: $3d
    ld d, b                                       ; $725b: $50
    jp z, $cd2b                                   ; $725c: $ca $2b $cd

    adc c                                         ; $725f: $89
    pop de                                        ; $7260: $d1
    and d                                         ; $7261: $a2
    dec bc                                        ; $7262: $0b
    ld a, [hl-]                                   ; $7263: $3a
    rlca                                          ; $7264: $07
    push bc                                       ; $7265: $c5
    ld [hl], d                                    ; $7266: $72
    cp a                                          ; $7267: $bf
    rla                                           ; $7268: $17
    ld [hl], l                                    ; $7269: $75
    dec a                                         ; $726a: $3d
    adc d                                         ; $726b: $8a
    inc [hl]                                      ; $726c: $34
    ld [hl], e                                    ; $726d: $73
    xor [hl]                                      ; $726e: $ae
    push de                                       ; $726f: $d5
    inc e                                         ; $7270: $1c
    ld e, d                                       ; $7271: $5a
    call nz, $ff33                                ; $7272: $c4 $33 $ff
    ld [c], a                                     ; $7275: $e2
    ld a, e                                       ; $7276: $7b
    rst $10                                       ; $7277: $d7
    pop bc                                        ; $7278: $c1
    sbc [hl]                                      ; $7279: $9e
    and $54                                       ; $727a: $e6 $54
    ld a, b                                       ; $727c: $78
    ld e, $2f                                     ; $727d: $1e $2f
    ld a, [bc]                                    ; $727f: $0a
    reti                                          ; $7280: $d9


    add b                                         ; $7281: $80
    sub c                                         ; $7282: $91
    rst $38                                       ; $7283: $ff
    ld e, c                                       ; $7284: $59
    ld l, l                                       ; $7285: $6d
    adc [hl]                                      ; $7286: $8e
    call nc, $a193                                ; $7287: $d4 $93 $a1
    ldh a, [rOCPS]                                ; $728a: $f0 $6a
    ld a, b                                       ; $728c: $78
    or $e8                                        ; $728d: $f6 $e8
    dec e                                         ; $728f: $1d
    ld a, [bc]                                    ; $7290: $0a
    rst $18                                       ; $7291: $df
    cpl                                           ; $7292: $2f
    add a                                         ; $7293: $87
    ld b, b                                       ; $7294: $40

Jump_063_7295:
    add hl, hl                                    ; $7295: $29
    ld c, a                                       ; $7296: $4f

Jump_063_7297:
    ld b, d                                       ; $7297: $42
    ld sp, $46d3                                  ; $7298: $31 $d3 $46
    and $bd                                       ; $729b: $e6 $bd
    dec hl                                        ; $729d: $2b
    inc bc                                        ; $729e: $03
    or e                                          ; $729f: $b3
    sub e                                         ; $72a0: $93
    ld [hl], $1d                                  ; $72a1: $36 $1d
    dec a                                         ; $72a3: $3d
    ld b, a                                       ; $72a4: $47
    db $ec                                        ; $72a5: $ec
    ld e, h                                       ; $72a6: $5c
    or l                                          ; $72a7: $b5
    inc d                                         ; $72a8: $14
    inc sp                                        ; $72a9: $33
    ldh [$bd], a                                  ; $72aa: $e0 $bd
    ld l, e                                       ; $72ac: $6b

jr_063_72ad:
    and b                                         ; $72ad: $a0
    scf                                           ; $72ae: $37
    ld a, [hl]                                    ; $72af: $7e
    pop af                                        ; $72b0: $f1
    jr jr_063_72ad                                ; $72b1: $18 $fa

    ld l, d                                       ; $72b3: $6a
    adc b                                         ; $72b4: $88
    ld e, l                                       ; $72b5: $5d
    ld a, a                                       ; $72b6: $7f
    or a                                          ; $72b7: $b7
    inc l                                         ; $72b8: $2c
    sub h                                         ; $72b9: $94
    pop de                                        ; $72ba: $d1
    ld e, l                                       ; $72bb: $5d
    ld d, [hl]                                    ; $72bc: $56
    and c                                         ; $72bd: $a1
    jr c, jr_063_7247                             ; $72be: $38 $87

    and $81                                       ; $72c0: $e6 $81
    ld d, d                                       ; $72c2: $52
    ld e, $14                                     ; $72c3: $1e $14

Call_063_72c5:
    set 7, l                                      ; $72c5: $cb $fd
    ld [bc], a                                    ; $72c7: $02
    rlca                                          ; $72c8: $07
    ld e, h                                       ; $72c9: $5c
    ld d, [hl]                                    ; $72ca: $56
    ld a, [hl]                                    ; $72cb: $7e
    inc a                                         ; $72cc: $3c
    add h                                         ; $72cd: $84
    ld [hl-], a                                   ; $72ce: $32
    srl [hl]                                      ; $72cf: $cb $3e
    add $3f                                       ; $72d1: $c6 $3f
    xor e                                         ; $72d3: $ab
    ei                                            ; $72d4: $fb
    ld [hl+], a                                   ; $72d5: $22
    ld l, d                                       ; $72d6: $6a
    sbc $3b                                       ; $72d7: $de $3b
    ld [hl], c                                    ; $72d9: $71
    xor l                                         ; $72da: $ad
    nop                                           ; $72db: $00
    jp nz, $f28b                                  ; $72dc: $c2 $8b $f2

    ld [hl], e                                    ; $72df: $73
    ld d, d                                       ; $72e0: $52
    sub h                                         ; $72e1: $94
    ld [hl], d                                    ; $72e2: $72
    db $dd                                        ; $72e3: $dd
    push bc                                       ; $72e4: $c5
    xor c                                         ; $72e5: $a9
    adc c                                         ; $72e6: $89
    ld [hl+], a                                   ; $72e7: $22
    db $10                                        ; $72e8: $10
    inc c                                         ; $72e9: $0c
    ld a, c                                       ; $72ea: $79
    rst $28                                       ; $72eb: $ef
    sub b                                         ; $72ec: $90
    ld d, a                                       ; $72ed: $57
    sbc e                                         ; $72ee: $9b
    ei                                            ; $72ef: $fb
    inc a                                         ; $72f0: $3c
    dec d                                         ; $72f1: $15
    sbc [hl]                                      ; $72f2: $9e
    rst $00                                       ; $72f3: $c7
    add e                                         ; $72f4: $83
    ld d, l                                       ; $72f5: $55
    ld c, e                                       ; $72f6: $4b
    cp c                                          ; $72f7: $b9
    ld e, a                                       ; $72f8: $5f
    db $ed                                        ; $72f9: $ed
    ccf                                           ; $72fa: $3f
    ld d, e                                       ; $72fb: $53
    ld b, e                                       ; $72fc: $43
    dec de                                        ; $72fd: $1b
    ld b, e                                       ; $72fe: $43
    ld l, a                                       ; $72ff: $6f
    db $fc                                        ; $7300: $fc
    inc hl                                        ; $7301: $23
    dec a                                         ; $7302: $3d
    ld e, b                                       ; $7303: $58
    or l                                          ; $7304: $b5
    sub h                                         ; $7305: $94
    dec a                                         ; $7306: $3d
    add $21                                       ; $7307: $c6 $21
    inc d                                         ; $7309: $14
    db $ed                                        ; $730a: $ed
    ld l, e                                       ; $730b: $6b
    inc sp                                        ; $730c: $33
    rst $08                                       ; $730d: $cf
    cp c                                          ; $730e: $b9
    add sp, $67                                   ; $730f: $e8 $67
    add a                                         ; $7311: $87
    jp nz, $bcfb                                  ; $7312: $c2 $fb $bc

    adc b                                         ; $7315: $88
    sub d                                         ; $7316: $92
    add sp, $3a                                   ; $7317: $e8 $3a
    jp nc, $a3a9                                  ; $7319: $d2 $a9 $a3

    ld [hl], a                                    ; $731c: $77
    rst $18                                       ; $731d: $df
    rst $30                                       ; $731e: $f7
    ret nc                                        ; $731f: $d0

    add hl, sp                                    ; $7320: $39
    rst $20                                       ; $7321: $e7
    ld a, [hl-]                                   ; $7322: $3a
    dec h                                         ; $7323: $25
    sbc l                                         ; $7324: $9d
    ld e, $2c                                     ; $7325: $1e $2c
    ld a, [$7f19]                                 ; $7327: $fa $19 $7f
    ld b, c                                       ; $732a: $41
    or e                                          ; $732b: $b3

Jump_063_732c:
    or $17                                        ; $732c: $f6 $17
    rlca                                          ; $732e: $07
    ld e, h                                       ; $732f: $5c
    ld b, [hl]                                    ; $7330: $46
    cp $dc                                        ; $7331: $fe $dc
    rst $28                                       ; $7333: $ef
    db $dd                                        ; $7334: $dd
    ld l, c                                       ; $7335: $69
    db $f4                                        ; $7336: $f4
    ld a, $c6                                     ; $7337: $3e $c6
    ccf                                           ; $7339: $3f
    call $2843                                    ; $733a: $cd $43 $28
    or e                                          ; $733d: $b3
    xor h                                         ; $733e: $ac
    ld a, h                                       ; $733f: $7c
    add hl, hl                                    ; $7340: $29
    jp c, $0d77                                   ; $7341: $da $77 $0d

    db $f4                                        ; $7344: $f4
    add $3f                                       ; $7345: $c6 $3f
    jp nc, $e863                                  ; $7347: $d2 $63 $e8

    cp e                                          ; $734a: $bb
    jr c, jr_063_7382                             ; $734b: $38 $35

    ld d, c                                       ; $734d: $51
    inc b                                         ; $734e: $04
    add d                                         ; $734f: $82
    ld hl, $18f7                                  ; $7350: $21 $f7 $18
    rra                                           ; $7353: $1f
    db $10                                        ; $7354: $10
    ld c, h                                       ; $7355: $4c
    rrca                                          ; $7356: $0f
    push af                                       ; $7357: $f5
    push bc                                       ; $7358: $c5
    ret nc                                        ; $7359: $d0

    rst $30                                       ; $735a: $f7
    ld b, b                                       ; $735b: $40
    ld h, l                                       ; $735c: $65

jr_063_735d:
    rst $08                                       ; $735d: $cf
    inc a                                         ; $735e: $3c
    dec d                                         ; $735f: $15
    ld a, d                                       ; $7360: $7a
    ld [hl], a                                    ; $7361: $77
    ld bc, $02b7                                  ; $7362: $01 $b7 $02
    ld [$7f6b], sp                                ; $7365: $08 $6b $7f
    ld bc, $e66d                                  ; $7368: $01 $6d $e6
    dec a                                         ; $736b: $3d
    call $5dd1                                    ; $736c: $cd $d1 $5d
    ld d, [hl]                                    ; $736f: $56
    and c                                         ; $7370: $a1
    ld hl, sp-$22                                 ; $7371: $f8 $de
    ld bc, $7197                                  ; $7373: $01 $97 $71
    ld b, $a3                                     ; $7376: $06 $a3
    rlca                                          ; $7378: $07
    ld c, d                                       ; $7379: $4a
    ld a, c                                       ; $737a: $79
    sbc a                                         ; $737b: $9f
    add a                                         ; $737c: $87
    ld a, [$9fe2]                                 ; $737d: $fa $e2 $9f
    or e                                          ; $7380: $b3
    ld c, h                                       ; $7381: $4c

jr_063_7382:
    ld a, $b7                                     ; $7382: $3e $b7
    ld a, [$3617]                                 ; $7384: $fa $17 $36
    ld l, l                                       ; $7387: $6d
    db $ed                                        ; $7388: $ed
    ccf                                           ; $7389: $3f
    ld d, e                                       ; $738a: $53
    ld [hl], e                                    ; $738b: $73
    rst $28                                       ; $738c: $ef
    add b                                         ; $738d: $80
    rr [hl]                                       ; $738e: $cb $1e
    ld [hl], a                                    ; $7390: $77
    ld [hl], h                                    ; $7391: $74
    ld c, $a1                                     ; $7392: $0e $a1
    inc c                                         ; $7394: $0c
    sub h                                         ; $7395: $94
    ld a, [c]                                     ; $7396: $f2
    and d                                         ; $7397: $a2
    sub b                                         ; $7398: $90
    ld b, e                                       ; $7399: $43
    inc sp                                        ; $739a: $33
    ld a, e                                       ; $739b: $7b
    adc a                                         ; $739c: $8f
    ld h, l                                       ; $739d: $65
    xor b                                         ; $739e: $a8
    rst $28                                       ; $739f: $ef
    ld l, c                                       ; $73a0: $69
    adc [hl]                                      ; $73a1: $8e
    ld [hl], h                                    ; $73a2: $74
    rst $28                                       ; $73a3: $ef
    ld c, [hl]                                    ; $73a4: $4e
    xor a                                         ; $73a5: $af
    ld a, d                                       ; $73a6: $7a
    sbc a                                         ; $73a7: $9f
    ld d, a                                       ; $73a8: $57
    ld a, e                                       ; $73a9: $7b
    ld [hl], e                                    ; $73aa: $73
    ld c, c                                       ; $73ab: $49
    ld b, l                                       ; $73ac: $45
    ld [hl], h                                    ; $73ad: $74
    ld c, $86                                     ; $73ae: $0e $86
    jr nz, jr_063_735d                            ; $73b0: $20 $ab

    sub [hl]                                      ; $73b2: $96
    ld [hl], d                                    ; $73b3: $72
    cp a                                          ; $73b4: $bf

jr_063_73b5:
    add a                                         ; $73b5: $87
    ld hl, sp+$23                                 ; $73b6: $f8 $23
    sub h                                         ; $73b8: $94
    jp hl                                         ; $73b9: $e9


    add sp, -$4b                                  ; $73ba: $e8 $b5
    sbc d                                         ; $73bc: $9a
    adc e                                         ; $73bd: $8b
    jr z, @-$75                                   ; $73be: $28 $89

    and [hl]                                      ; $73c0: $a6
    xor l                                         ; $73c1: $ad
    ld a, [hl-]                                   ; $73c2: $3a
    ld b, a                                       ; $73c3: $47
    ld [hl], a                                    ; $73c4: $77
    cp c                                          ; $73c5: $b9
    ld [hl], a                                    ; $73c6: $77
    ret                                           ; $73c7: $c9


    ld l, d                                       ; $73c8: $6a
    ld [hl], e                                    ; $73c9: $73
    pop de                                        ; $73ca: $d1
    rst $28                                       ; $73cb: $ef
    jr c, jr_063_73b5                             ; $73cc: $38 $e7

    add sp, $2e                                   ; $73ce: $e8 $2e
    ld l, e                                       ; $73d0: $6b
    ld a, h                                       ; $73d1: $7c
    add hl, hl                                    ; $73d2: $29
    ld e, [hl]                                    ; $73d3: $5e
    inc d                                         ; $73d4: $14
    ld [hl], d                                    ; $73d5: $72
    sbc a                                         ; $73d6: $9f
    ld b, a                                       ; $73d7: $47
    ld [hl], a                                    ; $73d8: $77
    reti                                          ; $73d9: $d9


    db $d3                                        ; $73da: $d3
    ld e, h                                       ; $73db: $5c
    rst $10                                       ; $73dc: $d7
    adc e                                         ; $73dd: $8b
    ld [hl], a                                    ; $73de: $77
    ld [c], a                                     ; $73df: $e2
    ld d, h                                       ; $73e0: $54
    add sp, -$23                                  ; $73e1: $e8 $dd
    dec b                                         ; $73e3: $05
    call c, $200a                                 ; $73e4: $dc $0a $20
    cp h                                          ; $73e7: $bc
    jr z, @+$01                                   ; $73e8: $28 $ff

    ld l, $4e                                     ; $73ea: $2e $4e
    ld c, l                                       ; $73ec: $4d
    inc d                                         ; $73ed: $14
    add c                                         ; $73ee: $81
    ld h, b                                       ; $73ef: $60
    ret z                                         ; $73f0: $c8

    ld a, e                                       ; $73f1: $7b
    add a                                         ; $73f2: $87
    cp h                                          ; $73f3: $bc
    jp c, $e7dc                                   ; $73f4: $da $dc $e7

    or l                                          ; $73f7: $b5
    ld a, [hl-]                                   ; $73f8: $3a
    sub l                                         ; $73f9: $95
    xor $21                                       ; $73fa: $ee $21
    sub h                                         ; $73fc: $94
    push bc                                       ; $73fd: $c5
    and [hl]                                      ; $73fe: $a6
    adc a                                         ; $73ff: $8f
    and c                                         ; $7400: $a1
    scf                                           ; $7401: $37
    ld a, [hl]                                    ; $7402: $7e
    pop af                                        ; $7403: $f1
    ld h, b                                       ; $7404: $60
    push de                                       ; $7405: $d5
    ld d, d                                       ; $7406: $52
    xor $17                                       ; $7407: $ee $17
    rlca                                          ; $7409: $07
    ld e, h                                       ; $740a: $5c
    sub $29                                       ; $740b: $d6 $29
    push de                                       ; $740d: $d5
    add hl, sp                                    ; $740e: $39
    add h                                         ; $740f: $84
    or d                                          ; $7410: $b2
    ld a, [de]                                    ; $7411: $1a
    sbc [hl]                                      ; $7412: $9e
    ld e, c                                       ; $7413: $59
    sub $6c                                       ; $7414: $d6 $6c
    ld e, b                                       ; $7416: $58
    sub $08                                       ; $7417: $d6 $08
    add l                                         ; $7419: $85
    or [hl]                                       ; $741a: $b6
    or $9f                                        ; $741b: $f6 $9f
    xor c                                         ; $741d: $a9
    reti                                          ; $741e: $d9


    sub l                                         ; $741f: $95
    add c                                         ; $7420: $81
    reti                                          ; $7421: $d9


    xor c                                         ; $7422: $a9
    ld a, l                                       ; $7423: $7d
    rst $10                                       ; $7424: $d7
    ld b, b                                       ; $7425: $40
    ld l, a                                       ; $7426: $6f
    db $fc                                        ; $7427: $fc
    ld [c], a                                     ; $7428: $e2
    ld sp, $21f4                                  ; $7429: $31 $f4 $21
    ret z                                         ; $742c: $c8

    ld l, d                                       ; $742d: $6a
    adc b                                         ; $742e: $88
    ld e, l                                       ; $742f: $5d
    ld a, a                                       ; $7430: $7f
    ld e, a                                       ; $7431: $5f
    xor e                                         ; $7432: $ab
    cp c                                          ; $7433: $b9
    rlca                                          ; $7434: $07
    ld b, h                                       ; $7435: $44
    ld h, a                                       ; $7436: $67
    ld [hl], $6b                                  ; $7437: $36 $6b
    ld a, a                                       ; $7439: $7f
    ld bc, $eb97                                  ; $743a: $01 $97 $eb
    xor e                                         ; $743d: $ab
    ld [$d1f7], a                                 ; $743e: $ea $f7 $d1
    ld e, l                                       ; $7441: $5d
    sub $29                                       ; $7442: $d6 $29

jr_063_7444:
    push de                                       ; $7444: $d5
    ld b, e                                       ; $7445: $43
    jr z, jr_063_74ab                             ; $7446: $28 $63

    xor e                                         ; $7448: $ab
    jp z, $da16                                   ; $7449: $ca $16 $da

    xor d                                         ; $744c: $aa
    ld a, [$747d]                                 ; $744d: $fa $7d $74
    rla                                           ; $7450: $17
    db $ed                                        ; $7451: $ed
    dec sp                                        ; $7452: $3b
    ldh [$b2], a                                  ; $7453: $e0 $b2
    ld b, [hl]                                    ; $7455: $46
    ld c, b                                       ; $7456: $48
    ld c, [hl]                                    ; $7457: $4e
    inc hl                                        ; $7458: $23
    inc d                                         ; $7459: $14
    and a                                         ; $745a: $a7
    ld [hl], e                                    ; $745b: $73
    rst $20                                       ; $745c: $e7
    sbc [hl]                                      ; $745d: $9e
    jr c, jr_063_7475                             ; $745e: $38 $15

    ld a, d                                       ; $7460: $7a
    ld [hl], a                                    ; $7461: $77
    ld bc, $02b7                                  ; $7462: $01 $b7 $02
    ld [$ca2f], sp                                ; $7465: $08 $2f $ca
    cp a                                          ; $7468: $bf
    adc e                                         ; $7469: $8b
    ld d, e                                       ; $746a: $53

Jump_063_746b:
    inc de                                        ; $746b: $13
    ld b, l                                       ; $746c: $45
    jr nz, @+$1a                                  ; $746d: $20 $18

    ld a, [c]                                     ; $746f: $f2
    sbc $a5                                       ; $7470: $de $a5
    pop hl                                        ; $7472: $e1
    ld e, c                                       ; $7473: $59
    ld l, l                                       ; $7474: $6d

jr_063_7475:
    adc [hl]                                      ; $7475: $8e
    and c                                         ; $7476: $a1
    scf                                           ; $7477: $37
    ld a, [hl]                                    ; $7478: $7e
    pop af                                        ; $7479: $f1
    ld h, b                                       ; $747a: $60
    push de                                       ; $747b: $d5
    ld d, d                                       ; $747c: $52
    or h                                          ; $747d: $b4
    cp a                                          ; $747e: $bf
    rla                                           ; $747f: $17
    ld d, c                                       ; $7480: $51
    ld [hl], e                                    ; $7481: $73
    ld [hl], h                                    ; $7482: $74
    sub a                                         ; $7483: $97
    ld b, l                                       ; $7484: $45
    ld hl, $47fb                                  ; $7485: $21 $fb $47
    rst $20                                       ; $7488: $e7
    add sp, $4e                                   ; $7489: $e8 $4e
    jp c, $e862                                   ; $748b: $da $62 $e8

    and e                                         ; $748e: $a3
    cp e                                          ; $748f: $bb
    xor h                                         ; $7490: $ac
    ret nz                                        ; $7491: $c0

    sub c                                         ; $7492: $91
    and e                                         ; $7493: $a3
    dec sp                                        ; $7494: $3b
    add a                                         ; $7495: $87
    ld d, b                                       ; $7496: $50
    xor e                                         ; $7497: $ab
    rst $28                                       ; $7498: $ef
    sbc l                                         ; $7499: $9d
    rst $10                                       ; $749a: $d7
    cp e                                          ; $749b: $bb
    rst $20                                       ; $749c: $e7
    xor $d8                                       ; $749d: $ee $d8
    cp c                                          ; $749f: $b9
    ld d, [hl]                                    ; $74a0: $56
    ld [hl], e                                    ; $74a1: $73
    db $ed                                        ; $74a2: $ed
    and c                                         ; $74a3: $a1
    db $10                                        ; $74a4: $10
    ei                                            ; $74a5: $fb
    ret                                           ; $74a6: $c9


    ld [hl], l                                    ; $74a7: $75
    adc $41                                       ; $74a8: $ce $41
    sbc h                                         ; $74aa: $9c

jr_063_74ab:
    ld d, b                                       ; $74ab: $50
    cp h                                          ; $74ac: $bc
    ld a, [$ee9f]                                 ; $74ad: $fa $9f $ee
    db $f4                                        ; $74b0: $f4
    ld a, [hl]                                    ; $74b1: $7e
    or h                                          ; $74b2: $b4
    di                                            ; $74b3: $f3
    sbc l                                         ; $74b4: $9d
    call nc, $3d87                                ; $74b5: $d4 $87 $3d
    jp nc, Jump_063_7aaa                          ; $74b8: $d2 $aa $7a

jr_063_74bb:
    and c                                         ; $74bb: $a1
    adc h                                         ; $74bc: $8c
    inc sp                                        ; $74bd: $33
    ld [hl], h                                    ; $74be: $74
    ld a, h                                       ; $74bf: $7c
    jr z, jr_063_7444                             ; $74c0: $28 $82

    ld d, e                                       ; $74c2: $53
    ld hl, $5ef9                                  ; $74c3: $21 $f9 $5e
    dec de                                        ; $74c6: $1b
    call nc, Call_063_5dea                        ; $74c7: $d4 $ea $5d
    inc d                                         ; $74ca: $14
    ld a, [hl-]                                   ; $74cb: $3a
    inc b                                         ; $74cc: $04
    rst $20                                       ; $74cd: $e7
    sbc h                                         ; $74ce: $9c
    inc hl                                        ; $74cf: $23
    db $e3                                        ; $74d0: $e3
    sub b                                         ; $74d1: $90
    cp e                                          ; $74d2: $bb
    ld h, h                                       ; $74d3: $64
    push bc                                       ; $74d4: $c5
    rst $08                                       ; $74d5: $cf
    db $e3                                        ; $74d6: $e3
    sbc h                                         ; $74d7: $9c
    ld a, [bc]                                    ; $74d8: $0a
    ret                                           ; $74d9: $c9


    ld d, $df                                     ; $74da: $16 $df
    cp e                                          ; $74dc: $bb
    ld h, h                                       ; $74dd: $64
    db $fc                                        ; $74de: $fc
    adc a                                         ; $74df: $8f
    call z, $145d                                 ; $74e0: $cc $5d $14
    ld a, [hl-]                                   ; $74e3: $3a
    add h                                         ; $74e4: $84
    sbc l                                         ; $74e5: $9d
    sbc a                                         ; $74e6: $9f
    adc [hl]                                      ; $74e7: $8e
    and c                                         ; $74e8: $a1
    xor $31                                       ; $74e9: $ee $31
    adc [hl]                                      ; $74eb: $8e
    xor $5c                                       ; $74ec: $ee $5c
    ld [$4c82], a                                 ; $74ee: $ea $82 $4c
    db $db                                        ; $74f1: $db
    ld h, e                                       ; $74f2: $63
    reti                                          ; $74f3: $d9


    ld b, l                                       ; $74f4: $45
    and c                                         ; $74f5: $a1
    ld b, e                                       ; $74f6: $43
    ret c                                         ; $74f7: $d8

    pop bc                                        ; $74f8: $c1
    ld e, a                                       ; $74f9: $5f
    add b                                         ; $74fa: $80
    ld [hl], $ba                                  ; $74fb: $36 $ba
    db $d3                                        ; $74fd: $d3
    ld [hl], l                                    ; $74fe: $75
    ld h, h                                       ; $74ff: $64
    adc b                                         ; $7500: $88
    adc l                                         ; $7501: $8d
    cp a                                          ; $7502: $bf
    scf                                           ; $7503: $37
    db $f4                                        ; $7504: $f4
    add a                                         ; $7505: $87
    ld [hl], $e7                                  ; $7506: $36 $e7
    and d                                         ; $7508: $a2
    sub b                                         ; $7509: $90
    ld h, e                                       ; $750a: $63
    ld e, l                                       ; $750b: $5d
    ld a, [bc]                                    ; $750c: $0a
    rst $28                                       ; $750d: $ef
    di                                            ; $750e: $f3
    ld l, d                                       ; $750f: $6a
    and a                                         ; $7510: $a7
    inc [hl]                                      ; $7511: $34
    cp h                                          ; $7512: $bc
    ldh a, [$a8]                                  ; $7513: $f0 $a8
    inc b                                         ; $7515: $04
    add hl, hl                                    ; $7516: $29
    ld l, e                                       ; $7517: $6b
    dec [hl]                                      ; $7518: $35
    rst $28                                       ; $7519: $ef
    dec e                                         ; $751a: $1d
    ld [hl], b                                    ; $751b: $70
    cp d                                          ; $751c: $ba
    xor [hl]                                      ; $751d: $ae
    ld b, e                                       ; $751e: $43
    add hl, hl                                    ; $751f: $29
    adc $fd                                       ; $7520: $ce $fd
    sbc $9d                                       ; $7522: $de $9d
    ld b, [hl]                                    ; $7524: $46
    xor a                                         ; $7525: $af
    push de                                       ; $7526: $d5
    ld e, h                                       ; $7527: $5c
    ld a, e                                       ; $7528: $7b
    jr z, @-$3a                                   ; $7529: $28 $c4

    ld a, [hl]                                    ; $752b: $7e
    ld [hl], d                                    ; $752c: $72
    ld e, l                                       ; $752d: $5d
    jr z, jr_063_74bb                             ; $752e: $28 $8b

    dec l                                         ; $7530: $2d
    db $ec                                        ; $7531: $ec
    ld e, h                                       ; $7532: $5c
    xor e                                         ; $7533: $ab
    add hl, sp                                    ; $7534: $39
    cp d                                          ; $7535: $ba
    sub e                                         ; $7536: $93
    or [hl]                                       ; $7537: $b6
    rst $00                                       ; $7538: $c7
    or d                                          ; $7539: $b2
    ld c, e                                       ; $753a: $4b
    and [hl]                                      ; $753b: $a6
    cp $91                                        ; $753c: $fe $91
    ei                                            ; $753e: $fb
    cp l                                          ; $753f: $bd
    ld b, e                                       ; $7540: $43
    ld [hl], c                                    ; $7541: $71
    db $ec                                        ; $7542: $ec
    ld a, $05                                     ; $7543: $3e $05
    and l                                         ; $7545: $a5
    ld a, b                                       ; $7546: $78
    xor l                                         ; $7547: $ad
    and $d0                                       ; $7548: $e6 $d0
    rst $08                                       ; $754a: $cf
    ld b, h                                       ; $754b: $44
    cp a                                          ; $754c: $bf
    ld [hl], a                                    ; $754d: $77
    ret                                           ; $754e: $c9


    call nc, $723f                                ; $754f: $d4 $3f $72
    adc l                                         ; $7552: $8d
    sbc a                                         ; $7553: $9f
    ld e, $a8                                     ; $7554: $1e $a8
    inc hl                                        ; $7556: $23
    rst $10                                       ; $7557: $d7
    jp nc, Jump_000_3d99                          ; $7558: $d2 $99 $3d

    cp d                                          ; $755b: $ba
    db $d3                                        ; $755c: $d3
    ld [hl], l                                    ; $755d: $75
    ld a, [hl+]                                   ; $755e: $2a
    inc h                                         ; $755f: $24
    rrca                                          ; $7560: $0f
    inc b                                         ; $7561: $04
    ld h, a                                       ; $7562: $67
    ld b, c                                       ; $7563: $41
    pop de                                        ; $7564: $d1
    rst $28                                       ; $7565: $ef
    rla                                           ; $7566: $17
    rst $20                                       ; $7567: $e7
    and a                                         ; $7568: $a7
    and [hl]                                      ; $7569: $a6
    call z, Call_063_541d                         ; $756a: $cc $1d $54
    add l                                         ; $756d: $85
    ld a, h                                       ; $756e: $7c
    ld bc, $eeed                                  ; $756f: $01 $ed $ee
    adc l                                         ; $7572: $8d
    inc [hl]                                      ; $7573: $34
    sub $28                                       ; $7574: $d6 $28
    ld h, h                                       ; $7576: $64
    jp $2098                                      ; $7577: $c3 $98 $20


    push hl                                       ; $757a: $e5
    dec b                                         ; $757b: $05
    sub a                                         ; $757c: $97
    add $bf                                       ; $757d: $c6 $bf
    ccf                                           ; $757f: $3f
    ld a, [hl]                                    ; $7580: $7e
    ld bc, $5b17                                  ; $7581: $01 $17 $5b
    ld [hl+], a                                   ; $7584: $22
    ld a, [hl+]                                   ; $7585: $2a
    cp d                                          ; $7586: $ba
    ld d, a                                       ; $7587: $57
    cp a                                          ; $7588: $bf
    ld d, a                                       ; $7589: $57
    cp e                                          ; $758a: $bb
    ret z                                         ; $758b: $c8

    ld a, [hl]                                    ; $758c: $7e
    or h                                          ; $758d: $b4
    ld a, [$4afc]                                 ; $758e: $fa $fc $4a
    ld a, [hl-]                                   ; $7591: $3a
    db $fd                                        ; $7592: $fd
    ld [bc], a                                    ; $7593: $02
    rla                                           ; $7594: $17
    ld l, e                                       ; $7595: $6b
    ld a, [hl-]                                   ; $7596: $3a
    ld e, d                                       ; $7597: $5a
    ld a, b                                       ; $7598: $78
    ld e, l                                       ; $7599: $5d
    inc hl                                        ; $759a: $23
    ld l, e                                       ; $759b: $6b
    ld [hl], l                                    ; $759c: $75
    ld [hl], e                                    ; $759d: $73
    ld d, l                                       ; $759e: $55
    ld a, [hl-]                                   ; $759f: $3a
    cp [hl]                                       ; $75a0: $be
    rla                                           ; $75a1: $17
    ld l, e                                       ; $75a2: $6b
    ld a, [hl-]                                   ; $75a3: $3a
    ld e, d                                       ; $75a4: $5a
    ld a, b                                       ; $75a5: $78
    ld e, l                                       ; $75a6: $5d
    inc hl                                        ; $75a7: $23
    add e                                         ; $75a8: $83
    ld b, l                                       ; $75a9: $45
    ccf                                           ; $75aa: $3f
    ld sp, hl                                     ; $75ab: $f9
    dec b                                         ; $75ac: $05

jr_063_75ad:
    rla                                           ; $75ad: $17
    and l                                         ; $75ae: $a5
    rra                                           ; $75af: $1f
    ld c, [hl]                                    ; $75b0: $4e
    ld c, l                                       ; $75b1: $4d
    ld e, a                                       ; $75b2: $5f
    inc bc                                        ; $75b3: $03
    ld [hl], b                                    ; $75b4: $70
    rst $08                                       ; $75b5: $cf
    rst $00                                       ; $75b6: $c7
    rla                                           ; $75b7: $17
    rla                                           ; $75b8: $17
    xor d                                         ; $75b9: $aa
    jp z, $d7f9                                   ; $75ba: $ca $f9 $d7

    ld [hl], b                                    ; $75bd: $70
    and a                                         ; $75be: $a7
    adc d                                         ; $75bf: $8a
    add b                                         ; $75c0: $80
    sub h                                         ; $75c1: $94
    rla                                           ; $75c2: $17
    rla                                           ; $75c3: $17
    ld b, e                                       ; $75c4: $43
    cp h                                          ; $75c5: $bc
    daa                                           ; $75c6: $27
    ld h, b                                       ; $75c7: $60
    add c                                         ; $75c8: $81
    adc b                                         ; $75c9: $88
    ld e, a                                       ; $75ca: $5f
    rla                                           ; $75cb: $17
    pop de                                        ; $75cc: $d1
    sbc l                                         ; $75cd: $9d
    or d                                          ; $75ce: $b2
    jr z, jr_063_7635                             ; $75cf: $28 $64

    db $e3                                        ; $75d1: $e3
    dec bc                                        ; $75d2: $0b
    cp d                                          ; $75d3: $ba
    ld d, a                                       ; $75d4: $57
    cp a                                          ; $75d5: $bf
    rst $20                                       ; $75d6: $e7
    cp e                                          ; $75d7: $bb
    ld a, [hl+]                                   ; $75d8: $2a
    dec c                                         ; $75d9: $0d
    cp a                                          ; $75da: $bf
    rst $20                                       ; $75db: $e7

jr_063_75dc:
    ld b, l                                       ; $75dc: $45
    ld sp, $1794                                  ; $75dd: $31 $94 $17
    add a                                         ; $75e0: $87
    ld e, b                                       ; $75e1: $58
    sub e                                         ; $75e2: $93
    jp z, $172f                                   ; $75e3: $ca $2f $17

    dec b                                         ; $75e6: $05
    ld c, $2a                                     ; $75e7: $0e $2a
    or h                                          ; $75e9: $b4
    ldh [rTIMA], a                                ; $75ea: $e0 $05
    add a                                         ; $75ec: $87
    sbc h                                         ; $75ed: $9c
    ld b, b                                       ; $75ee: $40
    xor l                                         ; $75ef: $ad
    xor e                                         ; $75f0: $ab
    xor h                                         ; $75f1: $ac
    ld c, c                                       ; $75f2: $49
    push hl                                       ; $75f3: $e5
    rla                                           ; $75f4: $17
    add a                                         ; $75f5: $87
    xor b                                         ; $75f6: $a8
    or c                                          ; $75f7: $b1
    cp h                                          ; $75f8: $bc
    ld d, a                                       ; $75f9: $57
    inc [hl]                                      ; $75fa: $34
    add sp, $56                                   ; $75fb: $e8 $56
    inc a                                         ; $75fd: $3c
    add [hl]                                      ; $75fe: $86
    cp [hl]                                       ; $75ff: $be
    adc b                                         ; $7600: $88
    xor $7c                                       ; $7601: $ee $7c
    ld bc, $8517                                  ; $7603: $01 $17 $85
    ld l, h                                       ; $7606: $6c
    jr jr_063_75dc                                ; $7607: $18 $d3

    cp h                                          ; $7609: $bc
    rst $20                                       ; $760a: $e7
    rla                                           ; $760b: $17
    ld a, b                                       ; $760c: $78
    ld bc, $4317                                  ; $760d: $01 $17 $43
    call nz, $e783                                ; $7610: $c4 $83 $e7
    pop de                                        ; $7613: $d1
    dec b                                         ; $7614: $05
    ret c                                         ; $7615: $d8

    db $fc                                        ; $7616: $fc
    ld [bc], a                                    ; $7617: $02
    ld l, l                                       ; $7618: $6d
    add hl, bc                                    ; $7619: $09
    or c                                          ; $761a: $b1
    sub e                                         ; $761b: $93
    ld e, a                                       ; $761c: $5f
    rst $20                                       ; $761d: $e7
    ld b, l                                       ; $761e: $45
    db $dd                                        ; $761f: $dd
    ld hl, sp+$02                                 ; $7620: $f8 $02
    rst $10                                       ; $7622: $d7
    jp hl                                         ; $7623: $e9


    and l                                         ; $7624: $a5

jr_063_7625:
    jr c, jr_063_75ad                             ; $7625: $38 $86

    ld [$8717], a                                 ; $7627: $ea $17 $87
    jr jr_063_7670                                ; $762a: $18 $44

    ld e, c                                       ; $762c: $59
    ld c, a                                       ; $762d: $4f
    ld a, [hl]                                    ; $762e: $7e
    ld bc, $7d97                                  ; $762f: $01 $97 $7d
    add hl, hl                                    ; $7632: $29
    dec [hl]                                      ; $7633: $35
    inc a                                         ; $7634: $3c

jr_063_7635:
    cpl                                           ; $7635: $2f
    add a                                         ; $7636: $87
    call nz, $bba5                                ; $7637: $c4 $a5 $bb
    halt                                          ; $763a: $76
    ld l, d                                       ; $763b: $6a
    db $fc                                        ; $763c: $fc
    ld [bc], a                                    ; $763d: $02
    add a                                         ; $763e: $87
    jr c, jr_063_7625                             ; $763f: $38 $e4

    di                                            ; $7641: $f3
    ld [bc], a                                    ; $7642: $02
    rla                                           ; $7643: $17
    pop de                                        ; $7644: $d1
    dec l                                         ; $7645: $2d
    add sp, $45                                   ; $7646: $e8 $45
    ld hl, $2fe3                                  ; $7648: $21 $e3 $2f
    ret c                                         ; $764b: $d8

    ld e, l                                       ; $764c: $5d
    ld e, a                                       ; $764d: $5f
    ld l, l                                       ; $764e: $6d
    and c                                         ; $764f: $a1
    pop de                                        ; $7650: $d1
    ld [hl], b                                    ; $7651: $70
    rst $20                                       ; $7652: $e7
    ld e, l                                       ; $7653: $5d
    sub e                                         ; $7654: $93
    sbc d                                         ; $7655: $9a
    sbc $1d                                       ; $7656: $de $1d
    add l                                         ; $7658: $85
    ld a, h                                       ; $7659: $7c
    db $f4                                        ; $765a: $f4
    cp $b3                                        ; $765b: $fe $b3
    dec d                                         ; $765d: $15
    ld b, b                                       ; $765e: $40
    ld hl, sp+$05                                 ; $765f: $f8 $05
    ld d, a                                       ; $7661: $57
    inc a                                         ; $7662: $3c
    or c                                          ; $7663: $b1
    dec b                                         ; $7664: $05
    ld b, c                                       ; $7665: $41
    jp z, $870b                                   ; $7666: $ca $0b $87

    xor b                                         ; $7669: $a8
    dec a                                         ; $766a: $3d
    xor [hl]                                      ; $766b: $ae
    ld l, $7d                                     ; $766c: $2e $7d
    sub l                                         ; $766e: $95
    ld e, d                                       ; $766f: $5a

jr_063_7670:
    inc b                                         ; $7670: $04
    and h                                         ; $7671: $a4
    cp h                                          ; $7672: $bc
    rlca                                          ; $7673: $07
    xor c                                         ; $7674: $a9
    add sp, -$26                                  ; $7675: $e8 $da
    ld a, [bc]                                    ; $7677: $0a
    ld sp, hl                                     ; $7678: $f9
    ld [bc], a                                    ; $7679: $02
    rst $10                                       ; $767a: $d7
    cp b                                          ; $767b: $b8
    cp e                                          ; $767c: $bb
    db $e4                                        ; $767d: $e4
    adc a                                         ; $767e: $8f
    ld e, [hl]                                    ; $767f: $5e

jr_063_7680:
    add a                                         ; $7680: $87
    ld [c], a                                     ; $7681: $e2
    ld e, a                                       ; $7682: $5f
    ld a, b                                       ; $7683: $78
    dec l                                         ; $7684: $2d
    ld e, l                                       ; $7685: $5d
    inc d                                         ; $7686: $14
    cp a                                          ; $7687: $bf
    rla                                           ; $7688: $17
    ld e, e                                       ; $7689: $5b
    xor d                                         ; $768a: $aa
    ld a, [$3d8d]                                 ; $768b: $fa $8d $3d
    cp a                                          ; $768e: $bf
    ret nz                                        ; $768f: $c0

    dec bc                                        ; $7690: $0b
    rlca                                          ; $7691: $07
    ld a, a                                       ; $7692: $7f
    add c                                         ; $7693: $81
    xor d                                         ; $7694: $aa
    ld d, $9e                                     ; $7695: $16 $9e
    ret c                                         ; $7697: $d8

    add d                                         ; $7698: $82
    jr nz, jr_063_7680                            ; $7699: $20 $e5

    dec b                                         ; $769b: $05
    rla                                           ; $769c: $17
    ld e, e                                       ; $769d: $5b
    xor d                                         ; $769e: $aa
    ld a, [$e98d]                                 ; $769f: $fa $8d $e9
    ld c, b                                       ; $76a2: $48
    add [hl]                                      ; $76a3: $86
    adc [hl]                                      ; $76a4: $8e
    ld d, $d2                                     ; $76a5: $16 $d2
    ld hl, sp+$02                                 ; $76a7: $f8 $02
    ld d, a                                       ; $76a9: $57
    ld [hl], $d5                                  ; $76aa: $36 $d5
    rst $28                                       ; $76ac: $ef
    cp b                                          ; $76ad: $b8
    sub $cf                                       ; $76ae: $d6 $cf
    rst $18                                       ; $76b0: $df
    ld [$179a], a                                 ; $76b1: $ea $9a $17
    ld l, l                                       ; $76b4: $6d
    and c                                         ; $76b5: $a1
    pop de                                        ; $76b6: $d1
    ld [hl], b                                    ; $76b7: $70
    rst $20                                       ; $76b8: $e7
    ld [hl], l                                    ; $76b9: $75
    ld c, d                                       ; $76ba: $4a
    ld h, d                                       ; $76bb: $62
    ld a, b                                       ; $76bc: $78
    ld e, [hl]                                    ; $76bd: $5e
    db $ed                                        ; $76be: $ed
    cp $1d                                        ; $76bf: $fe $1d
    and h                                         ; $76c1: $a4
    db $ec                                        ; $76c2: $ec
    ld c, e                                       ; $76c3: $4b
    ld c, c                                       ; $76c4: $49
    scf                                           ; $76c5: $37
    ld e, [hl]                                    ; $76c6: $5e
    sub a                                         ; $76c7: $97
    ld b, e                                       ; $76c8: $43
    db $ec                                        ; $76c9: $ec
    xor a                                         ; $76ca: $af
    rst $28                                       ; $76cb: $ef
    adc d                                         ; $76cc: $8a
    sub $0b                                       ; $76cd: $d6 $0b
    rst $10                                       ; $76cf: $d7
    and h                                         ; $76d0: $a4
    and [hl]                                      ; $76d1: $a6
    ld [hl], a                                    ; $76d2: $77
    ld b, a                                       ; $76d3: $47
    ld hl, $bd1f                                  ; $76d4: $21 $1f $bd
    rst $38                                       ; $76d7: $ff
    ld l, h                                       ; $76d8: $6c
    dec b                                         ; $76d9: $05
    db $10                                        ; $76da: $10
    ld e, $43                                     ; $76db: $1e $43
    rst $28                                       ; $76dd: $ef
    sub h                                         ; $76de: $94
    ld d, d                                       ; $76df: $52
    ld e, h                                       ; $76e0: $5c
    ld e, a                                       ; $76e1: $5f
    rlca                                          ; $76e2: $07
    ld a, a                                       ; $76e3: $7f
    add c                                         ; $76e4: $81
    ld d, [hl]                                    ; $76e5: $56
    nop                                           ; $76e6: $00
    pop hl                                        ; $76e7: $e1
    ld sp, $4ef4                                  ; $76e8: $31 $f4 $4e
    add hl, hl                                    ; $76eb: $29
    push bc                                       ; $76ec: $c5
    push af                                       ; $76ed: $f5
    dec b                                         ; $76ee: $05
    rlca                                          ; $76ef: $07
    ld a, a                                       ; $76f0: $7f
    add c                                         ; $76f1: $81
    ld d, [hl]                                    ; $76f2: $56
    nop                                           ; $76f3: $00
    pop hl                                        ; $76f4: $e1
    push de                                       ; $76f5: $d5
    ld l, [hl]                                    ; $76f6: $6e
    ld h, [hl]                                    ; $76f7: $66
    rst $10                                       ; $76f8: $d7
    rla                                           ; $76f9: $17
    rla                                           ; $76fa: $17
    ld e, e                                       ; $76fb: $5b
    xor d                                         ; $76fc: $aa
    ld a, [$fd8d]                                 ; $76fd: $fa $8d $fd
    adc $2f                                       ; $7700: $ce $2f
    rlca                                          ; $7702: $07
    ld a, a                                       ; $7703: $7f
    add c                                         ; $7704: $81
    xor d                                         ; $7705: $aa
    ld b, $cf                                     ; $7706: $06 $cf
    and e                                         ; $7708: $a3
    dec bc                                        ; $7709: $0b
    or b                                          ; $770a: $b0
    ld sp, hl                                     ; $770b: $f9
    dec b                                         ; $770c: $05
    sub a                                         ; $770d: $97
    inc a                                         ; $770e: $3c
    adc a                                         ; $770f: $8f
    ld l, $c0                                     ; $7710: $2e $c0
    and $17                                       ; $7712: $e6 $17
    rst $10                                       ; $7714: $d7
    ld [hl+], a                                   ; $7715: $22
    ld d, e                                       ; $7716: $53
    sbc a                                         ; $7717: $9f
    rla                                           ; $7718: $17
    rst $20                                       ; $7719: $e7
    ld b, l                                       ; $771a: $45
    sub c                                         ; $771b: $91

jr_063_771c:
    ld h, $41                                     ; $771c: $26 $41
    ld c, d                                       ; $771e: $4a
    adc l                                         ; $771f: $8d
    ld b, d                                       ; $7720: $42
    ld [hl], $be                                  ; $7721: $36 $be
    and b                                         ; $7723: $a0
    ld a, e                                       ; $7724: $7b
    push af                                       ; $7725: $f5
    dec bc                                        ; $7726: $0b
    db $ed                                        ; $7727: $ed
    adc $00                                       ; $7728: $ce $00
    ld d, l                                       ; $772a: $55
    xor l                                         ; $772b: $ad
    or d                                          ; $772c: $b2
    ld h, $95                                     ; $772d: $26 $95
    ld e, a                                       ; $772f: $5f
    sub a                                         ; $7730: $97
    add [hl]                                      ; $7731: $86
    and a                                         ; $7732: $a7
    push de                                       ; $7733: $d5
    call Call_063_428b                            ; $7734: $cd $8b $42
    ld [hl], d                                    ; $7737: $72
    ld l, d                                       ; $7738: $6a

Jump_063_7739:
    ld a, d                                       ; $7739: $7a
    ld [hl], a                                    ; $773a: $77
    xor a                                         ; $773b: $af
    ld a, [hl]                                    ; $773c: $7e
    ld bc, $8697                                  ; $773d: $01 $97 $86
    ld h, h                                       ; $7740: $64
    adc e                                         ; $7741: $8b
    rst $10                                       ; $7742: $d7
    ld c, b                                       ; $7743: $48
    ld c, l                                       ; $7744: $4d
    add hl, hl                                    ; $7745: $29
    ld b, [hl]                                    ; $7746: $46
    rst $08                                       ; $7747: $cf
    ld [hl-], a                                   ; $7748: $32
    add [hl]                                      ; $7749: $86
    ld e, $51                                     ; $774a: $1e $51
    ld a, [hl-]                                   ; $774c: $3a
    ld b, d                                       ; $774d: $42
    sbc c                                         ; $774e: $99
    dec sp                                        ; $774f: $3b
    xor b                                         ; $7750: $a8
    ld a, [bc]                                    ; $7751: $0a
    xor c                                         ; $7752: $a9
    db $fd                                        ; $7753: $fd
    dec b                                         ; $7754: $05
    sub a                                         ; $7755: $97
    add [hl]                                      ; $7756: $86
    ld h, h                                       ; $7757: $64
    adc e                                         ; $7758: $8b
    ld d, a                                       ; $7759: $57
    inc l                                         ; $775a: $2c
    pop af                                        ; $775b: $f1

Jump_063_775c:
    rla                                           ; $775c: $17
    db $e4                                        ; $775d: $e4

jr_063_775e:
    ld e, c                                       ; $775e: $59
    sub $a1                                       ; $775f: $d6 $a1
    ld [hl], a                                    ; $7761: $77
    xor a                                         ; $7762: $af
    ld a, $7a                                     ; $7763: $3e $7a
    rst $30                                       ; $7765: $f7

jr_063_7766:
    ld a, [hl]                                    ; $7766: $7e
    inc [hl]                                      ; $7767: $34
    inc b                                         ; $7768: $04
    pop af                                        ; $7769: $f1
    xor [hl]                                      ; $776a: $ae
    ld c, c                                       ; $776b: $49
    ld c, l                                       ; $776c: $4d
    rst $28                                       ; $776d: $ef
    adc [hl]                                      ; $776e: $8e
    ld b, d                                       ; $776f: $42
    ld a, $7a                                     ; $7770: $3e $7a
    rst $38                                       ; $7772: $ff

jr_063_7773:
    reti                                          ; $7773: $d9


    ld a, [bc]                                    ; $7774: $0a
    jr nz, jr_063_7773                            ; $7775: $20 $fc

    ld [bc], a                                    ; $7777: $02
    sub a                                         ; $7778: $97
    add [hl]                                      ; $7779: $86
    ld h, h                                       ; $777a: $64
    adc e                                         ; $777b: $8b
    rla                                           ; $777c: $17
    rst $38                                       ; $777d: $ff
    inc e                                         ; $777e: $1c
    jr z, jr_063_7766                             ; $777f: $28 $e5

    ld sp, $49f4                                  ; $7781: $31 $f4 $49
    jr z, jr_063_771c                             ; $7784: $28 $96

    adc c                                         ; $7786: $89
    add [hl]                                      ; $7787: $86
    reti                                          ; $7788: $d9


    ld b, e                                       ; $7789: $43
    adc e                                         ; $778a: $8b
    ld a, b                                       ; $778b: $78
    push hl                                       ; $778c: $e5
    ld c, e                                       ; $778d: $4b
    cp c                                          ; $778e: $b9
    rst $10                                       ; $778f: $d7
    and [hl]                                      ; $7790: $a6
    adc a                                         ; $7791: $8f
    db $fc                                        ; $7792: $fc
    cp c                                          ; $7793: $b9
    jr nz, jr_063_775e                            ; $7794: $20 $c8

    add e                                         ; $7796: $83
    dec a                                         ; $7797: $3d
    ccf                                           ; $7798: $3f
    or [hl]                                       ; $7799: $b6
    ret nc                                        ; $779a: $d0

    add [hl]                                      ; $779b: $86
    ld a, [$6a22]                                 ; $779c: $fa $22 $6a
    ld [hl], a                                    ; $779f: $77
    ld c, $a1                                     ; $77a0: $0e $a1
    xor h                                         ; $77a2: $ac
    add $f0                                       ; $77a3: $c6 $f0
    inc a                                         ; $77a5: $3c
    xor $0b                                       ; $77a6: $ee $0b
    ld h, l                                       ; $77a8: $65
    dec [hl]                                      ; $77a9: $35
    cp $e5                                        ; $77aa: $fe $e5
    ld e, [hl]                                    ; $77ac: $5e
    sbc e                                         ; $77ad: $9b
    ld a, $ce                                     ; $77ae: $3e $ce
    sub b                                         ; $77b0: $90
    ei                                            ; $77b1: $fb
    inc a                                         ; $77b2: $3c
    call nc, $fe47                                ; $77b3: $d4 $47 $fe
    call c, $9503                                 ; $77b6: $dc $03 $95
    call Call_063_5093                            ; $77b9: $cd $93 $50
    cp d                                          ; $77bc: $ba
    ld [hl], a                                    ; $77bd: $77
    ld c, l                                       ; $77be: $4d
    ld l, d                                       ; $77bf: $6a
    ld a, d                                       ; $77c0: $7a
    ld [hl], a                                    ; $77c1: $77
    inc d                                         ; $77c2: $14
    ld a, [c]                                     ; $77c3: $f2
    pop de                                        ; $77c4: $d1
    ei                                            ; $77c5: $fb
    rst $08                                       ; $77c6: $cf
    ld d, [hl]                                    ; $77c7: $56
    nop                                           ; $77c8: $00
    pop hl                                        ; $77c9: $e1
    rla                                           ; $77ca: $17
    sub a                                         ; $77cb: $97
    add [hl]                                      ; $77cc: $86
    ld h, h                                       ; $77cd: $64
    adc e                                         ; $77ce: $8b
    ld d, a                                       ; $77cf: $57
    ccf                                           ; $77d0: $3f
    or e                                          ; $77d1: $b3
    rla                                           ; $77d2: $17
    db $fd                                        ; $77d3: $fd
    db $e4                                        ; $77d4: $e4
    pop bc                                        ; $77d5: $c1
    db $10                                        ; $77d6: $10
    call nz, $26bb                                ; $77d7: $c4 $bb $26
    dec [hl]                                      ; $77da: $35
    cp l                                          ; $77db: $bd
    dec sp                                        ; $77dc: $3b
    ld a, [bc]                                    ; $77dd: $0a
    ld sp, hl                                     ; $77de: $f9
    add sp, -$03                                  ; $77df: $e8 $fd
    ld h, a                                       ; $77e1: $67
    dec hl                                        ; $77e2: $2b
    add b                                         ; $77e3: $80
    ldh a, [$bd]                                  ; $77e4: $f0 $bd
    ld [hl], $7d                                  ; $77e6: $36 $7d
    ld de, $3bb5                                  ; $77e8: $11 $b5 $3b
    rla                                           ; $77eb: $17
    ld a, l                                       ; $77ec: $7d
    push bc                                       ; $77ed: $c5
    ld d, b                                       ; $77ee: $50
    dec d                                         ; $77ef: $15
    ld l, l                                       ; $77f0: $6d
    sbc a                                         ; $77f1: $9f
    add a                                         ; $77f2: $87
    ld a, [$7748]                                 ; $77f3: $fa $48 $77
    adc a                                         ; $77f6: $8f
    ld bc, $8b2d                                  ; $77f7: $01 $2d $8b
    sbc d                                         ; $77fa: $9a
    cp c                                          ; $77fb: $b9
    xor b                                         ; $77fc: $a8
    dec sp                                        ; $77fd: $3b
    cp l                                          ; $77fe: $bd
    ld d, b                                       ; $77ff: $50
    ld d, $75                                     ; $7800: $16 $75
    and a                                         ; $7802: $a7
    ld [hl], a                                    ; $7803: $77
    ld c, l                                       ; $7804: $4d
    ld l, d                                       ; $7805: $6a
    ld a, d                                       ; $7806: $7a
    ld [hl], a                                    ; $7807: $77
    inc d                                         ; $7808: $14
    ld a, [c]                                     ; $7809: $f2
    pop de                                        ; $780a: $d1
    ei                                            ; $780b: $fb
    rst $08                                       ; $780c: $cf
    ld d, [hl]                                    ; $780d: $56
    nop                                           ; $780e: $00
    pop hl                                        ; $780f: $e1
    ei                                            ; $7810: $fb
    dec b                                         ; $7811: $05
    sub a                                         ; $7812: $97
    add [hl]                                      ; $7813: $86
    ld h, h                                       ; $7814: $64
    adc e                                         ; $7815: $8b
    ld d, a                                       ; $7816: $57
    push de                                       ; $7817: $d5
    ld l, a                                       ; $7818: $6f
    jr c, jr_063_7882                             ; $7819: $38 $67

    sbc [hl]                                      ; $781b: $9e
    ld e, $9b                                     ; $781c: $1e $9b
    sbc [hl]                                      ; $781e: $9e
    ei                                            ; $781f: $fb
    pop de                                        ; $7820: $d1
    and d                                         ; $7821: $a2
    rst $18                                       ; $7822: $df
    pop de                                        ; $7823: $d1
    add d                                         ; $7824: $82
    ld e, [hl]                                    ; $7825: $5e
    ld a, l                                       ; $7826: $7d
    ld a, [hl]                                    ; $7827: $7e
    dec h                                         ; $7828: $25
    sbc l                                         ; $7829: $9d
    ld e, $3a                                     ; $782a: $1e $3a
    ld b, a                                       ; $782c: $47
    cp $d2                                        ; $782d: $fe $d2
    sbc l                                         ; $782f: $9d
    inc de                                        ; $7830: $13
    db $e3                                        ; $7831: $e3
    ld b, d                                       ; $7832: $42
    db $ec                                        ; $7833: $ec
    sbc h                                         ; $7834: $9c
    ld h, l                                       ; $7835: $65
    ld c, a                                       ; $7836: $4f
    ret nz                                        ; $7837: $c0

    jp z, $d05f                                   ; $7838: $ca $5f $d0

    ld sp, hl                                     ; $783b: $f9
    ld [bc], a                                    ; $783c: $02
    sub a                                         ; $783d: $97
    add [hl]                                      ; $783e: $86
    ld h, h                                       ; $783f: $64
    adc e                                         ; $7840: $8b
    ld d, a                                       ; $7841: $57
    push de                                       ; $7842: $d5
    ld l, a                                       ; $7843: $6f
    jr c, jr_063_78ad                             ; $7844: $38 $67

    ld e, [hl]                                    ; $7846: $5e
    pop de                                        ; $7847: $d1
    ld [hl], h                                    ; $7848: $74
    or h                                          ; $7849: $b4
    ldh a, [$ba]                                  ; $784a: $f0 $ba
    ld b, [hl]                                    ; $784c: $46
    ld d, [hl]                                    ; $784d: $56
    jp $18b3                                      ; $784e: $c3 $b3 $18


    ld a, [$4aaa]                                 ; $7851: $fa $aa $4a
    jp z, $78f3                                   ; $7854: $ca $f3 $78

    sub [hl]                                      ; $7857: $96
    dec a                                         ; $7858: $3d
    ld bc, $7f2b                                  ; $7859: $01 $2b $7f

Call_063_785c:
jr_063_785c:
    ld b, c                                       ; $785c: $41
    rst $20                                       ; $785d: $e7
    ld h, d                                       ; $785e: $62
    adc d                                         ; $785f: $8a
    cp d                                          ; $7860: $ba
    ld e, a                                       ; $7861: $5f
    sub a                                         ; $7862: $97
    add [hl]                                      ; $7863: $86
    ld h, h                                       ; $7864: $64
    adc e                                         ; $7865: $8b
    ld d, a                                       ; $7866: $57
    push de                                       ; $7867: $d5
    ld l, a                                       ; $7868: $6f
    jr c, jr_063_78d2                             ; $7869: $38 $67

    ld e, [hl]                                    ; $786b: $5e
    pop de                                        ; $786c: $d1
    ld [hl], h                                    ; $786d: $74
    or h                                          ; $786e: $b4
    ldh a, [$ba]                                  ; $786f: $f0 $ba
    ld b, [hl]                                    ; $7871: $46
    add [hl]                                      ; $7872: $86
    adc $11                                       ; $7873: $ce $11
    add l                                         ; $7875: $85
    ld d, h                                       ; $7876: $54
    db $dd                                        ; $7877: $dd
    cp c                                          ; $7878: $b9
    ldh a, [$a8]                                  ; $7879: $f0 $a8
    inc b                                         ; $787b: $04
    add hl, hl                                    ; $787c: $29
    or e                                          ; $787d: $b3
    inc l                                         ; $787e: $2c
    and d                                         ; $787f: $a2
    ld e, e                                       ; $7880: $5b
    ret nc                                        ; $7881: $d0

jr_063_7882:
    ld [hl], l                                    ; $7882: $75
    ld h, h                                       ; $7883: $64
    adc b                                         ; $7884: $88
    adc l                                         ; $7885: $8d

Call_063_7886:
    dec bc                                        ; $7886: $0b
    ld h, l                                       ; $7887: $65
    ld [$f395], sp                                ; $7888: $08 $95 $f3
    sub e                                         ; $788b: $93
    ld c, [hl]                                    ; $788c: $4e
    rst $20                                       ; $788d: $e7
    ld [hl+], a                                   ; $788e: $22
    cp d                                          ; $788f: $ba
    dec b                                         ; $7890: $05
    dec l                                         ; $7891: $2d
    rst $30                                       ; $7892: $f7
    dec bc                                        ; $7893: $0b
    ld l, l                                       ; $7894: $6d
    ld h, [hl]                                    ; $7895: $66
    or $54                                        ; $7896: $f6 $54
    ld c, b                                       ; $7898: $48
    ld e, [hl]                                    ; $7899: $5e
    ld sp, hl                                     ; $789a: $f9
    pop af                                        ; $789b: $f1
    db $10                                        ; $789c: $10
    jp z, $abcc                                   ; $789d: $ca $cc $ab

    xor h                                         ; $78a0: $ac
    ld d, c                                       ; $78a1: $51
    jp z, Jump_000_1dab                           ; $78a2: $ca $ab $1d

    sub h                                         ; $78a5: $94
    or $17                                        ; $78a6: $f6 $17
    sub a                                         ; $78a8: $97
    add [hl]                                      ; $78a9: $86
    ld h, h                                       ; $78aa: $64
    adc e                                         ; $78ab: $8b
    rla                                           ; $78ac: $17

jr_063_78ad:
    ld b, e                                       ; $78ad: $43
    rra                                           ; $78ae: $1f
    or l                                          ; $78af: $b5
    ld a, b                                       ; $78b0: $78
    add sp, $39                                   ; $78b1: $e8 $39
    and e                                         ; $78b3: $a3
    sbc a                                         ; $78b4: $9f
    jr nz, jr_063_785c                            ; $78b5: $20 $a5

    or [hl]                                       ; $78b7: $b6
    ld [bc], a                                    ; $78b8: $02
    ld [$f50f], sp                                ; $78b9: $08 $0f $f5
    push bc                                       ; $78bc: $c5
    ret nc                                        ; $78bd: $d0

    rla                                           ; $78be: $17
    dec [hl]                                      ; $78bf: $35
    ld l, c                                       ; $78c0: $69
    inc hl                                        ; $78c1: $23
    ld h, e                                       ; $78c2: $63
    xor b                                         ; $78c3: $a8
    ld b, e                                       ; $78c4: $43
    ld a, l                                       ; $78c5: $7d
    ld sp, $3a08                                  ; $78c6: $31 $08 $3a
    add a                                         ; $78c9: $87
    ld d, $f1                                     ; $78ca: $16 $f1
    ld d, h                                       ; $78cc: $54
    sub b                                         ; $78cd: $90
    jr z, @-$7b                                   ; $78ce: $28 $83

    ldh a, [$67]                                  ; $78d0: $f0 $67

jr_063_78d2:
    ld [$bf72], sp                                ; $78d2: $08 $72 $bf
    sub a                                         ; $78d5: $97

jr_063_78d6:
    add [hl]                                      ; $78d6: $86
    ld h, h                                       ; $78d7: $64
    adc e                                         ; $78d8: $8b
    rla                                           ; $78d9: $17
    ld e, d                                       ; $78da: $5a
    inc h                                         ; $78db: $24
    dec h                                         ; $78dc: $25
    halt                                          ; $78dd: $76
    ld l, $86                                     ; $78de: $2e $86
    ld d, h                                       ; $78e0: $54
    ld [bc], a                                    ; $78e1: $02
    ld d, d                                       ; $78e2: $52
    inc l                                         ; $78e3: $2c
    ei                                            ; $78e4: $fb
    pop de                                        ; $78e5: $d1
    call z, Call_063_6323                         ; $78e6: $cc $23 $63
    add sp, -$36                                  ; $78e9: $e8 $ca
    cp h                                          ; $78eb: $bc
    ld a, [de]                                    ; $78ec: $1a
    sbc [hl]                                      ; $78ed: $9e
    sub c                                         ; $78ee: $91
    xor $95                                       ; $78ef: $ee $95
    ld d, a                                       ; $78f1: $57
    jr nz, jr_063_78d6                            ; $78f2: $20 $e2

    cpl                                           ; $78f4: $2f
    dec h                                         ; $78f5: $25
    db $dd                                        ; $78f6: $dd
    sbc b                                         ; $78f7: $98
    ld l, $e8                                     ; $78f8: $2e $e8
    inc e                                         ; $78fa: $1c
    jp hl                                         ; $78fb: $e9


    xor $a1                                       ; $78fc: $ee $a1
    ld b, l                                       ; $78fe: $45
    inc a                                         ; $78ff: $3c
    dec d                                         ; $7900: $15
    inc h                                         ; $7901: $24
    jp z, $fc20                                   ; $7902: $ca $20 $fc

    add hl, de                                    ; $7905: $19
    add d                                         ; $7906: $82
    call c, $972f                                 ; $7907: $dc $2f $97
    add [hl]                                      ; $790a: $86
    ld h, h                                       ; $790b: $64
    adc e                                         ; $790c: $8b
    rla                                           ; $790d: $17
    ld e, d                                       ; $790e: $5a
    inc h                                         ; $790f: $24
    dec h                                         ; $7910: $25
    halt                                          ; $7911: $76
    adc $42                                       ; $7912: $ce $42
    add $ce                                       ; $7914: $c6 $ce
    ld b, l                                       ; $7916: $45
    ld hl, $5f1b                                  ; $7917: $21 $1b $5f
    ret nc                                        ; $791a: $d0

    cp l                                          ; $791b: $bd
    ld a, [hl-]                                   ; $791c: $3a
    ld d, a                                       ; $791d: $57
    jp $d433                                      ; $791e: $c3 $33 $d4


    ld b, a                                       ; $7921: $47
    cp $5c                                        ; $7922: $fe $5c
    xor e                                         ; $7924: $ab
    adc c                                         ; $7925: $89
    ld sp, hl                                     ; $7926: $f9
    adc e                                         ; $7927: $8b
    ld a, c                                       ; $7928: $79
    ld [$7ee5], sp                                ; $7929: $08 $e5 $7e
    ld bc, $8697                                  ; $792c: $01 $97 $86
    ld h, h                                       ; $792f: $64
    adc e                                         ; $7930: $8b
    ld b, a                                       ; $7931: $47
    cp $5c                                        ; $7932: $fe $5c
    and c                                         ; $7934: $a1
    add a                                         ; $7935: $87
    db $e4                                        ; $7936: $e4
    ld hl, $d594                                  ; $7937: $21 $94 $d5
    sbc b                                         ; $793a: $98
    sub d                                         ; $793b: $92
    ld c, [hl]                                    ; $793c: $4e
    rst $28                                       ; $793d: $ef
    di                                            ; $793e: $f3
    cp [hl]                                       ; $793f: $be
    sub h                                         ; $7940: $94
    add h                                         ; $7941: $84
    add [hl]                                      ; $7942: $86
    rst $28                                       ; $7943: $ef
    rla                                           ; $7944: $17
    sub a                                         ; $7945: $97
    add [hl]                                      ; $7946: $86
    ld h, h                                       ; $7947: $64
    adc e                                         ; $7948: $8b
    rla                                           ; $7949: $17
    ld b, e                                       ; $794a: $43
    rst $18                                       ; $794b: $df
    adc a                                         ; $794c: $8f
    cp d                                          ; $794d: $ba
    pop de                                        ; $794e: $d1
    sub e                                         ; $794f: $93
    ld d, b                                       ; $7950: $50
    call z, $d1fb                                 ; $7951: $cc $fb $d1
    xor d                                         ; $7954: $aa
    ld a, [$5968]                                 ; $7955: $fa $68 $59
    sub h                                         ; $7958: $94
    ld a, a                                       ; $7959: $7f
    ld h, [hl]                                    ; $795a: $66
    ld [hl-], a                                   ; $795b: $32
    halt                                          ; $795c: $76
    ld a, [c]                                     ; $795d: $f2
    ld [hl+], a                                   ; $795e: $22
    ld c, l                                       ; $795f: $4d
    add l                                         ; $7960: $85
    xor d                                         ; $7961: $aa
    and $de                                       ; $7962: $e6 $de
    sbc l                                         ; $7964: $9d
    ld a, e                                       ; $7965: $7b
    ld a, [hl]                                    ; $7966: $7e
    add c                                         ; $7967: $81
    xor d                                         ; $7968: $aa
    or $a5                                        ; $7969: $f6 $a5
    and h                                         ; $796b: $a4
    dec de                                        ; $796c: $1b
    rst $30                                       ; $796d: $f7
    dec bc                                        ; $796e: $0b
    ld l, l                                       ; $796f: $6d
    ld a, [$6a22]                                 ; $7970: $fa $22 $6a
    ld [hl], a                                    ; $7973: $77
    ld c, $a1                                     ; $7974: $0e $a1
    xor h                                         ; $7976: $ac
    ld [hl-], a                                   ; $7977: $32
    dec h                                         ; $7978: $25
    sub l                                         ; $7979: $95
    db $d3                                        ; $797a: $d3
    rst $30                                       ; $797b: $f7
    jp c, Jump_000_3df4                           ; $797c: $da $f4 $3d

    ld d, $e7                                     ; $797f: $16 $e7
    ld a, $0f                                     ; $7981: $3e $0f
    ld b, c                                       ; $7983: $41
    halt                                          ; $7984: $76
    ld d, c                                       ; $7985: $51
    add a                                         ; $7986: $87
    sub [hl]                                      ; $7987: $96
    dec b                                         ; $7988: $05
    jp $ae1a                                      ; $7989: $c3 $1a $ae


    ld sp, $8b25                                  ; $798c: $31 $25 $8b
    ld a, e                                       ; $798f: $7b
    push af                                       ; $7990: $f5
    sbc [hl]                                      ; $7991: $9e
    ld h, [hl]                                    ; $7992: $66
    ld d, l                                       ; $7993: $55
    sbc [hl]                                      ; $7994: $9e
    ld [hl], e                                    ; $7995: $73
    adc a                                         ; $7996: $8f
    db $d3                                        ; $7997: $d3
    ld [hl], e                                    ; $7998: $73
    inc d                                         ; $7999: $14
    ld e, c                                       ; $799a: $59
    ld [hl], c                                    ; $799b: $71
    and h                                         ; $799c: $a4
    ld [hl], a                                    ; $799d: $77
    sbc h                                         ; $799e: $9c
    add sp, -$09                                  ; $799f: $e8 $f7
    dec bc                                        ; $79a1: $0b
    sub a                                         ; $79a2: $97
    add [hl]                                      ; $79a3: $86
    ld h, h                                       ; $79a4: $64
    adc e                                         ; $79a5: $8b
    ld d, a                                       ; $79a6: $57
    push de                                       ; $79a7: $d5
    ld l, a                                       ; $79a8: $6f
    or b                                          ; $79a9: $b0
    rst $00                                       ; $79aa: $c7
    ld h, c                                       ; $79ab: $61
    pop de                                        ; $79ac: $d1
    rla                                           ; $79ad: $17
    ld c, $4f                                     ; $79ae: $0e $4f
    add a                                         ; $79b0: $87
    ld [hl+], a                                   ; $79b1: $22
    ld d, $f4                                     ; $79b2: $16 $f4
    ld d, h                                       ; $79b4: $54
    ld l, b                                       ; $79b5: $68
    add c                                         ; $79b6: $81
    ld [hl], e                                    ; $79b7: $73
    ccf                                           ; $79b8: $3f
    ld a, [de]                                    ; $79b9: $1a
    ld b, d                                       ; $79ba: $42
    pop de                                        ; $79bb: $d1
    cp [hl]                                       ; $79bc: $be
    ld [hl], $90                                  ; $79bd: $36 $90
    ld b, l                                       ; $79bf: $45
    ld [hl], h                                    ; $79c0: $74
    dec bc                                        ; $79c1: $0b
    ld a, d                                       ; $79c2: $7a
    ld sp, $72a4                                  ; $79c3: $31 $a4 $72
    ld c, $a1                                     ; $79c6: $0e $a1
    ld [hl], d                                    ; $79c8: $72
    ld a, [hl]                                    ; $79c9: $7e
    jp nc, $de69                                  ; $79ca: $d2 $69 $de

    adc a                                         ; $79cd: $8f
    add [hl]                                      ; $79ce: $86
    ld a, [hl]                                    ; $79cf: $7e
    xor $17                                       ; $79d0: $ee $17
    sub a                                         ; $79d2: $97
    add [hl]                                      ; $79d3: $86
    ld h, h                                       ; $79d4: $64
    adc e                                         ; $79d5: $8b
    ld d, a                                       ; $79d6: $57
    add sp, $21                                   ; $79d7: $e8 $21
    pop de                                        ; $79d9: $d1
    ld b, e                                       ; $79da: $43
    jr z, jr_063_7a40                             ; $79db: $28 $63

    add sp, $55                                   ; $79dd: $e8 $55
    inc hl                                        ; $79df: $23
    xor $1f                                       ; $79e0: $ee $1f
    dec l                                         ; $79e2: $2d
    add sp, -$7f                                  ; $79e3: $e8 $81
    or b                                          ; $79e5: $b0
    ld sp, hl                                     ; $79e6: $f9
    sbc $41                                       ; $79e7: $de $41
    rl b                                          ; $79e9: $cb $10
    ld h, h                                       ; $79eb: $64
    ld de, $82dd                                  ; $79ec: $11 $dd $82
    ld e, [hl]                                    ; $79ef: $5e
    ld [hl], l                                    ; $79f0: $75
    adc $b2                                       ; $79f1: $ce $b2
    ld a, [$dde8]                                 ; $79f3: $fa $e8 $dd
    xor e                                         ; $79f6: $ab
    ld c, h                                       ; $79f7: $4c
    ld c, c                                       ; $79f8: $49
    push hl                                       ; $79f9: $e5
    db $f4                                        ; $79fa: $f4
    ld [hl], h                                    ; $79fb: $74
    cp h                                          ; $79fc: $bc
    ld e, a                                       ; $79fd: $5f
    sub a                                         ; $79fe: $97
    add [hl]                                      ; $79ff: $86
    ld h, h                                       ; $7a00: $64
    adc e                                         ; $7a01: $8b
    rla                                           ; $7a02: $17
    add c                                         ; $7a03: $81
    ld a, [de]                                    ; $7a04: $1a
    add d                                         ; $7a05: $82
    ld a, b                                       ; $7a06: $78
    ld c, a                                       ; $7a07: $4f

Jump_063_7a08:
    ret nz                                        ; $7a08: $c0

    jp z, $d05f                                   ; $7a09: $ca $5f $d0

    jp hl                                         ; $7a0c: $e9


    ld sp, $7df4                                  ; $7a0d: $31 $f4 $7d
    ld e, [hl]                                    ; $7a10: $5e
    dec c                                         ; $7a11: $0d
    or c                                          ; $7a12: $b1
    or l                                          ; $7a13: $b5
    xor a                                         ; $7a14: $af
    call Call_063_5f53                            ; $7a15: $cd $53 $5f

Jump_063_7a18:
    ld d, [hl]                                    ; $7a18: $56
    db $dd                                        ; $7a19: $dd
    db $e3                                        ; $7a1a: $e3
    adc b                                         ; $7a1b: $88
    jp c, Jump_000_3b8b                           ; $7a1c: $da $8b $3b

    sub h                                         ; $7a1f: $94
    add c                                         ; $7a20: $81
    ld d, d                                       ; $7a21: $52
    sbc $97                                       ; $7a22: $de $97
    sub d                                         ; $7a24: $92
    ret nc                                        ; $7a25: $d0

    ldh a, [rNR10]                                ; $7a26: $f0 $10
    ld a, [bc]                                    ; $7a28: $0a
    ld l, l                                       ; $7a29: $6d
    adc a                                         ; $7a2a: $8f
    and l                                         ; $7a2b: $a5
    ld c, $bd                                     ; $7a2c: $0e $bd
    jp c, Jump_000_27f5                           ; $7a2e: $da $f5 $27

    sbc l                                         ; $7a31: $9d
    rst $30                                       ; $7a32: $f7
    dec bc                                        ; $7a33: $0b
    sub a                                         ; $7a34: $97
    add [hl]                                      ; $7a35: $86
    ld h, h                                       ; $7a36: $64
    adc e                                         ; $7a37: $8b
    rla                                           ; $7a38: $17
    add l                                         ; $7a39: $85
    adc h                                         ; $7a3a: $8c
    cp a                                          ; $7a3b: $bf
    ld h, b                                       ; $7a3c: $60
    scf                                           ; $7a3d: $37
    ld a, d                                       ; $7a3e: $7a
    ld [de], a                                    ; $7a3f: $12

jr_063_7a40:
    adc d                                         ; $7a40: $8a
    ld a, c                                       ; $7a41: $79
    ccf                                           ; $7a42: $3f
    ld a, [de]                                    ; $7a43: $1a
    ld [bc], a                                    ; $7a44: $02
    ld c, a                                       ; $7a45: $4f
    rst $00                                       ; $7a46: $c7
    jp z, $1c9a                                   ; $7a47: $ca $9a $1c

    ld b, e                                       ; $7a4a: $43
    rst $18                                       ; $7a4b: $df
    ld a, l                                       ; $7a4c: $7d
    rst $18                                       ; $7a4d: $df
    or e                                          ; $7a4e: $b3
    xor h                                         ; $7a4f: $ac
    ld [hl], d                                    ; $7a50: $72
    ld [$2358], a                                 ; $7a51: $ea $58 $23
    cp d                                          ; $7a54: $ba
    di                                            ; $7a55: $f3
    inc e                                         ; $7a56: $1c
    db $ed                                        ; $7a57: $ed
    cpl                                           ; $7a58: $2f
    sub a                                         ; $7a59: $97
    add [hl]                                      ; $7a5a: $86
    ld h, h                                       ; $7a5b: $64
    adc e                                         ; $7a5c: $8b
    ld b, a                                       ; $7a5d: $47
    cp $1c                                        ; $7a5e: $fe $1c
    or l                                          ; $7a60: $b5
    sbc b                                         ; $7a61: $98
    ld d, a                                       ; $7a62: $57
    push de                                       ; $7a63: $d5
    ld b, a                                       ; $7a64: $47
    rst $00                                       ; $7a65: $c7
    sub b                                         ; $7a66: $90
    ld c, d                                       ; $7a67: $4a
    ld b, b                                       ; $7a68: $40
    adc d                                         ; $7a69: $8a
    ld d, e                                       ; $7a6a: $53
    cp h                                          ; $7a6b: $bc
    jr z, @+$01                                   ; $7a6c: $28 $ff

    db $10                                        ; $7a6e: $10
    call nz, $b86b                                ; $7a6f: $c4 $6b $b8
    add $94                                       ; $7a72: $c6 $94
    inc l                                         ; $7a74: $2c
    xor $d5                                       ; $7a75: $ee $d5
    add hl, sp                                    ; $7a77: $39
    jr jr_063_7ad4                                ; $7a78: $18 $5a

    call nz, Call_063_4153                        ; $7a7a: $c4 $53 $41
    and d                                         ; $7a7d: $a2
    inc c                                         ; $7a7e: $0c
    jp nz, $219f                                  ; $7a7f: $c2 $9f $21

    adc b                                         ; $7a82: $88
    or $17                                        ; $7a83: $f6 $17
    sub a                                         ; $7a85: $97
    add [hl]                                      ; $7a86: $86
    ld h, h                                       ; $7a87: $64
    adc e                                         ; $7a88: $8b
    ld b, a                                       ; $7a89: $47
    cp $5c                                        ; $7a8a: $fe $5c
    and c                                         ; $7a8c: $a1
    add a                                         ; $7a8d: $87
    db $e4                                        ; $7a8e: $e4
    ld hl, $c194                                  ; $7a8f: $21 $94 $c1
    di                                            ; $7a92: $f3
    add sp, -$4e                                  ; $7a93: $e8 $b2
    db $10                                        ; $7a95: $10
    dec sp                                        ; $7a96: $3b
    and e                                         ; $7a97: $a3
    sub b                                         ; $7a98: $90
    dec hl                                        ; $7a99: $2b
    db $10                                        ; $7a9a: $10
    pop af                                        ; $7a9b: $f1
    ld e, $cb                                     ; $7a9c: $1e $cb
    sub h                                         ; $7a9e: $94
    ld l, $83                                     ; $7a9f: $2e $83
    and c                                         ; $7aa1: $a1
    ld b, l                                       ; $7aa2: $45
    inc a                                         ; $7aa3: $3c
    dec d                                         ; $7aa4: $15
    inc h                                         ; $7aa5: $24
    jp z, $fc20                                   ; $7aa6: $ca $20 $fc

    add hl, de                                    ; $7aa9: $19

Jump_063_7aaa:
    add d                                         ; $7aaa: $82
    call c, $972f                                 ; $7aab: $dc $2f $97
    add [hl]                                      ; $7aae: $86
    ld h, h                                       ; $7aaf: $64
    adc e                                         ; $7ab0: $8b
    rst $10                                       ; $7ab1: $d7
    ld a, a                                       ; $7ab2: $7f
    db $ec                                        ; $7ab3: $ec
    sbc h                                         ; $7ab4: $9c
    ld h, l                                       ; $7ab5: $65
    ld d, c                                       ; $7ab6: $51
    ld l, d                                       ; $7ab7: $6a
    ld a, [bc]                                    ; $7ab8: $0a
    cp e                                          ; $7ab9: $bb
    ld b, e                                       ; $7aba: $43
    ld e, c                                       ; $7abb: $59
    rst $10                                       ; $7abc: $d7
    ldh [$d0], a                                  ; $7abd: $e0 $d0
    cp c                                          ; $7abf: $b9
    xor b                                         ; $7ac0: $a8
    sbc c                                         ; $7ac1: $99
    or e                                          ; $7ac2: $b3
    db $ec                                        ; $7ac3: $ec
    add hl, bc                                    ; $7ac4: $09
    ld e, b                                       ; $7ac5: $58
    ld sp, hl                                     ; $7ac6: $f9
    dec bc                                        ; $7ac7: $0b
    ld a, [hl-]                                   ; $7ac8: $3a
    rst $00                                       ; $7ac9: $c7
    ret nc                                        ; $7aca: $d0

    rst $30                                       ; $7acb: $f7
    ld a, c                                       ; $7acc: $79
    ld d, c                                       ; $7acd: $51
    rst $10                                       ; $7ace: $d7
    inc d                                         ; $7acf: $14
    or $fd                                        ; $7ad0: $f6 $fd
    ld [bc], a                                    ; $7ad2: $02

jr_063_7ad3:
    sub a                                         ; $7ad3: $97

jr_063_7ad4:
    add [hl]                                      ; $7ad4: $86
    ld h, h                                       ; $7ad5: $64
    adc e                                         ; $7ad6: $8b
    ld d, a                                       ; $7ad7: $57
    push de                                       ; $7ad8: $d5
    ld l, a                                       ; $7ad9: $6f
    jr c, jr_063_7ad3                             ; $7ada: $38 $f7

    add sp, $15                                   ; $7adc: $e8 $15
    call nc, $39d0                                ; $7ade: $d4 $d0 $39
    add h                                         ; $7ae1: $84
    jp z, Jump_063_49f9                           ; $7ae2: $ca $f9 $49

    and a                                         ; $7ae5: $a7
    ld [hl], e                                    ; $7ae6: $73
    ld c, a                                       ; $7ae7: $4f
    ret nz                                        ; $7ae8: $c0

    jp z, $d05f                                   ; $7ae9: $ca $5f $d0

    jp hl                                         ; $7aec: $e9


    push de                                       ; $7aed: $d5
    and $d0                                       ; $7aee: $e6 $d0
    xor e                                         ; $7af0: $ab
    xor l                                         ; $7af1: $ad
    inc b                                         ; $7af2: $04
    add hl, hl                                    ; $7af3: $29
    adc $59                                       ; $7af4: $ce $59
    add $7a                                       ; $7af6: $c6 $7a
    ld l, $c4                                     ; $7af8: $2e $c4
    adc $fb                                       ; $7afa: $ce $fb
    dec b                                         ; $7afc: $05
    sub a                                         ; $7afd: $97
    add [hl]                                      ; $7afe: $86
    ld h, h                                       ; $7aff: $64
    adc e                                         ; $7b00: $8b
    ld d, a                                       ; $7b01: $57
    push de                                       ; $7b02: $d5
    ld l, a                                       ; $7b03: $6f
    jr c, @-$27                                   ; $7b04: $38 $d7

    ld [hl], b                                    ; $7b06: $70
    add [hl]                                      ; $7b07: $86
    ld c, $c5                                     ; $7b08: $0e $c5
    add d                                         ; $7b0a: $82
    sbc $a3                                       ; $7b0b: $de $a3
    ld d, a                                       ; $7b0d: $57
    ld d, b                                       ; $7b0e: $50
    ld b, e                                       ; $7b0f: $43
    rst $20                                       ; $7b10: $e7
    and d                                         ; $7b11: $a2
    ld h, [hl]                                    ; $7b12: $66
    adc $b2                                       ; $7b13: $ce $b2
    adc b                                         ; $7b15: $88
    ld l, [hl]                                    ; $7b16: $6e
    ld b, c                                       ; $7b17: $41
    adc a                                         ; $7b18: $8f
    and c                                         ; $7b19: $a1
    rst $28                                       ; $7b1a: $ef
    di                                            ; $7b1b: $f3
    and d                                         ; $7b1c: $a2
    rst $18                                       ; $7b1d: $df
    pop de                                        ; $7b1e: $d1
    add e                                         ; $7b1f: $83
    ld d, l                                       ; $7b20: $55
    ld l, d                                       ; $7b21: $6a
    inc l                                         ; $7b22: $2c
    rst $30                                       ; $7b23: $f7
    dec bc                                        ; $7b24: $0b
    sub a                                         ; $7b25: $97
    add [hl]                                      ; $7b26: $86
    ld h, h                                       ; $7b27: $64
    adc e                                         ; $7b28: $8b
    ld d, a                                       ; $7b29: $57
    push de                                       ; $7b2a: $d5
    ld l, a                                       ; $7b2b: $6f
    or b                                          ; $7b2c: $b0
    rst $30                                       ; $7b2d: $f7
    db $fc                                        ; $7b2e: $fc
    ld [bc], a                                    ; $7b2f: $02
    ld d, l                                       ; $7b30: $55
    ld a, c                                       ; $7b31: $79
    adc l                                         ; $7b32: $8d
    ld e, $9e                                     ; $7b33: $1e $9e
    jp z, $ed4e                                   ; $7b35: $ca $4e $ed

    cp e                                          ; $7b38: $bb
    and d                                         ; $7b39: $a2
    inc c                                         ; $7b3a: $0c
    cp l                                          ; $7b3b: $bd
    jp z, $ca20                                   ; $7b3c: $ca $20 $ca

    xor c                                         ; $7b3f: $a9
    ld a, l                                       ; $7b40: $7d
    ld l, l                                       ; $7b41: $6d
    ld a, [$6a22]                                 ; $7b42: $fa $22 $6a
    ld [hl], a                                    ; $7b45: $77
    ld c, $a1                                     ; $7b46: $0e $a1
    ld c, h                                       ; $7b48: $4c
    rst $00                                       ; $7b49: $c7
    add a                                         ; $7b4a: $87
    sub d                                         ; $7b4b: $92
    jp z, $863c                                   ; $7b4c: $ca $3c $86

    sbc $fa                                       ; $7b4f: $de $fa
    sub l                                         ; $7b51: $95
    or [hl]                                       ; $7b52: $b6
    rst $00                                       ; $7b53: $c7
    ld [hl-], a                                   ; $7b54: $32
    inc b                                         ; $7b55: $04
    reti                                          ; $7b56: $d9


    inc de                                        ; $7b57: $13
    or b                                          ; $7b58: $b0
    ld a, [c]                                     ; $7b59: $f2
    rla                                           ; $7b5a: $17
    ld [hl], h                                    ; $7b5b: $74
    xor [hl]                                      ; $7b5c: $ae
    ld a, [hl-]                                   ; $7b5d: $3a
    ld d, a                                       ; $7b5e: $57
    dec [hl]                                      ; $7b5f: $35
    ld h, l                                       ; $7b60: $65
    ld a, [hl-]                                   ; $7b61: $3a
    sbc $2f                                       ; $7b62: $de $2f
    sub a                                         ; $7b64: $97
    add [hl]                                      ; $7b65: $86
    ld h, h                                       ; $7b66: $64
    adc e                                         ; $7b67: $8b
    rst $10                                       ; $7b68: $d7
    ccf                                           ; $7b69: $3f
    ld a, [hl-]                                   ; $7b6a: $3a
    rst $00                                       ; $7b6b: $c7
    ret nc                                        ; $7b6c: $d0

    rst $30                                       ; $7b6d: $f7
    ld a, c                                       ; $7b6e: $79
    db $e4                                        ; $7b6f: $e4
    adc a                                         ; $7b70: $8f
    cp l                                          ; $7b71: $bd
    ld b, d                                       ; $7b72: $42
    rrca                                          ; $7b73: $0f
    ret                                           ; $7b74: $c9


    ld b, e                                       ; $7b75: $43
    db $10                                        ; $7b76: $10
    rst $28                                       ; $7b77: $ef
    add hl, bc                                    ; $7b78: $09
    ld e, b                                       ; $7b79: $58
    ld sp, hl                                     ; $7b7a: $f9
    dec bc                                        ; $7b7b: $0b
    ld a, [hl-]                                   ; $7b7c: $3a
    cp l                                          ; $7b7d: $bd
    cp $a5                                        ; $7b7e: $fe $a5
    call nc, $3cf0                                ; $7b80: $d4 $f0 $3c
    ld c, [hl]                                    ; $7b83: $4e
    ld l, e                                       ; $7b84: $6b
    ld a, a                                       ; $7b85: $7f
    ld bc, $fa6d                                  ; $7b86: $01 $6d $fa
    ld a, [de]                                    ; $7b89: $1a
    adc [hl]                                      ; $7b8a: $8e
    add hl, hl                                    ; $7b8b: $29
    push bc                                       ; $7b8c: $c5
    add hl, sp                                    ; $7b8d: $39
    add h                                         ; $7b8e: $84
    or d                                          ; $7b8f: $b2
    rst $00                                       ; $7b90: $c7
    push bc                                       ; $7b91: $c5
    cp h                                          ; $7b92: $bc
    cp $a5                                        ; $7b93: $fe $a5
    call nc, $f0f0                                ; $7b95: $d4 $f0 $f0
    cp l                                          ; $7b98: $bd
    ld [hl], $f3                                  ; $7b99: $36 $f3
    sbc [hl]                                      ; $7b9b: $9e
    and $62                                       ; $7b9c: $e6 $62
    ld c, d                                       ; $7b9e: $4a
    ld a, d                                       ; $7b9f: $7a
    ld a, [hl+]                                   ; $7ba0: $2a
    inc h                                         ; $7ba1: $24
    ld e, e                                       ; $7ba2: $5b
    ld e, h                                       ; $7ba3: $5c
    ld d, a                                       ; $7ba4: $57
    sub l                                         ; $7ba5: $95
    and [hl]                                      ; $7ba6: $a6
    db $e3                                        ; $7ba7: $e3
    db $fd                                        ; $7ba8: $fd
    ld [bc], a                                    ; $7ba9: $02
    sub a                                         ; $7baa: $97
    add [hl]                                      ; $7bab: $86
    ld h, h                                       ; $7bac: $64
    adc e                                         ; $7bad: $8b
    ld d, a                                       ; $7bae: $57
    push de                                       ; $7baf: $d5
    ld l, a                                       ; $7bb0: $6f
    or b                                          ; $7bb1: $b0
    ld h, a                                       ; $7bb2: $67
    ld e, [hl]                                    ; $7bb3: $5e
    inc c                                         ; $7bb4: $0c
    add d                                         ; $7bb5: $82
    sub l                                         ; $7bb6: $95
    xor c                                         ; $7bb7: $a9
    ld c, b                                       ; $7bb8: $48
    dec de                                        ; $7bb9: $1b
    ld a, [hl-]                                   ; $7bba: $3a
    rst $10                                       ; $7bbb: $d7
    add sp, -$6c                                  ; $7bbc: $e8 $94
    ld [$659c], a                                 ; $7bbe: $ea $9c $65
    ld c, a                                       ; $7bc1: $4f
    ret nz                                        ; $7bc2: $c0

    jp z, $d05f                                   ; $7bc3: $ca $5f $d0

    cp c                                          ; $7bc6: $b9
    sbc b                                         ; $7bc7: $98
    and d                                         ; $7bc8: $a2
    xor $17                                       ; $7bc9: $ee $17
    sub a                                         ; $7bcb: $97
    add [hl]                                      ; $7bcc: $86
    ld h, h                                       ; $7bcd: $64
    adc e                                         ; $7bce: $8b
    rla                                           ; $7bcf: $17
    add l                                         ; $7bd0: $85
    adc h                                         ; $7bd1: $8c
    cp a                                          ; $7bd2: $bf
    ld h, b                                       ; $7bd3: $60
    scf                                           ; $7bd4: $37
    ld a, d                                       ; $7bd5: $7a
    sub [hl]                                      ; $7bd6: $96
    dec a                                         ; $7bd7: $3d
    ld bc, $7f2b                                  ; $7bd8: $01 $2b $7f
    ld b, c                                       ; $7bdb: $41
    rst $20                                       ; $7bdc: $e7
    jr @-$04                                      ; $7bdd: $18 $fa

    xor $fb                                       ; $7bdf: $ee $fb
    sbc [hl]                                      ; $7be1: $9e
    add h                                         ; $7be2: $84
    ld h, d                                       ; $7be3: $62
    sbc $17                                       ; $7be4: $de $17
    inc [hl]                                      ; $7be6: $34
    rst $18                                       ; $7be7: $df
    cpl                                           ; $7be8: $2f
    sub a                                         ; $7be9: $97
    add [hl]                                      ; $7bea: $86
    ld h, h                                       ; $7beb: $64
    adc e                                         ; $7bec: $8b
    rla                                           ; $7bed: $17
    add l                                         ; $7bee: $85
    call nz, $e8d0                                ; $7bef: $c4 $d0 $e8
    adc $21                                       ; $7bf2: $ce $21
    adc b                                         ; $7bf4: $88
    ld [hl], a                                    ; $7bf5: $77
    ld c, l                                       ; $7bf6: $4d
    ld l, d                                       ; $7bf7: $6a
    ld a, d                                       ; $7bf8: $7a
    ld [hl], a                                    ; $7bf9: $77
    inc d                                         ; $7bfa: $14
    ld a, [c]                                     ; $7bfb: $f2
    pop de                                        ; $7bfc: $d1
    ei                                            ; $7bfd: $fb
    rst $08                                       ; $7bfe: $cf
    ld d, [hl]                                    ; $7bff: $56
    nop                                           ; $7c00: $00
    pop hl                                        ; $7c01: $e1
    jp hl                                         ; $7c02: $e9


    add d                                         ; $7c03: $82
    adc $91                                       ; $7c04: $ce $91
    xor $1e                                       ; $7c06: $ee $1e
    ld e, d                                       ; $7c08: $5a
    call nz, Call_063_4153                        ; $7c09: $c4 $53 $41
    and d                                         ; $7c0c: $a2
    inc c                                         ; $7c0d: $0c
    jp nz, $219f                                  ; $7c0e: $c2 $9f $21

    ret z                                         ; $7c11: $c8

    db $fd                                        ; $7c12: $fd
    ld [bc], a                                    ; $7c13: $02
    sub a                                         ; $7c14: $97
    add [hl]                                      ; $7c15: $86
    ld h, h                                       ; $7c16: $64
    adc e                                         ; $7c17: $8b
    daa                                           ; $7c18: $27
    sub $39                                       ; $7c19: $d6 $39
    ld a, a                                       ; $7c1b: $7f
    add a                                         ; $7c1c: $87
    ld [$ce74], a                                 ; $7c1d: $ea $74 $ce
    ld b, d                                       ; $7c20: $42
    add $ce                                       ; $7c21: $c6 $ce
    dec d                                         ; $7c23: $15
    adc b                                         ; $7c24: $88
    ld a, b                                       ; $7c25: $78
    xor $dd                                       ; $7c26: $ee $dd
    cp c                                          ; $7c28: $b9
    xor d                                         ; $7c29: $aa

jr_063_7c2a:
    ld a, $ba                                     ; $7c2a: $3e $ba
    ld b, e                                       ; $7c2c: $43
    reti                                          ; $7c2d: $d9


    di                                            ; $7c2e: $f3
    dec bc                                        ; $7c2f: $0b
    xor h                                         ; $7c30: $ac
    add [hl]                                      ; $7c31: $86
    ld h, a                                       ; $7c32: $67
    ld [$c8cb], a                                 ; $7c33: $ea $cb $c8
    rra                                           ; $7c36: $1f
    ld a, e                                       ; $7c37: $7b
    jr nz, @+$1a                                  ; $7c38: $20 $18

    ld [hl], l                                    ; $7c3a: $75
    dec c                                         ; $7c3b: $0d
    cp d                                          ; $7c3c: $ba
    ld d, a                                       ; $7c3d: $57
    xor a                                         ; $7c3e: $af
    push de                                       ; $7c3f: $d5
    inc e                                         ; $7c40: $1c
    ld b, d                                       ; $7c41: $42
    cp c                                          ; $7c42: $b9
    ld e, a                                       ; $7c43: $5f
    sub a                                         ; $7c44: $97
    add [hl]                                      ; $7c45: $86
    ld h, h                                       ; $7c46: $64
    adc e                                         ; $7c47: $8b
    ld d, a                                       ; $7c48: $57
    jr nz, jr_063_7cc1                            ; $7c49: $20 $76

    ld c, $a1                                     ; $7c4b: $0e $a1
    call z, $86b2                                 ; $7c4d: $cc $b2 $86
    ld sp, $28bd                                  ; $7c50: $31 $bd $28
    and h                                         ; $7c53: $a4
    ld hl, sp+$79                                 ; $7c54: $f8 $79
    call c, $f7ab                                 ; $7c56: $dc $ab $f7
    inc hl                                        ; $7c59: $23
    jp c, $38c8                                   ; $7c5a: $da $c8 $38

    db $e4                                        ; $7c5d: $e4
    ld d, b                                       ; $7c5e: $50
    ld e, a                                       ; $7c5f: $5f
    ld d, l                                       ; $7c60: $55
    cp a                                          ; $7c61: $bf
    xor a                                         ; $7c62: $af
    dec de                                        ; $7c63: $1b
    dec a                                         ; $7c64: $3d
    ld b, a                                       ; $7c65: $47
    db $ec                                        ; $7c66: $ec
    call c, Call_063_6a21                         ; $7c67: $dc $21 $6a
    adc a                                         ; $7c6a: $8f
    xor e                                         ; $7c6b: $ab
    ld c, e                                       ; $7c6c: $4b
    cp a                                          ; $7c6d: $bf
    ld e, a                                       ; $7c6e: $5f

jr_063_7c6f:
    sub a                                         ; $7c6f: $97
    add [hl]                                      ; $7c70: $86
    ld h, h                                       ; $7c71: $64
    adc e                                         ; $7c72: $8b
    ld d, a                                       ; $7c73: $57
    push de                                       ; $7c74: $d5
    ld l, a                                       ; $7c75: $6f
    jr c, jr_063_7cdf                             ; $7c76: $38 $67

    reti                                          ; $7c78: $d9


    inc de                                        ; $7c79: $13
    and h                                         ; $7c7a: $a4
    or d                                          ; $7c7b: $b2
    inc de                                        ; $7c7c: $13
    di                                            ; $7c7d: $f3
    rla                                           ; $7c7e: $17
    dec bc                                        ; $7c7f: $0b
    ld a, d                                       ; $7c80: $7a
    ld a, [hl+]                                   ; $7c81: $2a
    ld a, a                                       ; $7c82: $7f
    call nz, $2ef7                                ; $7c83: $c4 $f7 $2e
    sbc c                                         ; $7c86: $99
    ld a, c                                       ; $7c87: $79
    ld a, [hl+]                                   ; $7c88: $2a
    inc h                                         ; $7c89: $24
    adc a                                         ; $7c8a: $8f
    ld bc, $ea6b                                  ; $7c8b: $01 $6b $ea
    rst $08                                       ; $7c8e: $cf
    ld h, d                                       ; $7c8f: $62
    add sp, $43                                   ; $7c90: $e8 $43
    ld a, l                                       ; $7c92: $7d
    ld de, $7a08                                  ; $7c93: $11 $08 $7a
    ld [$d565], sp                                ; $7c96: $08 $65 $d5
    dec a                                         ; $7c99: $3d
    ld e, $2c                                     ; $7c9a: $1e $2c
    ld [$ef4e], a                                 ; $7c9c: $ea $4e $ef
    ld sp, hl                                     ; $7c9f: $f9
    dec b                                         ; $7ca0: $05
    xor d                                         ; $7ca1: $aa
    ld a, [c]                                     ; $7ca2: $f2
    ld d, h                                       ; $7ca3: $54
    sub b                                         ; $7ca4: $90
    jr z, jr_063_7c2a                             ; $7ca5: $28 $83

    ldh a, [$67]                                  ; $7ca7: $f0 $67
    ld [$9ce2], sp                                ; $7ca9: $08 $e2 $9c
    dec b                                         ; $7cac: $05
    ld d, a                                       ; $7cad: $57
    add hl, hl                                    ; $7cae: $29
    jr jr_063_7d30                                ; $7caf: $18 $7f

    jp hl                                         ; $7cb1: $e9


    ld d, b                                       ; $7cb2: $50
    ld hl, sp+$7e                                 ; $7cb3: $f8 $7e
    ld bc, $9e6d                                  ; $7cb5: $01 $6d $9e
    ld c, [hl]                                    ; $7cb8: $4e
    jp nc, $bd29                                  ; $7cb9: $d2 $29 $bd

jr_063_7cbc:
    ld d, l                                       ; $7cbc: $55
    jp $78f3                                      ; $7cbd: $c3 $f3 $78


    ld a, [hl+]                                   ; $7cc0: $2a

jr_063_7cc1:
    inc h                                         ; $7cc1: $24
    xor a                                         ; $7cc2: $af
    ld e, d                                       ; $7cc3: $5a
    ret nc                                        ; $7cc4: $d0

    add hl, sp                                    ; $7cc5: $39
    res 3, [hl]                                   ; $7cc6: $cb $9e
    add b                                         ; $7cc8: $80
    sub l                                         ; $7cc9: $95
    cp a                                          ; $7cca: $bf
    and b                                         ; $7ccb: $a0
    ld [hl], e                                    ; $7ccc: $73
    and $c5                                       ; $7ccd: $e6 $c5
    jr nz, @+$6c                                  ; $7ccf: $20 $6a

    pop hl                                        ; $7cd1: $e1
    add hl, de                                    ; $7cd2: $19
    add hl, de                                    ; $7cd3: $19
    ld a, a                                       ; $7cd4: $7f
    inc e                                         ; $7cd5: $1c
    ld [bc], a                                    ; $7cd6: $02
    ld c, a                                       ; $7cd7: $4f
    jr z, jr_063_7c6f                             ; $7cd8: $28 $95

    dec a                                         ; $7cda: $3d
    ld c, [hl]                                    ; $7cdb: $4e
    adc d                                         ; $7cdc: $8a
    ld e, d                                       ; $7cdd: $5a
    inc c                                         ; $7cde: $0c

jr_063_7cdf:
    ld a, l                                       ; $7cdf: $7d
    ld sp, $bd25                                  ; $7ce0: $31 $25 $bd
    ld d, b                                       ; $7ce3: $50
    ld d, $85                                     ; $7ce4: $16 $85
    ld l, h                                       ; $7ce6: $6c
    jr jr_063_7cbc                                ; $7ce7: $18 $d3

    add hl, sp                                    ; $7ce9: $39
    ld [hl], h                                    ; $7cea: $74
    cp d                                          ; $7ceb: $ba
    ld l, $0a                                     ; $7cec: $2e $0a
    ld e, c                                       ; $7cee: $59
    db $e3                                        ; $7cef: $e3
    sbc a                                         ; $7cf0: $9f
    rst $30                                       ; $7cf1: $f7
    dec bc                                        ; $7cf2: $0b
    sub a                                         ; $7cf3: $97
    add [hl]                                      ; $7cf4: $86
    ld h, h                                       ; $7cf5: $64
    adc e                                         ; $7cf6: $8b
    rst $30                                       ; $7cf7: $f7
    and e                                         ; $7cf8: $a3
    jp c, $e9a9                                   ; $7cf9: $da $a9 $e9

    call c, $b013                                 ; $7cfc: $dc $13 $b0
    ld a, [c]                                     ; $7cff: $f2
    rla                                           ; $7d00: $17
    ld [hl], h                                    ; $7d01: $74
    adc d                                         ; $7d02: $8a
    db $eb                                        ; $7d03: $eb
    ld l, d                                       ; $7d04: $6a
    db $fc                                        ; $7d05: $fc
    adc e                                         ; $7d06: $8b
    rst $10                                       ; $7d07: $d7
    jp nc, $b145                                  ; $7d08: $d2 $45 $b1

    ld [hl], e                                    ; $7d0b: $73
    ld d, c                                       ; $7d0c: $51
    ret z                                         ; $7d0d: $c8

    ld hl, $da14                                  ; $7d0e: $21 $14 $da
    ld l, d                                       ; $7d11: $6a
    ld [hl], e                                    ; $7d12: $73
    xor b                                         ; $7d13: $a8
    xor a                                         ; $7d14: $af
    ld h, c                                       ; $7d15: $61
    ld c, h                                       ; $7d16: $4c
    ld c, a                                       ; $7d17: $4f
    ld a, l                                       ; $7d18: $7d
    sbc c                                         ; $7d19: $99
    ld a, [$bd95]                                 ; $7d1a: $fa $95 $bd
    add [hl]                                      ; $7d1d: $86
    ld l, e                                       ; $7d1e: $6b
    ld c, h                                       ; $7d1f: $4c
    ret                                           ; $7d20: $c9


    ld [c], a                                     ; $7d21: $e2
    ld e, [hl]                                    ; $7d22: $5e
    sbc l                                         ; $7d23: $9d
    ld a, e                                       ; $7d24: $7b
    ld [bc], a                                    ; $7d25: $02
    ld c, $fd                                     ; $7d26: $0e $fd
    call c, $972f                                 ; $7d28: $dc $2f $97
    add [hl]                                      ; $7d2b: $86
    ld h, h                                       ; $7d2c: $64
    adc e                                         ; $7d2d: $8b
    ld b, a                                       ; $7d2e: $47
    ld d, d                                       ; $7d2f: $52

jr_063_7d30:
    ld h, d                                       ; $7d30: $62
    rst $20                                       ; $7d31: $e7
    db $10                                        ; $7d32: $10
    call nz, $f83b                                ; $7d33: $c4 $3b $f8
    dec bc                                        ; $7d36: $0b
    or h                                          ; $7d37: $b4
    ld [bc], a                                    ; $7d38: $02
    ld [$a18f], sp                                ; $7d39: $08 $8f $a1
    rst $28                                       ; $7d3c: $ef
    ld sp, hl                                     ; $7d3d: $f9
    xor d                                         ; $7d3e: $aa
    jp nz, Jump_000_3fa3                          ; $7d3f: $c2 $a3 $3f

    rst $30                                       ; $7d42: $f7
    dec bc                                        ; $7d43: $0b
    sub a                                         ; $7d44: $97
    add [hl]                                      ; $7d45: $86
    ld h, h                                       ; $7d46: $64
    adc e                                         ; $7d47: $8b
    rla                                           ; $7d48: $17
    pop de                                        ; $7d49: $d1
    sbc l                                         ; $7d4a: $9d
    ld [c], a                                     ; $7d4b: $e2
    call c, $ddef                                 ; $7d4c: $dc $ef $dd
    ld a, e                                       ; $7d4f: $7b
    ld a, [hl]                                    ; $7d50: $7e
    add c                                         ; $7d51: $81
    xor d                                         ; $7d52: $aa
    cp h                                          ; $7d53: $bc
    jr jr_063_7da8                                ; $7d54: $18 $52

    add hl, bc                                    ; $7d56: $09
    ld c, b                                       ; $7d57: $48
    ld [hl], c                                    ; $7d58: $71
    jp nc, $c356                                  ; $7d59: $d2 $56 $c3

    inc sp                                        ; $7d5c: $33
    call nc, Call_000_0247                        ; $7d5d: $d4 $47 $02
    ld [hl-], a                                   ; $7d60: $32
    db $f4                                        ; $7d61: $f4
    sub c                                         ; $7d62: $91
    ccf                                           ; $7d63: $3f
    rst $10                                       ; $7d64: $d7
    ld l, d                                       ; $7d65: $6a
    ld h, d                                       ; $7d66: $62
    cp $62                                        ; $7d67: $fe $62
    ld e, $42                                     ; $7d69: $1e $42
    reti                                          ; $7d6b: $d9


    ld a, l                                       ; $7d6c: $7d
    rst $18                                       ; $7d6d: $df
    db $d3                                        ; $7d6e: $d3
    cp a                                          ; $7d6f: $bf
    ld d, h                                       ; $7d70: $54
    di                                            ; $7d71: $f3
    jp nz, $f433                                  ; $7d72: $c2 $33 $f4

    sbc h                                         ; $7d75: $9c
    dec hl                                        ; $7d76: $2b
    ld bc, $f73d                                  ; $7d77: $01 $3d $f7
    xor $5c                                       ; $7d7a: $ee $5c
    ld d, l                                       ; $7d7c: $55
    rra                                           ; $7d7d: $1f

jr_063_7d7e:
    db $dd                                        ; $7d7e: $dd
    and c                                         ; $7d7f: $a1
    ld hl, sp+$7e                                 ; $7d80: $f8 $7e
    ld bc, $8697                                  ; $7d82: $01 $97 $86
    ld h, h                                       ; $7d85: $64
    adc e                                         ; $7d86: $8b
    ld b, a                                       ; $7d87: $47
    ld a, [$e777]                                 ; $7d88: $fa $77 $e7
    ld a, [hl]                                    ; $7d8b: $7e
    rst $28                                       ; $7d8c: $ef
    ld e, $82                                     ; $7d8d: $1e $82
    ld a, b                                       ; $7d8f: $78
    or l                                          ; $7d90: $b5
    sbc c                                         ; $7d91: $99
    dec bc                                        ; $7d92: $0b
    ld h, l                                       ; $7d93: $65
    inc h                                         ; $7d94: $24
    dec h                                         ; $7d95: $25
    halt                                          ; $7d96: $76
    ld c, $41                                     ; $7d97: $0e $41
    cp h                                          ; $7d99: $bc
    ld l, e                                       ; $7d9a: $6b
    ld d, d                                       ; $7d9b: $52
    db $d3                                        ; $7d9c: $d3
    cp e                                          ; $7d9d: $bb
    and e                                         ; $7d9e: $a3
    sub b                                         ; $7d9f: $90
    adc a                                         ; $7da0: $8f
    sbc $7f                                       ; $7da1: $de $7f
    or [hl]                                       ; $7da3: $b6
    ld [bc], a                                    ; $7da4: $02
    ld [$a18f], sp                                ; $7da5: $08 $8f $a1

jr_063_7da8:
    rst $28                                       ; $7da8: $ef
    ld sp, hl                                     ; $7da9: $f9
    xor d                                         ; $7daa: $aa
    jp nz, Jump_000_3fa3                          ; $7dab: $c2 $a3 $3f

    rst $30                                       ; $7dae: $f7
    dec bc                                        ; $7daf: $0b
    sub a                                         ; $7db0: $97
    add [hl]                                      ; $7db1: $86
    ld h, h                                       ; $7db2: $64
    adc e                                         ; $7db3: $8b
    ld b, a                                       ; $7db4: $47
    cp $5c                                        ; $7db5: $fe $5c
    add c                                         ; $7db7: $81
    ret c                                         ; $7db8: $d8

    inc a                                         ; $7db9: $3c
    add h                                         ; $7dba: $84
    or d                                          ; $7dbb: $b2
    ei                                            ; $7dbc: $fb
    cp [hl]                                       ; $7dbd: $be
    ld h, a                                       ; $7dbe: $67
    ld e, c                                       ; $7dbf: $59
    db $eb                                        ; $7dc0: $eb
    rst $20                                       ; $7dc1: $e7
    ld l, a                                       ; $7dc2: $6f
    ld [hl], l                                    ; $7dc3: $75
    call $da39                                    ; $7dc4: $cd $39 $da
    ld e, a                                       ; $7dc7: $5f
    sub a                                         ; $7dc8: $97
    add [hl]                                      ; $7dc9: $86
    ld h, h                                       ; $7dca: $64
    adc e                                         ; $7dcb: $8b
    ld d, a                                       ; $7dcc: $57
    add sp, $21                                   ; $7dcd: $e8 $21
    pop de                                        ; $7dcf: $d1
    ld b, e                                       ; $7dd0: $43
    jr z, jr_063_7d7e                             ; $7dd1: $28 $ab

    rst $08                                       ; $7dd3: $cf
    ld c, a                                       ; $7dd4: $4f
    sub $be                                       ; $7dd5: $d6 $be
    di                                            ; $7dd7: $f3
    add h                                         ; $7dd8: $84
    ld a, a                                       ; $7dd9: $7f
    rst $28                                       ; $7dda: $ef
    and $fd                                       ; $7ddb: $e6 $fd
    ld l, b                                       ; $7ddd: $68

Jump_063_7dde:
    add sp, $1d                                   ; $7dde: $e8 $1d
    db $fc                                        ; $7de0: $fc
    dec b                                         ; $7de1: $05
    ld e, d                                       ; $7de2: $5a
    ld bc, $8784                                  ; $7de3: $01 $84 $87

Jump_063_7de6:
    adc $55                                       ; $7de6: $ce $55
    push af                                       ; $7de8: $f5
    ei                                            ; $7de9: $fb
    ld a, [de]                                    ; $7dea: $1a
    xor c                                         ; $7deb: $a9
    rla                                           ; $7dec: $17
    rst $10                                       ; $7ded: $d7
    ld sp, $7df4                                  ; $7dee: $31 $f4 $7d
    sbc [hl]                                      ; $7df1: $9e
    adc [hl]                                      ; $7df2: $8e
    ld de, $bd35                                  ; $7df3: $11 $35 $bd
    add [hl]                                      ; $7df6: $86
    ld l, e                                       ; $7df7: $6b
    ld c, h                                       ; $7df8: $4c
    ret                                           ; $7df9: $c9


    ld [c], a                                     ; $7dfa: $e2
    ld e, [hl]                                    ; $7dfb: $5e
    sbc l                                         ; $7dfc: $9d
    ld [hl], e                                    ; $7dfd: $73
    adc [hl]                                      ; $7dfe: $8e
    db $fc                                        ; $7dff: $fc
    dec a                                         ; $7e00: $3d
    halt                                          ; $7e01: $76
    sbc d                                         ; $7e02: $9a
    rst $28                                       ; $7e03: $ef
    rla                                           ; $7e04: $17
    sub a                                         ; $7e05: $97
    add [hl]                                      ; $7e06: $86
    ld h, h                                       ; $7e07: $64
    adc e                                         ; $7e08: $8b
    rla                                           ; $7e09: $17
    add l                                         ; $7e0a: $85
    db $e4                                        ; $7e0b: $e4
    call nc, $eef4                                ; $7e0c: $d4 $f4 $ee
    sbc h                                         ; $7e0f: $9c
    ld h, l                                       ; $7e10: $65
    ld c, a                                       ; $7e11: $4f
    ret nz                                        ; $7e12: $c0

jr_063_7e13:
    jp z, $d05f                                   ; $7e13: $ca $5f $d0

    cp c                                          ; $7e16: $b9
    jp c, Jump_000_3a1c                           ; $7e17: $da $1c $3a

Jump_063_7e1a:
    ld e, l                                       ; $7e1a: $5d
    rla                                           ; $7e1b: $17
    ld l, c                                       ; $7e1c: $69
    ld a, [hl+]                                   ; $7e1d: $2a
    ld d, h                                       ; $7e1e: $54
    push hl                                       ; $7e1f: $e5
    ld a, l                                       ; $7e20: $7d
    add hl, hl                                    ; $7e21: $29
    jp hl                                         ; $7e22: $e9


    add $62                                       ; $7e23: $c6 $62
    add sp, $23                                   ; $7e25: $e8 $23
    db $fd                                        ; $7e27: $fd
    cp e                                          ; $7e28: $bb
    add a                                         ; $7e29: $87
    ld d, b                                       ; $7e2a: $50
    xor $17                                       ; $7e2b: $ee $17
    sub a                                         ; $7e2d: $97
    add [hl]                                      ; $7e2e: $86
    ld h, h                                       ; $7e2f: $64
    adc e                                         ; $7e30: $8b
    ld b, a                                       ; $7e31: $47
    cp $1c                                        ; $7e32: $fe $1c
    or l                                          ; $7e34: $b5
    sbc b                                         ; $7e35: $98
    add a                                         ; $7e36: $87
    ret nz                                        ; $7e37: $c0

    inc de                                        ; $7e38: $13
    adc b                                         ; $7e39: $88
    db $fd                                        ; $7e3a: $fd
    ld [hl], l                                    ; $7e3b: $75
    db $ed                                        ; $7e3c: $ed
    ld l, e                                       ; $7e3d: $6b
    or e                                          ; $7e3e: $b3
    adc b                                         ; $7e3f: $88
    and a                                         ; $7e40: $a7
    jp nz, Jump_000_00d3                          ; $7e41: $c2 $d3 $00

    ld sp, hl                                     ; $7e44: $f9
    inc c                                         ; $7e45: $0c
    ld b, c                                       ; $7e46: $41
    ld d, $e9                                     ; $7e47: $16 $e9
    ld d, d                                       ; $7e49: $52
    sbc h                                         ; $7e4a: $9c
    adc $29                                       ; $7e4b: $ce $29
    ld e, l                                       ; $7e4d: $5d
    ld h, [hl]                                    ; $7e4e: $66
    sbc c                                         ; $7e4f: $99
    ld b, l                                       ; $7e50: $45
    cp c                                          ; $7e51: $b9
    di                                            ; $7e52: $f3
    jp z, Jump_063_7297                           ; $7e53: $ca $97 $72

    cp a                                          ; $7e56: $bf
    sub a                                         ; $7e57: $97
    add [hl]                                      ; $7e58: $86
    ld h, h                                       ; $7e59: $64
    adc e                                         ; $7e5a: $8b
    ld d, a                                       ; $7e5b: $57
    jr nz, jr_063_7ed4                            ; $7e5c: $20 $76

    ld c, $a1                                     ; $7e5e: $0e $a1
    call z, $96b2                                 ; $7e60: $cc $b2 $96
    di                                            ; $7e63: $f3
    ld sp, hl                                     ; $7e64: $f9
    ld h, d                                       ; $7e65: $62
    pop hl                                        ; $7e66: $e1
    ld b, l                                       ; $7e67: $45
    ld hl, $2a49                                  ; $7e68: $21 $49 $2a
    db $dd                                        ; $7e6b: $dd
    cp l                                          ; $7e6c: $bd
    ld a, d                                       ; $7e6d: $7a
    ccf                                           ; $7e6e: $3f
    jp c, $a935                                   ; $7e6f: $da $35 $a9

    jp hl                                         ; $7e72: $e9


    db $dd                                        ; $7e73: $dd
    ld d, c                                       ; $7e74: $51
    ret z                                         ; $7e75: $c8

    ld b, a                                       ; $7e76: $47
    rst $28                                       ; $7e77: $ef
    ccf                                           ; $7e78: $3f
    ld e, e                                       ; $7e79: $5b
    ld bc, $ef84                                  ; $7e7a: $01 $84 $ef
    or l                                          ; $7e7d: $b5
    ld e, c                                       ; $7e7e: $59
    call nz, $e153                                ; $7e7f: $c4 $53 $e1
    ld l, c                                       ; $7e82: $69
    add b                                         ; $7e83: $80
    ld a, h                                       ; $7e84: $7c
    add [hl]                                      ; $7e85: $86
    jr nz, jr_063_7e13                            ; $7e86: $20 $8b

    ld hl, $7395                                  ; $7e88: $21 $95 $73
    ld c, d                                       ; $7e8b: $4a
    sub a                                         ; $7e8c: $97
    ld e, c                                       ; $7e8d: $59
    ld h, [hl]                                    ; $7e8e: $66
    ld d, c                                       ; $7e8f: $51
    xor $bc                                       ; $7e90: $ee $bc
    ld a, [c]                                     ; $7e92: $f2
    and l                                         ; $7e93: $a5
    call c, $972f                                 ; $7e94: $dc $2f $97
    add [hl]                                      ; $7e97: $86
    ld h, h                                       ; $7e98: $64
    adc e                                         ; $7e99: $8b
    ld d, a                                       ; $7e9a: $57
    jr nz, jr_063_7f13                            ; $7e9b: $20 $76

    ld c, $a1                                     ; $7e9d: $0e $a1
    call z, $28b2                                 ; $7e9f: $cc $b2 $28
    inc h                                         ; $7ea2: $24
    ld c, c                                       ; $7ea3: $49
    and l                                         ; $7ea4: $a5
    cp e                                          ; $7ea5: $bb
    ld d, a                                       ; $7ea6: $57
    rst $28                                       ; $7ea7: $ef
    ld b, a                                       ; $7ea8: $47
    dec sp                                        ; $7ea9: $3b
    ld hl, sp+$0b                                 ; $7eaa: $f8 $0b
    or h                                          ; $7eac: $b4
    ld [bc], a                                    ; $7ead: $02
    ld [$5f6b], sp                                ; $7eae: $08 $6b $5f
    sbc e                                         ; $7eb1: $9b
    ld b, l                                       ; $7eb2: $45
    inc a                                         ; $7eb3: $3c
    dec d                                         ; $7eb4: $15
    sbc [hl]                                      ; $7eb5: $9e

jr_063_7eb6:
    ld b, $c8                                     ; $7eb6: $06 $c8
    ld h, a                                       ; $7eb8: $67
    ld [$18b2], sp                                ; $7eb9: $08 $b2 $18
    ld d, d                                       ; $7ebc: $52
    add hl, sp                                    ; $7ebd: $39
    and a                                         ; $7ebe: $a7
    ld [hl], h                                    ; $7ebf: $74
    sbc c                                         ; $7ec0: $99
    ld h, l                                       ; $7ec1: $65
    ld d, $e5                                     ; $7ec2: $16 $e5
    adc $2b                                       ; $7ec4: $ce $2b
    ld e, a                                       ; $7ec6: $5f
    jp z, Jump_000_02fd                           ; $7ec7: $ca $fd $02

    rst $20                                       ; $7eca: $e7
    push af                                       ; $7ecb: $f5
    xor $21                                       ; $7ecc: $ee $21
    adc b                                         ; $7ece: $88
    ld [hl], a                                    ; $7ecf: $77
    ldh a, [rNR22]                                ; $7ed0: $f0 $17
    ld l, b                                       ; $7ed2: $68
    dec b                                         ; $7ed3: $05

jr_063_7ed4:
    db $10                                        ; $7ed4: $10
    sbc [hl]                                      ; $7ed5: $9e
    ld [hl], e                                    ; $7ed6: $73
    dec d                                         ; $7ed7: $15
    ld h, d                                       ; $7ed8: $62
    di                                            ; $7ed9: $f3
    ld a, [de]                                    ; $7eda: $1a
    ld hl, $fb59                                  ; $7edb: $21 $59 $fb
    xor [hl]                                      ; $7ede: $ae
    jr nz, jr_063_7f4a                            ; $7edf: $20 $69

    ld c, e                                       ; $7ee1: $4b
    ld a, [bc]                                    ; $7ee2: $0a
    ld d, [hl]                                    ; $7ee3: $56
    ld [hl], a                                    ; $7ee4: $77
    jp c, Jump_000_20ae                           ; $7ee5: $da $ae $20

    ld d, a                                       ; $7ee8: $57
    ld d, l                                       ; $7ee9: $55
    ld d, d                                       ; $7eea: $52
    sub h                                         ; $7eeb: $94
    or $17                                        ; $7eec: $f6 $17
    rlca                                          ; $7eee: $07
    adc l                                         ; $7eef: $8d
    inc sp                                        ; $7ef0: $33
    xor a                                         ; $7ef1: $af
    ld d, d                                       ; $7ef2: $52
    ld a, b                                       ; $7ef3: $78
    and c                                         ; $7ef4: $a1
    add l                                         ; $7ef5: $85
    cp a                                          ; $7ef6: $bf
    jr c, @-$77                                   ; $7ef7: $38 $87

    ld a, [$0f3e]                                 ; $7ef9: $fa $3e $0f
    ld b, c                                       ; $7efc: $41
    cp h                                          ; $7efd: $bc
    ld l, e                                       ; $7efe: $6b
    ld d, d                                       ; $7eff: $52
    db $d3                                        ; $7f00: $d3
    cp e                                          ; $7f01: $bb
    and e                                         ; $7f02: $a3
    sub b                                         ; $7f03: $90
    adc a                                         ; $7f04: $8f
    sbc $7f                                       ; $7f05: $de $7f
    or [hl]                                       ; $7f07: $b6
    ld [bc], a                                    ; $7f08: $02
    ld [$942f], sp                                ; $7f09: $08 $2f $94
    dec e                                         ; $7f0c: $1d
    db $fc                                        ; $7f0d: $fc
    dec b                                         ; $7f0e: $05
    ld e, d                                       ; $7f0f: $5a
    ld bc, $e784                                  ; $7f10: $01 $84 $e7

jr_063_7f13:
    inc e                                         ; $7f13: $1c
    ld c, c                                       ; $7f14: $49
    adc c                                         ; $7f15: $89
    call $e863                                    ; $7f16: $cd $63 $e8
    ld a, e                                       ; $7f19: $7b
    cp [hl]                                       ; $7f1a: $be
    xor d                                         ; $7f1b: $aa
    ldh a, [$e8]                                  ; $7f1c: $f0 $e8
    adc a                                         ; $7f1e: $8f
    or $b5                                        ; $7f1f: $f6 $b5
    ld e, c                                       ; $7f21: $59
    call nz, $e153                                ; $7f22: $c4 $53 $e1
    ld l, c                                       ; $7f25: $69
    add b                                         ; $7f26: $80
    ld a, h                                       ; $7f27: $7c
    add [hl]                                      ; $7f28: $86
    jr nz, jr_063_7eb6                            ; $7f29: $20 $8b

    ld hl, $7395                                  ; $7f2b: $21 $95 $73
    ld c, d                                       ; $7f2e: $4a
    sub a                                         ; $7f2f: $97
    ld e, c                                       ; $7f30: $59
    ld h, [hl]                                    ; $7f31: $66
    ld d, c                                       ; $7f32: $51
    xor $bc                                       ; $7f33: $ee $bc
    ld a, [c]                                     ; $7f35: $f2
    and l                                         ; $7f36: $a5
    ld l, b                                       ; $7f37: $68
    ld a, a                                       ; $7f38: $7f
    ld bc, $fa6d                                  ; $7f39: $01 $6d $fa
    and d                                         ; $7f3c: $a2
    ld h, [hl]                                    ; $7f3d: $66
    adc $b2                                       ; $7f3e: $ce $b2
    cpl                                           ; $7f40: $2f
    xor $d5                                       ; $7f41: $ee $d5
    dec bc                                        ; $7f43: $0b
    rst $08                                       ; $7f44: $cf
    ld a, $0f                                     ; $7f45: $3e $0f
    push af                                       ; $7f47: $f5
    add hl, sp                                    ; $7f48: $39
    rst $30                                       ; $7f49: $f7

jr_063_7f4a:
    nop                                           ; $7f4a: $00
    halt                                          ; $7f4b: $76
    daa                                           ; $7f4c: $27
    inc bc                                        ; $7f4d: $03
    ld b, d                                       ; $7f4e: $42
    add hl, de                                    ; $7f4f: $19
    inc a                                         ; $7f50: $3c
    adc a                                         ; $7f51: $8f
    ld l, $0b                                     ; $7f52: $2e $0b
    or c                                          ; $7f54: $b1
    inc sp                                        ; $7f55: $33
    ld a, [bc]                                    ; $7f56: $0a
    cp c                                          ; $7f57: $b9
    rst $18                                       ; $7f58: $df
    rst $30                                       ; $7f59: $f7
    db $fc                                        ; $7f5a: $fc
    ld [bc], a                                    ; $7f5b: $02
    jp c, $6d5f                                   ; $7f5c: $da $5f $6d

    ld d, $f1                                     ; $7f5f: $16 $f1
    ld d, h                                       ; $7f61: $54
    ld c, b                                       ; $7f62: $48
    ld d, [hl]                                    ; $7f63: $56
    pop hl                                        ; $7f64: $e1
    ld l, c                                       ; $7f65: $69
    add b                                         ; $7f66: $80
    ld a, h                                       ; $7f67: $7c
    add [hl]                                      ; $7f68: $86
    jr nz, jr_063_7f96                            ; $7f69: $20 $2b

    call nc, Call_063_421c                        ; $7f6b: $d4 $1c $42
    add hl, de                                    ; $7f6e: $19
    inc a                                         ; $7f6f: $3c
    adc a                                         ; $7f70: $8f
    ld l, $0b                                     ; $7f71: $2e $0b
    or c                                          ; $7f73: $b1
    inc sp                                        ; $7f74: $33
    ld a, [bc]                                    ; $7f75: $0a
    cp c                                          ; $7f76: $b9
    rst $18                                       ; $7f77: $df
    cp e                                          ; $7f78: $bb
    rlca                                          ; $7f79: $07
    ld c, d                                       ; $7f7a: $4a
    ld sp, hl                                     ; $7f7b: $f9
    cp b                                          ; $7f7c: $b8
    rst $20                                       ; $7f7d: $e7
    rla                                           ; $7f7e: $17
    xor b                                         ; $7f7f: $a8
    jp z, $52fb                                   ; $7f80: $ca $fb $52

    jp nc, $c18d                                  ; $7f83: $d2 $8d $c1

    inc l                                         ; $7f86: $2c
    ld d, e                                       ; $7f87: $53
    ld b, c                                       ; $7f88: $41
    and d                                         ; $7f89: $a2
    inc c                                         ; $7f8a: $0c
    jp nz, $219f                                  ; $7f8b: $c2 $9f $21

    ret z                                         ; $7f8e: $c8

    db $fd                                        ; $7f8f: $fd
    ld [bc], a                                    ; $7f90: $02
    sub a                                         ; $7f91: $97
    scf                                           ; $7f92: $37
    ld [hl], e                                    ; $7f93: $73
    xor b                                         ; $7f94: $a8
    ld c, a                                       ; $7f95: $4f

jr_063_7f96:
    add l                                         ; $7f96: $85
    and a                                         ; $7f97: $a7
    ld bc, $74e2                                  ; $7f98: $01 $e2 $74
    ld c, $a1                                     ; $7f9b: $0e $a1
    ld d, [hl]                                    ; $7f9d: $56
    ld c, a                                       ; $7f9e: $4f
    add l                                         ; $7f9f: $85
    db $e4                                        ; $7fa0: $e4
    push bc                                       ; $7fa1: $c5
    ret nc                                        ; $7fa2: $d0

    add a                                         ; $7fa3: $87
    jr nz, @-$20                                  ; $7fa4: $20 $de

    inc de                                        ; $7fa6: $13
    or b                                          ; $7fa7: $b0
    ld a, [c]                                     ; $7fa8: $f2
    rla                                           ; $7fa9: $17
    ld [hl], h                                    ; $7faa: $74
    ld a, d                                       ; $7fab: $7a
    push de                                       ; $7fac: $d5
    ld a, e                                       ; $7fad: $7b
    ld e, h                                       ; $7fae: $5c
    call z, $3db4                                 ; $7faf: $cc $b4 $3d
    ld l, $e6                                     ; $7fb2: $2e $e6
    push de                                       ; $7fb4: $d5
    ld hl, sp+$17                                 ; $7fb5: $f8 $17
    ld c, a                                       ; $7fb7: $4f
    rst $00                                       ; $7fb8: $c7
    db $dd                                        ; $7fb9: $dd
    rst $30                                       ; $7fba: $f7
    db $fd                                        ; $7fbb: $fd
    ld [bc], a                                    ; $7fbc: $02
    sub a                                         ; $7fbd: $97
    scf                                           ; $7fbe: $37
    ld [hl], e                                    ; $7fbf: $73
    xor b                                         ; $7fc0: $a8
    ld c, a                                       ; $7fc1: $4f
    add l                                         ; $7fc2: $85
    and a                                         ; $7fc3: $a7
    ld bc, $74e2                                  ; $7fc4: $01 $e2 $74
    ld c, $a1                                     ; $7fc7: $0e $a1
    ld d, [hl]                                    ; $7fc9: $56
    ld c, a                                       ; $7fca: $4f
    add l                                         ; $7fcb: $85
    db $e4                                        ; $7fcc: $e4
    ld b, l                                       ; $7fcd: $45
    call nc, Call_000_1cee                        ; $7fce: $d4 $ee $1c
    ld [$7db4], a                                 ; $7fd1: $ea $b4 $7d
    sbc [hl]                                      ; $7fd4: $9e
    add l                                         ; $7fd5: $85
    adc h                                         ; $7fd6: $8c
    sbc l                                         ; $7fd7: $9d
    ld l, e                                       ; $7fd8: $6b
    cp b                                          ; $7fd9: $b8

Jump_063_7fda:
    add $94                                       ; $7fda: $c6 $94
    inc l                                         ; $7fdc: $2c
    xor $d5                                       ; $7fdd: $ee $d5
    ld b, e                                       ; $7fdf: $43
    ld a, l                                       ; $7fe0: $7d
    ld a, [hl-]                                   ; $7fe1: $3a
    ld b, [hl]                                    ; $7fe2: $46
    call nc, Call_000_2e74                        ; $7fe3: $d4 $74 $2e
    add [hl]                                      ; $7fe6: $86
    cp [hl]                                       ; $7fe7: $be
    sbc b                                         ; $7fe8: $98
    sub d                                         ; $7fe9: $92
    sbc $e3                                       ; $7fea: $de $e3
    ld h, d                                       ; $7fec: $62
    ld e, [hl]                                    ; $7fed: $5e
    ld h, l                                       ; $7fee: $65
    ld c, d                                       ; $7fef: $4a
    ld a, [hl+]                                   ; $7ff0: $2a
    and a                                         ; $7ff1: $a7
    rst $28                                       ; $7ff2: $ef
    rla                                           ; $7ff3: $17
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
