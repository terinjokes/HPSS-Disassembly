; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $06e", ROMX[$4000], BANK[$6e]

    ld l, [hl]                                    ; $4000: $6e
    rra                                           ; $4001: $1f
    db $dd                                        ; $4002: $dd
    and e                                         ; $4003: $a3
    push af                                       ; $4004: $f5
    db $fc                                        ; $4005: $fc
    db $d3                                        ; $4006: $d3
    xor $86                                       ; $4007: $ee $86
    dec de                                        ; $4009: $1b
    ld l, l                                       ; $400a: $6d
    ld h, h                                       ; $400b: $64
    adc [hl]                                      ; $400c: $8e
    or b                                          ; $400d: $b0
    ld a, d                                       ; $400e: $7a
    xor d                                         ; $400f: $aa
    inc e                                         ; $4010: $1c
    and c                                         ; $4011: $a1
    dec l                                         ; $4012: $2d
    xor e                                         ; $4013: $ab
    jp Jump_06e_6ed2                              ; $4014: $c3 $d2 $6e


    db $db                                        ; $4017: $db
    ld d, [hl]                                    ; $4018: $56
    rst $08                                       ; $4019: $cf
    ld [hl], b                                    ; $401a: $70
    sub [hl]                                      ; $401b: $96
    ld [hl], $90                                  ; $401c: $36 $90
    ret c                                         ; $401e: $d8

    ld c, b                                       ; $401f: $48
    ld [hl], e                                    ; $4020: $73
    dec hl                                        ; $4021: $2b
    jp Jump_06e_68dc                              ; $4022: $c3 $dc $68


    dec a                                         ; $4025: $3d
    dec bc                                        ; $4026: $0b
    and c                                         ; $4027: $a1
    dec l                                         ; $4028: $2d
    ld l, e                                       ; $4029: $6b
    ld e, $d5                                     ; $402a: $1e $d5
    pop de                                        ; $402c: $d1
    add [hl]                                      ; $402d: $86
    ld b, [hl]                                    ; $402e: $46
    ld h, l                                       ; $402f: $65
    adc [hl]                                      ; $4030: $8e
    call nc, Call_000_00ed                        ; $4031: $d4 $ed $00
    sub a                                         ; $4034: $97
    add l                                         ; $4035: $85
    add [hl]                                      ; $4036: $86
    ld [hl+], a                                   ; $4037: $22
    sub b                                         ; $4038: $90
    cp b                                          ; $4039: $b8
    or e                                          ; $403a: $b3
    ret c                                         ; $403b: $d8

    ld d, a                                       ; $403c: $57
    ld [hl], c                                    ; $403d: $71

jr_06e_403e:
    ld a, [de]                                    ; $403e: $1a
    jp Jump_000_0076                              ; $403f: $c3 $76 $00


    scf                                           ; $4042: $37
    ret c                                         ; $4043: $d8

    and l                                         ; $4044: $a5
    ld a, [hl-]                                   ; $4045: $3a
    cp l                                          ; $4046: $bd
    ret nc                                        ; $4047: $d0

    ld l, c                                       ; $4048: $69
    db $20, $b1                                   ; $4049: $20 $b1
    ld c, h                                       ; $404b: $4c
    dec c                                         ; $404c: $0d
    sbc c                                         ; $404d: $99
    ld [hl], l                                    ; $404e: $75
    ld a, [de]                                    ; $404f: $1a
    ld c, b                                       ; $4050: $48
    db $ec                                        ; $4051: $ec
    dec b                                         ; $4052: $05
    ld b, c                                       ; $4053: $41
    cpl                                           ; $4054: $2f
    call nc, $dd88                                ; $4055: $d4 $88 $dd
    ld sp, $d647                                  ; $4058: $31 $47 $d6
    ld h, b                                       ; $405b: $60
    ld d, e                                       ; $405c: $53
    sub $88                                       ; $405d: $d6 $88
    db $dd                                        ; $405f: $dd
    ld sp, $f647                                  ; $4060: $31 $47 $f6
    adc a                                         ; $4063: $8f
    ld a, l                                       ; $4064: $7d
    adc l                                         ; $4065: $8d
    adc $76                                       ; $4066: $ce $76
    nop                                           ; $4068: $00
    rst $20                                       ; $4069: $e7
    sbc l                                         ; $406a: $9d
    ld b, $12                                     ; $406b: $06 $12
    ld a, e                                       ; $406d: $7b
    pop hl                                        ; $406e: $e1
    adc l                                         ; $406f: $8d
    inc bc                                        ; $4070: $03
    xor a                                         ; $4071: $af
    scf                                           ; $4072: $37
    add hl, sp                                    ; $4073: $39
    ld d, h                                       ; $4074: $54
    ld [hl+], a                                   ; $4075: $22
    ld b, h                                       ; $4076: $44
    dec a                                         ; $4077: $3d
    cp d                                          ; $4078: $ba
    ld a, [c]                                     ; $4079: $f2
    ld a, a                                       ; $407a: $7f
    jp hl                                         ; $407b: $e9


    ld [de], a                                    ; $407c: $12
    xor [hl]                                      ; $407d: $ae
    ld a, l                                       ; $407e: $7d
    ld a, c                                       ; $407f: $79
    ld a, b                                       ; $4080: $78
    ld l, [hl]                                    ; $4081: $6e
    db $fd                                        ; $4082: $fd
    adc h                                         ; $4083: $8c
    ld e, c                                       ; $4084: $59
    inc a                                         ; $4085: $3c
    sub l                                         ; $4086: $95
    or h                                          ; $4087: $b4
    ret z                                         ; $4088: $c8

    db $db                                        ; $4089: $db
    ld l, b                                       ; $408a: $68
    jr nz, jr_06e_403e                            ; $408b: $20 $b1

    rla                                           ; $408d: $17
    or [hl]                                       ; $408e: $b6
    sbc [hl]                                      ; $408f: $9e
    rst $18                                       ; $4090: $df
    ld a, [bc]                                    ; $4091: $0a
    ld l, c                                       ; $4092: $69
    swap c                                        ; $4093: $cb $31
    ld b, a                                       ; $4095: $47
    ld l, [hl]                                    ; $4096: $6e
    rlca                                          ; $4097: $07
    xor a                                         ; $4098: $af
    ld d, a                                       ; $4099: $57
    sub a                                         ; $409a: $97
    cp e                                          ; $409b: $bb
    call nc, $778f                                ; $409c: $d4 $8f $77
    ld sp, $c21b                                  ; $409f: $31 $1b $c2
    ld d, b                                       ; $40a2: $50
    ld hl, $add6                                  ; $40a3: $21 $d6 $ad
    cp c                                          ; $40a6: $b9
    ld [hl], h                                    ; $40a7: $74
    nop                                           ; $40a8: $00
    rst $20                                       ; $40a9: $e7
    xor c                                         ; $40aa: $a9
    call nc, $a938                                ; $40ab: $d4 $38 $a9
    dec hl                                        ; $40ae: $2b
    rst $38                                       ; $40af: $ff
    sub a                                         ; $40b0: $97
    sbc $fd                                       ; $40b1: $de $fd
    rst $20                                       ; $40b3: $e7
    ld a, [hl]                                    ; $40b4: $7e
    xor c                                         ; $40b5: $a9
    scf                                           ; $40b6: $37
    ld sp, hl                                     ; $40b7: $f9
    dec a                                         ; $40b8: $3d
    inc b                                         ; $40b9: $04
    adc l                                         ; $40ba: $8d
    ld [hl], h                                    ; $40bb: $74
    ld c, l                                       ; $40bc: $4d
    xor [hl]                                      ; $40bd: $ae
    jp nz, $8bb5                                  ; $40be: $c2 $b5 $8b

    add hl, de                                    ; $40c1: $19
    cp c                                          ; $40c2: $b9
    dec e                                         ; $40c3: $1d
    scf                                           ; $40c4: $37
    sbc b                                         ; $40c5: $98
    ld a, [de]                                    ; $40c6: $1a
    ld h, d                                       ; $40c7: $62
    push de                                       ; $40c8: $d5
    ld [hl], e                                    ; $40c9: $73
    db $dd                                        ; $40ca: $dd
    sbc d                                         ; $40cb: $9a
    call nc, Call_06e_71a5                        ; $40cc: $d4 $a5 $71
    ld a, [hl+]                                   ; $40cf: $2a
    rst $00                                       ; $40d0: $c7
    xor l                                         ; $40d1: $ad
    db $d3                                        ; $40d2: $d3
    inc d                                         ; $40d3: $14
    add hl, sp                                    ; $40d4: $39

Jump_06e_40d5:
    ld d, d                                       ; $40d5: $52
    db $eb                                        ; $40d6: $eb
    ld e, c                                       ; $40d7: $59
    scf                                           ; $40d8: $37
    ld h, [hl]                                    ; $40d9: $66
    or h                                          ; $40da: $b4
    xor l                                         ; $40db: $ad
    rst $20                                       ; $40dc: $e7
    ld a, [de]                                    ; $40dd: $1a
    add e                                         ; $40de: $83
    sbc e                                         ; $40df: $9b
    ld d, c                                       ; $40e0: $51
    pop af                                        ; $40e1: $f1
    jr @-$14                                      ; $40e2: $18 $ea

    ld e, c                                       ; $40e4: $59
    rst $08                                       ; $40e5: $cf
    rst $38                                       ; $40e6: $ff
    db $ec                                        ; $40e7: $ec
    rst $38                                       ; $40e8: $ff
    or e                                          ; $40e9: $b3
    daa                                           ; $40ea: $27
    halt                                          ; $40eb: $76
    db $f4                                        ; $40ec: $f4
    adc $fe                                       ; $40ed: $ce $fe
    ld b, a                                       ; $40ef: $47
    sbc [hl]                                      ; $40f0: $9e
    ld l, l                                       ; $40f1: $6d
    db $fd                                        ; $40f2: $fd
    ld e, h                                       ; $40f3: $5c
    ld sp, hl                                     ; $40f4: $f9
    inc b                                         ; $40f5: $04

jr_06e_40f6:
    ld a, [hl+]                                   ; $40f6: $2a
    and h                                         ; $40f7: $a4
    db $db                                        ; $40f8: $db
    ld a, [$ebb9]                                 ; $40f9: $fa $b9 $eb
    ld b, a                                       ; $40fc: $47
    adc b                                         ; $40fd: $88
    ret c                                         ; $40fe: $d8

    ld a, e                                       ; $40ff: $7b
    dec l                                         ; $4100: $2d
    xor l                                         ; $4101: $ad
    jr c, @+$7f                                   ; $4102: $38 $7d

    add a                                         ; $4104: $87
    ei                                            ; $4105: $fb
    cp d                                          ; $4106: $ba
    db $dd                                        ; $4107: $dd
    db $10                                        ; $4108: $10
    add [hl]                                      ; $4109: $86
    cp $47                                        ; $410a: $fe $47
    sbc [hl]                                      ; $410c: $9e
    ld l, l                                       ; $410d: $6d
    rlca                                          ; $410e: $07
    rst $20                                       ; $410f: $e7
    xor c                                         ; $4110: $a9
    ld e, $b6                                     ; $4111: $1e $b6
    ret nc                                        ; $4113: $d0

    ld b, b                                       ; $4114: $40
    jp nz, $481e                                  ; $4115: $c2 $1e $48

    or h                                          ; $4118: $b4
    jp z, $8a59                                   ; $4119: $ca $59 $8a

    add [hl]                                      ; $411c: $86
    jr nc, jr_06e_4153                            ; $411d: $30 $34

    jp nc, $1c9a                                  ; $411f: $d2 $9a $1c

    ld [$0aa9], a                                 ; $4122: $ea $a9 $0a
    cp l                                          ; $4125: $bd
    ld [hl], h                                    ; $4126: $74
    nop                                           ; $4127: $00
    rst $10                                       ; $4128: $d7
    and b                                         ; $4129: $a0
    db $dd                                        ; $412a: $dd
    or [hl]                                       ; $412b: $b6
    xor l                                         ; $412c: $ad
    add c                                         ; $412d: $81
    ld b, h                                       ; $412e: $44
    ld d, a                                       ; $412f: $57
    and l                                         ; $4130: $a5
    dec b                                         ; $4131: $05
    scf                                           ; $4132: $37
    sub b                                         ; $4133: $90
    ld e, b                                       ; $4134: $58
    call nc, Call_000_3533                        ; $4135: $d4 $33 $35
    add h                                         ; $4138: $84
    and c                                         ; $4139: $a1
    ld l, [hl]                                    ; $413a: $6e
    cp c                                          ; $413b: $b9
    scf                                           ; $413c: $37
    ld c, $e7                                     ; $413d: $0e $e7
    xor c                                         ; $413f: $a9
    sub b                                         ; $4140: $90
    ld [c], a                                     ; $4141: $e2
    ld l, c                                       ; $4142: $69
    jr nz, jr_06e_40f6                            ; $4143: $20 $b1

    rst $38                                       ; $4145: $ff
    ld c, c                                       ; $4146: $49
    push hl                                       ; $4147: $e5
    xor l                                         ; $4148: $ad
    sub b                                         ; $4149: $90
    or [hl]                                       ; $414a: $b6
    inc e                                         ; $414b: $1c
    ld [hl], e                                    ; $414c: $73
    add h                                         ; $414d: $84
    dec d                                         ; $414e: $15
    sub l                                         ; $414f: $95
    ld [$e971], sp                                ; $4150: $08 $71 $e9

jr_06e_4153:
    nop                                           ; $4153: $00
    sub a                                         ; $4154: $97
    ld c, a                                       ; $4155: $4f
    ld h, e                                       ; $4156: $63
    jr z, jr_06e_41ac                             ; $4157: $28 $53

    jp $9d51                                      ; $4159: $c3 $51 $9d


    ld l, $2b                                     ; $415c: $2e $2b
    ld [c], a                                     ; $415e: $e2
    add l                                         ; $415f: $85
    and d                                         ; $4160: $a2
    jp z, $bf8b                                   ; $4161: $ca $8b $bf

    ld d, e                                       ; $4164: $53
    and e                                         ; $4165: $a3
    jp nc, $f0fe                                  ; $4166: $d2 $fe $f0

    xor b                                         ; $4169: $a8
    jp nc, $6955                                  ; $416a: $d2 $55 $69

    db $fd                                        ; $416d: $fd
    cpl                                           ; $416e: $2f
    adc l                                         ; $416f: $8d
    ld [hl], e                                    ; $4170: $73
    jp hl                                         ; $4171: $e9


    nop                                           ; $4172: $00
    sbc a                                         ; $4173: $9f
    inc h                                         ; $4174: $24
    cp d                                          ; $4175: $ba
    ld d, d                                       ; $4176: $52
    ld h, e                                       ; $4177: $63
    ld [hl], b                                    ; $4178: $70
    ld [hl], c                                    ; $4179: $71
    rst $30                                       ; $417a: $f7
    dec de                                        ; $417b: $1b
    rlca                                          ; $417c: $07
    sbc a                                         ; $417d: $9f
    or c                                          ; $417e: $b1
    ld hl, $894f                                  ; $417f: $21 $4f $89
    db $eb                                        ; $4182: $eb
    jp nc, $5701                                  ; $4183: $d2 $01 $57

    ld h, c                                       ; $4186: $61
    or $53                                        ; $4187: $f6 $53
    xor a                                         ; $4189: $af
    ld c, a                                       ; $418a: $4f
    adc h                                         ; $418b: $8c
    or h                                          ; $418c: $b4
    ld c, e                                       ; $418d: $4b
    ld a, l                                       ; $418e: $7d
    ld h, a                                       ; $418f: $67
    inc c                                         ; $4190: $0c
    push af                                       ; $4191: $f5
    ld d, e                                       ; $4192: $53
    ccf                                           ; $4193: $3f
    and $56                                       ; $4194: $e6 $56
    cp h                                          ; $4196: $bc
    rst $00                                       ; $4197: $c7
    sub $d4                                       ; $4198: $d6 $d4
    daa                                           ; $419a: $27
    ld b, e                                       ; $419b: $43
    adc [hl]                                      ; $419c: $8e
    inc l                                         ; $419d: $2c
    sbc d                                         ; $419e: $9a
    ld h, a                                       ; $419f: $67
    ld b, l                                       ; $41a0: $45
    or $bc                                        ; $41a1: $f6 $bc
    dec hl                                        ; $41a3: $2b
    rst $38                                       ; $41a4: $ff
    pop hl                                        ; $41a5: $e1
    ld d, a                                       ; $41a6: $57
    or $53                                        ; $41a7: $f6 $53
    inc [hl]                                      ; $41a9: $34
    ret c                                         ; $41aa: $d8

    adc b                                         ; $41ab: $88

jr_06e_41ac:
    ld a, [de]                                    ; $41ac: $1a
    sub l                                         ; $41ad: $95
    or $87                                        ; $41ae: $f6 $87
    rst $00                                       ; $41b0: $c7
    and l                                         ; $41b1: $a5
    ld a, $fd                                     ; $41b2: $3e $fd
    ld d, h                                       ; $41b4: $54
    jp Jump_06e_71c9                              ; $41b5: $c3 $c9 $71


    or h                                          ; $41b8: $b4
    xor b                                         ; $41b9: $a8
    ld h, e                                       ; $41ba: $63
    ld e, $6d                                     ; $41bb: $1e $6d
    ld [$d143], sp                                ; $41bd: $08 $43 $d1
    ld [hl], a                                    ; $41c0: $77
    ld l, l                                       ; $41c1: $6d
    adc c                                         ; $41c2: $89
    ld d, [hl]                                    ; $41c3: $56
    cp [hl]                                       ; $41c4: $be
    rst $00                                       ; $41c5: $c7
    ld d, $b6                                     ; $41c6: $16 $b6
    ld e, [hl]                                    ; $41c8: $5e
    ld a, $8d                                     ; $41c9: $3e $8d
    ld b, c                                       ; $41cb: $41
    ret nc                                        ; $41cc: $d0

    rst $38                                       ; $41cd: $ff
    db $ec                                        ; $41ce: $ec
    sub c                                         ; $41cf: $91
    dec c                                         ; $41d0: $0d
    ld h, c                                       ; $41d1: $61
    xor b                                         ; $41d2: $a8
    ld [hl-], a                                   ; $41d3: $32
    push de                                       ; $41d4: $d5
    adc a                                         ; $41d5: $8f
    cp c                                          ; $41d6: $b9
    dec d                                         ; $41d7: $15
    rst $28                                       ; $41d8: $ef
    or c                                          ; $41d9: $b1
    dec [hl]                                      ; $41da: $35
    db $db                                        ; $41db: $db
    ld bc, $a9e7                                  ; $41dc: $01 $e7 $a9
    rst $38                                       ; $41df: $ff
    ld c, c                                       ; $41e0: $49
    ld d, l                                       ; $41e1: $55
    ld e, d                                       ; $41e2: $5a
    dec e                                         ; $41e3: $1d
    sub [hl]                                      ; $41e4: $96
    ld d, [hl]                                    ; $41e5: $56
    and [hl]                                      ; $41e6: $a6
    push hl                                       ; $41e7: $e5
    pop hl                                        ; $41e8: $e1
    ld b, a                                       ; $41e9: $47
    and a                                         ; $41ea: $a7
    sbc [hl]                                      ; $41eb: $9e
    ld a, [de]                                    ; $41ec: $1a
    pop de                                        ; $41ed: $d1
    ccf                                           ; $41ee: $3f
    ld l, a                                       ; $41ef: $6f
    ld l, a                                       ; $41f0: $6f
    rlca                                          ; $41f1: $07
    rra                                           ; $41f2: $1f
    scf                                           ; $41f3: $37
    sub b                                         ; $41f4: $90
    ld e, b                                       ; $41f5: $58
    ld l, d                                       ; $41f6: $6a
    inc c                                         ; $41f7: $0c
    ld l, $e4                                     ; $41f8: $2e $e4
    db $e4                                        ; $41fa: $e4
    ld c, b                                       ; $41fb: $48
    ret                                           ; $41fc: $c9


    db $ec                                        ; $41fd: $ec
    rst $20                                       ; $41fe: $e7
    adc l                                         ; $41ff: $8d
    inc bc                                        ; $4200: $03
    sbc a                                         ; $4201: $9f
    or c                                          ; $4202: $b1
    ld hl, $894f                                  ; $4203: $21 $4f $89
    db $eb                                        ; $4206: $eb
    jp nc, Jump_000_1f01                          ; $4207: $d2 $01 $1f

    dec de                                        ; $420a: $1b
    inc b                                         ; $420b: $04

jr_06e_420c:
    dec e                                         ; $420c: $1d
    add e                                         ; $420d: $83
    and b                                         ; $420e: $a0
    ld d, a                                       ; $420f: $57
    ld h, c                                       ; $4210: $61
    or $53                                        ; $4211: $f6 $53
    xor a                                         ; $4213: $af
    ld c, a                                       ; $4214: $4f
    adc h                                         ; $4215: $8c
    or h                                          ; $4216: $b4
    ld c, e                                       ; $4217: $4b
    dec a                                         ; $4218: $3d
    ld c, a                                       ; $4219: $4f
    sbc l                                         ; $421a: $9d
    add [hl]                                      ; $421b: $86
    inc a                                         ; $421c: $3c
    dec h                                         ; $421d: $25
    ld l, $41                                     ; $421e: $2e $41
    xor a                                         ; $4220: $af
    pop bc                                        ; $4221: $c1
    jp $d7b1                                      ; $4222: $c3 $b1 $d7


    ld d, a                                       ; $4225: $57
    sub [hl]                                      ; $4226: $96
    call c, $ef0e                                 ; $4227: $dc $0e $ef
    adc h                                         ; $422a: $8c
    and c                                         ; $422b: $a1
    ld a, [hl]                                    ; $422c: $7e
    ld [$dcc7], a                                 ; $422d: $ea $c7 $dc
    adc d                                         ; $4230: $8a
    rst $30                                       ; $4231: $f7
    ret c                                         ; $4232: $d8

    sbc d                                         ; $4233: $9a
    ld a, [$c864]                                 ; $4234: $fa $64 $c8
    sub c                                         ; $4237: $91
    ld b, l                                       ; $4238: $45
    di                                            ; $4239: $f3
    xor h                                         ; $423a: $ac
    ret z                                         ; $423b: $c8

    sbc [hl]                                      ; $423c: $9e
    rst $10                                       ; $423d: $d7
    inc sp                                        ; $423e: $33
    ld b, a                                       ; $423f: $47
    sbc e                                         ; $4240: $9b
    ld a, d                                       ; $4241: $7a
    inc [hl]                                      ; $4242: $34
    ret c                                         ; $4243: $d8

    adc b                                         ; $4244: $88
    ld a, [de]                                    ; $4245: $1a
    sub l                                         ; $4246: $95
    or $87                                        ; $4247: $f6 $87
    add a                                         ; $4249: $87
    and b                                         ; $424a: $a0
    jp z, $dfe6                                   ; $424b: $ca $e6 $df

jr_06e_424e:
    xor c                                         ; $424e: $a9
    ld h, e                                       ; $424f: $63
    sbc c                                         ; $4250: $99
    ld c, a                                       ; $4251: $4f
    ret z                                         ; $4252: $c8

    or e                                          ; $4253: $b3
    push af                                       ; $4254: $f5
    jp hl                                         ; $4255: $e9


    and a                                         ; $4256: $a7
    ld a, [de]                                    ; $4257: $1a
    ld c, [hl]                                    ; $4258: $4e
    adc [hl]                                      ; $4259: $8e
    and e                                         ; $425a: $a3
    ld b, l                                       ; $425b: $45
    dec e                                         ; $425c: $1d
    di                                            ; $425d: $f3
    ld l, b                                       ; $425e: $68
    ld b, e                                       ; $425f: $43
    jr jr_06e_420c                                ; $4260: $18 $aa

    add hl, bc                                    ; $4262: $09
    sub l                                         ; $4263: $95
    ld d, b                                       ; $4264: $50
    ld d, h                                       ; $4265: $54
    adc [hl]                                      ; $4266: $8e
    sbc e                                         ; $4267: $9b
    add [hl]                                      ; $4268: $86
    add hl, hl                                    ; $4269: $29
    xor a                                         ; $426a: $af
    adc e                                         ; $426b: $8b
    cp a                                          ; $426c: $bf
    or e                                          ; $426d: $b3
    push af                                       ; $426e: $f5
    ld a, [c]                                     ; $426f: $f2
    ld l, c                                       ; $4270: $69
    inc c                                         ; $4271: $0c
    add d                                         ; $4272: $82
    cp $83                                        ; $4273: $fe $83
    dec de                                        ; $4275: $1b
    jp nz, Jump_06e_6550                          ; $4276: $c2 $50 $65

    xor d                                         ; $4279: $aa
    rra                                           ; $427a: $1f
    ld [hl], e                                    ; $427b: $73
    dec hl                                        ; $427c: $2b
    sbc $63                                       ; $427d: $de $63
    ld l, e                                       ; $427f: $6b
    or [hl]                                       ; $4280: $b6
    inc bc                                        ; $4281: $03
    rst $20                                       ; $4282: $e7
    xor c                                         ; $4283: $a9
    jp z, Jump_06e_40d5                           ; $4284: $ca $d5 $40

    ld h, d                                       ; $4287: $62
    inc hl                                        ; $4288: $23
    ld e, l                                       ; $4289: $5d
    or c                                          ; $428a: $b1
    sbc a                                         ; $428b: $9f
    jp nc, $d705                                  ; $428c: $d2 $05 $d7

    ld [hl], b                                    ; $428f: $70
    xor h                                         ; $4290: $ac
    ld [$d5a4], sp                                ; $4291: $08 $a4 $d5
    ld l, l                                       ; $4294: $6d
    db $db                                        ; $4295: $db
    jp z, Jump_06e_70d4                           ; $4296: $ca $d4 $70

    ld d, h                                       ; $4299: $54
    and a                                         ; $429a: $a7
    sub e                                         ; $429b: $93
    cp $eb                                        ; $429c: $fe $eb
    adc c                                         ; $429e: $89
    ld a, l                                       ; $429f: $7d
    or [hl]                                       ; $42a0: $b6
    inc bc                                        ; $42a1: $03
    scf                                           ; $42a2: $37
    or b                                          ; $42a3: $b0

jr_06e_42a4:
    jr nz, jr_06e_424e                            ; $42a4: $20 $a8

    ld h, d                                       ; $42a6: $62
    ld b, c                                       ; $42a7: $41
    ld d, b                                       ; $42a8: $50
    push bc                                       ; $42a9: $c5
    ld b, d                                       ; $42aa: $42
    dec a                                         ; $42ab: $3d
    dec sp                                        ; $42ac: $3b
    reti                                          ; $42ad: $d9


    or e                                          ; $42ae: $b3
    call nc, $feb8                                ; $42af: $d4 $b8 $fe
    or h                                          ; $42b2: $b4
    db $ed                                        ; $42b3: $ed
    nop                                           ; $42b4: $00
    sub a                                         ; $42b5: $97
    rst $28                                       ; $42b6: $ef
    ld l, $35                                     ; $42b7: $2e $35
    ld b, $f7                                     ; $42b9: $06 $f7
    ccf                                           ; $42bb: $3f
    ld a, [c]                                     ; $42bc: $f2
    db $ec                                        ; $42bd: $ec
    jp nc, Jump_06e_6f01                          ; $42be: $d2 $01 $6f

    inc hl                                        ; $42c1: $23
    ei                                            ; $42c2: $fb
    ld l, c                                       ; $42c3: $69
    ld [hl], d                                    ; $42c4: $72
    dec c                                         ; $42c5: $0d
    and c                                         ; $42c6: $a1
    jp z, $cd35                                   ; $42c7: $ca $35 $cd

    inc de                                        ; $42ca: $13
    sub e                                         ; $42cb: $93
    push hl                                       ; $42cc: $e5
    ld de, $ff34                                  ; $42cd: $11 $34 $ff
    ld c, [hl]                                    ; $42d0: $4e
    cpl                                           ; $42d1: $2f
    ld [$7d7a], sp                                ; $42d2: $08 $7a $7d
    ld h, d                                       ; $42d5: $62
    and h                                         ; $42d6: $a4
    cp l                                          ; $42d7: $bd
    pop de                                        ; $42d8: $d1
    rst $30                                       ; $42d9: $f7
    inc [hl]                                      ; $42da: $34

jr_06e_42db:
    ld c, [hl]                                    ; $42db: $4e
    sub a                                         ; $42dc: $97
    dec b                                         ; $42dd: $05
    ld d, a                                       ; $42de: $57
    ld h, $8d                                     ; $42df: $26 $8d
    or b                                          ; $42e1: $b0
    ld a, $df                                     ; $42e2: $3e $df
    ld [hl], b                                    ; $42e4: $70
    ld [hl], d                                    ; $42e5: $72
    inc e                                         ; $42e6: $1c
    db $ed                                        ; $42e7: $ed
    sbc l                                         ; $42e8: $9d
    push de                                       ; $42e9: $d5
    add h                                         ; $42ea: $84
    ld c, d                                       ; $42eb: $4a
    jr z, jr_06e_42a4                             ; $42ec: $28 $b6

    ld e, [hl]                                    ; $42ee: $5e
    ld a, $8d                                     ; $42ef: $3e $8d
    and c                                         ; $42f1: $a1
    rst $38                                       ; $42f2: $ff
    reti                                          ; $42f3: $d9


    inc hl                                        ; $42f4: $23
    dec de                                        ; $42f5: $1b
    jp nz, Jump_06e_5450                          ; $42f6: $c2 $50 $54

    jp nz, $d2e1                                  ; $42f9: $c2 $e1 $d2

    ld bc, $3be7                                  ; $42fc: $01 $e7 $3b
    or l                                          ; $42ff: $b5
    ld e, b                                       ; $4300: $58
    reti                                          ; $4301: $d9


    and e                                         ; $4302: $a3
    call nc, Call_000_3bf8                        ; $4303: $d4 $f8 $3b
    call $c8d4                                    ; $4306: $cd $d4 $c8
    ld [hl+], a                                   ; $4309: $22
    ld a, e                                       ; $430a: $7b
    ret c                                         ; $430b: $d8

    dec de                                        ; $430c: $1b
    dec a                                         ; $430d: $3d
    ld c, a                                       ; $430e: $4f
    call $d3bf                                    ; $430f: $cd $bf $d3
    ld [hl], b                                    ; $4312: $70
    ld d, h                                       ; $4313: $54
    and a                                         ; $4314: $a7
    rst $38                                       ; $4315: $ff
    or e                                          ; $4316: $b3
    daa                                           ; $4317: $27
    or $d1                                        ; $4318: $f6 $d1
    db $ed                                        ; $431a: $ed
    nop                                           ; $431b: $00
    scf                                           ; $431c: $37
    ld b, a                                       ; $431d: $47
    sbc [hl]                                      ; $431e: $9e
    dec [hl]                                      ; $431f: $35
    rst $38                                       ; $4320: $ff
    ld c, [hl]                                    ; $4321: $4e
    jp $acf1                                      ; $4322: $c3 $f1 $ac


    or d                                          ; $4325: $b2
    ld d, h                                       ; $4326: $54
    add hl, sp                                    ; $4327: $39
    reti                                          ; $4328: $d9


    db $d3                                        ; $4329: $d3
    ld [$b759], a                                 ; $432a: $ea $59 $b7
    ld e, h                                       ; $432d: $5c
    ld b, e                                       ; $432e: $43
    jr jr_06e_42db                                ; $432f: $18 $aa

    ld [hl], h                                    ; $4331: $74
    and c                                         ; $4332: $a1
    ld [hl], c                                    ; $4333: $71
    dec sp                                        ; $4334: $3b
    nop                                           ; $4335: $00
    rst $20                                       ; $4336: $e7
    xor c                                         ; $4337: $a9
    ld e, b                                       ; $4338: $58
    reti                                          ; $4339: $d9


    and e                                         ; $433a: $a3
    rst $38                                       ; $433b: $ff
    ld c, c                                       ; $433c: $49
    ld h, l                                       ; $433d: $65
    sub [hl]                                      ; $433e: $96
    sub e                                         ; $433f: $93
    and e                                         ; $4340: $a3
    dec b                                         ; $4341: $05
    ccf                                           ; $4342: $3f
    or c                                          ; $4343: $b1
    rst $08                                       ; $4344: $cf
    and l                                         ; $4345: $a5
    inc bc                                        ; $4346: $03
    rst $20                                       ; $4347: $e7
    xor c                                         ; $4348: $a9
    ld c, d                                       ; $4349: $4a
    db $e3                                        ; $434a: $e3
    xor d                                         ; $434b: $aa
    jp $9ed2                                      ; $434c: $c3 $d2 $9e


    sbc b                                         ; $434f: $98
    ld l, c                                       ; $4350: $69
    and e                                         ; $4351: $a3
    ld d, e                                       ; $4352: $53
    ld h, l                                       ; $4353: $65
    rst $38                                       ; $4354: $ff
    inc hl                                        ; $4355: $23
    rst $08                                       ; $4356: $cf
    xor d                                         ; $4357: $aa
    inc l                                         ; $4358: $2c
    ld [hl], e                                    ; $4359: $73
    inc [hl]                                      ; $435a: $34
    sbc [hl]                                      ; $435b: $9e
    ld h, b                                       ; $435c: $60
    add d                                         ; $435d: $82
    ld a, [hl+]                                   ; $435e: $2a
    cp a                                          ; $435f: $bf
    ld b, a                                       ; $4360: $47
    inc bc                                        ; $4361: $03
    adc c                                         ; $4362: $89
    xor [hl]                                      ; $4363: $ae
    and d                                         ; $4364: $a2
    or c                                          ; $4365: $b1
    db $ed                                        ; $4366: $ed
    nop                                           ; $4367: $00
    rst $20                                       ; $4368: $e7

jr_06e_4369:
    xor c                                         ; $4369: $a9
    ld sp, hl                                     ; $436a: $f9
    ld [hl], a                                    ; $436b: $77
    ld a, [$f7e7]                                 ; $436c: $fa $e7 $f7
    db $d3                                        ; $436f: $d3
    cp h                                          ; $4370: $bc
    ld a, [c]                                     ; $4371: $f2
    add hl, hl                                    ; $4372: $29
    ld e, l                                       ; $4373: $5d
    ld [hl], b                                    ; $4374: $70
    add d                                         ; $4375: $82
    add [hl]                                      ; $4376: $86
    ld [hl], $22                                  ; $4377: $36 $22
    xor d                                         ; $4379: $aa
    adc [hl]                                      ; $437a: $8e
    ld l, l                                       ; $437b: $6d
    rlca                                          ; $437c: $07
    rra                                           ; $437d: $1f
    pop de                                        ; $437e: $d1
    sub l                                         ; $437f: $95
    ld l, c                                       ; $4380: $69
    db $eb                                        ; $4381: $eb
    dec [hl]                                      ; $4382: $35
    ld l, b                                       ; $4383: $68
    or c                                          ; $4384: $b1
    sbc a                                         ; $4385: $9f
    jp nc, Jump_06e_5705                          ; $4386: $d2 $05 $57

    ld l, d                                       ; $4389: $6a
    inc c                                         ; $438a: $0c
    xor [hl]                                      ; $438b: $ae
    or d                                          ; $438c: $b2
    call nc, $e253                                ; $438d: $d4 $53 $e2
    ld [hl-], a                                   ; $4390: $32
    ld h, h                                       ; $4391: $64
    ccf                                           ; $4392: $3f
    dec c                                         ; $4393: $0d
    rst $00                                       ; $4394: $c7
    adc d                                         ; $4395: $8a
    ld b, b                                       ; $4396: $40
    ld e, d                                       ; $4397: $5a
    add d                                         ; $4398: $82
    or d                                          ; $4399: $b2
    ld c, h                                       ; $439a: $4c
    dec c                                         ; $439b: $0d
    inc h                                         ; $439c: $24
    jp c, Jump_000_2154                           ; $439d: $da $54 $21

    and h                                         ; $43a0: $a4
    dec [hl]                                      ; $43a1: $35
    sub b                                         ; $43a2: $90
    add sp, $7a                                   ; $43a3: $e8 $7a
    ld h, c                                       ; $43a5: $61
    dec sp                                        ; $43a6: $3b
    nop                                           ; $43a7: $00
    rst $20                                       ; $43a8: $e7
    dec sp                                        ; $43a9: $3b
    or l                                          ; $43aa: $b5
    jp nz, $027d                                  ; $43ab: $c2 $7d $02

    adc c                                         ; $43ae: $89
    jr nc, jr_06e_4369                            ; $43af: $30 $b8

    ld d, d                                       ; $43b1: $52
    inc hl                                        ; $43b2: $23
    dec hl                                        ; $43b3: $2b
    rst $00                                       ; $43b4: $c7
    adc h                                         ; $43b5: $8c
    ld a, [hl]                                    ; $43b6: $7e
    xor h                                         ; $43b7: $ac
    db $db                                        ; $43b8: $db
    or [hl]                                       ; $43b9: $b6
    sub l                                         ; $43ba: $95
    xor c                                         ; $43bb: $a9
    ld sp, hl                                     ; $43bc: $f9
    ld [hl], a                                    ; $43bd: $77
    ld a, [bc]                                    ; $43be: $0a
    add hl, hl                                    ; $43bf: $29
    sbc [hl]                                      ; $43c0: $9e
    ld b, $12                                     ; $43c1: $06 $12
    ei                                            ; $43c3: $fb
    sbc a                                         ; $43c4: $9f
    ld d, h                                       ; $43c5: $54
    add hl, sp                                    ; $43c6: $39
    ld e, c                                       ; $43c7: $59
    ld a, c                                       ; $43c8: $79
    ld c, d                                       ; $43c9: $4a
    rr d                                          ; $43ca: $cb $1a
    ld b, d                                       ; $43cc: $42
    dec d                                         ; $43cd: $15
    sub $70                                       ; $43ce: $d6 $70
    xor h                                         ; $43d0: $ac
    call c, $dba9                                 ; $43d1: $dc $a9 $db
    ld bc, $c597                                  ; $43d4: $01 $97 $c5
    ld sp, hl                                     ; $43d7: $f9
    adc l                                         ; $43d8: $8d
    ld e, [hl]                                    ; $43d9: $5e
    sbc $4f                                       ; $43da: $de $4f
    ret                                           ; $43dc: $c9


    and c                                         ; $43dd: $a1
    ld [hl], d                                    ; $43de: $72
    sub [hl]                                      ; $43df: $96
    and d                                         ; $43e0: $a2
    pop de                                        ; $43e1: $d1
    add $09                                       ; $43e2: $c6 $09
    daa                                           ; $43e4: $27
    sub l                                         ; $43e5: $95
    xor [hl]                                      ; $43e6: $ae
    ld l, [hl]                                    ; $43e7: $6e
    cp c                                          ; $43e8: $b9
    db $ed                                        ; $43e9: $ed
    nop                                           ; $43ea: $00
    sub a                                         ; $43eb: $97
    push bc                                       ; $43ec: $c5
    add d                                         ; $43ed: $82
    ld e, [hl]                                    ; $43ee: $5e
    add l                                         ; $43ef: $85
    reti                                          ; $43f0: $d9


    ld c, a                                       ; $43f1: $4f
    cp l                                          ; $43f2: $bd
    ld a, $31                                     ; $43f3: $3e $31
    jp nc, $deb6                                  ; $43f5: $d2 $b6 $de

    inc e                                         ; $43f8: $1c
    ld a, c                                       ; $43f9: $79
    ld d, [hl]                                    ; $43fa: $56
    ld l, d                                       ; $43fb: $6a
    inc c                                         ; $43fc: $0c
    xor [hl]                                      ; $43fd: $ae
    inc e                                         ; $43fe: $1c
    ld d, a                                       ; $43ff: $57
    ld d, h                                       ; $4400: $54
    ld [hl+], a                                   ; $4401: $22
    ld b, h                                       ; $4402: $44
    dec a                                         ; $4403: $3d
    xor e                                         ; $4404: $ab
    ld c, h                                       ; $4405: $4c
    dec c                                         ; $4406: $0d
    or c                                          ; $4407: $b1
    inc b                                         ; $4408: $04
    ld h, l                                       ; $4409: $65
    ld d, c                                       ; $440a: $51
    ld l, d                                       ; $440b: $6a
    inc c                                         ; $440c: $0c
    ld l, [hl]                                    ; $440d: $6e
    ld d, d                                       ; $440e: $52
    ld h, h                                       ; $440f: $64
    ccf                                           ; $4410: $3f
    push af                                       ; $4411: $f5
    xor b                                         ; $4412: $a8
    and e                                         ; $4413: $a3
    ld a, [hl-]                                   ; $4414: $3a
    ld d, h                                       ; $4415: $54
    inc [hl]                                      ; $4416: $34
    and $d0                                       ; $4417: $e6 $d0
    ld b, b                                       ; $4419: $40
    ld h, d                                       ; $441a: $62
    cp c                                          ; $441b: $b9
    or e                                          ; $441c: $b3
    ld c, c                                       ; $441d: $49
    daa                                           ; $441e: $27
    ld l, l                                       ; $441f: $6d
    ld a, l                                       ; $4420: $7d
    cp [hl]                                       ; $4421: $be
    pop hl                                        ; $4422: $e1
    db $e4                                        ; $4423: $e4
    jr c, jr_06e_4480                             ; $4424: $38 $5a

    call nc, $8f31                                ; $4426: $d4 $31 $8f
    ld [hl], $84                                  ; $4429: $36 $84
    and c                                         ; $442b: $a1
    sbc d                                         ; $442c: $9a
    ld d, b                                       ; $442d: $50
    add hl, bc                                    ; $442e: $09
    ld b, l                                       ; $442f: $45
    jp Jump_06e_52b1                              ; $4430: $c3 $b1 $52


    inc hl                                        ; $4433: $23
    xor h                                         ; $4434: $ac
    and d                                         ; $4435: $a2
    ld sp, $b3d4                                  ; $4436: $31 $d4 $b3
    jp z, Jump_000_3f54                           ; $4439: $ca $54 $3f

    and $56                                       ; $443c: $e6 $56
    cp h                                          ; $443e: $bc
    rst $00                                       ; $443f: $c7
    sub $d4                                       ; $4440: $d6 $d4
    daa                                           ; $4442: $27
    ld b, e                                       ; $4443: $43
    adc [hl]                                      ; $4444: $8e
    inc l                                         ; $4445: $2c
    sbc d                                         ; $4446: $9a
    ld h, a                                       ; $4447: $67
    ld b, l                                       ; $4448: $45
    ld l, [hl]                                    ; $4449: $6e
    rlca                                          ; $444a: $07
    sbc a                                         ; $444b: $9f
    cp e                                          ; $444c: $bb
    cp $b9                                        ; $444d: $fe $b9
    adc e                                         ; $444f: $8b
    and a                                         ; $4450: $a7
    call nc, $bb90                                ; $4451: $d4 $90 $bb
    ld a, b                                       ; $4454: $78
    or [hl]                                       ; $4455: $b6
    ld a, [hl]                                    ; $4456: $7e
    call c, Call_06e_6240                         ; $4457: $dc $40 $62
    cp c                                          ; $445a: $b9
    or e                                          ; $445b: $b3
    call nc, Call_06e_5c18                        ; $445c: $d4 $18 $5c
    ld de, $336e                                  ; $445f: $11 $6e $33
    ei                                            ; $4462: $fb
    ld l, c                                       ; $4463: $69
    and [hl]                                      ; $4464: $a6
    ld b, [hl]                                    ; $4465: $46
    ld d, h                                       ; $4466: $54
    or c                                          ; $4467: $b1
    and e                                         ; $4468: $a3
    ld a, a                                       ; $4469: $7f
    call c, Call_06e_785e                         ; $446a: $dc $5e $78
    db $e3                                        ; $446d: $e3
    nop                                           ; $446e: $00
    rra                                           ; $446f: $1f
    ld l, e                                       ; $4470: $6b
    ld h, a                                       ; $4471: $67
    rla                                           ; $4472: $17
    adc a                                         ; $4473: $8f
    sub $73                                       ; $4474: $d6 $73
    ld b, a                                       ; $4476: $47
    push af                                       ; $4477: $f5
    ld [hl], a                                    ; $4478: $77
    ld a, [hl+]                                   ; $4479: $2a
    rst $00                                       ; $447a: $c7
    ld c, l                                       ; $447b: $4d
    ld b, a                                       ; $447c: $47
    db $eb                                        ; $447d: $eb
    sbc b                                         ; $447e: $98
    or h                                          ; $447f: $b4

jr_06e_4480:
    db $db                                        ; $4480: $db
    or [hl]                                       ; $4481: $b6
    sub l                                         ; $4482: $95
    push hl                                       ; $4483: $e5
    adc $46                                       ; $4484: $ce $46
    cp d                                          ; $4486: $ba
    ld c, [hl]                                    ; $4487: $4e
    dec e                                         ; $4488: $1d
    ld d, e                                       ; $4489: $53
    dec h                                         ; $448a: $25
    add h                                         ; $448b: $84
    call c, $eb67                                 ; $448c: $dc $67 $eb
    ld [hl], l                                    ; $448f: $75
    xor h                                         ; $4490: $ac
    scf                                           ; $4491: $37
    ld a, d                                       ; $4492: $7a
    db $ed                                        ; $4493: $ed
    sub a                                         ; $4494: $97
    ld l, a                                       ; $4495: $6f
    inc e                                         ; $4496: $1c
    rst $20                                       ; $4497: $e7
    add hl, sp                                    ; $4498: $39
    cp $8e                                        ; $4499: $fe $8e
    and b                                         ; $449b: $a0
    rst $38                                       ; $449c: $ff
    sub c                                         ; $449d: $91
    ld h, a                                       ; $449e: $67
    push af                                       ; $449f: $f5
    ld d, h                                       ; $44a0: $54
    add hl, sp                                    ; $44a1: $39
    ld b, d                                       ; $44a2: $42
    ld e, e                                       ; $44a3: $5b
    xor c                                         ; $44a4: $a9
    and e                                         ; $44a5: $a3
    dec c                                         ; $44a6: $0d
    dec c                                         ; $44a7: $0d
    or a                                          ; $44a8: $b7
    ld l, c                                       ; $44a9: $69
    call nc, $e9fa                                ; $44aa: $d4 $fa $e9
    cp c                                          ; $44ad: $b9
    add [hl]                                      ; $44ae: $86
    call c, $53c5                                 ; $44af: $dc $c5 $53
    rst $08                                       ; $44b2: $cf
    ld a, [hl]                                    ; $44b3: $7e
    db $fc                                        ; $44b4: $fc
    dec a                                         ; $44b5: $3d
    sub l                                         ; $44b6: $95
    ld a, [hl]                                    ; $44b7: $7e

jr_06e_44b8:
    dec sp                                        ; $44b8: $3b
    nop                                           ; $44b9: $00
    rst $10                                       ; $44ba: $d7
    ld l, l                                       ; $44bb: $6d
    ld b, h                                       ; $44bc: $44
    ld d, h                                       ; $44bd: $54
    dec e                                         ; $44be: $1d
    db $eb                                        ; $44bf: $eb
    db $db                                        ; $44c0: $db
    ret                                           ; $44c1: $c9


    add hl, bc                                    ; $44c2: $09
    ld [hl], a                                    ; $44c3: $77
    ld a, [$5e31]                                 ; $44c4: $fa $31 $5e
    ld [$ecdb], a                                 ; $44c7: $ea $db $ec
    ld h, h                                       ; $44ca: $64
    rst $08                                       ; $44cb: $cf
    ld c, [hl]                                    ; $44cc: $4e
    sub l                                         ; $44cd: $95
    ld e, c                                       ; $44ce: $59
    inc a                                         ; $44cf: $3c
    ld d, [hl]                                    ; $44d0: $56
    add h                                         ; $44d1: $84
    jr nc, jr_06e_451e                            ; $44d2: $30 $4a

    and [hl]                                      ; $44d4: $a6
    scf                                           ; $44d5: $37
    ld c, $e7                                     ; $44d6: $0e $e7
    xor c                                         ; $44d8: $a9
    ld sp, hl                                     ; $44d9: $f9
    ld [hl], a                                    ; $44da: $77
    ld a, [de]                                    ; $44db: $1a
    ld a, [de]                                    ; $44dc: $1a
    push hl                                       ; $44dd: $e5
    jp nc, Jump_06e_67a9                          ; $44de: $d2 $a9 $67

    sub e                                         ; $44e1: $93
    ld b, e                                       ; $44e2: $43
    dec h                                         ; $44e3: $25
    ld b, d                                       ; $44e4: $42
    inc [hl]                                      ; $44e5: $34
    add h                                         ; $44e6: $84
    and c                                         ; $44e7: $a1
    adc [hl]                                      ; $44e8: $8e
    adc l                                         ; $44e9: $8d
    ld h, e                                       ; $44ea: $63
    add hl, de                                    ; $44eb: $19
    sub $95                                       ; $44ec: $d6 $95
    rst $38                                       ; $44ee: $ff
    ld c, e                                       ; $44ef: $4b
    rst $28                                       ; $44f0: $ef
    cp $73                                        ; $44f1: $fe $73
    rst $18                                       ; $44f3: $df
    ld a, d                                       ; $44f4: $7a
    ld [hl], e                                    ; $44f5: $73
    db $e4                                        ; $44f6: $e4
    ld e, c                                       ; $44f7: $59
    cpl                                           ; $44f8: $2f
    ld d, h                                       ; $44f9: $54
    ld [hl+], a                                   ; $44fa: $22
    call nz, Call_06e_7aed                        ; $44fb: $c4 $ed $7a
    ld d, [hl]                                    ; $44fe: $56
    ld c, [hl]                                    ; $44ff: $4e
    sub [hl]                                      ; $4500: $96
    ld a, e                                       ; $4501: $7b
    ld e, d                                       ; $4502: $5a
    sub $69                                       ; $4503: $d6 $69
    jr nz, jr_06e_44b8                            ; $4505: $20 $b1

    db $d3                                        ; $4507: $d3
    ld [hl], e                                    ; $4508: $73
    dec c                                         ; $4509: $0d
    cp c                                          ; $450a: $b9
    adc e                                         ; $450b: $8b
    and a                                         ; $450c: $a7
    sbc [hl]                                      ; $450d: $9e
    db $fd                                        ; $450e: $fd
    ld hl, sp+$7b                                 ; $450f: $f8 $7b
    ld a, [hl+]                                   ; $4511: $2a
    ld a, l                                       ; $4512: $7d
    inc hl                                        ; $4513: $23
    db $eb                                        ; $4514: $eb
    ld b, [hl]                                    ; $4515: $46
    and e                                         ; $4516: $a3
    ld c, l                                       ; $4517: $4d
    ld a, d                                       ; $4518: $7a
    db $e3                                        ; $4519: $e3
    nop                                           ; $451a: $00
    rst $10                                       ; $451b: $d7
    sbc b                                         ; $451c: $98

jr_06e_451d:
    or h                                          ; $451d: $b4

jr_06e_451e:
    ld hl, $be96                                  ; $451e: $21 $96 $be
    ld [hl], c                                    ; $4521: $71
    nop                                           ; $4522: $00
    rst $20                                       ; $4523: $e7
    dec sp                                        ; $4524: $3b
    sbc e                                         ; $4525: $9b
    ld b, a                                       ; $4526: $47
    db $eb                                        ; $4527: $eb
    ld b, [hl]                                    ; $4528: $46
    and e                                         ; $4529: $a3
    and c                                         ; $452a: $a1
    ld d, e                                       ; $452b: $53
    ld c, a                                       ; $452c: $4f
    push hl                                       ; $452d: $e5
    rst $30                                       ; $452e: $f7
    ld d, e                                       ; $452f: $53
    add a                                         ; $4530: $87
    and l                                         ; $4531: $a5
    cp l                                          ; $4532: $bd
    dec sp                                        ; $4533: $3b
    rst $00                                       ; $4534: $c7
    push hl                                       ; $4535: $e5

jr_06e_4536:
    and [hl]                                      ; $4536: $a6
    sbc [hl]                                      ; $4537: $9e
    call Call_000_3aa3                            ; $4538: $cd $a3 $3a
    ld e, d                                       ; $453b: $5a
    add hl, sp                                    ; $453c: $39
    add [hl]                                      ; $453d: $86
    adc e                                         ; $453e: $8b
    rst $30                                       ; $453f: $f7
    ld d, d                                       ; $4540: $52
    dec b                                         ; $4541: $05
    ld [hl], l                                    ; $4542: $75
    ret nc                                        ; $4543: $d0

    and $df                                       ; $4544: $e6 $df
    add hl, hl                                    ; $4546: $29
    ld a, [$79a7]                                 ; $4547: $fa $a7 $79
    ld a, b                                       ; $454a: $78
    ld l, [hl]                                    ; $454b: $6e
    dec a                                         ; $454c: $3d
    rst $18                                       ; $454d: $df
    ld e, c                                       ; $454e: $59
    and l                                         ; $454f: $a5
    dec b                                         ; $4550: $05
    ld [hl], a                                    ; $4551: $77
    rst $20                                       ; $4552: $e7
    rra                                           ; $4553: $1f
    ld a, [hl]                                    ; $4554: $7e
    ld a, [de]                                    ; $4555: $1a
    jp nz, $e4d0                                  ; $4556: $c2 $d0 $e4

    ret nc                                        ; $4559: $d0

    inc a                                         ; $455a: $3c
    ld a, a                                       ; $455b: $7f
    ld d, h                                       ; $455c: $54
    ld b, d                                       ; $455d: $42
    ld d, c                                       ; $455e: $51
    jr c, jr_06e_45c5                             ; $455f: $38 $64

    pop af                                        ; $4561: $f1
    xor a                                         ; $4562: $af
    and b                                         ; $4563: $a0
    pop hl                                        ; $4564: $e1
    ld e, b                                       ; $4565: $58
    dec c                                         ; $4566: $0d
    or a                                          ; $4567: $b7
    rst $28                                       ; $4568: $ef
    and l                                         ; $4569: $a5
    ld [hl], $90                                  ; $456a: $36 $90
    ld e, b                                       ; $456c: $58
    and [hl]                                      ; $456d: $a6
    and $df                                       ; $456e: $e6 $df
    ld l, c                                       ; $4570: $69

Jump_06e_4571:
    jr c, jr_06e_451d                             ; $4571: $38 $aa

    ld d, e                                       ; $4573: $53
    add hl, sp                                    ; $4574: $39

jr_06e_4575:
    add hl, sp                                    ; $4575: $39
    jp nz, $fe8a                                  ; $4576: $c2 $8a $fe

    ld b, a                                       ; $4579: $47
    sbc [hl]                                      ; $457a: $9e
    ld l, l                                       ; $457b: $6d
    cp l                                          ; $457c: $bd
    ld a, h                                       ; $457d: $7c
    ld a, [de]                                    ; $457e: $1a
    add e                                         ; $457f: $83
    and b                                         ; $4580: $a0
    pop hl                                        ; $4581: $e1
    ld e, b                                       ; $4582: $58
    jr nz, jr_06e_4536                            ; $4583: $20 $b1

    rst $38                                       ; $4585: $ff
    sub c                                         ; $4586: $91
    ld h, a                                       ; $4587: $67
    call $d3bf                                    ; $4588: $cd $bf $d3
    rst $38                                       ; $458b: $ff
    db $ec                                        ; $458c: $ec
    ld de, $610d                                  ; $458d: $11 $0d $61
    jr z, jr_06e_45bc                             ; $4590: $28 $2a

    pop hl                                        ; $4592: $e1
    or b                                          ; $4593: $b0
    push af                                       ; $4594: $f5
    cp h                                          ; $4595: $bc
    ld c, c                                       ; $4596: $49
    ld e, c                                       ; $4597: $59
    ld d, h                                       ; $4598: $54
    ld [hl+], a                                   ; $4599: $22
    call nz, $9bd6                                ; $459a: $c4 $d6 $9b
    inc hl                                        ; $459d: $23
    rst $08                                       ; $459e: $cf
    ld a, [de]                                    ; $459f: $1a
    adc [hl]                                      ; $45a0: $8e
    ld h, a                                       ; $45a1: $67
    sub l                                         ; $45a2: $95

Call_06e_45a3:
    ld h, l                                       ; $45a3: $65
    sub [hl]                                      ; $45a4: $96
    add $2c                                       ; $45a5: $c6 $2c
    ld h, c                                       ; $45a7: $61
    dec c                                         ; $45a8: $0d
    rst $00                                       ; $45a9: $c7
    ld c, d                                       ; $45aa: $4a
    adc l                                         ; $45ab: $8d
    or b                                          ; $45ac: $b0
    adc d                                         ; $45ad: $8a
    add $50                                       ; $45ae: $c6 $50
    ccf                                           ; $45b0: $3f
    push af                                       ; $45b1: $f5
    ld h, e                                       ; $45b2: $63
    ld l, [hl]                                    ; $45b3: $6e
    push bc                                       ; $45b4: $c5
    ld a, e                                       ; $45b5: $7b
    ld l, h                                       ; $45b6: $6c
    ld c, l                                       ; $45b7: $4d
    rst $28                                       ; $45b8: $ef
    inc l                                         ; $45b9: $2c
    ld d, l                                       ; $45ba: $55
    ld d, c                                       ; $45bb: $51

jr_06e_45bc:
    pop af                                        ; $45bc: $f1
    jr jr_06e_4575                                ; $45bd: $18 $b6

    inc bc                                        ; $45bf: $03
    rst $10                                       ; $45c0: $d7
    and b                                         ; $45c1: $a0
    sbc l                                         ; $45c2: $9d
    sbc $c8                                       ; $45c3: $de $c8

jr_06e_45c5:
    ld [$6dd9], sp                                ; $45c5: $08 $d9 $6d
    db $db                                        ; $45c8: $db
    ld c, $e7                                     ; $45c9: $0e $e7
    xor c                                         ; $45cb: $a9
    ld d, e                                       ; $45cc: $53
    add a                                         ; $45cd: $87
    db $ec                                        ; $45ce: $ec
    cp c                                          ; $45cf: $b9
    ld a, [de]                                    ; $45d0: $1a
    jp nz, Jump_06e_5450                          ; $45d1: $c2 $50 $54

    jp nz, $11a1                                  ; $45d4: $c2 $a1 $11

    ld c, [hl]                                    ; $45d7: $4e
    ld a, b                                       ; $45d8: $78
    pop bc                                        ; $45d9: $c1
    ld l, l                                       ; $45da: $6d
    rlca                                          ; $45db: $07
    rst $20                                       ; $45dc: $e7
    xor c                                         ; $45dd: $a9
    ldh a, [$63]                                  ; $45de: $f0 $63
    or b                                          ; $45e0: $b0
    add l                                         ; $45e1: $85
    ld a, [hl+]                                   ; $45e2: $2a
    add h                                         ; $45e3: $84
    or h                                          ; $45e4: $b4
    ld [$8d08], a                                 ; $45e5: $ea $08 $8d
    sbc l                                         ; $45e8: $9d
    ld b, $12                                     ; $45e9: $06 $12
    ld a, e                                       ; $45eb: $7b
    and c                                         ; $45ec: $a1
    ld d, h                                       ; $45ed: $54
    ld h, l                                       ; $45ee: $65
    rst $30                                       ; $45ef: $f7
    push af                                       ; $45f0: $f5
    or a                                          ; $45f1: $b7
    reti                                          ; $45f2: $d9


    ld c, $6f                                     ; $45f3: $0e $6f
    adc l                                         ; $45f5: $8d
    ld l, e                                       ; $45f6: $6b
    inc [hl]                                      ; $45f7: $34
    ld [$8bb1], sp                                ; $45f8: $08 $b1 $8b
    ld b, a                                       ; $45fb: $47
    ret nc                                        ; $45fc: $d0

    ld l, e                                       ; $45fd: $6b
    ldh a, [rSVBK]                                ; $45fe: $f0 $70
    db $ec                                        ; $4600: $ec
    ld b, a                                       ; $4601: $47
    ld h, e                                       ; $4602: $63
    ret c                                         ; $4603: $d8

    ld c, $97                                     ; $4604: $0e $97
    or l                                          ; $4606: $b5
    and d                                         ; $4607: $a2
    dec bc                                        ; $4608: $0b
    or [hl]                                       ; $4609: $b6
    and b                                         ; $460a: $a0
    push af                                       ; $460b: $f5
    db $ec                                        ; $460c: $ec
    push af                                       ; $460d: $f5
    ld h, b                                       ; $460e: $60
    sub l                                         ; $460f: $95
    add e                                         ; $4610: $83
    and $df                                       ; $4611: $e6 $df
    xor c                                         ; $4613: $a9
    cp $4e                                        ; $4614: $fe $4e
    db $e3                                        ; $4616: $e3
    rst $28                                       ; $4617: $ef
    call nc, Call_000_3faf                        ; $4618: $d4 $af $3f
    dec l                                         ; $461b: $2d
    ld l, $0f                                     ; $461c: $2e $0f
    ld l, l                                       ; $461e: $6d
    jr nz, jr_06e_4642                            ; $461f: $20 $21

    rst $00                                       ; $4621: $c7
    add hl, hl                                    ; $4622: $29
    or h                                          ; $4623: $b4
    ld a, [hl]                                    ; $4624: $7e
    ld a, [$2211]                                 ; $4625: $fa $11 $22
    or $ad                                        ; $4628: $f6 $ad
    sbc a                                         ; $462a: $9f
    dec h                                         ; $462b: $25
    ccf                                           ; $462c: $3f
    sbc l                                         ; $462d: $9d
    ld b, $12                                     ; $462e: $06 $12
    dec hl                                        ; $4630: $2b
    jp nz, $ba6d                                  ; $4631: $c2 $6d $ba

    pop de                                        ; $4634: $d1
    ld e, [hl]                                    ; $4635: $5e
    jr z, jr_06e_466d                             ; $4636: $28 $35

    ld h, $0f                                     ; $4638: $26 $0f
    cp e                                          ; $463a: $bb
    ld [hl], h                                    ; $463b: $74
    nop                                           ; $463c: $00
    rra                                           ; $463d: $1f
    ld l, e                                       ; $463e: $6b
    ld a, c                                       ; $463f: $79
    dec bc                                        ; $4640: $0b
    adc [hl]                                      ; $4641: $8e

jr_06e_4642:
    ld e, d                                       ; $4642: $5a
    ld l, d                                       ; $4643: $6a
    db $fc                                        ; $4644: $fc
    sbc l                                         ; $4645: $9d
    ld c, d                                       ; $4646: $4a
    ld sp, $c84f                                  ; $4647: $31 $4f $c8
    ld a, [hl]                                    ; $464a: $7e
    inc b                                         ; $464b: $04
    dec c                                         ; $464c: $0d
    rst $00                                       ; $464d: $c7
    ld [hl+], a                                   ; $464e: $22
    ld [hl], d                                    ; $464f: $72
    sbc h                                         ; $4650: $9c
    add [hl]                                      ; $4651: $86
    ld b, [hl]                                    ; $4652: $46
    cp c                                          ; $4653: $b9
    inc d                                         ; $4654: $14
    ld l, [hl]                                    ; $4655: $6e
    or h                                          ; $4656: $b4
    call nc, Call_000_3c98                        ; $4657: $d4 $98 $3c
    db $ec                                        ; $465a: $ec
    ld d, d                                       ; $465b: $52
    ccf                                           ; $465c: $3f
    cp d                                          ; $465d: $ba
    ld b, a                                       ; $465e: $47
    dec de                                        ; $465f: $1b
    ld a, [de]                                    ; $4660: $1a
    push hl                                       ; $4661: $e5
    ld d, d                                       ; $4662: $52
    cp b                                          ; $4663: $b8
    pop de                                        ; $4664: $d1
    add [hl]                                      ; $4665: $86
    ld d, b                                       ; $4666: $50
    add l                                         ; $4667: $85
    dec [hl]                                      ; $4668: $35
    add h                                         ; $4669: $84
    and c                                         ; $466a: $a1
    ld hl, sp+$23                                 ; $466b: $f8 $23

jr_06e_466d:
    ld e, a                                       ; $466d: $5f
    add h                                         ; $466e: $84
    dec [hl]                                      ; $466f: $35
    add h                                         ; $4670: $84
    and c                                         ; $4671: $a1
    ld d, e                                       ; $4672: $53
    push hl                                       ; $4673: $e5
    add hl, hl                                    ; $4674: $29
    ld h, l                                       ; $4675: $65
    ccf                                           ; $4676: $3f
    ld b, l                                       ; $4677: $45
    sbc [hl]                                      ; $4678: $9e
    db $ed                                        ; $4679: $ed
    nop                                           ; $467a: $00
    ld d, a                                       ; $467b: $57
    ld [hl], c                                    ; $467c: $71
    or d                                          ; $467d: $b2
    push hl                                       ; $467e: $e5
    cpl                                           ; $467f: $2f
    push af                                       ; $4680: $f5
    db $e3                                        ; $4681: $e3
    ld b, $12                                     ; $4682: $06 $12
    ei                                            ; $4684: $fb
    rra                                           ; $4685: $1f
    ld a, c                                       ; $4686: $79
    ld d, [hl]                                    ; $4687: $56
    ld l, d                                       ; $4688: $6a
    inc c                                         ; $4689: $0c
    xor [hl]                                      ; $468a: $ae

jr_06e_468b:
    ld [$99b7], sp                                ; $468b: $08 $b7 $99
    db $fd                                        ; $468e: $fd
    inc d                                         ; $468f: $14
    add c                                         ; $4690: $81
    or h                                          ; $4691: $b4
    sbc $38                                       ; $4692: $de $38
    nop                                           ; $4694: $00
    sub a                                         ; $4695: $97
    push bc                                       ; $4696: $c5
    cp c                                          ; $4697: $b9
    db $db                                        ; $4698: $db
    or [hl]                                       ; $4699: $b6
    ld d, l                                       ; $469a: $55
    db $ec                                        ; $469b: $ec
    ld e, h                                       ; $469c: $5c
    or a                                          ; $469d: $b7
    ld l, l                                       ; $469e: $6d
    xor e                                         ; $469f: $ab
    sbc $d3                                       ; $46a0: $de $d3
    reti                                          ; $46a2: $d9


    push bc                                       ; $46a3: $c5
    ret z                                         ; $46a4: $c8

    ld a, [hl]                                    ; $46a5: $7e
    or [hl]                                       ; $46a6: $b6
    sbc [hl]                                      ; $46a7: $9e
    rst $30                                       ; $46a8: $f7
    ccf                                           ; $46a9: $3f
    ld a, [c]                                     ; $46aa: $f2
    ld c, h                                       ; $46ab: $4c
    rst $18                                       ; $46ac: $df
    add sp, $47                                   ; $46ad: $e8 $47
    cp a                                          ; $46af: $bf
    ld d, e                                       ; $46b0: $53
    add hl, sp                                    ; $46b1: $39
    add hl, sp                                    ; $46b2: $39
    xor [hl]                                      ; $46b3: $ae
    sbc h                                         ; $46b4: $9c
    ldh [rNR30], a                                ; $46b5: $e0 $1a
    jp c, Jump_06e_64c8                           ; $46b7: $da $c8 $64

    ret z                                         ; $46ba: $c8

    ld a, [hl]                                    ; $46bb: $7e
    ld a, [hl-]                                   ; $46bc: $3a
    db $fd                                        ; $46bd: $fd
    ld l, b                                       ; $46be: $68
    ret                                           ; $46bf: $c9


    reti                                          ; $46c0: $d9


    sub c                                         ; $46c1: $91
    ld a, [$0ece]                                 ; $46c2: $fa $ce $0e
    rst $00                                       ; $46c5: $c7
    ld e, l                                       ; $46c6: $5d
    ld d, b                                       ; $46c7: $50
    add hl, sp                                    ; $46c8: $39
    add hl, sp                                    ; $46c9: $39
    xor [hl]                                      ; $46ca: $ae
    sbc h                                         ; $46cb: $9c
    ldh [$de], a                                  ; $46cc: $e0 $de
    jr c, jr_06e_46d0                             ; $46ce: $38 $00

jr_06e_46d0:
    rra                                           ; $46d0: $1f
    db $dd                                        ; $46d1: $dd
    and e                                         ; $46d2: $a3
    db $fd                                        ; $46d3: $fd
    ld a, $b8                                     ; $46d4: $3e $b8
    sbc [hl]                                      ; $46d6: $9e
    ld a, [hl+]                                   ; $46d7: $2a
    ld b, a                                       ; $46d8: $47
    ld l, b                                       ; $46d9: $68
    res 1, l                                      ; $46da: $cb $8d
    ld [hl], $90                                  ; $46dc: $36 $90
    add sp, -$36                                  ; $46de: $e8 $ca
    sbc l                                         ; $46e0: $9d
    cp l                                          ; $46e1: $bd
    jr nz, @+$2a                                  ; $46e2: $20 $28

    dec de                                        ; $46e4: $1b
    pop hl                                        ; $46e5: $e1
    add h                                         ; $46e6: $84
    rla                                           ; $46e7: $17

Jump_06e_46e8:
    ld e, h                                       ; $46e8: $5c
    cp a                                          ; $46e9: $bf
    rrca                                          ; $46ea: $0f
    xor [hl]                                      ; $46eb: $ae
    ld b, d                                       ; $46ec: $42
    ld c, b                                       ; $46ed: $48
    scf                                           ; $46ee: $37
    jp c, Jump_06e_6240                           ; $46ef: $da $40 $62

    rst $18                                       ; $46f2: $df
    add hl, de                                    ; $46f3: $19
    pop de                                        ; $46f4: $d1
    sub h                                         ; $46f5: $94
    ld a, [de]                                    ; $46f6: $1a
    add e                                         ; $46f7: $83
    ld a, e                                       ; $46f8: $7b
    ld c, d                                       ; $46f9: $4a
    jr nc, jr_06e_468b                            ; $46fa: $30 $8f

    db $ec                                        ; $46fc: $ec
    and a                                         ; $46fd: $a7
    add sp, $75                                   ; $46fe: $e8 $75
    ld a, d                                       ; $4700: $7a
    ld b, e                                       ; $4701: $43
    rst $18                                       ; $4702: $df
    ld e, c                                       ; $4703: $59
    ei                                            ; $4704: $fb
    ld l, h                                       ; $4705: $6c
    db $db                                        ; $4706: $db
    halt                                          ; $4707: $76
    nop                                           ; $4708: $00
    scf                                           ; $4709: $37
    call nz, $4162                                ; $470a: $c4 $62 $41
    di                                            ; $470d: $f3
    rst $28                                       ; $470e: $ef
    ld d, h                                       ; $470f: $54
    or c                                          ; $4710: $b1

jr_06e_4711:
    ldh [$7a], a                                  ; $4711: $e0 $7a
    or d                                          ; $4713: $b2
    dec d                                         ; $4714: $15
    sub c                                         ; $4715: $91
    db $fd                                        ; $4716: $fd
    ld [hl], h                                    ; $4717: $74
    xor c                                         ; $4718: $a9
    ld c, [hl]                                    ; $4719: $4e
    jp $e2b1                                      ; $471a: $c3 $b1 $e2


    xor $4b                                       ; $471d: $ee $4b
    rlca                                          ; $471f: $07
    sbc a                                         ; $4720: $9f
    inc h                                         ; $4721: $24
    cp d                                          ; $4722: $ba
    ld a, [hl-]                                   ; $4723: $3a
    inc l                                         ; $4724: $2c
    dec l                                         ; $4725: $2d
    dec [hl]                                      ; $4726: $35
    ld b, $f7                                     ; $4727: $06 $f7
    sub h                                         ; $4729: $94
    ld h, b                                       ; $472a: $60
    ld e, $d9                                     ; $472b: $1e $d9
    ld c, a                                       ; $472d: $4f
    pop de                                        ; $472e: $d1
    db $eb                                        ; $472f: $eb
    db $f4                                        ; $4730: $f4

Jump_06e_4731:
    add [hl]                                      ; $4731: $86
    ld h, d                                       ; $4732: $62
    cp a                                          ; $4733: $bf
    ldh [$ea], a                                  ; $4734: $e0 $ea
    and a                                         ; $4736: $a7
    rst $28                                       ; $4737: $ef
    adc h                                         ; $4738: $8c
    ld l, b                                       ; $4739: $68
    sbc $38                                       ; $473a: $de $38
    nop                                           ; $473c: $00
    scf                                           ; $473d: $37
    call nz, $4be2                                ; $473e: $c4 $e2 $4b
    db $fd                                        ; $4741: $fd
    jr z, jr_06e_47a9                             ; $4742: $28 $65

    adc c                                         ; $4744: $89
    ld a, [hl+]                                   ; $4745: $2a
    xor e                                         ; $4746: $ab
    db $10                                        ; $4747: $10
    or d                                          ; $4748: $b2
    add c                                         ; $4749: $81
    ld b, h                                       ; $474a: $44
    rst $10                                       ; $474b: $d7
    ld [hl], b                                    ; $474c: $70
    inc a                                         ; $474d: $3c
    ld c, e                                       ; $474e: $4b
    adc l                                         ; $474f: $8d
    or b                                          ; $4750: $b0
    ld c, [hl]                                    ; $4751: $4e
    ld a, [$ecaf]                                 ; $4752: $fa $af $ec
    and a                                         ; $4755: $a7
    db $d3                                        ; $4756: $d3
    ld b, b                                       ; $4757: $40
    ld h, d                                       ; $4758: $62
    db $fd                                        ; $4759: $fd
    cp d                                          ; $475a: $ba
    ld c, l                                       ; $475b: $4d
    scf                                           ; $475c: $37
    cp d                                          ; $475d: $ba
    push af                                       ; $475e: $f5
    ld h, $b3                                     ; $475f: $26 $b3
    jr jr_06e_4711                                ; $4761: $18 $ae

    ld [hl+], a                                   ; $4763: $22
    db $ec                                        ; $4764: $ec
    or b                                          ; $4765: $b0
    jp z, $eb71                                   ; $4766: $ca $71 $eb

    inc [hl]                                      ; $4769: $34
    ld [hl], l                                    ; $476a: $75
    ld e, b                                       ; $476b: $58
    jp c, $f308                                   ; $476c: $da $08 $f3

    call c, Call_000_1f0e                         ; $476f: $dc $0e $1f
    scf                                           ; $4772: $37
    sub b                                         ; $4773: $90
    ret c                                         ; $4774: $d8

    rst $38                                       ; $4775: $ff
    ret z                                         ; $4776: $c8

    or e                                          ; $4777: $b3
    ld b, d                                       ; $4778: $42
    adc d                                         ; $4779: $8a
    pop de                                        ; $477a: $d1
    ld b, b                                       ; $477b: $40
    ld h, d                                       ; $477c: $62
    xor a                                         ; $477d: $af
    ld [c], a                                     ; $477e: $e2
    ld h, h                                       ; $477f: $64
    res 2, a                                      ; $4780: $cb $97
    ld a, [de]                                    ; $4782: $1a
    pop af                                        ; $4783: $f1
    ld b, a                                       ; $4784: $47
    ld b, l                                       ; $4785: $45
    cp b                                          ; $4786: $b8
    call $a7ec                                    ; $4787: $cd $ec $a7
    add hl, de                                    ; $478a: $19
    ld d, l                                       ; $478b: $55
    ld e, [hl]                                    ; $478c: $5e
    db $fc                                        ; $478d: $fc
    sbc l                                         ; $478e: $9d
    ld a, d                                       ; $478f: $7a
    sub $1b                                       ; $4790: $d6 $1b
    ld c, [hl]                                    ; $4792: $4e
    rst $30                                       ; $4793: $f7
    ld d, d                                       ; $4794: $52
    db $eb                                        ; $4795: $eb
    ld d, c                                       ; $4796: $51
    pop hl                                        ; $4797: $e1
    ld [de], a                                    ; $4798: $12
    xor $6b                                       ; $4799: $ee $6b
    ld [hl+], a                                   ; $479b: $22
    dec h                                         ; $479c: $25
    sbc $38                                       ; $479d: $de $38
    nop                                           ; $479f: $00
    rst $20                                       ; $47a0: $e7
    dec sp                                        ; $47a1: $3b
    db $eb                                        ; $47a2: $eb
    ld e, b                                       ; $47a3: $58
    cp a                                          ; $47a4: $bf
    ld d, h                                       ; $47a5: $54
    reti                                          ; $47a6: $d9


    ld b, b                                       ; $47a7: $40
    ld h, d                                       ; $47a8: $62

jr_06e_47a9:
    sub l                                         ; $47a9: $95
    ld l, $34                                     ; $47aa: $2e $34
    ld [hl], $90                                  ; $47ac: $36 $90
    sub [hl]                                      ; $47ae: $96
    ld [hl], $d2                                  ; $47af: $36 $d2
    sbc d                                         ; $47b1: $9a
    ld e, h                                       ; $47b2: $5c
    cp l                                          ; $47b3: $bd
    pop hl                                        ; $47b4: $e1
    db $f4                                        ; $47b5: $f4
    dec sp                                        ; $47b6: $3b
    db $db                                        ; $47b7: $db
    ld bc, $c437                                  ; $47b8: $01 $37 $c4
    ld [c], a                                     ; $47bb: $e2
    ld c, e                                       ; $47bc: $4b
    cp l                                          ; $47bd: $bd
    add [hl]                                      ; $47be: $86
    ld e, l                                       ; $47bf: $5d
    inc [hl]                                      ; $47c0: $34
    ccf                                           ; $47c1: $3f
    sub l                                         ; $47c2: $95
    ld a, [de]                                    ; $47c3: $1a
    add e                                         ; $47c4: $83
    dec sp                                        ; $47c5: $3b
    jp hl                                         ; $47c6: $e9


    cp a                                          ; $47c7: $bf
    or d                                          ; $47c8: $b2
    sbc a                                         ; $47c9: $9f
    ld c, e                                       ; $47ca: $4b
    cp l                                          ; $47cb: $bd
    add hl, bc                                    ; $47cc: $09

jr_06e_47cd:
    scf                                           ; $47cd: $37
    jp c, Jump_06e_5a3c                           ; $47ce: $da $3c $5a

    ld h, [hl]                                    ; $47d1: $66
    add hl, sp                                    ; $47d2: $39
    add hl, sp                                    ; $47d3: $39
    ld a, [de]                                    ; $47d4: $1a
    xor h                                         ; $47d5: $ac
    ld [hl], d                                    ; $47d6: $72
    ld e, h                                       ; $47d7: $5c
    xor a                                         ; $47d8: $af
    ld [c], a                                     ; $47d9: $e2
    ld h, h                                       ; $47da: $64
    rl a                                          ; $47db: $cb $17
    and a                                         ; $47dd: $a7
    ld sp, $076c                                  ; $47de: $31 $6c $07
    ld d, a                                       ; $47e1: $57
    sbc l                                         ; $47e2: $9d
    db $eb                                        ; $47e3: $eb
    or [hl]                                       ; $47e4: $b6
    ld l, l                                       ; $47e5: $6d
    rlca                                          ; $47e6: $07
    rst $10                                       ; $47e7: $d7
    jp nc, $538a                                  ; $47e8: $d2 $8a $53

    ld hl, $a09d                                  ; $47eb: $21 $9d $a0
    ld hl, $350c                                  ; $47ee: $21 $0c $35
    ld l, d                                       ; $47f1: $6a
    jr c, jr_06e_47cd                             ; $47f2: $38 $d9

    db $d3                                        ; $47f4: $d3
    adc d                                         ; $47f5: $8a
    ld l, d                                       ; $47f6: $6a
    ld b, d                                       ; $47f7: $42
    ld b, e                                       ; $47f8: $43
    jp c, $e529                                   ; $47f9: $da $29 $e5

    ld [$b141], sp                                ; $47fc: $08 $41 $b1
    sbc a                                         ; $47ff: $9f
    ld d, d                                       ; $4800: $52
    sub $fa                                       ; $4801: $d6 $fa
    pop de                                        ; $4803: $d1
    add [hl]                                      ; $4804: $86
    ld [hl], $22                                  ; $4805: $36 $22
    xor d                                         ; $4807: $aa
    adc [hl]                                      ; $4808: $8e
    ld d, c                                       ; $4809: $51
    dec hl                                        ; $480a: $2b
    ld e, d                                       ; $480b: $5a
    or a                                          ; $480c: $b7
    ld l, c                                       ; $480d: $69
    ld [hl], b                                    ; $480e: $70
    dec d                                         ; $480f: $15
    ld [hl], c                                    ; $4810: $71
    push bc                                       ; $4811: $c5
    ld [hl], l                                    ; $4812: $75
    ld [hl], c                                    ; $4813: $71
    or h                                          ; $4814: $b4
    ld hl, $0d0c                                  ; $4815: $21 $0c $0d
    ld l, l                                       ; $4818: $6d
    ld [hl+], a                                   ; $4819: $22
    ld c, a                                       ; $481a: $4f
    or h                                          ; $481b: $b4
    and d                                         ; $481c: $a2
    ld hl, $a1bd                                  ; $481d: $21 $bd $a1

jr_06e_4820:
    ld c, a                                       ; $4820: $4f
    db $f4                                        ; $4821: $f4
    sbc d                                         ; $4822: $9a
    ld a, h                                       ; $4823: $7c
    ld [hl], a                                    ; $4824: $77
    ld [hl-], a                                   ; $4825: $32
    ld c, [hl]                                    ; $4826: $4e
    ret c                                         ; $4827: $d8

    ld [hl], a                                    ; $4828: $77
    ld b, c                                       ; $4829: $41
    rst $18                                       ; $482a: $df
    reti                                          ; $482b: $d9


    ld d, a                                       ; $482c: $57
    db $fc                                        ; $482d: $fc
    ld [hl], c                                    ; $482e: $71
    ret                                           ; $482f: $c9


    rra                                           ; $4830: $1f
    inc b                                         ; $4831: $04
    cp l                                          ; $4832: $bd
    ld de, $a4da                                  ; $4833: $11 $da $a4
    jr z, jr_06e_4820                             ; $4836: $28 $e8

    daa                                           ; $4838: $27
    ld l, c                                       ; $4839: $69
    sbc c                                         ; $483a: $99
    ld [hl], c                                    ; $483b: $71
    cpl                                           ; $483c: $2f
    ld a, e                                       ; $483d: $7b
    inc hl                                        ; $483e: $23
    inc hl                                        ; $483f: $23
    db $e4                                        ; $4840: $e4
    halt                                          ; $4841: $76
    nop                                           ; $4842: $00
    scf                                           ; $4843: $37
    ld [hl-], a                                   ; $4844: $32
    ld b, d                                       ; $4845: $42
    ld e, [hl]                                    ; $4846: $5e
    ld a, [hl-]                                   ; $4847: $3a
    nop                                           ; $4848: $00
    scf                                           ; $4849: $37
    ld [hl-], a                                   ; $484a: $32
    ld b, d                                       ; $484b: $42
    ld d, $df                                     ; $484c: $16 $df
    daa                                           ; $484e: $27
    ccf                                           ; $484f: $3f
    xor c                                         ; $4850: $a9
    ld l, b                                       ; $4851: $68
    ld l, b                                       ; $4852: $68
    inc de                                        ; $4853: $13

Jump_06e_4854:
    ld a, c                                       ; $4854: $79
    and d                                         ; $4855: $a2
    dec d                                         ; $4856: $15
    dec c                                         ; $4857: $0d
    jp hl                                         ; $4858: $e9


    dec c                                         ; $4859: $0d
    add d                                         ; $485a: $82
    ld a, [hl-]                                   ; $485b: $3a
    xor d                                         ; $485c: $aa
    sbc e                                         ; $485d: $9b
    ld b, $12                                     ; $485e: $06 $12
    ei                                            ; $4860: $fb
    rra                                           ; $4861: $1f
    ld a, c                                       ; $4862: $79
    and [hl]                                      ; $4863: $a6
    dec c                                         ; $4864: $0d
    sbc c                                         ; $4865: $99
    sub l                                         ; $4866: $95
    xor [hl]                                      ; $4867: $ae
    add c                                         ; $4868: $81
    call nz, Call_06e_6772                        ; $4869: $c4 $72 $67
    xor c                                         ; $486c: $a9
    ld sp, $91b8                                  ; $486d: $31 $b8 $91
    add hl, sp                                    ; $4870: $39
    ld [hl+], a                                   ; $4871: $22
    ei                                            ; $4872: $fb
    xor c                                         ; $4873: $a9
    ld c, l                                       ; $4874: $4d
    ld [de], a                                    ; $4875: $12
    ld b, $3f                                     ; $4876: $06 $3f
    or c                                          ; $4878: $b1
    ld h, e                                       ; $4879: $63
    dec sp                                        ; $487a: $3b
    nop                                           ; $487b: $00
    scf                                           ; $487c: $37
    ld [hl-], a                                   ; $487d: $32
    ld b, d                                       ; $487e: $42
    ld [hl], $ff                                  ; $487f: $36 $ff
    ld c, [hl]                                    ; $4881: $4e
    rst $38                                       ; $4882: $ff
    ld e, b                                       ; $4883: $58
    adc l                                         ; $4884: $8d
    call z, $5611                                 ; $4885: $cc $11 $56
    call nz, $f50b                                ; $4888: $c4 $0b $f5
    ld d, h                                       ; $488b: $54
    add hl, sp                                    ; $488c: $39
    ld b, d                                       ; $488d: $42
    ld e, e                                       ; $488e: $5b
    ld d, [hl]                                    ; $488f: $56
    add hl, sp                                    ; $4890: $39
    ld l, [hl]                                    ; $4891: $6e
    ld a, [de]                                    ; $4892: $1a
    ld b, d                                       ; $4893: $42
    dec d                                         ; $4894: $15
    sub $70                                       ; $4895: $d6 $70
    xor h                                         ; $4897: $ac
    rst $28                                       ; $4898: $ef
    adc h                                         ; $4899: $8c
    ld l, b                                       ; $489a: $68
    or [hl]                                       ; $489b: $b6
    inc bc                                        ; $489c: $03
    rst $10                                       ; $489d: $d7
    rst $00                                       ; $489e: $c7
    ld [bc], a                                    ; $489f: $02
    adc c                                         ; $48a0: $89
    and l                                         ; $48a1: $a5
    add $e0                                       ; $48a2: $c6 $e0
    add $df                                       ; $48a4: $c6 $df
    ld l, c                                       ; $48a6: $69
    jr nz, jr_06e_48da                            ; $48a7: $20 $31

    ld b, a                                       ; $48a9: $47
    ld d, $81                                     ; $48aa: $16 $81
    or h                                          ; $48ac: $b4
    sbc $38                                       ; $48ad: $de $38
    nop                                           ; $48af: $00
    ld d, a                                       ; $48b0: $57
    ld [hl], c                                    ; $48b1: $71
    or d                                          ; $48b2: $b2
    push hl                                       ; $48b3: $e5
    cp e                                          ; $48b4: $bb
    ld l, l                                       ; $48b5: $6d
    ld e, e                                       ; $48b6: $5b
    and a                                         ; $48b7: $a7
    add c                                         ; $48b8: $81
    call nz, $e85e                                ; $48b9: $c4 $5e $e8
    ld d, d                                       ; $48bc: $52
    sbc l                                         ; $48bd: $9d
    scf                                           ; $48be: $37
    ld c, $ef                                     ; $48bf: $0e $ef
    xor c                                         ; $48c1: $a9
    adc $1b                                       ; $48c2: $ce $1b
    ld a, l                                       ; $48c4: $7d
    ld e, l                                       ; $48c5: $5d
    ld d, b                                       ; $48c6: $50
    adc b                                         ; $48c7: $88
    ld [hl], e                                    ; $48c8: $73
    or a                                          ; $48c9: $b7
    ld l, l                                       ; $48ca: $6d
    dec sp                                        ; $48cb: $3b
    nop                                           ; $48cc: $00
    xor a                                         ; $48cd: $af
    scf                                           ; $48ce: $37
    cp c                                          ; $48cf: $b9
    adc $7f                                       ; $48d0: $ce $7f
    ld [$6f59], a                                 ; $48d2: $ea $59 $6f
    jr c, @-$01                                   ; $48d5: $38 $fd

    adc $a5                                       ; $48d7: $ce $a5
    ld a, [hl]                                    ; $48d9: $7e

jr_06e_48da:
    sbc h                                         ; $48da: $9c
    dec a                                         ; $48db: $3d
    dec hl                                        ; $48dc: $2b
    sbc d                                         ; $48dd: $9a
    push de                                       ; $48de: $d5
    ld b, b                                       ; $48df: $40
    ld h, d                                       ; $48e0: $62
    rst $38                                       ; $48e1: $ff
    inc hl                                        ; $48e2: $23
    rst $08                                       ; $48e3: $cf
    ld a, [bc]                                    ; $48e4: $0a
    inc sp                                        ; $48e5: $33
    db $e4                                        ; $48e6: $e4
    rst $28                                       ; $48e7: $ef
    daa                                           ; $48e8: $27
    ld [hl], l                                    ; $48e9: $75
    xor c                                         ; $48ea: $a9
    adc $1b                                       ; $48eb: $ce $1b
    rlca                                          ; $48ed: $07
    rst $20                                       ; $48ee: $e7
    xor c                                         ; $48ef: $a9
    db $d3                                        ; $48f0: $d3
    inc de                                        ; $48f1: $13
    or d                                          ; $48f2: $b2
    sbc b                                         ; $48f3: $98
    xor e                                         ; $48f4: $ab
    sbc [hl]                                      ; $48f5: $9e
    ld c, l                                       ; $48f6: $4d
    xor [hl]                                      ; $48f7: $ae
    call nc, $c868                                ; $48f8: $d4 $68 $c8
    ld [c], a                                     ; $48fb: $e2
    ld de, $9034                                  ; $48fc: $11 $34 $90
    ld e, b                                       ; $48ff: $58
    rst $00                                       ; $4900: $c7
    add [hl]                                      ; $4901: $86
    jr nc, jr_06e_494e                            ; $4902: $30 $4a

    and [hl]                                      ; $4904: $a6
    ld a, [bc]                                    ; $4905: $0a
    jp hl                                         ; $4906: $e9


    ld a, [hl+]                                   ; $4907: $2a
    daa                                           ; $4908: $27
    ld b, a                                       ; $4909: $47
    and $c8                                       ; $490a: $e6 $c8

jr_06e_490c:
    add [hl]                                      ; $490c: $86
    ld h, e                                       ; $490d: $63
    ld d, l                                       ; $490e: $55
    halt                                          ; $490f: $76
    ld e, a                                       ; $4910: $5f
    ld a, a                                       ; $4911: $7f
    add e                                         ; $4912: $83
    push de                                       ; $4913: $d5
    ld c, a                                       ; $4914: $4f
    rst $20                                       ; $4915: $e7
    ccf                                           ; $4916: $3f
    ld e, e                                       ; $4917: $5b
    rst $08                                       ; $4918: $cf
    ld d, e                                       ; $4919: $53
    inc hl                                        ; $491a: $23
    or e                                          ; $491b: $b3
    ld a, b                                       ; $491c: $78
    cp d                                          ; $491d: $ba
    cpl                                           ; $491e: $2f
    ccf                                           ; $491f: $3f
    ld b, l                                       ; $4920: $45
    adc l                                         ; $4921: $8d
    ld a, [de]                                    ; $4922: $1a
    ld [hl], d                                    ; $4923: $72
    push bc                                       ; $4924: $c5
    xor c                                         ; $4925: $a9
    ld h, a                                       ; $4926: $67
    push hl                                       ; $4927: $e5
    cp b                                          ; $4928: $b8
    xor c                                         ; $4929: $a9
    ld c, h                                       ; $492a: $4c
    set 0, e                                      ; $492b: $cb $c3
    ld [$73b9], a                                 ; $492d: $ea $b9 $73
    db $eb                                        ; $4930: $eb
    db $eb                                        ; $4931: $eb
    ld c, l                                       ; $4932: $4d
    xor [hl]                                      ; $4933: $ae
    sbc $70                                       ; $4934: $de $70
    ld a, [$e69d]                                 ; $4936: $fa $9d $e6
    or c                                          ; $4939: $b1
    call nz, Call_000_3a53                        ; $493a: $c4 $53 $3a
    ld d, e                                       ; $493d: $53
    ld b, c                                       ; $493e: $41
    ld e, l                                       ; $493f: $5d
    ld e, d                                       ; $4940: $5a

jr_06e_4941:
    ld [hl], c                                    ; $4941: $71
    ld l, d                                       ; $4942: $6a
    or b                                          ; $4943: $b0
    reti                                          ; $4944: $d9


jr_06e_4945:
    ld c, $1f                                     ; $4945: $0e $1f
    ld [hl], a                                    ; $4947: $77
    cp $53                                        ; $4948: $fe $53
    ld l, d                                       ; $494a: $6a
    inc c                                         ; $494b: $0c
    xor [hl]                                      ; $494c: $ae
    inc d                                         ; $494d: $14

jr_06e_494e:
    adc a                                         ; $494e: $8f
    ld b, h                                       ; $494f: $44
    or $73                                        ; $4950: $f6 $73
    jp hl                                         ; $4952: $e9


    nop                                           ; $4953: $00
    rst $20                                       ; $4954: $e7
    xor c                                         ; $4955: $a9
    sub b                                         ; $4956: $90
    ld [c], a                                     ; $4957: $e2
    ld l, c                                       ; $4958: $69
    jr nz, jr_06e_490c                            ; $4959: $20 $b1

    rst $38                                       ; $495b: $ff
    ld c, c                                       ; $495c: $49
    sub l                                         ; $495d: $95
    ld h, d                                       ; $495e: $62
    cp b                                          ; $495f: $b8
    ldh [$27], a                                  ; $4960: $e0 $27
    or $a9                                        ; $4962: $f6 $a9
    ld h, a                                       ; $4964: $67
    ccf                                           ; $4965: $3f
    ld a, [de]                                    ; $4966: $1a
    inc de                                        ; $4967: $13
    jp nc, Jump_06e_6ce2                          ; $4968: $d2 $e2 $6c

    rlca                                          ; $496b: $07
    rra                                           ; $496c: $1f
    adc l                                         ; $496d: $8d
    add hl, bc                                    ; $496e: $09
    ld l, c                                       ; $496f: $69
    ld [hl], c                                    ; $4970: $71
    sbc $38                                       ; $4971: $de $38
    nop                                           ; $4973: $00
    rra                                           ; $4974: $1f
    db $dd                                        ; $4975: $dd
    and e                                         ; $4976: $a3
    adc l                                         ; $4977: $8d
    ld [hl], h                                    ; $4978: $74
    and e                                         ; $4979: $a3
    dec c                                         ; $497a: $0d
    inc h                                         ; $497b: $24
    ld [hl], $d2                                  ; $497c: $36 $d2
    ld a, [hl+]                                   ; $497e: $2a
    db $d3                                        ; $497f: $d3
    ld a, [c]                                     ; $4980: $f2
    ldh a, [rNR44]                                ; $4981: $f0 $23
    add sp, $55                                   ; $4983: $e8 $55
    sbc h                                         ; $4985: $9c
    ld l, h                                       ; $4986: $6c
    ld sp, hl                                     ; $4987: $f9
    xor l                                         ; $4988: $ad
    rst $20                                       ; $4989: $e7
    xor c                                         ; $498a: $a9
    sub b                                         ; $498b: $90
    ld [c], a                                     ; $498c: $e2
    ld l, c                                       ; $498d: $69
    jr nz, jr_06e_4941                            ; $498e: $20 $b1

    rst $10                                       ; $4990: $d7
    or b                                          ; $4991: $b0
    adc e                                         ; $4992: $8b
    and $a7                                       ; $4993: $e6 $a7
    ld a, [hl]                                    ; $4995: $7e
    rra                                           ; $4996: $1f
    ld e, h                                       ; $4997: $5c
    add l                                         ; $4998: $85
    sub b                                         ; $4999: $90
    sbc l                                         ; $499a: $9d
    ld b, $12                                     ; $499b: $06 $12
    ei                                            ; $499d: $fb
    rra                                           ; $499e: $1f
    ld a, c                                       ; $499f: $79
    ld d, [hl]                                    ; $49a0: $56
    ld h, h                                       ; $49a1: $64
    adc a                                         ; $49a2: $8f
    adc d                                         ; $49a3: $8a
    ld [hl], b                                    ; $49a4: $70
    sbc e                                         ; $49a5: $9b
    reti                                          ; $49a6: $d9


    rst $08                                       ; $49a7: $cf
    halt                                          ; $49a8: $76
    nop                                           ; $49a9: $00
    rra                                           ; $49aa: $1f
    rst $28                                       ; $49ab: $ef
    ld h, d                                       ; $49ac: $62
    cp d                                          ; $49ad: $ba
    add [hl]                                      ; $49ae: $86
    jr nc, jr_06e_4945                            ; $49af: $30 $94

    dec sp                                        ; $49b1: $3b
    or a                                          ; $49b2: $b7
    ld a, [hl]                                    ; $49b3: $7e
    call c, $8470                                 ; $49b4: $dc $70 $84
    add $db                                       ; $49b7: $c6 $db
    dec hl                                        ; $49b9: $2b
    adc e                                         ; $49ba: $8b
    and a                                         ; $49bb: $a7
    sbc [hl]                                      ; $49bc: $9e
    ld a, a                                       ; $49bd: $7f
    sub [hl]                                      ; $49be: $96
    ld a, [de]                                    ; $49bf: $1a
    ld h, c                                       ; $49c0: $61
    dec d                                         ; $49c1: $15
    pop bc                                        ; $49c2: $c1
    xor l                                         ; $49c3: $ad
    inc e                                         ; $49c4: $1c
    ld h, a                                       ; $49c5: $67
    dec sp                                        ; $49c6: $3b
    nop                                           ; $49c7: $00
    rra                                           ; $49c8: $1f
    scf                                           ; $49c9: $37
    sub b                                         ; $49ca: $90
    ld e, b                                       ; $49cb: $58
    xor $ec                                       ; $49cc: $ee $ec
    ld l, c                                       ; $49ce: $69
    inc [hl]                                      ; $49cf: $34
    and d                                         ; $49d0: $a2
    sbc [hl]                                      ; $49d1: $9e
    sub l                                         ; $49d2: $95
    db $e3                                        ; $49d3: $e3
    ld l, b                                       ; $49d4: $68
    ld l, a                                       ; $49d5: $6f
    db $f4                                        ; $49d6: $f4
    ld a, [c]                                     ; $49d7: $f2
    sbc [hl]                                      ; $49d8: $9e
    ld a, [c]                                     ; $49d9: $f2
    ld l, b                                       ; $49da: $68
    dec a                                         ; $49db: $3d
    ld a, d                                       ; $49dc: $7a
    ld h, e                                       ; $49dd: $63
    or d                                          ; $49de: $b2
    jp nc, $8656                                  ; $49df: $d2 $56 $86

    and b                                         ; $49e2: $a0
    ld c, h                                       ; $49e3: $4c
    and l                                         ; $49e4: $a5
    add [hl]                                      ; $49e5: $86
    or h                                          ; $49e6: $b4
    reti                                          ; $49e7: $d9


    ld c, $1f                                     ; $49e8: $0e $1f
    db $fd                                        ; $49ea: $fd
    adc [hl]                                      ; $49eb: $8e
    and b                                         ; $49ec: $a0
    call c, $9da9                                 ; $49ed: $dc $a9 $9d
    ld a, d                                       ; $49f0: $7a
    xor [hl]                                      ; $49f1: $ae
    ld e, e                                       ; $49f2: $5b
    or b                                          ; $49f3: $b0
    dec b                                         ; $49f4: $05
    ld d, a                                       ; $49f5: $57
    ccf                                           ; $49f6: $3f
    call z, Call_06e_5b91                         ; $49f7: $cc $91 $5b
    ccf                                           ; $49fa: $3f
    sub $ee                                       ; $49fb: $d6 $ee
    db $eb                                        ; $49fd: $eb
    ld l, a                                       ; $49fe: $6f
    and e                                         ; $49ff: $a3
    dec c                                         ; $4a00: $0d
    inc h                                         ; $4a01: $24
    halt                                          ; $4a02: $76
    ld e, a                                       ; $4a03: $5f
    push af                                       ; $4a04: $f5
    db $eb                                        ; $4a05: $eb
    ld [hl], $5d                                  ; $4a06: $36 $5d
    inc bc                                        ; $4a08: $03
    adc c                                         ; $4a09: $89
    push hl                                       ; $4a0a: $e5
    adc $9e                                       ; $4a0b: $ce $9e
    ld b, [hl]                                    ; $4a0d: $46
    inc hl                                        ; $4a0e: $23
    ld [$13d9], a                                 ; $4a0f: $ea $d9 $13
    or $95                                        ; $4a12: $f6 $95
    push bc                                       ; $4a14: $c5
    ret nc                                        ; $4a15: $d0

    xor l                                         ; $4a16: $ad
    scf                                           ; $4a17: $37
    ld l, b                                       ; $4a18: $68
    pop bc                                        ; $4a19: $c1
    dec c                                         ; $4a1a: $0d
    inc h                                         ; $4a1b: $24
    or $3f                                        ; $4a1c: $f6 $3f
    ld a, [c]                                     ; $4a1e: $f2
    xor h                                         ; $4a1f: $ac
    pop hl                                        ; $4a20: $e1
    ld a, b                                       ; $4a21: $78
    jp c, Jump_000_1542                           ; $4a22: $da $42 $15

    set 1, d                                      ; $4a25: $cb $ca
    add [hl]                                      ; $4a27: $86
    inc a                                         ; $4a28: $3c
    pop bc                                        ; $4a29: $c1
    sbc d                                         ; $4a2a: $9a
    inc e                                         ; $4a2b: $1c
    or h                                          ; $4a2c: $b4
    rst $08                                       ; $4a2d: $cf
    rst $30                                       ; $4a2e: $f7
    add h                                         ; $4a2f: $84
    ld a, l                                       ; $4a30: $7d
    ld h, l                                       ; $4a31: $65
    ld sp, $21b4                                  ; $4a32: $31 $b4 $21
    inc c                                         ; $4a35: $0c
    ld [hl], l                                    ; $4a36: $75
    res 7, l                                      ; $4a37: $cb $bd
    pop de                                        ; $4a39: $d1
    add a                                         ; $4a3a: $87
    or h                                          ; $4a3b: $b4
    ld a, a                                       ; $4a3c: $7f
    sbc $a6                                       ; $4a3d: $de $a6
    or $3f                                        ; $4a3f: $f6 $3f
    ld a, [c]                                     ; $4a41: $f2
    xor h                                         ; $4a42: $ac
    call z, Call_06e_7272                         ; $4a43: $cc $72 $72
    inc [hl]                                      ; $4a46: $34
    db $f4                                        ; $4a47: $f4
    add h                                         ; $4a48: $84
    ld a, l                                       ; $4a49: $7d
    ld h, l                                       ; $4a4a: $65
    ld sp, $cab4                                  ; $4a4b: $31 $b4 $ca
    db $fd                                        ; $4a4e: $fd
    adc a                                         ; $4a4f: $8f
    inc de                                        ; $4a50: $13
    or e                                          ; $4a51: $b3

jr_06e_4a52:
    ld d, $d9                                     ; $4a52: $16 $d9
    inc hl                                        ; $4a54: $23
    ei                                            ; $4a55: $fb
    ld l, c                                       ; $4a56: $69
    ret z                                         ; $4a57: $c8

    dec e                                         ; $4a58: $1d
    dec c                                         ; $4a59: $0d
    ld l, l                                       ; $4a5a: $6d
    ld b, d                                       ; $4a5b: $42
    ld e, e                                       ; $4a5c: $5b
    db $f4                                        ; $4a5d: $f4
    ldh a, [$dc]                                  ; $4a5e: $f0 $dc
    ld c, $57                                     ; $4a60: $0e $57
    halt                                          ; $4a62: $76
    ret c                                         ; $4a63: $d8

    ld l, h                                       ; $4a64: $6c
    cp l                                          ; $4a65: $bd
    add d                                         ; $4a66: $82
    adc e                                         ; $4a67: $8b
    or b                                          ; $4a68: $b0
    sbc [hl]                                      ; $4a69: $9e
    or b                                          ; $4a6a: $b0
    xor a                                         ; $4a6b: $af
    inc l                                         ; $4a6c: $2c
    add [hl]                                      ; $4a6d: $86
    ld [hl], $ff                                  ; $4a6e: $36 $ff
    ld c, [hl]                                    ; $4a70: $4e
    dec a                                         ; $4a71: $3d
    rst $38                                       ; $4a72: $ff
    xor h                                         ; $4a73: $ac
    jp nc, $d2ea                                  ; $4a74: $d2 $ea $d2

    adc d                                         ; $4a77: $8a
    ld d, e                                       ; $4a78: $53
    cp a                                          ; $4a79: $bf
    ld b, h                                       ; $4a7a: $44
    ld [hl], a                                    ; $4a7b: $77
    res 6, l                                      ; $4a7c: $cb $b5
    ld l, a                                       ; $4a7e: $6f
    rlca                                          ; $4a7f: $07
    sub a                                         ; $4a80: $97
    inc bc                                        ; $4a81: $03
    ld l, c                                       ; $4a82: $69
    sub l                                         ; $4a83: $95
    ld a, [de]                                    ; $4a84: $1a
    ld a, a                                       ; $4a85: $7f
    and a                                         ; $4a86: $a7
    ret nc                                        ; $4a87: $d0

    sbc [hl]                                      ; $4a88: $9e
    or b                                          ; $4a89: $b0
    xor a                                         ; $4a8a: $af
    inc l                                         ; $4a8b: $2c
    add [hl]                                      ; $4a8c: $86
    ld a, [bc]                                    ; $4a8d: $0a
    ld a, d                                       ; $4a8e: $7a
    dec d                                         ; $4a8f: $15
    daa                                           ; $4a90: $27
    ld e, e                                       ; $4a91: $5b
    ld a, [hl]                                    ; $4a92: $7e
    dec sp                                        ; $4a93: $3b
    nop                                           ; $4a94: $00
    rra                                           ; $4a95: $1f
    dec bc                                        ; $4a96: $0b

jr_06e_4a97:
    ld l, l                                       ; $4a97: $6d
    sbc l                                         ; $4a98: $9d
    ldh [rBGP], a                                 ; $4a99: $e0 $47
    ret nc                                        ; $4a9b: $d0

    xor e                                         ; $4a9c: $ab
    jr nc, @-$03                                  ; $4a9d: $30 $fb

    ld l, c                                       ; $4a9f: $69
    db $eb                                        ; $4aa0: $eb
    rst $00                                       ; $4aa1: $c7
    dec c                                         ; $4aa2: $0d
    add hl, de                                    ; $4aa3: $19
    ld c, b                                       ; $4aa4: $48
    call z, $8fd3                                 ; $4aa5: $cc $d3 $8f
    add $84                                       ; $4aa8: $c6 $84
    or h                                          ; $4aaa: $b4
    jr c, jr_06e_4a52                             ; $4aab: $38 $a5

    ld b, [hl]                                    ; $4aad: $46
    db $fc                                        ; $4aae: $fc
    pop de                                        ; $4aaf: $d1
    ld b, b                                       ; $4ab0: $40
    add d                                         ; $4ab1: $82
    or d                                          ; $4ab2: $b2
    sbc d                                         ; $4ab3: $9a
    call c, $7eca                                 ; $4ab4: $dc $ca $7e
    ld [$f8d9], a                                 ; $4ab7: $ea $d9 $f8
    dec sp                                        ; $4aba: $3b
    ld [hl], l                                    ; $4abb: $75
    jr c, jr_06e_4a97                             ; $4abc: $38 $d9

    ld l, h                                       ; $4abe: $6c
    rlca                                          ; $4abf: $07
    ld d, a                                       ; $4ac0: $57
    ld [hl], c                                    ; $4ac1: $71
    or d                                          ; $4ac2: $b2
    push hl                                       ; $4ac3: $e5
    dec b                                         ; $4ac4: $05
    push hl                                       ; $4ac5: $e5
    adc $22                                       ; $4ac6: $ce $22
    add hl, sp                                    ; $4ac8: $39
    and $38                                       ; $4ac9: $e6 $38
    xor c                                         ; $4acb: $a9
    sbc [hl]                                      ; $4acc: $9e
    adc l                                         ; $4acd: $8d
    ld [hl], b                                    ; $4ace: $70
    ret z                                         ; $4acf: $c8

    ld [c], a                                     ; $4ad0: $e2
    ld l, c                                       ; $4ad1: $69
    and [hl]                                      ; $4ad2: $a6
    ld a, [hl+]                                   ; $4ad3: $2a
    dec de                                        ; $4ad4: $1b
    ld c, [hl]                                    ; $4ad5: $4e
    sub d                                         ; $4ad6: $92
    db $d3                                        ; $4ad7: $d3
    ld c, b                                       ; $4ad8: $48
    rla                                           ; $4ad9: $17
    ld c, [hl]                                    ; $4ada: $4e
    inc bc                                        ; $4adb: $03
    adc c                                         ; $4adc: $89

jr_06e_4add:
    and l                                         ; $4add: $a5
    add $f5                                       ; $4ade: $c6 $f5
    ld h, a                                       ; $4ae0: $67
    ld b, l                                       ; $4ae1: $45
    ld h, e                                       ; $4ae2: $63
    cp b                                          ; $4ae3: $b8
    call nc, $d773                                ; $4ae4: $d4 $73 $d7
    db $e4                                        ; $4ae7: $e4
    ld d, b                                       ; $4ae8: $50
    and l                                         ; $4ae9: $a5
    ld b, e                                       ; $4aea: $43
    ld b, [hl]                                    ; $4aeb: $46
    cp c                                          ; $4aec: $b9
    or e                                          ; $4aed: $b3
    ld a, a                                       ; $4aee: $7f
    xor h                                         ; $4aef: $ac
    ld d, d                                       ; $4af0: $52
    inc hl                                        ; $4af1: $23
    xor h                                         ; $4af2: $ac
    ld a, [hl]                                    ; $4af3: $7e
    ld a, [de]                                    ; $4af4: $1a
    pop hl                                        ; $4af5: $e1
    sub b                                         ; $4af6: $90
    push bc                                       ; $4af7: $c5
    ld d, e                                       ; $4af8: $53
    adc a                                         ; $4af9: $8f
    ld l, d                                       ; $4afa: $6a
    ld b, d                                       ; $4afb: $42
    dec h                                         ; $4afc: $25
    inc d                                         ; $4afd: $14
    ld e, e                                       ; $4afe: $5b
    rst $08                                       ; $4aff: $cf
    ld a, e                                       ; $4b00: $7b
    dec c                                         ; $4b01: $0d
    cp e                                          ; $4b02: $bb
    ld l, b                                       ; $4b03: $68
    ld a, [hl]                                    ; $4b04: $7e
    ld l, d                                       ; $4b05: $6a
    jr c, @-$60                                   ; $4b06: $38 $9e

    dec d                                         ; $4b08: $15
    ld h, c                                       ; $4b09: $61
    add a                                         ; $4b0a: $87
    ld d, l                                       ; $4b0b: $55
    ld b, a                                       ; $4b0c: $47
    ld l, b                                       ; $4b0d: $68
    inc l                                         ; $4b0e: $2c
    ld [hl], a                                    ; $4b0f: $77
    ld d, $0d                                     ; $4b10: $16 $0d
    inc h                                         ; $4b12: $24
    db $ec                                        ; $4b13: $ec
    add c                                         ; $4b14: $81
    ld b, h                                       ; $4b15: $44
    xor e                                         ; $4b16: $ab
    dec de                                        ; $4b17: $1b
    rst $00                                       ; $4b18: $c7
    inc e                                         ; $4b19: $1c
    ld h, a                                       ; $4b1a: $67
    dec sp                                        ; $4b1b: $3b
    nop                                           ; $4b1c: $00
    rst $20                                       ; $4b1d: $e7
    xor c                                         ; $4b1e: $a9
    jp z, Jump_06e_40d5                           ; $4b1f: $ca $d5 $40

    ld h, d                                       ; $4b22: $62
    di                                            ; $4b23: $f3
    rst $28                                       ; $4b24: $ef
    inc [hl]                                      ; $4b25: $34
    inc e                                         ; $4b26: $1c
    push de                                       ; $4b27: $d5
    xor c                                         ; $4b28: $a9
    ld l, b                                       ; $4b29: $68
    ld c, c                                       ; $4b2a: $49
    ld e, b                                       ; $4b2b: $58
    push hl                                       ; $4b2c: $e5
    cp b                                          ; $4b2d: $b8
    ld [hl], d                                    ; $4b2e: $72
    ld h, a                                       ; $4b2f: $67
    ld b, e                                       ; $4b30: $43
    jr jr_06e_4add                                ; $4b31: $18 $aa

    ld [hl], h                                    ; $4b33: $74
    and c                                         ; $4b34: $a1
    ld d, c                                       ; $4b35: $51
    ld d, b                                       ; $4b36: $50
    rlca                                          ; $4b37: $07
    dec l                                         ; $4b38: $2d
    ld d, e                                       ; $4b39: $53
    inc hl                                        ; $4b3a: $23
    sbc h                                         ; $4b3b: $9c
    ldh a, [$82]                                  ; $4b3c: $f0 $82
    ld l, e                                       ; $4b3e: $6b
    cp $9d                                        ; $4b3f: $fe $9d
    add [hl]                                      ; $4b41: $86
    and e                                         ; $4b42: $a3
    ld a, [hl-]                                   ; $4b43: $3a
    push de                                       ; $4b44: $d5
    push hl                                       ; $4b45: $e5
    jp nz, $ea9d                                  ; $4b46: $c2 $9d $ea

    sbc b                                         ; $4b49: $98
    inc hl                                        ; $4b4a: $23
    xor e                                         ; $4b4b: $ab
    or e                                          ; $4b4c: $b3
    rst $00                                       ; $4b4d: $c7
    ldh [$27], a                                  ; $4b4e: $e0 $27
    or $69                                        ; $4b50: $f6 $69
    db $fc                                        ; $4b52: $fc
    sbc l                                         ; $4b53: $9d
    add [hl]                                      ; $4b54: $86
    inc c                                         ; $4b55: $0c
    inc h                                         ; $4b56: $24
    and $d9                                       ; $4b57: $e6 $d9
    ld c, $d7                                     ; $4b59: $0e $d7
    sbc b                                         ; $4b5b: $98
    cp d                                          ; $4b5c: $ba
    call z, Call_06e_4efd                         ; $4b5d: $cc $fd $4e
    xor a                                         ; $4b60: $af
    ret nz                                        ; $4b61: $c0

    or $95                                        ; $4b62: $f6 $95
    push bc                                       ; $4b64: $c5
    and e                                         ; $4b65: $a3
    and l                                         ; $4b66: $a5
    add $e0                                       ; $4b67: $c6 $e0
    add [hl]                                      ; $4b69: $86
    call nc, Call_06e_5a40                        ; $4b6a: $d4 $40 $5a
    adc d                                         ; $4b6d: $8a
    db $ec                                        ; $4b6e: $ec
    and a                                         ; $4b6f: $a7
    sbc $70                                       ; $4b70: $de $70
    cp d                                          ; $4b72: $ba
    sub a                                         ; $4b73: $97
    jp c, Jump_06e_7e8c                           ; $4b74: $da $8c $7e

    ld a, [hl-]                                   ; $4b77: $3a
    xor $2c                                       ; $4b78: $ee $2c
    cpl                                           ; $4b7a: $2f
    ld l, h                                       ; $4b7b: $6c
    db $fd                                        ; $4b7c: $fd
    inc c                                         ; $4b7d: $0c
    ei                                            ; $4b7e: $fb
    sbc a                                         ; $4b7f: $9f
    or a                                          ; $4b80: $b7
    res 3, l                                      ; $4b81: $cb $9d
    dec c                                         ; $4b83: $0d
    ld b, a                                       ; $4b84: $47
    dec d                                         ; $4b85: $15
    ld h, l                                       ; $4b86: $65
    sub [hl]                                      ; $4b87: $96
    sub e                                         ; $4b88: $93
    and e                                         ; $4b89: $a3
    pop bc                                        ; $4b8a: $c1
    sbc d                                         ; $4b8b: $9a
    ld e, h                                       ; $4b8c: $5c
    rst $30                                       ; $4b8d: $f7
    ld [hl], h                                    ; $4b8e: $74
    add d                                         ; $4b8f: $82
    dec [hl]                                      ; $4b90: $35
    add h                                         ; $4b91: $84
    and c                                         ; $4b92: $a1
    call c, $1db9                                 ; $4b93: $dc $b9 $1d
    scf                                           ; $4b96: $37
    pop hl                                        ; $4b97: $e1
    ld b, [hl]                                    ; $4b98: $46
    db $eb                                        ; $4b99: $eb
    sub b                                         ; $4b9a: $90
    dec a                                         ; $4b9b: $3d
    xor h                                         ; $4b9c: $ac
    rst $20                                       ; $4b9d: $e7
    cp $c7                                        ; $4b9e: $fe $c7
    ld [hl], l                                    ; $4ba0: $75
    and d                                         ; $4ba1: $a2
    halt                                          ; $4ba2: $76
    rst $20                                       ; $4ba3: $e7
    rra                                           ; $4ba4: $1f
    sub $e4                                       ; $4ba5: $d6 $e4
    ld a, [hl+]                                   ; $4ba7: $2a
    ld e, h                                       ; $4ba8: $5c
    cp e                                          ; $4ba9: $bb
    sbc b                                         ; $4baa: $98
    sub c                                         ; $4bab: $91
    dec c                                         ; $4bac: $0d
    ld h, c                                       ; $4bad: $61
    jr z, jr_06e_4c27                             ; $4bae: $28 $77

    ld l, [hl]                                    ; $4bb0: $6e
    db $fd                                        ; $4bb1: $fd
    inc h                                         ; $4bb2: $24
    or c                                          ; $4bb3: $b1
    ld de, $a0bb                                  ; $4bb4: $11 $bb $a0
    ld d, a                                       ; $4bb7: $57
    ld [hl], c                                    ; $4bb8: $71
    or d                                          ; $4bb9: $b2
    push hl                                       ; $4bba: $e5
    rst $18                                       ; $4bbb: $df
    jr c, jr_06e_4bbe                             ; $4bbc: $38 $00

jr_06e_4bbe:
    ld l, a                                       ; $4bbe: $6f
    pop de                                        ; $4bbf: $d1
    add hl, bc                                    ; $4bc0: $09
    ld a, [bc]                                    ; $4bc1: $0a
    add hl, hl                                    ; $4bc2: $29
    sbc [hl]                                      ; $4bc3: $9e
    ld b, $12                                     ; $4bc4: $06 $12
    ld a, e                                       ; $4bc6: $7b
    and c                                         ; $4bc7: $a1
    ld d, b                                       ; $4bc8: $50
    ld e, l                                       ; $4bc9: $5d
    xor [hl]                                      ; $4bca: $ae
    add c                                         ; $4bcb: $81
    call nz, $2b42                                ; $4bcc: $c4 $42 $2b
    ld h, a                                       ; $4bcf: $67
    add hl, hl                                    ; $4bd0: $29
    or h                                          ; $4bd1: $b4
    sbc [hl]                                      ; $4bd2: $9e
    ld a, a                                       ; $4bd3: $7f
    cp d                                          ; $4bd4: $ba
    ld a, [hl+]                                   ; $4bd5: $2a
    ld l, l                                       ; $4bd6: $6d
    dec sp                                        ; $4bd7: $3b
    nop                                           ; $4bd8: $00
    scf                                           ; $4bd9: $37
    ld b, a                                       ; $4bda: $47
    sbc [hl]                                      ; $4bdb: $9e
    push af                                       ; $4bdc: $f5
    ei                                            ; $4bdd: $fb
    ldh [$ca], a                                  ; $4bde: $e0 $ca
    ret                                           ; $4be0: $c9


    jp z, Jump_06e_5a53                           ; $4be1: $ca $53 $5a

    xor c                                         ; $4be4: $a9
    ld hl, $b04f                                  ; $4be5: $21 $4f $b0
    ld b, d                                       ; $4be8: $42
    ei                                            ; $4be9: $fb
    ld a, h                                       ; $4bea: $7c
    ld c, a                                       ; $4beb: $4f
    ret c                                         ; $4bec: $d8

    ld d, a                                       ; $4bed: $57
    ld d, $43                                     ; $4bee: $16 $43
    dec b                                         ; $4bf0: $05
    cp l                                          ; $4bf1: $bd
    ld a, [bc]                                    ; $4bf2: $0a
    or e                                          ; $4bf3: $b3
    sbc a                                         ; $4bf4: $9f
    sbc $38                                       ; $4bf5: $de $38
    nop                                           ; $4bf7: $00
    sub a                                         ; $4bf8: $97
    ld d, a                                       ; $4bf9: $57
    or $68                                        ; $4bfa: $f6 $68
    cp $9d                                        ; $4bfc: $fe $9d
    db $ed                                        ; $4bfe: $ed
    nop                                           ; $4bff: $00
    rst $20                                       ; $4c00: $e7
    add hl, sp                                    ; $4c01: $39
    cp $4e                                        ; $4c02: $fe $4e
    ld de, $551a                                  ; $4c04: $11 $1a $55
    ld sp, hl                                     ; $4c07: $f9
    add h                                         ; $4c08: $84
    ld a, [c]                                     ; $4c09: $f2
    ld d, d                                       ; $4c0a: $52
    ld a, e                                       ; $4c0b: $7b
    cp [hl]                                       ; $4c0c: $be
    or e                                          ; $4c0d: $b3
    ld a, a                                       ; $4c0e: $7f
    xor h                                         ; $4c0f: $ac
    ld b, d                                       ; $4c10: $42
    ld b, d                                       ; $4c11: $42
    ld [$646b], sp                                ; $4c12: $08 $6b $64
    adc [hl]                                      ; $4c15: $8e
    ret z                                         ; $4c16: $c8

    ld a, [hl]                                    ; $4c17: $7e
    ld a, [hl+]                                   ; $4c18: $2a
    rst $00                                       ; $4c19: $c7
    pop de                                        ; $4c1a: $d1
    ld a, [hl-]                                   ; $4c1b: $3a
    db $fd                                        ; $4c1c: $fd
    ld [hl], h                                    ; $4c1d: $74
    ld a, [c]                                     ; $4c1e: $f2
    ld c, a                                       ; $4c1f: $4f
    ld d, l                                       ; $4c20: $55
    or $3f                                        ; $4c21: $f6 $3f
    ld a, [c]                                     ; $4c23: $f2
    xor h                                         ; $4c24: $ac
    ld sp, hl                                     ; $4c25: $f9
    ld [hl], a                                    ; $4c26: $77

jr_06e_4c27:
    ld a, [hl+]                                   ; $4c27: $2a
    daa                                           ; $4c28: $27
    dec hl                                        ; $4c29: $2b
    ld c, a                                       ; $4c2a: $4f
    ld l, c                                       ; $4c2b: $69
    ld e, c                                       ; $4c2c: $59
    push hl                                       ; $4c2d: $e5
    cp b                                          ; $4c2e: $b8
    push hl                                       ; $4c2f: $e5
    pop de                                        ; $4c30: $d1
    db $10                                        ; $4c31: $10
    add [hl]                                      ; $4c32: $86
    ld [hl], d                                    ; $4c33: $72
    ld h, a                                       ; $4c34: $67
    dec l                                         ; $4c35: $2d
    jr c, jr_06e_4c94                             ; $4c36: $38 $5c

    ld a, [hl]                                    ; $4c38: $7e
    ld l, $1d                                     ; $4c39: $2e $1d
    sub a                                         ; $4c3b: $97
    rst $28                                       ; $4c3c: $ef
    ld l, $35                                     ; $4c3d: $2e $35
    ld b, $f7                                     ; $4c3f: $06 $f7
    ccf                                           ; $4c41: $3f

Jump_06e_4c42:
    ld a, [c]                                     ; $4c42: $f2

jr_06e_4c43:
    ld c, h                                       ; $4c43: $4c
    ret nc                                        ; $4c44: $d0

    xor e                                         ; $4c45: $ab
    jr nc, jr_06e_4c43                            ; $4c46: $30 $fb

    ld l, c                                       ; $4c48: $69
    db $eb                                        ; $4c49: $eb
    ld b, a                                       ; $4c4a: $47
    rst $30                                       ; $4c4b: $f7
    ld l, b                                       ; $4c4c: $68
    xor c                                         ; $4c4d: $a9
    ld sp, $0ff8                                  ; $4c4e: $31 $f8 $0f
    scf                                           ; $4c51: $37
    ld e, d                                       ; $4c52: $5a
    ld l, d                                       ; $4c53: $6a
    ld c, b                                       ; $4c54: $48
    ld b, e                                       ; $4c55: $43
    or $d3                                        ; $4c56: $f6 $d3
    ld [hl], b                                    ; $4c58: $70
    xor h                                         ; $4c59: $ac
    rst $38                                       ; $4c5a: $ff
    sub c                                         ; $4c5b: $91
    ld h, a                                       ; $4c5c: $67
    db $db                                        ; $4c5d: $db
    ld bc, $a9e7                                  ; $4c5e: $01 $e7 $a9
    ld [$e347], sp                                ; $4c61: $08 $47 $e3
    inc [hl]                                      ; $4c64: $34
    sub b                                         ; $4c65: $90
    ret c                                         ; $4c66: $d8

    xor e                                         ; $4c67: $ab
    jr c, jr_06e_4c43                             ; $4c68: $38 $d9

    ld a, [c]                                     ; $4c6a: $f2
    adc l                                         ; $4c6b: $8d
    ld [hl], h                                    ; $4c6c: $74
    push bc                                       ; $4c6d: $c5
    ld a, [hl]                                    ; $4c6e: $7e
    ld c, d                                       ; $4c6f: $4a
    ld c, $95                                     ; $4c70: $0e $95
    or e                                          ; $4c72: $b3
    inc d                                         ; $4c73: $14
    ld e, l                                       ; $4c74: $5d
    add hl, sp                                    ; $4c75: $39
    jp nc, $8aa8                                  ; $4c76: $d2 $a8 $8a

    inc e                                         ; $4c79: $1c
    reti                                          ; $4c7a: $d9


    db $10                                        ; $4c7b: $10
    add [hl]                                      ; $4c7c: $86

jr_06e_4c7d:
    and $d1                                       ; $4c7d: $e6 $d1

Jump_06e_4c7f:
    ld a, [$9b75]                                 ; $4c7f: $fa $75 $9b
    ld d, [hl]                                    ; $4c82: $56
    dec e                                         ; $4c83: $1d
    and c                                         ; $4c84: $a1
    or c                                          ; $4c85: $b1
    add sp, $75                                   ; $4c86: $e8 $75
    ld a, d                                       ; $4c88: $7a
    jp Jump_000_0076                              ; $4c89: $c3 $76 $00


    rra                                           ; $4c8c: $1f
    scf                                           ; $4c8d: $37
    sub b                                         ; $4c8e: $90
    ret c                                         ; $4c8f: $d8

    rst $38                                       ; $4c90: $ff
    ret z                                         ; $4c91: $c8

    or e                                          ; $4c92: $b3
    ld d, d                                       ; $4c93: $52

jr_06e_4c94:
    ld h, e                                       ; $4c94: $63
    ld [hl], b                                    ; $4c95: $70
    ld b, l                                       ; $4c96: $45
    cp b                                          ; $4c97: $b8
    call $a7ec                                    ; $4c98: $cd $ec $a7
    ld [$25a4], sp                                ; $4c9b: $08 $a4 $25
    add sp, $35                                   ; $4c9e: $e8 $35
    db $ec                                        ; $4ca0: $ec
    and d                                         ; $4ca1: $a2
    ld sp, hl                                     ; $4ca2: $f9
    jp hl                                         ; $4ca3: $e9


    adc l                                         ; $4ca4: $8d
    inc bc                                        ; $4ca5: $03
    rst $20                                       ; $4ca6: $e7
    xor c                                         ; $4ca7: $a9
    call nc, $a938                                ; $4ca8: $d4 $38 $a9
    and c                                         ; $4cab: $a1
    ld sp, $2184                                  ; $4cac: $31 $84 $21
    ei                                            ; $4caf: $fb
    ld l, c                                       ; $4cb0: $69
    ld [hl], d                                    ; $4cb1: $72
    dec d                                         ; $4cb2: $15
    and [hl]                                      ; $4cb3: $a6
    ld b, b                                       ; $4cb4: $40
    ld a, [hl-]                                   ; $4cb5: $3a
    ld l, e                                       ; $4cb6: $6b
    ld [$9343], sp                                ; $4cb7: $08 $43 $93
    dec hl                                        ; $4cba: $2b
    dec [hl]                                      ; $4cbb: $35
    ld h, $8f                                     ; $4cbc: $26 $8f
    inc e                                         ; $4cbe: $1c
    reti                                          ; $4cbf: $d9


    ld b, b                                       ; $4cc0: $40
    ld h, d                                       ; $4cc1: $62
    rst $30                                       ; $4cc2: $f7
    add hl, sp                                    ; $4cc3: $39
    ld c, l                                       ; $4cc4: $4d
    xor c                                         ; $4cc5: $a9
    ld de, $5c16                                  ; $4cc6: $11 $16 $5c
    rst $08                                       ; $4cc9: $cf
    add [hl]                                      ; $4cca: $86
    or b                                          ; $4ccb: $b0
    cp b                                          ; $4ccc: $b8
    inc a                                         ; $4ccd: $3c
    inc b                                         ; $4cce: $04
    ld h, l                                       ; $4ccf: $65
    ld b, e                                       ; $4cd0: $43
    jr jr_06e_4c7d                                ; $4cd1: $18 $aa

    ld c, h                                       ; $4cd3: $4c
    ld e, d                                       ; $4cd4: $5a
    cp b                                          ; $4cd5: $b8
    ld [hl], l                                    ; $4cd6: $75
    ld a, [de]                                    ; $4cd7: $1a
    db $dd                                        ; $4cd8: $dd
    ld c, $37                                     ; $4cd9: $0e $37
    ld sp, hl                                     ; $4cdb: $f9
    dec a                                         ; $4cdc: $3d
    sbc h                                         ; $4cdd: $9c
    and b                                         ; $4cde: $a0
    rst $20                                       ; $4cdf: $e7
    cp $c7                                        ; $4ce0: $fe $c7
    ld [hl], l                                    ; $4ce2: $75
    and d                                         ; $4ce3: $a2
    or $3f                                        ; $4ce4: $f6 $3f
    ld a, e                                       ; $4ce6: $7b
    sbc h                                         ; $4ce7: $9c
    ld [hl], h                                    ; $4ce8: $74
    jp hl                                         ; $4ce9: $e9


    nop                                           ; $4cea: $00
    rst $20                                       ; $4ceb: $e7
    dec sp                                        ; $4cec: $3b
    ld a, [de]                                    ; $4ced: $1a
    jp hl                                         ; $4cee: $e9


    sbc d                                         ; $4cef: $9a
    inc e                                         ; $4cf0: $1c
    ld [$1598], a                                 ; $4cf1: $ea $98 $15
    daa                                           ; $4cf4: $27
    cp d                                          ; $4cf5: $ba
    ld a, d                                       ; $4cf6: $7a
    or $0a                                        ; $4cf7: $f6 $0a
    ld l, h                                       ; $4cf9: $6c
    ld e, a                                       ; $4cfa: $5f
    ld e, c                                       ; $4cfb: $59
    inc a                                         ; $4cfc: $3c
    cp d                                          ; $4cfd: $ba
    push af                                       ; $4cfe: $f5
    ld b, e                                       ; $4cff: $43
    ld l, $08                                     ; $4d00: $2e $08
    ld a, [$e4e9]                                 ; $4d02: $fa $e9 $e4
    sbc a                                         ; $4d05: $9f
    or [hl]                                       ; $4d06: $b6
    inc bc                                        ; $4d07: $03
    adc a                                         ; $4d08: $8f
    ld e, h                                       ; $4d09: $5c
    add c                                         ; $4d0a: $81
    ld c, l                                       ; $4d0b: $4d
    ccf                                           ; $4d0c: $3f
    sbc l                                         ; $4d0d: $9d
    db $fc                                        ; $4d0e: $fc
    sub e                                         ; $4d0f: $93
    ldh [$91], a                                  ; $4d10: $e0 $91
    inc bc                                        ; $4d12: $03
    adc a                                         ; $4d13: $8f
    ld a, h                                       ; $4d14: $7c
    ld b, [hl]                                    ; $4d15: $46
    db $e3                                        ; $4d16: $e3
    ld l, d                                       ; $4d17: $6a
    ld l, b                                       ; $4d18: $68
    cp b                                          ; $4d19: $b8
    ld c, l                                       ; $4d1a: $4d
    dec hl                                        ; $4d1b: $2b
    ld e, l                                       ; $4d1c: $5d
    ld h, l                                       ; $4d1d: $65
    ld e, d                                       ; $4d1e: $5a
    ld e, $56                                     ; $4d1f: $1e $56
    ccf                                           ; $4d21: $3f
    push af                                       ; $4d22: $f5
    add [hl]                                      ; $4d23: $86
    db $d3                                        ; $4d24: $d3
    rst $28                                       ; $4d25: $ef
    ld [$a0ea], sp                                ; $4d26: $08 $ea $a0
    call Call_06e_53bf                            ; $4d29: $cd $bf $53
    and l                                         ; $4d2c: $a5
    dec b                                         ; $4d2d: $05
    ld d, a                                       ; $4d2e: $57
    inc d                                         ; $4d2f: $14
    inc l                                         ; $4d30: $2c
    rst $10                                       ; $4d31: $d7
    ld e, [hl]                                    ; $4d32: $5e
    add a                                         ; $4d33: $87
    db $ec                                        ; $4d34: $ec
    add e                                         ; $4d35: $83
    sbc a                                         ; $4d36: $9f
    ret c                                         ; $4d37: $d8

    and a                                         ; $4d38: $a7

Jump_06e_4d39:
    ld hl, $750c                                  ; $4d39: $21 $0c $75

Call_06e_4d3c:
    bit 5, l                                      ; $4d3c: $cb $6d
    cp l                                          ; $4d3e: $bd
    inc l                                         ; $4d3f: $2c
    push bc                                       ; $4d40: $c5
    ld d, e                                       ; $4d41: $53
    rst $00                                       ; $4d42: $c7
    ld e, l                                       ; $4d43: $5d
    inc a                                         ; $4d44: $3c
    ld d, [hl]                                    ; $4d45: $56
    add a                                         ; $4d46: $87
    db $ec                                        ; $4d47: $ec
    add e                                         ; $4d48: $83
    sbc a                                         ; $4d49: $9f
    ret c                                         ; $4d4a: $d8

    and a                                         ; $4d4b: $a7
    pop hl                                        ; $4d4c: $e1
    ld e, b                                       ; $4d4d: $58
    or c                                          ; $4d4e: $b1
    sbc a                                         ; $4d4f: $9f
    ld d, d                                       ; $4d50: $52

Jump_06e_4d51:
    sub $c2                                       ; $4d51: $d6 $c2
    xor l                                         ; $4d53: $ad
    db $d3                                        ; $4d54: $d3
    ld l, b                                       ; $4d55: $68
    inc bc                                        ; $4d56: $03
    adc c                                         ; $4d57: $89
    and l                                         ; $4d58: $a5
    add $df                                       ; $4d59: $c6 $df
    jp hl                                         ; $4d5b: $e9


    ld a, a                                       ; $4d5c: $7f
    ld h, l                                       ; $4d5d: $65
    ccf                                           ; $4d5e: $3f
    ld [hl], l                                    ; $4d5f: $75
    db $ec                                        ; $4d60: $ec
    ld a, a                                       ; $4d61: $7f
    jp hl                                         ; $4d62: $e9


    adc d                                         ; $4d63: $8a
    or b                                          ; $4d64: $b0
    ld h, [hl]                                    ; $4d65: $66
    inc [hl]                                      ; $4d66: $34
    or h                                          ; $4d67: $b4
    ld a, e                                       ; $4d68: $7b
    ld l, [hl]                                    ; $4d69: $6e
    dec l                                         ; $4d6a: $2d
    add a                                         ; $4d6b: $87
    ld a, [hl+]                                   ; $4d6c: $2a
    dec e                                         ; $4d6d: $1d
    ld [hl-], a                                   ; $4d6e: $32
    or [hl]                                       ; $4d6f: $b6
    sbc $1c                                       ; $4d70: $de $1c

Jump_06e_4d72:
    ld a, c                                       ; $4d72: $79
    sub $70                                       ; $4d73: $d6 $70
    inc a                                         ; $4d75: $3c
    ld l, l                                       ; $4d76: $6d
    and c                                         ; $4d77: $a1
    dec sp                                        ; $4d78: $3b
    rst $38                                       ; $4d79: $ff
    or b                                          ; $4d7a: $b0
    ld c, [hl]                                    ; $4d7b: $4e
    cp l                                          ; $4d7c: $bd
    pop hl                                        ; $4d7d: $e1
    db $f4                                        ; $4d7e: $f4
    dec sp                                        ; $4d7f: $3b
    dec c                                         ; $4d80: $0d
    ld h, c                                       ; $4d81: $61
    jr z, @+$1c                                   ; $4d82: $28 $1a

    rst $00                                       ; $4d84: $c7
    adc h                                         ; $4d85: $8c
    ld [hl], l                                    ; $4d86: $75
    ld e, b                                       ; $4d87: $58
    ld e, d                                       ; $4d88: $5a
    db $ec                                        ; $4d89: $ec
    ld de, $b3bd                                  ; $4d8a: $11 $bd $b3
    adc [hl]                                      ; $4d8d: $8e
    dec bc                                        ; $4d8e: $0b
    ld c, a                                       ; $4d8f: $4f
    db $e4                                        ; $4d90: $e4
    ld e, c                                       ; $4d91: $59
    sub c                                         ; $4d92: $91
    push af                                       ; $4d93: $f5
    xor h                                         ; $4d94: $ac
    ld b, $0b                                     ; $4d95: $06 $0b
    pop hl                                        ; $4d97: $e1
    rst $20                                       ; $4d98: $e7
    adc l                                         ; $4d99: $8d
    sbc [hl]                                      ; $4d9a: $9e
    rst $28                                       ; $4d9b: $ef
    call nc, $e386                                ; $4d9c: $d4 $86 $e3
    jp hl                                         ; $4d9f: $e9


    xor d                                         ; $4da0: $aa
    inc l                                         ; $4da1: $2c
    or e                                          ; $4da2: $b3
    sbc h                                         ; $4da3: $9c
    inc e                                         ; $4da4: $1c
    dec c                                         ; $4da5: $0d
    ld d, [hl]                                    ; $4da6: $56
    add hl, sp                                    ; $4da7: $39
    xor [hl]                                      ; $4da8: $ae
    rst $38                                       ; $4da9: $ff
    sub c                                         ; $4daa: $91
    ld h, a                                       ; $4dab: $67
    db $dd                                        ; $4dac: $dd
    add e                                         ; $4dad: $83
    set 5, [hl]                                   ; $4dae: $cb $ee
    db $fc                                        ; $4db0: $fc
    rlca                                          ; $4db1: $07
    ccf                                           ; $4db2: $3f
    or c                                          ; $4db3: $b1
    ld c, a                                       ; $4db4: $4f
    sbc c                                         ; $4db5: $99
    inc bc                                        ; $4db6: $03
    add hl, bc                                    ; $4db7: $09
    add hl, sp                                    ; $4db8: $39
    ld c, [hl]                                    ; $4db9: $4e
    or c                                          ; $4dba: $b1
    or d                                          ; $4dbb: $b2
    ld b, a                                       ; $4dbc: $47
    xor c                                         ; $4dbd: $a9
    ld sp, $54b8                                  ; $4dbe: $31 $b8 $54
    sbc c                                         ; $4dc1: $99
    ld l, h                                       ; $4dc2: $6c
    or [hl]                                       ; $4dc3: $b6
    ld e, [hl]                                    ; $4dc4: $5e
    ld b, e                                       ; $4dc5: $43
    or $7c                                        ; $4dc6: $f6 $7c
    jp nz, $c9b1                                  ; $4dc8: $c2 $b1 $c9

    and c                                         ; $4dcb: $a1
    ld b, [hl]                                    ; $4dcc: $46
    dec c                                         ; $4dcd: $0d

jr_06e_4dce:
    ld b, a                                       ; $4dce: $47
    inc hl                                        ; $4dcf: $23
    ld a, [hl-]                                   ; $4dd0: $3a
    ld [hl], l                                    ; $4dd1: $75
    ld e, b                                       ; $4dd2: $58
    ld e, d                                       ; $4dd3: $5a
    and c                                         ; $4dd4: $a1
    pop af                                        ; $4dd5: $f1
    rst $08                                       ; $4dd6: $cf
    add [hl]                                      ; $4dd7: $86
    and e                                         ; $4dd8: $a3
    ld a, d                                       ; $4dd9: $7a
    rst $30                                       ; $4dda: $f7
    sbc a                                         ; $4ddb: $9f
    ei                                            ; $4ddc: $fb
    or $c8                                        ; $4ddd: $f6 $c8
    ld bc, $5c8f                                  ; $4ddf: $01 $8f $5c
    ld d, $31                                     ; $4de2: $16 $31
    and [hl]                                      ; $4de4: $a6
    ld d, c                                       ; $4de5: $51
    jr c, jr_06e_4dce                             ; $4de6: $38 $e6

    ld c, b                                       ; $4de8: $48
    ld b, c                                       ; $4de9: $41
    xor a                                         ; $4dea: $af
    ret nz                                        ; $4deb: $c0

    or $95                                        ; $4dec: $f6 $95
    push bc                                       ; $4dee: $c5
    and e                                         ; $4def: $a3
    adc a                                         ; $4df0: $8f
    ld l, h                                       ; $4df1: $6c
    rlca                                          ; $4df2: $07
    rra                                           ; $4df3: $1f
    db $dd                                        ; $4df4: $dd
    and e                                         ; $4df5: $a3
    dec c                                         ; $4df6: $0d
    rst $00                                       ; $4df7: $c7
    db $d3                                        ; $4df8: $d3
    adc l                                         ; $4df9: $8d
    ld [hl], $29                                  ; $4dfa: $36 $29
    xor h                                         ; $4dfc: $ac
    xor b                                         ; $4dfd: $a8
    ld b, h                                       ; $4dfe: $44
    adc b                                         ; $4dff: $88
    ld a, d                                       ; $4e00: $7a
    ld [hl], h                                    ; $4e01: $74
    push hl                                       ; $4e02: $e5
    rst $38                                       ; $4e03: $ff
    jp nc, Jump_06e_5c25                          ; $4e04: $d2 $25 $5c

    ei                                            ; $4e07: $fb
    ld a, [c]                                     ; $4e08: $f2
    ldh a, [$6c]                                  ; $4e09: $f0 $6c
    ld [$7743], sp                                ; $4e0b: $08 $43 $77
    cp $83                                        ; $4e0e: $fe $83
    sbc a                                         ; $4e10: $9f
    ret c                                         ; $4e11: $d8

    and a                                         ; $4e12: $a7
    adc b                                         ; $4e13: $88
    rla                                           ; $4e14: $17
    adc d                                         ; $4e15: $8a
    add $31                                       ; $4e16: $c6 $31
    db $e3                                        ; $4e18: $e3
    sub $cb                                       ; $4e19: $d6 $cb
    ld d, d                                       ; $4e1b: $52
    inc a                                         ; $4e1c: $3c
    dec c                                         ; $4e1d: $0d
    inc h                                         ; $4e1e: $24
    ld d, $95                                     ; $4e1f: $16 $95
    ld [$0bd1], sp                                ; $4e21: $08 $d1 $0b
    dec d                                         ; $4e24: $15
    ld b, d                                       ; $4e25: $42
    inc hl                                        ; $4e26: $23
    ld [hl], d                                    ; $4e27: $72
    ld h, h                                       ; $4e28: $64
    ld c, a                                       ; $4e29: $4f
    add [hl]                                      ; $4e2a: $86
    db $ec                                        ; $4e2b: $ec
    reti                                          ; $4e2c: $d9


    db $10                                        ; $4e2d: $10
    add [hl]                                      ; $4e2e: $86
    jp z, $da11                                   ; $4e2f: $ca $11 $da

    or d                                          ; $4e32: $b2
    ld a, [$5a59]                                 ; $4e33: $fa $59 $5a
    rst $08                                       ; $4e36: $cf
    and $7b                                       ; $4e37: $e6 $7b
    or h                                          ; $4e39: $b4
    db $ec                                        ; $4e3a: $ec
    db $f4                                        ; $4e3b: $f4
    and e                                         ; $4e3c: $a3
    ld sp, $2d21                                  ; $4e3d: $31 $21 $2d
    adc $d6                                       ; $4e40: $ce $d6
    di                                            ; $4e42: $f3
    call nc, $a4ff                                ; $4e43: $d4 $ff $a4
    ld a, [hl-]                                   ; $4e46: $3a
    ld h, h                                       ; $4e47: $64
    rrca                                          ; $4e48: $0f
    db $eb                                        ; $4e49: $eb
    cp c                                          ; $4e4a: $b9
    rst $38                                       ; $4e4b: $ff
    ld [hl], c                                    ; $4e4c: $71
    sbc l                                         ; $4e4d: $9d
    xor b                                         ; $4e4e: $a8
    sub l                                         ; $4e4f: $95
    db $e3                                        ; $4e50: $e3
    sbc d                                         ; $4e51: $9a
    inc e                                         ; $4e52: $1c
    ld l, d                                       ; $4e53: $6a
    call nc, $3470                                ; $4e54: $d4 $70 $34

jr_06e_4e57:
    ld h, d                                       ; $4e57: $62
    db $eb                                        ; $4e58: $eb
    push hl                                       ; $4e59: $e5
    db $d3                                        ; $4e5a: $d3
    jr jr_06e_4e57                                ; $4e5b: $18 $fa

    add a                                         ; $4e5d: $87
    dec de                                        ; $4e5e: $1b
    xor l                                         ; $4e5f: $ad
    sbc h                                         ; $4e60: $9c
    inc e                                         ; $4e61: $1c
    ld h, c                                       ; $4e62: $61
    push bc                                       ; $4e63: $c5
    db $f4                                        ; $4e64: $f4
    ld a, [hl+]                                   ; $4e65: $2a
    ld c, [hl]                                    ; $4e66: $4e
    or [hl]                                       ; $4e67: $b6
    db $fc                                        ; $4e68: $fc
    halt                                          ; $4e69: $76
    nop                                           ; $4e6a: $00
    rra                                           ; $4e6b: $1f
    adc l                                         ; $4e6c: $8d
    add hl, bc                                    ; $4e6d: $09
    ld l, c                                       ; $4e6e: $69
    ld [hl], c                                    ; $4e6f: $71
    ld l, $f5                                     ; $4e70: $2e $f5
    ld a, h                                       ; $4e72: $7c
    ld h, a                                       ; $4e73: $67
    ld b, l                                       ; $4e74: $45
    jp hl                                         ; $4e75: $e9


    or h                                          ; $4e76: $b4
    jp nc, Jump_06e_7ea5                          ; $4e77: $d2 $a5 $7e

    ld a, [de]                                    ; $4e7a: $1a
    inc e                                         ; $4e7b: $1c
    ld l, $3f                                     ; $4e7c: $2e $3f
    cp l                                          ; $4e7e: $bd
    ld a, [bc]                                    ; $4e7f: $0a
    or e                                          ; $4e80: $b3
    sbc a                                         ; $4e81: $9f
    inc b                                         ; $4e82: $04
    dec c                                         ; $4e83: $0d
    ld a, c                                       ; $4e84: $79
    ld c, d                                       ; $4e85: $4a
    ld a, h                                       ; $4e86: $7c
    ld h, d                                       ; $4e87: $62
    ld l, $1d                                     ; $4e88: $2e $1d
    sub a                                         ; $4e8a: $97
    inc bc                                        ; $4e8b: $03
    ld l, c                                       ; $4e8c: $69
    sub l                                         ; $4e8d: $95
    ld a, [de]                                    ; $4e8e: $1a
    add e                                         ; $4e8f: $83
    res 3, l                                      ; $4e90: $cb $9d
    ld e, e                                       ; $4e92: $5b
    ld l, a                                       ; $4e93: $6f
    adc [hl]                                      ; $4e94: $8e
    inc a                                         ; $4e95: $3c
    xor e                                         ; $4e96: $ab
    ld b, d                                       ; $4e97: $42

jr_06e_4e98:
    ret z                                         ; $4e98: $c8

    ld b, $12                                     ; $4e99: $06 $12
    cp e                                          ; $4e9b: $bb
    ld d, h                                       ; $4e9c: $54
    and a                                         ; $4e9d: $a7
    ld a, a                                       ; $4e9e: $7f
    xor h                                         ; $4e9f: $ac
    jp z, Jump_06e_71c9                           ; $4ea0: $ca $c9 $71

    push hl                                       ; $4ea3: $e5
    inc b                                         ; $4ea4: $04
    dec hl                                        ; $4ea5: $2b
    db $e4                                        ; $4ea6: $e4
    db $e4                                        ; $4ea7: $e4
    ld c, b                                       ; $4ea8: $48
    ret                                           ; $4ea9: $c9


    db $ec                                        ; $4eaa: $ec
    ld b, a                                       ; $4eab: $47
    ret nc                                        ; $4eac: $d0

    db $fc                                        ; $4ead: $fc
    dec sp                                        ; $4eae: $3b

jr_06e_4eaf:
    ld d, l                                       ; $4eaf: $55
    ld [$c6f9], sp                                ; $4eb0: $08 $f9 $c6
    ld bc, $a9e7                                  ; $4eb3: $01 $e7 $a9
    jp z, $f5b5                                   ; $4eb6: $ca $b5 $f5

    inc a                                         ; $4eb9: $3c
    push af                                       ; $4eba: $f5
    ccf                                           ; $4ebb: $3f
    xor c                                         ; $4ebc: $a9
    sub c                                         ; $4ebd: $91

Jump_06e_4ebe:
    sub $40                                       ; $4ebe: $d6 $40
    ld h, d                                       ; $4ec0: $62
    dec a                                         ; $4ec1: $3d
    rst $10                                       ; $4ec2: $d7
    dec l                                         ; $4ec3: $2d
    ld e, b                                       ; $4ec4: $58
    rra                                           ; $4ec5: $1f
    push de                                       ; $4ec6: $d5
    cp h                                          ; $4ec7: $bc
    ld b, h                                       ; $4ec8: $44
    adc a                                         ; $4ec9: $8f
    push af                                       ; $4eca: $f5
    ccf                                           ; $4ecb: $3f
    ld a, [c]                                     ; $4ecc: $f2
    ld c, h                                       ; $4ecd: $4c
    db $eb                                        ; $4ece: $eb
    sub b                                         ; $4ecf: $90
    dec a                                         ; $4ed0: $3d
    adc h                                         ; $4ed1: $8c
    xor [hl]                                      ; $4ed2: $ae
    db $d3                                        ; $4ed3: $d3
    sub b                                         ; $4ed4: $90
    add c                                         ; $4ed5: $81
    call nz, $fd3c                                ; $4ed6: $c4 $3c $fd
    ld l, b                                       ; $4ed9: $68
    ld c, h                                       ; $4eda: $4c
    ld c, b                                       ; $4edb: $48
    adc e                                         ; $4edc: $8b
    ld d, e                                       ; $4edd: $53
    ld a, [hl-]                                   ; $4ede: $3a
    pop hl                                        ; $4edf: $e1
    jr jr_06e_4e98                                ; $4ee0: $18 $b6

    inc bc                                        ; $4ee2: $03
    rra                                           ; $4ee3: $1f
    db $dd                                        ; $4ee4: $dd
    and e                                         ; $4ee5: $a3
    dec [hl]                                      ; $4ee6: $35
    ld c, d                                       ; $4ee7: $4a
    ld a, [bc]                                    ; $4ee8: $0a
    jp hl                                         ; $4ee9: $e9


    ld b, [hl]                                    ; $4eea: $46
    sbc e                                         ; $4eeb: $9b
    inc e                                         ; $4eec: $1c
    ld [$1598], a                                 ; $4eed: $ea $98 $15
    daa                                           ; $4ef0: $27
    cp d                                          ; $4ef1: $ba
    ld a, [$15e9]                                 ; $4ef2: $fa $e9 $15
    ret c                                         ; $4ef5: $d8

    cp [hl]                                       ; $4ef6: $be
    or d                                          ; $4ef7: $b2
    ld a, b                                       ; $4ef8: $78
    or h                                          ; $4ef9: $b4
    ld e, a                                       ; $4efa: $5f
    db $10                                        ; $4efb: $10
    cp d                                          ; $4efc: $ba

Call_06e_4efd:
    di                                            ; $4efd: $f3
    and a                                         ; $4efe: $a7
    xor l                                         ; $4eff: $ad
    rst $20                                       ; $4f00: $e7
    dec sp                                        ; $4f01: $3b
    dec de                                        ; $4f02: $1b
    jp hl                                         ; $4f03: $e9


    adc d                                         ; $4f04: $8a
    db $fd                                        ; $4f05: $fd
    sub h                                         ; $4f06: $94
    or d                                          ; $4f07: $b2
    ld d, $6e                                     ; $4f08: $16 $6e
    sbc l                                         ; $4f0a: $9d
    ld b, [hl]                                    ; $4f0b: $46
    dec de                                        ; $4f0c: $1b
    ld c, b                                       ; $4f0d: $48
    ld l, h                                       ; $4f0e: $6c
    jr c, jr_06e_4eaf                             ; $4f0f: $38 $9e

    xor [hl]                                      ; $4f11: $ae
    ld hl, $b04f                                  ; $4f12: $21 $4f $b0
    ld c, [hl]                                    ; $4f15: $4e
    ccf                                           ; $4f16: $3f
    ld a, [de]                                    ; $4f17: $1a
    inc de                                        ; $4f18: $13
    jp nc, Jump_000_34e2                          ; $4f19: $d2 $e2 $34

    ld c, a                                       ; $4f1c: $4f
    ld b, e                                       ; $4f1d: $43
    cp e                                          ; $4f1e: $bb
    rst $20                                       ; $4f1f: $e7
    sub $72                                       ; $4f20: $d6 $72
    ld d, e                                       ; $4f22: $53
    dec c                                         ; $4f23: $0d
    ld d, $c2                                     ; $4f24: $16 $c2
    ld c, a                                       ; $4f26: $4f
    rst $28                                       ; $4f27: $ef
    xor h                                         ; $4f28: $ac
    db $e3                                        ; $4f29: $e3
    jp nz, Jump_06e_7913                          ; $4f2a: $c2 $13 $79

    ld d, [hl]                                    ; $4f2d: $56
    db $e4                                        ; $4f2e: $e4
    halt                                          ; $4f2f: $76
    nop                                           ; $4f30: $00
    sbc a                                         ; $4f31: $9f
    dec h                                         ; $4f32: $25
    ccf                                           ; $4f33: $3f
    dec d                                         ; $4f34: $15
    jp nc, $fd6d                                  ; $4f35: $d2 $6d $fd

    ld l, b                                       ; $4f38: $68
    or h                                          ; $4f39: $b4
    ld a, a                                       ; $4f3a: $7f
    ld a, [de]                                    ; $4f3b: $1a
    db $dd                                        ; $4f3c: $dd
    ld l, b                                       ; $4f3d: $68
    di                                            ; $4f3e: $f3
    ld d, h                                       ; $4f3f: $54
    add e                                         ; $4f40: $83
    add l                                         ; $4f41: $85
    ldh a, [rHDMA3]                               ; $4f42: $f0 $53
    and $f8                                       ; $4f44: $e6 $f8
    dec sp                                        ; $4f46: $3b
    db $db                                        ; $4f47: $db
    ld bc, $4737                                  ; $4f48: $01 $37 $47
    sbc [hl]                                      ; $4f4b: $9e
    ld [hl], l                                    ; $4f4c: $75
    ld a, [de]                                    ; $4f4d: $1a
    ld a, [c]                                     ; $4f4e: $f2
    inc [hl]                                      ; $4f4f: $34
    jp hl                                         ; $4f50: $e9


    adc l                                         ; $4f51: $8d
    inc bc                                        ; $4f52: $03
    sub a                                         ; $4f53: $97
    ld d, a                                       ; $4f54: $57
    or $68                                        ; $4f55: $f6 $68
    cp $9d                                        ; $4f57: $fe $9d
    db $ed                                        ; $4f59: $ed
    nop                                           ; $4f5a: $00
    sbc a                                         ; $4f5b: $9f
    ld sp, $3647                                  ; $4f5c: $31 $47 $36
    rst $08                                       ; $4f5f: $cf
    rra                                           ; $4f60: $1f
    adc [hl]                                      ; $4f61: $8e
    add hl, sp                                    ; $4f62: $39

jr_06e_4f63:
    ld d, d                                       ; $4f63: $52
    ret nc                                        ; $4f64: $d0

    xor e                                         ; $4f65: $ab
    jr nc, jr_06e_4f63                            ; $4f66: $30 $fb

    jp hl                                         ; $4f68: $e9


    ld d, d                                       ; $4f69: $52
    ei                                            ; $4f6a: $fb
    pop de                                        ; $4f6b: $d1
    dec a                                         ; $4f6c: $3d
    jp c, Jump_000_28d0                           ; $4f6d: $da $d0 $28

    sub a                                         ; $4f70: $97
    jp nz, $368d                                  ; $4f71: $c2 $8d $36

    db $e4                                        ; $4f74: $e4
    add hl, hl                                    ; $4f75: $29
    ld hl, sp-$77                                 ; $4f76: $f8 $89
    ld a, l                                       ; $4f78: $7d
    ld l, $1d                                     ; $4f79: $2e $1d
    xor a                                         ; $4f7b: $af
    rst $10                                       ; $4f7c: $d7
    ld [hl], c                                    ; $4f7d: $71
    rla                                           ; $4f7e: $17
    adc a                                         ; $4f7f: $8f
    ld [hl], l                                    ; $4f80: $75
    sbc c                                         ; $4f81: $99
    dec de                                        ; $4f82: $1b
    dec l                                         ; $4f83: $2d
    or d                                          ; $4f84: $b2
    ld b, a                                       ; $4f85: $47
    or $b3                                        ; $4f86: $f6 $b3
    dec e                                         ; $4f88: $1d
    sub a                                         ; $4f89: $97
    ld d, a                                       ; $4f8a: $57
    or $28                                        ; $4f8b: $f6 $28
    and h                                         ; $4f8d: $a4
    ld a, b                                       ; $4f8e: $78
    ld a, [de]                                    ; $4f8f: $1a
    ld c, b                                       ; $4f90: $48
    inc l                                         ; $4f91: $2c
    ld d, e                                       ; $4f92: $53
    dec a                                         ; $4f93: $3d
    rst $38                                       ; $4f94: $ff
    dec bc                                        ; $4f95: $0b
    ld e, l                                       ; $4f96: $5d
    sub $3c                                       ; $4f97: $d6 $3c
    ld d, l                                       ; $4f99: $55
    and [hl]                                      ; $4f9a: $a6
    xor $e9                                       ; $4f9b: $ee $e9
    inc b                                         ; $4f9d: $04
    inc de                                        ; $4f9e: $13
    db $f4                                        ; $4f9f: $f4
    ld a, [hl+]                                   ; $4fa0: $2a
    call $c9ad                                    ; $4fa1: $cd $ad $c9
    call c, $370e                                 ; $4fa4: $dc $0e $37
    ld b, a                                       ; $4fa7: $47
    sbc [hl]                                      ; $4fa8: $9e
    sub l                                         ; $4fa9: $95
    ld a, [de]                                    ; $4faa: $1a
    add e                                         ; $4fab: $83
    db $eb                                        ; $4fac: $eb
    add a                                         ; $4fad: $87
    add hl, sp                                    ; $4fae: $39
    ld [hl], d                                    ; $4faf: $72
    db $eb                                        ; $4fb0: $eb
    ld a, c                                       ; $4fb1: $79
    sbc c                                         ; $4fb2: $99
    ld a, [de]                                    ; $4fb3: $1a
    adc [hl]                                      ; $4fb4: $8e
    ld [$8454], a                                 ; $4fb5: $ea $54 $84
    db $db                                        ; $4fb8: $db
    or h                                          ; $4fb9: $b4
    ld l, $d5                                     ; $4fba: $2e $d5
    ld l, c                                       ; $4fbc: $69
    db $fc                                        ; $4fbd: $fc
    sbc l                                         ; $4fbe: $9d
    ld a, [bc]                                    ; $4fbf: $0a
    jp hl                                         ; $4fc0: $e9


    ld a, [de]                                    ; $4fc1: $1a
    ld c, b                                       ; $4fc2: $48
    ret z                                         ; $4fc3: $c8

    ld [hl], c                                    ; $4fc4: $71
    ld a, [$791f]                                 ; $4fc5: $fa $1f $79
    ld d, [hl]                                    ; $4fc8: $56
    ld de, $616c                                  ; $4fc9: $11 $6c $61
    dec sp                                        ; $4fcc: $3b
    nop                                           ; $4fcd: $00
    rst $20                                       ; $4fce: $e7
    ld a, [de]                                    ; $4fcf: $1a
    add e                                         ; $4fd0: $83
    db $eb                                        ; $4fd1: $eb
    add hl, hl                                    ; $4fd2: $29
    sub a                                         ; $4fd3: $97

Jump_06e_4fd4:
    ld e, a                                       ; $4fd4: $5f
    ld a, [hl]                                    ; $4fd5: $7e
    ld l, $f5                                     ; $4fd6: $2e $f5
    ld h, $dc                                     ; $4fd8: $26 $dc
    xor b                                         ; $4fda: $a8
    and b                                         ; $4fdb: $a0
    ld d, a                                       ; $4fdc: $57
    ld l, c                                       ; $4fdd: $69
    ld l, [hl]                                    ; $4fde: $6e
    ld c, l                                       ; $4fdf: $4d
    and $76                                       ; $4fe0: $e6 $76
    nop                                           ; $4fe2: $00
    ld d, a                                       ; $4fe3: $57
    call nz, Call_06e_4d3c                        ; $4fe4: $c4 $3c $4d
    ld a, [hl+]                                   ; $4fe7: $2a
    ld a, [hl+]                                   ; $4fe8: $2a
    ld e, $83                                     ; $4fe9: $1e $83
    and b                                         ; $4feb: $a0
    ld d, a                                       ; $4fec: $57
    ld [hl], c                                    ; $4fed: $71
    or d                                          ; $4fee: $b2
    push hl                                       ; $4fef: $e5
    or a                                          ; $4ff0: $b7
    inc bc                                        ; $4ff1: $03
    rst $20                                       ; $4ff2: $e7
    xor c                                         ; $4ff3: $a9
    ld [hl], d                                    ; $4ff4: $72
    or $09                                        ; $4ff5: $f6 $09
    inc h                                         ; $4ff7: $24
    xor [hl]                                      ; $4ff8: $ae
    ld a, [bc]                                    ; $4ff9: $0a
    and c                                         ; $4ffa: $a1
    ld de, $b239                                  ; $4ffb: $11 $39 $b2
    ld [hl], d                                    ; $4ffe: $72
    call c, Call_06e_68f2                         ; $4fff: $dc $f2 $68
    ld [$d143], sp                                ; $5002: $08 $43 $d1
    rst $38                                       ; $5005: $ff
    jp nz, Jump_06e_6e89                          ; $5006: $c2 $89 $6e

    db $eb                                        ; $5009: $eb
    ld a, c                                       ; $500a: $79
    jp hl                                         ; $500b: $e9


    add h                                         ; $500c: $84
    ret c                                         ; $500d: $d8

    cp c                                          ; $500e: $b9
    ld a, [$ca7d]                                 ; $500f: $fa $7d $ca
    ld [hl], c                                    ; $5012: $71
    ld a, [hl-]                                   ; $5013: $3a
    ld c, l                                       ; $5014: $4d
    and [hl]                                      ; $5015: $a6
    dec hl                                        ; $5016: $2b
    adc e                                         ; $5017: $8b
    and a                                         ; $5018: $a7
    sbc [hl]                                      ; $5019: $9e
    dec c                                         ; $501a: $0d
    cp c                                          ; $501b: $b9
    rst $18                                       ; $501c: $df
    cpl                                           ; $501d: $2f
    rla                                           ; $501e: $17
    ld a, [de]                                    ; $501f: $1a
    jp nz, $a9d0                                  ; $5020: $c2 $d0 $a9

    add h                                         ; $5023: $84
    ld c, [hl]                                    ; $5024: $4e
    dec a                                         ; $5025: $3d
    res 3, l                                      ; $5026: $cb $9d
    ld d, l                                       ; $5028: $55
    ld d, [hl]                                    ; $5029: $56
    sbc c                                         ; $502a: $99
    db $e3                                        ; $502b: $e3
    or d                                          ; $502c: $b2
    ld [$2bec], a                                 ; $502d: $ea $ec $2b
    ld b, $db                                     ; $5030: $06 $db
    sbc d                                         ; $5032: $9a
    db $ed                                        ; $5033: $ed
    nop                                           ; $5034: $00
    rst $10                                       ; $5035: $d7
    ld l, l                                       ; $5036: $6d
    cp $f8                                        ; $5037: $fe $f8
    ld [hl], e                                    ; $5039: $73
    ld [hl], a                                    ; $503a: $77
    call z, $9d91                                 ; $503b: $cc $91 $9d
    ld h, $d3                                     ; $503e: $26 $d3
    sub l                                         ; $5040: $95
    push bc                                       ; $5041: $c5
    ld d, e                                       ; $5042: $53
    and l                                         ; $5043: $a5
    dec b                                         ; $5044: $05
    rla                                           ; $5045: $17
    dec c                                         ; $5046: $0d
    ld l, l                                       ; $5047: $6d
    add hl, sp                                    ; $5048: $39
    ld l, $43                                     ; $5049: $2e $43
    push hl                                       ; $504b: $e5
    inc l                                         ; $504c: $2c
    ld b, l                                       ; $504d: $45
    inc bc                                        ; $504e: $03
    adc c                                         ; $504f: $89
    push hl                                       ; $5050: $e5
    adc $fe                                       ; $5051: $ce $fe
    or c                                          ; $5053: $b1
    ld a, [hl+]                                   ; $5054: $2a

jr_06e_5055:
    rst $00                                       ; $5055: $c7
    pop de                                        ; $5056: $d1
    or [hl]                                       ; $5057: $b6
    inc bc                                        ; $5058: $03
    xor a                                         ; $5059: $af
    rst $10                                       ; $505a: $d7
    ld [hl], c                                    ; $505b: $71
    rla                                           ; $505c: $17
    adc a                                         ; $505d: $8f
    ld [hl], l                                    ; $505e: $75
    sbc c                                         ; $505f: $99
    dec de                                        ; $5060: $1b
    dec l                                         ; $5061: $2d
    or d                                          ; $5062: $b2
    ld b, a                                       ; $5063: $47
    or $53                                        ; $5064: $f6 $53
    ld h, l                                       ; $5066: $65
    inc bc                                        ; $5067: $03
    ld l, c                                       ; $5068: $69
    add hl, hl                                    ; $5069: $29
    call Call_06e_568d                            ; $506a: $cd $8d $56
    adc d                                         ; $506d: $8a
    ld a, c                                       ; $506e: $79
    add d                                         ; $506f: $82
    dec d                                         ; $5070: $15
    db $d3                                        ; $5071: $d3
    jr c, jr_06e_5055                             ; $5072: $38 $e1

    call nc, Call_06e_71a3                        ; $5074: $d4 $a3 $71
    call z, Call_000_3458                         ; $5077: $cc $58 $34
    jp nc, $b385                                  ; $507a: $d2 $85 $b3

    dec e                                         ; $507d: $1d
    sub a                                         ; $507e: $97
    db $e3                                        ; $507f: $e3
    add l                                         ; $5080: $85
    and d                                         ; $5081: $a2
    rst $38                                       ; $5082: $ff
    and l                                         ; $5083: $a5
    ld de, $7e82                                  ; $5084: $11 $82 $7e
    inc [hl]                                      ; $5087: $34
    ld h, $a4                                     ; $5088: $26 $a4
    push bc                                       ; $508a: $c5
    cp c                                          ; $508b: $b9
    call nc, Call_06e_706b                        ; $508c: $d4 $6b $70
    cp a                                          ; $508f: $bf
    ld l, h                                       ; $5090: $6c
    ld c, [hl]                                    ; $5091: $4e
    ld e, c                                       ; $5092: $59
    and d                                         ; $5093: $a2
    ld a, a                                       ; $5094: $7f
    xor h                                         ; $5095: $ac
    ld d, d                                       ; $5096: $52
    inc bc                                        ; $5097: $03
    adc c                                         ; $5098: $89
    sub d                                         ; $5099: $92
    sub $ff                                       ; $509a: $d6 $ff
    ret z                                         ; $509c: $c8

    or e                                          ; $509d: $b3
    ld c, e                                       ; $509e: $4b
    rlca                                          ; $509f: $07
    rst $20                                       ; $50a0: $e7
    ld a, [de]                                    ; $50a1: $1a
    add e                                         ; $50a2: $83
    db $eb                                        ; $50a3: $eb
    add hl, de                                    ; $50a4: $19
    sub a                                         ; $50a5: $97
    sbc a                                         ; $50a6: $9f
    xor l                                         ; $50a7: $ad
    rst $20                                       ; $50a8: $e7
    push de                                       ; $50a9: $d5
    rst $18                                       ; $50aa: $df
    jp hl                                         ; $50ab: $e9


    inc sp                                        ; $50ac: $33
    ld c, a                                       ; $50ad: $4f
    dec [hl]                                      ; $50ae: $35
    sbc h                                         ; $50af: $9c
    inc e                                         ; $50b0: $1c
    ld b, a                                       ; $50b1: $47
    adc e                                         ; $50b2: $8b
    ld a, [hl-]                                   ; $50b3: $3a
    and $d1                                       ; $50b4: $e6 $d1
    add [hl]                                      ; $50b6: $86
    jr nc, jr_06e_50cd                            ; $50b7: $30 $14

    cp l                                          ; $50b9: $bd
    ld sp, $6959                                  ; $50ba: $31 $59 $69
    dec hl                                        ; $50bd: $2b
    and e                                         ; $50be: $a3
    pop hl                                        ; $50bf: $e1
    ld e, b                                       ; $50c0: $58
    xor c                                         ; $50c1: $a9
    ld de, $90d6                                  ; $50c2: $11 $d6 $90
    ld b, $27                                     ; $50c5: $06 $27
    ld c, h                                       ; $50c7: $4c
    dec sp                                        ; $50c8: $3b
    or d                                          ; $50c9: $b2
    sbc a                                         ; $50ca: $9f
    and $a9                                       ; $50cb: $e6 $a9

jr_06e_50cd:
    db $e3                                        ; $50cd: $e3
    sbc d                                         ; $50ce: $9a
    ld a, d                                       ; $50cf: $7a
    inc [hl]                                      ; $50d0: $34
    rst $08                                       ; $50d1: $cf
    adc d                                         ; $50d2: $8a
    cp h                                          ; $50d3: $bc
    ld [hl], h                                    ; $50d4: $74
    nop                                           ; $50d5: $00
    sub a                                         ; $50d6: $97
    xor e                                         ; $50d7: $ab
    call z, Call_000_31e2                         ; $50d8: $cc $e2 $31
    inc [hl]                                      ; $50db: $34
    rst $38                                       ; $50dc: $ff
    ld c, [hl]                                    ; $50dd: $4e
    push hl                                       ; $50de: $e5
    cp b                                          ; $50df: $b8
    ret nc                                        ; $50e0: $d0

    ret z                                         ; $50e1: $c8

    db $ec                                        ; $50e2: $ec
    add hl, hl                                    ; $50e3: $29
    ld l, b                                       ; $50e4: $68
    ld l, b                                       ; $50e5: $68
    inc hl                                        ; $50e6: $23
    and d                                         ; $50e7: $a2
    ld [$b618], a                                 ; $50e8: $ea $18 $b6
    ld e, [hl]                                    ; $50eb: $5e
    add l                                         ; $50ec: $85
    reti                                          ; $50ed: $d9


    ld c, a                                       ; $50ee: $4f
    cp l                                          ; $50ef: $bd
    ld a, $31                                     ; $50f0: $3e $31
    jp nc, $8d4a                                  ; $50f2: $d2 $4a $8d

    pop bc                                        ; $50f5: $c1
    db $fd                                        ; $50f6: $fd
    xor a                                         ; $50f7: $af
    db $ec                                        ; $50f8: $ec
    and a                                         ; $50f9: $a7
    cp b                                          ; $50fa: $b8
    ld e, e                                       ; $50fb: $5b
    ld d, b                                       ; $50fc: $50
    or $4f                                        ; $50fd: $f6 $4f
    rst $10                                       ; $50ff: $d7
    ld l, b                                       ; $5100: $68
    cp b                                          ; $5101: $b8
    call $a7ec                                    ; $5102: $cd $ec $a7
    ret                                           ; $5105: $c9


    push de                                       ; $5106: $d5
    dec de                                        ; $5107: $1b
    ld c, [hl]                                    ; $5108: $4e
    cp a                                          ; $5109: $bf
    ld [hl], e                                    ; $510a: $73
    jp hl                                         ; $510b: $e9


    nop                                           ; $510c: $00
    sbc a                                         ; $510d: $9f
    inc h                                         ; $510e: $24
    ld d, $42                                     ; $510f: $16 $42
    ld c, l                                       ; $5111: $4d
    and $e7                                       ; $5112: $e6 $e7
    ld d, d                                       ; $5114: $52
    ccf                                           ; $5115: $3f
    ld l, [hl]                                    ; $5116: $6e
    ld l, b                                       ; $5117: $68
    inc hl                                        ; $5118: $23
    and d                                         ; $5119: $a2
    ld [$6f58], a                                 ; $511a: $ea $58 $6f
    ld h, h                                       ; $511d: $64
    add h                                         ; $511e: $84
    db $ec                                        ; $511f: $ec
    rra                                           ; $5120: $1f
    xor e                                         ; $5121: $ab
    and d                                         ; $5122: $a2
    dec h                                         ; $5123: $25
    ld h, c                                       ; $5124: $61
    ld d, l                                       ; $5125: $55
    ld [$fd99], sp                                ; $5126: $08 $99 $fd
    call nc, $d52f                                ; $5129: $d4 $2f $d5
    cp c                                          ; $512c: $b9
    ld [hl], h                                    ; $512d: $74
    nop                                           ; $512e: $00
    scf                                           ; $512f: $37
    ld sp, hl                                     ; $5130: $f9
    dec a                                         ; $5131: $3d
    inc b                                         ; $5132: $04
    db $dd                                        ; $5133: $dd
    add e                                         ; $5134: $83
    ld c, e                                       ; $5135: $4b
    adc l                                         ; $5136: $8d
    cp a                                          ; $5137: $bf
    ld d, e                                       ; $5138: $53
    xor $d4                                       ; $5139: $ee $d4
    ld c, e                                       ; $513b: $4b
    rlca                                          ; $513c: $07
    rra                                           ; $513d: $1f
    db $dd                                        ; $513e: $dd
    and e                                         ; $513f: $a3
    and l                                         ; $5140: $a5
    ld b, [hl]                                    ; $5141: $46
    cp b                                          ; $5142: $b8
    pop de                                        ; $5143: $d1
    ld [hl+], a                                   ; $5144: $22
    sub b                                         ; $5145: $90
    ld d, [hl]                                    ; $5146: $56
    jp hl                                         ; $5147: $e9


    add h                                         ; $5148: $84
    ld e, b                                       ; $5149: $58
    or a                                          ; $514a: $b7
    and $d2                                       ; $514b: $e6 $d2
    ld bc, $5797                                  ; $514d: $01 $97 $57
    or $a8                                        ; $5150: $f6 $a8
    sub b                                         ; $5152: $90
    xor [hl]                                      ; $5153: $ae
    add c                                         ; $5154: $81
    call nz, $e4c6                                ; $5155: $c4 $c6 $e4
    and a                                         ; $5158: $a7

Call_06e_5159:
    sub c                                         ; $5159: $91
    and $56                                       ; $515a: $e6 $56
    sbc [hl]                                      ; $515c: $9e
    or h                                          ; $515d: $b4
    dec e                                         ; $515e: $1d
    sub a                                         ; $515f: $97
    ld d, a                                       ; $5160: $57
    or $68                                        ; $5161: $f6 $68
    cp $9d                                        ; $5163: $fe $9d
    ld b, [hl]                                    ; $5165: $46
    sbc d                                         ; $5166: $9a
    ld e, e                                       ; $5167: $5b
    ld a, c                                       ; $5168: $79
    jp nc, $8fd6                                  ; $5169: $d2 $d6 $8f

    xor $d1                                       ; $516c: $ee $d1
    ld h, d                                       ; $516e: $62
    ld h, l                                       ; $516f: $65
    adc a                                         ; $5170: $8f
    ld b, [hl]                                    ; $5171: $46
    cp d                                          ; $5172: $ba
    pop de                                        ; $5173: $d1
    ld b, $12                                     ; $5174: $06 $12
    ei                                            ; $5176: $fb
    sbc a                                         ; $5177: $9f
    dec a                                         ; $5178: $3d
    jp nz, $c21a                                  ; $5179: $c2 $1a $c2

    ld d, b                                       ; $517c: $50
    db $f4                                        ; $517d: $f4
    ld e, l                                       ; $517e: $5d
    ld e, e                                       ; $517f: $5b
    and d                                         ; $5180: $a2
    sub l                                         ; $5181: $95
    rst $28                                       ; $5182: $ef
    or c                                          ; $5183: $b1
    add l                                         ; $5184: $85
    db $ed                                        ; $5185: $ed
    nop                                           ; $5186: $00
    ld d, a                                       ; $5187: $57
    ld l, c                                       ; $5188: $69
    ld l, [hl]                                    ; $5189: $6e
    ld c, l                                       ; $518a: $4d
    ld h, [hl]                                    ; $518b: $66
    or a                                          ; $518c: $b7
    ld l, l                                       ; $518d: $6d
    dec hl                                        ; $518e: $2b
    ld d, e                                       ; $518f: $53
    xor c                                         ; $5190: $a9
    add c                                         ; $5191: $81
    ld b, h                                       ; $5192: $44
    cp c                                          ; $5193: $b9
    ld [$1656], a                                 ; $5194: $ea $56 $16
    and e                                         ; $5197: $a3
    ld [de], a                                    ; $5198: $12
    ld hl, $d1ea                                  ; $5199: $21 $ea $d1
    sub l                                         ; $519c: $95
    rst $38                                       ; $519d: $ff
    ld c, e                                       ; $519e: $4b
    sub a                                         ; $519f: $97
    ld [hl], b                                    ; $51a0: $70
    db $ed                                        ; $51a1: $ed
    set 0, e                                      ; $51a2: $cb $c3
    or e                                          ; $51a4: $b3
    ld a, c                                       ; $51a5: $79
    adc d                                         ; $51a6: $8a
    dec a                                         ; $51a7: $3d
    ld c, [hl]                                    ; $51a8: $4e
    dec a                                         ; $51a9: $3d
    ld a, [de]                                    ; $51aa: $1a
    rst $00                                       ; $51ab: $c7
    adc h                                         ; $51ac: $8c
    sub a                                         ; $51ad: $97
    ld c, $d7                                     ; $51ae: $0e $d7
    ld a, c                                       ; $51b0: $79
    ld c, d                                       ; $51b1: $4a
    ld e, h                                       ; $51b2: $5c
    db $fd                                        ; $51b3: $fd
    adc a                                         ; $51b4: $8f
    inc a                                         ; $51b5: $3c
    db $d3                                        ; $51b6: $d3
    ld c, e                                       ; $51b7: $4b
    rlca                                          ; $51b8: $07
    sub a                                         ; $51b9: $97
    db $e3                                        ; $51ba: $e3
    add l                                         ; $51bb: $85
    ld b, $12                                     ; $51bc: $06 $12
    sra h                                         ; $51be: $cb $2c
    ld e, d                                       ; $51c0: $5a
    ld c, [hl]                                    ; $51c1: $4e
    ret nc                                        ; $51c2: $d0

    pop de                                        ; $51c3: $d1
    ld a, [c]                                     ; $51c4: $f2
    ld d, $1c                                     ; $51c5: $16 $1c
    or l                                          ; $51c7: $b5
    sub b                                         ; $51c8: $90
    db $10                                        ; $51c9: $10
    jp nz, $2ee0                                  ; $51ca: $c2 $e0 $2e

    push af                                       ; $51cd: $f5
    jp Jump_06e_4d39                              ; $51ce: $c3 $39 $4d


    xor c                                         ; $51d1: $a9
    ld de, $3746                                  ; $51d2: $11 $46 $37
    ld e, d                                       ; $51d5: $5a
    cp d                                          ; $51d6: $ba
    and $51                                       ; $51d7: $e6 $51
    add l                                         ; $51d9: $85
    ld d, [hl]                                    ; $51da: $56
    ld [hl], h                                    ; $51db: $74
    pop bc                                        ; $51dc: $c1
    ld d, $b4                                     ; $51dd: $16 $b4

jr_06e_51df:
    sbc [hl]                                      ; $51df: $9e
    db $fd                                        ; $51e0: $fd
    db $d3                                        ; $51e1: $d3
    ld a, [hl]                                    ; $51e2: $7e
    rst $20                                       ; $51e3: $e7
    jp nc, $3701                                  ; $51e4: $d2 $01 $37

    sub [hl]                                      ; $51e7: $96
    inc de                                        ; $51e8: $13
    sub h                                         ; $51e9: $94
    db $dd                                        ; $51ea: $dd
    rst $20                                       ; $51eb: $e7
    inc [hl]                                      ; $51ec: $34
    ld b, l                                       ; $51ed: $45
    xor c                                         ; $51ee: $a9

Jump_06e_51ef:
    ld [hl], d                                    ; $51ef: $72
    halt                                          ; $51f0: $76
    sub h                                         ; $51f1: $94
    ld a, [de]                                    ; $51f2: $1a
    ld h, c                                       ; $51f3: $61

jr_06e_51f4:
    pop bc                                        ; $51f4: $c1
    dec c                                         ; $51f5: $0d
    inc h                                         ; $51f6: $24
    jr z, jr_06e_51f4                             ; $51f7: $28 $fb

    rst $00                                       ; $51f9: $c7
    db $ed                                        ; $51fa: $ed
    add l                                         ; $51fb: $85
    xor l                                         ; $51fc: $ad
    rst $20                                       ; $51fd: $e7
    or a                                          ; $51fe: $b7
    db $10                                        ; $51ff: $10
    pop hl                                        ; $5200: $e1
    sbc b                                         ; $5201: $98
    inc hl                                        ; $5202: $23
    dec sp                                        ; $5203: $3b
    dec c                                         ; $5204: $0d
    inc h                                         ; $5205: $24
    or $46                                        ; $5206: $f6 $46
    ld b, [hl]                                    ; $5208: $46
    ret z                                         ; $5209: $c8

    ld d, d                                       ; $520a: $52
    ld h, e                                       ; $520b: $63
    ld [hl], b                                    ; $520c: $70
    xor c                                         ; $520d: $a9
    ld hl, $d90d                                  ; $520e: $21 $0d $d9
    rst $08                                       ; $5211: $cf
    halt                                          ; $5212: $76
    nop                                           ; $5213: $00
    ld d, a                                       ; $5214: $57
    ld h, c                                       ; $5215: $61
    or $93                                        ; $5216: $f6 $93
    and b                                         ; $5218: $a0

jr_06e_5219:
    add hl, sp                                    ; $5219: $39
    ld h, l                                       ; $521a: $65
    adc c                                         ; $521b: $89
    ld [hl-], a                                   ; $521c: $32
    set 1, c                                      ; $521d: $cb $c9
    pop de                                        ; $521f: $d1
    ldh [rDMA], a                                 ; $5220: $e0 $46
    sbc e                                         ; $5222: $9b
    sbc c                                         ; $5223: $99
    push bc                                       ; $5224: $c5
    ret                                           ; $5225: $c9


    and c                                         ; $5226: $a1
    and c                                         ; $5227: $a1
    call $f51f                                    ; $5228: $cd $1f $f5
    ld l, h                                       ; $522b: $6c
    jr nz, jr_06e_51df                            ; $522c: $20 $b1

    scf                                           ; $522e: $37
    ld [hl-], a                                   ; $522f: $32
    ld b, d                                       ; $5230: $42
    ld [hl], $32                                  ; $5231: $36 $32
    adc e                                         ; $5233: $8b
    ld d, c                                       ; $5234: $51
    ld c, a                                       ; $5235: $4f
    sub l                                         ; $5236: $95
    inc hl                                        ; $5237: $23
    and h                                         ; $5238: $a4
    push bc                                       ; $5239: $c5
    xor c                                         ; $523a: $a9
    inc e                                         ; $523b: $1c
    scf                                           ; $523c: $37
    dec c                                         ; $523d: $0d
    and c                                         ; $523e: $a1
    ld a, [bc]                                    ; $523f: $0a
    ld l, e                                       ; $5240: $6b
    jr c, jr_06e_5219                             ; $5241: $38 $d6

    ld [hl], a                                    ; $5243: $77
    ld b, [hl]                                    ; $5244: $46
    inc [hl]                                      ; $5245: $34
    db $db                                        ; $5246: $db
    ld bc, $a0d7                                  ; $5247: $01 $d7 $a0
    ld [hl], l                                    ; $524a: $75
    dec hl                                        ; $524b: $2b
    adc e                                         ; $524c: $8b
    ld d, c                                       ; $524d: $51
    cp c                                          ; $524e: $b9
    inc h                                         ; $524f: $24
    and d                                         ; $5250: $a2
    xor l                                         ; $5251: $ad
    db $db                                        ; $5252: $db
    call $d3bf                                    ; $5253: $cd $bf $d3
    db $10                                        ; $5256: $10
    add [hl]                                      ; $5257: $86
    ld a, d                                       ; $5258: $7a
    sub $0f                                       ; $5259: $d6 $0f
    ld l, l                                       ; $525b: $6d
    db $eb                                        ; $525c: $eb
    ld h, l                                       ; $525d: $65
    add hl, hl                                    ; $525e: $29
    sbc [hl]                                      ; $525f: $9e
    ld b, $12                                     ; $5260: $06 $12
    ld a, e                                       ; $5262: $7b
    and c                                         ; $5263: $a1
    ret                                           ; $5264: $c9


    dec d                                         ; $5265: $15
    rst $38                                       ; $5266: $ff
    and l                                         ; $5267: $a5
    inc hl                                        ; $5268: $23
    xor b                                         ; $5269: $a8
    xor [hl]                                      ; $526a: $ae
    ld d, e                                       ; $526b: $53
    ld e, [hl]                                    ; $526c: $5e
    and d                                         ; $526d: $a2
    dec h                                         ; $526e: $25
    pop de                                        ; $526f: $d1
    ld b, b                                       ; $5270: $40
    ld h, d                                       ; $5271: $62
    and a                                         ; $5272: $a7
    ld hl, $9d6d                                  ; $5273: $21 $6d $9d
    and [hl]                                      ; $5276: $a6
    call nc, Call_06e_5c18                        ; $5277: $d4 $18 $5c
    ld h, l                                       ; $527a: $65
    ld de, $dcda                                  ; $527b: $11 $da $dc
    ld e, d                                       ; $527e: $5a
    ld c, $d9                                     ; $527f: $0e $d9
    rst $08                                       ; $5281: $cf
    halt                                          ; $5282: $76
    nop                                           ; $5283: $00
    rra                                           ; $5284: $1f
    rst $28                                       ; $5285: $ef
    pop bc                                        ; $5286: $c1
    sub a                                         ; $5287: $97
    ld a, d                                       ; $5288: $7a
    add hl, sp                                    ; $5289: $39
    or h                                          ; $528a: $b4
    ld sp, hl                                     ; $528b: $f9
    ld [hl], e                                    ; $528c: $73
    ld b, l                                       ; $528d: $45
    ld h, h                                       ; $528e: $64
    ccf                                           ; $528f: $3f
    sbc l                                         ; $5290: $9d
    ld [$45ec], a                                 ; $5291: $ea $ec $45
    adc [hl]                                      ; $5294: $8e
    call nc, $f67a                                ; $5295: $d4 $7a $f6
    ccf                                           ; $5298: $3f
    ld a, e                                       ; $5299: $7b
    add h                                         ; $529a: $84
    pop de                                        ; $529b: $d1
    dec [hl]                                      ; $529c: $35
    add h                                         ; $529d: $84
    and c                                         ; $529e: $a1
    jp z, $dda4                                   ; $529f: $ca $a4 $dd

    ld h, c                                       ; $52a2: $61
    call nc, Call_000_0e37                        ; $52a3: $d4 $37 $0e
    ld d, a                                       ; $52a6: $57
    ld [hl], c                                    ; $52a7: $71
    or d                                          ; $52a8: $b2
    push hl                                       ; $52a9: $e5
    dec b                                         ; $52aa: $05
    ld d, l                                       ; $52ab: $55
    ld d, $fb                                     ; $52ac: $16 $fb
    add hl, hl                                    ; $52ae: $29
    ld e, l                                       ; $52af: $5d
    ld [hl], b                                    ; $52b0: $70

Jump_06e_52b1:
    dec c                                         ; $52b1: $0d
    and h                                         ; $52b2: $a4
    and l                                         ; $52b3: $a5
    ld d, h                                       ; $52b4: $54
    ld h, l                                       ; $52b5: $65
    ld b, e                                       ; $52b6: $43
    xor b                                         ; $52b7: $a8
    jp nz, $8e1a                                  ; $52b8: $c2 $1a $8e

    push af                                       ; $52bb: $f5
    sbc l                                         ; $52bc: $9d
    ld de, $a08d                                  ; $52bd: $11 $8d $a0
    db $d3                                        ; $52c0: $d3
    ld b, b                                       ; $52c1: $40
    ld h, d                                       ; $52c2: $62
    cp c                                          ; $52c3: $b9
    or e                                          ; $52c4: $b3
    and c                                         ; $52c5: $a1
    ld d, c                                       ; $52c6: $51
    ld l, $85                                     ; $52c7: $2e $85
    dec l                                         ; $52c9: $2d
    ld d, h                                       ; $52ca: $54
    add h                                         ; $52cb: $84
    db $db                                        ; $52cc: $db
    or h                                          ; $52cd: $b4
    scf                                           ; $52ce: $37
    ld c, $57                                     ; $52cf: $0e $57
    add $4d                                       ; $52d1: $c6 $4d
    sbc c                                         ; $52d3: $99
    ld [$2a97], a                                 ; $52d4: $ea $97 $2a
    ld a, e                                       ; $52d7: $7b
    ld h, a                                       ; $52d8: $67
    jr nz, jr_06e_534c                            ; $52d9: $20 $71

    ld h, a                                       ; $52db: $67
    xor c                                         ; $52dc: $a9
    pop de                                        ; $52dd: $d1
    sub b                                         ; $52de: $90
    push bc                                       ; $52df: $c5
    inc hl                                        ; $52e0: $23
    add sp, -$7b                                  ; $52e1: $e8 $85
    ld [$8d3d], a                                 ; $52e3: $ea $3d $8d
    inc hl                                        ; $52e6: $23
    ld h, c                                       ; $52e7: $61
    ld c, l                                       ; $52e8: $4d
    xor [hl]                                      ; $52e9: $ae
    pop hl                                        ; $52ea: $e1
    inc h                                         ; $52eb: $24
    add hl, sp                                    ; $52ec: $39
    push af                                       ; $52ed: $f5
    xor h                                         ; $52ee: $ac
    cp e                                          ; $52ef: $bb
    ld e, a                                       ; $52f0: $5f
    sub a                                         ; $52f1: $97
    ld b, h                                       ; $52f2: $44
    ld b, e                                       ; $52f3: $43
    jr jr_06e_5330                                ; $52f4: $18 $3a

    ld a, l                                       ; $52f6: $7d
    ld h, a                                       ; $52f7: $67
    ld b, h                                       ; $52f8: $44
    ld d, e                                       ; $52f9: $53
    sub [hl]                                      ; $52fa: $96
    dec sp                                        ; $52fb: $3b
    dec hl                                        ; $52fc: $2b
    or c                                          ; $52fd: $b1
    sbc d                                         ; $52fe: $9a
    and a                                         ; $52ff: $a7
    ld a, [hl-]                                   ; $5300: $3a
    ld a, c                                       ; $5301: $79
    or [hl]                                       ; $5302: $b6
    ld e, [hl]                                    ; $5303: $5e

jr_06e_5304:
    ld h, a                                       ; $5304: $67
    ld d, [hl]                                    ; $5305: $56
    ld h, h                                       ; $5306: $64
    ccf                                           ; $5307: $3f
    dec d                                         ; $5308: $15
    jp nc, $ca09                                  ; $5309: $d2 $09 $ca

    ld a, h                                       ; $530c: $7c
    ld [hl-], a                                   ; $530d: $32
    ld e, h                                       ; $530e: $5c
    add h                                         ; $530f: $84
    sbc a                                         ; $5310: $9f
    ld [hl], d                                    ; $5311: $72
    ld h, a                                       ; $5312: $67
    inc hl                                        ; $5313: $23
    xor l                                         ; $5314: $ad
    ld [$9461], sp                                ; $5315: $08 $61 $94
    bit 1, a                                      ; $5318: $cb $4f
    push hl                                       ; $531a: $e5
    cp b                                          ; $531b: $b8
    ld [hl+], a                                   ; $531c: $22
    sub b                                         ; $531d: $90
    cp b                                          ; $531e: $b8
    or e                                          ; $531f: $b3
    di                                            ; $5320: $f3
    sbc a                                         ; $5321: $9f
    ld a, [hl]                                    ; $5322: $7e
    sbc a                                         ; $5323: $9f
    inc [hl]                                      ; $5324: $34
    jp nz, Jump_06e_4731                          ; $5325: $c2 $31 $47

    ld [hl], $90                                  ; $5328: $36 $90
    sub b                                         ; $532a: $90
    db $fd                                        ; $532b: $fd
    sub h                                         ; $532c: $94
    xor c                                         ; $532d: $a9
    db $d3                                        ; $532e: $d3
    ld b, b                                       ; $532f: $40

jr_06e_5330:
    and d                                         ; $5330: $a2
    dec l                                         ; $5331: $2d
    inc [hl]                                      ; $5332: $34
    ld [hl+], a                                   ; $5333: $22
    rst $00                                       ; $5334: $c7
    reti                                          ; $5335: $d9


    ld c, $9f                                     ; $5336: $0e $9f
    pop de                                        ; $5338: $d1
    adc l                                         ; $5339: $8d
    sub $b3                                       ; $533a: $d6 $b3
    and c                                         ; $533c: $a1
    adc l                                         ; $533d: $8d
    ld c, h                                       ; $533e: $4c
    ld b, $eb                                     ; $533f: $06 $eb
    db $db                                        ; $5341: $db
    ret                                           ; $5342: $c9


    add hl, bc                                    ; $5343: $09
    ld [hl], a                                    ; $5344: $77
    ld a, [$6e31]                                 ; $5345: $fa $31 $6e
    db $fd                                        ; $5348: $fd
    adc h                                         ; $5349: $8c
    ld e, c                                       ; $534a: $59
    inc a                                         ; $534b: $3c

jr_06e_534c:
    sub l                                         ; $534c: $95
    or h                                          ; $534d: $b4
    ret z                                         ; $534e: $c8

    db $db                                        ; $534f: $db
    ld l, b                                       ; $5350: $68
    jr nz, jr_06e_5304                            ; $5351: $20 $b1

    and d                                         ; $5353: $a2
    ld e, c                                       ; $5354: $59
    cp l                                          ; $5355: $bd
    sub c                                         ; $5356: $91
    ld de, $81b2                                  ; $5357: $11 $b2 $81
    call nz, $a67a                                ; $535a: $c4 $7a $a6
    ld a, [hl]                                    ; $535d: $7e
    inc [hl]                                      ; $535e: $34
    ld h, $a4                                     ; $535f: $26 $a4
    push bc                                       ; $5361: $c5
    ld l, c                                       ; $5362: $69
    ld [$a743], sp                                ; $5363: $08 $43 $a7
    ld d, a                                       ; $5366: $57
    ld [hl], c                                    ; $5367: $71
    or d                                          ; $5368: $b2
    push hl                                       ; $5369: $e5
    or a                                          ; $536a: $b7
    inc bc                                        ; $536b: $03
    rst $10                                       ; $536c: $d7
    and b                                         ; $536d: $a0
    call Call_06e_68f7                            ; $536e: $cd $f7 $68
    inc sp                                        ; $5371: $33
    ld e, l                                       ; $5372: $5d
    inc hl                                        ; $5373: $23
    db $dd                                        ; $5374: $dd
    ld l, b                                       ; $5375: $68
    sub a                                         ; $5376: $97
    cp a                                          ; $5377: $bf
    or b                                          ; $5378: $b0
    ld d, b                                       ; $5379: $50
    rst $08                                       ; $537a: $cf
    ld c, [hl]                                    ; $537b: $4e
    or $ac                                        ; $537c: $f6 $ac
    ld l, b                                       ; $537e: $68
    ld c, c                                       ; $537f: $49
    ld [hl], h                                    ; $5380: $74
    ld c, d                                       ; $5381: $4a
    sub l                                         ; $5382: $95
    or [hl]                                       ; $5383: $b6
    ld [c], a                                     ; $5384: $e2
    dec a                                         ; $5385: $3d
    or [hl]                                       ; $5386: $b6
    and [hl]                                      ; $5387: $a6
    ld a, [hl]                                    ; $5388: $7e
    ld a, [$7276]                                 ; $5389: $fa $76 $72
    jp nz, Jump_06e_7e9d                          ; $538c: $c2 $9d $7e

    adc h                                         ; $538f: $8c
    db $db                                        ; $5390: $db
    ld bc, $39e7                                  ; $5391: $01 $e7 $39
    cp $4e                                        ; $5394: $fe $4e
    rst $38                                       ; $5396: $ff
    ld [hl], b                                    ; $5397: $70
    and e                                         ; $5398: $a3
    adc l                                         ; $5399: $8d
    or h                                          ; $539a: $b4
    ld b, $12                                     ; $539b: $06 $12
    dec de                                        ; $539d: $1b
    jp c, Jump_06e_64c8                           ; $539e: $da $c8 $64

    or b                                          ; $53a1: $b0
    xor l                                         ; $53a2: $ad
    scf                                           ; $53a3: $37
    pop hl                                        ; $53a4: $e1
    ld b, [hl]                                    ; $53a5: $46
    sbc e                                         ; $53a6: $9b
    ld b, a                                       ; $53a7: $47
    xor e                                         ; $53a8: $ab
    inc c                                         ; $53a9: $0c
    ld h, c                                       ; $53aa: $61
    or b                                          ; $53ab: $b0
    xor l                                         ; $53ac: $ad
    rra                                           ; $53ad: $1f
    adc l                                         ; $53ae: $8d
    sub [hl]                                      ; $53af: $96
    ld e, c                                       ; $53b0: $59
    ld c, [hl]                                    ; $53b1: $4e
    adc [hl]                                      ; $53b2: $8e
    ld b, $37                                     ; $53b3: $06 $37
    ld e, d                                       ; $53b5: $5a
    rst $08                                       ; $53b6: $cf
    cp $67                                        ; $53b7: $fe $67
    adc a                                         ; $53b9: $8f
    ld l, b                                       ; $53ba: $68
    ld b, [hl]                                    ; $53bb: $46
    rst $18                                       ; $53bc: $df
    or l                                          ; $53bd: $b5
    dec h                                         ; $53be: $25

Call_06e_53bf:
    ld e, d                                       ; $53bf: $5a
    ld sp, hl                                     ; $53c0: $f9
    ld e, $5b                                     ; $53c1: $1e $5b
    ret c                                         ; $53c3: $d8

    ld c, $37                                     ; $53c4: $0e $37
    ld b, a                                       ; $53c6: $47
    sbc [hl]                                      ; $53c7: $9e
    ld d, l                                       ; $53c8: $55
    ld hl, $2764                                  ; $53c9: $21 $64 $27
    ld a, e                                       ; $53cc: $7b
    sub [hl]                                      ; $53cd: $96
    ld a, [de]                                    ; $53ce: $1a
    add e                                         ; $53cf: $83
    ei                                            ; $53d0: $fb
    halt                                          ; $53d1: $76
    ld [hl], d                                    ; $53d2: $72
    jp nz, Jump_06e_7e9d                          ; $53d3: $c2 $9d $7e

    adc h                                         ; $53d6: $8c
    ld l, a                                       ; $53d7: $6f
    inc e                                         ; $53d8: $1c
    rra                                           ; $53d9: $1f
    db $fd                                        ; $53da: $fd
    adc [hl]                                      ; $53db: $8e
    and b                                         ; $53dc: $a0
    ld c, h                                       ; $53dd: $4c
    call $d3bf                                    ; $53de: $cd $bf $d3
    jp hl                                         ; $53e1: $e9


    ld a, a                                       ; $53e2: $7f
    push de                                       ; $53e3: $d5
    daa                                           ; $53e4: $27
    ld b, e                                       ; $53e5: $43
    adc [hl]                                      ; $53e6: $8e
    db $ec                                        ; $53e7: $ec
    call nc, Call_06e_742f                        ; $53e8: $d4 $2f $74
    push hl                                       ; $53eb: $e5
    ret z                                         ; $53ec: $c8

    ld h, l                                       ; $53ed: $65
    or e                                          ; $53ee: $b3
    dec e                                         ; $53ef: $1d
    rst $20                                       ; $53f0: $e7
    xor c                                         ; $53f1: $a9
    sub e                                         ; $53f2: $93
    cp $ab                                        ; $53f3: $fe $ab
    ld a, [hl]                                    ; $53f5: $7e
    db $dd                                        ; $53f6: $dd
    and [hl]                                      ; $53f7: $a6
    dec [hl]                                      ; $53f8: $35
    sub b                                         ; $53f9: $90
    ld e, b                                       ; $53fa: $58
    xor $ec                                       ; $53fb: $ee $ec
    ld a, a                                       ; $53fd: $7f
    pop hl                                        ; $53fe: $e1
    ei                                            ; $53ff: $fb
    ld c, c                                       ; $5400: $49
    dec c                                         ; $5401: $0d
    ld h, c                                       ; $5402: $61
    xor b                                         ; $5403: $a8
    ld d, c                                       ; $5404: $51
    ld h, a                                       ; $5405: $67
    rst $38                                       ; $5406: $ff
    db $d3                                        ; $5407: $d3
    sbc d                                         ; $5408: $9a
    ld e, h                                       ; $5409: $5c
    and c                                         ; $540a: $a1
    sbc d                                         ; $540b: $9a
    ld [hl], d                                    ; $540c: $72
    sbc h                                         ; $540d: $9c
    ld h, $3b                                     ; $540e: $26 $3b
    ld sp, $6e47                                  ; $5410: $31 $47 $6e
    rlca                                          ; $5413: $07
    rst $10                                       ; $5414: $d7
    rst $00                                       ; $5415: $c7
    ld a, [hl+]                                   ; $5416: $2a
    jp nz, Jump_06e_4c7f                          ; $5417: $c2 $7f $4c

    ret nc                                        ; $541a: $d0

    rst $38                                       ; $541b: $ff
    ret z                                         ; $541c: $c8

    or e                                          ; $541d: $b3
    ld a, [hl+]                                   ; $541e: $2a
    add h                                         ; $541f: $84
    db $ec                                        ; $5420: $ec
    ld h, h                                       ; $5421: $64
    rst $08                                       ; $5422: $cf
    ld [hl-], a                                   ; $5423: $32
    dec [hl]                                      ; $5424: $35
    inc e                                         ; $5425: $1c
    push de                                       ; $5426: $d5
    add hl, hl                                    ; $5427: $29
    or e                                          ; $5428: $b3
    sbc h                                         ; $5429: $9c
    inc e                                         ; $542a: $1c
    dec c                                         ; $542b: $0d
    sub $69                                       ; $542c: $d6 $69
    ld l, b                                       ; $542e: $68
    inc hl                                        ; $542f: $23
    and d                                         ; $5430: $a2
    ld [$df58], a                                 ; $5431: $ea $58 $df
    ld c, [hl]                                    ; $5434: $4e
    ld c, [hl]                                    ; $5435: $4e
    cp b                                          ; $5436: $b8
    db $d3                                        ; $5437: $d3
    adc a                                         ; $5438: $8f
    pop af                                        ; $5439: $f1
    adc l                                         ; $543a: $8d
    inc bc                                        ; $543b: $03
    rst $20                                       ; $543c: $e7
    xor c                                         ; $543d: $a9
    ld sp, hl                                     ; $543e: $f9
    ld [hl], a                                    ; $543f: $77
    ld [$2d97], a                                 ; $5440: $ea $97 $2d
    inc d                                         ; $5443: $14
    db $fd                                        ; $5444: $fd
    adc a                                         ; $5445: $8f
    inc a                                         ; $5446: $3c
    xor e                                         ; $5447: $ab
    and e                                         ; $5448: $a3
    cp d                                          ; $5449: $ba
    xor c                                         ; $544a: $a9
    or d                                          ; $544b: $b2
    ld a, [hl-]                                   ; $544c: $3a
    ld c, c                                       ; $544d: $49
    ld c, b                                       ; $544e: $48
    ld d, l                                       ; $544f: $55

Jump_06e_5450:
    ld l, [hl]                                    ; $5450: $6e
    dec a                                         ; $5451: $3d
    rst $18                                       ; $5452: $df
    reti                                          ; $5453: $d9


    dec bc                                        ; $5454: $0b
    ld c, l                                       ; $5455: $4d
    xor [hl]                                      ; $5456: $ae
    ld [c], a                                     ; $5457: $e2
    ld [hl], c                                    ; $5458: $71
    ld [hl], h                                    ; $5459: $74
    ld [hl], l                                    ; $545a: $75
    ld l, c                                       ; $545b: $69
    push bc                                       ; $545c: $c5
    jp hl                                         ; $545d: $e9


    ret z                                         ; $545e: $c8

    inc d                                         ; $545f: $14
    jp nz, Jump_06e_76cf                          ; $5460: $c2 $cf $76

jr_06e_5463:
    nop                                           ; $5463: $00
    rst $10                                       ; $5464: $d7
    ld l, l                                       ; $5465: $6d
    ld b, h                                       ; $5466: $44
    ld d, h                                       ; $5467: $54
    dec e                                         ; $5468: $1d
    inc de                                        ; $5469: $13
    db $f4                                        ; $546a: $f4
    ccf                                           ; $546b: $3f
    ld a, [c]                                     ; $546c: $f2
    xor h                                         ; $546d: $ac
    ld a, [bc]                                    ; $546e: $0a
    ld hl, $d93b                                  ; $546f: $21 $3b $d9
    or e                                          ; $5472: $b3
    ld c, h                                       ; $5473: $4c
    dec c                                         ; $5474: $0d
    ld b, a                                       ; $5475: $47
    ld [hl], l                                    ; $5476: $75
    jp z, $272c                                   ; $5477: $ca $2c $27

    ld b, a                                       ; $547a: $47
    add e                                         ; $547b: $83
    push af                                       ; $547c: $f5
    db $ed                                        ; $547d: $ed
    db $e4                                        ; $547e: $e4
    add h                                         ; $547f: $84
    dec sp                                        ; $5480: $3b
    db $fd                                        ; $5481: $fd
    jr jr_06e_5463                                ; $5482: $18 $df

    jr c, jr_06e_5486                             ; $5484: $38 $00

jr_06e_5486:
    rra                                           ; $5486: $1f
    and a                                         ; $5487: $a7
    rst $38                                       ; $5488: $ff
    xor d                                         ; $5489: $aa
    ld e, a                                       ; $548a: $5f
    or a                                          ; $548b: $b7
    ld l, c                                       ; $548c: $69
    dec c                                         ; $548d: $0d
    inc h                                         ; $548e: $24
    sub [hl]                                      ; $548f: $96
    dec sp                                        ; $5490: $3b
    ei                                            ; $5491: $fb
    rst $00                                       ; $5492: $c7
    ld [$e17f], a                                 ; $5493: $ea $7f $e1
    ld a, e                                       ; $5496: $7b
    ret c                                         ; $5497: $d8

    sub $6b                                       ; $5498: $d6 $6b
    ret nc                                        ; $549a: $d0

    and $df                                       ; $549b: $e6 $df
    xor c                                         ; $549d: $a9
    ld [hl], d                                    ; $549e: $72
    ld d, l                                       ; $549f: $55
    ld e, c                                       ; $54a0: $59
    xor $ec                                       ; $54a1: $ee $ec
    rst $30                                       ; $54a3: $f7
    pop bc                                        ; $54a4: $c1
    ld d, l                                       ; $54a5: $55
    xor h                                         ; $54a6: $ac
    or h                                          ; $54a7: $b4
    dec e                                         ; $54a8: $1d
    rst $20                                       ; $54a9: $e7
    xor c                                         ; $54aa: $a9
    and c                                         ; $54ab: $a1
    ld d, c                                       ; $54ac: $51
    ld l, $9d                                     ; $54ad: $2e $9d
    adc d                                         ; $54af: $8a
    or b                                          ; $54b0: $b0
    jp $c72a                                      ; $54b1: $c3 $2a $c7


    ld [hl], l                                    ; $54b4: $75
    ld a, [de]                                    ; $54b5: $1a
    jp c, $a888                                   ; $54b6: $da $88 $a8

    ld a, [hl-]                                   ; $54b9: $3a
    sub $b7                                       ; $54ba: $d6 $b7
    sub e                                         ; $54bc: $93
    inc de                                        ; $54bd: $13
    xor $f4                                       ; $54be: $ee $f4
    ld h, e                                       ; $54c0: $63
    call c, $7afa                                 ; $54c1: $dc $fa $7a
    sub e                                         ; $54c4: $93
    ld b, e                                       ; $54c5: $43
    jp hl                                         ; $54c6: $e9


    ld l, b                                       ; $54c7: $68
    and a                                         ; $54c8: $a7
    or e                                          ; $54c9: $b3
    inc l                                         ; $54ca: $2c
    rla                                           ; $54cb: $17
    ld l, $1d                                     ; $54cc: $2e $1d
    rra                                           ; $54ce: $1f
    scf                                           ; $54cf: $37
    or h                                          ; $54d0: $b4
    ld de, $7551                                  ; $54d1: $11 $51 $75
    xor h                                         ; $54d4: $ac

jr_06e_54d5:
    ld l, a                                       ; $54d5: $6f
    daa                                           ; $54d6: $27
    daa                                           ; $54d7: $27
    call c, $c7e9                                 ; $54d8: $dc $e9 $c7
    ld e, b                                       ; $54db: $58
    pop de                                        ; $54dc: $d1
    xor h                                         ; $54dd: $ac
    add [hl]                                      ; $54de: $86
    jr nc, jr_06e_54d5                            ; $54df: $30 $f4

    jp $dec9                                      ; $54e1: $c3 $c9 $de


    xor b                                         ; $54e4: $a8
    ld e, e                                       ; $54e5: $5b
    rst $08                                       ; $54e6: $cf
    ld [hl], a                                    ; $54e7: $77
    sub $28                                       ; $54e8: $d6 $28
    add hl, hl                                    ; $54ea: $29
    ld h, h                                       ; $54eb: $64
    ld l, d                                       ; $54ec: $6a
    ld [hl], d                                    ; $54ed: $72
    xor b                                         ; $54ee: $a8
    inc e                                         ; $54ef: $1c
    ld c, e                                       ; $54f0: $4b
    rst $18                                       ; $54f1: $df
    and e                                         ; $54f2: $a3
    ret                                           ; $54f3: $c9


    ld c, [hl]                                    ; $54f4: $4e
    call z, $f591                                 ; $54f5: $cc $91 $f5
    db $d3                                        ; $54f8: $d3
    ld l, e                                       ; $54f9: $6b
    dec hl                                        ; $54fa: $2b
    cpl                                           ; $54fb: $2f
    adc l                                         ; $54fc: $8d
    ld [hl], $f5                                  ; $54fd: $36 $f5
    add sp, $35                                   ; $54ff: $e8 $35
    sbc h                                         ; $5501: $9c
    ld d, $b6                                     ; $5502: $16 $b6
    ld e, [hl]                                    ; $5504: $5e
    rra                                           ; $5505: $1f
    dec bc                                        ; $5506: $0b
    inc h                                         ; $5507: $24
    or $3f                                        ; $5508: $f6 $3f
    ld a, [c]                                     ; $550a: $f2
    xor h                                         ; $550b: $ac
    and c                                         ; $550c: $a1
    ld d, c                                       ; $550d: $51
    ld l, $45                                     ; $550e: $2e $45
    ld b, l                                       ; $5510: $45
    ret c                                         ; $5511: $d8

    ld h, c                                       ; $5512: $61
    sub l                                         ; $5513: $95
    db $e3                                        ; $5514: $e3
    jp z, Jump_06e_6f9d                           ; $5515: $ca $9d $6f

    inc e                                         ; $5518: $1c
    xor a                                         ; $5519: $af
    ld [hl], a                                    ; $551a: $77
    db $db                                        ; $551b: $db
    or [hl]                                       ; $551c: $b6
    ld [$8d08], a                                 ; $551d: $ea $08 $8d
    ld b, l                                       ; $5520: $45
    xor a                                         ; $5521: $af
    db $d3                                        ; $5522: $d3
    dec de                                        ; $5523: $1b
    ld a, [$dace]                                 ; $5524: $fa $ce $da
    ld b, a                                       ; $5527: $47
    ld b, a                                       ; $5528: $47
    add h                                         ; $5529: $84
    ld a, l                                       ; $552a: $7d
    dec sp                                        ; $552b: $3b
    nop                                           ; $552c: $00
    ld d, a                                       ; $552d: $57
    add $4d                                       ; $552e: $c6 $4d
    cpl                                           ; $5530: $2f
    inc [hl]                                      ; $5531: $34
    sub b                                         ; $5532: $90
    ret c                                         ; $5533: $d8

    rst $38                                       ; $5534: $ff
    ret z                                         ; $5535: $c8

    inc sp                                        ; $5536: $33
    xor l                                         ; $5537: $ad
    ld b, d                                       ; $5538: $42
    ld c, b                                       ; $5539: $48
    ld d, a                                       ; $553a: $57
    dec e                                         ; $553b: $1d
    and c                                         ; $553c: $a1
    or c                                          ; $553d: $b1
    ld c, e                                       ; $553e: $4b
    ld [hl], l                                    ; $553f: $75
    sbc $b8                                       ; $5540: $de $b8
    ld [hl], h                                    ; $5542: $74
    nop                                           ; $5543: $00
    rst $28                                       ; $5544: $ef
    xor c                                         ; $5545: $a9
    ld c, [hl]                                    ; $5546: $4e
    di                                            ; $5547: $f3
    rst $28                                       ; $5548: $ef
    ld [hl], h                                    ; $5549: $74
    cp c                                          ; $554a: $b9
    ld [hl], b                                    ; $554b: $70
    inc l                                         ; $554c: $2c
    ld h, d                                       ; $554d: $62
    db $eb                                        ; $554e: $eb
    adc l                                         ; $554f: $8d
    adc h                                         ; $5550: $8c
    ld l, [hl]                                    ; $5551: $6e
    db $db                                        ; $5552: $db
    ld b, $71                                     ; $5553: $06 $71
    ld d, $14                                     ; $5555: $16 $14
    ei                                            ; $5557: $fb
    add hl, hl                                    ; $5558: $29
    ld e, l                                       ; $5559: $5d
    ld [hl], b                                    ; $555a: $70
    db $fd                                        ; $555b: $fd
    ld h, e                                       ; $555c: $63
    dec [hl]                                      ; $555d: $35
    ld [hl-], a                                   ; $555e: $32
    ld b, a                                       ; $555f: $47
    ld e, b                                       ; $5560: $58
    ld l, l                                       ; $5561: $6d
    sub d                                         ; $5562: $92
    db $10                                        ; $5563: $10
    ld d, [hl]                                    ; $5564: $56
    db $f4                                        ; $5565: $f4
    ld a, [hl-]                                   ; $5566: $3a
    cp l                                          ; $5567: $bd
    ld h, c                                       ; $5568: $61
    dec sp                                        ; $5569: $3b
    nop                                           ; $556a: $00
    rra                                           ; $556b: $1f
    xor l                                         ; $556c: $ad
    ld a, h                                       ; $556d: $7c
    ld c, d                                       ; $556e: $4a
    rla                                           ; $556f: $17
    ld e, h                                       ; $5570: $5c
    jp $b4f1                                      ; $5571: $c3 $f1 $b4


    add l                                         ; $5574: $85
    jp c, Jump_000_2124                           ; $5575: $da $24 $21

    xor h                                         ; $5578: $ac
    add sp, $75                                   ; $5579: $e8 $75
    ld a, d                                       ; $557b: $7a
    jp $8fd6                                      ; $557c: $c3 $d6 $8f


    dec de                                        ; $557f: $1b
    jp c, $a888                                   ; $5580: $da $88 $a8

    ld a, [hl-]                                   ; $5583: $3a
    sub $b7                                       ; $5584: $d6 $b7
    sub e                                         ; $5586: $93
    inc de                                        ; $5587: $13
    xor $f4                                       ; $5588: $ee $f4
    ld h, e                                       ; $558a: $63
    inc l                                         ; $558b: $2c
    dec [hl]                                      ; $558c: $35
    jp nz, $eb82                                  ; $558d: $c2 $82 $eb

    reti                                          ; $5590: $d9


    rst $38                                       ; $5591: $ff
    db $ec                                        ; $5592: $ec
    ld de, $4385                                  ; $5593: $11 $85 $43
    ld d, $ff                                     ; $5596: $16 $ff
    ld l, [hl]                                    ; $5598: $6e
    dec a                                         ; $5599: $3d
    ld l, a                                       ; $559a: $6f
    ld h, h                                       ; $559b: $64
    ld d, $4f                                     ; $559c: $16 $4f
    dec h                                         ; $559e: $25
    dec l                                         ; $559f: $2d
    ld a, [c]                                     ; $55a0: $f2
    ld [hl], $ea                                  ; $55a1: $36 $ea
    reti                                          ; $55a3: $d9


    ld b, b                                       ; $55a4: $40
    ld h, d                                       ; $55a5: $62

Call_06e_55a6:
    cp c                                          ; $55a6: $b9
    or e                                          ; $55a7: $b3
    ld a, a                                       ; $55a8: $7f
    xor h                                         ; $55a9: $ac
    ld b, $12                                     ; $55aa: $06 $12
    adc l                                         ; $55ac: $8d
    sub $48                                       ; $55ad: $d6 $48
    ld l, e                                       ; $55af: $6b
    ld [hl], d                                    ; $55b0: $72
    add sp, $3e                                   ; $55b1: $e8 $3e
    ld sp, hl                                     ; $55b3: $f9
    add h                                         ; $55b4: $84
    jp z, $7fc9                                   ; $55b5: $ca $c9 $7f

    sbc d                                         ; $55b8: $9a
    and d                                         ; $55b9: $a2
    ld [hl], d                                    ; $55ba: $72
    ld e, h                                       ; $55bb: $5c
    rst $38                                       ; $55bc: $ff
    inc hl                                        ; $55bd: $23
    rst $08                                       ; $55be: $cf
    xor d                                         ; $55bf: $aa
    inc hl                                        ; $55c0: $23

jr_06e_55c1:
    inc [hl]                                      ; $55c1: $34
    halt                                          ; $55c2: $76
    xor c                                         ; $55c3: $a9
    adc $76                                       ; $55c4: $ce $76
    nop                                           ; $55c6: $00
    scf                                           ; $55c7: $37
    ld e, b                                       ; $55c8: $58
    xor $a8                                       ; $55c9: $ee $a8
    ld b, d                                       ; $55cb: $42
    ret z                                         ; $55cc: $c8

    ld b, $12                                     ; $55cd: $06 $12
    ei                                            ; $55cf: $fb
    halt                                          ; $55d0: $76
    ld [hl], d                                    ; $55d1: $72
    jp nz, Jump_06e_7e9d                          ; $55d2: $c2 $9d $7e

    adc h                                         ; $55d5: $8c
    call Call_06e_53bf                            ; $55d6: $cd $bf $53
    ld l, d                                       ; $55d9: $6a
    inc c                                         ; $55da: $0c
    ld l, [hl]                                    ; $55db: $6e
    ld b, [hl]                                    ; $55dc: $46
    xor c                                         ; $55dd: $a9
    ld [hl], d                                    ; $55de: $72
    halt                                          ; $55df: $76
    ld [$237a], sp                                ; $55e0: $08 $7a $23
    inc hl                                        ; $55e3: $23
    ld h, h                                       ; $55e4: $64
    inc hl                                        ; $55e5: $23
    sbc h                                         ; $55e6: $9c
    ldh a, [$82]                                  ; $55e7: $f0 $82
    xor e                                         ; $55e9: $ab
    ld b, d                                       ; $55ea: $42
    ret z                                         ; $55eb: $c8

    xor l                                         ; $55ec: $ad
    rst $20                                       ; $55ed: $e7
    dec sp                                        ; $55ee: $3b
    ei                                            ; $55ef: $fb
    rst $00                                       ; $55f0: $c7
    ld l, d                                       ; $55f1: $6a
    ld h, h                                       ; $55f2: $64
    adc [hl]                                      ; $55f3: $8e
    or b                                          ; $55f4: $b0
    jp c, Jump_000_2124                           ; $55f5: $da $24 $21

    xor h                                         ; $55f8: $ac
    add sp, $75                                   ; $55f9: $e8 $75
    ld a, d                                       ; $55fb: $7a
    ld b, e                                       ; $55fc: $43
    xor c                                         ; $55fd: $a9
    ld de, $b3cd                                  ; $55fe: $11 $cd $b3
    ld [hl+], a                                   ; $5601: $22
    cpl                                           ; $5602: $2f
    dec e                                         ; $5603: $1d
    rst $20                                       ; $5604: $e7
    add hl, sp                                    ; $5605: $39
    cp $4e                                        ; $5606: $fe $4e
    sbc c                                         ; $5608: $99
    ld a, [$d49f]                                 ; $5609: $fa $9f $d4
    ld c, b                                       ; $560c: $48
    ld l, e                                       ; $560d: $6b
    jr nz, jr_06e_55c1                            ; $560e: $20 $b1

    ld [$c591], sp                                ; $5610: $08 $91 $c5
    or b                                          ; $5613: $b0
    and d                                         ; $5614: $a2
    rst $10                                       ; $5615: $d7
    jp hl                                         ; $5616: $e9


    dec c                                         ; $5617: $0d
    dec c                                         ; $5618: $0d
    ld l, l                                       ; $5619: $6d
    add hl, sp                                    ; $561a: $39
    ld l, $9b                                     ; $561b: $2e $9b
    db $ed                                        ; $561d: $ed
    nop                                           ; $561e: $00
    rra                                           ; $561f: $1f
    db $fd                                        ; $5620: $fd
    ld c, [hl]                                    ; $5621: $4e
    sub l                                         ; $5622: $95
    xor [hl]                                      ; $5623: $ae
    ld l, [hl]                                    ; $5624: $6e
    ld h, l                                       ; $5625: $65
    ld sp, $ef8a                                  ; $5626: $31 $8a $ef
    sub e                                         ; $5629: $93
    rst $00                                       ; $562a: $c7
    halt                                          ; $562b: $76
    nop                                           ; $562c: $00
    rst $20                                       ; $562d: $e7
    ld b, l                                       ; $562e: $45
    db $dd                                        ; $562f: $dd
    jp z, $3462                                   ; $5630: $ca $62 $34

    jp nz, Jump_000_2f09                          ; $5633: $c2 $09 $2f

    cp b                                          ; $5636: $b8
    ld c, e                                       ; $5637: $4b
    rlca                                          ; $5638: $07
    rst $20                                       ; $5639: $e7
    ld a, [de]                                    ; $563a: $1a
    add e                                         ; $563b: $83
    sbc e                                         ; $563c: $9b
    ld d, c                                       ; $563d: $51
    pop af                                        ; $563e: $f1
    jr @-$48                                      ; $563f: $18 $b6

    cp [hl]                                       ; $5641: $be
    ld e, [hl]                                    ; $5642: $5e
    rst $00                                       ; $5643: $c7
    ld e, l                                       ; $5644: $5d
    inc a                                         ; $5645: $3c
    ld d, [hl]                                    ; $5646: $56
    add hl, sp                                    ; $5647: $39
    ei                                            ; $5648: $fb
    ld c, b                                       ; $5649: $48
    sbc b                                         ; $564a: $98
    dec de                                        ; $564b: $1b
    dec l                                         ; $564c: $2d
    ld a, [hl+]                                   ; $564d: $2a
    ld de, $eca2                                  ; $564e: $11 $a2 $ec
    or [hl]                                       ; $5651: $b6
    ld l, l                                       ; $5652: $6d
    rlca                                          ; $5653: $07
    sbc a                                         ; $5654: $9f
    add hl, de                                    ; $5655: $19
    rst $38                                       ; $5656: $ff
    ld h, e                                       ; $5657: $63
    ld l, a                                       ; $5658: $6f
    db $f4                                        ; $5659: $f4
    and $c8                                       ; $565a: $e6 $c8
    or e                                          ; $565c: $b3
    ld d, d                                       ; $565d: $52
    ld h, e                                       ; $565e: $63
    ld [hl], b                                    ; $565f: $70
    ld de, $ab48                                  ; $5660: $11 $48 $ab
    ld [hl], h                                    ; $5663: $74
    ld b, d                                       ; $5664: $42
    xor h                                         ; $5665: $ac
    ld e, e                                       ; $5666: $5b
    di                                            ; $5667: $f3
    ld b, [hl]                                    ; $5668: $46
    or a                                          ; $5669: $b7
    ld l, l                                       ; $566a: $6d
    dec hl                                        ; $566b: $2b
    sub a                                         ; $566c: $97
    and b                                         ; $566d: $a0
    db $d3                                        ; $566e: $d3
    ld b, b                                       ; $566f: $40
    ld h, d                                       ; $5670: $62
    cpl                                           ; $5671: $2f
    inc [hl]                                      ; $5672: $34
    sub b                                         ; $5673: $90
    ret c                                         ; $5674: $d8

    rst $38                                       ; $5675: $ff
    ret z                                         ; $5676: $c8

    inc sp                                        ; $5677: $33
    dec l                                         ; $5678: $2d
    dec [hl]                                      ; $5679: $35
    cp $4e                                        ; $567a: $fe $4e
    ld b, l                                       ; $567c: $45
    cp b                                          ; $567d: $b8
    call $e7ec                                    ; $567e: $cd $ec $e7
    adc l                                         ; $5681: $8d
    inc bc                                        ; $5682: $03
    rra                                           ; $5683: $1f
    pop bc                                        ; $5684: $c1
    ld b, e                                       ; $5685: $43
    ret nc                                        ; $5686: $d0

    adc a                                         ; $5687: $8f
    ld hl, sp+$5f                                 ; $5688: $f8 $5f
    ei                                            ; $568a: $fb
    ld c, [hl]                                    ; $568b: $4e
    ld b, c                                       ; $568c: $41

Call_06e_568d:
    inc sp                                        ; $568d: $33
    inc a                                         ; $568e: $3c
    or [hl]                                       ; $568f: $b6
    inc bc                                        ; $5690: $03
    scf                                           ; $5691: $37
    ld b, a                                       ; $5692: $47
    sbc [hl]                                      ; $5693: $9e
    ld l, c                                       ; $5694: $69
    rst $38                                       ; $5695: $ff
    cp a                                          ; $5696: $bf
    ld d, e                                       ; $5697: $53
    push bc                                       ; $5698: $c5
    or d                                          ; $5699: $b2
    ld c, [hl]                                    ; $569a: $4e
    adc d                                         ; $569b: $8a
    add [hl]                                      ; $569c: $86
    cp $79                                        ; $569d: $fe $79
    ld e, e                                       ; $569f: $5b
    ret nc                                        ; $56a0: $d0

    db $fc                                        ; $56a1: $fc
    dec sp                                        ; $56a2: $3b
    db $fd                                        ; $56a3: $fd
    rst $38                                       ; $56a4: $ff
    adc $1b                                       ; $56a5: $ce $1b
    rlca                                          ; $56a7: $07
    rra                                           ; $56a8: $1f
    db $fd                                        ; $56a9: $fd
    ld c, [hl]                                    ; $56aa: $4e
    rst $38                                       ; $56ab: $ff
    ld [hl], b                                    ; $56ac: $70
    and e                                         ; $56ad: $a3
    add d                                         ; $56ae: $82
    and $df                                       ; $56af: $e6 $df
    reti                                          ; $56b1: $d9


    jp c, $c19b                                   ; $56b2: $da $9b $c1

    ld d, l                                       ; $56b5: $55
    sub $73                                       ; $56b6: $d6 $73
    ld b, l                                       ; $56b8: $45
    sbc b                                         ; $56b9: $98
    and b                                         ; $56ba: $a0
    rra                                           ; $56bb: $1f
    pop af                                        ; $56bc: $f1
    cp a                                          ; $56bd: $bf
    or $9d                                        ; $56be: $f6 $9d
    sub a                                         ; $56c0: $97

jr_06e_56c1:
    ld c, $37                                     ; $56c1: $0e $37
    ld b, a                                       ; $56c3: $47
    sbc [hl]                                      ; $56c4: $9e
    ld l, c                                       ; $56c5: $69
    di                                            ; $56c6: $f3
    rst $28                                       ; $56c7: $ef
    inc [hl]                                      ; $56c8: $34
    inc e                                         ; $56c9: $1c
    ld c, a                                       ; $56ca: $4f
    ld d, a                                       ; $56cb: $57
    push bc                                       ; $56cc: $c5
    or d                                          ; $56cd: $b2
    xor l                                         ; $56ce: $ad
    scf                                           ; $56cf: $37
    ld b, a                                       ; $56d0: $47
    sbc [hl]                                      ; $56d1: $9e
    ld l, c                                       ; $56d2: $69
    rst $38                                       ; $56d3: $ff
    cp a                                          ; $56d4: $bf
    ld d, e                                       ; $56d5: $53
    and l                                         ; $56d6: $a5
    dec [hl]                                      ; $56d7: $35
    db $e4                                        ; $56d8: $e4
    ld l, c                                       ; $56d9: $69
    or h                                          ; $56da: $b4
    sub e                                         ; $56db: $93
    and d                                         ; $56dc: $a2
    and c                                         ; $56dd: $a1
    ld a, a                                       ; $56de: $7f
    sbc $2e                                       ; $56df: $de $2e
    dec de                                        ; $56e1: $1b
    jp nc, $ad3c                                  ; $56e2: $d2 $3c $ad

    ld c, $4b                                     ; $56e5: $0e $4b
    dec de                                        ; $56e7: $1b
    ld c, [hl]                                    ; $56e8: $4e
    adc [hl]                                      ; $56e9: $8e
    and e                                         ; $56ea: $a3
    dec c                                         ; $56eb: $0d
    ld h, c                                       ; $56ec: $61
    ld l, b                                       ; $56ed: $68
    ld e, $55                                     ; $56ee: $1e $55
    ld d, h                                       ; $56f0: $54
    ld b, d                                       ; $56f1: $42
    or c                                          ; $56f2: $b1
    dec e                                         ; $56f3: $1d
    scf                                           ; $56f4: $37
    ld b, a                                       ; $56f5: $47
    sbc [hl]                                      ; $56f6: $9e
    dec [hl]                                      ; $56f7: $35
    rst $38                                       ; $56f8: $ff
    ld c, [hl]                                    ; $56f9: $4e
    push hl                                       ; $56fa: $e5
    cp b                                          ; $56fb: $b8
    ret nc                                        ; $56fc: $d0

    ret z                                         ; $56fd: $c8

    db $ec                                        ; $56fe: $ec
    add hl, hl                                    ; $56ff: $29
    add sp, -$2e                                  ; $5700: $e8 $d2
    jr c, jr_06e_56c1                             ; $5702: $38 $bd

    ret nc                                        ; $5704: $d0

Jump_06e_5705:
    push hl                                       ; $5705: $e5
    jp nz, $88b1                                  ; $5706: $c2 $b1 $88

    inc e                                         ; $5709: $1c
    cp c                                          ; $570a: $b9
    dec e                                         ; $570b: $1d
    rra                                           ; $570c: $1f
    db $fd                                        ; $570d: $fd

Call_06e_570e:
Jump_06e_570e:
    ld c, [hl]                                    ; $570e: $4e
    rst $38                                       ; $570f: $ff
    sub e                                         ; $5710: $93
    ld [$6eb9], a                                 ; $5711: $ea $b9 $6e
    pop bc                                        ; $5714: $c1
    ld a, [$791f]                                 ; $5715: $fa $1f $79
    and [hl]                                      ; $5718: $a6
    ld e, l                                       ; $5719: $5d
    ld b, [hl]                                    ; $571a: $46
    or a                                          ; $571b: $b7
    push af                                       ; $571c: $f5
    inc a                                         ; $571d: $3c
    dec d                                         ; $571e: $15
    and c                                         ; $571f: $a1
    ld sp, $55fb                                  ; $5720: $31 $fb $55
    sub h                                         ; $5723: $94
    ld e, c                                       ; $5724: $59
    ld h, h                                       ; $5725: $64
    call z, $5611                                 ; $5726: $cc $11 $56
    ld l, b                                       ; $5729: $68
    ld b, e                                       ; $572a: $43
    xor d                                         ; $572b: $aa
    ld c, $b4                                     ; $572c: $0e $b4
    ld [hl], d                                    ; $572e: $72
    ld e, h                                       ; $572f: $5c
    rst $38                                       ; $5730: $ff
    inc hl                                        ; $5731: $23
    rst $08                                       ; $5732: $cf
    ld [hl], h                                    ; $5733: $74
    db $eb                                        ; $5734: $eb
    ld a, c                                       ; $5735: $79
    ld [$6db6], a                                 ; $5736: $ea $b6 $6d
    ld h, l                                       ; $5739: $65
    ld [$527f], a                                 ; $573a: $ea $7f $52
    add l                                         ; $573d: $85
    or [hl]                                       ; $573e: $b6
    ld c, [hl]                                    ; $573f: $4e
    or b                                          ; $5740: $b0
    jp z, $fd71                                   ; $5741: $ca $71 $fd

    adc a                                         ; $5744: $8f
    inc a                                         ; $5745: $3c
    db $d3                                        ; $5746: $d3
    ld c, e                                       ; $5747: $4b
    rlca                                          ; $5748: $07
    sub a                                         ; $5749: $97

Jump_06e_574a:
    push bc                                       ; $574a: $c5
    add d                                         ; $574b: $82
    ld a, [hl]                                    ; $574c: $7e
    call nz, $daff                                ; $574d: $c4 $ff $da
    ld [hl], a                                    ; $5750: $77
    ld a, [bc]                                    ; $5751: $0a

jr_06e_5752:
    ld [$4f58], a                                 ; $5752: $ea $58 $4f
    sub l                                         ; $5755: $95
    ld l, c                                       ; $5756: $69
    rrca                                          ; $5757: $0f
    cp c                                          ; $5758: $b9
    push af                                       ; $5759: $f5
    ld a, [hl-]                                   ; $575a: $3a
    and e                                         ; $575b: $a3
    dec l                                         ; $575c: $2d
    pop de                                        ; $575d: $d1
    sub d                                         ; $575e: $92
    ld c, c                                       ; $575f: $49
    ei                                            ; $5760: $fb
    reti                                          ; $5761: $d9


    ld b, h                                       ; $5762: $44
    db $ec                                        ; $5763: $ec
    ld c, c                                       ; $5764: $49
    cpl                                           ; $5765: $2f
    dec e                                         ; $5766: $1d
    scf                                           ; $5767: $37
    ld b, a                                       ; $5768: $47
    sbc [hl]                                      ; $5769: $9e
    push af                                       ; $576a: $f5
    adc a                                         ; $576b: $8f
    ld d, l                                       ; $576c: $55
    and $c8                                       ; $576d: $e6 $c8
    db $ec                                        ; $576f: $ec
    ld l, c                                       ; $5770: $69
    ld [hl], l                                    ; $5771: $75
    ld e, b                                       ; $5772: $58
    jp c, $f308                                   ; $5773: $da $08 $f3

    inc d                                         ; $5776: $14
    db $f4                                        ; $5777: $f4
    inc hl                                        ; $5778: $23
    cp $d7                                        ; $5779: $fe $d7
    cp [hl]                                       ; $577b: $be
    ld [hl], e                                    ; $577c: $73
    dec sp                                        ; $577d: $3b
    nop                                           ; $577e: $00
    rst $20                                       ; $577f: $e7
    ld a, [de]                                    ; $5780: $1a
    add e                                         ; $5781: $83
    dec bc                                        ; $5782: $0b
    ld hl, $e22d                                  ; $5783: $21 $2d $e2
    ld d, d                                       ; $5786: $52
    ld l, a                                       ; $5787: $6f
    ld h, h                                       ; $5788: $64
    add h                                         ; $5789: $84
    db $ec                                        ; $578a: $ec
    rst $30                                       ; $578b: $f7
    pop bc                                        ; $578c: $c1
    push af                                       ; $578d: $f5
    db $fc                                        ; $578e: $fc
    or e                                          ; $578f: $b3
    call nc, $eb08                                ; $5790: $d4 $08 $eb
    ld e, $5c                                     ; $5793: $1e $5c
    rst $08                                       ; $5795: $cf
    inc e                                         ; $5796: $1c
    ld l, l                                       ; $5797: $6d
    or [hl]                                       ; $5798: $b6
    inc bc                                        ; $5799: $03
    rst $20                                       ; $579a: $e7
    xor c                                         ; $579b: $a9
    sub b                                         ; $579c: $90
    ld [c], a                                     ; $579d: $e2
    ld l, c                                       ; $579e: $69
    jr nz, jr_06e_5752                            ; $579f: $20 $b1

    call c, $fcd9                                 ; $57a1: $dc $d9 $fc
    dec sp                                        ; $57a4: $3b
    sub l                                         ; $57a5: $95
    sub e                                         ; $57a6: $93
    sub l                                         ; $57a7: $95
    and a                                         ; $57a8: $a7
    call nz, $d1e6                                ; $57a9: $c4 $e6 $d1
    cp $69                                        ; $57ac: $fe $69
    db $db                                        ; $57ae: $db
    ld bc, $069f                                  ; $57af: $01 $9f $06
    add a                                         ; $57b2: $87

Call_06e_57b3:
    res 1, a                                      ; $57b3: $cb $8f
    and b                                         ; $57b5: $a0
    ld d, a                                       ; $57b6: $57
    ld h, c                                       ; $57b7: $61
    or $93                                        ; $57b8: $f6 $93
    and b                                         ; $57ba: $a0
    ld [hl], d                                    ; $57bb: $72
    inc e                                         ; $57bc: $1c
    dec h                                         ; $57bd: $25
    adc e                                         ; $57be: $8b
    add $91                                       ; $57bf: $c6 $91
    or b                                          ; $57c1: $b0
    and d                                         ; $57c2: $a2
    and d                                         ; $57c3: $a2
    dec e                                         ; $57c4: $1d
    add hl, hl                                    ; $57c5: $29
    ld h, d                                       ; $57c6: $62
    dec sp                                        ; $57c7: $3b
    nop                                           ; $57c8: $00
    rst $20                                       ; $57c9: $e7
    xor c                                         ; $57ca: $a9
    call nc, $a240                                ; $57cb: $d4 $40 $a2
    ld e, h                                       ; $57ce: $5c
    push af                                       ; $57cf: $f5
    ld l, h                                       ; $57d0: $6c
    inc [hl]                                      ; $57d1: $34
    call c, $7b3e                                 ; $57d2: $dc $3e $7b
    ld h, d                                       ; $57d5: $62
    rst $00                                       ; $57d6: $c7
    and l                                         ; $57d7: $a5
    ld a, [hl]                                    ; $57d8: $7e
    ld b, [hl]                                    ; $57d9: $46
    scf                                           ; $57da: $37
    jp c, Jump_06e_6240                           ; $57db: $da $40 $62

    rst $38                                       ; $57de: $ff
    or e                                          ; $57df: $b3
    ld b, a                                       ; $57e0: $47
    ret c                                         ; $57e1: $d8

    and l                                         ; $57e2: $a5
    inc bc                                        ; $57e3: $03
    rst $20                                       ; $57e4: $e7
    dec sp                                        ; $57e5: $3b
    ld c, e                                       ; $57e6: $4b
    adc l                                         ; $57e7: $8d
    pop bc                                        ; $57e8: $c1
    push af                                       ; $57e9: $f5
    ld h, e                                       ; $57ea: $63
    ld l, [hl]                                    ; $57eb: $6e
    ld h, l                                       ; $57ec: $65
    ccf                                           ; $57ed: $3f
    ld e, e                                       ; $57ee: $5b
    ld l, a                                       ; $57ef: $6f
    jp nz, Jump_06e_5e8d                          ; $57f0: $c2 $8d $5e

    ld a, [hl-]                                   ; $57f3: $3a
    nop                                           ; $57f4: $00
    sub a                                         ; $57f5: $97
    dec de                                        ; $57f6: $1b
    jp c, $a888                                   ; $57f7: $da $88 $a8

    ld a, [hl-]                                   ; $57fa: $3a
    add [hl]                                      ; $57fb: $86
    ld e, [hl]                                    ; $57fc: $5e
    sub e                                         ; $57fd: $93
    rst $28                                       ; $57fe: $ef
    ld c, [hl]                                    ; $57ff: $4e
    add $09                                       ; $5800: $c6 $09
    ei                                            ; $5802: $fb
    ld e, [hl]                                    ; $5803: $5e
    cp a                                          ; $5804: $bf
    ld d, h                                       ; $5805: $54
    reti                                          ; $5806: $d9


    ld b, b                                       ; $5807: $40
    ld h, d                                       ; $5808: $62
    and a                                         ; $5809: $a7
    and c                                         ; $580a: $a1
    adc l                                         ; $580b: $8d
    adc b                                         ; $580c: $88
    xor d                                         ; $580d: $aa
    ld h, e                                       ; $580e: $63
    ld a, l                                       ; $580f: $7d
    dec sp                                        ; $5810: $3b
    add hl, sp                                    ; $5811: $39
    pop hl                                        ; $5812: $e1
    ld c, [hl]                                    ; $5813: $4e
    ccf                                           ; $5814: $3f
    add $52                                       ; $5815: $c6 $52
    ld h, e                                       ; $5817: $63
    ld [hl], b                                    ; $5818: $70
    jp hl                                         ; $5819: $e9


    ld a, [$64e1]                                 ; $581a: $fa $e1 $64
    ld l, a                                       ; $581d: $6f
    call nc, Call_000_00ed                        ; $581e: $d4 $ed $00
    scf                                           ; $5821: $37
    ld b, a                                       ; $5822: $47
    sbc [hl]                                      ; $5823: $9e
    ld d, l                                       ; $5824: $55
    ld hl, $2764                                  ; $5825: $21 $64 $27
    ld a, e                                       ; $5828: $7b
    halt                                          ; $5829: $76
    ld a, [de]                                    ; $582a: $1a
    jp c, $a888                                   ; $582b: $da $88 $a8

    ld a, [hl-]                                   ; $582e: $3a
    sub $b7                                       ; $582f: $d6 $b7
    sub e                                         ; $5831: $93
    inc de                                        ; $5832: $13
    xor $f4                                       ; $5833: $ee $f4
    ld h, e                                       ; $5835: $63
    inc l                                         ; $5836: $2c
    dec [hl]                                      ; $5837: $35
    ld b, $bf                                     ; $5838: $06 $bf
    ld [hl], c                                    ; $583a: $71
    nop                                           ; $583b: $00
    rst $20                                       ; $583c: $e7
    xor c                                         ; $583d: $a9
    sub e                                         ; $583e: $93
    cp $ab                                        ; $583f: $fe $ab
    ld a, [hl]                                    ; $5841: $7e
    db $dd                                        ; $5842: $dd
    and [hl]                                      ; $5843: $a6
    dec [hl]                                      ; $5844: $35
    sub b                                         ; $5845: $90
    ld e, b                                       ; $5846: $58
    xor $2c                                       ; $5847: $ee $2c
    dec [hl]                                      ; $5849: $35
    ld [c], a                                     ; $584a: $e2
    adc a                                         ; $584b: $8f
    xor [hl]                                      ; $584c: $ae
    db $ec                                        ; $584d: $ec
    and a                                         ; $584e: $a7
    rst $38                                       ; $584f: $ff
    add l                                         ; $5850: $85
    rst $28                                       ; $5851: $ef
    ld h, c                                       ; $5852: $61
    db $db                                        ; $5853: $db
    ld bc, $3be7                                  ; $5854: $01 $e7 $3b
    dec de                                        ; $5857: $1b
    adc [hl]                                      ; $5858: $8e
    ld h, a                                       ; $5859: $67
    xor c                                         ; $585a: $a9
    ld de, $ba56                                  ; $585b: $11 $56 $ba
    ld b, $12                                     ; $585e: $06 $12
    or $40                                        ; $5860: $f6 $40
    and d                                         ; $5862: $a2
    ld [hl], l                                    ; $5863: $75
    ld c, a                                       ; $5864: $4f
    daa                                           ; $5865: $27
    ret c                                         ; $5866: $d8

    halt                                          ; $5867: $76
    nop                                           ; $5868: $00
    rra                                           ; $5869: $1f
    db $fd                                        ; $586a: $fd
    adc $d6                                       ; $586b: $ce $d6
    ld l, e                                       ; $586d: $6b
    ret nc                                        ; $586e: $d0

    ld [hl-], a                                   ; $586f: $32
    ld d, l                                       ; $5870: $55
    adc [hl]                                      ; $5871: $8e
    add $e4                                       ; $5872: $c6 $e4
    and [hl]                                      ; $5874: $a6
    rst $38                                       ; $5875: $ff
    or e                                          ; $5876: $b3
    daa                                           ; $5877: $27
    or $69                                        ; $5878: $f6 $69
    sbc [hl]                                      ; $587a: $9e
    ld b, $d2                                     ; $587b: $06 $d2
    jp z, $8a71                                   ; $587d: $ca $71 $8a

    db $ec                                        ; $5880: $ec
    ld h, c                                       ; $5881: $61
    sub l                                         ; $5882: $95
    db $e3                                        ; $5883: $e3
    ld a, [hl+]                                   ; $5884: $2a
    ld [hl-], a                                   ; $5885: $32
    ld b, $d2                                     ; $5886: $06 $d2
    ld e, c                                       ; $5888: $59
    sub [hl]                                      ; $5889: $96
    dec bc                                        ; $588a: $0b
    db $db                                        ; $588b: $db
    ld bc, $fd1f                                  ; $588c: $01 $1f $fd
    adc [hl]                                      ; $588f: $8e
    and b                                         ; $5890: $a0
    ld c, h                                       ; $5891: $4c
    call $d3bf                                    ; $5892: $cd $bf $d3
    jp hl                                         ; $5895: $e9


    ld a, a                                       ; $5896: $7f
    ld d, l                                       ; $5897: $55
    inc a                                         ; $5898: $3c
    rst $18                                       ; $5899: $df
    ld [hl], e                                    ; $589a: $73
    dec sp                                        ; $589b: $3b
    nop                                           ; $589c: $00
    rst $20                                       ; $589d: $e7
    xor c                                         ; $589e: $a9
    rst $38                                       ; $589f: $ff
    ld d, l                                       ; $58a0: $55
    db $ec                                        ; $58a1: $ec
    and a                                         ; $58a2: $a7
    ld [hl], h                                    ; $58a3: $74
    pop bc                                        ; $58a4: $c1
    push af                                       ; $58a5: $f5
    ccf                                           ; $58a6: $3f
    ret z                                         ; $58a7: $c8

    ld a, [hl]                                    ; $58a8: $7e
    ld a, [de]                                    ; $58a9: $1a
    jp nz, Jump_06e_7dd0                          ; $58aa: $c2 $d0 $7d

    ld a, [c]                                     ; $58ad: $f2
    adc c                                         ; $58ae: $89
    push af                                       ; $58af: $f5
    jr z, jr_06e_5907                             ; $58b0: $28 $55

    adc $8e                                       ; $58b2: $ce $8e
    xor l                                         ; $58b4: $ad
    sbc a                                         ; $58b5: $9f
    ld h, c                                       ; $58b6: $61
    rst $38                                       ; $58b7: $ff
    di                                            ; $58b8: $f3
    halt                                          ; $58b9: $76
    ld b, l                                       ; $58ba: $45
    and e                                         ; $58bb: $a3
    jp z, $e772                                   ; $58bc: $ca $72 $e7

    halt                                          ; $58bf: $76
    nop                                           ; $58c0: $00
    rst $10                                       ; $58c1: $d7
    ld l, c                                       ; $58c2: $69
    and a                                         ; $58c3: $a7
    sub h                                         ; $58c4: $94
    inc hl                                        ; $58c5: $23
    ld a, e                                       ; $58c6: $7b
    ld h, a                                       ; $58c7: $67
    ld b, e                                       ; $58c8: $43
    dec de                                        ; $58c9: $1b
    ld de, $c755                                  ; $58ca: $11 $55 $c7
    ret nc                                        ; $58cd: $d0

    ld l, e                                       ; $58ce: $6b
    ld a, [c]                                     ; $58cf: $f2
    db $dd                                        ; $58d0: $dd
    ret                                           ; $58d1: $c9


    jr c, jr_06e_5935                             ; $58d2: $38 $61

    rst $18                                       ; $58d4: $df
    or a                                          ; $58d5: $b7
    sbc [hl]                                      ; $58d6: $9e
    and a                                         ; $58d7: $a7
    cp $57                                        ; $58d8: $fe $57
    ld b, a                                       ; $58da: $47
    db $eb                                        ; $58db: $eb
    ld h, a                                       ; $58dc: $67
    ld l, c                                       ; $58dd: $69
    push hl                                       ; $58de: $e5
    db $e4                                        ; $58df: $e4
    ccf                                           ; $58e0: $3f
    ld c, l                                       ; $58e1: $4d
    sub c                                         ; $58e2: $91
    db $fd                                        ; $58e3: $fd
    ld l, h                                       ; $58e4: $6c
    rlca                                          ; $58e5: $07
    ld d, a                                       ; $58e6: $57
    rst $20                                       ; $58e7: $e7
    ld a, e                                       ; $58e8: $7b
    ld [hl], $ff                                  ; $58e9: $36 $ff
    ld c, [hl]                                    ; $58eb: $4e
    cpl                                           ; $58ec: $2f
    ld [hl], h                                    ; $58ed: $74
    ld [$ea98], a                                 ; $58ee: $ea $98 $ea
    rla                                           ; $58f1: $17
    ld [$38d9], a                                 ; $58f2: $ea $d9 $38
    ld c, $56                                     ; $58f5: $0e $56
    add hl, sp                                    ; $58f7: $39
    add hl, sp                                    ; $58f8: $39
    and d                                         ; $58f9: $a2
    sbc [hl]                                      ; $58fa: $9e
    dec sp                                        ; $58fb: $3b
    or a                                          ; $58fc: $b7
    inc bc                                        ; $58fd: $03
    sbc a                                         ; $58fe: $9f
    ld h, c                                       ; $58ff: $61
    rst $38                                       ; $5900: $ff
    di                                            ; $5901: $f3
    halt                                          ; $5902: $76
    cp c                                          ; $5903: $b9
    or e                                          ; $5904: $b3
    sub c                                         ; $5905: $91
    ld e, c                                       ; $5906: $59

jr_06e_5907:
    adc h                                         ; $5907: $8c
    ld l, $3f                                     ; $5908: $2e $3f
    ld d, l                                       ; $590a: $55
    sub [hl]                                      ; $590b: $96
    ld e, c                                       ; $590c: $59
    ld c, [hl]                                    ; $590d: $4e
    adc [hl]                                      ; $590e: $8e
    ld b, $ab                                     ; $590f: $06 $ab
    inc e                                         ; $5911: $1c
    rst $10                                       ; $5912: $d7
    xor e                                         ; $5913: $ab
    jr c, @-$25                                   ; $5914: $38 $d9

    ld a, [c]                                     ; $5916: $f2
    ld e, e                                       ; $5917: $5b
    rst $08                                       ; $5918: $cf
    ld [hl], a                                    ; $5919: $77
    ld l, d                                       ; $591a: $6a
    ld c, a                                       ; $591b: $4f

Jump_06e_591c:
    and e                                         ; $591c: $a3
    ld de, $9eae                                  ; $591d: $11 $ae $9e
    sub l                                         ; $5920: $95
    sub e                                         ; $5921: $93
    rst $38                                       ; $5922: $ff
    inc [hl]                                      ; $5923: $34
    add l                                         ; $5924: $85
    ld l, l                                       ; $5925: $6d
    rlca                                          ; $5926: $07
    rst $20                                       ; $5927: $e7
    xor c                                         ; $5928: $a9
    sub e                                         ; $5929: $93
    cp $ab                                        ; $592a: $fe $ab
    ret c                                         ; $592c: $d8

    ld c, a                                       ; $592d: $4f
    ld d, e                                       ; $592e: $53
    dec e                                         ; $592f: $1d
    and c                                         ; $5930: $a1
    or c                                          ; $5931: $b1
    call c, $b8d9                                 ; $5932: $dc $d9 $b8

jr_06e_5935:
    inc c                                         ; $5935: $0c
    sub $e4                                       ; $5936: $d6 $e4
    and b                                         ; $5938: $a0
    dec d                                         ; $5939: $15
    ld e, l                                       ; $593a: $5d
    or b                                          ; $593b: $b0
    dec b                                         ; $593c: $05
    xor l                                         ; $593d: $ad
    ld c, h                                       ; $593e: $4c
    ld d, $a1                                     ; $593f: $16 $a1
    db $db                                        ; $5941: $db
    ld bc, $a9e7                                  ; $5942: $01 $e7 $a9
    sub e                                         ; $5945: $93
    cp $ab                                        ; $5946: $fe $ab
    call c, $bf59                                 ; $5948: $dc $59 $bf
    ld l, [hl]                                    ; $594b: $6e
    db $d3                                        ; $594c: $d3
    adc d                                         ; $594d: $8a
    db $fd                                        ; $594e: $fd
    inc [hl]                                      ; $594f: $34
    push de                                       ; $5950: $d5
    ld de, $9b1a                                  ; $5951: $11 $1a $9b
    ld e, h                                       ; $5954: $5c
    sbc c                                         ; $5955: $99
    push hl                                       ; $5956: $e5
    db $e4                                        ; $5957: $e4
    ld l, b                                       ; $5958: $68
    db $d3                                        ; $5959: $d3
    push hl                                       ; $595a: $e5
    jp nz, $88b1                                  ; $595b: $c2 $b1 $88

    inc e                                         ; $595e: $1c
    cp c                                          ; $595f: $b9
    dec e                                         ; $5960: $1d
    rst $20                                       ; $5961: $e7
    xor c                                         ; $5962: $a9
    ld sp, hl                                     ; $5963: $f9
    ld [hl], a                                    ; $5964: $77
    ld a, [hl-]                                   ; $5965: $3a
    db $fd                                        ; $5966: $fd
    di                                            ; $5967: $f3
    ei                                            ; $5968: $fb
    xor c                                         ; $5969: $a9
    and a                                         ; $596a: $a7
    ld a, d                                       ; $596b: $7a
    halt                                          ; $596c: $76
    ld a, [$723d]                                 ; $596d: $fa $3d $72
    add h                                         ; $5970: $84
    push de                                       ; $5971: $d5
    or e                                          ; $5972: $b3
    sub e                                         ; $5973: $93
    inc hl                                        ; $5974: $23
    db $dd                                        ; $5975: $dd
    halt                                          ; $5976: $76
    nop                                           ; $5977: $00
    sub a                                         ; $5978: $97
    db $e3                                        ; $5979: $e3
    add l                                         ; $597a: $85
    ld c, [hl]                                    ; $597b: $4e
    or $2c                                        ; $597c: $f6 $2c
    ld d, e                                       ; $597e: $53
    sub l                                         ; $597f: $95
    ld c, e                                       ; $5980: $4b
    ret nc                                        ; $5981: $d0

    sbc e                                         ; $5982: $9b
    rra                                           ; $5983: $1f
    ld e, a                                       ; $5984: $5f
    ld sp, hl                                     ; $5985: $f9
    and [hl]                                      ; $5986: $a6
    pop hl                                        ; $5987: $e1
    ld a, b                                       ; $5988: $78
    jp c, $9542                                   ; $5989: $da $42 $95

    sub $b7                                       ; $598c: $d6 $b7
    sub e                                         ; $598e: $93
    inc de                                        ; $598f: $13
    xor $f4                                       ; $5990: $ee $f4
    ld h, e                                       ; $5992: $63
    call c, Call_000_1f0e                         ; $5993: $dc $0e $1f
    db $fd                                        ; $5996: $fd
    adc $d6                                       ; $5997: $ce $d6
    di                                            ; $5999: $f3
    ld [hl-], a                                   ; $599a: $32
    dec [hl]                                      ; $599b: $35
    rst $38                                       ; $599c: $ff
    ld c, [hl]                                    ; $599d: $4e
    dec e                                         ; $599e: $1d
    cp e                                          ; $599f: $bb
    db $d3                                        ; $59a0: $d3
    add hl, bc                                    ; $59a1: $09
    ld l, l                                       ; $59a2: $6d
    ld [$ffd9], a                                 ; $59a3: $ea $d9 $ff
    reti                                          ; $59a6: $d9


    inc de                                        ; $59a7: $13
    ei                                            ; $59a8: $fb
    inc [hl]                                      ; $59a9: $34
    and e                                         ; $59aa: $a3
    adc [hl]                                      ; $59ab: $8e
    adc d                                         ; $59ac: $8a
    ld a, [$84a9]                                 ; $59ad: $fa $a9 $84
    add sp, $42                                   ; $59b0: $e8 $42
    dec a                                         ; $59b2: $3d
    ld [$c590], a                                 ; $59b3: $ea $90 $c5
    cp a                                          ; $59b6: $bf
    db $db                                        ; $59b7: $db
    ld bc, $a9e7                                  ; $59b8: $01 $e7 $a9
    db $d3                                        ; $59bb: $d3
    rst $38                                       ; $59bc: $ff
    ld a, [hl+]                                   ; $59bd: $2a
    or d                                          ; $59be: $b2
    ld b, a                                       ; $59bf: $47
    or $53                                        ; $59c0: $f6 $53
    add hl, sp                                    ; $59c2: $39
    xor [hl]                                      ; $59c3: $ae
    sbc d                                         ; $59c4: $9a
    ret nc                                        ; $59c5: $d0

    ccf                                           ; $59c6: $3f
    ld d, h                                       ; $59c7: $54
    daa                                           ; $59c8: $27
    add hl, de                                    ; $59c9: $19
    or [hl]                                       ; $59ca: $b6
    ld a, [hl]                                    ; $59cb: $7e
    add [hl]                                      ; $59cc: $86
    db $fd                                        ; $59cd: $fd
    rst $08                                       ; $59ce: $cf
    db $db                                        ; $59cf: $db
    push hl                                       ; $59d0: $e5
    adc $46                                       ; $59d1: $ce $46
    ld h, [hl]                                    ; $59d3: $66
    ld sp, $fcba                                  ; $59d4: $31 $ba $fc
    inc [hl]                                      ; $59d7: $34
    inc [hl]                                      ; $59d8: $34
    call nz, $6125                                ; $59d9: $c4 $25 $61
    ld c, l                                       ; $59dc: $4d
    xor [hl]                                      ; $59dd: $ae
    pop hl                                        ; $59de: $e1
    inc h                                         ; $59df: $24
    add hl, sp                                    ; $59e0: $39
    db $db                                        ; $59e1: $db
    ld bc, $a9e7                                  ; $59e2: $01 $e7 $a9
    ld sp, hl                                     ; $59e5: $f9
    ld [hl], a                                    ; $59e6: $77
    ld a, [hl+]                                   ; $59e7: $2a
    jp nz, $e9c5                                  ; $59e8: $c2 $c5 $e9

    ld a, [c]                                     ; $59eb: $f2
    rla                                           ; $59ec: $17
    ld d, $ea                                     ; $59ed: $16 $ea
    reti                                          ; $59ef: $d9


    ret                                           ; $59f0: $c9


    sbc [hl]                                      ; $59f1: $9e
    dec d                                         ; $59f2: $15
    dec l                                         ; $59f3: $2d
    adc c                                         ; $59f4: $89
    ld a, [hl+]                                   ; $59f5: $2a
    ld d, e                                       ; $59f6: $53
    xor c                                         ; $59f7: $a9
    jp nc, $bc56                                  ; $59f8: $d2 $56 $bc

    rst $00                                       ; $59fb: $c7
    sub $6c                                       ; $59fc: $d6 $6c
    rlca                                          ; $59fe: $07
    rra                                           ; $59ff: $1f
    db $fd                                        ; $5a00: $fd
    adc $d6                                       ; $5a01: $ce $d6
    ld l, e                                       ; $5a03: $6b
    ret nc                                        ; $5a04: $d0

    ld [hl-], a                                   ; $5a05: $32
    dec d                                         ; $5a06: $15
    pop hl                                        ; $5a07: $e1
    ld l, b                                       ; $5a08: $68
    sbc h                                         ; $5a09: $9c
    ld b, $12                                     ; $5a0a: $06 $12
    sbc e                                         ; $5a0c: $9b
    ld e, h                                       ; $5a0d: $5c
    db $fd                                        ; $5a0e: $fd
    ld l, b                                       ; $5a0f: $68
    ld b, e                                       ; $5a10: $43
    dec de                                        ; $5a11: $1b
    ld de, $c755                                  ; $5a12: $11 $55 $c7
    xor b                                         ; $5a15: $a8
    push af                                       ; $5a16: $f5
    db $fc                                        ; $5a17: $fc
    or e                                          ; $5a18: $b3
    ld a, [bc]                                    ; $5a19: $0a
    ld hl, $3b6d                                  ; $5a1a: $21 $6d $3b
    nop                                           ; $5a1d: $00
    rst $20                                       ; $5a1e: $e7
    xor c                                         ; $5a1f: $a9
    db $d3                                        ; $5a20: $d3
    rst $38                                       ; $5a21: $ff
    ld l, d                                       ; $5a22: $6a
    ld h, h                                       ; $5a23: $64
    or $d3                                        ; $5a24: $f6 $d3
    db $e4                                        ; $5a26: $e4
    ld d, b                                       ; $5a27: $50
    add hl, sp                                    ; $5a28: $39
    ld sp, hl                                     ; $5a29: $f9
    ld c, a                                       ; $5a2a: $4f
    ld d, e                                       ; $5a2b: $53
    ld d, h                                       ; $5a2c: $54
    cpl                                           ; $5a2d: $2f
    ret c                                         ; $5a2e: $d8

    ld b, d                                       ; $5a2f: $42
    push hl                                       ; $5a30: $e5
    cp b                                          ; $5a31: $b8
    ld e, [hl]                                    ; $5a32: $5e
    sub e                                         ; $5a33: $93
    rst $28                                       ; $5a34: $ef
    ld c, [hl]                                    ; $5a35: $4e
    add $09                                       ; $5a36: $c6 $09
    ei                                            ; $5a38: $fb
    cp [hl]                                       ; $5a39: $be
    push af                                       ; $5a3a: $f5
    inc sp                                        ; $5a3b: $33

Jump_06e_5a3c:
    db $ec                                        ; $5a3c: $ec
    ld a, a                                       ; $5a3d: $7f

Call_06e_5a3e:
    sbc $2e                                       ; $5a3e: $de $2e

Call_06e_5a40:
    ld [hl], a                                    ; $5a40: $77
    ld d, h                                       ; $5a41: $54
    or c                                          ; $5a42: $b1
    add h                                         ; $5a43: $84
    ret c                                         ; $5a44: $d8

    ld c, $e7                                     ; $5a45: $0e $e7
    xor c                                         ; $5a47: $a9
    ld sp, hl                                     ; $5a48: $f9
    ld [hl], a                                    ; $5a49: $77
    xor d                                         ; $5a4a: $aa
    ld e, h                                       ; $5a4b: $5c
    call $9d74                                    ; $5a4c: $cd $74 $9d
    db $ec                                        ; $5a4f: $ec
    ld e, c                                       ; $5a50: $59
    and [hl]                                      ; $5a51: $a6
    ld d, d                                       ; $5a52: $52

Jump_06e_5a53:
    db $e3                                        ; $5a53: $e3
    and h                                         ; $5a54: $a4
    and d                                         ; $5a55: $a2
    ld c, $6b                                     ; $5a56: $0e $6b
    xor h                                         ; $5a58: $ac

Jump_06e_5a59:
    ld hl, $b22c                                  ; $5a59: $21 $2c $b2
    ld a, [hl]                                    ; $5a5c: $7e
    ld a, [de]                                    ; $5a5d: $1a
    jp hl                                         ; $5a5e: $e9


    jp nz, Jump_000_0ed9                          ; $5a5f: $c2 $d9 $0e

    sbc a                                         ; $5a62: $9f
    ld h, c                                       ; $5a63: $61
    rst $38                                       ; $5a64: $ff
    di                                            ; $5a65: $f3
    halt                                          ; $5a66: $76
    cp c                                          ; $5a67: $b9
    or e                                          ; $5a68: $b3
    call nc, $efc8                                ; $5a69: $d4 $c8 $ef
    pop de                                        ; $5a6c: $d1
    inc a                                         ; $5a6d: $3c
    ld a, l                                       ; $5a6e: $7d
    rst $10                                       ; $5a6f: $d7
    sub b                                         ; $5a70: $90
    dec a                                         ; $5a71: $3d
    ld a, e                                       ; $5a72: $7b
    inc bc                                        ; $5a73: $03
    ei                                            ; $5a74: $fb
    rst $28                                       ; $5a75: $ef
    inc [hl]                                      ; $5a76: $34
    inc [hl]                                      ; $5a77: $34
    call nz, $9125                                ; $5a78: $c4 $25 $91
    db $fd                                        ; $5a7b: $fd
    ld d, h                                       ; $5a7c: $54
    sbc c                                         ; $5a7d: $99
    ld [$ca97], a                                 ; $5a7e: $ea $97 $ca
    ld h, h                                       ; $5a81: $64
    ld a, [hl-]                                   ; $5a82: $3a
    push af                                       ; $5a83: $f5
    xor h                                         ; $5a84: $ac
    ld l, b                                       ; $5a85: $68
    cp c                                          ; $5a86: $b9
    ld a, d                                       ; $5a87: $7a
    ld d, $79                                     ; $5a88: $16 $79
    or [hl]                                       ; $5a8a: $b6
    inc bc                                        ; $5a8b: $03
    rst $20                                       ; $5a8c: $e7
    xor [hl]                                      ; $5a8d: $ae
    add c                                         ; $5a8e: $81
    add h                                         ; $5a8f: $84
    dec a                                         ; $5a90: $3d
    sub b                                         ; $5a91: $90
    ld l, b                                       ; $5a92: $68
    db $dd                                        ; $5a93: $dd
    db $d3                                        ; $5a94: $d3
    add hl, bc                                    ; $5a95: $09
    sub $40                                       ; $5a96: $d6 $40
    ld h, d                                       ; $5a98: $62
    cp c                                          ; $5a99: $b9
    or e                                          ; $5a9a: $b3
    add c                                         ; $5a9b: $81
    call nz, Call_000_1065                        ; $5a9c: $c4 $65 $10
    sub h                                         ; $5a9f: $94
    xor c                                         ; $5aa0: $a9
    ld a, [hl]                                    ; $5aa1: $7e
    reti                                          ; $5aa2: $d9


    jp nz, Jump_000_0076                          ; $5aa3: $c2 $76 $00

    rst $20                                       ; $5aa6: $e7
    xor c                                         ; $5aa7: $a9
    ld sp, hl                                     ; $5aa8: $f9
    ld [hl], a                                    ; $5aa9: $77
    ld a, [de]                                    ; $5aaa: $1a
    sbc c                                         ; $5aab: $99
    push bc                                       ; $5aac: $c5
    db $d3                                        ; $5aad: $d3
    rst $38                                       ; $5aae: $ff
    jp nc, $e538                                  ; $5aaf: $d2 $38 $e5

    adc $e6                                       ; $5ab2: $ce $e6
    pop de                                        ; $5ab4: $d1
    sbc $bf                                       ; $5ab5: $de $bf
    rst $00                                       ; $5ab7: $c7
    push hl                                       ; $5ab8: $e5
    ld b, [hl]                                    ; $5ab9: $46
    db $eb                                        ; $5aba: $eb
    rla                                           ; $5abb: $17
    ld [hl], h                                    ; $5abc: $74
    dec sp                                        ; $5abd: $3b
    nop                                           ; $5abe: $00
    rst $10                                       ; $5abf: $d7
    ld l, c                                       ; $5ac0: $69
    and a                                         ; $5ac1: $a7
    sub h                                         ; $5ac2: $94
    inc hl                                        ; $5ac3: $23
    adc e                                         ; $5ac4: $8b
    ld h, $d7                                     ; $5ac5: $26 $d7
    ret nc                                        ; $5ac7: $d0

    ld b, [hl]                                    ; $5ac8: $46
    ld b, h                                       ; $5ac9: $44
    push de                                       ; $5aca: $d5
    or c                                          ; $5acb: $b1
    xor l                                         ; $5acc: $ad
    rst $20                                       ; $5acd: $e7
    dec sp                                        ; $5ace: $3b
    or l                                          ; $5acf: $b5
    ld c, d                                       ; $5ad0: $4a
    rla                                           ; $5ad1: $17
    ld a, [de]                                    ; $5ad2: $1a
    xor e                                         ; $5ad3: $ab
    db $10                                        ; $5ad4: $10
    jp nc, $b275                                  ; $5ad5: $d2 $75 $b2

    ld h, a                                       ; $5ad8: $67
    dec h                                         ; $5ad9: $25
    inc a                                         ; $5ada: $3c
    sbc d                                         ; $5adb: $9a
    ld e, h                                       ; $5adc: $5c
    dec a                                         ; $5add: $3d
    ld [hl], a                                    ; $5ade: $77
    ld l, d                                       ; $5adf: $6a
    xor c                                         ; $5ae0: $a9
    ld sp, $3b78                                  ; $5ae1: $31 $78 $3b
    nop                                           ; $5ae4: $00
    sub a                                         ; $5ae5: $97
    inc bc                                        ; $5ae6: $03
    ld l, c                                       ; $5ae7: $69
    sub l                                         ; $5ae8: $95
    push bc                                       ; $5ae9: $c5
    cp [hl]                                       ; $5aea: $be
    inc b                                         ; $5aeb: $04
    and l                                         ; $5aec: $a5
    xor e                                         ; $5aed: $ab
    ld e, h                                       ; $5aee: $5c
    ld c, $65                                     ; $5aef: $0e $65
    jp hl                                         ; $5af1: $e9


    ld a, [hl+]                                   ; $5af2: $2a
    call nz, Call_000_35ba                        ; $5af3: $c4 $ba $35
    add d                                         ; $5af6: $82
    xor $93                                       ; $5af7: $ee $93
    ld c, a                                       ; $5af9: $4f
    inc l                                         ; $5afa: $2c
    dec de                                        ; $5afb: $1b
    jp nc, Jump_06e_6ce2                          ; $5afc: $d2 $e2 $6c

    ld a, l                                       ; $5aff: $7d
    ld h, a                                       ; $5b00: $67
    dec b                                         ; $5b01: $05
    ld [de], a                                    ; $5b02: $12
    ld a, e                                       ; $5b03: $7b
    ld h, a                                       ; $5b04: $67
    rst $38                                       ; $5b05: $ff
    sub e                                         ; $5b06: $93
    inc hl                                        ; $5b07: $23
    inc a                                         ; $5b08: $3c
    dec de                                        ; $5b09: $1b
    jp nz, $aa50                                  ; $5b0a: $c2 $50 $aa

    sbc h                                         ; $5b0d: $9c
    ld e, l                                       ; $5b0e: $5d
    ld c, h                                       ; $5b0f: $4c
    db $db                                        ; $5b10: $db
    ld c, $e7                                     ; $5b11: $0e $e7
    xor c                                         ; $5b13: $a9
    sub e                                         ; $5b14: $93
    cp $ab                                        ; $5b15: $fe $ab
    ld a, [hl]                                    ; $5b17: $7e
    db $dd                                        ; $5b18: $dd
    and [hl]                                      ; $5b19: $a6
    dec [hl]                                      ; $5b1a: $35
    sub b                                         ; $5b1b: $90
    ld e, b                                       ; $5b1c: $58
    xor $ec                                       ; $5b1d: $ee $ec
    ld b, d                                       ; $5b1f: $42
    rst $38                                       ; $5b20: $ff
    dec bc                                        ; $5b21: $0b
    rst $18                                       ; $5b22: $df
    jp $8e1a                                      ; $5b23: $c3 $1a $8e


    dec [hl]                                      ; $5b26: $35
    ld h, l                                       ; $5b27: $65
    xor l                                         ; $5b28: $ad
    ld e, a                                       ; $5b29: $5f
    ret nc                                        ; $5b2a: $d0

    db $ed                                        ; $5b2b: $ed
    nop                                           ; $5b2c: $00
    rst $20                                       ; $5b2d: $e7
    dec sp                                        ; $5b2e: $3b
    dec de                                        ; $5b2f: $1b
    adc [hl]                                      ; $5b30: $8e
    and a                                         ; $5b31: $a7
    dec l                                         ; $5b32: $2d
    sub h                                         ; $5b33: $94
    ld a, [de]                                    ; $5b34: $1a
    ld h, c                                       ; $5b35: $61
    and l                                         ; $5b36: $a5
    ld l, e                                       ; $5b37: $6b
    jr nz, jr_06e_5b9b                            ; $5b38: $20 $61

    rrca                                          ; $5b3a: $0f
    inc h                                         ; $5b3b: $24
    ld e, d                                       ; $5b3c: $5a
    rst $30                                       ; $5b3d: $f7
    ld [hl], h                                    ; $5b3e: $74
    add d                                         ; $5b3f: $82
    ld l, l                                       ; $5b40: $6d
    db $fd                                        ; $5b41: $fd
    inc c                                         ; $5b42: $0c
    ei                                            ; $5b43: $fb
    sbc a                                         ; $5b44: $9f
    or a                                          ; $5b45: $b7
    res 3, l                                      ; $5b46: $cb $9d
    dec c                                         ; $5b48: $0d
    sub e                                         ; $5b49: $93
    and a                                         ; $5b4a: $a7
    ld a, [hl+]                                   ; $5b4b: $2a
    ld c, e                                       ; $5b4c: $4b
    adc l                                         ; $5b4d: $8d
    or b                                          ; $5b4e: $b0
    jp nc, $8e35                                  ; $5b4f: $d2 $35 $8e

    rra                                           ; $5b52: $1f
    db $ed                                        ; $5b53: $ed
    ld l, b                                       ; $5b54: $68
    rst $30                                       ; $5b55: $f7
    ld [hl], h                                    ; $5b56: $74
    add d                                         ; $5b57: $82
    ld d, c                                       ; $5b58: $51
    dec b                                         ; $5b59: $05
    ld d, l                                       ; $5b5a: $55
    ld [hl], $90                                  ; $5b5b: $36 $90
    sub [hl]                                      ; $5b5d: $96
    ld d, d                                       ; $5b5e: $52
    sub l                                         ; $5b5f: $95
    db $db                                        ; $5b60: $db
    ld bc, $619f                                  ; $5b61: $01 $9f $61
    rst $38                                       ; $5b64: $ff
    di                                            ; $5b65: $f3
    halt                                          ; $5b66: $76
    cp c                                          ; $5b67: $b9
    or e                                          ; $5b68: $b3
    call nc, $efc8                                ; $5b69: $d4 $c8 $ef
    ld d, c                                       ; $5b6c: $51
    ld a, h                                       ; $5b6d: $7c
    sbc a                                         ; $5b6e: $9f
    inc a                                         ; $5b6f: $3c
    or d                                          ; $5b70: $b2
    sbc a                                         ; $5b71: $9f
    ld a, [hl]                                    ; $5b72: $7e
    call nz, $daff                                ; $5b73: $c4 $ff $da
    ld [hl], a                                    ; $5b76: $77
    ld d, $65                                     ; $5b77: $16 $65
    sub [hl]                                      ; $5b79: $96
    sub e                                         ; $5b7a: $93
    and e                                         ; $5b7b: $a3
    pop bc                                        ; $5b7c: $c1
    xor d                                         ; $5b7d: $aa
    ld c, h                                       ; $5b7e: $4c
    ld d, l                                       ; $5b7f: $55
    add h                                         ; $5b80: $84
    or e                                          ; $5b81: $b3
    dec e                                         ; $5b82: $1d
    rst $20                                       ; $5b83: $e7
    xor c                                         ; $5b84: $a9
    db $d3                                        ; $5b85: $d3
    rst $38                                       ; $5b86: $ff
    xor d                                         ; $5b87: $aa
    sbc h                                         ; $5b88: $9c
    db $fc                                        ; $5b89: $fc
    and a                                         ; $5b8a: $a7
    add hl, hl                                    ; $5b8b: $29
    or d                                          ; $5b8c: $b2
    sbc a                                         ; $5b8d: $9f
    jp z, Jump_06e_4571                           ; $5b8e: $ca $71 $45

Call_06e_5b91:
    ld b, e                                       ; $5b91: $43
    dec de                                        ; $5b92: $1b
    ld de, $c755                                  ; $5b93: $11 $55 $c7
    ret nc                                        ; $5b96: $d0

    ld l, e                                       ; $5b97: $6b
    ld a, [c]                                     ; $5b98: $f2
    db $dd                                        ; $5b99: $dd
    ret                                           ; $5b9a: $c9


jr_06e_5b9b:
    jr c, jr_06e_5bfe                             ; $5b9b: $38 $61

    rst $18                                       ; $5b9d: $df
    or a                                          ; $5b9e: $b7
    ld e, [hl]                                    ; $5b9f: $5e
    rra                                           ; $5ba0: $1f
    dec bc                                        ; $5ba1: $0b
    inc h                                         ; $5ba2: $24
    or $3f                                        ; $5ba3: $f6 $3f
    ld a, [c]                                     ; $5ba5: $f2
    xor h                                         ; $5ba6: $ac
    ld sp, hl                                     ; $5ba7: $f9
    ld [hl], a                                    ; $5ba8: $77
    ld a, [de]                                    ; $5ba9: $1a
    jp nc, Jump_000_294e                          ; $5baa: $d2 $4e $29

    ld b, a                                       ; $5bad: $47
    inc d                                         ; $5bae: $14
    push hl                                       ; $5baf: $e5
    adc [hl]                                      ; $5bb0: $8e
    scf                                           ; $5bb1: $37
    ld c, $e7                                     ; $5bb2: $0e $e7
    xor c                                         ; $5bb4: $a9
    sub e                                         ; $5bb5: $93
    cp $ab                                        ; $5bb6: $fe $ab
    ld a, [hl]                                    ; $5bb8: $7e
    db $dd                                        ; $5bb9: $dd
    and [hl]                                      ; $5bba: $a6
    dec [hl]                                      ; $5bbb: $35
    sub b                                         ; $5bbc: $90
    ld e, b                                       ; $5bbd: $58
    xor $ec                                       ; $5bbe: $ee $ec
    ld l, c                                       ; $5bc0: $69
    inc [hl]                                      ; $5bc1: $34
    and d                                         ; $5bc2: $a2
    sbc [hl]                                      ; $5bc3: $9e
    push de                                       ; $5bc4: $d5
    ld h, h                                       ; $5bc5: $64
    ld [hl+], a                                   ; $5bc6: $22
    ld e, b                                       ; $5bc7: $58
    di                                            ; $5bc8: $f3
    ld [hl], h                                    ; $5bc9: $74
    rst $00                                       ; $5bca: $c7
    ld l, c                                       ; $5bcb: $69
    or [hl]                                       ; $5bcc: $b6
    ld a, [hl]                                    ; $5bcd: $7e
    sbc h                                         ; $5bce: $9c
    xor d                                         ; $5bcf: $aa
    or h                                          ; $5bd0: $b4
    ldh [rTMA], a                                 ; $5bd1: $e0 $06
    ld [de], a                                    ; $5bd3: $12
    ld c, e                                       ; $5bd4: $4b
    ld d, l                                       ; $5bd5: $55
    sub [hl]                                      ; $5bd6: $96
    add [hl]                                      ; $5bd7: $86
    ld c, [hl]                                    ; $5bd8: $4e
    rst $18                                       ; $5bd9: $df
    ld e, c                                       ; $5bda: $59
    cp e                                          ; $5bdb: $bb
    inc d                                         ; $5bdc: $14
    cp a                                          ; $5bdd: $bf
    ld [hl], c                                    ; $5bde: $71
    nop                                           ; $5bdf: $00
    ld l, a                                       ; $5be0: $6f
    pop de                                        ; $5be1: $d1
    add hl, bc                                    ; $5be2: $09
    adc d                                         ; $5be3: $8a
    ld b, b                                       ; $5be4: $40
    ld e, d                                       ; $5be5: $5a
    ld h, l                                       ; $5be6: $65
    ld l, d                                       ; $5be7: $6a
    ld h, h                                       ; $5be8: $64
    ld d, $4f                                     ; $5be9: $16 $4f
    dec h                                         ; $5beb: $25
    dec l                                         ; $5bec: $2d
    ld a, [c]                                     ; $5bed: $f2
    ld [hl], $1a                                  ; $5bee: $36 $1a
    ld c, b                                       ; $5bf0: $48
    inc l                                         ; $5bf1: $2c
    ld [hl], a                                    ; $5bf2: $77
    ld [hl], $ff                                  ; $5bf3: $36 $ff
    ld c, [hl]                                    ; $5bf5: $4e
    xor c                                         ; $5bf6: $a9
    ld sp, $3b78                                  ; $5bf7: $31 $78 $3b
    nop                                           ; $5bfa: $00
    rst $10                                       ; $5bfb: $d7
    db $e4                                        ; $5bfc: $e4
    cp e                                          ; $5bfd: $bb

jr_06e_5bfe:
    sub e                                         ; $5bfe: $93
    ld [hl], c                                    ; $5bff: $71
    jp nz, $f7be                                  ; $5c00: $c2 $be $f7

    ld b, d                                       ; $5c03: $42
    ld d, c                                       ; $5c04: $51
    cp a                                          ; $5c05: $bf
    adc h                                         ; $5c06: $8c
    ld [hl], c                                    ; $5c07: $71
    inc c                                         ; $5c08: $0c
    add l                                         ; $5c09: $85
    ld [$c8d2], a                                 ; $5c0a: $ea $d2 $c8
    inc e                                         ; $5c0d: $1c
    cp c                                          ; $5c0e: $b9
    push af                                       ; $5c0f: $f5
    inc sp                                        ; $5c10: $33
    ld h, [hl]                                    ; $5c11: $66
    pop af                                        ; $5c12: $f1
    ld d, h                                       ; $5c13: $54
    jp nc, $6f22                                  ; $5c14: $d2 $22 $6f

    and e                                         ; $5c17: $a3

Call_06e_5c18:
    sbc [hl]                                      ; $5c18: $9e
    dec c                                         ; $5c19: $0d
    inc h                                         ; $5c1a: $24
    sub [hl]                                      ; $5c1b: $96
    dec sp                                        ; $5c1c: $3b
    xor d                                         ; $5c1d: $aa
    db $10                                        ; $5c1e: $10
    ld [hl], d                                    ; $5c1f: $72
    dec sp                                        ; $5c20: $3b
    nop                                           ; $5c21: $00
    rst $20                                       ; $5c22: $e7
    xor c                                         ; $5c23: $a9
    ld sp, hl                                     ; $5c24: $f9

Jump_06e_5c25:
    ld [hl], a                                    ; $5c25: $77
    ld a, [hl-]                                   ; $5c26: $3a
    db $fd                                        ; $5c27: $fd
    xor a                                         ; $5c28: $af
    adc d                                         ; $5c29: $8a
    rst $20                                       ; $5c2a: $e7
    ld a, e                                       ; $5c2b: $7b
    ld l, [hl]                                    ; $5c2c: $6e
    rlca                                          ; $5c2d: $07
    rst $20                                       ; $5c2e: $e7
    xor c                                         ; $5c2f: $a9
    ld b, [hl]                                    ; $5c30: $46
    db $ec                                        ; $5c31: $ec
    adc [hl]                                      ; $5c32: $8e
    add hl, sp                                    ; $5c33: $39
    or d                                          ; $5c34: $b2
    ld sp, hl                                     ; $5c35: $f9

jr_06e_5c36:
    ld [hl], a                                    ; $5c36: $77
    ld a, [hl-]                                   ; $5c37: $3a
    db $fd                                        ; $5c38: $fd
    di                                            ; $5c39: $f3
    ei                                            ; $5c3a: $fb
    xor c                                         ; $5c3b: $a9
    inc e                                         ; $5c3c: $1c
    ld d, a                                       ; $5c3d: $57
    sub a                                         ; $5c3e: $97
    ld d, [hl]                                    ; $5c3f: $56
    ld b, h                                       ; $5c40: $44
    ld b, l                                       ; $5c41: $45
    add $40                                       ; $5c42: $c6 $40
    ld a, [hl-]                                   ; $5c44: $3a
    bit 6, d                                      ; $5c45: $cb $72
    ld h, c                                       ; $5c47: $61
    dec sp                                        ; $5c48: $3b
    nop                                           ; $5c49: $00
    sbc a                                         ; $5c4a: $9f
    adc e                                         ; $5c4b: $8b
    ld l, $1d                                     ; $5c4c: $2e $1d
    rra                                           ; $5c4e: $1f
    pop de                                        ; $5c4f: $d1
    ld d, l                                       ; $5c50: $55
    ld d, a                                       ; $5c51: $57
    add $5e                                       ; $5c52: $c6 $5e
    rst $08                                       ; $5c54: $cf
    sbc $c8                                       ; $5c55: $de $c8
    ld [$1db9], sp                                ; $5c57: $08 $b9 $1d
    rst $20                                       ; $5c5a: $e7
    db $eb                                        ; $5c5b: $eb
    ld d, d                                       ; $5c5c: $52
    rst $08                                       ; $5c5d: $cf
    ld d, e                                       ; $5c5e: $53
    di                                            ; $5c5f: $f3
    rst $28                                       ; $5c60: $ef
    inc [hl]                                      ; $5c61: $34
    inc e                                         ; $5c62: $1c
    push de                                       ; $5c63: $d5
    xor c                                         ; $5c64: $a9
    ld h, e                                       ; $5c65: $63
    db $dd                                        ; $5c66: $dd
    db $fc                                        ; $5c67: $fc
    ld l, c                                       ; $5c68: $69
    sub a                                         ; $5c69: $97
    ld c, $1f                                     ; $5c6a: $0e $1f
    pop de                                        ; $5c6c: $d1
    sub l                                         ; $5c6d: $95
    jp hl                                         ; $5c6e: $e9


    ld d, d                                       ; $5c6f: $52
    rst $08                                       ; $5c70: $cf
    dec [hl]                                      ; $5c71: $35
    ld b, d                                       ; $5c72: $42
    dec de                                        ; $5c73: $1b
    xor $c8                                       ; $5c74: $ee $c8
    ld de, $6a5a                                  ; $5c76: $11 $5a $6a
    db $fc                                        ; $5c79: $fc
    sbc l                                         ; $5c7a: $9d
    ld a, [hl+]                                   ; $5c7b: $2a
    bit 5, h                                      ; $5c7c: $cb $6c
    and e                                         ; $5c7e: $a3
    ld [de], a                                    ; $5c7f: $12
    reti                                          ; $5c80: $d9


    ld c, a                                       ; $5c81: $4f
    jp hl                                         ; $5c82: $e9


    sbc d                                         ; $5c83: $9a
    rst $28                                       ; $5c84: $ef
    pop de                                        ; $5c85: $d1
    xor l                                         ; $5c86: $ad
    rst $20                                       ; $5c87: $e7
    dec sp                                        ; $5c88: $3b
    or h                                          ; $5c89: $b4
    sbc [hl]                                      ; $5c8a: $9e
    ld a, a                                       ; $5c8b: $7f
    cp d                                          ; $5c8c: $ba
    ld a, [hl+]                                   ; $5c8d: $2a
    xor l                                         ; $5c8e: $ad

Call_06e_5c8f:
    db $db                                        ; $5c8f: $db
    or [hl]                                       ; $5c90: $b6
    push af                                       ; $5c91: $f5
    cp a                                          ; $5c92: $bf
    db $f4                                        ; $5c93: $f4
    inc [hl]                                      ; $5c94: $34
    push af                                       ; $5c95: $f5
    ld d, e                                       ; $5c96: $53
    cp a                                          ; $5c97: $bf
    jr nz, jr_06e_5c36                            ; $5c98: $20 $9c

    ld c, e                                       ; $5c9a: $4b
    dec a                                         ; $5c9b: $3d
    ld c, a                                       ; $5c9c: $4f
    db $fd                                        ; $5c9d: $fd
    ld a, $b8                                     ; $5c9e: $3e $b8
    ei                                            ; $5ca0: $fb
    xor d                                         ; $5ca1: $aa
    adc [hl]                                      ; $5ca2: $8e
    ret nc                                        ; $5ca3: $d0

    ld e, b                                       ; $5ca4: $58
    xor d                                         ; $5ca5: $aa
    and d                                         ; $5ca6: $a2
    pop hl                                        ; $5ca7: $e1
    adc [hl]                                      ; $5ca8: $8e
    inc e                                         ; $5ca9: $1c
    ld [hl], c                                    ; $5caa: $71
    xor c                                         ; $5cab: $a9
    sbc a                                         ; $5cac: $9f
    dec hl                                        ; $5cad: $2b
    cp e                                          ; $5cae: $bb
    and a                                         ; $5caf: $a7
    db $db                                        ; $5cb0: $db
    sbc l                                         ; $5cb1: $9d
    ld d, h                                       ; $5cb2: $54
    pop de                                        ; $5cb3: $d1
    sbc h                                         ; $5cb4: $9c

jr_06e_5cb5:
    ld b, [hl]                                    ; $5cb5: $46
    ret nc                                        ; $5cb6: $d0

    xor e                                         ; $5cb7: $ab
    jr nc, jr_06e_5cb5                            ; $5cb8: $30 $fb

    jp hl                                         ; $5cba: $e9


    jp nc, Jump_000_1f01                          ; $5cbb: $d2 $01 $1f

    dec bc                                        ; $5cbe: $0b
    ld l, l                                       ; $5cbf: $6d
    sbc l                                         ; $5cc0: $9d
    ldh [rBGP], a                                 ; $5cc1: $e0 $47
    ret nc                                        ; $5cc3: $d0

    xor e                                         ; $5cc4: $ab
    jr nc, @-$03                                  ; $5cc5: $30 $fb

    ld c, c                                       ; $5cc7: $49
    ld d, b                                       ; $5cc8: $50
    xor $d0                                       ; $5cc9: $ee $d0
    ld d, d                                       ; $5ccb: $52
    inc hl                                        ; $5ccc: $23
    cp $70                                        ; $5ccd: $fe $70
    ld [hl], l                                    ; $5ccf: $75
    xor h                                         ; $5cd0: $ac
    rst $20                                       ; $5cd1: $e7
    cp d                                          ; $5cd2: $ba
    add l                                         ; $5cd3: $85
    db $ec                                        ; $5cd4: $ec
    and a                                         ; $5cd5: $a7
    ld c, d                                       ; $5cd6: $4a
    ld d, a                                       ; $5cd7: $57
    ret c                                         ; $5cd8: $d8

    halt                                          ; $5cd9: $76
    nop                                           ; $5cda: $00
    scf                                           ; $5cdb: $37
    pop hl                                        ; $5cdc: $e1
    ld b, [hl]                                    ; $5cdd: $46
    adc e                                         ; $5cde: $8b
    db $ec                                        ; $5cdf: $ec
    sub c                                         ; $5ce0: $91
    db $fd                                        ; $5ce1: $fd
    ld l, h                                       ; $5ce2: $6c
    cp l                                          ; $5ce3: $bd
    sub c                                         ; $5ce4: $91
    ld de, $dfb2                                  ; $5ce5: $11 $b2 $df
    rlca                                          ; $5ce8: $07
    sub a                                         ; $5ce9: $97
    ld a, [de]                                    ; $5cea: $1a
    add e                                         ; $5ceb: $83
    db $eb                                        ; $5cec: $eb
    jp nc, $d38a                                  ; $5ced: $d2 $8a $d3

    adc h                                         ; $5cf0: $8c
    and $51                                       ; $5cf1: $e6 $51
    ld b, l                                       ; $5cf3: $45
    ld b, l                                       ; $5cf4: $45
    add $1c                                       ; $5cf5: $c6 $1c
    cp c                                          ; $5cf7: $b9
    dec e                                         ; $5cf8: $1d
    rra                                           ; $5cf9: $1f
    db $dd                                        ; $5cfa: $dd
    and e                                         ; $5cfb: $a3
    push bc                                       ; $5cfc: $c5
    jp z, $a51e                                   ; $5cfd: $ca $1e $a5

    ld b, [hl]                                    ; $5d00: $46
    cp b                                          ; $5d01: $b8
    pop de                                        ; $5d02: $d1
    add [hl]                                      ; $5d03: $86
    ld b, [hl]                                    ; $5d04: $46
    dec e                                         ; $5d05: $1d
    dec d                                         ; $5d06: $15
    db $f4                                        ; $5d07: $f4
    ld a, [hl+]                                   ; $5d08: $2a
    call z, $ba7e                                 ; $5d09: $cc $7e $ba
    call nc, $c67e                                ; $5d0c: $d4 $7e $c6
    inc e                                         ; $5d0f: $1c
    ld e, c                                       ; $5d10: $59
    rst $08                                       ; $5d11: $cf
    and $f9                                       ; $5d12: $e6 $f9
    rst $08                                       ; $5d14: $cf
    and l                                         ; $5d15: $a5
    inc bc                                        ; $5d16: $03
    rst $10                                       ; $5d17: $d7
    add e                                         ; $5d18: $83
    ld d, l                                       ; $5d19: $55
    ld h, c                                       ; $5d1a: $61
    and e                                         ; $5d1b: $a3
    sub a                                         ; $5d1c: $97
    ld a, d                                       ; $5d1d: $7a
    add l                                         ; $5d1e: $85
    add hl, sp                                    ; $5d1f: $39
    ld [hl-], a                                   ; $5d20: $32
    ld b, e                                       ; $5d21: $43
    db $eb                                        ; $5d22: $eb
    cp c                                          ; $5d23: $b9
    ld d, e                                       ; $5d24: $53
    cpl                                           ; $5d25: $2f
    push af                                       ; $5d26: $f5
    cp d                                          ; $5d27: $ba
    call Call_06e_7f1f                            ; $5d28: $cd $1f $7f
    xor $8e                                       ; $5d2b: $ee $8e
    add hl, sp                                    ; $5d2d: $39
    or d                                          ; $5d2e: $b2
    call c, Call_06e_5da9                         ; $5d2f: $dc $a9 $5d
    or $3b                                        ; $5d32: $f6 $3b
    call Call_06e_45a3                            ; $5d34: $cd $a3 $45
    add h                                         ; $5d37: $84
    add h                                         ; $5d38: $84
    ld d, l                                       ; $5d39: $55
    ld e, c                                       ; $5d3a: $59
    ld b, h                                       ; $5d3b: $44
    jp $aa9f                                      ; $5d3c: $c3 $9f $aa


    jr nc, jr_06e_5d78                            ; $5d3f: $30 $37

    ld e, d                                       ; $5d41: $5a
    ld d, h                                       ; $5d42: $54
    or c                                          ; $5d43: $b1
    ld h, e                                       ; $5d44: $63
    dec sp                                        ; $5d45: $3b
    nop                                           ; $5d46: $00
    rst $28                                       ; $5d47: $ef
    xor c                                         ; $5d48: $a9
    ld c, [hl]                                    ; $5d49: $4e
    di                                            ; $5d4a: $f3
    rst $28                                       ; $5d4b: $ef
    ld d, h                                       ; $5d4c: $54
    ld a, a                                       ; $5d4d: $7f
    and a                                         ; $5d4e: $a7
    ld h, c                                       ; $5d4f: $61
    or b                                          ; $5d50: $b0
    ld a, [hl+]                                   ; $5d51: $2a
    ld l, h                                       ; $5d52: $6c
    or h                                          ; $5d53: $b4
    db $db                                        ; $5d54: $db
    or [hl]                                       ; $5d55: $b6
    sub l                                         ; $5d56: $95
    dec sp                                        ; $5d57: $3b
    or h                                          ; $5d58: $b4
    ld a, [$953b]                                 ; $5d59: $fa $3b $95
    ld h, d                                       ; $5d5c: $62
    db $fc                                        ; $5d5d: $fc
    xor c                                         ; $5d5e: $a9
    push bc                                       ; $5d5f: $c5
    ld c, $0f                                     ; $5d60: $0e $0f
    cp l                                          ; $5d62: $bd
    ld [hl], h                                    ; $5d63: $74
    nop                                           ; $5d64: $00
    sbc a                                         ; $5d65: $9f
    add hl, de                                    ; $5d66: $19
    or d                                          ; $5d67: $b2
    add h                                         ; $5d68: $84
    rst $00                                       ; $5d69: $c7
    sub $cf                                       ; $5d6a: $d6 $cf
    dec e                                         ; $5d6c: $1d
    ld [$0aa9], a                                 ; $5d6d: $ea $a9 $0a
    xor l                                         ; $5d70: $ad
    inc d                                         ; $5d71: $14
    db $e3                                        ; $5d72: $e3
    ld c, a                                       ; $5d73: $4f
    xor l                                         ; $5d74: $ad
    rst $20                                       ; $5d75: $e7
    sbc a                                         ; $5d76: $9f
    add l                                         ; $5d77: $85

jr_06e_5d78:
    ret nc                                        ; $5d78: $d0

    xor $7e                                       ; $5d79: $ee $7e
    ld h, d                                       ; $5d7b: $62
    rst $00                                       ; $5d7c: $c7
    halt                                          ; $5d7d: $76
    nop                                           ; $5d7e: $00
    rst $10                                       ; $5d7f: $d7
    and b                                         ; $5d80: $a0
    dec c                                         ; $5d81: $0d
    inc h                                         ; $5d82: $24
    db $ec                                        ; $5d83: $ec
    push af                                       ; $5d84: $f5
    call c, Call_06e_6fa1                         ; $5d85: $dc $a1 $6f
    inc e                                         ; $5d88: $1c
    sub a                                         ; $5d89: $97
    inc bc                                        ; $5d8a: $03
    adc c                                         ; $5d8b: $89
    dec sp                                        ; $5d8c: $3b
    ld a, [hl+]                                   ; $5d8d: $2a
    push bc                                       ; $5d8e: $c5
    ld hl, sp-$4d                                 ; $5d8f: $f8 $b3
    ld a, e                                       ; $5d91: $7b
    ld [hl], b                                    ; $5d92: $70
    di                                            ; $5d93: $f3
    inc d                                         ; $5d94: $14
    ld a, e                                       ; $5d95: $7b
    sbc h                                         ; $5d96: $9c
    ld e, [hl]                                    ; $5d97: $5e
    xor b                                         ; $5d98: $a8
    ld e, a                                       ; $5d99: $5f
    ld [hl+], a                                   ; $5d9a: $22
    ld a, [de]                                    ; $5d9b: $1a
    ld [hl], e                                    ; $5d9c: $73
    ld h, h                                       ; $5d9d: $64
    dec a                                         ; $5d9e: $3d
    dec de                                        ; $5d9f: $1b
    rst $00                                       ; $5da0: $c7
    ld b, e                                       ; $5da1: $43
    dec bc                                        ; $5da2: $0b
    db $ed                                        ; $5da3: $ed
    and h                                         ; $5da4: $a4
    ld l, b                                       ; $5da5: $68
    ret nc                                        ; $5da6: $d0

    db $ed                                        ; $5da7: $ed
    nop                                           ; $5da8: $00

Call_06e_5da9:
    scf                                           ; $5da9: $37
    ld b, a                                       ; $5daa: $47
    sbc [hl]                                      ; $5dab: $9e
    dec [hl]                                      ; $5dac: $35
    sub b                                         ; $5dad: $90
    ld l, b                                       ; $5dae: $68
    push af                                       ; $5daf: $f5
    db $eb                                        ; $5db0: $eb
    ld [hl], $ad                                  ; $5db1: $36 $ad
    ld [$ee24], sp                                ; $5db3: $08 $24 $ee
    xor b                                         ; $5db6: $a8
    sbc a                                         ; $5db7: $9f
    ld h, h                                       ; $5db8: $64
    ldh a, [rNR10]                                ; $5db9: $f0 $10
    ld d, h                                       ; $5dbb: $54
    adc [hl]                                      ; $5dbc: $8e
    ld l, e                                       ; $5dbd: $6b
    inc e                                         ; $5dbe: $1c
    rrca                                          ; $5dbf: $0f
    dec l                                         ; $5dc0: $2d
    ld [bc], a                                    ; $5dc1: $02
    adc c                                         ; $5dc2: $89
    dec sp                                        ; $5dc3: $3b
    or h                                          ; $5dc4: $b4
    sub e                                         ; $5dc5: $93
    and d                                         ; $5dc6: $a2
    ld b, c                                       ; $5dc7: $41
    dec hl                                        ; $5dc8: $2b
    push bc                                       ; $5dc9: $c5
    ld hl, sp+$53                                 ; $5dca: $f8 $53
    dec de                                        ; $5dcc: $1b
    ld a, [de]                                    ; $5dcd: $1a
    ld [hl+], a                                   ; $5dce: $22
    pop hl                                        ; $5dcf: $e1
    and c                                         ; $5dd0: $a1
    db $fd                                        ; $5dd1: $fd
    rrca                                          ; $5dd2: $0f
    or d                                          ; $5dd3: $b2
    sbc a                                         ; $5dd4: $9f
    jp nc, Jump_000_3ff5                          ; $5dd5: $d2 $f5 $3f

    ld a, e                                       ; $5dd8: $7b
    call nz, Call_000_071b                        ; $5dd9: $c4 $1b $07
    sub a                                         ; $5ddc: $97
    inc bc                                        ; $5ddd: $03
    adc c                                         ; $5dde: $89
    dec sp                                        ; $5ddf: $3b
    ld [$6ea8], a                                 ; $5de0: $ea $a8 $6e
    or [hl]                                       ; $5de3: $b6
    ld a, [hl]                                    ; $5de4: $7e
    add [hl]                                      ; $5de5: $86
    db $fd                                        ; $5de6: $fd
    rst $08                                       ; $5de7: $cf
    db $db                                        ; $5de8: $db
    push hl                                       ; $5de9: $e5
    adc [hl]                                      ; $5dea: $8e
    ld b, d                                       ; $5deb: $42
    ld l, b                                       ; $5dec: $68
    jr z, jr_06e_5e09                             ; $5ded: $28 $1a

    adc [hl]                                      ; $5def: $8e
    ld b, l                                       ; $5df0: $45
    ld l, h                                       ; $5df1: $6c
    rlca                                          ; $5df2: $07
    scf                                           ; $5df3: $37
    ld b, a                                       ; $5df4: $47
    sbc [hl]                                      ; $5df5: $9e
    dec [hl]                                      ; $5df6: $35
    jp nc, $9035                                  ; $5df7: $d2 $35 $90

    ret c                                         ; $5dfa: $d8

    rst $38                                       ; $5dfb: $ff
    ret nz                                        ; $5dfc: $c0

    adc d                                         ; $5dfd: $8a
    ld a, b                                       ; $5dfe: $78
    and c                                         ; $5dff: $a1
    ld a, e                                       ; $5e00: $7b
    ld [hl], b                                    ; $5e01: $70
    jp hl                                         ; $5e02: $e9


    ld a, [hl+]                                   ; $5e03: $2a
    sub a                                         ; $5e04: $97
    ld b, e                                       ; $5e05: $43
    reti                                          ; $5e06: $d9


    sub b                                         ; $5e07: $90
    and a                                         ; $5e08: $a7

jr_06e_5e09:
    ldh [$27], a                                  ; $5e09: $e0 $27
    halt                                          ; $5e0b: $76
    ld [hl], h                                    ; $5e0c: $74
    ld d, d                                       ; $5e0d: $52
    di                                            ; $5e0e: $f3
    dec a                                         ; $5e0f: $3d
    jp c, $b29c                                   ; $5e10: $da $9c $b2

    ld b, h                                       ; $5e13: $44
    ld b, e                                       ; $5e14: $43
    xor b                                         ; $5e15: $a8
    jp nz, Jump_06e_46e8                          ; $5e16: $c2 $e8 $46

    dec de                                        ; $5e19: $1b
    adc [hl]                                      ; $5e1a: $8e
    sub l                                         ; $5e1b: $95
    ld a, [de]                                    ; $5e1c: $1a
    pop de                                        ; $5e1d: $d1
    ld [hl], b                                    ; $5e1e: $70
    inc l                                         ; $5e1f: $2c
    ld h, d                                       ; $5e20: $62
    dec sp                                        ; $5e21: $3b
    nop                                           ; $5e22: $00
    rst $10                                       ; $5e23: $d7
    and b                                         ; $5e24: $a0
    ld h, l                                       ; $5e25: $65
    ld l, d                                       ; $5e26: $6a
    cp $9d                                        ; $5e27: $fe $9d
    ld b, [hl]                                    ; $5e29: $46
    sbc e                                         ; $5e2a: $9b
    ld [hl], h                                    ; $5e2b: $74
    adc e                                         ; $5e2c: $8b
    ld [hl], l                                    ; $5e2d: $75
    dec hl                                        ; $5e2e: $2b
    adc e                                         ; $5e2f: $8b
    pop de                                        ; $5e30: $d1
    ccf                                           ; $5e31: $3f
    ld d, h                                       ; $5e32: $54
    daa                                           ; $5e33: $27
    add hl, de                                    ; $5e34: $19
    or [hl]                                       ; $5e35: $b6
    inc bc                                        ; $5e36: $03
    sbc a                                         ; $5e37: $9f
    dec hl                                        ; $5e38: $2b
    adc e                                         ; $5e39: $8b
    cp d                                          ; $5e3a: $ba
    sub l                                         ; $5e3b: $95
    push bc                                       ; $5e3c: $c5
    ret c                                         ; $5e3d: $d8

    ld a, [$f57a]                                 ; $5e3e: $fa $7a $f5
    sbc [hl]                                      ; $5e41: $9e
    ld h, $87                                     ; $5e42: $26 $87
    cp $a1                                        ; $5e44: $fe $a1
    ld a, [hl-]                                   ; $5e46: $3a
    ret                                           ; $5e47: $c9


    ret nc                                        ; $5e48: $d0

    db $10                                        ; $5e49: $10
    add [hl]                                      ; $5e4a: $86
    xor [hl]                                      ; $5e4b: $ae
    cp h                                          ; $5e4c: $bc
    db $e4                                        ; $5e4d: $e4
    ld b, d                                       ; $5e4e: $42
    adc [hl]                                      ; $5e4f: $8e
    ld d, h                                       ; $5e50: $54
    ld b, c                                       ; $5e51: $41
    dec e                                         ; $5e52: $1d
    or h                                          ; $5e53: $b4
    rla                                           ; $5e54: $17
    adc d                                         ; $5e55: $8a
    and $51                                       ; $5e56: $e6 $51
    ld b, l                                       ; $5e58: $45
    rst $28                                       ; $5e59: $ef
    rst $08                                       ; $5e5a: $cf
    ld c, e                                       ; $5e5b: $4b
    and d                                         ; $5e5c: $a2
    inc de                                        ; $5e5d: $13
    ld e, [hl]                                    ; $5e5e: $5e
    db $fc                                        ; $5e5f: $fc
    sbc l                                         ; $5e60: $9d
    db $ed                                        ; $5e61: $ed
    nop                                           ; $5e62: $00
    rst $20                                       ; $5e63: $e7
    xor c                                         ; $5e64: $a9
    ld hl, $894f                                  ; $5e65: $21 $4f $89
    xor e                                         ; $5e68: $ab
    xor b                                         ; $5e69: $a8
    inc d                                         ; $5e6a: $14
    db $e3                                        ; $5e6b: $e3
    rst $08                                       ; $5e6c: $cf
    xor l                                         ; $5e6d: $ad
    cp l                                          ; $5e6e: $bd
    add hl, bc                                    ; $5e6f: $09
    scf                                           ; $5e70: $37
    cp d                                          ; $5e71: $ba
    dec e                                         ; $5e72: $1d
    ld l, a                                       ; $5e73: $6f
    db $db                                        ; $5e74: $db
    sbc h                                         ; $5e75: $9c
    jr nz, jr_06e_5ea0                            ; $5e76: $20 $28

    ld d, e                                       ; $5e78: $53
    ld l, c                                       ; $5e79: $69
    add $55                                       ; $5e7a: $c6 $55
    ld d, h                                       ; $5e7c: $54
    adc d                                         ; $5e7d: $8a
    pop af                                        ; $5e7e: $f1
    rst $20                                       ; $5e7f: $e7
    and l                                         ; $5e80: $a5
    or $e6                                        ; $5e81: $f6 $e6
    and h                                         ; $5e83: $a4
    ld b, [hl]                                    ; $5e84: $46
    ld e, d                                       ; $5e85: $5a
    inc bc                                        ; $5e86: $03
    adc c                                         ; $5e87: $89

Call_06e_5e88:
    adc l                                         ; $5e88: $8d
    call z, $5611                                 ; $5e89: $cc $11 $56
    rst $08                                       ; $5e8c: $cf

Jump_06e_5e8d:
    and $f9                                       ; $5e8d: $e6 $f9
    rst $08                                       ; $5e8f: $cf
    and l                                         ; $5e90: $a5
    inc bc                                        ; $5e91: $03
    rst $10                                       ; $5e92: $d7
    ld a, c                                       ; $5e93: $79
    ld de, $cf5a                                  ; $5e94: $11 $5a $cf
    sbc $82                                       ; $5e97: $de $82
    scf                                           ; $5e99: $37
    sbc $be                                       ; $5e9a: $de $be
    call nc, $d06b                                ; $5e9c: $d4 $6b $d0
    ld l, [hl]                                    ; $5e9f: $6e

jr_06e_5ea0:
    db $db                                        ; $5ea0: $db
    ld d, [hl]                                    ; $5ea1: $56
    xor $d0                                       ; $5ea2: $ee $d0
    ld [$34ef], a                                 ; $5ea4: $ea $ef $34
    cp $4e                                        ; $5ea7: $fe $4e
    ld c, a                                       ; $5ea9: $4f
    add [hl]                                      ; $5eaa: $86
    db $ec                                        ; $5eab: $ec
    xor c                                         ; $5eac: $a9
    sub a                                         ; $5ead: $97
    ld c, $e7                                     ; $5eae: $0e $e7
    ld a, [de]                                    ; $5eb0: $1a
    and c                                         ; $5eb1: $a1
    dec c                                         ; $5eb2: $0d
    ld a, c                                       ; $5eb3: $79
    ld de, $fd5a                                  ; $5eb4: $11 $5a $fd
    sbc l                                         ; $5eb7: $9d
    sbc [hl]                                      ; $5eb8: $9e
    inc c                                         ; $5eb9: $0c
    reti                                          ; $5eba: $d9


    ld d, e                                       ; $5ebb: $53
    dec sp                                        ; $5ebc: $3b
    push de                                       ; $5ebd: $d5
    inc h                                         ; $5ebe: $24
    ld e, d                                       ; $5ebf: $5a
    ld [hl], d                                    ; $5ec0: $72
    ld sp, $3647                                  ; $5ec1: $31 $47 $36
    add h                                         ; $5ec4: $84
    and c                                         ; $5ec5: $a1
    ld c, $52                                     ; $5ec6: $0e $52
    sbc h                                         ; $5ec8: $9c
    inc h                                         ; $5ec9: $24
    xor h                                         ; $5eca: $ac
    rst $38                                       ; $5ecb: $ff
    sub c                                         ; $5ecc: $91
    ld h, a                                       ; $5ecd: $67
    push bc                                       ; $5ece: $c5
    ld [hl], h                                    ; $5ecf: $74
    push hl                                       ; $5ed0: $e5
    rst $38                                       ; $5ed1: $ff
    dec b                                         ; $5ed2: $05
    xor l                                         ; $5ed3: $ad
    ld h, a                                       ; $5ed4: $67
    ld de, $4332                                  ; $5ed5: $11 $32 $43
    cp e                                          ; $5ed8: $bb
    inc a                                         ; $5ed9: $3c
    ld [hl], e                                    ; $5eda: $73
    ld e, h                                       ; $5edb: $5c
    and d                                         ; $5edc: $a2
    dec h                                         ; $5edd: $25
    add e                                         ; $5ede: $83
    sbc a                                         ; $5edf: $9f
    ret c                                         ; $5ee0: $d8

    and c                                         ; $5ee1: $a1
    db $db                                        ; $5ee2: $db
    ld bc, $45e7                                  ; $5ee3: $01 $e7 $45
    dec e                                         ; $5ee6: $1d
    sub $d8                                       ; $5ee7: $d6 $d8
    ld b, d                                       ; $5ee9: $42
    dec a                                         ; $5eea: $3d
    ld [hl], a                                    ; $5eeb: $77
    ld l, b                                       ; $5eec: $68
    xor c                                         ; $5eed: $a9
    ld sp, $a2b8                                  ; $5eee: $31 $b8 $a2
    ld sp, $4fd4                                  ; $5ef1: $31 $d4 $4f
    inc hl                                        ; $5ef4: $23
    add h                                         ; $5ef5: $84
    ld l, c                                       ; $5ef6: $69
    rst $20                                       ; $5ef7: $e7
    or d                                          ; $5ef8: $b2
    reti                                          ; $5ef9: $d9


    ld a, [$ea9e]                                 ; $5efa: $fa $9e $ea
    inc [hl]                                      ; $5efd: $34
    add h                                         ; $5efe: $84
    ld d, c                                       ; $5eff: $51
    or d                                          ; $5f00: $b2
    ld c, $4b                                     ; $5f01: $0e $4b
    sbc e                                         ; $5f03: $9b
    inc e                                         ; $5f04: $1c
    ld a, [bc]                                    ; $5f05: $0a
    ld [hl], e                                    ; $5f06: $73
    ldh a, [rOCPD]                                ; $5f07: $f0 $6b
    rla                                           ; $5f09: $17
    and e                                         ; $5f0a: $a3
    ld a, [hl]                                    ; $5f0b: $7e
    ld a, [de]                                    ; $5f0c: $1a
    ld c, b                                       ; $5f0d: $48
    ld l, h                                       ; $5f0e: $6c
    ld [hl], d                                    ; $5f0f: $72
    db $fd                                        ; $5f10: $fd
    ld a, [hl]                                    ; $5f11: $7e
    ld c, [hl]                                    ; $5f12: $4e
    or e                                          ; $5f13: $b3
    dec e                                         ; $5f14: $1d
    sbc a                                         ; $5f15: $9f
    ld c, [hl]                                    ; $5f16: $4e
    cp $49                                        ; $5f17: $fe $49
    ret nc                                        ; $5f19: $d0

    db $fc                                        ; $5f1a: $fc
    dec sp                                        ; $5f1b: $3b
    sub a                                         ; $5f1c: $97
    ld c, $9f                                     ; $5f1d: $0e $9f
    ld sp, $518b                                  ; $5f1f: $31 $8b $51

jr_06e_5f22:
    sbc c                                         ; $5f22: $99
    sub [hl]                                      ; $5f23: $96
    add a                                         ; $5f24: $87
    sbc a                                         ; $5f25: $9f
    ld l, [hl]                                    ; $5f26: $6e
    db $db                                        ; $5f27: $db
    halt                                          ; $5f28: $76
    nop                                           ; $5f29: $00
    rst $28                                       ; $5f2a: $ef
    xor h                                         ; $5f2b: $ac
    ld b, b                                       ; $5f2c: $40
    and d                                         ; $5f2d: $a2
    dec hl                                        ; $5f2e: $2b
    ld [hl+], a                                   ; $5f2f: $22
    ld [hl], e                                    ; $5f30: $73
    inc e                                         ; $5f31: $1c
    db $ed                                        ; $5f32: $ed
    sbc l                                         ; $5f33: $9d
    dec [hl]                                      ; $5f34: $35
    xor h                                         ; $5f35: $ac
    inc l                                         ; $5f36: $2c
    add [hl]                                      ; $5f37: $86
    and b                                         ; $5f38: $a0
    call c, $0bd1                                 ; $5f39: $dc $d1 $0b
    ld b, l                                       ; $5f3c: $45
    ld b, e                                       ; $5f3d: $43
    ld e, [hl]                                    ; $5f3e: $5e

jr_06e_5f3f:
    ld b, h                                       ; $5f3f: $44
    dec e                                         ; $5f40: $1d
    sub [hl]                                      ; $5f41: $96
    ld [hl], $1c                                  ; $5f42: $36 $1c
    ld c, a                                       ; $5f44: $4f
    dec de                                        ; $5f45: $1b
    push bc                                       ; $5f46: $c5
    halt                                          ; $5f47: $76
    nop                                           ; $5f48: $00
    ld d, a                                       ; $5f49: $57
    jp nc, $f0f2                                  ; $5f4a: $d2 $f2 $f0

    inc hl                                        ; $5f4d: $23
    add sp, $55                                   ; $5f4e: $e8 $55
    sbc b                                         ; $5f50: $98
    db $fd                                        ; $5f51: $fd
    ld [hl], h                                    ; $5f52: $74
    jp hl                                         ; $5f53: $e9


    nop                                           ; $5f54: $00
    ld d, a                                       ; $5f55: $57
    add $4d                                       ; $5f56: $c6 $4d
    xor c                                         ; $5f58: $a9
    ld sp, $d3b8                                  ; $5f59: $31 $b8 $d3
    ld c, a                                       ; $5f5c: $4f
    daa                                           ; $5f5d: $27
    rst $38                                       ; $5f5e: $ff
    db $f4                                        ; $5f5f: $f4
    add $01                                       ; $5f60: $c6 $01
    rst $20                                       ; $5f62: $e7
    xor c                                         ; $5f63: $a9
    db $db                                        ; $5f64: $db
    or [hl]                                       ; $5f65: $b6
    sub l                                         ; $5f66: $95
    xor c                                         ; $5f67: $a9
    sub b                                         ; $5f68: $90
    ld [c], a                                     ; $5f69: $e2
    ld l, c                                       ; $5f6a: $69
    jr nz, @-$4d                                  ; $5f6b: $20 $b1

    call c, Call_000_3fd9                         ; $5f6d: $dc $d9 $3f
    ld d, [hl]                                    ; $5f70: $56
    ld b, l                                       ; $5f71: $45
    ld c, e                                       ; $5f72: $4b
    jp nz, $a42a                                  ; $5f73: $c2 $2a $a4

    db $db                                        ; $5f76: $db
    ld a, d                                       ; $5f77: $7a
    dec c                                         ; $5f78: $0d
    ld e, d                                       ; $5f79: $5a
    xor $2c                                       ; $5f7a: $ee $2c
    dec [hl]                                      ; $5f7c: $35
    ld b, $37                                     ; $5f7d: $06 $37
    adc a                                         ; $5f7f: $8f
    ld b, h                                       ; $5f80: $44
    adc d                                         ; $5f81: $8a
    add h                                         ; $5f82: $84
    sbc a                                         ; $5f83: $9f
    db $ed                                        ; $5f84: $ed
    nop                                           ; $5f85: $00
    rra                                           ; $5f86: $1f
    db $dd                                        ; $5f87: $dd
    and e                                         ; $5f88: $a3
    call $d3bf                                    ; $5f89: $cd $bf $d3
    ld [hl], b                                    ; $5f8c: $70
    inc a                                         ; $5f8d: $3c
    db $dd                                        ; $5f8e: $dd
    ld l, b                                       ; $5f8f: $68
    ld b, e                                       ; $5f90: $43
    jr jr_06e_5f3f                                ; $5f91: $18 $ac

    jr c, jr_06e_5f22                             ; $5f93: $38 $8d

    ld b, c                                       ; $5f95: $41
    ld d, b                                       ; $5f96: $50
    ld [hl], $ff                                  ; $5f97: $36 $ff
    ld c, [hl]                                    ; $5f99: $4e
    push bc                                       ; $5f9a: $c5
    pop bc                                        ; $5f9b: $c1
    ld [hl], l                                    ; $5f9c: $75
    ld e, b                                       ; $5f9d: $58
    jp c, $8f0c                                   ; $5f9e: $da $0c $8f

    ld [hl+], a                                   ; $5fa1: $22
    sub b                                         ; $5fa2: $90
    ld d, [hl]                                    ; $5fa3: $56
    inc bc                                        ; $5fa4: $03
    adc c                                         ; $5fa5: $89
    dec c                                         ; $5fa6: $0d
    ld b, a                                       ; $5fa7: $47
    dec d                                         ; $5fa8: $15
    ld [hl], l                                    ; $5fa9: $75
    sub b                                         ; $5faa: $90
    ld [c], a                                     ; $5fab: $e2
    inc h                                         ; $5fac: $24
    add e                                         ; $5fad: $83
    sbc a                                         ; $5fae: $9f
    ret c                                         ; $5faf: $d8

    ld h, a                                       ; $5fb0: $67
    db $eb                                        ; $5fb1: $eb
    ld c, l                                       ; $5fb2: $4d
    cp b                                          ; $5fb3: $b8
    pop de                                        ; $5fb4: $d1
    xor [hl]                                      ; $5fb5: $ae
    db $ec                                        ; $5fb6: $ec
    and a                                         ; $5fb7: $a7
    ld hl, $450c                                  ; $5fb8: $21 $0c $45
    ld b, e                                       ; $5fbb: $43
    cp e                                          ; $5fbc: $bb
    rst $20                                       ; $5fbd: $e7
    sub $72                                       ; $5fbe: $d6 $72
    xor b                                         ; $5fc0: $a8
    ld h, d                                       ; $5fc1: $62
    rst $00                                       ; $5fc2: $c7
    halt                                          ; $5fc3: $76
    nop                                           ; $5fc4: $00
    sbc a                                         ; $5fc5: $9f
    cp e                                          ; $5fc6: $bb
    ld b, [hl]                                    ; $5fc7: $46
    add e                                         ; $5fc8: $83
    sbc [hl]                                      ; $5fc9: $9e
    and $52                                       ; $5fca: $e6 $52
    rst $18                                       ; $5fcc: $df
    ld h, [hl]                                    ; $5fcd: $66
    di                                            ; $5fce: $f3
    db $fc                                        ; $5fcf: $fc
    and a                                         ; $5fd0: $a7
    ld sp, hl                                     ; $5fd1: $f9
    ld [hl], a                                    ; $5fd2: $77
    ld l, $1d                                     ; $5fd3: $2e $1d
    rra                                           ; $5fd5: $1f
    db $fd                                        ; $5fd6: $fd
    ld c, [hl]                                    ; $5fd7: $4e
    inc hl                                        ; $5fd8: $23
    or e                                          ; $5fd9: $b3
    jr jr_06e_6051                                ; $5fda: $18 $75

    db $f4                                        ; $5fdc: $f4
    db $d3                                        ; $5fdd: $d3
    ld l, l                                       ; $5fde: $6d
    db $db                                        ; $5fdf: $db
    jp z, Jump_06e_4854                           ; $5fe0: $ca $54 $48

    pop af                                        ; $5fe3: $f1
    inc [hl]                                      ; $5fe4: $34
    sub b                                         ; $5fe5: $90
    ld e, b                                       ; $5fe6: $58
    xor $2c                                       ; $5fe7: $ee $2c
    dec [hl]                                      ; $5fe9: $35
    ld b, $d7                                     ; $5fea: $06 $d7
    ld d, e                                       ; $5fec: $53
    dec e                                         ; $5fed: $1d
    ld d, $fc                                     ; $5fee: $16 $fc
    ld l, h                                       ; $5ff0: $6c
    db $fd                                        ; $5ff1: $fd
    adc h                                         ; $5ff2: $8c
    xor [hl]                                      ; $5ff3: $ae
    ret                                           ; $5ff4: $c9


    ld d, l                                       ; $5ff5: $55
    ld h, d                                       ; $5ff6: $62
    rra                                           ; $5ff7: $1f
    daa                                           ; $5ff8: $27
    sbc h                                         ; $5ff9: $9c
    adc d                                         ; $5ffa: $8a
    cp b                                          ; $5ffb: $b8
    and [hl]                                      ; $5ffc: $a6
    add hl, de                                    ; $5ffd: $19
    sub l                                         ; $5ffe: $95
    db $10                                        ; $5fff: $10
    ld a, [c]                                     ; $6000: $f2
    ld [hl+], a                                   ; $6001: $22
    ld [$73b9], a                                 ; $6002: $ea $b9 $73
    dec sp                                        ; $6005: $3b
    nop                                           ; $6006: $00
    sbc a                                         ; $6007: $9f
    pop de                                        ; $6008: $d1
    dec [hl]                                      ; $6009: $35
    cp c                                          ; $600a: $b9
    cp d                                          ; $600b: $ba
    ret                                           ; $600c: $c9


    sub c                                         ; $600d: $91
    push af                                       ; $600e: $f5
    xor h                                         ; $600f: $ac
    sbc h                                         ; $6010: $9c
    and l                                         ; $6011: $a5
    ret nc                                        ; $6012: $d0

    adc d                                         ; $6013: $8a
    cp b                                          ; $6014: $b8
    and b                                         ; $6015: $a0
    call $84a8                                    ; $6016: $cd $a8 $84
    sub b                                         ; $6019: $90
    rla                                           ; $601a: $17
    ld d, c                                       ; $601b: $51
    rst $08                                       ; $601c: $cf
    sbc l                                         ; $601d: $9d
    db $db                                        ; $601e: $db
    ld bc, $3b9f                                  ; $601f: $01 $9f $3b
    inc [hl]                                      ; $6022: $34
    sbc h                                         ; $6023: $9c
    adc e                                         ; $6024: $8b
    cp a                                          ; $6025: $bf
    ld d, e                                       ; $6026: $53
    rst $08                                       ; $6027: $cf
    jp z, $b864                                   ; $6028: $ca $64 $b8

    call nc, $8d73                                ; $602b: $d4 $73 $8d
    sub e                                         ; $602e: $93
    ld a, [hl+]                                   ; $602f: $2a
    ld [c], a                                     ; $6030: $e2
    cp [hl]                                       ; $6031: $be
    ld l, [hl]                                    ; $6032: $6e
    scf                                           ; $6033: $37
    sub b                                         ; $6034: $90
    ld e, b                                       ; $6035: $58
    xor $6c                                       ; $6036: $ee $6c
    cp $9d                                        ; $6038: $fe $9d
    ld b, [hl]                                    ; $603a: $46
    cp $59                                        ; $603b: $fe $59
    add hl, hl                                    ; $603d: $29
    ld b, [hl]                                    ; $603e: $46
    sub [hl]                                      ; $603f: $96
    xor h                                         ; $6040: $ac
    ld h, a                                       ; $6041: $67
    sub e                                         ; $6042: $93
    ld b, $3f                                     ; $6043: $06 $3f
    or c                                          ; $6045: $b1
    db $e3                                        ; $6046: $e3
    jp nc, Jump_000_1f01                          ; $6047: $d2 $01 $1f

    scf                                           ; $604a: $37
    sub b                                         ; $604b: $90
    ld e, b                                       ; $604c: $58
    ld de, $d36e                                  ; $604d: $11 $6e $d3
    adc l                                         ; $6050: $8d

jr_06e_6051:
    ld d, $a7                                     ; $6051: $16 $a7
    ld sp, $71bc                                  ; $6053: $31 $bc $71
    nop                                           ; $6056: $00
    ld d, a                                       ; $6057: $57
    ld [hl], c                                    ; $6058: $71
    or d                                          ; $6059: $b2
    push hl                                       ; $605a: $e5
    db $eb                                        ; $605b: $eb
    sub a                                         ; $605c: $97
    ld a, [hl+]                                   ; $605d: $2a
    dec de                                        ; $605e: $1b
    ld c, b                                       ; $605f: $48
    db $ec                                        ; $6060: $ec
    ccf                                           ; $6061: $3f
    ret c                                         ; $6062: $d8

    sub $68                                       ; $6063: $d6 $68
    ld b, e                                       ; $6065: $43
    dec de                                        ; $6066: $1b
    ld de, $c755                                  ; $6067: $11 $55 $c7
    xor b                                         ; $606a: $a8
    and l                                         ; $606b: $a5
    ld b, [hl]                                    ; $606c: $46
    db $fc                                        ; $606d: $fc
    pop hl                                        ; $606e: $e1
    ld a, [de]                                    ; $606f: $1a
    jp c, $9e44                                   ; $6070: $da $44 $9e

    sbc b                                         ; $6073: $98
    db $fd                                        ; $6074: $fd
    inc d                                         ; $6075: $14
    cp l                                          ; $6076: $bd
    ld c, [hl]                                    ; $6077: $4e
    ld l, a                                       ; $6078: $6f
    ret c                                         ; $6079: $d8

    ld a, d                                       ; $607a: $7a
    cp c                                          ; $607b: $b9
    and c                                         ; $607c: $a1
    adc l                                         ; $607d: $8d
    adc b                                         ; $607e: $88
    xor d                                         ; $607f: $aa
    ld h, e                                       ; $6080: $63
    add sp, -$73                                  ; $6081: $e8 $8d
    ret nc                                        ; $6083: $d0

    ld h, $c5                                     ; $6084: $26 $c5
    ld a, d                                       ; $6086: $7a
    cp $d9                                        ; $6087: $fe $d9
    ld c, b                                       ; $6089: $48
    xor e                                         ; $608a: $ab
    rst $20                                       ; $608b: $e7
    cp d                                          ; $608c: $ba
    dec b                                         ; $608d: $05
    ccf                                           ; $608e: $3f
    sbc l                                         ; $608f: $9d
    cp $97                                        ; $6090: $fe $97
    sbc [hl]                                      ; $6092: $9e
    and [hl]                                      ; $6093: $a6
    ld a, [hl]                                    ; $6094: $7e
    ld [$8417], a                                 ; $6095: $ea $17 $84
    inc hl                                        ; $6098: $23
    add sp, $3b                                   ; $6099: $e8 $3b
    ei                                            ; $609b: $fb
    adc d                                         ; $609c: $8a
    ccf                                           ; $609d: $3f
    ld l, $f9                                     ; $609e: $2e $f9
    ld b, e                                       ; $60a0: $43
    dec a                                         ; $60a1: $3d
    rst $38                                       ; $60a2: $ff
    ld l, h                                       ; $60a3: $6c
    and h                                         ; $60a4: $a4
    sub l                                         ; $60a5: $95
    ld e, c                                       ; $60a6: $59
    call nz, $d715                                ; $60a7: $c4 $15 $d7
    ld b, l                                       ; $60aa: $45
    ld hl, sp+$29                                 ; $60ab: $f8 $29
    or h                                          ; $60ad: $b4
    ld d, d                                       ; $60ae: $52
    adc h                                         ; $60af: $8c
    ccf                                           ; $60b0: $3f
    or l                                          ; $60b1: $b5
    inc l                                         ; $60b2: $2c
    ld a, [de]                                    ; $60b3: $1a
    jp c, $a888                                   ; $60b4: $da $88 $a8

    ld a, [hl-]                                   ; $60b7: $3a
    add [hl]                                      ; $60b8: $86
    ld e, [hl]                                    ; $60b9: $5e
    sub e                                         ; $60ba: $93
    rst $28                                       ; $60bb: $ef
    ld c, [hl]                                    ; $60bc: $4e
    add $09                                       ; $60bd: $c6 $09
    ei                                            ; $60bf: $fb
    sbc $68                                       ; $60c0: $de $68
    ret z                                         ; $60c2: $c8

    ld a, [hl+]                                   ; $60c3: $2a
    ld e, d                                       ; $60c4: $5a
    and a                                         ; $60c5: $a7

jr_06e_60c6:
    ld h, h                                       ; $60c6: $64
    sub e                                         ; $60c7: $93
    ld a, [bc]                                    ; $60c8: $0a
    ld l, l                                       ; $60c9: $6d
    ret z                                         ; $60ca: $c8

    adc e                                         ; $60cb: $8b
    ret nc                                        ; $60cc: $d0

    ld a, d                                       ; $60cd: $7a
    or $16                                        ; $60ce: $f6 $16
    cp h                                          ; $60d0: $bc
    pop af                                        ; $60d1: $f1
    or $d6                                        ; $60d2: $f6 $d6
    ld [hl], e                                    ; $60d4: $73
    adc l                                         ; $60d5: $8d
    xor b                                         ; $60d6: $a8
    rst $20                                       ; $60d7: $e7
    sbc a                                         ; $60d8: $9f
    ld d, l                                       ; $60d9: $55
    ld e, d                                       ; $60da: $5a
    pop de                                        ; $60db: $d1
    ret nc                                        ; $60dc: $d0

    ld h, $f2                                     ; $60dd: $26 $f2
    ld [c], a                                     ; $60df: $e2
    rst $28                                       ; $60e0: $ef
    call nc, Call_000_37b3                        ; $60e1: $d4 $b3 $37
    ld [hl-], a                                   ; $60e4: $32
    ld b, d                                       ; $60e5: $42
    ld l, [hl]                                    ; $60e6: $6e
    dec a                                         ; $60e7: $3d
    rst $08                                       ; $60e8: $cf
    pop af                                        ; $60e9: $f1
    ld [hl], a                                    ; $60ea: $77
    inc b                                         ; $60eb: $04
    add l                                         ; $60ec: $85
    inc d                                         ; $60ed: $14
    ld c, a                                       ; $60ee: $4f
    inc bc                                        ; $60ef: $03
    adc c                                         ; $60f0: $89
    push af                                       ; $60f1: $f5
    db $fc                                        ; $60f2: $fc
    db $d3                                        ; $60f3: $d3
    adc l                                         ; $60f4: $8d
    ld [hl], $34                                  ; $60f5: $36 $34
    add [hl]                                      ; $60f7: $86
    jr nc, jr_06e_6152                            ; $60f8: $30 $58

    sub e                                         ; $60fa: $93
    ld b, e                                       ; $60fb: $43
    jp $f8b9                                      ; $60fc: $c3 $b9 $f8


    dec sp                                        ; $60ff: $3b
    db $dd                                        ; $6100: $dd
    or [hl]                                       ; $6101: $b6
    db $ed                                        ; $6102: $ed
    nop                                           ; $6103: $00
    rst $20                                       ; $6104: $e7

jr_06e_6105:
    dec c                                         ; $6105: $0d
    inc h                                         ; $6106: $24
    db $ec                                        ; $6107: $ec
    ld b, l                                       ; $6108: $45
    ld d, e                                       ; $6109: $53
    ld e, h                                       ; $610a: $5c
    ei                                            ; $610b: $fb
    ld a, [c]                                     ; $610c: $f2
    ldh a, [$ac]                                  ; $610d: $f0 $ac
    ld h, a                                       ; $610f: $67
    sub e                                         ; $6110: $93
    ld b, e                                       ; $6111: $43
    jp $f8b9                                      ; $6112: $c3 $b9 $f8


    dec sp                                        ; $6115: $3b
    ld b, l                                       ; $6116: $45
    jr nz, jr_06e_60c6                            ; $6117: $20 $ad

    scf                                           ; $6119: $37
    ld c, $e7                                     ; $611a: $0e $e7
    xor c                                         ; $611c: $a9
    ld sp, hl                                     ; $611d: $f9
    ld [hl], a                                    ; $611e: $77
    xor d                                         ; $611f: $aa
    ld e, h                                       ; $6120: $5c
    ld e, e                                       ; $6121: $5b
    ccf                                           ; $6122: $3f
    jp $e7fe                                      ; $6123: $c3 $fe $e7


    db $ed                                        ; $6126: $ed
    and d                                         ; $6127: $a2
    pop hl                                        ; $6128: $e1
    ld e, h                                       ; $6129: $5c
    db $fc                                        ; $612a: $fc
    sbc l                                         ; $612b: $9d
    and $d1                                       ; $612c: $e6 $d1
    add [hl]                                      ; $612e: $86
    ld [hl], $91                                  ; $612f: $36 $91
    rst $18                                       ; $6131: $df
    and e                                         ; $6132: $a3
    ld a, [hl]                                    ; $6133: $7e
    ld a, [hl+]                                   ; $6134: $2a
    sbc d                                         ; $6135: $9a
    db $d3                                        ; $6136: $d3
    ld l, h                                       ; $6137: $6c
    cp l                                          ; $6138: $bd
    ld b, $6d                                     ; $6139: $06 $6d
    ld l, b                                       ; $613b: $68
    sub h                                         ; $613c: $94
    ld c, e                                       ; $613d: $4b
    pop hl                                        ; $613e: $e1
    ld b, [hl]                                    ; $613f: $46
    db $eb                                        ; $6140: $eb
    xor c                                         ; $6141: $a9
    ld [hl], d                                    ; $6142: $72
    add h                                         ; $6143: $84
    or [hl]                                       ; $6144: $b6
    ld l, h                                       ; $6145: $6c
    dec sp                                        ; $6146: $3b
    nop                                           ; $6147: $00
    scf                                           ; $6148: $37
    xor $a9                                       ; $6149: $ee $a9
    jr c, jr_06e_6105                             ; $614b: $38 $b8

    pop hl                                        ; $614d: $e1
    ld e, h                                       ; $614e: $5c
    db $fc                                        ; $614f: $fc
    sbc l                                         ; $6150: $9d
    ld l, d                                       ; $6151: $6a

jr_06e_6152:
    ld [de], a                                    ; $6152: $12
    dec l                                         ; $6153: $2d
    cp c                                          ; $6154: $b9
    sbc b                                         ; $6155: $98
    inc hl                                        ; $6156: $23
    dec de                                        ; $6157: $1b
    jp nz, $ffd0                                  ; $6158: $c2 $d0 $ff

    ret z                                         ; $615b: $c8

    or e                                          ; $615c: $b3
    xor l                                         ; $615d: $ad
    scf                                           ; $615e: $37
    add e                                         ; $615f: $83
    ld c, e                                       ; $6160: $4b
    ld d, a                                       ; $6161: $57
    sub c                                         ; $6162: $91
    ld sp, $be47                                  ; $6163: $31 $47 $be
    ld e, d                                       ; $6166: $5a
    and [hl]                                      ; $6167: $a6
    cp $27                                        ; $6168: $fe $27
    push af                                       ; $616a: $f5
    ccf                                           ; $616b: $3f
    ld a, e                                       ; $616c: $7b
    add h                                         ; $616d: $84
    dec [hl]                                      ; $616e: $35
    add h                                         ; $616f: $84
    and c                                         ; $6170: $a1
    ld [hl-], a                                   ; $6171: $32
    dec l                                         ; $6172: $2d
    rrca                                          ; $6173: $0f
    xor e                                         ; $6174: $ab
    sbc a                                         ; $6175: $9f
    ld a, [hl]                                    ; $6176: $7e
    ld a, [hl-]                                   ; $6177: $3a
    ld sp, hl                                     ; $6178: $f9
    and a                                         ; $6179: $a7
    or d                                          ; $617a: $b2
    call z, Call_06e_7272                         ; $617b: $cc $72 $72
    inc [hl]                                      ; $617e: $34
    ld e, b                                       ; $617f: $58
    pop af                                        ; $6180: $f1
    ld a, l                                       ; $6181: $7d
    ld a, [c]                                     ; $6182: $f2
    ret c                                         ; $6183: $d8

    ld a, d                                       ; $6184: $7a
    dec d                                         ; $6185: $15
    ld h, [hl]                                    ; $6186: $66
    ccf                                           ; $6187: $3f
    add hl, bc                                    ; $6188: $09
    ld a, [$791f]                                 ; $6189: $fa $1f $79
    sub $0b                                       ; $618c: $d6 $0b
    ld c, l                                       ; $618e: $4d
    xor [hl]                                      ; $618f: $ae
    daa                                           ; $6190: $27
    ld b, e                                       ; $6191: $43
    or $ac                                        ; $6192: $f6 $ac
    ret nc                                        ; $6194: $d0

    jp nc, $d9ad                                  ; $6195: $d2 $ad $d9

    ld a, [$a0d6]                                 ; $6198: $fa $d6 $a0
    ld a, [hl-]                                   ; $619b: $3a
    ld d, $b9                                     ; $619c: $16 $b9
    dec e                                         ; $619e: $1d
    rra                                           ; $619f: $1f
    db $fd                                        ; $61a0: $fd
    ld c, [hl]                                    ; $61a1: $4e
    ld b, l                                       ; $61a2: $45
    add hl, hl                                    ; $61a3: $29
    swap l                                        ; $61a4: $cb $35
    ld a, c                                       ; $61a6: $79
    jp nc, $cbd6                                  ; $61a7: $d2 $d6 $cb

    ld [c], a                                     ; $61aa: $e2
    and $df                                       ; $61ab: $e6 $df
    ld de, $3ff4                                  ; $61ad: $11 $f4 $3f
    xor c                                         ; $61b0: $a9
    sub c                                         ; $61b1: $91
    sub $40                                       ; $61b2: $d6 $40
    ld h, d                                       ; $61b4: $62
    push hl                                       ; $61b5: $e5
    jr c, @+$60                                   ; $61b6: $38 $5e

    add h                                         ; $61b8: $84
    dec [hl]                                      ; $61b9: $35
    ld h, $3f                                     ; $61ba: $26 $3f
    push af                                       ; $61bc: $f5
    ld l, h                                       ; $61bd: $6c
    sbc [hl]                                      ; $61be: $9e
    rst $38                                       ; $61bf: $ff
    ld e, h                                       ; $61c0: $5c
    ld a, [hl-]                                   ; $61c1: $3a
    nop                                           ; $61c2: $00
    rst $20                                       ; $61c3: $e7
    xor c                                         ; $61c4: $a9
    call nc, $feb8                                ; $61c5: $d4 $b8 $fe
    xor h                                         ; $61c8: $ac
    ld h, e                                       ; $61c9: $63
    ld b, e                                       ; $61ca: $43
    jp c, $e529                                   ; $61cb: $da $29 $e5

    adc b                                         ; $61ce: $88
    db $ec                                        ; $61cf: $ec
    and a                                         ; $61d0: $a7
    jp z, $cb32                                   ; $61d1: $ca $32 $cb

    ret                                           ; $61d4: $c9


    pop de                                        ; $61d5: $d1
    ld h, b                                       ; $61d6: $60
    dec bc                                        ; $61d7: $0b
    db $fd                                        ; $61d8: $fd
    adc a                                         ; $61d9: $8f
    inc a                                         ; $61da: $3c
    dec hl                                        ; $61db: $2b
    ld [bc], a                                    ; $61dc: $02
    ld l, c                                       ; $61dd: $69
    add hl, bc                                    ; $61de: $09
    ld a, d                                       ; $61df: $7a
    ld a, l                                       ; $61e0: $7d
    ld h, d                                       ; $61e1: $62
    and h                                         ; $61e2: $a4
    ld l, l                                       ; $61e3: $6d
    rlca                                          ; $61e4: $07
    rst $20                                       ; $61e5: $e7
    xor c                                         ; $61e6: $a9
    ld hl, $72b3                                  ; $61e7: $21 $b3 $72
    dec [hl]                                      ; $61ea: $35
    sub b                                         ; $61eb: $90
    ld e, b                                       ; $61ec: $58
    and l                                         ; $61ed: $a5
    dec l                                         ; $61ee: $2d
    ld [hl], h                                    ; $61ef: $74
    ld a, d                                       ; $61f0: $7a
    inc hl                                        ; $61f1: $23
    inc hl                                        ; $61f2: $23
    db $e4                                        ; $61f3: $e4
    sub $f3                                       ; $61f4: $d6 $f3
    sbc l                                         ; $61f6: $9d
    ld d, l                                       ; $61f7: $55
    cp d                                          ; $61f8: $ba
    ret nc                                        ; $61f9: $d0

    ret c                                         ; $61fa: $d8

    db $10                                        ; $61fb: $10
    ld b, [hl]                                    ; $61fc: $46
    ret                                           ; $61fd: $c9


    ld d, h                                       ; $61fe: $54
    rst $00                                       ; $61ff: $c7
    adc [hl]                                      ; $6200: $8e
    ld e, a                                       ; $6201: $5f
    or b                                          ; $6202: $b0
    db $ed                                        ; $6203: $ed
    nop                                           ; $6204: $00
    rst $20                                       ; $6205: $e7
    push hl                                       ; $6206: $e5
    adc $8e                                       ; $6207: $ce $8e
    rst $20                                       ; $6209: $e7
    jp nz, $f3d6                                  ; $620a: $c2 $d6 $f3

    adc [hl]                                      ; $620d: $8e
    ld e, a                                       ; $620e: $5f
    ld hl, sp-$5d                                 ; $620f: $f8 $a3
    jp z, Jump_000_10d4                           ; $6211: $ca $d4 $10

    xor e                                         ; $6214: $ab
    ld de, $784e                                  ; $6215: $11 $4e $78
    pop bc                                        ; $6218: $c1
    add hl, bc                                    ; $6219: $09
    ld a, [de]                                    ; $621a: $1a
    ld c, b                                       ; $621b: $48
    ret z                                         ; $621c: $c8

    ld a, [hl]                                    ; $621d: $7e
    ld c, d                                       ; $621e: $4a
    adc l                                         ; $621f: $8d
    ret                                           ; $6220: $c9


    db $e3                                        ; $6221: $e3
    rrca                                          ; $6222: $0f
    rst $10                                       ; $6223: $d7
    rst $28                                       ; $6224: $ef
    ld d, e                                       ; $6225: $53
    adc [hl]                                      ; $6226: $8e
    and e                                         ; $6227: $a3
    and l                                         ; $6228: $a5
    db $eb                                        ; $6229: $eb
    push de                                       ; $622a: $d5
    add hl, sp                                    ; $622b: $39
    db $fd                                        ; $622c: $fd
    ld [$ba8b], sp                                ; $622d: $08 $8b $ba
    dec e                                         ; $6230: $1d
    rst $20                                       ; $6231: $e7
    xor c                                         ; $6232: $a9
    rst $38                                       ; $6233: $ff
    push de                                       ; $6234: $d5
    rst $38                                       ; $6235: $ff
    ret z                                         ; $6236: $c8

    or e                                          ; $6237: $b3
    or d                                          ; $6238: $b2
    scf                                           ; $6239: $37
    ld [hl-], a                                   ; $623a: $32
    ld b, d                                       ; $623b: $42
    or $fb                                        ; $623c: $f6 $fb
    sub h                                         ; $623e: $94
    db $e3                                        ; $623f: $e3

Call_06e_6240:
Jump_06e_6240:
    add sp, -$2a                                  ; $6240: $e8 $d6
    di                                            ; $6242: $f3
    ld a, [hl]                                    ; $6243: $7e
    rra                                           ; $6244: $1f
    call c, Call_06e_6240                         ; $6245: $dc $40 $62
    cp c                                          ; $6248: $b9
    or e                                          ; $6249: $b3
    ld sp, hl                                     ; $624a: $f9
    ld [hl], a                                    ; $624b: $77
    ld c, d                                       ; $624c: $4a
    adc l                                         ; $624d: $8d
    ld hl, sp-$5d                                 ; $624e: $f8 $a3
    adc b                                         ; $6250: $88
    ld d, $ac                                     ; $6251: $16 $ac
    push af                                       ; $6253: $f5
    xor h                                         ; $6254: $ac
    ld e, e                                       ; $6255: $5b
    xor [hl]                                      ; $6256: $ae
    db $db                                        ; $6257: $db
    or [hl]                                       ; $6258: $b6
    sub l                                         ; $6259: $95
    dec sp                                        ; $625a: $3b
    db $eb                                        ; $625b: $eb
    ld sp, hl                                     ; $625c: $f9
    ld e, a                                       ; $625d: $5f
    jr z, jr_06e_6295                             ; $625e: $28 $35

    jp nz, Jump_06e_688a                          ; $6260: $c2 $8a $68

    pop bc                                        ; $6263: $c1
    ld e, d                                       ; $6264: $5a
    rst $08                                       ; $6265: $cf
    cp $47                                        ; $6266: $fe $47
    sbc [hl]                                      ; $6268: $9e
    ld e, l                                       ; $6269: $5d
    ld a, [hl-]                                   ; $626a: $3a
    nop                                           ; $626b: $00
    scf                                           ; $626c: $37
    sub [hl]                                      ; $626d: $96
    dec hl                                        ; $626e: $2b
    ld [hl], a                                    ; $626f: $77
    sub [hl]                                      ; $6270: $96
    ld a, [de]                                    ; $6271: $1a
    pop af                                        ; $6272: $f1
    rst $00                                       ; $6273: $c7
    sub $d7                                       ; $6274: $d6 $d7
    sbc e                                         ; $6276: $9b
    inc e                                         ; $6277: $1c
    ld a, [de]                                    ; $6278: $1a
    ld [hl-], a                                   ; $6279: $32
    and e                                         ; $627a: $a3
    add c                                         ; $627b: $81
    call nz, $33be                                ; $627c: $c4 $be $33
    and d                                         ; $627f: $a2
    ld l, c                                       ; $6280: $69
    cp $9d                                        ; $6281: $fe $9d
    ld b, [hl]                                    ; $6283: $46
    ld h, [hl]                                    ; $6284: $66
    ld sp, $272a                                  ; $6285: $31 $2a $27
    dec hl                                        ; $6288: $2b
    ld c, a                                       ; $6289: $4f
    ld l, c                                       ; $628a: $69
    ld sp, hl                                     ; $628b: $f9
    add hl, hl                                    ; $628c: $29
    call z, Call_000_2590                         ; $628d: $cc $90 $25
    xor h                                         ; $6290: $ac
    ld l, b                                       ; $6291: $68
    ld c, b                                       ; $6292: $48
    res 5, b                                      ; $6293: $cb $a8

jr_06e_6295:
    rst $20                                       ; $6295: $e7
    adc $66                                       ; $6296: $ce $66
    inc [hl]                                      ; $6298: $34
    or h                                          ; $6299: $b4
    push hl                                       ; $629a: $e5
    cp b                                          ; $629b: $b8
    inc c                                         ; $629c: $0c
    db $fd                                        ; $629d: $fd
    di                                            ; $629e: $f3
    halt                                          ; $629f: $76
    inc bc                                        ; $62a0: $03
    adc c                                         ; $62a1: $89
    push hl                                       ; $62a2: $e5
    adc $3a                                       ; $62a3: $ce $3a
    sub $33                                       ; $62a5: $d6 $33
    ld a, [c]                                     ; $62a7: $f2
    rst $08                                       ; $62a8: $cf
    db $ed                                        ; $62a9: $ed
    nop                                           ; $62aa: $00
    rst $10                                       ; $62ab: $d7
    and b                                         ; $62ac: $a0
    ld d, l                                       ; $62ad: $55
    ld [hl], $ff                                  ; $62ae: $36 $ff
    ld c, [hl]                                    ; $62b0: $4e
    ld l, c                                       ; $62b1: $69
    add sp, -$73                                  ; $62b2: $e8 $8d
    adc h                                         ; $62b4: $8c
    sub b                                         ; $62b5: $90
    dec c                                         ; $62b6: $0d
    inc h                                         ; $62b7: $24
    cp d                                          ; $62b8: $ba
    ld c, [hl]                                    ; $62b9: $4e

jr_06e_62ba:
    pop hl                                        ; $62ba: $e1
    adc b                                         ; $62bb: $88
    adc e                                         ; $62bc: $8b
    ld hl, sp+$43                                 ; $62bd: $f8 $43
    ret nc                                        ; $62bf: $d0

    ld b, b                                       ; $62c0: $40
    and d                                         ; $62c1: $a2
    dec hl                                        ; $62c2: $2b
    dec c                                         ; $62c3: $0d
    ld l, a                                       ; $62c4: $6f
    inc e                                         ; $62c5: $1c
    rra                                           ; $62c6: $1f
    rst $10                                       ; $62c7: $d7
    ld sp, $51d5                                  ; $62c8: $31 $d5 $51
    and e                                         ; $62cb: $a3
    ld [hl], c                                    ; $62cc: $71
    db $eb                                        ; $62cd: $eb
    ld sp, hl                                     ; $62ce: $f9
    adc $46                                       ; $62cf: $ce $46
    cp d                                          ; $62d1: $ba
    ld b, $12                                     ; $62d2: $06 $12
    db $eb                                        ; $62d4: $eb
    ld e, b                                       ; $62d5: $58
    jr c, jr_06e_62ba                             ; $62d6: $38 $e2

    ld [hl+], a                                   ; $62d8: $22
    ld c, h                                       ; $62d9: $4c
    ret nc                                        ; $62da: $d0

    dec sp                                        ; $62db: $3b
    or l                                          ; $62dc: $b5
    ld a, a                                       ; $62dd: $7f
    sbc $a6                                       ; $62de: $de $a6
    ld l, [hl]                                    ; $62e0: $6e
    dec a                                         ; $62e1: $3d
    rst $18                                       ; $62e2: $df
    reti                                          ; $62e3: $d9


    dec bc                                        ; $62e4: $0b
    ld c, l                                       ; $62e5: $4d
    xor [hl]                                      ; $62e6: $ae
    daa                                           ; $62e7: $27
    ld b, e                                       ; $62e8: $43
    or $ac                                        ; $62e9: $f6 $ac
    jp Jump_000_0469                              ; $62eb: $c3 $69 $04


    ld h, l                                       ; $62ee: $65
    sbc c                                         ; $62ef: $99
    xor d                                         ; $62f0: $aa
    sub e                                         ; $62f1: $93
    ld a, [hl+]                                   ; $62f2: $2a
    ld [hl-], a                                   ; $62f3: $32
    ret z                                         ; $62f4: $c8

    jp hl                                         ; $62f5: $e9


    or [hl]                                       ; $62f6: $b6
    ld l, l                                       ; $62f7: $6d
    rlca                                          ; $62f8: $07
    rst $20                                       ; $62f9: $e7
    dec sp                                        ; $62fa: $3b
    ld c, e                                       ; $62fb: $4b
    adc l                                         ; $62fc: $8d
    db $fc                                        ; $62fd: $fc
    or e                                          ; $62fe: $b3
    ld [$25a4], sp                                ; $62ff: $08 $a4 $25
    jr z, jr_06e_6361                             ; $6302: $28 $5d

    xor a                                         ; $6304: $af
    adc $e9                                       ; $6305: $ce $e9
    ld b, a                                       ; $6307: $47
    ld e, b                                       ; $6308: $58
    ld d, h                                       ; $6309: $54
    ld b, c                                       ; $630a: $41
    push hl                                       ; $630b: $e5
    cp b                                          ; $630c: $b8
    cp $47                                        ; $630d: $fe $47
    sbc [hl]                                      ; $630f: $9e
    cp l                                          ; $6310: $bd
    ld [hl], c                                    ; $6311: $71
    jp hl                                         ; $6312: $e9


    nop                                           ; $6313: $00
    rst $20                                       ; $6314: $e7
    dec sp                                        ; $6315: $3b
    ld c, e                                       ; $6316: $4b
    adc l                                         ; $6317: $8d
    pop bc                                        ; $6318: $c1
    ld d, l                                       ; $6319: $55
    cp d                                          ; $631a: $ba
    ret nc                                        ; $631b: $d0

    ld e, b                                       ; $631c: $58
    add hl, sp                                    ; $631d: $39
    ld l, [hl]                                    ; $631e: $6e
    sbc l                                         ; $631f: $9d
    ld h, [hl]                                    ; $6320: $66
    db $eb                                        ; $6321: $eb
    ld h, a                                       ; $6322: $67
    db $e3                                        ; $6323: $e3
    jr z, jr_06e_638e                             ; $6324: $28 $68

    ld [hl], d                                    ; $6326: $72
    dec c                                         ; $6327: $0d
    add hl, de                                    ; $6328: $19
    ld c, b                                       ; $6329: $48
    call z, $d0d3                                 ; $632a: $cc $d3 $d0
    xor b                                         ; $632d: $a8
    call z, Call_000_0d91                         ; $632e: $cc $91 $0d
    ld h, c                                       ; $6331: $61
    add sp, $7f                                   ; $6332: $e8 $7f
    db $e4                                        ; $6334: $e4
    reti                                          ; $6335: $d9


    halt                                          ; $6336: $76
    nop                                           ; $6337: $00
    scf                                           ; $6338: $37
    ld b, a                                       ; $6339: $47
    sbc [hl]                                      ; $633a: $9e
    push af                                       ; $633b: $f5
    ld b, d                                       ; $633c: $42
    ld e, l                                       ; $633d: $5d
    ld e, d                                       ; $633e: $5a
    ld [hl], c                                    ; $633f: $71
    ld a, [bc]                                    ; $6340: $0a
    ld hl, $7177                                  ; $6341: $21 $77 $71
    ld a, [c]                                     ; $6344: $f2
    inc hl                                        ; $6345: $23
    add sp, -$0b                                  ; $6346: $e8 $f5
    adc c                                         ; $6348: $89
    sub c                                         ; $6349: $91
    or [hl]                                       ; $634a: $b6
    push af                                       ; $634b: $f5
    inc a                                         ; $634c: $3c
    ld [hl], l                                    ; $634d: $75
    add hl, de                                    ; $634e: $19
    ld d, a                                       ; $634f: $57
    ld h, l                                       ; $6350: $65
    ld e, d                                       ; $6351: $5a
    ld e, $56                                     ; $6352: $1e $56
    rst $08                                       ; $6354: $cf
    cp $47                                        ; $6355: $fe $47
    sbc [hl]                                      ; $6357: $9e
    push de                                       ; $6358: $d5
    inc sp                                        ; $6359: $33
    sbc h                                         ; $635a: $9c
    and l                                         ; $635b: $a5
    push af                                       ; $635c: $f5
    inc l                                         ; $635d: $2c
    ld l, a                                       ; $635e: $6f
    pop bc                                        ; $635f: $c1
    xor l                                         ; $6360: $ad

jr_06e_6361:
    inc c                                         ; $6361: $0c
    dec hl                                        ; $6362: $2b
    dec [hl]                                      ; $6363: $35
    or d                                          ; $6364: $b2
    call nc, $bb90                                ; $6365: $d4 $90 $bb
    ld a, b                                       ; $6368: $78
    ld a, [hl+]                                   ; $6369: $2a
    sub e                                         ; $636a: $93
    xor l                                         ; $636b: $ad
    pop de                                        ; $636c: $d1
    reti                                          ; $636d: $d9


    ld a, d                                       ; $636e: $7a
    ld e, c                                       ; $636f: $59
    adc d                                         ; $6370: $8a
    and a                                         ; $6371: $a7
    add c                                         ; $6372: $81
    call nz, Call_06e_6772                        ; $6373: $c4 $72 $67
    cpl                                           ; $6376: $2f
    inc d                                         ; $6377: $14
    sub l                                         ; $6378: $95
    ld h, d                                       ; $6379: $62
    db $fc                                        ; $637a: $fc
    reti                                          ; $637b: $d9


    db $10                                        ; $637c: $10
    add [hl]                                      ; $637d: $86
    ld [hl-], a                                   ; $637e: $32
    set 1, c                                      ; $637f: $cb $c9
    pop de                                        ; $6381: $d1
    ld h, b                                       ; $6382: $60
    ld b, l                                       ; $6383: $45
    xor a                                         ; $6384: $af
    db $d3                                        ; $6385: $d3
    dec de                                        ; $6386: $1b
    or [hl]                                       ; $6387: $b6
    inc bc                                        ; $6388: $03
    rst $20                                       ; $6389: $e7
    xor c                                         ; $638a: $a9
    call nc, $a938                                ; $638b: $d4 $38 $a9

jr_06e_638e:
    ld a, a                                       ; $638e: $7f
    ld h, [hl]                                    ; $638f: $66
    ccf                                           ; $6390: $3f
    ld b, l                                       ; $6391: $45
    xor a                                         ; $6392: $af
    db $d3                                        ; $6393: $d3
    dec de                                        ; $6394: $1b
    inc b                                         ; $6395: $04
    ld [hl], l                                    ; $6396: $75
    ret nc                                        ; $6397: $d0

    and $df                                       ; $6398: $e6 $df
    add hl, hl                                    ; $639a: $29
    ld [hl], e                                    ; $639b: $73
    ld h, h                                       ; $639c: $64
    or $b3                                        ; $639d: $f6 $b3
    push af                                       ; $639f: $f5
    ld a, h                                       ; $63a0: $7c
    ld b, a                                       ; $63a1: $47
    xor c                                         ; $63a2: $a9
    ld sp, $9eb8                                  ; $63a3: $31 $b8 $9e
    add hl, sp                                    ; $63a6: $39
    jp c, Jump_06e_4fd4                           ; $63a7: $da $d4 $4f

    xor c                                         ; $63aa: $a9
    ld hl, $f177                                  ; $63ab: $21 $77 $f1
    cp h                                          ; $63ae: $bc
    pop de                                        ; $63af: $d1
    dec hl                                        ; $63b0: $2b
    db $e3                                        ; $63b1: $e3
    and [hl]                                      ; $63b2: $a6
    call c, Call_06e_5159                         ; $63b3: $dc $59 $51
    jp z, Jump_06e_4d72                           ; $63b6: $ca $72 $4d

jr_06e_63b9:
    add $1b                                       ; $63b9: $c6 $1b
    cp l                                          ; $63bb: $bd
    add $e2                                       ; $63bc: $c6 $e2
    ei                                            ; $63be: $fb
    db $e4                                        ; $63bf: $e4
    ld e, c                                       ; $63c0: $59
    ld b, a                                       ; $63c1: $47
    adc l                                         ; $63c2: $8d
    add $4b                                       ; $63c3: $c6 $4b
    rlca                                          ; $63c5: $07
    sbc a                                         ; $63c6: $9f
    rst $18                                       ; $63c7: $df
    jr c, jr_06e_63b9                             ; $63c8: $38 $ef

    rst $00                                       ; $63ca: $c7
    cp l                                          ; $63cb: $bd
    halt                                          ; $63cc: $76
    cp $d1                                        ; $63cd: $fe $d1
    ld a, e                                       ; $63cf: $7b
    rra                                           ; $63d0: $1f
    ld a, l                                       ; $63d1: $7d
    cp h                                          ; $63d2: $bc
    dec e                                         ; $63d3: $1d
    scf                                           ; $63d4: $37
    sub [hl]                                      ; $63d5: $96
    db $eb                                        ; $63d6: $eb
    or [hl]                                       ; $63d7: $b6
    ld l, l                                       ; $63d8: $6d
    cp l                                          ; $63d9: $bd
    ld a, $31                                     ; $63da: $3e $31
    jp nc, $fd04                                  ; $63dc: $d2 $04 $fd

    db $d3                                        ; $63df: $d3
    ld d, l                                       ; $63e0: $55
    ld b, $6f                                     ; $63e1: $06 $6f
    db $fd                                        ; $63e3: $fd
    ld a, b                                       ; $63e4: $78
    rla                                           ; $63e5: $17
    or e                                          ; $63e6: $b3
    ld a, c                                       ; $63e7: $79
    ld c, d                                       ; $63e8: $4a
    dec c                                         ; $63e9: $0d
    cp c                                          ; $63ea: $b9
    adc e                                         ; $63eb: $8b
    and a                                         ; $63ec: $a7
    xor h                                         ; $63ed: $ac
    ld h, e                                       ; $63ee: $63
    db $fd                                        ; $63ef: $fd
    ld a, [hl-]                                   ; $63f0: $3a
    and c                                         ; $63f1: $a1
    db $d3                                        ; $63f2: $d3
    ld b, b                                       ; $63f3: $40
    ld h, d                                       ; $63f4: $62
    rst $38                                       ; $63f5: $ff
    ld h, a                                       ; $63f6: $67
    db $db                                        ; $63f7: $db
    ld bc, $d7af                                  ; $63f8: $01 $af $d7
    adc b                                         ; $63fb: $88
    cp l                                          ; $63fc: $bd
    db $db                                        ; $63fd: $db
    or [hl]                                       ; $63fe: $b6
    dec [hl]                                      ; $63ff: $35
    ld c, a                                       ; $6400: $4f
    dec e                                         ; $6401: $1d
    ld d, e                                       ; $6402: $53
    add l                                         ; $6403: $85
    or e                                          ; $6404: $b3
    db $eb                                        ; $6405: $eb
    ld [hl], h                                    ; $6406: $74
    db $db                                        ; $6407: $db
    or [hl]                                       ; $6408: $b6
    ld [hl-], a                                   ; $6409: $32
    dec d                                         ; $640a: $15
    adc l                                         ; $640b: $8d
    call z, $e9e2                                 ; $640c: $cc $e2 $e9
    or [hl]                                       ; $640f: $b6
    ld l, l                                       ; $6410: $6d
    rlca                                          ; $6411: $07
    rra                                           ; $6412: $1f
    scf                                           ; $6413: $37
    sub b                                         ; $6414: $90
    adc $de                                       ; $6415: $ce $de
    jr c, jr_06e_6419                             ; $6417: $38 $00

jr_06e_6419:
    rst $20                                       ; $6419: $e7
    xor c                                         ; $641a: $a9
    call nc, $a938                                ; $641b: $d4 $38 $a9
    adc [hl]                                      ; $641e: $8e
    db $fd                                        ; $641f: $fd
    inc sp                                        ; $6420: $33
    ei                                            ; $6421: $fb
    ld de, $84f4                                  ; $6422: $11 $f4 $84
    inc l                                         ; $6425: $2c
    ld b, [hl]                                    ; $6426: $46
    or $53                                        ; $6427: $f6 $53
    inc [hl]                                      ; $6429: $34
    ld [c], a                                     ; $642a: $e2
    ld [hl+], a                                   ; $642b: $22
    ld [$4fd9], a                                 ; $642c: $ea $d9 $4f
    ld [de], a                                    ; $642f: $12
    cp h                                          ; $6430: $bc
    dec l                                         ; $6431: $2d
    pop hl                                        ; $6432: $e1
    db $ec                                        ; $6433: $ec
    db $db                                        ; $6434: $db
    ld bc, $1fe7                                  ; $6435: $01 $e7 $1f
    sbc [hl]                                      ; $6438: $9e
    rst $30                                       ; $6439: $f7
    db $fc                                        ; $643a: $fc
    add $67                                       ; $643b: $c6 $67
    rrca                                          ; $643d: $0f
    or $da                                        ; $643e: $f6 $da
    ld sp, hl                                     ; $6440: $f9
    ld b, a                                       ; $6441: $47
    sbc a                                         ; $6442: $9f
    cp l                                          ; $6443: $bd
    rst $30                                       ; $6444: $f7
    pop de                                        ; $6445: $d1
    db $db                                        ; $6446: $db
    rra                                           ; $6447: $1f
    ld l, a                                       ; $6448: $6f
    cp l                                          ; $6449: $bd
    call c, $e7eb                                 ; $644a: $dc $eb $e7
    ld l, a                                       ; $644d: $6f
    ld a, a                                       ; $644e: $7f
    ld a, d                                       ; $644f: $7a
    cp c                                          ; $6450: $b9
    rst $20                                       ; $6451: $e7
    scf                                           ; $6452: $37
    ld a, $7b                                     ; $6453: $3e $7b
    or b                                          ; $6455: $b0
    rst $20                                       ; $6456: $e7
    rst $10                                       ; $6457: $d7
    ld a, d                                       ; $6458: $7a
    db $e3                                        ; $6459: $e3
    db $fc                                        ; $645a: $fc
    di                                            ; $645b: $f3
    cp [hl]                                       ; $645c: $be
    push af                                       ; $645d: $f5
    pop af                                        ; $645e: $f1
    add a                                         ; $645f: $87
    scf                                           ; $6460: $37
    ld a, $de                                     ; $6461: $3e $de
    ld c, $e7                                     ; $6463: $0e $e7
    scf                                           ; $6465: $37
    ld a, $7b                                     ; $6466: $3e $7b
    or b                                          ; $6468: $b0
    scf                                           ; $6469: $37
    rst $08                                       ; $646a: $cf
    ccf                                           ; $646b: $3f
    ld a, d                                       ; $646c: $7a
    ei                                            ; $646d: $fb
    db $e3                                        ; $646e: $e3
    ld a, [hl]                                    ; $646f: $7e
    db $f4                                        ; $6470: $f4
    ld [hl], c                                    ; $6471: $71
    ccf                                           ; $6472: $3f
    ld sp, hl                                     ; $6473: $f9
    db $fc                                        ; $6474: $fc
    cp h                                          ; $6475: $bc
    rst $10                                       ; $6476: $d7
    adc $fb                                       ; $6477: $ce $fb
    reti                                          ; $6479: $d9


    and a                                         ; $647a: $a7
    sub a                                         ; $647b: $97
    ccf                                           ; $647c: $3f
    cp d                                          ; $647d: $ba
    pop af                                        ; $647e: $f1
    adc $c7                                       ; $647f: $ce $c7
    sbc a                                         ; $6481: $9f
    ld e, [hl]                                    ; $6482: $5e
    dec sp                                        ; $6483: $3b
    ld a, a                                       ; $6484: $7f
    rst $28                                       ; $6485: $ef
    adc l                                         ; $6486: $8d
    ld e, [hl]                                    ; $6487: $5e
    xor $b5                                       ; $6488: $ee $b5
    di                                            ; $648a: $f3
    adc a                                         ; $648b: $8f
    ld a, $be                                     ; $648c: $3e $be
    pop de                                        ; $648e: $d1
    ld c, a                                       ; $648f: $4f
    ld a, $3f                                     ; $6490: $3e $3f
    rst $28                                       ; $6492: $ef
    push hl                                       ; $6493: $e5
    rrca                                          ; $6494: $0f
    rst $18                                       ; $6495: $df
    db $fd                                        ; $6496: $fd
    db $fc                                        ; $6497: $fc
    push af                                       ; $6498: $f5
    ld l, e                                       ; $6499: $6b
    ld a, l                                       ; $649a: $7d
    ei                                            ; $649b: $fb
    cp l                                          ; $649c: $bd
    sbc e                                         ; $649d: $9b
    rst $28                                       ; $649e: $ef
    cp l                                          ; $649f: $bd
    ld a, l                                       ; $64a0: $7d
    cp c                                          ; $64a1: $b9
    rra                                           ; $64a2: $1f
    rst $30                                       ; $64a3: $f7
    jp z, $9fc7                                   ; $64a4: $ca $c7 $9f

    ld e, [hl]                                    ; $64a7: $5e
    rst $38                                       ; $64a8: $ff
    cp b                                          ; $64a9: $b8
    ld d, a                                       ; $64aa: $57
    ld a, $be                                     ; $64ab: $3e $be
    or $de                                        ; $64ad: $f6 $de
    cp e                                          ; $64af: $bb
    rra                                           ; $64b0: $1f
    dec bc                                        ; $64b1: $0b
    ld a, d                                       ; $64b2: $7a
    cp $79                                        ; $64b3: $fe $79
    ccf                                           ; $64b5: $3f
    ld a, d                                       ; $64b6: $7a
    ld hl, sp-$1d                                 ; $64b7: $f8 $e3
    ld a, [hl]                                    ; $64b9: $7e
    halt                                          ; $64ba: $76
    cp $d1                                        ; $64bb: $fe $d1
    push de                                       ; $64bd: $d5
    adc a                                         ; $64be: $8f
    ld a, e                                       ; $64bf: $7b
    db $e3                                        ; $64c0: $e3
    di                                            ; $64c1: $f3
    or a                                          ; $64c2: $b7
    ld l, [hl]                                    ; $64c3: $6e
    ld a, h                                       ; $64c4: $7c
    or $da                                        ; $64c5: $f6 $da
    ld b, a                                       ; $64c7: $47

Jump_06e_64c8:
    ld d, a                                       ; $64c8: $57
    sbc $bb                                       ; $64c9: $de $bb
    cp h                                          ; $64cb: $bc
    push af                                       ; $64cc: $f5
    jp c, Jump_000_1be5                           ; $64cd: $da $e5 $1b

    db $fd                                        ; $64d0: $fd
    db $fc                                        ; $64d1: $fc
    jp c, $dee5                                   ; $64d2: $da $e5 $de

    inc a                                         ; $64d5: $3c
    rst $38                                       ; $64d6: $ff
    cp d                                          ; $64d7: $ba
    sbc a                                         ; $64d8: $9f
    ld a, h                                       ; $64d9: $7c
    ld a, [hl]                                    ; $64da: $7e
    sbc $f3                                       ; $64db: $de $f3
    rst $08                                       ; $64dd: $cf
    ei                                            ; $64de: $fb
    reti                                          ; $64df: $d9


    ld sp, hl                                     ; $64e0: $f9
    ld b, a                                       ; $64e1: $47
    ld d, a                                       ; $64e2: $57
    cpl                                           ; $64e3: $2f
    rst $30                                       ; $64e4: $f7
    db $e3                                        ; $64e5: $e3
    sbc [hl]                                      ; $64e6: $9e
    ld a, a                                       ; $64e7: $7f
    ld hl, sp-$22                                 ; $64e8: $f8 $de
    sub a                                         ; $64ea: $97
    rst $28                                       ; $64eb: $ef
    ld a, l                                       ; $64ec: $7d
    jp c, $2fb7                                   ; $64ed: $da $b7 $2f

    rst $30                                       ; $64f0: $f7
    and $7b                                       ; $64f1: $e6 $7b
    ld l, a                                       ; $64f3: $6f
    ld e, a                                       ; $64f4: $5f
    ld d, $f4                                     ; $64f5: $16 $f4
    ld a, [$6fc7]                                 ; $64f7: $fa $c7 $6f
    sbc a                                         ; $64fa: $9f
    ld a, a                                       ; $64fb: $7f
    ld a, d                                       ; $64fc: $7a
    cp $5e                                        ; $64fd: $fe $5e
    xor a                                         ; $64ff: $af
    ld a, h                                       ; $6500: $7c
    ld a, [$e5de]                                 ; $6501: $fa $de $e5
    ld c, a                                       ; $6504: $4f
    ei                                            ; $6505: $fb
    ld sp, hl                                     ; $6506: $f9
    or l                                          ; $6507: $b5
    ld e, [hl]                                    ; $6508: $5e
    ld sp, hl                                     ; $6509: $f9
    ld hl, sp-$2d                                 ; $650a: $f8 $d3
    db $eb                                        ; $650c: $eb
    rra                                           ; $650d: $1f
    rst $30                                       ; $650e: $f7
    add $cf                                       ; $650f: $c6 $cf
    cp l                                          ; $6511: $bd
    halt                                          ; $6512: $76
    cp $f9                                        ; $6513: $fe $f9
    sub $cb                                       ; $6515: $d6 $cb
    rst $28                                       ; $6517: $ef
    ld a, [hl]                                    ; $6518: $7e
    db $fc                                        ; $6519: $fc
    jp hl                                         ; $651a: $e9


    push hl                                       ; $651b: $e5
    ld e, [hl]                                    ; $651c: $5e
    dec sp                                        ; $651d: $3b
    rst $28                                       ; $651e: $ef
    db $db                                        ; $651f: $db
    rst $18                                       ; $6520: $df
    db $f4                                        ; $6521: $f4
    ld [hl], d                                    ; $6522: $72
    xor a                                         ; $6523: $af
    sbc a                                         ; $6524: $9f
    cp a                                          ; $6525: $bf
    db $fd                                        ; $6526: $fd
    jp hl                                         ; $6527: $e9


    push hl                                       ; $6528: $e5
    ld a, [hl]                                    ; $6529: $7e
    db $fc                                        ; $652a: $fc
    ld a, c                                       ; $652b: $79
    xor a                                         ; $652c: $af
    ld a, l                                       ; $652d: $7d
    db $fc                                        ; $652e: $fc
    jp hl                                         ; $652f: $e9


    and a                                         ; $6530: $a7
    sub a                                         ; $6531: $97
    ld a, e                                       ; $6532: $7b
    push hl                                       ; $6533: $e5
    db $e3                                        ; $6534: $e3
    ld l, e                                       ; $6535: $6b
    rra                                           ; $6536: $1f
    rst $30                                       ; $6537: $f7
    add $f9                                       ; $6538: $c6 $f9
    rst $20                                       ; $653a: $e7
    scf                                           ; $653b: $37
    ld a, d                                       ; $653c: $7a
    db $fd                                        ; $653d: $fd
    ld a, [c]                                     ; $653e: $f2
    ld a, e                                       ; $653f: $7b
    scf                                           ; $6540: $37
    cp d                                          ; $6541: $ba
    ld l, l                                       ; $6542: $6d
    ld e, e                                       ; $6543: $5b
    ld l, a                                       ; $6544: $6f
    ld a, h                                       ; $6545: $7c
    ld a, [hl]                                    ; $6546: $7e
    db $fd                                        ; $6547: $fd
    jp $aef7                                      ; $6548: $c3 $f7 $ae


    ld e, h                                       ; $654b: $5c
    cp $e8                                        ; $654c: $fe $e8
    db $ed                                        ; $654e: $ed
    adc a                                         ; $654f: $8f

Jump_06e_6550:
    ld a, e                                       ; $6550: $7b
    db $fd                                        ; $6551: $fd
    cp l                                          ; $6552: $bd
    di                                            ; $6553: $f3
    or a                                          ; $6554: $b7
    cpl                                           ; $6555: $2f
    cp a                                          ; $6556: $bf
    ld a, l                                       ; $6557: $7d
    cp [hl]                                       ; $6558: $be
    dec e                                         ; $6559: $1d
    rst $10                                       ; $655a: $d7
    sbc b                                         ; $655b: $98
    db $e3                                        ; $655c: $e3
    ld [hl-], a                                   ; $655d: $32
    ld e, h                                       ; $655e: $5c
    ld a, [hl-]                                   ; $655f: $3a
    nop                                           ; $6560: $00
    ld l, a                                       ; $6561: $6f
    dec c                                         ; $6562: $0d
    ld a, [de]                                    ; $6563: $1a
    ld h, c                                       ; $6564: $61
    sbc [hl]                                      ; $6565: $9e
    add d                                         ; $6566: $82
    ld e, [hl]                                    ; $6567: $5e
    add l                                         ; $6568: $85
    reti                                          ; $6569: $d9


    ld c, a                                       ; $656a: $4f
    db $db                                        ; $656b: $db
    ld bc, $7b97                                  ; $656c: $01 $97 $7b
    sbc l                                         ; $656f: $9d
    sbc $70                                       ; $6570: $de $70
    xor c                                         ; $6572: $a9
    sbc a                                         ; $6573: $9f
    and h                                         ; $6574: $a4
    ld h, l                                       ; $6575: $65
    add $bd                                       ; $6576: $c6 $bd
    ld l, b                                       ; $6578: $68
    ret z                                         ; $6579: $c8

    db $d3                                        ; $657a: $d3
    and h                                         ; $657b: $a4
    ld c, e                                       ; $657c: $4b
    rlca                                          ; $657d: $07
    rra                                           ; $657e: $1f
    db $fd                                        ; $657f: $fd
    adc [hl]                                      ; $6580: $8e
    and b                                         ; $6581: $a0
    ld d, d                                       ; $6582: $52
    call z, $e253                                 ; $6583: $cc $53 $e2
    ld a, [hl+]                                   ; $6586: $2a
    ld a, [de]                                    ; $6587: $1a
    jp hl                                         ; $6588: $e9


    jp nz, Jump_06e_67a9                          ; $6589: $c2 $a9 $67

    sub a                                         ; $658c: $97
    dec bc                                        ; $658d: $0b
    jp hl                                         ; $658e: $e9


    sub a                                         ; $658f: $97
    dec [hl]                                      ; $6590: $35
    sub b                                         ; $6591: $90
    ret c                                         ; $6592: $d8

    and l                                         ; $6593: $a5
    ld [hl], c                                    ; $6594: $71
    ld a, [bc]                                    ; $6595: $0a
    add hl, sp                                    ; $6596: $39
    add hl, sp                                    ; $6597: $39
    ld d, d                                       ; $6598: $52
    ld d, d                                       ; $6599: $52
    sub l                                         ; $659a: $95
    add d                                         ; $659b: $82
    jp nc, $c709                                  ; $659c: $d2 $09 $c7

    ret nc                                        ; $659f: $d0

    rst $38                                       ; $65a0: $ff
    ret z                                         ; $65a1: $c8

    or e                                          ; $65a2: $b3
    ld d, d                                       ; $65a3: $52
    db $e3                                        ; $65a4: $e3
    ld a, [$9553]                                 ; $65a5: $fa $53 $95
    ld d, l                                       ; $65a8: $55
    sub $53                                       ; $65a9: $d6 $53
    call nz, $99ec                                ; $65ab: $c4 $ec $99
    db $fd                                        ; $65ae: $fd
    call nc, Call_000_15a5                        ; $65af: $d4 $a5 $15
    and a                                         ; $65b2: $a7
    ld b, d                                       ; $65b3: $42
    cp d                                          ; $65b4: $ba
    ld [$5edc], a                                 ; $65b5: $ea $dc $5e
    ld e, c                                       ; $65b8: $59
    inc a                                         ; $65b9: $3c
    add d                                         ; $65ba: $82
    ld a, d                                       ; $65bb: $7a
    cp $a7                                        ; $65bc: $fe $a7
    ld a, [hl]                                    ; $65be: $7e
    db $dd                                        ; $65bf: $dd
    and [hl]                                      ; $65c0: $a6
    ld l, l                                       ; $65c1: $6d
    rlca                                          ; $65c2: $07
    rst $20                                       ; $65c3: $e7
    xor c                                         ; $65c4: $a9
    sub c                                         ; $65c5: $91
    ld e, c                                       ; $65c6: $59
    inc a                                         ; $65c7: $3c
    push bc                                       ; $65c8: $c5
    ld a, [hl]                                    ; $65c9: $7e
    ld c, d                                       ; $65ca: $4a
    ld c, $da                                     ; $65cb: $0e $da
    sub b                                         ; $65cd: $90
    halt                                          ; $65ce: $76
    ld c, d                                       ; $65cf: $4a
    add hl, sp                                    ; $65d0: $39
    ld b, d                                       ; $65d1: $42
    dec b                                         ; $65d2: $05
    dec c                                         ; $65d3: $0d
    ld l, l                                       ; $65d4: $6d
    ld b, h                                       ; $65d5: $44
    ld d, h                                       ; $65d6: $54
    dec e                                         ; $65d7: $1d
    db $db                                        ; $65d8: $db
    ld a, d                                       ; $65d9: $7a
    ld [hl], e                                    ; $65da: $73
    halt                                          ; $65db: $76
    ld c, a                                       ; $65dc: $4f
    scf                                           ; $65dd: $37
    ld d, $4b                                     ; $65de: $16 $4b
    adc l                                         ; $65e0: $8d
    pop bc                                        ; $65e1: $c1
    ld [hl], l                                    ; $65e2: $75
    ld h, e                                       ; $65e3: $63
    ld [hl], c                                    ; $65e4: $71
    sbc $38                                       ; $65e5: $de $38
    nop                                           ; $65e7: $00
    rra                                           ; $65e8: $1f
    db $fd                                        ; $65e9: $fd
    adc $d6                                       ; $65ea: $ce $d6
    dec de                                        ; $65ec: $1b
    ld [hl], h                                    ; $65ed: $74
    and l                                         ; $65ee: $a5
    ld b, [hl]                                    ; $65ef: $46
    ld e, b                                       ; $65f0: $58
    ld b, e                                       ; $65f1: $43
    sbc e                                         ; $65f2: $9b
    ret nc                                        ; $65f3: $d0

    ld d, $1c                                     ; $65f4: $16 $1c
    ld [hl], e                                    ; $65f6: $73
    ld h, h                                       ; $65f7: $64
    rst $38                                       ; $65f8: $ff
    db $eb                                        ; $65f9: $eb
    ccf                                           ; $65fa: $3f
    add d                                         ; $65fb: $82
    ld [hl], d                                    ; $65fc: $72
    ld h, a                                       ; $65fd: $67
    di                                            ; $65fe: $f3
    rst $28                                       ; $65ff: $ef
    inc [hl]                                      ; $6600: $34
    inc e                                         ; $6601: $1c
    rst $08                                       ; $6602: $cf
    ld a, [hl+]                                   ; $6603: $2a
    xor l                                         ; $6604: $ad
    ld l, [hl]                                    ; $6605: $6e
    inc l                                         ; $6606: $2c
    adc $d6                                       ; $6607: $ce $d6
    di                                            ; $6609: $f3
    sbc l                                         ; $660a: $9d
    sub l                                         ; $660b: $95
    sub e                                         ; $660c: $93
    db $e3                                        ; $660d: $e3
    jp z, Jump_000_0d09                           ; $660e: $ca $09 $0d

    rst $00                                       ; $6611: $c7
    adc d                                         ; $6612: $8a
    cp e                                          ; $6613: $bb
    dec b                                         ; $6614: $05
    and l                                         ; $6615: $a5
    dec hl                                        ; $6616: $2b

jr_06e_6617:
    or $53                                        ; $6617: $f6 $53
    ld [hl], d                                    ; $6619: $72
    db $dd                                        ; $661a: $dd
    db $d3                                        ; $661b: $d3
    add hl, bc                                    ; $661c: $09
    sub $6d                                       ; $661d: $d6 $6d
    db $db                                        ; $661f: $db
    ld c, $e7                                     ; $6620: $0e $e7
    ld b, l                                       ; $6622: $45
    dec h                                         ; $6623: $25
    ld b, d                                       ; $6624: $42
    call nc, Call_000_2ba3                        ; $6625: $d4 $a3 $2b
    rst $38                                       ; $6628: $ff
    sub a                                         ; $6629: $97
    ld l, $e1                                     ; $662a: $2e $e1
    jp c, $8797                                   ; $662c: $da $97 $87

    ld h, a                                       ; $662f: $67
    sbc a                                         ; $6630: $9f
    add sp, $54                                   ; $6631: $e8 $54
    sbc c                                         ; $6633: $99
    push bc                                       ; $6634: $c5
    ld h, e                                       ; $6635: $63
    ld d, l                                       ; $6636: $55
    ld [$40d9], sp                                ; $6637: $08 $d9 $40
    and d                                         ; $663a: $a2
    dec hl                                        ; $663b: $2b
    ld [$fd90], a                                 ; $663c: $ea $90 $fd
    and h                                         ; $663f: $a4
    add [hl]                                      ; $6640: $86
    jr nc, jr_06e_6617                            ; $6641: $30 $d4

    dec l                                         ; $6643: $2d
    rst $30                                       ; $6644: $f7
    add $01                                       ; $6645: $c6 $01
    scf                                           ; $6647: $37
    sbc b                                         ; $6648: $98
    ld a, [de]                                    ; $6649: $1a
    ld h, d                                       ; $664a: $62
    dec d                                         ; $664b: $15
    push af                                       ; $664c: $f5
    ld e, h                                       ; $664d: $5c
    or a                                          ; $664e: $b7
    ld h, $55                                     ; $664f: $26 $55
    adc [hl]                                      ; $6651: $8e
    ld e, e                                       ; $6652: $5b
    and a                                         ; $6653: $a7
    reti                                          ; $6654: $d9


    ld a, d                                       ; $6655: $7a
    ld e, c                                       ; $6656: $59
    adc d                                         ; $6657: $8a
    cp c                                          ; $6658: $b9
    ld a, [de]                                    ; $6659: $1a
    ld c, b                                       ; $665a: $48
    db $ec                                        ; $665b: $ec
    ld a, a                                       ; $665c: $7f
    db $e4                                        ; $665d: $e4
    ld e, c                                       ; $665e: $59
    inc hl                                        ; $665f: $23
    or $3f                                        ; $6660: $f6 $3f
    ld l, a                                       ; $6662: $6f
    rst $30                                       ; $6663: $f7
    inc [hl]                                      ; $6664: $34
    ld a, [de]                                    ; $6665: $1a
    and c                                         ; $6666: $a1
    jp z, Jump_000_367a                           ; $6667: $ca $7a $36

    sbc [hl]                                      ; $666a: $9e
    dec a                                         ; $666b: $3d
    or c                                          ; $666c: $b1
    ld h, e                                       ; $666d: $63
    dec sp                                        ; $666e: $3b
    nop                                           ; $666f: $00
    rst $10                                       ; $6670: $d7
    or b                                          ; $6671: $b0
    or h                                          ; $6672: $b4
    ret                                           ; $6673: $c9


    and c                                         ; $6674: $a1
    ld [hl], d                                    ; $6675: $72
    sub [hl]                                      ; $6676: $96
    and d                                         ; $6677: $a2
    and c                                         ; $6678: $a1
    adc l                                         ; $6679: $8d
    adc b                                         ; $667a: $88
    xor d                                         ; $667b: $aa
    ld h, e                                       ; $667c: $63
    db $dd                                        ; $667d: $dd
    or [hl]                                       ; $667e: $b6
    db $ed                                        ; $667f: $ed
    nop                                           ; $6680: $00
    ld l, a                                       ; $6681: $6f
    xor a                                         ; $6682: $af
    inc de                                        ; $6683: $13
    or [hl]                                       ; $6684: $b6
    inc bc                                        ; $6685: $03
    rst $10                                       ; $6686: $d7
    rst $00                                       ; $6687: $c7
    ld [bc], a                                    ; $6688: $02
    adc c                                         ; $6689: $89
    sbc l                                         ; $668a: $9d
    add [hl]                                      ; $668b: $86
    ld [hl], $22                                  ; $668c: $36 $22
    xor d                                         ; $668e: $aa
    adc [hl]                                      ; $668f: $8e
    push af                                       ; $6690: $f5
    ld b, [hl]                                    ; $6691: $46
    ld b, [hl]                                    ; $6692: $46
    ret z                                         ; $6693: $c8

    add [hl]                                      ; $6694: $86
    jr nc, jr_06e_66e1                            ; $6695: $30 $4a

    sub $b1                                       ; $6697: $d6 $b1
    db $e3                                        ; $6699: $e3
    rla                                           ; $669a: $17
    db $ec                                        ; $669b: $ec
    adc l                                         ; $669c: $8d
    inc bc                                        ; $669d: $03
    scf                                           ; $669e: $37
    sbc b                                         ; $669f: $98
    ld a, [de]                                    ; $66a0: $1a
    ld h, d                                       ; $66a1: $62
    ld d, l                                       ; $66a2: $55
    or c                                          ; $66a3: $b1
    rst $38                                       ; $66a4: $ff
    daa                                           ; $66a5: $27
    ld d, l                                       ; $66a6: $55
    inc de                                        ; $66a7: $13
    ld a, [$1e5f]                                 ; $66a8: $fa $5f $1e
    add d                                         ; $66ab: $82
    or d                                          ; $66ac: $b2
    call c, $fcd9                                 ; $66ad: $dc $d9 $fc
    dec sp                                        ; $66b0: $3b
    sub l                                         ; $66b1: $95
    sub e                                         ; $66b2: $93
    sub l                                         ; $66b3: $95
    and a                                         ; $66b4: $a7
    call nz, $0a6a                                ; $66b5: $c4 $6a $0a
    rst $00                                       ; $66b8: $c7
    ld [hl+], a                                   ; $66b9: $22
    xor h                                         ; $66ba: $ac
    ld d, e                                       ; $66bb: $53
    ld de, $d4e2                                  ; $66bc: $11 $e2 $d4
    or e                                          ; $66bf: $b3
    call nc, Call_000_2b08                        ; $66c0: $d4 $08 $2b
    ld e, l                                       ; $66c3: $5d
    db $fd                                        ; $66c4: $fd
    db $dd                                        ; $66c5: $dd
    rst $38                                       ; $66c6: $ff
    push hl                                       ; $66c7: $e5
    ld d, c                                       ; $66c8: $51
    add hl, sp                                    ; $66c9: $39
    xor [hl]                                      ; $66ca: $ae
    call c, $f5b9                                 ; $66cb: $dc $b9 $f5
    or d                                          ; $66ce: $b2
    inc [hl]                                      ; $66cf: $34
    ld a, [$a715]                                 ; $66d0: $fa $15 $a7
    add c                                         ; $66d3: $81
    call nz, Call_06e_685e                        ; $66d4: $c4 $5e $68
    jr c, @-$28                                   ; $66d7: $38 $d6

    and l                                         ; $66d9: $a5
    ld a, [hl-]                                   ; $66da: $3a
    dec c                                         ; $66db: $0d
    inc h                                         ; $66dc: $24
    ld d, [hl]                                    ; $66dd: $56
    ld e, c                                       ; $66de: $59
    xor d                                         ; $66df: $aa
    ld l, b                                       ; $66e0: $68

jr_06e_66e1:
    db $ec                                        ; $66e1: $ec
    ld [c], a                                     ; $66e2: $e2
    and h                                         ; $66e3: $a4
    add [hl]                                      ; $66e4: $86
    jr nc, @+$36                                  ; $66e5: $30 $34

    or h                                          ; $66e7: $b4
    adc c                                         ; $66e8: $89
    inc a                                         ; $66e9: $3c
    sbc l                                         ; $66ea: $9d
    dec a                                         ; $66eb: $3d
    or c                                          ; $66ec: $b1
    ld c, a                                       ; $66ed: $4f
    ld a, l                                       ; $66ee: $7d
    ld [hl-], a                                   ; $66ef: $32
    db $e4                                        ; $66f0: $e4
    ret z                                         ; $66f1: $c8

    add $f1                                       ; $66f2: $c6 $f1
    db $d3                                        ; $66f4: $d3
    add hl, hl                                    ; $66f5: $29
    ld a, [c]                                     ; $66f6: $f2
    ld l, h                                       ; $66f7: $6c
    cp l                                          ; $66f8: $bd
    ld c, $43                                     ; $66f9: $0e $43
    cp c                                          ; $66fb: $b9
    ld d, e                                       ; $66fc: $53
    ret nc                                        ; $66fd: $d0

    and l                                         ; $66fe: $a5
    ld a, [hl-]                                   ; $66ff: $3a
    sbc l                                         ; $6700: $9d
    ld a, d                                       ; $6701: $7a
    xor [hl]                                      ; $6702: $ae
    ld e, e                                       ; $6703: $5b
    or b                                          ; $6704: $b0
    add l                                         ; $6705: $85
    ld b, $d2                                     ; $6706: $06 $d2
    adc d                                         ; $6708: $8a
    xor h                                         ; $6709: $ac
    inc e                                         ; $670a: $1c
    ld d, a                                       ; $670b: $57
    ld h, l                                       ; $670c: $65
    ld l, d                                       ; $670d: $6a
    adc b                                         ; $670e: $88
    or l                                          ; $670f: $b5
    dec e                                         ; $6710: $1d
    ld d, a                                       ; $6711: $57
    add $4d                                       ; $6712: $c6 $4d
    ld b, l                                       ; $6714: $45
    or e                                          ; $6715: $b3
    ld a, [de]                                    ; $6716: $1a
    ld c, b                                       ; $6717: $48
    ld l, h                                       ; $6718: $6c
    ld e, h                                       ; $6719: $5c
    add $55                                       ; $671a: $c6 $55
    db $f4                                        ; $671c: $f4
    ld a, [hl-]                                   ; $671d: $3a
    cp l                                          ; $671e: $bd
    and c                                         ; $671f: $a1
    ld a, [hl]                                    ; $6720: $7e
    ld c, d                                       ; $6721: $4a
    dec c                                         ; $6722: $0d

Call_06e_6723:
    cp c                                          ; $6723: $b9
    adc e                                         ; $6724: $8b
    rst $20                                       ; $6725: $e7
    adc l                                         ; $6726: $8d
    inc bc                                        ; $6727: $03
    rst $20                                       ; $6728: $e7
    xor c                                         ; $6729: $a9
    call z, $ae22                                 ; $672a: $cc $22 $ae
    cp b                                          ; $672d: $b8
    inc h                                         ; $672e: $24
    ld d, a                                       ; $672f: $57
    and a                                         ; $6730: $a7
    call nc, $bb90                                ; $6731: $d4 $90 $bb
    ld a, b                                       ; $6734: $78
    ld [$d159], a                                 ; $6735: $ea $59 $d1
    sbc b                                         ; $6738: $98
    ld b, e                                       ; $6739: $43
    inc bc                                        ; $673a: $03
    adc c                                         ; $673b: $89
    ld b, l                                       ; $673c: $45
    ret z                                         ; $673d: $c8

    inc c                                         ; $673e: $0c
    ld l, l                                       ; $673f: $6d
    ld [hl], d                                    ; $6740: $72
    ld l, b                                       ; $6741: $68
    ld c, b                                       ; $6742: $48
    push de                                       ; $6743: $d5
    ld b, c                                       ; $6744: $41
    inc bc                                        ; $6745: $03
    adc c                                         ; $6746: $89
    dec c                                         ; $6747: $0d
    and h                                         ; $6748: $a4
    and l                                         ; $6749: $a5
    ld d, h                                       ; $674a: $54
    ld h, l                                       ; $674b: $65
    sbc c                                         ; $674c: $99
    push hl                                       ; $674d: $e5
    db $e4                                        ; $674e: $e4
    ld l, b                                       ; $674f: $68
    or b                                          ; $6750: $b0
    and d                                         ; $6751: $a2
    rst $10                                       ; $6752: $d7
    jp hl                                         ; $6753: $e9


    dec c                                         ; $6754: $0d
    ld a, l                                       ; $6755: $7d
    and d                                         ; $6756: $a2
    call z, Call_06e_7272                         ; $6757: $cc $72 $72
    or h                                          ; $675a: $b4
    ldh [$27], a                                  ; $675b: $e0 $27
    halt                                          ; $675d: $76
    ld [$a0ea], sp                                ; $675e: $08 $ea $a0
    call $d3bf                                    ; $6761: $cd $bf $d3
    and h                                         ; $6764: $a4
    pop bc                                        ; $6765: $c1
    ld c, a                                       ; $6766: $4f
    db $ec                                        ; $6767: $ec
    add sp, $13                                   ; $6768: $e8 $13
    dec c                                         ; $676a: $0d
    rst $00                                       ; $676b: $c7
    db $d3                                        ; $676c: $d3
    ld d, $3a                                     ; $676d: $16 $3a
    jp nz, $f678                                  ; $676f: $c2 $78 $f6

Call_06e_6772:
    call nz, $ad8e                                ; $6772: $c4 $8e $ad
    sub a                                         ; $6775: $97
    ld c, a                                       ; $6776: $4f
    ld h, e                                       ; $6777: $63
    xor b                                         ; $6778: $a8
    and a                                         ; $6779: $a7
    ld c, d                                       ; $677a: $4a
    ld h, h                                       ; $677b: $64
    and l                                         ; $677c: $a5
    and b                                         ; $677d: $a0
    ld d, a                                       ; $677e: $57
    ld h, c                                       ; $677f: $61
    or $d3                                        ; $6780: $f6 $d3
    sub $cb                                       ; $6782: $d6 $cb
    dec d                                         ; $6784: $15
    ld d, c                                       ; $6785: $51
    inc hl                                        ; $6786: $23
    ld [$d159], a                                 ; $6787: $ea $59 $d1
    ld [hl], d                                    ; $678a: $72
    push af                                       ; $678b: $f5
    inc l                                         ; $678c: $2c
    ld a, [c]                                     ; $678d: $f2
    db $f4                                        ; $678e: $f4
    adc a                                         ; $678f: $8f
    ld d, l                                       ; $6790: $55
    ret z                                         ; $6791: $c8

    ret                                           ; $6792: $c9


    sub c                                         ; $6793: $91
    sub d                                         ; $6794: $92
    ld d, [hl]                                    ; $6795: $56
    cp d                                          ; $6796: $ba
    ld a, [bc]                                    ; $6797: $0a
    adc l                                         ; $6798: $8d
    ld a, a                                       ; $6799: $7f
    ld l, [hl]                                    ; $679a: $6e
    rlca                                          ; $679b: $07
    sub a                                         ; $679c: $97
    ld [hl], e                                    ; $679d: $73
    and h                                         ; $679e: $a4
    sub $4f                                       ; $679f: $d6 $4f
    add l                                         ; $67a1: $85
    ret z                                         ; $67a2: $c8

    add c                                         ; $67a3: $81
    call nz, $cac8                                ; $67a4: $c4 $c8 $ca
    ld [hl], c                                    ; $67a7: $71
    cp h                                          ; $67a8: $bc

Jump_06e_67a9:
    ld [$1413], sp                                ; $67a9: $08 $13 $14
    adc l                                         ; $67ac: $8d
    cp b                                          ; $67ad: $b8
    adc b                                         ; $67ae: $88
    ld a, d                                       ; $67af: $7a
    ld d, h                                       ; $67b0: $54
    ld b, d                                       ; $67b1: $42
    ld d, c                                       ; $67b2: $51
    rst $08                                       ; $67b3: $cf
    ccf                                           ; $67b4: $3f
    xor e                                         ; $67b5: $ab
    or h                                          ; $67b6: $b4
    ld [hl-], a                                   ; $67b7: $32
    ld b, a                                       ; $67b8: $47
    db $e3                                        ; $67b9: $e3
    add hl, hl                                    ; $67ba: $29
    ld [hl], c                                    ; $67bb: $71
    db $eb                                        ; $67bc: $eb
    ld b, a                                       ; $67bd: $47
    ld d, e                                       ; $67be: $53
    and $88                                       ; $67bf: $e6 $88
    inc e                                         ; $67c1: $1c
    ld b, a                                       ; $67c2: $47
    ret nc                                        ; $67c3: $d0

    ld c, b                                       ; $67c4: $48
    scf                                           ; $67c5: $37
    ld e, d                                       ; $67c6: $5a
    rst $08                                       ; $67c7: $cf
    xor $fc                                       ; $67c8: $ee $fc
    jp Jump_06e_574a                              ; $67ca: $c3 $4a $57


    add hl, sp                                    ; $67cd: $39
    add hl, sp                                    ; $67ce: $39
    and d                                         ; $67cf: $a2
    and e                                         ; $67d0: $a3
    dec [hl]                                      ; $67d1: $35
    ld c, d                                       ; $67d2: $4a
    and $48                                       ; $67d3: $e6 $48
    dec l                                         ; $67d5: $2d
    db $e4                                        ; $67d6: $e4
    db $e4                                        ; $67d7: $e4
    ld c, b                                       ; $67d8: $48
    cp c                                          ; $67d9: $b9
    inc e                                         ; $67da: $1c
    ld [hl], e                                    ; $67db: $73
    inc e                                         ; $67dc: $1c
    dec l                                         ; $67dd: $2d
    set 2, h                                      ; $67de: $cb $d4
    ret z                                         ; $67e0: $c8

    inc l                                         ; $67e1: $2c
    sbc [hl]                                      ; $67e2: $9e
    ld h, d                                       ; $67e3: $62
    ccf                                           ; $67e4: $3f
    and l                                         ; $67e5: $a5
    xor h                                         ; $67e6: $ac
    dec c                                         ; $67e7: $0d
    daa                                           ; $67e8: $27
    rst $00                                       ; $67e9: $c7
    pop de                                        ; $67ea: $d1
    ld a, d                                       ; $67eb: $7a
    or $fe                                        ; $67ec: $f6 $fe
    dec a                                         ; $67ee: $3d
    ld l, $87                                     ; $67ef: $2e $87
    adc d                                         ; $67f1: $8a
    rst $00                                       ; $67f2: $c7
    ret nc                                        ; $67f3: $d0

    db $10                                        ; $67f4: $10
    add [hl]                                      ; $67f5: $86
    jp z, $22c9                                   ; $67f6: $ca $c9 $22

    jp c, $edb2                                   ; $67f9: $da $b2 $ed

    nop                                           ; $67fc: $00
    sub a                                         ; $67fd: $97
    ld [hl], e                                    ; $67fe: $73
    and h                                         ; $67ff: $a4
    sub $b3                                       ; $6800: $d6 $b3
    ld [hl], d                                    ; $6802: $72
    inc e                                         ; $6803: $1c
    cpl                                           ; $6804: $2f
    jp nz, Jump_06e_68dc                          ; $6805: $c2 $dc $68

    and a                                         ; $6808: $a7
    ld b, d                                       ; $6809: $42
    db $e4                                        ; $680a: $e4
    ld b, b                                       ; $680b: $40
    ld h, d                                       ; $680c: $62
    and h                                         ; $680d: $a4
    and b                                         ; $680e: $a0
    ld l, b                                       ; $680f: $68
    call nz, $d445                                ; $6810: $c4 $45 $d4
    and e                                         ; $6813: $a3
    ld [de], a                                    ; $6814: $12
    adc d                                         ; $6815: $8a
    ld a, d                                       ; $6816: $7a
    cp $59                                        ; $6817: $fe $59
    and l                                         ; $6819: $a5
    sub l                                         ; $681a: $95
    add hl, sp                                    ; $681b: $39
    ld a, [de]                                    ; $681c: $1a
    ld c, a                                       ; $681d: $4f
    adc c                                         ; $681e: $89
    ld e, e                                       ; $681f: $5b
    ccf                                           ; $6820: $3f
    sbc d                                         ; $6821: $9a
    cp d                                          ; $6822: $ba
    ld [hl], c                                    ; $6823: $71
    call z, $0471                                 ; $6824: $cc $71 $04
    ld b, l                                       ; $6827: $45
    ld l, a                                       ; $6828: $6f
    ld c, h                                       ; $6829: $4c
    ld d, [hl]                                    ; $682a: $56
    jp c, $28ca                                   ; $682b: $da $ca $28

    dec [hl]                                      ; $682e: $35
    ld b, $37                                     ; $682f: $06 $37
    and e                                         ; $6831: $a3
    ei                                            ; $6832: $fb
    ld a, [c]                                     ; $6833: $f2
    inc [hl]                                      ; $6834: $34
    db $e4                                        ; $6835: $e4
    adc e                                         ; $6836: $8b
    ret c                                         ; $6837: $d8

    ld a, d                                       ; $6838: $7a
    dec c                                         ; $6839: $0d
    ld e, d                                       ; $683a: $5a
    cp $99                                        ; $683b: $fe $99
    db $e3                                        ; $683d: $e3
    ld l, b                                       ; $683e: $68
    adc l                                         ; $683f: $8d
    sub d                                         ; $6840: $92
    add hl, sp                                    ; $6841: $39
    ld d, d                                       ; $6842: $52
    db $eb                                        ; $6843: $eb
    ld sp, hl                                     ; $6844: $f9
    and a                                         ; $6845: $a7
    xor e                                         ; $6846: $ab
    jp nc, Jump_000_272a                          ; $6847: $d2 $2a $27

    db $eb                                        ; $684a: $eb
    ld a, [c]                                     ; $684b: $f2
    inc [hl]                                      ; $684c: $34
    ld hl, sp-$2f                                 ; $684d: $f8 $d1
    or d                                          ; $684f: $b2
    ret c                                         ; $6850: $d8

    ld c, a                                       ; $6851: $4f
    add hl, hl                                    ; $6852: $29
    ld l, e                                       ; $6853: $6b
    jp Jump_06e_71c9                              ; $6854: $c3 $c9 $71


    or h                                          ; $6857: $b4
    ld a, [hl]                                    ; $6858: $7e
    ld l, c                                       ; $6859: $69
    or h                                          ; $685a: $b4
    dec h                                         ; $685b: $25
    ld c, h                                       ; $685c: $4c
    ld [hl], a                                    ; $685d: $77

Call_06e_685e:
    ei                                            ; $685e: $fb
    pop de                                        ; $685f: $d1
    db $ed                                        ; $6860: $ed
    nop                                           ; $6861: $00
    sub a                                         ; $6862: $97
    ld [hl], e                                    ; $6863: $73
    and h                                         ; $6864: $a4
    sub $b3                                       ; $6865: $d6 $b3
    ld [hl], d                                    ; $6867: $72
    inc e                                         ; $6868: $1c
    cpl                                           ; $6869: $2f

Call_06e_686a:
    jp nz, Jump_06e_68dc                          ; $686a: $c2 $dc $68

    and a                                         ; $686d: $a7
    ld b, d                                       ; $686e: $42
    db $e4                                        ; $686f: $e4
    ld b, b                                       ; $6870: $40
    ld h, d                                       ; $6871: $62
    and h                                         ; $6872: $a4
    and b                                         ; $6873: $a0
    ld c, h                                       ; $6874: $4c
    ld e, l                                       ; $6875: $5d
    add $55                                       ; $6876: $c6 $55
    and $68                                       ; $6878: $e6 $68
    inc a                                         ; $687a: $3c
    pop bc                                        ; $687b: $c1
    adc d                                         ; $687c: $8a
    ld b, [hl]                                    ; $687d: $46
    ld e, h                                       ; $687e: $5c
    ld b, h                                       ; $687f: $44
    dec a                                         ; $6880: $3d
    ld a, [hl+]                                   ; $6881: $2a
    and c                                         ; $6882: $a1
    ret c                                         ; $6883: $d8

    ld a, [$d4d1]                                 ; $6884: $fa $d1 $d4
    adc l                                         ; $6887: $8d
    ld h, e                                       ; $6888: $63
    adc [hl]                                      ; $6889: $8e

Jump_06e_688a:
    inc hl                                        ; $688a: $23
    jr z, jr_06e_6907                             ; $688b: $28 $7a

    ld h, l                                       ; $688d: $65
    db $ec                                        ; $688e: $ec
    cp a                                          ; $688f: $bf
    ld [hl-], a                                   ; $6890: $32
    or $52                                        ; $6891: $f6 $52
    ld h, e                                       ; $6893: $63
    ld [hl], b                                    ; $6894: $70
    inc sp                                        ; $6895: $33
    cp d                                          ; $6896: $ba
    cpl                                           ; $6897: $2f
    ld c, a                                       ; $6898: $4f
    ld b, e                                       ; $6899: $43
    cp [hl]                                       ; $689a: $be
    adc b                                         ; $689b: $88
    xor l                                         ; $689c: $ad
    rst $10                                       ; $689d: $d7
    and b                                         ; $689e: $a0
    push bc                                       ; $689f: $c5
    ld a, [hl]                                    ; $68a0: $7e
    ld c, d                                       ; $68a1: $4a
    ld e, c                                       ; $68a2: $59
    srl a                                         ; $68a3: $cb $3f
    ld [hl], e                                    ; $68a5: $73
    inc e                                         ; $68a6: $1c
    xor l                                         ; $68a7: $ad
    ld d, c                                       ; $68a8: $51
    ld [hl-], a                                   ; $68a9: $32
    ld b, a                                       ; $68aa: $47
    ld l, d                                       ; $68ab: $6a
    dec a                                         ; $68ac: $3d
    rst $38                                       ; $68ad: $ff
    ld [hl], h                                    ; $68ae: $74
    ld d, l                                       ; $68af: $55
    ld e, d                                       ; $68b0: $5a
    ld [hl], a                                    ; $68b1: $77
    cp $e1                                        ; $68b2: $fe $e1
    ld b, a                                       ; $68b4: $47
    ld c, e                                       ; $68b5: $4b
    ld d, a                                       ; $68b6: $57
    add hl, sp                                    ; $68b7: $39
    add hl, sp                                    ; $68b8: $39
    ld h, d                                       ; $68b9: $62
    dec sp                                        ; $68ba: $3b
    nop                                           ; $68bb: $00
    sub a                                         ; $68bc: $97
    ld [hl], e                                    ; $68bd: $73
    and h                                         ; $68be: $a4
    sub $b3                                       ; $68bf: $d6 $b3
    ld [hl], d                                    ; $68c1: $72
    inc e                                         ; $68c2: $1c
    cpl                                           ; $68c3: $2f
    jp nz, Jump_06e_68dc                          ; $68c4: $c2 $dc $68

    and a                                         ; $68c7: $a7
    ld b, d                                       ; $68c8: $42
    db $e4                                        ; $68c9: $e4
    ld b, b                                       ; $68ca: $40
    ld h, d                                       ; $68cb: $62
    and h                                         ; $68cc: $a4
    and b                                         ; $68cd: $a0
    ld c, h                                       ; $68ce: $4c
    ld e, l                                       ; $68cf: $5d
    add $55                                       ; $68d0: $c6 $55
    and $68                                       ; $68d2: $e6 $68
    inc a                                         ; $68d4: $3c
    pop bc                                        ; $68d5: $c1
    adc d                                         ; $68d6: $8a
    ld b, [hl]                                    ; $68d7: $46
    ld e, h                                       ; $68d8: $5c
    ld b, h                                       ; $68d9: $44
    dec a                                         ; $68da: $3d
    ld a, [hl+]                                   ; $68db: $2a

Jump_06e_68dc:
    and c                                         ; $68dc: $a1
    ret c                                         ; $68dd: $d8

    ld a, [$d4d1]                                 ; $68de: $fa $d1 $d4

jr_06e_68e1:
    adc l                                         ; $68e1: $8d
    ld h, e                                       ; $68e2: $63
    adc [hl]                                      ; $68e3: $8e
    inc hl                                        ; $68e4: $23
    jr z, jr_06e_68e1                             ; $68e5: $28 $fa

    ld h, c                                       ; $68e7: $61
    ld [de], a                                    ; $68e8: $12
    pop hl                                        ; $68e9: $e1
    adc c                                         ; $68ea: $89
    dec a                                         ; $68eb: $3d
    adc c                                         ; $68ec: $89
    ld d, b                                       ; $68ed: $50
    ld l, d                                       ; $68ee: $6a
    inc c                                         ; $68ef: $0c
    ld l, [hl]                                    ; $68f0: $6e
    ld b, [hl]                                    ; $68f1: $46

Call_06e_68f2:
    rst $30                                       ; $68f2: $f7
    push hl                                       ; $68f3: $e5
    ld l, c                                       ; $68f4: $69
    ret z                                         ; $68f5: $c8

    rla                                           ; $68f6: $17

Call_06e_68f7:
    or c                                          ; $68f7: $b1
    push af                                       ; $68f8: $f5
    ld a, [de]                                    ; $68f9: $1a
    or h                                          ; $68fa: $b4
    ret c                                         ; $68fb: $d8

    ld c, a                                       ; $68fc: $4f
    add hl, hl                                    ; $68fd: $29
    ld l, e                                       ; $68fe: $6b
    ld sp, hl                                     ; $68ff: $f9
    ld h, a                                       ; $6900: $67
    adc [hl]                                      ; $6901: $8e
    and e                                         ; $6902: $a3
    dec [hl]                                      ; $6903: $35
    ld c, d                                       ; $6904: $4a
    and $48                                       ; $6905: $e6 $48

jr_06e_6907:
    xor l                                         ; $6907: $ad
    rst $20                                       ; $6908: $e7
    sbc a                                         ; $6909: $9f
    xor [hl]                                      ; $690a: $ae
    ld c, d                                       ; $690b: $4a
    db $eb                                        ; $690c: $eb
    adc $3f                                       ; $690d: $ce $3f
    db $fc                                        ; $690f: $fc
    ld l, b                                       ; $6910: $68
    jp hl                                         ; $6911: $e9


    ld a, [hl+]                                   ; $6912: $2a
    daa                                           ; $6913: $27
    ld b, a                                       ; $6914: $47
    ld l, h                                       ; $6915: $6c
    rlca                                          ; $6916: $07
    rst $10                                       ; $6917: $d7
    ld h, c                                       ; $6918: $61
    add sp, -$0c                                  ; $6919: $e8 $f4
    add [hl]                                      ; $691b: $86
    ld l, l                                       ; $691c: $6d
    db $fd                                        ; $691d: $fd
    ld [hl], h                                    ; $691e: $74
    ld [hl-], a                                   ; $691f: $32
    halt                                          ; $6920: $76
    rst $18                                       ; $6921: $df
    cpl                                           ; $6922: $2f
    ld [$f9dd], sp                                ; $6923: $08 $dd $f9
    sub e                                         ; $6926: $93
    and b                                         ; $6927: $a0
    ld hl, $5477                                  ; $6928: $21 $77 $54
    ld l, b                                       ; $692b: $68
    ld l, e                                       ; $692c: $6b
    rla                                           ; $692d: $17
    inc hl                                        ; $692e: $23
    ld b, a                                       ; $692f: $47
    sub [hl]                                      ; $6930: $96
    ld a, [de]                                    ; $6931: $1a
    dec c                                         ; $6932: $0d
    pop af                                        ; $6933: $f1
    jp nz, $a169                                  ; $6934: $c2 $69 $a1

    ld [hl], h                                    ; $6937: $74
    cp l                                          ; $6938: $bd
    dec b                                         ; $6939: $05
    ld l, a                                       ; $693a: $6f
    cp h                                          ; $693b: $bc
    dec l                                         ; $693c: $2d
    jr z, jr_06e_6992                             ; $693d: $28 $53

    push hl                                       ; $693f: $e5
    ld h, h                                       ; $6940: $64
    pop de                                        ; $6941: $d1
    or d                                          ; $6942: $b2
    jp hl                                         ; $6943: $e9


    sbc l                                         ; $6944: $9d
    ld a, l                                       ; $6945: $7d
    rst $10                                       ; $6946: $d7
    sub [hl]                                      ; $6947: $96
    ld l, b                                       ; $6948: $68
    push hl                                       ; $6949: $e5
    ld a, e                                       ; $694a: $7b
    ld l, h                                       ; $694b: $6c
    and c                                         ; $694c: $a1
    rst $08                                       ; $694d: $cf
    ccf                                           ; $694e: $3f
    push de                                       ; $694f: $d5
    ld [hl], b                                    ; $6950: $70
    ld [hl], d                                    ; $6951: $72
    inc e                                         ; $6952: $1c
    db $dd                                        ; $6953: $dd
    ld c, $0f                                     ; $6954: $0e $0f
    ld d, l                                       ; $6956: $55
    sbc c                                         ; $6957: $99
    push bc                                       ; $6958: $c5
    ld h, e                                       ; $6959: $63
    dec hl                                        ; $695a: $2b
    and d                                         ; $695b: $a2
    ld d, a                                       ; $695c: $57
    ld l, c                                       ; $695d: $69
    ld l, [hl]                                    ; $695e: $6e
    ld c, l                                       ; $695f: $4d
    ld h, [hl]                                    ; $6960: $66
    rst $18                                       ; $6961: $df
    dec [hl]                                      ; $6962: $35
    db $e4                                        ; $6963: $e4
    inc de                                        ; $6964: $13
    ld c, l                                       ; $6965: $4d
    ret nc                                        ; $6966: $d0

    sub b                                         ; $6967: $90
    ei                                            ; $6968: $fb
    inc [hl]                                      ; $6969: $34
    jp hl                                         ; $696a: $e9


    call nc, $fbb3                                ; $696b: $d4 $b3 $fb
    dec a                                         ; $696e: $3d
    and a                                         ; $696f: $a7
    dec h                                         ; $6970: $25
    pop de                                        ; $6971: $d1
    sub l                                         ; $6972: $95
    ld hl, $1ec4                                  ; $6973: $21 $c4 $1e
    db $fc                                        ; $6976: $fc
    rst $20                                       ; $6977: $e7
    ld e, [hl]                                    ; $6978: $5e
    cp a                                          ; $6979: $bf
    sub b                                         ; $697a: $90
    inc hl                                        ; $697b: $23
    db $eb                                        ; $697c: $eb
    and a                                         ; $697d: $a7
    and d                                         ; $697e: $a2
    add hl, sp                                    ; $697f: $39
    adc l                                         ; $6980: $8d
    and b                                         ; $6981: $a0
    ld [hl], d                                    ; $6982: $72
    or d                                          ; $6983: $b2
    and h                                         ; $6984: $a4
    sbc a                                         ; $6985: $9f
    sbc $d9                                       ; $6986: $de $d9
    ld [hl], a                                    ; $6988: $77
    ld l, l                                       ; $6989: $6d
    adc c                                         ; $698a: $89
    ld d, [hl]                                    ; $698b: $56
    cp [hl]                                       ; $698c: $be
    rst $00                                       ; $698d: $c7
    ld d, $fa                                     ; $698e: $16 $fa
    db $fc                                        ; $6990: $fc
    ld d, e                                       ; $6991: $53

jr_06e_6992:
    dec c                                         ; $6992: $0d
    daa                                           ; $6993: $27
    rst $00                                       ; $6994: $c7
    pop de                                        ; $6995: $d1
    db $ed                                        ; $6996: $ed
    nop                                           ; $6997: $00
    sub a                                         ; $6998: $97
    and a                                         ; $6999: $a7
    scf                                           ; $699a: $37
    ld l, h                                       ; $699b: $6c
    db $eb                                        ; $699c: $eb
    ld d, l                                       ; $699d: $55
    sbc b                                         ; $699e: $98
    db $fd                                        ; $699f: $fd
    call nc, Call_000_13eb                        ; $69a0: $d4 $eb $13
    inc hl                                        ; $69a3: $23
    ld c, l                                       ; $69a4: $4d
    ret nc                                        ; $69a5: $d0

    sub b                                         ; $69a6: $90
    dec sp                                        ; $69a7: $3b
    ld a, [hl+]                                   ; $69a8: $2a
    rst $00                                       ; $69a9: $c7
    ld [hl], b                                    ; $69aa: $70
    and d                                         ; $69ab: $a2
    dec hl                                        ; $69ac: $2b
    ld l, a                                       ; $69ad: $6f
    ld c, c                                       ; $69ae: $49
    add [hl]                                      ; $69af: $86
    ld [hl], d                                    ; $69b0: $72
    ld c, l                                       ; $69b1: $4d
    add $2e                                       ; $69b2: $c6 $2e
    xor b                                         ; $69b4: $a8
    sbc h                                         ; $69b5: $9c
    inc l                                         ; $69b6: $2c
    jp hl                                         ; $69b7: $e9


    and a                                         ; $69b8: $a7
    ld [hl], a                                    ; $69b9: $77
    or $5d                                        ; $69ba: $f6 $5d
    ld e, e                                       ; $69bc: $5b
    and d                                         ; $69bd: $a2
    sub l                                         ; $69be: $95
    rst $28                                       ; $69bf: $ef
    or c                                          ; $69c0: $b1
    add l                                         ; $69c1: $85
    cp [hl]                                       ; $69c2: $be
    ldh a, [rHDMA4]                               ; $69c3: $f0 $54
    jp Jump_06e_71c9                              ; $69c5: $c3 $c9 $71


    ld [hl], h                                    ; $69c8: $74
    dec sp                                        ; $69c9: $3b
    nop                                           ; $69ca: $00
    rst $20                                       ; $69cb: $e7
    db $fd                                        ; $69cc: $fd
    ld a, $b8                                     ; $69cd: $3e $b8
    add c                                         ; $69cf: $81
    call nz, Call_06e_685e                        ; $69d0: $c4 $5e $68
    ld l, b                                       ; $69d3: $68
    sub h                                         ; $69d4: $94
    ld c, e                                       ; $69d5: $4b
    and a                                         ; $69d6: $a7
    ld l, $ad                                     ; $69d7: $2e $ad
    adc b                                         ; $69d9: $88
    ld [hl+], a                                   ; $69da: $22
    ld sp, hl                                     ; $69db: $f9
    ld h, b                                       ; $69dc: $60
    cp c                                          ; $69dd: $b9
    ret nc                                        ; $69de: $d0

Call_06e_69df:
    db $10                                        ; $69df: $10
    add [hl]                                      ; $69e0: $86
    ld [hl-], a                                   ; $69e1: $32
    adc e                                         ; $69e2: $8b
    adc h                                         ; $69e3: $8c
    add hl, sp                                    ; $69e4: $39
    jp nz, Jump_06e_68dc                          ; $69e5: $c2 $dc $68

    di                                            ; $69e8: $f3
    xor b                                         ; $69e9: $a8
    adc [hl]                                      ; $69ea: $8e
    halt                                          ; $69eb: $76
    push hl                                       ; $69ec: $e5
    push hl                                       ; $69ed: $e5
    sub $69                                       ; $69ee: $d6 $69
    ld d, h                                       ; $69f0: $54
    ld d, b                                       ; $69f1: $50
    rlca                                          ; $69f2: $07
    db $ed                                        ; $69f3: $ed
    ld a, [hl-]                                   ; $69f4: $3a
    dec h                                         ; $69f5: $25
    db $ec                                        ; $69f6: $ec
    ld b, l                                       ; $69f7: $45
    ld a, [c]                                     ; $69f8: $f2
    pop bc                                        ; $69f9: $c1
    ld [hl], d                                    ; $69fa: $72
    and c                                         ; $69fb: $a1
    ld hl, $f50c                                  ; $69fc: $21 $0c $f5
    inc d                                         ; $69ff: $14
    ld sp, $9a7b                                  ; $6a00: $31 $7b $9a
    dec de                                        ; $6a03: $1b
    ld l, l                                       ; $6a04: $6d
    ld e, $d5                                     ; $6a05: $1e $d5
    pop de                                        ; $6a07: $d1
    jp nz, $d3ad                                  ; $6a08: $c2 $ad $d3

    xor b                                         ; $6a0b: $a8
    and b                                         ; $6a0c: $a0
    ld [hl], d                                    ; $6a0d: $72
    or d                                          ; $6a0e: $b2
    and h                                         ; $6a0f: $a4
    sbc a                                         ; $6a10: $9f
    ld a, d                                       ; $6a11: $7a
    sbc $6e                                       ; $6a12: $de $6e
    jr c, jr_06e_6a4f                             ; $6a14: $38 $39

    adc [hl]                                      ; $6a16: $8e
    ld d, $d3                                     ; $6a17: $16 $d3
    dec de                                        ; $6a19: $1b
    or [hl]                                       ; $6a1a: $b6
    push af                                       ; $6a1b: $f5
    inc hl                                        ; $6a1c: $23
    cp $d7                                        ; $6a1d: $fe $d7
    cp [hl]                                       ; $6a1f: $be
    or e                                          ; $6a20: $b3
    rra                                           ; $6a21: $1f
    ld c, [hl]                                    ; $6a22: $4e
    ld a, $09                                     ; $6a23: $3e $09
    daa                                           ; $6a25: $27
    add $71                                       ; $6a26: $c6 $71
    db $db                                        ; $6a28: $db
    ld bc, $fb97                                  ; $6a29: $01 $97 $fb
    xor [hl]                                      ; $6a2c: $ae
    dec l                                         ; $6a2d: $2d
    pop de                                        ; $6a2e: $d1
    jp z, $d8f7                                   ; $6a2f: $ca $f7 $d8

    ld b, d                                       ; $6a32: $42
    rst $38                                       ; $6a33: $ff
    call z, $e992                                 ; $6a34: $cc $92 $e9
    jp nc, Jump_000_1f01                          ; $6a37: $d2 $01 $1f

    scf                                           ; $6a3a: $37
    sub b                                         ; $6a3b: $90
    adc $de                                       ; $6a3c: $ce $de
    cp b                                          ; $6a3e: $b8
    ld [hl], h                                    ; $6a3f: $74
    nop                                           ; $6a40: $00
    sbc a                                         ; $6a41: $9f
    adc l                                         ; $6a42: $8d
    ld h, e                                       ; $6a43: $63
    xor c                                         ; $6a44: $a9
    ld a, [bc]                                    ; $6a45: $0a
    ld b, c                                       ; $6a46: $41
    xor a                                         ; $6a47: $af
    ld h, c                                       ; $6a48: $61
    rla                                           ; $6a49: $17
    call $974f                                    ; $6a4a: $cd $4f $97
    ld c, $d7                                     ; $6a4d: $0e $d7

jr_06e_6a4f:
    cp b                                          ; $6a4f: $b8
    adc e                                         ; $6a50: $8b
    rst $00                                       ; $6a51: $c7
    xor d                                         ; $6a52: $aa
    ld h, e                                       ; $6a53: $63
    sub c                                         ; $6a54: $91
    dec c                                         ; $6a55: $0d
    inc h                                         ; $6a56: $24
    ld h, h                                       ; $6a57: $64
    ccf                                           ; $6a58: $3f
    db $fd                                        ; $6a59: $fd
    adc a                                         ; $6a5a: $8f
    inc a                                         ; $6a5b: $3c
    xor e                                         ; $6a5c: $ab
    and e                                         ; $6a5d: $a3
    ld d, c                                       ; $6a5e: $51
    jp nc, $fd8a                                  ; $6a5f: $d2 $8a $fd

    sub h                                         ; $6a62: $94
    inc e                                         ; $6a63: $1c
    inc b                                         ; $6a64: $04
    cp l                                          ; $6a65: $bd
    add [hl]                                      ; $6a66: $86
    ld e, l                                       ; $6a67: $5d
    inc [hl]                                      ; $6a68: $34
    ccf                                           ; $6a69: $3f
    ld e, l                                       ; $6a6a: $5d
    ld a, [hl-]                                   ; $6a6b: $3a
    nop                                           ; $6a6c: $00
    rst $10                                       ; $6a6d: $d7
    ld h, c                                       ; $6a6e: $61
    db $10                                        ; $6a6f: $10
    ld e, [hl]                                    ; $6a70: $5e
    ret z                                         ; $6a71: $c8

    jp c, $fb3b                                   ; $6a72: $da $3b $fb

    xor [hl]                                      ; $6a75: $ae
    dec l                                         ; $6a76: $2d
    pop de                                        ; $6a77: $d1
    jp z, $d8f7                                   ; $6a78: $ca $f7 $d8

    jp nz, $03a5                                  ; $6a7b: $c2 $a5 $03

    ld l, a                                       ; $6a7e: $6f
    adc l                                         ; $6a7f: $8d
    inc de                                        ; $6a80: $13
    inc [hl]                                      ; $6a81: $34
    db $e4                                        ; $6a82: $e4
    ld a, $75                                     ; $6a83: $3e $75
    call z, $cda3                                 ; $6a85: $cc $a3 $cd
    cp a                                          ; $6a88: $bf
    ld d, e                                       ; $6a89: $53
    pop de                                        ; $6a8a: $d1
    xor h                                         ; $6a8b: $ac
    and d                                         ; $6a8c: $a2
    scf                                           ; $6a8d: $37
    ld h, $2b                                     ; $6a8e: $26 $2b
    ld l, l                                       ; $6a90: $6d
    ld h, l                                       ; $6a91: $65
    inc [hl]                                      ; $6a92: $34
    sub b                                         ; $6a93: $90
    ret c                                         ; $6a94: $d8

    ccf                                           ; $6a95: $3f
    or e                                          ; $6a96: $b3
    ld h, h                                       ; $6a97: $64
    jp c, Jump_06e_570e                           ; $6a98: $da $0e $57

    ld h, c                                       ; $6a9b: $61
    or $93                                        ; $6a9c: $f6 $93
    and b                                         ; $6a9e: $a0
    rst $38                                       ; $6a9f: $ff
    sub c                                         ; $6aa0: $91
    ld h, a                                       ; $6aa1: $67
    sub l                                         ; $6aa2: $95
    sub e                                         ; $6aa3: $93
    sub l                                         ; $6aa4: $95
    and a                                         ; $6aa5: $a7
    or h                                          ; $6aa6: $b4
    jp nc, $03a5                                  ; $6aa7: $d2 $a5 $03

    rra                                           ; $6aaa: $1f
    db $fd                                        ; $6aab: $fd
    ld c, [hl]                                    ; $6aac: $4e
    inc hl                                        ; $6aad: $23
    ld l, l                                       ; $6aae: $6d
    and c                                         ; $6aaf: $a1
    cp d                                          ; $6ab0: $ba
    db $fc                                        ; $6ab1: $fc
    inc [hl]                                      ; $6ab2: $34
    inc e                                         ; $6ab3: $1c
    push de                                       ; $6ab4: $d5
    cp e                                          ; $6ab5: $bb
    rst $38                                       ; $6ab6: $ff
    call c, Call_06e_74ab                         ; $6ab7: $dc $ab $74
    push de                                       ; $6aba: $d5
    add h                                         ; $6abb: $84
    ld [c], a                                     ; $6abc: $e2
    ei                                            ; $6abd: $fb
    db $e4                                        ; $6abe: $e4
    ld hl, $47e8                                  ; $6abf: $21 $e8 $47
    db $fc                                        ; $6ac2: $fc
    xor a                                         ; $6ac3: $af
    ld a, l                                       ; $6ac4: $7d
    rst $20                                       ; $6ac5: $e7
    halt                                          ; $6ac6: $76
    nop                                           ; $6ac7: $00
    sbc a                                         ; $6ac8: $9f
    inc h                                         ; $6ac9: $24
    halt                                          ; $6aca: $76
    ld a, [hl+]                                   ; $6acb: $2a
    ld b, h                                       ; $6acc: $44
    ld c, $24                                     ; $6acd: $0e $24
    ld b, [hl]                                    ; $6acf: $46
    ld d, [hl]                                    ; $6ad0: $56
    adc [hl]                                      ; $6ad1: $8e
    and e                                         ; $6ad2: $a3
    db $e4                                        ; $6ad3: $e4
    and l                                         ; $6ad4: $a5
    inc bc                                        ; $6ad5: $03
    rra                                           ; $6ad6: $1f
    db $fd                                        ; $6ad7: $fd
    ld c, [hl]                                    ; $6ad8: $4e
    ld b, e                                       ; $6ad9: $43
    ld e, d                                       ; $6ada: $5a
    ld c, h                                       ; $6adb: $4c
    ld h, $e4                                     ; $6adc: $26 $e4
    sub $7e                                       ; $6ade: $d6 $7e
    cp h                                          ; $6ae0: $bc
    adc e                                         ; $6ae1: $8b
    and a                                         ; $6ae2: $a7
    ld [hl], d                                    ; $6ae3: $72
    ld [hl], d                                    ; $6ae4: $72
    and h                                         ; $6ae5: $a4
    dec bc                                        ; $6ae6: $0b
    ld [hl], a                                    ; $6ae7: $77
    ld h, h                                       ; $6ae8: $64
    ccf                                           ; $6ae9: $3f
    db $db                                        ; $6aea: $db
    ld bc, $c7d7                                  ; $6aeb: $01 $d7 $c7
    ld l, $38                                     ; $6aee: $2e $38
    ld b, c                                       ; $6af0: $41
    sub a                                         ; $6af1: $97
    add $69                                       ; $6af2: $c6 $69
    cp $9d                                        ; $6af4: $fe $9d
    ld e, [hl]                                    ; $6af6: $5e
    xor b                                         ; $6af7: $a8
    ld h, $d1                                     ; $6af8: $26 $d1
    sub d                                         ; $6afa: $92
    adc e                                         ; $6afb: $8b
    add hl, sp                                    ; $6afc: $39
    or d                                          ; $6afd: $b2
    ld hl, $8d0c                                  ; $6afe: $21 $0c $8d
    bit 4, b                                      ; $6b01: $cb $60
    ld b, l                                       ; $6b03: $45
    rst $30                                       ; $6b04: $f7
    push hl                                       ; $6b05: $e5
    ld l, c                                       ; $6b06: $69
    ret z                                         ; $6b07: $c8

    rla                                           ; $6b08: $17
    ld d, c                                       ; $6b09: $51
    add hl, sp                                    ; $6b0a: $39
    ld e, c                                       ; $6b0b: $59
    ld a, c                                       ; $6b0c: $79
    ld c, d                                       ; $6b0d: $4a
    res 4, e                                      ; $6b0e: $cb $a3
    ld hl, $f477                                  ; $6b10: $21 $77 $f4
    jp $c224                                      ; $6b13: $c3 $24 $c2


    inc de                                        ; $6b16: $13
    ld a, e                                       ; $6b17: $7b
    ld [de], a                                    ; $6b18: $12
    pop hl                                        ; $6b19: $e1
    jp nc, Jump_000_1f01                          ; $6b1a: $d2 $01 $1f

    scf                                           ; $6b1d: $37
    sub b                                         ; $6b1e: $90
    adc $de                                       ; $6b1f: $ce $de
    cp b                                          ; $6b21: $b8
    call nc, $e32b                                ; $6b22: $d4 $2b $e3
    and [hl]                                      ; $6b25: $a6
    ld c, e                                       ; $6b26: $4b
    ld [hl], l                                    ; $6b27: $75
    ld a, [hl+]                                   ; $6b28: $2a
    sbc d                                         ; $6b29: $9a
    ld d, l                                       ; $6b2a: $55
    ret z                                         ; $6b2b: $c8

    ret                                           ; $6b2c: $c9


    sub c                                         ; $6b2d: $91
    sub d                                         ; $6b2e: $92
    or $c6                                        ; $6b2f: $f6 $c6
    and l                                         ; $6b31: $a5
    inc bc                                        ; $6b32: $03
    ld l, a                                       ; $6b33: $6f
    adc l                                         ; $6b34: $8d
    inc de                                        ; $6b35: $13
    inc [hl]                                      ; $6b36: $34
    db $e4                                        ; $6b37: $e4
    ld a, $75                                     ; $6b38: $3e $75
    call z, Call_06e_45a3                         ; $6b3a: $cc $a3 $45
    rst $38                                       ; $6b3d: $ff
    call z, Call_06e_7e92                         ; $6b3e: $cc $92 $7e
    inc c                                         ; $6b41: $0c
    call $d3bf                                    ; $6b42: $cd $bf $d3
    dec bc                                        ; $6b45: $0b
    ld b, l                                       ; $6b46: $45
    ld l, a                                       ; $6b47: $6f
    ld c, h                                       ; $6b48: $4c
    ld d, [hl]                                    ; $6b49: $56
    jp c, $d8ca                                   ; $6b4a: $da $ca $d8

    ld c, $d7                                     ; $6b4d: $0e $d7
    ld h, c                                       ; $6b4f: $61
    db $10                                        ; $6b50: $10
    ld e, [hl]                                    ; $6b51: $5e
    ret z                                         ; $6b52: $c8

    cp d                                          ; $6b53: $ba
    dec e                                         ; $6b54: $1d
    rra                                           ; $6b55: $1f
    dec bc                                        ; $6b56: $0b
    ld l, l                                       ; $6b57: $6d
    sbc l                                         ; $6b58: $9d
    ldh [rBGP], a                                 ; $6b59: $e0 $47
    ret nc                                        ; $6b5b: $d0

    xor e                                         ; $6b5c: $ab
    jr nc, @-$03                                  ; $6b5d: $30 $fb

    ld l, c                                       ; $6b5f: $69
    db $eb                                        ; $6b60: $eb
    dec [hl]                                      ; $6b61: $35
    xor $e2                                       ; $6b62: $ee $e2
    or c                                          ; $6b64: $b1

jr_06e_6b65:
    ld [$6458], a                                 ; $6b65: $ea $58 $64
    di                                            ; $6b68: $f3
    inc d                                         ; $6b69: $14
    ld a, c                                       ; $6b6a: $79
    ld a, [de]                                    ; $6b6b: $1a
    ld c, b                                       ; $6b6c: $48
    db $ec                                        ; $6b6d: $ec
    sbc a                                         ; $6b6e: $9f
    ld l, [hl]                                    ; $6b6f: $6e
    dec sp                                        ; $6b70: $3b
    nop                                           ; $6b71: $00
    rst $10                                       ; $6b72: $d7
    rst $00                                       ; $6b73: $c7
    ld l, $38                                     ; $6b74: $2e $38
    ld b, c                                       ; $6b76: $41
    sub a                                         ; $6b77: $97
    add $69                                       ; $6b78: $c6 $69
    cp $9d                                        ; $6b7a: $fe $9d
    ld e, [hl]                                    ; $6b7c: $5e
    xor b                                         ; $6b7d: $a8
    ld h, $d1                                     ; $6b7e: $26 $d1
    sub d                                         ; $6b80: $92
    adc e                                         ; $6b81: $8b
    add hl, sp                                    ; $6b82: $39
    or d                                          ; $6b83: $b2
    ld hl, $8d0c                                  ; $6b84: $21 $0c $8d
    bit 4, b                                      ; $6b87: $cb $60
    ld b, l                                       ; $6b89: $45
    rst $30                                       ; $6b8a: $f7
    push hl                                       ; $6b8b: $e5
    ld l, c                                       ; $6b8c: $69
    ret z                                         ; $6b8d: $c8

    rla                                           ; $6b8e: $17
    ld d, c                                       ; $6b8f: $51
    add hl, sp                                    ; $6b90: $39

Call_06e_6b91:
    ld e, c                                       ; $6b91: $59
    ld a, c                                       ; $6b92: $79
    ld c, d                                       ; $6b93: $4a
    res 4, e                                      ; $6b94: $cb $a3
    ld hl, $f477                                  ; $6b96: $21 $77 $f4
    jp z, Jump_06e_7fd8                           ; $6b99: $ca $d8 $7f

    ld h, l                                       ; $6b9c: $65
    db $ec                                        ; $6b9d: $ec
    sub a                                         ; $6b9e: $97
    ld c, $57                                     ; $6b9f: $0e $57
    add $fe                                       ; $6ba1: $c6 $fe
    dec hl                                        ; $6ba3: $2b
    ld h, e                                       ; $6ba4: $63
    ld a, a                                       ; $6ba5: $7f
    and e                                         ; $6ba6: $a3
    rst $20                                       ; $6ba7: $e7
    dec sp                                        ; $6ba8: $3b
    or l                                          ; $6ba9: $b5
    ld a, [$0d3b]                                 ; $6baa: $fa $3b $0d
    rst $10                                       ; $6bad: $d7
    jr jr_06e_6b65                                ; $6bae: $18 $b5

    add c                                         ; $6bb0: $81
    call nz, $efa2                                ; $6bb1: $c4 $a2 $ef
    jp c, $ad12                                   ; $6bb4: $da $12 $ad

    ld a, h                                       ; $6bb7: $7c
    adc a                                         ; $6bb8: $8f
    dec l                                         ; $6bb9: $2d
    ld l, h                                       ; $6bba: $6c
    rlca                                          ; $6bbb: $07
    xor a                                         ; $6bbc: $af
    scf                                           ; $6bbd: $37
    ld h, $3f                                     ; $6bbe: $26 $3f
    ld [hl], l                                    ; $6bc0: $75
    dec hl                                        ; $6bc1: $2b
    adc e                                         ; $6bc2: $8b
    ld d, c                                       ; $6bc3: $51
    sbc c                                         ; $6bc4: $99
    or $10                                        ; $6bc5: $f6 $10
    ld e, e                                       ; $6bc7: $5b
    rst $08                                       ; $6bc8: $cf
    ld d, e                                       ; $6bc9: $53
    dec a                                         ; $6bca: $3d
    rst $38                                       ; $6bcb: $ff
    or h                                          ; $6bcc: $b4
    add l                                         ; $6bcd: $85
    ld b, [hl]                                    ; $6bce: $46
    ld e, d                                       ; $6bcf: $5a
    dec e                                         ; $6bd0: $1d
    ld c, e                                       ; $6bd1: $4b
    dec d                                         ; $6bd2: $15
    adc l                                         ; $6bd3: $8d
    ld e, l                                       ; $6bd4: $5d
    add h                                         ; $6bd5: $84
    sbc a                                         ; $6bd6: $9f
    ld a, [hl-]                                   ; $6bd7: $3a
    inc l                                         ; $6bd8: $2c
    ld l, l                                       ; $6bd9: $6d
    ld [$9743], sp                                ; $6bda: $08 $43 $97
    dec bc                                        ; $6bdd: $0b
    jp hl                                         ; $6bde: $e9


    rst $28                                       ; $6bdf: $ef
    ld a, [hl]                                    ; $6be0: $7e
    ld h, d                                       ; $6be1: $62
    rra                                           ; $6be2: $1f
    ld l, l                                       ; $6be3: $6d
    ld b, [hl]                                    ; $6be4: $46
    jr nz, jr_06e_6c58                            ; $6be5: $20 $71

    ld b, a                                       ; $6be7: $47
    di                                            ; $6be8: $f3
    xor h                                         ; $6be9: $ac
    ret z                                         ; $6bea: $c8

    db $ed                                        ; $6beb: $ed
    nop                                           ; $6bec: $00
    scf                                           ; $6bed: $37
    ret c                                         ; $6bee: $d8

    rst $38                                       ; $6bef: $ff
    ret z                                         ; $6bf0: $c8

    or e                                          ; $6bf1: $b3
    add $f5                                       ; $6bf2: $c6 $f5
    and a                                         ; $6bf4: $a7
    ld a, [hl+]                                   ; $6bf5: $2a
    xor e                                         ; $6bf6: $ab
    inc l                                         ; $6bf7: $2c
    ld d, l                                       ; $6bf8: $55
    inc [hl]                                      ; $6bf9: $34
    halt                                          ; $6bfa: $76
    ld de, $ea7e                                  ; $6bfb: $11 $7e $ea
    or b                                          ; $6bfe: $b0
    ld d, h                                       ; $6bff: $54
    ret nc                                        ; $6c00: $d0

    ld a, h                                       ; $6c01: $7c
    adc a                                         ; $6c02: $8f
    ld [hl], $d2                                  ; $6c03: $36 $d2
    xor $86                                       ; $6c05: $ee $86
    dec de                                        ; $6c07: $1b
    ld l, l                                       ; $6c08: $6d
    ld c, b                                       ; $6c09: $48
    di                                            ; $6c0a: $f3
    bit 1, a                                      ; $6c0b: $cb $4f
    or c                                          ; $6c0d: $b1
    or d                                          ; $6c0e: $b2
    ld b, a                                       ; $6c0f: $47
    dec e                                         ; $6c10: $1d
    sub [hl]                                      ; $6c11: $96
    ld d, [hl]                                    ; $6c12: $56
    call nz, $db35                                ; $6c13: $c4 $35 $db
    ld bc, $c7d7                                  ; $6c16: $01 $d7 $c7
    ld l, $38                                     ; $6c19: $2e $38
    ld b, c                                       ; $6c1b: $41
    sub a                                         ; $6c1c: $97
    add $69                                       ; $6c1d: $c6 $69
    cp $9d                                        ; $6c1f: $fe $9d
    ld e, [hl]                                    ; $6c21: $5e
    xor b                                         ; $6c22: $a8
    ld h, $d1                                     ; $6c23: $26 $d1
    sub d                                         ; $6c25: $92
    adc e                                         ; $6c26: $8b
    add hl, sp                                    ; $6c27: $39
    or d                                          ; $6c28: $b2
    ld hl, $8d0c                                  ; $6c29: $21 $0c $8d
    bit 4, b                                      ; $6c2c: $cb $60
    ld b, l                                       ; $6c2e: $45
    rst $30                                       ; $6c2f: $f7
    push hl                                       ; $6c30: $e5
    ld l, c                                       ; $6c31: $69
    ret z                                         ; $6c32: $c8

    rla                                           ; $6c33: $17
    ld d, c                                       ; $6c34: $51
    add hl, sp                                    ; $6c35: $39
    ld e, c                                       ; $6c36: $59
    ld a, c                                       ; $6c37: $79
    ld c, d                                       ; $6c38: $4a
    res 4, e                                      ; $6c39: $cb $a3
    ld hl, $f477                                  ; $6c3b: $21 $77 $f4
    add $64                                       ; $6c3e: $c6 $64
    and l                                         ; $6c40: $a5
    xor l                                         ; $6c41: $ad
    adc h                                         ; $6c42: $8c
    xor l                                         ; $6c43: $ad
    rst $10                                       ; $6c44: $d7
    rst $00                                       ; $6c45: $c7
    ld [hl+], a                                   ; $6c46: $22
    ld [hl], d                                    ; $6c47: $72
    inc e                                         ; $6c48: $1c
    ld b, c                                       ; $6c49: $41
    ld b, e                                       ; $6c4a: $43
    xor $53                                       ; $6c4b: $ee $53
    cp l                                          ; $6c4d: $bd
    db $10                                        ; $6c4e: $10
    sub a                                         ; $6c4f: $97
    sbc e                                         ; $6c50: $9b
    ld [hl+], a                                   ; $6c51: $22
    ld c, a                                       ; $6c52: $4f
    push hl                                       ; $6c53: $e5
    ld h, h                                       ; $6c54: $64
    and l                                         ; $6c55: $a5
    ld c, h                                       ; $6c56: $4c
    ld [hl], c                                    ; $6c57: $71

jr_06e_6c58:
    db $fd                                        ; $6c58: $fd
    ld b, a                                       ; $6c59: $47
    ld d, b                                       ; $6c5a: $50
    db $f4                                        ; $6c5b: $f4
    add $64                                       ; $6c5c: $c6 $64
    and l                                         ; $6c5e: $a5
    xor l                                         ; $6c5f: $ad
    adc h                                         ; $6c60: $8c
    sbc [hl]                                      ; $6c61: $9e
    sub b                                         ; $6c62: $90
    push bc                                       ; $6c63: $c5
    jr z, jr_06e_6c80                             ; $6c64: $28 $1a

    ld [hl], c                                    ; $6c66: $71
    ld de, $a8f5                                  ; $6c67: $11 $f5 $a8
    add h                                         ; $6c6a: $84
    ld h, d                                       ; $6c6b: $62
    dec sp                                        ; $6c6c: $3b
    nop                                           ; $6c6d: $00
    rra                                           ; $6c6e: $1f
    db $dd                                        ; $6c6f: $dd
    and e                                         ; $6c70: $a3
    and l                                         ; $6c71: $a5
    add $e0                                       ; $6c72: $c6 $e0
    ccf                                           ; $6c74: $3f
    call c, $e568                                 ; $6c75: $dc $68 $e5
    db $e4                                        ; $6c78: $e4
    adc b                                         ; $6c79: $88
    db $ec                                        ; $6c7a: $ec
    and a                                         ; $6c7b: $a7
    ld [hl], d                                    ; $6c7c: $72
    ld e, h                                       ; $6c7d: $5c
    rst $38                                       ; $6c7e: $ff
    inc hl                                        ; $6c7f: $23

jr_06e_6c80:
    rst $08                                       ; $6c80: $cf
    inc b                                         ; $6c81: $04
    cp l                                          ; $6c82: $bd
    ld a, [bc]                                    ; $6c83: $0a
    or e                                          ; $6c84: $b3
    sbc a                                         ; $6c85: $9f
    inc b                                         ; $6c86: $04
    ld h, l                                       ; $6c87: $65
    rst $38                                       ; $6c88: $ff
    inc hl                                        ; $6c89: $23
    rst $08                                       ; $6c8a: $cf
    sbc d                                         ; $6c8b: $9a
    ld b, a                                       ; $6c8c: $47
    db $eb                                        ; $6c8d: $eb
    add hl, hl                                    ; $6c8e: $29
    add hl, de                                    ; $6c8f: $19
    jp z, Jump_06e_7935                           ; $6c90: $ca $35 $79

    jp nc, $03a5                                  ; $6c93: $d2 $a5 $03

    rst $10                                       ; $6c96: $d7
    jp nc, $d38a                                  ; $6c97: $d2 $8a $d3

    ld de, $3ada                                  ; $6c9a: $11 $da $3a
    pop bc                                        ; $6c9d: $c1
    adc a                                         ; $6c9e: $8f
    and b                                         ; $6c9f: $a0
    ld d, a                                       ; $6ca0: $57
    ld h, c                                       ; $6ca1: $61
    or $d3                                        ; $6ca2: $f6 $d3
    sub $cb                                       ; $6ca4: $d6 $cb
    and a                                         ; $6ca6: $a7
    ld sp, $3b94                                  ; $6ca7: $31 $94 $3b
    or l                                          ; $6caa: $b5
    call nc, $fb08                                ; $6cab: $d4 $08 $fb
    sbc l                                         ; $6cae: $9d
    ld h, d                                       ; $6caf: $62
    ld h, l                                       ; $6cb0: $65
    adc a                                         ; $6cb1: $8f
    add [hl]                                      ; $6cb2: $86
    ld l, e                                       ; $6cb3: $6b
    adc h                                         ; $6cb4: $8c
    jp c, Jump_000_0d3c                           ; $6cb5: $da $3c $0d

    db $ed                                        ; $6cb8: $ed
    sbc [hl]                                      ; $6cb9: $9e
    ld e, e                                       ; $6cba: $5b
    bit 1, l                                      ; $6cbb: $cb $4d
    sub c                                         ; $6cbd: $91
    ld h, a                                       ; $6cbe: $67
    dec sp                                        ; $6cbf: $3b
    nop                                           ; $6cc0: $00
    ld l, a                                       ; $6cc1: $6f
    ld [hl], c                                    ; $6cc2: $71
    ld b, a                                       ; $6cc3: $47
    inc hl                                        ; $6cc4: $23
    ld [hl], e                                    ; $6cc5: $73
    ld b, h                                       ; $6cc6: $44
    ld e, h                                       ; $6cc7: $5c
    ld a, a                                       ; $6cc8: $7f
    inc [hl]                                      ; $6cc9: $34
    ld c, a                                       ; $6cca: $4f
    ld b, l                                       ; $6ccb: $45
    dec hl                                        ; $6ccc: $2b
    ld h, e                                       ; $6ccd: $63
    rla                                           ; $6cce: $17
    db $f4                                        ; $6ccf: $f4
    ld a, [$48c4]                                 ; $6cd0: $fa $c4 $48
    db $db                                        ; $6cd3: $db
    ld a, d                                       ; $6cd4: $7a
    dec c                                         ; $6cd5: $0d
    jp c, Jump_06e_71a5                           ; $6cd6: $da $a5 $71

    ld c, d                                       ; $6cd9: $4a
    ld b, e                                       ; $6cda: $43
    ld d, a                                       ; $6cdb: $57
    and $7f                                       ; $6cdc: $e6 $7f
    push bc                                       ; $6cde: $c5
    ldh [$3f], a                                  ; $6cdf: $e0 $3f
    rst $30                                       ; $6ce1: $f7

Jump_06e_6ce2:
    db $ed                                        ; $6ce2: $ed
    nop                                           ; $6ce3: $00
    rst $10                                       ; $6ce4: $d7
    cp b                                          ; $6ce5: $b8
    adc e                                         ; $6ce6: $8b
    rst $00                                       ; $6ce7: $c7
    xor d                                         ; $6ce8: $aa
    ld h, e                                       ; $6ce9: $63
    sub c                                         ; $6cea: $91
    call $d0d3                                    ; $6ceb: $cd $d3 $d0
    xor $b9                                       ; $6cee: $ee $b9
    or l                                          ; $6cf0: $b5

Jump_06e_6cf1:
    call c, Call_06e_7914                         ; $6cf1: $dc $14 $79
    inc b                                         ; $6cf4: $04
    cp l                                          ; $6cf5: $bd
    ld a, [bc]                                    ; $6cf6: $0a
    or e                                          ; $6cf7: $b3
    sbc a                                         ; $6cf8: $9f
    ld a, d                                       ; $6cf9: $7a
    ld a, l                                       ; $6cfa: $7d
    ld h, d                                       ; $6cfb: $62
    and h                                         ; $6cfc: $a4
    ld l, l                                       ; $6cfd: $6d
    ld a, l                                       ; $6cfe: $7d
    ld c, a                                       ; $6cff: $4f
    db $e3                                        ; $6d00: $e3
    db $f4                                        ; $6d01: $f4
    add d                                         ; $6d02: $82
    and b                                         ; $6d03: $a0
    jp z, $47fe                                   ; $6d04: $ca $fe $47

    sbc [hl]                                      ; $6d07: $9e
    dec [hl]                                      ; $6d08: $35

Jump_06e_6d09:
    xor [hl]                                      ; $6d09: $ae

jr_06e_6d0a:
    ccf                                           ; $6d0a: $3f
    xor l                                         ; $6d0b: $ad
    ld [hl], d                                    ; $6d0c: $72
    inc c                                         ; $6d0d: $0c
    daa                                           ; $6d0e: $27
    cp d                                          ; $6d0f: $ba
    ld a, d                                       ; $6d10: $7a
    or $3f                                        ; $6d11: $f6 $3f
    ld a, e                                       ; $6d13: $7b
    add h                                         ; $6d14: $84
    ld l, l                                       ; $6d15: $6d
    rlca                                          ; $6d16: $07
    ld l, a                                       ; $6d17: $6f
    pop de                                        ; $6d18: $d1
    ld [hl], l                                    ; $6d19: $75
    db $db                                        ; $6d1a: $db
    or [hl]                                       ; $6d1b: $b6
    add [hl]                                      ; $6d1c: $86
    call c, $8ea7                                 ; $6d1d: $dc $a7 $8e
    ld a, c                                       ; $6d20: $79
    or h                                          ; $6d21: $b4
    ld c, h                                       ; $6d22: $4c
    adc l                                         ; $6d23: $8d
    call z, Call_06e_6b91                         ; $6d24: $cc $91 $6b
    dec sp                                        ; $6d27: $3b
    nop                                           ; $6d28: $00
    rra                                           ; $6d29: $1f
    rst $28                                       ; $6d2a: $ef
    pop bc                                        ; $6d2b: $c1
    add d                                         ; $6d2c: $82
    ld e, [hl]                                    ; $6d2d: $5e
    add l                                         ; $6d2e: $85
    reti                                          ; $6d2f: $d9


    ld c, a                                       ; $6d30: $4f
    db $db                                        ; $6d31: $db
    ld bc, $1ae7                                  ; $6d32: $01 $e7 $1a
    daa                                           ; $6d35: $27
    push af                                       ; $6d36: $f5
    rst $08                                       ; $6d37: $cf
    db $ec                                        ; $6d38: $ec
    and a                                         ; $6d39: $a7
    add c                                         ; $6d3a: $81
    call nz, $47fe                                ; $6d3b: $c4 $fe $47
    sbc [hl]                                      ; $6d3e: $9e
    sub l                                         ; $6d3f: $95
    ld a, [de]                                    ; $6d40: $1a
    add e                                         ; $6d41: $83
    db $eb                                        ; $6d42: $eb
    jr nz, jr_06e_6d0a                            ; $6d43: $20 $c5

    ld c, c                                       ; $6d45: $49
    jp nz, $d6cf                                  ; $6d46: $c2 $cf $d6

    sbc e                                         ; $6d49: $9b
    inc hl                                        ; $6d4a: $23
    rst $08                                       ; $6d4b: $cf
    ld a, d                                       ; $6d4c: $7a
    ld a, [de]                                    ; $6d4d: $1a
    adc l                                         ; $6d4e: $8d
    or b                                          ; $6d4f: $b0
    add l                                         ; $6d50: $85
    ld b, $12                                     ; $6d51: $06 $12
    set 2, h                                      ; $6d53: $cb $d4
    xor c                                         ; $6d55: $a9
    ld c, h                                       ; $6d56: $4c
    ld b, $55                                     ; $6d57: $06 $55
    cp [hl]                                       ; $6d59: $be
    ld [hl], c                                    ; $6d5a: $71
    nop                                           ; $6d5b: $00
    scf                                           ; $6d5c: $37
    sub [hl]                                      ; $6d5d: $96
    inc de                                        ; $6d5e: $13
    inc [hl]                                      ; $6d5f: $34
    inc e                                         ; $6d60: $1c
    xor e                                         ; $6d61: $ab
    ld [$b1ff], sp                                ; $6d62: $08 $ff $b1
    ld c, e                                       ; $6d65: $4b
    rlca                                          ; $6d66: $07
    rst $10                                       ; $6d67: $d7
    jp nc, $538a                                  ; $6d68: $d2 $8a $53

jr_06e_6d6b:
    ld hl, $a09d                                  ; $6d6b: $21 $9d $a0
    ld c, e                                       ; $6d6e: $4b
    db $e3                                        ; $6d6f: $e3
    call nc, $cff3                                ; $6d70: $d4 $f3 $cf
    ld [c], a                                     ; $6d73: $e2
    ei                                            ; $6d74: $fb
    db $e4                                        ; $6d75: $e4
    ld h, c                                       ; $6d76: $61
    db $db                                        ; $6d77: $db
    ld bc, $0b1f                                  ; $6d78: $01 $1f $0b
    ld l, l                                       ; $6d7b: $6d
    sbc l                                         ; $6d7c: $9d
    ldh [rBGP], a                                 ; $6d7d: $e0 $47
    ret nc                                        ; $6d7f: $d0

    ld l, e                                       ; $6d80: $6b
    ldh a, [rSVBK]                                ; $6d81: $f0 $70
    db $ec                                        ; $6d83: $ec
    push af                                       ; $6d84: $f5
    ld [hl], c                                    ; $6d85: $71
    ld [hl+], a                                   ; $6d86: $22
    db $e3                                        ; $6d87: $e3
    ld c, a                                       ; $6d88: $4f
    db $db                                        ; $6d89: $db
    ld bc, $acef                                  ; $6d8a: $01 $ef $ac
    ld b, b                                       ; $6d8d: $40
    ld h, d                                       ; $6d8e: $62
    pop de                                        ; $6d8f: $d1
    rst $38                                       ; $6d90: $ff
    db $e4                                        ; $6d91: $e4
    ld [$86cf], sp                                ; $6d92: $08 $cf $86
    jr nc, jr_06e_6d6b                            ; $6d95: $30 $d4

    or c                                          ; $6d97: $b1
    and c                                         ; $6d98: $a1
    adc l                                         ; $6d99: $8d
    ld c, h                                       ; $6d9a: $4c
    ld b, $ab                                     ; $6d9b: $06 $ab
    jp nc, $c685                                  ; $6d9d: $d2 $85 $c6

    ld b, $12                                     ; $6da0: $06 $12
    dec de                                        ; $6da2: $1b
    ld a, [de]                                    ; $6da3: $1a
    push hl                                       ; $6da4: $e5
    ld d, d                                       ; $6da5: $52
    ret c                                         ; $6da6: $d8

    halt                                          ; $6da7: $76
    nop                                           ; $6da8: $00
    sbc a                                         ; $6da9: $9f
    inc h                                         ; $6daa: $24
    or $c4                                        ; $6dab: $f6 $c4
    inc e                                         ; $6dad: $1c
    rst $10                                       ; $6dae: $d7
    adc $db                                       ; $6daf: $ce $db
    xor b                                         ; $6db1: $a8
    ld h, $34                                     ; $6db2: $26 $34
    add h                                         ; $6db4: $84
    ld a, [hl+]                                   ; $6db5: $2a
    xor h                                         ; $6db6: $ac
    pop hl                                        ; $6db7: $e1
    ld e, b                                       ; $6db8: $58
    ld de, $6b48                                  ; $6db9: $11 $48 $6b
    dec sp                                        ; $6dbc: $3b
    nop                                           ; $6dbd: $00
    scf                                           ; $6dbe: $37
    ld b, a                                       ; $6dbf: $47
    sbc [hl]                                      ; $6dc0: $9e
    push de                                       ; $6dc1: $d5
    jr z, jr_06e_6ded                             ; $6dc2: $28 $29

    ld h, h                                       ; $6dc4: $64
    ld [$4f9b], a                                 ; $6dc5: $ea $9b $4f
    rst $30                                       ; $6dc8: $f7
    add $92                                       ; $6dc9: $c6 $92
    dec sp                                        ; $6dcb: $3b
    push af                                       ; $6dcc: $f5
    jp nc, $3701                                  ; $6dcd: $d2 $01 $37

    ld b, a                                       ; $6dd0: $47
    sbc [hl]                                      ; $6dd1: $9e
    push de                                       ; $6dd2: $d5
    jr z, jr_06e_6dfe                             ; $6dd3: $28 $29

    ld h, h                                       ; $6dd5: $64
    ld a, d                                       ; $6dd6: $7a
    push hl                                       ; $6dd7: $e5
    nop                                           ; $6dd8: $00
    scf                                           ; $6dd9: $37
    ld b, a                                       ; $6dda: $47
    sbc [hl]                                      ; $6ddb: $9e
    sub l                                         ; $6ddc: $95
    ld a, [de]                                    ; $6ddd: $1a
    add e                                         ; $6dde: $83
    dec de                                        ; $6ddf: $1b
    daa                                           ; $6de0: $27
    ld h, d                                       ; $6de1: $62
    ld [hl], a                                    ; $6de2: $77
    call z, $9591                                 ; $6de3: $cc $91 $95
    ret                                           ; $6de6: $c9


    ldh [$e7], a                                  ; $6de7: $e0 $e7
    jp nc, $3701                                  ; $6de9: $d2 $01 $37

    ld [hl+], a                                   ; $6dec: $22

jr_06e_6ded:
    ld h, d                                       ; $6ded: $62
    jp nc, $d93e                                  ; $6dee: $d2 $3e $d9

    di                                            ; $6df1: $f3
    ld b, b                                       ; $6df2: $40
    ld e, d                                       ; $6df3: $5a
    ld hl, $731c                                  ; $6df4: $21 $1c $73
    sbc h                                         ; $6df7: $9c
    inc bc                                        ; $6df8: $03
    rst $28                                       ; $6df9: $ef
    ld b, l                                       ; $6dfa: $45
    cp d                                          ; $6dfb: $ba
    inc bc                                        ; $6dfc: $03
    rst $20                                       ; $6dfd: $e7

jr_06e_6dfe:
    ld e, c                                       ; $6dfe: $59
    ld l, $b9                                     ; $6dff: $2e $b9
    ld c, a                                       ; $6e01: $4f
    ld a, b                                       ; $6e02: $78
    pop bc                                        ; $6e03: $c1
    cpl                                           ; $6e04: $2f
    call nc, $efb3                                ; $6e05: $d4 $b3 $ef
    push hl                                       ; $6e08: $e5
    sub e                                         ; $6e09: $93
    pop de                                        ; $6e0a: $d1
    cpl                                           ; $6e0b: $2f
    and $48                                       ; $6e0c: $e6 $48
    dec a                                         ; $6e0e: $3d
    nop                                           ; $6e0f: $00
    rst $28                                       ; $6e10: $ef
    call z, $a6be                                 ; $6e11: $cc $be $a6
    rst $10                                       ; $6e14: $d7
    ld [hl], b                                    ; $6e15: $70
    ld e, d                                       ; $6e16: $5a
    rlca                                          ; $6e17: $07
    rst $28                                       ; $6e18: $ef
    call z, $a6be                                 ; $6e19: $cc $be $a6
    sbc a                                         ; $6e1c: $9f
    reti                                          ; $6e1d: $d9


    ld a, [bc]                                    ; $6e1e: $0a
    rst $30                                       ; $6e1f: $f7
    dec h                                         ; $6e20: $25
    sub e                                         ; $6e21: $93
    ld e, $37                                     ; $6e22: $1e $37
    or b                                          ; $6e24: $b0
    rst $38                                       ; $6e25: $ff
    ld h, c                                       ; $6e26: $61
    ld a, l                                       ; $6e27: $7d
    ld a, a                                       ; $6e28: $7f
    ld c, [hl]                                    ; $6e29: $4e
    ld [hl], e                                    ; $6e2a: $73
    nop                                           ; $6e2b: $00
    rra                                           ; $6e2c: $1f
    db $dd                                        ; $6e2d: $dd
    db $fd                                        ; $6e2e: $fd
    rst $20                                       ; $6e2f: $e7
    ld a, [hl]                                    ; $6e30: $7e
    nop                                           ; $6e31: $00
    rst $20                                       ; $6e32: $e7
    or a                                          ; $6e33: $b7
    ld b, d                                       ; $6e34: $42
    jp c, $cb3a                                   ; $6e35: $da $3a $cb

    ld [hl], d                                    ; $6e38: $72
    pop hl                                        ; $6e39: $e1
    nop                                           ; $6e3a: $00
    rst $10                                       ; $6e3b: $d7
    db $ed                                        ; $6e3c: $ed
    sbc [hl]                                      ; $6e3d: $9e
    ld e, e                                       ; $6e3e: $5b
    bit 1, l                                      ; $6e3f: $cb $4d
    ccf                                           ; $6e41: $3f
    ld a, [$371f]                                 ; $6e42: $fa $1f $37
    sub [hl]                                      ; $6e45: $96
    call c, Call_000_07a9                         ; $6e46: $dc $a9 $07
    rst $20                                       ; $6e49: $e7
    sbc c                                         ; $6e4a: $99
    halt                                          ; $6e4b: $76
    ld e, d                                       ; $6e4c: $5a
    jr c, jr_06e_6e4f                             ; $6e4d: $38 $00

jr_06e_6e4f:
    rst $10                                       ; $6e4f: $d7
    add d                                         ; $6e50: $82
    ld c, a                                       ; $6e51: $4f
    ld c, e                                       ; $6e52: $4b
    ld [c], a                                     ; $6e53: $e2
    nop                                           ; $6e54: $00
    rst $28                                       ; $6e55: $ef
    adc h                                         ; $6e56: $8c
    ld e, l                                       ; $6e57: $5d
    call nz, Call_06e_6f01                        ; $6e58: $c4 $01 $6f
    ld d, e                                       ; $6e5b: $53
    ld b, h                                       ; $6e5c: $44
    push bc                                       ; $6e5d: $c5
    ld bc, $4f97                                  ; $6e5e: $01 $97 $4f
    ld l, e                                       ; $6e61: $6b
    ld e, a                                       ; $6e62: $5f
    ld e, $9e                                     ; $6e63: $1e $9e
    rlca                                          ; $6e65: $07
    rst $28                                       ; $6e66: $ef
    adc h                                         ; $6e67: $8c
    push af                                       ; $6e68: $f5
    ld e, d                                       ; $6e69: $5a
    ldh a, [rBCPD]                                ; $6e6a: $f0 $69
    ld c, c                                       ; $6e6c: $49
    inc e                                         ; $6e6d: $1c
    ld l, a                                       ; $6e6e: $6f
    ld d, e                                       ; $6e6f: $53
    call nc, $c16b                                ; $6e70: $d4 $6b $c1
    and a                                         ; $6e73: $a7
    dec h                                         ; $6e74: $25
    ld [hl], c                                    ; $6e75: $71
    nop                                           ; $6e76: $00
    ld l, a                                       ; $6e77: $6f
    ld a, $fd                                     ; $6e78: $3e $fd
    db $e4                                        ; $6e7a: $e4
    sbc e                                         ; $6e7b: $9b
    rst $08                                       ; $6e7c: $cf
    db $f4                                        ; $6e7d: $f4
    nop                                           ; $6e7e: $00
    sbc a                                         ; $6e7f: $9f
    jp nc, $9fcd                                  ; $6e80: $d2 $cd $9f

    sub $1b                                       ; $6e83: $d6 $1b
    add hl, bc                                    ; $6e85: $09
    jp c, $d30f                                   ; $6e86: $da $0f $d3

Jump_06e_6e89:
    rra                                           ; $6e89: $1f
    ld a, d                                       ; $6e8a: $7a
    nop                                           ; $6e8b: $00
    rra                                           ; $6e8c: $1f
    and [hl]                                      ; $6e8d: $a6
    ccf                                           ; $6e8e: $3f
    or h                                          ; $6e8f: $b4
    sbc [hl]                                      ; $6e90: $9e
    cp l                                          ; $6e91: $bd
    adc $9d                                       ; $6e92: $ce $9d
    push af                                       ; $6e94: $f5
    db $ec                                        ; $6e95: $ec
    db $db                                        ; $6e96: $db
    add [hl]                                      ; $6e97: $86
    db $d3                                        ; $6e98: $d3
    rst $28                                       ; $6e99: $ef
    inc e                                         ; $6e9a: $1c
    rra                                           ; $6e9b: $1f
    and [hl]                                      ; $6e9c: $a6
    ccf                                           ; $6e9d: $3f

Call_06e_6e9e:
    or h                                          ; $6e9e: $b4
    scf                                           ; $6e9f: $37
    ld d, d                                       ; $6ea0: $52
    ld c, b                                       ; $6ea1: $48
    ld e, e                                       ; $6ea2: $5b
    ld h, e                                       ; $6ea3: $63
    call nc, $1f03                                ; $6ea4: $d4 $03 $1f
    and [hl]                                      ; $6ea7: $a6
    ccf                                           ; $6ea8: $3f
    or h                                          ; $6ea9: $b4
    sbc [hl]                                      ; $6eaa: $9e
    ld a, l                                       ; $6eab: $7d
    rla                                           ; $6eac: $17
    ld h, [hl]                                    ; $6ead: $66
    ret nc                                        ; $6eae: $d0

    ld a, d                                       ; $6eaf: $7a
    or $6d                                        ; $6eb0: $f6 $6d
    jp Jump_06e_77e9                              ; $6eb2: $c3 $e9 $77


    ld c, $1f                                     ; $6eb5: $0e $1f
    and [hl]                                      ; $6eb7: $a6
    ccf                                           ; $6eb8: $3f
    or h                                          ; $6eb9: $b4
    rrca                                          ; $6eba: $0f
    sbc [hl]                                      ; $6ebb: $9e
    cp b                                          ; $6ebc: $b8
    db $f4                                        ; $6ebd: $f4
    nop                                           ; $6ebe: $00
    rra                                           ; $6ebf: $1f
    and [hl]                                      ; $6ec0: $a6
    ccf                                           ; $6ec1: $3f
    or h                                          ; $6ec2: $b4
    sbc [hl]                                      ; $6ec3: $9e
    ld a, l                                       ; $6ec4: $7d
    add a                                         ; $6ec5: $87
    dec hl                                        ; $6ec6: $2b
    xor [hl]                                      ; $6ec7: $ae
    adc e                                         ; $6ec8: $8b
    or b                                          ; $6ec9: $b0
    add l                                         ; $6eca: $85
    inc bc                                        ; $6ecb: $03
    rra                                           ; $6ecc: $1f
    and [hl]                                      ; $6ecd: $a6
    ccf                                           ; $6ece: $3f
    or h                                          ; $6ecf: $b4
    rst $10                                       ; $6ed0: $d7
    ld h, c                                       ; $6ed1: $61

Jump_06e_6ed2:
    add sp, -$4b                                  ; $6ed2: $e8 $b5
    ld sp, hl                                     ; $6ed4: $f9
    db $d3                                        ; $6ed5: $d3
    ld a, d                                       ; $6ed6: $7a
    inc de                                        ; $6ed7: $13
    or [hl]                                       ; $6ed8: $b6
    or d                                          ; $6ed9: $b2
    jr jr_06e_6f56                                ; $6eda: $18 $7a

    nop                                           ; $6edc: $00
    sbc a                                         ; $6edd: $9f
    jp nc, $9fcd                                  ; $6ede: $d2 $cd $9f

    sub $1b                                       ; $6ee1: $d6 $1b
    ld c, h                                       ; $6ee3: $4c
    cp l                                          ; $6ee4: $bd
    ld [hl+], a                                   ; $6ee5: $22
    ld b, [hl]                                    ; $6ee6: $46
    ld a, b                                       ; $6ee7: $78
    ld hl, $571d                                  ; $6ee8: $21 $1d $57
    call nz, $2f08                                ; $6eeb: $c4 $08 $2f
    and h                                         ; $6eee: $a4
    ld e, [hl]                                    ; $6eef: $5e
    sbc a                                         ; $6ef0: $9f
    inc e                                         ; $6ef1: $1c
    sub e                                         ; $6ef2: $93
    sbc a                                         ; $6ef3: $9f
    inc bc                                        ; $6ef4: $03
    ld d, a                                       ; $6ef5: $57
    call nz, $2f08                                ; $6ef6: $c4 $08 $2f
    and h                                         ; $6ef9: $a4
    ld e, [hl]                                    ; $6efa: $5e
    sbc a                                         ; $6efb: $9f
    inc e                                         ; $6efc: $1c
    sub e                                         ; $6efd: $93
    sbc a                                         ; $6efe: $9f
    sbc $48                                       ; $6eff: $de $48

Call_06e_6f01:
Jump_06e_6f01:
    ld hl, $8d6d                                  ; $6f01: $21 $6d $8d
    dec e                                         ; $6f04: $1d
    ld d, a                                       ; $6f05: $57
    call nz, $2f08                                ; $6f06: $c4 $08 $2f
    and h                                         ; $6f09: $a4
    ld e, [hl]                                    ; $6f0a: $5e
    sbc $57                                       ; $6f0b: $de $57
    ld d, $c3                                     ; $6f0d: $16 $c3
    rst $08                                       ; $6f0f: $cf
    ld bc, $c457                                  ; $6f10: $01 $57 $c4
    ld [$a42f], sp                                ; $6f13: $08 $2f $a4
    sbc $48                                       ; $6f16: $de $48
    ld hl, $476d                                  ; $6f18: $21 $6d $47
    ld e, h                                       ; $6f1b: $5c
    rst $38                                       ; $6f1c: $ff
    add hl, sp                                    ; $6f1d: $39
    nop                                           ; $6f1e: $00
    ld d, a                                       ; $6f1f: $57
    call nz, $2f08                                ; $6f20: $c4 $08 $2f
    and h                                         ; $6f23: $a4
    ld e, [hl]                                    ; $6f24: $5e
    sbc $e3                                       ; $6f25: $de $e3
    sub h                                         ; $6f27: $94
    ld a, l                                       ; $6f28: $7d
    dec sp                                        ; $6f29: $3b
    reti                                          ; $6f2a: $d9


    inc e                                         ; $6f2b: $1c
    ld d, a                                       ; $6f2c: $57
    call nz, $2f08                                ; $6f2d: $c4 $08 $2f
    and h                                         ; $6f30: $a4
    cp $1c                                        ; $6f31: $fe $1c
    sub a                                         ; $6f33: $97
    sbc e                                         ; $6f34: $9b
    inc bc                                        ; $6f35: $03
    sbc a                                         ; $6f36: $9f
    jp nc, $9fcd                                  ; $6f37: $d2 $cd $9f

    sub $1b                                       ; $6f3a: $d6 $1b
    add hl, bc                                    ; $6f3c: $09
    jp c, $d49b                                   ; $6f3d: $da $9b $d4

    ld c, b                                       ; $6f40: $48
    dec a                                         ; $6f41: $3d
    nop                                           ; $6f42: $00
    scf                                           ; $6f43: $37
    xor c                                         ; $6f44: $a9
    sub c                                         ; $6f45: $91
    cp l                                          ; $6f46: $bd
    or c                                          ; $6f47: $b1
    ld e, h                                       ; $6f48: $5c
    cp b                                          ; $6f49: $b8
    ld d, e                                       ; $6f4a: $53
    db $eb                                        ; $6f4b: $eb
    reti                                          ; $6f4c: $d9


    rst $08                                       ; $6f4d: $cf
    inc c                                         ; $6f4e: $0c
    ld b, d                                       ; $6f4f: $42
    db $ec                                        ; $6f50: $ec
    ld [c], a                                     ; $6f51: $e2
    add hl, sp                                    ; $6f52: $39
    nop                                           ; $6f53: $00
    ld d, a                                       ; $6f54: $57
    db $10                                        ; $6f55: $10

jr_06e_6f56:
    and d                                         ; $6f56: $a2
    sbc [hl]                                      ; $6f57: $9e
    ld a, l                                       ; $6f58: $7d
    cpl                                           ; $6f59: $2f
    rst $38                                       ; $6f5a: $ff
    ld l, c                                       ; $6f5b: $69
    ld a, c                                       ; $6f5c: $79
    ld c, $37                                     ; $6f5d: $0e $37
    xor c                                         ; $6f5f: $a9
    sub c                                         ; $6f60: $91
    push af                                       ; $6f61: $f5
    db $ec                                        ; $6f62: $ec
    ld h, a                                       ; $6f63: $67
    ld b, $21                                     ; $6f64: $06 $21
    halt                                          ; $6f66: $76
    pop af                                        ; $6f67: $f1
    db $f4                                        ; $6f68: $f4
    ld b, [hl]                                    ; $6f69: $46
    ld a, [bc]                                    ; $6f6a: $0a
    ld l, c                                       ; $6f6b: $69
    ld l, e                                       ; $6f6c: $6b
    db $ec                                        ; $6f6d: $ec
    nop                                           ; $6f6e: $00
    ld d, a                                       ; $6f6f: $57
    db $10                                        ; $6f70: $10
    and d                                         ; $6f71: $a2
    sbc [hl]                                      ; $6f72: $9e
    ld a, l                                       ; $6f73: $7d
    cpl                                           ; $6f74: $2f
    rst $38                                       ; $6f75: $ff
    ld l, c                                       ; $6f76: $69
    ld a, c                                       ; $6f77: $79
    ld a, d                                       ; $6f78: $7a
    inc hl                                        ; $6f79: $23
    add l                                         ; $6f7a: $85
    or h                                          ; $6f7b: $b4
    dec [hl]                                      ; $6f7c: $35
    halt                                          ; $6f7d: $76
    nop                                           ; $6f7e: $00
    scf                                           ; $6f7f: $37
    xor c                                         ; $6f80: $a9
    sub c                                         ; $6f81: $91
    db $fd                                        ; $6f82: $fd
    db $f4                                        ; $6f83: $f4
    ld a, [hl]                                    ; $6f84: $7e
    adc l                                         ; $6f85: $8d
    ld c, e                                       ; $6f86: $4b
    ld [c], a                                     ; $6f87: $e2
    nop                                           ; $6f88: $00
    ld d, a                                       ; $6f89: $57
    db $10                                        ; $6f8a: $10
    and d                                         ; $6f8b: $a2
    rst $10                                       ; $6f8c: $d7
    ld h, c                                       ; $6f8d: $61
    add sp, $47                                   ; $6f8e: $e8 $47
    db $fc                                        ; $6f90: $fc
    ld b, e                                       ; $6f91: $43
    dec h                                         ; $6f92: $25
    db $f4                                        ; $6f93: $f4
    nop                                           ; $6f94: $00
    sbc a                                         ; $6f95: $9f
    jp nc, $9fcd                                  ; $6f96: $d2 $cd $9f

    sub $1b                                       ; $6f99: $d6 $1b
    ld c, h                                       ; $6f9b: $4c
    cp l                                          ; $6f9c: $bd

Jump_06e_6f9d:
    or d                                          ; $6f9d: $b2
    ld [hl], d                                    ; $6f9e: $72
    sbc h                                         ; $6f9f: $9c
    inc bc                                        ; $6fa0: $03

Call_06e_6fa1:
    ld d, a                                       ; $6fa1: $57
    ld d, [hl]                                    ; $6fa2: $56
    adc [hl]                                      ; $6fa3: $8e
    ld d, e                                       ; $6fa4: $53
    rst $08                                       ; $6fa5: $cf
    ld e, [hl]                                    ; $6fa6: $5e
    sbc c                                         ; $6fa7: $99
    ld h, h                                       ; $6fa8: $64
    ld [hl], e                                    ; $6fa9: $73
    nop                                           ; $6faa: $00
    ld d, a                                       ; $6fab: $57
    ld d, [hl]                                    ; $6fac: $56
    adc [hl]                                      ; $6fad: $8e
    ld d, e                                       ; $6fae: $53
    cp d                                          ; $6faf: $ba
    cp [hl]                                       ; $6fb0: $be
    dec [hl]                                      ; $6fb1: $35
    ret nc                                        ; $6fb2: $d0

    ld e, [hl]                                    ; $6fb3: $5e
    sbc c                                         ; $6fb4: $99
    db $ec                                        ; $6fb5: $ec
    rst $10                                       ; $6fb6: $d7
    push bc                                       ; $6fb7: $c5
    ld a, e                                       ; $6fb8: $7b
    xor c                                         ; $6fb9: $a9
    rlca                                          ; $6fba: $07
    ld d, a                                       ; $6fbb: $57
    ld d, [hl]                                    ; $6fbc: $56
    adc [hl]                                      ; $6fbd: $8e
    ld d, e                                       ; $6fbe: $53
    rst $08                                       ; $6fbf: $cf
    sbc [hl]                                      ; $6fc0: $9e
    ld h, a                                       ; $6fc1: $67
    jp c, $e169                                   ; $6fc2: $da $69 $e1

    nop                                           ; $6fc5: $00
    ld d, a                                       ; $6fc6: $57
    ld d, [hl]                                    ; $6fc7: $56
    adc [hl]                                      ; $6fc8: $8e
    db $d3                                        ; $6fc9: $d3
    sbc e                                         ; $6fca: $9b
    db $eb                                        ; $6fcb: $eb
    inc [hl]                                      ; $6fcc: $34
    ld [hl], $3a                                  ; $6fcd: $36 $3a
    rlca                                          ; $6fcf: $07
    ld d, a                                       ; $6fd0: $57
    ld d, [hl]                                    ; $6fd1: $56
    adc [hl]                                      ; $6fd2: $8e
    db $d3                                        ; $6fd3: $d3
    ld c, a                                       ; $6fd4: $4f
    ld b, a                                       ; $6fd5: $47
    sbc b                                         ; $6fd6: $98
    inc [hl]                                      ; $6fd7: $34
    adc $01                                       ; $6fd8: $ce $01
    ld d, a                                       ; $6fda: $57
    ld d, [hl]                                    ; $6fdb: $56
    adc [hl]                                      ; $6fdc: $8e
    ld d, e                                       ; $6fdd: $53
    rst $08                                       ; $6fde: $cf
    ld e, [hl]                                    ; $6fdf: $5e
    or a                                          ; $6fe0: $b7
    adc c                                         ; $6fe1: $89
    cp h                                          ; $6fe2: $bc
    ld hl, sp+$3b                                 ; $6fe3: $f8 $3b
    rlca                                          ; $6fe5: $07
    sbc a                                         ; $6fe6: $9f
    jp nc, $9fcd                                  ; $6fe7: $d2 $cd $9f

    sub $1b                                       ; $6fea: $d6 $1b
    add hl, bc                                    ; $6fec: $09
    jp c, Jump_000_26b7                           ; $6fed: $da $b7 $26

    ld b, d                                       ; $6ff0: $42
    rrca                                          ; $6ff1: $0f
    ld l, a                                       ; $6ff2: $6f
    ld c, l                                       ; $6ff3: $4d
    add h                                         ; $6ff4: $84
    or $c6                                        ; $6ff5: $f6 $c6
    ld [hl], d                                    ; $6ff7: $72
    pop hl                                        ; $6ff8: $e1
    ld c, [hl]                                    ; $6ff9: $4e
    dec a                                         ; $6ffa: $3d
    nop                                           ; $6ffb: $00
    ld l, a                                       ; $6ffc: $6f
    ld c, l                                       ; $6ffd: $4d
    add h                                         ; $6ffe: $84
    or $46                                        ; $6fff: $f6 $46
    ld a, [bc]                                    ; $7001: $0a
    ld l, c                                       ; $7002: $69
    ld l, e                                       ; $7003: $6b
    adc h                                         ; $7004: $8c
    ld a, d                                       ; $7005: $7a
    nop                                           ; $7006: $00
    ld l, a                                       ; $7007: $6f
    ld c, l                                       ; $7008: $4d
    add h                                         ; $7009: $84
    or $53                                        ; $700a: $f6 $53
    ld [$c8d2], a                                 ; $700c: $ea $d2 $c8
    inc e                                         ; $700f: $1c
    xor c                                         ; $7010: $a9

jr_06e_7011:
    rlca                                          ; $7011: $07
    ld l, a                                       ; $7012: $6f
    ld c, l                                       ; $7013: $4d
    add h                                         ; $7014: $84
    or $46                                        ; $7015: $f6 $46
    ld a, [bc]                                    ; $7017: $0a
    ld l, c                                       ; $7018: $69
    dec sp                                        ; $7019: $3b
    ld [c], a                                     ; $701a: $e2
    ld a, [$0f43]                                 ; $701b: $fa $43 $0f
    ld l, a                                       ; $701e: $6f
    ld c, l                                       ; $701f: $4d
    add h                                         ; $7020: $84
    sub $b3                                       ; $7021: $d6 $b3
    rst $10                                       ; $7023: $d7
    ld l, l                                       ; $7024: $6d
    ld [hl+], a                                   ; $7025: $22
    cpl                                           ; $7026: $2f
    cp $ce                                        ; $7027: $fe $ce
    ld bc, $4d6f                                  ; $7029: $01 $6f $4d
    add h                                         ; $702c: $84
    or $e7                                        ; $702d: $f6 $e7
    cp b                                          ; $702f: $b8
    inc e                                         ; $7030: $1c
    db $f4                                        ; $7031: $f4
    nop                                           ; $7032: $00
    rra                                           ; $7033: $1f
    ld l, $8d                                     ; $7034: $2e $8d
    xor b                                         ; $7036: $a8
    ld h, a                                       ; $7037: $67
    xor a                                         ; $7038: $af
    ld hl, $16d2                                  ; $7039: $21 $d2 $16
    or $9e                                        ; $703c: $f6 $9e
    xor e                                         ; $703e: $ab
    sbc h                                         ; $703f: $9c
    dec e                                         ; $7040: $1d
    halt                                          ; $7041: $76
    nop                                           ; $7042: $00
    ld d, a                                       ; $7043: $57
    rst $00                                       ; $7044: $c7
    add d                                         ; $7045: $82
    ld l, l                                       ; $7046: $6d
    ld c, l                                       ; $7047: $4d
    dec a                                         ; $7048: $3d
    or h                                          ; $7049: $b4
    sub a                                         ; $704a: $97
    db $d3                                        ; $704b: $d3
    ld c, $3d                                     ; $704c: $0e $3d
    nop                                           ; $704e: $00
    rra                                           ; $704f: $1f
    ld l, $8d                                     ; $7050: $2e $8d
    xor b                                         ; $7052: $a8
    ld h, a                                       ; $7053: $67
    rst $08                                       ; $7054: $cf
    db $ed                                        ; $7055: $ed
    rrca                                          ; $7056: $0f
    dec a                                         ; $7057: $3d
    nop                                           ; $7058: $00
    rra                                           ; $7059: $1f
    xor h                                         ; $705a: $ac
    ld e, b                                       ; $705b: $58
    rst $08                                       ; $705c: $cf
    ld e, [hl]                                    ; $705d: $5e
    ld b, e                                       ; $705e: $43
    ld c, [hl]                                    ; $705f: $4e
    sub c                                         ; $7060: $91
    ld sp, hl                                     ; $7061: $f9
    ld [c], a                                     ; $7062: $e2
    rst $28                                       ; $7063: $ef
    inc e                                         ; $7064: $1c
    rst $10                                       ; $7065: $d7
    ld hl, $b227                                  ; $7066: $21 $27 $b2
    sbc [hl]                                      ; $7069: $9e
    dec a                                         ; $706a: $3d

Call_06e_706b:
    adc a                                         ; $706b: $8f
    dec hl                                        ; $706c: $2b
    sub b                                         ; $706d: $90
    jr jr_06e_7011                                ; $706e: $18 $a1

    rlca                                          ; $7070: $07
    rst $10                                       ; $7071: $d7
    db $10                                        ; $7072: $10
    and d                                         ; $7073: $a2
    rst $20                                       ; $7074: $e7
    ld a, [de]                                    ; $7075: $1a
    cp c                                          ; $7076: $b9
    jp $d70e                                      ; $7077: $c3 $0e $d7


    ld l, c                                       ; $707a: $69
    daa                                           ; $707b: $27
    cp b                                          ; $707c: $b8
    sub l                                         ; $707d: $95
    push bc                                       ; $707e: $c5
    ld [hl], e                                    ; $707f: $73
    nop                                           ; $7080: $00
    sub a                                         ; $7081: $97
    ld [hl], e                                    ; $7082: $73
    cp h                                          ; $7083: $bc
    db $db                                        ; $7084: $db
    ld c, a                                       ; $7085: $4f
    sbc h                                         ; $7086: $9c
    inc bc                                        ; $7087: $03
    rst $10                                       ; $7088: $d7
    rst $20                                       ; $7089: $e7
    ld [c], a                                     ; $708a: $e2
    rst $28                                       ; $708b: $ef
    call nc, Call_06e_57b3                        ; $708c: $d4 $b3 $57
    sub d                                         ; $708f: $92
    pop hl                                        ; $7090: $e1
    nop                                           ; $7091: $00
    rst $28                                       ; $7092: $ef
    ld a, [de]                                    ; $7093: $1a
    or d                                          ; $7094: $b2
    ld h, a                                       ; $7095: $67
    xor a                                         ; $7096: $af
    rst $08                                       ; $7097: $cf
    push bc                                       ; $7098: $c5
    rst $18                                       ; $7099: $df
    xor c                                         ; $709a: $a9
    ld h, a                                       ; $709b: $67
    xor a                                         ; $709c: $af
    inc h                                         ; $709d: $24
    jp $d701                                      ; $709e: $c3 $01 $d7


    rst $20                                       ; $70a1: $e7
    ld [c], a                                     ; $70a2: $e2
    rst $28                                       ; $70a3: $ef
    db $f4                                        ; $70a4: $f4
    ld a, [hl+]                                   ; $70a5: $2a
    ld c, l                                       ; $70a6: $4d
    cp b                                          ; $70a7: $b8
    db $e4                                        ; $70a8: $e4
    ld a, [c]                                     ; $70a9: $f2
    jr c, jr_06e_70ac                             ; $70aa: $38 $00

jr_06e_70ac:
    rst $10                                       ; $70ac: $d7
    rst $20                                       ; $70ad: $e7
    ld [c], a                                     ; $70ae: $e2
    rst $28                                       ; $70af: $ef
    db $f4                                        ; $70b0: $f4
    and $8a                                       ; $70b1: $e6 $8a
    ld [hl], b                                    ; $70b3: $70
    db $eb                                        ; $70b4: $eb
    sub $01                                       ; $70b5: $d6 $01
    rst $10                                       ; $70b7: $d7
    rst $20                                       ; $70b8: $e7
    ld [c], a                                     ; $70b9: $e2
    rst $28                                       ; $70ba: $ef
    db $f4                                        ; $70bb: $f4
    ld e, h                                       ; $70bc: $5c
    db $e3                                        ; $70bd: $e3
    ld [hl], d                                    ; $70be: $72
    ld l, c                                       ; $70bf: $69
    ld b, a                                       ; $70c0: $47
    adc [hl]                                      ; $70c1: $8e
    inc a                                         ; $70c2: $3c
    nop                                           ; $70c3: $00
    rst $28                                       ; $70c4: $ef
    ld a, [de]                                    ; $70c5: $1a
    or d                                          ; $70c6: $b2
    ld h, a                                       ; $70c7: $67
    xor a                                         ; $70c8: $af
    rst $08                                       ; $70c9: $cf
    push bc                                       ; $70ca: $c5
    rst $18                                       ; $70cb: $df
    jp hl                                         ; $70cc: $e9


    cp c                                          ; $70cd: $b9
    add $e5                                       ; $70ce: $c6 $e5
    jp nc, Jump_000_1c8e                          ; $70d0: $d2 $8e $1c

    ld a, c                                       ; $70d3: $79

Jump_06e_70d4:
    nop                                           ; $70d4: $00
    ld d, a                                       ; $70d5: $57
    ld h, $7f                                     ; $70d6: $26 $7f
    sbc a                                         ; $70d8: $9f
    ld [hl], d                                    ; $70d9: $72
    sbc h                                         ; $70da: $9c
    ld a, d                                       ; $70db: $7a
    or $1d                                        ; $70dc: $f6 $1d
    add e                                         ; $70de: $83
    jp z, Jump_000_03d1                           ; $70df: $ca $d1 $03

    ld d, a                                       ; $70e2: $57
    or b                                          ; $70e3: $b0
    ld a, e                                       ; $70e4: $7b
    ld l, $fb                                     ; $70e5: $2e $fb
    sbc l                                         ; $70e7: $9d
    cp [hl]                                       ; $70e8: $be
    dec a                                         ; $70e9: $3d
    ld b, d                                       ; $70ea: $42
    dec bc                                        ; $70eb: $0b
    cp $73                                        ; $70ec: $fe $73
    ccf                                           ; $70ee: $3f
    nop                                           ; $70ef: $00
    ld d, a                                       ; $70f0: $57
    or b                                          ; $70f1: $b0
    ld a, e                                       ; $70f2: $7b
    ld l, $fb                                     ; $70f3: $2e $fb
    sbc l                                         ; $70f5: $9d
    ld a, d                                       ; $70f6: $7a
    or $ca                                        ; $70f7: $f6 $ca
    ld [$078d], sp                                ; $70f9: $08 $8d $07
    ld d, a                                       ; $70fc: $57
    or b                                          ; $70fd: $b0
    ld a, e                                       ; $70fe: $7b
    ld l, $fb                                     ; $70ff: $2e $fb
    sbc l                                         ; $7101: $9d
    ld a, d                                       ; $7102: $7a
    or $5c                                        ; $7103: $f6 $5c
    inc hl                                        ; $7105: $23
    or d                                          ; $7106: $b2
    ld a, b                                       ; $7107: $78
    ld c, $57                                     ; $7108: $0e $57
    or b                                          ; $710a: $b0
    ld a, e                                       ; $710b: $7b
    ld l, $fb                                     ; $710c: $2e $fb
    sbc l                                         ; $710e: $9d
    ld a, d                                       ; $710f: $7a
    or $ba                                        ; $7110: $f6 $ba
    ld hl, $00e2                                  ; $7112: $21 $e2 $00
    ld d, a                                       ; $7115: $57
    or b                                          ; $7116: $b0
    ld a, e                                       ; $7117: $7b
    ld l, $fb                                     ; $7118: $2e $fb
    sbc l                                         ; $711a: $9d
    ld e, [hl]                                    ; $711b: $5e
    ld c, [hl]                                    ; $711c: $4e
    ld [hl], c                                    ; $711d: $71
    inc e                                         ; $711e: $1c
    ld l, a                                       ; $711f: $6f
    pop de                                        ; $7120: $d1
    xor a                                         ; $7121: $af
    adc e                                         ; $7122: $8b
    ld [hl], e                                    ; $7123: $73
    nop                                           ; $7124: $00

jr_06e_7125:
    rra                                           ; $7125: $1f
    xor [hl]                                      ; $7126: $ae
    cp a                                          ; $7127: $bf
    ld c, l                                       ; $7128: $4d
    dec a                                         ; $7129: $3d
    ei                                            ; $712a: $fb
    ld c, $57                                     ; $712b: $0e $57
    ld e, h                                       ; $712d: $5c
    rla                                           ; $712e: $17
    ld b, a                                       ; $712f: $47
    rrca                                          ; $7130: $0f
    rra                                           ; $7131: $1f
    xor [hl]                                      ; $7132: $ae

Call_06e_7133:
    cp a                                          ; $7133: $bf
    adc l                                         ; $7134: $8d
    or $5c                                        ; $7135: $f6 $5c
    push hl                                       ; $7137: $e5
    db $ec                                        ; $7138: $ec
    jr nc, jr_06e_7125                            ; $7139: $30 $ea

    ld bc, $ccef                                  ; $713b: $01 $ef $cc
    cp [hl]                                       ; $713e: $be
    and [hl]                                      ; $713f: $a6
    sbc a                                         ; $7140: $9f
    reti                                          ; $7141: $d9


    ld a, [bc]                                    ; $7142: $0a
    rst $30                                       ; $7143: $f7
    dec h                                         ; $7144: $25
    sub e                                         ; $7145: $93
    ld e, $ef                                     ; $7146: $1e $ef
    call z, $a6be                                 ; $7148: $cc $be $a6
    rst $10                                       ; $714b: $d7
    ld [hl], b                                    ; $714c: $70
    ld e, d                                       ; $714d: $5a
    rlca                                          ; $714e: $07
    ld d, a                                       ; $714f: $57
    ldh [rBCPD], a                                ; $7150: $e0 $69
    ld a, c                                       ; $7152: $79
    ld c, $1f                                     ; $7153: $0e $1f
    xor [hl]                                      ; $7155: $ae
    cp a                                          ; $7156: $bf
    ld c, l                                       ; $7157: $4d
    dec a                                         ; $7158: $3d
    ld a, e                                       ; $7159: $7b
    db $dd                                        ; $715a: $dd
    ld [hl], b                                    ; $715b: $70
    add d                                         ; $715c: $82
    ld e, $37                                     ; $715d: $1e $37
    ld h, c                                       ; $715f: $61
    dec hl                                        ; $7160: $2b
    adc e                                         ; $7161: $8b
    ld d, c                                       ; $7162: $51
    ccf                                           ; $7163: $3f
    cp l                                          ; $7164: $bd
    ld a, [bc]                                    ; $7165: $0a
    or e                                          ; $7166: $b3
    sbc a                                         ; $7167: $9f
    ld c, $37                                     ; $7168: $0e $37
    and c                                         ; $716a: $a1
    ld a, [hl-]                                   ; $716b: $3a
    ret                                           ; $716c: $c9


    ret nc                                        ; $716d: $d0

    dec hl                                        ; $716e: $2b
    db $e3                                        ; $716f: $e3
    sub d                                         ; $7170: $92
    dec sp                                        ; $7171: $3b
    nop                                           ; $7172: $00
    ld d, a                                       ; $7173: $57
    add $31                                       ; $7174: $c6 $31
    or $99                                        ; $7176: $f6 $99
    rla                                           ; $7178: $17
    sbc [hl]                                      ; $7179: $9e
    ld a, [hl-]                                   ; $717a: $3a
    nop                                           ; $717b: $00
    scf                                           ; $717c: $37
    call nz, Call_06e_7133                        ; $717d: $c4 $33 $71
    push hl                                       ; $7180: $e5
    ld d, e                                       ; $7181: $53
    ld l, a                                       ; $7182: $6f
    ld b, h                                       ; $7183: $44
    ret c                                         ; $7184: $d8

    ld bc, $2d1f                                  ; $7185: $01 $1f $2d
    daa                                           ; $7188: $27
    ld c, h                                       ; $7189: $4c
    jp c, $9e67                                   ; $718a: $da $67 $9e

    ld a, d                                       ; $718d: $7a
    ld [$03a9], a                                 ; $718e: $ea $a9 $03
    sbc a                                         ; $7191: $9f
    ld h, d                                       ; $7192: $62
    db $dd                                        ; $7193: $dd
    xor [hl]                                      ; $7194: $ae
    ld h, a                                       ; $7195: $67
    cpl                                           ; $7196: $2f
    xor e                                         ; $7197: $ab
    add sp, $1e                                   ; $7198: $e8 $1e
    rst $08                                       ; $719a: $cf
    ld a, l                                       ; $719b: $7d
    ld c, $97                                     ; $719c: $0e $97
    push hl                                       ; $719e: $e5
    ld a, l                                       ; $719f: $7d
    ld a, c                                       ; $71a0: $79
    push bc                                       ; $71a1: $c5
    jp hl                                         ; $71a2: $e9


Call_06e_71a3:
    add a                                         ; $71a3: $87
    ld c, e                                       ; $71a4: $4b

Call_06e_71a5:
Jump_06e_71a5:
    adc [hl]                                      ; $71a5: $8e
    adc h                                         ; $71a6: $8c
    sub e                                         ; $71a7: $93
    rst $20                                       ; $71a8: $e7
    nop                                           ; $71a9: $00
    sbc a                                         ; $71aa: $9f
    ld e, e                                       ; $71ab: $5b
    ld e, h                                       ; $71ac: $5c
    daa                                           ; $71ad: $27
    db $f4                                        ; $71ae: $f4
    ld b, $25                                     ; $71af: $06 $25
    ld c, $6f                                     ; $71b1: $0e $6f
    xor a                                         ; $71b3: $af
    ld [$e797], sp                                ; $71b4: $08 $97 $e7
    nop                                           ; $71b7: $00
    rra                                           ; $71b8: $1f
    adc [hl]                                      ; $71b9: $8e
    ld h, [hl]                                    ; $71ba: $66
    inc e                                         ; $71bb: $1c
    sbc a                                         ; $71bc: $9f
    ld h, d                                       ; $71bd: $62
    db $dd                                        ; $71be: $dd
    xor [hl]                                      ; $71bf: $ae
    ld h, a                                       ; $71c0: $67
    xor a                                         ; $71c1: $af
    ld hl, $0b7b                                  ; $71c2: $21 $7b $0b
    ld a, $8d                                     ; $71c5: $3e $8d
    pop hl                                        ; $71c7: $e1
    nop                                           ; $71c8: $00

Jump_06e_71c9:
    rst $10                                       ; $71c9: $d7
    cp c                                          ; $71ca: $b9
    or e                                          ; $71cb: $b3
    sbc [hl]                                      ; $71cc: $9e
    cp l                                          ; $71cd: $bd
    ld l, h                                       ; $71ce: $6c
    jr nc, jr_06e_7209                            ; $71cf: $30 $38

    pop hl                                        ; $71d1: $e1
    dec a                                         ; $71d2: $3d
    dec bc                                        ; $71d3: $0b
    rlca                                          ; $71d4: $07
    rst $20                                       ; $71d5: $e7
    ld a, [de]                                    ; $71d6: $1a
    xor [hl]                                      ; $71d7: $ae
    inc l                                         ; $71d8: $2c
    ld e, $ad                                     ; $71d9: $1e $ad
    ld h, a                                       ; $71db: $67
    xor a                                         ; $71dc: $af
    adc a                                         ; $71dd: $8f
    ret                                           ; $71de: $c9


    ld a, c                                       ; $71df: $79
    ld [c], a                                     ; $71e0: $e2
    ld e, h                                       ; $71e1: $5c
    jp $c595                                      ; $71e2: $c3 $95 $c5


    ld [hl], e                                    ; $71e5: $73
    nop                                           ; $71e6: $00
    rst $10                                       ; $71e7: $d7
    rst $28                                       ; $71e8: $ef
    xor c                                         ; $71e9: $a9
    ld h, a                                       ; $71ea: $67
    xor a                                         ; $71eb: $af
    rst $08                                       ; $71ec: $cf
    cp $9f                                        ; $71ed: $fe $9f
    inc bc                                        ; $71ef: $03
    rra                                           ; $71f0: $1f
    rst $28                                       ; $71f1: $ef
    ld [c], a                                     ; $71f2: $e2
    pop de                                        ; $71f3: $d1
    ld a, d                                       ; $71f4: $7a
    or $2d                                        ; $71f5: $f6 $2d
    ld [$9b24], a                                 ; $71f7: $ea $24 $9b
    inc bc                                        ; $71fa: $03
    ld d, a                                       ; $71fb: $57
    call nz, $644b                                ; $71fc: $c4 $4b $64
    xor h                                         ; $71ff: $ac
    ld h, a                                       ; $7200: $67
    rst $18                                       ; $7201: $df
    ld e, d                                       ; $7202: $5a
    ld a, [c]                                     ; $7203: $f2
    ld e, $cb                                     ; $7204: $1e $cb
    ld l, e                                       ; $7206: $6b
    ld c, $d7                                     ; $7207: $0e $d7

jr_06e_7209:
    adc l                                         ; $7209: $8d
    ld a, [bc]                                    ; $720a: $0a
    xor l                                         ; $720b: $ad
    ld h, a                                       ; $720c: $67
    ld l, a                                       ; $720d: $6f
    ret nc                                        ; $720e: $d0

    ld b, d                                       ; $720f: $42
    and $c8                                       ; $7210: $e6 $c8
    inc bc                                        ; $7212: $03
    rst $10                                       ; $7213: $d7
    jp hl                                         ; $7214: $e9


    dec c                                         ; $7215: $0d
    ld a, l                                       ; $7216: $7d
    adc e                                         ; $7217: $8b
    or a                                          ; $7218: $b7
    rlca                                          ; $7219: $07
    halt                                          ; $721a: $76
    nop                                           ; $721b: $00
    ld d, a                                       ; $721c: $57
    call nz, $644b                                ; $721d: $c4 $4b $64
    db $ec                                        ; $7220: $ec
    ld [hl], l                                    ; $7221: $75
    ld b, e                                       ; $7222: $43
    inc h                                         ; $7223: $24
    db $fc                                        ; $7224: $fc
    call nc, $9fb3                                ; $7225: $d4 $b3 $9f
    rst $20                                       ; $7228: $e7
    dec h                                         ; $7229: $25
    rst $28                                       ; $722a: $ef
    or c                                          ; $722b: $b1
    cp h                                          ; $722c: $bc
    and $00                                       ; $722d: $e6 $00
    sub a                                         ; $722f: $97
    push hl                                       ; $7230: $e5
    ld a, l                                       ; $7231: $7d
    ld a, c                                       ; $7232: $79
    push bc                                       ; $7233: $c5
    jp hl                                         ; $7234: $e9


    add a                                         ; $7235: $87
    ld [$cfb9], sp                                ; $7236: $08 $b9 $cf
    ld bc, $e597                                  ; $7239: $01 $97 $e5
    ld a, l                                       ; $723c: $7d
    ld a, c                                       ; $723d: $79
    push bc                                       ; $723e: $c5
    add hl, sp                                    ; $723f: $39
    nop                                           ; $7240: $00
    rst $28                                       ; $7241: $ef
    ld [hl], b                                    ; $7242: $70
    ld a, l                                       ; $7243: $7d
    ld a, a                                       ; $7244: $7f
    cpl                                           ; $7245: $2f
    ld l, a                                       ; $7246: $6f
    xor a                                         ; $7247: $af
    inc l                                         ; $7248: $2c
    ld e, $3d                                     ; $7249: $1e $3d
    nop                                           ; $724b: $00
    scf                                           ; $724c: $37
    db $10                                        ; $724d: $10
    adc [hl]                                      ; $724e: $8e
    sub $b3                                       ; $724f: $d6 $b3
    ld d, a                                       ; $7251: $57
    call nz, Call_06e_6723                        ; $7252: $c4 $23 $67
    ld b, a                                       ; $7255: $47
    db $e4                                        ; $7256: $e4
    ld bc, $7b97                                  ; $7257: $01 $97 $7b
    adc l                                         ; $725a: $8d
    cp e                                          ; $725b: $bb
    ld a, b                                       ; $725c: $78
    xor h                                         ; $725d: $ac
    rst $28                                       ; $725e: $ef
    adc [hl]                                      ; $725f: $8e
    ld b, e                                       ; $7260: $43
    dec a                                         ; $7261: $3d
    ld a, e                                       ; $7262: $7b
    dec c                                         ; $7263: $0d
    ld a, [hl+]                                   ; $7264: $2a
    ld h, c                                       ; $7265: $61
    rlca                                          ; $7266: $07
    sbc a                                         ; $7267: $9f
    adc l                                         ; $7268: $8d
    push bc                                       ; $7269: $c5
    sub l                                         ; $726a: $95
    push bc                                       ; $726b: $c5
    ret nc                                        ; $726c: $d0

    ld a, d                                       ; $726d: $7a
    or $b2                                        ; $726e: $f6 $b2
    ldh a, [rNR34]                                ; $7270: $f0 $1e

Call_06e_7272:
    pop hl                                        ; $7272: $e1
    jr jr_06e_7283                                ; $7273: $18 $0e

    ld l, a                                       ; $7275: $6f
    call Call_06e_5a3e                            ; $7276: $cd $3e $5a
    rst $08                                       ; $7279: $cf
    ld e, [hl]                                    ; $727a: $5e
    pop bc                                        ; $727b: $c1
    xor $b9                                       ; $727c: $ee $b9
    db $ec                                        ; $727e: $ec
    ld [hl], a                                    ; $727f: $77
    ld c, $37                                     ; $7280: $0e $37
    ld h, c                                       ; $7282: $61

jr_06e_7283:
    dec hl                                        ; $7283: $2b
    adc e                                         ; $7284: $8b
    and c                                         ; $7285: $a1
    push af                                       ; $7286: $f5
    db $ec                                        ; $7287: $ec
    push hl                                       ; $7288: $e5
    ld e, l                                       ; $7289: $5d
    ld [c], a                                     ; $728a: $e2
    ld h, d                                       ; $728b: $62
    cp d                                          ; $728c: $ba
    ld a, l                                       ; $728d: $7d
    nop                                           ; $728e: $00
    rst $20                                       ; $728f: $e7
    cp $c7                                        ; $7290: $fe $c7
    ld [hl], l                                    ; $7292: $75
    and d                                         ; $7293: $a2
    ld a, [bc]                                    ; $7294: $0a
    ld a, d                                       ; $7295: $7a
    cp c                                          ; $7296: $b9
    ld d, a                                       ; $7297: $57
    add $d2                                       ; $7298: $c6 $d2
    rst $30                                       ; $729a: $f7
    jr c, jr_06e_729d                             ; $729b: $38 $00

jr_06e_729d:
    rst $10                                       ; $729d: $d7
    and c                                         ; $729e: $a1
    jp z, $3086                                   ; $729f: $ca $86 $30

    ld [hl], h                                    ; $72a2: $74
    ld a, [$e516]                                 ; $72a3: $fa $16 $e5
    db $f4                                        ; $72a6: $f4
    db $ed                                        ; $72a7: $ed
    add l                                         ; $72a8: $85
    db $d3                                        ; $72a9: $d3
    ld h, h                                       ; $72aa: $64
    db $ec                                        ; $72ab: $ec
    rlca                                          ; $72ac: $07
    ld d, a                                       ; $72ad: $57
    add [hl]                                      ; $72ae: $86
    cp e                                          ; $72af: $bb
    ld a, b                                       ; $72b0: $78
    ld a, [$dce9]                                 ; $72b1: $fa $e9 $dc
    sbc d                                         ; $72b4: $9a
    inc bc                                        ; $72b5: $03
    rst $10                                       ; $72b6: $d7
    add e                                         ; $72b7: $83
    db $eb                                        ; $72b8: $eb
    reti                                          ; $72b9: $d9


    rrca                                          ; $72ba: $0f
    rst $10                                       ; $72bb: $d7
    xor l                                         ; $72bc: $ad
    add hl, sp                                    ; $72bd: $39
    nop                                           ; $72be: $00
    ld d, a                                       ; $72bf: $57
    ld h, b                                       ; $72c0: $60
    rst $38                                       ; $72c1: $ff
    rst $18                                       ; $72c2: $df
    add hl, sp                                    ; $72c3: $39
    nop                                           ; $72c4: $00
    rst $28                                       ; $72c5: $ef
    ld h, d                                       ; $72c6: $62
    ld e, a                                       ; $72c7: $5f
    ld e, c                                       ; $72c8: $59
    adc h                                         ; $72c9: $8c
    inc bc                                        ; $72ca: $03
    rst $10                                       ; $72cb: $d7
    sbc c                                         ; $72cc: $99
    ld d, c                                       ; $72cd: $51
    rst $08                                       ; $72ce: $cf
    ld e, [hl]                                    ; $72cf: $5e
    cp $53                                        ; $72d0: $fe $53
    and e                                         ; $72d2: $a3
    and l                                         ; $72d3: $a5
    db $db                                        ; $72d4: $db
    rlca                                          ; $72d5: $07
    scf                                           ; $72d6: $37
    ld h, $34                                     ; $72d7: $26 $34
    ld hl, sp-$4f                                 ; $72d9: $f8 $b1
    ld a, d                                       ; $72db: $7a
    or $1d                                        ; $72dc: $f6 $1d
    ld l, d                                       ; $72de: $6a
    add h                                         ; $72df: $84
    ld e, $1f                                     ; $72e0: $1e $1f
    rst $30                                       ; $72e2: $f7
    cp d                                          ; $72e3: $ba
    adc l                                         ; $72e4: $8d
    adc b                                         ; $72e5: $88
    ld de, $7b7d                                  ; $72e6: $11 $7d $7b
    dec b                                         ; $72e9: $05
    db $db                                        ; $72ea: $db
    sbc d                                         ; $72eb: $9a
    inc bc                                        ; $72ec: $03
    scf                                           ; $72ed: $37
    cp c                                          ; $72ee: $b9
    adc e                                         ; $72ef: $8b
    pop de                                        ; $72f0: $d1
    ld [hl], a                                    ; $72f1: $77
    dec c                                         ; $72f2: $0d
    ld a, a                                       ; $72f3: $7f
    ld b, h                                       ; $72f4: $44
    call nc, $e7a3                                ; $72f5: $d4 $a3 $e7
    ld a, [hl+]                                   ; $72f8: $2a
    ld h, a                                       ; $72f9: $67
    rst $00                                       ; $72fa: $c7
    ld bc, $ac1f                                  ; $72fb: $01 $1f $ac
    ld e, b                                       ; $72fe: $58
    rst $08                                       ; $72ff: $cf
    sbc $a4                                       ; $7300: $de $a4
    ld e, c                                       ; $7302: $59
    ld a, [hl-]                                   ; $7303: $3a
    ld b, c                                       ; $7304: $41
    rrca                                          ; $7305: $0f
    rst $10                                       ; $7306: $d7
    add [hl]                                      ; $7307: $86
    ld e, $f5                                     ; $7308: $1e $f5
    db $ec                                        ; $730a: $ec
    di                                            ; $730b: $f3
    ld c, a                                       ; $730c: $4f
    push af                                       ; $730d: $f5
    ld a, [hl-]                                   ; $730e: $3a
    or e                                          ; $730f: $b3
    and h                                         ; $7310: $a4
    ld e, $6f                                     ; $7311: $1e $6f
    ld h, c                                       ; $7313: $61
    cp a                                          ; $7314: $bf
    sub a                                         ; $7315: $97
    jp c, $930f                                   ; $7316: $da $0f $93

    ld e, e                                       ; $7319: $5b
    ld a, c                                       ; $731a: $79
    ld [hl], h                                    ; $731b: $74
    db $f4                                        ; $731c: $f4
    nop                                           ; $731d: $00
    rst $10                                       ; $731e: $d7
    adc l                                         ; $731f: $8d
    jp z, Jump_06e_591c                           ; $7320: $ca $1c $59

    rst $08                                       ; $7323: $cf
    ld a, [hl]                                    ; $7324: $7e
    add h                                         ; $7325: $84
    adc b                                         ; $7326: $88
    db $fd                                        ; $7327: $fd
    nop                                           ; $7328: $00
    rst $28                                       ; $7329: $ef
    ld h, $98                                     ; $732a: $26 $98
    rst $00                                       ; $732c: $c7
    inc de                                        ; $732d: $13
    ld d, a                                       ; $732e: $57
    call nz, $8fe9                                ; $732f: $c4 $e9 $8f
    ld a, [$55e9]                                 ; $7332: $fa $e9 $55
    sbc h                                         ; $7335: $9c
    ld l, h                                       ; $7336: $6c
    ld sp, hl                                     ; $7337: $f9
    inc bc                                        ; $7338: $03
    rst $10                                       ; $7339: $d7
    jp hl                                         ; $733a: $e9


    dec c                                         ; $733b: $0d
    ld a, l                                       ; $733c: $7d
    ld h, a                                       ; $733d: $67
    db $ed                                        ; $733e: $ed
    and e                                         ; $733f: $a3
    inc hl                                        ; $7340: $23
    jp nz, Jump_000_007e                          ; $7341: $c2 $7e $00

    rra                                           ; $7344: $1f
    jp nc, Jump_06e_6d09                          ; $7345: $d2 $09 $6d

    or $03                                        ; $7348: $f6 $03
    rst $20                                       ; $734a: $e7
    ld e, c                                       ; $734b: $59
    ld l, $b9                                     ; $734c: $2e $b9
    ld c, a                                       ; $734e: $4f
    ld a, b                                       ; $734f: $78
    pop bc                                        ; $7350: $c1
    cpl                                           ; $7351: $2f
    call nc, $efb3                                ; $7352: $d4 $b3 $ef
    push hl                                       ; $7355: $e5
    sub e                                         ; $7356: $93
    pop de                                        ; $7357: $d1
    cpl                                           ; $7358: $2f
    and $48                                       ; $7359: $e6 $48
    dec a                                         ; $735b: $3d
    nop                                           ; $735c: $00
    rst $28                                       ; $735d: $ef
    db $ec                                        ; $735e: $ec
    ld c, b                                       ; $735f: $48
    ld de, $5707                                  ; $7360: $11 $07 $57
    call nz, $b3f8                                ; $7363: $c4 $f8 $b3
    scf                                           ; $7366: $37
    rlca                                          ; $7367: $07
    ld a, [hl]                                    ; $7368: $7e
    inc c                                         ; $7369: $0c
    rlca                                          ; $736a: $07
    scf                                           ; $736b: $37
    sub [hl]                                      ; $736c: $96
    call c, Call_000_07a9                         ; $736d: $dc $a9 $07
    ld d, a                                       ; $7370: $57
    sbc b                                         ; $7371: $98
    inc hl                                        ; $7372: $23
    ld [hl], a                                    ; $7373: $77
    ld sp, $d9ea                                  ; $7374: $31 $ea $d9
    dec hl                                        ; $7377: $2b

jr_06e_7378:
    ret                                           ; $7378: $c9


    ld [hl], b                                    ; $7379: $70
    nop                                           ; $737a: $00
    ld d, a                                       ; $737b: $57
    db $10                                        ; $737c: $10
    and d                                         ; $737d: $a2
    ld e, $7d                                     ; $737e: $1e $7d
    cpl                                           ; $7380: $2f
    rst $38                                       ; $7381: $ff
    sub a                                         ; $7382: $97
    ld l, $e1                                     ; $7383: $2e $e1
    jp c, $8797                                   ; $7385: $da $97 $87

    rst $20                                       ; $7388: $e7
    ld bc, $c657                                  ; $7389: $01 $57 $c6
    add hl, bc                                    ; $738c: $09
    ld d, a                                       ; $738d: $57
    add $c5                                       ; $738e: $c6 $c5
    rst $18                                       ; $7390: $df
    xor c                                         ; $7391: $a9
    ld h, a                                       ; $7392: $67
    xor a                                         ; $7393: $af
    ret nz                                        ; $7394: $c0

    ld [hl+], a                                   ; $7395: $22
    db $f4                                        ; $7396: $f4
    nop                                           ; $7397: $00
    scf                                           ; $7398: $37
    ld b, a                                       ; $7399: $47
    sbc [hl]                                      ; $739a: $9e
    dec [hl]                                      ; $739b: $35
    rst $38                                       ; $739c: $ff
    ld c, [hl]                                    ; $739d: $4e
    jp Jump_06e_4d51                              ; $739e: $c3 $51 $4d


    xor e                                         ; $73a1: $ab
    sbc c                                         ; $73a2: $99
    ld e, c                                       ; $73a3: $59
    sbc h                                         ; $73a4: $9c
    ld e, h                                       ; $73a5: $5c
    ld d, a                                       ; $73a6: $57
    and h                                         ; $73a7: $a4
    cp e                                          ; $73a8: $bb
    ld [hl], h                                    ; $73a9: $74
    nop                                           ; $73aa: $00
    ld d, a                                       ; $73ab: $57
    ld h, b                                       ; $73ac: $60
    ld de, $ecf5                                  ; $73ad: $11 $f5 $ec
    ld e, e                                       ; $73b0: $5b
    sub [hl]                                      ; $73b1: $96
    ld l, [hl]                                    ; $73b2: $6e
    ld b, c                                       ; $73b3: $41
    res 7, [hl]                                   ; $73b4: $cb $be
    ld h, l                                       ; $73b6: $65
    jp hl                                         ; $73b7: $e9


    sub $68                                       ; $73b8: $d6 $68
    rst $18                                       ; $73ba: $df
    add c                                         ; $73bb: $81
    dec de                                        ; $73bc: $1b
    dec e                                         ; $73bd: $1d
    dec a                                         ; $73be: $3d
    nop                                           ; $73bf: $00
    sbc a                                         ; $73c0: $9f
    dec hl                                        ; $73c1: $2b
    xor h                                         ; $73c2: $ac
    call nc, $bec8                                ; $73c3: $d4 $c8 $be
    rla                                           ; $73c6: $17
    jp hl                                         ; $73c7: $e9


    sbc $38                                       ; $73c8: $de $38
    nop                                           ; $73ca: $00
    or a                                          ; $73cb: $b7
    sbc $7c                                       ; $73cc: $de $7c
    cp d                                          ; $73ce: $ba
    rlca                                          ; $73cf: $07
    rra                                           ; $73d0: $1f
    pop bc                                        ; $73d1: $c1
    and e                                         ; $73d2: $a3
    sub b                                         ; $73d3: $90
    sub e                                         ; $73d4: $93
    inc hl                                        ; $73d5: $23
    dec h                                         ; $73d6: $25
    cpl                                           ; $73d7: $2f
    dec e                                         ; $73d8: $1d
    scf                                           ; $73d9: $37
    ld b, a                                       ; $73da: $47
    sbc [hl]                                      ; $73db: $9e
    dec [hl]                                      ; $73dc: $35
    rst $38                                       ; $73dd: $ff
    ld c, [hl]                                    ; $73de: $4e
    jp Jump_06e_6cf1                              ; $73df: $c3 $f1 $6c


    ld d, d                                       ; $73e2: $52
    ld e, b                                       ; $73e3: $58
    xor c                                         ; $73e4: $a9
    sub c                                         ; $73e5: $91
    ld e, l                                       ; $73e6: $5d
    sub c                                         ; $73e7: $91
    xor [hl]                                      ; $73e8: $ae
    jr c, jr_06e_7378                             ; $73e9: $38 $8d

    pop hl                                        ; $73eb: $e1
    jp nc, $d701                                  ; $73ec: $d2 $01 $d7

    adc l                                         ; $73ef: $8d
    xor d                                         ; $73f0: $aa
    ld l, e                                       ; $73f1: $6b
    ld [hl-], a                                   ; $73f2: $32
    dec de                                        ; $73f3: $1b
    ld c, b                                       ; $73f4: $48
    ret c                                         ; $73f5: $d8

    inc bc                                        ; $73f6: $03
    adc c                                         ; $73f7: $89
    ld d, [hl]                                    ; $73f8: $56
    pop hl                                        ; $73f9: $e1
    call nz, Call_06e_69df                        ; $73fa: $c4 $df $69
    ld [$e543], sp                                ; $73fd: $08 $43 $e5
    db $e4                                        ; $7400: $e4
    cp b                                          ; $7401: $b8
    ld [hl], d                                    ; $7402: $72
    add d                                         ; $7403: $82
    ld l, l                                       ; $7404: $6d
    rlca                                          ; $7405: $07
    ld d, a                                       ; $7406: $57
    ld h, c                                       ; $7407: $61
    or $53                                        ; $7408: $f6 $53
    adc l                                         ; $740a: $8d
    ld [hl-], a                                   ; $740b: $32
    add l                                         ; $740c: $85
    or h                                          ; $740d: $b4
    ld c, c                                       ; $740e: $49
    ld a, l                                       ; $740f: $7d
    di                                            ; $7410: $f3
    jp hl                                         ; $7411: $e9


    ld e, [hl]                                    ; $7412: $5e
    sbc a                                         ; $7413: $9f
    inc e                                         ; $7414: $1c
    rst $20                                       ; $7415: $e7
    ld d, c                                       ; $7416: $51
    ld a, l                                       ; $7417: $7d
    xor h                                         ; $7418: $ac
    sbc [hl]                                      ; $7419: $9e

jr_06e_741a:
    dec a                                         ; $741a: $3d
    rst $08                                       ; $741b: $cf
    or h                                          ; $741c: $b4
    db $d3                                        ; $741d: $d3
    jp nz, Jump_000_0076                          ; $741e: $c2 $76 $00

    ld d, a                                       ; $7421: $57
    ld h, c                                       ; $7422: $61
    or $53                                        ; $7423: $f6 $53
    adc l                                         ; $7425: $8d
    ld [hl-], a                                   ; $7426: $32
    add l                                         ; $7427: $85
    or h                                          ; $7428: $b4
    ld c, c                                       ; $7429: $49
    ld a, l                                       ; $742a: $7d
    di                                            ; $742b: $f3
    jp hl                                         ; $742c: $e9


    ld e, [hl]                                    ; $742d: $5e
    sbc a                                         ; $742e: $9f

Call_06e_742f:
    inc e                                         ; $742f: $1c
    rst $20                                       ; $7430: $e7
    ld d, c                                       ; $7431: $51
    ld a, l                                       ; $7432: $7d
    xor h                                         ; $7433: $ac
    rst $10                                       ; $7434: $d7
    add d                                         ; $7435: $82
    ld c, a                                       ; $7436: $4f
    ld c, e                                       ; $7437: $4b
    adc $a3                                       ; $7438: $ce $a3
    ld a, [$76d8]                                 ; $743a: $fa $d8 $76
    nop                                           ; $743d: $00
    rst $20                                       ; $743e: $e7
    xor d                                         ; $743f: $aa
    xor h                                         ; $7440: $ac
    ld b, d                                       ; $7441: $42
    jr c, jr_06e_741a                             ; $7442: $38 $d6

    sbc h                                         ; $7444: $9c
    or d                                          ; $7445: $b2
    ld b, h                                       ; $7446: $44
    sub l                                         ; $7447: $95
    dec c                                         ; $7448: $0d
    ld l, c                                       ; $7449: $69
    sbc [hl]                                      ; $744a: $9e
    sub a                                         ; $744b: $97
    jp c, Jump_000_1f47                           ; $744c: $da $47 $1f

    ld a, a                                       ; $744f: $7f
    di                                            ; $7450: $f3
    jp hl                                         ; $7451: $e9


    ld e, [hl]                                    ; $7452: $5e
    ccf                                           ; $7453: $3f
    ld a, a                                       ; $7454: $7f
    db $ec                                        ; $7455: $ec
    nop                                           ; $7456: $00
    rst $10                                       ; $7457: $d7
    cp b                                          ; $7458: $b8
    adc e                                         ; $7459: $8b
    rst $00                                       ; $745a: $c7
    ld [$81a7], a                                 ; $745b: $ea $a7 $81
    call nz, $8ea2                                ; $745e: $c4 $a2 $8e
    cp e                                          ; $7461: $bb
    ld a, b                                       ; $7462: $78
    xor h                                         ; $7463: $ac
    ld [hl], c                                    ; $7464: $71
    inc l                                         ; $7465: $2c
    and d                                         ; $7466: $a2
    sbc [hl]                                      ; $7467: $9e
    add l                                         ; $7468: $85
    ldh a, [rNR34]                                ; $7469: $f0 $1e
    pop hl                                        ; $746b: $e1
    jr jr_06e_749c                                ; $746c: $18 $2e

    or l                                          ; $746e: $b5
    adc a                                         ; $746f: $8f
    ld a, $fe                                     ; $7470: $3e $fe
    and $d3                                       ; $7472: $e6 $d3
    cp l                                          ; $7474: $bd
    ld a, [hl]                                    ; $7475: $7e
    cp $d8                                        ; $7476: $fe $d8
    ld bc, $fd9f                                  ; $7478: $01 $9f $fd
    ld c, [hl]                                    ; $747b: $4e
    add l                                         ; $747c: $85
    db $e3                                        ; $747d: $e3
    ld a, [de]                                    ; $747e: $1a
    ld c, b                                       ; $747f: $48
    db $ec                                        ; $7480: $ec
    ld a, a                                       ; $7481: $7f
    db $e4                                        ; $7482: $e4
    ld e, c                                       ; $7483: $59
    di                                            ; $7484: $f3
    rst $28                                       ; $7485: $ef
    call nc, $dd73                                ; $7486: $d4 $73 $dd
    ld b, d                                       ; $7489: $42
    sub e                                         ; $748a: $93
    ld b, e                                       ; $748b: $43
    db $dd                                        ; $748c: $dd
    ld a, [hl-]                                   ; $748d: $3a
    ld h, c                                       ; $748e: $61
    rla                                           ; $748f: $17
    and e                                         ; $7490: $a3
    jp z, $a240                                   ; $7491: $ca $40 $a2

    ld e, l                                       ; $7494: $5d
    ld l, d                                       ; $7495: $6a
    rra                                           ; $7496: $1f
    ld a, l                                       ; $7497: $7d
    db $fc                                        ; $7498: $fc
    call Call_06e_7ba7                            ; $7499: $cd $a7 $7b

jr_06e_749c:
    db $fd                                        ; $749c: $fd
    db $fc                                        ; $749d: $fc
    or c                                          ; $749e: $b1
    inc bc                                        ; $749f: $03
    rst $20                                       ; $74a0: $e7
    ld a, [de]                                    ; $74a1: $1a
    ld e, c                                       ; $74a2: $59
    add l                                         ; $74a3: $85
    ld [hl], b                                    ; $74a4: $70
    xor h                                         ; $74a5: $ac
    rla                                           ; $74a6: $17
    jp z, $912c                                   ; $74a7: $ca $2c $91

    inc hl                                        ; $74aa: $23

Call_06e_74ab:
    db $fc                                        ; $74ab: $fc
    ret c                                         ; $74ac: $d8

    and l                                         ; $74ad: $a5
    or $d1                                        ; $74ae: $f6 $d1
    rst $00                                       ; $74b0: $c7
    rst $18                                       ; $74b1: $df
    ld a, h                                       ; $74b2: $7c
    cp d                                          ; $74b3: $ba
    rst $10                                       ; $74b4: $d7
    rst $08                                       ; $74b5: $cf
    rra                                           ; $74b6: $1f
    dec sp                                        ; $74b7: $3b
    nop                                           ; $74b8: $00
    xor a                                         ; $74b9: $af
    ld [hl], a                                    ; $74ba: $77
    ld [$8bb8], a                                 ; $74bb: $ea $b8 $8b
    rst $00                                       ; $74be: $c7
    ld a, [de]                                    ; $74bf: $1a
    ld c, b                                       ; $74c0: $48
    inc l                                         ; $74c1: $2c
    ld d, e                                       ; $74c2: $53
    cp a                                          ; $74c3: $bf
    rrca                                          ; $74c4: $0f
    ld l, [hl]                                    ; $74c5: $6e
    ld l, b                                       ; $74c6: $68
    di                                            ; $74c7: $f3
    rst $20                                       ; $74c8: $e7
    cp d                                          ; $74c9: $ba
    call nc, Call_000_1f47                        ; $74ca: $d4 $47 $1f
    ld a, a                                       ; $74cd: $7f
    di                                            ; $74ce: $f3
    jp hl                                         ; $74cf: $e9


    ld e, [hl]                                    ; $74d0: $5e
    ccf                                           ; $74d1: $3f
    ld a, a                                       ; $74d2: $7f
    db $ec                                        ; $74d3: $ec
    nop                                           ; $74d4: $00
    xor a                                         ; $74d5: $af
    ld [hl], a                                    ; $74d6: $77
    ld [$8bb8], a                                 ; $74d7: $ea $b8 $8b
    rst $00                                       ; $74da: $c7
    ld a, [de]                                    ; $74db: $1a
    ld c, b                                       ; $74dc: $48
    inc l                                         ; $74dd: $2c
    ld d, e                                       ; $74de: $53
    cp a                                          ; $74df: $bf
    rrca                                          ; $74e0: $0f
    ld l, [hl]                                    ; $74e1: $6e
    ld l, b                                       ; $74e2: $68
    di                                            ; $74e3: $f3
    rst $20                                       ; $74e4: $e7
    cp d                                          ; $74e5: $ba
    call nc, Call_000_1f47                        ; $74e6: $d4 $47 $1f
    ld a, a                                       ; $74e9: $7f
    di                                            ; $74ea: $f3
    jp hl                                         ; $74eb: $e9


    ld e, [hl]                                    ; $74ec: $5e
    ccf                                           ; $74ed: $3f
    ld a, a                                       ; $74ee: $7f
    db $ec                                        ; $74ef: $ec
    nop                                           ; $74f0: $00
    scf                                           ; $74f1: $37
    sub [hl]                                      ; $74f2: $96
    dec sp                                        ; $74f3: $3b
    nop                                           ; $74f4: $00
    rra                                           ; $74f5: $1f
    db $fd                                        ; $74f6: $fd
    adc $01                                       ; $74f7: $ce $01
    ld l, l                                       ; $74f9: $6d
    ei                                            ; $74fa: $fb
    and $d3                                       ; $74fb: $e6 $d3
    cp l                                          ; $74fd: $bd
    ld hl, $370f                                  ; $74fe: $21 $0f $37
    db $e4                                        ; $7501: $e4
    ld bc, $c657                                  ; $7502: $01 $57 $c6
    add l                                         ; $7505: $85
    ld b, $3b                                     ; $7506: $06 $3b
    nop                                           ; $7508: $00
    scf                                           ; $7509: $37
    sbc c                                         ; $750a: $99
    dec a                                         ; $750b: $3d
    db $ed                                        ; $750c: $ed
    nop                                           ; $750d: $00
    scf                                           ; $750e: $37
    or b                                          ; $750f: $b0
    db $ec                                        ; $7510: $ec
    nop                                           ; $7511: $00
    ld d, a                                       ; $7512: $57
    or b                                          ; $7513: $b0
    ld a, e                                       ; $7514: $7b
    ld l, $bb                                     ; $7515: $2e $bb
    sub a                                         ; $7517: $97
    jp c, $131b                                   ; $7518: $da $1b $13

    ld [c], a                                     ; $751b: $e2
    adc c                                         ; $751c: $89
    ld [hl], a                                    ; $751d: $77
    ld l, l                                       ; $751e: $6d
    ld d, h                                       ; $751f: $54
    ld [hl], c                                    ; $7520: $71
    nop                                           ; $7521: $00
    ld l, a                                       ; $7522: $6f
    pop de                                        ; $7523: $d1
    dec a                                         ; $7524: $3d
    pop af                                        ; $7525: $f1
    ld e, a                                       ; $7526: $5f
    reti                                          ; $7527: $d9


    ld c, a                                       ; $7528: $4f
    rst $28                                       ; $7529: $ef
    db $ec                                        ; $752a: $ec
    dec d                                         ; $752b: $15
    db $ec                                        ; $752c: $ec
    sbc [hl]                                      ; $752d: $9e
    set 5, [hl]                                   ; $752e: $cb $ee
    and l                                         ; $7530: $a5
    or $c6                                        ; $7531: $f6 $c6
    add h                                         ; $7533: $84
    ld a, b                                       ; $7534: $78
    ld [c], a                                     ; $7535: $e2
    ld e, l                                       ; $7536: $5d
    dec de                                        ; $7537: $1b
    ld d, l                                       ; $7538: $55
    ld l, h                                       ; $7539: $6c
    rlca                                          ; $753a: $07
    sbc a                                         ; $753b: $9f
    pop de                                        ; $753c: $d1
    dec d                                         ; $753d: $15
    ei                                            ; $753e: $fb
    ld l, c                                       ; $753f: $69
    ld a, [de]                                    ; $7540: $1a
    jp nz, $3fd0                                  ; $7541: $c2 $d0 $3f

    or e                                          ; $7544: $b3
    and a                                         ; $7545: $a7
    cp l                                          ; $7546: $bd
    pop de                                        ; $7547: $d1
    or a                                          ; $7548: $b7
    cp c                                          ; $7549: $b9
    ld l, [hl]                                    ; $754a: $6e
    pop af                                        ; $754b: $f1
    add hl, bc                                    ; $754c: $09
    rst $00                                       ; $754d: $c7
    cp $69                                        ; $754e: $fe $69
    db $db                                        ; $7550: $db
    ld bc, $aee7                                  ; $7551: $01 $e7 $ae
    add c                                         ; $7554: $81
    call nz, $a386                                ; $7555: $c4 $86 $a3
    ld a, [hl-]                                   ; $7558: $3a
    push bc                                       ; $7559: $c5
    rst $30                                       ; $755a: $f7
    ret                                           ; $755b: $c9


    rlca                                          ; $755c: $07
    ccf                                           ; $755d: $3f
    or c                                          ; $755e: $b1
    rst $08                                       ; $755f: $cf
    dec de                                        ; $7560: $1b
    rlca                                          ; $7561: $07
    sbc a                                         ; $7562: $9f
    dec sp                                        ; $7563: $3b
    db $f4                                        ; $7564: $f4
    sbc [hl]                                      ; $7565: $9e
    cp b                                          ; $7566: $b8
    inc e                                         ; $7567: $1c
    ld c, d                                       ; $7568: $4a
    sub l                                         ; $7569: $95
    or e                                          ; $756a: $b3
    adc e                                         ; $756b: $8b
    or c                                          ; $756c: $b1
    or l                                          ; $756d: $b5
    sub a                                         ; $756e: $97
    rst $30                                       ; $756f: $f7
    db $d3                                        ; $7570: $d3
    call nc, $e961                                ; $7571: $d4 $61 $e9
    dec de                                        ; $7574: $1b
    rlca                                          ; $7575: $07
    sbc a                                         ; $7576: $9f
    dec sp                                        ; $7577: $3b
    inc [hl]                                      ; $7578: $34
    ld h, h                                       ; $7579: $64
    add $d6                                       ; $757a: $c6 $d6
    ld l, e                                       ; $757c: $6b
    ld e, b                                       ; $757d: $58
    ld e, d                                       ; $757e: $5a
    db $ec                                        ; $757f: $ec
    and a                                         ; $7580: $a7
    db $e4                                        ; $7581: $e4
    ld d, b                                       ; $7582: $50
    add hl, sp                                    ; $7583: $39
    ld c, e                                       ; $7584: $4b
    pop af                                        ; $7585: $f1
    add $01                                       ; $7586: $c6 $01
    rst $20                                       ; $7588: $e7
    ld a, [de]                                    ; $7589: $1a
    ld e, c                                       ; $758a: $59
    adc c                                         ; $758b: $89
    db $dd                                        ; $758c: $dd
    ld [hl], e                                    ; $758d: $73
    reti                                          ; $758e: $d9


    rst $28                                       ; $758f: $ef
    ld d, h                                       ; $7590: $54
    ld h, $8d                                     ; $7591: $26 $8d
    add sp, -$65                                  ; $7593: $e8 $9b
    ld c, a                                       ; $7595: $4f
    rst $30                                       ; $7596: $f7
    add [hl]                                      ; $7597: $86
    call c, Call_06e_570e                         ; $7598: $dc $0e $57
    add $4d                                       ; $759b: $c6 $4d
    cpl                                           ; $759d: $2f
    inc [hl]                                      ; $759e: $34
    add hl, hl                                    ; $759f: $29
    db $fc                                        ; $75a0: $fc
    ld [$e21a], sp                                ; $75a1: $08 $1a $e2
    inc [hl]                                      ; $75a4: $34
    ld a, l                                       ; $75a5: $7d
    di                                            ; $75a6: $f3
    jp hl                                         ; $75a7: $e9


    sbc $90                                       ; $75a8: $de $90
    db $db                                        ; $75aa: $db
    ld bc, $f11f                                  ; $75ab: $01 $1f $f1
    ld [hl], h                                    ; $75ae: $74
    adc a                                         ; $75af: $8f
    ld e, h                                       ; $75b0: $5c
    ld d, e                                       ; $75b1: $53
    ld de, $18a5                                  ; $75b2: $11 $a5 $18
    ld a, [hl]                                    ; $75b5: $7e
    sbc $38                                       ; $75b6: $de $38
    nop                                           ; $75b8: $00
    scf                                           ; $75b9: $37
    ld b, a                                       ; $75ba: $47
    sbc [hl]                                      ; $75bb: $9e
    dec [hl]                                      ; $75bc: $35
    rst $38                                       ; $75bd: $ff
    ld c, [hl]                                    ; $75be: $4e
    inc hl                                        ; $75bf: $23
    ld e, l                                       ; $75c0: $5d
    ld b, l                                       ; $75c1: $45
    add hl, hl                                    ; $75c2: $29
    ei                                            ; $75c3: $fb
    pop de                                        ; $75c4: $d1
    ld l, d                                       ; $75c5: $6a
    ld [de], a                                    ; $75c6: $12
    dec l                                         ; $75c7: $2d
    cp c                                          ; $75c8: $b9
    sbc b                                         ; $75c9: $98
    inc hl                                        ; $75ca: $23
    or l                                          ; $75cb: $b5
    ld hl, $5d0c                                  ; $75cc: $21 $0c $5d
    ld a, [de]                                    ; $75cf: $1a
    ld h, a                                       ; $75d0: $67
    dec sp                                        ; $75d1: $3b
    nop                                           ; $75d2: $00
    rst $28                                       ; $75d3: $ef
    ret nz                                        ; $75d4: $c0

    ld e, h                                       ; $75d5: $5c
    or b                                          ; $75d6: $b0
    ld e, h                                       ; $75d7: $5c
    add sp, -$4b                                  ; $75d8: $e8 $b5
    or h                                          ; $75da: $b4
    add a                                         ; $75db: $87
    inc c                                         ; $75dc: $0c
    ld b, e                                       ; $75dd: $43
    jp c, Jump_000_1f01                           ; $75de: $da $01 $1f

    adc l                                         ; $75e1: $8d
    ld [$1a94], a                                 ; $75e2: $ea $94 $1a
    daa                                           ; $75e5: $27
    sub b                                         ; $75e6: $90
    ld e, b                                       ; $75e7: $58
    ld l, d                                       ; $75e8: $6a
    inc c                                         ; $75e9: $0c
    xor [hl]                                      ; $75ea: $ae
    db $e3                                        ; $75eb: $e3
    sbc d                                         ; $75ec: $9a
    jp nc, $8855                                  ; $75ed: $d2 $55 $88

    ld [hl], l                                    ; $75f0: $75
    dec bc                                        ; $75f1: $0b
    call $3753                                    ; $75f2: $cd $53 $37
    adc [hl]                                      ; $75f5: $8e
    add hl, sp                                    ; $75f6: $39
    ld c, [hl]                                    ; $75f7: $4e
    or a                                          ; $75f8: $b7
    ld l, l                                       ; $75f9: $6d
    dec sp                                        ; $75fa: $3b
    nop                                           ; $75fb: $00

jr_06e_75fc:
    rra                                           ; $75fc: $1f
    scf                                           ; $75fd: $37
    sub b                                         ; $75fe: $90
    ret c                                         ; $75ff: $d8

    rst $38                                       ; $7600: $ff
    ret z                                         ; $7601: $c8

    or e                                          ; $7602: $b3
    ld b, [hl]                                    ; $7603: $46
    cp d                                          ; $7604: $ba
    add [hl]                                      ; $7605: $86
    jr nc, jr_06e_75fc                            ; $7606: $30 $f4

    rst $08                                       ; $7608: $cf
    db $ec                                        ; $7609: $ec

jr_06e_760a:
    ld l, c                                       ; $760a: $69
    ld l, a                                       ; $760b: $6f
    inc e                                         ; $760c: $1c
    rra                                           ; $760d: $1f
    adc l                                         ; $760e: $8d
    ld [$1a94], a                                 ; $760f: $ea $94 $1a
    daa                                           ; $7612: $27
    sub b                                         ; $7613: $90
    ld e, b                                       ; $7614: $58
    ld l, d                                       ; $7615: $6a
    inc c                                         ; $7616: $0c
    xor [hl]                                      ; $7617: $ae
    db $e3                                        ; $7618: $e3
    sbc d                                         ; $7619: $9a
    jp nc, $8855                                  ; $761a: $d2 $55 $88

    ld [hl], l                                    ; $761d: $75
    dec bc                                        ; $761e: $0b
    call $3753                                    ; $761f: $cd $53 $37
    adc [hl]                                      ; $7622: $8e
    add hl, sp                                    ; $7623: $39
    ld c, [hl]                                    ; $7624: $4e
    or a                                          ; $7625: $b7
    ld l, l                                       ; $7626: $6d
    dec sp                                        ; $7627: $3b
    nop                                           ; $7628: $00
    rst $28                                       ; $7629: $ef
    inc l                                         ; $762a: $2c
    add hl, sp                                    ; $762b: $39
    dec d                                         ; $762c: $15
    ld [hl], c                                    ; $762d: $71
    ld e, a                                       ; $762e: $5f
    or a                                          ; $762f: $b7
    dec de                                        ; $7630: $1b
    adc [hl]                                      ; $7631: $8e
    dec [hl]                                      ; $7632: $35
    jp nc, $fd8a                                  ; $7633: $d2 $8a $fd

    inc [hl]                                      ; $7636: $34
    dec c                                         ; $7637: $0d
    inc h                                         ; $7638: $24
    or $3f                                        ; $7639: $f6 $3f
    ld a, [c]                                     ; $763b: $f2
    xor h                                         ; $763c: $ac
    ld h, c                                       ; $763d: $61
    ld a, [c]                                     ; $763e: $f2
    ld d, h                                       ; $763f: $54
    ld h, l                                       ; $7640: $65
    push hl                                       ; $7641: $e5
    cp b                                          ; $7642: $b8
    ret nc                                        ; $7643: $d0

    ld h, b                                       ; $7644: $60
    db $db                                        ; $7645: $db
    ld bc, $a0d7                                  ; $7646: $01 $d7 $a0
    dec c                                         ; $7649: $0d
    inc h                                         ; $764a: $24
    ld d, [hl]                                    ; $764b: $56
    adc $52                                       ; $764c: $ce $52
    ld l, h                                       ; $764e: $6c
    db $ed                                        ; $764f: $ed
    ld h, a                                       ; $7650: $67
    ld [hl], h                                    ; $7651: $74
    sub l                                         ; $7652: $95
    or h                                          ; $7653: $b4
    ret z                                         ; $7654: $c8

    db $db                                        ; $7655: $db
    ld l, b                                       ; $7656: $68
    jr nz, jr_06e_760a                            ; $7657: $20 $b1

    ld sp, hl                                     ; $7659: $f9
    ld [hl], a                                    ; $765a: $77
    ld a, [de]                                    ; $765b: $1a
    ld c, b                                       ; $765c: $48
    or h                                          ; $765d: $b4
    ld a, [de]                                    ; $765e: $1a
    push hl                                       ; $765f: $e5
    ld h, h                                       ; $7660: $64
    ld e, l                                       ; $7661: $5d
    sbc [hl]                                      ; $7662: $9e
    ld b, $7b                                     ; $7663: $06 $7b
    db $e3                                        ; $7665: $e3
    nop                                           ; $7666: $00
    rra                                           ; $7667: $1f
    scf                                           ; $7668: $37
    inc [hl]                                      ; $7669: $34
    ld e, [hl]                                    ; $766a: $5e
    sbc h                                         ; $766b: $9c
    ld a, d                                       ; $766c: $7a
    ld [hl], $42                                  ; $766d: $36 $42
    ret z                                         ; $766f: $c8

    dec e                                         ; $7670: $1d
    cp l                                          ; $7671: $bd
    ret nc                                        ; $7672: $d0

    scf                                           ; $7673: $37
    sbc a                                         ; $7674: $9f
    xor $0d                                       ; $7675: $ee $0d
    cp c                                          ; $7677: $b9
    dec e                                         ; $7678: $1d
    rst $28                                       ; $7679: $ef
    ld l, c                                       ; $767a: $69
    sbc h                                         ; $767b: $9c
    and $df                                       ; $767c: $e6 $df
    jp hl                                         ; $767e: $e9


    add l                                         ; $767f: $85
    and $f9                                       ; $7680: $e6 $f9
    rst $08                                       ; $7682: $cf
    sub $eb                                       ; $7683: $d6 $eb
    jr c, jr_06e_76d4                             ; $7685: $38 $4d

    rst $18                                       ; $7687: $df
    ld a, h                                       ; $7688: $7c
    cp d                                          ; $7689: $ba
    scf                                           ; $768a: $37
    db $e4                                        ; $768b: $e4
    halt                                          ; $768c: $76
    nop                                           ; $768d: $00
    rst $20                                       ; $768e: $e7
    ld a, [de]                                    ; $768f: $1a
    pop hl                                        ; $7690: $e1
    ld b, [hl]                                    ; $7691: $46
    db $eb                                        ; $7692: $eb
    ld e, c                                       ; $7693: $59
    ret z                                         ; $7694: $c8

    ld sp, $6f3f                                  ; $7695: $31 $3f $6f
    inc e                                         ; $7698: $1c
    scf                                           ; $7699: $37
    ld b, a                                       ; $769a: $47
    sbc [hl]                                      ; $769b: $9e
    dec [hl]                                      ; $769c: $35
    rst $38                                       ; $769d: $ff
    ld c, [hl]                                    ; $769e: $4e
    inc hl                                        ; $769f: $23
    ld e, l                                       ; $76a0: $5d
    inc hl                                        ; $76a1: $23
    ld [hl], d                                    ; $76a2: $72
    inc e                                         ; $76a3: $1c
    xor l                                         ; $76a4: $ad
    ld l, $b9                                     ; $76a5: $2e $b9
    ld d, e                                       ; $76a7: $53
    or a                                          ; $76a8: $b7
    inc bc                                        ; $76a9: $03
    ld l, a                                       ; $76aa: $6f
    adc a                                         ; $76ab: $8f
    and h                                         ; $76ac: $a4
    or $7a                                        ; $76ad: $f6 $7a
    ld a, [c]                                     ; $76af: $f2
    srl l                                         ; $76b0: $cb $3d
    pop hl                                        ; $76b2: $e1
    ld sp, hl                                     ; $76b3: $f9
    call nz, $8be5                                ; $76b4: $c4 $e5 $8b
    rst $30                                       ; $76b7: $f7
    ld c, e                                       ; $76b8: $4b
    ret c                                         ; $76b9: $d8

    ld bc, $f837                                  ; $76ba: $01 $37 $f8
    dec a                                         ; $76bd: $3d
    ld a, [hl+]                                   ; $76be: $2a
    and h                                         ; $76bf: $a4
    ld a, e                                       ; $76c0: $7b
    ld [c], a                                     ; $76c1: $e2
    cp a                                          ; $76c2: $bf
    or d                                          ; $76c3: $b2
    sbc a                                         ; $76c4: $9f
    sbc $d9                                       ; $76c5: $de $d9
    db $eb                                        ; $76c7: $eb
    ret                                           ; $76c8: $c9


    cpl                                           ; $76c9: $2f
    rst $30                                       ; $76ca: $f7
    add h                                         ; $76cb: $84
    rst $20                                       ; $76cc: $e7
    inc de                                        ; $76cd: $13
    sub a                                         ; $76ce: $97

Jump_06e_76cf:
    cpl                                           ; $76cf: $2f
    sbc $2f                                       ; $76d0: $de $2f
    ld h, c                                       ; $76d2: $61
    sub a                                         ; $76d3: $97

jr_06e_76d4:
    ld c, $37                                     ; $76d4: $0e $37
    pop hl                                        ; $76d6: $e1
    ld b, [hl]                                    ; $76d7: $46
    ei                                            ; $76d8: $fb
    and a                                         ; $76d9: $a7
    dec [hl]                                      ; $76da: $35
    sub b                                         ; $76db: $90
    ld e, b                                       ; $76dc: $58
    rst $08                                       ; $76dd: $cf
    db $fd                                        ; $76de: $fd
    ld l, [hl]                                    ; $76df: $6e
    cp c                                          ; $76e0: $b9
    and b                                         ; $76e1: $a0
    db $fd                                        ; $76e2: $fd
    adc a                                         ; $76e3: $8f
    inc a                                         ; $76e4: $3c
    ld l, e                                       ; $76e5: $6b
    and h                                         ; $76e6: $a4
    dec hl                                        ; $76e7: $2b
    xor $be                                       ; $76e8: $ee $be
    ld [hl], h                                    ; $76ea: $74
    nop                                           ; $76eb: $00
    rra                                           ; $76ec: $1f
    scf                                           ; $76ed: $37
    sub b                                         ; $76ee: $90
    ret c                                         ; $76ef: $d8

    ld [hl], b                                    ; $76f0: $70
    ld d, h                                       ; $76f1: $54
    and a                                         ; $76f2: $a7
    ld [hl+], a                                   ; $76f3: $22
    call c, Call_000_35a6                         ; $76f4: $dc $a6 $35
    inc e                                         ; $76f7: $1c
    db $eb                                        ; $76f8: $eb
    ld a, a                                       ; $76f9: $7f
    db $e4                                        ; $76fa: $e4
    reti                                          ; $76fb: $d9


    dec de                                        ; $76fc: $1b
    rlca                                          ; $76fd: $07
    sbc a                                         ; $76fe: $9f
    cp e                                          ; $76ff: $bb
    ld a, [$3ad1]                                 ; $7700: $fa $d1 $3a
    ld h, $ad                                     ; $7703: $26 $ad
    ld [$b1ff], sp                                ; $7705: $08 $ff $b1
    dec d                                         ; $7708: $15
    ld b, a                                       ; $7709: $47
    cpl                                           ; $770a: $2f
    or l                                          ; $770b: $b5
    rst $10                                       ; $770c: $d7
    or b                                          ; $770d: $b0
    or h                                          ; $770e: $b4
    ret c                                         ; $770f: $d8

    ld c, a                                       ; $7710: $4f
    ret                                           ; $7711: $c9


    and c                                         ; $7712: $a1
    ld [hl], d                                    ; $7713: $72
    sub [hl]                                      ; $7714: $96
    ld [c], a                                     ; $7715: $e2
    adc l                                         ; $7716: $8d
    inc bc                                        ; $7717: $03
    ld l, a                                       ; $7718: $6f
    pop de                                        ; $7719: $d1
    add hl, bc                                    ; $771a: $09
    ld a, d                                       ; $771b: $7a
    and c                                         ; $771c: $a1
    ret                                           ; $771d: $c9


    and c                                         ; $771e: $a1
    dec hl                                        ; $771f: $2b
    adc e                                         ; $7720: $8b
    cp b                                          ; $7721: $b8
    cpl                                           ; $7722: $2f
    cp c                                          ; $7723: $b9
    inc a                                         ; $7724: $3c
    inc a                                         ; $7725: $3c
    or a                                          ; $7726: $b7
    or $f2                                        ; $7727: $f6 $f2
    ld a, [hl]                                    ; $7729: $7e
    sbc d                                         ; $772a: $9a
    ld a, [hl-]                                   ; $772b: $3a
    inc l                                         ; $772c: $2c
    ld a, l                                       ; $772d: $7d
    db $e3                                        ; $772e: $e3
    nop                                           ; $772f: $00
    sub a                                         ; $7730: $97
    ld b, e                                       ; $7731: $43
    ld h, [hl]                                    ; $7732: $66

jr_06e_7733:
    ld l, b                                       ; $7733: $68
    rst $18                                       ; $7734: $df
    ld a, h                                       ; $7735: $7c
    cp d                                          ; $7736: $ba
    scf                                           ; $7737: $37
    db $e4                                        ; $7738: $e4
    halt                                          ; $7739: $76
    nop                                           ; $773a: $00
    rst $10                                       ; $773b: $d7
    ld b, a                                       ; $773c: $47
    ld [hl], l                                    ; $773d: $75
    ld a, [de]                                    ; $773e: $1a
    reti                                          ; $773f: $d9


    db $10                                        ; $7740: $10
    daa                                           ; $7741: $27
    ld e, b                                       ; $7742: $58
    dec a                                         ; $7743: $3d
    rst $30                                       ; $7744: $f7
    dec h                                         ; $7745: $25
    rst $10                                       ; $7746: $d7
    add sp, $68                                   ; $7747: $e8 $68
    ei                                            ; $7749: $fb
    and $d3                                       ; $774a: $e6 $d3
    cp l                                          ; $774c: $bd
    ld hl, $03b7                                  ; $774d: $21 $b7 $03
    rst $20                                       ; $7750: $e7
    ld a, [de]                                    ; $7751: $1a
    add e                                         ; $7752: $83
    ld l, e                                       ; $7753: $6b
    cp b                                          ; $7754: $b8
    dec a                                         ; $7755: $3d
    pop bc                                        ; $7756: $c1
    ld a, a                                       ; $7757: $7f
    xor $0d                                       ; $7758: $ee $0d
    ld h, c                                       ; $775a: $61
    add sp, $7f                                   ; $775b: $e8 $7f
    db $e4                                        ; $775d: $e4
    reti                                          ; $775e: $d9


    dec de                                        ; $775f: $1b
    rlca                                          ; $7760: $07
    sub a                                         ; $7761: $97
    and l                                         ; $7762: $a5
    ld a, b                                       ; $7763: $78
    ld a, [de]                                    ; $7764: $1a
    ld c, b                                       ; $7765: $48
    db $ec                                        ; $7766: $ec
    ld a, a                                       ; $7767: $7f
    db $e4                                        ; $7768: $e4
    ld e, c                                       ; $7769: $59
    di                                            ; $776a: $f3
    rst $28                                       ; $776b: $ef
    inc [hl]                                      ; $776c: $34
    inc e                                         ; $776d: $1c
    rst $08                                       ; $776e: $cf
    add [hl]                                      ; $776f: $86
    jr c, jr_06e_7733                             ; $7770: $38 $c1

    ld a, [de]                                    ; $7772: $1a
    adc [hl]                                      ; $7773: $8e
    sub l                                         ; $7774: $95
    ld a, [de]                                    ; $7775: $1a
    cp c                                          ; $7776: $b9
    push af                                       ; $7777: $f5
    ld a, [c]                                     ; $7778: $f2
    ld a, [hl]                                    ; $7779: $7e
    sbc d                                         ; $777a: $9a
    ld a, [hl-]                                   ; $777b: $3a
    inc l                                         ; $777c: $2c
    ld a, l                                       ; $777d: $7d
    db $e3                                        ; $777e: $e3
    nop                                           ; $777f: $00
    rra                                           ; $7780: $1f
    adc $f7                                       ; $7781: $ce $f7
    xor b                                         ; $7783: $a8
    ld b, a                                       ; $7784: $47
    xor a                                         ; $7785: $af
    pop bc                                        ; $7786: $c1
    jp $d7b1                                      ; $7787: $c3 $b1 $d7


    or b                                          ; $778a: $b0
    rst $38                                       ; $778b: $ff
    or b                                          ; $778c: $b0
    ld a, [c]                                     ; $778d: $f2
    ld bc, $d16f                                  ; $778e: $01 $6f $d1
    dec a                                         ; $7791: $3d
    pop af                                        ; $7792: $f1
    ld e, a                                       ; $7793: $5f
    reti                                          ; $7794: $d9


    ld c, a                                       ; $7795: $4f
    rst $28                                       ; $7796: $ef
    db $ec                                        ; $7797: $ec
    ld a, $df                                     ; $7798: $3e $df
    and e                                         ; $779a: $a3
    ld e, $bd                                     ; $779b: $1e $bd
    ld b, $0f                                     ; $779d: $06 $0f
    rst $00                                       ; $779f: $c7
    ld e, [hl]                                    ; $77a0: $5e
    jp $c3fe                                      ; $77a1: $c3 $fe $c3


    jp z, Jump_000_01db                           ; $77a4: $ca $db $01

    sbc a                                         ; $77a7: $9f
    pop de                                        ; $77a8: $d1
    dec d                                         ; $77a9: $15
    ei                                            ; $77aa: $fb
    ld l, c                                       ; $77ab: $69
    ld a, [de]                                    ; $77ac: $1a
    jp nz, $3fd0                                  ; $77ad: $c2 $d0 $3f

    or e                                          ; $77b0: $b3
    and a                                         ; $77b1: $a7
    add hl, bc                                    ; $77b2: $09
    ld a, [de]                                    ; $77b3: $1a
    ld c, b                                       ; $77b4: $48
    or h                                          ; $77b5: $b4

jr_06e_77b6:
    push hl                                       ; $77b6: $e5
    rst $20                                       ; $77b7: $e7
    adc l                                         ; $77b8: $8d
    cp [hl]                                       ; $77b9: $be
    call $8b75                                    ; $77ba: $cd $75 $8b
    ld c, a                                       ; $77bd: $4f
    jr c, jr_06e_77b6                             ; $77be: $38 $f6

    ld c, a                                       ; $77c0: $4f
    db $db                                        ; $77c1: $db
    ld c, $1f                                     ; $77c2: $0e $1f
    scf                                           ; $77c4: $37
    sub b                                         ; $77c5: $90
    ld e, b                                       ; $77c6: $58
    ld l, d                                       ; $77c7: $6a
    inc c                                         ; $77c8: $0c
    ld l, [hl]                                    ; $77c9: $6e
    ld l, b                                       ; $77ca: $68
    inc hl                                        ; $77cb: $23
    sub e                                         ; $77cc: $93

jr_06e_77cd:
    ld hl, $11fb                                  ; $77cd: $21 $fb $11
    inc [hl]                                      ; $77d0: $34
    sub b                                         ; $77d1: $90
    ld l, b                                       ; $77d2: $68
    set 1, a                                      ; $77d3: $cb $cf
    dec de                                        ; $77d5: $1b
    rlca                                          ; $77d6: $07
    scf                                           ; $77d7: $37
    or c                                          ; $77d8: $b1
    ld a, [hl+]                                   ; $77d9: $2a
    ld e, d                                       ; $77da: $5a
    ld [de], a                                    ; $77db: $12
    ld d, [hl]                                    ; $77dc: $56
    sub a                                         ; $77dd: $97
    ld d, [hl]                                    ; $77de: $56
    sbc h                                         ; $77df: $9c
    ld a, [bc]                                    ; $77e0: $0a
    jp hl                                         ; $77e1: $e9


    ld c, d                                       ; $77e2: $4a
    rst $10                                       ; $77e3: $d7
    rst $38                                       ; $77e4: $ff
    ret z                                         ; $77e5: $c8

    or e                                          ; $77e6: $b3
    xor l                                         ; $77e7: $ad
    ld a, l                                       ; $77e8: $7d

Jump_06e_77e9:
jr_06e_77e9:
    sbc e                                         ; $77e9: $9b
    jp z, Jump_06e_51ef                           ; $77ea: $ca $ef $51

    add a                                         ; $77ed: $87
    and l                                         ; $77ee: $a5
    push bc                                       ; $77ef: $c5
    ld a, [hl]                                    ; $77f0: $7e
    ld c, d                                       ; $77f1: $4a
    ld c, $95                                     ; $77f2: $0e $95
    or e                                          ; $77f4: $b3
    inc d                                         ; $77f5: $14
    ld l, a                                       ; $77f6: $6f
    inc e                                         ; $77f7: $1c
    sbc a                                         ; $77f8: $9f
    inc h                                         ; $77f9: $24
    ld [hl], $64                                  ; $77fa: $36 $64
    add [hl]                                      ; $77fc: $86

jr_06e_77fd:
    and b                                         ; $77fd: $a0
    add c                                         ; $77fe: $81
    ld b, h                                       ; $77ff: $44
    ld e, e                                       ; $7800: $5b
    ld a, [hl]                                    ; $7801: $7e
    or [hl]                                       ; $7802: $b6
    or $f2                                        ; $7803: $f6 $f2
    ld a, [hl]                                    ; $7805: $7e
    sbc d                                         ; $7806: $9a
    ld a, [hl-]                                   ; $7807: $3a
    inc l                                         ; $7808: $2c
    ld a, l                                       ; $7809: $7d
    db $e3                                        ; $780a: $e3
    nop                                           ; $780b: $00
    scf                                           ; $780c: $37
    or c                                          ; $780d: $b1
    cp d                                          ; $780e: $ba
    adc e                                         ; $780f: $8b
    ld e, c                                       ; $7810: $59
    sbc c                                         ; $7811: $99
    inc [hl]                                      ; $7812: $34
    jp nz, $e6fa                                  ; $7813: $c2 $fa $e6

    db $d3                                        ; $7816: $d3
    cp l                                          ; $7817: $bd
    ld hl, $03b7                                  ; $7818: $21 $b7 $03
    sub a                                         ; $781b: $97
    and l                                         ; $781c: $a5
    ld a, b                                       ; $781d: $78
    ld a, [de]                                    ; $781e: $1a
    ld c, b                                       ; $781f: $48
    ld l, h                                       ; $7820: $6c
    jr c, jr_06e_77cd                             ; $7821: $38 $aa

    db $d3                                        ; $7823: $d3
    ret z                                         ; $7824: $c8

    add [hl]                                      ; $7825: $86
    jr c, jr_06e_77e9                             ; $7826: $38 $c1

    ld a, [$d3e6]                                 ; $7828: $fa $e6 $d3
    cp l                                          ; $782b: $bd
    ld hl, $03b7                                  ; $782c: $21 $b7 $03
    sbc a                                         ; $782f: $9f
    dec h                                         ; $7830: $25
    ccf                                           ; $7831: $3f
    dec d                                         ; $7832: $15
    jp nc, $8435                                  ; $7833: $d2 $35 $84

    and c                                         ; $7836: $a1
    rst $38                                       ; $7837: $ff
    sub c                                         ; $7838: $91
    ld h, a                                       ; $7839: $67
    ld l, a                                       ; $783a: $6f
    inc e                                         ; $783b: $1c
    sub a                                         ; $783c: $97
    and l                                         ; $783d: $a5
    ld a, b                                       ; $783e: $78
    ld a, [de]                                    ; $783f: $1a
    ld c, b                                       ; $7840: $48
    db $ec                                        ; $7841: $ec
    ld d, d                                       ; $7842: $52
    sbc l                                         ; $7843: $9d
    ld e, [hl]                                    ; $7844: $5e
    xor b                                         ; $7845: $a8
    jp $fad2                                      ; $7846: $c3 $d2 $fa


    ld l, c                                       ; $7849: $69
    jr nz, jr_06e_77fd                            ; $784a: $20 $b1

jr_06e_784c:
    rst $38                                       ; $784c: $ff
    sub c                                         ; $784d: $91
    ld h, a                                       ; $784e: $67
    adc l                                         ; $784f: $8d
    ld [hl], h                                    ; $7850: $74
    dec c                                         ; $7851: $0d
    ld h, c                                       ; $7852: $61
    add sp, $09                                   ; $7853: $e8 $09
    ld a, [de]                                    ; $7855: $1a
    ld h, c                                       ; $7856: $61
    add d                                         ; $7857: $82
    and $df                                       ; $7858: $e6 $df
    ld a, c                                       ; $785a: $79
    and e                                         ; $785b: $a3
    cp l                                          ; $785c: $bd
    cp h                                          ; $785d: $bc

Call_06e_785e:
    sbc a                                         ; $785e: $9f
    and [hl]                                      ; $785f: $a6
    ld c, $4b                                     ; $7860: $0e $4b
    rst $18                                       ; $7862: $df
    ld a, b                                       ; $7863: $78
    db $e3                                        ; $7864: $e3
    nop                                           ; $7865: $00
    ld d, a                                       ; $7866: $57
    ld h, b                                       ; $7867: $60
    or [hl]                                       ; $7868: $b6
    or d                                          ; $7869: $b2
    ld a, b                                       ; $786a: $78
    ld [$b7d9], a                                 ; $786b: $ea $d9 $b7
    ld b, a                                       ; $786e: $47
    ld d, d                                       ; $786f: $52
    rrca                                          ; $7870: $0f
    rst $28                                       ; $7871: $ef
    adc [hl]                                      ; $7872: $8e
    ld b, [hl]                                    ; $7873: $46
    ret c                                         ; $7874: $d8

    ld b, d                                       ; $7875: $42
    dec a                                         ; $7876: $3d
    adc e                                         ; $7877: $8b
    db $fd                                        ; $7878: $fd
    sub h                                         ; $7879: $94
    or d                                          ; $787a: $b2
    sub $8f                                       ; $787b: $d6 $8f
    and h                                         ; $787d: $a4
    cp [hl]                                       ; $787e: $be
    pop de                                        ; $787f: $d1
    ld a, [hl]                                    ; $7880: $7e
    ld [hl], $7e                                  ; $7881: $36 $7e
    or h                                          ; $7883: $b4
    ld l, $ad                                     ; $7884: $2e $ad
    jr c, jr_06e_789d                             ; $7886: $38 $15

    ld c, [hl]                                    ; $7888: $4e
    sub $ed                                       ; $7889: $d6 $ed
    nop                                           ; $788b: $00
    scf                                           ; $788c: $37
    pop hl                                        ; $788d: $e1
    ld b, [hl]                                    ; $788e: $46
    db $eb                                        ; $788f: $eb
    ld h, c                                       ; $7890: $61
    ld c, l                                       ; $7891: $4d
    ld c, $9d                                     ; $7892: $0e $9d
    ld e, l                                       ; $7894: $5d
    inc c                                         ; $7895: $0c
    adc a                                         ; $7896: $8f
    and $69                                       ; $7897: $e6 $69
    jr nz, jr_06e_784c                            ; $7899: $20 $b1

    rst $38                                       ; $789b: $ff
    sub c                                         ; $789c: $91

jr_06e_789d:
    ld h, a                                       ; $789d: $67
    and l                                         ; $789e: $a5
    add $e0                                       ; $789f: $c6 $e0
    adc [hl]                                      ; $78a1: $8e
    adc b                                         ; $78a2: $88
    ld b, [hl]                                    ; $78a3: $46
    ret                                           ; $78a4: $c9


    db $ec                                        ; $78a5: $ec
    ld h, a                                       ; $78a6: $67
    dec sp                                        ; $78a7: $3b
    nop                                           ; $78a8: $00
    rst $20                                       ; $78a9: $e7
    sbc l                                         ; $78aa: $9d
    ld b, $12                                     ; $78ab: $06 $12
    ei                                            ; $78ad: $fb
    rra                                           ; $78ae: $1f
    ld a, c                                       ; $78af: $79
    sub $3f                                       ; $78b0: $d6 $3f
    ld d, [hl]                                    ; $78b2: $56
    inc bc                                        ; $78b3: $03
    adc c                                         ; $78b4: $89
    ld b, [hl]                                    ; $78b5: $46
    inc de                                        ; $78b6: $13
    call nc, Call_06e_5c8f                        ; $78b7: $d4 $8f $5c
    ld e, c                                       ; $78ba: $59
    inc a                                         ; $78bb: $3c
    ld l, a                                       ; $78bc: $6f
    inc e                                         ; $78bd: $1c
    rst $28                                       ; $78be: $ef
    xor c                                         ; $78bf: $a9
    ld c, [hl]                                    ; $78c0: $4e
    rst $38                                       ; $78c1: $ff
    ld e, b                                       ; $78c2: $58
    ld d, l                                       ; $78c3: $55
    call nz, Call_000_22a5                        ; $78c4: $c4 $a5 $22
    call c, Call_06e_55a6                         ; $78c7: $dc $a6 $55
    inc de                                        ; $78ca: $13
    sbc d                                         ; $78cb: $9a
    add hl, hl                                    ; $78cc: $29
    xor c                                         ; $78cd: $a9
    cp d                                          ; $78ce: $ba
    inc a                                         ; $78cf: $3c
    inc a                                         ; $78d0: $3c
    db $eb                                        ; $78d1: $eb
    ld e, c                                       ; $78d2: $59
    ccf                                           ; $78d3: $3f
    rla                                           ; $78d4: $17
    sub e                                         ; $78d5: $93
    ld h, c                                       ; $78d6: $61
    dec sp                                        ; $78d7: $3b
    nop                                           ; $78d8: $00
    rra                                           ; $78d9: $1f
    dec de                                        ; $78da: $1b
    inc b                                         ; $78db: $04
    ld [hl], l                                    ; $78dc: $75
    ret nc                                        ; $78dd: $d0

    ld b, $12                                     ; $78de: $06 $12
    dec de                                        ; $78e0: $1b
    ld [hl-], a                                   ; $78e1: $32
    ld h, e                                       ; $78e2: $63
    ld l, e                                       ; $78e3: $6b
    xor a                                         ; $78e4: $af
    ld h, c                                       ; $78e5: $61
    ld l, c                                       ; $78e6: $69
    or c                                          ; $78e7: $b1
    sbc a                                         ; $78e8: $9f
    sub d                                         ; $78e9: $92
    ld b, e                                       ; $78ea: $43
    push hl                                       ; $78eb: $e5
    inc l                                         ; $78ec: $2c
    push bc                                       ; $78ed: $c5
    dec de                                        ; $78ee: $1b
    rlca                                          ; $78ef: $07
    ld l, a                                       ; $78f0: $6f
    ld [hl], e                                    ; $78f1: $73
    ld e, a                                       ; $78f2: $5f
    ld [hl], d                                    ; $78f3: $72
    adc l                                         ; $78f4: $8d
    ld c, [hl]                                    ; $78f5: $4e
    ld e, c                                       ; $78f6: $59
    sbc c                                         ; $78f7: $99
    inc [hl]                                      ; $78f8: $34
    and d                                         ; $78f9: $a2
    ld [$a199], sp                                ; $78fa: $08 $99 $a1
    ld a, l                                       ; $78fd: $7d
    di                                            ; $78fe: $f3
    jp hl                                         ; $78ff: $e9


    sbc $90                                       ; $7900: $de $90
    db $db                                        ; $7902: $db
    ld bc, $a9e7                                  ; $7903: $01 $e7 $a9
    ld [hl], d                                    ; $7906: $72
    ld e, h                                       ; $7907: $5c
    ld l, b                                       ; $7908: $68
    ld d, e                                       ; $7909: $53
    xor d                                         ; $790a: $aa
    or d                                          ; $790b: $b2
    pop hl                                        ; $790c: $e1
    ld e, b                                       ; $790d: $58
    rst $18                                       ; $790e: $df
    ld a, h                                       ; $790f: $7c
    cp d                                          ; $7910: $ba
    scf                                           ; $7911: $37
    db $e4                                        ; $7912: $e4

Jump_06e_7913:
    halt                                          ; $7913: $76

Call_06e_7914:
    nop                                           ; $7914: $00
    rra                                           ; $7915: $1f
    pop af                                        ; $7916: $f1
    ld [hl], h                                    ; $7917: $74
    adc a                                         ; $7918: $8f
    ld e, h                                       ; $7919: $5c
    ld d, e                                       ; $791a: $53
    ld de, $18a5                                  ; $791b: $11 $a5 $18
    ld a, [hl]                                    ; $791e: $7e
    sbc $38                                       ; $791f: $de $38
    nop                                           ; $7921: $00
    rra                                           ; $7922: $1f
    adc e                                         ; $7923: $8b
    dec b                                         ; $7924: $05
    add l                                         ; $7925: $85
    inc d                                         ; $7926: $14
    ld c, a                                       ; $7927: $4f
    inc bc                                        ; $7928: $03
    adc c                                         ; $7929: $89
    db $fd                                        ; $792a: $fd
    adc a                                         ; $792b: $8f
    inc a                                         ; $792c: $3c
    ld l, e                                       ; $792d: $6b
    cp $9d                                        ; $792e: $fe $9d
    ld b, [hl]                                    ; $7930: $46
    cp d                                          ; $7931: $ba
    ld a, [$c595]                                 ; $7932: $fa $95 $c5

Jump_06e_7935:
    ld e, h                                       ; $7935: $5c
    ld [hl], $d5                                  ; $7936: $36 $d5
    inc h                                         ; $7938: $24
    ld e, d                                       ; $7939: $5a
    ld [hl], d                                    ; $793a: $72
    ld sp, $6e47                                  ; $793b: $31 $47 $6e
    rlca                                          ; $793e: $07
    rst $20                                       ; $793f: $e7
    ld l, $bc                                     ; $7940: $2e $bc
    rst $00                                       ; $7942: $c7
    sub $f4                                       ; $7943: $d6 $f4
    dec bc                                        ; $7945: $0b
    ld b, d                                       ; $7946: $42
    ld [hl], a                                    ; $7947: $77
    cp $74                                        ; $7948: $fe $74
    nop                                           ; $794a: $00
    ld l, a                                       ; $794b: $6f
    pop de                                        ; $794c: $d1
    dec a                                         ; $794d: $3d
    pop af                                        ; $794e: $f1
    ld e, a                                       ; $794f: $5f
    reti                                          ; $7950: $d9


    ld c, a                                       ; $7951: $4f
    ld sp, $773d                                  ; $7952: $31 $3d $77
    pop hl                                        ; $7955: $e1
    dec a                                         ; $7956: $3d
    or [hl]                                       ; $7957: $b6
    and [hl]                                      ; $7958: $a6
    sbc [hl]                                      ; $7959: $9e
    ld a, l                                       ; $795a: $7d
    ld a, e                                       ; $795b: $7b
    inc h                                         ; $795c: $24
    or l                                          ; $795d: $b5
    ld e, a                                       ; $795e: $5f
    db $10                                        ; $795f: $10
    cp d                                          ; $7960: $ba
    di                                            ; $7961: $f3
    and a                                         ; $7962: $a7
    db $ed                                        ; $7963: $ed
    nop                                           ; $7964: $00
    rra                                           ; $7965: $1f
    scf                                           ; $7966: $37
    sub b                                         ; $7967: $90
    ret c                                         ; $7968: $d8

    rst $38                                       ; $7969: $ff
    ret z                                         ; $796a: $c8

    or e                                          ; $796b: $b3
    ld b, [hl]                                    ; $796c: $46
    cp d                                          ; $796d: $ba
    and d                                         ; $796e: $a2
    inc hl                                        ; $796f: $23
    and d                                         ; $7970: $a2
    ld d, c                                       ; $7971: $51
    jp nc, Jump_000_38de                          ; $7972: $d2 $de $38

    nop                                           ; $7975: $00
    ld l, a                                       ; $7976: $6f
    ld c, a                                       ; $7977: $4f
    inc bc                                        ; $7978: $03
    adc c                                         ; $7979: $89
    db $fd                                        ; $797a: $fd
    adc a                                         ; $797b: $8f
    inc a                                         ; $797c: $3c
    db $eb                                        ; $797d: $eb
    ld l, c                                       ; $797e: $69
    inc [hl]                                      ; $797f: $34
    jp nz, $de16                                  ; $7980: $c2 $16 $de

    jr c, jr_06e_7985                             ; $7983: $38 $00

jr_06e_7985:
    scf                                           ; $7985: $37
    add sp, $42                                   ; $7986: $e8 $42
    ld h, e                                       ; $7988: $63
    sub e                                         ; $7989: $93
    db $eb                                        ; $798a: $eb
    adc d                                         ; $798b: $8a
    ld [hl], h                                    ; $798c: $74
    dec c                                         ; $798d: $0d
    daa                                           ; $798e: $27
    ld c, h                                       ; $798f: $4c
    dec sp                                        ; $7990: $3b
    ld l, h                                       ; $7991: $6c
    db $eb                                        ; $7992: $eb
    push hl                                       ; $7993: $e5
    db $fd                                        ; $7994: $fd
    inc [hl]                                      ; $7995: $34
    ld [hl], l                                    ; $7996: $75
    ld e, b                                       ; $7997: $58
    ld a, [$01c6]                                 ; $7998: $fa $c6 $01
    sbc a                                         ; $799b: $9f
    ld h, c                                       ; $799c: $61
    rst $38                                       ; $799d: $ff
    di                                            ; $799e: $f3
    halt                                          ; $799f: $76
    rst $38                                       ; $79a0: $ff
    inc hl                                        ; $79a1: $23
    rst $08                                       ; $79a2: $cf
    ld [$6792], a                                 ; $79a3: $ea $92 $67
    dec a                                         ; $79a6: $3d
    cp e                                          ; $79a7: $bb
    db $fc                                        ; $79a8: $fc
    add l                                         ; $79a9: $85
    add l                                         ; $79aa: $85
    ld a, [hl-]                                   ; $79ab: $3a
    inc l                                         ; $79ac: $2c
    ld l, l                                       ; $79ad: $6d
    add h                                         ; $79ae: $84
    ld a, c                                       ; $79af: $79
    ld l, [hl]                                    ; $79b0: $6e
    cp l                                          ; $79b1: $bd
    cp h                                          ; $79b2: $bc
    sbc a                                         ; $79b3: $9f
    and [hl]                                      ; $79b4: $a6
    ld c, $4b                                     ; $79b5: $0e $4b
    rst $18                                       ; $79b7: $df
    jr c, jr_06e_79ba                             ; $79b8: $38 $00

jr_06e_79ba:
    rra                                           ; $79ba: $1f
    scf                                           ; $79bb: $37
    inc [hl]                                      ; $79bc: $34
    ld e, [hl]                                    ; $79bd: $5e
    sbc h                                         ; $79be: $9c
    ld a, d                                       ; $79bf: $7a
    ld l, d                                       ; $79c0: $6a
    ld h, h                                       ; $79c1: $64
    ld d, a                                       ; $79c2: $57
    and h                                         ; $79c3: $a4
    db $eb                                        ; $79c4: $eb
    add l                                         ; $79c5: $85
    cp [hl]                                       ; $79c6: $be
    ld sp, hl                                     ; $79c7: $f9
    ld [hl], h                                    ; $79c8: $74
    ld l, a                                       ; $79c9: $6f
    ret z                                         ; $79ca: $c8

    db $ed                                        ; $79cb: $ed
    nop                                           ; $79cc: $00
    ld d, a                                       ; $79cd: $57
    add $4d                                       ; $79ce: $c6 $4d
    cpl                                           ; $79d0: $2f
    inc [hl]                                      ; $79d1: $34
    add hl, hl                                    ; $79d2: $29
    db $fc                                        ; $79d3: $fc
    ld [$e21a], sp                                ; $79d4: $08 $1a $e2
    inc [hl]                                      ; $79d7: $34
    ld a, l                                       ; $79d8: $7d
    di                                            ; $79d9: $f3
    jp hl                                         ; $79da: $e9


    sbc $90                                       ; $79db: $de $90
    db $db                                        ; $79dd: $db
    ld bc, $f11f                                  ; $79de: $01 $1f $f1
    ld [hl], h                                    ; $79e1: $74
    adc a                                         ; $79e2: $8f
    ld e, h                                       ; $79e3: $5c
    ld d, e                                       ; $79e4: $53
    ld de, $18a5                                  ; $79e5: $11 $a5 $18
    ld a, [hl]                                    ; $79e8: $7e
    sbc $38                                       ; $79e9: $de $38
    nop                                           ; $79eb: $00
    scf                                           ; $79ec: $37
    ld b, a                                       ; $79ed: $47
    sbc [hl]                                      ; $79ee: $9e
    dec [hl]                                      ; $79ef: $35
    rst $38                                       ; $79f0: $ff
    ld c, [hl]                                    ; $79f1: $4e
    jp Jump_06e_6cf1                              ; $79f2: $c3 $f1 $6c


    adc b                                         ; $79f5: $88
    inc de                                        ; $79f6: $13
    xor h                                         ; $79f7: $ac
    pop hl                                        ; $79f8: $e1
    ld e, b                                       ; $79f9: $58
    sub a                                         ; $79fa: $97
    ld [$7a08], a                                 ; $79fb: $ea $08 $7a
    dec d                                         ; $79fe: $15
    ld h, [hl]                                    ; $79ff: $66
    ccf                                           ; $7a00: $3f
    dec e                                         ; $7a01: $1d
    rst $10                                       ; $7a02: $d7
    add hl, hl                                    ; $7a03: $29
    push bc                                       ; $7a04: $c5
    dec hl                                        ; $7a05: $2b
    ld c, e                                       ; $7a06: $4b
    ld sp, $5fb4                                  ; $7a07: $31 $b4 $5f
    db $10                                        ; $7a0a: $10
    cp d                                          ; $7a0b: $ba
    di                                            ; $7a0c: $f3
    and a                                         ; $7a0d: $a7
    inc bc                                        ; $7a0e: $03
    ld l, a                                       ; $7a0f: $6f
    pop de                                        ; $7a10: $d1
    dec a                                         ; $7a11: $3d
    pop af                                        ; $7a12: $f1
    ld e, a                                       ; $7a13: $5f
    reti                                          ; $7a14: $d9


    ld c, a                                       ; $7a15: $4f
    ld sp, $3ebd                                  ; $7a16: $31 $bd $3e
    or $3b                                        ; $7a19: $f6 $3b
    push af                                       ; $7a1b: $f5
    db $ec                                        ; $7a1c: $ec
    ld [hl], l                                    ; $7a1d: $75
    ld c, d                                       ; $7a1e: $4a
    pop af                                        ; $7a1f: $f1
    jp z, Jump_000_0c52                           ; $7a20: $ca $52 $0c

    db $ed                                        ; $7a23: $ed
    rla                                           ; $7a24: $17
    add h                                         ; $7a25: $84
    xor $fc                                       ; $7a26: $ee $fc
    ld l, c                                       ; $7a28: $69
    dec sp                                        ; $7a29: $3b
    nop                                           ; $7a2a: $00
    rra                                           ; $7a2b: $1f
    scf                                           ; $7a2c: $37
    sub b                                         ; $7a2d: $90
    ret c                                         ; $7a2e: $d8

    rst $38                                       ; $7a2f: $ff
    ret z                                         ; $7a30: $c8

    or e                                          ; $7a31: $b3
    ld b, [hl]                                    ; $7a32: $46
    cp d                                          ; $7a33: $ba
    add [hl]                                      ; $7a34: $86
    jr nc, jr_06e_7aab                            ; $7a35: $30 $74

    ld b, h                                       ; $7a37: $44
    inc [hl]                                      ; $7a38: $34
    ld c, d                                       ; $7a39: $4a
    jp c, Jump_000_071b                           ; $7a3a: $da $1b $07

    ld l, a                                       ; $7a3d: $6f
    ld c, a                                       ; $7a3e: $4f
    inc bc                                        ; $7a3f: $03
    adc c                                         ; $7a40: $89
    db $fd                                        ; $7a41: $fd
    adc a                                         ; $7a42: $8f
    inc a                                         ; $7a43: $3c
    db $eb                                        ; $7a44: $eb
    ld l, c                                       ; $7a45: $69
    inc [hl]                                      ; $7a46: $34
    jp nz, $de16                                  ; $7a47: $c2 $16 $de

    jr c, jr_06e_7a4c                             ; $7a4a: $38 $00

jr_06e_7a4c:
    rst $20                                       ; $7a4c: $e7
    ld a, [de]                                    ; $7a4d: $1a
    reti                                          ; $7a4e: $d9


    dec d                                         ; $7a4f: $15
    jp hl                                         ; $7a50: $e9


    ld a, d                                       ; $7a51: $7a
    and c                                         ; $7a52: $a1
    ld c, d                                       ; $7a53: $4a
    rla                                           ; $7a54: $17
    ld a, [de]                                    ; $7a55: $1a
    sbc e                                         ; $7a56: $9b
    ld e, h                                       ; $7a57: $5c
    ld b, l                                       ; $7a58: $45
    ld hl, sp-$71                                 ; $7a59: $f8 $8f
    xor l                                         ; $7a5b: $ad
    jr c, @+$5d                                   ; $7a5c: $38 $5b

    ld a, e                                       ; $7a5e: $7b
    ld a, c                                       ; $7a5f: $79
    ccf                                           ; $7a60: $3f
    ld c, l                                       ; $7a61: $4d
    dec e                                         ; $7a62: $1d
    sub [hl]                                      ; $7a63: $96
    cp [hl]                                       ; $7a64: $be
    ld [hl], c                                    ; $7a65: $71
    nop                                           ; $7a66: $00
    scf                                           ; $7a67: $37
    ld b, a                                       ; $7a68: $47
    sbc [hl]                                      ; $7a69: $9e
    push af                                       ; $7a6a: $f5
    ld b, d                                       ; $7a6b: $42
    inc bc                                        ; $7a6c: $03
    adc c                                         ; $7a6d: $89
    xor [hl]                                      ; $7a6e: $ae
    ld a, [bc]                                    ; $7a6f: $0a
    ld hl, $5eb7                                  ; $7a70: $21 $b7 $5e
    sbc $4f                                       ; $7a73: $de $4f
    ld d, e                                       ; $7a75: $53
    add a                                         ; $7a76: $87
    and l                                         ; $7a77: $a5
    ld l, a                                       ; $7a78: $6f
    inc e                                         ; $7a79: $1c
    rra                                           ; $7a7a: $1f
    scf                                           ; $7a7b: $37
    inc [hl]                                      ; $7a7c: $34
    ld e, [hl]                                    ; $7a7d: $5e
    sbc h                                         ; $7a7e: $9c
    ld a, d                                       ; $7a7f: $7a
    ld l, d                                       ; $7a80: $6a
    ld h, h                                       ; $7a81: $64
    ld d, a                                       ; $7a82: $57
    and h                                         ; $7a83: $a4
    db $eb                                        ; $7a84: $eb
    add l                                         ; $7a85: $85
    cp [hl]                                       ; $7a86: $be
    ld sp, hl                                     ; $7a87: $f9
    ld [hl], h                                    ; $7a88: $74
    ld l, a                                       ; $7a89: $6f
    ret z                                         ; $7a8a: $c8

    db $ed                                        ; $7a8b: $ed
    nop                                           ; $7a8c: $00
    ld d, a                                       ; $7a8d: $57
    add $4d                                       ; $7a8e: $c6 $4d
    cpl                                           ; $7a90: $2f
    inc [hl]                                      ; $7a91: $34
    add hl, hl                                    ; $7a92: $29
    db $fc                                        ; $7a93: $fc
    ld [$e21a], sp                                ; $7a94: $08 $1a $e2
    inc [hl]                                      ; $7a97: $34
    ld a, l                                       ; $7a98: $7d
    di                                            ; $7a99: $f3
    jp hl                                         ; $7a9a: $e9


    sbc $90                                       ; $7a9b: $de $90
    db $db                                        ; $7a9d: $db
    ld bc, $f11f                                  ; $7a9e: $01 $1f $f1
    ld [hl], h                                    ; $7aa1: $74
    adc a                                         ; $7aa2: $8f
    ld e, h                                       ; $7aa3: $5c
    ld d, e                                       ; $7aa4: $53
    ld de, $18a5                                  ; $7aa5: $11 $a5 $18
    ld a, [hl]                                    ; $7aa8: $7e
    sbc $38                                       ; $7aa9: $de $38

jr_06e_7aab:
    nop                                           ; $7aab: $00
    rra                                           ; $7aac: $1f
    db $fd                                        ; $7aad: $fd
    ld c, [hl]                                    ; $7aae: $4e
    rst $38                                       ; $7aaf: $ff
    call z, Call_06e_6e9e                         ; $7ab0: $cc $9e $6e

jr_06e_7ab3:
    or h                                          ; $7ab3: $b4
    and d                                         ; $7ab4: $a2
    dec b                                         ; $7ab5: $05
    ccf                                           ; $7ab6: $3f
    call Call_000_0d74                            ; $7ab7: $cd $74 $0d
    ld h, c                                       ; $7aba: $61
    jr z, jr_06e_7ab3                             ; $7abb: $28 $f6

    sub h                                         ; $7abd: $94
    ld b, a                                       ; $7abe: $47
    db $eb                                        ; $7abf: $eb
    pop de                                        ; $7ac0: $d1
    ld [hl], a                                    ; $7ac1: $77
    ld l, l                                       ; $7ac2: $6d
    adc c                                         ; $7ac3: $89
    ld d, [hl]                                    ; $7ac4: $56
    cp [hl]                                       ; $7ac5: $be
    rst $00                                       ; $7ac6: $c7
    ld d, $2e                                     ; $7ac7: $16 $2e
    dec e                                         ; $7ac9: $1d
    sbc a                                         ; $7aca: $9f
    pop bc                                        ; $7acb: $c1
    add hl, bc                                    ; $7acc: $09
    cpl                                           ; $7acd: $2f
    cp b                                          ; $7ace: $b8
    ld c, d                                       ; $7acf: $4a
    ld sp, $3c1c                                  ; $7ad0: $31 $1c $3c
    ld [$b7d9], a                                 ; $7ad3: $ea $d9 $b7
    and b                                         ; $7ad6: $a0
    pop af                                        ; $7ad7: $f1
    ld [hl], a                                    ; $7ad8: $77
    ld a, [$b129]                                 ; $7ad9: $fa $29 $b1
    ld l, a                                       ; $7adc: $6f
    ld a, l                                       ; $7add: $7d
    cp l                                          ; $7ade: $bd
    call z, Call_06e_7272                         ; $7adf: $cc $72 $72
    inc [hl]                                      ; $7ae2: $34
    ld a, b                                       ; $7ae3: $78
    inc [hl]                                      ; $7ae4: $34
    ld c, a                                       ; $7ae5: $4f
    ld e, l                                       ; $7ae6: $5d
    jp z, $ba7e                                   ; $7ae7: $ca $7e $ba

    ld [hl], d                                    ; $7aea: $72
    db $e4                                        ; $7aeb: $e4
    or d                                          ; $7aec: $b2

Call_06e_7aed:
    add hl, hl                                    ; $7aed: $29
    dec de                                        ; $7aee: $1b
    adc [hl]                                      ; $7aef: $8e
    ld l, d                                       ; $7af0: $6a
    ld e, d                                       ; $7af1: $5a
    ld [hl], l                                    ; $7af2: $75
    ld l, c                                       ; $7af3: $69
    push bc                                       ; $7af4: $c5
    pop de                                        ; $7af5: $d1
    ld h, $1d                                     ; $7af6: $26 $1d
    ld l, l                                       ; $7af8: $6d
    cp $9d                                        ; $7af9: $fe $9d
    daa                                           ; $7afb: $27
    ld e, h                                       ; $7afc: $5c
    ldh a, [rBCPD]                                ; $7afd: $f0 $69
    ret                                           ; $7aff: $c9


    pop de                                        ; $7b00: $d1
    db $ed                                        ; $7b01: $ed
    nop                                           ; $7b02: $00
    rst $10                                       ; $7b03: $d7
    rst $00                                       ; $7b04: $c7
    ld a, [de]                                    ; $7b05: $1a
    adc [hl]                                      ; $7b06: $8e
    ld l, d                                       ; $7b07: $6a
    ld e, d                                       ; $7b08: $5a
    sub $d0                                       ; $7b09: $d6 $d0
    ld h, $b4                                     ; $7b0b: $26 $b4
    ld b, l                                       ; $7b0d: $45
    rrca                                          ; $7b0e: $0f
    ld c, a                                       ; $7b0f: $4f
    db $ed                                        ; $7b10: $ed
    sbc a                                         ; $7b11: $9f
    sbc c                                         ; $7b12: $99
    ld a, c                                       ; $7b13: $79
    inc d                                         ; $7b14: $14
    ld a, [hl+]                                   ; $7b15: $2a
    jr z, jr_06e_7b4d                             ; $7b16: $28 $35

    or d                                          ; $7b18: $b2
    dec hl                                        ; $7b19: $2b
    sbc a                                         ; $7b1a: $9f
    adc h                                         ; $7b1b: $8c
    ld a, [hl]                                    ; $7b1c: $7e
    ld sp, $d647                                  ; $7b1d: $31 $47 $d6
    di                                            ; $7b20: $f3
    rst $08                                       ; $7b21: $cf
    ld a, [hl+]                                   ; $7b22: $2a
    xor l                                         ; $7b23: $ad
    ld c, $39                                     ; $7b24: $0e $39
    add hl, hl                                    ; $7b26: $29
    pop hl                                        ; $7b27: $e1
    and a                                         ; $7b28: $a7
    ld l, h                                       ; $7b29: $6c
    ld l, b                                       ; $7b2a: $68
    inc c                                         ; $7b2b: $0c
    ld h, c                                       ; $7b2c: $61
    ldh a, [rHDMA3]                               ; $7b2d: $f0 $53
    add hl, sp                                    ; $7b2f: $39
    xor [hl]                                      ; $7b30: $ae
    ld [hl-], a                                   ; $7b31: $32
    dec l                                         ; $7b32: $2d
    rrca                                          ; $7b33: $0f
    ccf                                           ; $7b34: $3f
    db $db                                        ; $7b35: $db
    ld bc, $3b9f                                  ; $7b36: $01 $9f $3b
    inc [hl]                                      ; $7b39: $34
    call c, Call_000_2391                         ; $7b3a: $dc $91 $23
    ld [$8ad2], a                                 ; $7b3d: $ea $d2 $8a
    ld d, e                                       ; $7b40: $53
    cp a                                          ; $7b41: $bf
    ld b, h                                       ; $7b42: $44
    add hl, hl                                    ; $7b43: $29
    ei                                            ; $7b44: $fb
    push hl                                       ; $7b45: $e5
    ld hl, $08a8                                  ; $7b46: $21 $a8 $08
    ld l, [hl]                                    ; $7b49: $6e
    inc d                                         ; $7b4a: $14
    dec c                                         ; $7b4b: $0d
    rst $00                                       ; $7b4c: $c7

jr_06e_7b4d:
    ld a, [hl+]                                   ; $7b4d: $2a
    sub c                                         ; $7b4e: $91
    inc d                                         ; $7b4f: $14
    push af                                       ; $7b50: $f5
    and e                                         ; $7b51: $a3
    dec d                                         ; $7b52: $15
    call $b77e                                    ; $7b53: $cd $7e $b7
    ld c, h                                       ; $7b56: $4c
    ei                                            ; $7b57: $fb
    ld l, b                                       ; $7b58: $68
    inc bc                                        ; $7b59: $03
    adc c                                         ; $7b5a: $89
    sub l                                         ; $7b5b: $95
    ld b, [hl]                                    ; $7b5c: $46
    sub l                                         ; $7b5d: $95
    ld [hl], h                                    ; $7b5e: $74
    and l                                         ; $7b5f: $a5
    xor e                                         ; $7b60: $ab
    ld h, $68                                     ; $7b61: $26 $68
    ld b, l                                       ; $7b63: $45
    or e                                          ; $7b64: $b3
    adc e                                         ; $7b65: $8b
    and c                                         ; $7b66: $a1
    ld h, l                                       ; $7b67: $65
    dec h                                         ; $7b68: $25
    sub d                                         ; $7b69: $92
    jp nz, $e615                                  ; $7b6a: $c2 $15 $e6

    rst $08                                       ; $7b6d: $cf
    or d                                          ; $7b6e: $b2
    ld e, h                                       ; $7b6f: $5c
    ret c                                         ; $7b70: $d8

    ld c, $9f                                     ; $7b71: $0e $9f
    pop bc                                        ; $7b73: $c1
    add hl, bc                                    ; $7b74: $09
    cpl                                           ; $7b75: $2f
    cp b                                          ; $7b76: $b8
    jp z, $62c9                                   ; $7b77: $ca $c9 $62

    jp z, $51e5                                   ; $7b7a: $ca $e5 $51

    add hl, sp                                    ; $7b7d: $39
    ld l, [hl]                                    ; $7b7e: $6e
    ld a, d                                       ; $7b7f: $7a
    reti                                          ; $7b80: $d9


    add h                                         ; $7b81: $84
    ld c, c                                       ; $7b82: $49
    db $e3                                        ; $7b83: $e3
    call nc, $efb3                                ; $7b84: $d4 $b3 $ef
    call z, Call_000_0469                         ; $7b87: $cc $69 $04
    and l                                         ; $7b8a: $a5
    ld b, [hl]                                    ; $7b8b: $46
    sub h                                         ; $7b8c: $94
    or $47                                        ; $7b8d: $f6 $47
    jp $ecf1                                      ; $7b8f: $c3 $f1 $ec


    cp [hl]                                       ; $7b92: $be
    add h                                         ; $7b93: $84
    inc [hl]                                      ; $7b94: $34
    ld e, b                                       ; $7b95: $58
    rst $38                                       ; $7b96: $ff
    ld [$a8c7], sp                                ; $7b97: $08 $c7 $a8
    ld e, l                                       ; $7b9a: $5d
    ld e, c                                       ; $7b9b: $59
    or h                                          ; $7b9c: $b4
    jp $ff05                                      ; $7b9d: $c3 $05 $ff


    cp c                                          ; $7ba0: $b9
    ld [hl], h                                    ; $7ba1: $74
    db $eb                                        ; $7ba2: $eb
    db $db                                        ; $7ba3: $db
    db $fc                                        ; $7ba4: $fc
    or e                                          ; $7ba5: $b3
    ld c, d                                       ; $7ba6: $4a

Call_06e_7ba7:
    xor e                                         ; $7ba7: $ab
    ld b, e                                       ; $7ba8: $43
    ld c, [hl]                                    ; $7ba9: $4e
    ld c, d                                       ; $7baa: $4a
    ld a, b                                       ; $7bab: $78
    ld d, h                                       ; $7bac: $54
    adc [hl]                                      ; $7bad: $8e
    xor e                                         ; $7bae: $ab
    ld c, e                                       ; $7baf: $4b
    dec hl                                        ; $7bb0: $2b
    ld c, [hl]                                    ; $7bb1: $4e
    ld h, l                                       ; $7bb2: $65
    ld e, d                                       ; $7bb3: $5a
    ld e, $7e                                     ; $7bb4: $1e $7e
    or [hl]                                       ; $7bb6: $b6
    inc bc                                        ; $7bb7: $03
    sbc a                                         ; $7bb8: $9f
    dec sp                                        ; $7bb9: $3b
    sub h                                         ; $7bba: $94
    or $47                                        ; $7bbb: $f6 $47
    ld e, l                                       ; $7bbd: $5d
    ld e, d                                       ; $7bbe: $5a
    ld [hl], c                                    ; $7bbf: $71
    ld a, [bc]                                    ; $7bc0: $0a
    rlca                                          ; $7bc1: $07
    dec sp                                        ; $7bc2: $3b
    and c                                         ; $7bc3: $a1
    add c                                         ; $7bc4: $81
    call nz, $e9fe                                ; $7bc5: $c4 $fe $e9
    xor d                                         ; $7bc8: $aa
    call z, $9a7e                                 ; $7bc9: $cc $7e $9a
    inc d                                         ; $7bcc: $14
    ld e, $f5                                     ; $7bcd: $1e $f5
    ld d, h                                       ; $7bcf: $54
    rst $08                                       ; $7bd0: $cf
    and d                                         ; $7bd1: $a2
    ret z                                         ; $7bd2: $c8

    ld [hl], c                                    ; $7bd3: $71
    sbc l                                         ; $7bd4: $9d
    jp nc, $f0f2                                  ; $7bd5: $d2 $f2 $f0

    call c, $9f0e                                 ; $7bd8: $dc $0e $9f
    cp e                                          ; $7bdb: $bb
    xor [hl]                                      ; $7bdc: $ae
    ld a, h                                       ; $7bdd: $7c
    ld [hl-], a                                   ; $7bde: $32
    ld a, [$1cc5]                                 ; $7bdf: $fa $c5 $1c
    reti                                          ; $7be2: $d9


    ld [hl], b                                    ; $7be3: $70
    inc a                                         ; $7be4: $3c
    ld l, l                                       ; $7be5: $6d
    ld [hl], h                                    ; $7be6: $74
    ld a, [de]                                    ; $7be7: $1a
    ld c, b                                       ; $7be8: $48
    inc l                                         ; $7be9: $2c
    dec [hl]                                      ; $7bea: $35
    ld b, $37                                     ; $7beb: $06 $37
    inc [hl]                                      ; $7bed: $34
    ld a, [hl+]                                   ; $7bee: $2a
    ld [hl], e                                    ; $7bef: $73
    ld h, h                                       ; $7bf0: $64
    jp hl                                         ; $7bf1: $e9


    ld [$8ad2], a                                 ; $7bf2: $ea $d2 $8a
    ret nc                                        ; $7bf5: $d0

    ld l, d                                       ; $7bf6: $6a
    ld a, [bc]                                    ; $7bf7: $0a
    ld l, c                                       ; $7bf8: $69
    ld a, [de]                                    ; $7bf9: $1a
    rst $10                                       ; $7bfa: $d7
    push bc                                       ; $7bfb: $c5
    ld a, e                                       ; $7bfc: $7b
    xor c                                         ; $7bfd: $a9
    push af                                       ; $7bfe: $f5
    and e                                         ; $7bff: $a3
    adc l                                         ; $7c00: $8d
    ld [hl], $e9                                  ; $7c01: $36 $e9
    ld d, $74                                     ; $7c03: $16 $74
    dec sp                                        ; $7c05: $3b
    nop                                           ; $7c06: $00
    sub a                                         ; $7c07: $97
    dec bc                                        ; $7c08: $0b
    add e                                         ; $7c09: $83
    pop bc                                        ; $7c0a: $c1
    add hl, bc                                    ; $7c0b: $09
    rst $28                                       ; $7c0c: $ef
    ld e, c                                       ; $7c0d: $59
    add sp, -$7b                                  ; $7c0e: $e8 $85
    ld h, $87                                     ; $7c10: $26 $87
    ld a, [hl+]                                   ; $7c12: $2a
    dec l                                         ; $7c13: $2d
    ld h, h                                       ; $7c14: $64
    adc [hl]                                      ; $7c15: $8e
    db $ec                                        ; $7c16: $ec
    sbc a                                         ; $7c17: $9f
    sbc c                                         ; $7c18: $99
    ld a, c                                       ; $7c19: $79
    inc d                                         ; $7c1a: $14
    dec e                                         ; $7c1b: $1d
    ld e, e                                       ; $7c1c: $5b
    and a                                         ; $7c1d: $a7
    sub l                                         ; $7c1e: $95
    add e                                         ; $7c1f: $83
    ld l, l                                       ; $7c20: $6d
    and c                                         ; $7c21: $a1
    ld e, $7d                                     ; $7c22: $1e $7d
    ld d, b                                       ; $7c24: $50
    ld h, h                                       ; $7c25: $64
    ld c, e                                       ; $7c26: $4b
    ld h, d                                       ; $7c27: $62
    db $eb                                        ; $7c28: $eb
    adc l                                         ; $7c29: $8d
    add h                                         ; $7c2a: $84
    add [hl]                                      ; $7c2b: $86
    call c, $cf59                                 ; $7c2c: $dc $59 $cf
    ccf                                           ; $7c2f: $3f
    xor e                                         ; $7c30: $ab
    or h                                          ; $7c31: $b4
    ld a, [de]                                    ; $7c32: $1a
    push hl                                       ; $7c33: $e5
    db $ec                                        ; $7c34: $ec
    ld [c], a                                     ; $7c35: $e2
    push hl                                       ; $7c36: $e5
    pop de                                        ; $7c37: $d1
    ld a, l                                       ; $7c38: $7d
    ld c, [hl]                                    ; $7c39: $4e
    ld d, e                                       ; $7c3a: $53
    add h                                         ; $7c3b: $84
    rst $30                                       ; $7c3c: $f7
    ld l, b                                       ; $7c3d: $68
    pop de                                        ; $7c3e: $d1
    ld l, b                                       ; $7c3f: $68
    inc hl                                        ; $7c40: $23
    or c                                          ; $7c41: $b1
    dec e                                         ; $7c42: $1d
    rst $20                                       ; $7c43: $e7
    ld a, [de]                                    ; $7c44: $1a
    xor [hl]                                      ; $7c45: $ae
    inc l                                         ; $7c46: $2c
    ld e, $ad                                     ; $7c47: $1e $ad
    ld h, a                                       ; $7c49: $67
    jp $3931                                      ; $7c4a: $c3 $31 $39


    ld c, a                                       ; $7c4d: $4f
    ld d, b                                       ; $7c4e: $50
    jp $c595                                      ; $7c4f: $c3 $95 $c5


    ld d, e                                       ; $7c52: $53
    db $fd                                        ; $7c53: $fd
    sbc l                                         ; $7c54: $9d
    ld b, d                                       ; $7c55: $42
    sbc b                                         ; $7c56: $98
    or d                                          ; $7c57: $b2
    ld b, a                                       ; $7c58: $47
    adc [hl]                                      ; $7c59: $8e
    ld d, h                                       ; $7c5a: $54
    ld b, c                                       ; $7c5b: $41
    jp Jump_06e_5a59                              ; $7c5c: $c3 $59 $5a


    db $fd                                        ; $7c5f: $fd
    sbc l                                         ; $7c60: $9d
    ld a, [de]                                    ; $7c61: $1a
    jp Jump_000_38d1                              ; $7c62: $c3 $d1 $38


    jp c, $fb90                                   ; $7c65: $da $90 $fb

    ld l, b                                       ; $7c68: $68
    sub c                                         ; $7c69: $91
    sub a                                         ; $7c6a: $97
    jp $fad2                                      ; $7c6b: $c3 $d2 $fa


    ld h, h                                       ; $7c6e: $64
    ret z                                         ; $7c6f: $c8

    sub c                                         ; $7c70: $91
    ld b, l                                       ; $7c71: $45
    rst $38                                       ; $7c72: $ff
    bit 4, e                                      ; $7c73: $cb $63
    db $eb                                        ; $7c75: $eb
    cp c                                          ; $7c76: $b9
    add [hl]                                      ; $7c77: $86
    dec hl                                        ; $7c78: $2b
    adc e                                         ; $7c79: $8b
    ld b, a                                       ; $7c7a: $47
    ei                                            ; $7c7b: $fb
    ld e, a                                       ; $7c7c: $5f
    halt                                          ; $7c7d: $76
    ld h, d                                       ; $7c7e: $62
    sub $ea                                       ; $7c7f: $d6 $ea
    rst $28                                       ; $7c81: $ef
    ld d, h                                       ; $7c82: $54
    ld c, [hl]                                    ; $7c83: $4e
    sub $e5                                       ; $7c84: $d6 $e5
    ld l, c                                       ; $7c86: $69
    ldh a, [$a3]                                  ; $7c87: $f0 $a3
    dec e                                         ; $7c89: $1d
    xor l                                         ; $7c8a: $ad
    db $e3                                        ; $7c8b: $e3
    ld l, $1e                                     ; $7c8c: $2e $1e
    and e                                         ; $7c8e: $a3
    ld l, [hl]                                    ; $7c8f: $6e
    rlca                                          ; $7c90: $07
    rst $28                                       ; $7c91: $ef
    ld [hl], b                                    ; $7c92: $70
    push bc                                       ; $7c93: $c5
    xor c                                         ; $7c94: $a9
    inc e                                         ; $7c95: $1c
    ld d, a                                       ; $7c96: $57
    ld d, h                                       ; $7c97: $54
    jp nz, $ab32                                  ; $7c98: $c2 $32 $ab

    sub h                                         ; $7c9b: $94
    xor b                                         ; $7c9c: $a8

jr_06e_7c9d:
    ld h, a                                       ; $7c9d: $67
    sub e                                         ; $7c9e: $93
    ld l, e                                       ; $7c9f: $6b
    jr c, jr_06e_7c9d                             ; $7ca0: $38 $fb

    ld a, a                                       ; $7ca2: $7f
    or [hl]                                       ; $7ca3: $b6
    ld e, [hl]                                    ; $7ca4: $5e
    add hl, de                                    ; $7ca5: $19
    rla                                           ; $7ca6: $17
    jp c, $e1fc                                   ; $7ca7: $da $fc $e1

    pop hl                                        ; $7caa: $e1
    sbc b                                         ; $7cab: $98
    inc hl                                        ; $7cac: $23
    adc e                                         ; $7cad: $8b
    db $e4                                        ; $7cae: $e4
    sbc b                                         ; $7caf: $98
    inc hl                                        ; $7cb0: $23
    adc d                                         ; $7cb1: $8a
    adc d                                         ; $7cb2: $8a
    add $2e                                       ; $7cb3: $c6 $2e
    and d                                         ; $7cb5: $a2
    ld e, $da                                     ; $7cb6: $1e $da
    ld [hl], b                                    ; $7cb8: $70
    ld l, $de                                     ; $7cb9: $2e $de
    ld c, e                                       ; $7cbb: $4b
    db $dd                                        ; $7cbc: $dd
    ld c, $e7                                     ; $7cbd: $0e $e7
    ld a, [hl+]                                   ; $7cbf: $2a
    ld h, c                                       ; $7cc0: $61
    ld hl, sp+$73                                 ; $7cc1: $f8 $73
    rla                                           ; $7cc3: $17
    adc a                                         ; $7cc4: $8f
    ld [hl], $b4                                  ; $7cc5: $36 $b4
    pop af                                        ; $7cc7: $f1
    jp hl                                         ; $7cc8: $e9


    ld [hl], $5d                                  ; $7cc9: $36 $5d
    ld h, a                                       ; $7ccb: $67
    rla                                           ; $7ccc: $17
    adc a                                         ; $7ccd: $8f
    sub [hl]                                      ; $7cce: $96
    ld a, [de]                                    ; $7ccf: $1a
    ld d, d                                       ; $7cd0: $52
    ld l, $ec                                     ; $7cd1: $2e $ec
    adc [hl]                                      ; $7cd3: $8e
    add hl, sp                                    ; $7cd4: $39
    or d                                          ; $7cd5: $b2
    dec hl                                        ; $7cd6: $2b
    ei                                            ; $7cd7: $fb
    dec h                                         ; $7cd8: $25
    pop hl                                        ; $7cd9: $e1
    ld b, a                                       ; $7cda: $47
    dec de                                        ; $7cdb: $1b
    jp nz, $a550                                  ; $7cdc: $c2 $50 $a5

    pop de                                        ; $7cdf: $d1
    dec [hl]                                      ; $7ce0: $35
    add hl, hl                                    ; $7ce1: $29
    db $fc                                        ; $7ce2: $fc
    ld l, b                                       ; $7ce3: $68
    jp hl                                         ; $7ce4: $e9


    ld a, [de]                                    ; $7ce5: $1a
    adc $c5                                       ; $7ce6: $ce $c5
    ld a, e                                       ; $7ce8: $7b
    xor c                                         ; $7ce9: $a9
    db $db                                        ; $7cea: $db
    ld bc, $2d6f                                  ; $7ceb: $01 $6f $2d
    ld a, c                                       ; $7cee: $79
    adc a                                         ; $7cef: $8f
    push hl                                       ; $7cf0: $e5
    dec [hl]                                      ; $7cf1: $35
    ld e, d                                       ; $7cf2: $5a
    db $fd                                        ; $7cf3: $fd
    sbc l                                         ; $7cf4: $9d
    add [hl]                                      ; $7cf5: $86
    or h                                          ; $7cf6: $b4
    ld [hl], l                                    ; $7cf7: $75
    ld a, [de]                                    ; $7cf8: $1a
    add l                                         ; $7cf9: $85
    ld d, [hl]                                    ; $7cfa: $56
    jp c, Jump_06e_4c42                           ; $7cfb: $da $42 $4c

    ld b, $ad                                     ; $7cfe: $06 $ad
    dec bc                                        ; $7d00: $0b
    ld a, $2d                                     ; $7d01: $3e $2d
    add hl, bc                                    ; $7d03: $09
    ld l, l                                       ; $7d04: $6d
    ld [$5ca3], sp                                ; $7d05: $08 $a3 $5c
    ld e, $5a                                     ; $7d08: $1e $5a
    add hl, sp                                    ; $7d0a: $39
    xor [hl]                                      ; $7d0b: $ae
    ld a, a                                       ; $7d0c: $7f
    ld c, b                                       ; $7d0d: $48
    add sp, -$2a                                  ; $7d0e: $e8 $d6
    dec de                                        ; $7d10: $1b
    ld c, h                                       ; $7d11: $4c
    ld e, d                                       ; $7d12: $5a
    add hl, hl                                    ; $7d13: $29
    ld e, [hl]                                    ; $7d14: $5e
    ld [hl+], a                                   ; $7d15: $22
    and e                                         ; $7d16: $a3
    ld d, [hl]                                    ; $7d17: $56
    ld a, a                                       ; $7d18: $7f
    and a                                         ; $7d19: $a7
    pop de                                        ; $7d1a: $d1
    ld b, [hl]                                    ; $7d1b: $46
    jp nz, $368f                                  ; $7d1c: $c2 $8f $36

    add hl, sp                                    ; $7d1f: $39
    db $f4                                        ; $7d20: $f4
    rst $08                                       ; $7d21: $cf
    db $db                                        ; $7d22: $db
    dec c                                         ; $7d23: $0d
    rst $00                                       ; $7d24: $c7
    adc d                                         ; $7d25: $8a
    inc a                                         ; $7d26: $3c
    add d                                         ; $7d27: $82
    ld b, $12                                     ; $7d28: $06 $12
    or d                                          ; $7d2a: $b2
    sbc a                                         ; $7d2b: $9f
    ld [$94ef], a                                 ; $7d2c: $ea $ef $94
    add hl, sp                                    ; $7d2f: $39
    cp $4e                                        ; $7d30: $fe $4e
    ld de, $8b22                                  ; $7d32: $11 $22 $8b
    pop hl                                        ; $7d35: $e1
    ld b, a                                       ; $7d36: $47
    or a                                          ; $7d37: $b7
    inc bc                                        ; $7d38: $03
    sbc a                                         ; $7d39: $9f
    cp e                                          ; $7d3a: $bb
    xor [hl]                                      ; $7d3b: $ae
    ld a, h                                       ; $7d3c: $7c
    ld [hl-], a                                   ; $7d3d: $32
    ld a, [$1cc5]                                 ; $7d3e: $fa $c5 $1c
    ld e, c                                       ; $7d41: $59
    ld [$f653], sp                                ; $7d42: $08 $53 $f6
    ret z                                         ; $7d45: $c8

    sub c                                         ; $7d46: $91
    add d                                         ; $7d47: $82
    ld b, d                                       ; $7d48: $42
    dec de                                        ; $7d49: $1b
    ld a, [de]                                    ; $7d4a: $1a
    dec d                                         ; $7d4b: $15
    ld e, d                                       ; $7d4c: $5a
    rst $08                                       ; $7d4d: $cf
    ccf                                           ; $7d4e: $3f
    ld e, l                                       ; $7d4f: $5d
    sub l                                         ; $7d50: $95
    ld d, [hl]                                    ; $7d51: $56
    rst $08                                       ; $7d52: $cf
    ld a, [hl+]                                   ; $7d53: $2a
    dec l                                         ; $7d54: $2d
    ld h, h                                       ; $7d55: $64
    adc [hl]                                      ; $7d56: $8e
    call nc, $dfe6                                ; $7d57: $d4 $e6 $df
    ld a, c                                       ; $7d5a: $79
    ld [c], a                                     ; $7d5b: $e2
    rst $08                                       ; $7d5c: $cf
    call z, $0a3c                                 ; $7d5d: $cc $3c $0a
    db $dd                                        ; $7d60: $dd
    ld c, $d7                                     ; $7d61: $0e $d7
    jp hl                                         ; $7d63: $e9


    dec c                                         ; $7d64: $0d
    ld e, d                                       ; $7d65: $5a
    ld hl, $0f6f                                  ; $7d66: $21 $6f $0f
    xor h                                         ; $7d69: $ac
    ld a, [$0d3b]                                 ; $7d6a: $fa $3b $0d
    ld l, l                                       ; $7d6d: $6d
    ld a, h                                       ; $7d6e: $7c
    cp d                                          ; $7d6f: $ba
    cp l                                          ; $7d70: $bd
    inc a                                         ; $7d71: $3c
    or h                                          ; $7d72: $b4
    ld hl, $a9f7                                  ; $7d73: $21 $f7 $a9
    ld l, $8d                                     ; $7d76: $2e $8d
    ld [hl], h                                    ; $7d78: $74
    xor b                                         ; $7d79: $a8
    ld e, a                                       ; $7d7a: $5f
    daa                                           ; $7d7b: $27
    ld l, d                                       ; $7d7c: $6a
    ld e, h                                       ; $7d7d: $5c
    rst $38                                       ; $7d7e: $ff
    xor c                                         ; $7d7f: $a9
    rra                                           ; $7d80: $1f
    xor l                                         ; $7d81: $ad
    ld [hl], b                                    ; $7d82: $70
    inc a                                         ; $7d83: $3c
    ld [hl], l                                    ; $7d84: $75
    db $eb                                        ; $7d85: $eb
    db $db                                        ; $7d86: $db
    db $eb                                        ; $7d87: $eb
    ld [hl], $5d                                  ; $7d88: $36 $5d
    inc bc                                        ; $7d8a: $03
    adc c                                         ; $7d8b: $89
    and l                                         ; $7d8c: $a5
    ld b, [hl]                                    ; $7d8d: $46
    ld l, b                                       ; $7d8e: $68
    ld b, e                                       ; $7d8f: $43
    ld a, d                                       ; $7d90: $7a
    add e                                         ; $7d91: $83
    ld d, [hl]                                    ; $7d92: $56
    ld a, a                                       ; $7d93: $7f
    and a                                         ; $7d94: $a7
    rst $30                                       ; $7d95: $f7
    call nz, $a0e5                                ; $7d96: $c4 $e5 $a0
    dec c                                         ; $7d99: $0d
    ld h, c                                       ; $7d9a: $61
    jr z, @+$1c                                   ; $7d9b: $28 $1a

    ld a, [de]                                    ; $7d9d: $1a
    ld b, e                                       ; $7d9e: $43
    jr @+$30                                      ; $7d9f: $18 $2e

    cp $4e                                        ; $7da1: $fe $4e
    dec a                                         ; $7da3: $3d
    adc e                                         ; $7da4: $8b
    inc e                                         ; $7da5: $1c
    rst $28                                       ; $7da6: $ef
    or $13                                        ; $7da7: $f6 $13
    ld b, a                                       ; $7da9: $47
    or a                                          ; $7daa: $b7
    inc bc                                        ; $7dab: $03
    rst $20                                       ; $7dac: $e7
    ld a, [de]                                    ; $7dad: $1a
    xor c                                         ; $7dae: $a9
    sub l                                         ; $7daf: $95
    ld [c], a                                     ; $7db0: $e2
    dec h                                         ; $7db1: $25
    ld [hl-], a                                   ; $7db2: $32
    ld l, d                                       ; $7db3: $6a
    push af                                       ; $7db4: $f5
    ld [hl], a                                    ; $7db5: $77
    ld [$8ad2], a                                 ; $7db6: $ea $d2 $8a
    ld d, e                                       ; $7db9: $53
    add e                                         ; $7dba: $83
    adc l                                         ; $7dbb: $8d
    ld a, [bc]                                    ; $7dbc: $0a
    ld a, [de]                                    ; $7dbd: $1a
    adc $d2                                       ; $7dbe: $ce $d2
    ld [$953d], a                                 ; $7dc0: $ea $3d $95
    ld b, [hl]                                    ; $7dc3: $46
    sub l                                         ; $7dc4: $95
    ld [hl], h                                    ; $7dc5: $74
    and l                                         ; $7dc6: $a5
    ld l, e                                       ; $7dc7: $6b
    jp z, $de4b                                   ; $7dc8: $ca $4b $de

    ld h, e                                       ; $7dcb: $63
    ld a, c                                       ; $7dcc: $79
    adc l                                         ; $7dcd: $8d
    sub $a5                                       ; $7dce: $d6 $a5

Jump_06e_7dd0:
    dec d                                         ; $7dd0: $15
    and a                                         ; $7dd1: $a7
    ld a, a                                       ; $7dd2: $7f
    xor $e2                                       ; $7dd3: $ee $e2
    pop de                                        ; $7dd5: $d1
    or d                                          ; $7dd6: $b2
    ld a, [hl]                                    ; $7dd7: $7e
    adc c                                         ; $7dd8: $89
    sub [hl]                                      ; $7dd9: $96
    ld e, h                                       ; $7dda: $5c
    cp e                                          ; $7ddb: $bb
    ld h, e                                       ; $7ddc: $63
    adc [hl]                                      ; $7ddd: $8e
    xor h                                         ; $7dde: $ac
    cp $4e                                        ; $7ddf: $fe $4e
    and e                                         ; $7de1: $a3
    adc l                                         ; $7de2: $8d
    add h                                         ; $7de3: $84
    rra                                           ; $7de4: $1f
    ld l, l                                       ; $7de5: $6d
    ret z                                         ; $7de6: $c8

    ld a, l                                       ; $7de7: $7d
    or h                                          ; $7de8: $b4
    ret z                                         ; $7de9: $c8

    bit 4, c                                      ; $7dea: $cb $61
    jp hl                                         ; $7dec: $e9


    halt                                          ; $7ded: $76
    nop                                           ; $7dee: $00
    sbc a                                         ; $7def: $9f
    dec sp                                        ; $7df0: $3b
    sub h                                         ; $7df1: $94
    or $47                                        ; $7df2: $f6 $47
    dec c                                         ; $7df4: $0d
    ld b, $41                                     ; $7df5: $06 $41
    inc bc                                        ; $7df7: $03
    adc c                                         ; $7df8: $89
    sub l                                         ; $7df9: $95
    ld b, [hl]                                    ; $7dfa: $46
    sub l                                         ; $7dfb: $95
    inc l                                         ; $7dfc: $2c
    ld b, d                                       ; $7dfd: $42
    ld h, [hl]                                    ; $7dfe: $66
    ld l, b                                       ; $7dff: $68
    jp hl                                         ; $7e00: $e9


    ld a, [de]                                    ; $7e01: $1a
    ld l, h                                       ; $7e02: $6c
    add h                                         ; $7e03: $84
    sub $46                                       ; $7e04: $d6 $46
    adc d                                         ; $7e06: $8a
    ld b, a                                       ; $7e07: $47
    and c                                         ; $7e08: $a1
    ld e, e                                       ; $7e09: $5b
    cpl                                           ; $7e0a: $2f
    ld d, a                                       ; $7e0b: $57
    ld a, [de]                                    ; $7e0c: $1a
    di                                            ; $7e0d: $f3
    ld b, l                                       ; $7e0e: $45
    call nc, $81b3                                ; $7e0f: $d4 $b3 $81
    call nz, $8772                                ; $7e12: $c4 $72 $87
    ld d, [hl]                                    ; $7e15: $56
    ld a, a                                       ; $7e16: $7f
    and a                                         ; $7e17: $a7
    inc d                                         ; $7e18: $14
    dec l                                         ; $7e19: $2d
    cp c                                          ; $7e1a: $b9
    sbc b                                         ; $7e1b: $98
    inc hl                                        ; $7e1c: $23
    or l                                          ; $7e1d: $b5
    ld [hl], d                                    ; $7e1e: $72
    ld [hl], d                                    ; $7e1f: $72
    inc [hl]                                      ; $7e20: $34
    ld [hl], h                                    ; $7e21: $74
    rra                                           ; $7e22: $1f
    pop hl                                        ; $7e23: $e1
    jp nc, $cc71                                  ; $7e24: $d2 $71 $cc

    jp c, Jump_000_3bfc                           ; $7e27: $da $fc $3b

    dec d                                         ; $7e2a: $15
    call Call_06e_686a                            ; $7e2b: $cd $6a $68
    di                                            ; $7e2e: $f3
    add a                                         ; $7e2f: $87
    rst $00                                       ; $7e30: $c7
    halt                                          ; $7e31: $76
    nop                                           ; $7e32: $00
    rst $10                                       ; $7e33: $d7
    jp nc, $538a                                  ; $7e34: $d2 $8a $53

    cp a                                          ; $7e37: $bf
    ld b, h                                       ; $7e38: $44
    add hl, hl                                    ; $7e39: $29
    ei                                            ; $7e3a: $fb
    push hl                                       ; $7e3b: $e5
    pop de                                        ; $7e3c: $d1
    inc a                                         ; $7e3d: $3c
    dec c                                         ; $7e3e: $0d
    and c                                         ; $7e3f: $a1
    ld a, [bc]                                    ; $7e40: $0a
    ccf                                           ; $7e41: $3f
    add d                                         ; $7e42: $82
    ld [c], a                                     ; $7e43: $e2
    inc [hl]                                      ; $7e44: $34
    add [hl]                                      ; $7e45: $86
    ld [$bd3d], a                                 ; $7e46: $ea $3d $bd
    ld d, b                                       ; $7e49: $50
    ld h, [hl]                                    ; $7e4a: $66
    add hl, sp                                    ; $7e4b: $39
    add hl, sp                                    ; $7e4c: $39
    ld a, [de]                                    ; $7e4d: $1a
    inc a                                         ; $7e4e: $3c
    ld c, d                                       ; $7e4f: $4a
    rst $10                                       ; $7e50: $d7
    dec a                                         ; $7e51: $3d
    sbc l                                         ; $7e52: $9d
    ld h, b                                       ; $7e53: $60
    call nc, $f72a                                ; $7e54: $d4 $2a $f7
    ccf                                           ; $7e57: $3f
    ld c, [hl]                                    ; $7e58: $4e
    call z, $f5ba                                 ; $7e59: $cc $ba $f5
    ld b, [hl]                                    ; $7e5c: $46
    add d                                         ; $7e5d: $82
    ld d, [hl]                                    ; $7e5e: $56
    or h                                          ; $7e5f: $b4
    adc a                                         ; $7e60: $8f
    ld d, c                                       ; $7e61: $51
    xor e                                         ; $7e62: $ab
    cp a                                          ; $7e63: $bf
    ld d, e                                       ; $7e64: $53
    sub a                                         ; $7e65: $97
    ld d, [hl]                                    ; $7e66: $56
    sbc h                                         ; $7e67: $9c
    sbc $1f                                       ; $7e68: $de $1f
    cp c                                          ; $7e6a: $b9
    or h                                          ; $7e6b: $b4
    ld [hl], h                                    ; $7e6c: $74
    dec c                                         ; $7e6d: $0d
    rst $20                                       ; $7e6e: $e7
    ld [c], a                                     ; $7e6f: $e2
    cp l                                          ; $7e70: $bd
    call nc, Call_000_00ed                        ; $7e71: $d4 $ed $00
    ld d, a                                       ; $7e74: $57
    xor c                                         ; $7e75: $a9
    ld hl, $37ad                                  ; $7e76: $21 $ad $37
    ld [hl+], a                                   ; $7e79: $22
    db $ec                                        ; $7e7a: $ec
    rlca                                          ; $7e7b: $07
    cp $74                                        ; $7e7c: $fe $74
    nop                                           ; $7e7e: $00
    rst $10                                       ; $7e7f: $d7
    ld h, c                                       ; $7e80: $61
    sub b                                         ; $7e81: $90
    call c, Call_000_0e75                         ; $7e82: $dc $75 $0e
    sub a                                         ; $7e85: $97
    ld c, l                                       ; $7e86: $4d
    adc d                                         ; $7e87: $8a
    sub a                                         ; $7e88: $97
    db $10                                        ; $7e89: $10
    cp e                                          ; $7e8a: $bb
    rst $28                                       ; $7e8b: $ef

Jump_06e_7e8c:
    push hl                                       ; $7e8c: $e5
    db $dd                                        ; $7e8d: $dd
    db $d3                                        ; $7e8e: $d3
    ld [c], a                                     ; $7e8f: $e2
    db $e4                                        ; $7e90: $e4
    inc bc                                        ; $7e91: $03

Call_06e_7e92:
    rst $20                                       ; $7e92: $e7
    ei                                            ; $7e93: $fb
    ld c, $3f                                     ; $7e94: $0e $3f
    add [hl]                                      ; $7e96: $86
    ld a, [hl]                                    ; $7e97: $7e
    ret nz                                        ; $7e98: $c0

    jr jr_06e_7f04                                ; $7e99: $18 $69

    res 3, a                                      ; $7e9b: $cb $9f

Jump_06e_7e9d:
    ld a, b                                       ; $7e9d: $78
    nop                                           ; $7e9e: $00
    rst $28                                       ; $7e9f: $ef
    ld b, d                                       ; $7ea0: $42
    ld b, e                                       ; $7ea1: $43
    sbc b                                         ; $7ea2: $98
    rst $28                                       ; $7ea3: $ef
    dec c                                         ; $7ea4: $0d

Jump_06e_7ea5:
    pop af                                        ; $7ea5: $f1
    jp z, $9da7                                   ; $7ea6: $ca $a7 $9d

    ld [hl], c                                    ; $7ea9: $71

jr_06e_7eaa:
    ld a, [c]                                     ; $7eaa: $f2
    ld bc, $eeef                                  ; $7eab: $01 $ef $ee
    di                                            ; $7eae: $f3
    and a                                         ; $7eaf: $a7
    push af                                       ; $7eb0: $f5
    ld [$7f0a], a                                 ; $7eb1: $ea $0a $7f
    inc e                                         ; $7eb4: $1c
    adc e                                         ; $7eb5: $8b
    ld [c], a                                     ; $7eb6: $e2
    inc bc                                        ; $7eb7: $03
    rst $28                                       ; $7eb8: $ef
    ld a, [de]                                    ; $7eb9: $1a
    ld c, a                                       ; $7eba: $4f
    ld h, e                                       ; $7ebb: $63
    ccf                                           ; $7ebc: $3f
    add hl, bc                                    ; $7ebd: $09
    ld a, [hl-]                                   ; $7ebe: $3a
    dec a                                         ; $7ebf: $3d
    rst $08                                       ; $7ec0: $cf
    daa                                           ; $7ec1: $27
    ld h, h                                       ; $7ec2: $64
    ld hl, sp-$4f                                 ; $7ec3: $f8 $b1
    inc bc                                        ; $7ec5: $03
    rra                                           ; $7ec6: $1f
    ld [c], a                                     ; $7ec7: $e2
    ld c, a                                       ; $7ec8: $4f
    set 5, h                                      ; $7ec9: $cb $ec
    db $db                                        ; $7ecb: $db
    cp h                                          ; $7ecc: $bc
    ld [hl], $39                                  ; $7ecd: $36 $39
    cp d                                          ; $7ecf: $ba
    ld sp, $f966                                  ; $7ed0: $31 $66 $f9
    db $d3                                        ; $7ed3: $d3
    ld bc, $9def                                  ; $7ed4: $01 $ef $9d
    ld [hl-], a                                   ; $7ed7: $32
    ld [c], a                                     ; $7ed8: $e2
    ld b, d                                       ; $7ed9: $42
    cp a                                          ; $7eda: $bf
    ld e, b                                       ; $7edb: $58
    cp e                                          ; $7edc: $bb
    ld d, a                                       ; $7edd: $57
    or a                                          ; $7ede: $b7
    and d                                         ; $7edf: $a2
    ld hl, sp+$00                                 ; $7ee0: $f8 $00
    scf                                           ; $7ee2: $37
    jr nz, jr_06e_7eaa                            ; $7ee3: $20 $c5

    or b                                          ; $7ee5: $b0
    and l                                         ; $7ee6: $a5
    adc d                                         ; $7ee7: $8a
    ld a, [hl]                                    ; $7ee8: $7e
    sub [hl]                                      ; $7ee9: $96
    ld c, [hl]                                    ; $7eea: $4e
    ccf                                           ; $7eeb: $3f
    adc $f8                                       ; $7eec: $ce $f8
    inc bc                                        ; $7eee: $03
    rst $28                                       ; $7eef: $ef
    xor $c8                                       ; $7ef0: $ee $c8
    ld l, [hl]                                    ; $7ef2: $6e
    adc h                                         ; $7ef3: $8c
    cp l                                          ; $7ef4: $bd
    ld c, [hl]                                    ; $7ef5: $4e
    db $fc                                        ; $7ef6: $fc
    ld b, b                                       ; $7ef7: $40
    dec a                                         ; $7ef8: $3d
    nop                                           ; $7ef9: $00
    ld l, a                                       ; $7efa: $6f
    ld h, c                                       ; $7efb: $61
    rla                                           ; $7efc: $17
    ld c, l                                       ; $7efd: $4d
    or d                                          ; $7efe: $b2
    cp [hl]                                       ; $7eff: $be
    or l                                          ; $7f00: $b5
    inc hl                                        ; $7f01: $23
    di                                            ; $7f02: $f3
    nop                                           ; $7f03: $00

jr_06e_7f04:
    rst $28                                       ; $7f04: $ef
    ld [hl], b                                    ; $7f05: $70
    ld e, a                                       ; $7f06: $5f
    or a                                          ; $7f07: $b7
    ld a, d                                       ; $7f08: $7a
    inc hl                                        ; $7f09: $23
    add hl, sp                                    ; $7f0a: $39
    ld b, a                                       ; $7f0b: $47
    inc de                                        ; $7f0c: $13
    sub d                                         ; $7f0d: $92
    rlca                                          ; $7f0e: $07
    rst $28                                       ; $7f0f: $ef
    ld a, [de]                                    ; $7f10: $1a
    inc hl                                        ; $7f11: $23
    ld a, d                                       ; $7f12: $7a
    dec b                                         ; $7f13: $05
    ld d, c                                       ; $7f14: $51
    adc d                                         ; $7f15: $8a
    rst $30                                       ; $7f16: $f7
    ld sp, hl                                     ; $7f17: $f9
    di                                            ; $7f18: $f3
    nop                                           ; $7f19: $00
    ld d, a                                       ; $7f1a: $57
    daa                                           ; $7f1b: $27
    ld c, a                                       ; $7f1c: $4f
    or d                                          ; $7f1d: $b2
    add l                                         ; $7f1e: $85

Call_06e_7f1f:
    ld a, [hl]                                    ; $7f1f: $7e
    sub h                                         ; $7f20: $94
    and d                                         ; $7f21: $a2
    inc e                                         ; $7f22: $1c
    daa                                           ; $7f23: $27
    db $e4                                        ; $7f24: $e4
    ld bc, $2eef                                  ; $7f25: $01 $ef $2e
    sub c                                         ; $7f28: $91
    ld l, b                                       ; $7f29: $68
    call z, $e3f7                                 ; $7f2a: $cc $f7 $e3
    ld a, l                                       ; $7f2d: $7d
    and a                                         ; $7f2e: $a7
    push bc                                       ; $7f2f: $c5
    ret                                           ; $7f30: $c9


    rlca                                          ; $7f31: $07
    rst $28                                       ; $7f32: $ef
    adc a                                         ; $7f33: $8f
    ld c, h                                       ; $7f34: $4c
    reti                                          ; $7f35: $d9


    and e                                         ; $7f36: $a3
    scf                                           ; $7f37: $37
    ld a, [hl]                                    ; $7f38: $7e
    ld a, [$7a81]                                 ; $7f39: $fa $81 $7a
    nop                                           ; $7f3c: $00
    sbc a                                         ; $7f3d: $9f
    and h                                         ; $7f3e: $a4
    ret                                           ; $7f3f: $c9


    and a                                         ; $7f40: $a7
    ld e, [hl]                                    ; $7f41: $5e
    sbc a                                         ; $7f42: $9f
    inc bc                                        ; $7f43: $03
    ld l, a                                       ; $7f44: $6f
    adc a                                         ; $7f45: $8f
    ld c, c                                       ; $7f46: $49
    ld l, b                                       ; $7f47: $68
    rst $18                                       ; $7f48: $df
    and d                                         ; $7f49: $a2
    ld a, e                                       ; $7f4a: $7b
    ld [c], a                                     ; $7f4b: $e2
    or d                                          ; $7f4c: $b2
    add e                                         ; $7f4d: $83
    rst $00                                       ; $7f4e: $c7
    ld bc, $68d7                                  ; $7f4f: $01 $d7 $68
    ccf                                           ; $7f52: $3f
    cp $94                                        ; $7f53: $fe $94
    dec b                                         ; $7f55: $05
    sbc l                                         ; $7f56: $9d
    ld e, [hl]                                    ; $7f57: $5e
    jp Jump_06e_4ebe                              ; $7f58: $c3 $be $4e


    ld a, c                                       ; $7f5b: $79
    ld c, $d7                                     ; $7f5c: $0e $d7
    add $4e                                       ; $7f5e: $c6 $4e
    ret z                                         ; $7f60: $c8

    add sp, -$32                                  ; $7f61: $e8 $ce
    cp [hl]                                       ; $7f63: $be
    add e                                         ; $7f64: $83
    sbc a                                         ; $7f65: $9f
    ld c, $57                                     ; $7f66: $0e $57
    ld l, h                                       ; $7f68: $6c
    ld l, c                                       ; $7f69: $69
    cp b                                          ; $7f6a: $b8
    ld [hl], d                                    ; $7f6b: $72
    xor a                                         ; $7f6c: $af
    ret c                                         ; $7f6d: $d8

    db $e4                                        ; $7f6e: $e4
    rra                                           ; $7f6f: $1f
    ld c, $e7                                     ; $7f70: $0e $e7
    ld d, c                                       ; $7f72: $51
    call z, $e8dd                                 ; $7f73: $cc $dd $e8
    dec b                                         ; $7f76: $05
    sbc l                                         ; $7f77: $9d
    sbc $a0                                       ; $7f78: $de $a0
    dec bc                                        ; $7f7a: $0b
    adc l                                         ; $7f7b: $8d
    cp l                                          ; $7f7c: $bd
    ld l, [hl]                                    ; $7f7d: $6e
    sub e                                         ; $7f7e: $93
    db $e3                                        ; $7f7f: $e3
    inc e                                         ; $7f80: $1c
    ld l, a                                       ; $7f81: $6f
    ld de, $d6d1                                  ; $7f82: $11 $d1 $d6
    xor l                                         ; $7f85: $ad
    cp [hl]                                       ; $7f86: $be
    or l                                          ; $7f87: $b5
    rst $08                                       ; $7f88: $cf
    dec l                                         ; $7f89: $2d
    cp b                                          ; $7f8a: $b8
    inc bc                                        ; $7f8b: $03
    sub a                                         ; $7f8c: $97
    ld [hl], a                                    ; $7f8d: $77
    ld hl, $a22d                                  ; $7f8e: $21 $2d $a2
    sbc a                                         ; $7f91: $9f
    call $f144                                    ; $7f92: $cd $44 $f1
    jp c, $03f7                                   ; $7f95: $da $f7 $03

    ld e, a                                       ; $7f98: $5f
    ld [c], a                                     ; $7f99: $e2
    cp a                                          ; $7f9a: $bf
    ld l, b                                       ; $7f9b: $68
    db $fd                                        ; $7f9c: $fd
    inc d                                         ; $7f9d: $14
    ld a, [de]                                    ; $7f9e: $1a
    ld l, l                                       ; $7f9f: $6d
    ret                                           ; $7fa0: $c9


    rra                                           ; $7fa1: $1f
    ld c, $5f                                     ; $7fa2: $0e $5f
    pop bc                                        ; $7fa4: $c1
    db $fc                                        ; $7fa5: $fc
    adc $9f                                       ; $7fa6: $ce $9f
    ld a, d                                       ; $7fa8: $7a
    ld a, l                                       ; $7fa9: $7d
    ld b, a                                       ; $7faa: $47
    adc h                                         ; $7fab: $8c
    rlca                                          ; $7fac: $07
    ld l, a                                       ; $7fad: $6f
    rst $38                                       ; $7fae: $ff
    db $e4                                        ; $7faf: $e4
    ld b, d                                       ; $7fb0: $42
    ld [hl], c                                    ; $7fb1: $71
    ld b, [hl]                                    ; $7fb2: $46
    rst $18                                       ; $7fb3: $df
    ld c, c                                       ; $7fb4: $49
    and $70                                       ; $7fb5: $e6 $70
    ld [c], a                                     ; $7fb7: $e2
    ld bc, $a4ef                                  ; $7fb8: $01 $ef $a4
    ld e, l                                       ; $7fbb: $5d
    ld c, b                                       ; $7fbc: $48
    adc e                                         ; $7fbd: $8b
    add d                                         ; $7fbe: $82
    ld c, [hl]                                    ; $7fbf: $4e
    rst $18                                       ; $7fc0: $df
    and [hl]                                      ; $7fc1: $a6
    ld b, [hl]                                    ; $7fc2: $46
    cp d                                          ; $7fc3: $ba
    push hl                                       ; $7fc4: $e5
    rst $20                                       ; $7fc5: $e7
    nop                                           ; $7fc6: $00
    ld e, a                                       ; $7fc7: $5f
    jr nc, @+$7d                                  ; $7fc8: $30 $7b

    xor $2b                                       ; $7fca: $ee $2b
    dec bc                                        ; $7fcc: $0b
    adc d                                         ; $7fcd: $8a
    sbc [hl]                                      ; $7fce: $9e
    ld l, e                                       ; $7fcf: $6b
    jr nz, jr_06e_7fff                            ; $7fd0: $20 $2d

    ld e, l                                       ; $7fd2: $5d
    ld de, $9f07                                  ; $7fd3: $11 $07 $9f
    xor l                                         ; $7fd6: $ad
    ld a, l                                       ; $7fd7: $7d

Jump_06e_7fd8:
    rst $38                                       ; $7fd8: $ff
    xor c                                         ; $7fd9: $a9
    sbc a                                         ; $7fda: $9f
    call Call_000_3c0f                            ; $7fdb: $cd $0f $3c
    nop                                           ; $7fde: $00
    ld d, a                                       ; $7fdf: $57
    ld h, b                                       ; $7fe0: $60
    ei                                            ; $7fe1: $fb
    call nz, Call_06e_5e88                        ; $7fe2: $c4 $88 $5e
    and a                                         ; $7fe5: $a7
    scf                                           ; $7fe6: $37
    ret c                                         ; $7fe7: $d8

    jr z, jr_06e_7ff8                             ; $7fe8: $28 $0e

    rst $20                                       ; $7fea: $e7
    cp $04                                        ; $7feb: $fe $04
    db $eb                                        ; $7fed: $eb
    adc l                                         ; $7fee: $8d
    ld l, b                                       ; $7fef: $68
    sub e                                         ; $7ff0: $93
    or $13                                        ; $7ff1: $f6 $13
    db $ed                                        ; $7ff3: $ed
    nop                                           ; $7ff4: $00
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff
    rst $38                                       ; $7ff7: $ff

jr_06e_7ff8:
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff

jr_06e_7fff:
    rst $38                                       ; $7fff: $ff
