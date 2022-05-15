; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0c2", ROMX[$4000], BANK[$c2]

    db $c2

    inc d                                         ; $4001: $14
    nop                                           ; $4002: $00
    ld a, [de]                                    ; $4003: $1a
    nop                                           ; $4004: $00
    ld [$2101], sp                                ; $4005: $08 $01 $21
    add b                                         ; $4008: $80
    add c                                         ; $4009: $81
    ld bc, $8270                                  ; $400a: $01 $70 $82
    add e                                         ; $400d: $83
    add sp, -$17                                  ; $400e: $e8 $e9

Jump_0c2_4010:
    ld [bc], a                                    ; $4010: $02
    jr jr_0c2_4034                                ; $4011: $18 $21

    pop af                                        ; $4013: $f1
    ld hl, sp+$0a                                 ; $4014: $f8 $0a
    db $28, $84                                   ; $4016: $28 $84
    add l                                         ; $4018: $85
    ld [$02eb], a                                 ; $4019: $ea $eb $02
    jr jr_0c2_4042                                ; $401c: $18 $24

    di                                            ; $401e: $f3
    ld sp, hl                                     ; $401f: $f9
    ld a, [bc]                                    ; $4020: $0a
    db $28, $86                                   ; $4021: $28 $86
    add a                                         ; $4023: $87
    jr z, jr_0c2_409e                             ; $4024: $28 $78

    adc b                                         ; $4026: $88
    adc c                                         ; $4027: $89
    sub d                                         ; $4028: $92
    jr z, @+$7a                                   ; $4029: $28 $78

    adc d                                         ; $402b: $8a
    adc e                                         ; $402c: $8b
    ld d, b                                       ; $402d: $50
    ld a, b                                       ; $402e: $78
    adc h                                         ; $402f: $8c
    adc l                                         ; $4030: $8d
    ld d, b                                       ; $4031: $50
    ld a, b                                       ; $4032: $78
    adc [hl]                                      ; $4033: $8e

jr_0c2_4034:
    ld c, c                                       ; $4034: $49
    adc a                                         ; $4035: $8f
    ld a, b                                       ; $4036: $78
    ld a, b                                       ; $4037: $78
    sub b                                         ; $4038: $90
    sub c                                         ; $4039: $91
    ld a, b                                       ; $403a: $78
    ld a, b                                       ; $403b: $78
    sub d                                         ; $403c: $92
    sub d                                         ; $403d: $92
    and b                                         ; $403e: $a0
    ld a, b                                       ; $403f: $78
    inc h                                         ; $4040: $24
    sub c                                         ; $4041: $91

jr_0c2_4042:
    sub b                                         ; $4042: $90
    and b                                         ; $4043: $a0
    ld a, b                                       ; $4044: $78
    adc a                                         ; $4045: $8f
    adc [hl]                                      ; $4046: $8e
    ret z                                         ; $4047: $c8

    ld a, b                                       ; $4048: $78
    adc l                                         ; $4049: $8d
    adc h                                         ; $404a: $8c
    sub d                                         ; $404b: $92
    ret z                                         ; $404c: $c8

    ld a, b                                       ; $404d: $78
    adc e                                         ; $404e: $8b
    adc d                                         ; $404f: $8a
    inc b                                         ; $4050: $04
    ld a, c                                       ; $4051: $79
    adc c                                         ; $4052: $89
    adc b                                         ; $4053: $88
    jr @+$7b                                      ; $4054: $18 $79

    add a                                         ; $4056: $87
    ld c, h                                       ; $4057: $4c
    add [hl]                                      ; $4058: $86
    inc l                                         ; $4059: $2c
    ld de, $edec                                  ; $405a: $11 $ec $ed
    ld [bc], a                                    ; $405d: $02
    jr jr_0c2_4099                                ; $405e: $18 $39

    ld de, $8485                                  ; $4060: $11 $85 $84
    sbc c                                         ; $4063: $99
    ld b, b                                       ; $4064: $40
    ld de, $efee                                  ; $4065: $11 $ee $ef
    ld [bc], a                                    ; $4068: $02
    jr jr_0c2_40b8                                ; $4069: $18 $4d

    ld de, $8283                                  ; $406b: $11 $83 $82
    ld d, h                                       ; $406e: $54
    ld a, c                                       ; $406f: $79
    nop                                           ; $4070: $00
    add b                                         ; $4071: $80
    sub e                                         ; $4072: $93
    sub h                                         ; $4073: $94
    sub a                                         ; $4074: $97
    sbc b                                         ; $4075: $98
    sbc c                                         ; $4076: $99
    sbc d                                         ; $4077: $9a
    sbc e                                         ; $4078: $9b
    nop                                           ; $4079: $00
    sbc h                                         ; $407a: $9c
    sub l                                         ; $407b: $95
    sub [hl]                                      ; $407c: $96
    add sp, -$17                                  ; $407d: $e8 $e9
    db $ec                                        ; $407f: $ec
    db $ed                                        ; $4080: $ed
    ld a, [$fb00]                                 ; $4081: $fa $00 $fb
    pop af                                        ; $4084: $f1
    ld hl, sp-$6b                                 ; $4085: $f8 $95
    sub [hl]                                      ; $4087: $96
    sbc [hl]                                      ; $4088: $9e
    sbc a                                         ; $4089: $9f
    and d                                         ; $408a: $a2
    nop                                           ; $408b: $00
    and e                                         ; $408c: $a3
    and h                                         ; $408d: $a4
    and l                                         ; $408e: $a5
    and [hl]                                      ; $408f: $a6
    and a                                         ; $4090: $a7
    and b                                         ; $4091: $a0
    and c                                         ; $4092: $a1
    ld [$eb00], a                                 ; $4093: $ea $00 $eb
    xor $ef                                       ; $4096: $ee $ef
    di                                            ; $4098: $f3

jr_0c2_4099:
    ld sp, hl                                     ; $4099: $f9
    di                                            ; $409a: $f3
    ld sp, hl                                     ; $409b: $f9
    and b                                         ; $409c: $a0
    nop                                           ; $409d: $00

jr_0c2_409e:
    and c                                         ; $409e: $a1
    xor b                                         ; $409f: $a8
    xor c                                         ; $40a0: $a9
    call z, $b0cd                                 ; $40a1: $cc $cd $b0
    or c                                          ; $40a4: $b1
    ret nc                                        ; $40a5: $d0

    db $10                                        ; $40a6: $10
    pop de                                        ; $40a7: $d1
    xor [hl]                                      ; $40a8: $ae
    xor a                                         ; $40a9: $af
    jr z, jr_0c2_40b4                             ; $40aa: $28 $08

    db $fc                                        ; $40ac: $fc
    db $fd                                        ; $40ad: $fd
    sbc l                                         ; $40ae: $9d
    sbc l                                         ; $40af: $9d
    nop                                           ; $40b0: $00
    xor [hl]                                      ; $40b1: $ae
    xor a                                         ; $40b2: $af
    cp b                                          ; $40b3: $b8

jr_0c2_40b4:
    cp c                                          ; $40b4: $b9
    call c, $c0dd                                 ; $40b5: $dc $dd $c0

jr_0c2_40b8:
    pop bc                                        ; $40b8: $c1
    ld [$e1e0], sp                                ; $40b9: $08 $e0 $e1
    cp [hl]                                       ; $40bc: $be
    cp a                                          ; $40bd: $bf
    jr z, @+$1a                                   ; $40be: $28 $18

    sbc l                                         ; $40c0: $9d
    sbc l                                         ; $40c1: $9d
    cp [hl]                                       ; $40c2: $be
    nop                                           ; $40c3: $00
    cp a                                          ; $40c4: $bf
    or d                                          ; $40c5: $b2
    or e                                          ; $40c6: $b3
    adc $cf                                       ; $40c7: $ce $cf
    or h                                          ; $40c9: $b4
    or l                                          ; $40ca: $b5
    ret z                                         ; $40cb: $c8

    db $10                                        ; $40cc: $10
    ret                                           ; $40cd: $c9


    sub $d7                                       ; $40ce: $d6 $d7
    jr z, jr_0c2_40fa                             ; $40d0: $28 $28

    or [hl]                                       ; $40d2: $b6
    or a                                          ; $40d3: $b7
    jp nz, $00c3                                  ; $40d4: $c2 $c3 $00

    sbc $df                                       ; $40d7: $de $df
    call nz, $d8c5                                ; $40d9: $c4 $c5 $d8
    reti                                          ; $40dc: $d9


    and $e7                                       ; $40dd: $e6 $e7
    add b                                         ; $40df: $80
    ld d, b                                       ; $40e0: $50
    ld [$fffe], sp                                ; $40e1: $08 $fe $ff
    sbc l                                         ; $40e4: $9d
    sbc l                                         ; $40e5: $9d
    add $c7                                       ; $40e6: $c6 $c7
    call nc, $d500                                ; $40e8: $d4 $00 $d5
    xor d                                         ; $40eb: $aa
    xor e                                         ; $40ec: $ab
    jp nc, $cad3                                  ; $40ed: $d2 $d3 $ca

    res 6, [hl]                                   ; $40f0: $cb $b6
    ld b, b                                       ; $40f2: $40
    or a                                          ; $40f3: $b7
    ld d, b                                       ; $40f4: $50
    jr @-$52                                      ; $40f5: $18 $ac

    xor l                                         ; $40f7: $ad
    sub $d7                                       ; $40f8: $d6 $d7

jr_0c2_40fa:
    db $e4                                        ; $40fa: $e4
    push hl                                       ; $40fb: $e5
    nop                                           ; $40fc: $00
    cp d                                          ; $40fd: $ba
    cp e                                          ; $40fe: $bb
    ld [c], a                                     ; $40ff: $e2
    db $e3                                        ; $4100: $e3
    jp c, $c6db                                   ; $4101: $da $db $c6

    rst $00                                       ; $4104: $c7
    add b                                         ; $4105: $80
    ld a, b                                       ; $4106: $78
    ld [$0100], sp                                ; $4107: $08 $00 $01
    cp h                                          ; $410a: $bc
    cp l                                          ; $410b: $bd
    and $e7                                       ; $410c: $e6 $e7
    nop                                           ; $410e: $00
    db $fd                                        ; $410f: $fd
    ld bc, $23f8                                  ; $4110: $01 $f8 $23
    ld hl, sp+$45                                 ; $4113: $f8 $45
    ld hl, sp+$67                                 ; $4115: $f8 $67
    ld hl, sp-$77                                 ; $4117: $f8 $89
    ld hl, sp-$55                                 ; $4119: $f8 $ab
    jr nc, jr_0c2_417d                            ; $411b: $30 $60

    inc de                                        ; $411d: $13
    add b                                         ; $411e: $80
    ld hl, sp+$14                                 ; $411f: $f8 $14
    ld hl, sp+$28                                 ; $4121: $f8 $28
    ld hl, sp+$50                                 ; $4123: $f8 $50
    ld hl, sp+$78                                 ; $4125: $f8 $78
    ld hl, sp-$74                                 ; $4127: $f8 $8c
    xor b                                         ; $4129: $a8
    inc bc                                        ; $412a: $03
    inc bc                                        ; $412b: $03
    dec b                                         ; $412c: $05
    ld bc, $0605                                  ; $412d: $01 $05 $06
    ld b, $03                                     ; $4130: $06 $03
    inc bc                                        ; $4132: $03
    rlca                                          ; $4133: $07
    rlca                                          ; $4134: $07
    ld [hl], d                                    ; $4135: $72
    add hl, hl                                    ; $4136: $29
    jr nz, jr_0c2_4140                            ; $4137: $20 $07

    rlca                                          ; $4139: $07
    inc d                                         ; $413a: $14
    adc b                                         ; $413b: $88
    inc b                                         ; $413c: $04
    inc b                                         ; $413d: $04
    ld b, $06                                     ; $413e: $06 $06

jr_0c2_4140:
    dec b                                         ; $4140: $05
    ld h, b                                       ; $4141: $60
    dec b                                         ; $4142: $05
    inc d                                         ; $4143: $14
    ld hl, sp+$3e                                 ; $4144: $f8 $3e
    ld [$0606], sp                                ; $4146: $08 $06 $06
    inc b                                         ; $4149: $04
    inc b                                         ; $414a: $04
    dec b                                         ; $414b: $05
    ld c, b                                       ; $414c: $48
    dec b                                         ; $414d: $05
    jp nz, Jump_000_0629                          ; $414e: $c2 $29 $06

    ld b, $14                                     ; $4151: $06 $14
    adc b                                         ; $4153: $88
    dec b                                         ; $4154: $05
    dec b                                         ; $4155: $05
    inc b                                         ; $4156: $04
    ld c, e                                       ; $4157: $4b
    inc b                                         ; $4158: $04
    halt                                          ; $4159: $76
    ld [$0606], sp                                ; $415a: $08 $06 $06
    halt                                          ; $415d: $76
    jr z, @+$07                                   ; $415e: $28 $05

    ld bc, $1400                                  ; $4160: $01 $00 $14
    ld a, b                                       ; $4163: $78
    jr nz, jr_0c2_4166                            ; $4164: $20 $00

jr_0c2_4166:
    ld a, [de]                                    ; $4166: $1a
    nop                                           ; $4167: $00
    db $10                                        ; $4168: $10
    ld bc, $8000                                  ; $4169: $01 $00 $80
    add c                                         ; $416c: $81
    add d                                         ; $416d: $82
    add e                                         ; $416e: $83
    add h                                         ; $416f: $84
    add l                                         ; $4170: $85
    add [hl]                                      ; $4171: $86
    add a                                         ; $4172: $87
    ld c, b                                       ; $4173: $48
    adc b                                         ; $4174: $88
    ld [$8040], sp                                ; $4175: $08 $40 $80
    and a                                         ; $4178: $a7
    ld bc, $8a38                                  ; $4179: $01 $38 $8a
    adc e                                         ; $417c: $8b

jr_0c2_417d:
    adc h                                         ; $417d: $8c
    jr nc, @-$71                                  ; $417e: $30 $8d

    adc [hl]                                      ; $4180: $8e
    dec b                                         ; $4181: $05
    ld l, b                                       ; $4182: $68
    jr nz, jr_0c2_41c5                            ; $4183: $20 $40

    adc a                                         ; $4185: $8f
    sub b                                         ; $4186: $90
    sub c                                         ; $4187: $91
    sub d                                         ; $4188: $92
    ld h, b                                       ; $4189: $60
    sub e                                         ; $418a: $93
    dec b                                         ; $418b: $05
    ld l, b                                       ; $418c: $68
    ld b, b                                       ; $418d: $40
    ld b, b                                       ; $418e: $40
    sub h                                         ; $418f: $94
    sub l                                         ; $4190: $95
    sub [hl]                                      ; $4191: $96
    sub a                                         ; $4192: $97
    sbc b                                         ; $4193: $98
    pop bc                                        ; $4194: $c1
    dec b                                         ; $4195: $05
    ld l, b                                       ; $4196: $68
    ld h, b                                       ; $4197: $60
    ld b, b                                       ; $4198: $40
    sbc c                                         ; $4199: $99
    sbc d                                         ; $419a: $9a
    sbc e                                         ; $419b: $9b
    sbc h                                         ; $419c: $9c
    sbc l                                         ; $419d: $9d
    dec b                                         ; $419e: $05
    ld l, b                                       ; $419f: $68
    add e                                         ; $41a0: $83
    add b                                         ; $41a1: $80
    ld b, b                                       ; $41a2: $40
    sbc a                                         ; $41a3: $9f
    and b                                         ; $41a4: $a0
    and c                                         ; $41a5: $a1
    and d                                         ; $41a6: $a2
    adc e                                         ; $41a7: $8b
    dec b                                         ; $41a8: $05
    ld l, b                                       ; $41a9: $68
    and b                                         ; $41aa: $a0
    ld hl, sp-$01                                 ; $41ab: $f8 $ff
    and b                                         ; $41ad: $a0
    ld hl, sp-$60                                 ; $41ae: $f8 $a0
    ld hl, sp-$60                                 ; $41b0: $f8 $a0
    ld hl, sp-$60                                 ; $41b2: $f8 $a0
    ld hl, sp+$40                                 ; $41b4: $f8 $40
    ld sp, hl                                     ; $41b6: $f9
    ld b, b                                       ; $41b7: $40
    ld sp, hl                                     ; $41b8: $f9
    ld b, b                                       ; $41b9: $40
    ld sp, hl                                     ; $41ba: $f9
    ld b, b                                       ; $41bb: $40
    ld sp, hl                                     ; $41bc: $f9
    xor b                                         ; $41bd: $a8
    ld b, b                                       ; $41be: $40
    or c                                          ; $41bf: $b1
    sbc [hl]                                      ; $41c0: $9e
    and b                                         ; $41c1: $a0
    add c                                         ; $41c2: $81
    sbc [hl]                                      ; $41c3: $9e
    nop                                           ; $41c4: $00

jr_0c2_41c5:
    ld b, d                                       ; $41c5: $42
    add b                                         ; $41c6: $80
    add e                                         ; $41c7: $83
    add d                                         ; $41c8: $82
    inc bc                                        ; $41c9: $03
    add c                                         ; $41ca: $81
    adc b                                         ; $41cb: $88
    add a                                         ; $41cc: $87
    add [hl]                                      ; $41cd: $86
    add l                                         ; $41ce: $85
    add h                                         ; $41cf: $84
    ld [$2040], sp                                ; $41d0: $08 $40 $20
    ld c, d                                       ; $41d3: $4a
    nop                                           ; $41d4: $00
    and e                                         ; $41d5: $a3
    and h                                         ; $41d6: $a4
    and h                                         ; $41d7: $a4
    and e                                         ; $41d8: $a3
    and l                                         ; $41d9: $a5
    and [hl]                                      ; $41da: $a6
    and [hl]                                      ; $41db: $a6
    sbc [hl]                                      ; $41dc: $9e
    nop                                           ; $41dd: $00
    sbc [hl]                                      ; $41de: $9e
    xor b                                         ; $41df: $a8
    xor b                                         ; $41e0: $a8
    sbc [hl]                                      ; $41e1: $9e
    sbc [hl]                                      ; $41e2: $9e
    xor c                                         ; $41e3: $a9
    xor c                                         ; $41e4: $a9
    sbc [hl]                                      ; $41e5: $9e
    nop                                           ; $41e6: $00
    sbc [hl]                                      ; $41e7: $9e
    xor d                                         ; $41e8: $aa
    xor d                                         ; $41e9: $aa
    sbc [hl]                                      ; $41ea: $9e
    sbc [hl]                                      ; $41eb: $9e
    xor e                                         ; $41ec: $ab
    xor e                                         ; $41ed: $ab
    sbc [hl]                                      ; $41ee: $9e
    nop                                           ; $41ef: $00
    sbc [hl]                                      ; $41f0: $9e
    xor h                                         ; $41f1: $ac
    xor h                                         ; $41f2: $ac
    sbc [hl]                                      ; $41f3: $9e
    sbc [hl]                                      ; $41f4: $9e

jr_0c2_41f5:
    xor l                                         ; $41f5: $ad
    xor [hl]                                      ; $41f6: $ae
    sbc [hl]                                      ; $41f7: $9e
    nop                                           ; $41f8: $00
    xor a                                         ; $41f9: $af
    or b                                          ; $41fa: $b0
    or b                                          ; $41fb: $b0
    xor a                                         ; $41fc: $af
    or c                                          ; $41fd: $b1
    or d                                          ; $41fe: $b2
    or d                                          ; $41ff: $b2
    or c                                          ; $4200: $b1
    nop                                           ; $4201: $00
    or e                                          ; $4202: $b3
    or h                                          ; $4203: $b4
    or h                                          ; $4204: $b4
    or e                                          ; $4205: $b3
    or l                                          ; $4206: $b5
    or [hl]                                       ; $4207: $b6
    or [hl]                                       ; $4208: $b6
    or l                                          ; $4209: $b5

jr_0c2_420a:
    ld bc, $b79e                                  ; $420a: $01 $9e $b7
    or a                                          ; $420d: $b7
    sbc [hl]                                      ; $420e: $9e
    sbc [hl]                                      ; $420f: $9e
    cp b                                          ; $4210: $b8
    cp b                                          ; $4211: $b8
    jr nz, @+$1a                                  ; $4212: $20 $18

    nop                                           ; $4214: $00
    cp c                                          ; $4215: $b9
    cp d                                          ; $4216: $ba
    sbc [hl]                                      ; $4217: $9e
    cp e                                          ; $4218: $bb
    cp h                                          ; $4219: $bc
    cp h                                          ; $421a: $bc
    cp e                                          ; $421b: $bb
    cp l                                          ; $421c: $bd
    nop                                           ; $421d: $00
    cp [hl]                                       ; $421e: $be
    cp [hl]                                       ; $421f: $be
    cp l                                          ; $4220: $bd
    cp a                                          ; $4221: $bf
    ret nz                                        ; $4222: $c0

    ret nz                                        ; $4223: $c0

jr_0c2_4224:
    cp a                                          ; $4224: $bf
    pop bc                                        ; $4225: $c1
    nop                                           ; $4226: $00
    jp nz, $c1c2                                  ; $4227: $c2 $c2 $c1

    sbc [hl]                                      ; $422a: $9e
    jp $9ec3                                      ; $422b: $c3 $c3 $9e


    sbc [hl]                                      ; $422e: $9e
    jr nz, jr_0c2_41f5                            ; $422f: $20 $c4

    call nz, $1840                                ; $4231: $c4 $40 $18
    push bc                                       ; $4234: $c5
    add $9e                                       ; $4235: $c6 $9e
    rst $00                                       ; $4237: $c7
    ret z                                         ; $4238: $c8

    nop                                           ; $4239: $00
    ret z                                         ; $423a: $c8

    rst $00                                       ; $423b: $c7
    ret                                           ; $423c: $c9


    jp z, $c9ca                                   ; $423d: $ca $ca $c9

    set 1, h                                      ; $4240: $cb $cc
    nop                                           ; $4242: $00
    call z, $9ecb                                 ; $4243: $cc $cb $9e
    call $9ecd                                    ; $4246: $cd $cd $9e
    sbc [hl]                                      ; $4249: $9e
    adc $04                                       ; $424a: $ce $04
    adc $9e                                       ; $424c: $ce $9e
    sbc [hl]                                      ; $424e: $9e
    rst $08                                       ; $424f: $cf
    rst $08                                       ; $4250: $cf
    ld h, b                                       ; $4251: $60
    jr jr_0c2_4224                                ; $4252: $18 $d0

    adc c                                         ; $4254: $89
    ld a, a                                       ; $4255: $7f
    sbc [hl]                                      ; $4256: $9e
    sbc a                                         ; $4257: $9f
    ld a, [bc]                                    ; $4258: $0a
    add h                                         ; $4259: $84
    ld [$8804], sp                                ; $425a: $08 $04 $88
    rst $00                                       ; $425d: $c7
    ld a, [bc]                                    ; $425e: $0a
    sbc a                                         ; $425f: $9f
    ld a, [bc]                                    ; $4260: $0a
    add h                                         ; $4261: $84
    ld [$8804], sp                                ; $4262: $08 $04 $88
    rst $38                                       ; $4265: $ff
    rst $20                                       ; $4266: $e7
    ld a, [bc]                                    ; $4267: $0a
    sbc a                                         ; $4268: $9f
    ld a, [bc]                                    ; $4269: $0a
    add h                                         ; $426a: $84
    ld [$8804], sp                                ; $426b: $08 $04 $88
    rlca                                          ; $426e: $07
    dec bc                                        ; $426f: $0b
    sbc a                                         ; $4270: $9f
    ld a, [bc]                                    ; $4271: $0a
    add h                                         ; $4272: $84
    ld [$8804], sp                                ; $4273: $08 $04 $88
    and [hl]                                      ; $4276: $a6
    daa                                           ; $4277: $27
    dec bc                                        ; $4278: $0b
    nop                                           ; $4279: $00
    ld bc, $2080                                  ; $427a: $01 $80 $20
    ld bc, $3801                                  ; $427d: $01 $01 $38
    jr nz, jr_0c2_420a                            ; $4280: $20 $88

    nop                                           ; $4282: $00
    rst $30                                       ; $4283: $f7
    jr nz, @-$06                                  ; $4284: $20 $f8

    ld b, b                                       ; $4286: $40
    ld hl, sp+$60                                 ; $4287: $f8 $60
    ld hl, sp-$80                                 ; $4289: $f8 $80
    jr nc, jr_0c2_42cd                            ; $428b: $30 $40

    dec b                                         ; $428d: $05
    ld l, b                                       ; $428e: $68
    and b                                         ; $428f: $a0
    ld hl, sp-$40                                 ; $4290: $f8 $c0
    ld hl, sp-$01                                 ; $4292: $f8 $ff
    ldh [$f8], a                                  ; $4294: $e0 $f8
    nop                                           ; $4296: $00
    ld sp, hl                                     ; $4297: $f9
    and b                                         ; $4298: $a0
    ld hl, sp+$40                                 ; $4299: $f8 $40
    ld sp, hl                                     ; $429b: $f9
    ld h, b                                       ; $429c: $60
    ld sp, hl                                     ; $429d: $f9
    add b                                         ; $429e: $80
    ld sp, hl                                     ; $429f: $f9
    ld b, b                                       ; $42a0: $40
    ld sp, hl                                     ; $42a1: $f9
    ld b, b                                       ; $42a2: $40
    ld sp, hl                                     ; $42a3: $f9
    sbc b                                         ; $42a4: $98
    ldh [$a1], a                                  ; $42a5: $e0 $a1
    ld b, b                                       ; $42a7: $40
    ld h, b                                       ; $42a8: $60
    ld bc, $2080                                  ; $42a9: $01 $80 $20
    ld b, d                                       ; $42ac: $42
    ld bc, $2101                                  ; $42ad: $01 $01 $21

jr_0c2_42b0:
    ld [hl], a                                    ; $42b0: $77
    ld hl, $0004                                  ; $42b1: $21 $04 $00
    inc d                                         ; $42b4: $14
    ld [bc], a                                    ; $42b5: $02
    inc b                                         ; $42b6: $04
    adc b                                         ; $42b7: $88
    ld bc, $022b                                  ; $42b8: $01 $2b $02
    jr nz, jr_0c2_42cd                            ; $42bb: $20 $10

    inc b                                         ; $42bd: $04
    jr nc, jr_0c2_42b0                            ; $42be: $30 $f0

    jr nz, @-$06                                  ; $42c0: $20 $f8

    ld b, b                                       ; $42c2: $40
    cp b                                          ; $42c3: $b8
    ld h, b                                       ; $42c4: $60
    adc b                                         ; $42c5: $88
    ret nz                                        ; $42c6: $c0

    ld a, [bc]                                    ; $42c7: $0a
    ld [bc], a                                    ; $42c8: $02
    ld [bc], a                                    ; $42c9: $02
    ld [hl+], a                                   ; $42ca: $22
    ld [hl+], a                                   ; $42cb: $22
    nop                                           ; $42cc: $00

jr_0c2_42cd:
    inc bc                                        ; $42cd: $03
    inc bc                                        ; $42ce: $03
    inc hl                                        ; $42cf: $23
    inc hl                                        ; $42d0: $23
    inc b                                         ; $42d1: $04
    inc b                                         ; $42d2: $04
    inc h                                         ; $42d3: $24
    inc h                                         ; $42d4: $24
    nop                                           ; $42d5: $00
    dec b                                         ; $42d6: $05
    dec b                                         ; $42d7: $05
    dec h                                         ; $42d8: $25
    dec h                                         ; $42d9: $25
    ld b, $06                                     ; $42da: $06 $06
    ld h, $26                                     ; $42dc: $26 $26
    rrca                                          ; $42de: $0f

jr_0c2_42df:
    rlca                                          ; $42df: $07
    rlca                                          ; $42e0: $07
    daa                                           ; $42e1: $27
    daa                                           ; $42e2: $27
    ret nz                                        ; $42e3: $c0

    ld a, [hl+]                                   ; $42e4: $2a
    jr nz, jr_0c2_42df                            ; $42e5: $20 $f8

    ld b, b                                       ; $42e7: $40
    ld hl, sp+$60                                 ; $42e8: $f8 $60
    xor b                                         ; $42ea: $a8
    inc d                                         ; $42eb: $14
    nop                                           ; $42ec: $00
    ld [de], a                                    ; $42ed: $12
    nop                                           ; $42ee: $00
    ld b, e                                       ; $42ef: $43
    ld bc, $8150                                  ; $42f0: $01 $50 $81
    ld bc, $8280                                  ; $42f3: $01 $80 $82
    ld bc, $dd80                                  ; $42f6: $01 $80 $dd
    sbc $df                                       ; $42f9: $de $df
    ldh [rP1], a                                  ; $42fb: $e0 $00
    pop hl                                        ; $42fd: $e1
    ld [c], a                                     ; $42fe: $e2
    db $e3                                        ; $42ff: $e3
    db $e4                                        ; $4300: $e4
    push hl                                       ; $4301: $e5
    and $e7                                       ; $4302: $e6 $e7
    add sp, $00                                   ; $4304: $e8 $00
    jp hl                                         ; $4306: $e9


    ld [$eceb], a                                 ; $4307: $ea $eb $ec
    db $ed                                        ; $430a: $ed
    xor $ef                                       ; $430b: $ee $ef
    ldh a, [rP1]                                  ; $430d: $f0 $00
    ld sp, hl                                     ; $430f: $f9
    ld a, [$fcfb]                                 ; $4310: $fa $fb $fc
    db $fd                                        ; $4313: $fd
    cp $ff                                        ; $4314: $fe $ff
    nop                                           ; $4316: $00
    nop                                           ; $4317: $00
    ld bc, $0302                                  ; $4318: $01 $02 $03
    inc b                                         ; $431b: $04
    dec b                                         ; $431c: $05
    ld b, $07                                     ; $431d: $06 $07
    ld [$0900], sp                                ; $431f: $08 $00 $09
    ld a, [bc]                                    ; $4322: $0a
    dec bc                                        ; $4323: $0b
    inc c                                         ; $4324: $0c
    dec d                                         ; $4325: $15
    ld d, $17                                     ; $4326: $16 $17
    jr jr_0c2_432a                                ; $4328: $18 $00

jr_0c2_432a:
    add hl, de                                    ; $432a: $19
    ld a, [de]                                    ; $432b: $1a
    dec de                                        ; $432c: $1b
    inc e                                         ; $432d: $1c
    dec e                                         ; $432e: $1d
    ld e, $1f                                     ; $432f: $1e $1f
    jr nz, jr_0c2_4333                            ; $4331: $20 $00

jr_0c2_4333:
    ld hl, $2322                                  ; $4333: $21 $22 $23
    inc h                                         ; $4336: $24
    dec h                                         ; $4337: $25
    ld h, $27                                     ; $4338: $26 $27
    jr z, jr_0c2_433c                             ; $433a: $28 $00

jr_0c2_433c:
    jr c, jr_0c2_4377                             ; $433c: $38 $39

    ld a, [hl-]                                   ; $433e: $3a
    dec sp                                        ; $433f: $3b
    inc a                                         ; $4340: $3c
    dec a                                         ; $4341: $3d
    ld a, $3f                                     ; $4342: $3e $3f
    nop                                           ; $4344: $00
    ld b, b                                       ; $4345: $40
    ld b, c                                       ; $4346: $41
    ld b, d                                       ; $4347: $42
    ld b, e                                       ; $4348: $43
    ld b, h                                       ; $4349: $44
    ld b, l                                       ; $434a: $45
    ld b, [hl]                                    ; $434b: $46
    ld b, a                                       ; $434c: $47
    nop                                           ; $434d: $00
    ld c, b                                       ; $434e: $48

jr_0c2_434f:
    ld c, c                                       ; $434f: $49
    ld c, d                                       ; $4350: $4a
    ld c, e                                       ; $4351: $4b
    rst $10                                       ; $4352: $d7
    sub $d5                                       ; $4353: $d6 $d5
    call nc, $d300                                ; $4355: $d4 $00 $d3
    jp nc, $d0d1                                  ; $4358: $d2 $d1 $d0

    rst $08                                       ; $435b: $cf
    adc $cd                                       ; $435c: $ce $cd
    call z, $cb00                                 ; $435e: $cc $00 $cb
    jp z, $c8c9                                   ; $4361: $ca $c9 $c8

    rst $00                                       ; $4364: $c7
    add $c5                                       ; $4365: $c6 $c5
    ret nz                                        ; $4367: $c0

    nop                                           ; $4368: $00
    or b                                          ; $4369: $b0
    xor a                                         ; $436a: $af
    xor [hl]                                      ; $436b: $ae
    xor l                                         ; $436c: $ad
    sub a                                         ; $436d: $97
    sub [hl]                                      ; $436e: $96
    sub l                                         ; $436f: $95
    sub h                                         ; $4370: $94
    nop                                           ; $4371: $00
    sub e                                         ; $4372: $93
    sub d                                         ; $4373: $92
    sub c                                         ; $4374: $91
    sub b                                         ; $4375: $90
    adc a                                         ; $4376: $8f

jr_0c2_4377:
    adc [hl]                                      ; $4377: $8e
    adc l                                         ; $4378: $8d
    adc h                                         ; $4379: $8c
    nop                                           ; $437a: $00
    adc e                                         ; $437b: $8b
    adc d                                         ; $437c: $8a
    adc c                                         ; $437d: $89
    adc b                                         ; $437e: $88
    cp a                                          ; $437f: $bf
    ld d, d                                       ; $4380: $52
    ld c, a                                       ; $4381: $4f
    ld c, [hl]                                    ; $4382: $4e
    nop                                           ; $4383: $00
    ld c, l                                       ; $4384: $4d
    ld c, h                                       ; $4385: $4c
    cpl                                           ; $4386: $2f
    ld l, $2d                                     ; $4387: $2e $2d
    inc l                                         ; $4389: $2c
    dec hl                                        ; $438a: $2b
    ld a, [hl+]                                   ; $438b: $2a
    nop                                           ; $438c: $00
    add hl, hl                                    ; $438d: $29
    inc d                                         ; $438e: $14
    jr nc, jr_0c2_434f                            ; $438f: $30 $be

    cp h                                          ; $4391: $bc
    cp c                                          ; $4392: $b9
    add a                                         ; $4393: $87
    add [hl]                                      ; $4394: $86
    nop                                           ; $4395: $00
    add l                                         ; $4396: $85
    add h                                         ; $4397: $84
    add e                                         ; $4398: $83
    or c                                          ; $4399: $b1
    or d                                          ; $439a: $b2
    or e                                          ; $439b: $b3
    or h                                          ; $439c: $b4
    or l                                          ; $439d: $b5
    nop                                           ; $439e: $00
    or [hl]                                       ; $439f: $b6
    or a                                          ; $43a0: $b7
    or d                                          ; $43a1: $b2
    or e                                          ; $43a2: $b3
    cp b                                          ; $43a3: $b8
    cp d                                          ; $43a4: $ba
    cp e                                          ; $43a5: $bb
    cp l                                          ; $43a6: $bd
    nop                                           ; $43a7: $00
    ret c                                         ; $43a8: $d8

    ld e, c                                       ; $43a9: $59
    ld e, b                                       ; $43aa: $58
    ld d, a                                       ; $43ab: $57
    ld d, [hl]                                    ; $43ac: $56
    ld d, l                                       ; $43ad: $55
    ld d, [hl]                                    ; $43ae: $56
    ld d, l                                       ; $43af: $55
    nop                                           ; $43b0: $00
    ld d, h                                       ; $43b1: $54
    ld d, e                                       ; $43b2: $53
    ld d, c                                       ; $43b3: $51
    ld d, b                                       ; $43b4: $50
    ld d, c                                       ; $43b5: $51
    ld d, b                                       ; $43b6: $50
    ld d, h                                       ; $43b7: $54
    ld d, e                                       ; $43b8: $53
    ld h, b                                       ; $43b9: $60
    scf                                           ; $43ba: $37
    ld b, $00                                     ; $43bb: $06 $00
    rrca                                          ; $43bd: $0f
    nop                                           ; $43be: $00
    ld d, [hl]                                    ; $43bf: $56
    ld [hl], $35                                  ; $43c0: $36 $35
    ld [hl], $35                                  ; $43c2: $36 $35
    nop                                           ; $43c4: $00
    ld d, h                                       ; $43c5: $54
    ld d, e                                       ; $43c6: $53
    inc [hl]                                      ; $43c7: $34
    inc sp                                        ; $43c8: $33
    inc [hl]                                      ; $43c9: $34
    inc sp                                        ; $43ca: $33
    ld [hl-], a                                   ; $43cb: $32
    ld sp, $3760                                  ; $43cc: $31 $60 $37
    ld b, $00                                     ; $43cf: $06 $00
    rrca                                          ; $43d1: $0f
    nop                                           ; $43d2: $00
    ld [hl], $13                                  ; $43d3: $36 $13
    ld [de], a                                    ; $43d5: $12
    ld de, $0010                                  ; $43d6: $11 $10 $00
    rrca                                          ; $43d9: $0f
    ld c, $0d                                     ; $43da: $0e $0d
    ld hl, sp-$09                                 ; $43dc: $f8 $f7
    or $f5                                        ; $43de: $f6 $f5
    rst $30                                       ; $43e0: $f7
    nop                                           ; $43e1: $00
    ld hl, sp+$0d                                 ; $43e2: $f8 $0d
    ld c, $0f                                     ; $43e4: $0e $0f
    db $10                                        ; $43e6: $10
    ld de, $1312                                  ; $43e7: $11 $12 $13
    nop                                           ; $43ea: $00
    db $f4                                        ; $43eb: $f4
    di                                            ; $43ec: $f3
    ld a, [c]                                     ; $43ed: $f2
    pop af                                        ; $43ee: $f1
    call c, $dadb                                 ; $43ef: $dc $db $da
    reti                                          ; $43f2: $d9


    nop                                           ; $43f3: $00
    call nz, $c2c3                                ; $43f4: $c4 $c3 $c2
    call nz, $dad9                                ; $43f7: $c4 $d9 $da
    db $db                                        ; $43fa: $db
    call c, $f100                                 ; $43fb: $dc $00 $f1
    ld a, [c]                                     ; $43fe: $f2
    di                                            ; $43ff: $f3
    db $f4                                        ; $4400: $f4
    pop bc                                        ; $4401: $c1
    xor h                                         ; $4402: $ac
    xor e                                         ; $4403: $ab
    xor d                                         ; $4404: $aa
    nop                                           ; $4405: $00
    xor c                                         ; $4406: $a9
    xor b                                         ; $4407: $a8
    and a                                         ; $4408: $a7
    and [hl]                                      ; $4409: $a6
    and l                                         ; $440a: $a5
    and h                                         ; $440b: $a4
    and e                                         ; $440c: $a3
    and l                                         ; $440d: $a5
    nop                                           ; $440e: $00
    and [hl]                                      ; $440f: $a6
    and a                                         ; $4410: $a7
    xor b                                         ; $4411: $a8
    xor c                                         ; $4412: $a9
    xor d                                         ; $4413: $aa
    xor e                                         ; $4414: $ab
    xor h                                         ; $4415: $ac
    pop bc                                        ; $4416: $c1
    nop                                           ; $4417: $00
    and d                                         ; $4418: $a2
    and c                                         ; $4419: $a1

jr_0c2_441a:
    and b                                         ; $441a: $a0
    sbc a                                         ; $441b: $9f
    sbc [hl]                                      ; $441c: $9e
    sbc l                                         ; $441d: $9d
    sbc h                                         ; $441e: $9c
    sbc e                                         ; $441f: $9b
    nop                                           ; $4420: $00
    sbc d                                         ; $4421: $9a
    sbc c                                         ; $4422: $99
    sbc b                                         ; $4423: $98
    sbc d                                         ; $4424: $9a
    sbc e                                         ; $4425: $9b
    sbc h                                         ; $4426: $9c
    sbc l                                         ; $4427: $9d
    sbc [hl]                                      ; $4428: $9e
    dec c                                         ; $4429: $0d
    sbc a                                         ; $442a: $9f
    and b                                         ; $442b: $a0
    and c                                         ; $442c: $a1
    and d                                         ; $442d: $a2
    inc l                                         ; $442e: $2c
    adc c                                         ; $442f: $89
    ld d, h                                       ; $4430: $54
    adc c                                         ; $4431: $89
    nop                                           ; $4432: $00
    ld bc, $aef8                                  ; $4433: $01 $f8 $ae
    inc hl                                        ; $4436: $23
    db $10                                        ; $4437: $10
    inc bc                                        ; $4438: $03
    ld bc, $0600                                  ; $4439: $01 $00 $06
    ld bc, $1040                                  ; $443c: $01 $40 $10
    ld [$a814], sp                                ; $443f: $08 $14 $a8
    ld [bc], a                                    ; $4442: $02
    ld a, [c]                                     ; $4443: $f2
    ld bc, $1440                                  ; $4444: $01 $40 $14
    ld hl, sp+$28                                 ; $4447: $f8 $28
    ld hl, sp+$50                                 ; $4449: $f8 $50
    adc b                                         ; $444b: $88
    inc b                                         ; $444c: $04
    inc b                                         ; $444d: $04
    ld h, [hl]                                    ; $444e: $66
    ld [$dd04], sp                                ; $444f: $08 $04 $dd
    rlca                                          ; $4452: $07
    db $10                                        ; $4453: $10
    sbc h                                         ; $4454: $9c
    ld [$0101], sp                                ; $4455: $08 $01 $01
    nop                                           ; $4458: $00

jr_0c2_4459:
    ld c, $00                                     ; $4459: $0e $00
    inc bc                                        ; $445b: $03
    jr nc, jr_0c2_447f                            ; $445c: $30 $21

    ld bc, $9d00                                  ; $445e: $01 $00 $9d
    inc d                                         ; $4461: $14
    ld [$4444], sp                                ; $4462: $08 $44 $44
    ld d, $18                                     ; $4465: $16 $18
    rlca                                          ; $4467: $07
    ld [$0814], sp                                ; $4468: $08 $14 $08

jr_0c2_446b:
    rlca                                          ; $446b: $07
    ld bc, $7738                                  ; $446c: $01 $38 $77
    daa                                           ; $446f: $27
    ld bc, $cc28                                  ; $4470: $01 $28 $cc
    jr z, jr_0c2_4459                             ; $4473: $28 $e4

    nop                                           ; $4475: $00
    inc hl                                        ; $4476: $23
    ld bc, $1428                                  ; $4477: $01 $28 $14
    ld hl, sp+$2b                                 ; $447a: $f8 $2b
    jr jr_0c2_44de                                ; $447c: $18 $60

    ld b, b                                       ; $447e: $40

jr_0c2_447f:
    ld bc, $5480                                  ; $447f: $01 $80 $54
    adc c                                         ; $4482: $89
    dec d                                         ; $4483: $15
    nop                                           ; $4484: $00
    jr nz, jr_0c2_4487                            ; $4485: $20 $00

jr_0c2_4487:
    ld l, l                                       ; $4487: $6d
    ld bc, $8000                                  ; $4488: $01 $00 $80
    add c                                         ; $448b: $81
    add d                                         ; $448c: $82
    add e                                         ; $448d: $83
    add d                                         ; $448e: $82
    add e                                         ; $448f: $83
    add h                                         ; $4490: $84
    add l                                         ; $4491: $85
    jr jr_0c2_441a                                ; $4492: $18 $86

    add a                                         ; $4494: $87
    adc b                                         ; $4495: $88
    ld a, [bc]                                    ; $4496: $0a
    nop                                           ; $4497: $00
    ld [$8310], sp                                ; $4498: $08 $10 $83
    adc c                                         ; $449b: $89
    adc e                                         ; $449c: $8b
    inc b                                         ; $449d: $04
    adc l                                         ; $449e: $8d
    adc [hl]                                      ; $449f: $8e

jr_0c2_44a0:
    adc a                                         ; $44a0: $8f
    sub b                                         ; $44a1: $90
    sub c                                         ; $44a2: $91
    dec b                                         ; $44a3: $05
    ld h, b                                       ; $44a4: $60
    adc h                                         ; $44a5: $8c
    sub a                                         ; $44a6: $97
    ld [$9998], sp                                ; $44a7: $08 $98 $99
    sbc d                                         ; $44aa: $9a
    sbc e                                         ; $44ab: $9b
    dec b                                         ; $44ac: $05
    ld h, b                                       ; $44ad: $60
    adc e                                         ; $44ae: $8b
    and c                                         ; $44af: $a1

jr_0c2_44b0:
    and d                                         ; $44b0: $a2
    db $10                                        ; $44b1: $10
    and e                                         ; $44b2: $a3
    and h                                         ; $44b3: $a4
    and l                                         ; $44b4: $a5
    dec b                                         ; $44b5: $05
    ld h, b                                       ; $44b6: $60
    adc h                                         ; $44b7: $8c
    xor e                                         ; $44b8: $ab
    xor h                                         ; $44b9: $ac
    xor l                                         ; $44ba: $ad
    jr nz, jr_0c2_446b                            ; $44bb: $20 $ae

    xor a                                         ; $44bd: $af
    dec b                                         ; $44be: $05
    ld h, b                                       ; $44bf: $60
    adc e                                         ; $44c0: $8b
    or h                                          ; $44c1: $b4
    or l                                          ; $44c2: $b5
    or [hl]                                       ; $44c3: $b6
    or a                                          ; $44c4: $b7
    ld b, b                                       ; $44c5: $40

jr_0c2_44c6:
    cp b                                          ; $44c6: $b8
    dec b                                         ; $44c7: $05
    ld h, b                                       ; $44c8: $60
    adc h                                         ; $44c9: $8c
    cp d                                          ; $44ca: $ba
    cp e                                          ; $44cb: $bb
    cp h                                          ; $44cc: $bc
    cp l                                          ; $44cd: $bd
    cp [hl]                                       ; $44ce: $be
    add c                                         ; $44cf: $81
    dec b                                         ; $44d0: $05
    ld h, b                                       ; $44d1: $60
    adc e                                         ; $44d2: $8b
    cp a                                          ; $44d3: $bf
    ret nz                                        ; $44d4: $c0

    pop bc                                        ; $44d5: $c1
    jp nz, $05c3                                  ; $44d6: $c2 $c3 $05

    ld h, b                                       ; $44d9: $60
    inc d                                         ; $44da: $14
    adc h                                         ; $44db: $8c
    sbc a                                         ; $44dc: $9f
    and b                                         ; $44dd: $a0

jr_0c2_44de:
    sub l                                         ; $44de: $95
    ld [$05c5], sp                                ; $44df: $08 $c5 $05
    jr c, @-$58                                   ; $44e2: $38 $a6

    and [hl]                                      ; $44e4: $a6
    ld a, [bc]                                    ; $44e5: $0a
    adc e                                         ; $44e6: $8b
    adc e                                         ; $44e7: $8b
    xor c                                         ; $44e8: $a9
    xor d                                         ; $44e9: $aa
    sub l                                         ; $44ea: $95
    ld [$05af], sp                                ; $44eb: $08 $af $05
    jr c, jr_0c2_44a0                             ; $44ee: $38 $b0

    dec b                                         ; $44f0: $05
    or b                                          ; $44f1: $b0
    adc h                                         ; $44f2: $8c
    adc h                                         ; $44f3: $8c
    or d                                          ; $44f4: $b2
    or e                                          ; $44f5: $b3
    sub l                                         ; $44f6: $95
    ld [$05b8], sp                                ; $44f7: $08 $b8 $05
    jr c, jr_0c2_4501                             ; $44fa: $38 $05

    cp c                                          ; $44fc: $b9
    cp c                                          ; $44fd: $b9
    adc e                                         ; $44fe: $8b
    adc e                                         ; $44ff: $8b
    adc e                                         ; $4500: $8b

Jump_0c2_4501:
jr_0c2_4501:
    sub l                                         ; $4501: $95
    db $10                                        ; $4502: $10
    cp [hl]                                       ; $4503: $be
    dec b                                         ; $4504: $05
    jr c, jr_0c2_4509                             ; $4505: $38 $02

    sub d                                         ; $4507: $92
    sub d                                         ; $4508: $92

jr_0c2_4509:
    adc h                                         ; $4509: $8c
    adc h                                         ; $450a: $8c
    sub l                                         ; $450b: $95
    sub [hl]                                      ; $450c: $96
    sub l                                         ; $450d: $95
    ld [$819b], sp                                ; $450e: $08 $9b $81
    dec b                                         ; $4511: $05
    jr c, jr_0c2_44b0                             ; $4512: $38 $9c

    sbc h                                         ; $4514: $9c
    adc e                                         ; $4515: $8b
    adc e                                         ; $4516: $8b
    sbc a                                         ; $4517: $9f
    and b                                         ; $4518: $a0
    sub l                                         ; $4519: $95
    ld [$a540], sp                                ; $451a: $08 $40 $a5
    dec b                                         ; $451d: $05
    jr c, jr_0c2_44c6                             ; $451e: $38 $a6

    and [hl]                                      ; $4520: $a6
    adc h                                         ; $4521: $8c
    adc h                                         ; $4522: $8c
    xor c                                         ; $4523: $a9
    xor d                                         ; $4524: $aa
    inc b                                         ; $4525: $04
    rst $00                                       ; $4526: $c7
    ret z                                         ; $4527: $c8

    ret                                           ; $4528: $c9


    jp z, $05cb                                   ; $4529: $ca $cb $05

    jr c, jr_0c2_44de                             ; $452c: $38 $b0

    or b                                          ; $452e: $b0
    nop                                           ; $452f: $00
    adc e                                         ; $4530: $8b
    adc e                                         ; $4531: $8b
    or d                                          ; $4532: $b2
    or e                                          ; $4533: $b3
    sub d                                         ; $4534: $92
    call z, $8bcd                                 ; $4535: $cc $cd $8b
    ret nz                                        ; $4538: $c0

    dec b                                         ; $4539: $05
    ld b, b                                       ; $453a: $40
    ld l, c                                       ; $453b: $69
    nop                                           ; $453c: $00
    adc h                                         ; $453d: $8c
    adc h                                         ; $453e: $8c
    sbc h                                         ; $453f: $9c
    rst $08                                       ; $4540: $cf
    ret nc                                        ; $4541: $d0

    sub l                                         ; $4542: $95
    add b                                         ; $4543: $80
    dec b                                         ; $4544: $05
    ld d, b                                       ; $4545: $50
    rst $08                                       ; $4546: $cf
    adc h                                         ; $4547: $8c
    adc c                                         ; $4548: $89
    adc b                                         ; $4549: $88
    add a                                         ; $454a: $87
    add [hl]                                      ; $454b: $86
    add l                                         ; $454c: $85
    inc c                                         ; $454d: $0c
    add h                                         ; $454e: $84
    add e                                         ; $454f: $83
    add d                                         ; $4550: $82
    add c                                         ; $4551: $81
    ld [$0a20], sp                                ; $4552: $08 $20 $0a
    nop                                           ; $4555: $00
    add e                                         ; $4556: $83
    adc c                                         ; $4557: $89
    nop                                           ; $4558: $00
    pop de                                        ; $4559: $d1
    jp nc, $d4d3                                  ; $455a: $d2 $d3 $d4

    push de                                       ; $455d: $d5
    sub $d7                                       ; $455e: $d6 $d7
    ret c                                         ; $4560: $d8

    nop                                           ; $4561: $00
    ld [bc], a                                    ; $4562: $02
    inc bc                                        ; $4563: $03
    inc b                                         ; $4564: $04
    dec b                                         ; $4565: $05
    reti                                          ; $4566: $d9


    jp c, $dcdb                                   ; $4567: $da $db $dc

    ld b, b                                       ; $456a: $40
    rst $08                                       ; $456b: $cf
    ld bc, $de08                                  ; $456c: $01 $08 $de
    rst $18                                       ; $456f: $df
    ldh [$e1], a                                  ; $4570: $e0 $e1
    sbc $e2                                       ; $4572: $de $e2
    nop                                           ; $4574: $00
    db $e3                                        ; $4575: $e3
    db $e4                                        ; $4576: $e4
    dec c                                         ; $4577: $0d
    ld c, $0f                                     ; $4578: $0e $0f
    db $10                                        ; $457a: $10
    push hl                                       ; $457b: $e5
    and $20                                       ; $457c: $e6 $20
    rst $20                                       ; $457e: $e7
    add sp, $15                                   ; $457f: $e8 $15
    db $10                                        ; $4581: $10
    jp hl                                         ; $4582: $e9


    ld [$eceb], a                                 ; $4583: $ea $eb $ec
    db $ed                                        ; $4586: $ed
    nop                                           ; $4587: $00
    xor $ef                                       ; $4588: $ee $ef
    ldh a, [$e9]                                  ; $458a: $f0 $e9
    add hl, de                                    ; $458c: $19
    ld a, [de]                                    ; $458d: $1a
    dec de                                        ; $458e: $1b
    jp hl                                         ; $458f: $e9


    db $10                                        ; $4590: $10
    ld [$f1ea], a                                 ; $4591: $ea $ea $f1
    ld a, [hl+]                                   ; $4594: $2a
    db $10                                        ; $4595: $10
    ld a, [c]                                     ; $4596: $f2
    di                                            ; $4597: $f3
    db $f4                                        ; $4598: $f4
    push af                                       ; $4599: $f5
    ld c, $f2                                     ; $459a: $0e $f2
    or $f7                                        ; $459c: $f6 $f7
    push af                                       ; $459e: $f5
    ld [$0c10], sp                                ; $459f: $08 $10 $0c
    nop                                           ; $45a2: $00
    ccf                                           ; $45a3: $3f
    db $10                                        ; $45a4: $10
    ld hl, sp+$18                                 ; $45a5: $f8 $18
    ld sp, hl                                     ; $45a7: $f9
    ld a, [$04fb]                                 ; $45a8: $fa $fb $04
    ld c, b                                       ; $45ab: $48
    ld d, h                                       ; $45ac: $54
    db $10                                        ; $45ad: $10
    db $fc                                        ; $45ae: $fc
    db $fd                                        ; $45af: $fd
    cp $07                                        ; $45b0: $fe $07
    rst $38                                       ; $45b2: $ff
    nop                                           ; $45b3: $00
    db $fd                                        ; $45b4: $fd
    ld bc, $08ff                                  ; $45b5: $01 $ff $08
    ld [$080c], sp                                ; $45b8: $08 $0c $08
    ld l, c                                       ; $45bb: $69
    stop                                          ; $45bc: $10 $00
    dec l                                         ; $45be: $2d
    ld l, $2f                                     ; $45bf: $2e $2f
    jr nc, jr_0c2_45c9                            ; $45c1: $30 $06

    rlca                                          ; $45c3: $07
    ld [$0c09], sp                                ; $45c4: $08 $09 $0c
    ld a, [bc]                                    ; $45c7: $0a
    dec bc                                        ; $45c8: $0b

jr_0c2_45c9:
    inc c                                         ; $45c9: $0c
    pop de                                        ; $45ca: $d1
    xor $09                                       ; $45cb: $ee $09
    ld a, [hl]                                    ; $45cd: $7e
    db $10                                        ; $45ce: $10
    ld sp, $0032                                  ; $45cf: $31 $32 $00
    inc sp                                        ; $45d2: $33
    inc [hl]                                      ; $45d3: $34
    ld de, $1312                                  ; $45d4: $11 $12 $13
    inc d                                         ; $45d7: $14
    dec d                                         ; $45d8: $15
    ld d, $30                                     ; $45d9: $16 $30
    rla                                           ; $45db: $17
    jr @-$10                                      ; $45dc: $18 $ee

    add hl, bc                                    ; $45de: $09
    sub e                                         ; $45df: $93
    db $10                                        ; $45e0: $10
    dec [hl]                                      ; $45e1: $35
    ld [hl], $37                                  ; $45e2: $36 $37
    jr c, jr_0c2_45e6                             ; $45e4: $38 $00

jr_0c2_45e6:
    inc e                                         ; $45e6: $1c
    dec e                                         ; $45e7: $1d
    ld e, $1f                                     ; $45e8: $1e $1f
    jp hl                                         ; $45ea: $e9


    jr nz, jr_0c2_460e                            ; $45eb: $20 $21

    ld [hl+], a                                   ; $45ed: $22
    ret nz                                        ; $45ee: $c0

    xor $09                                       ; $45ef: $ee $09
    xor b                                         ; $45f1: $a8
    db $10                                        ; $45f2: $10
    add hl, sp                                    ; $45f3: $39
    ld a, [hl-]                                   ; $45f4: $3a

jr_0c2_45f5:
    dec sp                                        ; $45f5: $3b
    inc a                                         ; $45f6: $3c
    inc h                                         ; $45f7: $24
    dec h                                         ; $45f8: $25
    inc bc                                        ; $45f9: $03
    ld h, $f5                                     ; $45fa: $26 $f5
    inc h                                         ; $45fc: $24
    daa                                           ; $45fd: $27
    jr z, jr_0c2_45f5                             ; $45fe: $28 $f5

    xor $09                                       ; $4600: $ee $09
    cp l                                          ; $4602: $bd
    db $10                                        ; $4603: $10
    ld bc, $3e3d                                  ; $4604: $01 $3d $3e
    ccf                                           ; $4607: $3f
    ei                                            ; $4608: $fb
    add hl, hl                                    ; $4609: $29
    ld a, [hl+]                                   ; $460a: $2a
    dec hl                                        ; $460b: $2b
    inc b                                         ; $460c: $04
    db $10                                        ; $460d: $10

jr_0c2_460e:
    ret nz                                        ; $460e: $c0

    xor $09                                       ; $460f: $ee $09
    jp nc, Jump_0c2_4010                          ; $4611: $d2 $10 $40

    ld b, c                                       ; $4614: $41
    ld b, d                                       ; $4615: $42
    rst $38                                       ; $4616: $ff
    inc l                                         ; $4617: $2c
    inc hl                                        ; $4618: $23
    ld a, l                                       ; $4619: $7d
    db $dd                                        ; $461a: $dd
    inc b                                         ; $461b: $04
    db $10                                        ; $461c: $10
    xor $09                                       ; $461d: $ee $09
    rst $20                                       ; $461f: $e7
    db $10                                        ; $4620: $10
    dec sp                                        ; $4621: $3b
    ld sp, hl                                     ; $4622: $f9
    dec sp                                        ; $4623: $3b
    add hl, hl                                    ; $4624: $29
    ld bc, $9001                                  ; $4625: $01 $01 $90
    ld a, a                                       ; $4628: $7f
    nop                                           ; $4629: $00
    ld bc, $0500                                  ; $462a: $01 $00 $05

jr_0c2_462d:
    ld l, b                                       ; $462d: $68
    dec d                                         ; $462e: $15
    ld hl, sp+$2a                                 ; $462f: $f8 $2a
    ld hl, sp+$54                                 ; $4631: $f8 $54
    ld hl, sp+$69                                 ; $4633: $f8 $69
    ld [$a002], sp                                ; $4635: $08 $02 $a0
    db $fd                                        ; $4638: $fd
    daa                                           ; $4639: $27
    sub b                                         ; $463a: $90
    dec d                                         ; $463b: $15
    ld hl, sp+$2a                                 ; $463c: $f8 $2a
    ld hl, sp+$54                                 ; $463e: $f8 $54
    ld hl, sp+$04                                 ; $4640: $f8 $04
    ld hl, sp+$26                                 ; $4642: $f8 $26
    ret nc                                        ; $4644: $d0

    ld h, c                                       ; $4645: $61
    ld bc, $2a80                                  ; $4646: $01 $80 $2a
    ld b, c                                       ; $4649: $41

jr_0c2_464a:
    inc b                                         ; $464a: $04
    ld bc, $0500                                  ; $464b: $01 $00 $05
    ld bc, $0700                                  ; $464e: $01 $00 $07

jr_0c2_4651:
    ld bc, $0600                                  ; $4651: $01 $00 $06
    cp $01                                        ; $4654: $fe $01
    nop                                           ; $4656: $00
    adc d                                         ; $4657: $8a
    ld de, $f815                                  ; $4658: $11 $15 $f8
    ld a, [hl+]                                   ; $465b: $2a
    ld hl, sp+$54                                 ; $465c: $f8 $54
    ld hl, sp-$0b                                 ; $465e: $f8 $f5
    ld bc, $0872                                  ; $4660: $01 $72 $08
    ld [bc], a                                    ; $4663: $02
    add [hl]                                      ; $4664: $86
    ld bc, $0300                                  ; $4665: $01 $00 $03
    inc bc                                        ; $4668: $03
    inc bc                                        ; $4669: $03
    inc hl                                        ; $466a: $23

jr_0c2_466b:
    halt                                          ; $466b: $76
    ld sp, $4015                                  ; $466c: $31 $15 $40

jr_0c2_466f:
    inc bc                                        ; $466f: $03
    ld hl, sp+$15                                 ; $4670: $f8 $15
    ld hl, sp+$2a                                 ; $4672: $f8 $2a
    ld hl, sp+$54                                 ; $4674: $f8 $54
    or b                                          ; $4676: $b0
    ld d, h                                       ; $4677: $54
    ld sp, hl                                     ; $4678: $f9
    sbc b                                         ; $4679: $98
    ld a, [hl+]                                   ; $467a: $2a
    jr nz, jr_0c2_467d                            ; $467b: $20 $00

jr_0c2_467d:
    jr nz, jr_0c2_467f                            ; $467d: $20 $00

jr_0c2_467f:
    db $e4                                        ; $467f: $e4
    ld [bc], a                                    ; $4680: $02
    inc bc                                        ; $4681: $03
    db $fc                                        ; $4682: $fc
    add c                                         ; $4683: $81
    ld a, [c]                                     ; $4684: $f2
    di                                            ; $4685: $f3
    add b                                         ; $4686: $80
    add c                                         ; $4687: $81
    ld [bc], a                                    ; $4688: $02
    nop                                           ; $4689: $00
    ld bc, $0000                                  ; $468a: $01 $00 $00
    add c                                         ; $468d: $81
    add b                                         ; $468e: $80
    add d                                         ; $468f: $82
    add d                                         ; $4690: $82
    add d                                         ; $4691: $82
    db $fc                                        ; $4692: $fc
    add d                                         ; $4693: $82
    db $fc                                        ; $4694: $fc
    nop                                           ; $4695: $00
    add e                                         ; $4696: $83
    add h                                         ; $4697: $84
    add h                                         ; $4698: $84
    add l                                         ; $4699: $85
    add [hl]                                      ; $469a: $86
    add a                                         ; $469b: $87
    and l                                         ; $469c: $a5
    and [hl]                                      ; $469d: $a6
    ld [$a8a7], sp                                ; $469e: $08 $a7 $a8

jr_0c2_46a1:
    xor c                                         ; $46a1: $a9
    xor d                                         ; $46a2: $aa
    jr nz, jr_0c2_462d                            ; $46a3: $20 $88

    adc c                                         ; $46a5: $89
    adc d                                         ; $46a6: $8a
    adc e                                         ; $46a7: $8b
    nop                                           ; $46a8: $00
    adc h                                         ; $46a9: $8c
    adc l                                         ; $46aa: $8d
    adc [hl]                                      ; $46ab: $8e
    xor e                                         ; $46ac: $ab
    xor h                                         ; $46ad: $ac
    xor l                                         ; $46ae: $ad
    xor [hl]                                      ; $46af: $ae
    xor a                                         ; $46b0: $af
    ld [hl], b                                    ; $46b1: $70
    or b                                          ; $46b2: $b0
    ld b, b                                       ; $46b3: $40
    jr nz, jr_0c2_46e9                            ; $46b4: $20 $33

    jr jr_0c2_46f8                                ; $46b6: $18 $40

    jr nz, jr_0c2_464a                            ; $46b8: $20 $90

    sub c                                         ; $46ba: $91
    sub d                                         ; $46bb: $92
    sub e                                         ; $46bc: $93
    nop                                           ; $46bd: $00
    sub h                                         ; $46be: $94
    sub l                                         ; $46bf: $95
    or c                                          ; $46c0: $b1
    or d                                          ; $46c1: $b2
    or e                                          ; $46c2: $b3
    or h                                          ; $46c3: $b4
    or l                                          ; $46c4: $b5
    or [hl]                                       ; $46c5: $b6
    ld bc, $18fc                                  ; $46c6: $01 $fc $18
    add hl, de                                    ; $46c9: $19
    ld a, [de]                                    ; $46ca: $1a
    dec de                                        ; $46cb: $1b
    inc e                                         ; $46cc: $1c
    add b                                         ; $46cd: $80
    inc sp                                        ; $46ce: $33
    jr jr_0c2_4651                                ; $46cf: $18 $80

    ld h, b                                       ; $46d1: $60
    jr nz, jr_0c2_466f                            ; $46d2: $20 $9b

    sbc h                                         ; $46d4: $9c
    sbc l                                         ; $46d5: $9d
    sbc [hl]                                      ; $46d6: $9e
    sbc a                                         ; $46d7: $9f
    and b                                         ; $46d8: $a0
    cp h                                          ; $46d9: $bc
    nop                                           ; $46da: $00
    cp l                                          ; $46db: $bd
    cp [hl]                                       ; $46dc: $be
    cp a                                          ; $46dd: $bf
    ret nz                                        ; $46de: $c0

    pop bc                                        ; $46df: $c1
    db $fc                                        ; $46e0: $fc
    ld bc, $0e2e                                  ; $46e1: $01 $2e $0e
    cpl                                           ; $46e4: $2f
    jr nc, @+$33                                  ; $46e5: $30 $31

    add b                                         ; $46e7: $80
    inc sp                                        ; $46e8: $33

jr_0c2_46e9:
    jr jr_0c2_466b                                ; $46e9: $18 $80

    jr nz, @+$7b                                  ; $46eb: $20 $79

    db $10                                        ; $46ed: $10
    xor e                                         ; $46ee: $ab
    nop                                           ; $46ef: $00
    rst $00                                       ; $46f0: $c7
    ret z                                         ; $46f1: $c8

    ret                                           ; $46f2: $c9


    jp z, $cccb                                   ; $46f3: $ca $cb $cc

    db $fc                                        ; $46f6: $fc
    ld b, e                                       ; $46f7: $43

jr_0c2_46f8:
    ld b, $44                                     ; $46f8: $06 $44
    ld b, l                                       ; $46fa: $45
    ld b, [hl]                                    ; $46fb: $46
    ld b, a                                       ; $46fc: $47
    add b                                         ; $46fd: $80
    inc sp                                        ; $46fe: $33
    jr jr_0c2_46a1                                ; $46ff: $18 $a0

    nop                                           ; $4701: $00
    jp nc, $d310                                  ; $4702: $d2 $10 $d3

    call nc, Call_0c2_57fc                        ; $4705: $d4 $fc $57
    nop                                           ; $4708: $00
    or a                                          ; $4709: $b7
    cp b                                          ; $470a: $b8
    cp c                                          ; $470b: $b9
    push de                                       ; $470c: $d5
    nop                                           ; $470d: $00
    sub $d7                                       ; $470e: $d6 $d7
    ret c                                         ; $4710: $d8

jr_0c2_4711:
    reti                                          ; $4711: $d9


    jp c, Jump_0c2_5b78                           ; $4712: $da $78 $5b

    ld e, h                                       ; $4715: $5c
    ld [$5e5d], sp                                ; $4716: $08 $5d $5e
    ld e, a                                       ; $4719: $5f
    ld a, b                                       ; $471a: $78
    inc sp                                        ; $471b: $33
    jr jr_0c2_4796                                ; $471c: $18 $78

    ld d, a                                       ; $471e: $57
    ld e, b                                       ; $471f: $58
    nop                                           ; $4720: $00
    rst $18                                       ; $4721: $df
    ldh [$e1], a                                  ; $4722: $e0 $e1
    ld a, b                                       ; $4724: $78
    jp nz, $c4c3                                  ; $4725: $c2 $c3 $c4

    push bc                                       ; $4728: $c5
    nop                                           ; $4729: $00
    add $90                                       ; $472a: $c6 $90
    ld [c], a                                     ; $472c: $e2
    db $e3                                        ; $472d: $e3
    db $e4                                        ; $472e: $e4
    push hl                                       ; $472f: $e5
    and $e7                                       ; $4730: $e6 $e7
    ld bc, $73fc                                  ; $4732: $01 $fc $73
    ld [hl], h                                    ; $4735: $74
    add b                                         ; $4736: $80
    ld [hl], l                                    ; $4737: $75
    halt                                          ; $4738: $76
    add b                                         ; $4739: $80
    inc sp                                        ; $473a: $33
    jr jr_0c2_473d                                ; $473b: $18 $00

jr_0c2_473d:
    add b                                         ; $473d: $80
    ld h, [hl]                                    ; $473e: $66
    ld h, a                                       ; $473f: $67
    db $ed                                        ; $4740: $ed
    xor $ef                                       ; $4741: $ee $ef
    db $fc                                        ; $4743: $fc
    pop de                                        ; $4744: $d1
    add b                                         ; $4745: $80
    ld b, l                                       ; $4746: $45
    nop                                           ; $4747: $00
    push de                                       ; $4748: $d5
    adc c                                         ; $4749: $89
    push de                                       ; $474a: $d5
    ld a, [c]                                     ; $474b: $f2
    di                                            ; $474c: $f3
    db $f4                                        ; $474d: $f4
    push af                                       ; $474e: $f5
    inc h                                         ; $474f: $24
    or $78                                        ; $4750: $f6 $78
    jp z, $8f00                                   ; $4752: $ca $00 $8f

    sub b                                         ; $4755: $90
    inc sp                                        ; $4756: $33
    jr nz, jr_0c2_47d1                            ; $4757: $20 $78

    halt                                          ; $4759: $76
    ld [bc], a                                    ; $475a: $02
    ld [hl], a                                    ; $475b: $77
    db $fc                                        ; $475c: $fc
    db $fd                                        ; $475d: $fd
    cp $78                                        ; $475e: $fe $78
    pop hl                                        ; $4760: $e1
    dec sp                                        ; $4761: $3b
    ld [$0083], sp                                ; $4762: $08 $83 $00
    ld bc, $0302                                  ; $4765: $01 $02 $03
    inc b                                         ; $4768: $04
    dec b                                         ; $4769: $05
    ld b, $fc                                     ; $476a: $06 $fc
    ei                                            ; $476c: $fb
    and b                                         ; $476d: $a0
    xor l                                         ; $476e: $ad
    ld [$3380], sp                                ; $476f: $08 $80 $33
    jr @-$7e                                      ; $4772: $18 $80

    push af                                       ; $4774: $f5
    add b                                         ; $4775: $80
    inc c                                         ; $4776: $0c
    dec c                                         ; $4777: $0d
    nop                                           ; $4778: $00
    ld c, $fc                                     ; $4779: $0e $fc
    or $f7                                        ; $477b: $f6 $f7
    ld hl, sp-$07                                 ; $477d: $f8 $f9
    ld a, [$00fb]                                 ; $477f: $fa $fb $00
    ld de, $1312                                  ; $4782: $11 $12 $13
    inc d                                         ; $4785: $14
    dec d                                         ; $4786: $15
    ld d, $fc                                     ; $4787: $16 $fc
    add b                                         ; $4789: $80
    and b                                         ; $478a: $a0
    ld b, a                                       ; $478b: $47
    ld [$3380], sp                                ; $478c: $08 $80 $33
    jr jr_0c2_4711                                ; $478f: $18 $80

    push af                                       ; $4791: $f5
    db $f4                                        ; $4792: $f4
    di                                            ; $4793: $f3
    db $fd                                        ; $4794: $fd
    inc l                                         ; $4795: $2c

jr_0c2_4796:
    add b                                         ; $4796: $80
    db $fc                                        ; $4797: $fc
    ld a, [hl-]                                   ; $4798: $3a
    jr jr_0c2_47b2                                ; $4799: $18 $17

    ld a, [$2010]                                 ; $479b: $fa $10 $20
    ld [$00ff], sp                                ; $479e: $08 $ff $00
    add $5e                                       ; $47a1: $c6 $5e
    add hl, bc                                    ; $47a3: $09
    ld h, d                                       ; $47a4: $62
    add hl, bc                                    ; $47a5: $09
    nop                                           ; $47a6: $00
    rst $38                                       ; $47a7: $ff
    cp $20                                        ; $47a8: $fe $20
    nop                                           ; $47aa: $00
    add hl, sp                                    ; $47ab: $39
    db $10                                        ; $47ac: $10
    rla                                           ; $47ad: $17
    nop                                           ; $47ae: $00
    dec e                                         ; $47af: $1d
    ld e, $1f                                     ; $47b0: $1e $1f

jr_0c2_47b2:
    jr nz, jr_0c2_47d5                            ; $47b2: $20 $21

    ld [hl+], a                                   ; $47b4: $22
    rlca                                          ; $47b5: $07
    ld [$1100], sp                                ; $47b6: $08 $00 $11
    ld a, [bc]                                    ; $47b9: $0a
    ld a, c                                       ; $47ba: $79
    ld a, d                                       ; $47bb: $7a
    dec c                                         ; $47bc: $0d
    ld c, $0f                                     ; $47bd: $0e $0f
    stop                                          ; $47bf: $10 $00
    db $10                                        ; $47c1: $10
    rrca                                          ; $47c2: $0f
    ld c, $0d                                     ; $47c3: $0e $0d
    inc c                                         ; $47c5: $0c
    dec bc                                        ; $47c6: $0b
    ld a, [bc]                                    ; $47c7: $0a
    ld de, $0800                                  ; $47c8: $11 $00 $08
    rlca                                          ; $47cb: $07
    jr z, @+$2b                                   ; $47cc: $28 $29

    ld a, [hl+]                                   ; $47ce: $2a
    dec hl                                        ; $47cf: $2b
    inc l                                         ; $47d0: $2c

jr_0c2_47d1:
    dec l                                         ; $47d1: $2d
    ld b, b                                       ; $47d2: $40
    rla                                           ; $47d3: $17
    rlca                                          ; $47d4: $07

jr_0c2_47d5:
    ld [$7b1c], sp                                ; $47d5: $08 $1c $7b
    ld a, h                                       ; $47d8: $7c
    ld a, l                                       ; $47d9: $7d
    ld a, [hl]                                    ; $47da: $7e
    adc b                                         ; $47db: $88
    nop                                           ; $47dc: $00
    ld [hl], b                                    ; $47dd: $70
    inc hl                                        ; $47de: $23
    inc h                                         ; $47df: $24
    dec h                                         ; $47e0: $25
    ld h, $27                                     ; $47e1: $26 $27
    dec h                                         ; $47e3: $25
    inc h                                         ; $47e4: $24
    nop                                           ; $47e5: $00
    inc hl                                        ; $47e6: $23
    ld [hl+], a                                   ; $47e7: $22
    ld hl, $1f20                                  ; $47e8: $21 $20 $1f
    ld e, $1d                                     ; $47eb: $1e $1d
    dec a                                         ; $47ed: $3d
    nop                                           ; $47ee: $00
    ld a, $3f                                     ; $47ef: $3e $3f
    ld b, b                                       ; $47f1: $40
    ld b, c                                       ; $47f2: $41
    ld b, d                                       ; $47f3: $42
    dec e                                         ; $47f4: $1d
    ld sp, $0032                                  ; $47f5: $31 $32 $00
    inc sp                                        ; $47f8: $33
    inc [hl]                                      ; $47f9: $34
    ld [hl+], a                                   ; $47fa: $22
    pop af                                        ; $47fb: $f1
    ldh a, [$e0]                                  ; $47fc: $f0 $e0
    add hl, bc                                    ; $47fe: $09
    ld [hl], $00                                  ; $47ff: $36 $00
    scf                                           ; $4801: $37
    jr c, jr_0c2_483d                             ; $4802: $38 $39

    ld a, [hl-]                                   ; $4804: $3a
    dec sp                                        ; $4805: $3b
    inc a                                         ; $4806: $3c
    ld a, [hl-]                                   ; $4807: $3a
    add hl, sp                                    ; $4808: $39
    nop                                           ; $4809: $00
    jr c, jr_0c2_4843                             ; $480a: $38 $37

    ld [hl], $35                                  ; $480c: $36 $35
    inc [hl]                                      ; $480e: $34
    inc sp                                        ; $480f: $33
    ld [hl-], a                                   ; $4810: $32
    ld d, [hl]                                    ; $4811: $56
    inc b                                         ; $4812: $04
    ld d, a                                       ; $4813: $57
    ld e, b                                       ; $4814: $58
    db $f4                                        ; $4815: $f4
    ld e, c                                       ; $4816: $59
    ld e, d                                       ; $4817: $5a
    ld h, $10                                     ; $4818: $26 $10
    inc e                                         ; $481a: $1c
    adc a                                         ; $481b: $8f
    nop                                           ; $481c: $00
    ld c, h                                       ; $481d: $4c
    ld c, l                                       ; $481e: $4d
    ld c, [hl]                                    ; $481f: $4e
    ld c, a                                       ; $4820: $4f
    ld d, b                                       ; $4821: $50
    ld d, c                                       ; $4822: $51
    ld d, d                                       ; $4823: $52
    ld d, e                                       ; $4824: $53
    nop                                           ; $4825: $00
    ld d, h                                       ; $4826: $54
    ld d, l                                       ; $4827: $55
    ld d, e                                       ; $4828: $53
    ld d, d                                       ; $4829: $52
    ld d, c                                       ; $482a: $51
    ld d, b                                       ; $482b: $50
    ld c, a                                       ; $482c: $4f
    ld c, [hl]                                    ; $482d: $4e
    nop                                           ; $482e: $00
    ld c, l                                       ; $482f: $4d

jr_0c2_4830:
    ld c, h                                       ; $4830: $4c
    ld c, e                                       ; $4831: $4b
    ld bc, $6f6e                                  ; $4832: $01 $6e $6f
    db $f4                                        ; $4835: $f4
    ld [hl], c                                    ; $4836: $71
    db $10                                        ; $4837: $10
    ld [hl], d                                    ; $4838: $72
    ld c, d                                       ; $4839: $4a
    ld c, e                                       ; $483a: $4b
    dec de                                        ; $483b: $1b
    nop                                           ; $483c: $00

jr_0c2_483d:
    ld [hl+], a                                   ; $483d: $22
    ld h, e                                       ; $483e: $63
    ld h, h                                       ; $483f: $64
    ld h, l                                       ; $4840: $65
    nop                                           ; $4841: $00
    ld h, [hl]                                    ; $4842: $66

jr_0c2_4843:
    ld h, a                                       ; $4843: $67
    ld l, b                                       ; $4844: $68
    ld l, c                                       ; $4845: $69
    ld l, d                                       ; $4846: $6a
    ld l, e                                       ; $4847: $6b
    ld l, h                                       ; $4848: $6c
    ld l, l                                       ; $4849: $6d
    nop                                           ; $484a: $00
    ld l, e                                       ; $484b: $6b
    ld l, d                                       ; $484c: $6a
    ld l, c                                       ; $484d: $69
    ld l, b                                       ; $484e: $68
    ld h, a                                       ; $484f: $67
    ld h, [hl]                                    ; $4850: $66
    ld h, l                                       ; $4851: $65
    ld h, h                                       ; $4852: $64
    ld [$0163], sp                                ; $4853: $08 $63 $01
    add a                                         ; $4856: $87
    adc b                                         ; $4857: $88
    db $e3                                        ; $4858: $e3
    ld bc, $5917                                  ; $4859: $01 $17 $59
    ld e, d                                       ; $485c: $5a
    pop bc                                        ; $485d: $c1
    ld e, h                                       ; $485e: $5c
    ld bc, $007f                                  ; $485f: $01 $7f $00
    ld a, a                                       ; $4862: $7f
    add b                                         ; $4863: $80
    add c                                         ; $4864: $81
    add d                                         ; $4865: $82
    add e                                         ; $4866: $83
    ld [de], a                                    ; $4867: $12
    ld [bc], a                                    ; $4868: $02
    nop                                           ; $4869: $00
    add h                                         ; $486a: $84
    add e                                         ; $486b: $83
    add d                                         ; $486c: $82
    add c                                         ; $486d: $81
    add b                                         ; $486e: $80
    ld a, a                                       ; $486f: $7f
    ld a, [hl]                                    ; $4870: $7e
    ld a, l                                       ; $4871: $7d
    ld bc, $967c                                  ; $4872: $01 $7c $96
    sub a                                         ; $4875: $97
    sbc b                                         ; $4876: $98
    sbc c                                         ; $4877: $99
    sbc d                                         ; $4878: $9a
    sbc e                                         ; $4879: $9b
    dec [hl]                                      ; $487a: $35
    jr jr_0c2_4830                                ; $487b: $18 $b3

    ret nz                                        ; $487d: $c0

    ld [$150b], sp                                ; $487e: $08 $0b $15
    ld bc, $18c0                                  ; $4881: $01 $c0 $18
    ld a, d                                       ; $4884: $7a
    ld a, c                                       ; $4885: $79
    ret nz                                        ; $4886: $c0

    ld [$1020], sp                                ; $4887: $08 $20 $10
    add [hl]                                      ; $488a: $86
    and d                                         ; $488b: $a2
    ld bc, $bbba                                  ; $488c: $01 $ba $bb
    add b                                         ; $488f: $80
    add b                                         ; $4890: $80
    and $18                                       ; $4891: $e6 $18
    ret nz                                        ; $4893: $c0

    jr z, jr_0c2_4906                             ; $4894: $28 $70

    ld b, b                                       ; $4896: $40
    adc b                                         ; $4897: $88
    ccf                                           ; $4898: $3f
    nop                                           ; $4899: $00
    ld a, e                                       ; $489a: $7b
    and c                                         ; $489b: $a1
    and d                                         ; $489c: $a2
    and e                                         ; $489d: $a3
    and h                                         ; $489e: $a4
    and l                                         ; $489f: $a5
    sub h                                         ; $48a0: $94
    and l                                         ; $48a1: $a5
    ld de, $8080                                  ; $48a2: $11 $80 $80
    call nz, Call_000_3500                        ; $48a5: $c4 $00 $35
    ret nz                                        ; $48a8: $c0

    ld c, b                                       ; $48a9: $48
    add hl, bc                                    ; $48aa: $09
    ldh [rNR41], a                                ; $48ab: $e0 $20
    ldh a, [$f1]                                  ; $48ad: $f0 $f1
    ld e, c                                       ; $48af: $59
    ld [de], a                                    ; $48b0: $12
    call $cfce                                    ; $48b1: $cd $ce $cf
    ret nc                                        ; $48b4: $d0

    pop de                                        ; $48b5: $d1
    ld sp, $8080                                  ; $48b6: $31 $80 $80
    and l                                         ; $48b9: $a5
    ld [$60c0], sp                                ; $48ba: $08 $c0 $60
    adc a                                         ; $48bd: $8f
    cp d                                          ; $48be: $ba
    cp e                                          ; $48bf: $bb
    inc a                                         ; $48c0: $3c
    ld [bc], a                                    ; $48c1: $02
    ld bc, $dcdb                                  ; $48c2: $01 $db $dc
    db $dd                                        ; $48c5: $dd
    set 3, [hl]                                   ; $48c6: $cb $de
    add b                                         ; $48c8: $80
    add b                                         ; $48c9: $80
    ld b, b                                       ; $48ca: $40
    adc c                                         ; $48cb: $89
    add b                                         ; $48cc: $80
    ld a, [hl-]                                   ; $48cd: $3a
    ld [de], a                                    ; $48ce: $12
    add sp, -$17                                  ; $48cf: $e8 $e9
    ld [$eceb], a                                 ; $48d1: $ea $eb $ec
    add b                                         ; $48d4: $80
    add b                                         ; $48d5: $80
    db $e4                                        ; $48d6: $e4
    ld b, b                                       ; $48d7: $40
    adc c                                         ; $48d8: $89
    add hl, sp                                    ; $48d9: $39
    ld [de], a                                    ; $48da: $12
    call nz, $8011                                ; $48db: $c4 $11 $80
    add b                                         ; $48de: $80
    ld b, b                                       ; $48df: $40
    adc c                                         ; $48e0: $89
    and $e7                                       ; $48e1: $e6 $e7
    add b                                         ; $48e3: $80
    dec a                                         ; $48e4: $3d
    nop                                           ; $48e5: $00
    rlca                                          ; $48e6: $07
    ld [$0a09], sp                                ; $48e7: $08 $09 $0a
    dec bc                                        ; $48ea: $0b
    add b                                         ; $48eb: $80
    add b                                         ; $48ec: $80
    rst $20                                       ; $48ed: $e7
    ld b, b                                       ; $48ee: $40
    adc c                                         ; $48ef: $89
    db $d3                                        ; $48f0: $d3
    ld [de], a                                    ; $48f1: $12
    sub e                                         ; $48f2: $93
    ld de, $8080                                  ; $48f3: $11 $80 $80
    and $02                                       ; $48f6: $e6 $02
    sub e                                         ; $48f8: $93
    ld [bc], a                                    ; $48f9: $02
    ld a, [hl]                                    ; $48fa: $7e
    ld bc, $4800                                  ; $48fb: $01 $00 $48
    ld c, c                                       ; $48fe: $49
    ld c, d                                       ; $48ff: $4a
    rst $08                                       ; $4900: $cf
    ret nc                                        ; $4901: $d0

    ldh a, [$f1]                                  ; $4902: $f0 $f1
    ld d, a                                       ; $4904: $57
    ld [de], a                                    ; $4905: $12

jr_0c2_4906:
    ld e, b                                       ; $4906: $58
    ld a, d                                       ; $4907: $7a
    ld a, e                                       ; $4908: $7b
    db $d3                                        ; $4909: $d3
    ld [de], a                                    ; $490a: $12
    inc l                                         ; $490b: $2c
    dec l                                         ; $490c: $2d
    reti                                          ; $490d: $d9


    ld [bc], a                                    ; $490e: $02
    add b                                         ; $490f: $80
    ld h, b                                       ; $4910: $60
    add b                                         ; $4911: $80
    db $e3                                        ; $4912: $e3
    ld [bc], a                                    ; $4913: $02
    sub e                                         ; $4914: $93
    ld [bc], a                                    ; $4915: $02
    ld b, a                                       ; $4916: $47
    ld c, b                                       ; $4917: $48
    ld c, c                                       ; $4918: $49
    ld h, b                                       ; $4919: $60
    ld h, c                                       ; $491a: $61
    nop                                           ; $491b: $00
    ld h, d                                       ; $491c: $62
    sbc $df                                       ; $491d: $de $df
    rst $38                                       ; $491f: $ff
    nop                                           ; $4920: $00
    ld h, [hl]                                    ; $4921: $66
    ld h, a                                       ; $4922: $67
    sub h                                         ; $4923: $94
    ld h, b                                       ; $4924: $60
    sub l                                         ; $4925: $95
    db $d3                                        ; $4926: $d3
    ld [de], a                                    ; $4927: $12
    or $10                                        ; $4928: $f6 $10
    add b                                         ; $492a: $80
    add b                                         ; $492b: $80
    call z, $cecd                                 ; $492c: $cc $cd $ce
    add b                                         ; $492f: $80
    sub e                                         ; $4930: $93
    ld [bc], a                                    ; $4931: $02
    ld d, h                                       ; $4932: $54
    ld d, l                                       ; $4933: $55
    ld d, [hl]                                    ; $4934: $56
    ld [hl], a                                    ; $4935: $77
    ld a, b                                       ; $4936: $78
    ld a, c                                       ; $4937: $79
    xor $01                                       ; $4938: $ee $01
    rst $28                                       ; $493a: $ef

jr_0c2_493b:
    rrca                                          ; $493b: $0f
    db $10                                        ; $493c: $10
    halt                                          ; $493d: $76
    ld [hl], a                                    ; $493e: $77
    and e                                         ; $493f: $a3
    and h                                         ; $4940: $a4
    db $d3                                        ; $4941: $d3
    ld [de], a                                    ; $4942: $12
    ld c, a                                       ; $4943: $4f
    ld b, d                                       ; $4944: $42
    ld sp, hl                                     ; $4945: $f9
    ld a, [bc]                                    ; $4946: $0a
    add b                                         ; $4947: $80
    add b                                         ; $4948: $80
    rst $20                                       ; $4949: $e7
    nop                                           ; $494a: $00
    sub e                                         ; $494b: $93
    ld [bc], a                                    ; $494c: $02
    and [hl]                                      ; $494d: $a6
    ld bc, $0354                                  ; $494e: $01 $54 $03
    ldh [rDMA], a                                 ; $4951: $e0 $46
    ld a, [hl+]                                   ; $4953: $2a
    db $d3                                        ; $4954: $d3
    ld [de], a                                    ; $4955: $12
    push de                                       ; $4956: $d5
    ld de, $8080                                  ; $4957: $11 $80 $80
    db $eb                                        ; $495a: $eb
    db $ec                                        ; $495b: $ec
    db $ed                                        ; $495c: $ed
    add c                                         ; $495d: $81
    sub e                                         ; $495e: $93
    ld [bc], a                                    ; $495f: $02
    ld [hl], e                                    ; $4960: $73
    ld [hl], h                                    ; $4961: $74
    ld [hl], l                                    ; $4962: $75
    and b                                         ; $4963: $a0
    and c                                         ; $4964: $a1
    and d                                         ; $4965: $a2
    ld h, [hl]                                    ; $4966: $66
    ld a, [hl+]                                   ; $4967: $2a
    sbc [hl]                                      ; $4968: $9e
    db $d3                                        ; $4969: $d3
    ld [de], a                                    ; $496a: $12
    ld e, [hl]                                    ; $496b: $5e
    ld e, a                                       ; $496c: $5f
    ld [hl], d                                    ; $496d: $72
    nop                                           ; $496e: $00
    ld a, b                                       ; $496f: $78
    ld a, [hl+]                                   ; $4970: $2a
    ld [$d358], sp                                ; $4971: $08 $58 $d3
    ld [de], a                                    ; $4974: $12
    ld l, [hl]                                    ; $4975: $6e
    ld bc, $706f                                  ; $4976: $01 $6f $70
    ld [hl], c                                    ; $4979: $71
    ld [hl], d                                    ; $497a: $72
    add b                                         ; $497b: $80

jr_0c2_497c:
    add b                                         ; $497c: $80
    dec b                                         ; $497d: $05

jr_0c2_497e:
    ld bc, $6008                                  ; $497e: $01 $08 $60

jr_0c2_4981:
    dec h                                         ; $4981: $25
    ld b, $10                                     ; $4982: $06 $10
    rlca                                          ; $4984: $07
    ld [$0525], sp                                ; $4985: $08 $25 $05
    dec h                                         ; $4988: $25
    dec h                                         ; $4989: $25
    dec h                                         ; $498a: $25
    ld e, a                                       ; $498b: $5f
    ld bc, $1001                                  ; $498c: $01 $01 $10
    dec bc                                        ; $498f: $0b
    ld bc, $2010                                  ; $4990: $01 $10 $20
    ld hl, sp+$40                                 ; $4993: $f8 $40
    db $10                                        ; $4995: $10
    inc sp                                        ; $4996: $33
    jr @+$42                                      ; $4997: $18 $40

    adc b                                         ; $4999: $88
    ld a, [hl]                                    ; $499a: $7e
    ld [bc], a                                    ; $499b: $02
    ld bc, $2008                                  ; $499c: $01 $08 $20
    ld hl, sp+$40                                 ; $499f: $f8 $40
    ld hl, sp+$60                                 ; $49a1: $f8 $60
    jr jr_0c2_493b                                ; $49a3: $18 $96

    nop                                           ; $49a5: $00
    and b                                         ; $49a6: $a0
    ld d, b                                       ; $49a7: $50
    dec c                                         ; $49a8: $0d
    and e                                         ; $49a9: $a3
    ld h, b                                       ; $49aa: $60
    db $10                                        ; $49ab: $10
    dec c                                         ; $49ac: $0d
    or e                                          ; $49ad: $b3
    jr jr_0c2_49bd                                ; $49ae: $18 $0d

    inc c                                         ; $49b0: $0c
    inc c                                         ; $49b1: $0c
    inc de                                        ; $49b2: $13
    ld [$10c0], sp                                ; $49b3: $08 $c0 $10
    ld d, l                                       ; $49b6: $55
    ld h, c                                       ; $49b7: $61
    ret nz                                        ; $49b8: $c0

    jr jr_0c2_49c1                                ; $49b9: $18 $06

    add b                                         ; $49bb: $80
    db $10                                        ; $49bc: $10

jr_0c2_49bd:
    ld b, $d3                                     ; $49bd: $06 $d3
    jr jr_0c2_49c7                                ; $49bf: $18 $06

jr_0c2_49c1:
    jr nz, @+$12                                  ; $49c1: $20 $10

    ld c, d                                       ; $49c3: $4a
    ld h, $20                                     ; $49c4: $26 $20
    ld c, b                                       ; $49c6: $48

jr_0c2_49c7:
    ld c, $0a                                     ; $49c7: $0e $0a
    ld bc, $0e08                                  ; $49c9: $01 $08 $0e
    inc sp                                        ; $49cc: $33
    jr jr_0c2_49dd                                ; $49cd: $18 $0e

    and l                                         ; $49cf: $a5
    ld b, b                                       ; $49d0: $40
    db $10                                        ; $49d1: $10
    ld l, $40                                     ; $49d2: $2e $40
    ld c, b                                       ; $49d4: $48
    rlca                                          ; $49d5: $07
    ld h, d                                       ; $49d6: $62
    ld hl, $0708                                  ; $49d7: $21 $08 $07
    ld d, e                                       ; $49da: $53
    jr jr_0c2_49f1                                ; $49db: $18 $14

jr_0c2_49dd:
    rlca                                          ; $49dd: $07
    daa                                           ; $49de: $27
    rlca                                          ; $49df: $07
    ld d, $01                                     ; $49e0: $16 $01
    daa                                           ; $49e2: $27
    db $d3                                        ; $49e3: $d3
    db $10                                        ; $49e4: $10
    ld [bc], a                                    ; $49e5: $02
    inc c                                         ; $49e6: $0c
    cp e                                          ; $49e7: $bb
    ld bc, $0710                                  ; $49e8: $01 $10 $07
    ld bc, $2018                                  ; $49eb: $01 $18 $20
    jr z, jr_0c2_49f1                             ; $49ee: $28 $01

    nop                                           ; $49f0: $00

jr_0c2_49f1:
    rlca                                          ; $49f1: $07

jr_0c2_49f2:
    jr nz, jr_0c2_497c                            ; $49f2: $20 $88

    daa                                           ; $49f4: $27
    jr nz, jr_0c2_497e                            ; $49f5: $20 $87

    jr nz, jr_0c2_4981                            ; $49f7: $20 $88

    daa                                           ; $49f9: $27
    rlca                                          ; $49fa: $07
    rrca                                          ; $49fb: $0f
    rrca                                          ; $49fc: $0f
    inc e                                         ; $49fd: $1c
    jr z, jr_0c2_4a3f                             ; $49fe: $28 $3f

    db $10                                        ; $4a00: $10
    ld h, b                                       ; $4a01: $60
    ld d, b                                       ; $4a02: $50
    ld a, l                                       ; $4a03: $7d
    rrca                                          ; $4a04: $0f
    ld bc, $3d00                                  ; $4a05: $01 $00 $3d
    ld b, b                                       ; $4a08: $40
    dec h                                         ; $4a09: $25
    db $10                                        ; $4a0a: $10
    ld h, b                                       ; $4a0b: $60
    and b                                         ; $4a0c: $a0
    jr nz, jr_0c2_4a57                            ; $4a0d: $20 $48

    ld b, d                                       ; $4a0f: $42
    jr nz, jr_0c2_49f2                            ; $4a10: $20 $e0

    ld a, l                                       ; $4a12: $7d
    ld [hl+], a                                   ; $4a13: $22
    ld b, b                                       ; $4a14: $40
    ret nc                                        ; $4a15: $d0

    inc d                                         ; $4a16: $14
    ld de, $38e0                                  ; $4a17: $11 $e0 $38
    add h                                         ; $4a1a: $84
    ld [$0088], sp                                ; $4a1b: $08 $88 $00
    cpl                                           ; $4a1e: $2f
    ld bc, $ef08                                  ; $4a1f: $01 $08 $ef
    ld [c], a                                     ; $4a22: $e2
    ld [$1133], sp                                ; $4a23: $08 $33 $11
    jr nz, jr_0c2_4a58                            ; $4a26: $20 $30

    daa                                           ; $4a28: $27
    call c, $2040                                 ; $4a29: $dc $40 $20
    nop                                           ; $4a2c: $00

jr_0c2_4a2d:
    inc b                                         ; $4a2d: $04
    ld bc, $3a3f                                  ; $4a2e: $01 $3f $3a
    ccf                                           ; $4a31: $3f
    dec b                                         ; $4a32: $05
    dec b                                         ; $4a33: $05
    and b                                         ; $4a34: $a0
    ld l, b                                       ; $4a35: $68

jr_0c2_4a36:
    ld b, l                                       ; $4a36: $45
    ld [$c820], sp                                ; $4a37: $08 $20 $c8
    ld b, d                                       ; $4a3a: $42
    add hl, bc                                    ; $4a3b: $09
    jr nz, jr_0c2_4a36                            ; $4a3c: $20 $f8

    ld h, b                                       ; $4a3e: $60

jr_0c2_4a3f:
    ld c, b                                       ; $4a3f: $48
    db $fd                                        ; $4a40: $fd
    ld b, b                                       ; $4a41: $40
    ld a, c                                       ; $4a42: $79
    add b                                         ; $4a43: $80
    ld c, b                                       ; $4a44: $48
    ld b, b                                       ; $4a45: $40
    adc c                                         ; $4a46: $89
    add b                                         ; $4a47: $80
    ld hl, sp-$60                                 ; $4a48: $f8 $a0
    ret c                                         ; $4a4a: $d8

    rst $38                                       ; $4a4b: $ff
    add hl, sp                                    ; $4a4c: $39
    dec b                                         ; $4a4d: $05
    ld sp, hl                                     ; $4a4e: $f9
    ld a, [bc]                                    ; $4a4f: $0a
    db $fc                                        ; $4a50: $fc
    add hl, hl                                    ; $4a51: $29
    inc bc                                        ; $4a52: $03
    inc c                                         ; $4a53: $0c
    ld [bc], a                                    ; $4a54: $02
    add sp, $02                                   ; $4a55: $e8 $02

jr_0c2_4a57:
    inc [hl]                                      ; $4a57: $34

jr_0c2_4a58:
    dec bc                                        ; $4a58: $0b
    add hl, bc                                    ; $4a59: $09

jr_0c2_4a5a:
    db $10                                        ; $4a5a: $10
    jr nz, jr_0c2_4a2d                            ; $4a5b: $20 $d0

    ld a, [bc]                                    ; $4a5d: $0a
    ld a, [bc]                                    ; $4a5e: $0a
    rst $30                                       ; $4a5f: $f7
    jr nz, jr_0c2_4a5a                            ; $4a60: $20 $f8

    ld h, b                                       ; $4a62: $60
    add b                                         ; $4a63: $80
    xor b                                         ; $4a64: $a8
    ld [bc], a                                    ; $4a65: $02
    and [hl]                                      ; $4a66: $a6
    dec de                                        ; $4a67: $1b
    dec b                                         ; $4a68: $05
    ld d, e                                       ; $4a69: $53
    dec de                                        ; $4a6a: $1b
    jr nz, jr_0c2_4a2d                            ; $4a6b: $20 $c0

    cp a                                          ; $4a6d: $bf
    add hl, sp                                    ; $4a6e: $39
    ldh a, [$32]                                  ; $4a6f: $f0 $32
    jr z, @+$0a                                   ; $4a71: $28 $08

    ld e, b                                       ; $4a73: $58
    db $d3                                        ; $4a74: $d3
    ld [de], a                                    ; $4a75: $12
    ret nz                                        ; $4a76: $c0

    jr nz, jr_0c2_4a94                            ; $4a77: $20 $1b

    nop                                           ; $4a79: $00
    ld e, $00                                     ; $4a7a: $1e $00
    ld e, d                                       ; $4a7c: $5a
    ld [bc], a                                    ; $4a7d: $02
    ld c, d                                       ; $4a7e: $4a
    add b                                         ; $4a7f: $80
    ld bc, $8110                                  ; $4a80: $01 $10 $81
    add d                                         ; $4a83: $82
    ld bc, $8110                                  ; $4a84: $01 $10 $81
    ld c, $18                                     ; $4a87: $0e $18
    add e                                         ; $4a89: $83
    ld [bc], a                                    ; $4a8a: $02
    add h                                         ; $4a8b: $84
    add l                                         ; $4a8c: $85
    add [hl]                                      ; $4a8d: $86
    add a                                         ; $4a8e: $87
    adc b                                         ; $4a8f: $88
    adc c                                         ; $4a90: $89
    dec de                                        ; $4a91: $1b
    adc b                                         ; $4a92: $88
    adc h                                         ; $4a93: $8c

jr_0c2_4a94:
    inc b                                         ; $4a94: $04
    adc l                                         ; $4a95: $8d
    adc [hl]                                      ; $4a96: $8e
    adc a                                         ; $4a97: $8f
    sub b                                         ; $4a98: $90
    sub c                                         ; $4a99: $91
    dec de                                        ; $4a9a: $1b
    jr @-$6c                                      ; $4a9b: $18 $92

    sub e                                         ; $4a9d: $93
    nop                                           ; $4a9e: $00
    sub h                                         ; $4a9f: $94
    sub l                                         ; $4aa0: $95
    sub [hl]                                      ; $4aa1: $96
    sub a                                         ; $4aa2: $97
    sbc b                                         ; $4aa3: $98
    sbc c                                         ; $4aa4: $99
    sbc b                                         ; $4aa5: $98
    sbc d                                         ; $4aa6: $9a
    add b                                         ; $4aa7: $80
    ld b, l                                       ; $4aa8: $45
    db $10                                        ; $4aa9: $10
    sbc e                                         ; $4aaa: $9b
    sbc h                                         ; $4aab: $9c
    sbc l                                         ; $4aac: $9d
    sbc [hl]                                      ; $4aad: $9e
    sbc a                                         ; $4aae: $9f
    and b                                         ; $4aaf: $a0
    and c                                         ; $4ab0: $a1
    nop                                           ; $4ab1: $00
    and d                                         ; $4ab2: $a2
    and e                                         ; $4ab3: $a3
    and h                                         ; $4ab4: $a4
    and l                                         ; $4ab5: $a5
    and d                                         ; $4ab6: $a2
    and [hl]                                      ; $4ab7: $a6
    and a                                         ; $4ab8: $a7
    xor b                                         ; $4ab9: $a8
    nop                                           ; $4aba: $00
    xor c                                         ; $4abb: $a9
    xor d                                         ; $4abc: $aa
    xor e                                         ; $4abd: $ab
    xor h                                         ; $4abe: $ac
    xor l                                         ; $4abf: $ad
    xor [hl]                                      ; $4ac0: $ae
    xor a                                         ; $4ac1: $af
    and l                                         ; $4ac2: $a5
    add b                                         ; $4ac3: $80
    db $10                                        ; $4ac4: $10
    ld [$b1b0], sp                                ; $4ac5: $08 $b0 $b1
    or d                                          ; $4ac8: $b2
    or e                                          ; $4ac9: $b3
    or h                                          ; $4aca: $b4
    or l                                          ; $4acb: $b5
    or [hl]                                       ; $4acc: $b6
    nop                                           ; $4acd: $00
    or a                                          ; $4ace: $b7
    cp b                                          ; $4acf: $b8
    cp c                                          ; $4ad0: $b9
    cp d                                          ; $4ad1: $ba
    or a                                          ; $4ad2: $b7
    cp e                                          ; $4ad3: $bb
    cp h                                          ; $4ad4: $bc
    cp l                                          ; $4ad5: $bd
    nop                                           ; $4ad6: $00
    cp [hl]                                       ; $4ad7: $be
    cp a                                          ; $4ad8: $bf
    ret nz                                        ; $4ad9: $c0

    pop bc                                        ; $4ada: $c1
    jp nz, $c4c3                                  ; $4adb: $c2 $c3 $c4

    cp d                                          ; $4ade: $ba
    add b                                         ; $4adf: $80
    db $10                                        ; $4ae0: $10
    ld [$c6c5], sp                                ; $4ae1: $08 $c5 $c6
    rst $00                                       ; $4ae4: $c7
    ret z                                         ; $4ae5: $c8

    ret                                           ; $4ae6: $c9


    jp z, Jump_000_00cb                           ; $4ae7: $ca $cb $00

    call z, $cecd                                 ; $4aea: $cc $cd $ce
    add d                                         ; $4aed: $82
    call z, $d0cf                                 ; $4aee: $cc $cf $d0
    pop de                                        ; $4af1: $d1
    nop                                           ; $4af2: $00
    jp nc, $d4d3                                  ; $4af3: $d2 $d3 $d4

    push de                                       ; $4af6: $d5
    sub $d7                                       ; $4af7: $d6 $d7
    xor a                                         ; $4af9: $af
    add d                                         ; $4afa: $82
    nop                                           ; $4afb: $00
    call z, $d9d8                                 ; $4afc: $cc $d8 $d9
    add d                                         ; $4aff: $82
    jp c, $dcdb                                   ; $4b00: $da $db $dc

    db $dd                                        ; $4b03: $dd
    add b                                         ; $4b04: $80
    add a                                         ; $4b05: $87
    nop                                           ; $4b06: $00
    add d                                         ; $4b07: $82
    sbc $82                                       ; $4b08: $de $82
    rst $18                                       ; $4b0a: $df
    add d                                         ; $4b0b: $82
    ldh [$e1], a                                  ; $4b0c: $e0 $e1
    nop                                           ; $4b0e: $00
    ld [c], a                                     ; $4b0f: $e2
    db $e3                                        ; $4b10: $e3
    db $e4                                        ; $4b11: $e4
    push hl                                       ; $4b12: $e5
    and $e7                                       ; $4b13: $e6 $e7
    add sp, -$3c                                  ; $4b15: $e8 $c4
    nop                                           ; $4b17: $00
    rst $18                                       ; $4b18: $df
    add d                                         ; $4b19: $82
    add d                                         ; $4b1a: $82
    jp hl                                         ; $4b1b: $e9


    rst $18                                       ; $4b1c: $df
    ld [$eceb], a                                 ; $4b1d: $ea $eb $ec
    nop                                           ; $4b20: $00
    db $ed                                        ; $4b21: $ed
    xor $ef                                       ; $4b22: $ee $ef
    ldh a, [$f1]                                  ; $4b24: $f0 $f1
    ld a, [c]                                     ; $4b26: $f2
    di                                            ; $4b27: $f3
    db $f4                                        ; $4b28: $f4
    nop                                           ; $4b29: $00
    pop af                                        ; $4b2a: $f1
    push af                                       ; $4b2b: $f5
    or $f7                                        ; $4b2c: $f6 $f7
    ld hl, sp-$07                                 ; $4b2e: $f8 $f9
    ld a, [$00fb]                                 ; $4b30: $fa $fb $00
    db $fc                                        ; $4b33: $fc
    xor [hl]                                      ; $4b34: $ae
    xor a                                         ; $4b35: $af
    db $f4                                        ; $4b36: $f4
    pop af                                        ; $4b37: $f1
    db $fd                                        ; $4b38: $fd
    cp $f4                                        ; $4b39: $fe $f4
    nop                                           ; $4b3b: $00
    rst $38                                       ; $4b3c: $ff
    nop                                           ; $4b3d: $00
    ld bc, $0302                                  ; $4b3e: $01 $02 $03
    inc b                                         ; $4b41: $04
    dec b                                         ; $4b42: $05
    ld b, $00                                     ; $4b43: $06 $00
    rlca                                          ; $4b45: $07
    ld [$0609], sp                                ; $4b46: $08 $09 $06
    ld a, [bc]                                    ; $4b49: $0a
    dec bc                                        ; $4b4a: $0b
    inc c                                         ; $4b4b: $0c
    dec c                                         ; $4b4c: $0d
    nop                                           ; $4b4d: $00
    ld c, $0f                                     ; $4b4e: $0e $0f
    db $10                                        ; $4b50: $10
    ld de, $1312                                  ; $4b51: $11 $12 $13
    add hl, bc                                    ; $4b54: $09
    ld b, $01                                     ; $4b55: $06 $01
    inc d                                         ; $4b57: $14
    dec d                                         ; $4b58: $15
    add hl, bc                                    ; $4b59: $09
    ld d, $17                                     ; $4b5a: $16 $17
    jr jr_0c2_4b77                                ; $4b5c: $18 $19

    add a                                         ; $4b5e: $87
    nop                                           ; $4b5f: $00
    nop                                           ; $4b60: $00
    ld a, [de]                                    ; $4b61: $1a
    dec de                                        ; $4b62: $1b
    ld a, [de]                                    ; $4b63: $1a
    ld a, [de]                                    ; $4b64: $1a
    ld a, [de]                                    ; $4b65: $1a
    inc e                                         ; $4b66: $1c
    dec e                                         ; $4b67: $1d
    ld e, $01                                     ; $4b68: $1e $01
    rra                                           ; $4b6a: $1f
    jr nz, jr_0c2_4b8e                            ; $4b6b: $20 $21

    ld [hl+], a                                   ; $4b6d: $22
    inc hl                                        ; $4b6e: $23
    inc h                                         ; $4b6f: $24
    dec h                                         ; $4b70: $25
    dec c                                         ; $4b71: $0d
    nop                                           ; $4b72: $00
    inc h                                         ; $4b73: $24
    ld h, $1a                                     ; $4b74: $26 $1a
    add a                                         ; $4b76: $87

jr_0c2_4b77:
    jr nz, jr_0c2_4b93                            ; $4b77: $20 $1a

    daa                                           ; $4b79: $27
    dec de                                        ; $4b7a: $1b
    nop                                           ; $4b7b: $00
    xor a                                         ; $4b7c: $af
    jr z, jr_0c2_4b7f                             ; $4b7d: $28 $00

jr_0c2_4b7f:
    add hl, hl                                    ; $4b7f: $29
    adc c                                         ; $4b80: $89
    ld a, [hl+]                                   ; $4b81: $2a
    dec hl                                        ; $4b82: $2b
    inc l                                         ; $4b83: $2c
    dec l                                         ; $4b84: $2d
    ld l, $f5                                     ; $4b85: $2e $f5
    add c                                         ; $4b87: $81
    jr z, jr_0c2_4b8a                             ; $4b88: $28 $00

jr_0c2_4b8a:
    cpl                                           ; $4b8a: $2f
    ld a, [de]                                    ; $4b8b: $1a
    jr nc, jr_0c2_4bbf                            ; $4b8c: $30 $31

jr_0c2_4b8e:
    ld [hl-], a                                   ; $4b8e: $32
    inc sp                                        ; $4b8f: $33
    ld c, $01                                     ; $4b90: $0e $01
    nop                                           ; $4b92: $00

jr_0c2_4b93:
    inc [hl]                                      ; $4b93: $34
    dec [hl]                                      ; $4b94: $35
    ld [hl], $37                                  ; $4b95: $36 $37
    inc [hl]                                      ; $4b97: $34
    call nz, Call_000_38ad                        ; $4b98: $c4 $ad $38
    nop                                           ; $4b9b: $00
    add hl, sp                                    ; $4b9c: $39
    ld a, [hl-]                                   ; $4b9d: $3a
    dec sp                                        ; $4b9e: $3b
    inc a                                         ; $4b9f: $3c
    dec a                                         ; $4ba0: $3d
    ld a, $3f                                     ; $4ba1: $3e $3f
    scf                                           ; $4ba3: $37
    nop                                           ; $4ba4: $00
    inc [hl]                                      ; $4ba5: $34
    ld b, b                                       ; $4ba6: $40
    ld b, c                                       ; $4ba7: $41
    scf                                           ; $4ba8: $37
    ld b, d                                       ; $4ba9: $42

jr_0c2_4baa:
    ld b, e                                       ; $4baa: $43
    ld b, h                                       ; $4bab: $44
    ld b, l                                       ; $4bac: $45
    nop                                           ; $4bad: $00
    ld b, [hl]                                    ; $4bae: $46
    ld b, a                                       ; $4baf: $47
    ld c, b                                       ; $4bb0: $48
    ld c, c                                       ; $4bb1: $49
    ld c, d                                       ; $4bb2: $4a
    ld c, e                                       ; $4bb3: $4b
    ld c, h                                       ; $4bb4: $4c
    ld c, c                                       ; $4bb5: $49
    nop                                           ; $4bb6: $00
    xor a                                         ; $4bb7: $af
    ld c, l                                       ; $4bb8: $4d
    ld c, [hl]                                    ; $4bb9: $4e
    ld c, a                                       ; $4bba: $4f
    ld d, b                                       ; $4bbb: $50
    ld d, c                                       ; $4bbc: $51
    ld d, d                                       ; $4bbd: $52
    ld d, e                                       ; $4bbe: $53

jr_0c2_4bbf:
    nop                                           ; $4bbf: $00
    ld d, h                                       ; $4bc0: $54
    ld d, l                                       ; $4bc1: $55

jr_0c2_4bc2:
    ld c, h                                       ; $4bc2: $4c
    ld c, c                                       ; $4bc3: $49
    ld d, [hl]                                    ; $4bc4: $56
    ld d, a                                       ; $4bc5: $57
    ld c, h                                       ; $4bc6: $4c
    ld e, b                                       ; $4bc7: $58
    nop                                           ; $4bc8: $00
    ld e, c                                       ; $4bc9: $59
    ld e, d                                       ; $4bca: $5a
    ld e, e                                       ; $4bcb: $5b
    ld e, h                                       ; $4bcc: $5c
    ld e, l                                       ; $4bcd: $5d
    dec b                                         ; $4bce: $05
    ld e, [hl]                                    ; $4bcf: $5e
    ld e, a                                       ; $4bd0: $5f
    nop                                           ; $4bd1: $00
    ld h, b                                       ; $4bd2: $60
    adc c                                         ; $4bd3: $89
    ld e, [hl]                                    ; $4bd4: $5e
    call nz, Call_0c2_6261                        ; $4bd5: $c4 $61 $62
    ld h, e                                       ; $4bd8: $63
    ld h, h                                       ; $4bd9: $64
    nop                                           ; $4bda: $00
    ld h, l                                       ; $4bdb: $65
    ld h, [hl]                                    ; $4bdc: $66
    ld h, a                                       ; $4bdd: $67
    cp h                                          ; $4bde: $bc
    cp e                                          ; $4bdf: $bb
    adc c                                         ; $4be0: $89
    ld e, [hl]                                    ; $4be1: $5e
    ld l, b                                       ; $4be2: $68
    ld [bc], a                                    ; $4be3: $02
    ld l, c                                       ; $4be4: $69
    adc c                                         ; $4be5: $89
    ld l, d                                       ; $4be6: $6a
    ld l, e                                       ; $4be7: $6b
    ld l, h                                       ; $4be8: $6c
    ld l, l                                       ; $4be9: $6d
    ld c, $01                                     ; $4bea: $0e $01
    adc c                                         ; $4bec: $89
    nop                                           ; $4bed: $00
    ld l, [hl]                                    ; $4bee: $6e
    adc c                                         ; $4bef: $89
    adc c                                         ; $4bf0: $89
    adc c                                         ; $4bf1: $89
    xor a                                         ; $4bf2: $af
    xor [hl]                                      ; $4bf3: $ae
    ld l, a                                       ; $4bf4: $6f
    ld [hl], b                                    ; $4bf5: $70
    ld [bc], a                                    ; $4bf6: $02
    ld [hl], c                                    ; $4bf7: $71

jr_0c2_4bf8:
    ld [hl], d                                    ; $4bf8: $72
    ld [hl], e                                    ; $4bf9: $73
    ld [hl], h                                    ; $4bfa: $74
    and a                                         ; $4bfb: $a7
    and [hl]                                      ; $4bfc: $a6
    dec c                                         ; $4bfd: $0d
    nop                                           ; $4bfe: $00
    ld [hl], l                                    ; $4bff: $75
    ld c, b                                       ; $4c00: $48
    adc c                                         ; $4c01: $89
    ld c, $21                                     ; $4c02: $0e $21
    adc c                                         ; $4c04: $89
    halt                                          ; $4c05: $76

jr_0c2_4c06:
    dec de                                        ; $4c06: $1b
    nop                                           ; $4c07: $00
    sbc d                                         ; $4c08: $9a
    sbc b                                         ; $4c09: $98
    ld [hl], a                                    ; $4c0a: $77
    ld bc, $7978                                  ; $4c0b: $01 $78 $79
    ld a, d                                       ; $4c0e: $7a
    ld a, e                                       ; $4c0f: $7b
    sub h                                         ; $4c10: $94

jr_0c2_4c11:
    sub e                                         ; $4c11: $93

jr_0c2_4c12:
    sub d                                         ; $4c12: $92
    jr z, jr_0c2_4c15                             ; $4c13: $28 $00

jr_0c2_4c15:
    ld [bc], a                                    ; $4c15: $02

jr_0c2_4c16:
    ld a, h                                       ; $4c16: $7c
    adc c                                         ; $4c17: $89
    adc c                                         ; $4c18: $89
    ld a, l                                       ; $4c19: $7d
    ld a, [hl]                                    ; $4c1a: $7e

jr_0c2_4c1b:
    ld a, a                                       ; $4c1b: $7f
    xor b                                         ; $4c1c: $a8
    ld bc, $6a89                                  ; $4c1d: $01 $89 $6a
    add e                                         ; $4c20: $83

jr_0c2_4c21:
    ld c, $18                                     ; $4c21: $0e $18
    ld [bc], a                                    ; $4c23: $02
    jr jr_0c2_4baa                                ; $4c24: $18 $84

    ld [hl], $10                                  ; $4c26: $36 $10
    adc c                                         ; $4c28: $89
    xor a                                         ; $4c29: $af
    ld de, $2a8a                                  ; $4c2a: $11 $8a $2a
    adc c                                         ; $4c2d: $89
    adc e                                         ; $4c2e: $8b
    ld d, c                                       ; $4c2f: $51
    nop                                           ; $4c30: $00
    adc h                                         ; $4c31: $8c
    dec de                                        ; $4c32: $1b
    jr z, jr_0c2_4bc2                             ; $4c33: $28 $8d

    ld e, [hl]                                    ; $4c35: $5e
    nop                                           ; $4c36: $00
    adc [hl]                                      ; $4c37: $8e
    inc sp                                        ; $4c38: $33
    adc c                                         ; $4c39: $89
    dec b                                         ; $4c3a: $05
    xor [hl]                                      ; $4c3b: $ae
    ld bc, $01a8                                  ; $4c3c: $01 $a8 $01
    adc c                                         ; $4c3f: $89
    sub l                                         ; $4c40: $95
    ld l, h                                       ; $4c41: $6c
    nop                                           ; $4c42: $00
    inc b                                         ; $4c43: $04
    ld [$39e2], sp                                ; $4c44: $08 $e2 $39
    db $10                                        ; $4c47: $10
    dec c                                         ; $4c48: $0d
    jr jr_0c2_4c06                                ; $4c49: $18 $bb

    add hl, bc                                    ; $4c4b: $09
    sbc d                                         ; $4c4c: $9a
    sbc e                                         ; $4c4d: $9b
    sbc h                                         ; $4c4e: $9c
    db $ed                                        ; $4c4f: $ed
    ld hl, $b389                                  ; $4c50: $21 $89 $b3
    cp l                                          ; $4c53: $bd
    add hl, bc                                    ; $4c54: $09
    jp c, Jump_000_2065                           ; $4c55: $da $65 $20

    push bc                                       ; $4c58: $c5
    ld de, $a7a6                                  ; $4c59: $11 $a6 $a7
    db $ed                                        ; $4c5c: $ed
    ld hl, $19cb                                  ; $4c5d: $21 $cb $19
    sbc e                                         ; $4c60: $9b
    ld h, l                                       ; $4c61: $65
    jr z, jr_0c2_4c12                             ; $4c62: $28 $ae

    xor a                                         ; $4c64: $af
    add a                                         ; $4c65: $87
    ld [$21ed], sp                                ; $4c66: $08 $ed $21
    dec b                                         ; $4c69: $05
    jp c, Jump_0c2_6511                           ; $4c6a: $da $11 $65

    jr z, jr_0c2_4bf8                             ; $4c6d: $28 $89

jr_0c2_4c6f:
    ld [c], a                                     ; $4c6f: $e2
    ld bc, $8988                                  ; $4c70: $01 $88 $89
    cp b                                          ; $4c73: $b8
    db $ed                                        ; $4c74: $ed
    ld hl, $bab9                                  ; $4c75: $21 $b9 $ba

jr_0c2_4c78:
    ld [$8609], a                                 ; $4c78: $ea $09 $86
    ld h, l                                       ; $4c7b: $65
    jr nz, @+$07                                  ; $4c7c: $20 $05

    cp a                                          ; $4c7e: $bf
    ret nz                                        ; $4c7f: $c0

    sub c                                         ; $4c80: $91

jr_0c2_4c81:
    di                                            ; $4c81: $f3
    ld bc, $21ed                                  ; $4c82: $01 $ed $21
    call nz, $c507                                ; $4c85: $c4 $07 $c5
    add $c6                                       ; $4c88: $c6 $c6
    and a                                         ; $4c8a: $a7
    rst $00                                       ; $4c8b: $c7
    ld h, l                                       ; $4c8c: $65
    jr nz, jr_0c2_4c16                            ; $4c8d: $20 $87

    jr nz, jr_0c2_4c11                            ; $4c8f: $20 $80

    jr nz, jr_0c2_4c6f                            ; $4c91: $20 $dc

    cp $10                                        ; $4c93: $fe $10
    adc h                                         ; $4c95: $8c
    jr nz, jr_0c2_4c21                            ; $4c96: $20 $89

    add a                                         ; $4c98: $87
    jr nz, jr_0c2_4c1b                            ; $4c99: $20 $80

    jr nz, jr_0c2_4cc0                            ; $4c9b: $20 $23

    ld [bc], a                                    ; $4c9d: $02
    rst $08                                       ; $4c9e: $cf
    ret nc                                        ; $4c9f: $d0

    ld a, b                                       ; $4ca0: $78
    adc c                                         ; $4ca1: $89
    ld [hl+], a                                   ; $4ca2: $22
    ld [de], a                                    ; $4ca3: $12
    add hl, sp                                    ; $4ca4: $39
    ld bc, $1887                                  ; $4ca5: $01 $87 $18
    add b                                         ; $4ca8: $80
    jr jr_0c2_4c81                                ; $4ca9: $18 $d6

    rst $10                                       ; $4cab: $d7
    ret c                                         ; $4cac: $d8

    ld b, d                                       ; $4cad: $42
    reti                                          ; $4cae: $d9


    dec l                                         ; $4caf: $2d
    ld a, [bc]                                    ; $4cb0: $0a
    sbc $df                                       ; $4cb1: $de $df
    ldh [$e1], a                                  ; $4cb3: $e0 $e1
    ld d, h                                       ; $4cb5: $54
    ld bc, $63e2                                  ; $4cb6: $01 $e2 $63

jr_0c2_4cb9:
    or [hl]                                       ; $4cb9: $b6
    dec hl                                        ; $4cba: $2b
    ld a, [bc]                                    ; $4cbb: $0a
    add b                                         ; $4cbc: $80
    jr jr_0c2_4c78                                ; $4cbd: $18 $b9

jr_0c2_4cbf:
    cp d                                          ; $4cbf: $ba

jr_0c2_4cc0:
    rst $20                                       ; $4cc0: $e7
    ld b, $10                                     ; $4cc1: $06 $10
    halt                                          ; $4cc3: $76
    ld a, [bc]                                    ; $4cc4: $0a
    nop                                           ; $4cc5: $00
    adc c                                         ; $4cc6: $89
    adc c                                         ; $4cc7: $89
    dec b                                         ; $4cc8: $05
    add sp, -$17                                  ; $4cc9: $e8 $e9
    ld [$8beb], a                                 ; $4ccb: $ea $eb $8b
    ld l, a                                       ; $4cce: $6f
    adc d                                         ; $4ccf: $8a
    add b                                         ; $4cd0: $80
    jr jr_0c2_4cd9                                ; $4cd1: $18 $06

    ld c, b                                       ; $4cd3: $48
    adc c                                         ; $4cd4: $89
    ld c, $29                                     ; $4cd5: $0e $29
    ld e, c                                       ; $4cd7: $59
    add hl, hl                                    ; $4cd8: $29

jr_0c2_4cd9:
    ld [$0e48], sp                                ; $4cd9: $08 $48 $0e
    ld hl, $045b                                  ; $4cdc: $21 $5b $04
    ld bc, $0510                                  ; $4cdf: $01 $10 $05
    ld bc, $0e20                                  ; $4ce2: $01 $20 $0e
    jr jr_0c2_4cea                                ; $4ce5: $18 $03

    ld bc, $1b18                                  ; $4ce7: $01 $18 $1b

jr_0c2_4cea:
    ld h, b                                       ; $4cea: $60
    call Call_000_101d                            ; $4ceb: $cd $1d $10
    dec de                                        ; $4cee: $1b
    ld c, b                                       ; $4cef: $48
    ld b, $01                                     ; $4cf0: $06 $01
    ld bc, $1b28                                  ; $4cf2: $01 $28 $1b
    ld [hl], b                                    ; $4cf5: $70
    rlca                                          ; $4cf6: $07
    inc e                                         ; $4cf7: $1c
    jr nc, jr_0c2_4cb9                            ; $4cf8: $30 $bf

    ld d, e                                       ; $4cfa: $53
    db $10                                        ; $4cfb: $10
    ld [bc], a                                    ; $4cfc: $02
    ld bc, $3618                                  ; $4cfd: $01 $18 $36
    jr jr_0c2_4d1e                                ; $4d00: $18 $1c

    jr nc, jr_0c2_4d1f                            ; $4d02: $30 $1b

    ld a, b                                       ; $4d04: $78
    inc e                                         ; $4d05: $1c
    jr nc, jr_0c2_4d74                            ; $4d06: $30 $6c

    ld [hl], b                                    ; $4d08: $70

jr_0c2_4d09:
    ld a, a                                       ; $4d09: $7f
    ld bc, $301c                                  ; $4d0a: $01 $1c $30
    dec de                                        ; $4d0d: $1b
    ld a, b                                       ; $4d0e: $78
    inc e                                         ; $4d0f: $1c
    jr nc, @+$1d                                  ; $4d10: $30 $1b

    add b                                         ; $4d12: $80
    jr c, jr_0c2_4d3d                             ; $4d13: $38 $28

    add a                                         ; $4d15: $87
    ld [hl], b                                    ; $4d16: $70
    cp h                                          ; $4d17: $bc
    ld [$70d5], sp                                ; $4d18: $08 $d5 $70
    jr jr_0c2_4cbf                                ; $4d1b: $18 $a2

    ld [hl], b                                    ; $4d1d: $70

jr_0c2_4d1e:
    ld h, c                                       ; $4d1e: $61

jr_0c2_4d1f:
    inc e                                         ; $4d1f: $1c
    jr z, @+$63                                   ; $4d20: $28 $61

    di                                            ; $4d22: $f3
    ld [hl], b                                    ; $4d23: $70
    ld h, [hl]                                    ; $4d24: $66
    inc e                                         ; $4d25: $1c
    jr nc, @-$0c                                  ; $4d26: $30 $f2

    dec de                                        ; $4d28: $1b
    ld a, b                                       ; $4d29: $78
    rrca                                          ; $4d2a: $0f
    add hl, de                                    ; $4d2b: $19
    call nz, $2900                                ; $4d2c: $c4 $00 $29
    ld [hl], c                                    ; $4d2f: $71
    ld h, a                                       ; $4d30: $67
    ld bc, $192b                                  ; $4d31: $01 $2b $19
    ld h, [hl]                                    ; $4d34: $66

jr_0c2_4d35:
    ld b, l                                       ; $4d35: $45
    ld h, [hl]                                    ; $4d36: $66
    ld c, $71                                     ; $4d37: $0e $71
    ld h, [hl]                                    ; $4d39: $66
    ld h, a                                       ; $4d3a: $67
    ld b, $47                                     ; $4d3b: $06 $47

jr_0c2_4d3d:
    ld de, $1b61                                  ; $4d3d: $11 $61 $1b
    add b                                         ; $4d40: $80
    inc h                                         ; $4d41: $24
    ld h, [hl]                                    ; $4d42: $66
    rlca                                          ; $4d43: $07
    inc e                                         ; $4d44: $1c
    ld [$6161], sp                                ; $4d45: $08 $61 $61
    add a                                         ; $4d48: $87
    jr c, jr_0c2_4d56                             ; $4d49: $38 $0b

    dec bc                                        ; $4d4b: $0b
    dec d                                         ; $4d4c: $15
    dec bc                                        ; $4d4d: $0b
    inc b                                         ; $4d4e: $04
    inc c                                         ; $4d4f: $0c
    or d                                          ; $4d50: $b2
    ld bc, $b064                                  ; $4d51: $01 $64 $b0
    add hl, hl                                    ; $4d54: $29
    dec c                                         ; $4d55: $0d

jr_0c2_4d56:
    sub l                                         ; $4d56: $95
    add hl, de                                    ; $4d57: $19
    db $fc                                        ; $4d58: $fc
    jr jr_0c2_4d5b                                ; $4d59: $18 $00

jr_0c2_4d5b:
    dec de                                        ; $4d5b: $1b
    jr z, jr_0c2_4d7d                             ; $4d5c: $28 $1f

    ld [$11d4], sp                                ; $4d5e: $08 $d4 $11
    dec c                                         ; $4d61: $0d
    jr @+$1d                                      ; $4d62: $18 $1b

    jr nz, jr_0c2_4d69                            ; $4d64: $20 $03

    dec bc                                        ; $4d66: $0b
    srl [hl]                                      ; $4d67: $cb $3e

jr_0c2_4d69:
    ld [$21d8], sp                                ; $4d69: $08 $d8 $21
    inc bc                                        ; $4d6c: $03
    dec hl                                        ; $4d6d: $2b
    inc b                                         ; $4d6e: $04
    db $10                                        ; $4d6f: $10
    ld a, [bc]                                    ; $4d70: $0a
    ld bc, $1518                                  ; $4d71: $01 $18 $15

jr_0c2_4d74:
    jr z, jr_0c2_4d35                             ; $4d74: $28 $bf

    ld b, h                                       ; $4d76: $44
    ld [$6523], sp                                ; $4d77: $08 $23 $65
    jr nz, jr_0c2_4d97                            ; $4d7a: $20 $1b

    ld e, b                                       ; $4d7c: $58

jr_0c2_4d7d:
    ld b, e                                       ; $4d7d: $43
    jr z, jr_0c2_4d87                             ; $4d7e: $28 $07

    jr z, jr_0c2_4d09                             ; $4d80: $28 $87

    ld [$4836], sp                                ; $4d82: $08 $36 $48
    rst $38                                       ; $4d85: $ff
    dec de                                        ; $4d86: $1b

jr_0c2_4d87:
    ld b, b                                       ; $4d87: $40
    adc c                                         ; $4d88: $89
    ld [$21ed], sp                                ; $4d89: $08 $ed $21
    ld e, a                                       ; $4d8c: $5f
    jr nz, @+$67                                  ; $4d8d: $20 $65

    jr nz, jr_0c2_4dac                            ; $4d8f: $20 $1b

    ld h, b                                       ; $4d91: $60
    ld e, $58                                     ; $4d92: $1e $58

jr_0c2_4d94:
    ld [hl+], a                                   ; $4d94: $22
    jr nc, jr_0c2_4dfe                            ; $4d95: $30 $67

jr_0c2_4d97:
    inc hl                                        ; $4d97: $23
    jp z, $8c10                                   ; $4d98: $ca $10 $8c

    jr nz, @+$03                                  ; $4d9b: $20 $01

    ld bc, $20a2                                  ; $4d9d: $01 $a2 $20
    add b                                         ; $4da0: $80
    ld c, b                                       ; $4da1: $48
    db $eb                                        ; $4da2: $eb
    jr @+$41                                      ; $4da3: $18 $3f

    ld bc, $8701                                  ; $4da5: $01 $01 $87
    jr z, @-$04                                   ; $4da8: $28 $fa

    jr jr_0c2_4db2                                ; $4daa: $18 $06

jr_0c2_4dac:
    ld b, b                                       ; $4dac: $40
    dec de                                        ; $4dad: $1b
    db $10                                        ; $4dae: $10
    db $10                                        ; $4daf: $10
    add hl, bc                                    ; $4db0: $09
    ld h, d                                       ; $4db1: $62

jr_0c2_4db2:
    ld [hl], b                                    ; $4db2: $70
    ld e, a                                       ; $4db3: $5f
    ld a, [bc]                                    ; $4db4: $0a
    dec de                                        ; $4db5: $1b
    jr nz, jr_0c2_4dbb                            ; $4db6: $20 $03

    ld a, [$9e00]                                 ; $4db8: $fa $00 $9e

jr_0c2_4dbb:
    jr jr_0c2_4dc3                                ; $4dbb: $18 $06

    jr c, jr_0c2_4e2b                             ; $4dbd: $38 $6c

    jr nc, jr_0c2_4d94                            ; $4dbf: $30 $d3

    ld [hl-], a                                   ; $4dc1: $32
    ret nz                                        ; $4dc2: $c0

jr_0c2_4dc3:
    add hl, bc                                    ; $4dc3: $09
    ld b, b                                       ; $4dc4: $40
    add hl, hl                                    ; $4dc5: $29
    ld hl, $0020                                  ; $4dc6: $21 $20 $00
    inc d                                         ; $4dc9: $14
    nop                                           ; $4dca: $00
    add b                                         ; $4dcb: $80
    ld bc, $8072                                  ; $4dcc: $01 $72 $80
    ld bc, $23f8                                  ; $4dcf: $01 $f8 $23
    ld hl, sp+$45                                 ; $4dd2: $f8 $45
    ldh a, [rTIMA]                                ; $4dd4: $f0 $05
    add c                                         ; $4dd6: $81
    ld bc, $0600                                  ; $4dd7: $01 $00 $06
    nop                                           ; $4dda: $00
    add [hl]                                      ; $4ddb: $86
    rlca                                          ; $4ddc: $07
    ld [$8609], sp                                ; $4ddd: $08 $09 $86
    add [hl]                                      ; $4de0: $86
    add c                                         ; $4de1: $81
    ld a, [bc]                                    ; $4de2: $0a
    ld bc, $0c0b                                  ; $4de3: $01 $0b $0c
    add c                                         ; $4de6: $81
    add c                                         ; $4de7: $81
    dec c                                         ; $4de8: $0d
    ld c, $86                                     ; $4de9: $0e $86
    ld bc, $2800                                  ; $4deb: $01 $00 $28
    add c                                         ; $4dee: $81
    add c                                         ; $4def: $81
    add b                                         ; $4df0: $80
    jr jr_0c2_4e0c                                ; $4df1: $18 $19

    jr nz, @+$0a                                  ; $4df3: $20 $08

    ld a, [de]                                    ; $4df5: $1a
    dec de                                        ; $4df6: $1b
    inc e                                         ; $4df7: $1c
    nop                                           ; $4df8: $00
    dec e                                         ; $4df9: $1d
    ld e, $1f                                     ; $4dfa: $1e $1f
    jr nz, jr_0c2_4e1f                            ; $4dfc: $20 $21

jr_0c2_4dfe:
    ld [hl+], a                                   ; $4dfe: $22
    inc hl                                        ; $4dff: $23
    inc h                                         ; $4e00: $24
    inc b                                         ; $4e01: $04
    dec h                                         ; $4e02: $25
    ld h, $27                                     ; $4e03: $26 $27
    jr z, jr_0c2_4e30                             ; $4e05: $28 $29

    ld hl, $4300                                  ; $4e07: $21 $00 $43
    ld b, h                                       ; $4e0a: $44
    add b                                         ; $4e0b: $80

jr_0c2_4e0c:
    and b                                         ; $4e0c: $a0
    jr jr_0c2_4e48                                ; $4e0d: $18 $39

    ld a, [hl-]                                   ; $4e0f: $3a
    add c                                         ; $4e10: $81
    dec sp                                        ; $4e11: $3b
    inc a                                         ; $4e12: $3c
    dec a                                         ; $4e13: $3d

jr_0c2_4e14:
    ld a, $00                                     ; $4e14: $3e $00
    ccf                                           ; $4e16: $3f
    ld b, b                                       ; $4e17: $40
    inc b                                         ; $4e18: $04
    inc bc                                        ; $4e19: $03
    ld [bc], a                                    ; $4e1a: $02
    ld bc, $ff00                                  ; $4e1b: $01 $00 $ff
    nop                                           ; $4e1e: $00

jr_0c2_4e1f:
    cp $fd                                        ; $4e1f: $fe $fd
    db $fc                                        ; $4e21: $fc
    ei                                            ; $4e22: $fb
    ld a, [$f8f9]                                 ; $4e23: $fa $f9 $f8
    add [hl]                                      ; $4e26: $86
    db $10                                        ; $4e27: $10
    add [hl]                                      ; $4e28: $86
    ld c, c                                       ; $4e29: $49
    ld c, d                                       ; $4e2a: $4a

jr_0c2_4e2b:
    ret nz                                        ; $4e2b: $c0

    jr jr_0c2_4e14                                ; $4e2c: $18 $e6

    push hl                                       ; $4e2e: $e5
    add c                                         ; $4e2f: $81

jr_0c2_4e30:
    db $e4                                        ; $4e30: $e4
    nop                                           ; $4e31: $00
    db $e3                                        ; $4e32: $e3
    ld [c], a                                     ; $4e33: $e2
    pop hl                                        ; $4e34: $e1
    ldh [$df], a                                  ; $4e35: $e0 $df
    sbc $dd                                       ; $4e37: $de $dd
    call c, $db00                                 ; $4e39: $dc $00 $db
    jp c, $d8d9                                   ; $4e3c: $da $d9 $d8

    rst $10                                       ; $4e3f: $d7
    sub $d5                                       ; $4e40: $d6 $d5
    call nc, $d302                                ; $4e42: $d4 $02 $d3
    jp nc, $86d1                                  ; $4e45: $d2 $d1 $86

jr_0c2_4e48:
    ld c, a                                       ; $4e48: $4f
    ld d, b                                       ; $4e49: $50
    ldh [rNR23], a                                ; $4e4a: $e0 $18
    cp a                                          ; $4e4c: $bf
    nop                                           ; $4e4d: $00
    add c                                         ; $4e4e: $81
    cp [hl]                                       ; $4e4f: $be
    cp l                                          ; $4e50: $bd
    cp h                                          ; $4e51: $bc
    add c                                         ; $4e52: $81
    cp e                                          ; $4e53: $bb
    cp d                                          ; $4e54: $ba
    cp c                                          ; $4e55: $b9
    nop                                           ; $4e56: $00
    cp b                                          ; $4e57: $b8
    or a                                          ; $4e58: $b7
    or [hl]                                       ; $4e59: $b6
    or l                                          ; $4e5a: $b5
    or h                                          ; $4e5b: $b4
    or e                                          ; $4e5c: $b3
    or d                                          ; $4e5d: $b2
    or c                                          ; $4e5e: $b1
    nop                                           ; $4e5f: $00
    add c                                         ; $4e60: $81
    or b                                          ; $4e61: $b0
    xor a                                         ; $4e62: $af
    xor [hl]                                      ; $4e63: $ae
    xor l                                         ; $4e64: $ad
    xor h                                         ; $4e65: $ac
    xor e                                         ; $4e66: $ab
    ld d, l                                       ; $4e67: $55
    ld b, b                                       ; $4e68: $40
    ld d, [hl]                                    ; $4e69: $56
    nop                                           ; $4e6a: $00
    add hl, de                                    ; $4e6b: $19
    sbc b                                         ; $4e6c: $98
    sub a                                         ; $4e6d: $97
    sub [hl]                                      ; $4e6e: $96
    sub l                                         ; $4e6f: $95
    sub h                                         ; $4e70: $94
    add c                                         ; $4e71: $81
    nop                                           ; $4e72: $00
    sub e                                         ; $4e73: $93
    ld e, e                                       ; $4e74: $5b
    ld e, h                                       ; $4e75: $5c
    sub b                                         ; $4e76: $90
    adc a                                         ; $4e77: $8f
    adc [hl]                                      ; $4e78: $8e
    adc l                                         ; $4e79: $8d
    adc h                                         ; $4e7a: $8c
    nop                                           ; $4e7b: $00
    adc e                                         ; $4e7c: $8b
    adc d                                         ; $4e7d: $8a
    adc c                                         ; $4e7e: $89
    adc b                                         ; $4e7f: $88
    add a                                         ; $4e80: $87
    add [hl]                                      ; $4e81: $86
    add l                                         ; $4e82: $85
    add h                                         ; $4e83: $84
    ld [$8283], sp                                ; $4e84: $08 $83 $82
    ld e, l                                       ; $4e87: $5d
    ld e, [hl]                                    ; $4e88: $5e
    jr nz, jr_0c2_4ea4                            ; $4e89: $20 $19

    ld l, a                                       ; $4e8b: $6f
    ld l, [hl]                                    ; $4e8c: $6e
    ld l, l                                       ; $4e8d: $6d
    nop                                           ; $4e8e: $00
    ld l, h                                       ; $4e8f: $6c
    ld l, e                                       ; $4e90: $6b
    ld l, d                                       ; $4e91: $6a
    ld h, e                                       ; $4e92: $63
    ld h, h                                       ; $4e93: $64
    ld h, a                                       ; $4e94: $67
    ld h, [hl]                                    ; $4e95: $66
    ld h, l                                       ; $4e96: $65
    nop                                           ; $4e97: $00
    ld h, h                                       ; $4e98: $64
    ld h, e                                       ; $4e99: $63
    ld h, d                                       ; $4e9a: $62
    ld h, c                                       ; $4e9b: $61
    ld h, b                                       ; $4e9c: $60
    ld e, a                                       ; $4e9d: $5f
    ld e, [hl]                                    ; $4e9e: $5e
    ld e, l                                       ; $4e9f: $5d
    ld bc, $5b5c                                  ; $4ea0: $01 $5c $5b
    ld e, d                                       ; $4ea3: $5a

jr_0c2_4ea4:
    ld e, c                                       ; $4ea4: $59
    ld e, b                                       ; $4ea5: $58
    ld h, l                                       ; $4ea6: $65
    ld h, [hl]                                    ; $4ea7: $66
    ld b, b                                       ; $4ea8: $40
    add hl, de                                    ; $4ea9: $19
    nop                                           ; $4eaa: $00
    ld b, [hl]                                    ; $4eab: $46
    ld b, l                                       ; $4eac: $45
    ld b, h                                       ; $4ead: $44
    ld b, e                                       ; $4eae: $43
    ld b, d                                       ; $4eaf: $42
    ld b, c                                       ; $4eb0: $41
    ld l, e                                       ; $4eb1: $6b
    ccf                                           ; $4eb2: $3f
    nop                                           ; $4eb3: $00
    ld a, $3d                                     ; $4eb4: $3e $3d
    inc a                                         ; $4eb6: $3c
    dec sp                                        ; $4eb7: $3b
    ld a, [hl-]                                   ; $4eb8: $3a
    add hl, sp                                    ; $4eb9: $39
    jr c, jr_0c2_4ef3                             ; $4eba: $38 $37

    nop                                           ; $4ebc: $00
    ld [hl], $35                                  ; $4ebd: $36 $35
    inc [hl]                                      ; $4ebf: $34
    inc sp                                        ; $4ec0: $33
    ld [hl-], a                                   ; $4ec1: $32
    ld sp, $2f30                                  ; $4ec2: $31 $30 $2f
    jr nz, jr_0c2_4f33                            ; $4ec5: $20 $6c

    ld l, l                                       ; $4ec7: $6d
    ld h, b                                       ; $4ec8: $60
    add hl, de                                    ; $4ec9: $19
    dec e                                         ; $4eca: $1d
    inc e                                         ; $4ecb: $1c
    dec de                                        ; $4ecc: $1b
    ld a, [de]                                    ; $4ecd: $1a
    add hl, de                                    ; $4ece: $19
    nop                                           ; $4ecf: $00
    jr @+$74                                      ; $4ed0: $18 $72

    ld d, $15                                     ; $4ed2: $16 $15
    ld [hl], e                                    ; $4ed4: $73
    inc de                                        ; $4ed5: $13
    ld [de], a                                    ; $4ed6: $12
    ld de, $1010                                  ; $4ed7: $11 $10 $10
    rrca                                          ; $4eda: $0f
    ld c, $00                                     ; $4edb: $0e $00
    ld bc, $0b0c                                  ; $4edd: $01 $0c $0b
    ld a, [bc]                                    ; $4ee0: $0a
    add hl, bc                                    ; $4ee1: $09
    db $10                                        ; $4ee2: $10
    ld [$7574], sp                                ; $4ee3: $08 $74 $75
    add b                                         ; $4ee6: $80
    add hl, de                                    ; $4ee7: $19
    or $f5                                        ; $4ee8: $f6 $f5
    db $f4                                        ; $4eea: $f4
    di                                            ; $4eeb: $f3
    nop                                           ; $4eec: $00
    ld a, [c]                                     ; $4eed: $f2
    pop af                                        ; $4eee: $f1
    ldh a, [$ef]                                  ; $4eef: $f0 $ef
    ld a, d                                       ; $4ef1: $7a
    db $ed                                        ; $4ef2: $ed

jr_0c2_4ef3:
    db $ec                                        ; $4ef3: $ec
    db $eb                                        ; $4ef4: $eb
    ld bc, $e9ea                                  ; $4ef5: $01 $ea $e9
    add sp, -$19                                  ; $4ef8: $e8 $e7
    and $81                                       ; $4efa: $e6 $81
    push hl                                       ; $4efc: $e5
    ret nc                                        ; $4efd: $d0

    ld [$8610], sp                                ; $4efe: $08 $10 $86
    ld a, e                                       ; $4f01: $7b
    ld a, h                                       ; $4f02: $7c
    and b                                         ; $4f03: $a0
    add hl, de                                    ; $4f04: $19
    ret nc                                        ; $4f05: $d0

    rst $08                                       ; $4f06: $cf
    adc $cd                                       ; $4f07: $ce $cd
    nop                                           ; $4f09: $00
    call z, Call_000_03cb                         ; $4f0a: $cc $cb $03
    call c, $c782                                 ; $4f0d: $dc $82 $c7
    add $c5                                       ; $4f10: $c6 $c5
    ld bc, $c3c4                                  ; $4f12: $01 $c4 $c3
    jp nz, $c0c1                                  ; $4f15: $c2 $c1 $c0

    add c                                         ; $4f18: $81
    cp a                                          ; $4f19: $bf
    pop de                                        ; $4f1a: $d1
    nop                                           ; $4f1b: $00
    ld [$babb], sp                                ; $4f1c: $08 $bb $ba
    sub d                                         ; $4f1f: $92
    sub c                                         ; $4f20: $91
    ret nz                                        ; $4f21: $c0

    add hl, de                                    ; $4f22: $19
    add c                                         ; $4f23: $81
    xor d                                         ; $4f24: $aa
    xor c                                         ; $4f25: $a9
    nop                                           ; $4f26: $00
    xor b                                         ; $4f27: $a8
    and a                                         ; $4f28: $a7
    and [hl]                                      ; $4f29: $a6
    inc d                                         ; $4f2a: $14
    and h                                         ; $4f2b: $a4
    and e                                         ; $4f2c: $a3
    and d                                         ; $4f2d: $a2
    and c                                         ; $4f2e: $a1
    nop                                           ; $4f2f: $00
    and b                                         ; $4f30: $a0
    sbc a                                         ; $4f31: $9f
    sbc [hl]                                      ; $4f32: $9e

jr_0c2_4f33:
    sbc l                                         ; $4f33: $9d
    sbc h                                         ; $4f34: $9c
    rst $20                                       ; $4f35: $e7
    add c                                         ; $4f36: $81
    sbc e                                         ; $4f37: $9b
    daa                                           ; $4f38: $27
    sbc d                                         ; $4f39: $9a
    sbc c                                         ; $4f3a: $99
    push de                                       ; $4f3b: $d5
    nop                                           ; $4f3c: $00
    xor $ca                                       ; $4f3d: $ee $ca
    ldh [$f9], a                                  ; $4f3f: $e0 $f9
    ld [bc], a                                    ; $4f41: $02
    ld a, [$fa24]                                 ; $4f42: $fa $24 $fa
    db $dd                                        ; $4f45: $dd
    ld b, [hl]                                    ; $4f46: $46
    ld a, [$aa68]                                 ; $4f47: $fa $68 $aa
    nop                                           ; $4f4a: $00
    ld bc, $23f8                                  ; $4f4b: $01 $f8 $23
    ld hl, sp+$45                                 ; $4f4e: $f8 $45
    ldh a, [$08]                                  ; $4f50: $f0 $08
    dec b                                         ; $4f52: $05
    stop                                          ; $4f53: $10 $00
    ld bc, $0909                                  ; $4f55: $01 $09 $09
    add hl, bc                                    ; $4f58: $09
    ld bc, $0201                                  ; $4f59: $01 $01 $02

jr_0c2_4f5c:
    ld a, [bc]                                    ; $4f5c: $0a
    ld bc, $0a0a                                  ; $4f5d: $01 $0a $0a
    ld [bc], a                                    ; $4f60: $02
    ld [bc], a                                    ; $4f61: $02
    dec bc                                        ; $4f62: $0b
    dec bc                                        ; $4f63: $0b
    inc bc                                        ; $4f64: $03
    ld bc, $fa00                                  ; $4f65: $01 $00 $fa
    jr nz, @+$5a                                  ; $4f68: $20 $58

    rra                                           ; $4f6a: $1f
    nop                                           ; $4f6b: $00
    ld [hl+], a                                   ; $4f6c: $22
    nop                                           ; $4f6d: $00
    rra                                           ; $4f6e: $1f
    nop                                           ; $4f6f: $00
    ld [hl+], a                                   ; $4f70: $22
    nop                                           ; $4f71: $00
    dec bc                                        ; $4f72: $0b
    ld hl, $0810                                  ; $4f73: $21 $10 $08
    sbc $39                                       ; $4f76: $de $39
    db $10                                        ; $4f78: $10
    ld b, b                                       ; $4f79: $40
    nop                                           ; $4f7a: $00
    ld [$0003], sp                                ; $4f7b: $08 $03 $00
    jr nz, jr_0c2_4fe8                            ; $4f7e: $20 $68

    ld b, d                                       ; $4f80: $42
    nop                                           ; $4f81: $00
    jr nz, jr_0c2_4f5c                            ; $4f82: $20 $d8

    dec bc                                        ; $4f84: $0b

jr_0c2_4f85:
    rst $18                                       ; $4f85: $df
    ld b, b                                       ; $4f86: $40
    jr c, jr_0c2_4fc8                             ; $4f87: $38 $3f

    ld [$6000], sp                                ; $4f89: $08 $00 $60
    ld b, b                                       ; $4f8c: $40
    add b                                         ; $4f8d: $80
    nop                                           ; $4f8e: $00
    ld b, d                                       ; $4f8f: $42
    ld [$3860], sp                                ; $4f90: $08 $60 $38
    jr nz, jr_0c2_4ff5                            ; $4f93: $20 $60

    rst $38                                       ; $4f95: $ff
    ld b, b                                       ; $4f96: $40
    jr @+$22                                      ; $4f97: $18 $20

    jr nc, @+$28                                  ; $4f99: $30 $26

    add hl, de                                    ; $4f9b: $19

jr_0c2_4f9c:
    cp [hl]                                       ; $4f9c: $be
    ld [$00c0], sp                                ; $4f9d: $08 $c0 $00
    ld bc, $be10                                  ; $4fa0: $01 $10 $be
    ld [$38a0], sp                                ; $4fa3: $08 $a0 $38
    rst $38                                       ; $4fa6: $ff
    jr nz, jr_0c2_4fc9                            ; $4fa7: $20 $20

    rra                                           ; $4fa9: $1f
    ld [$d820], sp                                ; $4faa: $08 $20 $d8
    nop                                           ; $4fad: $00
    add hl, bc                                    ; $4fae: $09
    ld b, b                                       ; $4faf: $40
    or b                                          ; $4fb0: $b0
    rra                                           ; $4fb1: $1f
    db $10                                        ; $4fb2: $10
    jr nz, jr_0c2_4f85                            ; $4fb3: $20 $d0

    add b                                         ; $4fb5: $80
    ret c                                         ; $4fb6: $d8

    cp a                                          ; $4fb7: $bf
    jr nz, jr_0c2_4ff2                            ; $4fb8: $20 $38

    ld b, d                                       ; $4fba: $42
    and b                                         ; $4fbb: $a0
    jr nz, jr_0c2_4f9c                            ; $4fbc: $20 $de

    ld sp, hl                                     ; $4fbe: $f9
    nop                                           ; $4fbf: $00
    ld a, [$fa22]                                 ; $4fc0: $fa $22 $fa
    ld b, h                                       ; $4fc3: $44
    ld a, [$ba66]                                 ; $4fc4: $fa $66 $ba
    inc a                                         ; $4fc7: $3c

jr_0c2_4fc8:
    nop                                           ; $4fc8: $00

jr_0c2_4fc9:
    inc d                                         ; $4fc9: $14
    nop                                           ; $4fca: $00
    add b                                         ; $4fcb: $80
    add b                                         ; $4fcc: $80
    add b                                         ; $4fcd: $80
    add b                                         ; $4fce: $80
    add b                                         ; $4fcf: $80
    add b                                         ; $4fd0: $80
    add b                                         ; $4fd1: $80
    add b                                         ; $4fd2: $80
    add b                                         ; $4fd3: $80
    add b                                         ; $4fd4: $80
    add b                                         ; $4fd5: $80
    add b                                         ; $4fd6: $80
    add b                                         ; $4fd7: $80
    add b                                         ; $4fd8: $80
    add b                                         ; $4fd9: $80
    add b                                         ; $4fda: $80
    add b                                         ; $4fdb: $80
    add b                                         ; $4fdc: $80
    add b                                         ; $4fdd: $80
    add b                                         ; $4fde: $80
    add b                                         ; $4fdf: $80
    add b                                         ; $4fe0: $80
    add b                                         ; $4fe1: $80
    add b                                         ; $4fe2: $80
    add b                                         ; $4fe3: $80
    add b                                         ; $4fe4: $80
    add b                                         ; $4fe5: $80
    add b                                         ; $4fe6: $80
    add b                                         ; $4fe7: $80

jr_0c2_4fe8:
    add b                                         ; $4fe8: $80
    add b                                         ; $4fe9: $80
    add b                                         ; $4fea: $80
    add b                                         ; $4feb: $80
    add b                                         ; $4fec: $80
    add b                                         ; $4fed: $80
    add b                                         ; $4fee: $80
    add b                                         ; $4fef: $80
    add b                                         ; $4ff0: $80
    add b                                         ; $4ff1: $80

jr_0c2_4ff2:
    add b                                         ; $4ff2: $80
    add b                                         ; $4ff3: $80
    add b                                         ; $4ff4: $80

jr_0c2_4ff5:
    add b                                         ; $4ff5: $80
    add b                                         ; $4ff6: $80
    add b                                         ; $4ff7: $80
    add b                                         ; $4ff8: $80
    add b                                         ; $4ff9: $80
    add b                                         ; $4ffa: $80
    add b                                         ; $4ffb: $80
    add b                                         ; $4ffc: $80
    add b                                         ; $4ffd: $80
    add b                                         ; $4ffe: $80
    add b                                         ; $4fff: $80
    add b                                         ; $5000: $80
    add b                                         ; $5001: $80
    add b                                         ; $5002: $80
    add b                                         ; $5003: $80
    add b                                         ; $5004: $80
    add b                                         ; $5005: $80
    add b                                         ; $5006: $80
    add b                                         ; $5007: $80
    add b                                         ; $5008: $80
    add b                                         ; $5009: $80
    add b                                         ; $500a: $80
    add b                                         ; $500b: $80
    add b                                         ; $500c: $80
    add b                                         ; $500d: $80
    add b                                         ; $500e: $80
    add b                                         ; $500f: $80
    add b                                         ; $5010: $80
    add b                                         ; $5011: $80
    add b                                         ; $5012: $80
    add b                                         ; $5013: $80
    add b                                         ; $5014: $80
    add b                                         ; $5015: $80
    add b                                         ; $5016: $80
    add b                                         ; $5017: $80
    add b                                         ; $5018: $80
    add b                                         ; $5019: $80
    add b                                         ; $501a: $80
    add b                                         ; $501b: $80
    add b                                         ; $501c: $80
    add b                                         ; $501d: $80
    add b                                         ; $501e: $80
    add b                                         ; $501f: $80
    add b                                         ; $5020: $80
    add b                                         ; $5021: $80
    add b                                         ; $5022: $80
    add b                                         ; $5023: $80
    add b                                         ; $5024: $80
    add b                                         ; $5025: $80
    add b                                         ; $5026: $80
    add b                                         ; $5027: $80
    add b                                         ; $5028: $80
    add b                                         ; $5029: $80
    add b                                         ; $502a: $80
    add b                                         ; $502b: $80
    add b                                         ; $502c: $80
    add b                                         ; $502d: $80
    add b                                         ; $502e: $80
    add b                                         ; $502f: $80
    add b                                         ; $5030: $80
    add b                                         ; $5031: $80
    add b                                         ; $5032: $80
    add b                                         ; $5033: $80
    add b                                         ; $5034: $80
    add b                                         ; $5035: $80

jr_0c2_5036:
    add b                                         ; $5036: $80
    add b                                         ; $5037: $80
    add b                                         ; $5038: $80
    add b                                         ; $5039: $80
    add b                                         ; $503a: $80
    add b                                         ; $503b: $80
    add b                                         ; $503c: $80
    add b                                         ; $503d: $80
    add b                                         ; $503e: $80
    add b                                         ; $503f: $80
    add b                                         ; $5040: $80
    add b                                         ; $5041: $80
    add b                                         ; $5042: $80
    add b                                         ; $5043: $80
    add b                                         ; $5044: $80
    add b                                         ; $5045: $80
    add b                                         ; $5046: $80
    add b                                         ; $5047: $80
    add b                                         ; $5048: $80
    add b                                         ; $5049: $80
    add b                                         ; $504a: $80
    add b                                         ; $504b: $80
    add b                                         ; $504c: $80
    add b                                         ; $504d: $80
    add b                                         ; $504e: $80
    add b                                         ; $504f: $80
    add b                                         ; $5050: $80
    add b                                         ; $5051: $80
    add b                                         ; $5052: $80
    add b                                         ; $5053: $80
    add b                                         ; $5054: $80
    add b                                         ; $5055: $80
    add b                                         ; $5056: $80
    add b                                         ; $5057: $80
    add b                                         ; $5058: $80
    add b                                         ; $5059: $80
    add b                                         ; $505a: $80
    add b                                         ; $505b: $80
    add b                                         ; $505c: $80
    add b                                         ; $505d: $80
    add b                                         ; $505e: $80
    add b                                         ; $505f: $80
    add b                                         ; $5060: $80
    add b                                         ; $5061: $80
    add b                                         ; $5062: $80
    add b                                         ; $5063: $80
    add b                                         ; $5064: $80
    add b                                         ; $5065: $80
    add b                                         ; $5066: $80
    add b                                         ; $5067: $80
    add b                                         ; $5068: $80
    add b                                         ; $5069: $80
    add b                                         ; $506a: $80
    add b                                         ; $506b: $80
    add b                                         ; $506c: $80
    add b                                         ; $506d: $80
    add b                                         ; $506e: $80
    add b                                         ; $506f: $80
    add b                                         ; $5070: $80
    add b                                         ; $5071: $80

jr_0c2_5072:
    add b                                         ; $5072: $80
    add b                                         ; $5073: $80
    add b                                         ; $5074: $80
    add b                                         ; $5075: $80
    add b                                         ; $5076: $80
    add b                                         ; $5077: $80
    add b                                         ; $5078: $80
    add b                                         ; $5079: $80
    add b                                         ; $507a: $80
    add b                                         ; $507b: $80
    add b                                         ; $507c: $80
    add b                                         ; $507d: $80
    add b                                         ; $507e: $80
    add b                                         ; $507f: $80
    add b                                         ; $5080: $80
    add b                                         ; $5081: $80
    add b                                         ; $5082: $80
    add b                                         ; $5083: $80
    add b                                         ; $5084: $80
    dec b                                         ; $5085: $05
    add c                                         ; $5086: $81
    add c                                         ; $5087: $81
    add c                                         ; $5088: $81
    add c                                         ; $5089: $81
    ld b, $86                                     ; $508a: $06 $86
    rlca                                          ; $508c: $07
    ld [$8609], sp                                ; $508d: $08 $09 $86
    add [hl]                                      ; $5090: $86
    add c                                         ; $5091: $81
    ld a, [bc]                                    ; $5092: $0a
    dec bc                                        ; $5093: $0b
    inc c                                         ; $5094: $0c
    add c                                         ; $5095: $81
    add c                                         ; $5096: $81
    dec c                                         ; $5097: $0d
    ld c, $86                                     ; $5098: $0e $86
    add [hl]                                      ; $509a: $86
    add [hl]                                      ; $509b: $86
    add [hl]                                      ; $509c: $86
    add c                                         ; $509d: $81
    add c                                         ; $509e: $81
    add c                                         ; $509f: $81
    ld b, c                                       ; $50a0: $41
    ld b, d                                       ; $50a1: $42
    add c                                         ; $50a2: $81
    add c                                         ; $50a3: $81
    rrca                                          ; $50a4: $0f
    db $10                                        ; $50a5: $10
    ld de, $8112                                  ; $50a6: $11 $12 $81
    add [hl]                                      ; $50a9: $86
    add [hl]                                      ; $50aa: $86
    add [hl]                                      ; $50ab: $86
    add [hl]                                      ; $50ac: $86
    add [hl]                                      ; $50ad: $86
    add [hl]                                      ; $50ae: $86
    inc de                                        ; $50af: $13
    inc d                                         ; $50b0: $14
    dec d                                         ; $50b1: $15
    ld d, $17                                     ; $50b2: $16 $17
    jr jr_0c2_5036                                ; $50b4: $18 $80

    add b                                         ; $50b6: $80
    add b                                         ; $50b7: $80
    add b                                         ; $50b8: $80
    add b                                         ; $50b9: $80
    add b                                         ; $50ba: $80
    add b                                         ; $50bb: $80
    add b                                         ; $50bc: $80
    add b                                         ; $50bd: $80
    add b                                         ; $50be: $80
    add b                                         ; $50bf: $80
    add b                                         ; $50c0: $80
    add hl, de                                    ; $50c1: $19
    add c                                         ; $50c2: $81
    add c                                         ; $50c3: $81
    add c                                         ; $50c4: $81
    add c                                         ; $50c5: $81
    ld a, [de]                                    ; $50c6: $1a
    dec de                                        ; $50c7: $1b
    inc e                                         ; $50c8: $1c
    dec e                                         ; $50c9: $1d
    ld e, $1f                                     ; $50ca: $1e $1f
    jr nz, @+$23                                  ; $50cc: $20 $21

    ld [hl+], a                                   ; $50ce: $22
    inc hl                                        ; $50cf: $23
    inc h                                         ; $50d0: $24
    dec h                                         ; $50d1: $25
    ld h, $27                                     ; $50d2: $26 $27
    jr z, jr_0c2_50ff                             ; $50d4: $28 $29

    add [hl]                                      ; $50d6: $86
    add [hl]                                      ; $50d7: $86
    add [hl]                                      ; $50d8: $86
    ld b, e                                       ; $50d9: $43
    ld b, h                                       ; $50da: $44
    ld b, l                                       ; $50db: $45
    ld b, [hl]                                    ; $50dc: $46
    ld b, a                                       ; $50dd: $47
    ld c, b                                       ; $50de: $48
    ld a, [hl+]                                   ; $50df: $2a
    dec hl                                        ; $50e0: $2b
    inc l                                         ; $50e1: $2c
    dec l                                         ; $50e2: $2d
    ld l, $2f                                     ; $50e3: $2e $2f
    add [hl]                                      ; $50e5: $86
    add [hl]                                      ; $50e6: $86
    add [hl]                                      ; $50e7: $86
    jr nc, jr_0c2_511b                            ; $50e8: $30 $31

    ld [hl-], a                                   ; $50ea: $32
    inc sp                                        ; $50eb: $33
    inc [hl]                                      ; $50ec: $34
    dec [hl]                                      ; $50ed: $35
    ld [hl], $37                                  ; $50ee: $36 $37
    jr c, jr_0c2_5072                             ; $50f0: $38 $80

    add b                                         ; $50f2: $80
    add b                                         ; $50f3: $80
    add b                                         ; $50f4: $80
    add b                                         ; $50f5: $80
    add b                                         ; $50f6: $80
    add b                                         ; $50f7: $80
    add b                                         ; $50f8: $80
    add b                                         ; $50f9: $80
    add b                                         ; $50fa: $80
    add b                                         ; $50fb: $80
    add b                                         ; $50fc: $80
    add hl, sp                                    ; $50fd: $39
    ld a, [hl-]                                   ; $50fe: $3a

jr_0c2_50ff:
    add c                                         ; $50ff: $81
    dec sp                                        ; $5100: $3b
    inc a                                         ; $5101: $3c
    dec a                                         ; $5102: $3d
    ld a, $3f                                     ; $5103: $3e $3f
    ld b, b                                       ; $5105: $40
    inc b                                         ; $5106: $04
    inc bc                                        ; $5107: $03
    ld [bc], a                                    ; $5108: $02
    ld bc, $ff00                                  ; $5109: $01 $00 $ff
    cp $fd                                        ; $510c: $fe $fd
    db $fc                                        ; $510e: $fc
    ei                                            ; $510f: $fb
    ld a, [$f8f9]                                 ; $5110: $fa $f9 $f8
    add [hl]                                      ; $5113: $86
    add [hl]                                      ; $5114: $86
    ld c, c                                       ; $5115: $49
    ld c, d                                       ; $5116: $4a
    ld c, e                                       ; $5117: $4b
    ld c, h                                       ; $5118: $4c
    ld c, l                                       ; $5119: $4d
    ld c, [hl]                                    ; $511a: $4e

jr_0c2_511b:
    rst $30                                       ; $511b: $f7
    or $f5                                        ; $511c: $f6 $f5
    db $f4                                        ; $511e: $f4
    di                                            ; $511f: $f3
    ld a, [c]                                     ; $5120: $f2
    pop af                                        ; $5121: $f1
    add [hl]                                      ; $5122: $86
    ldh a, [$ef]                                  ; $5123: $f0 $ef
    xor $ed                                       ; $5125: $ee $ed
    db $ec                                        ; $5127: $ec
    db $eb                                        ; $5128: $eb
    ld [$e8e9], a                                 ; $5129: $ea $e9 $e8
    rst $20                                       ; $512c: $e7
    add b                                         ; $512d: $80
    add b                                         ; $512e: $80
    add b                                         ; $512f: $80
    add b                                         ; $5130: $80
    add b                                         ; $5131: $80
    add b                                         ; $5132: $80
    add b                                         ; $5133: $80
    add b                                         ; $5134: $80
    add b                                         ; $5135: $80
    add b                                         ; $5136: $80
    add b                                         ; $5137: $80
    add b                                         ; $5138: $80
    and $e5                                       ; $5139: $e6 $e5
    add c                                         ; $513b: $81
    db $e4                                        ; $513c: $e4
    db $e3                                        ; $513d: $e3
    ld [c], a                                     ; $513e: $e2
    pop hl                                        ; $513f: $e1
    ldh [$df], a                                  ; $5140: $e0 $df
    sbc $dd                                       ; $5142: $de $dd
    call c, $dadb                                 ; $5144: $dc $db $da
    reti                                          ; $5147: $d9


    ret c                                         ; $5148: $d8

    rst $10                                       ; $5149: $d7
    sub $d5                                       ; $514a: $d6 $d5
    call nc, $d2d3                                ; $514c: $d4 $d3 $d2
    pop de                                        ; $514f: $d1
    add [hl]                                      ; $5150: $86
    ld c, a                                       ; $5151: $4f
    ld d, b                                       ; $5152: $50
    ld d, c                                       ; $5153: $51
    ld d, d                                       ; $5154: $52
    ld d, e                                       ; $5155: $53
    ld d, h                                       ; $5156: $54
    add c                                         ; $5157: $81
    ret nc                                        ; $5158: $d0

    rst $08                                       ; $5159: $cf
    adc $cd                                       ; $515a: $ce $cd
    call z, $cacb                                 ; $515c: $cc $cb $ca
    ret                                           ; $515f: $c9


    ret z                                         ; $5160: $c8

    rst $00                                       ; $5161: $c7
    add $c5                                       ; $5162: $c6 $c5
    call nz, $c2c3                                ; $5164: $c4 $c3 $c2
    pop bc                                        ; $5167: $c1
    ret nz                                        ; $5168: $c0

    add b                                         ; $5169: $80
    add b                                         ; $516a: $80
    add b                                         ; $516b: $80
    add b                                         ; $516c: $80
    add b                                         ; $516d: $80
    add b                                         ; $516e: $80
    add b                                         ; $516f: $80
    add b                                         ; $5170: $80
    add b                                         ; $5171: $80
    add b                                         ; $5172: $80
    add b                                         ; $5173: $80
    add b                                         ; $5174: $80
    cp a                                          ; $5175: $bf
    add c                                         ; $5176: $81
    cp [hl]                                       ; $5177: $be
    cp l                                          ; $5178: $bd
    cp h                                          ; $5179: $bc
    add c                                         ; $517a: $81
    cp e                                          ; $517b: $bb
    cp d                                          ; $517c: $ba
    cp c                                          ; $517d: $b9
    cp b                                          ; $517e: $b8
    or a                                          ; $517f: $b7
    or [hl]                                       ; $5180: $b6
    or l                                          ; $5181: $b5
    or h                                          ; $5182: $b4
    or e                                          ; $5183: $b3
    or d                                          ; $5184: $b2
    or c                                          ; $5185: $b1
    add c                                         ; $5186: $81
    or b                                          ; $5187: $b0
    xor a                                         ; $5188: $af
    xor [hl]                                      ; $5189: $ae
    xor l                                         ; $518a: $ad
    xor h                                         ; $518b: $ac
    xor e                                         ; $518c: $ab
    ld d, l                                       ; $518d: $55
    ld d, [hl]                                    ; $518e: $56
    ld d, a                                       ; $518f: $57
    ld e, b                                       ; $5190: $58
    ld e, c                                       ; $5191: $59
    ld e, d                                       ; $5192: $5a
    xor d                                         ; $5193: $aa
    xor c                                         ; $5194: $a9
    xor b                                         ; $5195: $a8
    and a                                         ; $5196: $a7
    and [hl]                                      ; $5197: $a6
    and l                                         ; $5198: $a5
    and h                                         ; $5199: $a4
    and e                                         ; $519a: $a3
    and d                                         ; $519b: $a2
    and c                                         ; $519c: $a1
    and b                                         ; $519d: $a0
    sbc a                                         ; $519e: $9f
    sbc [hl]                                      ; $519f: $9e
    sbc l                                         ; $51a0: $9d
    sbc h                                         ; $51a1: $9c
    sbc e                                         ; $51a2: $9b
    sbc d                                         ; $51a3: $9a
    sbc c                                         ; $51a4: $99
    add b                                         ; $51a5: $80
    add b                                         ; $51a6: $80
    add b                                         ; $51a7: $80
    add b                                         ; $51a8: $80
    add b                                         ; $51a9: $80
    add b                                         ; $51aa: $80
    add b                                         ; $51ab: $80
    add b                                         ; $51ac: $80
    add b                                         ; $51ad: $80
    add b                                         ; $51ae: $80
    add b                                         ; $51af: $80
    add b                                         ; $51b0: $80
    sbc b                                         ; $51b1: $98
    sub a                                         ; $51b2: $97
    sub [hl]                                      ; $51b3: $96
    sub l                                         ; $51b4: $95
    sub h                                         ; $51b5: $94
    add c                                         ; $51b6: $81
    sub e                                         ; $51b7: $93
    ld e, e                                       ; $51b8: $5b
    ld e, h                                       ; $51b9: $5c
    sub b                                         ; $51ba: $90
    adc a                                         ; $51bb: $8f
    adc [hl]                                      ; $51bc: $8e
    adc l                                         ; $51bd: $8d
    adc h                                         ; $51be: $8c
    adc e                                         ; $51bf: $8b
    adc d                                         ; $51c0: $8a
    adc c                                         ; $51c1: $89
    adc b                                         ; $51c2: $88
    add a                                         ; $51c3: $87
    add [hl]                                      ; $51c4: $86
    add l                                         ; $51c5: $85
    add h                                         ; $51c6: $84
    add e                                         ; $51c7: $83
    add d                                         ; $51c8: $82
    ld e, l                                       ; $51c9: $5d
    ld e, [hl]                                    ; $51ca: $5e
    ld e, a                                       ; $51cb: $5f
    ld h, b                                       ; $51cc: $60
    ld h, c                                       ; $51cd: $61
    ld h, d                                       ; $51ce: $62
    add c                                         ; $51cf: $81
    add b                                         ; $51d0: $80
    ld a, a                                       ; $51d1: $7f
    ld a, [hl]                                    ; $51d2: $7e
    ld a, l                                       ; $51d3: $7d
    ld a, h                                       ; $51d4: $7c
    ld a, e                                       ; $51d5: $7b
    ld a, d                                       ; $51d6: $7a
    ld a, c                                       ; $51d7: $79
    ld a, b                                       ; $51d8: $78
    ld [hl], a                                    ; $51d9: $77
    halt                                          ; $51da: $76
    ld [hl], l                                    ; $51db: $75
    ld [hl], h                                    ; $51dc: $74
    ld [hl], e                                    ; $51dd: $73
    ld [hl], d                                    ; $51de: $72
    ld [hl], c                                    ; $51df: $71
    ld [hl], b                                    ; $51e0: $70
    add b                                         ; $51e1: $80
    add b                                         ; $51e2: $80
    add b                                         ; $51e3: $80
    add b                                         ; $51e4: $80
    add b                                         ; $51e5: $80
    add b                                         ; $51e6: $80
    add b                                         ; $51e7: $80
    add b                                         ; $51e8: $80
    add b                                         ; $51e9: $80
    add b                                         ; $51ea: $80
    add b                                         ; $51eb: $80
    add b                                         ; $51ec: $80
    ld l, a                                       ; $51ed: $6f
    ld l, [hl]                                    ; $51ee: $6e
    ld l, l                                       ; $51ef: $6d
    ld l, h                                       ; $51f0: $6c
    ld l, e                                       ; $51f1: $6b
    ld l, d                                       ; $51f2: $6a
    ld h, e                                       ; $51f3: $63
    ld h, h                                       ; $51f4: $64
    ld h, a                                       ; $51f5: $67
    ld h, [hl]                                    ; $51f6: $66
    ld h, l                                       ; $51f7: $65
    ld h, h                                       ; $51f8: $64
    ld h, e                                       ; $51f9: $63
    ld h, d                                       ; $51fa: $62
    ld h, c                                       ; $51fb: $61
    ld h, b                                       ; $51fc: $60
    ld e, a                                       ; $51fd: $5f
    ld e, [hl]                                    ; $51fe: $5e
    ld e, l                                       ; $51ff: $5d
    ld e, h                                       ; $5200: $5c
    ld e, e                                       ; $5201: $5b
    ld e, d                                       ; $5202: $5a
    ld e, c                                       ; $5203: $59
    ld e, b                                       ; $5204: $58
    ld h, l                                       ; $5205: $65
    ld h, [hl]                                    ; $5206: $66
    ld h, a                                       ; $5207: $67
    ld l, b                                       ; $5208: $68
    ld l, c                                       ; $5209: $69
    ld l, d                                       ; $520a: $6a
    ld d, a                                       ; $520b: $57
    ld d, [hl]                                    ; $520c: $56
    ld d, l                                       ; $520d: $55
    ld d, h                                       ; $520e: $54
    ld d, e                                       ; $520f: $53
    ld d, h                                       ; $5210: $54
    ld d, d                                       ; $5211: $52
    ld d, c                                       ; $5212: $51
    ld d, b                                       ; $5213: $50
    ld c, a                                       ; $5214: $4f
    ld c, [hl]                                    ; $5215: $4e
    ld c, l                                       ; $5216: $4d
    ld c, h                                       ; $5217: $4c
    ld c, e                                       ; $5218: $4b
    ld c, d                                       ; $5219: $4a
    ld c, c                                       ; $521a: $49
    ld c, b                                       ; $521b: $48
    ld b, a                                       ; $521c: $47
    add b                                         ; $521d: $80
    add b                                         ; $521e: $80
    add b                                         ; $521f: $80
    add b                                         ; $5220: $80
    add b                                         ; $5221: $80
    add b                                         ; $5222: $80
    add b                                         ; $5223: $80
    add b                                         ; $5224: $80
    add b                                         ; $5225: $80
    add b                                         ; $5226: $80
    add b                                         ; $5227: $80
    add b                                         ; $5228: $80
    ld b, [hl]                                    ; $5229: $46
    ld b, l                                       ; $522a: $45
    ld b, h                                       ; $522b: $44
    ld b, e                                       ; $522c: $43
    ld b, d                                       ; $522d: $42
    ld b, c                                       ; $522e: $41
    ld l, e                                       ; $522f: $6b
    ccf                                           ; $5230: $3f
    ld a, $3d                                     ; $5231: $3e $3d
    inc a                                         ; $5233: $3c
    dec sp                                        ; $5234: $3b
    ld a, [hl-]                                   ; $5235: $3a
    add hl, sp                                    ; $5236: $39
    jr c, jr_0c2_5270                             ; $5237: $38 $37

    ld [hl], $35                                  ; $5239: $36 $35
    inc [hl]                                      ; $523b: $34
    inc sp                                        ; $523c: $33
    ld [hl-], a                                   ; $523d: $32
    ld sp, $2f30                                  ; $523e: $31 $30 $2f
    ld l, h                                       ; $5241: $6c
    ld l, l                                       ; $5242: $6d
    ld l, [hl]                                    ; $5243: $6e
    ld l, a                                       ; $5244: $6f
    ld [hl], b                                    ; $5245: $70
    ld [hl], c                                    ; $5246: $71
    ld l, $2d                                     ; $5247: $2e $2d
    inc l                                         ; $5249: $2c
    dec hl                                        ; $524a: $2b
    dec hl                                        ; $524b: $2b
    dec hl                                        ; $524c: $2b
    add hl, hl                                    ; $524d: $29
    jr z, jr_0c2_5277                             ; $524e: $28 $27

    ld h, $25                                     ; $5250: $26 $25
    inc h                                         ; $5252: $24
    inc hl                                        ; $5253: $23
    ld [hl+], a                                   ; $5254: $22
    ld hl, $1f20                                  ; $5255: $21 $20 $1f
    ld e, $80                                     ; $5258: $1e $80
    add b                                         ; $525a: $80
    add b                                         ; $525b: $80
    add b                                         ; $525c: $80
    add b                                         ; $525d: $80
    add b                                         ; $525e: $80
    add b                                         ; $525f: $80
    add b                                         ; $5260: $80
    add b                                         ; $5261: $80
    add b                                         ; $5262: $80
    add b                                         ; $5263: $80
    add b                                         ; $5264: $80
    dec e                                         ; $5265: $1d
    inc e                                         ; $5266: $1c
    dec de                                        ; $5267: $1b
    ld a, [de]                                    ; $5268: $1a
    add hl, de                                    ; $5269: $19
    jr jr_0c2_52de                                ; $526a: $18 $72

    ld d, $15                                     ; $526c: $16 $15
    ld [hl], e                                    ; $526e: $73
    inc de                                        ; $526f: $13

jr_0c2_5270:
    ld [de], a                                    ; $5270: $12
    ld de, $0f10                                  ; $5271: $11 $10 $0f
    ld c, $81                                     ; $5274: $0e $81
    add c                                         ; $5276: $81

jr_0c2_5277:
    dec c                                         ; $5277: $0d
    inc c                                         ; $5278: $0c
    dec bc                                        ; $5279: $0b
    ld a, [bc]                                    ; $527a: $0a
    add hl, bc                                    ; $527b: $09
    ld [$7574], sp                                ; $527c: $08 $74 $75
    halt                                          ; $527f: $76
    ld [hl], a                                    ; $5280: $77
    ld a, b                                       ; $5281: $78
    ld a, c                                       ; $5282: $79
    rlca                                          ; $5283: $07
    ld b, $05                                     ; $5284: $06 $05
    inc b                                         ; $5286: $04
    inc b                                         ; $5287: $04
    inc b                                         ; $5288: $04
    ld [bc], a                                    ; $5289: $02
    ld bc, $ff00                                  ; $528a: $01 $00 $ff
    cp $fd                                        ; $528d: $fe $fd
    db $fc                                        ; $528f: $fc
    ei                                            ; $5290: $fb
    ld a, [$f8f9]                                 ; $5291: $fa $f9 $f8
    rst $30                                       ; $5294: $f7
    add b                                         ; $5295: $80
    add b                                         ; $5296: $80
    add b                                         ; $5297: $80
    add b                                         ; $5298: $80
    add b                                         ; $5299: $80
    add b                                         ; $529a: $80
    add b                                         ; $529b: $80
    add b                                         ; $529c: $80
    add b                                         ; $529d: $80
    add b                                         ; $529e: $80
    add b                                         ; $529f: $80
    add b                                         ; $52a0: $80
    or $f5                                        ; $52a1: $f6 $f5
    db $f4                                        ; $52a3: $f4
    di                                            ; $52a4: $f3
    ld a, [c]                                     ; $52a5: $f2
    pop af                                        ; $52a6: $f1
    ldh a, [$ef]                                  ; $52a7: $f0 $ef
    ld a, d                                       ; $52a9: $7a
    db $ed                                        ; $52aa: $ed
    db $ec                                        ; $52ab: $ec
    db $eb                                        ; $52ac: $eb
    ld [$e8e9], a                                 ; $52ad: $ea $e9 $e8
    rst $20                                       ; $52b0: $e7
    and $81                                       ; $52b1: $e6 $81
    push hl                                       ; $52b3: $e5
    db $e4                                        ; $52b4: $e4
    db $e3                                        ; $52b5: $e3
    ld [c], a                                     ; $52b6: $e2
    pop hl                                        ; $52b7: $e1
    add [hl]                                      ; $52b8: $86
    ld a, e                                       ; $52b9: $7b
    ld a, h                                       ; $52ba: $7c
    ld a, l                                       ; $52bb: $7d
    ld a, [hl]                                    ; $52bc: $7e
    rla                                           ; $52bd: $17
    ld a, [hl+]                                   ; $52be: $2a
    ldh [$df], a                                  ; $52bf: $e0 $df
    sbc $dd                                       ; $52c1: $de $dd
    db $dd                                        ; $52c3: $dd
    db $dd                                        ; $52c4: $dd
    db $db                                        ; $52c5: $db
    jp c, $d8d9                                   ; $52c6: $da $d9 $d8

    rst $10                                       ; $52c9: $d7
    sub $81                                       ; $52ca: $d6 $81
    push de                                       ; $52cc: $d5
    call nc, $d2d3                                ; $52cd: $d4 $d3 $d2
    pop de                                        ; $52d0: $d1
    add b                                         ; $52d1: $80
    add b                                         ; $52d2: $80
    add b                                         ; $52d3: $80
    add b                                         ; $52d4: $80
    add b                                         ; $52d5: $80
    add b                                         ; $52d6: $80
    add b                                         ; $52d7: $80
    add b                                         ; $52d8: $80
    add b                                         ; $52d9: $80
    add b                                         ; $52da: $80
    add b                                         ; $52db: $80
    add b                                         ; $52dc: $80
    ret nc                                        ; $52dd: $d0

jr_0c2_52de:
    rst $08                                       ; $52de: $cf
    adc $cd                                       ; $52df: $ce $cd
    call z, Call_000_03cb                         ; $52e1: $cc $cb $03
    call c, $c782                                 ; $52e4: $dc $82 $c7
    add $c5                                       ; $52e7: $c6 $c5
    call nz, $c2c3                                ; $52e9: $c4 $c3 $c2
    pop bc                                        ; $52ec: $c1
    ret nz                                        ; $52ed: $c0

    add c                                         ; $52ee: $81
    cp a                                          ; $52ef: $bf
    cp [hl]                                       ; $52f0: $be
    cp l                                          ; $52f1: $bd
    cp h                                          ; $52f2: $bc
    cp e                                          ; $52f3: $bb
    cp d                                          ; $52f4: $ba
    sub d                                         ; $52f5: $92
    sub c                                         ; $52f6: $91
    ld l, c                                       ; $52f7: $69
    ld l, b                                       ; $52f8: $68
    ld b, b                                       ; $52f9: $40
    add c                                         ; $52fa: $81
    cp c                                          ; $52fb: $b9
    cp b                                          ; $52fc: $b8
    or a                                          ; $52fd: $b7
    rst $20                                       ; $52fe: $e7
    add c                                         ; $52ff: $81
    add c                                         ; $5300: $81
    or [hl]                                       ; $5301: $b6
    or l                                          ; $5302: $b5
    or h                                          ; $5303: $b4
    or e                                          ; $5304: $b3
    or d                                          ; $5305: $b2
    or c                                          ; $5306: $b1
    or b                                          ; $5307: $b0
    xor a                                         ; $5308: $af
    xor [hl]                                      ; $5309: $ae
    xor l                                         ; $530a: $ad
    xor h                                         ; $530b: $ac
    xor e                                         ; $530c: $ab
    add b                                         ; $530d: $80
    add b                                         ; $530e: $80
    add b                                         ; $530f: $80
    add b                                         ; $5310: $80
    add b                                         ; $5311: $80
    add b                                         ; $5312: $80
    add b                                         ; $5313: $80
    add b                                         ; $5314: $80
    add b                                         ; $5315: $80
    add b                                         ; $5316: $80
    add b                                         ; $5317: $80
    add b                                         ; $5318: $80
    add c                                         ; $5319: $81
    xor d                                         ; $531a: $aa
    xor c                                         ; $531b: $a9
    xor b                                         ; $531c: $a8
    and a                                         ; $531d: $a7
    and [hl]                                      ; $531e: $a6
    inc d                                         ; $531f: $14
    and h                                         ; $5320: $a4
    and e                                         ; $5321: $a3
    and d                                         ; $5322: $a2
    and c                                         ; $5323: $a1
    and b                                         ; $5324: $a0
    sbc a                                         ; $5325: $9f
    sbc [hl]                                      ; $5326: $9e
    sbc l                                         ; $5327: $9d
    sbc h                                         ; $5328: $9c
    rst $20                                       ; $5329: $e7
    add c                                         ; $532a: $81
    sbc e                                         ; $532b: $9b
    sbc d                                         ; $532c: $9a
    sbc c                                         ; $532d: $99
    sbc b                                         ; $532e: $98
    sub a                                         ; $532f: $97
    sub [hl]                                      ; $5330: $96
    xor $ca                                       ; $5331: $ee $ca
    ret                                           ; $5333: $c9


    ret z                                         ; $5334: $c8

    and l                                         ; $5335: $a5
    add c                                         ; $5336: $81
    sub l                                         ; $5337: $95
    sub h                                         ; $5338: $94
    sub e                                         ; $5339: $93
    sub d                                         ; $533a: $92
    sub c                                         ; $533b: $91
    sub b                                         ; $533c: $90
    adc a                                         ; $533d: $8f
    adc [hl]                                      ; $533e: $8e
    adc l                                         ; $533f: $8d
    adc h                                         ; $5340: $8c
    adc e                                         ; $5341: $8b
    adc d                                         ; $5342: $8a
    adc c                                         ; $5343: $89
    adc b                                         ; $5344: $88
    add a                                         ; $5345: $87
    add l                                         ; $5346: $85
    add h                                         ; $5347: $84
    add e                                         ; $5348: $83
    add b                                         ; $5349: $80
    add b                                         ; $534a: $80
    add b                                         ; $534b: $80
    add b                                         ; $534c: $80
    add b                                         ; $534d: $80
    add b                                         ; $534e: $80
    add b                                         ; $534f: $80
    add b                                         ; $5350: $80
    add b                                         ; $5351: $80
    add b                                         ; $5352: $80
    add b                                         ; $5353: $80
    add b                                         ; $5354: $80
    add b                                         ; $5355: $80
    add b                                         ; $5356: $80
    add b                                         ; $5357: $80
    add b                                         ; $5358: $80
    add b                                         ; $5359: $80
    add b                                         ; $535a: $80
    add b                                         ; $535b: $80
    add b                                         ; $535c: $80
    add b                                         ; $535d: $80
    add b                                         ; $535e: $80
    add b                                         ; $535f: $80
    add b                                         ; $5360: $80
    add b                                         ; $5361: $80
    add b                                         ; $5362: $80
    add b                                         ; $5363: $80
    add b                                         ; $5364: $80
    add b                                         ; $5365: $80
    add b                                         ; $5366: $80
    add b                                         ; $5367: $80
    add b                                         ; $5368: $80
    add b                                         ; $5369: $80
    add b                                         ; $536a: $80
    add b                                         ; $536b: $80
    add b                                         ; $536c: $80
    add b                                         ; $536d: $80
    add b                                         ; $536e: $80
    add b                                         ; $536f: $80
    add b                                         ; $5370: $80
    add b                                         ; $5371: $80
    add b                                         ; $5372: $80
    add b                                         ; $5373: $80
    add b                                         ; $5374: $80
    add b                                         ; $5375: $80
    add b                                         ; $5376: $80
    add b                                         ; $5377: $80
    add b                                         ; $5378: $80
    add b                                         ; $5379: $80
    add b                                         ; $537a: $80
    add b                                         ; $537b: $80
    add b                                         ; $537c: $80
    add b                                         ; $537d: $80
    add b                                         ; $537e: $80
    add b                                         ; $537f: $80
    add b                                         ; $5380: $80
    add b                                         ; $5381: $80
    add b                                         ; $5382: $80
    add b                                         ; $5383: $80
    add b                                         ; $5384: $80
    add b                                         ; $5385: $80
    add b                                         ; $5386: $80
    add b                                         ; $5387: $80
    add b                                         ; $5388: $80
    add b                                         ; $5389: $80
    add b                                         ; $538a: $80
    add b                                         ; $538b: $80
    add b                                         ; $538c: $80
    add b                                         ; $538d: $80
    add b                                         ; $538e: $80
    add b                                         ; $538f: $80
    add b                                         ; $5390: $80
    add b                                         ; $5391: $80
    add b                                         ; $5392: $80
    add b                                         ; $5393: $80
    add b                                         ; $5394: $80
    add b                                         ; $5395: $80
    add b                                         ; $5396: $80
    add b                                         ; $5397: $80
    add b                                         ; $5398: $80
    add b                                         ; $5399: $80
    add b                                         ; $539a: $80
    add b                                         ; $539b: $80
    add b                                         ; $539c: $80
    add b                                         ; $539d: $80
    add b                                         ; $539e: $80
    add b                                         ; $539f: $80
    add b                                         ; $53a0: $80
    add b                                         ; $53a1: $80
    add b                                         ; $53a2: $80
    add b                                         ; $53a3: $80
    add b                                         ; $53a4: $80
    add b                                         ; $53a5: $80
    add b                                         ; $53a6: $80
    add b                                         ; $53a7: $80
    add b                                         ; $53a8: $80
    add b                                         ; $53a9: $80
    add b                                         ; $53aa: $80
    add b                                         ; $53ab: $80
    add b                                         ; $53ac: $80
    add b                                         ; $53ad: $80
    add b                                         ; $53ae: $80
    add b                                         ; $53af: $80
    add b                                         ; $53b0: $80
    add b                                         ; $53b1: $80
    add b                                         ; $53b2: $80
    add b                                         ; $53b3: $80
    add b                                         ; $53b4: $80
    add b                                         ; $53b5: $80
    add b                                         ; $53b6: $80
    add b                                         ; $53b7: $80
    add b                                         ; $53b8: $80
    add b                                         ; $53b9: $80
    add b                                         ; $53ba: $80
    add b                                         ; $53bb: $80
    add b                                         ; $53bc: $80
    add b                                         ; $53bd: $80
    add b                                         ; $53be: $80
    add b                                         ; $53bf: $80
    add b                                         ; $53c0: $80
    add b                                         ; $53c1: $80
    add b                                         ; $53c2: $80
    add b                                         ; $53c3: $80
    add b                                         ; $53c4: $80
    add b                                         ; $53c5: $80
    add b                                         ; $53c6: $80
    add b                                         ; $53c7: $80
    add b                                         ; $53c8: $80
    add b                                         ; $53c9: $80
    add b                                         ; $53ca: $80
    add b                                         ; $53cb: $80
    add b                                         ; $53cc: $80
    add b                                         ; $53cd: $80
    add b                                         ; $53ce: $80
    add b                                         ; $53cf: $80
    add b                                         ; $53d0: $80
    add b                                         ; $53d1: $80
    add b                                         ; $53d2: $80
    add b                                         ; $53d3: $80
    add b                                         ; $53d4: $80
    add b                                         ; $53d5: $80
    add b                                         ; $53d6: $80
    add b                                         ; $53d7: $80
    add b                                         ; $53d8: $80
    add b                                         ; $53d9: $80
    add b                                         ; $53da: $80
    add b                                         ; $53db: $80
    add b                                         ; $53dc: $80
    add b                                         ; $53dd: $80
    add b                                         ; $53de: $80
    add b                                         ; $53df: $80
    add b                                         ; $53e0: $80
    add b                                         ; $53e1: $80
    add b                                         ; $53e2: $80
    add b                                         ; $53e3: $80
    add b                                         ; $53e4: $80
    add b                                         ; $53e5: $80
    add b                                         ; $53e6: $80
    add b                                         ; $53e7: $80
    add b                                         ; $53e8: $80
    add b                                         ; $53e9: $80
    add b                                         ; $53ea: $80
    add b                                         ; $53eb: $80
    add b                                         ; $53ec: $80
    add b                                         ; $53ed: $80
    add b                                         ; $53ee: $80
    add b                                         ; $53ef: $80
    add b                                         ; $53f0: $80
    add b                                         ; $53f1: $80
    add b                                         ; $53f2: $80
    add b                                         ; $53f3: $80
    add b                                         ; $53f4: $80
    add b                                         ; $53f5: $80
    add b                                         ; $53f6: $80
    add b                                         ; $53f7: $80
    add b                                         ; $53f8: $80
    add b                                         ; $53f9: $80
    add b                                         ; $53fa: $80
    add b                                         ; $53fb: $80
    add b                                         ; $53fc: $80
    add b                                         ; $53fd: $80
    add b                                         ; $53fe: $80
    add b                                         ; $53ff: $80
    add b                                         ; $5400: $80
    add b                                         ; $5401: $80
    add b                                         ; $5402: $80
    add b                                         ; $5403: $80
    add b                                         ; $5404: $80
    add b                                         ; $5405: $80
    add b                                         ; $5406: $80
    add b                                         ; $5407: $80
    add b                                         ; $5408: $80
    add b                                         ; $5409: $80
    add b                                         ; $540a: $80
    add b                                         ; $540b: $80
    add b                                         ; $540c: $80
    add b                                         ; $540d: $80
    add b                                         ; $540e: $80
    add b                                         ; $540f: $80
    add b                                         ; $5410: $80
    add b                                         ; $5411: $80
    add b                                         ; $5412: $80
    add b                                         ; $5413: $80
    add b                                         ; $5414: $80
    add b                                         ; $5415: $80
    add b                                         ; $5416: $80
    add b                                         ; $5417: $80
    add b                                         ; $5418: $80
    add b                                         ; $5419: $80
    add b                                         ; $541a: $80
    add b                                         ; $541b: $80
    add b                                         ; $541c: $80
    add b                                         ; $541d: $80
    add b                                         ; $541e: $80
    add b                                         ; $541f: $80
    add b                                         ; $5420: $80
    add b                                         ; $5421: $80
    add b                                         ; $5422: $80
    add b                                         ; $5423: $80
    add b                                         ; $5424: $80
    add b                                         ; $5425: $80
    add b                                         ; $5426: $80
    add b                                         ; $5427: $80
    add b                                         ; $5428: $80
    add b                                         ; $5429: $80
    add b                                         ; $542a: $80
    add b                                         ; $542b: $80
    add b                                         ; $542c: $80
    add b                                         ; $542d: $80
    add b                                         ; $542e: $80
    add b                                         ; $542f: $80
    add b                                         ; $5430: $80
    add b                                         ; $5431: $80
    add b                                         ; $5432: $80
    add b                                         ; $5433: $80
    add b                                         ; $5434: $80
    add b                                         ; $5435: $80
    add b                                         ; $5436: $80
    add b                                         ; $5437: $80
    add b                                         ; $5438: $80
    add b                                         ; $5439: $80
    add b                                         ; $543a: $80
    add b                                         ; $543b: $80
    add b                                         ; $543c: $80
    add b                                         ; $543d: $80
    add b                                         ; $543e: $80
    add b                                         ; $543f: $80
    add b                                         ; $5440: $80
    add b                                         ; $5441: $80
    add b                                         ; $5442: $80
    add b                                         ; $5443: $80
    add b                                         ; $5444: $80
    add b                                         ; $5445: $80
    add b                                         ; $5446: $80
    add b                                         ; $5447: $80
    add b                                         ; $5448: $80
    add b                                         ; $5449: $80
    add b                                         ; $544a: $80
    add b                                         ; $544b: $80
    add b                                         ; $544c: $80
    add b                                         ; $544d: $80
    add b                                         ; $544e: $80
    add b                                         ; $544f: $80
    add b                                         ; $5450: $80
    add b                                         ; $5451: $80
    add b                                         ; $5452: $80
    add b                                         ; $5453: $80
    add b                                         ; $5454: $80
    add b                                         ; $5455: $80
    add b                                         ; $5456: $80
    add b                                         ; $5457: $80
    add b                                         ; $5458: $80
    add b                                         ; $5459: $80
    add b                                         ; $545a: $80
    add b                                         ; $545b: $80
    add b                                         ; $545c: $80
    add b                                         ; $545d: $80
    add b                                         ; $545e: $80
    add b                                         ; $545f: $80
    add b                                         ; $5460: $80
    add b                                         ; $5461: $80
    add b                                         ; $5462: $80
    add b                                         ; $5463: $80
    add b                                         ; $5464: $80
    add b                                         ; $5465: $80
    add b                                         ; $5466: $80
    add b                                         ; $5467: $80
    add b                                         ; $5468: $80
    add b                                         ; $5469: $80
    add b                                         ; $546a: $80
    add b                                         ; $546b: $80
    add b                                         ; $546c: $80
    add b                                         ; $546d: $80
    add b                                         ; $546e: $80
    add b                                         ; $546f: $80
    add b                                         ; $5470: $80
    add b                                         ; $5471: $80
    add b                                         ; $5472: $80
    add b                                         ; $5473: $80
    add b                                         ; $5474: $80
    add b                                         ; $5475: $80
    add b                                         ; $5476: $80
    add b                                         ; $5477: $80
    add b                                         ; $5478: $80
    add b                                         ; $5479: $80
    add b                                         ; $547a: $80
    nop                                           ; $547b: $00
    nop                                           ; $547c: $00
    nop                                           ; $547d: $00
    nop                                           ; $547e: $00
    nop                                           ; $547f: $00
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    nop                                           ; $548c: $00
    nop                                           ; $548d: $00
    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549a: $00
    nop                                           ; $549b: $00
    nop                                           ; $549c: $00
    nop                                           ; $549d: $00
    nop                                           ; $549e: $00
    nop                                           ; $549f: $00
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    nop                                           ; $54ab: $00
    nop                                           ; $54ac: $00
    nop                                           ; $54ad: $00
    nop                                           ; $54ae: $00
    nop                                           ; $54af: $00
    nop                                           ; $54b0: $00
    nop                                           ; $54b1: $00
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    nop                                           ; $54b4: $00
    nop                                           ; $54b5: $00
    nop                                           ; $54b6: $00
    nop                                           ; $54b7: $00
    nop                                           ; $54b8: $00
    nop                                           ; $54b9: $00
    nop                                           ; $54ba: $00
    nop                                           ; $54bb: $00
    nop                                           ; $54bc: $00
    nop                                           ; $54bd: $00
    nop                                           ; $54be: $00
    nop                                           ; $54bf: $00
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    nop                                           ; $54c3: $00
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    nop                                           ; $54ca: $00
    nop                                           ; $54cb: $00
    nop                                           ; $54cc: $00
    nop                                           ; $54cd: $00
    nop                                           ; $54ce: $00
    nop                                           ; $54cf: $00
    nop                                           ; $54d0: $00
    nop                                           ; $54d1: $00
    nop                                           ; $54d2: $00
    nop                                           ; $54d3: $00
    nop                                           ; $54d4: $00
    nop                                           ; $54d5: $00
    nop                                           ; $54d6: $00
    nop                                           ; $54d7: $00
    nop                                           ; $54d8: $00
    nop                                           ; $54d9: $00
    nop                                           ; $54da: $00
    nop                                           ; $54db: $00
    nop                                           ; $54dc: $00
    nop                                           ; $54dd: $00
    nop                                           ; $54de: $00
    nop                                           ; $54df: $00
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    nop                                           ; $54e7: $00
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    nop                                           ; $54eb: $00
    nop                                           ; $54ec: $00
    nop                                           ; $54ed: $00
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    nop                                           ; $54f6: $00
    nop                                           ; $54f7: $00
    nop                                           ; $54f8: $00
    nop                                           ; $54f9: $00
    nop                                           ; $54fa: $00
    nop                                           ; $54fb: $00
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    nop                                           ; $54fe: $00
    nop                                           ; $54ff: $00
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    nop                                           ; $550a: $00
    nop                                           ; $550b: $00
    nop                                           ; $550c: $00
    nop                                           ; $550d: $00
    nop                                           ; $550e: $00
    nop                                           ; $550f: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    nop                                           ; $551c: $00
    nop                                           ; $551d: $00
    nop                                           ; $551e: $00
    nop                                           ; $551f: $00
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00
    nop                                           ; $552c: $00
    nop                                           ; $552d: $00
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    ld [$0000], sp                                ; $5535: $08 $00 $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    ld [$0901], sp                                ; $553a: $08 $01 $09
    add hl, bc                                    ; $553d: $09
    add hl, bc                                    ; $553e: $09
    ld bc, $0201                                  ; $553f: $01 $01 $02
    ld a, [bc]                                    ; $5542: $0a
    ld a, [bc]                                    ; $5543: $0a
    ld a, [bc]                                    ; $5544: $0a
    ld [bc], a                                    ; $5545: $02
    ld [bc], a                                    ; $5546: $02
    dec bc                                        ; $5547: $0b
    dec bc                                        ; $5548: $0b
    inc bc                                        ; $5549: $03
    inc bc                                        ; $554a: $03
    inc bc                                        ; $554b: $03
    inc bc                                        ; $554c: $03
    nop                                           ; $554d: $00
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    ld [$0008], sp                                ; $5550: $08 $08 $00
    ld b, $0e                                     ; $5553: $06 $0e
    ld c, $0e                                     ; $5555: $0e $0e
    ld c, $06                                     ; $5557: $0e $06
    ld bc, $0101                                  ; $5559: $01 $01 $01
    ld bc, $0101                                  ; $555c: $01 $01 $01
    rrca                                          ; $555f: $0f
    rrca                                          ; $5560: $0f
    rrca                                          ; $5561: $0f
    rrca                                          ; $5562: $0f
    rrca                                          ; $5563: $0f
    rrca                                          ; $5564: $0f
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    nop                                           ; $556a: $00
    nop                                           ; $556b: $00
    nop                                           ; $556c: $00
    nop                                           ; $556d: $00
    nop                                           ; $556e: $00
    nop                                           ; $556f: $00
    nop                                           ; $5570: $00
    ld [$0000], sp                                ; $5571: $08 $00 $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    ld [$0909], sp                                ; $5576: $08 $09 $09
    add hl, bc                                    ; $5579: $09
    add hl, bc                                    ; $557a: $09
    add hl, bc                                    ; $557b: $09
    add hl, bc                                    ; $557c: $09
    ld a, [bc]                                    ; $557d: $0a
    ld a, [bc]                                    ; $557e: $0a
    ld a, [bc]                                    ; $557f: $0a
    ld a, [bc]                                    ; $5580: $0a
    ld a, [bc]                                    ; $5581: $0a
    ld a, [bc]                                    ; $5582: $0a
    dec bc                                        ; $5583: $0b
    dec bc                                        ; $5584: $0b
    dec bc                                        ; $5585: $0b
    inc bc                                        ; $5586: $03
    inc bc                                        ; $5587: $03
    inc bc                                        ; $5588: $03
    ld [$0808], sp                                ; $5589: $08 $08 $08
    ld [$0808], sp                                ; $558c: $08 $08 $08
    ld c, $0e                                     ; $558f: $0e $0e
    ld c, $0e                                     ; $5591: $0e $0e
    ld c, $0e                                     ; $5593: $0e $0e
    ld bc, $0101                                  ; $5595: $01 $01 $01
    add hl, bc                                    ; $5598: $09
    add hl, bc                                    ; $5599: $09
    add hl, bc                                    ; $559a: $09
    rrca                                          ; $559b: $0f
    rrca                                          ; $559c: $0f
    rrca                                          ; $559d: $0f
    rrca                                          ; $559e: $0f
    rrca                                          ; $559f: $0f
    rrca                                          ; $55a0: $0f
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    nop                                           ; $55a3: $00
    nop                                           ; $55a4: $00
    nop                                           ; $55a5: $00
    nop                                           ; $55a6: $00
    nop                                           ; $55a7: $00
    nop                                           ; $55a8: $00
    nop                                           ; $55a9: $00
    nop                                           ; $55aa: $00
    nop                                           ; $55ab: $00
    nop                                           ; $55ac: $00
    ld [$0008], sp                                ; $55ad: $08 $08 $00
    ld [$0808], sp                                ; $55b0: $08 $08 $08
    add hl, bc                                    ; $55b3: $09
    add hl, bc                                    ; $55b4: $09
    add hl, bc                                    ; $55b5: $09
    add hl, bc                                    ; $55b6: $09
    add hl, bc                                    ; $55b7: $09
    add hl, bc                                    ; $55b8: $09
    ld a, [bc]                                    ; $55b9: $0a
    ld a, [bc]                                    ; $55ba: $0a
    ld a, [bc]                                    ; $55bb: $0a
    ld a, [bc]                                    ; $55bc: $0a
    ld a, [bc]                                    ; $55bd: $0a
    ld a, [bc]                                    ; $55be: $0a
    dec bc                                        ; $55bf: $0b
    dec bc                                        ; $55c0: $0b
    dec bc                                        ; $55c1: $0b
    dec bc                                        ; $55c2: $0b
    inc bc                                        ; $55c3: $03
    inc bc                                        ; $55c4: $03
    ld [$0808], sp                                ; $55c5: $08 $08 $08
    ld [$0808], sp                                ; $55c8: $08 $08 $08
    ld c, $0e                                     ; $55cb: $0e $0e
    ld c, $0e                                     ; $55cd: $0e $0e
    ld c, $0e                                     ; $55cf: $0e $0e
    add hl, bc                                    ; $55d1: $09
    ld bc, $0909                                  ; $55d2: $01 $09 $09
    add hl, bc                                    ; $55d5: $09
    add hl, bc                                    ; $55d6: $09
    rrca                                          ; $55d7: $0f
    rrca                                          ; $55d8: $0f
    rrca                                          ; $55d9: $0f
    rrca                                          ; $55da: $0f
    rrca                                          ; $55db: $0f
    rrca                                          ; $55dc: $0f
    nop                                           ; $55dd: $00
    nop                                           ; $55de: $00
    nop                                           ; $55df: $00
    nop                                           ; $55e0: $00
    nop                                           ; $55e1: $00
    nop                                           ; $55e2: $00
    nop                                           ; $55e3: $00
    nop                                           ; $55e4: $00
    nop                                           ; $55e5: $00
    nop                                           ; $55e6: $00
    nop                                           ; $55e7: $00
    nop                                           ; $55e8: $00
    ld [$0008], sp                                ; $55e9: $08 $08 $00
    ld [$0808], sp                                ; $55ec: $08 $08 $08
    add hl, bc                                    ; $55ef: $09
    add hl, bc                                    ; $55f0: $09
    add hl, bc                                    ; $55f1: $09
    add hl, bc                                    ; $55f2: $09
    add hl, bc                                    ; $55f3: $09
    add hl, bc                                    ; $55f4: $09
    ld a, [bc]                                    ; $55f5: $0a
    ld a, [bc]                                    ; $55f6: $0a
    ld a, [bc]                                    ; $55f7: $0a
    ld a, [bc]                                    ; $55f8: $0a
    ld a, [bc]                                    ; $55f9: $0a
    ld a, [bc]                                    ; $55fa: $0a
    dec bc                                        ; $55fb: $0b
    dec bc                                        ; $55fc: $0b
    dec bc                                        ; $55fd: $0b
    dec bc                                        ; $55fe: $0b
    dec bc                                        ; $55ff: $0b
    inc bc                                        ; $5600: $03
    ld [$0808], sp                                ; $5601: $08 $08 $08
    ld [$0808], sp                                ; $5604: $08 $08 $08
    ld b, $0e                                     ; $5607: $06 $0e
    ld c, $0e                                     ; $5609: $0e $0e
    ld c, $0e                                     ; $560b: $0e $0e
    add hl, bc                                    ; $560d: $09
    add hl, bc                                    ; $560e: $09
    add hl, bc                                    ; $560f: $09
    add hl, bc                                    ; $5610: $09
    add hl, bc                                    ; $5611: $09
    add hl, bc                                    ; $5612: $09
    rrca                                          ; $5613: $0f
    rrca                                          ; $5614: $0f
    rrca                                          ; $5615: $0f
    rrca                                          ; $5616: $0f
    rrca                                          ; $5617: $0f
    rrca                                          ; $5618: $0f
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    nop                                           ; $561b: $00
    nop                                           ; $561c: $00
    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    nop                                           ; $561f: $00
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    ld [$0800], sp                                ; $5625: $08 $00 $08
    ld [$0008], sp                                ; $5628: $08 $08 $00
    add hl, bc                                    ; $562b: $09
    add hl, bc                                    ; $562c: $09
    add hl, bc                                    ; $562d: $09
    add hl, bc                                    ; $562e: $09
    add hl, bc                                    ; $562f: $09
    add hl, bc                                    ; $5630: $09
    ld a, [bc]                                    ; $5631: $0a
    ld a, [bc]                                    ; $5632: $0a
    ld a, [bc]                                    ; $5633: $0a
    ld a, [bc]                                    ; $5634: $0a
    ld a, [bc]                                    ; $5635: $0a
    ld [bc], a                                    ; $5636: $02
    dec bc                                        ; $5637: $0b
    dec bc                                        ; $5638: $0b
    dec bc                                        ; $5639: $0b
    dec bc                                        ; $563a: $0b
    dec bc                                        ; $563b: $0b
    dec bc                                        ; $563c: $0b
    ld [$0808], sp                                ; $563d: $08 $08 $08
    ld [$0808], sp                                ; $5640: $08 $08 $08
    ld c, $0e                                     ; $5643: $0e $0e
    ld c, $0e                                     ; $5645: $0e $0e
    ld c, $0e                                     ; $5647: $0e $0e
    add hl, bc                                    ; $5649: $09
    add hl, bc                                    ; $564a: $09
    add hl, bc                                    ; $564b: $09
    add hl, bc                                    ; $564c: $09
    add hl, bc                                    ; $564d: $09
    add hl, bc                                    ; $564e: $09
    rrca                                          ; $564f: $0f
    rrca                                          ; $5650: $0f
    rrca                                          ; $5651: $0f
    rrca                                          ; $5652: $0f
    rrca                                          ; $5653: $0f
    rrca                                          ; $5654: $0f
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    nop                                           ; $565b: $00
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    nop                                           ; $565e: $00
    nop                                           ; $565f: $00
    nop                                           ; $5660: $00
    ld [$0808], sp                                ; $5661: $08 $08 $08
    ld [$0008], sp                                ; $5664: $08 $08 $00
    add hl, bc                                    ; $5667: $09
    add hl, bc                                    ; $5668: $09
    add hl, bc                                    ; $5669: $09
    add hl, bc                                    ; $566a: $09
    add hl, bc                                    ; $566b: $09
    add hl, bc                                    ; $566c: $09
    ld a, [bc]                                    ; $566d: $0a
    ld a, [bc]                                    ; $566e: $0a
    ld a, [bc]                                    ; $566f: $0a
    ld a, [bc]                                    ; $5670: $0a
    ld a, [bc]                                    ; $5671: $0a
    ld a, [bc]                                    ; $5672: $0a
    dec bc                                        ; $5673: $0b
    dec bc                                        ; $5674: $0b
    dec bc                                        ; $5675: $0b
    dec bc                                        ; $5676: $0b
    dec bc                                        ; $5677: $0b
    dec bc                                        ; $5678: $0b
    ld [$0808], sp                                ; $5679: $08 $08 $08
    ld [$0808], sp                                ; $567c: $08 $08 $08
    ld c, $0e                                     ; $567f: $0e $0e
    ld b, $06                                     ; $5681: $06 $06
    ld b, $06                                     ; $5683: $06 $06
    ld bc, $0101                                  ; $5685: $01 $01 $01
    ld bc, $0101                                  ; $5688: $01 $01 $01
    rlca                                          ; $568b: $07
    rlca                                          ; $568c: $07
    rlca                                          ; $568d: $07
    rlca                                          ; $568e: $07
    rlca                                          ; $568f: $07
    rlca                                          ; $5690: $07
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569a: $00
    nop                                           ; $569b: $00
    nop                                           ; $569c: $00
    nop                                           ; $569d: $00
    nop                                           ; $569e: $00
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    nop                                           ; $56a1: $00
    nop                                           ; $56a2: $00
    add hl, bc                                    ; $56a3: $09
    add hl, bc                                    ; $56a4: $09
    ld bc, $0101                                  ; $56a5: $01 $01 $01
    ld bc, $0202                                  ; $56a8: $01 $02 $02
    ld [bc], a                                    ; $56ab: $02
    ld [bc], a                                    ; $56ac: $02
    ld [bc], a                                    ; $56ad: $02
    ld [bc], a                                    ; $56ae: $02
    inc bc                                        ; $56af: $03
    inc bc                                        ; $56b0: $03
    inc bc                                        ; $56b1: $03
    inc bc                                        ; $56b2: $03
    inc bc                                        ; $56b3: $03
    inc bc                                        ; $56b4: $03
    ld [$0808], sp                                ; $56b5: $08 $08 $08
    ld [$0808], sp                                ; $56b8: $08 $08 $08
    ld b, $06                                     ; $56bb: $06 $06
    ld b, $06                                     ; $56bd: $06 $06
    ld b, $26                                     ; $56bf: $06 $26
    ld bc, $0101                                  ; $56c1: $01 $01 $01
    ld bc, $0101                                  ; $56c4: $01 $01 $01
    rlca                                          ; $56c7: $07
    rlca                                          ; $56c8: $07
    rlca                                          ; $56c9: $07
    rlca                                          ; $56ca: $07
    rlca                                          ; $56cb: $07
    rlca                                          ; $56cc: $07
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00
    nop                                           ; $56cf: $00
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    nop                                           ; $56d3: $00
    nop                                           ; $56d4: $00
    nop                                           ; $56d5: $00
    nop                                           ; $56d6: $00
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00
    nop                                           ; $56d9: $00
    nop                                           ; $56da: $00
    nop                                           ; $56db: $00
    nop                                           ; $56dc: $00
    nop                                           ; $56dd: $00
    nop                                           ; $56de: $00
    add hl, bc                                    ; $56df: $09
    ld bc, $0101                                  ; $56e0: $01 $01 $01
    ld bc, $0201                                  ; $56e3: $01 $01 $02
    ld [bc], a                                    ; $56e6: $02
    ld [bc], a                                    ; $56e7: $02
    ld [bc], a                                    ; $56e8: $02
    ld [bc], a                                    ; $56e9: $02
    ld [bc], a                                    ; $56ea: $02
    inc bc                                        ; $56eb: $03
    inc bc                                        ; $56ec: $03
    inc bc                                        ; $56ed: $03
    inc bc                                        ; $56ee: $03
    inc bc                                        ; $56ef: $03
    inc bc                                        ; $56f0: $03
    ld [$0808], sp                                ; $56f1: $08 $08 $08
    ld [$0808], sp                                ; $56f4: $08 $08 $08
    ld b, $06                                     ; $56f7: $06 $06
    ld b, $06                                     ; $56f9: $06 $06
    ld b, $26                                     ; $56fb: $06 $26
    ld bc, $0101                                  ; $56fd: $01 $01 $01
    ld bc, $0101                                  ; $5700: $01 $01 $01
    rlca                                          ; $5703: $07
    rlca                                          ; $5704: $07
    rlca                                          ; $5705: $07
    rlca                                          ; $5706: $07
    rlca                                          ; $5707: $07
    rlca                                          ; $5708: $07
    nop                                           ; $5709: $00
    nop                                           ; $570a: $00
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    add hl, bc                                    ; $571b: $09
    ld bc, $0901                                  ; $571c: $01 $01 $09
    ld bc, $0201                                  ; $571f: $01 $01 $02
    ld [bc], a                                    ; $5722: $02
    ld [bc], a                                    ; $5723: $02
    ld [bc], a                                    ; $5724: $02
    ld [bc], a                                    ; $5725: $02
    ld [bc], a                                    ; $5726: $02
    inc bc                                        ; $5727: $03
    inc bc                                        ; $5728: $03
    inc bc                                        ; $5729: $03
    inc bc                                        ; $572a: $03
    inc bc                                        ; $572b: $03
    inc bc                                        ; $572c: $03
    ld [$0808], sp                                ; $572d: $08 $08 $08
    ld [$0808], sp                                ; $5730: $08 $08 $08
    ld b, $06                                     ; $5733: $06 $06
    ld b, $06                                     ; $5735: $06 $06
    ld b, $26                                     ; $5737: $06 $26
    ld bc, $0101                                  ; $5739: $01 $01 $01
    ld bc, $0101                                  ; $573c: $01 $01 $01
    rlca                                          ; $573f: $07
    rlca                                          ; $5740: $07
    rlca                                          ; $5741: $07
    rlca                                          ; $5742: $07
    rlca                                          ; $5743: $07
    rlca                                          ; $5744: $07
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    nop                                           ; $5748: $00
    nop                                           ; $5749: $00
    nop                                           ; $574a: $00
    nop                                           ; $574b: $00
    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00
    nop                                           ; $574f: $00
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    ld bc, $0901                                  ; $5757: $01 $01 $09
    ld bc, $0101                                  ; $575a: $01 $01 $01
    ld [bc], a                                    ; $575d: $02
    ld [bc], a                                    ; $575e: $02
    ld [bc], a                                    ; $575f: $02
    ld [bc], a                                    ; $5760: $02
    ld [bc], a                                    ; $5761: $02
    ld [bc], a                                    ; $5762: $02
    inc bc                                        ; $5763: $03
    inc bc                                        ; $5764: $03
    inc bc                                        ; $5765: $03
    inc bc                                        ; $5766: $03
    inc bc                                        ; $5767: $03
    inc bc                                        ; $5768: $03
    ld [$0808], sp                                ; $5769: $08 $08 $08
    ld [$0000], sp                                ; $576c: $08 $00 $00
    ld b, $06                                     ; $576f: $06 $06
    ld b, $06                                     ; $5771: $06 $06
    ld b, $26                                     ; $5773: $06 $26
    ld bc, $0101                                  ; $5775: $01 $01 $01
    ld bc, $0101                                  ; $5778: $01 $01 $01
    rlca                                          ; $577b: $07
    rlca                                          ; $577c: $07
    rlca                                          ; $577d: $07
    rlca                                          ; $577e: $07
    rlca                                          ; $577f: $07
    rlca                                          ; $5780: $07
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    nop                                           ; $5787: $00
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    nop                                           ; $578b: $00
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    ld bc, $0101                                  ; $5793: $01 $01 $01
    ld bc, $0101                                  ; $5796: $01 $01 $01
    ld [bc], a                                    ; $5799: $02
    ld [bc], a                                    ; $579a: $02
    ld [bc], a                                    ; $579b: $02
    ld [bc], a                                    ; $579c: $02
    ld [bc], a                                    ; $579d: $02
    ld [bc], a                                    ; $579e: $02
    inc bc                                        ; $579f: $03
    inc bc                                        ; $57a0: $03
    inc bc                                        ; $57a1: $03
    inc bc                                        ; $57a2: $03
    inc bc                                        ; $57a3: $03
    inc bc                                        ; $57a4: $03
    ld [$0008], sp                                ; $57a5: $08 $08 $00
    nop                                           ; $57a8: $00
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    ld b, $06                                     ; $57ab: $06 $06
    ld b, $06                                     ; $57ad: $06 $06
    ld b, $06                                     ; $57af: $06 $06
    ld bc, $0101                                  ; $57b1: $01 $01 $01
    ld bc, $0101                                  ; $57b4: $01 $01 $01
    rlca                                          ; $57b7: $07
    rlca                                          ; $57b8: $07
    rlca                                          ; $57b9: $07
    rlca                                          ; $57ba: $07
    rlca                                          ; $57bb: $07
    rlca                                          ; $57bc: $07
    nop                                           ; $57bd: $00
    nop                                           ; $57be: $00
    nop                                           ; $57bf: $00
    nop                                           ; $57c0: $00
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
    nop                                           ; $57c3: $00
    nop                                           ; $57c4: $00
    nop                                           ; $57c5: $00
    nop                                           ; $57c6: $00
    nop                                           ; $57c7: $00
    nop                                           ; $57c8: $00
    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00
    nop                                           ; $57cb: $00
    nop                                           ; $57cc: $00
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    ld bc, $0101                                  ; $57cf: $01 $01 $01
    ld bc, $0101                                  ; $57d2: $01 $01 $01
    ld [bc], a                                    ; $57d5: $02
    ld [bc], a                                    ; $57d6: $02
    ld [bc], a                                    ; $57d7: $02
    ld [bc], a                                    ; $57d8: $02
    ld b, d                                       ; $57d9: $42
    ld [bc], a                                    ; $57da: $02
    inc bc                                        ; $57db: $03
    inc bc                                        ; $57dc: $03
    inc bc                                        ; $57dd: $03
    inc bc                                        ; $57de: $03
    inc bc                                        ; $57df: $03
    inc bc                                        ; $57e0: $03
    nop                                           ; $57e1: $00
    nop                                           ; $57e2: $00
    nop                                           ; $57e3: $00
    nop                                           ; $57e4: $00
    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    ld b, $06                                     ; $57e7: $06 $06
    ld b, $06                                     ; $57e9: $06 $06
    ld b, $06                                     ; $57eb: $06 $06
    ld bc, $0101                                  ; $57ed: $01 $01 $01
    ld bc, $0101                                  ; $57f0: $01 $01 $01
    rlca                                          ; $57f3: $07
    rlca                                          ; $57f4: $07
    rlca                                          ; $57f5: $07
    rlca                                          ; $57f6: $07
    rlca                                          ; $57f7: $07
    rlca                                          ; $57f8: $07
    nop                                           ; $57f9: $00
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00

Call_0c2_57fc:
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580a: $00
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    nop                                           ; $581d: $00
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    nop                                           ; $582d: $00
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00
    nop                                           ; $583b: $00
    nop                                           ; $583c: $00
    nop                                           ; $583d: $00
    nop                                           ; $583e: $00
    nop                                           ; $583f: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584a: $00
    nop                                           ; $584b: $00
    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    nop                                           ; $586e: $00
    nop                                           ; $586f: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    nop                                           ; $5874: $00
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587a: $00
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588a: $00
    nop                                           ; $588b: $00
    nop                                           ; $588c: $00
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    nop                                           ; $589b: $00
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    nop                                           ; $589e: $00
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    nop                                           ; $58a4: $00
    nop                                           ; $58a5: $00
    nop                                           ; $58a6: $00
    nop                                           ; $58a7: $00
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    nop                                           ; $58ab: $00
    nop                                           ; $58ac: $00
    nop                                           ; $58ad: $00
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    nop                                           ; $58b2: $00
    nop                                           ; $58b3: $00
    nop                                           ; $58b4: $00
    nop                                           ; $58b5: $00
    nop                                           ; $58b6: $00
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    nop                                           ; $58b9: $00
    nop                                           ; $58ba: $00
    nop                                           ; $58bb: $00
    nop                                           ; $58bc: $00
    nop                                           ; $58bd: $00
    nop                                           ; $58be: $00
    nop                                           ; $58bf: $00
    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00
    nop                                           ; $58c2: $00
    nop                                           ; $58c3: $00
    nop                                           ; $58c4: $00
    nop                                           ; $58c5: $00
    nop                                           ; $58c6: $00
    nop                                           ; $58c7: $00
    nop                                           ; $58c8: $00
    nop                                           ; $58c9: $00
    nop                                           ; $58ca: $00
    nop                                           ; $58cb: $00
    nop                                           ; $58cc: $00
    nop                                           ; $58cd: $00
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    nop                                           ; $58d3: $00
    nop                                           ; $58d4: $00
    nop                                           ; $58d5: $00
    nop                                           ; $58d6: $00
    nop                                           ; $58d7: $00
    nop                                           ; $58d8: $00
    nop                                           ; $58d9: $00
    nop                                           ; $58da: $00
    nop                                           ; $58db: $00
    nop                                           ; $58dc: $00
    nop                                           ; $58dd: $00
    nop                                           ; $58de: $00
    nop                                           ; $58df: $00
    nop                                           ; $58e0: $00
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    nop                                           ; $58e3: $00
    nop                                           ; $58e4: $00
    nop                                           ; $58e5: $00
    nop                                           ; $58e6: $00
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    nop                                           ; $58e9: $00
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    nop                                           ; $58f2: $00
    nop                                           ; $58f3: $00
    nop                                           ; $58f4: $00
    nop                                           ; $58f5: $00
    nop                                           ; $58f6: $00
    nop                                           ; $58f7: $00
    nop                                           ; $58f8: $00
    nop                                           ; $58f9: $00
    nop                                           ; $58fa: $00
    nop                                           ; $58fb: $00
    nop                                           ; $58fc: $00
    nop                                           ; $58fd: $00
    nop                                           ; $58fe: $00
    nop                                           ; $58ff: $00
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    nop                                           ; $590a: $00
    nop                                           ; $590b: $00
    nop                                           ; $590c: $00
    nop                                           ; $590d: $00
    nop                                           ; $590e: $00
    nop                                           ; $590f: $00
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    nop                                           ; $5913: $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    nop                                           ; $591a: $00
    nop                                           ; $591b: $00
    nop                                           ; $591c: $00
    nop                                           ; $591d: $00
    nop                                           ; $591e: $00
    nop                                           ; $591f: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    inc d                                         ; $592b: $14
    nop                                           ; $592c: $00
    ld [de], a                                    ; $592d: $12
    nop                                           ; $592e: $00
    rra                                           ; $592f: $1f
    ld bc, $ac00                                  ; $5930: $01 $00 $ac
    xor e                                         ; $5933: $ab
    or l                                          ; $5934: $b5
    or [hl]                                       ; $5935: $b6
    xor c                                         ; $5936: $a9
    xor d                                         ; $5937: $aa
    or a                                          ; $5938: $b7
    cp b                                          ; $5939: $b8
    add b                                         ; $593a: $80
    ld b, $38                                     ; $593b: $06 $38
    xor e                                         ; $593d: $ab
    xor h                                         ; $593e: $ac
    or h                                          ; $593f: $b4
    or e                                          ; $5940: $b3
    cp c                                          ; $5941: $b9
    cp d                                          ; $5942: $ba
    or c                                          ; $5943: $b1
    db $10                                        ; $5944: $10
    or d                                          ; $5945: $b2
    cp e                                          ; $5946: $bb
    cp h                                          ; $5947: $bc
    ld b, $38                                     ; $5948: $06 $38
    or e                                          ; $594a: $b3
    or h                                          ; $594b: $b4
    cp l                                          ; $594c: $bd
    cp [hl]                                       ; $594d: $be
    ld [$a5a4], sp                                ; $594e: $08 $a4 $a5
    xor [hl]                                      ; $5951: $ae
    xor l                                         ; $5952: $ad
    inc b                                         ; $5953: $04
    ld [$c0bf], sp                                ; $5954: $08 $bf $c0
    pop bc                                        ; $5957: $c1
    ld hl, $c2c1                                  ; $5958: $21 $c1 $c2
    inc b                                         ; $595b: $04
    nop                                           ; $595c: $00
    cp [hl]                                       ; $595d: $be
    cp l                                          ; $595e: $bd
    jp $11c4                                      ; $595f: $c3 $c4 $11


    stop                                          ; $5962: $10 $00
    and h                                         ; $5964: $a4
    and l                                         ; $5965: $a5
    push bc                                       ; $5966: $c5
    add $c7                                       ; $5967: $c6 $c7
    pop bc                                        ; $5969: $c1
    pop bc                                        ; $596a: $c1
    ret z                                         ; $596b: $c8

    ld bc, $c1c9                                  ; $596c: $01 $c9 $c1
    pop bc                                        ; $596f: $c1
    call nz, $cac3                                ; $5970: $c4 $c3 $ca
    sla [hl]                                      ; $5973: $cb $26
    nop                                           ; $5975: $00
    ld bc, $cdcc                                  ; $5976: $01 $cc $cd
    xor l                                         ; $5979: $ad
    adc $cf                                       ; $597a: $ce $cf
    ret nc                                        ; $597c: $d0

    pop de                                        ; $597d: $d1
    ld h, $08                                     ; $597e: $26 $08
    ld [bc], a                                    ; $5980: $02
    jp nz, $cbc0                                  ; $5981: $c2 $c0 $cb

    jp z, $d3d2                                   ; $5984: $ca $d2 $d3

    dec sp                                        ; $5987: $3b
    nop                                           ; $5988: $00
    call nc, $d501                                ; $5989: $d4 $01 $d5
    sub $d7                                       ; $598c: $d6 $d7
    ret c                                         ; $598e: $d8

    reti                                          ; $598f: $d9


    jp c, $26db                                   ; $5990: $da $db $26

    nop                                           ; $5993: $00
    ld [bc], a                                    ; $5994: $02
    ret z                                         ; $5995: $c8

    ret                                           ; $5996: $c9


    db $d3                                        ; $5997: $d3
    jp nc, $dddc                                  ; $5998: $d2 $dc $dd

    ld d, b                                       ; $599b: $50
    nop                                           ; $599c: $00
    sbc $00                                       ; $599d: $de $00
    rst $18                                       ; $599f: $df
    ldh [$e1], a                                  ; $59a0: $e0 $e1
    ld [c], a                                     ; $59a2: $e2
    db $e3                                        ; $59a3: $e3
    db $e4                                        ; $59a4: $e4
    push hl                                       ; $59a5: $e5
    and $84                                       ; $59a6: $e6 $84
    ld d, b                                       ; $59a8: $50
    ld [$dcdd], sp                                ; $59a9: $08 $dd $dc
    rst $20                                       ; $59ac: $e7
    add sp, $61                                   ; $59ad: $e8 $61
    ld [$eae9], sp                                ; $59af: $08 $e9 $ea
    nop                                           ; $59b2: $00
    db $eb                                        ; $59b3: $eb
    db $ec                                        ; $59b4: $ec
    db $ed                                        ; $59b5: $ed
    xor $ef                                       ; $59b6: $ee $ef
    ldh a, [$f1]                                  ; $59b8: $f0 $f1
    ld a, [c]                                     ; $59ba: $f2
    ld [bc], a                                    ; $59bb: $02
    pop bc                                        ; $59bc: $c1
    pop bc                                        ; $59bd: $c1
    add sp, -$19                                  ; $59be: $e8 $e7
    cp l                                          ; $59c0: $bd
    cp [hl]                                       ; $59c1: $be
    halt                                          ; $59c2: $76
    ld [$00f3], sp                                ; $59c3: $08 $f3 $00
    db $f4                                        ; $59c6: $f4
    push af                                       ; $59c7: $f5
    or $f7                                        ; $59c8: $f6 $f7
    ld hl, sp-$07                                 ; $59ca: $f8 $f9
    ld a, [$18fb]                                 ; $59cc: $fa $fb $18
    db $fc                                        ; $59cf: $fc
    db $fd                                        ; $59d0: $fd
    ret nz                                        ; $59d1: $c0

    ld a, b                                       ; $59d2: $78
    ld [$088b], sp                                ; $59d3: $08 $8b $08
    cp $ff                                        ; $59d6: $fe $ff
    nop                                           ; $59d8: $00
    nop                                           ; $59d9: $00
    ld bc, $0302                                  ; $59da: $01 $02 $03
    inc b                                         ; $59dd: $04
    dec b                                         ; $59de: $05
    ld b, $07                                     ; $59df: $06 $07
    ld [$0960], sp                                ; $59e1: $08 $60 $09
    ld a, b                                       ; $59e4: $78
    ld [$08a0], sp                                ; $59e5: $08 $a0 $08
    ld a, [bc]                                    ; $59e8: $0a
    dec bc                                        ; $59e9: $0b
    inc c                                         ; $59ea: $0c
    dec c                                         ; $59eb: $0d
    ld c, $01                                     ; $59ec: $0e $01
    rrca                                          ; $59ee: $0f
    xor b                                         ; $59ef: $a8
    db $10                                        ; $59f0: $10
    ld de, $1312                                  ; $59f1: $11 $12 $13
    inc d                                         ; $59f4: $14
    ld a, b                                       ; $59f5: $78
    ld [$ad00], sp                                ; $59f6: $08 $00 $ad
    and h                                         ; $59f9: $a4
    dec d                                         ; $59fa: $15
    xor [hl]                                      ; $59fb: $ae
    ld d, $17                                     ; $59fc: $16 $17
    jr jr_0c2_5a19                                ; $59fe: $18 $19

    nop                                           ; $5a00: $00
    ld a, [de]                                    ; $5a01: $1a
    dec de                                        ; $5a02: $1b
    inc e                                         ; $5a03: $1c
    dec c                                         ; $5a04: $0d
    xor b                                         ; $5a05: $a8
    dec e                                         ; $5a06: $1d
    ld e, $1f                                     ; $5a07: $1e $1f

jr_0c2_5a09:
    add b                                         ; $5a09: $80
    ld a, b                                       ; $5a0a: $78
    ld [$2120], sp                                ; $5a0b: $08 $20 $21
    ld [hl+], a                                   ; $5a0e: $22
    inc hl                                        ; $5a0f: $23
    inc h                                         ; $5a10: $24
    dec h                                         ; $5a11: $25
    ld h, $00                                     ; $5a12: $26 $00
    daa                                           ; $5a14: $27
    jr z, jr_0c2_5a40                             ; $5a15: $28 $29

    ld a, [hl+]                                   ; $5a17: $2a
    dec hl                                        ; $5a18: $2b

jr_0c2_5a19:
    inc l                                         ; $5a19: $2c
    dec l                                         ; $5a1a: $2d
    ld l, $40                                     ; $5a1b: $2e $40
    cpl                                           ; $5a1d: $2f
    ld a, b                                       ; $5a1e: $78
    ld [$3130], sp                                ; $5a1f: $08 $30 $31
    ld [hl-], a                                   ; $5a22: $32
    inc sp                                        ; $5a23: $33
    inc [hl]                                      ; $5a24: $34
    dec [hl]                                      ; $5a25: $35
    ld a, [bc]                                    ; $5a26: $0a
    ld [hl], $a8                                  ; $5a27: $36 $a8
    scf                                           ; $5a29: $37
    xor b                                         ; $5a2a: $a8
    ld bc, $3810                                  ; $5a2b: $01 $10 $38
    ld a, b                                       ; $5a2e: $78
    ld [$01a0], sp                                ; $5a2f: $08 $a0 $01
    and c                                         ; $5a32: $a1
    and d                                         ; $5a33: $a2
    and e                                         ; $5a34: $a3
    and h                                         ; $5a35: $a4
    and l                                         ; $5a36: $a5
    and [hl]                                      ; $5a37: $a6
    and a                                         ; $5a38: $a7
    inc de                                        ; $5a39: $13
    jr jr_0c2_5a60                                ; $5a3a: $18 $24

    xor b                                         ; $5a3c: $a8
    xor b                                         ; $5a3d: $a8
    ldh a, [rLCDC]                                ; $5a3e: $f0 $40

jr_0c2_5a40:
    xor a                                         ; $5a40: $af
    or b                                          ; $5a41: $b0
    dec d                                         ; $5a42: $15
    jr nz, jr_0c2_5a09                            ; $5a43: $20 $c4

    jp Jump_000_3900                              ; $5a45: $c3 $00 $39


    ld a, [hl-]                                   ; $5a48: $3a
    dec sp                                        ; $5a49: $3b
    inc a                                         ; $5a4a: $3c
    dec a                                         ; $5a4b: $3d
    ld a, $3f                                     ; $5a4c: $3e $3f
    ld b, b                                       ; $5a4e: $40
    add b                                         ; $5a4f: $80
    ld b, $38                                     ; $5a50: $06 $38
    ld a, [hl-]                                   ; $5a52: $3a
    add hl, sp                                    ; $5a53: $39
    ld b, c                                       ; $5a54: $41
    ld b, d                                       ; $5a55: $42
    ld b, e                                       ; $5a56: $43
    ld b, h                                       ; $5a57: $44
    ld b, l                                       ; $5a58: $45
    db $10                                        ; $5a59: $10
    ld b, [hl]                                    ; $5a5a: $46
    ld b, a                                       ; $5a5b: $47
    ld c, b                                       ; $5a5c: $48
    ld b, $38                                     ; $5a5d: $06 $38
    ld b, d                                       ; $5a5f: $42

jr_0c2_5a60:
    ld b, c                                       ; $5a60: $41
    ld [hl+], a                                   ; $5a61: $22
    ld [hl+], a                                   ; $5a62: $22
    ld h, d                                       ; $5a63: $62
    ld [bc], a                                    ; $5a64: $02
    ld bc, $1470                                  ; $5a65: $01 $70 $14
    adc b                                         ; $5a68: $88
    ld [bc], a                                    ; $5a69: $02
    ld [bc], a                                    ; $5a6a: $02
    ld bc, $3801                                  ; $5a6b: $01 $01 $38
    ld hl, $04c9                                  ; $5a6e: $21 $c9 $04
    ld [$083a], sp                                ; $5a71: $08 $3a $08
    ld bc, $0100                                  ; $5a74: $01 $00 $01
    jr z, jr_0c2_5ab9                             ; $5a77: $28 $40

    ld h, b                                       ; $5a79: $60
    inc b                                         ; $5a7a: $04
    nop                                           ; $5a7b: $00
    ld h, e                                       ; $5a7c: $63
    ld h, c                                       ; $5a7d: $61
    inc d                                         ; $5a7e: $14
    ld e, b                                       ; $5a7f: $58
    dec e                                         ; $5a80: $1d
    nop                                           ; $5a81: $00
    jr nz, jr_0c2_5a84                            ; $5a82: $20 $00

jr_0c2_5a84:
    ld bc, $6814                                  ; $5a84: $01 $14 $68
    ld a, [hl+]                                   ; $5a87: $2a
    nop                                           ; $5a88: $00
    ei                                            ; $5a89: $fb
    inc d                                         ; $5a8a: $14
    ld [hl], b                                    ; $5a8b: $70
    ld b, a                                       ; $5a8c: $47
    nop                                           ; $5a8d: $00
    ld d, b                                       ; $5a8e: $50
    ld h, b                                       ; $5a8f: $60
    ld d, h                                       ; $5a90: $54
    db $10                                        ; $5a91: $10
    ld d, b                                       ; $5a92: $50
    ld a, b                                       ; $5a93: $78
    nop                                           ; $5a94: $00
    inc a                                         ; $5a95: $3c
    sub b                                         ; $5a96: $90
    inc d                                         ; $5a97: $14
    ld hl, sp-$02                                 ; $5a98: $f8 $fe
    adc d                                         ; $5a9a: $8a
    ld [$f83c], sp                                ; $5a9b: $08 $3c $f8
    ld h, h                                       ; $5a9e: $64
    ld e, b                                       ; $5a9f: $58
    ld bc, $1460                                  ; $5aa0: $01 $60 $14
    xor b                                         ; $5aa3: $a8
    ld a, $f9                                     ; $5aa4: $3e $f9
    ld d, d                                       ; $5aa6: $52
    add hl, bc                                    ; $5aa7: $09
    inc d                                         ; $5aa8: $14
    nop                                           ; $5aa9: $00
    ld [de], a                                    ; $5aaa: $12
    nop                                           ; $5aab: $00
    add e                                         ; $5aac: $83
    ld bc, $b200                                  ; $5aad: $01 $00 $b2
    or e                                          ; $5ab0: $b3
    or h                                          ; $5ab1: $b4
    or l                                          ; $5ab2: $b5
    or [hl]                                       ; $5ab3: $b6
    or a                                          ; $5ab4: $b7
    cp b                                          ; $5ab5: $b8
    cp c                                          ; $5ab6: $b9
    db $10                                        ; $5ab7: $10
    cp d                                          ; $5ab8: $ba

jr_0c2_5ab9:
    cp e                                          ; $5ab9: $bb
    cp h                                          ; $5aba: $bc
    ld [$bd20], sp                                ; $5abb: $08 $20 $bd
    cp [hl]                                       ; $5abe: $be
    cp a                                          ; $5abf: $bf
    ret nz                                        ; $5ac0: $c0

    nop                                           ; $5ac1: $00
    pop bc                                        ; $5ac2: $c1
    jp nz, $c4c3                                  ; $5ac3: $c2 $c3 $c4

    push bc                                       ; $5ac6: $c5
    add $c7                                       ; $5ac7: $c6 $c7
    call nz, $c540                                ; $5ac9: $c4 $40 $c5
    ld [$c810], sp                                ; $5acc: $08 $10 $c8
    ret                                           ; $5acf: $c9


    jp z, $cccb                                   ; $5ad0: $ca $cb $cc

    call $a100                                    ; $5ad3: $cd $00 $a1
    adc $a1                                       ; $5ad6: $ce $a1
    rst $08                                       ; $5ad8: $cf
    ret nc                                        ; $5ad9: $d0

    pop de                                        ; $5ada: $d1
    jp nc, Jump_000_00d3                          ; $5adb: $d2 $d3 $00

    call nc, $d6d5                                ; $5ade: $d4 $d5 $d6
    rst $10                                       ; $5ae1: $d7
    ret c                                         ; $5ae2: $d8

    reti                                          ; $5ae3: $d9


    and c                                         ; $5ae4: $a1
    jp c, $db00                                   ; $5ae5: $da $00 $db

    call c, $dedd                                 ; $5ae8: $dc $dd $de
    and c                                         ; $5aeb: $a1
    rst $18                                       ; $5aec: $df
    ldh [$ac], a                                  ; $5aed: $e0 $ac
    nop                                           ; $5aef: $00
    pop hl                                        ; $5af0: $e1
    ld [c], a                                     ; $5af1: $e2
    db $e3                                        ; $5af2: $e3
    db $e4                                        ; $5af3: $e4
    push hl                                       ; $5af4: $e5
    and $e7                                       ; $5af5: $e6 $e7
    add sp, $00                                   ; $5af7: $e8 $00
    and c                                         ; $5af9: $a1
    jp hl                                         ; $5afa: $e9


    and c                                         ; $5afb: $a1
    ld [$eceb], a                                 ; $5afc: $ea $eb $ec
    db $ed                                        ; $5aff: $ed
    xor $00                                       ; $5b00: $ee $00
    rst $28                                       ; $5b02: $ef
    ldh a, [$f1]                                  ; $5b03: $f0 $f1
    ld a, [c]                                     ; $5b05: $f2
    di                                            ; $5b06: $f3
    db $f4                                        ; $5b07: $f4
    push af                                       ; $5b08: $f5
    or $00                                        ; $5b09: $f6 $00
    rst $30                                       ; $5b0b: $f7
    ld hl, sp-$07                                 ; $5b0c: $f8 $f9
    ld a, [$fba1]                                 ; $5b0e: $fa $a1 $fb
    and c                                         ; $5b11: $a1
    db $fc                                        ; $5b12: $fc
    nop                                           ; $5b13: $00
    db $fd                                        ; $5b14: $fd
    cp $ff                                        ; $5b15: $fe $ff
    nop                                           ; $5b17: $00
    ld bc, $0302                                  ; $5b18: $01 $02 $03
    inc b                                         ; $5b1b: $04
    nop                                           ; $5b1c: $00
    dec b                                         ; $5b1d: $05
    ld b, $07                                     ; $5b1e: $06 $07
    ld [$0a09], sp                                ; $5b20: $08 $09 $0a
    dec bc                                        ; $5b23: $0b
    inc c                                         ; $5b24: $0c
    nop                                           ; $5b25: $00
    and c                                         ; $5b26: $a1
    dec c                                         ; $5b27: $0d
    ld c, $0f                                     ; $5b28: $0e $0f
    db $10                                        ; $5b2a: $10
    ld de, $1312                                  ; $5b2b: $11 $12 $13
    nop                                           ; $5b2e: $00
    inc d                                         ; $5b2f: $14
    dec d                                         ; $5b30: $15
    ld d, $17                                     ; $5b31: $16 $17
    jr jr_0c2_5b4e                                ; $5b33: $18 $19

    ld a, [de]                                    ; $5b35: $1a
    dec de                                        ; $5b36: $1b
    nop                                           ; $5b37: $00
    inc e                                         ; $5b38: $1c
    dec e                                         ; $5b39: $1d
    ld e, $1f                                     ; $5b3a: $1e $1f
    xor a                                         ; $5b3c: $af
    jr nz, @+$23                                  ; $5b3d: $20 $21

    and c                                         ; $5b3f: $a1
    nop                                           ; $5b40: $00
    ld [hl+], a                                   ; $5b41: $22
    inc hl                                        ; $5b42: $23
    inc h                                         ; $5b43: $24
    dec h                                         ; $5b44: $25
    ld h, $27                                     ; $5b45: $26 $27
    jr z, jr_0c2_5b72                             ; $5b47: $28 $29

    nop                                           ; $5b49: $00
    ld a, [hl+]                                   ; $5b4a: $2a
    dec hl                                        ; $5b4b: $2b
    inc l                                         ; $5b4c: $2c
    dec l                                         ; $5b4d: $2d

jr_0c2_5b4e:
    ld l, $2f                                     ; $5b4e: $2e $2f
    jr nc, jr_0c2_5b83                            ; $5b50: $30 $31

    nop                                           ; $5b52: $00
    ld [hl-], a                                   ; $5b53: $32
    and c                                         ; $5b54: $a1
    and c                                         ; $5b55: $a1
    and c                                         ; $5b56: $a1
    inc sp                                        ; $5b57: $33
    inc [hl]                                      ; $5b58: $34
    db $ed                                        ; $5b59: $ed
    dec [hl]                                      ; $5b5a: $35
    nop                                           ; $5b5b: $00
    ld [hl], $37                                  ; $5b5c: $36 $37
    and c                                         ; $5b5e: $a1
    jr c, jr_0c2_5b9a                             ; $5b5f: $38 $39

    ld a, [hl-]                                   ; $5b61: $3a
    dec sp                                        ; $5b62: $3b
    inc a                                         ; $5b63: $3c
    db $10                                        ; $5b64: $10
    dec a                                         ; $5b65: $3d
    ld a, $3f                                     ; $5b66: $3e $3f
    ld [de], a                                    ; $5b68: $12
    nop                                           ; $5b69: $00
    and c                                         ; $5b6a: $a1
    ld b, b                                       ; $5b6b: $40
    ld b, c                                       ; $5b6c: $41
    cp $00                                        ; $5b6d: $fe $00
    rst $38                                       ; $5b6f: $ff
    ld b, d                                       ; $5b70: $42
    ld b, e                                       ; $5b71: $43

jr_0c2_5b72:
    ld b, h                                       ; $5b72: $44
    and c                                         ; $5b73: $a1
    and [hl]                                      ; $5b74: $a6
    ld b, l                                       ; $5b75: $45
    ld b, [hl]                                    ; $5b76: $46
    nop                                           ; $5b77: $00

Jump_0c2_5b78:
    ld b, a                                       ; $5b78: $47
    ld c, b                                       ; $5b79: $48
    ld c, c                                       ; $5b7a: $49
    ld c, d                                       ; $5b7b: $4a
    ld c, e                                       ; $5b7c: $4b
    ld c, h                                       ; $5b7d: $4c
    ld c, l                                       ; $5b7e: $4d
    xor e                                         ; $5b7f: $ab
    nop                                           ; $5b80: $00
    ld c, [hl]                                    ; $5b81: $4e
    ld c, a                                       ; $5b82: $4f

jr_0c2_5b83:
    ld d, b                                       ; $5b83: $50
    ld de, $51cc                                  ; $5b84: $11 $cc $51
    ld d, d                                       ; $5b87: $52
    ld d, e                                       ; $5b88: $53
    nop                                           ; $5b89: $00
    and c                                         ; $5b8a: $a1
    ld d, h                                       ; $5b8b: $54
    ld d, l                                       ; $5b8c: $55
    ld d, [hl]                                    ; $5b8d: $56
    ld d, a                                       ; $5b8e: $57
    ld e, b                                       ; $5b8f: $58
    ld e, c                                       ; $5b90: $59
    ld e, d                                       ; $5b91: $5a
    nop                                           ; $5b92: $00
    ld e, e                                       ; $5b93: $5b
    ld e, h                                       ; $5b94: $5c
    ld e, l                                       ; $5b95: $5d
    ld e, [hl]                                    ; $5b96: $5e
    ld e, a                                       ; $5b97: $5f
    ld h, b                                       ; $5b98: $60
    ld h, c                                       ; $5b99: $61

jr_0c2_5b9a:
    call c, $dd00                                 ; $5b9a: $dc $00 $dd
    ld h, d                                       ; $5b9d: $62
    ld h, e                                       ; $5b9e: $63
    ld h, h                                       ; $5b9f: $64
    ldh [$65], a                                  ; $5ba0: $e0 $65
    ld h, [hl]                                    ; $5ba2: $66
    ld h, a                                       ; $5ba3: $67
    nop                                           ; $5ba4: $00
    ld l, b                                       ; $5ba5: $68
    ld l, c                                       ; $5ba6: $69
    and c                                         ; $5ba7: $a1
    ld [hl-], a                                   ; $5ba8: $32
    ld l, d                                       ; $5ba9: $6a
    ld l, e                                       ; $5baa: $6b
    ld l, h                                       ; $5bab: $6c
    ld l, l                                       ; $5bac: $6d
    nop                                           ; $5bad: $00
    ld l, [hl]                                    ; $5bae: $6e
    ld l, a                                       ; $5baf: $6f
    ld [hl], b                                    ; $5bb0: $70
    db $ec                                        ; $5bb1: $ec
    db $ed                                        ; $5bb2: $ed

jr_0c2_5bb3:
    ld [hl], c                                    ; $5bb3: $71
    ld [hl], d                                    ; $5bb4: $72
    ld [hl], e                                    ; $5bb5: $73
    nop                                           ; $5bb6: $00
    ld [hl], h                                    ; $5bb7: $74
    ld [hl], l                                    ; $5bb8: $75
    halt                                          ; $5bb9: $76
    ld [hl], a                                    ; $5bba: $77
    ld a, b                                       ; $5bbb: $78
    ld a, c                                       ; $5bbc: $79
    ld a, d                                       ; $5bbd: $7a
    ld a, e                                       ; $5bbe: $7b
    nop                                           ; $5bbf: $00
    and c                                         ; $5bc0: $a1
    ld a, h                                       ; $5bc1: $7c
    ld a, l                                       ; $5bc2: $7d
    ld a, [hl]                                    ; $5bc3: $7e
    ld a, a                                       ; $5bc4: $7f
    add b                                         ; $5bc5: $80
    add c                                         ; $5bc6: $81

jr_0c2_5bc7:
    cp $00                                        ; $5bc7: $fe $00
    rst $38                                       ; $5bc9: $ff
    add d                                         ; $5bca: $82
    add e                                         ; $5bcb: $83
    add h                                         ; $5bcc: $84
    add l                                         ; $5bcd: $85
    add [hl]                                      ; $5bce: $86

jr_0c2_5bcf:
    add a                                         ; $5bcf: $87
    adc b                                         ; $5bd0: $88
    nop                                           ; $5bd1: $00
    adc c                                         ; $5bd2: $89
    adc d                                         ; $5bd3: $8a
    and c                                         ; $5bd4: $a1
    adc e                                         ; $5bd5: $8b
    and c                                         ; $5bd6: $a1
    adc h                                         ; $5bd7: $8c
    and c                                         ; $5bd8: $a1
    adc l                                         ; $5bd9: $8d
    nop                                           ; $5bda: $00
    adc [hl]                                      ; $5bdb: $8e
    adc a                                         ; $5bdc: $8f
    sub b                                         ; $5bdd: $90
    ld de, $9112                                  ; $5bde: $11 $12 $91
    and b                                         ; $5be1: $a0
    and c                                         ; $5be2: $a1
    ld [bc], a                                    ; $5be3: $02

jr_0c2_5be4:
    and d                                         ; $5be4: $a2
    and e                                         ; $5be5: $a3
    and h                                         ; $5be6: $a4
    and l                                         ; $5be7: $a5
    and c                                         ; $5be8: $a1
    and [hl]                                      ; $5be9: $a6
    ld [bc], a                                    ; $5bea: $02
    ld [$00a7], sp                                ; $5beb: $08 $a7 $00
    xor b                                         ; $5bee: $a8
    xor c                                         ; $5bef: $a9
    and c                                         ; $5bf0: $a1
    sub d                                         ; $5bf1: $92
    inc hl                                        ; $5bf2: $23
    inc h                                         ; $5bf3: $24
    sub e                                         ; $5bf4: $93
    xor d                                         ; $5bf5: $aa
    inc b                                         ; $5bf6: $04
    xor e                                         ; $5bf7: $ab
    xor h                                         ; $5bf8: $ac
    xor l                                         ; $5bf9: $ad
    and c                                         ; $5bfa: $a1
    xor [hl]                                      ; $5bfb: $ae
    inc d                                         ; $5bfc: $14
    ld [$b0af], sp                                ; $5bfd: $08 $af $b0
    ld b, b                                       ; $5c00: $40
    or c                                          ; $5c01: $b1
    and b                                         ; $5c02: $a0
    nop                                           ; $5c03: $00
    sub h                                         ; $5c04: $94
    inc [hl]                                      ; $5c05: $34
    sub l                                         ; $5c06: $95
    sub [hl]                                      ; $5c07: $96
    sub a                                         ; $5c08: $97
    sbc b                                         ; $5c09: $98
    ld [bc], a                                    ; $5c0a: $02
    sbc c                                         ; $5c0b: $99
    sbc d                                         ; $5c0c: $9a
    sbc e                                         ; $5c0d: $9b
    sbc h                                         ; $5c0e: $9c
    sbc l                                         ; $5c0f: $9d
    sbc [hl]                                      ; $5c10: $9e
    rlca                                          ; $5c11: $07
    jr jr_0c2_5bb3                                ; $5c12: $18 $9f

    call nz, Call_000_1837                        ; $5c14: $c4 $37 $18
    ld [hl-], a                                   ; $5c17: $32
    ld [$abaa], sp                                ; $5c18: $08 $aa $ab
    xor c                                         ; $5c1b: $a9
    rlca                                          ; $5c1c: $07
    jr jr_0c2_5bc7                                ; $5c1d: $18 $a8

    xor h                                         ; $5c1f: $ac
    jr jr_0c2_5bcf                                ; $5c20: $18 $ad

    and e                                         ; $5c22: $a3
    nop                                           ; $5c23: $00
    ld bc, $23f8                                  ; $5c24: $01 $f8 $23
    jr nz, jr_0c2_5c2c                            ; $5c27: $20 $03

    inc bc                                        ; $5c29: $03
    inc bc                                        ; $5c2a: $03
    ld l, b                                       ; $5c2b: $68

jr_0c2_5c2c:
    inc b                                         ; $5c2c: $04
    ld bc, $0c28                                  ; $5c2d: $01 $28 $0c
    nop                                           ; $5c30: $00
    inc bc                                        ; $5c31: $03
    inc d                                         ; $5c32: $14
    db $10                                        ; $5c33: $10
    ld bc, $6101                                  ; $5c34: $01 $01 $61
    ld e, a                                       ; $5c37: $5f
    ld [bc], a                                    ; $5c38: $02
    ld bc, $0118                                  ; $5c39: $01 $18 $01
    ld bc, $1400                                  ; $5c3c: $01 $00 $14
    jr nz, jr_0c2_5c53                            ; $5c3f: $20 $12

    jr nz, jr_0c2_5c58                            ; $5c41: $20 $15

    jr jr_0c2_5c6d                                ; $5c43: $18 $28

    db $10                                        ; $5c45: $10
    ld l, a                                       ; $5c46: $6f
    inc b                                         ; $5c47: $04
    inc de                                        ; $5c48: $13
    ld d, b                                       ; $5c49: $50
    inc d                                         ; $5c4a: $14
    ret z                                         ; $5c4b: $c8

    ld bc, $283e                                  ; $5c4c: $01 $3e $28
    ld d, b                                       ; $5c4f: $50
    ld b, b                                       ; $5c50: $40
    inc d                                         ; $5c51: $14
    ret nc                                        ; $5c52: $d0

jr_0c2_5c53:
    ld a, d                                       ; $5c53: $7a
    ld [$148f], sp                                ; $5c54: $08 $8f $14
    ld a, b                                       ; $5c57: $78

jr_0c2_5c58:
    ld [bc], a                                    ; $5c58: $02
    ld [bc], a                                    ; $5c59: $02
    inc b                                         ; $5c5a: $04
    inc a                                         ; $5c5b: $3c
    ld d, b                                       ; $5c5c: $50
    and [hl]                                      ; $5c5d: $a6
    jr jr_0c2_5c74                                ; $5c5e: $18 $14

    jr nz, @-$4d                                  ; $5c60: $20 $b1

    jr c, jr_0c2_5be4                             ; $5c62: $38 $80

    cp h                                          ; $5c64: $bc
    nop                                           ; $5c65: $00
    dec bc                                        ; $5c66: $0b
    ld [$0000], sp                                ; $5c67: $08 $00 $00
    ld [$0a0b], sp                                ; $5c6a: $08 $0b $0a

jr_0c2_5c6d:
    sub l                                         ; $5c6d: $95
    ld bc, $0910                                  ; $5c6e: $01 $10 $09
    ld bc, $1002                                  ; $5c71: $01 $02 $10

jr_0c2_5c74:
    add hl, bc                                    ; $5c74: $09
    inc d                                         ; $5c75: $14
    db $10                                        ; $5c76: $10
    dec b                                         ; $5c77: $05
    ld bc, $7808                                  ; $5c78: $01 $08 $78
    ld b, $06                                     ; $5c7b: $06 $06
    db $10                                        ; $5c7d: $10
    dec bc                                        ; $5c7e: $0b
    db $10                                        ; $5c7f: $10
    inc d                                         ; $5c80: $14
    jr nc, jr_0c2_5c88                            ; $5c81: $30 $05

    ld b, b                                       ; $5c83: $40
    ld [$0800], sp                                ; $5c84: $08 $00 $08
    ret nz                                        ; $5c87: $c0

jr_0c2_5c88:
    ld bc, $23f8                                  ; $5c88: $01 $f8 $23
    ld [$1428], sp                                ; $5c8b: $08 $28 $14
    nop                                           ; $5c8e: $00
    ld [de], a                                    ; $5c8f: $12
    nop                                           ; $5c90: $00
    or a                                          ; $5c91: $b7
    ld bc, $be00                                  ; $5c92: $01 $00 $be
    cp a                                          ; $5c95: $bf
    ret nz                                        ; $5c96: $c0

    pop bc                                        ; $5c97: $c1
    jp nz, $c4c3                                  ; $5c98: $c2 $c3 $c4

    push bc                                       ; $5c9b: $c5
    nop                                           ; $5c9c: $00
    add $c7                                       ; $5c9d: $c6 $c7
    ret z                                         ; $5c9f: $c8

    ret                                           ; $5ca0: $c9


    jp nz, $cbca                                  ; $5ca1: $c2 $ca $cb

    call z, $ab00                                 ; $5ca4: $cc $00 $ab
    xor h                                         ; $5ca7: $ac
    xor l                                         ; $5ca8: $ad
    xor [hl]                                      ; $5ca9: $ae
    call $cfce                                    ; $5caa: $cd $ce $cf
    ret nc                                        ; $5cad: $d0

    nop                                           ; $5cae: $00
    pop de                                        ; $5caf: $d1
    jp nc, $d4d3                                  ; $5cb0: $d2 $d3 $d4

    push de                                       ; $5cb3: $d5
    sub $d7                                       ; $5cb4: $d6 $d7
    ret c                                         ; $5cb6: $d8

    nop                                           ; $5cb7: $00
    reti                                          ; $5cb8: $d9


    jp c, $dcdb                                   ; $5cb9: $da $db $dc

    db $dd                                        ; $5cbc: $dd
    sbc $df                                       ; $5cbd: $de $df
    ldh [rP1], a                                  ; $5cbf: $e0 $00
    pop hl                                        ; $5cc1: $e1
    ld [c], a                                     ; $5cc2: $e2
    db $e3                                        ; $5cc3: $e3
    db $e4                                        ; $5cc4: $e4
    and c                                         ; $5cc5: $a1
    and c                                         ; $5cc6: $a1
    push hl                                       ; $5cc7: $e5
    and $00                                       ; $5cc8: $e6 $00
    rst $20                                       ; $5cca: $e7
    add sp, -$17                                  ; $5ccb: $e8 $e9
    ld [$eceb], a                                 ; $5ccd: $ea $eb $ec
    and c                                         ; $5cd0: $a1
    and c                                         ; $5cd1: $a1
    nop                                           ; $5cd2: $00
    db $ed                                        ; $5cd3: $ed
    xor $ef                                       ; $5cd4: $ee $ef
    ldh a, [$f1]                                  ; $5cd6: $f0 $f1
    ld a, [c]                                     ; $5cd8: $f2
    and b                                         ; $5cd9: $a0
    and c                                         ; $5cda: $a1
    nop                                           ; $5cdb: $00
    di                                            ; $5cdc: $f3
    db $f4                                        ; $5cdd: $f4
    push af                                       ; $5cde: $f5
    or $f7                                        ; $5cdf: $f6 $f7
    ld hl, sp-$07                                 ; $5ce1: $f8 $f9
    ld a, [$fb00]                                 ; $5ce3: $fa $00 $fb
    db $fc                                        ; $5ce6: $fc
    db $fd                                        ; $5ce7: $fd
    cp $a1                                        ; $5ce8: $fe $a1
    and b                                         ; $5cea: $a0
    ld a, [c]                                     ; $5ceb: $f2
    pop af                                        ; $5cec: $f1
    nop                                           ; $5ced: $00
    rst $38                                       ; $5cee: $ff
    nop                                           ; $5cef: $00
    and b                                         ; $5cf0: $a0
    and c                                         ; $5cf1: $a1
    ld bc, $0302                                  ; $5cf2: $01 $02 $03
    inc b                                         ; $5cf5: $04
    nop                                           ; $5cf6: $00
    dec b                                         ; $5cf7: $05
    ld b, $06                                     ; $5cf8: $06 $06
    rlca                                          ; $5cfa: $07
    ld [$0a09], sp                                ; $5cfb: $08 $09 $0a
    dec bc                                        ; $5cfe: $0b
    nop                                           ; $5cff: $00
    and c                                         ; $5d00: $a1
    and b                                         ; $5d01: $a0
    nop                                           ; $5d02: $00
    rst $38                                       ; $5d03: $ff
    inc c                                         ; $5d04: $0c
    dec c                                         ; $5d05: $0d
    ld c, $0f                                     ; $5d06: $0e $0f
    nop                                           ; $5d08: $00
    and c                                         ; $5d09: $a1
    and c                                         ; $5d0a: $a1
    db $10                                        ; $5d0b: $10
    ld de, $0612                                  ; $5d0c: $11 $12 $06
    ld b, $13                                     ; $5d0f: $06 $13
    nop                                           ; $5d11: $00
    inc d                                         ; $5d12: $14
    dec d                                         ; $5d13: $15
    ld d, $a1                                     ; $5d14: $16 $a1
    rla                                           ; $5d16: $17
    jr @+$0f                                      ; $5d17: $18 $0d

    inc c                                         ; $5d19: $0c
    nop                                           ; $5d1a: $00
    add hl, de                                    ; $5d1b: $19
    ld a, [de]                                    ; $5d1c: $1a
    dec de                                        ; $5d1d: $1b
    inc e                                         ; $5d1e: $1c
    dec e                                         ; $5d1f: $1d
    ld e, $1f                                     ; $5d20: $1e $1f
    jr nz, jr_0c2_5d24                            ; $5d22: $20 $00

jr_0c2_5d24:
    ld hl, $2322                                  ; $5d24: $21 $22 $23
    inc h                                         ; $5d27: $24
    dec h                                         ; $5d28: $25
    ld h, $27                                     ; $5d29: $26 $27
    dec e                                         ; $5d2b: $1d
    nop                                           ; $5d2c: $00
    jr z, jr_0c2_5d58                             ; $5d2d: $28 $29

    ld a, [de]                                    ; $5d2f: $1a
    add hl, de                                    ; $5d30: $19
    ld a, [hl+]                                   ; $5d31: $2a
    dec hl                                        ; $5d32: $2b
    inc l                                         ; $5d33: $2c
    dec l                                         ; $5d34: $2d
    nop                                           ; $5d35: $00
    ld l, $2f                                     ; $5d36: $2e $2f
    jr nc, jr_0c2_5d6b                            ; $5d38: $30 $31

    ld [hl-], a                                   ; $5d3a: $32
    inc sp                                        ; $5d3b: $33
    inc [hl]                                      ; $5d3c: $34
    dec [hl]                                      ; $5d3d: $35
    nop                                           ; $5d3e: $00
    ld [hl], $37                                  ; $5d3f: $36 $37
    ld l, $38                                     ; $5d41: $2e $38
    add hl, sp                                    ; $5d43: $39
    ld a, [hl-]                                   ; $5d44: $3a
    dec hl                                        ; $5d45: $2b
    ld a, [hl+]                                   ; $5d46: $2a
    nop                                           ; $5d47: $00
    dec sp                                        ; $5d48: $3b
    inc a                                         ; $5d49: $3c
    ld b, $06                                     ; $5d4a: $06 $06
    dec a                                         ; $5d4c: $3d
    ld a, $3f                                     ; $5d4d: $3e $3f
    ld b, b                                       ; $5d4f: $40
    ld [bc], a                                    ; $5d50: $02
    ld b, c                                       ; $5d51: $41
    ld b, d                                       ; $5d52: $42
    ld b, e                                       ; $5d53: $43
    ld b, h                                       ; $5d54: $44
    ld b, l                                       ; $5d55: $45
    ld b, $01                                     ; $5d56: $06 $01

jr_0c2_5d58:
    ld [$003c], sp                                ; $5d58: $08 $3c $00
    dec sp                                        ; $5d5b: $3b
    ld b, [hl]                                    ; $5d5c: $46
    ld b, a                                       ; $5d5d: $47
    ld b, $06                                     ; $5d5e: $06 $06
    ld c, b                                       ; $5d60: $48
    ld c, c                                       ; $5d61: $49
    ld c, d                                       ; $5d62: $4a
    ld bc, $064b                                  ; $5d63: $01 $4b $06
    ld b, $4c                                     ; $5d66: $06 $4c
    ld c, l                                       ; $5d68: $4d
    ld c, [hl]                                    ; $5d69: $4e
    ld c, a                                       ; $5d6a: $4f

jr_0c2_5d6b:
    dec d                                         ; $5d6b: $15
    ld [$4700], sp                                ; $5d6c: $08 $00 $47
    ld b, [hl]                                    ; $5d6f: $46
    ld d, b                                       ; $5d70: $50
    ld d, c                                       ; $5d71: $51
    ld d, d                                       ; $5d72: $52
    ld d, e                                       ; $5d73: $53
    ld d, h                                       ; $5d74: $54
    ld d, l                                       ; $5d75: $55
    nop                                           ; $5d76: $00
    ld d, [hl]                                    ; $5d77: $56
    ld d, a                                       ; $5d78: $57
    ld e, b                                       ; $5d79: $58
    ld b, $06                                     ; $5d7a: $06 $06
    ld e, c                                       ; $5d7c: $59
    ld e, d                                       ; $5d7d: $5a
    ld e, e                                       ; $5d7e: $5b
    nop                                           ; $5d7f: $00
    ld e, h                                       ; $5d80: $5c
    ld e, l                                       ; $5d81: $5d
    ld e, [hl]                                    ; $5d82: $5e
    ld e, a                                       ; $5d83: $5f
    ld d, c                                       ; $5d84: $51
    ld d, b                                       ; $5d85: $50
    ld h, b                                       ; $5d86: $60
    ld h, c                                       ; $5d87: $61
    nop                                           ; $5d88: $00
    and e                                         ; $5d89: $a3
    and d                                         ; $5d8a: $a2
    dec e                                         ; $5d8b: $1d
    and c                                         ; $5d8c: $a1
    ld h, d                                       ; $5d8d: $62
    ld h, e                                       ; $5d8e: $63
    inc h                                         ; $5d8f: $24
    ld b, $00                                     ; $5d90: $06 $00
    ld b, $64                                     ; $5d92: $06 $64
    ld h, l                                       ; $5d94: $65
    ld h, [hl]                                    ; $5d95: $66
    ld h, a                                       ; $5d96: $67
    dec e                                         ; $5d97: $1d
    and e                                         ; $5d98: $a3
    and d                                         ; $5d99: $a2
    nop                                           ; $5d9a: $00
    ld h, c                                       ; $5d9b: $61
    ld h, b                                       ; $5d9c: $60
    ld l, b                                       ; $5d9d: $68
    ld l, c                                       ; $5d9e: $69
    ld l, d                                       ; $5d9f: $6a
    ld l, e                                       ; $5da0: $6b
    and c                                         ; $5da1: $a1
    and c                                         ; $5da2: $a1
    nop                                           ; $5da3: $00
    ld l, h                                       ; $5da4: $6c
    ld l, l                                       ; $5da5: $6d
    ld l, [hl]                                    ; $5da6: $6e
    ld b, $06                                     ; $5da7: $06 $06
    ld l, a                                       ; $5da9: $6f
    ld [hl], b                                    ; $5daa: $70
    ld [hl], c                                    ; $5dab: $71
    nop                                           ; $5dac: $00
    ld [hl], d                                    ; $5dad: $72
    and c                                         ; $5dae: $a1
    ld l, d                                       ; $5daf: $6a
    ld l, e                                       ; $5db0: $6b
    ld l, c                                       ; $5db1: $69
    ld l, b                                       ; $5db2: $68
    ld [hl], e                                    ; $5db3: $73
    ld [hl], h                                    ; $5db4: $74
    nop                                           ; $5db5: $00
    and b                                         ; $5db6: $a0
    and c                                         ; $5db7: $a1
    ld l, e                                       ; $5db8: $6b
    ld l, d                                       ; $5db9: $6a
    ld [hl], l                                    ; $5dba: $75
    halt                                          ; $5dbb: $76
    ld [hl], a                                    ; $5dbc: $77
    ld b, $00                                     ; $5dbd: $06 $00
    ld b, $78                                     ; $5dbf: $06 $78
    ld a, c                                       ; $5dc1: $79
    ld a, d                                       ; $5dc2: $7a
    ld a, e                                       ; $5dc3: $7b
    ld a, h                                       ; $5dc4: $7c
    and c                                         ; $5dc5: $a1
    and b                                         ; $5dc6: $a0
    nop                                           ; $5dc7: $00
    ld [hl], h                                    ; $5dc8: $74
    ld [hl], e                                    ; $5dc9: $73
    ld a, l                                       ; $5dca: $7d
    ld a, [hl]                                    ; $5dcb: $7e
    and b                                         ; $5dcc: $a0
    and c                                         ; $5dcd: $a1
    and d                                         ; $5dce: $a2
    and e                                         ; $5dcf: $a3
    ld bc, $a5a4                                  ; $5dd0: $01 $a4 $a5
    and [hl]                                      ; $5dd3: $a6
    and a                                         ; $5dd4: $a7
    xor b                                         ; $5dd5: $a8
    xor c                                         ; $5dd6: $a9
    xor d                                         ; $5dd7: $aa
    dec d                                         ; $5dd8: $15
    add hl, bc                                    ; $5dd9: $09
    nop                                           ; $5dda: $00
    xor a                                         ; $5ddb: $af
    ld a, [hl]                                    ; $5ddc: $7e
    ld a, l                                       ; $5ddd: $7d
    ld a, a                                       ; $5dde: $7f
    add b                                         ; $5ddf: $80
    or b                                          ; $5de0: $b0
    or c                                          ; $5de1: $b1
    or d                                          ; $5de2: $b2
    nop                                           ; $5de3: $00
    or e                                          ; $5de4: $b3
    or h                                          ; $5de5: $b4
    or l                                          ; $5de6: $b5
    or [hl]                                       ; $5de7: $b6
    or a                                          ; $5de8: $b7
    cp b                                          ; $5de9: $b8
    cp c                                          ; $5dea: $b9
    cp d                                          ; $5deb: $ba
    nop                                           ; $5dec: $00
    cp e                                          ; $5ded: $bb
    or d                                          ; $5dee: $b2
    or e                                          ; $5def: $b3
    cp h                                          ; $5df0: $bc
    cp l                                          ; $5df1: $bd
    add c                                         ; $5df2: $81
    add d                                         ; $5df3: $82
    add e                                         ; $5df4: $83
    nop                                           ; $5df5: $00
    add h                                         ; $5df6: $84
    add l                                         ; $5df7: $85
    add [hl]                                      ; $5df8: $86
    add a                                         ; $5df9: $87
    adc b                                         ; $5dfa: $88
    adc c                                         ; $5dfb: $89
    adc d                                         ; $5dfc: $8a
    adc e                                         ; $5dfd: $8b
    nop                                           ; $5dfe: $00
    adc h                                         ; $5dff: $8c
    adc l                                         ; $5e00: $8d
    adc [hl]                                      ; $5e01: $8e
    adc a                                         ; $5e02: $8f
    sub b                                         ; $5e03: $90
    sub c                                         ; $5e04: $91
    sub d                                         ; $5e05: $92
    sub e                                         ; $5e06: $93
    nop                                           ; $5e07: $00
    sub h                                         ; $5e08: $94
    sub l                                         ; $5e09: $95
    sub [hl]                                      ; $5e0a: $96
    sub a                                         ; $5e0b: $97
    sbc b                                         ; $5e0c: $98
    sbc c                                         ; $5e0d: $99
    sbc d                                         ; $5e0e: $9a
    sbc e                                         ; $5e0f: $9b
    ld a, [bc]                                    ; $5e10: $0a
    sbc h                                         ; $5e11: $9c
    sbc l                                         ; $5e12: $9d
    sbc [hl]                                      ; $5e13: $9e
    sbc a                                         ; $5e14: $9f
    ld b, e                                       ; $5e15: $43
    ld b, b                                       ; $5e16: $40
    rlca                                          ; $5e17: $07
    ld bc, $0f60                                  ; $5e18: $01 $60 $0f
    ld [c], a                                     ; $5e1b: $e2
    ld bc, $1400                                  ; $5e1c: $01 $00 $14
    ld l, b                                       ; $5e1f: $68
    inc h                                         ; $5e20: $24
    jr jr_0c2_5e29                                ; $5e21: $18 $06

    ld b, $25                                     ; $5e23: $06 $25
    dec a                                         ; $5e25: $3d
    ld bc, $e005                                  ; $5e26: $01 $05 $e0

jr_0c2_5e29:
    ld bc, $0a00                                  ; $5e29: $01 $00 $0a
    jr @+$3c                                      ; $5e2c: $18 $3a

    ld [$4245], sp                                ; $5e2e: $08 $45 $42
    nop                                           ; $5e31: $00
    nop                                           ; $5e32: $00
    ld [bc], a                                    ; $5e33: $02
    jr nz, jr_0c2_5e36                            ; $5e34: $20 $00

jr_0c2_5e36:
    ld [bc], a                                    ; $5e36: $02
    ld bc, $0010                                  ; $5e37: $01 $10 $00
    nop                                           ; $5e3a: $00
    ld h, d                                       ; $5e3b: $62
    ld b, l                                       ; $5e3c: $45
    daa                                           ; $5e3d: $27
    dec c                                         ; $5e3e: $0d
    daa                                           ; $5e3f: $27
    rlca                                          ; $5e40: $07
    rlca                                          ; $5e41: $07
    dec b                                         ; $5e42: $05
    ld a, [bc]                                    ; $5e43: $0a

jr_0c2_5e44:
    nop                                           ; $5e44: $00
    inc d                                         ; $5e45: $14
    jr jr_0c2_5e48                                ; $5e46: $18 $00

jr_0c2_5e48:
    ld bc, $2300                                  ; $5e48: $01 $00 $23
    ld [hl+], a                                   ; $5e4b: $22
    dec b                                         ; $5e4c: $05
    inc d                                         ; $5e4d: $14
    ld [$0006], sp                                ; $5e4e: $08 $06 $00
    ld h, d                                       ; $5e51: $62
    ld a, [hl+]                                   ; $5e52: $2a
    ld [$0029], sp                                ; $5e53: $08 $29 $00
    inc bc                                        ; $5e56: $03
    ld bc, $0201                                  ; $5e57: $01 $01 $02
    ld b, d                                       ; $5e5a: $42
    nop                                           ; $5e5b: $00
    ld b, $14                                     ; $5e5c: $06 $14
    jr @+$36                                      ; $5e5e: $18 $34

    ld [$3a97], sp                                ; $5e60: $08 $97 $3a
    jr jr_0c2_5e67                                ; $5e63: $18 $02

    ld [hl+], a                                   ; $5e65: $22
    inc d                                         ; $5e66: $14

jr_0c2_5e67:
    jr jr_0c2_5e6e                                ; $5e67: $18 $05

    ld c, e                                       ; $5e69: $4b
    jr @+$08                                      ; $5e6a: $18 $06

    jr z, jr_0c2_5eaa                             ; $5e6c: $28 $3c

jr_0c2_5e6e:
    db $10                                        ; $5e6e: $10
    ret                                           ; $5e6f: $c9


    inc d                                         ; $5e70: $14
    ld hl, sp+$28                                 ; $5e71: $f8 $28
    cp b                                          ; $5e73: $b8
    ld h, [hl]                                    ; $5e74: $66
    ld h, b                                       ; $5e75: $60
    ld l, [hl]                                    ; $5e76: $6e
    nop                                           ; $5e77: $00
    nop                                           ; $5e78: $00
    ld h, d                                       ; $5e79: $62
    ld h, h                                       ; $5e7a: $64
    jr nz, jr_0c2_5ea7                            ; $5e7b: $20 $2a

    ld h, b                                       ; $5e7d: $60
    ld h, [hl]                                    ; $5e7e: $66
    adc h                                         ; $5e7f: $8c
    jr @+$24                                      ; $5e80: $18 $22

    ld a, b                                       ; $5e82: $78
    jr c, @+$04                                   ; $5e83: $38 $02

    adc h                                         ; $5e85: $8c
    jr @+$47                                      ; $5e86: $18 $45

    add hl, de                                    ; $5e88: $19
    ld b, d                                       ; $5e89: $42
    ld h, b                                       ; $5e8a: $60
    ld h, b                                       ; $5e8b: $60
    ld a, e                                       ; $5e8c: $7b
    jr nz, jr_0c2_5e44                            ; $5e8d: $20 $b5

    nop                                           ; $5e8f: $00
    ld h, d                                       ; $5e90: $62
    ld b, d                                       ; $5e91: $42
    ret z                                         ; $5e92: $c8

    ld [$0307], sp                                ; $5e93: $08 $07 $03
    inc bc                                        ; $5e96: $03
    inc b                                         ; $5e97: $04
    inc b                                         ; $5e98: $04
    inc bc                                        ; $5e99: $03
    ld bc, $0a20                                  ; $5e9a: $01 $20 $0a
    ld [$00dc], sp                                ; $5e9d: $08 $dc $00
    ld a, [hl]                                    ; $5ea0: $7e
    rrca                                          ; $5ea1: $0f
    ld [de], a                                    ; $5ea2: $12
    ld [$1816], sp                                ; $5ea3: $08 $16 $18
    ld a, [bc]                                    ; $5ea6: $0a

jr_0c2_5ea7:
    jr @+$30                                      ; $5ea7: $18 $2e

    add hl, bc                                    ; $5ea9: $09

jr_0c2_5eaa:
    inc b                                         ; $5eaa: $04
    ld hl, sp+$54                                 ; $5eab: $f8 $54
    add hl, bc                                    ; $5ead: $09

    db $14, $00, $12, $00, $23, $00, $7f, $00, $01, $f8, $23, $f8, $45, $f8, $67, $f8
    db $89, $f8, $ab, $f8, $cd, $f8, $fb, $ef, $f8, $11, $f9, $33, $f9, $55, $f9, $77
    db $11, $07, $01, $f8, $23, $f8, $f5, $45, $f8, $67, $f8, $89, $00, $08, $8a, $01
    db $01, $80, $02, $01, $80, $56, $03, $01, $80, $04, $01, $80, $05, $01, $f8, $23
    db $10, $06, $e0, $01, $f8, $23, $10, $40, $89

    inc d                                         ; $5ef7: $14
    nop                                           ; $5ef8: $00
    dec b                                         ; $5ef9: $05
    nop                                           ; $5efa: $00
    add b                                         ; $5efb: $80
    add b                                         ; $5efc: $80
    add b                                         ; $5efd: $80
    add b                                         ; $5efe: $80
    add b                                         ; $5eff: $80
    add b                                         ; $5f00: $80
    add b                                         ; $5f01: $80
    add b                                         ; $5f02: $80
    add b                                         ; $5f03: $80
    add b                                         ; $5f04: $80
    add b                                         ; $5f05: $80
    add b                                         ; $5f06: $80
    add b                                         ; $5f07: $80
    add b                                         ; $5f08: $80
    add b                                         ; $5f09: $80
    add b                                         ; $5f0a: $80
    add b                                         ; $5f0b: $80
    add b                                         ; $5f0c: $80
    add b                                         ; $5f0d: $80
    add b                                         ; $5f0e: $80
    add b                                         ; $5f0f: $80
    add b                                         ; $5f10: $80
    add b                                         ; $5f11: $80
    add b                                         ; $5f12: $80
    add b                                         ; $5f13: $80
    add b                                         ; $5f14: $80
    add b                                         ; $5f15: $80
    add b                                         ; $5f16: $80
    add b                                         ; $5f17: $80
    add b                                         ; $5f18: $80
    add b                                         ; $5f19: $80
    add b                                         ; $5f1a: $80
    add b                                         ; $5f1b: $80
    add b                                         ; $5f1c: $80
    add b                                         ; $5f1d: $80
    add b                                         ; $5f1e: $80
    add b                                         ; $5f1f: $80
    add b                                         ; $5f20: $80
    add b                                         ; $5f21: $80
    add b                                         ; $5f22: $80
    add b                                         ; $5f23: $80
    add b                                         ; $5f24: $80
    add b                                         ; $5f25: $80
    add b                                         ; $5f26: $80
    add b                                         ; $5f27: $80
    add b                                         ; $5f28: $80
    add b                                         ; $5f29: $80
    add b                                         ; $5f2a: $80
    add b                                         ; $5f2b: $80
    add b                                         ; $5f2c: $80
    add b                                         ; $5f2d: $80
    add b                                         ; $5f2e: $80
    add b                                         ; $5f2f: $80
    add b                                         ; $5f30: $80
    add b                                         ; $5f31: $80
    add b                                         ; $5f32: $80
    add b                                         ; $5f33: $80
    add b                                         ; $5f34: $80
    add b                                         ; $5f35: $80
    add b                                         ; $5f36: $80
    add b                                         ; $5f37: $80
    add b                                         ; $5f38: $80
    add b                                         ; $5f39: $80
    add b                                         ; $5f3a: $80
    add b                                         ; $5f3b: $80
    add b                                         ; $5f3c: $80
    add b                                         ; $5f3d: $80
    add b                                         ; $5f3e: $80
    add b                                         ; $5f3f: $80
    add b                                         ; $5f40: $80
    add b                                         ; $5f41: $80
    add b                                         ; $5f42: $80
    add b                                         ; $5f43: $80
    add b                                         ; $5f44: $80
    add b                                         ; $5f45: $80
    add b                                         ; $5f46: $80
    add b                                         ; $5f47: $80
    add b                                         ; $5f48: $80
    add b                                         ; $5f49: $80
    add b                                         ; $5f4a: $80
    add b                                         ; $5f4b: $80
    add b                                         ; $5f4c: $80
    add b                                         ; $5f4d: $80
    add b                                         ; $5f4e: $80
    add b                                         ; $5f4f: $80
    add b                                         ; $5f50: $80
    add b                                         ; $5f51: $80
    add b                                         ; $5f52: $80
    add b                                         ; $5f53: $80
    add b                                         ; $5f54: $80
    add b                                         ; $5f55: $80
    add b                                         ; $5f56: $80
    add b                                         ; $5f57: $80
    add b                                         ; $5f58: $80
    add b                                         ; $5f59: $80
    add b                                         ; $5f5a: $80
    add b                                         ; $5f5b: $80
    add b                                         ; $5f5c: $80
    add b                                         ; $5f5d: $80
    add b                                         ; $5f5e: $80
    nop                                           ; $5f5f: $00
    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    nop                                           ; $5f62: $00
    nop                                           ; $5f63: $00
    nop                                           ; $5f64: $00
    nop                                           ; $5f65: $00
    nop                                           ; $5f66: $00
    nop                                           ; $5f67: $00
    nop                                           ; $5f68: $00
    nop                                           ; $5f69: $00
    nop                                           ; $5f6a: $00
    nop                                           ; $5f6b: $00
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    nop                                           ; $5f6e: $00
    nop                                           ; $5f6f: $00
    nop                                           ; $5f70: $00
    nop                                           ; $5f71: $00
    nop                                           ; $5f72: $00
    nop                                           ; $5f73: $00
    nop                                           ; $5f74: $00
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    nop                                           ; $5f77: $00
    nop                                           ; $5f78: $00
    nop                                           ; $5f79: $00
    nop                                           ; $5f7a: $00
    nop                                           ; $5f7b: $00
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    nop                                           ; $5f7e: $00
    nop                                           ; $5f7f: $00
    nop                                           ; $5f80: $00
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    nop                                           ; $5f83: $00
    nop                                           ; $5f84: $00
    nop                                           ; $5f85: $00
    nop                                           ; $5f86: $00
    ld bc, $0101                                  ; $5f87: $01 $01 $01
    ld bc, $0101                                  ; $5f8a: $01 $01 $01
    ld bc, $0101                                  ; $5f8d: $01 $01 $01
    ld bc, $0101                                  ; $5f90: $01 $01 $01
    ld bc, $0101                                  ; $5f93: $01 $01 $01
    ld bc, $0101                                  ; $5f96: $01 $01 $01
    ld bc, $0201                                  ; $5f99: $01 $01 $02
    ld [bc], a                                    ; $5f9c: $02
    ld [bc], a                                    ; $5f9d: $02
    ld [bc], a                                    ; $5f9e: $02
    ld [bc], a                                    ; $5f9f: $02
    ld [bc], a                                    ; $5fa0: $02
    ld [bc], a                                    ; $5fa1: $02
    ld [bc], a                                    ; $5fa2: $02
    ld [bc], a                                    ; $5fa3: $02
    ld [bc], a                                    ; $5fa4: $02
    ld [bc], a                                    ; $5fa5: $02
    ld [bc], a                                    ; $5fa6: $02
    ld [bc], a                                    ; $5fa7: $02
    ld [bc], a                                    ; $5fa8: $02
    ld [bc], a                                    ; $5fa9: $02
    ld [bc], a                                    ; $5faa: $02
    ld [bc], a                                    ; $5fab: $02
    ld [bc], a                                    ; $5fac: $02
    ld [bc], a                                    ; $5fad: $02
    ld [bc], a                                    ; $5fae: $02
    inc bc                                        ; $5faf: $03
    inc bc                                        ; $5fb0: $03
    inc bc                                        ; $5fb1: $03
    inc bc                                        ; $5fb2: $03
    inc bc                                        ; $5fb3: $03
    inc bc                                        ; $5fb4: $03
    inc bc                                        ; $5fb5: $03
    inc bc                                        ; $5fb6: $03
    inc bc                                        ; $5fb7: $03
    inc bc                                        ; $5fb8: $03
    inc bc                                        ; $5fb9: $03
    inc bc                                        ; $5fba: $03
    inc bc                                        ; $5fbb: $03
    inc bc                                        ; $5fbc: $03
    inc bc                                        ; $5fbd: $03
    inc bc                                        ; $5fbe: $03
    inc bc                                        ; $5fbf: $03
    inc bc                                        ; $5fc0: $03
    inc bc                                        ; $5fc1: $03
    inc bc                                        ; $5fc2: $03

    db $14, $00, $12, $00, $db, $00, $00, $80, $80, $80, $83, $84, $85, $86, $87, $06
    db $88, $89, $8a, $8b, $8c, $0d, $00, $03, $20, $8d, $00, $8e, $8f, $90, $91, $91
    db $92, $93, $94, $04, $95, $96, $97, $98, $99, $18, $18, $9a, $9b, $00, $9c, $9d
    db $9e, $9f, $a0, $a1, $91, $91, $10, $a2, $a3, $a4, $2b, $20, $a5, $a6, $91, $91
    db $00, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $40, $af, $3f, $20, $b0, $b1, $b2
    db $91, $91, $b3, $00, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $20, $bc, $bd, $63
    db $00, $be, $bf, $c0, $c1, $c2, $00, $c3, $c4, $c5, $c6, $92, $c7, $c8, $c9, $00
    db $ca, $91, $cb, $cc, $80, $cd, $ce, $cf, $01, $d0, $b2, $a6, $91, $b1, $93, $91
    db $01, $20, $06, $d1, $d2, $80, $d3, $d1, $0d, $28, $15, $28, $d4, $10, $80, $d5
    db $d6, $14, $68, $d7, $d8, $d9, $da, $84, $28, $68, $db, $dc, $dd, $de, $3c, $68
    db $de, $dd, $21, $dc, $db, $50, $68, $da, $d9, $d8, $d7, $64, $68, $08, $d6, $d5
    db $80, $d4, $78, $68, $d1, $d3, $80, $42, $d2, $8c, $68, $df, $e0, $80, $cc, $a0
    db $68, $e1, $10, $da, $80, $e3, $b4, $68, $91, $d6, $80, $d3, $95, $14, $70, $d1
    db $01, $01, $80, $07, $01, $08, $02, $06, $10, $ae, $05, $30, $06, $01, $08, $02
    db $01, $18, $0c, $10, $11, $00, $05, $c7, $01, $00, $13, $08, $03, $03, $03, $1a
    db $10, $10, $08, $14, $60, $bd, $13, $10, $04, $01, $00, $28, $40, $0f, $08, $04
    db $10, $62, $50, $00, $67, $23, $3c, $20, $17, $10, $62, $00, $01, $60, $39, $08
    db $14, $68, $c7, $85, $08, $14, $f8, $00, $00, $62, $01, $00, $14, $f8, $28, $08
    db $56, $02, $78, $70, $02, $14, $88, $02, $28, $90, $a0, $78, $62, $20, $02, $04
    db $b4, $78

    inc d                                         ; $60f5: $14
    nop                                           ; $60f6: $00
    ld [de], a                                    ; $60f7: $12
    nop                                           ; $60f8: $00
    jp nc, $4000                                  ; $60f9: $d2 $00 $40

    add b                                         ; $60fc: $80
    ld bc, $8108                                  ; $60fd: $01 $08 $81
    add d                                         ; $6100: $82
    add e                                         ; $6101: $83
    add h                                         ; $6102: $84
    add b                                         ; $6103: $80
    add l                                         ; $6104: $85
    jr @-$78                                      ; $6105: $18 $86

    add a                                         ; $6107: $87
    adc b                                         ; $6108: $88
    ld c, $10                                     ; $6109: $0e $10
    dec b                                         ; $610b: $05
    jr @-$75                                      ; $610c: $18 $89

    adc d                                         ; $610e: $8a
    adc e                                         ; $610f: $8b
    ld bc, $8d8c                                  ; $6110: $01 $8c $8d
    adc [hl]                                      ; $6113: $8e
    adc a                                         ; $6114: $8f
    sub b                                         ; $6115: $90
    sub c                                         ; $6116: $91
    sub d                                         ; $6117: $92
    dec d                                         ; $6118: $15
    jr c, jr_0c2_611b                             ; $6119: $38 $00

jr_0c2_611b:
    sub e                                         ; $611b: $93
    sub h                                         ; $611c: $94
    sub l                                         ; $611d: $95
    sub [hl]                                      ; $611e: $96
    sub a                                         ; $611f: $97
    sbc b                                         ; $6120: $98
    sbc c                                         ; $6121: $99
    sbc d                                         ; $6122: $9a
    jr nz, @-$63                                  ; $6123: $20 $9b

    sbc h                                         ; $6125: $9c
    add hl, hl                                    ; $6126: $29
    jr c, @-$61                                   ; $6127: $38 $9d

    sbc [hl]                                      ; $6129: $9e
    sbc a                                         ; $612a: $9f
    and b                                         ; $612b: $a0
    and c                                         ; $612c: $a1
    inc b                                         ; $612d: $04
    and d                                         ; $612e: $a2
    and e                                         ; $612f: $a3
    and h                                         ; $6130: $a4
    and l                                         ; $6131: $a5
    and [hl]                                      ; $6132: $a6
    dec a                                         ; $6133: $3d
    jr c, @-$57                                   ; $6134: $38 $a7

    xor b                                         ; $6136: $a8
    ld bc, $aaa9                                  ; $6137: $01 $a9 $aa
    xor e                                         ; $613a: $ab
    xor h                                         ; $613b: $ac
    xor l                                         ; $613c: $ad
    xor [hl]                                      ; $613d: $ae
    xor a                                         ; $613e: $af
    ld d, b                                       ; $613f: $50
    jr c, jr_0c2_6142                             ; $6140: $38 $00

jr_0c2_6142:
    or b                                          ; $6142: $b0
    or c                                          ; $6143: $b1
    or d                                          ; $6144: $b2
    or e                                          ; $6145: $b3
    or h                                          ; $6146: $b4
    add b                                         ; $6147: $80
    add b                                         ; $6148: $80
    or l                                          ; $6149: $b5
    ld b, b                                       ; $614a: $40
    or [hl]                                       ; $614b: $b6

jr_0c2_614c:
    ld h, e                                       ; $614c: $63
    ld b, b                                       ; $614d: $40
    or a                                          ; $614e: $b7
    cp b                                          ; $614f: $b8
    cp c                                          ; $6150: $b9
    cp d                                          ; $6151: $ba
    add b                                         ; $6152: $80
    cp e                                          ; $6153: $bb
    jr nz, @-$42                                  ; $6154: $20 $bc

    cp l                                          ; $6156: $bd
    halt                                          ; $6157: $76
    ld b, b                                       ; $6158: $40
    add b                                         ; $6159: $80
    cp [hl]                                       ; $615a: $be
    cp a                                          ; $615b: $bf
    ret nz                                        ; $615c: $c0

    pop bc                                        ; $615d: $c1
    ld bc, $c3c2                                  ; $615e: $01 $c2 $c3
    call nz, $c6c5                                ; $6161: $c4 $c5 $c6
    rst $00                                       ; $6164: $c7
    ret z                                         ; $6165: $c8

    adc l                                         ; $6166: $8d
    jr nc, jr_0c2_6169                            ; $6167: $30 $00

jr_0c2_6169:
    ret                                           ; $6169: $c9


    jp z, $cccb                                   ; $616a: $ca $cb $cc

    call $cfce                                    ; $616d: $cd $ce $cf
    ret nc                                        ; $6170: $d0

    db $10                                        ; $6171: $10
    pop de                                        ; $6172: $d1
    jp nc, $a1d3                                  ; $6173: $d2 $d3 $a1

    jr nc, jr_0c2_614c                            ; $6176: $30 $d4

    push de                                       ; $6178: $d5
    sub $d7                                       ; $6179: $d6 $d7
    ld bc, $d9d8                                  ; $617b: $01 $d8 $d9
    jp c, $dcdb                                   ; $617e: $da $db $dc

    db $dd                                        ; $6181: $dd
    sbc $b5                                       ; $6182: $de $b5
    jr nc, jr_0c2_6186                            ; $6184: $30 $00

jr_0c2_6186:
    rst $18                                       ; $6186: $df
    ldh [$80], a                                  ; $6187: $e0 $80
    pop hl                                        ; $6189: $e1
    ld [c], a                                     ; $618a: $e2
    db $e3                                        ; $618b: $e3
    db $e4                                        ; $618c: $e4
    push hl                                       ; $618d: $e5
    dec b                                         ; $618e: $05
    and $e7                                       ; $618f: $e6 $e7
    add sp, -$17                                  ; $6191: $e8 $e9
    ld [$00d9], a                                 ; $6193: $ea $d9 $00
    db $eb                                        ; $6196: $eb
    ld bc, $4408                                  ; $6197: $01 $08 $44
    xor $06                                       ; $619a: $ee $06
    ld [$f3f2], sp                                ; $619c: $08 $f2 $f3
    db $f4                                        ; $619f: $f4
    dec c                                         ; $61a0: $0d
    db $10                                        ; $61a1: $10
    db $eb                                        ; $61a2: $eb
    db $eb                                        ; $61a3: $eb
    ld d, b                                       ; $61a4: $50
    ld sp, hl                                     ; $61a5: $f9
    ld bc, $fa80                                  ; $61a6: $01 $80 $fa
    ld bc, $0380                                  ; $61a9: $01 $80 $03
    inc b                                         ; $61ac: $04
    dec b                                         ; $61ad: $05
    ld b, $00                                     ; $61ae: $06 $00
    rlca                                          ; $61b0: $07
    ld [$0a09], sp                                ; $61b1: $08 $09 $0a
    dec bc                                        ; $61b4: $0b
    inc c                                         ; $61b5: $0c
    dec c                                         ; $61b6: $0d
    ld c, $00                                     ; $61b7: $0e $00
    rrca                                          ; $61b9: $0f
    db $10                                        ; $61ba: $10
    ld de, $1312                                  ; $61bb: $11 $12 $13
    inc d                                         ; $61be: $14
    add hl, bc                                    ; $61bf: $09
    dec d                                         ; $61c0: $15
    nop                                           ; $61c1: $00
    ld d, $17                                     ; $61c2: $16 $17
    jr jr_0c2_61df                                ; $61c4: $18 $19

    ld a, [de]                                    ; $61c6: $1a
    dec de                                        ; $61c7: $1b
    inc e                                         ; $61c8: $1c
    dec e                                         ; $61c9: $1d
    nop                                           ; $61ca: $00
    ld e, $1f                                     ; $61cb: $1e $1f
    jr nz, @+$23                                  ; $61cd: $20 $21

    ld [hl+], a                                   ; $61cf: $22
    inc hl                                        ; $61d0: $23
    inc h                                         ; $61d1: $24
    dec h                                         ; $61d2: $25
    nop                                           ; $61d3: $00
    ld h, $27                                     ; $61d4: $26 $27
    jr z, @+$2b                                   ; $61d6: $28 $29

    ld a, [hl+]                                   ; $61d8: $2a
    ld a, [hl+]                                   ; $61d9: $2a
    ld a, [hl+]                                   ; $61da: $2a
    dec hl                                        ; $61db: $2b
    nop                                           ; $61dc: $00
    inc l                                         ; $61dd: $2c
    dec l                                         ; $61de: $2d

jr_0c2_61df:
    ld l, $2f                                     ; $61df: $2e $2f
    jr nc, @+$33                                  ; $61e1: $30 $31

    or $f1                                        ; $61e3: $f6 $f1
    inc c                                         ; $61e5: $0c
    db $ed                                        ; $61e6: $ed
    ld [bc], a                                    ; $61e7: $02
    ld bc, $1000                                  ; $61e8: $01 $00 $10
    nop                                           ; $61eb: $00
    inc bc                                        ; $61ec: $03
    db $10                                        ; $61ed: $10
    rst $38                                       ; $61ee: $ff
    cp $00                                        ; $61ef: $fe $00
    db $fd                                        ; $61f1: $fd
    db $fc                                        ; $61f2: $fc
    ei                                            ; $61f3: $fb
    ld hl, sp-$09                                 ; $61f4: $f8 $f7
    push af                                       ; $61f6: $f5
    ldh a, [$ef]                                  ; $61f7: $f0 $ef
    ld b, b                                       ; $61f9: $40
    db $ec                                        ; $61fa: $ec
    inc de                                        ; $61fb: $13
    db $10                                        ; $61fc: $10

    db $ff, $7f, $8c, $48, $ae, $50, $d0, $58, $ff, $7f, $68, $34, $8a, $40, $8c, $48
    db $ff, $7f, $24, $24, $46, $2c, $68, $34, $de, $7f, $00, $14, $22, $1c, $24, $24
    db $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00
    db $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00

    rst $38                                       ; $623d: $ff
    ld a, a                                       ; $623e: $7f
    ld bc, $1500                                  ; $623f: $01 $00 $15
    ld d, h                                       ; $6242: $54
    dec d                                         ; $6243: $15
    ld d, h                                       ; $6244: $54
    rst $30                                       ; $6245: $f7
    ld b, e                                       ; $6246: $43
    ld c, h                                       ; $6247: $4c
    ld [de], a                                    ; $6248: $12
    ld h, a                                       ; $6249: $67
    ld bc, $0065                                  ; $624a: $01 $65 $00
    reti                                          ; $624d: $d9


    ld a, e                                       ; $624e: $7b
    xor l                                         ; $624f: $ad
    dec a                                         ; $6250: $3d
    ld h, a                                       ; $6251: $67
    ld bc, $0065                                  ; $6252: $01 $65 $00
    reti                                          ; $6255: $d9


    ld a, e                                       ; $6256: $7b
    ld d, c                                       ; $6257: $51
    ld [hl], a                                    ; $6258: $77
    xor l                                         ; $6259: $ad
    ld a, [hl]                                    ; $625a: $7e
    jr nz, jr_0c2_626d                            ; $625b: $20 $10

    rst $38                                       ; $625d: $ff
    ld a, a                                       ; $625e: $7f
    rst $38                                       ; $625f: $ff
    ccf                                           ; $6260: $3f

Call_0c2_6261:
    halt                                          ; $6261: $76
    ld e, a                                       ; $6262: $5f
    xor l                                         ; $6263: $ad
    ld a, [hl]                                    ; $6264: $7e
    rst $28                                       ; $6265: $ef
    dec a                                         ; $6266: $3d
    rst $28                                       ; $6267: $ef
    dec a                                         ; $6268: $3d
    rst $28                                       ; $6269: $ef
    dec a                                         ; $626a: $3d
    rst $28                                       ; $626b: $ef
    dec a                                         ; $626c: $3d

jr_0c2_626d:
    rst $28                                       ; $626d: $ef
    dec a                                         ; $626e: $3d
    rst $28                                       ; $626f: $ef
    dec a                                         ; $6270: $3d
    rst $28                                       ; $6271: $ef
    dec a                                         ; $6272: $3d
    rst $28                                       ; $6273: $ef
    dec a                                         ; $6274: $3d
    rst $28                                       ; $6275: $ef
    dec a                                         ; $6276: $3d
    rst $28                                       ; $6277: $ef
    dec a                                         ; $6278: $3d
    rst $28                                       ; $6279: $ef
    dec a                                         ; $627a: $3d
    rst $28                                       ; $627b: $ef
    dec a                                         ; $627c: $3d

    db $ff, $7f, $cf, $5e, $27, $5a, $80, $51, $ff, $7f, $6d, $5a, $e0, $3c, $41, $51
    db $ff, $7f, $02, $56, $d1, $6a, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d
    db $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d
    db $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d

    nop                                           ; $62bd: $00
    nop                                           ; $62be: $00
    ccf                                           ; $62bf: $3f
    inc bc                                        ; $62c0: $03
    ldh a, [rP1]                                  ; $62c1: $f0 $00
    rst $38                                       ; $62c3: $ff
    dec sp                                        ; $62c4: $3b
    nop                                           ; $62c5: $00
    nop                                           ; $62c6: $00
    ldh [$7d], a                                  ; $62c7: $e0 $7d
    ld b, b                                       ; $62c9: $40
    ld d, l                                       ; $62ca: $55
    and b                                         ; $62cb: $a0
    jr z, jr_0c2_62ce                             ; $62cc: $28 $00

jr_0c2_62ce:
    nop                                           ; $62ce: $00
    inc de                                        ; $62cf: $13
    inc a                                         ; $62d0: $3c
    dec c                                         ; $62d1: $0d
    jr z, jr_0c2_62da                             ; $62d2: $28 $06

    inc d                                         ; $62d4: $14
    nop                                           ; $62d5: $00
    nop                                           ; $62d6: $00
    nop                                           ; $62d7: $00
    nop                                           ; $62d8: $00
    nop                                           ; $62d9: $00

jr_0c2_62da:
    nop                                           ; $62da: $00
    nop                                           ; $62db: $00
    nop                                           ; $62dc: $00
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    nop                                           ; $62e6: $00
    nop                                           ; $62e7: $00
    nop                                           ; $62e8: $00
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    nop                                           ; $62eb: $00
    nop                                           ; $62ec: $00
    nop                                           ; $62ed: $00
    nop                                           ; $62ee: $00
    nop                                           ; $62ef: $00
    nop                                           ; $62f0: $00
    nop                                           ; $62f1: $00
    nop                                           ; $62f2: $00
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00
    nop                                           ; $62f7: $00
    nop                                           ; $62f8: $00
    nop                                           ; $62f9: $00
    nop                                           ; $62fa: $00
    nop                                           ; $62fb: $00
    nop                                           ; $62fc: $00

    db $ff, $7f, $07, $14, $16, $18, $ff, $01, $00, $24, $42, $34, $a4, $44, $aa, $50
    db $aa, $50, $cf, $5c, $f4, $6c, $5a, $7d, $00, $00, $45, $20, $aa, $48, $c0, $00
    db $00, $24, $10, $18, $77, $00, $9f, $06, $00, $24, $10, $18, $77, $00, $ff, $06
    db $00, $24, $10, $18, $77, $00, $5f, $07, $00, $24, $10, $18, $77, $00, $ff, $07
    db $00, $0c, $80, $51, $ce, $72, $d7, $7f, $00, $0c, $5f, $01, $9f, $02, $ff, $5b
    db $5a, $00, $bd, $77, $40, $28, $ef, $41, $5a, $00, $bd, $77, $03, $1e, $ef, $3d
    db $1f, $00, $ff, $03, $ec, $10, $cf, $35, $9d, $13, $9f, $00, $00, $00, $80, $0d
    db $fe, $0b, $43, $38, $ff, $7f, $00, $5c, $ff, $7f, $a3, $6c, $df, $03, $60, $01
    db $73, $4e, $ae, $35, $e8, $1c, $23, $04, $a0, $3d, $20, $1d, $a0, $08, $20, $00
    db $4b, $7f, $86, $5e, $a1, $3d, $20, $1d, $5f, $3b, $18, $01, $10, $00, $03, $00
    db $f5, $7f, $67, $66, $43, $39, $00, $10, $f5, $63, $cc, $02, $83, $01, $60, $00
    db $5f, $7f, $57, $5d, $ad, $34, $03, $0c, $ff, $6b, $17, $02, $0f, $05, $20, $04
    db $01, $04, $ff, $7f, $ec, $03, $13, $00, $06, $0c, $ff, $7f, $ec, $03, $13, $00
    db $0a, $0c, $ff, $7f, $ec, $03, $13, $00, $0f, $14, $ff, $7f, $ec, $03, $13, $00

    rrca                                          ; $63dd: $0f
    ld a, h                                       ; $63de: $7c
    dec bc                                        ; $63df: $0b
    ld l, b                                       ; $63e0: $68
    rlca                                          ; $63e1: $07
    ld d, b                                       ; $63e2: $50
    inc b                                         ; $63e3: $04
    inc a                                         ; $63e4: $3c
    inc de                                        ; $63e5: $13
    nop                                           ; $63e6: $00
    inc de                                        ; $63e7: $13
    nop                                           ; $63e8: $00
    inc de                                        ; $63e9: $13
    nop                                           ; $63ea: $00
    inc de                                        ; $63eb: $13
    nop                                           ; $63ec: $00
    inc de                                        ; $63ed: $13
    nop                                           ; $63ee: $00
    inc de                                        ; $63ef: $13
    nop                                           ; $63f0: $00
    inc de                                        ; $63f1: $13
    nop                                           ; $63f2: $00
    inc de                                        ; $63f3: $13
    nop                                           ; $63f4: $00
    inc de                                        ; $63f5: $13
    nop                                           ; $63f6: $00
    inc de                                        ; $63f7: $13
    nop                                           ; $63f8: $00
    inc de                                        ; $63f9: $13
    nop                                           ; $63fa: $00
    inc de                                        ; $63fb: $13
    nop                                           ; $63fc: $00
    rst $38                                       ; $63fd: $ff
    ld a, a                                       ; $63fe: $7f
    ld a, [c]                                     ; $63ff: $f2
    ld h, [hl]                                    ; $6400: $66
    inc [hl]                                      ; $6401: $34
    ld l, e                                       ; $6402: $6b
    ld [hl], a                                    ; $6403: $77
    ld [hl], e                                    ; $6404: $73
    rlca                                          ; $6405: $07
    ld c, d                                       ; $6406: $4a
    ld c, d                                       ; $6407: $4a

jr_0c2_6408:
    ld d, d                                       ; $6408: $52
    xor [hl]                                      ; $6409: $ae
    ld e, [hl]                                    ; $640a: $5e
    sbc h                                         ; $640b: $9c
    ld [hl], e                                    ; $640c: $73
    ld h, b                                       ; $640d: $60
    add hl, hl                                    ; $640e: $29
    and e                                         ; $640f: $a3
    add hl, sp                                    ; $6410: $39
    rlca                                          ; $6411: $07
    ld c, d                                       ; $6412: $4a
    sbc h                                         ; $6413: $9c
    ld [hl], e                                    ; $6414: $73
    ld [hl], a                                    ; $6415: $77
    ld [hl], e                                    ; $6416: $73
    call nc, Call_0c2_6f5a                        ; $6417: $d4 $5a $6f
    ld b, [hl]                                    ; $641a: $46
    dec bc                                        ; $641b: $0b
    ld l, $0b                                     ; $641c: $2e $0b
    ld l, $ba                                     ; $641e: $2e $ba
    inc b                                         ; $6420: $04
    ld [de], a                                    ; $6421: $12
    inc b                                         ; $6422: $04
    ld b, $00                                     ; $6423: $06 $00
    dec bc                                        ; $6425: $0b
    ld l, $7b                                     ; $6426: $2e $7b
    ld l, e                                       ; $6428: $6b
    ld l, h                                       ; $6429: $6c
    add hl, hl                                    ; $642a: $29
    ld b, h                                       ; $642b: $44
    inc b                                         ; $642c: $04
    ld [de], a                                    ; $642d: $12
    ld [$0255], sp                                ; $642e: $08 $55 $02
    ld c, l                                       ; $6431: $4d
    dec h                                         ; $6432: $25
    nop                                           ; $6433: $00
    ld [$318c], sp                                ; $6434: $08 $8c $31
    ld [hl], a                                    ; $6437: $77
    ld [hl], e                                    ; $6438: $73
    ld b, e                                       ; $6439: $43
    ld e, [hl]                                    ; $643a: $5e
    push hl                                       ; $643b: $e5
    ld b, h                                       ; $643c: $44
    and h                                         ; $643d: $a4
    jr jr_0c2_6408                                ; $643e: $18 $c8

    inc c                                         ; $6440: $0c
    dec c                                         ; $6441: $0d
    dec b                                         ; $6442: $05
    ld [hl], b                                    ; $6443: $70
    ld de, $1170                                  ; $6444: $11 $70 $11
    db $d3                                        ; $6447: $d3
    ld hl, $3256                                  ; $6448: $21 $56 $32
    cp d                                          ; $644b: $ba
    ld b, d                                       ; $644c: $42
    cp d                                          ; $644d: $ba
    ld b, d                                       ; $644e: $42
    ld h, b                                       ; $644f: $60
    dec d                                         ; $6450: $15
    inc hl                                        ; $6451: $23
    ld [de], a                                    ; $6452: $12
    ret nc                                        ; $6453: $d0

    ld [hl+], a                                   ; $6454: $22
    adc h                                         ; $6455: $8c
    ld sp, $0ce0                                  ; $6456: $31 $e0 $0c
    and h                                         ; $6459: $a4
    dec d                                         ; $645a: $15
    pop af                                        ; $645b: $f1
    ld h, $0b                                     ; $645c: $26 $0b
    ld l, $ba                                     ; $645e: $2e $ba
    inc b                                         ; $6460: $04
    ld [de], a                                    ; $6461: $12
    inc b                                         ; $6462: $04
    ld b, $00                                     ; $6463: $06 $00
    dec bc                                        ; $6465: $0b
    ld l, $7b                                     ; $6466: $2e $7b
    ld l, e                                       ; $6468: $6b
    ld l, h                                       ; $6469: $6c
    add hl, hl                                    ; $646a: $29
    ld b, h                                       ; $646b: $44
    inc b                                         ; $646c: $04
    ld [de], a                                    ; $646d: $12
    ld [$0255], sp                                ; $646e: $08 $55 $02
    ld c, l                                       ; $6471: $4d
    dec h                                         ; $6472: $25
    nop                                           ; $6473: $00
    ld [$318c], sp                                ; $6474: $08 $8c $31
    ld [hl], a                                    ; $6477: $77
    ld [hl], e                                    ; $6478: $73
    ld b, e                                       ; $6479: $43
    ld e, [hl]                                    ; $647a: $5e
    push hl                                       ; $647b: $e5
    ld b, h                                       ; $647c: $44

    db $01, $04, $ff, $7f, $4e, $39, $13, $00, $06, $0c, $ff, $7f, $13, $00, $13, $00
    db $0a, $0c, $ff, $7f, $13, $00, $13, $00, $0e, $14, $ff, $7b, $73, $3d, $0b, $4c
    db $01, $00, $b4, $60, $5f, $03, $5b, $01, $00, $00, $5f, $03, $54, $01, $45, $00
    db $00, $00, $5f, $03, $44, $08, $01, $00, $00, $00, $5f, $03, $10, $01, $77, $01

    ld bc, $ff04                                  ; $64bd: $01 $04 $ff
    ld a, a                                       ; $64c0: $7f
    ld c, [hl]                                    ; $64c1: $4e
    add hl, sp                                    ; $64c2: $39
    inc de                                        ; $64c3: $13
    nop                                           ; $64c4: $00
    ld b, $0c                                     ; $64c5: $06 $0c
    rst $38                                       ; $64c7: $ff
    ld a, a                                       ; $64c8: $7f
    inc de                                        ; $64c9: $13
    nop                                           ; $64ca: $00
    inc de                                        ; $64cb: $13
    nop                                           ; $64cc: $00
    ld a, [bc]                                    ; $64cd: $0a
    inc c                                         ; $64ce: $0c
    rst $38                                       ; $64cf: $ff
    ld a, a                                       ; $64d0: $7f
    inc de                                        ; $64d1: $13
    nop                                           ; $64d2: $00
    inc de                                        ; $64d3: $13
    nop                                           ; $64d4: $00
    ld c, $14                                     ; $64d5: $0e $14
    rst $38                                       ; $64d7: $ff
    ld a, e                                       ; $64d8: $7b
    ld [hl], e                                    ; $64d9: $73
    dec a                                         ; $64da: $3d
    dec bc                                        ; $64db: $0b
    ld c, h                                       ; $64dc: $4c

    db $00, $3c, $ff, $7f, $3f, $03, $df, $00, $13, $00, $13, $00, $13, $00, $13, $00
    db $20, $01, $ec, $03, $77, $01, $ff, $22, $0a, $4c, $03, $20, $ba, $14, $0e, $14

    ld bc, $ff04                                  ; $64fd: $01 $04 $ff
    ld a, a                                       ; $6500: $7f
    ld c, [hl]                                    ; $6501: $4e
    add hl, sp                                    ; $6502: $39
    inc de                                        ; $6503: $13
    nop                                           ; $6504: $00
    ld b, $0c                                     ; $6505: $06 $0c
    rst $38                                       ; $6507: $ff
    ld a, a                                       ; $6508: $7f
    inc de                                        ; $6509: $13
    nop                                           ; $650a: $00
    inc de                                        ; $650b: $13
    nop                                           ; $650c: $00
    ld a, [bc]                                    ; $650d: $0a
    inc c                                         ; $650e: $0c
    rst $38                                       ; $650f: $ff
    ld a, a                                       ; $6510: $7f

Jump_0c2_6511:
    inc de                                        ; $6511: $13
    nop                                           ; $6512: $00
    inc de                                        ; $6513: $13
    nop                                           ; $6514: $00
    ld c, $14                                     ; $6515: $0e $14
    rst $38                                       ; $6517: $ff
    ld a, e                                       ; $6518: $7b
    ld [hl], a                                    ; $6519: $77
    dec a                                         ; $651a: $3d
    dec bc                                        ; $651b: $0b
    ld c, h                                       ; $651c: $4c
    rrca                                          ; $651d: $0f
    ld a, h                                       ; $651e: $7c
    dec bc                                        ; $651f: $0b
    ld l, b                                       ; $6520: $68
    rlca                                          ; $6521: $07
    ld d, b                                       ; $6522: $50
    inc b                                         ; $6523: $04
    inc a                                         ; $6524: $3c
    inc de                                        ; $6525: $13
    nop                                           ; $6526: $00
    inc de                                        ; $6527: $13
    nop                                           ; $6528: $00
    inc de                                        ; $6529: $13
    nop                                           ; $652a: $00
    inc de                                        ; $652b: $13
    nop                                           ; $652c: $00
    inc de                                        ; $652d: $13
    nop                                           ; $652e: $00
    inc de                                        ; $652f: $13
    nop                                           ; $6530: $00
    inc de                                        ; $6531: $13
    nop                                           ; $6532: $00
    inc de                                        ; $6533: $13

jr_0c2_6534:
    nop                                           ; $6534: $00
    ld a, [bc]                                    ; $6535: $0a
    ld c, h                                       ; $6536: $4c
    inc bc                                        ; $6537: $03
    jr nz, @-$44                                  ; $6538: $20 $ba

    inc d                                         ; $653a: $14
    ld c, $14                                     ; $653b: $0e $14
    ld bc, $ff04                                  ; $653d: $01 $04 $ff
    ld a, a                                       ; $6540: $7f
    ld c, [hl]                                    ; $6541: $4e
    add hl, sp                                    ; $6542: $39
    inc de                                        ; $6543: $13
    nop                                           ; $6544: $00
    ld b, $0c                                     ; $6545: $06 $0c
    rst $38                                       ; $6547: $ff
    ld a, a                                       ; $6548: $7f
    inc de                                        ; $6549: $13
    nop                                           ; $654a: $00
    inc de                                        ; $654b: $13
    nop                                           ; $654c: $00
    ld a, [bc]                                    ; $654d: $0a
    inc c                                         ; $654e: $0c
    rst $38                                       ; $654f: $ff
    ld a, a                                       ; $6550: $7f
    inc de                                        ; $6551: $13
    nop                                           ; $6552: $00
    inc de                                        ; $6553: $13
    nop                                           ; $6554: $00
    ld c, $14                                     ; $6555: $0e $14
    rst $38                                       ; $6557: $ff
    ld a, e                                       ; $6558: $7b
    ld [hl], a                                    ; $6559: $77
    dec a                                         ; $655a: $3d
    dec bc                                        ; $655b: $0b
    ld c, h                                       ; $655c: $4c
    rrca                                          ; $655d: $0f
    ld a, h                                       ; $655e: $7c
    dec bc                                        ; $655f: $0b
    ld l, b                                       ; $6560: $68
    rlca                                          ; $6561: $07
    ld d, b                                       ; $6562: $50
    inc b                                         ; $6563: $04
    inc a                                         ; $6564: $3c
    inc de                                        ; $6565: $13
    nop                                           ; $6566: $00
    inc de                                        ; $6567: $13
    nop                                           ; $6568: $00
    inc de                                        ; $6569: $13
    nop                                           ; $656a: $00
    inc de                                        ; $656b: $13
    nop                                           ; $656c: $00
    inc de                                        ; $656d: $13
    nop                                           ; $656e: $00
    inc de                                        ; $656f: $13
    nop                                           ; $6570: $00
    inc de                                        ; $6571: $13
    nop                                           ; $6572: $00
    inc de                                        ; $6573: $13

jr_0c2_6574:
    nop                                           ; $6574: $00
    ld a, [bc]                                    ; $6575: $0a
    ld c, h                                       ; $6576: $4c
    inc bc                                        ; $6577: $03
    jr nz, jr_0c2_6534                            ; $6578: $20 $ba

    inc d                                         ; $657a: $14
    ld c, $14                                     ; $657b: $0e $14
    ld bc, $ff04                                  ; $657d: $01 $04 $ff
    ld a, a                                       ; $6580: $7f
    ld c, [hl]                                    ; $6581: $4e
    add hl, sp                                    ; $6582: $39
    inc de                                        ; $6583: $13
    nop                                           ; $6584: $00
    ld b, $0c                                     ; $6585: $06 $0c
    rst $38                                       ; $6587: $ff
    ld a, a                                       ; $6588: $7f
    inc de                                        ; $6589: $13
    nop                                           ; $658a: $00
    inc de                                        ; $658b: $13
    nop                                           ; $658c: $00
    ld a, [bc]                                    ; $658d: $0a
    inc c                                         ; $658e: $0c
    rst $38                                       ; $658f: $ff
    ld a, a                                       ; $6590: $7f
    inc de                                        ; $6591: $13
    nop                                           ; $6592: $00
    inc de                                        ; $6593: $13
    nop                                           ; $6594: $00
    ld c, $14                                     ; $6595: $0e $14
    rst $38                                       ; $6597: $ff
    ld a, e                                       ; $6598: $7b
    ld [hl], a                                    ; $6599: $77
    dec a                                         ; $659a: $3d
    dec bc                                        ; $659b: $0b
    ld c, h                                       ; $659c: $4c
    rrca                                          ; $659d: $0f
    ld a, h                                       ; $659e: $7c
    dec bc                                        ; $659f: $0b
    ld l, b                                       ; $65a0: $68
    rlca                                          ; $65a1: $07
    ld d, b                                       ; $65a2: $50
    inc b                                         ; $65a3: $04
    inc a                                         ; $65a4: $3c
    inc de                                        ; $65a5: $13
    nop                                           ; $65a6: $00
    inc de                                        ; $65a7: $13
    nop                                           ; $65a8: $00
    inc de                                        ; $65a9: $13
    nop                                           ; $65aa: $00
    inc de                                        ; $65ab: $13
    nop                                           ; $65ac: $00
    inc de                                        ; $65ad: $13
    nop                                           ; $65ae: $00
    inc de                                        ; $65af: $13
    nop                                           ; $65b0: $00
    inc de                                        ; $65b1: $13
    nop                                           ; $65b2: $00
    inc de                                        ; $65b3: $13

jr_0c2_65b4:
    nop                                           ; $65b4: $00
    ld a, [bc]                                    ; $65b5: $0a
    ld c, h                                       ; $65b6: $4c
    inc bc                                        ; $65b7: $03
    jr nz, jr_0c2_6574                            ; $65b8: $20 $ba

    inc d                                         ; $65ba: $14
    ld c, $14                                     ; $65bb: $0e $14
    ld bc, $ff04                                  ; $65bd: $01 $04 $ff
    ld a, a                                       ; $65c0: $7f
    ld c, [hl]                                    ; $65c1: $4e
    add hl, sp                                    ; $65c2: $39
    inc de                                        ; $65c3: $13
    nop                                           ; $65c4: $00
    ld b, $0c                                     ; $65c5: $06 $0c
    rst $38                                       ; $65c7: $ff
    ld a, a                                       ; $65c8: $7f
    inc de                                        ; $65c9: $13
    nop                                           ; $65ca: $00
    inc de                                        ; $65cb: $13
    nop                                           ; $65cc: $00
    ld a, [bc]                                    ; $65cd: $0a
    inc c                                         ; $65ce: $0c
    rst $38                                       ; $65cf: $ff
    ld a, a                                       ; $65d0: $7f
    inc de                                        ; $65d1: $13
    nop                                           ; $65d2: $00
    inc de                                        ; $65d3: $13
    nop                                           ; $65d4: $00
    ld c, $14                                     ; $65d5: $0e $14
    rst $38                                       ; $65d7: $ff
    ld a, e                                       ; $65d8: $7b
    ld [hl], a                                    ; $65d9: $77
    dec a                                         ; $65da: $3d
    dec bc                                        ; $65db: $0b
    ld c, h                                       ; $65dc: $4c
    rrca                                          ; $65dd: $0f
    ld a, h                                       ; $65de: $7c
    dec bc                                        ; $65df: $0b
    ld l, b                                       ; $65e0: $68
    rlca                                          ; $65e1: $07
    ld d, b                                       ; $65e2: $50
    inc b                                         ; $65e3: $04
    inc a                                         ; $65e4: $3c
    inc de                                        ; $65e5: $13
    nop                                           ; $65e6: $00
    inc de                                        ; $65e7: $13
    nop                                           ; $65e8: $00
    inc de                                        ; $65e9: $13
    nop                                           ; $65ea: $00
    inc de                                        ; $65eb: $13
    nop                                           ; $65ec: $00
    inc de                                        ; $65ed: $13
    nop                                           ; $65ee: $00
    inc de                                        ; $65ef: $13
    nop                                           ; $65f0: $00
    inc de                                        ; $65f1: $13
    nop                                           ; $65f2: $00
    inc de                                        ; $65f3: $13

jr_0c2_65f4:
    nop                                           ; $65f4: $00
    ld a, [bc]                                    ; $65f5: $0a
    ld c, h                                       ; $65f6: $4c
    inc bc                                        ; $65f7: $03
    jr nz, jr_0c2_65b4                            ; $65f8: $20 $ba

    inc d                                         ; $65fa: $14
    ld c, $14                                     ; $65fb: $0e $14
    ld bc, $ff04                                  ; $65fd: $01 $04 $ff
    ld a, a                                       ; $6600: $7f
    ld c, [hl]                                    ; $6601: $4e
    add hl, sp                                    ; $6602: $39
    inc de                                        ; $6603: $13
    nop                                           ; $6604: $00
    ld b, $0c                                     ; $6605: $06 $0c
    rst $38                                       ; $6607: $ff
    ld a, a                                       ; $6608: $7f
    inc de                                        ; $6609: $13
    nop                                           ; $660a: $00
    inc de                                        ; $660b: $13
    nop                                           ; $660c: $00
    ld a, [bc]                                    ; $660d: $0a
    inc c                                         ; $660e: $0c
    rst $38                                       ; $660f: $ff
    ld a, a                                       ; $6610: $7f
    inc de                                        ; $6611: $13
    nop                                           ; $6612: $00
    inc de                                        ; $6613: $13
    nop                                           ; $6614: $00
    ld c, $14                                     ; $6615: $0e $14
    rst $38                                       ; $6617: $ff
    ld a, e                                       ; $6618: $7b
    ld [hl], a                                    ; $6619: $77
    dec a                                         ; $661a: $3d
    dec bc                                        ; $661b: $0b
    ld c, h                                       ; $661c: $4c
    rrca                                          ; $661d: $0f
    ld a, h                                       ; $661e: $7c
    dec bc                                        ; $661f: $0b
    ld l, b                                       ; $6620: $68
    rlca                                          ; $6621: $07
    ld d, b                                       ; $6622: $50
    inc b                                         ; $6623: $04
    inc a                                         ; $6624: $3c
    inc de                                        ; $6625: $13
    nop                                           ; $6626: $00
    inc de                                        ; $6627: $13
    nop                                           ; $6628: $00
    inc de                                        ; $6629: $13
    nop                                           ; $662a: $00
    inc de                                        ; $662b: $13
    nop                                           ; $662c: $00
    inc de                                        ; $662d: $13
    nop                                           ; $662e: $00
    inc de                                        ; $662f: $13
    nop                                           ; $6630: $00
    inc de                                        ; $6631: $13
    nop                                           ; $6632: $00
    inc de                                        ; $6633: $13

jr_0c2_6634:
    nop                                           ; $6634: $00
    ld a, [bc]                                    ; $6635: $0a
    ld c, h                                       ; $6636: $4c
    inc bc                                        ; $6637: $03
    jr nz, jr_0c2_65f4                            ; $6638: $20 $ba

    inc d                                         ; $663a: $14
    ld c, $14                                     ; $663b: $0e $14
    ld bc, $ff04                                  ; $663d: $01 $04 $ff
    ld a, a                                       ; $6640: $7f
    ld c, [hl]                                    ; $6641: $4e
    add hl, sp                                    ; $6642: $39
    inc de                                        ; $6643: $13
    nop                                           ; $6644: $00
    ld b, $0c                                     ; $6645: $06 $0c
    rst $38                                       ; $6647: $ff
    ld a, a                                       ; $6648: $7f
    inc de                                        ; $6649: $13
    nop                                           ; $664a: $00
    inc de                                        ; $664b: $13
    nop                                           ; $664c: $00
    ld a, [bc]                                    ; $664d: $0a
    inc c                                         ; $664e: $0c
    rst $38                                       ; $664f: $ff
    ld a, a                                       ; $6650: $7f
    inc de                                        ; $6651: $13
    nop                                           ; $6652: $00
    inc de                                        ; $6653: $13
    nop                                           ; $6654: $00
    ld c, $14                                     ; $6655: $0e $14
    rst $38                                       ; $6657: $ff
    ld a, e                                       ; $6658: $7b
    ld [hl], a                                    ; $6659: $77
    dec a                                         ; $665a: $3d
    dec bc                                        ; $665b: $0b
    ld c, h                                       ; $665c: $4c
    rrca                                          ; $665d: $0f
    ld a, h                                       ; $665e: $7c
    dec bc                                        ; $665f: $0b
    ld l, b                                       ; $6660: $68
    rlca                                          ; $6661: $07
    ld d, b                                       ; $6662: $50
    inc b                                         ; $6663: $04
    inc a                                         ; $6664: $3c
    inc de                                        ; $6665: $13
    nop                                           ; $6666: $00
    inc de                                        ; $6667: $13
    nop                                           ; $6668: $00
    inc de                                        ; $6669: $13
    nop                                           ; $666a: $00
    inc de                                        ; $666b: $13
    nop                                           ; $666c: $00
    inc de                                        ; $666d: $13
    nop                                           ; $666e: $00
    inc de                                        ; $666f: $13
    nop                                           ; $6670: $00
    inc de                                        ; $6671: $13
    nop                                           ; $6672: $00
    inc de                                        ; $6673: $13

jr_0c2_6674:
    nop                                           ; $6674: $00
    ld a, [bc]                                    ; $6675: $0a
    ld c, h                                       ; $6676: $4c
    inc bc                                        ; $6677: $03
    jr nz, jr_0c2_6634                            ; $6678: $20 $ba

    inc d                                         ; $667a: $14
    ld c, $14                                     ; $667b: $0e $14
    ld bc, $ff04                                  ; $667d: $01 $04 $ff
    ld a, a                                       ; $6680: $7f
    ld c, [hl]                                    ; $6681: $4e
    add hl, sp                                    ; $6682: $39
    inc de                                        ; $6683: $13
    nop                                           ; $6684: $00
    ld b, $0c                                     ; $6685: $06 $0c
    rst $38                                       ; $6687: $ff
    ld a, a                                       ; $6688: $7f
    inc de                                        ; $6689: $13
    nop                                           ; $668a: $00
    inc de                                        ; $668b: $13
    nop                                           ; $668c: $00
    ld a, [bc]                                    ; $668d: $0a
    inc c                                         ; $668e: $0c
    rst $38                                       ; $668f: $ff
    ld a, a                                       ; $6690: $7f
    inc de                                        ; $6691: $13
    nop                                           ; $6692: $00
    inc de                                        ; $6693: $13
    nop                                           ; $6694: $00
    ld c, $14                                     ; $6695: $0e $14
    rst $38                                       ; $6697: $ff
    ld a, e                                       ; $6698: $7b
    ld [hl], a                                    ; $6699: $77
    dec a                                         ; $669a: $3d
    dec bc                                        ; $669b: $0b
    ld c, h                                       ; $669c: $4c
    rrca                                          ; $669d: $0f
    ld a, h                                       ; $669e: $7c
    dec bc                                        ; $669f: $0b
    ld l, b                                       ; $66a0: $68
    rlca                                          ; $66a1: $07
    ld d, b                                       ; $66a2: $50
    inc b                                         ; $66a3: $04
    inc a                                         ; $66a4: $3c
    inc de                                        ; $66a5: $13
    nop                                           ; $66a6: $00
    inc de                                        ; $66a7: $13
    nop                                           ; $66a8: $00
    inc de                                        ; $66a9: $13
    nop                                           ; $66aa: $00
    inc de                                        ; $66ab: $13
    nop                                           ; $66ac: $00
    inc de                                        ; $66ad: $13
    nop                                           ; $66ae: $00
    inc de                                        ; $66af: $13
    nop                                           ; $66b0: $00
    inc de                                        ; $66b1: $13
    nop                                           ; $66b2: $00
    inc de                                        ; $66b3: $13

jr_0c2_66b4:
    nop                                           ; $66b4: $00
    ld a, [bc]                                    ; $66b5: $0a
    ld c, h                                       ; $66b6: $4c
    inc bc                                        ; $66b7: $03
    jr nz, jr_0c2_6674                            ; $66b8: $20 $ba

    inc d                                         ; $66ba: $14
    ld c, $14                                     ; $66bb: $0e $14
    ld bc, $ff04                                  ; $66bd: $01 $04 $ff
    ld a, a                                       ; $66c0: $7f
    ld c, [hl]                                    ; $66c1: $4e
    add hl, sp                                    ; $66c2: $39
    inc de                                        ; $66c3: $13
    nop                                           ; $66c4: $00
    ld b, $0c                                     ; $66c5: $06 $0c
    rst $38                                       ; $66c7: $ff
    ld a, a                                       ; $66c8: $7f
    inc de                                        ; $66c9: $13
    nop                                           ; $66ca: $00
    inc de                                        ; $66cb: $13
    nop                                           ; $66cc: $00
    ld a, [bc]                                    ; $66cd: $0a
    inc c                                         ; $66ce: $0c
    rst $38                                       ; $66cf: $ff
    ld a, a                                       ; $66d0: $7f
    inc de                                        ; $66d1: $13
    nop                                           ; $66d2: $00
    inc de                                        ; $66d3: $13
    nop                                           ; $66d4: $00
    ld c, $14                                     ; $66d5: $0e $14
    rst $38                                       ; $66d7: $ff
    ld a, e                                       ; $66d8: $7b
    ld [hl], a                                    ; $66d9: $77
    dec a                                         ; $66da: $3d
    dec bc                                        ; $66db: $0b
    ld c, h                                       ; $66dc: $4c
    rrca                                          ; $66dd: $0f
    ld a, h                                       ; $66de: $7c
    dec bc                                        ; $66df: $0b
    ld l, b                                       ; $66e0: $68
    rlca                                          ; $66e1: $07
    ld d, b                                       ; $66e2: $50
    inc b                                         ; $66e3: $04
    inc a                                         ; $66e4: $3c
    inc de                                        ; $66e5: $13
    nop                                           ; $66e6: $00
    inc de                                        ; $66e7: $13
    nop                                           ; $66e8: $00
    inc de                                        ; $66e9: $13
    nop                                           ; $66ea: $00
    inc de                                        ; $66eb: $13
    nop                                           ; $66ec: $00
    inc de                                        ; $66ed: $13
    nop                                           ; $66ee: $00
    inc de                                        ; $66ef: $13
    nop                                           ; $66f0: $00
    inc de                                        ; $66f1: $13
    nop                                           ; $66f2: $00
    inc de                                        ; $66f3: $13

jr_0c2_66f4:
    nop                                           ; $66f4: $00
    ld a, [bc]                                    ; $66f5: $0a
    ld c, h                                       ; $66f6: $4c
    inc bc                                        ; $66f7: $03
    jr nz, jr_0c2_66b4                            ; $66f8: $20 $ba

    inc d                                         ; $66fa: $14
    ld c, $14                                     ; $66fb: $0e $14
    ld bc, $ff04                                  ; $66fd: $01 $04 $ff
    ld a, a                                       ; $6700: $7f
    ld c, [hl]                                    ; $6701: $4e
    add hl, sp                                    ; $6702: $39
    inc de                                        ; $6703: $13
    nop                                           ; $6704: $00
    ld b, $0c                                     ; $6705: $06 $0c
    rst $38                                       ; $6707: $ff
    ld a, a                                       ; $6708: $7f
    inc de                                        ; $6709: $13
    nop                                           ; $670a: $00
    inc de                                        ; $670b: $13
    nop                                           ; $670c: $00
    ld a, [bc]                                    ; $670d: $0a
    inc c                                         ; $670e: $0c
    rst $38                                       ; $670f: $ff
    ld a, a                                       ; $6710: $7f
    inc de                                        ; $6711: $13
    nop                                           ; $6712: $00
    inc de                                        ; $6713: $13
    nop                                           ; $6714: $00
    ld c, $14                                     ; $6715: $0e $14
    rst $38                                       ; $6717: $ff
    ld a, e                                       ; $6718: $7b
    ld [hl], a                                    ; $6719: $77
    dec a                                         ; $671a: $3d
    dec bc                                        ; $671b: $0b
    ld c, h                                       ; $671c: $4c
    rrca                                          ; $671d: $0f
    ld a, h                                       ; $671e: $7c
    dec bc                                        ; $671f: $0b
    ld l, b                                       ; $6720: $68
    rlca                                          ; $6721: $07
    ld d, b                                       ; $6722: $50
    inc b                                         ; $6723: $04
    inc a                                         ; $6724: $3c
    inc de                                        ; $6725: $13
    nop                                           ; $6726: $00
    inc de                                        ; $6727: $13
    nop                                           ; $6728: $00
    inc de                                        ; $6729: $13
    nop                                           ; $672a: $00
    inc de                                        ; $672b: $13
    nop                                           ; $672c: $00
    inc de                                        ; $672d: $13
    nop                                           ; $672e: $00
    inc de                                        ; $672f: $13
    nop                                           ; $6730: $00
    inc de                                        ; $6731: $13
    nop                                           ; $6732: $00
    inc de                                        ; $6733: $13

jr_0c2_6734:
    nop                                           ; $6734: $00
    ld a, [bc]                                    ; $6735: $0a
    ld c, h                                       ; $6736: $4c
    inc bc                                        ; $6737: $03
    jr nz, jr_0c2_66f4                            ; $6738: $20 $ba

    inc d                                         ; $673a: $14
    ld c, $14                                     ; $673b: $0e $14
    ld bc, $ff04                                  ; $673d: $01 $04 $ff
    ld a, a                                       ; $6740: $7f
    ld c, [hl]                                    ; $6741: $4e
    add hl, sp                                    ; $6742: $39
    inc de                                        ; $6743: $13
    nop                                           ; $6744: $00
    ld b, $0c                                     ; $6745: $06 $0c
    rst $38                                       ; $6747: $ff
    ld a, a                                       ; $6748: $7f
    inc de                                        ; $6749: $13
    nop                                           ; $674a: $00
    inc de                                        ; $674b: $13
    nop                                           ; $674c: $00
    ld a, [bc]                                    ; $674d: $0a
    inc c                                         ; $674e: $0c
    rst $38                                       ; $674f: $ff
    ld a, a                                       ; $6750: $7f
    inc de                                        ; $6751: $13
    nop                                           ; $6752: $00
    inc de                                        ; $6753: $13
    nop                                           ; $6754: $00
    ld c, $14                                     ; $6755: $0e $14
    rst $38                                       ; $6757: $ff
    ld a, e                                       ; $6758: $7b
    ld [hl], a                                    ; $6759: $77
    dec a                                         ; $675a: $3d
    dec bc                                        ; $675b: $0b
    ld c, h                                       ; $675c: $4c
    rrca                                          ; $675d: $0f
    ld a, h                                       ; $675e: $7c
    dec bc                                        ; $675f: $0b
    ld l, b                                       ; $6760: $68
    rlca                                          ; $6761: $07
    ld d, b                                       ; $6762: $50
    inc b                                         ; $6763: $04
    inc a                                         ; $6764: $3c
    inc de                                        ; $6765: $13
    nop                                           ; $6766: $00
    inc de                                        ; $6767: $13
    nop                                           ; $6768: $00
    inc de                                        ; $6769: $13
    nop                                           ; $676a: $00
    inc de                                        ; $676b: $13
    nop                                           ; $676c: $00
    inc de                                        ; $676d: $13
    nop                                           ; $676e: $00
    inc de                                        ; $676f: $13
    nop                                           ; $6770: $00
    inc de                                        ; $6771: $13
    nop                                           ; $6772: $00
    inc de                                        ; $6773: $13

jr_0c2_6774:
    nop                                           ; $6774: $00
    ld a, [bc]                                    ; $6775: $0a
    ld c, h                                       ; $6776: $4c
    inc bc                                        ; $6777: $03
    jr nz, jr_0c2_6734                            ; $6778: $20 $ba

    inc d                                         ; $677a: $14
    ld c, $14                                     ; $677b: $0e $14
    ld bc, $ff04                                  ; $677d: $01 $04 $ff
    ld a, a                                       ; $6780: $7f
    ld c, [hl]                                    ; $6781: $4e
    add hl, sp                                    ; $6782: $39
    inc de                                        ; $6783: $13
    nop                                           ; $6784: $00
    ld b, $0c                                     ; $6785: $06 $0c
    rst $38                                       ; $6787: $ff
    ld a, a                                       ; $6788: $7f
    inc de                                        ; $6789: $13
    nop                                           ; $678a: $00
    inc de                                        ; $678b: $13
    nop                                           ; $678c: $00
    ld a, [bc]                                    ; $678d: $0a
    inc c                                         ; $678e: $0c
    rst $38                                       ; $678f: $ff
    ld a, a                                       ; $6790: $7f
    inc de                                        ; $6791: $13
    nop                                           ; $6792: $00
    inc de                                        ; $6793: $13
    nop                                           ; $6794: $00
    ld c, $14                                     ; $6795: $0e $14
    rst $38                                       ; $6797: $ff
    ld a, e                                       ; $6798: $7b
    ld [hl], a                                    ; $6799: $77
    dec a                                         ; $679a: $3d
    dec bc                                        ; $679b: $0b
    ld c, h                                       ; $679c: $4c
    rrca                                          ; $679d: $0f
    ld a, h                                       ; $679e: $7c
    dec bc                                        ; $679f: $0b
    ld l, b                                       ; $67a0: $68
    rlca                                          ; $67a1: $07
    ld d, b                                       ; $67a2: $50
    inc b                                         ; $67a3: $04
    inc a                                         ; $67a4: $3c
    inc de                                        ; $67a5: $13
    nop                                           ; $67a6: $00
    inc de                                        ; $67a7: $13
    nop                                           ; $67a8: $00
    inc de                                        ; $67a9: $13
    nop                                           ; $67aa: $00
    inc de                                        ; $67ab: $13
    nop                                           ; $67ac: $00
    inc de                                        ; $67ad: $13
    nop                                           ; $67ae: $00
    inc de                                        ; $67af: $13
    nop                                           ; $67b0: $00
    inc de                                        ; $67b1: $13
    nop                                           ; $67b2: $00
    inc de                                        ; $67b3: $13

jr_0c2_67b4:
    nop                                           ; $67b4: $00
    ld a, [bc]                                    ; $67b5: $0a
    ld c, h                                       ; $67b6: $4c
    inc bc                                        ; $67b7: $03
    jr nz, jr_0c2_6774                            ; $67b8: $20 $ba

    inc d                                         ; $67ba: $14
    ld c, $14                                     ; $67bb: $0e $14
    ld bc, $ff04                                  ; $67bd: $01 $04 $ff
    ld a, a                                       ; $67c0: $7f
    ld c, [hl]                                    ; $67c1: $4e
    add hl, sp                                    ; $67c2: $39
    inc de                                        ; $67c3: $13
    nop                                           ; $67c4: $00
    ld b, $0c                                     ; $67c5: $06 $0c
    rst $38                                       ; $67c7: $ff
    ld a, a                                       ; $67c8: $7f
    inc de                                        ; $67c9: $13
    nop                                           ; $67ca: $00
    inc de                                        ; $67cb: $13
    nop                                           ; $67cc: $00
    ld a, [bc]                                    ; $67cd: $0a
    inc c                                         ; $67ce: $0c
    rst $38                                       ; $67cf: $ff
    ld a, a                                       ; $67d0: $7f
    inc de                                        ; $67d1: $13
    nop                                           ; $67d2: $00
    inc de                                        ; $67d3: $13
    nop                                           ; $67d4: $00
    ld c, $14                                     ; $67d5: $0e $14
    rst $38                                       ; $67d7: $ff
    ld a, e                                       ; $67d8: $7b
    ld [hl], a                                    ; $67d9: $77
    dec a                                         ; $67da: $3d
    dec bc                                        ; $67db: $0b
    ld c, h                                       ; $67dc: $4c
    rrca                                          ; $67dd: $0f
    ld a, h                                       ; $67de: $7c
    dec bc                                        ; $67df: $0b
    ld l, b                                       ; $67e0: $68
    rlca                                          ; $67e1: $07
    ld d, b                                       ; $67e2: $50
    inc b                                         ; $67e3: $04
    inc a                                         ; $67e4: $3c
    inc de                                        ; $67e5: $13
    nop                                           ; $67e6: $00
    inc de                                        ; $67e7: $13
    nop                                           ; $67e8: $00
    inc de                                        ; $67e9: $13
    nop                                           ; $67ea: $00
    inc de                                        ; $67eb: $13
    nop                                           ; $67ec: $00
    inc de                                        ; $67ed: $13
    nop                                           ; $67ee: $00
    inc de                                        ; $67ef: $13
    nop                                           ; $67f0: $00
    inc de                                        ; $67f1: $13
    nop                                           ; $67f2: $00
    inc de                                        ; $67f3: $13

jr_0c2_67f4:
    nop                                           ; $67f4: $00
    ld a, [bc]                                    ; $67f5: $0a
    ld c, h                                       ; $67f6: $4c
    inc bc                                        ; $67f7: $03
    jr nz, jr_0c2_67b4                            ; $67f8: $20 $ba

    inc d                                         ; $67fa: $14
    ld c, $14                                     ; $67fb: $0e $14
    ld bc, $ff04                                  ; $67fd: $01 $04 $ff
    ld a, a                                       ; $6800: $7f
    ld c, [hl]                                    ; $6801: $4e
    add hl, sp                                    ; $6802: $39
    inc de                                        ; $6803: $13
    nop                                           ; $6804: $00
    ld b, $0c                                     ; $6805: $06 $0c
    rst $38                                       ; $6807: $ff
    ld a, a                                       ; $6808: $7f
    inc de                                        ; $6809: $13
    nop                                           ; $680a: $00
    inc de                                        ; $680b: $13
    nop                                           ; $680c: $00
    ld a, [bc]                                    ; $680d: $0a
    inc c                                         ; $680e: $0c
    rst $38                                       ; $680f: $ff
    ld a, a                                       ; $6810: $7f
    inc de                                        ; $6811: $13
    nop                                           ; $6812: $00
    inc de                                        ; $6813: $13
    nop                                           ; $6814: $00
    ld c, $14                                     ; $6815: $0e $14
    rst $38                                       ; $6817: $ff
    ld a, e                                       ; $6818: $7b
    ld [hl], a                                    ; $6819: $77
    dec a                                         ; $681a: $3d
    dec bc                                        ; $681b: $0b
    ld c, h                                       ; $681c: $4c
    rrca                                          ; $681d: $0f
    ld a, h                                       ; $681e: $7c
    dec bc                                        ; $681f: $0b
    ld l, b                                       ; $6820: $68
    rlca                                          ; $6821: $07
    ld d, b                                       ; $6822: $50
    inc b                                         ; $6823: $04
    inc a                                         ; $6824: $3c
    inc de                                        ; $6825: $13
    nop                                           ; $6826: $00
    inc de                                        ; $6827: $13
    nop                                           ; $6828: $00
    inc de                                        ; $6829: $13
    nop                                           ; $682a: $00
    inc de                                        ; $682b: $13
    nop                                           ; $682c: $00
    inc de                                        ; $682d: $13
    nop                                           ; $682e: $00
    inc de                                        ; $682f: $13
    nop                                           ; $6830: $00
    inc de                                        ; $6831: $13
    nop                                           ; $6832: $00
    inc de                                        ; $6833: $13
    nop                                           ; $6834: $00
    ld a, [bc]                                    ; $6835: $0a
    ld c, h                                       ; $6836: $4c
    inc bc                                        ; $6837: $03
    jr nz, jr_0c2_67f4                            ; $6838: $20 $ba

    inc d                                         ; $683a: $14
    ld c, $14                                     ; $683b: $0e $14
    ld bc, $ff04                                  ; $683d: $01 $04 $ff
    ld a, a                                       ; $6840: $7f
    ldh [$03], a                                  ; $6841: $e0 $03
    inc de                                        ; $6843: $13
    nop                                           ; $6844: $00
    ret nz                                        ; $6845: $c0

    nop                                           ; $6846: $00
    rst $38                                       ; $6847: $ff
    ld a, a                                       ; $6848: $7f
    inc de                                        ; $6849: $13
    nop                                           ; $684a: $00
    inc de                                        ; $684b: $13
    nop                                           ; $684c: $00
    ld b, b                                       ; $684d: $40
    ld bc, $7fff                                  ; $684e: $01 $ff $7f
    inc de                                        ; $6851: $13
    nop                                           ; $6852: $00
    inc de                                        ; $6853: $13
    nop                                           ; $6854: $00
    ret nz                                        ; $6855: $c0

    dec c                                         ; $6856: $0d
    rst $38                                       ; $6857: $ff
    ld a, a                                       ; $6858: $7f
    ld [hl], a                                    ; $6859: $77
    dec a                                         ; $685a: $3d
    dec bc                                        ; $685b: $0b
    ld c, h                                       ; $685c: $4c
    ld bc, $b400                                  ; $685d: $01 $00 $b4
    ld h, b                                       ; $6860: $60
    ld e, a                                       ; $6861: $5f
    inc bc                                        ; $6862: $03
    ld e, e                                       ; $6863: $5b
    ld bc, $0000                                  ; $6864: $01 $00 $00
    ld e, a                                       ; $6867: $5f
    inc bc                                        ; $6868: $03
    ld d, h                                       ; $6869: $54
    ld bc, $0045                                  ; $686a: $01 $45 $00
    nop                                           ; $686d: $00
    nop                                           ; $686e: $00
    ld e, a                                       ; $686f: $5f
    inc bc                                        ; $6870: $03
    ld b, h                                       ; $6871: $44
    ld [$0001], sp                                ; $6872: $08 $01 $00
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    ld e, a                                       ; $6877: $5f
    inc bc                                        ; $6878: $03
    db $10                                        ; $6879: $10
    ld bc, $0177                                  ; $687a: $01 $77 $01

    db $01, $04, $ff, $7f, $1f, $7c, $13, $00, $06, $0c, $ff, $7f, $1f, $7c, $13, $00
    db $0a, $0c, $ff, $7f, $1f, $7c, $13, $00, $0f, $14, $ff, $7f, $1f, $7c, $13, $00
    db $0f, $7c, $0b, $68, $07, $50, $04, $3c, $13, $00, $13, $00, $13, $00, $13, $00
    db $13, $00, $13, $00, $13, $00, $13, $00, $13, $00, $13, $00, $13, $00, $13, $00

    rst $38                                       ; $68bd: $ff
    ld a, a                                       ; $68be: $7f
    ld b, l                                       ; $68bf: $45
    dec l                                         ; $68c0: $2d
    rra                                           ; $68c1: $1f
    nop                                           ; $68c2: $00
    rrca                                          ; $68c3: $0f
    nop                                           ; $68c4: $00
    rst $38                                       ; $68c5: $ff
    ld a, a                                       ; $68c6: $7f
    ld b, l                                       ; $68c7: $45
    dec l                                         ; $68c8: $2d
    sub d                                         ; $68c9: $92
    ld a, a                                       ; $68ca: $7f
    ld hl, $ff72                                  ; $68cb: $21 $72 $ff
    ld a, a                                       ; $68ce: $7f
    ld b, l                                       ; $68cf: $45
    dec l                                         ; $68d0: $2d
    call nz, $276d                                ; $68d1: $c4 $6d $27
    inc a                                         ; $68d4: $3c
    rst $38                                       ; $68d5: $ff
    ld a, a                                       ; $68d6: $7f
    ld b, l                                       ; $68d7: $45
    dec l                                         ; $68d8: $2d
    and c                                         ; $68d9: $a1
    ld h, $00                                     ; $68da: $26 $00
    dec e                                         ; $68dc: $1d
    ld b, l                                       ; $68dd: $45
    dec l                                         ; $68de: $2d
    sub l                                         ; $68df: $95
    ld a, a                                       ; $68e0: $7f
    rlca                                          ; $68e1: $07
    ld b, [hl]                                    ; $68e2: $46
    add b                                         ; $68e3: $80
    db $10                                        ; $68e4: $10
    ld b, l                                       ; $68e5: $45
    dec l                                         ; $68e6: $2d
    ld e, e                                       ; $68e7: $5b
    ld c, a                                       ; $68e8: $4f
    or c                                          ; $68e9: $b1
    dec [hl]                                      ; $68ea: $35
    rlca                                          ; $68eb: $07
    inc e                                         ; $68ec: $1c
    ld b, l                                       ; $68ed: $45
    dec l                                         ; $68ee: $2d
    rst $18                                       ; $68ef: $df
    inc bc                                        ; $68f0: $03
    ld [hl], e                                    ; $68f1: $73
    ld de, $0ce9                                  ; $68f2: $11 $e9 $0c
    ld d, e                                       ; $68f5: $53
    ld [hl], a                                    ; $68f6: $77
    ld c, [hl]                                    ; $68f7: $4e
    ld d, [hl]                                    ; $68f8: $56
    ld b, l                                       ; $68f9: $45
    dec l                                         ; $68fa: $2d
    ld h, d                                       ; $68fb: $62
    inc c                                         ; $68fc: $0c

    db $ff, $7f, $00, $20, $7f, $3b, $8c, $45, $00, $20, $00, $20, $00, $20, $00, $20
    db $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20
    db $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20
    db $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20
    db $ff, $7f, $00, $20, $52, $56, $c6, $38, $00, $20, $ff, $7f, $ee, $41, $fb, $3d
    db $ed, $2c, $fd, $5e, $f4, $3d, $fb, $3d, $00, $20, $ff, $7f, $ee, $41, $fb, $42
    db $6d, $31, $7d, $5f, $74, $42, $fb, $42, $00, $20, $ff, $7f, $ef, $3d, $73, $6e
    db $29, $45, $39, $77, $30, $56, $73, $6e, $00, $20, $fb, $13, $ee, $41, $aa, $06

    nop                                           ; $697d: $00
    jr jr_0c2_69b9                                ; $697e: $18 $39

    rra                                           ; $6980: $1f
    nop                                           ; $6981: $00
    inc e                                         ; $6982: $1c
    rst $38                                       ; $6983: $ff
    ld a, a                                       ; $6984: $7f
    ld hl, $2124                                  ; $6985: $21 $24 $21
    jr z, jr_0c2_69ab                             ; $6988: $28 $21

    jr z, @+$01                                   ; $698a: $28 $ff

    ld a, a                                       ; $698c: $7f
    ld b, d                                       ; $698d: $42
    jr nc, @+$44                                  ; $698e: $30 $42

    inc [hl]                                      ; $6990: $34
    ld h, e                                       ; $6991: $63
    jr c, @+$01                                   ; $6992: $38 $ff

    ld a, a                                       ; $6994: $7f
    ld h, e                                       ; $6995: $63
    inc a                                         ; $6996: $3c
    add h                                         ; $6997: $84
    ld b, b                                       ; $6998: $40
    add h                                         ; $6999: $84
    ld b, h                                       ; $699a: $44
    rst $38                                       ; $699b: $ff
    ld a, a                                       ; $699c: $7f
    and l                                         ; $699d: $a5
    ld c, b                                       ; $699e: $48
    and l                                         ; $699f: $a5
    ld c, h                                       ; $69a0: $4c
    and l                                         ; $69a1: $a5
    ld d, b                                       ; $69a2: $50
    rst $38                                       ; $69a3: $ff
    ld a, a                                       ; $69a4: $7f
    add $58                                       ; $69a5: $c6 $58
    add $58                                       ; $69a7: $c6 $58
    rst $20                                       ; $69a9: $e7
    ld e, h                                       ; $69aa: $5c

jr_0c2_69ab:
    rst $38                                       ; $69ab: $ff
    ld a, a                                       ; $69ac: $7f
    rst $20                                       ; $69ad: $e7
    ld h, h                                       ; $69ae: $64
    ld [$0869], sp                                ; $69af: $08 $69 $08
    ld l, c                                       ; $69b2: $69
    rst $38                                       ; $69b3: $ff
    ld a, a                                       ; $69b4: $7f
    add hl, hl                                    ; $69b5: $29
    ld [hl], c                                    ; $69b6: $71
    add hl, hl                                    ; $69b7: $29
    ld [hl], l                                    ; $69b8: $75

jr_0c2_69b9:
    add hl, hl                                    ; $69b9: $29
    ld a, c                                       ; $69ba: $79
    rst $38                                       ; $69bb: $ff
    ld a, a                                       ; $69bc: $7f

    db $0e, $40, $ff, $7f, $ca, $01, $ad, $03, $0c, $40, $ff, $7f, $ca, $01, $ad, $03
    db $0a, $40, $ff, $7f, $ca, $01, $ad, $03, $08, $40, $ff, $7f, $ca, $01, $ad, $03
    db $be, $77, $2a, $7b, $0b, $56, $ec, $34, $b6, $56, $22, $5a, $03, $35, $04, $14
    db $0e, $44, $ff, $7f, $2e, $52, $66, $30, $ad, $03, $ca, $01, $16, $00, $ff, $7f

    ldh [rTMA], a                                 ; $69fd: $e0 $06
    pop bc                                        ; $69ff: $c1
    dec b                                         ; $6a00: $05
    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    ld l, [hl]                                    ; $6a03: $6e
    rla                                           ; $6a04: $17
    add b                                         ; $6a05: $80
    nop                                           ; $6a06: $00
    and d                                         ; $6a07: $a2
    dec b                                         ; $6a08: $05
    ldh [$0c], a                                  ; $6a09: $e0 $0c
    db $10                                        ; $6a0b: $10
    dec b                                         ; $6a0c: $05
    or a                                          ; $6a0d: $b7
    ld a, a                                       ; $6a0e: $7f
    jp $835d                                      ; $6a0f: $c3 $5d $83


    ld d, c                                       ; $6a12: $51
    ld h, c                                       ; $6a13: $61
    ld c, l                                       ; $6a14: $4d
    or a                                          ; $6a15: $b7
    ld a, a                                       ; $6a16: $7f
    ld c, c                                       ; $6a17: $49
    ld l, [hl]                                    ; $6a18: $6e
    rlca                                          ; $6a19: $07
    ld h, d                                       ; $6a1a: $62
    push hl                                       ; $6a1b: $e5
    ld e, l                                       ; $6a1c: $5d
    inc sp                                        ; $6a1d: $33
    inc bc                                        ; $6a1e: $03
    ld [$e402], sp                                ; $6a1f: $08 $02 $e4
    nop                                           ; $6a22: $00
    add hl, sp                                    ; $6a23: $39
    scf                                           ; $6a24: $37
    inc de                                        ; $6a25: $13
    ld a, [bc]                                    ; $6a26: $0a
    ld c, h                                       ; $6a27: $4c
    ld bc, $0087                                  ; $6a28: $01 $87 $00
    ld a, [hl-]                                   ; $6a2b: $3a
    scf                                           ; $6a2c: $37
    xor $32                                       ; $6a2d: $ee $32
    and d                                         ; $6a2f: $a2
    dec b                                         ; $6a30: $05
    ret nz                                        ; $6a31: $c0

    inc c                                         ; $6a32: $0c
    adc e                                         ; $6a33: $8b
    halt                                          ; $6a34: $76
    halt                                          ; $6a35: $76
    ld [de], a                                    ; $6a36: $12
    xor a                                         ; $6a37: $af
    ld bc, $04e7                                  ; $6a38: $01 $e7 $04
    ld a, [hl-]                                   ; $6a3b: $3a
    scf                                           ; $6a3c: $37
    nop                                           ; $6a3d: $00
    nop                                           ; $6a3e: $00
    adc c                                         ; $6a3f: $89
    ld [hl], a                                    ; $6a40: $77
    push af                                       ; $6a41: $f5
    ld a, a                                       ; $6a42: $7f
    rst $38                                       ; $6a43: $ff
    ld a, a                                       ; $6a44: $7f
    nop                                           ; $6a45: $00
    nop                                           ; $6a46: $00
    ld [hl], a                                    ; $6a47: $77
    ld a, [bc]                                    ; $6a48: $0a
    ld a, [de]                                    ; $6a49: $1a
    dec bc                                        ; $6a4a: $0b
    rst $38                                       ; $6a4b: $ff
    ld l, a                                       ; $6a4c: $6f
    nop                                           ; $6a4d: $00
    nop                                           ; $6a4e: $00
    add [hl]                                      ; $6a4f: $86
    nop                                           ; $6a50: $00
    ld a, [bc]                                    ; $6a51: $0a

jr_0c2_6a52:
    ld bc, $0190                                  ; $6a52: $01 $90 $01
    nop                                           ; $6a55: $00
    nop                                           ; $6a56: $00
    jr z, jr_0c2_6a59                             ; $6a57: $28 $00

jr_0c2_6a59:
    ld l, h                                       ; $6a59: $6c
    nop                                           ; $6a5a: $00
    rst $28                                       ; $6a5b: $ef
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    ld b, $14                                     ; $6a5f: $06 $14
    ld l, d                                       ; $6a61: $6a
    jr nz, jr_0c2_6a52                            ; $6a62: $20 $ee

    jr c, jr_0c2_6a66                             ; $6a64: $38 $00

jr_0c2_6a66:
    nop                                           ; $6a66: $00
    nop                                           ; $6a67: $00
    nop                                           ; $6a68: $00
    nop                                           ; $6a69: $00
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00
    nop                                           ; $6a70: $00
    nop                                           ; $6a71: $00
    nop                                           ; $6a72: $00
    nop                                           ; $6a73: $00
    nop                                           ; $6a74: $00
    add $18                                       ; $6a75: $c6 $18
    dec bc                                        ; $6a77: $0b
    jr nc, jr_0c2_6a8a                            ; $6a78: $30 $10

    ld b, b                                       ; $6a7a: $40
    dec d                                         ; $6a7b: $15
    ld h, h                                       ; $6a7c: $64
    cp b                                          ; $6a7d: $b8
    ld de, $5a4e                                  ; $6a7e: $11 $4e $5a
    ld b, e                                       ; $6a81: $43
    ld sp, $0000                                  ; $6a82: $31 $00 $00
    ld b, e                                       ; $6a85: $43
    ld sp, $26bf                                  ; $6a86: $31 $bf $26
    ld e, b                                       ; $6a89: $58

jr_0c2_6a8a:
    ld de, $0000                                  ; $6a8a: $11 $00 $00
    rst $20                                       ; $6a8d: $e7
    ld a, b                                       ; $6a8e: $78
    nop                                           ; $6a8f: $00
    ld h, b                                       ; $6a90: $60
    ld hl, $0034                                  ; $6a91: $21 $34 $00
    nop                                           ; $6a94: $00
    ld [hl], a                                    ; $6a95: $77
    jr jr_0c2_6aa6                                ; $6a96: $18 $0e

    nop                                           ; $6a98: $00
    rlca                                          ; $6a99: $07
    inc d                                         ; $6a9a: $14
    nop                                           ; $6a9b: $00
    nop                                           ; $6a9c: $00
    ld b, e                                       ; $6a9d: $43
    ld sp, $3e58                                  ; $6a9e: $31 $58 $3e
    ld [hl], l                                    ; $6aa1: $75
    dec e                                         ; $6aa2: $1d
    nop                                           ; $6aa3: $00
    nop                                           ; $6aa4: $00
    cp a                                          ; $6aa5: $bf

jr_0c2_6aa6:
    ld h, $dc                                     ; $6aa6: $26 $dc
    ld c, d                                       ; $6aa8: $4a
    or a                                          ; $6aa9: $b7
    ld hl, $0000                                  ; $6aaa: $21 $00 $00
    cp a                                          ; $6aad: $bf
    ld h, $58                                     ; $6aae: $26 $58
    ld de, $3143                                  ; $6ab0: $11 $43 $31
    nop                                           ; $6ab3: $00
    nop                                           ; $6ab4: $00
    cp a                                          ; $6ab5: $bf
    ld h, $4e                                     ; $6ab6: $26 $4e
    ld e, d                                       ; $6ab8: $5a
    ld b, e                                       ; $6ab9: $43
    ld sp, $0000                                  ; $6aba: $31 $00 $00
    rst $38                                       ; $6abd: $ff
    ld a, a                                       ; $6abe: $7f
    nop                                           ; $6abf: $00
    jr nz, jr_0c2_6b14                            ; $6ac0: $20 $52

    ld d, [hl]                                    ; $6ac2: $56
    add $38                                       ; $6ac3: $c6 $38
    nop                                           ; $6ac5: $00
    jr nz, @+$01                                  ; $6ac6: $20 $ff

    ld a, a                                       ; $6ac8: $7f
    xor $41                                       ; $6ac9: $ee $41
    nop                                           ; $6acb: $00
    ld a, [hl]                                    ; $6acc: $7e
    rst $28                                       ; $6acd: $ef
    dec a                                         ; $6ace: $3d
    rst $28                                       ; $6acf: $ef
    dec a                                         ; $6ad0: $3d
    rst $28                                       ; $6ad1: $ef
    dec a                                         ; $6ad2: $3d
    rst $28                                       ; $6ad3: $ef
    dec a                                         ; $6ad4: $3d
    nop                                           ; $6ad5: $00
    jr nz, @+$01                                  ; $6ad6: $20 $ff

    ld a, a                                       ; $6ad8: $7f
    rst $28                                       ; $6ad9: $ef
    ld b, c                                       ; $6ada: $41
    cp b                                          ; $6adb: $b8
    dec c                                         ; $6adc: $0d
    jp nz, $fb02                                  ; $6add: $c2 $02 $fb

    ld l, a                                       ; $6ae0: $6f
    and b                                         ; $6ae1: $a0
    nop                                           ; $6ae2: $00
    nop                                           ; $6ae3: $00
    ld a, [hl]                                    ; $6ae4: $7e
    rrca                                          ; $6ae5: $0f
    nop                                           ; $6ae6: $00
    ld a, a                                       ; $6ae7: $7f
    ld c, a                                       ; $6ae8: $4f
    rlca                                          ; $6ae9: $07
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    ld a, [hl]                                    ; $6aec: $7e
    jp nz, $fb02                                  ; $6aed: $c2 $02 $fb

    ld l, a                                       ; $6af0: $6f
    and b                                         ; $6af1: $a0
    nop                                           ; $6af2: $00
    cp b                                          ; $6af3: $b8
    dec c                                         ; $6af4: $0d
    rrca                                          ; $6af5: $0f
    nop                                           ; $6af6: $00
    ld a, a                                       ; $6af7: $7f
    ld c, a                                       ; $6af8: $4f
    rlca                                          ; $6af9: $07
    nop                                           ; $6afa: $00
    cp b                                          ; $6afb: $b8
    add hl, bc                                    ; $6afc: $09
    call c, $0022                                 ; $6afd: $dc $22 $00
    nop                                           ; $6b00: $00
    ret nz                                        ; $6b01: $c0

    ld [hl+], a                                   ; $6b02: $22
    call nc, Call_000_0029                        ; $6b03: $d4 $29 $00
    inc d                                         ; $6b06: $14
    ld c, d                                       ; $6b07: $4a
    dec [hl]                                      ; $6b08: $35
    sub h                                         ; $6b09: $94
    ld e, d                                       ; $6b0a: $5a
    rst $38                                       ; $6b0b: $ff
    ld a, a                                       ; $6b0c: $7f
    call c, $d422                                 ; $6b0d: $dc $22 $d4
    add hl, hl                                    ; $6b10: $29
    rst $08                                       ; $6b11: $cf
    nop                                           ; $6b12: $00
    inc h                                         ; $6b13: $24

jr_0c2_6b14:
    nop                                           ; $6b14: $00
    rst $28                                       ; $6b15: $ef
    dec a                                         ; $6b16: $3d
    rst $28                                       ; $6b17: $ef
    dec a                                         ; $6b18: $3d
    rst $28                                       ; $6b19: $ef
    dec a                                         ; $6b1a: $3d
    rst $28                                       ; $6b1b: $ef
    dec a                                         ; $6b1c: $3d
    call c, $d426                                 ; $6b1d: $dc $26 $d4
    add hl, hl                                    ; $6b20: $29
    inc l                                         ; $6b21: $2c
    nop                                           ; $6b22: $00
    ld d, h                                       ; $6b23: $54
    ld de, $3def                                  ; $6b24: $11 $ef $3d
    rst $28                                       ; $6b27: $ef
    dec a                                         ; $6b28: $3d
    rst $28                                       ; $6b29: $ef
    dec a                                         ; $6b2a: $3d
    rst $28                                       ; $6b2b: $ef
    dec a                                         ; $6b2c: $3d
    rst $28                                       ; $6b2d: $ef
    dec a                                         ; $6b2e: $3d
    rst $28                                       ; $6b2f: $ef
    dec a                                         ; $6b30: $3d
    rst $28                                       ; $6b31: $ef
    dec a                                         ; $6b32: $3d
    rst $28                                       ; $6b33: $ef
    dec a                                         ; $6b34: $3d
    rst $28                                       ; $6b35: $ef
    dec a                                         ; $6b36: $3d
    rst $28                                       ; $6b37: $ef
    dec a                                         ; $6b38: $3d
    rst $28                                       ; $6b39: $ef
    dec a                                         ; $6b3a: $3d
    rst $28                                       ; $6b3b: $ef
    dec a                                         ; $6b3c: $3d
    ld bc, $ff00                                  ; $6b3d: $01 $00 $ff
    ld a, a                                       ; $6b40: $7f
    db $10                                        ; $6b41: $10
    dec e                                         ; $6b42: $1d
    ei                                            ; $6b43: $fb
    ld de, $331a                                  ; $6b44: $11 $1a $33
    sub $25                                       ; $6b47: $d6 $25
    ld c, $0d                                     ; $6b49: $0e $0d
    ld b, e                                       ; $6b4b: $43
    inc c                                         ; $6b4c: $0c
    rst $38                                       ; $6b4d: $ff
    inc bc                                        ; $6b4e: $03
    ld e, a                                       ; $6b4f: $5f
    ld bc, $08f2                                  ; $6b50: $01 $f2 $08
    ld b, [hl]                                    ; $6b53: $46
    ld [$7de0], sp                                ; $6b54: $08 $e0 $7d
    sbc $77                                       ; $6b57: $de $77
    pop af                                        ; $6b59: $f1
    add hl, sp                                    ; $6b5a: $39
    ld h, e                                       ; $6b5b: $63
    inc c                                         ; $6b5c: $0c
    ldh [$7d], a                                  ; $6b5d: $e0 $7d
    rra                                           ; $6b5f: $1f
    ld a, [hl]                                    ; $6b60: $7e
    jr nc, jr_0c2_6ba3                            ; $6b61: $30 $40

    ld h, e                                       ; $6b63: $63
    inc c                                         ; $6b64: $0c
    ldh [$7d], a                                  ; $6b65: $e0 $7d
    rst $38                                       ; $6b67: $ff
    inc bc                                        ; $6b68: $03
    sub l                                         ; $6b69: $95
    ld bc, $0c63                                  ; $6b6a: $01 $63 $0c
    ldh [$7d], a                                  ; $6b6d: $e0 $7d
    add e                                         ; $6b6f: $83
    ld [hl], e                                    ; $6b70: $73
    pop bc                                        ; $6b71: $c1
    dec l                                         ; $6b72: $2d
    ld h, e                                       ; $6b73: $63
    inc c                                         ; $6b74: $0c
    ldh [$7d], a                                  ; $6b75: $e0 $7d
    nop                                           ; $6b77: $00
    inc bc                                        ; $6b78: $03
    rst $28                                       ; $6b79: $ef
    inc b                                         ; $6b7a: $04
    add e                                         ; $6b7b: $83
    db $10                                        ; $6b7c: $10
    ld bc, $ff00                                  ; $6b7d: $01 $00 $ff
    ld a, a                                       ; $6b80: $7f
    db $10                                        ; $6b81: $10
    dec e                                         ; $6b82: $1d
    ei                                            ; $6b83: $fb
    ld de, $44cb                                  ; $6b84: $11 $cb $44
    add hl, de                                    ; $6b87: $19
    ld e, a                                       ; $6b88: $5f
    adc l                                         ; $6b89: $8d
    ld sp, $0c20                                  ; $6b8a: $31 $20 $0c
    call $8d5e                                    ; $6b8d: $cd $5e $8d
    ld h, c                                       ; $6b90: $61
    bit 0, h                                      ; $6b91: $cb $44
    ld b, [hl]                                    ; $6b93: $46
    jr z, @-$1e                                   ; $6b94: $28 $e0

    ld a, l                                       ; $6b96: $7d
    sbc $77                                       ; $6b97: $de $77
    pop af                                        ; $6b99: $f1
    add hl, sp                                    ; $6b9a: $39
    ld h, e                                       ; $6b9b: $63
    inc c                                         ; $6b9c: $0c
    ldh [$7d], a                                  ; $6b9d: $e0 $7d
    rra                                           ; $6b9f: $1f
    ld a, [hl]                                    ; $6ba0: $7e

jr_0c2_6ba1:
    jr nc, jr_0c2_6be3                            ; $6ba1: $30 $40

jr_0c2_6ba3:
    ld h, e                                       ; $6ba3: $63
    inc c                                         ; $6ba4: $0c
    ldh [$7d], a                                  ; $6ba5: $e0 $7d
    rst $38                                       ; $6ba7: $ff
    inc bc                                        ; $6ba8: $03
    sub l                                         ; $6ba9: $95
    ld bc, $0c63                                  ; $6baa: $01 $63 $0c
    ldh [$7d], a                                  ; $6bad: $e0 $7d
    add e                                         ; $6baf: $83
    ld [hl], e                                    ; $6bb0: $73
    pop bc                                        ; $6bb1: $c1
    dec l                                         ; $6bb2: $2d
    ld h, e                                       ; $6bb3: $63
    inc c                                         ; $6bb4: $0c
    ldh [$7d], a                                  ; $6bb5: $e0 $7d
    nop                                           ; $6bb7: $00
    inc bc                                        ; $6bb8: $03
    rst $28                                       ; $6bb9: $ef
    inc b                                         ; $6bba: $04
    add e                                         ; $6bbb: $83
    db $10                                        ; $6bbc: $10

    db $01, $04, $ff, $7f, $13, $00, $13, $00, $62, $20, $ff, $7f, $13, $00, $13, $00
    db $e4, $3c, $ff, $7f, $13, $00, $13, $00, $67, $5d, $ff, $7f, $13, $00, $13, $00

    rrca                                          ; $6bdd: $0f
    ld a, h                                       ; $6bde: $7c
    dec bc                                        ; $6bdf: $0b
    ld l, b                                       ; $6be0: $68

jr_0c2_6be1:
    rlca                                          ; $6be1: $07
    ld d, b                                       ; $6be2: $50

jr_0c2_6be3:
    inc b                                         ; $6be3: $04
    inc a                                         ; $6be4: $3c
    inc de                                        ; $6be5: $13
    nop                                           ; $6be6: $00
    inc de                                        ; $6be7: $13
    nop                                           ; $6be8: $00
    inc de                                        ; $6be9: $13
    nop                                           ; $6bea: $00
    inc de                                        ; $6beb: $13
    nop                                           ; $6bec: $00
    inc de                                        ; $6bed: $13
    nop                                           ; $6bee: $00
    inc de                                        ; $6bef: $13
    nop                                           ; $6bf0: $00
    inc de                                        ; $6bf1: $13
    nop                                           ; $6bf2: $00
    inc de                                        ; $6bf3: $13
    nop                                           ; $6bf4: $00
    inc de                                        ; $6bf5: $13
    nop                                           ; $6bf6: $00
    inc de                                        ; $6bf7: $13
    nop                                           ; $6bf8: $00
    inc de                                        ; $6bf9: $13
    nop                                           ; $6bfa: $00
    inc de                                        ; $6bfb: $13
    nop                                           ; $6bfc: $00
    add b                                         ; $6bfd: $80
    jr jr_0c2_6ba1                                ; $6bfe: $18 $a1

    ld hl, $0049                                  ; $6c00: $21 $49 $00
    ret z                                         ; $6c03: $c8

    ld e, $a9                                     ; $6c04: $1e $a9
    inc e                                         ; $6c06: $1c
    rrca                                          ; $6c07: $0f
    ld sp, $49d5                                  ; $6c08: $31 $d5 $49
    xor l                                         ; $6c0b: $ad
    ld h, d                                       ; $6c0c: $62
    xor l                                         ; $6c0d: $ad
    ld h, d                                       ; $6c0e: $62
    ld c, c                                       ; $6c0f: $49
    ld e, d                                       ; $6c10: $5a
    db $e4                                        ; $6c11: $e4
    ld e, c                                       ; $6c12: $59
    nop                                           ; $6c13: $00
    nop                                           ; $6c14: $00
    add e                                         ; $6c15: $83
    db $10                                        ; $6c16: $10
    xor c                                         ; $6c17: $a9
    inc e                                         ; $6c18: $1c
    and c                                         ; $6c19: $a1
    ld hl, $1ec8                                  ; $6c1a: $21 $c8 $1e
    ret nz                                        ; $6c1d: $c0

    inc c                                         ; $6c1e: $0c
    db $e3                                        ; $6c1f: $e3
    add hl, de                                    ; $6c20: $19
    xor c                                         ; $6c21: $a9
    ld a, $a3                                     ; $6c22: $3e $a3
    ld d, c                                       ; $6c24: $51
    ldh [rDIV], a                                 ; $6c25: $e0 $04
    db $e3                                        ; $6c27: $e3
    add hl, bc                                    ; $6c28: $09
    adc b                                         ; $6c29: $88
    ld c, $12                                     ; $6c2a: $0e $12
    dec hl                                        ; $6c2c: $2b
    ret nz                                        ; $6c2d: $c0

    ld [$15e3], sp                                ; $6c2e: $08 $e3 $15
    ld b, l                                       ; $6c31: $45
    ld [$050b], sp                                ; $6c32: $08 $0b $05
    ld [hl], l                                    ; $6c35: $75
    ld h, $ea                                     ; $6c36: $26 $ea
    inc b                                         ; $6c38: $04
    or c                                          ; $6c39: $b1
    ld bc, $0865                                  ; $6c3a: $01 $65 $08
    add b                                         ; $6c3d: $80
    jr jr_0c2_6be1                                ; $6c3e: $18 $a1

    ld hl, $0049                                  ; $6c40: $21 $49 $00
    ret z                                         ; $6c43: $c8

    ld e, $a9                                     ; $6c44: $1e $a9
    inc e                                         ; $6c46: $1c
    rrca                                          ; $6c47: $0f
    ld sp, $49d5                                  ; $6c48: $31 $d5 $49
    xor l                                         ; $6c4b: $ad
    ld h, d                                       ; $6c4c: $62
    xor l                                         ; $6c4d: $ad
    ld h, d                                       ; $6c4e: $62
    ld c, c                                       ; $6c4f: $49
    ld e, d                                       ; $6c50: $5a
    db $e4                                        ; $6c51: $e4
    ld e, c                                       ; $6c52: $59
    nop                                           ; $6c53: $00
    nop                                           ; $6c54: $00
    add e                                         ; $6c55: $83
    db $10                                        ; $6c56: $10
    xor c                                         ; $6c57: $a9
    inc e                                         ; $6c58: $1c
    and c                                         ; $6c59: $a1
    ld hl, $1ec8                                  ; $6c5a: $21 $c8 $1e
    ret nz                                        ; $6c5d: $c0

    inc c                                         ; $6c5e: $0c
    db $e3                                        ; $6c5f: $e3
    add hl, de                                    ; $6c60: $19
    xor c                                         ; $6c61: $a9
    ld a, $a3                                     ; $6c62: $3e $a3
    ld d, c                                       ; $6c64: $51
    ldh [rDIV], a                                 ; $6c65: $e0 $04
    db $e3                                        ; $6c67: $e3
    add hl, bc                                    ; $6c68: $09
    adc b                                         ; $6c69: $88
    ld c, $12                                     ; $6c6a: $0e $12
    dec hl                                        ; $6c6c: $2b
    ret nz                                        ; $6c6d: $c0

    ld [$15e3], sp                                ; $6c6e: $08 $e3 $15
    ld b, l                                       ; $6c71: $45
    ld [$050b], sp                                ; $6c72: $08 $0b $05
    ld [hl], l                                    ; $6c75: $75
    ld h, $ea                                     ; $6c76: $26 $ea
    inc b                                         ; $6c78: $04
    or c                                          ; $6c79: $b1
    ld bc, $0865                                  ; $6c7a: $01 $65 $08
    ld a, e                                       ; $6c7d: $7b
    ld a, [hl]                                    ; $6c7e: $7e
    ld d, $55                                     ; $6c7f: $16 $55
    ld c, a                                       ; $6c81: $4f
    jr c, jr_0c2_6c84                             ; $6c82: $38 $00

jr_0c2_6c84:
    db $10                                        ; $6c84: $10
    ei                                            ; $6c85: $fb
    ld a, a                                       ; $6c86: $7f
    adc l                                         ; $6c87: $8d
    ld d, d                                       ; $6c88: $52
    and $28                                       ; $6c89: $e6 $28
    nop                                           ; $6c8b: $00
    db $10                                        ; $6c8c: $10
    rst $38                                       ; $6c8d: $ff
    ld e, a                                       ; $6c8e: $5f
    sub h                                         ; $6c8f: $94
    ld b, d                                       ; $6c90: $42
    ld b, [hl]                                    ; $6c91: $46
    add hl, hl                                    ; $6c92: $29
    nop                                           ; $6c93: $00
    db $10                                        ; $6c94: $10
    ccf                                           ; $6c95: $3f
    inc bc                                        ; $6c96: $03
    call nc, $ea05                                ; $6c97: $d4 $05 $ea
    inc d                                         ; $6c9a: $14
    nop                                           ; $6c9b: $00
    db $10                                        ; $6c9c: $10
    ld a, e                                       ; $6c9d: $7b
    ld a, [hl]                                    ; $6c9e: $7e
    ld d, $55                                     ; $6c9f: $16 $55
    nop                                           ; $6ca1: $00
    stop                                          ; $6ca2: $10 $00
    db $10                                        ; $6ca4: $10
    rra                                           ; $6ca5: $1f
    nop                                           ; $6ca6: $00
    inc d                                         ; $6ca7: $14
    jr @-$74                                      ; $6ca8: $18 $8a

    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    db $10                                        ; $6cac: $10
    ld [hl], e                                    ; $6cad: $73
    rla                                           ; $6cae: $17
    ldh [rSB], a                                  ; $6caf: $e0 $01
    nop                                           ; $6cb1: $00
    stop                                          ; $6cb2: $10 $00
    db $10                                        ; $6cb4: $10
    ld [hl], e                                    ; $6cb5: $73
    rla                                           ; $6cb6: $17
    ld b, [hl]                                    ; $6cb7: $46
    ld [bc], a                                    ; $6cb8: $02
    ld h, b                                       ; $6cb9: $60
    ld bc, $1000                                  ; $6cba: $01 $00 $10

    db $1f, $00, $13, $00, $13, $4c, $ff, $7f, $00, $20, $ff, $7f, $ee, $41, $00, $7e
    db $00, $20, $ff, $7f, $52, $56, $c6, $38, $25, $04, $ff, $03, $0e, $05, $18, $01
    db $00, $20, $f0, $7f, $00, $4c, $e3, $65, $80, $00, $f7, $03, $20, $01, $80, $02
    db $04, $10, $ff, $7e, $0b, $24, $8f, $3c, $21, $04, $bd, $77, $a5, $14, $ad, $35

    nop                                           ; $6cfd: $00
    jr nz, @+$01                                  ; $6cfe: $20 $ff

    ld a, a                                       ; $6d00: $7f
    ld d, d                                       ; $6d01: $52
    ld d, [hl]                                    ; $6d02: $56
    add $38                                       ; $6d03: $c6 $38
    nop                                           ; $6d05: $00
    jr nz, @+$01                                  ; $6d06: $20 $ff

    ld a, a                                       ; $6d08: $7f
    xor $41                                       ; $6d09: $ee $41
    nop                                           ; $6d0b: $00
    ld a, [hl]                                    ; $6d0c: $7e
    rra                                           ; $6d0d: $1f
    nop                                           ; $6d0e: $00
    inc de                                        ; $6d0f: $13
    nop                                           ; $6d10: $00
    inc de                                        ; $6d11: $13
    ld c, h                                       ; $6d12: $4c
    rst $38                                       ; $6d13: $ff
    ld a, a                                       ; $6d14: $7f
    call z, $867c                                 ; $6d15: $cc $7c $86
    ld sp, $0220                                  ; $6d18: $31 $20 $02
    rst $38                                       ; $6d1b: $ff
    ld a, a                                       ; $6d1c: $7f
    inc l                                         ; $6d1d: $2c
    inc bc                                        ; $6d1e: $03
    rst $38                                       ; $6d1f: $ff
    ld bc, $0555                                  ; $6d20: $01 $55 $05
    rst $38                                       ; $6d23: $ff
    ld a, a                                       ; $6d24: $7f
    dec d                                         ; $6d25: $15
    ld d, l                                       ; $6d26: $55
    adc h                                         ; $6d27: $8c
    ld sp, $3def                                  ; $6d28: $31 $ef $3d
    cp $7f                                        ; $6d2b: $fe $7f
    rst $28                                       ; $6d2d: $ef
    dec a                                         ; $6d2e: $3d
    rst $28                                       ; $6d2f: $ef
    dec a                                         ; $6d30: $3d
    rst $28                                       ; $6d31: $ef
    dec a                                         ; $6d32: $3d
    rst $28                                       ; $6d33: $ef
    dec a                                         ; $6d34: $3d
    ld hl, $d804                                  ; $6d35: $21 $04 $d8
    ld d, d                                       ; $6d38: $52
    ld c, $05                                     ; $6d39: $0e $05
    ldh [$03], a                                  ; $6d3b: $e0 $03
    cp d                                          ; $6d3d: $ba
    ld l, e                                       ; $6d3e: $6b
    inc c                                         ; $6d3f: $0c
    ld l, $63                                     ; $6d40: $2e $63
    ld de, $0000                                  ; $6d42: $11 $00 $00
    sub b                                         ; $6d45: $90
    ld h, h                                       ; $6d46: $64
    ld a, [bc]                                    ; $6d47: $0a
    ld b, b                                       ; $6d48: $40
    dec b                                         ; $6d49: $05
    jr nz, jr_0c2_6d4c                            ; $6d4a: $20 $00

jr_0c2_6d4c:
    nop                                           ; $6d4c: $00
    add hl, bc                                    ; $6d4d: $09
    add hl, sp                                    ; $6d4e: $39
    add e                                         ; $6d4f: $83
    jr nz, jr_0c2_6d52                            ; $6d50: $20 $00

jr_0c2_6d52:
    stop                                          ; $6d52: $10 $00
    nop                                           ; $6d54: $00
    rst $00                                       ; $6d55: $c7
    jr nc, @+$43                                  ; $6d56: $30 $41

    jr jr_0c2_6d5a                                ; $6d58: $18 $00

jr_0c2_6d5a:
    stop                                          ; $6d5a: $10 $00
    nop                                           ; $6d5c: $00
    sub $65                                       ; $6d5d: $d6 $65
    rst $08                                       ; $6d5f: $cf
    inc h                                         ; $6d60: $24
    ld b, a                                       ; $6d61: $47
    inc c                                         ; $6d62: $0c
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    jr c, jr_0c2_6d85                             ; $6d65: $38 $1e

    adc a                                         ; $6d67: $8f
    ld de, $0046                                  ; $6d68: $11 $46 $00
    nop                                           ; $6d6b: $00
    nop                                           ; $6d6c: $00
    jp z, $c45d                                   ; $6d6d: $ca $5d $c4

    ld c, b                                       ; $6d70: $48
    jr nz, @+$26                                  ; $6d71: $20 $24

    nop                                           ; $6d73: $00
    nop                                           ; $6d74: $00
    ld l, $3a                                     ; $6d75: $2e $3a
    ld [$6111], sp                                ; $6d77: $08 $11 $61
    nop                                           ; $6d7a: $00
    nop                                           ; $6d7b: $00
    nop                                           ; $6d7c: $00
    cp d                                          ; $6d7d: $ba
    ld l, e                                       ; $6d7e: $6b
    inc c                                         ; $6d7f: $0c
    ld l, $63                                     ; $6d80: $2e $63
    ld de, $0000                                  ; $6d82: $11 $00 $00

jr_0c2_6d85:
    sub b                                         ; $6d85: $90
    ld h, h                                       ; $6d86: $64
    ld a, [bc]                                    ; $6d87: $0a
    ld b, b                                       ; $6d88: $40
    dec b                                         ; $6d89: $05
    jr nz, jr_0c2_6d8c                            ; $6d8a: $20 $00

jr_0c2_6d8c:
    nop                                           ; $6d8c: $00
    add hl, bc                                    ; $6d8d: $09
    add hl, sp                                    ; $6d8e: $39
    add e                                         ; $6d8f: $83
    jr nz, jr_0c2_6d92                            ; $6d90: $20 $00

jr_0c2_6d92:
    stop                                          ; $6d92: $10 $00
    nop                                           ; $6d94: $00
    rst $00                                       ; $6d95: $c7
    jr nc, jr_0c2_6dd9                            ; $6d96: $30 $41

    jr jr_0c2_6d9a                                ; $6d98: $18 $00

jr_0c2_6d9a:
    stop                                          ; $6d9a: $10 $00
    nop                                           ; $6d9c: $00
    sub $65                                       ; $6d9d: $d6 $65
    rst $08                                       ; $6d9f: $cf
    inc h                                         ; $6da0: $24
    ld b, a                                       ; $6da1: $47
    inc c                                         ; $6da2: $0c
    nop                                           ; $6da3: $00
    nop                                           ; $6da4: $00
    jr c, jr_0c2_6dc5                             ; $6da5: $38 $1e

    adc a                                         ; $6da7: $8f
    ld de, $0046                                  ; $6da8: $11 $46 $00
    nop                                           ; $6dab: $00
    nop                                           ; $6dac: $00
    jp z, $c45d                                   ; $6dad: $ca $5d $c4

    ld c, b                                       ; $6db0: $48
    jr nz, jr_0c2_6dd7                            ; $6db1: $20 $24

    nop                                           ; $6db3: $00
    nop                                           ; $6db4: $00
    or e                                          ; $6db5: $b3
    ld c, d                                       ; $6db6: $4a
    ld l, e                                       ; $6db7: $6b
    add hl, de                                    ; $6db8: $19
    call nz, Call_000_000c                        ; $6db9: $c4 $0c $00
    nop                                           ; $6dbc: $00
    ld bc, $ff00                                  ; $6dbd: $01 $00 $ff
    ld a, a                                       ; $6dc0: $7f
    dec d                                         ; $6dc1: $15
    ld d, h                                       ; $6dc2: $54
    dec d                                         ; $6dc3: $15
    ld d, h                                       ; $6dc4: $54

jr_0c2_6dc5:
    ld a, a                                       ; $6dc5: $7f
    ld [hl+], a                                   ; $6dc6: $22
    or a                                          ; $6dc7: $b7
    dec d                                         ; $6dc8: $15
    xor $0c                                       ; $6dc9: $ee $0c
    ld b, a                                       ; $6dcb: $47
    nop                                           ; $6dcc: $00
    or a                                          ; $6dcd: $b7
    dec d                                         ; $6dce: $15
    xor $0c                                       ; $6dcf: $ee $0c
    ld b, a                                       ; $6dd1: $47
    inc b                                         ; $6dd2: $04
    ld b, h                                       ; $6dd3: $44
    inc [hl]                                      ; $6dd4: $34
    rst $28                                       ; $6dd5: $ef
    dec a                                         ; $6dd6: $3d

jr_0c2_6dd7:
    rst $28                                       ; $6dd7: $ef
    dec a                                         ; $6dd8: $3d

jr_0c2_6dd9:
    rst $28                                       ; $6dd9: $ef
    dec a                                         ; $6dda: $3d
    rst $28                                       ; $6ddb: $ef
    dec a                                         ; $6ddc: $3d
    rst $28                                       ; $6ddd: $ef
    dec a                                         ; $6dde: $3d
    rst $28                                       ; $6ddf: $ef
    dec a                                         ; $6de0: $3d
    rst $28                                       ; $6de1: $ef
    dec a                                         ; $6de2: $3d
    rst $28                                       ; $6de3: $ef
    dec a                                         ; $6de4: $3d
    rst $28                                       ; $6de5: $ef
    dec a                                         ; $6de6: $3d
    rst $28                                       ; $6de7: $ef
    dec a                                         ; $6de8: $3d
    rst $28                                       ; $6de9: $ef
    dec a                                         ; $6dea: $3d
    rst $28                                       ; $6deb: $ef
    dec a                                         ; $6dec: $3d
    ld a, a                                       ; $6ded: $7f
    ld [hl+], a                                   ; $6dee: $22
    add hl, de                                    ; $6def: $19
    ld e, a                                       ; $6df0: $5f
    adc l                                         ; $6df1: $8d
    ld sp, $0c20                                  ; $6df2: $31 $20 $0c
    ld a, a                                       ; $6df5: $7f
    ld [hl+], a                                   ; $6df6: $22
    rst $18                                       ; $6df7: $df
    ld e, a                                       ; $6df8: $5f
    add b                                         ; $6df9: $80
    ld c, $00                                     ; $6dfa: $0e $00
    ld bc, $0001                                  ; $6dfc: $01 $01 $00
    rst $38                                       ; $6dff: $ff
    ld a, a                                       ; $6e00: $7f
    dec d                                         ; $6e01: $15
    ld d, h                                       ; $6e02: $54
    dec d                                         ; $6e03: $15
    ld d, h                                       ; $6e04: $54
    ld a, a                                       ; $6e05: $7f
    ld [hl+], a                                   ; $6e06: $22
    or a                                          ; $6e07: $b7
    dec d                                         ; $6e08: $15
    xor $0c                                       ; $6e09: $ee $0c
    ld b, a                                       ; $6e0b: $47
    nop                                           ; $6e0c: $00
    or a                                          ; $6e0d: $b7
    dec d                                         ; $6e0e: $15
    xor $0c                                       ; $6e0f: $ee $0c
    ld b, a                                       ; $6e11: $47
    inc b                                         ; $6e12: $04
    ld b, h                                       ; $6e13: $44
    inc [hl]                                      ; $6e14: $34
    rst $28                                       ; $6e15: $ef
    dec a                                         ; $6e16: $3d
    rst $28                                       ; $6e17: $ef
    dec a                                         ; $6e18: $3d
    rst $28                                       ; $6e19: $ef
    dec a                                         ; $6e1a: $3d
    rst $28                                       ; $6e1b: $ef
    dec a                                         ; $6e1c: $3d
    rst $28                                       ; $6e1d: $ef
    dec a                                         ; $6e1e: $3d
    rst $28                                       ; $6e1f: $ef
    dec a                                         ; $6e20: $3d
    rst $28                                       ; $6e21: $ef
    dec a                                         ; $6e22: $3d
    rst $28                                       ; $6e23: $ef
    dec a                                         ; $6e24: $3d
    rst $28                                       ; $6e25: $ef
    dec a                                         ; $6e26: $3d
    rst $28                                       ; $6e27: $ef
    dec a                                         ; $6e28: $3d
    rst $28                                       ; $6e29: $ef
    dec a                                         ; $6e2a: $3d
    rst $28                                       ; $6e2b: $ef
    dec a                                         ; $6e2c: $3d
    ld a, a                                       ; $6e2d: $7f
    ld [hl+], a                                   ; $6e2e: $22
    add hl, de                                    ; $6e2f: $19
    ld e, a                                       ; $6e30: $5f
    adc l                                         ; $6e31: $8d
    ld sp, $0c20                                  ; $6e32: $31 $20 $0c
    ld a, a                                       ; $6e35: $7f
    ld [hl+], a                                   ; $6e36: $22
    cp h                                          ; $6e37: $bc
    ld a, e                                       ; $6e38: $7b
    xor d                                         ; $6e39: $aa
    ld c, $63                                     ; $6e3a: $0e $63
    ld bc, $0001                                  ; $6e3c: $01 $01 $00
    rst $38                                       ; $6e3f: $ff
    ld a, a                                       ; $6e40: $7f
    dec d                                         ; $6e41: $15
    ld d, h                                       ; $6e42: $54
    dec d                                         ; $6e43: $15
    ld d, h                                       ; $6e44: $54
    ld a, a                                       ; $6e45: $7f
    ld [hl+], a                                   ; $6e46: $22
    or a                                          ; $6e47: $b7
    dec d                                         ; $6e48: $15
    xor $0c                                       ; $6e49: $ee $0c
    ld b, a                                       ; $6e4b: $47
    nop                                           ; $6e4c: $00
    or a                                          ; $6e4d: $b7
    dec d                                         ; $6e4e: $15
    xor $0c                                       ; $6e4f: $ee $0c
    ld b, a                                       ; $6e51: $47
    inc b                                         ; $6e52: $04
    ld b, h                                       ; $6e53: $44
    inc [hl]                                      ; $6e54: $34
    rst $28                                       ; $6e55: $ef
    dec a                                         ; $6e56: $3d
    rst $28                                       ; $6e57: $ef
    dec a                                         ; $6e58: $3d
    rst $28                                       ; $6e59: $ef
    dec a                                         ; $6e5a: $3d
    rst $28                                       ; $6e5b: $ef
    dec a                                         ; $6e5c: $3d
    rst $28                                       ; $6e5d: $ef
    dec a                                         ; $6e5e: $3d
    rst $28                                       ; $6e5f: $ef
    dec a                                         ; $6e60: $3d
    rst $28                                       ; $6e61: $ef
    dec a                                         ; $6e62: $3d
    rst $28                                       ; $6e63: $ef
    dec a                                         ; $6e64: $3d
    rst $28                                       ; $6e65: $ef
    dec a                                         ; $6e66: $3d
    rst $28                                       ; $6e67: $ef
    dec a                                         ; $6e68: $3d
    rst $28                                       ; $6e69: $ef
    dec a                                         ; $6e6a: $3d
    rst $28                                       ; $6e6b: $ef
    dec a                                         ; $6e6c: $3d
    ld a, a                                       ; $6e6d: $7f
    ld [hl+], a                                   ; $6e6e: $22
    cp b                                          ; $6e6f: $b8
    ld a, e                                       ; $6e70: $7b
    db $ed                                        ; $6e71: $ed
    ld c, c                                       ; $6e72: $49
    jr nz, jr_0c2_6e91                            ; $6e73: $20 $1c

    ld a, a                                       ; $6e75: $7f
    ld [hl+], a                                   ; $6e76: $22
    rst $38                                       ; $6e77: $ff
    ld a, a                                       ; $6e78: $7f
    add hl, hl                                    ; $6e79: $29
    ld [bc], a                                    ; $6e7a: $02
    ld [bc], a                                    ; $6e7b: $02
    ld bc, $0001                                  ; $6e7c: $01 $01 $00
    rst $38                                       ; $6e7f: $ff
    ld a, a                                       ; $6e80: $7f
    dec d                                         ; $6e81: $15
    ld d, h                                       ; $6e82: $54
    dec d                                         ; $6e83: $15
    ld d, h                                       ; $6e84: $54
    ld a, a                                       ; $6e85: $7f
    ld [hl+], a                                   ; $6e86: $22
    or a                                          ; $6e87: $b7
    dec d                                         ; $6e88: $15
    xor $0c                                       ; $6e89: $ee $0c
    ld b, a                                       ; $6e8b: $47
    nop                                           ; $6e8c: $00
    or a                                          ; $6e8d: $b7
    dec d                                         ; $6e8e: $15
    xor $0c                                       ; $6e8f: $ee $0c

jr_0c2_6e91:
    ld b, a                                       ; $6e91: $47
    inc b                                         ; $6e92: $04
    ld b, h                                       ; $6e93: $44
    inc [hl]                                      ; $6e94: $34
    rst $28                                       ; $6e95: $ef
    dec a                                         ; $6e96: $3d
    rst $28                                       ; $6e97: $ef
    dec a                                         ; $6e98: $3d
    rst $28                                       ; $6e99: $ef
    dec a                                         ; $6e9a: $3d
    rst $28                                       ; $6e9b: $ef
    dec a                                         ; $6e9c: $3d
    rst $28                                       ; $6e9d: $ef
    dec a                                         ; $6e9e: $3d
    rst $28                                       ; $6e9f: $ef
    dec a                                         ; $6ea0: $3d
    rst $28                                       ; $6ea1: $ef
    dec a                                         ; $6ea2: $3d
    rst $28                                       ; $6ea3: $ef
    dec a                                         ; $6ea4: $3d
    rst $28                                       ; $6ea5: $ef
    dec a                                         ; $6ea6: $3d
    rst $28                                       ; $6ea7: $ef
    dec a                                         ; $6ea8: $3d
    rst $28                                       ; $6ea9: $ef
    dec a                                         ; $6eaa: $3d
    rst $28                                       ; $6eab: $ef
    dec a                                         ; $6eac: $3d
    ld a, a                                       ; $6ead: $7f
    ld [hl+], a                                   ; $6eae: $22
    ld hl, sp+$15                                 ; $6eaf: $f8 $15
    rrca                                          ; $6eb1: $0f
    add hl, bc                                    ; $6eb2: $09
    daa                                           ; $6eb3: $27
    nop                                           ; $6eb4: $00
    ld a, a                                       ; $6eb5: $7f
    ld [hl+], a                                   ; $6eb6: $22
    reti                                          ; $6eb7: $d9


    ld l, e                                       ; $6eb8: $6b
    pop hl                                        ; $6eb9: $e1
    dec d                                         ; $6eba: $15
    and b                                         ; $6ebb: $a0
    nop                                           ; $6ebc: $00
    ld bc, $ff00                                  ; $6ebd: $01 $00 $ff
    ld a, a                                       ; $6ec0: $7f
    dec d                                         ; $6ec1: $15
    ld d, h                                       ; $6ec2: $54
    dec d                                         ; $6ec3: $15
    ld d, h                                       ; $6ec4: $54
    ld a, a                                       ; $6ec5: $7f
    ld [hl+], a                                   ; $6ec6: $22
    or a                                          ; $6ec7: $b7
    dec d                                         ; $6ec8: $15
    xor $0c                                       ; $6ec9: $ee $0c
    ld b, a                                       ; $6ecb: $47
    nop                                           ; $6ecc: $00
    or a                                          ; $6ecd: $b7
    dec d                                         ; $6ece: $15
    xor $0c                                       ; $6ecf: $ee $0c
    ld b, a                                       ; $6ed1: $47
    inc b                                         ; $6ed2: $04
    ld b, h                                       ; $6ed3: $44
    inc [hl]                                      ; $6ed4: $34
    rst $28                                       ; $6ed5: $ef
    dec a                                         ; $6ed6: $3d
    rst $28                                       ; $6ed7: $ef
    dec a                                         ; $6ed8: $3d
    rst $28                                       ; $6ed9: $ef
    dec a                                         ; $6eda: $3d
    rst $28                                       ; $6edb: $ef
    dec a                                         ; $6edc: $3d
    rst $28                                       ; $6edd: $ef
    dec a                                         ; $6ede: $3d
    rst $28                                       ; $6edf: $ef
    dec a                                         ; $6ee0: $3d
    rst $28                                       ; $6ee1: $ef
    dec a                                         ; $6ee2: $3d
    rst $28                                       ; $6ee3: $ef
    dec a                                         ; $6ee4: $3d
    rst $28                                       ; $6ee5: $ef
    dec a                                         ; $6ee6: $3d
    rst $28                                       ; $6ee7: $ef
    dec a                                         ; $6ee8: $3d
    rst $28                                       ; $6ee9: $ef
    dec a                                         ; $6eea: $3d
    rst $28                                       ; $6eeb: $ef
    dec a                                         ; $6eec: $3d
    ld a, a                                       ; $6eed: $7f
    ld [hl+], a                                   ; $6eee: $22
    ld hl, sp+$15                                 ; $6eef: $f8 $15
    rrca                                          ; $6ef1: $0f
    add hl, bc                                    ; $6ef2: $09
    ld h, $00                                     ; $6ef3: $26 $00
    ld a, a                                       ; $6ef5: $7f
    ld [hl+], a                                   ; $6ef6: $22
    rst $38                                       ; $6ef7: $ff
    ld a, a                                       ; $6ef8: $7f
    inc c                                         ; $6ef9: $0c
    inc de                                        ; $6efa: $13
    inc b                                         ; $6efb: $04
    jr jr_0c2_6eff                                ; $6efc: $18 $01

    nop                                           ; $6efe: $00

jr_0c2_6eff:
    rst $38                                       ; $6eff: $ff
    ld a, a                                       ; $6f00: $7f
    dec d                                         ; $6f01: $15
    ld d, h                                       ; $6f02: $54
    dec d                                         ; $6f03: $15
    ld d, h                                       ; $6f04: $54
    ld a, a                                       ; $6f05: $7f
    ld [hl+], a                                   ; $6f06: $22
    or a                                          ; $6f07: $b7
    dec d                                         ; $6f08: $15
    xor $0c                                       ; $6f09: $ee $0c
    ld b, a                                       ; $6f0b: $47
    nop                                           ; $6f0c: $00
    or a                                          ; $6f0d: $b7
    dec d                                         ; $6f0e: $15
    xor $0c                                       ; $6f0f: $ee $0c
    ld b, a                                       ; $6f11: $47
    inc b                                         ; $6f12: $04
    ld b, h                                       ; $6f13: $44
    inc [hl]                                      ; $6f14: $34
    rst $28                                       ; $6f15: $ef
    dec a                                         ; $6f16: $3d
    rst $28                                       ; $6f17: $ef
    dec a                                         ; $6f18: $3d
    rst $28                                       ; $6f19: $ef
    dec a                                         ; $6f1a: $3d
    rst $28                                       ; $6f1b: $ef
    dec a                                         ; $6f1c: $3d
    rst $28                                       ; $6f1d: $ef
    dec a                                         ; $6f1e: $3d
    rst $28                                       ; $6f1f: $ef
    dec a                                         ; $6f20: $3d
    rst $28                                       ; $6f21: $ef
    dec a                                         ; $6f22: $3d
    rst $28                                       ; $6f23: $ef
    dec a                                         ; $6f24: $3d
    rst $28                                       ; $6f25: $ef
    dec a                                         ; $6f26: $3d
    rst $28                                       ; $6f27: $ef
    dec a                                         ; $6f28: $3d
    rst $28                                       ; $6f29: $ef
    dec a                                         ; $6f2a: $3d
    rst $28                                       ; $6f2b: $ef
    dec a                                         ; $6f2c: $3d
    ld a, a                                       ; $6f2d: $7f
    ld [hl+], a                                   ; $6f2e: $22
    rst $18                                       ; $6f2f: $df
    ccf                                           ; $6f30: $3f
    or d                                          ; $6f31: $b2
    add hl, hl                                    ; $6f32: $29
    ld b, [hl]                                    ; $6f33: $46
    nop                                           ; $6f34: $00
    ld a, a                                       ; $6f35: $7f
    ld [hl+], a                                   ; $6f36: $22
    rst $38                                       ; $6f37: $ff
    ld a, a                                       ; $6f38: $7f
    sbc l                                         ; $6f39: $9d
    dec e                                         ; $6f3a: $1d
    ld hl, $011c                                  ; $6f3b: $21 $1c $01
    nop                                           ; $6f3e: $00
    rst $38                                       ; $6f3f: $ff
    ld a, a                                       ; $6f40: $7f
    dec d                                         ; $6f41: $15
    ld d, h                                       ; $6f42: $54
    dec d                                         ; $6f43: $15
    ld d, h                                       ; $6f44: $54
    ld a, a                                       ; $6f45: $7f
    ld [hl+], a                                   ; $6f46: $22
    or a                                          ; $6f47: $b7
    dec d                                         ; $6f48: $15
    xor $0c                                       ; $6f49: $ee $0c
    ld b, a                                       ; $6f4b: $47
    nop                                           ; $6f4c: $00
    or a                                          ; $6f4d: $b7
    dec d                                         ; $6f4e: $15
    xor $0c                                       ; $6f4f: $ee $0c
    ld b, a                                       ; $6f51: $47
    inc b                                         ; $6f52: $04
    ld b, h                                       ; $6f53: $44
    inc [hl]                                      ; $6f54: $34
    rst $28                                       ; $6f55: $ef
    dec a                                         ; $6f56: $3d
    rst $28                                       ; $6f57: $ef
    dec a                                         ; $6f58: $3d
    rst $28                                       ; $6f59: $ef

Call_0c2_6f5a:
    dec a                                         ; $6f5a: $3d
    rst $28                                       ; $6f5b: $ef
    dec a                                         ; $6f5c: $3d
    rst $28                                       ; $6f5d: $ef
    dec a                                         ; $6f5e: $3d
    rst $28                                       ; $6f5f: $ef
    dec a                                         ; $6f60: $3d
    rst $28                                       ; $6f61: $ef
    dec a                                         ; $6f62: $3d
    rst $28                                       ; $6f63: $ef
    dec a                                         ; $6f64: $3d
    rst $28                                       ; $6f65: $ef
    dec a                                         ; $6f66: $3d
    rst $28                                       ; $6f67: $ef
    dec a                                         ; $6f68: $3d
    rst $28                                       ; $6f69: $ef
    dec a                                         ; $6f6a: $3d
    rst $28                                       ; $6f6b: $ef
    dec a                                         ; $6f6c: $3d
    ld a, a                                       ; $6f6d: $7f
    ld [hl+], a                                   ; $6f6e: $22
    ld hl, sp+$15                                 ; $6f6f: $f8 $15
    rrca                                          ; $6f71: $0f
    add hl, bc                                    ; $6f72: $09
    daa                                           ; $6f73: $27
    nop                                           ; $6f74: $00
    ld a, a                                       ; $6f75: $7f
    ld [hl+], a                                   ; $6f76: $22
    rst $38                                       ; $6f77: $ff
    ld a, a                                       ; $6f78: $7f
    jr nz, jr_0c2_6fea                            ; $6f79: $20 $6f

    xor b                                         ; $6f7b: $a8
    ld d, h                                       ; $6f7c: $54
    nop                                           ; $6f7d: $00
    nop                                           ; $6f7e: $00
    rst $38                                       ; $6f7f: $ff
    ld a, a                                       ; $6f80: $7f
    dec d                                         ; $6f81: $15
    ld d, h                                       ; $6f82: $54
    dec d                                         ; $6f83: $15
    ld d, h                                       ; $6f84: $54
    ld a, a                                       ; $6f85: $7f
    ld [hl+], a                                   ; $6f86: $22
    or a                                          ; $6f87: $b7
    dec d                                         ; $6f88: $15
    xor $0c                                       ; $6f89: $ee $0c
    ld b, a                                       ; $6f8b: $47
    nop                                           ; $6f8c: $00

jr_0c2_6f8d:
    or a                                          ; $6f8d: $b7
    dec d                                         ; $6f8e: $15
    xor $0c                                       ; $6f8f: $ee $0c
    ld b, a                                       ; $6f91: $47
    inc b                                         ; $6f92: $04
    ld b, h                                       ; $6f93: $44
    inc [hl]                                      ; $6f94: $34
    ld a, a                                       ; $6f95: $7f
    ld [hl+], a                                   ; $6f96: $22
    or l                                          ; $6f97: $b5
    ld hl, $20ca                                  ; $6f98: $21 $ca $20
    nop                                           ; $6f9b: $00
    jr nz, jr_0c2_6f8d                            ; $6f9c: $20 $ef

    dec a                                         ; $6f9e: $3d
    rst $28                                       ; $6f9f: $ef
    dec a                                         ; $6fa0: $3d
    rst $28                                       ; $6fa1: $ef
    dec a                                         ; $6fa2: $3d
    rst $28                                       ; $6fa3: $ef
    dec a                                         ; $6fa4: $3d
    rst $28                                       ; $6fa5: $ef
    dec a                                         ; $6fa6: $3d
    rst $28                                       ; $6fa7: $ef
    dec a                                         ; $6fa8: $3d
    rst $28                                       ; $6fa9: $ef
    dec a                                         ; $6faa: $3d
    rst $28                                       ; $6fab: $ef
    dec a                                         ; $6fac: $3d
    ld a, a                                       ; $6fad: $7f
    ld [hl+], a                                   ; $6fae: $22
    rst $18                                       ; $6faf: $df
    ccf                                           ; $6fb0: $3f
    or d                                          ; $6fb1: $b2
    ld c, c                                       ; $6fb2: $49
    ld b, [hl]                                    ; $6fb3: $46
    nop                                           ; $6fb4: $00
    ld a, a                                       ; $6fb5: $7f
    ld [hl+], a                                   ; $6fb6: $22
    rst $38                                       ; $6fb7: $ff
    ld a, a                                       ; $6fb8: $7f
    jp z, $f334                                   ; $6fb9: $ca $34 $f3

    ld [hl], l                                    ; $6fbc: $75
    nop                                           ; $6fbd: $00
    nop                                           ; $6fbe: $00
    rst $38                                       ; $6fbf: $ff
    ld a, a                                       ; $6fc0: $7f
    dec d                                         ; $6fc1: $15
    ld d, h                                       ; $6fc2: $54
    dec d                                         ; $6fc3: $15
    ld d, h                                       ; $6fc4: $54
    ld a, a                                       ; $6fc5: $7f
    ld [hl+], a                                   ; $6fc6: $22
    or a                                          ; $6fc7: $b7
    dec d                                         ; $6fc8: $15
    xor $0c                                       ; $6fc9: $ee $0c
    ld b, a                                       ; $6fcb: $47
    nop                                           ; $6fcc: $00

jr_0c2_6fcd:
    or a                                          ; $6fcd: $b7
    dec d                                         ; $6fce: $15
    xor $0c                                       ; $6fcf: $ee $0c
    ld b, a                                       ; $6fd1: $47
    inc b                                         ; $6fd2: $04
    ld b, h                                       ; $6fd3: $44
    inc [hl]                                      ; $6fd4: $34
    ld a, a                                       ; $6fd5: $7f
    ld [hl+], a                                   ; $6fd6: $22
    or l                                          ; $6fd7: $b5
    ld hl, $20ca                                  ; $6fd8: $21 $ca $20
    nop                                           ; $6fdb: $00
    jr nz, jr_0c2_6fcd                            ; $6fdc: $20 $ef

    dec a                                         ; $6fde: $3d
    rst $28                                       ; $6fdf: $ef
    dec a                                         ; $6fe0: $3d
    rst $28                                       ; $6fe1: $ef
    dec a                                         ; $6fe2: $3d
    rst $28                                       ; $6fe3: $ef
    dec a                                         ; $6fe4: $3d
    rst $28                                       ; $6fe5: $ef
    dec a                                         ; $6fe6: $3d
    rst $28                                       ; $6fe7: $ef
    dec a                                         ; $6fe8: $3d
    rst $28                                       ; $6fe9: $ef

jr_0c2_6fea:
    dec a                                         ; $6fea: $3d
    rst $28                                       ; $6feb: $ef
    dec a                                         ; $6fec: $3d
    ld a, a                                       ; $6fed: $7f
    ld [hl+], a                                   ; $6fee: $22
    rst $18                                       ; $6fef: $df
    ccf                                           ; $6ff0: $3f
    or d                                          ; $6ff1: $b2
    ld c, c                                       ; $6ff2: $49
    ld b, [hl]                                    ; $6ff3: $46
    nop                                           ; $6ff4: $00
    ld a, a                                       ; $6ff5: $7f
    ld [hl+], a                                   ; $6ff6: $22
    rst $38                                       ; $6ff7: $ff
    ld a, a                                       ; $6ff8: $7f
    jp z, $f334                                   ; $6ff9: $ca $34 $f3

    ld [hl], l                                    ; $6ffc: $75

    db $80, $5d, $ff, $7f, $00, $28, $6b, $5d, $e0, $13, $00, $00, $00, $3c, $6b, $5d
    db $00, $28, $05, $28, $0a, $28, $2d, $24, $2d, $24, $51, $1c, $96, $14, $da, $0c
    db $da, $0c, $3f, $09, $2e, $00, $00, $00, $00, $2c, $00, $1c, $02, $18, $25, $14
    db $05, $14, $09, $0c, $0e, $04, $13, $00, $0d, $00, $32, $00, $26, $00, $00, $00

    add b                                         ; $703d: $80
    ld e, l                                       ; $703e: $5d
    rst $38                                       ; $703f: $ff
    ld a, a                                       ; $7040: $7f
    nop                                           ; $7041: $00
    inc a                                         ; $7042: $3c
    ld l, e                                       ; $7043: $6b
    ld e, l                                       ; $7044: $5d
    ldh [rNR13], a                                ; $7045: $e0 $13
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    inc a                                         ; $704a: $3c
    ld l, e                                       ; $704b: $6b
    ld e, l                                       ; $704c: $5d
    nop                                           ; $704d: $00
    inc a                                         ; $704e: $3c
    ld b, $2c                                     ; $704f: $06 $2c
    ld a, [bc]                                    ; $7051: $0a
    jr z, jr_0c2_7081                             ; $7052: $28 $2d

    inc h                                         ; $7054: $24
    dec l                                         ; $7055: $2d
    inc h                                         ; $7056: $24
    ld d, c                                       ; $7057: $51
    inc e                                         ; $7058: $1c
    halt                                          ; $7059: $76
    inc d                                         ; $705a: $14
    sbc e                                         ; $705b: $9b
    inc c                                         ; $705c: $0c
    sbc e                                         ; $705d: $9b
    inc c                                         ; $705e: $0c
    cp a                                          ; $705f: $bf
    ld [$002e], sp                                ; $7060: $08 $2e $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    inc l                                         ; $7066: $2c
    nop                                           ; $7067: $00
    inc e                                         ; $7068: $1c
    ld [bc], a                                    ; $7069: $02
    jr jr_0c2_7091                                ; $706a: $18 $25

    inc d                                         ; $706c: $14
    dec b                                         ; $706d: $05
    inc d                                         ; $706e: $14
    add hl, bc                                    ; $706f: $09
    inc c                                         ; $7070: $0c
    ld c, $04                                     ; $7071: $0e $04
    inc de                                        ; $7073: $13
    nop                                           ; $7074: $00
    dec c                                         ; $7075: $0d
    nop                                           ; $7076: $00
    ld [hl-], a                                   ; $7077: $32
    nop                                           ; $7078: $00
    rst $28                                       ; $7079: $ef
    dec a                                         ; $707a: $3d
    rst $28                                       ; $707b: $ef
    dec a                                         ; $707c: $3d
    add b                                         ; $707d: $80
    ld e, l                                       ; $707e: $5d
    rst $38                                       ; $707f: $ff
    ld a, a                                       ; $7080: $7f

jr_0c2_7081:
    nop                                           ; $7081: $00
    inc a                                         ; $7082: $3c
    ld l, e                                       ; $7083: $6b
    ld e, l                                       ; $7084: $5d
    ldh [rNR13], a                                ; $7085: $e0 $13
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    inc a                                         ; $708a: $3c
    ld l, e                                       ; $708b: $6b
    ld e, l                                       ; $708c: $5d
    nop                                           ; $708d: $00
    inc a                                         ; $708e: $3c
    ld b, $2c                                     ; $708f: $06 $2c

jr_0c2_7091:
    ld a, [bc]                                    ; $7091: $0a
    jr z, jr_0c2_70c1                             ; $7092: $28 $2d

    inc h                                         ; $7094: $24
    dec l                                         ; $7095: $2d
    inc h                                         ; $7096: $24
    ld d, c                                       ; $7097: $51
    inc e                                         ; $7098: $1c
    halt                                          ; $7099: $76
    inc d                                         ; $709a: $14
    sbc e                                         ; $709b: $9b
    inc c                                         ; $709c: $0c
    sbc e                                         ; $709d: $9b
    inc c                                         ; $709e: $0c
    cp a                                          ; $709f: $bf
    ld [$002e], sp                                ; $70a0: $08 $2e $00
    nop                                           ; $70a3: $00
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    inc l                                         ; $70a6: $2c
    nop                                           ; $70a7: $00
    inc e                                         ; $70a8: $1c
    ld [bc], a                                    ; $70a9: $02
    jr jr_0c2_70d1                                ; $70aa: $18 $25

    inc d                                         ; $70ac: $14
    dec b                                         ; $70ad: $05
    inc d                                         ; $70ae: $14
    add hl, bc                                    ; $70af: $09
    inc c                                         ; $70b0: $0c
    ld c, $04                                     ; $70b1: $0e $04
    inc de                                        ; $70b3: $13
    nop                                           ; $70b4: $00
    dec c                                         ; $70b5: $0d
    nop                                           ; $70b6: $00
    ld [hl-], a                                   ; $70b7: $32
    nop                                           ; $70b8: $00
    rst $28                                       ; $70b9: $ef
    dec a                                         ; $70ba: $3d
    rst $28                                       ; $70bb: $ef
    dec a                                         ; $70bc: $3d
    add b                                         ; $70bd: $80
    ld e, l                                       ; $70be: $5d
    rst $38                                       ; $70bf: $ff
    ld a, a                                       ; $70c0: $7f

jr_0c2_70c1:
    nop                                           ; $70c1: $00
    inc a                                         ; $70c2: $3c
    ld l, e                                       ; $70c3: $6b
    ld e, l                                       ; $70c4: $5d
    ldh [rNR13], a                                ; $70c5: $e0 $13
    nop                                           ; $70c7: $00
    nop                                           ; $70c8: $00
    nop                                           ; $70c9: $00
    inc a                                         ; $70ca: $3c
    ld l, e                                       ; $70cb: $6b
    ld e, l                                       ; $70cc: $5d
    nop                                           ; $70cd: $00
    inc a                                         ; $70ce: $3c
    ld b, $2c                                     ; $70cf: $06 $2c

jr_0c2_70d1:
    ld a, [bc]                                    ; $70d1: $0a
    jr z, jr_0c2_7101                             ; $70d2: $28 $2d

    inc h                                         ; $70d4: $24
    dec l                                         ; $70d5: $2d
    inc h                                         ; $70d6: $24
    ld d, c                                       ; $70d7: $51
    inc e                                         ; $70d8: $1c
    halt                                          ; $70d9: $76
    inc d                                         ; $70da: $14
    sbc e                                         ; $70db: $9b
    inc c                                         ; $70dc: $0c
    sbc e                                         ; $70dd: $9b
    inc c                                         ; $70de: $0c
    cp a                                          ; $70df: $bf
    ld [$002e], sp                                ; $70e0: $08 $2e $00
    nop                                           ; $70e3: $00
    nop                                           ; $70e4: $00
    nop                                           ; $70e5: $00
    inc l                                         ; $70e6: $2c
    nop                                           ; $70e7: $00
    inc e                                         ; $70e8: $1c
    ld [bc], a                                    ; $70e9: $02
    jr jr_0c2_7111                                ; $70ea: $18 $25

    inc d                                         ; $70ec: $14
    dec b                                         ; $70ed: $05
    inc d                                         ; $70ee: $14
    add hl, bc                                    ; $70ef: $09
    inc c                                         ; $70f0: $0c
    ld c, $04                                     ; $70f1: $0e $04
    inc de                                        ; $70f3: $13
    nop                                           ; $70f4: $00
    dec c                                         ; $70f5: $0d
    nop                                           ; $70f6: $00
    ld [hl-], a                                   ; $70f7: $32
    nop                                           ; $70f8: $00
    rst $28                                       ; $70f9: $ef
    dec a                                         ; $70fa: $3d
    rst $28                                       ; $70fb: $ef
    dec a                                         ; $70fc: $3d
    add b                                         ; $70fd: $80
    ld e, l                                       ; $70fe: $5d
    rst $38                                       ; $70ff: $ff
    ld a, a                                       ; $7100: $7f

jr_0c2_7101:
    nop                                           ; $7101: $00
    inc a                                         ; $7102: $3c
    ld l, e                                       ; $7103: $6b
    ld e, l                                       ; $7104: $5d
    ldh [rNR13], a                                ; $7105: $e0 $13
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    inc a                                         ; $710a: $3c
    ld l, e                                       ; $710b: $6b
    ld e, l                                       ; $710c: $5d
    nop                                           ; $710d: $00
    inc a                                         ; $710e: $3c
    ld b, $2c                                     ; $710f: $06 $2c

jr_0c2_7111:
    ld a, [bc]                                    ; $7111: $0a
    jr z, jr_0c2_7141                             ; $7112: $28 $2d

    inc h                                         ; $7114: $24
    dec l                                         ; $7115: $2d
    inc h                                         ; $7116: $24
    ld d, c                                       ; $7117: $51
    inc e                                         ; $7118: $1c
    halt                                          ; $7119: $76
    inc d                                         ; $711a: $14
    sbc e                                         ; $711b: $9b
    inc c                                         ; $711c: $0c
    sbc e                                         ; $711d: $9b
    inc c                                         ; $711e: $0c
    cp a                                          ; $711f: $bf
    ld [$002e], sp                                ; $7120: $08 $2e $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    inc l                                         ; $7126: $2c
    nop                                           ; $7127: $00
    inc e                                         ; $7128: $1c
    ld [bc], a                                    ; $7129: $02
    jr jr_0c2_7151                                ; $712a: $18 $25

    inc d                                         ; $712c: $14
    dec b                                         ; $712d: $05
    inc d                                         ; $712e: $14
    add hl, bc                                    ; $712f: $09
    inc c                                         ; $7130: $0c
    ld c, $04                                     ; $7131: $0e $04
    inc de                                        ; $7133: $13
    nop                                           ; $7134: $00
    dec c                                         ; $7135: $0d
    nop                                           ; $7136: $00
    ld [hl-], a                                   ; $7137: $32
    nop                                           ; $7138: $00
    rst $28                                       ; $7139: $ef
    dec a                                         ; $713a: $3d
    rst $28                                       ; $713b: $ef
    dec a                                         ; $713c: $3d
    add b                                         ; $713d: $80
    ld e, l                                       ; $713e: $5d
    rst $38                                       ; $713f: $ff
    ld a, a                                       ; $7140: $7f

jr_0c2_7141:
    nop                                           ; $7141: $00
    inc a                                         ; $7142: $3c
    ld l, e                                       ; $7143: $6b
    ld e, l                                       ; $7144: $5d
    ldh [rNR13], a                                ; $7145: $e0 $13
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    inc a                                         ; $714a: $3c
    ld l, e                                       ; $714b: $6b
    ld e, l                                       ; $714c: $5d
    nop                                           ; $714d: $00
    inc a                                         ; $714e: $3c
    ld b, $2c                                     ; $714f: $06 $2c

jr_0c2_7151:
    ld a, [bc]                                    ; $7151: $0a
    jr z, jr_0c2_7181                             ; $7152: $28 $2d

    inc h                                         ; $7154: $24
    dec l                                         ; $7155: $2d
    inc h                                         ; $7156: $24
    ld d, c                                       ; $7157: $51
    inc e                                         ; $7158: $1c
    halt                                          ; $7159: $76
    inc d                                         ; $715a: $14
    sbc e                                         ; $715b: $9b
    inc c                                         ; $715c: $0c
    sbc e                                         ; $715d: $9b
    inc c                                         ; $715e: $0c
    cp a                                          ; $715f: $bf
    ld [$002e], sp                                ; $7160: $08 $2e $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    inc l                                         ; $7166: $2c
    nop                                           ; $7167: $00
    inc e                                         ; $7168: $1c
    ld [bc], a                                    ; $7169: $02
    jr jr_0c2_7191                                ; $716a: $18 $25

    inc d                                         ; $716c: $14
    dec b                                         ; $716d: $05
    inc d                                         ; $716e: $14
    add hl, bc                                    ; $716f: $09
    inc c                                         ; $7170: $0c
    ld c, $04                                     ; $7171: $0e $04
    inc de                                        ; $7173: $13
    nop                                           ; $7174: $00
    dec c                                         ; $7175: $0d
    nop                                           ; $7176: $00
    ld [hl-], a                                   ; $7177: $32
    nop                                           ; $7178: $00
    rst $28                                       ; $7179: $ef
    dec a                                         ; $717a: $3d
    rst $28                                       ; $717b: $ef
    dec a                                         ; $717c: $3d
    add b                                         ; $717d: $80
    ld e, l                                       ; $717e: $5d
    rst $38                                       ; $717f: $ff
    ld a, a                                       ; $7180: $7f

jr_0c2_7181:
    nop                                           ; $7181: $00
    inc a                                         ; $7182: $3c
    ld l, e                                       ; $7183: $6b
    ld e, l                                       ; $7184: $5d
    ldh [rNR13], a                                ; $7185: $e0 $13
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    inc a                                         ; $718a: $3c
    ld l, e                                       ; $718b: $6b
    ld e, l                                       ; $718c: $5d
    nop                                           ; $718d: $00
    inc a                                         ; $718e: $3c
    ld b, $2c                                     ; $718f: $06 $2c

jr_0c2_7191:
    ld a, [bc]                                    ; $7191: $0a
    jr z, jr_0c2_71c1                             ; $7192: $28 $2d

    inc h                                         ; $7194: $24
    dec l                                         ; $7195: $2d
    inc h                                         ; $7196: $24
    ld d, c                                       ; $7197: $51
    inc e                                         ; $7198: $1c
    halt                                          ; $7199: $76
    inc d                                         ; $719a: $14
    sbc e                                         ; $719b: $9b
    inc c                                         ; $719c: $0c
    sbc e                                         ; $719d: $9b
    inc c                                         ; $719e: $0c
    cp a                                          ; $719f: $bf
    ld [$002e], sp                                ; $71a0: $08 $2e $00
    nop                                           ; $71a3: $00
    nop                                           ; $71a4: $00
    nop                                           ; $71a5: $00
    inc l                                         ; $71a6: $2c
    nop                                           ; $71a7: $00
    inc e                                         ; $71a8: $1c
    ld [bc], a                                    ; $71a9: $02
    jr jr_0c2_71d1                                ; $71aa: $18 $25

    inc d                                         ; $71ac: $14
    dec b                                         ; $71ad: $05
    inc d                                         ; $71ae: $14
    add hl, bc                                    ; $71af: $09
    inc c                                         ; $71b0: $0c
    ld c, $04                                     ; $71b1: $0e $04
    inc de                                        ; $71b3: $13
    nop                                           ; $71b4: $00
    dec c                                         ; $71b5: $0d
    nop                                           ; $71b6: $00
    ld [hl-], a                                   ; $71b7: $32
    nop                                           ; $71b8: $00
    rst $28                                       ; $71b9: $ef
    dec a                                         ; $71ba: $3d
    rst $28                                       ; $71bb: $ef
    dec a                                         ; $71bc: $3d
    add b                                         ; $71bd: $80
    ld e, l                                       ; $71be: $5d
    rst $38                                       ; $71bf: $ff
    ld a, a                                       ; $71c0: $7f

jr_0c2_71c1:
    nop                                           ; $71c1: $00
    inc a                                         ; $71c2: $3c
    ld l, e                                       ; $71c3: $6b
    ld e, l                                       ; $71c4: $5d
    ldh [rNR13], a                                ; $71c5: $e0 $13
    nop                                           ; $71c7: $00
    nop                                           ; $71c8: $00
    nop                                           ; $71c9: $00
    inc a                                         ; $71ca: $3c
    ld l, e                                       ; $71cb: $6b
    ld e, l                                       ; $71cc: $5d
    nop                                           ; $71cd: $00
    inc a                                         ; $71ce: $3c
    ld b, $2c                                     ; $71cf: $06 $2c

jr_0c2_71d1:
    ld a, [bc]                                    ; $71d1: $0a
    jr z, jr_0c2_7201                             ; $71d2: $28 $2d

    inc h                                         ; $71d4: $24
    dec l                                         ; $71d5: $2d
    inc h                                         ; $71d6: $24
    ld d, c                                       ; $71d7: $51
    inc e                                         ; $71d8: $1c
    halt                                          ; $71d9: $76
    inc d                                         ; $71da: $14
    sbc e                                         ; $71db: $9b
    inc c                                         ; $71dc: $0c
    sbc e                                         ; $71dd: $9b
    inc c                                         ; $71de: $0c
    cp a                                          ; $71df: $bf
    ld [$002e], sp                                ; $71e0: $08 $2e $00
    nop                                           ; $71e3: $00
    nop                                           ; $71e4: $00
    nop                                           ; $71e5: $00
    inc l                                         ; $71e6: $2c
    nop                                           ; $71e7: $00
    inc e                                         ; $71e8: $1c
    ld [bc], a                                    ; $71e9: $02
    jr jr_0c2_7211                                ; $71ea: $18 $25

    inc d                                         ; $71ec: $14
    dec b                                         ; $71ed: $05
    inc d                                         ; $71ee: $14
    add hl, bc                                    ; $71ef: $09
    inc c                                         ; $71f0: $0c
    ld c, $04                                     ; $71f1: $0e $04
    inc de                                        ; $71f3: $13
    nop                                           ; $71f4: $00
    dec c                                         ; $71f5: $0d
    nop                                           ; $71f6: $00
    ld [hl-], a                                   ; $71f7: $32
    nop                                           ; $71f8: $00
    rst $28                                       ; $71f9: $ef
    dec a                                         ; $71fa: $3d
    rst $28                                       ; $71fb: $ef
    dec a                                         ; $71fc: $3d
    add b                                         ; $71fd: $80
    ld e, l                                       ; $71fe: $5d
    rst $38                                       ; $71ff: $ff
    ld a, a                                       ; $7200: $7f

jr_0c2_7201:
    nop                                           ; $7201: $00
    inc a                                         ; $7202: $3c
    ld l, e                                       ; $7203: $6b
    ld e, l                                       ; $7204: $5d
    ldh [rNR13], a                                ; $7205: $e0 $13
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    inc a                                         ; $720a: $3c
    ld l, e                                       ; $720b: $6b
    ld e, l                                       ; $720c: $5d
    nop                                           ; $720d: $00
    inc a                                         ; $720e: $3c
    ld b, $2c                                     ; $720f: $06 $2c

jr_0c2_7211:
    ld a, [bc]                                    ; $7211: $0a
    jr z, jr_0c2_7241                             ; $7212: $28 $2d

    inc h                                         ; $7214: $24
    dec l                                         ; $7215: $2d
    inc h                                         ; $7216: $24
    ld d, c                                       ; $7217: $51
    inc e                                         ; $7218: $1c
    halt                                          ; $7219: $76
    inc d                                         ; $721a: $14
    sbc e                                         ; $721b: $9b
    inc c                                         ; $721c: $0c
    sbc e                                         ; $721d: $9b
    inc c                                         ; $721e: $0c
    cp a                                          ; $721f: $bf
    ld [$002e], sp                                ; $7220: $08 $2e $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    inc l                                         ; $7226: $2c
    nop                                           ; $7227: $00
    inc e                                         ; $7228: $1c
    ld [bc], a                                    ; $7229: $02
    jr jr_0c2_7251                                ; $722a: $18 $25

    inc d                                         ; $722c: $14
    dec b                                         ; $722d: $05
    inc d                                         ; $722e: $14
    add hl, bc                                    ; $722f: $09
    inc c                                         ; $7230: $0c
    ld c, $04                                     ; $7231: $0e $04
    inc de                                        ; $7233: $13
    nop                                           ; $7234: $00
    dec c                                         ; $7235: $0d
    nop                                           ; $7236: $00
    ld [hl-], a                                   ; $7237: $32
    nop                                           ; $7238: $00
    rst $28                                       ; $7239: $ef
    dec a                                         ; $723a: $3d
    rst $28                                       ; $723b: $ef
    dec a                                         ; $723c: $3d
    add b                                         ; $723d: $80
    ld e, l                                       ; $723e: $5d
    rst $38                                       ; $723f: $ff
    ld a, a                                       ; $7240: $7f

jr_0c2_7241:
    nop                                           ; $7241: $00
    inc a                                         ; $7242: $3c
    ld l, e                                       ; $7243: $6b
    ld e, l                                       ; $7244: $5d
    ldh [rNR13], a                                ; $7245: $e0 $13
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    inc a                                         ; $724a: $3c
    ld l, e                                       ; $724b: $6b
    ld e, l                                       ; $724c: $5d
    nop                                           ; $724d: $00
    inc a                                         ; $724e: $3c
    ld b, $2c                                     ; $724f: $06 $2c

jr_0c2_7251:
    ld a, [bc]                                    ; $7251: $0a
    jr z, jr_0c2_7281                             ; $7252: $28 $2d

    inc h                                         ; $7254: $24
    dec l                                         ; $7255: $2d
    inc h                                         ; $7256: $24
    ld d, c                                       ; $7257: $51
    inc e                                         ; $7258: $1c
    halt                                          ; $7259: $76
    inc d                                         ; $725a: $14
    sbc e                                         ; $725b: $9b
    inc c                                         ; $725c: $0c
    sbc e                                         ; $725d: $9b
    inc c                                         ; $725e: $0c
    cp a                                          ; $725f: $bf
    ld [$002e], sp                                ; $7260: $08 $2e $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    inc l                                         ; $7266: $2c
    nop                                           ; $7267: $00
    inc e                                         ; $7268: $1c
    ld [bc], a                                    ; $7269: $02
    jr jr_0c2_7291                                ; $726a: $18 $25

    inc d                                         ; $726c: $14
    dec b                                         ; $726d: $05
    inc d                                         ; $726e: $14
    add hl, bc                                    ; $726f: $09
    inc c                                         ; $7270: $0c
    ld c, $04                                     ; $7271: $0e $04
    inc de                                        ; $7273: $13
    nop                                           ; $7274: $00
    dec c                                         ; $7275: $0d
    nop                                           ; $7276: $00
    ld [hl-], a                                   ; $7277: $32
    nop                                           ; $7278: $00
    rst $28                                       ; $7279: $ef
    dec a                                         ; $727a: $3d
    rst $28                                       ; $727b: $ef
    dec a                                         ; $727c: $3d
    add b                                         ; $727d: $80
    ld e, l                                       ; $727e: $5d
    rst $38                                       ; $727f: $ff
    ld a, a                                       ; $7280: $7f

jr_0c2_7281:
    nop                                           ; $7281: $00
    inc a                                         ; $7282: $3c
    ld l, e                                       ; $7283: $6b
    ld e, l                                       ; $7284: $5d
    ldh [rNR13], a                                ; $7285: $e0 $13
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    inc a                                         ; $728a: $3c
    ld l, e                                       ; $728b: $6b
    ld e, l                                       ; $728c: $5d
    nop                                           ; $728d: $00
    inc a                                         ; $728e: $3c
    ld b, $2c                                     ; $728f: $06 $2c

jr_0c2_7291:
    ld a, [bc]                                    ; $7291: $0a
    jr z, jr_0c2_72c1                             ; $7292: $28 $2d

    inc h                                         ; $7294: $24
    dec l                                         ; $7295: $2d
    inc h                                         ; $7296: $24
    ld d, c                                       ; $7297: $51
    inc e                                         ; $7298: $1c
    halt                                          ; $7299: $76
    inc d                                         ; $729a: $14
    sbc e                                         ; $729b: $9b
    inc c                                         ; $729c: $0c
    sbc e                                         ; $729d: $9b
    inc c                                         ; $729e: $0c
    cp a                                          ; $729f: $bf
    ld [$002e], sp                                ; $72a0: $08 $2e $00
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    nop                                           ; $72a5: $00
    inc l                                         ; $72a6: $2c
    nop                                           ; $72a7: $00
    inc e                                         ; $72a8: $1c
    ld [bc], a                                    ; $72a9: $02
    jr jr_0c2_72d1                                ; $72aa: $18 $25

    inc d                                         ; $72ac: $14
    dec b                                         ; $72ad: $05
    inc d                                         ; $72ae: $14
    add hl, bc                                    ; $72af: $09
    inc c                                         ; $72b0: $0c
    ld c, $04                                     ; $72b1: $0e $04
    inc de                                        ; $72b3: $13
    nop                                           ; $72b4: $00
    dec c                                         ; $72b5: $0d
    nop                                           ; $72b6: $00
    ld [hl-], a                                   ; $72b7: $32
    nop                                           ; $72b8: $00
    rst $28                                       ; $72b9: $ef
    dec a                                         ; $72ba: $3d
    rst $28                                       ; $72bb: $ef
    dec a                                         ; $72bc: $3d
    add b                                         ; $72bd: $80
    ld e, l                                       ; $72be: $5d
    rst $38                                       ; $72bf: $ff
    ld a, a                                       ; $72c0: $7f

jr_0c2_72c1:
    nop                                           ; $72c1: $00
    inc a                                         ; $72c2: $3c
    ld l, e                                       ; $72c3: $6b
    ld e, l                                       ; $72c4: $5d
    ldh [rNR13], a                                ; $72c5: $e0 $13
    nop                                           ; $72c7: $00
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    inc a                                         ; $72ca: $3c
    ld l, e                                       ; $72cb: $6b
    ld e, l                                       ; $72cc: $5d
    nop                                           ; $72cd: $00
    inc a                                         ; $72ce: $3c
    ld b, $2c                                     ; $72cf: $06 $2c

jr_0c2_72d1:
    ld a, [bc]                                    ; $72d1: $0a
    jr z, jr_0c2_7301                             ; $72d2: $28 $2d

    inc h                                         ; $72d4: $24
    dec l                                         ; $72d5: $2d
    inc h                                         ; $72d6: $24
    ld d, c                                       ; $72d7: $51
    inc e                                         ; $72d8: $1c
    halt                                          ; $72d9: $76
    inc d                                         ; $72da: $14
    sbc e                                         ; $72db: $9b
    inc c                                         ; $72dc: $0c
    sbc e                                         ; $72dd: $9b
    inc c                                         ; $72de: $0c
    cp a                                          ; $72df: $bf
    ld [$002e], sp                                ; $72e0: $08 $2e $00
    nop                                           ; $72e3: $00
    nop                                           ; $72e4: $00
    nop                                           ; $72e5: $00
    inc l                                         ; $72e6: $2c
    nop                                           ; $72e7: $00
    inc e                                         ; $72e8: $1c
    ld [bc], a                                    ; $72e9: $02
    jr jr_0c2_7311                                ; $72ea: $18 $25

    inc d                                         ; $72ec: $14
    dec b                                         ; $72ed: $05
    inc d                                         ; $72ee: $14
    add hl, bc                                    ; $72ef: $09
    inc c                                         ; $72f0: $0c
    ld c, $04                                     ; $72f1: $0e $04
    inc de                                        ; $72f3: $13
    nop                                           ; $72f4: $00
    dec c                                         ; $72f5: $0d
    nop                                           ; $72f6: $00
    ld [hl-], a                                   ; $72f7: $32
    nop                                           ; $72f8: $00
    rst $28                                       ; $72f9: $ef
    dec a                                         ; $72fa: $3d
    rst $28                                       ; $72fb: $ef
    dec a                                         ; $72fc: $3d
    add b                                         ; $72fd: $80
    ld e, l                                       ; $72fe: $5d
    rst $38                                       ; $72ff: $ff
    ld a, a                                       ; $7300: $7f

jr_0c2_7301:
    nop                                           ; $7301: $00
    inc a                                         ; $7302: $3c
    ld l, e                                       ; $7303: $6b
    ld e, l                                       ; $7304: $5d
    ldh [rNR13], a                                ; $7305: $e0 $13
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    inc a                                         ; $730a: $3c
    ld l, e                                       ; $730b: $6b
    ld e, l                                       ; $730c: $5d
    nop                                           ; $730d: $00
    inc a                                         ; $730e: $3c
    ld b, $2c                                     ; $730f: $06 $2c

jr_0c2_7311:
    ld a, [bc]                                    ; $7311: $0a
    jr z, jr_0c2_7341                             ; $7312: $28 $2d

    inc h                                         ; $7314: $24
    dec l                                         ; $7315: $2d
    inc h                                         ; $7316: $24
    ld d, c                                       ; $7317: $51
    inc e                                         ; $7318: $1c
    halt                                          ; $7319: $76
    inc d                                         ; $731a: $14
    sbc e                                         ; $731b: $9b
    inc c                                         ; $731c: $0c
    sbc e                                         ; $731d: $9b
    inc c                                         ; $731e: $0c
    cp a                                          ; $731f: $bf
    ld [$002e], sp                                ; $7320: $08 $2e $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    inc l                                         ; $7326: $2c
    nop                                           ; $7327: $00
    inc e                                         ; $7328: $1c
    ld [bc], a                                    ; $7329: $02
    jr jr_0c2_7351                                ; $732a: $18 $25

    inc d                                         ; $732c: $14
    dec b                                         ; $732d: $05
    inc d                                         ; $732e: $14
    add hl, bc                                    ; $732f: $09
    inc c                                         ; $7330: $0c
    ld c, $04                                     ; $7331: $0e $04
    inc de                                        ; $7333: $13
    nop                                           ; $7334: $00
    dec c                                         ; $7335: $0d
    nop                                           ; $7336: $00
    ld [hl-], a                                   ; $7337: $32
    nop                                           ; $7338: $00
    rst $28                                       ; $7339: $ef
    dec a                                         ; $733a: $3d
    rst $28                                       ; $733b: $ef
    dec a                                         ; $733c: $3d
    add b                                         ; $733d: $80
    ld e, l                                       ; $733e: $5d
    rst $38                                       ; $733f: $ff
    ld a, a                                       ; $7340: $7f

jr_0c2_7341:
    nop                                           ; $7341: $00
    inc a                                         ; $7342: $3c
    ld l, e                                       ; $7343: $6b
    ld e, l                                       ; $7344: $5d
    ldh [rNR13], a                                ; $7345: $e0 $13
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    inc a                                         ; $734a: $3c
    ld l, e                                       ; $734b: $6b
    ld e, l                                       ; $734c: $5d
    nop                                           ; $734d: $00
    inc a                                         ; $734e: $3c
    ld b, $2c                                     ; $734f: $06 $2c

jr_0c2_7351:
    ld a, [bc]                                    ; $7351: $0a
    jr z, jr_0c2_7381                             ; $7352: $28 $2d

    inc h                                         ; $7354: $24
    dec l                                         ; $7355: $2d
    inc h                                         ; $7356: $24
    ld d, c                                       ; $7357: $51
    inc e                                         ; $7358: $1c
    halt                                          ; $7359: $76
    inc d                                         ; $735a: $14
    sbc e                                         ; $735b: $9b
    inc c                                         ; $735c: $0c
    sbc e                                         ; $735d: $9b
    inc c                                         ; $735e: $0c
    cp a                                          ; $735f: $bf
    ld [$002e], sp                                ; $7360: $08 $2e $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    inc l                                         ; $7366: $2c
    nop                                           ; $7367: $00
    inc e                                         ; $7368: $1c
    ld [bc], a                                    ; $7369: $02
    jr @+$27                                      ; $736a: $18 $25

    inc d                                         ; $736c: $14
    dec b                                         ; $736d: $05
    inc d                                         ; $736e: $14
    add hl, bc                                    ; $736f: $09
    inc c                                         ; $7370: $0c
    ld c, $04                                     ; $7371: $0e $04
    inc de                                        ; $7373: $13
    nop                                           ; $7374: $00
    dec c                                         ; $7375: $0d
    nop                                           ; $7376: $00
    ld [hl-], a                                   ; $7377: $32
    nop                                           ; $7378: $00
    rst $28                                       ; $7379: $ef
    dec a                                         ; $737a: $3d
    rst $28                                       ; $737b: $ef
    dec a                                         ; $737c: $3d
    nop                                           ; $737d: $00
    nop                                           ; $737e: $00
    or b                                          ; $737f: $b0
    dec a                                         ; $7380: $3d

jr_0c2_7381:
    db $eb                                        ; $7381: $eb
    inc h                                         ; $7382: $24
    sbc d                                         ; $7383: $9a
    ld d, b                                       ; $7384: $50
    sbc d                                         ; $7385: $9a
    ld d, b                                       ; $7386: $50
    ld [de], a                                    ; $7387: $12
    ld b, h                                       ; $7388: $44
    ld a, [bc]                                    ; $7389: $0a
    ld b, b                                       ; $738a: $40
    inc b                                         ; $738b: $04
    jr nc, jr_0c2_738e                            ; $738c: $30 $00

jr_0c2_738e:
    nop                                           ; $738e: $00
    ld bc, $0a1c                                  ; $738f: $01 $1c $0a
    ld b, b                                       ; $7392: $40
    inc b                                         ; $7393: $04
    jr nc, jr_0c2_73d6                            ; $7394: $30 $40

    db $10                                        ; $7396: $10
    add d                                         ; $7397: $82
    inc e                                         ; $7398: $1c
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    ld h, $31                                     ; $739b: $26 $31
    inc b                                         ; $739d: $04
    nop                                           ; $739e: $00
    ld b, [hl]                                    ; $739f: $46
    inc e                                         ; $73a0: $1c
    nop                                           ; $73a1: $00
    nop                                           ; $73a2: $00
    ldh a, [$29]                                  ; $73a3: $f0 $29
    jr nz, jr_0c2_73af                            ; $73a5: $20 $08

    ld h, c                                       ; $73a7: $61
    jr jr_0c2_73aa                                ; $73a8: $18 $00

jr_0c2_73aa:
    nop                                           ; $73aa: $00
    ld l, h                                       ; $73ab: $6c
    db $10                                        ; $73ac: $10
    ld b, d                                       ; $73ad: $42
    nop                                           ; $73ae: $00

jr_0c2_73af:
    add l                                         ; $73af: $85
    inc b                                         ; $73b0: $04
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    sub h                                         ; $73b3: $94
    ld l, $00                                     ; $73b4: $2e $00
    nop                                           ; $73b6: $00
    reti                                          ; $73b7: $d9


    ld a, [de]                                    ; $73b8: $1a
    ld [hl], l                                    ; $73b9: $75
    ld e, $6e                                     ; $73ba: $1e $6e
    ld hl, $0000                                  ; $73bc: $21 $00 $00
    or b                                          ; $73bf: $b0
    dec a                                         ; $73c0: $3d
    db $eb                                        ; $73c1: $eb
    inc h                                         ; $73c2: $24
    sbc d                                         ; $73c3: $9a
    ld d, b                                       ; $73c4: $50
    pop de                                        ; $73c5: $d1
    dec b                                         ; $73c6: $05
    inc l                                         ; $73c7: $2c
    ld bc, $509a                                  ; $73c8: $01 $9a $50
    ld [de], a                                    ; $73cb: $12
    ld b, h                                       ; $73cc: $44
    ld d, l                                       ; $73cd: $55
    ld a, [bc]                                    ; $73ce: $0a
    inc l                                         ; $73cf: $2c
    ld bc, $0ce0                                  ; $73d0: $01 $e0 $0c
    ld b, [hl]                                    ; $73d3: $46
    nop                                           ; $73d4: $00
    nop                                           ; $73d5: $00

jr_0c2_73d6:
    nop                                           ; $73d6: $00
    and d                                         ; $73d7: $a2
    dec b                                         ; $73d8: $05
    ldh [$0c], a                                  ; $73d9: $e0 $0c
    sbc d                                         ; $73db: $9a
    ld d, b                                       ; $73dc: $50
    xor [hl]                                      ; $73dd: $ae
    rlca                                          ; $73de: $07
    ret nz                                        ; $73df: $c0

    ld bc, $012c                                  ; $73e0: $01 $2c $01
    add d                                         ; $73e3: $82
    ld [$0a55], sp                                ; $73e4: $08 $55 $0a
    inc l                                         ; $73e7: $2c
    ld bc, $6180                                  ; $73e8: $01 $80 $61
    ret nz                                        ; $73eb: $c0

    ld b, h                                       ; $73ec: $44
    ld d, l                                       ; $73ed: $55
    ld a, [bc]                                    ; $73ee: $0a
    inc l                                         ; $73ef: $2c
    ld bc, $0046                                  ; $73f0: $01 $46 $00
    nop                                           ; $73f3: $00
    nop                                           ; $73f4: $00
    ld l, h                                       ; $73f5: $6c
    ld b, $a5                                     ; $73f6: $06 $a5
    ld bc, $0a13                                  ; $73f8: $01 $13 $0a
    inc l                                         ; $73fb: $2c
    ld bc, $0001                                  ; $73fc: $01 $01 $00
    rst $38                                       ; $73ff: $ff
    ld a, a                                       ; $7400: $7f
    sub h                                         ; $7401: $94
    dec e                                         ; $7402: $1d
    ld a, a                                       ; $7403: $7f
    ld [hl+], a                                   ; $7404: $22
    rst $28                                       ; $7405: $ef
    dec a                                         ; $7406: $3d
    rst $28                                       ; $7407: $ef
    dec a                                         ; $7408: $3d
    rst $28                                       ; $7409: $ef
    dec a                                         ; $740a: $3d
    rst $28                                       ; $740b: $ef
    dec a                                         ; $740c: $3d
    rst $28                                       ; $740d: $ef
    dec a                                         ; $740e: $3d
    rst $28                                       ; $740f: $ef
    dec a                                         ; $7410: $3d
    rst $28                                       ; $7411: $ef
    dec a                                         ; $7412: $3d
    rst $28                                       ; $7413: $ef
    dec a                                         ; $7414: $3d
    ld a, a                                       ; $7415: $7f
    ld [hl+], a                                   ; $7416: $22
    sbc $77                                       ; $7417: $de $77
    pop af                                        ; $7419: $f1
    add hl, sp                                    ; $741a: $39
    ld h, e                                       ; $741b: $63
    inc c                                         ; $741c: $0c
    ld a, a                                       ; $741d: $7f
    ld [hl+], a                                   ; $741e: $22
    rra                                           ; $741f: $1f
    ld a, [hl]                                    ; $7420: $7e
    jr nc, jr_0c2_7463                            ; $7421: $30 $40

    ld h, e                                       ; $7423: $63
    inc c                                         ; $7424: $0c
    ld a, a                                       ; $7425: $7f
    ld [hl+], a                                   ; $7426: $22
    rst $38                                       ; $7427: $ff
    inc bc                                        ; $7428: $03
    sub l                                         ; $7429: $95
    ld bc, $0c63                                  ; $742a: $01 $63 $0c
    ld a, a                                       ; $742d: $7f
    ld [hl+], a                                   ; $742e: $22
    add e                                         ; $742f: $83
    ld [hl], e                                    ; $7430: $73
    pop bc                                        ; $7431: $c1
    dec l                                         ; $7432: $2d
    ld h, e                                       ; $7433: $63
    inc c                                         ; $7434: $0c
    ld a, a                                       ; $7435: $7f
    ld [hl+], a                                   ; $7436: $22

jr_0c2_7437:
    nop                                           ; $7437: $00
    inc bc                                        ; $7438: $03
    rst $28                                       ; $7439: $ef
    inc b                                         ; $743a: $04
    add e                                         ; $743b: $83
    db $10                                        ; $743c: $10
    ld e, h                                       ; $743d: $5c
    ld [de], a                                    ; $743e: $12
    sub [hl]                                      ; $743f: $96
    ld de, $150e                                  ; $7440: $11 $0e $15
    ld h, l                                       ; $7443: $65
    inc e                                         ; $7444: $1c
    nop                                           ; $7445: $00
    jr nz, @+$01                                  ; $7446: $20 $ff

    ld a, a                                       ; $7448: $7f
    xor $41                                       ; $7449: $ee $41
    ld e, h                                       ; $744b: $5c
    ld [de], a                                    ; $744c: $12
    dec b                                         ; $744d: $05
    nop                                           ; $744e: $00
    rst $38                                       ; $744f: $ff
    scf                                           ; $7450: $37
    xor $29                                       ; $7451: $ee $29

jr_0c2_7453:
    ld e, h                                       ; $7453: $5c
    ld [de], a                                    ; $7454: $12
    inc b                                         ; $7455: $04
    jr nz, jr_0c2_7437                            ; $7456: $20 $df

    ld a, [hl]                                    ; $7458: $7e
    adc a                                         ; $7459: $8f
    ld d, l                                       ; $745a: $55
    ld e, h                                       ; $745b: $5c
    ld [de], a                                    ; $745c: $12
    nop                                           ; $745d: $00
    jr nz, jr_0c2_7453                            ; $745e: $20 $f3

    ld a, a                                       ; $7460: $7f
    and $55                                       ; $7461: $e6 $55

jr_0c2_7463:
    ld e, h                                       ; $7463: $5c
    ld [de], a                                    ; $7464: $12
    rlca                                          ; $7465: $07
    nop                                           ; $7466: $00
    cp a                                          ; $7467: $bf
    ld d, [hl]                                    ; $7468: $56
    dec d                                         ; $7469: $15
    ld sp, $125c                                  ; $746a: $31 $5c $12
    ld h, b                                       ; $746d: $60
    nop                                           ; $746e: $00
    rst $30                                       ; $746f: $f7
    ld c, a                                       ; $7470: $4f
    jr z, jr_0c2_7495                             ; $7471: $28 $22

    ld e, h                                       ; $7473: $5c
    ld [de], a                                    ; $7474: $12
    ld b, b                                       ; $7475: $40
    inc h                                         ; $7476: $24
    ld a, e                                       ; $7477: $7b
    ld a, a                                       ; $7478: $7f
    adc d                                         ; $7479: $8a
    ld d, c                                       ; $747a: $51
    ld e, h                                       ; $747b: $5c
    ld [de], a                                    ; $747c: $12
    nop                                           ; $747d: $00
    nop                                           ; $747e: $00
    rst $38                                       ; $747f: $ff
    ld a, a                                       ; $7480: $7f
    adc h                                         ; $7481: $8c
    inc c                                         ; $7482: $0c
    ld b, [hl]                                    ; $7483: $46
    inc b                                         ; $7484: $04
    cp b                                          ; $7485: $b8
    ld c, [hl]                                    ; $7486: $4e
    inc sp                                        ; $7487: $33
    ld a, [hl-]                                   ; $7488: $3a
    adc l                                         ; $7489: $8d
    add hl, hl                                    ; $748a: $29
    ld [$1e15], sp                                ; $748b: $08 $15 $1e
    ld b, e                                       ; $748e: $43
    cp d                                          ; $748f: $ba
    ld b, d                                       ; $7490: $42
    ld d, [hl]                                    ; $7491: $56
    ld b, [hl]                                    ; $7492: $46
    and a                                         ; $7493: $a7
    inc h                                         ; $7494: $24

jr_0c2_7495:
    rst $18                                       ; $7495: $df
    ld [hl-], a                                   ; $7496: $32
    sub $25                                       ; $7497: $d6 $25
    ld d, c                                       ; $7499: $51
    ld hl, $248a                                  ; $749a: $21 $8a $24
    ei                                            ; $749d: $fb
    ld a, a                                       ; $749e: $7f
    ld l, $5b                                     ; $749f: $2e $5b
    add hl, hl                                    ; $74a1: $29
    ld a, $25                                     ; $74a2: $3e $25
    ld hl, $3def                                  ; $74a4: $21 $ef $3d
    rst $28                                       ; $74a7: $ef
    dec a                                         ; $74a8: $3d
    rst $28                                       ; $74a9: $ef
    dec a                                         ; $74aa: $3d
    rst $28                                       ; $74ab: $ef
    dec a                                         ; $74ac: $3d
    ld d, [hl]                                    ; $74ad: $56
    ld b, [hl]                                    ; $74ae: $46
    or c                                          ; $74af: $b1
    ld b, l                                       ; $74b0: $45
    dec c                                         ; $74b1: $0d
    ld c, c                                       ; $74b2: $49
    and a                                         ; $74b3: $a7
    inc h                                         ; $74b4: $24
    ld a, [hl-]                                   ; $74b5: $3a
    ld e, $31                                     ; $74b6: $1e $31
    ld de, $0cac                                  ; $74b8: $11 $ac $0c
    dec b                                         ; $74bb: $05
    db $10                                        ; $74bc: $10
    rst $38                                       ; $74bd: $ff
    ld a, a                                       ; $74be: $7f
    dec l                                         ; $74bf: $2d
    ld a, $84                                     ; $74c0: $3e $84
    dec d                                         ; $74c2: $15
    jr nz, @+$1a                                  ; $74c3: $20 $18

    ld e, h                                       ; $74c5: $5c
    ld [de], a                                    ; $74c6: $12
    sub [hl]                                      ; $74c7: $96
    ld de, $150e                                  ; $74c8: $11 $0e $15
    ld h, l                                       ; $74cb: $65
    inc e                                         ; $74cc: $1c
    dec a                                         ; $74cd: $3d
    inc bc                                        ; $74ce: $03
    ld a, a                                       ; $74cf: $7f
    ld c, [hl]                                    ; $74d0: $4e
    ld [hl], l                                    ; $74d1: $75
    ld bc, $0c22                                  ; $74d2: $01 $22 $0c
    pop de                                        ; $74d5: $d1
    ld a, [hl]                                    ; $74d6: $7e
    ld a, a                                       ; $74d7: $7f
    ld c, [hl]                                    ; $74d8: $4e
    add c                                         ; $74d9: $81
    ld b, c                                       ; $74da: $41
    ld b, b                                       ; $74db: $40
    ld [$49b4], sp                                ; $74dc: $08 $b4 $49
    ld a, a                                       ; $74df: $7f
    ld c, [hl]                                    ; $74e0: $4e
    inc c                                         ; $74e1: $0c
    ld b, l                                       ; $74e2: $45
    ld b, e                                       ; $74e3: $43
    inc c                                         ; $74e4: $0c
    daa                                           ; $74e5: $27
    ld b, a                                       ; $74e6: $47
    ld a, a                                       ; $74e7: $7f
    ld c, [hl]                                    ; $74e8: $4e
    add d                                         ; $74e9: $82
    dec d                                         ; $74ea: $15
    ld b, c                                       ; $74eb: $41
    ld [$3ed8], sp                                ; $74ec: $08 $d8 $3e
    ld a, a                                       ; $74ef: $7f
    ld c, [hl]                                    ; $74f0: $4e
    ld c, h                                       ; $74f1: $4c
    ld hl, $0043                                  ; $74f2: $21 $43 $00
    ld a, a                                       ; $74f5: $7f
    ld bc, $4e7f                                  ; $74f6: $01 $7f $4e
    or h                                          ; $74f9: $b4
    nop                                           ; $74fa: $00
    ld b, l                                       ; $74fb: $45
    nop                                           ; $74fc: $00
    rst $38                                       ; $74fd: $ff
    ld a, a                                       ; $74fe: $7f
    rst $28                                       ; $74ff: $ef
    dec a                                         ; $7500: $3d
    rst $28                                       ; $7501: $ef
    dec a                                         ; $7502: $3d
    rst $28                                       ; $7503: $ef
    dec a                                         ; $7504: $3d
    ccf                                           ; $7505: $3f
    inc bc                                        ; $7506: $03
    ld d, h                                       ; $7507: $54
    ld bc, $1015                                  ; $7508: $01 $15 $10
    nop                                           ; $750b: $00
    nop                                           ; $750c: $00
    ld e, l                                       ; $750d: $5d
    ld b, e                                       ; $750e: $43
    sub e                                         ; $750f: $93
    ld d, d                                       ; $7510: $52
    and b                                         ; $7511: $a0
    dec h                                         ; $7512: $25
    add h                                         ; $7513: $84
    inc c                                         ; $7514: $0c
    cp a                                          ; $7515: $bf
    scf                                           ; $7516: $37
    cp e                                          ; $7517: $bb
    ld a, a                                       ; $7518: $7f
    ld c, $4a                                     ; $7519: $0e $4a
    rst $00                                       ; $751b: $c7
    inc e                                         ; $751c: $1c
    and [hl]                                      ; $751d: $a6
    ld c, h                                       ; $751e: $4c
    add hl, de                                    ; $751f: $19
    ld l, e                                       ; $7520: $6b
    ld [hl], b                                    ; $7521: $70
    dec c                                         ; $7522: $0d
    ld h, e                                       ; $7523: $63
    ld [$3def], sp                                ; $7524: $08 $ef $3d
    adc c                                         ; $7527: $89
    ld [$0046], sp                                ; $7528: $08 $46 $00
    inc hl                                        ; $752b: $23
    nop                                           ; $752c: $00
    rst $28                                       ; $752d: $ef
    dec a                                         ; $752e: $3d
    db $ec                                        ; $752f: $ec
    db $10                                        ; $7530: $10
    adc c                                         ; $7531: $89
    ld [$0023], sp                                ; $7532: $08 $23 $00
    ld e, l                                       ; $7535: $5d
    ld h, e                                       ; $7536: $63
    rst $30                                       ; $7537: $f7
    dec e                                         ; $7538: $1d
    db $ec                                        ; $7539: $ec
    db $10                                        ; $753a: $10
    inc hl                                        ; $753b: $23
    nop                                           ; $753c: $00
    rst $38                                       ; $753d: $ff
    ld a, a                                       ; $753e: $7f
    rst $28                                       ; $753f: $ef
    dec a                                         ; $7540: $3d
    rst $28                                       ; $7541: $ef
    dec a                                         ; $7542: $3d
    rst $28                                       ; $7543: $ef
    dec a                                         ; $7544: $3d
    ccf                                           ; $7545: $3f
    inc bc                                        ; $7546: $03
    ld d, h                                       ; $7547: $54
    ld bc, $1015                                  ; $7548: $01 $15 $10
    nop                                           ; $754b: $00
    nop                                           ; $754c: $00
    ei                                            ; $754d: $fb
    ld a, $f9                                     ; $754e: $3e $f9
    dec e                                         ; $7550: $1d
    ld l, l                                       ; $7551: $6d
    ld hl, $0000                                  ; $7552: $21 $00 $00
    db $ec                                        ; $7555: $ec
    db $10                                        ; $7556: $10
    ld a, a                                       ; $7557: $7f
    ld c, [hl]                                    ; $7558: $4e
    ld c, d                                       ; $7559: $4a
    add hl, hl                                    ; $755a: $29
    nop                                           ; $755b: $00
    nop                                           ; $755c: $00
    db $ec                                        ; $755d: $ec
    db $10                                        ; $755e: $10
    adc c                                         ; $755f: $89
    inc c                                         ; $7560: $0c
    ld b, l                                       ; $7561: $45
    ld [$0402], sp                                ; $7562: $08 $02 $04
    adc c                                         ; $7565: $89
    inc c                                         ; $7566: $0c
    ld b, l                                       ; $7567: $45
    ld [$0402], sp                                ; $7568: $08 $02 $04
    ld [bc], a                                    ; $756b: $02
    inc b                                         ; $756c: $04
    rst $18                                       ; $756d: $df
    dec hl                                        ; $756e: $2b
    sub [hl]                                      ; $756f: $96
    add hl, bc                                    ; $7570: $09
    dec d                                         ; $7571: $15
    stop                                          ; $7572: $10 $00
    nop                                           ; $7574: $00
    cp a                                          ; $7575: $bf
    ld d, e                                       ; $7576: $53
    ld d, $1a                                     ; $7577: $16 $1a
    dec d                                         ; $7579: $15
    stop                                          ; $757a: $10 $00
    nop                                           ; $757c: $00
    rst $38                                       ; $757d: $ff
    dec sp                                        ; $757e: $3b
    halt                                          ; $757f: $76
    ld e, $4d                                     ; $7580: $1e $4d
    dec c                                         ; $7582: $0d
    inc bc                                        ; $7583: $03
    nop                                           ; $7584: $00
    push af                                       ; $7585: $f5
    ld a, a                                       ; $7586: $7f
    ld h, a                                       ; $7587: $67
    ld h, [hl]                                    ; $7588: $66
    ld b, e                                       ; $7589: $43
    add hl, sp                                    ; $758a: $39
    nop                                           ; $758b: $00
    db $10                                        ; $758c: $10
    ld e, a                                       ; $758d: $5f
    dec sp                                        ; $758e: $3b
    jr jr_0c2_7592                                ; $758f: $18 $01

    dec c                                         ; $7591: $0d

jr_0c2_7592:
    nop                                           ; $7592: $00
    inc bc                                        ; $7593: $03
    nop                                           ; $7594: $00
    push af                                       ; $7595: $f5
    ld h, e                                       ; $7596: $63
    call z, $8302                                 ; $7597: $cc $02 $83
    ld bc, $0060                                  ; $759a: $01 $60 $00
    ld e, a                                       ; $759d: $5f
    ld a, a                                       ; $759e: $7f
    ld d, a                                       ; $759f: $57
    ld e, l                                       ; $75a0: $5d
    xor l                                         ; $75a1: $ad
    inc [hl]                                      ; $75a2: $34
    inc bc                                        ; $75a3: $03
    inc c                                         ; $75a4: $0c
    ld a, b                                       ; $75a5: $78
    ld a, a                                       ; $75a6: $7f
    ld [hl], d                                    ; $75a7: $72
    ld a, l                                       ; $75a8: $7d
    xor d                                         ; $75a9: $aa
    ld c, h                                       ; $75aa: $4c
    inc bc                                        ; $75ab: $03
    inc e                                         ; $75ac: $1c
    cp h                                          ; $75ad: $bc
    ld a, a                                       ; $75ae: $7f
    ld [hl], c                                    ; $75af: $71
    ld e, d                                       ; $75b0: $5a
    ld c, c                                       ; $75b1: $49
    ld sp, $0842                                  ; $75b2: $31 $42 $08
    ld e, a                                       ; $75b5: $5f
    ld e, a                                       ; $75b6: $5f
    ld [hl], $3e                                  ; $75b7: $36 $3e
    inc l                                         ; $75b9: $2c
    ld hl, $0003                                  ; $75ba: $21 $03 $00
    cp d                                          ; $75bd: $ba
    ld a, a                                       ; $75be: $7f
    ld l, $5a                                     ; $75bf: $2e $5a
    add h                                         ; $75c1: $84
    inc d                                         ; $75c2: $14
    rst $18                                       ; $75c3: $df
    scf                                           ; $75c4: $37
    rst $38                                       ; $75c5: $ff
    ld a, a                                       ; $75c6: $7f
    ld h, $39                                     ; $75c7: $26 $39
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    ld [hl], a                                    ; $75cb: $77
    ld d, $ba                                     ; $75cc: $16 $ba
    ld a, a                                       ; $75ce: $7f
    rrca                                          ; $75cf: $0f
    ld d, d                                       ; $75d0: $52
    db $e4                                        ; $75d1: $e4
    jr c, jr_0c2_75d4                             ; $75d2: $38 $00

jr_0c2_75d4:
    nop                                           ; $75d4: $00
    rst $38                                       ; $75d5: $ff
    dec a                                         ; $75d6: $3d
    rst $38                                       ; $75d7: $ff
    dec a                                         ; $75d8: $3d
    rst $38                                       ; $75d9: $ff
    dec a                                         ; $75da: $3d
    rst $38                                       ; $75db: $ff
    dec a                                         ; $75dc: $3d
    rst $38                                       ; $75dd: $ff
    dec a                                         ; $75de: $3d
    rst $38                                       ; $75df: $ff
    dec a                                         ; $75e0: $3d
    rst $38                                       ; $75e1: $ff
    dec a                                         ; $75e2: $3d
    rst $38                                       ; $75e3: $ff
    dec a                                         ; $75e4: $3d
    rst $38                                       ; $75e5: $ff
    dec a                                         ; $75e6: $3d
    rst $38                                       ; $75e7: $ff
    dec a                                         ; $75e8: $3d
    rst $38                                       ; $75e9: $ff
    dec a                                         ; $75ea: $3d
    rst $38                                       ; $75eb: $ff
    dec a                                         ; $75ec: $3d
    rst $38                                       ; $75ed: $ff
    dec a                                         ; $75ee: $3d
    rst $38                                       ; $75ef: $ff
    dec a                                         ; $75f0: $3d
    rst $38                                       ; $75f1: $ff
    dec a                                         ; $75f2: $3d
    rst $38                                       ; $75f3: $ff
    dec a                                         ; $75f4: $3d
    rst $38                                       ; $75f5: $ff
    dec a                                         ; $75f6: $3d
    rst $38                                       ; $75f7: $ff
    dec a                                         ; $75f8: $3d
    rst $38                                       ; $75f9: $ff
    dec a                                         ; $75fa: $3d
    rst $38                                       ; $75fb: $ff
    dec a                                         ; $75fc: $3d
    rst $38                                       ; $75fd: $ff
    ld a, a                                       ; $75fe: $7f
    dec [hl]                                      ; $75ff: $35
    ld [hl], $0c                                  ; $7600: $36 $0c
    add hl, de                                    ; $7602: $19
    dec b                                         ; $7603: $05
    db $10                                        ; $7604: $10
    ld d, e                                       ; $7605: $53
    ld a, e                                       ; $7606: $7b
    jp z, $8451                                   ; $7607: $ca $51 $84

    inc c                                         ; $760a: $0c
    and [hl]                                      ; $760b: $a6
    inc a                                         ; $760c: $3c
    sbc l                                         ; $760d: $9d
    ld a, [hl-]                                   ; $760e: $3a
    ld l, [hl]                                    ; $760f: $6e
    dec d                                         ; $7610: $15
    add h                                         ; $7611: $84
    inc c                                         ; $7612: $0c
    and [hl]                                      ; $7613: $a6
    inc a                                         ; $7614: $3c
    adc l                                         ; $7615: $8d
    ld h, [hl]                                    ; $7616: $66
    inc b                                         ; $7617: $04
    add hl, sp                                    ; $7618: $39
    nop                                           ; $7619: $00
    nop                                           ; $761a: $00
    nop                                           ; $761b: $00
    inc h                                         ; $761c: $24
    call nc, $a821                                ; $761d: $d4 $21 $a8
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    inc h                                         ; $7624: $24
    rst $38                                       ; $7625: $ff
    ld a, a                                       ; $7626: $7f
    inc b                                         ; $7627: $04
    add hl, sp                                    ; $7628: $39
    nop                                           ; $7629: $00
    nop                                           ; $762a: $00
    nop                                           ; $762b: $00
    inc h                                         ; $762c: $24
    rst $38                                       ; $762d: $ff
    ld a, a                                       ; $762e: $7f
    xor b                                         ; $762f: $a8
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    inc h                                         ; $7634: $24
    jr jr_0c2_7637                                ; $7635: $18 $00

jr_0c2_7637:
    jr jr_0c2_7639                                ; $7637: $18 $00

jr_0c2_7639:
    jr jr_0c2_763b                                ; $7639: $18 $00

jr_0c2_763b:
    jr jr_0c2_763d                                ; $763b: $18 $00

jr_0c2_763d:
    ld a, e                                       ; $763d: $7b
    ld l, a                                       ; $763e: $6f
    rst $28                                       ; $763f: $ef
    ld b, c                                       ; $7640: $41
    ccf                                           ; $7641: $3f
    daa                                           ; $7642: $27
    push bc                                       ; $7643: $c5
    inc d                                         ; $7644: $14
    dec de                                        ; $7645: $1b
    nop                                           ; $7646: $00
    rst $28                                       ; $7647: $ef
    ld b, c                                       ; $7648: $41
    ccf                                           ; $7649: $3f
    daa                                           ; $764a: $27
    and e                                         ; $764b: $a3
    inc c                                         ; $764c: $0c
    ld a, e                                       ; $764d: $7b
    ld l, a                                       ; $764e: $6f
    rst $28                                       ; $764f: $ef
    ld b, c                                       ; $7650: $41
    and b                                         ; $7651: $a0
    dec h                                         ; $7652: $25
    and e                                         ; $7653: $a3
    inc c                                         ; $7654: $0c
    rst $38                                       ; $7655: $ff
    ld a, a                                       ; $7656: $7f
    ld [$c025], sp                                ; $7657: $08 $25 $c0
    ld [$0441], sp                                ; $765a: $08 $41 $04
    rst $38                                       ; $765d: $ff
    ld a, a                                       ; $765e: $7f
    ld [$1625], sp                                ; $765f: $08 $25 $16
    ld a, [bc]                                    ; $7662: $0a
    ld b, c                                       ; $7663: $41
    inc b                                         ; $7664: $04
    sub $5a                                       ; $7665: $d6 $5a
    ld [$c025], sp                                ; $7667: $08 $25 $c0
    ld [$0441], sp                                ; $766a: $08 $41 $04
    sub $5a                                       ; $766d: $d6 $5a
    ld [$1625], sp                                ; $766f: $08 $25 $16
    ld a, [bc]                                    ; $7672: $0a
    ld b, c                                       ; $7673: $41
    inc b                                         ; $7674: $04
    ld c, [hl]                                    ; $7675: $4e
    ld d, [hl]                                    ; $7676: $56
    ld a, b                                       ; $7677: $78
    ld l, c                                       ; $7678: $69
    ld c, l                                       ; $7679: $4d
    jr c, @+$24                                   ; $767a: $38 $22

    db $10                                        ; $767c: $10

    db $ff, $7f, $7e, $26, $93, $00, $62, $44, $ff, $7f, $62, $44, $62, $44, $62, $44
    db $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d
    db $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d
    db $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d
    db $00, $00, $ff, $7f, $1f, $00, $1f, $00, $00, $08, $ff, $7f, $1f, $00, $1f, $00
    db $00, $14, $ff, $7f, $1f, $00, $1f, $00, $00, $20, $ff, $7f, $1f, $00, $1f, $00
    db $00, $30, $ff, $7f, $1f, $00, $1f, $00, $00, $40, $ff, $7f, $1f, $00, $1f, $00
    db $00, $58, $ff, $7f, $1f, $00, $1f, $00, $00, $70, $ff, $7f, $1f, $00, $1f, $00
    db $01, $04, $ff, $7f, $13, $00, $13, $00, $a0, $00, $ff, $7f, $13, $00, $13, $00
    db $00, $01, $ff, $7f, $13, $00, $13, $00, $60, $01, $ff, $7f, $13, $00, $13, $00

    rrca                                          ; $771d: $0f
    ld a, h                                       ; $771e: $7c
    dec bc                                        ; $771f: $0b
    ld l, b                                       ; $7720: $68
    rlca                                          ; $7721: $07
    ld d, b                                       ; $7722: $50
    inc b                                         ; $7723: $04
    inc a                                         ; $7724: $3c
    inc de                                        ; $7725: $13
    nop                                           ; $7726: $00
    inc de                                        ; $7727: $13
    nop                                           ; $7728: $00
    inc de                                        ; $7729: $13
    nop                                           ; $772a: $00
    inc de                                        ; $772b: $13
    nop                                           ; $772c: $00
    inc de                                        ; $772d: $13
    nop                                           ; $772e: $00
    inc de                                        ; $772f: $13
    nop                                           ; $7730: $00
    inc de                                        ; $7731: $13
    nop                                           ; $7732: $00
    inc de                                        ; $7733: $13
    nop                                           ; $7734: $00
    inc de                                        ; $7735: $13
    nop                                           ; $7736: $00
    inc de                                        ; $7737: $13
    nop                                           ; $7738: $00
    inc de                                        ; $7739: $13
    nop                                           ; $773a: $00
    inc de                                        ; $773b: $13
    nop                                           ; $773c: $00

    db $fa, $42, $29, $14, $15, $54, $15, $54, $fa, $42, $b0, $2d, $ea, $1c, $26, $70
    db $fa, $42, $b0, $2d, $ea, $1c, $26, $10, $fa, $42, $b0, $2d, $8f, $44, $26, $20
    db $fa, $42, $b0, $2d, $ea, $1c, $26, $30, $fa, $42, $b0, $2d, $ea, $1c, $26, $40
    db $fa, $42, $b0, $2d, $ea, $1c, $26, $50, $fa, $42, $b0, $2d, $ea, $1c, $26, $60

    inc d                                         ; $777d: $14
    nop                                           ; $777e: $00
    inc hl                                        ; $777f: $23
    nop                                           ; $7780: $00
    xor [hl]                                      ; $7781: $ae
    sub c                                         ; $7782: $91
    sub c                                         ; $7783: $91
    sub c                                         ; $7784: $91
    xor [hl]                                      ; $7785: $ae
    xor [hl]                                      ; $7786: $ae
    sub c                                         ; $7787: $91
    sub c                                         ; $7788: $91
    sub c                                         ; $7789: $91
    xor [hl]                                      ; $778a: $ae
    xor [hl]                                      ; $778b: $ae
    sub c                                         ; $778c: $91
    sub c                                         ; $778d: $91
    sub c                                         ; $778e: $91
    xor [hl]                                      ; $778f: $ae
    xor [hl]                                      ; $7790: $ae
    sub c                                         ; $7791: $91
    sub c                                         ; $7792: $91
    sub c                                         ; $7793: $91
    xor [hl]                                      ; $7794: $ae
    or b                                          ; $7795: $b0
    sub c                                         ; $7796: $91
    sub c                                         ; $7797: $91
    sub c                                         ; $7798: $91
    or b                                          ; $7799: $b0
    or b                                          ; $779a: $b0
    sub c                                         ; $779b: $91
    sub c                                         ; $779c: $91
    sub c                                         ; $779d: $91
    or b                                          ; $779e: $b0

jr_0c2_779f:
    or b                                          ; $779f: $b0
    sub c                                         ; $77a0: $91
    sub c                                         ; $77a1: $91
    sub c                                         ; $77a2: $91
    or b                                          ; $77a3: $b0
    or b                                          ; $77a4: $b0
    sub c                                         ; $77a5: $91
    sub c                                         ; $77a6: $91
    sub c                                         ; $77a7: $91
    or b                                          ; $77a8: $b0

jr_0c2_77a9:
    or c                                          ; $77a9: $b1
    or d                                          ; $77aa: $b2
    sub c                                         ; $77ab: $91
    or d                                          ; $77ac: $b2
    or c                                          ; $77ad: $b1
    or c                                          ; $77ae: $b1
    or d                                          ; $77af: $b2
    sub c                                         ; $77b0: $91
    or d                                          ; $77b1: $b2
    or c                                          ; $77b2: $b1
    or c                                          ; $77b3: $b1
    or d                                          ; $77b4: $b2
    sub c                                         ; $77b5: $91
    or d                                          ; $77b6: $b2
    or c                                          ; $77b7: $b1
    or c                                          ; $77b8: $b1
    or d                                          ; $77b9: $b2
    sub c                                         ; $77ba: $91
    or d                                          ; $77bb: $b2
    or c                                          ; $77bc: $b1
    sub c                                         ; $77bd: $91
    or e                                          ; $77be: $b3
    or h                                          ; $77bf: $b4
    or e                                          ; $77c0: $b3
    sub c                                         ; $77c1: $91
    sub c                                         ; $77c2: $91
    or e                                          ; $77c3: $b3
    or h                                          ; $77c4: $b4
    or e                                          ; $77c5: $b3
    sub c                                         ; $77c6: $91
    sub c                                         ; $77c7: $91
    or e                                          ; $77c8: $b3
    or h                                          ; $77c9: $b4
    or e                                          ; $77ca: $b3
    sub c                                         ; $77cb: $91
    sub c                                         ; $77cc: $91
    or e                                          ; $77cd: $b3
    or h                                          ; $77ce: $b4
    or e                                          ; $77cf: $b3
    sub c                                         ; $77d0: $91
    or c                                          ; $77d1: $b1
    or l                                          ; $77d2: $b5
    or [hl]                                       ; $77d3: $b6
    or d                                          ; $77d4: $b2
    or c                                          ; $77d5: $b1
    or c                                          ; $77d6: $b1
    or l                                          ; $77d7: $b5
    or [hl]                                       ; $77d8: $b6
    or d                                          ; $77d9: $b2
    or c                                          ; $77da: $b1
    or c                                          ; $77db: $b1
    or l                                          ; $77dc: $b5
    or [hl]                                       ; $77dd: $b6
    or d                                          ; $77de: $b2
    or c                                          ; $77df: $b1
    or c                                          ; $77e0: $b1
    or l                                          ; $77e1: $b5
    or [hl]                                       ; $77e2: $b6
    or d                                          ; $77e3: $b2
    or c                                          ; $77e4: $b1
    or a                                          ; $77e5: $b7
    ld de, $1312                                  ; $77e6: $11 $12 $13
    inc d                                         ; $77e9: $14
    dec d                                         ; $77ea: $15
    ld d, $17                                     ; $77eb: $16 $17
    jr jr_0c2_779f                                ; $77ed: $18 $b0

    add hl, de                                    ; $77ef: $19
    ld a, [de]                                    ; $77f0: $1a
    dec de                                        ; $77f1: $1b
    inc e                                         ; $77f2: $1c
    dec e                                         ; $77f3: $1d
    or a                                          ; $77f4: $b7
    ld e, $1f                                     ; $77f5: $1e $1f
    jr nz, jr_0c2_77a9                            ; $77f7: $20 $b0

    ld hl, $2322                                  ; $77f9: $21 $22 $23
    inc h                                         ; $77fc: $24
    dec h                                         ; $77fd: $25
    ld h, $27                                     ; $77fe: $26 $27
    jr z, jr_0c2_782b                             ; $7800: $28 $29

    ld a, [hl+]                                   ; $7802: $2a
    dec hl                                        ; $7803: $2b
    inc l                                         ; $7804: $2c
    dec l                                         ; $7805: $2d
    ld l, $2f                                     ; $7806: $2e $2f
    jr nc, jr_0c2_783b                            ; $7808: $30 $31

    ld [hl-], a                                   ; $780a: $32
    inc sp                                        ; $780b: $33
    inc [hl]                                      ; $780c: $34
    xor [hl]                                      ; $780d: $ae
    sub c                                         ; $780e: $91
    sub c                                         ; $780f: $91
    sub c                                         ; $7810: $91
    xor [hl]                                      ; $7811: $ae
    xor [hl]                                      ; $7812: $ae
    sub c                                         ; $7813: $91
    sub c                                         ; $7814: $91
    sub c                                         ; $7815: $91
    xor [hl]                                      ; $7816: $ae
    xor [hl]                                      ; $7817: $ae
    sub c                                         ; $7818: $91
    sub c                                         ; $7819: $91
    sub c                                         ; $781a: $91
    xor [hl]                                      ; $781b: $ae
    xor [hl]                                      ; $781c: $ae
    sub c                                         ; $781d: $91
    sub c                                         ; $781e: $91
    sub c                                         ; $781f: $91
    xor [hl]                                      ; $7820: $ae
    or b                                          ; $7821: $b0
    sub c                                         ; $7822: $91
    sub c                                         ; $7823: $91
    sub c                                         ; $7824: $91
    or b                                          ; $7825: $b0
    or b                                          ; $7826: $b0
    sub c                                         ; $7827: $91
    sub c                                         ; $7828: $91
    sub c                                         ; $7829: $91
    or b                                          ; $782a: $b0

jr_0c2_782b:
    or b                                          ; $782b: $b0
    sub c                                         ; $782c: $91
    sub c                                         ; $782d: $91
    sub c                                         ; $782e: $91
    or b                                          ; $782f: $b0
    or b                                          ; $7830: $b0
    sub c                                         ; $7831: $91
    sub c                                         ; $7832: $91
    sub c                                         ; $7833: $91
    or b                                          ; $7834: $b0
    or c                                          ; $7835: $b1
    or d                                          ; $7836: $b2
    sub c                                         ; $7837: $91
    or d                                          ; $7838: $b2
    or c                                          ; $7839: $b1
    or c                                          ; $783a: $b1

jr_0c2_783b:
    or d                                          ; $783b: $b2
    sub c                                         ; $783c: $91
    or d                                          ; $783d: $b2
    or c                                          ; $783e: $b1
    or c                                          ; $783f: $b1
    or d                                          ; $7840: $b2
    sub c                                         ; $7841: $91
    or d                                          ; $7842: $b2
    or c                                          ; $7843: $b1
    or c                                          ; $7844: $b1
    or d                                          ; $7845: $b2
    sub c                                         ; $7846: $91
    or d                                          ; $7847: $b2
    or c                                          ; $7848: $b1
    sub c                                         ; $7849: $91
    or e                                          ; $784a: $b3
    or h                                          ; $784b: $b4
    or e                                          ; $784c: $b3
    sub c                                         ; $784d: $91
    sub c                                         ; $784e: $91
    or e                                          ; $784f: $b3
    or h                                          ; $7850: $b4
    or e                                          ; $7851: $b3
    sub c                                         ; $7852: $91
    sub c                                         ; $7853: $91
    or e                                          ; $7854: $b3
    or h                                          ; $7855: $b4
    or e                                          ; $7856: $b3
    sub c                                         ; $7857: $91
    sub c                                         ; $7858: $91
    or e                                          ; $7859: $b3
    or h                                          ; $785a: $b4
    or e                                          ; $785b: $b3
    sub c                                         ; $785c: $91
    or c                                          ; $785d: $b1
    dec [hl]                                      ; $785e: $35
    ld [hl], $37                                  ; $785f: $36 $37
    or c                                          ; $7861: $b1
    or c                                          ; $7862: $b1
    jr c, jr_0c2_789e                             ; $7863: $38 $39

    ld a, [hl-]                                   ; $7865: $3a
    or c                                          ; $7866: $b1
    or c                                          ; $7867: $b1
    dec sp                                        ; $7868: $3b
    inc a                                         ; $7869: $3c
    dec a                                         ; $786a: $3d
    or c                                          ; $786b: $b1
    or c                                          ; $786c: $b1
    ld a, $3f                                     ; $786d: $3e $3f
    ld b, b                                       ; $786f: $40
    or c                                          ; $7870: $b1
    dec d                                         ; $7871: $15
    ld b, c                                       ; $7872: $41
    ld b, d                                       ; $7873: $42
    ld b, e                                       ; $7874: $43
    ld b, h                                       ; $7875: $44
    ld b, l                                       ; $7876: $45
    ld b, [hl]                                    ; $7877: $46
    ld b, a                                       ; $7878: $47
    ld c, b                                       ; $7879: $48
    ld c, c                                       ; $787a: $49
    ld c, d                                       ; $787b: $4a
    ld c, e                                       ; $787c: $4b
    ld c, h                                       ; $787d: $4c
    ld c, l                                       ; $787e: $4d
    ld c, [hl]                                    ; $787f: $4e
    ld c, a                                       ; $7880: $4f
    ld d, b                                       ; $7881: $50
    ld d, c                                       ; $7882: $51
    ld d, d                                       ; $7883: $52
    ld d, e                                       ; $7884: $53
    ld d, h                                       ; $7885: $54
    ld d, l                                       ; $7886: $55
    ld d, [hl]                                    ; $7887: $56
    ld d, a                                       ; $7888: $57
    ld e, b                                       ; $7889: $58
    ld e, c                                       ; $788a: $59
    ld e, d                                       ; $788b: $5a
    ld e, e                                       ; $788c: $5b
    ld e, h                                       ; $788d: $5c
    ld e, l                                       ; $788e: $5d
    dec hl                                        ; $788f: $2b
    inc l                                         ; $7890: $2c
    ld e, [hl]                                    ; $7891: $5e
    ld e, a                                       ; $7892: $5f
    cpl                                           ; $7893: $2f
    ld h, b                                       ; $7894: $60
    ld h, c                                       ; $7895: $61
    ld h, d                                       ; $7896: $62
    ld h, e                                       ; $7897: $63
    ld h, h                                       ; $7898: $64
    xor [hl]                                      ; $7899: $ae
    sub c                                         ; $789a: $91
    sub c                                         ; $789b: $91
    sub c                                         ; $789c: $91
    xor [hl]                                      ; $789d: $ae

jr_0c2_789e:
    xor [hl]                                      ; $789e: $ae
    sub c                                         ; $789f: $91
    sub c                                         ; $78a0: $91
    sub c                                         ; $78a1: $91
    xor [hl]                                      ; $78a2: $ae
    xor [hl]                                      ; $78a3: $ae
    sub c                                         ; $78a4: $91
    sub c                                         ; $78a5: $91
    sub c                                         ; $78a6: $91
    xor [hl]                                      ; $78a7: $ae
    xor [hl]                                      ; $78a8: $ae
    sub c                                         ; $78a9: $91
    sub c                                         ; $78aa: $91
    sub c                                         ; $78ab: $91
    xor [hl]                                      ; $78ac: $ae
    or b                                          ; $78ad: $b0
    sub c                                         ; $78ae: $91
    sub c                                         ; $78af: $91
    sub c                                         ; $78b0: $91
    or b                                          ; $78b1: $b0
    or b                                          ; $78b2: $b0
    sub c                                         ; $78b3: $91
    sub c                                         ; $78b4: $91
    sub c                                         ; $78b5: $91
    or b                                          ; $78b6: $b0
    or b                                          ; $78b7: $b0
    sub c                                         ; $78b8: $91
    sub c                                         ; $78b9: $91
    sub c                                         ; $78ba: $91
    or b                                          ; $78bb: $b0
    or b                                          ; $78bc: $b0
    ld h, l                                       ; $78bd: $65
    ld h, [hl]                                    ; $78be: $66
    ld h, a                                       ; $78bf: $67
    ld l, b                                       ; $78c0: $68
    or c                                          ; $78c1: $b1
    ld l, c                                       ; $78c2: $69
    ld l, d                                       ; $78c3: $6a
    ld l, e                                       ; $78c4: $6b
    or c                                          ; $78c5: $b1
    or c                                          ; $78c6: $b1
    ld l, h                                       ; $78c7: $6c
    ld l, l                                       ; $78c8: $6d
    ld l, [hl]                                    ; $78c9: $6e
    or c                                          ; $78ca: $b1
    or c                                          ; $78cb: $b1
    ld l, a                                       ; $78cc: $6f
    ld [hl], b                                    ; $78cd: $70
    ld [hl], c                                    ; $78ce: $71
    or c                                          ; $78cf: $b1
    or c                                          ; $78d0: $b1
    ld [hl], d                                    ; $78d1: $72
    ld [hl], e                                    ; $78d2: $73
    ld [hl], h                                    ; $78d3: $74
    or c                                          ; $78d4: $b1
    sub c                                         ; $78d5: $91
    or e                                          ; $78d6: $b3
    ld [hl], l                                    ; $78d7: $75
    or e                                          ; $78d8: $b3
    sub c                                         ; $78d9: $91
    sub c                                         ; $78da: $91
    or e                                          ; $78db: $b3
    halt                                          ; $78dc: $76
    or e                                          ; $78dd: $b3
    sub c                                         ; $78de: $91
    sub c                                         ; $78df: $91
    or e                                          ; $78e0: $b3
    ld [hl], a                                    ; $78e1: $77
    or e                                          ; $78e2: $b3
    sub c                                         ; $78e3: $91
    sub c                                         ; $78e4: $91
    or e                                          ; $78e5: $b3
    ld a, b                                       ; $78e6: $78
    or e                                          ; $78e7: $b3
    sub c                                         ; $78e8: $91
    or c                                          ; $78e9: $b1
    ld a, c                                       ; $78ea: $79
    ld a, d                                       ; $78eb: $7a
    ld a, e                                       ; $78ec: $7b
    or c                                          ; $78ed: $b1
    or c                                          ; $78ee: $b1
    ld a, h                                       ; $78ef: $7c
    ld a, l                                       ; $78f0: $7d
    ld a, [hl]                                    ; $78f1: $7e
    or c                                          ; $78f2: $b1
    or c                                          ; $78f3: $b1
    ld a, a                                       ; $78f4: $7f
    add b                                         ; $78f5: $80
    add c                                         ; $78f6: $81
    or c                                          ; $78f7: $b1
    or c                                          ; $78f8: $b1
    add d                                         ; $78f9: $82
    add e                                         ; $78fa: $83
    add h                                         ; $78fb: $84
    or c                                          ; $78fc: $b1
    dec d                                         ; $78fd: $15
    ld b, c                                       ; $78fe: $41
    ld b, d                                       ; $78ff: $42
    ld b, e                                       ; $7900: $43
    ld b, h                                       ; $7901: $44
    ld b, l                                       ; $7902: $45
    ld b, [hl]                                    ; $7903: $46
    ld b, a                                       ; $7904: $47
    ld c, b                                       ; $7905: $48
    ld c, c                                       ; $7906: $49
    ld c, d                                       ; $7907: $4a
    ld c, e                                       ; $7908: $4b
    ld c, h                                       ; $7909: $4c
    ld c, l                                       ; $790a: $4d
    ld c, [hl]                                    ; $790b: $4e
    ld c, a                                       ; $790c: $4f
    ld d, b                                       ; $790d: $50
    ld d, c                                       ; $790e: $51
    ld d, d                                       ; $790f: $52
    ld d, e                                       ; $7910: $53
    ld d, h                                       ; $7911: $54
    ld d, l                                       ; $7912: $55
    ld d, [hl]                                    ; $7913: $56
    ld d, a                                       ; $7914: $57
    ld e, b                                       ; $7915: $58
    ld e, c                                       ; $7916: $59
    ld e, d                                       ; $7917: $5a
    ld e, e                                       ; $7918: $5b
    ld e, h                                       ; $7919: $5c
    ld e, l                                       ; $791a: $5d
    dec hl                                        ; $791b: $2b
    inc l                                         ; $791c: $2c
    ld e, [hl]                                    ; $791d: $5e
    ld e, a                                       ; $791e: $5f
    cpl                                           ; $791f: $2f
    ld h, b                                       ; $7920: $60
    ld h, c                                       ; $7921: $61
    ld h, d                                       ; $7922: $62
    ld h, e                                       ; $7923: $63
    ld h, h                                       ; $7924: $64
    xor [hl]                                      ; $7925: $ae
    sub c                                         ; $7926: $91
    add l                                         ; $7927: $85
    dec de                                        ; $7928: $1b
    xor [hl]                                      ; $7929: $ae
    xor [hl]                                      ; $792a: $ae
    sub c                                         ; $792b: $91
    add [hl]                                      ; $792c: $86
    add a                                         ; $792d: $87
    adc b                                         ; $792e: $88
    adc c                                         ; $792f: $89
    adc d                                         ; $7930: $8a
    adc e                                         ; $7931: $8b
    adc h                                         ; $7932: $8c
    adc l                                         ; $7933: $8d
    xor [hl]                                      ; $7934: $ae
    sub c                                         ; $7935: $91
    sub c                                         ; $7936: $91
    sub c                                         ; $7937: $91
    adc b                                         ; $7938: $88
    adc [hl]                                      ; $7939: $8e
    adc a                                         ; $793a: $8f
    sub b                                         ; $793b: $90
    sub c                                         ; $793c: $91
    or b                                          ; $793d: $b0
    sub d                                         ; $793e: $92
    sub e                                         ; $793f: $93
    sub h                                         ; $7940: $94
    sub l                                         ; $7941: $95
    sub [hl]                                      ; $7942: $96
    sub a                                         ; $7943: $97
    sbc b                                         ; $7944: $98
    sbc c                                         ; $7945: $99
    sbc d                                         ; $7946: $9a
    sbc e                                         ; $7947: $9b
    sbc h                                         ; $7948: $9c
    sbc l                                         ; $7949: $9d
    sbc [hl]                                      ; $794a: $9e
    sbc a                                         ; $794b: $9f
    and b                                         ; $794c: $a0
    or c                                          ; $794d: $b1
    and c                                         ; $794e: $a1
    and d                                         ; $794f: $a2
    and e                                         ; $7950: $a3
    or c                                          ; $7951: $b1
    or c                                          ; $7952: $b1
    and h                                         ; $7953: $a4
    and l                                         ; $7954: $a5
    and [hl]                                      ; $7955: $a6
    or c                                          ; $7956: $b1
    or c                                          ; $7957: $b1
    and a                                         ; $7958: $a7
    xor b                                         ; $7959: $a8
    xor c                                         ; $795a: $a9
    or c                                          ; $795b: $b1
    or c                                          ; $795c: $b1
    xor d                                         ; $795d: $aa
    xor e                                         ; $795e: $ab
    xor h                                         ; $795f: $ac
    or c                                          ; $7960: $b1
    sub c                                         ; $7961: $91
    or e                                          ; $7962: $b3
    ld [hl], l                                    ; $7963: $75
    or e                                          ; $7964: $b3
    sub c                                         ; $7965: $91
    sub c                                         ; $7966: $91
    or e                                          ; $7967: $b3
    halt                                          ; $7968: $76
    or e                                          ; $7969: $b3
    sub c                                         ; $796a: $91
    sub c                                         ; $796b: $91
    or e                                          ; $796c: $b3
    ld [hl], a                                    ; $796d: $77
    or e                                          ; $796e: $b3
    sub c                                         ; $796f: $91
    sub c                                         ; $7970: $91
    or e                                          ; $7971: $b3
    ld a, b                                       ; $7972: $78
    or e                                          ; $7973: $b3
    sub c                                         ; $7974: $91
    or c                                          ; $7975: $b1
    ld a, c                                       ; $7976: $79
    ld a, d                                       ; $7977: $7a
    ld a, e                                       ; $7978: $7b
    or c                                          ; $7979: $b1
    or c                                          ; $797a: $b1
    ld a, h                                       ; $797b: $7c
    ld a, l                                       ; $797c: $7d
    ld a, [hl]                                    ; $797d: $7e
    or c                                          ; $797e: $b1
    or c                                          ; $797f: $b1
    ld a, a                                       ; $7980: $7f
    add b                                         ; $7981: $80
    add c                                         ; $7982: $81
    or c                                          ; $7983: $b1
    or c                                          ; $7984: $b1
    add d                                         ; $7985: $82
    add e                                         ; $7986: $83
    add h                                         ; $7987: $84
    or c                                          ; $7988: $b1
    dec d                                         ; $7989: $15
    ld b, c                                       ; $798a: $41
    ld b, d                                       ; $798b: $42
    ld b, e                                       ; $798c: $43
    ld b, h                                       ; $798d: $44
    ld b, l                                       ; $798e: $45
    ld b, [hl]                                    ; $798f: $46
    ld b, a                                       ; $7990: $47
    ld c, b                                       ; $7991: $48
    ld c, c                                       ; $7992: $49
    ld c, d                                       ; $7993: $4a
    ld c, e                                       ; $7994: $4b
    ld c, h                                       ; $7995: $4c
    ld c, l                                       ; $7996: $4d
    ld c, [hl]                                    ; $7997: $4e
    ld c, a                                       ; $7998: $4f
    ld d, b                                       ; $7999: $50
    ld d, c                                       ; $799a: $51
    ld d, d                                       ; $799b: $52
    ld d, e                                       ; $799c: $53
    ld d, h                                       ; $799d: $54
    ld d, l                                       ; $799e: $55
    ld d, [hl]                                    ; $799f: $56
    ld d, a                                       ; $79a0: $57
    ld e, b                                       ; $79a1: $58
    ld e, c                                       ; $79a2: $59
    ld e, d                                       ; $79a3: $5a
    ld e, e                                       ; $79a4: $5b
    ld e, h                                       ; $79a5: $5c
    ld e, l                                       ; $79a6: $5d
    dec hl                                        ; $79a7: $2b
    inc l                                         ; $79a8: $2c
    ld e, [hl]                                    ; $79a9: $5e
    ld e, a                                       ; $79aa: $5f
    cpl                                           ; $79ab: $2f
    ld h, b                                       ; $79ac: $60
    ld h, c                                       ; $79ad: $61
    ld h, d                                       ; $79ae: $62
    ld h, e                                       ; $79af: $63
    ld h, h                                       ; $79b0: $64
    xor l                                         ; $79b1: $ad
    xor [hl]                                      ; $79b2: $ae
    xor a                                         ; $79b3: $af
    or b                                          ; $79b4: $b0
    or c                                          ; $79b5: $b1
    or d                                          ; $79b6: $b2
    or e                                          ; $79b7: $b3
    or h                                          ; $79b8: $b4
    or l                                          ; $79b9: $b5
    or [hl]                                       ; $79ba: $b6
    or a                                          ; $79bb: $b7
    cp b                                          ; $79bc: $b8
    cp c                                          ; $79bd: $b9
    cp d                                          ; $79be: $ba
    cp e                                          ; $79bf: $bb
    cp h                                          ; $79c0: $bc
    cp l                                          ; $79c1: $bd
    cp [hl]                                       ; $79c2: $be
    cp a                                          ; $79c3: $bf
    ret nz                                        ; $79c4: $c0

    adc [hl]                                      ; $79c5: $8e
    pop bc                                        ; $79c6: $c1
    jp nz, $c4c3                                  ; $79c7: $c2 $c3 $c4

    push bc                                       ; $79ca: $c5
    add $c7                                       ; $79cb: $c6 $c7
    sub l                                         ; $79cd: $95
    sub [hl]                                      ; $79ce: $96
    sub a                                         ; $79cf: $97
    sbc b                                         ; $79d0: $98
    sbc c                                         ; $79d1: $99
    sbc d                                         ; $79d2: $9a
    sbc e                                         ; $79d3: $9b
    sbc h                                         ; $79d4: $9c
    ret z                                         ; $79d5: $c8

    ret                                           ; $79d6: $c9


    jp z, $b1a0                                   ; $79d7: $ca $a0 $b1

    and c                                         ; $79da: $a1
    and d                                         ; $79db: $a2
    and e                                         ; $79dc: $a3
    or c                                          ; $79dd: $b1
    or c                                          ; $79de: $b1
    and h                                         ; $79df: $a4
    and l                                         ; $79e0: $a5
    and [hl]                                      ; $79e1: $a6
    or c                                          ; $79e2: $b1
    or c                                          ; $79e3: $b1
    and a                                         ; $79e4: $a7
    xor b                                         ; $79e5: $a8
    xor c                                         ; $79e6: $a9
    or c                                          ; $79e7: $b1
    or c                                          ; $79e8: $b1
    xor d                                         ; $79e9: $aa
    xor e                                         ; $79ea: $ab
    xor h                                         ; $79eb: $ac
    or c                                          ; $79ec: $b1
    sub c                                         ; $79ed: $91
    or e                                          ; $79ee: $b3
    ld [hl], l                                    ; $79ef: $75
    or e                                          ; $79f0: $b3
    sub c                                         ; $79f1: $91
    sub c                                         ; $79f2: $91
    or e                                          ; $79f3: $b3
    halt                                          ; $79f4: $76
    or e                                          ; $79f5: $b3
    sub c                                         ; $79f6: $91
    sub c                                         ; $79f7: $91
    or e                                          ; $79f8: $b3
    ld [hl], a                                    ; $79f9: $77
    or e                                          ; $79fa: $b3
    sub c                                         ; $79fb: $91
    sub c                                         ; $79fc: $91
    or e                                          ; $79fd: $b3
    ld a, b                                       ; $79fe: $78
    or e                                          ; $79ff: $b3
    sub c                                         ; $7a00: $91
    or c                                          ; $7a01: $b1
    ld a, c                                       ; $7a02: $79
    ld a, d                                       ; $7a03: $7a
    ld a, e                                       ; $7a04: $7b
    or c                                          ; $7a05: $b1
    or c                                          ; $7a06: $b1
    ld a, h                                       ; $7a07: $7c
    ld a, l                                       ; $7a08: $7d
    ld a, [hl]                                    ; $7a09: $7e
    or c                                          ; $7a0a: $b1
    or c                                          ; $7a0b: $b1
    ld a, a                                       ; $7a0c: $7f
    add b                                         ; $7a0d: $80
    add c                                         ; $7a0e: $81
    or c                                          ; $7a0f: $b1
    or c                                          ; $7a10: $b1
    add d                                         ; $7a11: $82
    add e                                         ; $7a12: $83
    add h                                         ; $7a13: $84
    or c                                          ; $7a14: $b1
    dec d                                         ; $7a15: $15
    ld b, c                                       ; $7a16: $41
    ld b, d                                       ; $7a17: $42
    ld b, e                                       ; $7a18: $43
    ld b, h                                       ; $7a19: $44
    ld b, l                                       ; $7a1a: $45
    ld b, [hl]                                    ; $7a1b: $46
    ld b, a                                       ; $7a1c: $47
    ld c, b                                       ; $7a1d: $48
    ld c, c                                       ; $7a1e: $49
    ld c, d                                       ; $7a1f: $4a
    ld c, e                                       ; $7a20: $4b
    ld c, h                                       ; $7a21: $4c
    ld c, l                                       ; $7a22: $4d
    ld c, [hl]                                    ; $7a23: $4e
    ld c, a                                       ; $7a24: $4f
    ld d, b                                       ; $7a25: $50
    ld d, c                                       ; $7a26: $51
    ld d, d                                       ; $7a27: $52
    ld d, e                                       ; $7a28: $53
    ld d, h                                       ; $7a29: $54
    ld d, l                                       ; $7a2a: $55
    ld d, [hl]                                    ; $7a2b: $56
    ld d, a                                       ; $7a2c: $57
    ld e, b                                       ; $7a2d: $58
    ld e, c                                       ; $7a2e: $59
    ld e, d                                       ; $7a2f: $5a
    ld e, e                                       ; $7a30: $5b
    ld e, h                                       ; $7a31: $5c
    ld e, l                                       ; $7a32: $5d
    dec hl                                        ; $7a33: $2b
    inc l                                         ; $7a34: $2c
    ld e, [hl]                                    ; $7a35: $5e
    ld e, a                                       ; $7a36: $5f
    cpl                                           ; $7a37: $2f
    ld h, b                                       ; $7a38: $60
    ld h, c                                       ; $7a39: $61
    ld h, d                                       ; $7a3a: $62
    ld h, e                                       ; $7a3b: $63
    ld h, h                                       ; $7a3c: $64
    nop                                           ; $7a3d: $00
    nop                                           ; $7a3e: $00
    nop                                           ; $7a3f: $00
    nop                                           ; $7a40: $00
    jr nz, @+$03                                  ; $7a41: $20 $01

    ld bc, $0101                                  ; $7a43: $01 $01 $01
    ld hl, $0202                                  ; $7a46: $21 $02 $02
    ld [bc], a                                    ; $7a49: $02
    ld [bc], a                                    ; $7a4a: $02
    ld [hl+], a                                   ; $7a4b: $22
    inc bc                                        ; $7a4c: $03
    inc bc                                        ; $7a4d: $03
    inc bc                                        ; $7a4e: $03
    inc bc                                        ; $7a4f: $03
    inc hl                                        ; $7a50: $23
    nop                                           ; $7a51: $00
    nop                                           ; $7a52: $00
    nop                                           ; $7a53: $00
    nop                                           ; $7a54: $00
    jr nz, @+$03                                  ; $7a55: $20 $01

    ld bc, $0101                                  ; $7a57: $01 $01 $01
    ld hl, $0202                                  ; $7a5a: $21 $02 $02
    ld [bc], a                                    ; $7a5d: $02
    ld [bc], a                                    ; $7a5e: $02
    ld [hl+], a                                   ; $7a5f: $22
    inc bc                                        ; $7a60: $03
    inc bc                                        ; $7a61: $03
    inc bc                                        ; $7a62: $03
    inc bc                                        ; $7a63: $03
    inc hl                                        ; $7a64: $23
    nop                                           ; $7a65: $00
    nop                                           ; $7a66: $00
    nop                                           ; $7a67: $00
    jr nz, jr_0c2_7a8a                            ; $7a68: $20 $20

    ld bc, $0101                                  ; $7a6a: $01 $01 $01
    ld hl, $0221                                  ; $7a6d: $21 $21 $02
    ld [bc], a                                    ; $7a70: $02
    ld [bc], a                                    ; $7a71: $02
    ld [hl+], a                                   ; $7a72: $22
    ld [hl+], a                                   ; $7a73: $22
    inc bc                                        ; $7a74: $03
    inc bc                                        ; $7a75: $03
    inc bc                                        ; $7a76: $03
    inc hl                                        ; $7a77: $23
    inc hl                                        ; $7a78: $23
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    nop                                           ; $7a7b: $00
    jr nz, jr_0c2_7a7e                            ; $7a7c: $20 $00

jr_0c2_7a7e:
    ld bc, $0101                                  ; $7a7e: $01 $01 $01
    ld hl, $0201                                  ; $7a81: $21 $01 $02
    ld [bc], a                                    ; $7a84: $02
    ld [bc], a                                    ; $7a85: $02
    ld [hl+], a                                   ; $7a86: $22
    ld [bc], a                                    ; $7a87: $02
    inc bc                                        ; $7a88: $03
    inc bc                                        ; $7a89: $03

jr_0c2_7a8a:
    inc bc                                        ; $7a8a: $03
    inc hl                                        ; $7a8b: $23
    inc bc                                        ; $7a8c: $03
    ld b, b                                       ; $7a8d: $40
    nop                                           ; $7a8e: $00
    nop                                           ; $7a8f: $00
    ld h, b                                       ; $7a90: $60
    ld h, b                                       ; $7a91: $60
    ld b, c                                       ; $7a92: $41
    ld bc, $6101                                  ; $7a93: $01 $01 $61
    ld h, c                                       ; $7a96: $61
    ld b, d                                       ; $7a97: $42
    ld [bc], a                                    ; $7a98: $02
    ld [bc], a                                    ; $7a99: $02
    ld h, d                                       ; $7a9a: $62
    ld h, d                                       ; $7a9b: $62
    ld b, e                                       ; $7a9c: $43
    inc bc                                        ; $7a9d: $03
    inc bc                                        ; $7a9e: $03
    ld h, e                                       ; $7a9f: $63
    ld h, e                                       ; $7aa0: $63
    nop                                           ; $7aa1: $00
    nop                                           ; $7aa2: $00
    nop                                           ; $7aa3: $00
    nop                                           ; $7aa4: $00
    nop                                           ; $7aa5: $00
    ld bc, $0101                                  ; $7aa6: $01 $01 $01
    ld bc, $0261                                  ; $7aa9: $01 $61 $02
    ld [bc], a                                    ; $7aac: $02
    ld [bc], a                                    ; $7aad: $02
    ld [bc], a                                    ; $7aae: $02
    ld [bc], a                                    ; $7aaf: $02
    inc bc                                        ; $7ab0: $03
    inc bc                                        ; $7ab1: $03
    inc bc                                        ; $7ab2: $03
    inc bc                                        ; $7ab3: $03
    ld h, e                                       ; $7ab4: $63
    nop                                           ; $7ab5: $00
    nop                                           ; $7ab6: $00
    nop                                           ; $7ab7: $00
    nop                                           ; $7ab8: $00
    nop                                           ; $7ab9: $00
    ld bc, $0101                                  ; $7aba: $01 $01 $01
    ld bc, $0201                                  ; $7abd: $01 $01 $02
    ld [bc], a                                    ; $7ac0: $02
    ld [bc], a                                    ; $7ac1: $02
    ld [bc], a                                    ; $7ac2: $02
    ld [bc], a                                    ; $7ac3: $02
    inc bc                                        ; $7ac4: $03
    inc bc                                        ; $7ac5: $03
    inc bc                                        ; $7ac6: $03
    inc bc                                        ; $7ac7: $03
    inc bc                                        ; $7ac8: $03
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    nop                                           ; $7acb: $00
    nop                                           ; $7acc: $00
    jr nz, @+$03                                  ; $7acd: $20 $01

    ld bc, $0101                                  ; $7acf: $01 $01 $01
    ld hl, $0202                                  ; $7ad2: $21 $02 $02
    ld [bc], a                                    ; $7ad5: $02
    ld [bc], a                                    ; $7ad6: $02
    ld [hl+], a                                   ; $7ad7: $22
    inc bc                                        ; $7ad8: $03
    inc bc                                        ; $7ad9: $03
    inc bc                                        ; $7ada: $03
    inc bc                                        ; $7adb: $03
    inc hl                                        ; $7adc: $23
    nop                                           ; $7add: $00
    nop                                           ; $7ade: $00
    nop                                           ; $7adf: $00
    nop                                           ; $7ae0: $00
    jr nz, @+$03                                  ; $7ae1: $20 $01

    ld bc, $0101                                  ; $7ae3: $01 $01 $01
    ld hl, $0202                                  ; $7ae6: $21 $02 $02
    ld [bc], a                                    ; $7ae9: $02
    ld [bc], a                                    ; $7aea: $02
    ld [hl+], a                                   ; $7aeb: $22
    inc bc                                        ; $7aec: $03
    inc bc                                        ; $7aed: $03
    inc bc                                        ; $7aee: $03
    inc bc                                        ; $7aef: $03
    inc hl                                        ; $7af0: $23
    nop                                           ; $7af1: $00
    nop                                           ; $7af2: $00
    nop                                           ; $7af3: $00
    jr nz, jr_0c2_7b16                            ; $7af4: $20 $20

    ld bc, $0101                                  ; $7af6: $01 $01 $01
    ld hl, $0221                                  ; $7af9: $21 $21 $02
    ld [bc], a                                    ; $7afc: $02
    ld [bc], a                                    ; $7afd: $02
    ld [hl+], a                                   ; $7afe: $22
    ld [hl+], a                                   ; $7aff: $22
    inc bc                                        ; $7b00: $03
    inc bc                                        ; $7b01: $03
    inc bc                                        ; $7b02: $03
    inc hl                                        ; $7b03: $23
    inc hl                                        ; $7b04: $23
    nop                                           ; $7b05: $00
    nop                                           ; $7b06: $00
    nop                                           ; $7b07: $00
    jr nz, jr_0c2_7b0a                            ; $7b08: $20 $00

jr_0c2_7b0a:
    ld bc, $0101                                  ; $7b0a: $01 $01 $01
    ld hl, $0201                                  ; $7b0d: $21 $01 $02
    ld [bc], a                                    ; $7b10: $02
    ld [bc], a                                    ; $7b11: $02
    ld [hl+], a                                   ; $7b12: $22
    ld [bc], a                                    ; $7b13: $02
    inc bc                                        ; $7b14: $03
    inc bc                                        ; $7b15: $03

jr_0c2_7b16:
    inc bc                                        ; $7b16: $03
    inc hl                                        ; $7b17: $23
    inc bc                                        ; $7b18: $03
    ld b, b                                       ; $7b19: $40
    nop                                           ; $7b1a: $00
    nop                                           ; $7b1b: $00
    nop                                           ; $7b1c: $00
    ld h, b                                       ; $7b1d: $60
    ld b, c                                       ; $7b1e: $41
    ld bc, $0101                                  ; $7b1f: $01 $01 $01
    ld h, c                                       ; $7b22: $61
    ld b, d                                       ; $7b23: $42
    ld [bc], a                                    ; $7b24: $02
    ld [bc], a                                    ; $7b25: $02
    ld [bc], a                                    ; $7b26: $02
    ld h, d                                       ; $7b27: $62
    ld b, e                                       ; $7b28: $43
    inc bc                                        ; $7b29: $03
    inc bc                                        ; $7b2a: $03
    inc bc                                        ; $7b2b: $03
    ld h, e                                       ; $7b2c: $63
    nop                                           ; $7b2d: $00
    nop                                           ; $7b2e: $00
    nop                                           ; $7b2f: $00
    nop                                           ; $7b30: $00
    nop                                           ; $7b31: $00
    ld bc, $0101                                  ; $7b32: $01 $01 $01
    ld bc, $0201                                  ; $7b35: $01 $01 $02
    ld [bc], a                                    ; $7b38: $02
    ld [bc], a                                    ; $7b39: $02
    ld [bc], a                                    ; $7b3a: $02
    ld [bc], a                                    ; $7b3b: $02
    inc bc                                        ; $7b3c: $03
    inc bc                                        ; $7b3d: $03
    inc bc                                        ; $7b3e: $03
    inc bc                                        ; $7b3f: $03
    inc bc                                        ; $7b40: $03
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    nop                                           ; $7b43: $00
    nop                                           ; $7b44: $00
    nop                                           ; $7b45: $00
    ld bc, $0101                                  ; $7b46: $01 $01 $01
    ld bc, $0201                                  ; $7b49: $01 $01 $02
    ld [bc], a                                    ; $7b4c: $02
    ld [bc], a                                    ; $7b4d: $02
    ld [bc], a                                    ; $7b4e: $02
    ld [bc], a                                    ; $7b4f: $02
    inc bc                                        ; $7b50: $03
    inc bc                                        ; $7b51: $03
    inc bc                                        ; $7b52: $03
    inc bc                                        ; $7b53: $03
    inc bc                                        ; $7b54: $03
    nop                                           ; $7b55: $00
    nop                                           ; $7b56: $00
    nop                                           ; $7b57: $00
    nop                                           ; $7b58: $00
    jr nz, @+$03                                  ; $7b59: $20 $01

    ld bc, $0101                                  ; $7b5b: $01 $01 $01
    ld hl, $0202                                  ; $7b5e: $21 $02 $02
    ld [bc], a                                    ; $7b61: $02
    ld [bc], a                                    ; $7b62: $02
    ld [hl+], a                                   ; $7b63: $22
    inc bc                                        ; $7b64: $03
    inc bc                                        ; $7b65: $03
    inc bc                                        ; $7b66: $03
    inc bc                                        ; $7b67: $03
    inc hl                                        ; $7b68: $23
    nop                                           ; $7b69: $00
    nop                                           ; $7b6a: $00
    nop                                           ; $7b6b: $00
    nop                                           ; $7b6c: $00
    jr nz, @+$03                                  ; $7b6d: $20 $01

    ld bc, $0101                                  ; $7b6f: $01 $01 $01
    ld hl, $0202                                  ; $7b72: $21 $02 $02
    ld [bc], a                                    ; $7b75: $02
    ld [bc], a                                    ; $7b76: $02
    ld [hl+], a                                   ; $7b77: $22
    inc bc                                        ; $7b78: $03
    inc bc                                        ; $7b79: $03
    inc bc                                        ; $7b7a: $03
    inc bc                                        ; $7b7b: $03
    inc bc                                        ; $7b7c: $03
    nop                                           ; $7b7d: $00
    nop                                           ; $7b7e: $00
    nop                                           ; $7b7f: $00
    nop                                           ; $7b80: $00
    jr nz, @+$03                                  ; $7b81: $20 $01

    ld bc, $0101                                  ; $7b83: $01 $01 $01
    ld hl, $0202                                  ; $7b86: $21 $02 $02
    ld [bc], a                                    ; $7b89: $02
    ld [bc], a                                    ; $7b8a: $02
    ld [hl+], a                                   ; $7b8b: $22
    inc bc                                        ; $7b8c: $03
    inc bc                                        ; $7b8d: $03
    inc bc                                        ; $7b8e: $03
    inc bc                                        ; $7b8f: $03
    inc hl                                        ; $7b90: $23
    nop                                           ; $7b91: $00
    nop                                           ; $7b92: $00
    nop                                           ; $7b93: $00
    jr nz, jr_0c2_7b96                            ; $7b94: $20 $00

jr_0c2_7b96:
    ld bc, $0101                                  ; $7b96: $01 $01 $01
    ld hl, $0201                                  ; $7b99: $21 $01 $02
    ld [bc], a                                    ; $7b9c: $02
    ld [bc], a                                    ; $7b9d: $02
    ld [hl+], a                                   ; $7b9e: $22
    ld [bc], a                                    ; $7b9f: $02
    inc bc                                        ; $7ba0: $03
    inc bc                                        ; $7ba1: $03
    inc bc                                        ; $7ba2: $03
    inc hl                                        ; $7ba3: $23
    inc bc                                        ; $7ba4: $03
    ld b, b                                       ; $7ba5: $40
    nop                                           ; $7ba6: $00
    nop                                           ; $7ba7: $00
    nop                                           ; $7ba8: $00
    ld h, b                                       ; $7ba9: $60
    ld b, c                                       ; $7baa: $41
    ld bc, $0101                                  ; $7bab: $01 $01 $01
    ld h, c                                       ; $7bae: $61
    ld b, d                                       ; $7baf: $42
    ld [bc], a                                    ; $7bb0: $02
    ld a, [bc]                                    ; $7bb1: $0a
    ld a, [bc]                                    ; $7bb2: $0a
    ld h, d                                       ; $7bb3: $62
    ld b, e                                       ; $7bb4: $43
    dec bc                                        ; $7bb5: $0b
    dec bc                                        ; $7bb6: $0b
    dec bc                                        ; $7bb7: $0b
    ld h, e                                       ; $7bb8: $63
    nop                                           ; $7bb9: $00
    nop                                           ; $7bba: $00
    nop                                           ; $7bbb: $00
    nop                                           ; $7bbc: $00
    nop                                           ; $7bbd: $00
    ld bc, $0101                                  ; $7bbe: $01 $01 $01
    ld bc, $0201                                  ; $7bc1: $01 $01 $02
    ld [bc], a                                    ; $7bc4: $02
    ld [bc], a                                    ; $7bc5: $02
    ld [bc], a                                    ; $7bc6: $02
    ld [bc], a                                    ; $7bc7: $02
    inc bc                                        ; $7bc8: $03
    inc bc                                        ; $7bc9: $03
    inc bc                                        ; $7bca: $03
    inc bc                                        ; $7bcb: $03
    inc bc                                        ; $7bcc: $03
    nop                                           ; $7bcd: $00
    nop                                           ; $7bce: $00
    nop                                           ; $7bcf: $00
    nop                                           ; $7bd0: $00
    nop                                           ; $7bd1: $00
    ld bc, $0101                                  ; $7bd2: $01 $01 $01
    ld bc, $0201                                  ; $7bd5: $01 $01 $02
    ld [bc], a                                    ; $7bd8: $02
    ld [bc], a                                    ; $7bd9: $02
    ld [bc], a                                    ; $7bda: $02
    ld [bc], a                                    ; $7bdb: $02
    inc bc                                        ; $7bdc: $03
    inc bc                                        ; $7bdd: $03
    inc bc                                        ; $7bde: $03
    inc bc                                        ; $7bdf: $03
    inc bc                                        ; $7be0: $03
    nop                                           ; $7be1: $00
    nop                                           ; $7be2: $00
    ld [$2000], sp                                ; $7be3: $08 $00 $20
    ld bc, $0901                                  ; $7be6: $01 $01 $09
    add hl, bc                                    ; $7be9: $09
    add hl, bc                                    ; $7bea: $09
    ld a, [bc]                                    ; $7beb: $0a
    ld a, [bc]                                    ; $7bec: $0a
    ld a, [bc]                                    ; $7bed: $0a
    ld a, [bc]                                    ; $7bee: $0a
    ld a, [bc]                                    ; $7bef: $0a
    inc bc                                        ; $7bf0: $03
    inc bc                                        ; $7bf1: $03
    inc bc                                        ; $7bf2: $03
    inc bc                                        ; $7bf3: $03
    dec bc                                        ; $7bf4: $0b
    ld [$0808], sp                                ; $7bf5: $08 $08 $08
    ld [$0920], sp                                ; $7bf8: $08 $20 $09
    add hl, bc                                    ; $7bfb: $09
    add hl, bc                                    ; $7bfc: $09
    add hl, bc                                    ; $7bfd: $09
    add hl, bc                                    ; $7bfe: $09
    ld a, [bc]                                    ; $7bff: $0a
    ld a, [bc]                                    ; $7c00: $0a
    ld a, [bc]                                    ; $7c01: $0a
    ld a, [bc]                                    ; $7c02: $0a
    ld a, [bc]                                    ; $7c03: $0a
    dec bc                                        ; $7c04: $0b
    dec bc                                        ; $7c05: $0b
    dec bc                                        ; $7c06: $0b
    dec bc                                        ; $7c07: $0b
    dec bc                                        ; $7c08: $0b
    nop                                           ; $7c09: $00
    ld [$0808], sp                                ; $7c0a: $08 $08 $08
    jr nz, jr_0c2_7c10                            ; $7c0d: $20 $01

    add hl, bc                                    ; $7c0f: $09

jr_0c2_7c10:
    add hl, bc                                    ; $7c10: $09
    add hl, bc                                    ; $7c11: $09
    ld hl, $0a02                                  ; $7c12: $21 $02 $0a
    ld a, [bc]                                    ; $7c15: $0a
    ld a, [bc]                                    ; $7c16: $0a
    ld [hl+], a                                   ; $7c17: $22
    inc bc                                        ; $7c18: $03
    dec bc                                        ; $7c19: $0b
    dec bc                                        ; $7c1a: $0b
    dec bc                                        ; $7c1b: $0b
    inc hl                                        ; $7c1c: $23
    nop                                           ; $7c1d: $00
    nop                                           ; $7c1e: $00
    nop                                           ; $7c1f: $00
    jr nz, jr_0c2_7c22                            ; $7c20: $20 $00

jr_0c2_7c22:
    ld bc, $0101                                  ; $7c22: $01 $01 $01
    ld hl, $0201                                  ; $7c25: $21 $01 $02
    ld [bc], a                                    ; $7c28: $02
    ld [bc], a                                    ; $7c29: $02
    ld [hl+], a                                   ; $7c2a: $22
    ld [bc], a                                    ; $7c2b: $02
    inc bc                                        ; $7c2c: $03
    inc bc                                        ; $7c2d: $03
    inc bc                                        ; $7c2e: $03
    inc hl                                        ; $7c2f: $23
    inc bc                                        ; $7c30: $03
    ld b, b                                       ; $7c31: $40
    nop                                           ; $7c32: $00
    nop                                           ; $7c33: $00
    nop                                           ; $7c34: $00
    ld h, b                                       ; $7c35: $60
    ld b, c                                       ; $7c36: $41
    ld bc, $0101                                  ; $7c37: $01 $01 $01
    ld h, c                                       ; $7c3a: $61
    ld b, d                                       ; $7c3b: $42
    ld [bc], a                                    ; $7c3c: $02
    ld a, [bc]                                    ; $7c3d: $0a
    ld a, [bc]                                    ; $7c3e: $0a
    ld h, d                                       ; $7c3f: $62
    ld b, e                                       ; $7c40: $43
    dec bc                                        ; $7c41: $0b
    dec bc                                        ; $7c42: $0b
    dec bc                                        ; $7c43: $0b
    ld h, e                                       ; $7c44: $63
    nop                                           ; $7c45: $00
    nop                                           ; $7c46: $00
    nop                                           ; $7c47: $00
    nop                                           ; $7c48: $00
    nop                                           ; $7c49: $00
    ld bc, $0101                                  ; $7c4a: $01 $01 $01
    ld bc, $0201                                  ; $7c4d: $01 $01 $02
    ld [bc], a                                    ; $7c50: $02
    ld [bc], a                                    ; $7c51: $02
    ld [bc], a                                    ; $7c52: $02
    ld [bc], a                                    ; $7c53: $02
    inc bc                                        ; $7c54: $03
    inc bc                                        ; $7c55: $03
    inc bc                                        ; $7c56: $03
    inc bc                                        ; $7c57: $03
    inc bc                                        ; $7c58: $03
    nop                                           ; $7c59: $00
    nop                                           ; $7c5a: $00
    nop                                           ; $7c5b: $00
    nop                                           ; $7c5c: $00
    nop                                           ; $7c5d: $00
    ld bc, $0101                                  ; $7c5e: $01 $01 $01
    ld bc, $0201                                  ; $7c61: $01 $01 $02
    ld [bc], a                                    ; $7c64: $02
    ld [bc], a                                    ; $7c65: $02
    ld [bc], a                                    ; $7c66: $02
    ld [bc], a                                    ; $7c67: $02
    inc bc                                        ; $7c68: $03
    inc bc                                        ; $7c69: $03
    inc bc                                        ; $7c6a: $03
    inc bc                                        ; $7c6b: $03
    inc bc                                        ; $7c6c: $03
    ld [$0808], sp                                ; $7c6d: $08 $08 $08
    ld [$0908], sp                                ; $7c70: $08 $08 $09
    add hl, bc                                    ; $7c73: $09
    add hl, bc                                    ; $7c74: $09
    add hl, bc                                    ; $7c75: $09
    add hl, bc                                    ; $7c76: $09
    ld a, [bc]                                    ; $7c77: $0a
    ld a, [bc]                                    ; $7c78: $0a
    ld a, [bc]                                    ; $7c79: $0a
    ld a, [bc]                                    ; $7c7a: $0a
    ld a, [bc]                                    ; $7c7b: $0a
    dec bc                                        ; $7c7c: $0b
    dec bc                                        ; $7c7d: $0b
    dec bc                                        ; $7c7e: $0b
    dec bc                                        ; $7c7f: $0b
    dec bc                                        ; $7c80: $0b
    ld [$0808], sp                                ; $7c81: $08 $08 $08
    ld [$0908], sp                                ; $7c84: $08 $08 $09
    add hl, bc                                    ; $7c87: $09
    add hl, bc                                    ; $7c88: $09
    add hl, bc                                    ; $7c89: $09
    add hl, bc                                    ; $7c8a: $09
    ld a, [bc]                                    ; $7c8b: $0a
    ld a, [bc]                                    ; $7c8c: $0a
    ld a, [bc]                                    ; $7c8d: $0a
    ld a, [bc]                                    ; $7c8e: $0a
    ld a, [bc]                                    ; $7c8f: $0a
    dec bc                                        ; $7c90: $0b
    dec bc                                        ; $7c91: $0b
    dec bc                                        ; $7c92: $0b
    dec bc                                        ; $7c93: $0b
    dec bc                                        ; $7c94: $0b
    nop                                           ; $7c95: $00
    ld [$0808], sp                                ; $7c96: $08 $08 $08
    jr nz, jr_0c2_7c9c                            ; $7c99: $20 $01

    add hl, bc                                    ; $7c9b: $09

jr_0c2_7c9c:
    add hl, bc                                    ; $7c9c: $09
    add hl, bc                                    ; $7c9d: $09
    ld hl, $0a02                                  ; $7c9e: $21 $02 $0a
    ld a, [bc]                                    ; $7ca1: $0a
    ld a, [bc]                                    ; $7ca2: $0a
    ld [hl+], a                                   ; $7ca3: $22
    inc bc                                        ; $7ca4: $03
    dec bc                                        ; $7ca5: $0b
    dec bc                                        ; $7ca6: $0b
    dec bc                                        ; $7ca7: $0b
    inc hl                                        ; $7ca8: $23
    nop                                           ; $7ca9: $00
    nop                                           ; $7caa: $00
    nop                                           ; $7cab: $00
    jr nz, jr_0c2_7cae                            ; $7cac: $20 $00

jr_0c2_7cae:
    ld bc, $0101                                  ; $7cae: $01 $01 $01
    ld hl, $0201                                  ; $7cb1: $21 $01 $02
    ld [bc], a                                    ; $7cb4: $02
    ld [bc], a                                    ; $7cb5: $02
    ld [hl+], a                                   ; $7cb6: $22
    ld [bc], a                                    ; $7cb7: $02
    inc bc                                        ; $7cb8: $03
    inc bc                                        ; $7cb9: $03
    inc bc                                        ; $7cba: $03
    inc hl                                        ; $7cbb: $23
    inc bc                                        ; $7cbc: $03
    ld b, b                                       ; $7cbd: $40
    nop                                           ; $7cbe: $00
    nop                                           ; $7cbf: $00
    nop                                           ; $7cc0: $00
    ld h, b                                       ; $7cc1: $60
    ld b, c                                       ; $7cc2: $41
    ld bc, $0101                                  ; $7cc3: $01 $01 $01
    ld h, c                                       ; $7cc6: $61
    ld b, d                                       ; $7cc7: $42
    ld [bc], a                                    ; $7cc8: $02
    ld a, [bc]                                    ; $7cc9: $0a
    ld a, [bc]                                    ; $7cca: $0a
    ld h, d                                       ; $7ccb: $62
    ld b, e                                       ; $7ccc: $43
    dec bc                                        ; $7ccd: $0b
    dec bc                                        ; $7cce: $0b
    dec bc                                        ; $7ccf: $0b
    ld h, e                                       ; $7cd0: $63
    nop                                           ; $7cd1: $00
    nop                                           ; $7cd2: $00
    nop                                           ; $7cd3: $00
    nop                                           ; $7cd4: $00
    nop                                           ; $7cd5: $00
    ld bc, $0101                                  ; $7cd6: $01 $01 $01
    ld bc, $0201                                  ; $7cd9: $01 $01 $02
    ld [bc], a                                    ; $7cdc: $02
    ld [bc], a                                    ; $7cdd: $02
    ld [bc], a                                    ; $7cde: $02
    ld [bc], a                                    ; $7cdf: $02
    inc bc                                        ; $7ce0: $03
    inc bc                                        ; $7ce1: $03
    inc bc                                        ; $7ce2: $03
    inc bc                                        ; $7ce3: $03
    inc bc                                        ; $7ce4: $03
    nop                                           ; $7ce5: $00
    nop                                           ; $7ce6: $00
    nop                                           ; $7ce7: $00
    nop                                           ; $7ce8: $00
    nop                                           ; $7ce9: $00
    ld bc, $0101                                  ; $7cea: $01 $01 $01
    ld bc, $0201                                  ; $7ced: $01 $01 $02
    ld [bc], a                                    ; $7cf0: $02
    ld [bc], a                                    ; $7cf1: $02
    ld [bc], a                                    ; $7cf2: $02
    ld [bc], a                                    ; $7cf3: $02
    inc bc                                        ; $7cf4: $03
    inc bc                                        ; $7cf5: $03
    inc bc                                        ; $7cf6: $03
    inc bc                                        ; $7cf7: $03
    inc bc                                        ; $7cf8: $03
    ldh [$03], a                                  ; $7cf9: $e0 $03
    ld hl, $0002                                  ; $7cfb: $21 $02 $00
    ldh a, [rIE]                                  ; $7cfe: $f0 $ff
    ld a, [$f1fd]                                 ; $7d00: $fa $fd $f1
    cp $fc                                        ; $7d03: $fe $fc
    rst $38                                       ; $7d05: $ff
    nop                                           ; $7d06: $00
    add sp, -$01                                  ; $7d07: $e8 $ff
    ld d, h                                       ; $7d09: $54
    ei                                            ; $7d0a: $fb
    xor e                                         ; $7d0b: $ab
    db $f4                                        ; $7d0c: $f4
    ld b, a                                       ; $7d0d: $47
    ld hl, sp+$00                                 ; $7d0e: $f8 $00
    ld a, a                                       ; $7d10: $7f
    add b                                         ; $7d11: $80
    rst $38                                       ; $7d12: $ff
    nop                                           ; $7d13: $00
    ld a, e                                       ; $7d14: $7b
    add h                                         ; $7d15: $84
    or l                                          ; $7d16: $b5
    ld c, d                                       ; $7d17: $4a
    nop                                           ; $7d18: $00
    ld e, b                                       ; $7d19: $58
    and a                                         ; $7d1a: $a7
    and c                                         ; $7d1b: $a1
    ld e, a                                       ; $7d1c: $5f
    ldh a, [rIF]                                  ; $7d1d: $f0 $0f
    db $fd                                        ; $7d1f: $fd
    ld [bc], a                                    ; $7d20: $02
    nop                                           ; $7d21: $00
    and d                                         ; $7d22: $a2
    ld e, a                                       ; $7d23: $5f
    push de                                       ; $7d24: $d5
    dec hl                                        ; $7d25: $2b
    ld [$4015], a                                 ; $7d26: $ea $15 $40
    cp a                                          ; $7d29: $bf
    nop                                           ; $7d2a: $00
    ld a, [bc]                                    ; $7d2b: $0a
    rst $38                                       ; $7d2c: $ff
    ld e, a                                       ; $7d2d: $5f
    rst $38                                       ; $7d2e: $ff
    rlca                                          ; $7d2f: $07
    rst $38                                       ; $7d30: $ff
    ld d, d                                       ; $7d31: $52
    xor a                                         ; $7d32: $af
    nop                                           ; $7d33: $00
    add b                                         ; $7d34: $80
    add b                                         ; $7d35: $80
    ld h, b                                       ; $7d36: $60
    ldh [$30], a                                  ; $7d37: $e0 $30
    ldh a, [$60]                                  ; $7d39: $f0 $60
    ldh [rP1], a                                  ; $7d3b: $e0 $00
    ret nz                                        ; $7d3d: $c0

    ret nz                                        ; $7d3e: $c0

    add b                                         ; $7d3f: $80
    add b                                         ; $7d40: $80
    ret nz                                        ; $7d41: $c0

    ret nz                                        ; $7d42: $c0

    and b                                         ; $7d43: $a0
    ldh [rLCDC], a                                ; $7d44: $e0 $40
    nop                                           ; $7d46: $00
    ld bc, $0180                                  ; $7d47: $01 $80 $01
    ld bc, $0303                                  ; $7d4a: $01 $03 $03
    rrca                                          ; $7d4d: $0f
    rrca                                          ; $7d4e: $0f
    nop                                           ; $7d4f: $00
    rla                                           ; $7d50: $17
    rla                                           ; $7d51: $17
    ld [bc], a                                    ; $7d52: $02
    inc bc                                        ; $7d53: $03
    dec b                                         ; $7d54: $05
    rlca                                          ; $7d55: $07
    xor e                                         ; $7d56: $ab
    call nc, $8500                                ; $7d57: $d4 $00 $85
    ld a, [$fdf2]                                 ; $7d5a: $fa $f2 $fd
    ld b, c                                       ; $7d5d: $41
    cp $17                                        ; $7d5e: $fe $17
    add sp, -$7f                                  ; $7d60: $e8 $81
    ld e, d                                       ; $7d62: $5a
    ld [$d42b], sp                                ; $7d63: $08 $2b $d4
    cp $01                                        ; $7d66: $fe $01
    rst $38                                       ; $7d68: $ff
    nop                                           ; $7d69: $00
    ld [bc], a                                    ; $7d6a: $02
    ld [$5e08], sp                                ; $7d6b: $08 $08 $5e
    and c                                         ; $7d6e: $a1
    push af                                       ; $7d6f: $f5
    ld a, [bc]                                    ; $7d70: $0a
    ld a, [bc]                                    ; $7d71: $0a
    ld [$57a9], sp                                ; $7d72: $08 $a9 $57
    ld a, [c]                                     ; $7d75: $f2
    nop                                           ; $7d76: $00
    rrca                                          ; $7d77: $0f
    push hl                                       ; $7d78: $e5
    rra                                           ; $7d79: $1f
    add a                                         ; $7d7a: $87
    ld a, a                                       ; $7d7b: $7f
    and d                                         ; $7d7c: $a2
    ld e, a                                       ; $7d7d: $5f
    ld d, c                                       ; $7d7e: $51
    nop                                           ; $7d7f: $00
    xor a                                         ; $7d80: $af
    ld a, [$fd05]                                 ; $7d81: $fa $05 $fd
    ld [bc], a                                    ; $7d84: $02
    ld d, b                                       ; $7d85: $50
    ldh a, [$a8]                                  ; $7d86: $f0 $a8
    nop                                           ; $7d88: $00
    ld hl, sp-$2c                                 ; $7d89: $f8 $d4
    db $fc                                        ; $7d8b: $fc
    ld a, [$fcfa]                                 ; $7d8c: $fa $fa $fc
    db $fc                                        ; $7d8f: $fc
    ld e, b                                       ; $7d90: $58
    nop                                           ; $7d91: $00
    ld hl, sp+$2c                                 ; $7d92: $f8 $2c
    db $fc                                        ; $7d94: $fc
    ld e, h                                       ; $7d95: $5c
    db $fc                                        ; $7d96: $fc
    ld b, $07                                     ; $7d97: $06 $07
    rrca                                          ; $7d99: $0f
    nop                                           ; $7d9a: $00
    rrca                                          ; $7d9b: $0f
    rra                                           ; $7d9c: $1f

jr_0c2_7d9d:
    rra                                           ; $7d9d: $1f
    ld a, l                                       ; $7d9e: $7d
    ld a, a                                       ; $7d9f: $7f
    ld e, $1f                                     ; $7da0: $1e $1f
    inc [hl]                                      ; $7da2: $34
    nop                                           ; $7da3: $00
    ccf                                           ; $7da4: $3f
    ld l, d                                       ; $7da5: $6a
    ld a, a                                       ; $7da6: $7f
    db $fc                                        ; $7da7: $fc
    rst $38                                       ; $7da8: $ff
    sub l                                         ; $7da9: $95
    ld [$0061], a                                 ; $7daa: $ea $61 $00
    cp $d0                                        ; $7dad: $fe $d0
    rst $38                                       ; $7daf: $ff
    ld [$fdff], a                                 ; $7db0: $ea $ff $fd
    rst $38                                       ; $7db3: $ff
    ccf                                           ; $7db4: $3f
    nop                                           ; $7db5: $00
    ccf                                           ; $7db6: $3f
    inc de                                        ; $7db7: $13
    inc de                                        ; $7db8: $13
    inc b                                         ; $7db9: $04
    inc b                                         ; $7dba: $04
    xor a                                         ; $7dbb: $af
    ld d, b                                       ; $7dbc: $50
    ld d, l                                       ; $7dbd: $55
    ld b, d                                       ; $7dbe: $42
    xor d                                         ; $7dbf: $aa
    ld d, c                                       ; $7dc0: $51
    ld [$ff4a], sp                                ; $7dc1: $08 $4a $ff
    and l                                         ; $7dc4: $a5
    rst $38                                       ; $7dc5: $ff
    ld bc, $a808                                  ; $7dc6: $01 $08 $a8
    jr nz, jr_0c2_7e22                            ; $7dc9: $20 $57

    ld b, c                                       ; $7dcb: $41
    xor h                                         ; $7dcc: $ac
    nop                                           ; $7dcd: $00
    ld d, a                                       ; $7dce: $57
    rst $38                                       ; $7dcf: $ff
    cp l                                          ; $7dd0: $bd
    db $fd                                        ; $7dd1: $fd
    ld a, h                                       ; $7dd2: $7c

jr_0c2_7dd3:
    nop                                           ; $7dd3: $00
    db $fc                                        ; $7dd4: $fc
    cp b                                          ; $7dd5: $b8
    cp b                                          ; $7dd6: $b8
    ld b, b                                       ; $7dd7: $40
    ld b, b                                       ; $7dd8: $40
    jr z, jr_0c2_7dd3                             ; $7dd9: $28 $f8

    ld d, h                                       ; $7ddb: $54
    ld bc, $e8f4                                  ; $7ddc: $01 $f4 $e8
    add sp, -$30                                  ; $7ddf: $e8 $d0
    ret nc                                        ; $7de1: $d0

    and b                                         ; $7de2: $a0
    and b                                         ; $7de3: $a0
    xor d                                         ; $7de4: $aa
    jr jr_0c2_7de7                                ; $7de5: $18 $00

jr_0c2_7de7:
    cp [hl]                                       ; $7de7: $be
    cp a                                          ; $7de8: $bf
    ld e, a                                       ; $7de9: $5f
    ld e, a                                       ; $7dea: $5f
    rlca                                          ; $7deb: $07
    rlca                                          ; $7dec: $07
    ld c, $0e                                     ; $7ded: $0e $0e
    dec h                                         ; $7def: $25
    inc b                                         ; $7df0: $04
    inc b                                         ; $7df1: $04
    cp d                                          ; $7df2: $ba
    jr jr_0c2_7d9d                                ; $7df3: $18 $a8

    ld d, a                                       ; $7df5: $57
    ldh a, [rP1]                                  ; $7df6: $f0 $00
    inc b                                         ; $7df8: $04
    sub h                                         ; $7df9: $94
    ld [$ef00], sp                                ; $7dfa: $08 $00 $ef
    nop                                           ; $7dfd: $00
    rst $30                                       ; $7dfe: $f7
    nop                                           ; $7dff: $00
    rst $18                                       ; $7e00: $df
    jr nz, @+$01                                  ; $7e01: $20 $ff

    rst $38                                       ; $7e03: $ff
    nop                                           ; $7e04: $00
    adc e                                         ; $7e05: $8b
    rst $38                                       ; $7e06: $ff
    di                                            ; $7e07: $f3
    rst $08                                       ; $7e08: $cf
    sbc c                                         ; $7e09: $99
    rst $20                                       ; $7e0a: $e7
    di                                            ; $7e0b: $f3
    rst $08                                       ; $7e0c: $cf
    nop                                           ; $7e0d: $00
    reti                                          ; $7e0e: $d9


    rst $20                                       ; $7e0f: $e7
    ld d, d                                       ; $7e10: $52
    ld l, [hl]                                    ; $7e11: $6e
    inc a                                         ; $7e12: $3c
    inc a                                         ; $7e13: $3c
    nop                                           ; $7e14: $00
    rst $38                                       ; $7e15: $ff
    ld [hl+], a                                   ; $7e16: $22
    db $dd                                        ; $7e17: $dd
    ld [hl+], a                                   ; $7e18: $22
    or d                                          ; $7e19: $b2
    ld [$8857], sp                                ; $7e1a: $08 $57 $88
    rst $28                                       ; $7e1d: $ef
    cp b                                          ; $7e1e: $b8
    nop                                           ; $7e1f: $00
    db $dd                                        ; $7e20: $dd
    ld l, [hl]                                    ; $7e21: $6e

jr_0c2_7e22:
    nop                                           ; $7e22: $00
    stop                                          ; $7e23: $10 $00
    ret nz                                        ; $7e25: $c0

    db $10                                        ; $7e26: $10
    ld d, a                                       ; $7e27: $57
    jr nc, jr_0c2_7e2a                            ; $7e28: $30 $00

jr_0c2_7e2a:
    db $10                                        ; $7e2a: $10
    jr jr_0c2_7e67                                ; $7e2b: $18 $3a

    nop                                           ; $7e2d: $00
    stop                                          ; $7e2e: $10 $00
    cp $00                                        ; $7e30: $fe $00
    cp e                                          ; $7e32: $bb
    inc b                                         ; $7e33: $04
    rst $18                                       ; $7e34: $df
    nop                                           ; $7e35: $00
    or $08                                        ; $7e36: $f6 $08
    inc c                                         ; $7e38: $0c
    rst $38                                       ; $7e39: $ff
    nop                                           ; $7e3a: $00
    dec b                                         ; $7e3b: $05
    ld a, [$18e0]                                 ; $7e3c: $fa $e0 $18
    ld b, $28                                     ; $7e3f: $06 $28
    ld d, l                                       ; $7e41: $55
    xor d                                         ; $7e42: $aa
    add b                                         ; $7e43: $80
    db $10                                        ; $7e44: $10
    ld e, b                                       ; $7e45: $58
    ld b, b                                       ; $7e46: $40
    cp a                                          ; $7e47: $bf
    cp [hl]                                       ; $7e48: $be
    ld b, c                                       ; $7e49: $41
    rst $38                                       ; $7e4a: $ff
    nop                                           ; $7e4b: $00
    rst $30                                       ; $7e4c: $f7
    and c                                         ; $7e4d: $a1
    ld a, [hl+]                                   ; $7e4e: $2a
    nop                                           ; $7e4f: $00
    rst $38                                       ; $7e50: $ff
    ld l, [hl]                                    ; $7e51: $6e
    nop                                           ; $7e52: $00
    ei                                            ; $7e53: $fb
    inc b                                         ; $7e54: $04
    ld a, [bc]                                    ; $7e55: $0a
    push af                                       ; $7e56: $f5
    jr nc, @+$5a                                  ; $7e57: $30 $58

    nop                                           ; $7e59: $00
    xor d                                         ; $7e5a: $aa
    ld d, l                                       ; $7e5b: $55
    ld a, a                                       ; $7e5c: $7f
    add b                                         ; $7e5d: $80
    rst $28                                       ; $7e5e: $ef
    db $10                                        ; $7e5f: $10
    db $fd                                        ; $7e60: $fd
    ld [bc], a                                    ; $7e61: $02
    nop                                           ; $7e62: $00
    ei                                            ; $7e63: $fb
    inc b                                         ; $7e64: $04
    ld l, a                                       ; $7e65: $6f
    sub b                                         ; $7e66: $90

jr_0c2_7e67:
    db $fd                                        ; $7e67: $fd
    ld [bc], a                                    ; $7e68: $02
    rst $38                                       ; $7e69: $ff
    nop                                           ; $7e6a: $00
    nop                                           ; $7e6b: $00
    and b                                         ; $7e6c: $a0
    ld e, a                                       ; $7e6d: $5f
    rst $30                                       ; $7e6e: $f7
    ld [$40bf], sp                                ; $7e6f: $08 $bf $40
    rst $38                                       ; $7e72: $ff
    nop                                           ; $7e73: $00
    ld [$24db], sp                                ; $7e74: $08 $db $24
    rst $38                                       ; $7e77: $ff
    nop                                           ; $7e78: $00
    ld [$0008], sp                                ; $7e79: $08 $08 $00
    rst $38                                       ; $7e7c: $ff
    rst $28                                       ; $7e7d: $ef
    db $10                                        ; $7e7e: $10
    db $10                                        ; $7e7f: $10
    ld a, l                                       ; $7e80: $7d
    add d                                         ; $7e81: $82
    ld b, h                                       ; $7e82: $44
    add hl, bc                                    ; $7e83: $09
    db $dd                                        ; $7e84: $dd
    ld [hl+], a                                   ; $7e85: $22
    or [hl]                                       ; $7e86: $b6
    ld c, c                                       ; $7e87: $49
    ret nz                                        ; $7e88: $c0

    db $10                                        ; $7e89: $10
    ld [$5850], sp                                ; $7e8a: $08 $50 $58
    nop                                           ; $7e8d: $00
    rst $38                                       ; $7e8e: $ff
    rst $18                                       ; $7e8f: $df
    ld hl, $02ff                                  ; $7e90: $21 $ff $02
    nop                                           ; $7e93: $00

jr_0c2_7e94:
    rst $38                                       ; $7e94: $ff
    jr nz, jr_0c2_7e94                            ; $7e95: $20 $fd

    ld [bc], a                                    ; $7e97: $02
    rst $28                                       ; $7e98: $ef
    ld de, $20ff                                  ; $7e99: $11 $ff $20
    dec [hl]                                      ; $7e9c: $35
    ld a, l                                       ; $7e9d: $7d
    sub d                                         ; $7e9e: $92
    and b                                         ; $7e9f: $a0
    nop                                           ; $7ea0: $00
    ld b, b                                       ; $7ea1: $40
    jr @+$27                                      ; $7ea2: $18 $25

    ld a, b                                       ; $7ea4: $78
    ld bc, $6020                                  ; $7ea5: $01 $20 $60
    ld [$8088], sp                                ; $7ea8: $08 $88 $80
    ld bc, $fb08                                  ; $7eab: $01 $08 $fb
    ld b, h                                       ; $7eae: $44
    add [hl]                                      ; $7eaf: $86
    ld bc, $bf04                                  ; $7eb0: $01 $04 $bf
    ld c, b                                       ; $7eb3: $48
    ld [hl-], a                                   ; $7eb4: $32
    db $fd                                        ; $7eb5: $fd
    ld [bc], a                                    ; $7eb6: $02
    stop                                          ; $7eb7: $10 $00
    jr nz, jr_0c2_7f0b                            ; $7eb9: $20 $50

    xor b                                         ; $7ebb: $a8
    ld d, a                                       ; $7ebc: $57
    ld h, b                                       ; $7ebd: $60
    db $10                                        ; $7ebe: $10

jr_0c2_7ebf:
    jr nz, jr_0c2_7eee                            ; $7ebf: $20 $2d

    rst $38                                       ; $7ec1: $ff
    ld de, $1860                                  ; $7ec2: $11 $60 $18
    push af                                       ; $7ec5: $f5
    add h                                         ; $7ec6: $84
    nop                                           ; $7ec7: $00
    ldh [rOBP0], a                                ; $7ec8: $e0 $48
    push af                                       ; $7eca: $f5
    ld a, [hl+]                                   ; $7ecb: $2a
    ld de, $f0b1                                  ; $7ecc: $11 $b1 $f0
    nop                                           ; $7ecf: $00
    nop                                           ; $7ed0: $00
    ldh a, [rP1]                                  ; $7ed1: $f0 $00
    ld [hl], $11                                  ; $7ed3: $36 $11
    rst $38                                       ; $7ed5: $ff
    nop                                           ; $7ed6: $00
    ld [hl], a                                    ; $7ed7: $77
    jp nc, Jump_0c2_4501                          ; $7ed8: $d2 $01 $45

    cp e                                          ; $7edb: $bb
    ld a, $01                                     ; $7edc: $3e $01
    cp $00                                        ; $7ede: $fe $00
    xor l                                         ; $7ee0: $ad
    call c, $f701                                 ; $7ee1: $dc $01 $f7
    ld [de], a                                    ; $7ee4: $12

jr_0c2_7ee5:
    ld [$0a83], sp                                ; $7ee5: $08 $83 $0a
    ld bc, $00fb                                  ; $7ee8: $01 $fb $00
    ld a, a                                       ; $7eeb: $7f
    add b                                         ; $7eec: $80
    rst $18                                       ; $7eed: $df

jr_0c2_7eee:
    db $10                                        ; $7eee: $10
    jr z, jr_0c2_7ee5                             ; $7eef: $28 $f4

    ld bc, $10e3                                  ; $7ef1: $01 $e3 $10
    nop                                           ; $7ef4: $00
    inc [hl]                                      ; $7ef5: $34
    nop                                           ; $7ef6: $00
    jr @+$0a                                      ; $7ef7: $18 $08

    rst $38                                       ; $7ef9: $ff
    nop                                           ; $7efa: $00
    ld e, e                                       ; $7efb: $5b
    adc $00                                       ; $7efc: $ce $00
    ld [hl], d                                    ; $7efe: $72
    add hl, bc                                    ; $7eff: $09
    jr nz, jr_0c2_7ebf                            ; $7f00: $20 $bd

    ld b, d                                       ; $7f02: $42
    ld b, b                                       ; $7f03: $40
    ld [de], a                                    ; $7f04: $12

jr_0c2_7f05:
    jr c, jr_0c2_7f3f                             ; $7f05: $38 $38

    ld b, [hl]                                    ; $7f07: $46
    ld e, l                                       ; $7f08: $5d
    and e                                         ; $7f09: $a3
    inc bc                                        ; $7f0a: $03

jr_0c2_7f0b:
    and c                                         ; $7f0b: $a1
    rst $18                                       ; $7f0c: $df
    ld l, d                                       ; $7f0d: $6a
    ld a, [hl]                                    ; $7f0e: $7e
    inc a                                         ; $7f0f: $3c
    inc a                                         ; $7f10: $3c
    ld a, $59                                     ; $7f11: $3e $59
    ld e, h                                       ; $7f13: $5c
    add hl, bc                                    ; $7f14: $09
    cp b                                          ; $7f15: $b8
    jr nc, jr_0c2_7f71                            ; $7f16: $30 $59

    cp e                                          ; $7f18: $bb
    cp d                                          ; $7f19: $ba
    ld [$110e], sp                                ; $7f1a: $08 $0e $11
    db $10                                        ; $7f1d: $10
    add hl, bc                                    ; $7f1e: $09
    db $fd                                        ; $7f1f: $fd
    ld [bc], a                                    ; $7f20: $02
    rst $30                                       ; $7f21: $f7
    ld c, c                                       ; $7f22: $49
    ld [$5930], sp                                ; $7f23: $08 $30 $59
    cp l                                          ; $7f26: $bd
    ld b, d                                       ; $7f27: $42
    ldh a, [$58]                                  ; $7f28: $f0 $58
    ei                                            ; $7f2a: $fb
    inc b                                         ; $7f2b: $04
    ret nc                                        ; $7f2c: $d0

    ld e, b                                       ; $7f2d: $58
    ld [hl+], a                                   ; $7f2e: $22
    rst $38                                       ; $7f2f: $ff
    inc b                                         ; $7f30: $04
    add b                                         ; $7f31: $80
    ld bc, $f720                                  ; $7f32: $01 $20 $f7
    ld [$011e], sp                                ; $7f35: $08 $1e $01
    nop                                           ; $7f38: $00
    ld sp, $10ff                                  ; $7f39: $31 $ff $10
    ld d, b                                       ; $7f3c: $50
    jr nz, jr_0c2_7f4f                            ; $7f3d: $20 $10

jr_0c2_7f3f:
    ld b, c                                       ; $7f3f: $41
    rst $30                                       ; $7f40: $f7
    ld c, d                                       ; $7f41: $4a
    rst $38                                       ; $7f42: $ff
    add b                                         ; $7f43: $80
    add hl, bc                                    ; $7f44: $09
    ld d, d                                       ; $7f45: $52
    ld [hl+], a                                   ; $7f46: $22
    add b                                         ; $7f47: $80
    ld bc, $2a91                                  ; $7f48: $01 $91 $2a
    add hl, bc                                    ; $7f4b: $09
    cp l                                          ; $7f4c: $bd
    ld b, d                                       ; $7f4d: $42
    add b                                         ; $7f4e: $80

jr_0c2_7f4f:
    ld e, c                                       ; $7f4f: $59
    rst $28                                       ; $7f50: $ef
    di                                            ; $7f51: $f3
    ld a, b                                       ; $7f52: $78
    ld bc, $4a10                                  ; $7f53: $01 $10 $4a
    ret nc                                        ; $7f56: $d0

    jr nz, jr_0c2_7f05                            ; $7f57: $20 $ac

    jr jr_0c2_7f5b                                ; $7f59: $18 $00

jr_0c2_7f5b:
    cp l                                          ; $7f5b: $bd
    inc b                                         ; $7f5c: $04
    ld [de], a                                    ; $7f5d: $12
    ld d, b                                       ; $7f5e: $50
    ld d, d                                       ; $7f5f: $52
    add b                                         ; $7f60: $80
    add d                                         ; $7f61: $82
    nop                                           ; $7f62: $00
    db $dd                                        ; $7f63: $dd
    ld h, [hl]                                    ; $7f64: $66
    and $32                                       ; $7f65: $e6 $32
    pop af                                        ; $7f67: $f1
    ld a, [de]                                    ; $7f68: $1a
    and l                                         ; $7f69: $a5
    nop                                           ; $7f6a: $00
    ret nz                                        ; $7f6b: $c0

    ret nc                                        ; $7f6c: $d0

    ld a, b                                       ; $7f6d: $78
    ld a, [$ef1d]                                 ; $7f6e: $fa $1d $ef

jr_0c2_7f71:
    db $10                                        ; $7f71: $10
    rst $08                                       ; $7f72: $cf

jr_0c2_7f73:
    nop                                           ; $7f73: $00
    db $10                                        ; $7f74: $10
    sbc c                                         ; $7f75: $99
    ld [hl], $b3                                  ; $7f76: $36 $b3
    inc h                                         ; $7f78: $24
    rlca                                          ; $7f79: $07
    ld l, $4c                                     ; $7f7a: $2e $4c
    ld bc, $0b1d                                  ; $7f7c: $01 $1d $0b
    rlca                                          ; $7f7f: $07
    xor a                                         ; $7f80: $af
    ld e, h                                       ; $7f81: $5c
    rst $30                                       ; $7f82: $f7
    ld [$18cc], sp                                ; $7f83: $08 $cc $18
    nop                                           ; $7f86: $00
    cp l                                          ; $7f87: $bd
    ld b, d                                       ; $7f88: $42
    rst $28                                       ; $7f89: $ef
    db $10                                        ; $7f8a: $10
    rst $38                                       ; $7f8b: $ff

jr_0c2_7f8c:
    nop                                           ; $7f8c: $00
    ld a, l                                       ; $7f8d: $7d
    add d                                         ; $7f8e: $82
    db $fc                                        ; $7f8f: $fc
    or b                                          ; $7f90: $b0
    jr nz, jr_0c2_7f73                            ; $7f91: $20 $e0

    ld sp, $0070                                  ; $7f93: $31 $70 $00
    ld [hl], b                                    ; $7f96: $70

jr_0c2_7f97:
    ld d, d                                       ; $7f97: $52
    ld [hl], b                                    ; $7f98: $70
    ld de, $0268                                  ; $7f99: $11 $68 $02
    cp e                                          ; $7f9c: $bb
    ld b, b                                       ; $7f9d: $40
    jr nz, jr_0c2_7f97                            ; $7f9e: $20 $f7

    ld [$0170], sp                                ; $7fa0: $08 $70 $01
    db $10                                        ; $7fa3: $10
    rst $28                                       ; $7fa4: $ef
    db $10                                        ; $7fa5: $10
    rst $18                                       ; $7fa6: $df
    jr nz, jr_0c2_7fa9                            ; $7fa7: $20 $00

jr_0c2_7fa9:
    add hl, bc                                    ; $7fa9: $09
    and [hl]                                      ; $7faa: $a6
    db $e3                                        ; $7fab: $e3
    ld b, h                                       ; $7fac: $44
    dec hl                                        ; $7fad: $2b
    and $84                                       ; $7fae: $e6 $84
    dec l                                         ; $7fb0: $2d
    dec bc                                        ; $7fb1: $0b
    add e                                         ; $7fb2: $83
    rst $28                                       ; $7fb3: $ef
    rst $08                                       ; $7fb4: $cf
    ld a, h                                       ; $7fb5: $7c
    sub h                                         ; $7fb6: $94
    add hl, bc                                    ; $7fb7: $09
    ld a, e                                       ; $7fb8: $7b
    adc [hl]                                      ; $7fb9: $8e
    jr nz, jr_0c2_7f8c                            ; $7fba: $20 $d0

    ld [bc], a                                    ; $7fbc: $02
    nop                                           ; $7fbd: $00
    nop                                           ; $7fbe: $00

    db $00, $00, $ff, $7f, $0c, $6a, $a0, $54, $79, $32, $74, $19, $ed, $18, $87, $1c
    db $de, $7b, $f6, $66, $ab, $41, $a0, $14, $7f, $4f, $b8, $56, $90, $31, $85, $08
    db $16, $26, $11, $0d, $cc, $14, $87, $1c, $74, $19, $ed, $18, $6c, $08, $05, $0c
    db $f6, $6a, $2f, $56, $04, $31, $a0, $14, $ef, $3d, $ef, $3d, $ef, $3d, $ef, $3d

    rst $38                                       ; $7fff: $ff
