; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $097", ROMX[$4000], BANK[$97]

    sub a                                         ; $4000: $97

Jump_097_4001:
    ld h, b                                       ; $4001: $60
    db $18, $cd                                   ; $4002: $18 $cd
    inc c                                         ; $4004: $0c
    ld b, b                                       ; $4005: $40
    rst $38                                       ; $4006: $ff
    ld bc, $f660                                  ; $4007: $01 $60 $f6
    cp $fb                                        ; $400a: $fe $fb
    rst $38                                       ; $400c: $ff
    push af                                       ; $400d: $f5
    rst $38                                       ; $400e: $ff
    ld b, b                                       ; $400f: $40
    ld a, [$3017]                                 ; $4010: $fa $17 $30
    ld b, $06                                     ; $4013: $06 $06
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    adc a                                         ; $4017: $8f

jr_097_4018:
    adc a                                         ; $4018: $8f
    nop                                           ; $4019: $00
    rst $30                                       ; $401a: $f7
    rst $38                                       ; $401b: $ff
    ld e, a                                       ; $401c: $5f
    rst $38                                       ; $401d: $ff
    db $fc                                        ; $401e: $fc
    db $fc                                        ; $401f: $fc
    ldh a, [$f0]                                  ; $4020: $f0 $f0
    ld bc, $c0c0                                  ; $4022: $01 $c0 $c0
    nop                                           ; $4025: $00
    rst $38                                       ; $4026: $ff
    nop                                           ; $4027: $00
    rst $38                                       ; $4028: $ff
    ld b, b                                       ; $4029: $40
    inc b                                         ; $402a: $04
    nop                                           ; $402b: $00
    sub b                                         ; $402c: $90
    ld [bc], a                                    ; $402d: $02
    ld l, b                                       ; $402e: $68
    ld b, b                                       ; $402f: $40
    cp a                                          ; $4030: $bf
    ld a, [de]                                    ; $4031: $1a
    ld [$5fa0], sp                                ; $4032: $08 $a0 $5f
    rst $38                                       ; $4035: $ff
    rst $38                                       ; $4036: $ff
    inc b                                         ; $4037: $04
    rst $18                                       ; $4038: $df
    rst $38                                       ; $4039: $ff
    ld l, a                                       ; $403a: $6f
    rst $38                                       ; $403b: $ff
    cp a                                          ; $403c: $bf
    ld d, a                                       ; $403d: $57
    db $10                                        ; $403e: $10
    ccf                                           ; $403f: $3f
    ccf                                           ; $4040: $3f
    nop                                           ; $4041: $00
    di                                            ; $4042: $f3
    di                                            ; $4043: $f3
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    ld bc, $0f01                                  ; $4046: $01 $01 $0f
    rrca                                          ; $4049: $0f
    nop                                           ; $404a: $00
    ld a, [hl-]                                   ; $404b: $3a
    ccf                                           ; $404c: $3f
    ld d, a                                       ; $404d: $57
    ld a, a                                       ; $404e: $7f
    cp a                                          ; $404f: $bf
    rst $38                                       ; $4050: $ff
    ld hl, sp-$08                                 ; $4051: $f8 $f8
    ld hl, $c1c1                                  ; $4053: $21 $c1 $c1
    ld a, [hl-]                                   ; $4056: $3a
    jr z, jr_097_4069                             ; $4057: $28 $10

    rst $38                                       ; $4059: $ff
    ld [bc], a                                    ; $405a: $02
    db $fd                                        ; $405b: $fd
    ld b, [hl]                                    ; $405c: $46
    jr jr_097_40af                                ; $405d: $18 $50

    ld [bc], a                                    ; $405f: $02
    ld d, b                                       ; $4060: $50
    db $10                                        ; $4061: $10
    ld bc, $2054                                  ; $4062: $01 $54 $20
    add c                                         ; $4065: $81
    add c                                         ; $4066: $81
    add b                                         ; $4067: $80
    add b                                         ; $4068: $80

jr_097_4069:
    ld [$c0c0], sp                                ; $4069: $08 $c0 $c0
    rst $28                                       ; $406c: $ef
    rst $28                                       ; $406d: $ef
    add d                                         ; $406e: $82
    ld [$fefe], sp                                ; $406f: $08 $fe $fe
    ld hl, sp+$00                                 ; $4072: $f8 $00
    ld hl, sp-$10                                 ; $4074: $f8 $f0
    ldh a, [rP1]                                  ; $4076: $f0 $00
    nop                                           ; $4078: $00
    ret nz                                        ; $4079: $c0

    ret nz                                        ; $407a: $c0

    ld h, b                                       ; $407b: $60
    inc bc                                        ; $407c: $03
    ldh [$f0], a                                  ; $407d: $e0 $f0
    ldh a, [$e0]                                  ; $407f: $f0 $e0
    ldh [rP1], a                                  ; $4081: $e0 $00
    ld bc, $7008                                  ; $4083: $01 $08 $70
    ld d, b                                       ; $4086: $50
    inc d                                         ; $4087: $14
    jr nz, jr_097_4069                            ; $4088: $20 $df

    jr nz, jr_097_4018                            ; $408a: $20 $8c

    db $10                                        ; $408c: $10
    ld b, h                                       ; $408d: $44
    ld a, [hl]                                    ; $408e: $7e
    nop                                           ; $408f: $00
    ld c, b                                       ; $4090: $48
    or a                                          ; $4091: $b7
    nop                                           ; $4092: $00
    inc b                                         ; $4093: $04
    ei                                            ; $4094: $fb
    nop                                           ; $4095: $00
    rst $38                                       ; $4096: $ff
    db $ec                                        ; $4097: $ec
    db $ec                                        ; $4098: $ec
    jp $02c3                                      ; $4099: $c3 $c3 $02


    pop af                                        ; $409c: $f1
    pop af                                        ; $409d: $f1
    db $fc                                        ; $409e: $fc
    db $fc                                        ; $409f: $fc
    cp $fe                                        ; $40a0: $fe $fe
    or b                                          ; $40a2: $b0
    ld [$60f9], sp                                ; $40a3: $08 $f9 $60
    ld sp, hl                                     ; $40a6: $f9
    inc [hl]                                      ; $40a7: $34
    ld [$0852], sp                                ; $40a8: $08 $52 $08
    ld h, e                                       ; $40ab: $63
    ld h, e                                       ; $40ac: $63
    ld a, [hl]                                    ; $40ad: $7e
    ld a, [hl]                                    ; $40ae: $7e

jr_097_40af:
    ldh a, [rP1]                                  ; $40af: $f0 $00
    ldh a, [$80]                                  ; $40b1: $f0 $80
    add b                                         ; $40b3: $80
    nop                                           ; $40b4: $00
    rst $38                                       ; $40b5: $ff
    ld d, b                                       ; $40b6: $50
    xor a                                         ; $40b7: $af

jr_097_40b8:
    ld b, h                                       ; $40b8: $44
    and h                                         ; $40b9: $a4
    jr z, jr_097_40bc                             ; $40ba: $28 $00

jr_097_40bc:
    ld [$00c8], sp                                ; $40bc: $08 $c8 $00
    adc d                                         ; $40bf: $8a
    push af                                       ; $40c0: $f5
    or [hl]                                       ; $40c1: $b6
    ld [$7f80], sp                                ; $40c2: $08 $80 $7f
    and b                                         ; $40c5: $a0
    adc $28                                       ; $40c6: $ce $28
    inc b                                         ; $40c8: $04
    sbc b                                         ; $40c9: $98
    ld [$20ef], sp                                ; $40ca: $08 $ef $20
    rst $18                                       ; $40cd: $df
    nop                                           ; $40ce: $00
    rst $38                                       ; $40cf: $ff
    inc b                                         ; $40d0: $04
    dec b                                         ; $40d1: $05
    cp $20                                        ; $40d2: $fe $20
    rst $18                                       ; $40d4: $df
    add b                                         ; $40d5: $80
    ld [$0800], a                                 ; $40d6: $ea $00 $08
    rst $30                                       ; $40d9: $f7
    inc bc                                        ; $40da: $03
    db $10                                        ; $40db: $10
    rst $38                                       ; $40dc: $ff
    add d                                         ; $40dd: $82
    ld a, a                                       ; $40de: $7f
    jr z, jr_097_40b8                             ; $40df: $28 $d7

    inc e                                         ; $40e1: $1c
    jr @+$1c                                      ; $40e2: $18 $1a

    ld [$1029], sp                                ; $40e4: $08 $29 $10
    rst $28                                       ; $40e7: $ef
    ld [bc], a                                    ; $40e8: $02
    add hl, bc                                    ; $40e9: $09
    ld b, d                                       ; $40ea: $42
    cp h                                          ; $40eb: $bc
    db $10                                        ; $40ec: $10
    sub c                                         ; $40ed: $91
    ld l, a                                       ; $40ee: $6f
    cp b                                          ; $40ef: $b8
    ld [$289c], sp                                ; $40f0: $08 $9c $28
    ld [$df20], sp                                ; $40f3: $08 $20 $df
    ld d, b                                       ; $40f6: $50
    ld [$0018], sp                                ; $40f7: $08 $18 $00
    ld b, $01                                     ; $40fa: $06 $01
    ld [$40f7], sp                                ; $40fc: $08 $f7 $40

Call_097_40ff:
    ld b, b                                       ; $40ff: $40
    ld e, [hl]                                    ; $4100: $5e
    db $10                                        ; $4101: $10
    add d                                         ; $4102: $82
    ld a, l                                       ; $4103: $7d
    ld b, b                                       ; $4104: $40
    cp a                                          ; $4105: $bf
    ld [$5dff], sp                                ; $4106: $08 $ff $5d
    ld [hl+], a                                   ; $4109: $22
    jr nc, jr_097_410d                            ; $410a: $30 $01

    add b                                         ; $410c: $80

jr_097_410d:
    db $ec                                        ; $410d: $ec
    db $10                                        ; $410e: $10
    and h                                         ; $410f: $a4
    ld [$0028], sp                                ; $4110: $08 $28 $00
    rst $30                                       ; $4113: $f7
    ld b, d                                       ; $4114: $42
    add hl, bc                                    ; $4115: $09
    ld b, a                                       ; $4116: $47
    ld [hl+], a                                   ; $4117: $22
    ld [$0100], sp                                ; $4118: $08 $00 $01
    cp $08                                        ; $411b: $fe $08
    ld c, d                                       ; $411d: $4a
    ld de, $0834                                  ; $411e: $11 $34 $08
    jp z, $c100                                   ; $4121: $ca $00 $c1

    ld d, h                                       ; $4124: $54
    ld de, $081e                                  ; $4125: $11 $1e $08
    ld [bc], a                                    ; $4128: $02
    db $fd                                        ; $4129: $fd
    add b                                         ; $412a: $80
    ld a, a                                       ; $412b: $7f
    ld a, [bc]                                    ; $412c: $0a
    inc e                                         ; $412d: $1c
    ld bc, $4008                                  ; $412e: $01 $08 $40
    cp a                                          ; $4131: $bf
    ld [hl+], a                                   ; $4132: $22
    db $dd                                        ; $4133: $dd
    inc d                                         ; $4134: $14
    jr c, jr_097_4177                             ; $4135: $38 $40

    cp a                                          ; $4137: $bf
    jr nz, jr_097_4142                            ; $4138: $20 $08

    rst $18                                       ; $413a: $df
    inc b                                         ; $413b: $04
    ei                                            ; $413c: $fb
    ld b, b                                       ; $413d: $40
    ld e, [hl]                                    ; $413e: $5e
    ld bc, $ffeb                                  ; $413f: $01 $eb $ff

jr_097_4142:
    pop af                                        ; $4142: $f1
    jr nz, @+$01                                  ; $4143: $20 $ff

    cp $b7                                        ; $4145: $fe $b7
    ld hl, $fcfc                                  ; $4147: $21 $fc $fc
    ld c, $0e                                     ; $414a: $0e $0e
    ld [hl], b                                    ; $414c: $70
    ld [bc], a                                    ; $414d: $02
    ld [hl], b                                    ; $414e: $70
    ret nz                                        ; $414f: $c0

    ret nz                                        ; $4150: $c0

    cp h                                          ; $4151: $bc
    db $fc                                        ; $4152: $fc
    rst $10                                       ; $4153: $d7
    ret                                           ; $4154: $c9


    ld bc, $1110                                  ; $4155: $01 $10 $11
    db $10                                        ; $4158: $10
    jr nz, jr_097_417b                            ; $4159: $20 $20

    cp [hl]                                       ; $415b: $be
    ld [$7f80], sp                                ; $415c: $08 $80 $7f
    ld [hl+], a                                   ; $415f: $22
    call nz, Call_000_3400                        ; $4160: $c4 $00 $34
    adc b                                         ; $4163: $88
    ld [hl], a                                    ; $4164: $77
    xor h                                         ; $4165: $ac
    add hl, bc                                    ; $4166: $09
    ld a, [bc]                                    ; $4167: $0a
    add hl, bc                                    ; $4168: $09
    rst $30                                       ; $4169: $f7
    ret nc                                        ; $416a: $d0

    ld hl, $f1f1                                  ; $416b: $21 $f1 $f1
    ld [bc], a                                    ; $416e: $02
    ld hl, sp-$08                                 ; $416f: $f8 $f8
    ld h, b                                       ; $4171: $60
    ld h, b                                       ; $4172: $60
    ret nz                                        ; $4173: $c0

    ret nz                                        ; $4174: $c0

    ld h, d                                       ; $4175: $62
    add hl, bc                                    ; $4176: $09

jr_097_4177:
    ld [hl], b                                    ; $4177: $70
    nop                                           ; $4178: $00
    ldh a, [$88]                                  ; $4179: $f0 $88

jr_097_417b:
    ld hl, sp-$2c                                 ; $417b: $f8 $d4
    db $fc                                        ; $417d: $fc
    ld a, h                                       ; $417e: $7c
    ld a, h                                       ; $417f: $7c
    add b                                         ; $4180: $80
    ld hl, $287f                                  ; $4181: $21 $7f $28
    sub d                                         ; $4184: $92
    nop                                           ; $4185: $00
    inc b                                         ; $4186: $04
    ei                                            ; $4187: $fb
    ld bc, $b6fe                                  ; $4188: $01 $fe $b6
    ld [$8010], sp                                ; $418b: $08 $10 $80
    ld a, a                                       ; $418e: $7f
    cp $5b                                        ; $418f: $fe $5b
    nop                                           ; $4191: $00
    or $fe                                        ; $4192: $f6 $fe
    db $eb                                        ; $4194: $eb
    rst $38                                       ; $4195: $ff
    ld b, b                                       ; $4196: $40
    db $fd                                        ; $4197: $fd
    inc b                                         ; $4198: $04
    ld [hl+], a                                   ; $4199: $22
    jr jr_097_41b4                                ; $419a: $18 $18

    ret nz                                        ; $419c: $c0

    ret nz                                        ; $419d: $c0

    ld a, b                                       ; $419e: $78
    ld a, b                                       ; $419f: $78
    ld bc, $8e8e                                  ; $41a0: $01 $8e $8e
    ld [hl], b                                    ; $41a3: $70
    ldh a, [$bc]                                  ; $41a4: $f0 $bc
    db $fc                                        ; $41a6: $fc
    ld d, [hl]                                    ; $41a7: $56
    jr jr_097_41aa                                ; $41a8: $18 $00

jr_097_41aa:
    sub $2c                                       ; $41aa: $d6 $2c
    ld [$0a00], sp                                ; $41ac: $08 $00 $0a
    jr z, @+$28                                   ; $41af: $28 $26

    ld bc, $3820                                  ; $41b1: $01 $20 $38

jr_097_41b4:
    nop                                           ; $41b4: $00
    ld h, $09                                     ; $41b5: $26 $09
    ld [hl+], a                                   ; $41b7: $22
    cp b                                          ; $41b8: $b8
    xor [hl]                                      ; $41b9: $ae
    db $10                                        ; $41ba: $10
    inc b                                         ; $41bb: $04
    inc b                                         ; $41bc: $04
    ld [bc], a                                    ; $41bd: $02
    nop                                           ; $41be: $00
    ld a, [bc]                                    ; $41bf: $0a
    cp b                                          ; $41c0: $b8
    add hl, bc                                    ; $41c1: $09
    rst $38                                       ; $41c2: $ff
    rst $38                                       ; $41c3: $ff
    db $e3                                        ; $41c4: $e3
    ld bc, $e0e3                                  ; $41c5: $01 $e3 $e0
    ldh [$d0], a                                  ; $41c8: $e0 $d0
    ldh a, [$ec]                                  ; $41ca: $f0 $ec
    db $fc                                        ; $41cc: $fc
    add $09                                       ; $41cd: $c6 $09
    add b                                         ; $41cf: $80
    cp b                                          ; $41d0: $b8
    add hl, bc                                    ; $41d1: $09
    ret nz                                        ; $41d2: $c0

    ret nz                                        ; $41d3: $c0

    ldh [$e0], a                                  ; $41d4: $e0 $e0
    jr c, jr_097_4210                             ; $41d6: $38 $38

    rra                                           ; $41d8: $1f
    ld e, d                                       ; $41d9: $5a
    rra                                           ; $41da: $1f
    ld h, d                                       ; $41db: $62
    add hl, bc                                    ; $41dc: $09
    add h                                         ; $41dd: $84
    nop                                           ; $41de: $00
    ld b, d                                       ; $41df: $42
    ld h, [hl]                                    ; $41e0: $66
    add hl, bc                                    ; $41e1: $09
    db $10                                        ; $41e2: $10
    ld d, h                                       ; $41e3: $54
    ld [bc], a                                    ; $41e4: $02
    dec b                                         ; $41e5: $05
    ld b, c                                       ; $41e6: $41
    ld a, [$0a42]                                 ; $41e7: $fa $42 $0a
    add d                                         ; $41ea: $82
    ld a, a                                       ; $41eb: $7f
    ld [bc], a                                    ; $41ec: $02
    db $fd                                        ; $41ed: $fd
    add h                                         ; $41ee: $84
    add $01                                       ; $41ef: $c6 $01
    ldh [$ca], a                                  ; $41f1: $e0 $ca
    add hl, bc                                    ; $41f3: $09
    ld e, [hl]                                    ; $41f4: $5e
    nop                                           ; $41f5: $00
    sub [hl]                                      ; $41f6: $96
    add hl, de                                    ; $41f7: $19
    ei                                            ; $41f8: $fb
    ld [$44f7], sp                                ; $41f9: $08 $f7 $44
    cp e                                          ; $41fc: $bb
    sub [hl]                                      ; $41fd: $96
    ld a, b                                       ; $41fe: $78
    add hl, bc                                    ; $41ff: $09
    ld bc, $7efe                                  ; $4200: $01 $fe $7e
    add hl, bc                                    ; $4203: $09
    ld b, c                                       ; $4204: $41
    ld l, d                                       ; $4205: $6a
    ld [de], a                                    ; $4206: $12
    ld a, d                                       ; $4207: $7a
    nop                                           ; $4208: $00
    ld a, a                                       ; $4209: $7f
    ld [hl], h                                    ; $420a: $74
    ld bc, $0136                                  ; $420b: $01 $36 $01
    sub b                                         ; $420e: $90
    add hl, de                                    ; $420f: $19

jr_097_4210:
    sub b                                         ; $4210: $90
    ld a, [de]                                    ; $4211: $1a
    ld de, $019c                                  ; $4212: $11 $9c $01
    ld a, [de]                                    ; $4215: $1a
    jr jr_097_4218                                ; $4216: $18 $00

jr_097_4218:
    ld d, a                                       ; $4218: $57
    ld [bc], a                                    ; $4219: $02
    ld e, $1e                                     ; $421a: $1e $1e
    ld [hl], c                                    ; $421c: $71
    ld [hl], c                                    ; $421d: $71
    ld c, $0f                                     ; $421e: $0e $0f
    rrca                                          ; $4220: $0f
    dec a                                         ; $4221: $3d
    ccf                                           ; $4222: $3f
    ld l, d                                       ; $4223: $6a
    ld a, a                                       ; $4224: $7f
    ld d, $09                                     ; $4225: $16 $09
    inc l                                         ; $4227: $2c
    add hl, de                                    ; $4228: $19
    ld [hl-], a                                   ; $4229: $32
    add hl, bc                                    ; $422a: $09
    ld [hl], $29                                  ; $422b: $36 $29
    ld e, $ff                                     ; $422d: $1e $ff
    rst $38                                       ; $422f: $ff
    ld a, a                                       ; $4230: $7f
    and d                                         ; $4231: $a2
    ld [bc], a                                    ; $4232: $02

jr_097_4233:
    inc b                                         ; $4233: $04
    ld [$10af], sp                                ; $4234: $08 $af $10
    inc e                                         ; $4237: $1c

jr_097_4238:
    jr nc, jr_097_4238                            ; $4238: $30 $fe

    ret nz                                        ; $423a: $c0

    ld [bc], a                                    ; $423b: $02
    db $10                                        ; $423c: $10
    ld [de], a                                    ; $423d: $12
    ld e, e                                       ; $423e: $5b
    dec l                                         ; $423f: $2d
    rst $38                                       ; $4240: $ff
    sbc e                                         ; $4241: $9b
    ld a, a                                       ; $4242: $7f
    ld c, a                                       ; $4243: $4f
    cp a                                          ; $4244: $bf
    nop                                           ; $4245: $00
    ld l, e                                       ; $4246: $6b
    sbc a                                         ; $4247: $9f
    ld b, l                                       ; $4248: $45
    cp a                                          ; $4249: $bf
    db $e3                                        ; $424a: $e3
    sbc a                                         ; $424b: $9f
    pop de                                        ; $424c: $d1
    xor a                                         ; $424d: $af
    jr nc, jr_097_4233                            ; $424e: $30 $e3

    sbc a                                         ; $4250: $9f
    inc h                                         ; $4251: $24
    adc b                                         ; $4252: $88
    ld b, h                                       ; $4253: $44
    dec de                                        ; $4254: $1b
    xor e                                         ; $4255: $ab
    xor e                                         ; $4256: $ab
    push af                                       ; $4257: $f5
    push af                                       ; $4258: $f5
    ld [bc], a                                    ; $4259: $02
    xor d                                         ; $425a: $aa
    xor d                                         ; $425b: $aa
    pop af                                        ; $425c: $f1
    adc a                                         ; $425d: $8f
    db $d3                                        ; $425e: $d3
    adc a                                         ; $425f: $8f
    inc b                                         ; $4260: $04
    ld [$80d1], sp                                ; $4261: $08 $d1 $80
    ld [$5900], sp                                ; $4264: $08 $00 $59
    rlca                                          ; $4267: $07
    db $d3                                        ; $4268: $d3
    adc a                                         ; $4269: $8f
    rst $38                                       ; $426a: $ff
    ld d, l                                       ; $426b: $55
    rst $38                                       ; $426c: $ff
    ld bc, $6faa                                  ; $426d: $01 $aa $6f
    ld d, l                                       ; $4270: $55
    rst $10                                       ; $4271: $d7
    rst $38                                       ; $4272: $ff
    cp a                                          ; $4273: $bf
    ld d, l                                       ; $4274: $55
    ld l, h                                       ; $4275: $6c
    jr jr_097_4278                                ; $4276: $18 $00

jr_097_4278:
    ld d, l                                       ; $4278: $55
    ld d, l                                       ; $4279: $55
    xor d                                         ; $427a: $aa
    xor d                                         ; $427b: $aa
    ld d, l                                       ; $427c: $55
    ld d, l                                       ; $427d: $55
    rst $30                                       ; $427e: $f7
    rst $08                                       ; $427f: $cf
    inc e                                         ; $4280: $1c
    ld d, l                                       ; $4281: $55
    dec d                                         ; $4282: $15
    ld a, a                                       ; $4283: $7f
    ld a, e                                       ; $4284: $7b
    inc de                                        ; $4285: $13
    inc h                                         ; $4286: $24
    ld [$0828], sp                                ; $4287: $08 $28 $08
    reti                                          ; $428a: $d9


    add a                                         ; $428b: $87
    db $10                                        ; $428c: $10
    db $d3                                        ; $428d: $d3
    adc a                                         ; $428e: $8f
    ld sp, hl                                     ; $428f: $f9
    inc b                                         ; $4290: $04
    nop                                           ; $4291: $00
    rst $38                                       ; $4292: $ff
    rst $38                                       ; $4293: $ff
    ld a, [$3efa]                                 ; $4294: $fa $fa $3e
    push af                                       ; $4297: $f5
    push af                                       ; $4298: $f5
    inc b                                         ; $4299: $04
    ld [$1b9a], sp                                ; $429a: $08 $9a $1b
    ld l, d                                       ; $429d: $6a
    dec sp                                        ; $429e: $3b
    ld a, [hl-]                                   ; $429f: $3a
    ld a, [de]                                    ; $42a0: $1a
    ld h, [hl]                                    ; $42a1: $66
    add hl, bc                                    ; $42a2: $09
    add b                                         ; $42a3: $80
    jr nz, jr_097_4325                            ; $42a4: $20 $7f

    db $10                                        ; $42a6: $10
    inc c                                         ; $42a7: $0c
    ld bc, $bf42                                  ; $42a8: $01 $42 $bf
    db $10                                        ; $42ab: $10
    rst $28                                       ; $42ac: $ef
    inc b                                         ; $42ad: $04
    inc d                                         ; $42ae: $14
    ei                                            ; $42af: $fb
    ld b, d                                       ; $42b0: $42
    cp l                                          ; $42b1: $bd
    and [hl]                                      ; $42b2: $a6
    ld a, [bc]                                    ; $42b3: $0a
    add c                                         ; $42b4: $81
    sub d                                         ; $42b5: $92
    inc de                                        ; $42b6: $13
    add b                                         ; $42b7: $80
    ld a, a                                       ; $42b8: $7f
    pop bc                                        ; $42b9: $c1
    sub $02                                       ; $42ba: $d6 $02
    dec h                                         ; $42bc: $25
    inc de                                        ; $42bd: $13
    ld d, l                                       ; $42be: $55
    nop                                           ; $42bf: $00
    xor d                                         ; $42c0: $aa
    nop                                           ; $42c1: $00
    dec d                                         ; $42c2: $15
    cpl                                           ; $42c3: $2f
    inc de                                        ; $42c4: $13
    nop                                           ; $42c5: $00
    ld h, b                                       ; $42c6: $60
    ld h, b                                       ; $42c7: $60
    nop                                           ; $42c8: $00
    nop                                           ; $42c9: $00
    pop af                                        ; $42ca: $f1
    pop af                                        ; $42cb: $f1
    rst $38                                       ; $42cc: $ff
    xor d                                         ; $42cd: $aa
    nop                                           ; $42ce: $00
    ld a, [$7f55]                                 ; $42cf: $fa $55 $7f
    ld a, [hl+]                                   ; $42d2: $2a
    xor a                                         ; $42d3: $af
    dec b                                         ; $42d4: $05
    rla                                           ; $42d5: $17
    ld [bc], a                                    ; $42d6: $02
    ldh a, [$90]                                  ; $42d7: $f0 $90
    ld e, e                                       ; $42d9: $5b
    ret nc                                        ; $42da: $d0

    dec de                                        ; $42db: $1b
    ld [hl], h                                    ; $42dc: $74
    ld a, [bc]                                    ; $42dd: $0a
    jp nc, Jump_000_201b                          ; $42de: $d2 $1b $20

    rst $18                                       ; $42e1: $df
    rst $38                                       ; $42e2: $ff
    rst $38                                       ; $42e3: $ff
    ld h, b                                       ; $42e4: $60
    ld [hl], a                                    ; $42e5: $77
    inc de                                        ; $42e6: $13
    inc h                                         ; $42e7: $24
    ld [$5508], sp                                ; $42e8: $08 $08 $55
    rst $38                                       ; $42eb: $ff
    jp hl                                         ; $42ec: $e9


    sub a                                         ; $42ed: $97
    ld d, d                                       ; $42ee: $52
    dec c                                         ; $42ef: $0d
    adc a                                         ; $42f0: $8f
    pop hl                                        ; $42f1: $e1
    sbc a                                         ; $42f2: $9f
    jp nc, Jump_000_0004                          ; $42f3: $d2 $04 $00

    ld [$5208], sp                                ; $42f6: $08 $08 $52
    and b                                         ; $42f9: $a0
    nop                                           ; $42fa: $00
    ld h, b                                       ; $42fb: $60
    rst $30                                       ; $42fc: $f7
    inc sp                                        ; $42fd: $33
    inc h                                         ; $42fe: $24
    ld [$f508], sp                                ; $42ff: $08 $08 $f5
    rst $38                                       ; $4302: $ff
    ld l, a                                       ; $4303: $6f
    ld a, a                                       ; $4304: $7f
    rst $18                                       ; $4305: $df
    ld b, $ff                                     ; $4306: $06 $ff
    xor a                                         ; $4308: $af
    push af                                       ; $4309: $f5
    ld e, a                                       ; $430a: $5f
    xor d                                         ; $430b: $aa
    add sp, $08                                   ; $430c: $e8 $08
    inc b                                         ; $430e: $04
    db $10                                        ; $430f: $10
    rst $38                                       ; $4310: $ff
    dec d                                         ; $4311: $15

jr_097_4312:
    dec b                                         ; $4312: $05
    xor a                                         ; $4313: $af
    ld d, l                                       ; $4314: $55
    ld a, a                                       ; $4315: $7f
    nop                                           ; $4316: $00
    ld de, $0083                                  ; $4317: $11 $83 $00
    ld b, h                                       ; $431a: $44
    add a                                         ; $431b: $87
    nop                                           ; $431c: $00
    nop                                           ; $431d: $00
    jp hl                                         ; $431e: $e9


    sub a                                         ; $431f: $97
    ld a, [c]                                     ; $4320: $f2
    rrca                                          ; $4321: $0f
    db $eb                                        ; $4322: $eb
    rla                                           ; $4323: $17
    ld a, [c]                                     ; $4324: $f2

jr_097_4325:
    rrca                                          ; $4325: $0f
    nop                                           ; $4326: $00
    xor e                                         ; $4327: $ab
    rla                                           ; $4328: $17
    ld [c], a                                     ; $4329: $e2
    rra                                           ; $432a: $1f
    xor e                                         ; $432b: $ab
    rla                                           ; $432c: $17
    db $e3                                        ; $432d: $e3
    rra                                           ; $432e: $1f
    ret nz                                        ; $432f: $c0

    inc [hl]                                      ; $4330: $34
    ld [$0838], sp                                ; $4331: $08 $38 $08
    ldh a, [$f5]                                  ; $4334: $f0 $f5
    db $fd                                        ; $4336: $fd
    ei                                            ; $4337: $fb
    or $ef                                        ; $4338: $f6 $ef
    ld [bc], a                                    ; $433a: $02
    db $fc                                        ; $433b: $fc
    cp $ff                                        ; $433c: $fe $ff
    push af                                       ; $433e: $f5
    rst $18                                       ; $433f: $df
    ld a, [$3c30]                                 ; $4340: $fa $30 $3c
    inc bc                                        ; $4343: $03
    ld d, h                                       ; $4344: $54
    inc bc                                        ; $4345: $03
    cp e                                          ; $4346: $bb
    db $10                                        ; $4347: $10
    ld d, l                                       ; $4348: $55
    ld c, l                                       ; $4349: $4d
    ld [$5111], sp                                ; $434a: $08 $11 $51
    nop                                           ; $434d: $00
    nop                                           ; $434e: $00
    rst $38                                       ; $434f: $ff
    dec b                                         ; $4350: $05
    and e                                         ; $4351: $a3
    rra                                           ; $4352: $1f
    db $e3                                        ; $4353: $e3
    rra                                           ; $4354: $1f
    and a                                         ; $4355: $a7
    inc b                                         ; $4356: $04
    db $10                                        ; $4357: $10
    and e                                         ; $4358: $a3
    inc b                                         ; $4359: $04
    db $10                                        ; $435a: $10
    dec b                                         ; $435b: $05
    ldh a, [$f5]                                  ; $435c: $f0 $f5
    ldh [$ea], a                                  ; $435e: $e0 $ea
    ldh [rDIV], a                                 ; $4360: $e0 $04
    nop                                           ; $4362: $00
    ld [$0306], a                                 ; $4363: $ea $06 $03
    dec de                                        ; $4366: $1b
    ld [$e0ff], a                                 ; $4367: $ea $ff $e0
    ldh a, [rNR41]                                ; $436a: $f0 $20
    db $f4                                        ; $436c: $f4
    jr jr_097_4379                                ; $436d: $18 $0a

    ld hl, $3404                                  ; $436f: $21 $04 $34
    ld [$ea00], sp                                ; $4372: $08 $00 $ea
    rst $38                                       ; $4375: $ff
    sub h                                         ; $4376: $94
    db $e3                                        ; $4377: $e3
    ld a, [c]                                     ; $4378: $f2

jr_097_4379:
    db $fc                                        ; $4379: $fc
    inc e                                         ; $437a: $1c
    cp a                                          ; $437b: $bf
    ld [$5f0f], sp                                ; $437c: $08 $0f $5f
    ld bc, $38eb                                  ; $437f: $01 $eb $38
    ld [$1fa5], sp                                ; $4382: $08 $a5 $1f
    add e                                         ; $4385: $83
    ld b, c                                       ; $4386: $41
    ccf                                           ; $4387: $3f
    inc b                                         ; $4388: $04
    jr jr_097_4312                                ; $4389: $18 $87

jr_097_438b:
    ccf                                           ; $438b: $3f
    ld a, [$f0ff]                                 ; $438c: $fa $ff $f0
    sbc $04                                       ; $438f: $de $04
    db $10                                        ; $4391: $10
    ldh a, [rIE]                                  ; $4392: $f0 $ff
    ld a, [c]                                     ; $4394: $f2
    ld [$f000], sp                                ; $4395: $08 $00 $f0
    push af                                       ; $4398: $f5
    ldh a, [$fa]                                  ; $4399: $f0 $fa
    cp h                                          ; $439b: $bc
    add b                                         ; $439c: $80
    inc a                                         ; $439d: $3c
    sub b                                         ; $439e: $90
    ld h, d                                       ; $439f: $62
    ld [de], a                                    ; $43a0: $12
    call z, Call_000_1c0a                         ; $43a1: $cc $0a $1c
    inc c                                         ; $43a4: $0c
    ret nc                                        ; $43a5: $d0

    inc c                                         ; $43a6: $0c
    inc b                                         ; $43a7: $04
    ei                                            ; $43a8: $fb
    ld [bc], a                                    ; $43a9: $02
    jr nz, jr_097_438b                            ; $43aa: $20 $df

    db $10                                        ; $43ac: $10
    rst $28                                       ; $43ad: $ef
    add d                                         ; $43ae: $82
    db $fd                                        ; $43af: $fd
    ld h, h                                       ; $43b0: $64
    inc c                                         ; $43b1: $0c
    ld [de], a                                    ; $43b2: $12
    inc b                                         ; $43b3: $04
    db $ed                                        ; $43b4: $ed
    adc b                                         ; $43b5: $88
    ld [hl], a                                    ; $43b6: $77
    ld [de], a                                    ; $43b7: $12
    db $ed                                        ; $43b8: $ed
    cp $0c                                        ; $43b9: $fe $0c
    add h                                         ; $43bb: $84
    ld a, e                                       ; $43bc: $7b
    ldh a, [$78]                                  ; $43bd: $f0 $78
    ld bc, $13b0                                  ; $43bf: $01 $b0 $13
    ret z                                         ; $43c2: $c8

    ld a, [bc]                                    ; $43c3: $0a
    inc c                                         ; $43c4: $0c
    dec c                                         ; $43c5: $0d
    adc d                                         ; $43c6: $8a
    ld [hl], a                                    ; $43c7: $77
    inc b                                         ; $43c8: $04
    ei                                            ; $43c9: $fb
    ld [$0192], a                                 ; $43ca: $ea $92 $01
    add sp, $13                                   ; $43cd: $e8 $13
    sub $03                                       ; $43cf: $d6 $03
    rst $30                                       ; $43d1: $f7
    ld d, d                                       ; $43d2: $52
    inc c                                         ; $43d3: $0c
    inc h                                         ; $43d4: $24
    ld b, [hl]                                    ; $43d5: $46
    inc b                                         ; $43d6: $04
    ld hl, $df27                                  ; $43d7: $21 $27 $df
    db $10                                        ; $43da: $10
    ld e, $04                                     ; $43db: $1e $04
    add hl, bc                                    ; $43dd: $09
    or $32                                        ; $43de: $f6 $32
    dec c                                         ; $43e0: $0d
    ld hl, sp+$1b                                 ; $43e1: $f8 $1b
    ld a, $1c                                     ; $43e3: $3e $1c
    add [hl]                                      ; $43e5: $86
    inc d                                         ; $43e6: $14
    inc c                                         ; $43e7: $0c
    nop                                           ; $43e8: $00
    rst $38                                       ; $43e9: $ff
    adc c                                         ; $43ea: $89
    ld a, [hl]                                    ; $43eb: $7e
    ld d, d                                       ; $43ec: $52
    inc e                                         ; $43ed: $1c
    ld c, h                                       ; $43ee: $4c
    dec a                                         ; $43ef: $3d
    ld bc, $fe10                                  ; $43f0: $01 $10 $fe
    nop                                           ; $43f3: $00
    xor d                                         ; $43f4: $aa
    and h                                         ; $43f5: $a4
    ld [$1fa5], sp                                ; $43f6: $08 $a5 $1f
    sub a                                         ; $43f9: $97
    cpl                                           ; $43fa: $2f
    add a                                         ; $43fb: $87
    inc b                                         ; $43fc: $04
    ld [$1fe7], sp                                ; $43fd: $08 $e7 $1f
    sub d                                         ; $4400: $92
    ld a, [hl+]                                   ; $4401: $2a
    and h                                         ; $4402: $a4
    nop                                           ; $4403: $00
    xor d                                         ; $4404: $aa
    ld [$3004], sp                                ; $4405: $08 $04 $30
    ld h, b                                       ; $4408: $60
    ld [bc], a                                    ; $4409: $02
    call c, $0101                                 ; $440a: $dc $01 $01
    ld c, b                                       ; $440d: $48
    ld bc, $0054                                  ; $440e: $01 $54 $00
    ld a, [$0001]                                 ; $4411: $fa $01 $00
    ld a, [hl]                                    ; $4414: $7e
    ld hl, $01fe                                  ; $4415: $21 $fe $01
    cp $09                                        ; $4418: $fe $09
    or $21                                        ; $441a: $f6 $21
    nop                                           ; $441c: $00
    sbc $01                                       ; $441d: $de $01
    cp $45                                        ; $441f: $fe $45
    dec d                                         ; $4421: $15
    add d                                         ; $4422: $82
    ld a, [hl+]                                   ; $4423: $2a
    rst $00                                       ; $4424: $c7
    nop                                           ; $4425: $00
    ccf                                           ; $4426: $3f
    sub e                                         ; $4427: $93
    cpl                                           ; $4428: $2f
    rst $00                                       ; $4429: $c7
    ccf                                           ; $442a: $3f
    ld c, e                                       ; $442b: $4b
    ccf                                           ; $442c: $3f
    add l                                         ; $442d: $85
    nop                                           ; $442e: $00
    ld a, a                                       ; $442f: $7f
    ld c, e                                       ; $4430: $4b
    ccf                                           ; $4431: $3f
    ld d, b                                       ; $4432: $50
    ld e, a                                       ; $4433: $5f
    and b                                         ; $4434: $a0
    xor d                                         ; $4435: $aa
    ldh a, [rNR14]                                ; $4436: $f0 $14
    db $fd                                        ; $4438: $fd
    db $f4                                        ; $4439: $f4
    ei                                            ; $443a: $fb
    ld b, [hl]                                    ; $443b: $46
    ld [$02f8], sp                                ; $443c: $08 $f8 $02
    nop                                           ; $443f: $00
    nop                                           ; $4440: $00
    ld a, [$0000]                                 ; $4441: $fa $00 $00
    db $f4                                        ; $4444: $f4
    nop                                           ; $4445: $00
    ld [$c000], a                                 ; $4446: $ea $00 $c0
    inc b                                         ; $4449: $04
    db $e4                                        ; $444a: $e4
    ld [bc], a                                    ; $444b: $02
    nop                                           ; $444c: $00
    jp nc, $a000                                  ; $444d: $d2 $00 $a0

    inc b                                         ; $4450: $04
    call nz, Call_000_0838                        ; $4451: $c4 $38 $08
    add c                                         ; $4454: $81
    ld bc, $51fe                                  ; $4455: $01 $fe $51
    cp $81                                        ; $4458: $fe $81
    cp $05                                        ; $445a: $fe $05
    ld a, [$0840]                                 ; $445c: $fa $40 $08
    adc b                                         ; $445f: $88
    inc [hl]                                      ; $4460: $34
    ld [$7f05], sp                                ; $4461: $08 $05 $7f
    ld c, a                                       ; $4464: $4f
    inc b                                         ; $4465: $04
    nop                                           ; $4466: $00
    rst $08                                       ; $4467: $cf
    ccf                                           ; $4468: $3f
    rla                                           ; $4469: $17
    ld bc, $8f7f                                  ; $446a: $01 $7f $8f
    ld a, a                                       ; $446d: $7f
    ld hl, sp-$01                                 ; $446e: $f8 $ff
    ld sp, hl                                     ; $4470: $f9
    cp $38                                        ; $4471: $fe $38
    ld [$3cc0], sp                                ; $4473: $08 $c0 $3c
    ld [$080a], sp                                ; $4476: $08 $0a $08
    jr nz, @-$5e                                  ; $4479: $20 $a0

    nop                                           ; $447b: $00
    ret nc                                        ; $447c: $d0

    nop                                           ; $447d: $00
    call nz, RST_00                               ; $447e: $c4 $00 $00
    and b                                         ; $4481: $a0
    nop                                           ; $4482: $00
    ld b, b                                       ; $4483: $40
    ld [$008a], sp                                ; $4484: $08 $8a $00
    ld b, b                                       ; $4487: $40
    jr nz, jr_097_448a                            ; $4488: $20 $00

jr_097_448a:
    and b                                         ; $448a: $a0
    ld a, d                                       ; $448b: $7a
    ld [$fe01], sp                                ; $448c: $08 $01 $fe
    dec d                                         ; $448f: $15
    rst $28                                       ; $4490: $ef
    ld [bc], a                                    ; $4491: $02
    jp nc, Jump_000_05c2                          ; $4492: $d2 $c2 $05

    add b                                         ; $4495: $80
    dec c                                         ; $4496: $0d
    sub a                                         ; $4497: $97
    inc [hl]                                      ; $4498: $34
    nop                                           ; $4499: $00
    rra                                           ; $449a: $1f
    rst $38                                       ; $449b: $ff
    rst $00                                       ; $449c: $c7
    ld [bc], a                                    ; $449d: $02
    rst $38                                       ; $449e: $ff
    dec b                                         ; $449f: $05
    ccf                                           ; $44a0: $3f
    rst $38                                       ; $44a1: $ff
    sub d                                         ; $44a2: $92
    rst $38                                       ; $44a3: $ff
    dec h                                         ; $44a4: $25
    ld [hl], h                                    ; $44a5: $74
    db $10                                        ; $44a6: $10
    db $fc                                        ; $44a7: $fc
    ld a, d                                       ; $44a8: $7a
    nop                                           ; $44a9: $00
    dec b                                         ; $44aa: $05
    ld a, [$f4ff]                                 ; $44ab: $fa $ff $f4
    rst $38                                       ; $44ae: $ff
    xor c                                         ; $44af: $a9
    or $05                                        ; $44b0: $f6 $05
    rst $38                                       ; $44b2: $ff
    inc e                                         ; $44b3: $1c
    ld b, $45                                     ; $44b4: $06 $45
    rst $18                                       ; $44b6: $df
    ld a, h                                       ; $44b7: $7c
    inc hl                                        ; $44b8: $23
    cp e                                          ; $44b9: $bb
    rst $38                                       ; $44ba: $ff
    ld e, l                                       ; $44bb: $5d
    adc h                                         ; $44bc: $8c
    inc sp                                        ; $44bd: $33
    xor a                                         ; $44be: $af
    ld h, d                                       ; $44bf: $62
    ld b, $00                                     ; $44c0: $06 $00
    xor a                                         ; $44c2: $af
    rst $38                                       ; $44c3: $ff
    ld d, l                                       ; $44c4: $55

jr_097_44c5:
    cp a                                          ; $44c5: $bf
    xor a                                         ; $44c6: $af
    ld a, a                                       ; $44c7: $7f
    ld d, a                                       ; $44c8: $57
    cp a                                          ; $44c9: $bf
    nop                                           ; $44ca: $00

jr_097_44cb:
    add l                                         ; $44cb: $85
    ld a, a                                       ; $44cc: $7f
    ld b, d                                       ; $44cd: $42
    cp a                                          ; $44ce: $bf
    push hl                                       ; $44cf: $e5
    rra                                           ; $44d0: $1f
    ld b, d                                       ; $44d1: $42
    cp a                                          ; $44d2: $bf
    inc e                                         ; $44d3: $1c
    and c                                         ; $44d4: $a1
    rra                                           ; $44d5: $1f
    ld [hl], b                                    ; $44d6: $70
    ld c, c                                       ; $44d7: $49
    ld [$23b2], sp                                ; $44d8: $08 $b2 $23
    xor d                                         ; $44db: $aa
    ld e, $0b                                     ; $44dc: $1e $0b
    rst $38                                       ; $44de: $ff
    nop                                           ; $44df: $00
    ld b, l                                       ; $44e0: $45
    cp a                                          ; $44e1: $bf
    ld [hl+], a                                   ; $44e2: $22
    rst $18                                       ; $44e3: $df
    ld b, c                                       ; $44e4: $41
    cp a                                          ; $44e5: $bf
    ld h, d                                       ; $44e6: $62
    sbc a                                         ; $44e7: $9f
    ld b, $51                                     ; $44e8: $06 $51
    xor a                                         ; $44ea: $af
    ld l, b                                       ; $44eb: $68
    sub a                                         ; $44ec: $97
    pop af                                        ; $44ed: $f1
    jr nz, jr_097_4520                            ; $44ee: $20 $30

    ld [hl+], a                                   ; $44f0: $22
    jr z, jr_097_44cb                             ; $44f1: $28 $d8

    ld [$d087], sp                                ; $44f3: $08 $87 $d0
    adc a                                         ; $44f6: $8f
    ld hl, sp+$04                                 ; $44f7: $f8 $04
    ld [$f4c7], sp                                ; $44f9: $08 $c7 $f4
    rrc h                                         ; $44fc: $cb $0c
    ld hl, sp-$39                                 ; $44fe: $f8 $c7
    db $e4                                        ; $4500: $e4
    bit 4, [hl]                                   ; $4501: $cb $66
    dec bc                                        ; $4503: $0b
    inc b                                         ; $4504: $04
    jr c, jr_097_44c5                             ; $4505: $38 $be

    ld sp, hl                                     ; $4507: $f9
    ld [$87d8], sp                                ; $4508: $08 $d8 $87
    db $f4                                        ; $450b: $f4

jr_097_450c:
    adc e                                         ; $450c: $8b
    inc b                                         ; $450d: $04
    jr jr_097_450c                                ; $450e: $18 $fc

    sbc e                                         ; $4510: $9b
    cp b                                          ; $4511: $b8
    db $10                                        ; $4512: $10
    rst $38                                       ; $4513: $ff

jr_097_4514:
    db $f4                                        ; $4514: $f4
    ei                                            ; $4515: $fb
    ld e, $48                                     ; $4516: $1e $48
    rst $38                                       ; $4518: $ff
    rst $38                                       ; $4519: $ff
    ld a, d                                       ; $451a: $7a
    ld a, [$f800]                                 ; $451b: $fa $00 $f8
    rst $00                                       ; $451e: $c7
    and b                                         ; $451f: $a0

jr_097_4520:
    adc e                                         ; $4520: $8b
    ld b, b                                       ; $4521: $40
    ld b, l                                       ; $4522: $45
    xor b                                         ; $4523: $a8
    add d                                         ; $4524: $82
    ld b, c                                       ; $4525: $41
    ld d, b                                       ; $4526: $50
    inc b                                         ; $4527: $04
    nop                                           ; $4528: $00
    ldh a, [$c7]                                  ; $4529: $f0 $c7
    add sp, -$3e                                  ; $452b: $e8 $c2
    ld [hl], e                                    ; $452d: $73
    call z, $8006                                 ; $452e: $cc $06 $80
    or h                                          ; $4531: $b4
    dec de                                        ; $4532: $1b
    xor d                                         ; $4533: $aa
    xor d                                         ; $4534: $aa
    push de                                       ; $4535: $d5

jr_097_4536:
    push de                                       ; $4536: $d5
    xor e                                         ; $4537: $ab
    xor e                                         ; $4538: $ab
    ldh a, [rDIV]                                 ; $4539: $f0 $04
    adc a                                         ; $453b: $8f
    db $f4                                        ; $453c: $f4
    adc e                                         ; $453d: $8b
    ld e, b                                       ; $453e: $58
    rlca                                          ; $453f: $07
    inc b                                         ; $4540: $04
    jr z, jr_097_4514                             ; $4541: $28 $d1

    adc a                                         ; $4543: $8f

Jump_097_4544:
    ld c, b                                       ; $4544: $48
    cp a                                          ; $4545: $bf
    inc [hl]                                      ; $4546: $34
    nop                                           ; $4547: $00
    or l                                          ; $4548: $b5
    push af                                       ; $4549: $f5
    inc b                                         ; $454a: $04
    ld [$fafa], sp                                ; $454b: $08 $fa $fa
    or a                                          ; $454e: $b7
    rst $10                                       ; $454f: $d7
    dec de                                        ; $4550: $1b
    dec hl                                        ; $4551: $2b
    ld d, l                                       ; $4552: $55
    rla                                           ; $4553: $17
    ei                                            ; $4554: $fb
    ld a, [bc]                                    ; $4555: $0a
    rlca                                          ; $4556: $07
    cp e                                          ; $4557: $bb
    ld e, [hl]                                    ; $4558: $5e
    ld d, h                                       ; $4559: $54
    add d                                         ; $455a: $82
    ld e, h                                       ; $455b: $5c
    add [hl]                                      ; $455c: $86
    inc c                                         ; $455d: $0c
    db $10                                        ; $455e: $10
    xor a                                         ; $455f: $af
    rst $38                                       ; $4560: $ff
    ld d, a                                       ; $4561: $57
    jp nc, $3700                                  ; $4562: $d2 $00 $37

    rst $18                                       ; $4565: $df
    adc d                                         ; $4566: $8a
    rst $38                                       ; $4567: $ff
    nop                                           ; $4568: $00
    and l                                         ; $4569: $a5
    rst $18                                       ; $456a: $df
    sub d                                         ; $456b: $92
    rst $28                                       ; $456c: $ef
    and l                                         ; $456d: $a5
    rst $08                                       ; $456e: $cf
    or c                                          ; $456f: $b1
    rst $08                                       ; $4570: $cf
    or h                                          ; $4571: $b4
    or b                                          ; $4572: $b0
    inc c                                         ; $4573: $0c
    ld a, [hl]                                    ; $4574: $7e
    ldh [rTIMA], a                                ; $4575: $e0 $05
    ldh a, [$28]                                  ; $4577: $f0 $28
    ld a, a                                       ; $4579: $7f
    add d                                         ; $457a: $82
    inc b                                         ; $457b: $04
    sub a                                         ; $457c: $97
    ld a, a                                       ; $457d: $7f
    nop                                           ; $457e: $00
    jp z, $a53f                                   ; $457f: $ca $3f $a5

    ld e, a                                       ; $4582: $5f
    ld c, e                                       ; $4583: $4b
    cp a                                          ; $4584: $bf

jr_097_4585:
    ld h, l                                       ; $4585: $65
    sbc a                                         ; $4586: $9f
    ld [bc], a                                    ; $4587: $02
    ld d, e                                       ; $4588: $53
    adc a                                         ; $4589: $8f
    ldh a, [$cf]                                  ; $458a: $f0 $cf
    jp hl                                         ; $458c: $e9


    rst $00                                       ; $458d: $c7
    inc b                                         ; $458e: $04
    jr z, jr_097_4585                             ; $458f: $28 $f4

    db $10                                        ; $4591: $10
    res 5, c                                      ; $4592: $cb $a9
    add a                                         ; $4594: $87
    ret nz                                        ; $4595: $c0

    rra                                           ; $4596: $1f
    cp $ff                                        ; $4597: $fe $ff
    ei                                            ; $4599: $fb
    rst $20                                       ; $459a: $e7
    ld b, d                                       ; $459b: $42
    rst $28                                       ; $459c: $ef
    rl a                                          ; $459d: $cb $17
    jp hl                                         ; $459f: $e9


    sub a                                         ; $45a0: $97
    db $d3                                        ; $45a1: $d3
    adc a                                         ; $45a2: $8f
    inc b                                         ; $45a3: $04
    jr @-$2c                                      ; $45a4: $18 $d2

    ldh [rDIV], a                                 ; $45a6: $e0 $04
    db $10                                        ; $45a8: $10
    ldh [$3f], a                                  ; $45a9: $e0 $3f
    jp c, $fe0d                                   ; $45ab: $da $0d $fe

    cp $54                                        ; $45ae: $fe $54
    ld b, c                                       ; $45b0: $41
    xor b                                         ; $45b1: $a8
    jr nc, jr_097_4536                            ; $45b2: $30 $82

    ld b, h                                       ; $45b4: $44
    inc b                                         ; $45b5: $04
    nop                                           ; $45b6: $00
    ldh [$08], a                                  ; $45b7: $e0 $08
    ld hl, sp-$39                                 ; $45b9: $f8 $c7
    pop af                                        ; $45bb: $f1
    rst $00                                       ; $45bc: $c7
    add h                                         ; $45bd: $84
    call c, Call_097_5528                         ; $45be: $dc $28 $55
    ld d, l                                       ; $45c1: $55
    xor e                                         ; $45c2: $ab
    xor e                                         ; $45c3: $ab
    push af                                       ; $45c4: $f5
    rrca                                          ; $45c5: $0f
    ld l, c                                       ; $45c6: $69
    rla                                           ; $45c7: $17
    ld de, $8fd2                                  ; $45c8: $11 $d2 $8f
    ld c, c                                       ; $45cb: $49
    inc b                                         ; $45cc: $04
    db $10                                        ; $45cd: $10
    db $d3                                        ; $45ce: $d3

jr_097_45cf:
    adc a                                         ; $45cf: $8f
    ret                                           ; $45d0: $c9


    ld c, h                                       ; $45d1: $4c
    nop                                           ; $45d2: $00
    inc c                                         ; $45d3: $0c
    db $fd                                        ; $45d4: $fd
    db $fd                                        ; $45d5: $fd
    cp $fe                                        ; $45d6: $fe $fe
    inc b                                         ; $45d8: $04
    jr nz, @-$2a                                  ; $45d9: $20 $d4

    rla                                           ; $45db: $17
    ld a, [c]                                     ; $45dc: $f2
    push hl                                       ; $45dd: $e5
    inc b                                         ; $45de: $04
    ld a, h                                       ; $45df: $7c
    db $e3                                        ; $45e0: $e3
    ld a, [$f4e5]                                 ; $45e1: $fa $e5 $f4
    inc b                                         ; $45e4: $04
    nop                                           ; $45e5: $00
    ld [hl], b                                    ; $45e6: $70
    rst $20                                       ; $45e7: $e7
    ld bc, $e5fa                                  ; $45e8: $01 $fa $e5
    ld d, b                                       ; $45eb: $50
    rst $20                                       ; $45ec: $e7
    rst $38                                       ; $45ed: $ff
    rst $38                                       ; $45ee: $ff
    or a                                          ; $45ef: $b7

jr_097_45f0:
    call nc, $8011                                ; $45f0: $d4 $11 $80
    db $10                                        ; $45f3: $10
    inc l                                         ; $45f4: $2c
    ret c                                         ; $45f5: $d8

    add a                                         ; $45f6: $87
    ld d, c                                       ; $45f7: $51
    adc a                                         ; $45f8: $8f
    ret c                                         ; $45f9: $d8

    add a                                         ; $45fa: $87
    pop de                                        ; $45fb: $d1
    ret c                                         ; $45fc: $d8

    inc b                                         ; $45fd: $04
    nop                                           ; $45fe: $00
    ld [$5108], sp                                ; $45ff: $08 $08 $51
    jr nz, @+$03                                  ; $4602: $20 $01

    jr nc, @+$46                                  ; $4604: $30 $44

    cp $f6                                        ; $4606: $fe $f6
    ld sp, hl                                     ; $4608: $f9
    nop                                           ; $4609: $00
    ld hl, sp-$19                                 ; $460a: $f8 $e7
    ld d, c                                       ; $460c: $51
    rst $20                                       ; $460d: $e7
    ldh a, [$e7]                                  ; $460e: $f0 $e7
    pop de                                        ; $4610: $d1
    rst $20                                       ; $4611: $e7
    nop                                           ; $4612: $00
    db $10                                        ; $4613: $10
    ld b, a                                       ; $4614: $47
    nop                                           ; $4615: $00
    and d                                         ; $4616: $a2
    ld d, b                                       ; $4617: $50
    ld b, l                                       ; $4618: $45
    nop                                           ; $4619: $00
    and d                                         ; $461a: $a2
    adc b                                         ; $461b: $88
    db $10                                        ; $461c: $10
    inc l                                         ; $461d: $2c
    pop de                                        ; $461e: $d1
    push de                                       ; $461f: $d5
    jr nz, jr_097_4652                            ; $4620: $20 $30

    inc b                                         ; $4622: $04
    jr nz, jr_097_45cf                            ; $4623: $20 $aa

    ret c                                         ; $4625: $d8

    jr nz, @-$77                                  ; $4626: $20 $87

    ld [hl], c                                    ; $4628: $71
    ld b, b                                       ; $4629: $40
    nop                                           ; $462a: $00
    ld [hl], c                                    ; $462b: $71
    adc a                                         ; $462c: $8f
    ld d, c                                       ; $462d: $51
    dec b                                         ; $462e: $05
    ld sp, $0488                                  ; $462f: $31 $88 $04
    nop                                           ; $4632: $00
    jr nz, @-$74                                  ; $4633: $20 $8a

    di                                            ; $4635: $f3
    ld [$f516], a                                 ; $4636: $ea $16 $f5
    rst $38                                       ; $4639: $ff
    ld e, e                                       ; $463a: $5b
    nop                                           ; $463b: $00
    ld e, a                                       ; $463c: $5f
    push af                                       ; $463d: $f5
    rst $38                                       ; $463e: $ff
    ld d, h                                       ; $463f: $54
    ld d, l                                       ; $4640: $55
    and b                                         ; $4641: $a0
    xor d                                         ; $4642: $aa
    db $10                                        ; $4643: $10
    ret nz                                        ; $4644: $c0

    inc [hl]                                      ; $4645: $34
    nop                                           ; $4646: $00
    inc b                                         ; $4647: $04
    ld [$e5b0], sp                                ; $4648: $08 $b0 $e5
    dec d                                         ; $464b: $15
    db $e3                                        ; $464c: $e3
    cp c                                          ; $464d: $b9
    rst $20                                       ; $464e: $e7
    db $10                                        ; $464f: $10
    dec d                                         ; $4650: $15
    db $e3                                        ; $4651: $e3

jr_097_4652:
    ld b, b                                       ; $4652: $40
    inc [hl]                                      ; $4653: $34
    nop                                           ; $4654: $00
    ld d, b                                       ; $4655: $50
    ld d, l                                       ; $4656: $55
    dec a                                         ; $4657: $3d
    cp [hl]                                       ; $4658: $be
    db $10                                        ; $4659: $10
    ld b, h                                       ; $465a: $44
    ld d, l                                       ; $465b: $55
    ld [hl], e                                    ; $465c: $73
    ld a, [de]                                    ; $465d: $1a
    rlca                                          ; $465e: $07
    ld h, b                                       ; $465f: $60
    rst $38                                       ; $4660: $ff
    ld de, $0045                                  ; $4661: $11 $45 $00
    jr nz, jr_097_45f0                            ; $4664: $20 $8a

    add hl, sp                                    ; $4666: $39
    ld b, a                                       ; $4667: $47
    ld h, c                                       ; $4668: $61
    rst $08                                       ; $4669: $cf
    xor c                                         ; $466a: $a9
    ld b, a                                       ; $466b: $47
    ld bc, $8f61                                  ; $466c: $01 $61 $8f
    or c                                          ; $466f: $b1
    rst $08                                       ; $4670: $cf
    pop hl                                        ; $4671: $e1
    rst $08                                       ; $4672: $cf
    ld d, b                                       ; $4673: $50
    inc [hl]                                      ; $4674: $34
    nop                                           ; $4675: $00
    ld b, h                                       ; $4676: $44
    ld a, [$04a8]                                 ; $4677: $fa $a8 $04
    ld a, [$71ff]                                 ; $467a: $fa $ff $71
    ld b, $07                                     ; $467d: $06 $07
    ld [hl], b                                    ; $467f: $70
    rst $38                                       ; $4680: $ff
    ld h, b                                       ; $4681: $60
    cp d                                          ; $4682: $ba
    jr c, jr_097_4685                             ; $4683: $38 $00

jr_097_4685:
    inc b                                         ; $4685: $04
    ld [$c53a], sp                                ; $4686: $08 $3a $c5
    dec [hl]                                      ; $4689: $35
    jp Jump_000_0d2a                              ; $468a: $c3 $2a $0d


    ld b, l                                       ; $468d: $45
    dec a                                         ; $468e: $3d
    add e                                         ; $468f: $83
    ld [$0034], a                                 ; $4690: $ea $34 $00
    ld c, b                                       ; $4693: $48
    inc c                                         ; $4694: $0c
    ld [c], a                                     ; $4695: $e2
    ld c, h                                       ; $4696: $4c
    inc b                                         ; $4697: $04
    nop                                           ; $4698: $00
    ldh [$f5], a                                  ; $4699: $e0 $f5
    ld h, b                                       ; $469b: $60
    ld [$efd1], a                                 ; $469c: $ea $d1 $ef
    ld l, c                                       ; $469f: $69
    rst $30                                       ; $46a0: $f7
    nop                                           ; $46a1: $00
    and l                                         ; $46a2: $a5
    ei                                            ; $46a3: $fb
    add hl, de                                    ; $46a4: $19
    rst $20                                       ; $46a5: $e7
    inc [hl]                                      ; $46a6: $34
    sra c                                         ; $46a7: $cb $29
    rst $00                                       ; $46a9: $c7
    dec c                                         ; $46aa: $0d
    jr nc, jr_097_46fc                            ; $46ab: $30 $4f

    add hl, hl                                    ; $46ad: $29
    add a                                         ; $46ae: $87
    inc [hl]                                      ; $46af: $34
    ld [$0838], sp                                ; $46b0: $08 $38 $08
    ld a, [c]                                     ; $46b3: $f2
    inc a                                         ; $46b4: $3c
    nop                                           ; $46b5: $00
    nop                                           ; $46b6: $00
    ld hl, sp-$01                                 ; $46b7: $f8 $ff
    ld [hl], b                                    ; $46b9: $70
    ld a, [$e7f9]                                 ; $46ba: $fa $f9 $e7
    ld [hl], c                                    ; $46bd: $71
    rst $20                                       ; $46be: $e7
    db $10                                        ; $46bf: $10
    ld sp, hl                                     ; $46c0: $f9
    rst $20                                       ; $46c1: $e7
    pop af                                        ; $46c2: $f1
    inc b                                         ; $46c3: $04

Call_097_46c4:
    nop                                           ; $46c4: $00
    ld d, c                                       ; $46c5: $51
    or a                                          ; $46c6: $b7
    or c                                          ; $46c7: $b1
    ld [hl], a                                    ; $46c8: $77
    ld h, b                                       ; $46c9: $60
    pop af                                        ; $46ca: $f1
    nop                                           ; $46cb: $00
    ld bc, $4d10                                  ; $46cc: $01 $10 $4d
    push de                                       ; $46cf: $d5
    rst $38                                       ; $46d0: $ff
    ret                                           ; $46d1: $c9


    sub a                                         ; $46d2: $97
    ld d, e                                       ; $46d3: $53
    ret c                                         ; $46d4: $d8

    jr c, @+$13                                   ; $46d5: $38 $11

    ld [$5318], sp                                ; $46d7: $08 $18 $53
    and b                                         ; $46da: $a0
    ld b, d                                       ; $46db: $42

Call_097_46dc:
    or e                                          ; $46dc: $b3
    rrca                                          ; $46dd: $0f
    db $fd                                        ; $46de: $fd
    rst $38                                       ; $46df: $ff
    pop af                                        ; $46e0: $f1
    push de                                       ; $46e1: $d5
    nop                                           ; $46e2: $00
    ld bc, $0804                                  ; $46e3: $01 $04 $08
    or c                                          ; $46e6: $b1
    ld [$4101], sp                                ; $46e7: $08 $01 $41
    nop                                           ; $46ea: $00
    ld de, $38d5                                  ; $46eb: $11 $d5 $38
    db $10                                        ; $46ee: $10
    ld bc, $cf3b                                  ; $46ef: $01 $3b $cf
    jp z, Jump_097_50e0                           ; $46f2: $ca $e0 $50

    ld d, h                                       ; $46f5: $54
    adc d                                         ; $46f6: $8a
    jr nc, jr_097_46fe                            ; $46f7: $30 $05

    jr nz, @+$54                                  ; $46f9: $20 $52

    adc d                                         ; $46fb: $8a

jr_097_46fc:
    ld [hl], h                                    ; $46fc: $74
    dec c                                         ; $46fd: $0d

jr_097_46fe:
    pop bc                                        ; $46fe: $c1
    sub l                                         ; $46ff: $95
    ld [bc], a                                    ; $4700: $02
    adc d                                         ; $4701: $8a
    ld b, c                                       ; $4702: $41
    nop                                           ; $4703: $00
    dec d                                         ; $4704: $15
    ld [bc], a                                    ; $4705: $02
    adc d                                         ; $4706: $8a
    rst $38                                       ; $4707: $ff
    rst $38                                       ; $4708: $ff
    xor b                                         ; $4709: $a8
    xor d                                         ; $470a: $aa
    db $fd                                        ; $470b: $fd
    nop                                           ; $470c: $00
    db $fd                                        ; $470d: $fd
    add sp, -$16                                  ; $470e: $e8 $ea
    ld d, l                                       ; $4710: $55
    ld d, l                                       ; $4711: $55
    xor b                                         ; $4712: $a8
    xor d                                         ; $4713: $aa
    ld d, h                                       ; $4714: $54
    and b                                         ; $4715: $a0
    inc b                                         ; $4716: $04
    nop                                           ; $4717: $00
    ld bc, HeaderTitle                            ; $4718: $01 $34 $01
    xor c                                         ; $471b: $a9
    rst $00                                       ; $471c: $c7
    ld [hl], l                                    ; $471d: $75
    jp Jump_000_00a9                              ; $471e: $c3 $a9 $00


    rst $00                                       ; $4721: $c7
    dec a                                         ; $4722: $3d
    jp $c7ab                                      ; $4723: $c3 $ab $c7


    dec h                                         ; $4726: $25
    rlc c                                         ; $4727: $cb $01
    nop                                           ; $4729: $00
    ld d, l                                       ; $472a: $55
    add b                                         ; $472b: $80
    xor d                                         ; $472c: $aa
    xor d                                         ; $472d: $aa
    rst $38                                       ; $472e: $ff
    ret nc                                        ; $472f: $d0

    ld a, [$20aa]                                 ; $4730: $fa $aa $20
    rst $38                                       ; $4733: $ff
    sub c                                         ; $4734: $91

jr_097_4735:
    add c                                         ; $4735: $81
    dec b                                         ; $4736: $05
    add b                                         ; $4737: $80
    rst $38                                       ; $4738: $ff
    ld b, c                                       ; $4739: $41
    dec d                                         ; $473a: $15
    add d                                         ; $473b: $82
    nop                                           ; $473c: $00
    ld a, [bc]                                    ; $473d: $0a
    db $e3                                        ; $473e: $e3
    rra                                           ; $473f: $1f
    add d                                         ; $4740: $82
    ld a, [bc]                                    ; $4741: $0a
    jp $d21f                                      ; $4742: $c3 $1f $d2


    jr nc, jr_097_4756                            ; $4745: $30 $0f

    add e                                         ; $4747: $83
    inc b                                         ; $4748: $04
    nop                                           ; $4749: $00
    inc [hl]                                      ; $474a: $34
    ld [$d5d4], sp                                ; $474b: $08 $d4 $d5
    xor b                                         ; $474e: $a8
    xor d                                         ; $474f: $aa
    ld e, b                                       ; $4750: $58
    cp $d2                                        ; $4751: $fe $d2
    rlca                                          ; $4753: $07
    cp $8a                                        ; $4754: $fe $8a

jr_097_4756:
    inc bc                                        ; $4756: $03
    inc [hl]                                      ; $4757: $34
    ld [$c7ab], sp                                ; $4758: $08 $ab $c7
    ld hl, $cf20                                  ; $475b: $21 $20 $cf
    dec hl                                        ; $475e: $2b
    inc b                                         ; $475f: $04
    nop                                           ; $4760: $00
    ld a, [hl+]                                   ; $4761: $2a
    ld b, a                                       ; $4762: $47
    ld hl, $aa8f                                  ; $4763: $21 $8f $aa
    jr z, @+$01                                   ; $4766: $28 $ff

    ret nz                                        ; $4768: $c0

    ld c, b                                       ; $4769: $48
    dec b                                         ; $476a: $05
    ret nz                                        ; $476b: $c0

    nop                                           ; $476c: $00
    ld bc, $eac0                                  ; $476d: $01 $c0 $ea
    ret nz                                        ; $4770: $c0

    ld bc, $c0d5                                  ; $4771: $01 $d5 $c0
    db $eb                                        ; $4774: $eb
    and e                                         ; $4775: $a3
    rra                                           ; $4776: $1f
    rst $10                                       ; $4777: $d7

jr_097_4778:
    rrca                                          ; $4778: $0f
    inc b                                         ; $4779: $04
    jr @+$05                                      ; $477a: $18 $03

    and a                                         ; $477c: $a7
    rra                                           ; $477d: $1f
    jp $a73f                                      ; $477e: $c3 $3f $a7


    rra                                           ; $4781: $1f
    ld [de], a                                    ; $4782: $12
    cpl                                           ; $4783: $2f
    inc e                                         ; $4784: $1c
    rlca                                          ; $4785: $07
    add b                                         ; $4786: $80
    rst $10                                       ; $4787: $d7
    rlca                                          ; $4788: $07

jr_097_4789:
    cp $ff                                        ; $4789: $fe $ff
    ld a, [hl+]                                   ; $478b: $2a
    push bc                                       ; $478c: $c5
    dec a                                         ; $478d: $3d
    jp $202a                                      ; $478e: $c3 $2a $20


    push bc                                       ; $4791: $c5
    dec l                                         ; $4792: $2d
    inc b                                         ; $4793: $04
    jr nz, @+$3f                                  ; $4794: $20 $3d

    jp $fde0                                      ; $4796: $c3 $e0 $fd


    ld h, b                                       ; $4799: $60
    ld [c], a                                     ; $479a: $e2
    add [hl]                                      ; $479b: $86
    dec b                                         ; $479c: $05
    inc b                                         ; $479d: $04
    jr c, jr_097_47d4                             ; $479e: $38 $34

    ld bc, $20c7                                  ; $47a0: $01 $c7 $20
    rst $08                                       ; $47a3: $cf
    inc b                                         ; $47a4: $04
    jr z, jr_097_47cf                             ; $47a5: $28 $28

    ld [hl], b                                    ; $47a7: $70
    add $c0                                       ; $47a8: $c6 $c0
    inc a                                         ; $47aa: $3c
    adc b                                         ; $47ab: $88
    inc b                                         ; $47ac: $04
    inc b                                         ; $47ad: $04
    nop                                           ; $47ae: $00
    jr z, jr_097_4778                             ; $47af: $28 $c7

    jr z, jr_097_4735                             ; $47b1: $28 $82

    nop                                           ; $47b3: $00
    ld bc, $7845                                  ; $47b4: $01 $45 $78
    jp nz, $c729                                  ; $47b7: $c2 $29 $c7

    sub l                                         ; $47ba: $95
    db $eb                                        ; $47bb: $eb
    ld [$ff58], sp                                ; $47bc: $08 $58 $ff
    rlca                                          ; $47bf: $07
    rst $38                                       ; $47c0: $ff
    ret nz                                        ; $47c1: $c0

    add hl, bc                                    ; $47c2: $09
    ld b, b                                       ; $47c3: $40
    ld d, l                                       ; $47c4: $55
    ld hl, $1c80                                  ; $47c5: $21 $80 $1c
    nop                                           ; $47c8: $00
    add sp, -$01                                  ; $47c9: $e8 $ff
    ret nc                                        ; $47cb: $d0

    rst $38                                       ; $47cc: $ff
    and b                                         ; $47cd: $a0
    rst $38                                       ; $47ce: $ff

jr_097_47cf:
    nop                                           ; $47cf: $00
    db $10                                        ; $47d0: $10
    ld b, l                                       ; $47d1: $45
    jr z, jr_097_4756                             ; $47d2: $28 $82

jr_097_47d4:
    inc b                                         ; $47d4: $04
    nop                                           ; $47d5: $00
    jp nz, $cf20                                  ; $47d6: $c2 $20 $cf

    add hl, sp                                    ; $47d9: $39
    adc b                                         ; $47da: $88
    ld c, b                                       ; $47db: $48
    nop                                           ; $47dc: $00
    cp c                                          ; $47dd: $b9
    ld b, a                                       ; $47de: $47
    ld d, b                                       ; $47df: $50
    inc d                                         ; $47e0: $14
    ld [bc], a                                    ; $47e1: $02
    ld [hl], d                                    ; $47e2: $72
    ld a, l                                       ; $47e3: $7d
    jr nz, jr_097_4789                            ; $47e4: $20 $a3

    inc a                                         ; $47e6: $3c
    nop                                           ; $47e7: $00
    ld [hl], h                                    ; $47e8: $74
    call nz, Call_097_7004                        ; $47e9: $c4 $04 $70
    rst $38                                       ; $47ec: $ff
    ld c, c                                       ; $47ed: $49
    ld [bc], a                                    ; $47ee: $02
    rlca                                          ; $47ef: $07
    xor [hl]                                      ; $47f0: $ae
    dec c                                         ; $47f1: $0d
    ld sp, $f748                                  ; $47f2: $31 $48 $f7
    ld l, $05                                     ; $47f5: $2e $05
    ld a, [c]                                     ; $47f7: $f2
    rlca                                          ; $47f8: $07
    ld [$82f7], sp                                ; $47f9: $08 $f7 $82
    sbc [hl]                                      ; $47fc: $9e
    dec d                                         ; $47fd: $15
    jp nz, $1540                                  ; $47fe: $c2 $40 $15

    ret nz                                        ; $4801: $c0

    ld b, $24                                     ; $4802: $06 $24
    srl c                                         ; $4804: $cb $39
    rst $00                                       ; $4806: $c7
    inc b                                         ; $4807: $04
    ld [$0334], sp                                ; $4808: $08 $34 $03
    srl b                                         ; $480b: $cb $38
    rst $00                                       ; $480d: $c7
    inc [hl]                                      ; $480e: $34
    db $eb                                        ; $480f: $eb
    ld e, h                                       ; $4810: $5c
    xor $05                                       ; $4811: $ee $05
    cp h                                          ; $4813: $bc
    ld bc, $fd2b                                  ; $4814: $01 $2b $fd
    ld [hl], b                                    ; $4817: $70
    or $05                                        ; $4818: $f6 $05
    ld a, b                                       ; $481a: $78
    db $f4                                        ; $481b: $f4
    dec b                                         ; $481c: $05
    ld h, b                                       ; $481d: $60
    db $ec                                        ; $481e: $ec
    ld d, $40                                     ; $481f: $16 $40
    rlca                                          ; $4821: $07

jr_097_4822:
    inc [hl]                                      ; $4822: $34
    rst $28                                       ; $4823: $ef
    ld b, d                                       ; $4824: $42
    ldh [rTIMA], a                                ; $4825: $e0 $05
    ld [c], a                                     ; $4827: $e2
    dec c                                         ; $4828: $0d
    ld [bc], a                                    ; $4829: $02
    ld h, d                                       ; $482a: $62
    rla                                           ; $482b: $17
    ld b, b                                       ; $482c: $40
    cp a                                          ; $482d: $bf
    xor d                                         ; $482e: $aa
    ret nz                                        ; $482f: $c0

    inc b                                         ; $4830: $04
    cp $f4                                        ; $4831: $fe $f4
    dec c                                         ; $4833: $0d
    inc hl                                        ; $4834: $23
    cp $05                                        ; $4835: $fe $05
    ld hl, $1596                                  ; $4837: $21 $96 $15
    ld b, b                                       ; $483a: $40
    sub e                                         ; $483b: $93
    sub b                                         ; $483c: $90
    dec c                                         ; $483d: $0d
    rst $38                                       ; $483e: $ff
    jp z, $15ea                                   ; $483f: $ca $ea $15

    ld hl, $bede                                  ; $4842: $21 $de $be
    dec d                                         ; $4845: $15
    adc [hl]                                      ; $4846: $8e
    rlca                                          ; $4847: $07
    jr nc, jr_097_4875                            ; $4848: $30 $2b

    ld b, a                                       ; $484a: $47
    jr c, jr_097_484e                             ; $484b: $38 $01

    ld b, b                                       ; $484d: $40

jr_097_484e:
    ld bc, $c73a                                  ; $484e: $01 $3a $c7
    dec h                                         ; $4851: $25
    adc a                                         ; $4852: $8f
    ld e, b                                       ; $4853: $58
    db $10                                        ; $4854: $10
    ld l, h                                       ; $4855: $6c
    ld [bc], a                                    ; $4856: $02
    ret nz                                        ; $4857: $c0

    ld b, b                                       ; $4858: $40
    ld bc, $1804                                  ; $4859: $01 $04 $18
    add b                                         ; $485c: $80
    xor d                                         ; $485d: $aa
    ld b, b                                       ; $485e: $40
    ld [bc], a                                    ; $485f: $02
    ld d, a                                       ; $4860: $57
    add b                                         ; $4861: $80
    xor d                                         ; $4862: $aa
    add e                                         ; $4863: $83
    ccf                                           ; $4864: $3f
    rst $20                                       ; $4865: $e7
    ld l, [hl]                                    ; $4866: $6e
    ld b, $e5                                     ; $4867: $06 $e5
    ld hl, $8b1f                                  ; $4869: $21 $1f $8b
    ld [hl], d                                    ; $486c: $72
    ld b, $8b                                     ; $486d: $06 $8b
    ccf                                           ; $486f: $3f
    and b                                         ; $4870: $a0
    ld a, [bc]                                    ; $4871: $0a
    ld b, b                                       ; $4872: $40
    add hl, bc                                    ; $4873: $09
    and b                                         ; $4874: $a0

jr_097_4875:
    inc b                                         ; $4875: $04
    jr c, jr_097_4822                             ; $4876: $38 $aa

    ret nz                                        ; $4878: $c0

    ld [bc], a                                    ; $4879: $02
    ld [hl+], a                                   ; $487a: $22
    adc d                                         ; $487b: $8a
    ld [hl-], a                                   ; $487c: $32
    rst $08                                       ; $487d: $cf
    sub a                                         ; $487e: $97
    dec l                                         ; $487f: $2d
    rst $38                                       ; $4880: $ff
    ld c, $42                                     ; $4881: $0e $42
    ld b, $04                                     ; $4883: $06 $04
    ld a, h                                       ; $4885: $7c
    ld c, $c0                                     ; $4886: $0e $c0
    ld bc, $3ad0                                  ; $4888: $01 $d0 $3a
    ld b, $40                                     ; $488b: $06 $40
    ld c, b                                       ; $488d: $48
    ld c, h                                       ; $488e: $4c
    ld d, $04                                     ; $488f: $16 $04
    ei                                            ; $4891: $fb
    dec b                                         ; $4892: $05
    dec d                                         ; $4893: $15
    add b                                         ; $4894: $80
    ld a, [hl+]                                   ; $4895: $2a
    nop                                           ; $4896: $00
    adc a                                         ; $4897: $8f
    ccf                                           ; $4898: $3f
    push bc                                       ; $4899: $c5
    ccf                                           ; $489a: $3f
    adc a                                         ; $489b: $8f
    ccf                                           ; $489c: $3f
    rst $10                                       ; $489d: $d7
    ccf                                           ; $489e: $3f
    ld bc, $3fcf                                  ; $489f: $01 $cf $3f
    sub a                                         ; $48a2: $97
    ld a, a                                       ; $48a3: $7f
    ld d, h                                       ; $48a4: $54
    ld d, l                                       ; $48a5: $55
    xor a                                         ; $48a6: $af
    ld d, b                                       ; $48a7: $50
    rlca                                          ; $48a8: $07
    adc h                                         ; $48a9: $8c
    and $3c                                       ; $48aa: $e6 $3c
    nop                                           ; $48ac: $00
    rst $38                                       ; $48ad: $ff
    adc b                                         ; $48ae: $88
    ld e, [hl]                                    ; $48af: $5e
    ld b, $ee                                     ; $48b0: $06 $ee
    rrca                                          ; $48b2: $0f
    ld [$2bf7], sp                                ; $48b3: $08 $f7 $2b
    ld b, c                                       ; $48b6: $41
    cp [hl]                                       ; $48b7: $be
    or h                                          ; $48b8: $b4
    rra                                           ; $48b9: $1f
    ld [bc], a                                    ; $48ba: $02
    inc d                                         ; $48bb: $14
    ld bc, $c841                                  ; $48bc: $01 $41 $c8
    ld b, $c0                                     ; $48bf: $06 $c0
    ld c, $a2                                     ; $48c1: $0e $a2
    inc [hl]                                      ; $48c3: $34
    ld [$948f], sp                                ; $48c4: $08 $8f $94
    rlca                                          ; $48c7: $07
    ld l, a                                       ; $48c8: $6f
    rst $38                                       ; $48c9: $ff
    sbc a                                         ; $48ca: $9f
    ld d, h                                       ; $48cb: $54
    nop                                           ; $48cc: $00
    ld [de], a                                    ; $48cd: $12
    rst $10                                       ; $48ce: $d7
    cp $3b                                        ; $48cf: $fe $3b
    add b                                         ; $48d1: $80
    dec b                                         ; $48d2: $05
    adc d                                         ; $48d3: $8a
    or [hl]                                       ; $48d4: $b6
    ld d, $28                                     ; $48d5: $16 $28
    adc d                                         ; $48d7: $8a
    ld b, $3c                                     ; $48d8: $06 $3c
    add hl, bc                                    ; $48da: $09
    ld a, h                                       ; $48db: $7c
    ld c, $fb                                     ; $48dc: $0e $fb
    ld [$f80e], a                                 ; $48de: $ea $0e $f8
    ld c, $fa                                     ; $48e1: $0e $fa
    ld c, $de                                     ; $48e3: $0e $de
    ld [$1e90], sp                                ; $48e5: $08 $90 $1e
    jr nz, @+$0a                                  ; $48e8: $20 $08

    rlca                                          ; $48ea: $07
    ld h, [hl]                                    ; $48eb: $66
    add hl, bc                                    ; $48ec: $09
    db $fd                                        ; $48ed: $fd
    jp z, $9606                                   ; $48ee: $ca $06 $96

    ld d, $bc                                     ; $48f1: $16 $bc
    ld c, $5c                                     ; $48f3: $0e $5c
    add hl, bc                                    ; $48f5: $09
    ld [hl], d                                    ; $48f6: $72
    add hl, bc                                    ; $48f7: $09

jr_097_48f8:
    ld [hl], d                                    ; $48f8: $72
    jr nz, jr_097_48f8                            ; $48f9: $20 $fd

    ld a, [de]                                    ; $48fb: $1a
    ld [$0862], sp                                ; $48fc: $08 $62 $08
    ld a, [c]                                     ; $48ff: $f2
    ld c, $2a                                     ; $4900: $0e $2a
    rla                                           ; $4902: $17
    db $10                                        ; $4903: $10
    rst $38                                       ; $4904: $ff
    ld b, h                                       ; $4905: $44
    db $fc                                        ; $4906: $fc
    dec b                                         ; $4907: $05
    ld bc, $36c0                                  ; $4908: $01 $c0 $36
    rlca                                          ; $490b: $07
    ld [$801e], a                                 ; $490c: $ea $1e $80
    ld a, a                                       ; $490f: $7f
    ld d, c                                       ; $4910: $51
    cp [hl]                                       ; $4911: $be
    inc b                                         ; $4912: $04
    ei                                            ; $4913: $fb
    rrca                                          ; $4914: $0f
    ld b, b                                       ; $4915: $40
    cp a                                          ; $4916: $bf
    jr nz, jr_097_48f8                            ; $4917: $20 $df

    ld b, h                                       ; $4919: $44
    rrca                                          ; $491a: $0f
    ld h, h                                       ; $491b: $64
    rrca                                          ; $491c: $0f
    ld a, $09                                     ; $491d: $3e $09
    jr nz, jr_097_492f                            ; $491f: $20 $0e

    add b                                         ; $4921: $80
    ld a, [hl]                                    ; $4922: $7e
    ld b, $f8                                     ; $4923: $06 $f8
    ld [bc], a                                    ; $4925: $02
    jp nc, $e800                                  ; $4926: $d2 $00 $e8

    nop                                           ; $4929: $00
    call nc, $86e0                                ; $492a: $d4 $e0 $86
    ld b, $14                                     ; $492d: $06 $14

jr_097_492f:
    rrca                                          ; $492f: $0f
    pop bc                                        ; $4930: $c1
    rlca                                          ; $4931: $07
    ld [$0048], sp                                ; $4932: $08 $48 $00
    ld [bc], a                                    ; $4935: $02
    nop                                           ; $4936: $00
    ld h, c                                       ; $4937: $61
    jr z, @+$14                                   ; $4938: $28 $12

    nop                                           ; $493a: $00
    ld b, b                                       ; $493b: $40
    ld b, $80                                     ; $493c: $06 $80
    add b                                         ; $493e: $80
    db $10                                        ; $493f: $10
    db $10                                        ; $4940: $10
    call nc, $0107                                ; $4941: $d4 $07 $01
    ld [hl+], a                                   ; $4944: $22
    nop                                           ; $4945: $00
    ld [$9500], sp                                ; $4946: $08 $00 $95
    nop                                           ; $4949: $00
    ld a, [hl-]                                   ; $494a: $3a
    jr nz, @+$1a                                  ; $494b: $20 $18

    nop                                           ; $494d: $00
    add b                                         ; $494e: $80
    sub b                                         ; $494f: $90
    nop                                           ; $4950: $00
    ld b, d                                       ; $4951: $42
    nop                                           ; $4952: $00
    xor b                                         ; $4953: $a8
    nop                                           ; $4954: $00
    ld d, h                                       ; $4955: $54
    push de                                       ; $4956: $d5
    jr nz, jr_097_4959                            ; $4957: $20 $00

jr_097_4959:
    ld c, l                                       ; $4959: $4d
    dec c                                         ; $495a: $0d
    xor d                                         ; $495b: $aa
    inc b                                         ; $495c: $04
    db $10                                        ; $495d: $10
    ld d, l                                       ; $495e: $55
    ld c, l                                       ; $495f: $4d
    dec [hl]                                      ; $4960: $35
    xor d                                         ; $4961: $aa
    ld [hl], a                                    ; $4962: $77
    inc bc                                        ; $4963: $03
    call nz, Call_000_0810                        ; $4964: $c4 $10 $08
    jr jr_097_4971                                ; $4967: $18 $08

    rst $38                                       ; $4969: $ff
    cp $54                                        ; $496a: $fe $54
    inc e                                         ; $496c: $1c
    ld [$abfe], sp                                ; $496d: $08 $fe $ab
    and h                                         ; $4970: $a4

jr_097_4971:
    ld e, c                                       ; $4971: $59
    dec b                                         ; $4972: $05
    xor e                                         ; $4973: $ab
    inc h                                         ; $4974: $24
    nop                                           ; $4975: $00
    ei                                            ; $4976: $fb
    and b                                         ; $4977: $a0
    jr nc, jr_097_4981                            ; $4978: $30 $07

    xor d                                         ; $497a: $aa
    nop                                           ; $497b: $00
    inc b                                         ; $497c: $04
    push de                                       ; $497d: $d5
    add b                                         ; $497e: $80
    xor d                                         ; $497f: $aa
    add b                                         ; $4980: $80

jr_097_4981:
    ld d, l                                       ; $4981: $55
    pop hl                                        ; $4982: $e1
    ld [bc], a                                    ; $4983: $02
    ld [hl], l                                    ; $4984: $75
    ldh [rNR33], a                                ; $4985: $e0 $1d
    xor d                                         ; $4987: $aa
    nop                                           ; $4988: $00
    ld d, b                                       ; $4989: $50
    stop                                          ; $498a: $10 $00
    inc d                                         ; $498c: $14
    ld [$1804], sp                                ; $498d: $08 $04 $18
    add b                                         ; $4990: $80
    ld c, [hl]                                    ; $4991: $4e
    rlca                                          ; $4992: $07
    add e                                         ; $4993: $83
    db $10                                        ; $4994: $10
    jr nz, jr_097_4998                            ; $4995: $20 $01

    xor e                                         ; $4997: $ab

jr_097_4998:
    ld bc, $0101                                  ; $4998: $01 $01 $01
    ld e, b                                       ; $499b: $58
    nop                                           ; $499c: $00
    ld [hl], e                                    ; $499d: $73
    ld l, $80                                     ; $499e: $2e $80
    adc a                                         ; $49a0: $8f
    ld b, $ff                                     ; $49a1: $06 $ff
    xor d                                         ; $49a3: $aa
    and b                                         ; $49a4: $a0
    ldh [$e0], a                                  ; $49a5: $e0 $e0
    ldh [$b0], a                                  ; $49a7: $e0 $b0
    nop                                           ; $49a9: $00
    ldh a, [$d0]                                  ; $49aa: $f0 $d0
    ldh a, [$e8]                                  ; $49ac: $f0 $e8
    ld hl, sp-$07                                 ; $49ae: $f8 $f9
    ld hl, sp-$12                                 ; $49b0: $f8 $ee
    dec bc                                        ; $49b2: $0b

jr_097_49b3:
    ld a, h                                       ; $49b3: $7c

jr_097_49b4:
    push af                                       ; $49b4: $f5
    cp h                                          ; $49b5: $bc
    ld a, [hl+]                                   ; $49b6: $2a
    ld a, [hl]                                    ; $49b7: $7e
    scf                                           ; $49b8: $37
    ld d, l                                       ; $49b9: $55
    dec b                                         ; $49ba: $05
    rlca                                          ; $49bb: $07
    ld e, h                                       ; $49bc: $5c
    nop                                           ; $49bd: $00
    nop                                           ; $49be: $00
    inc bc                                        ; $49bf: $03
    inc bc                                        ; $49c0: $03
    inc bc                                        ; $49c1: $03
    ld [bc], a                                    ; $49c2: $02
    inc bc                                        ; $49c3: $03
    dec b                                         ; $49c4: $05
    rlca                                          ; $49c5: $07
    rlca                                          ; $49c6: $07
    ld bc, $0507                                  ; $49c7: $01 $07 $05
    rlca                                          ; $49ca: $07
    dec bc                                        ; $49cb: $0b
    rrca                                          ; $49cc: $0f
    ld e, a                                       ; $49cd: $5f
    rrca                                          ; $49ce: $0f
    inc bc                                        ; $49cf: $03
    dec b                                         ; $49d0: $05
    pop hl                                        ; $49d1: $e1
    adc b                                         ; $49d2: $88
    db $10                                        ; $49d3: $10
    xor $1b                                       ; $49d4: $ee $1b
    cp $05                                        ; $49d6: $fe $05
    ld a, h                                       ; $49d8: $7c
    or $fe                                        ; $49d9: $f6 $fe
    ld a, [$033b]                                 ; $49db: $fa $3b $03
    jr nz, @-$04                                  ; $49de: $20 $fa

    cp $0e                                        ; $49e0: $fe $0e
    ld [$fffd], sp                                ; $49e2: $08 $fd $ff
    xor d                                         ; $49e5: $aa
    nop                                           ; $49e6: $00
    ld bc, $3ec0                                  ; $49e7: $01 $c0 $3e
    jr nz, jr_097_49b3                            ; $49ea: $20 $c7

    rra                                           ; $49ec: $1f
    cp e                                          ; $49ed: $bb
    rra                                           ; $49ee: $1f
    ld d, a                                       ; $49ef: $57
    ld e, $1e                                     ; $49f0: $1e $1e
    ld e, $00                                     ; $49f2: $1e $00
    ld [hl], $3e                                  ; $49f4: $36 $3e
    ld l, [hl]                                    ; $49f6: $6e
    ld a, $3c                                     ; $49f7: $3e $3c
    inc a                                         ; $49f9: $3c
    ld l, h                                       ; $49fa: $6c
    ld a, h                                       ; $49fb: $7c
    nop                                           ; $49fc: $00
    ld e, l                                       ; $49fd: $5d

Call_097_49fe:
    ld a, l                                       ; $49fe: $7d
    nop                                           ; $49ff: $00
    nop                                           ; $4a00: $00
    ld h, b                                       ; $4a01: $60
    ld h, b                                       ; $4a02: $60
    and b                                         ; $4a03: $a0
    ldh [rP1], a                                  ; $4a04: $e0 $00
    push af                                       ; $4a06: $f5
    ldh [$aa], a                                  ; $4a07: $e0 $aa
    ldh [$75], a                                  ; $4a09: $e0 $75
    ldh [$ea], a                                  ; $4a0b: $e0 $ea
    ret nz                                        ; $4a0d: $c0

jr_097_4a0e:
    nop                                           ; $4a0e: $00
    ld b, b                                       ; $4a0f: $40
    ret nz                                        ; $4a10: $c0

    nop                                           ; $4a11: $00
    nop                                           ; $4a12: $00
    jr nz, jr_097_4a35                            ; $4a13: $20 $20

    ld h, b                                       ; $4a15: $60

jr_097_4a16:
    ld h, b                                       ; $4a16: $60
    nop                                           ; $4a17: $00
    ld d, l                                       ; $4a18: $55
    nop                                           ; $4a19: $00
    ld [$d540], a                                 ; $4a1a: $ea $40 $d5
    add b                                         ; $4a1d: $80
    add b                                         ; $4a1e: $80
    nop                                           ; $4a1f: $00
    ret c                                         ; $4a20: $d8

    inc bc                                        ; $4a21: $03
    nop                                           ; $4a22: $00
    cp $07                                        ; $4a23: $fe $07
    ld a, [hl+]                                   ; $4a25: $2a
    ret nz                                        ; $4a26: $c0

    jr nz, jr_097_49b4                            ; $4a27: $20 $8b

    jr jr_097_4a30                                ; $4a29: $18 $05

    ld bc, $00aa                                  ; $4a2b: $01 $aa $00
    inc bc                                        ; $4a2e: $03
    ld d, a                                       ; $4a2f: $57

jr_097_4a30:
    inc bc                                        ; $4a30: $03
    xor [hl]                                      ; $4a31: $ae
    rlca                                          ; $4a32: $07
    ld e, l                                       ; $4a33: $5d
    rrca                                          ; $4a34: $0f

jr_097_4a35:
    dec bc                                        ; $4a35: $0b
    ld [$160f], sp                                ; $4a36: $08 $0f $16
    ld e, $c1                                     ; $4a39: $1e $c1
    ld bc, $8100                                  ; $4a3b: $01 $00 $81
    add c                                         ; $4a3e: $81
    add e                                         ; $4a3f: $83
    jp Jump_000_0001                              ; $4a40: $c3 $01 $00


    sbc b                                         ; $4a43: $98
    nop                                           ; $4a44: $00
    ld [bc], a                                    ; $4a45: $02
    ld d, a                                       ; $4a46: $57
    ld b, $80                                     ; $4a47: $06 $80
    ld bc, $b300                                  ; $4a49: $01 $00 $b3
    jr nc, jr_097_4a0e                            ; $4a4c: $30 $c0

    halt                                          ; $4a4e: $76
    jr nc, jr_097_4a16                            ; $4a4f: $30 $c5

    jr jr_097_4a5e                                ; $4a51: $18 $0b

    ld bc, $0155                                  ; $4a53: $01 $55 $01
    ld e, $1e                                     ; $4a56: $1e $1e
    nop                                           ; $4a58: $00
    inc [hl]                                      ; $4a59: $34
    inc a                                         ; $4a5a: $3c
    inc l                                         ; $4a5b: $2c
    inc a                                         ; $4a5c: $3c
    ld e, b                                       ; $4a5d: $58

jr_097_4a5e:
    ld a, b                                       ; $4a5e: $78
    ldh a, [$f0]                                  ; $4a5f: $f0 $f0
    db $10                                        ; $4a61: $10
    or b                                          ; $4a62: $b0
    ldh a, [$ea]                                  ; $4a63: $f0 $ea
    ld [hl], h                                    ; $4a65: $74
    nop                                           ; $4a66: $00
    xor [hl]                                      ; $4a67: $ae
    ld b, $55                                     ; $4a68: $06 $55
    inc b                                         ; $4a6a: $04
    nop                                           ; $4a6b: $00
    inc c                                         ; $4a6c: $0c
    inc c                                         ; $4a6d: $0c
    inc e                                         ; $4a6e: $1c
    inc e                                         ; $4a6f: $1c
    jr c, @+$3a                                   ; $4a70: $38 $38

    ld [hl], b                                    ; $4a72: $70
    ld [hl], b                                    ; $4a73: $70
    inc c                                         ; $4a74: $0c
    ldh [$e0], a                                  ; $4a75: $e0 $e0
    ret nz                                        ; $4a77: $c0

    ret nz                                        ; $4a78: $c0

    inc l                                         ; $4a79: $2c
    add hl, bc                                    ; $4a7a: $09
    db $f4                                        ; $4a7b: $f4
    jr z, @+$03                                   ; $4a7c: $28 $01

    ld bc, $0610                                  ; $4a7e: $01 $10 $06
    rlca                                          ; $4a81: $07
    xor d                                         ; $4a82: $aa
    db $ec                                        ; $4a83: $ec
    nop                                           ; $4a84: $00
    xor e                                         ; $4a85: $ab
    rrca                                          ; $4a86: $0f
    scf                                           ; $4a87: $37
    ccf                                           ; $4a88: $3f
    nop                                           ; $4a89: $00
    ld l, a                                       ; $4a8a: $6f
    ld a, a                                       ; $4a8b: $7f
    cp [hl]                                       ; $4a8c: $be
    cp $7c                                        ; $4a8d: $fe $7c
    db $fc                                        ; $4a8f: $fc
    ld hl, sp-$08                                 ; $4a90: $f8 $f8
    nop                                           ; $4a92: $00
    ret nz                                        ; $4a93: $c0

    ret nz                                        ; $4a94: $c0

    adc b                                         ; $4a95: $88
    adc b                                         ; $4a96: $88
    sub b                                         ; $4a97: $90
    sub b                                         ; $4a98: $90
    jr nc, @+$32                                  ; $4a99: $30 $30

    adc h                                         ; $4a9b: $8c
    and [hl]                                      ; $4a9c: $a6
    ld [$4040], sp                                ; $4a9d: $08 $40 $40
    ret nz                                        ; $4aa0: $c0

    ld bc, $b800                                  ; $4aa1: $01 $00 $b8
    ld [$c0d5], sp                                ; $4aa4: $08 $d5 $c0
    pop bc                                        ; $4aa7: $c1
    ld [hl], b                                    ; $4aa8: $70
    ld bc, $112a                                  ; $4aa9: $01 $2a $11
    ld b, $04                                     ; $4aac: $06 $04
    ld d, a                                       ; $4aae: $57
    ld [bc], a                                    ; $4aaf: $02
    xor [hl]                                      ; $4ab0: $ae
    inc b                                         ; $4ab1: $04
    jr nc, @+$22                                  ; $4ab2: $30 $20

    ld b, $06                                     ; $4ab4: $06 $06
    ld a, h                                       ; $4ab6: $7c
    add hl, bc                                    ; $4ab7: $09
    xor e                                         ; $4ab8: $ab
    ld bc, $0356                                  ; $4ab9: $01 $56 $03
    xor e                                         ; $4abc: $ab
    ld e, h                                       ; $4abd: $5c
    inc bc                                        ; $4abe: $03
    ld [hl], b                                    ; $4abf: $70
    add hl, bc                                    ; $4ac0: $09
    dec b                                         ; $4ac1: $05
    dec c                                         ; $4ac2: $0d
    add hl, de                                    ; $4ac3: $19
    ld e, h                                       ; $4ac4: $5c
    db $10                                        ; $4ac5: $10
    add b                                         ; $4ac6: $80
    add hl, bc                                    ; $4ac7: $09
    ld d, l                                       ; $4ac8: $55
    ld bc, $0620                                  ; $4ac9: $01 $20 $06
    ld b, $4b                                     ; $4acc: $06 $4b
    ld bc, $8307                                  ; $4ace: $01 $07 $83
    add e                                         ; $4ad1: $83
    ld b, e                                       ; $4ad2: $43
    jp $d717                                      ; $4ad3: $c3 $17 $d7


    jp Jump_000_046b                              ; $4ad6: $c3 $6b $04


    nop                                           ; $4ad9: $00
    xor d                                         ; $4ada: $aa
    ld [hl], b                                    ; $4adb: $70
    ld sp, $19b8                                  ; $4adc: $31 $b8 $19
    sub b                                         ; $4adf: $90
    add hl, de                                    ; $4ae0: $19
    nop                                           ; $4ae1: $00
    ld d, b                                       ; $4ae2: $50
    ld [hl], b                                    ; $4ae3: $70
    ld l, b                                       ; $4ae4: $68
    ld a, b                                       ; $4ae5: $78
    ld a, c                                       ; $4ae6: $79
    ld a, b                                       ; $4ae7: $78
    xor [hl]                                      ; $4ae8: $ae
    inc a                                         ; $4ae9: $3c
    jr c, jr_097_4b61                             ; $4aea: $38 $75

    inc a                                         ; $4aec: $3c
    or e                                          ; $4aed: $b3
    ld bc, $2003                                  ; $4aee: $01 $03 $20
    sbc c                                         ; $4af1: $99
    add hl, de                                    ; $4af2: $19
    ld b, e                                       ; $4af3: $43
    jp $00e3                                      ; $4af4: $c3 $e3 $00


    db $e3                                        ; $4af7: $e3
    ld h, e                                       ; $4af8: $63
    db $e3                                        ; $4af9: $e3
    db $e3                                        ; $4afa: $e3
    db $e3                                        ; $4afb: $e3
    push hl                                       ; $4afc: $e5
    rst $20                                       ; $4afd: $e7
    and a                                         ; $4afe: $a7
    ld [bc], a                                    ; $4aff: $02
    rst $20                                       ; $4b00: $e7
    ld [$eeee], a                                 ; $4b01: $ea $ee $ee
    xor $0a                                       ; $4b04: $ee $0a
    ld l, d                                       ; $4b06: $6a
    ld sp, $4102                                  ; $4b07: $31 $02 $41
    ld [bc], a                                    ; $4b0a: $02
    and [hl]                                      ; $4b0b: $a6
    add hl, bc                                    ; $4b0c: $09
    cp [hl]                                       ; $4b0d: $be
    inc a                                         ; $4b0e: $3c
    ld d, $1e                                     ; $4b0f: $16 $1e
    ld a, [de]                                    ; $4b11: $1a
    ld [hl], d                                    ; $4b12: $72
    ld bc, $0a00                                  ; $4b13: $01 $00 $0a
    ld c, $0d                                     ; $4b16: $0e $0d
    rrca                                          ; $4b18: $0f
    rrca                                          ; $4b19: $0f
    rrca                                          ; $4b1a: $0f
    dec c                                         ; $4b1b: $0d
    rrca                                          ; $4b1c: $0f
    push af                                       ; $4b1d: $f5
    or d                                          ; $4b1e: $b2
    scf                                           ; $4b1f: $37
    add a                                         ; $4b20: $87
    ld c, $68                                     ; $4b21: $0e $68
    dec sp                                        ; $4b23: $3b
    ld h, b                                       ; $4b24: $60
    ld a, [bc]                                    ; $4b25: $0a
    ld [$0a0c], a                                 ; $4b26: $ea $0c $0a
    db $fd                                        ; $4b29: $fd
    ret z                                         ; $4b2a: $c8

    rlca                                          ; $4b2b: $07
    add a                                         ; $4b2c: $87
    call z, $be07                                 ; $4b2d: $cc $07 $be
    rst $30                                       ; $4b30: $f7
    ld e, a                                       ; $4b31: $5f
    rst $38                                       ; $4b32: $ff
    inc b                                         ; $4b33: $04
    nop                                           ; $4b34: $00
    ld h, h                                       ; $4b35: $64
    rrca                                          ; $4b36: $0f
    ld c, b                                       ; $4b37: $48
    dec c                                         ; $4b38: $0d
    ld c, $ff                                     ; $4b39: $0e $ff
    xor a                                         ; $4b3b: $af
    cp $57                                        ; $4b3c: $fe $57
    inc b                                         ; $4b3e: $04
    nop                                           ; $4b3f: $00
    sub b                                         ; $4b40: $90
    dec bc                                        ; $4b41: $0b
    sub h                                         ; $4b42: $94
    ld bc, $00ea                                  ; $4b43: $01 $ea $00
    ret nz                                        ; $4b46: $c0

    push af                                       ; $4b47: $f5
    and b                                         ; $4b48: $a0
    cp d                                          ; $4b49: $ba
    sub b                                         ; $4b4a: $90
    push af                                       ; $4b4b: $f5
    and b                                         ; $4b4c: $a0
    ret c                                         ; $4b4d: $d8

    nop                                           ; $4b4e: $00
    ret c                                         ; $4b4f: $d8

    ld c, h                                       ; $4b50: $4c
    call z, Call_097_7b7b                         ; $4b51: $cc $7b $7b
    rst $18                                       ; $4b54: $df
    rst $38                                       ; $4b55: $ff
    cp [hl]                                       ; $4b56: $be
    nop                                           ; $4b57: $00
    cp $fd                                        ; $4b58: $fe $fd
    db $fc                                        ; $4b5a: $fc
    cp d                                          ; $4b5b: $ba
    ld hl, sp-$03                                 ; $4b5c: $f8 $fd
    ld hl, sp-$42                                 ; $4b5e: $f8 $be
    ld [hl+], a                                   ; $4b60: $22

jr_097_4b61:
    db $f4                                        ; $4b61: $f4
    rst $30                                       ; $4b62: $f7
    dec d                                         ; $4b63: $15
    rlca                                          ; $4b64: $07
    rst $28                                       ; $4b65: $ef
    rst $38                                       ; $4b66: $ff
    rst $18                                       ; $4b67: $df
    cp $07                                        ; $4b68: $fe $07
    rst $18                                       ; $4b6a: $df
    adc h                                         ; $4b6b: $8c
    inc h                                         ; $4b6c: $24
    rrca                                          ; $4b6d: $0f
    push af                                       ; $4b6e: $f5
    cp a                                          ; $4b6f: $bf
    db $eb                                        ; $4b70: $eb
    or l                                          ; $4b71: $b5
    ld a, [hl+]                                   ; $4b72: $2a
    rst $18                                       ; $4b73: $df
    rla                                           ; $4b74: $17
    rst $18                                       ; $4b75: $df
    rst $38                                       ; $4b76: $ff
    nop                                           ; $4b77: $00
    xor a                                         ; $4b78: $af
    call nz, Call_097_46c4                        ; $4b79: $c4 $c4 $46
    add $e3                                       ; $4b7c: $c6 $e3
    db $e3                                        ; $4b7e: $e3
    ld h, c                                       ; $4b7f: $61
    nop                                           ; $4b80: $00
    pop hl                                        ; $4b81: $e1
    pop af                                        ; $4b82: $f1
    pop af                                        ; $4b83: $f1
    ret nc                                        ; $4b84: $d0

    ret nc                                        ; $4b85: $d0

    ld a, [$ddd8]                                 ; $4b86: $fa $d8 $dd
    inc bc                                        ; $4b89: $03
    ret c                                         ; $4b8a: $d8

    rst $30                                       ; $4b8b: $f7
    rst $30                                       ; $4b8c: $f7
    or e                                          ; $4b8d: $b3
    di                                            ; $4b8e: $f3
    pop af                                        ; $4b8f: $f1
    ld bc, $9000                                  ; $4b90: $01 $00 $90
    add hl, bc                                    ; $4b93: $09
    ld d, l                                       ; $4b94: $55
    ld hl, sp+$3d                                 ; $4b95: $f8 $3d
    dec b                                         ; $4b97: $05
    ld a, a                                       ; $4b98: $7f
    rra                                           ; $4b99: $1f
    rlca                                          ; $4b9a: $07
    ld a, a                                       ; $4b9b: $7f
    ld b, l                                       ; $4b9c: $45
    ld c, [hl]                                    ; $4b9d: $4e
    ld e, a                                       ; $4b9e: $5f
    ld l, b                                       ; $4b9f: $68
    rrca                                          ; $4ba0: $0f
    ld b, b                                       ; $4ba1: $40
    rst $30                                       ; $4ba2: $f7
    ld d, [hl]                                    ; $4ba3: $56
    nop                                           ; $4ba4: $00
    rst $38                                       ; $4ba5: $ff
    rst $38                                       ; $4ba6: $ff
    xor $fe                                       ; $4ba7: $ee $fe
    rst $18                                       ; $4ba9: $df
    cp $01                                        ; $4baa: $fe $01
    xor [hl]                                      ; $4bac: $ae
    adc h                                         ; $4bad: $8c
    adc h                                         ; $4bae: $8c
    adc h                                         ; $4baf: $8c
    add h                                         ; $4bb0: $84
    add h                                         ; $4bb1: $84
    ld b, $01                                     ; $4bb2: $06 $01
    nop                                           ; $4bb4: $00
    add h                                         ; $4bb5: $84
    rst $08                                       ; $4bb6: $cf
    nop                                           ; $4bb7: $00
    rrca                                          ; $4bb8: $0f
    ld e, l                                       ; $4bb9: $5d
    dec e                                         ; $4bba: $1d
    ld a, [$0571]                                 ; $4bbb: $fa $71 $05
    ld a, [$80f0]                                 ; $4bbe: $fa $f0 $80
    ld bc, $fd08                                  ; $4bc1: $01 $08 $fd
    ld hl, sp-$06                                 ; $4bc4: $f8 $fa
    ld hl, sp-$07                                 ; $4bc6: $f8 $f9
    ld sp, hl                                     ; $4bc8: $f9
    rst $38                                       ; $4bc9: $ff
    inc e                                         ; $4bca: $1c
    db $dd                                        ; $4bcb: $dd
    rst $38                                       ; $4bcc: $ff
    cp d                                          ; $4bcd: $ba
    adc c                                         ; $4bce: $89
    ld [de], a                                    ; $4bcf: $12
    call nz, $9015                                ; $4bd0: $c4 $15 $90
    ld a, [bc]                                    ; $4bd3: $0a
    db $dd                                        ; $4bd4: $dd
    db $fc                                        ; $4bd5: $fc
    ld b, b                                       ; $4bd6: $40
    cp h                                          ; $4bd7: $bc
    cp b                                          ; $4bd8: $b8
    ld bc, $f8b8                                  ; $4bd9: $01 $b8 $f8
    ld a, b                                       ; $4bdc: $78
    ld hl, sp-$0f                                 ; $4bdd: $f8 $f1
    pop af                                        ; $4bdf: $f1
    nop                                           ; $4be0: $00
    ld [hl], e                                    ; $4be1: $73
    di                                            ; $4be2: $f3
    cp c                                          ; $4be3: $b9
    add hl, de                                    ; $4be4: $19
    ld [hl], d                                    ; $4be5: $72
    inc sp                                        ; $4be6: $33
    inc hl                                        ; $4be7: $23
    inc hl                                        ; $4be8: $23
    nop                                           ; $4be9: $00
    ld h, d                                       ; $4bea: $62
    ld h, e                                       ; $4beb: $63
    ld b, l                                       ; $4bec: $45
    ld b, a                                       ; $4bed: $47
    add a                                         ; $4bee: $87
    add a                                         ; $4bef: $87
    add l                                         ; $4bf0: $85
    add a                                         ; $4bf1: $87
    inc d                                         ; $4bf2: $14
    dec bc                                        ; $4bf3: $0b
    rrca                                          ; $4bf4: $0f
    db $fd                                        ; $4bf5: $fd
    ld bc, $ef00                                  ; $4bf6: $01 $00 $ef
    ld bc, $cf10                                  ; $4bf9: $01 $10 $cf
    rst $08                                       ; $4bfc: $cf
    ld c, $c7                                     ; $4bfd: $0e $c7
    rst $00                                       ; $4bff: $c7
    add a                                         ; $4c00: $87
    add a                                         ; $4c01: $87
    ld a, $2a                                     ; $4c02: $3e $2a
    inc [hl]                                      ; $4c04: $34
    dec de                                        ; $4c05: $1b
    inc [hl]                                      ; $4c06: $34
    ld [bc], a                                    ; $4c07: $02
    rrca                                          ; $4c08: $0f
    nop                                           ; $4c09: $00
    rla                                           ; $4c0a: $17
    rra                                           ; $4c0b: $1f
    cpl                                           ; $4c0c: $2f
    ccf                                           ; $4c0d: $3f
    ld [hl], $3e                                  ; $4c0e: $36 $3e
    xor h                                         ; $4c10: $ac
    inc a                                         ; $4c11: $3c
    nop                                           ; $4c12: $00
    ld e, l                                       ; $4c13: $5d
    ld a, b                                       ; $4c14: $78
    ld a, [$d878]                                 ; $4c15: $fa $78 $d8
    ld hl, sp-$1f                                 ; $4c18: $f8 $e1
    pop hl                                        ; $4c1a: $e1
    jr nz, @-$3d                                  ; $4c1b: $20 $c1

    pop bc                                        ; $4c1d: $c1
    ld l, d                                       ; $4c1e: $6a
    ld a, [bc]                                    ; $4c1f: $0a
    ld b, $04                                     ; $4c20: $06 $04
    ld e, l                                       ; $4c22: $5d
    ld [$04be], sp                                ; $4c23: $08 $be $04
    inc d                                         ; $4c26: $14
    ld hl, sp-$08                                 ; $4c27: $f8 $f8
    add b                                         ; $4c29: $80
    add b                                         ; $4c2a: $80
    sub d                                         ; $4c2b: $92
    add hl, bc                                    ; $4c2c: $09
    ld [bc], a                                    ; $4c2d: $02
    ld [bc], a                                    ; $4c2e: $02
    nop                                           ; $4c2f: $00
    and [hl]                                      ; $4c30: $a6
    ld b, $55                                     ; $4c31: $06 $55
    nop                                           ; $4c33: $00
    xor [hl]                                      ; $4c34: $ae
    inc b                                         ; $4c35: $04
    dec e                                         ; $4c36: $1d
    ld [$8020], sp                                ; $4c37: $08 $20 $80
    add b                                         ; $4c3a: $80
    sub d                                         ; $4c3b: $92
    ld a, [bc]                                    ; $4c3c: $0a
    pop hl                                        ; $4c3d: $e1
    pop hl                                        ; $4c3e: $e1
    ld a, [c]                                     ; $4c3f: $f2
    di                                            ; $4c40: $f3
    ld a, l                                       ; $4c41: $7d
    ld [bc], a                                    ; $4c42: $02
    ld a, a                                       ; $4c43: $7f
    ccf                                           ; $4c44: $3f
    ccf                                           ; $4c45: $3f
    ld a, e                                       ; $4c46: $7b
    ccf                                           ; $4c47: $3f
    or e                                          ; $4c48: $b3
    pop de                                        ; $4c49: $d1
    rlca                                          ; $4c4a: $07
    cp [hl]                                       ; $4c4b: $be
    nop                                           ; $4c4c: $00
    cp $76                                        ; $4c4d: $fe $76
    or $e6                                        ; $4c4f: $f6 $e6
    and $c6                                       ; $4c51: $e6 $c6
    add $c3                                       ; $4c53: $c6 $c3
    sub b                                         ; $4c55: $90
    ld bc, $e000                                  ; $4c56: $01 $00 $e0
    ldh [$93], a                                  ; $4c59: $e0 $93
    ld c, d                                       ; $4c5b: $4a
    ld bc, $1801                                  ; $4c5c: $01 $01 $18
    jr jr_097_4c81                                ; $4c5f: $18 $20

    db $10                                        ; $4c61: $10
    db $10                                        ; $4c62: $10
    ld c, [hl]                                    ; $4c63: $4e
    ld a, [de]                                    ; $4c64: $1a
    pop bc                                        ; $4c65: $c1
    pop bc                                        ; $4c66: $c1
    jp nz, $83c3                                  ; $4c67: $c2 $c3 $83

    nop                                           ; $4c6a: $00
    add e                                         ; $4c6b: $83
    cp a                                          ; $4c6c: $bf
    ccf                                           ; $4c6d: $3f
    ld a, a                                       ; $4c6e: $7f
    ld l, a                                       ; $4c6f: $6f
    rst $28                                       ; $4c70: $ef
    ld c, a                                       ; $4c71: $4f
    ld d, a                                       ; $4c72: $57
    nop                                           ; $4c73: $00
    ld b, a                                       ; $4c74: $47
    rst $08                                       ; $4c75: $cf
    rst $00                                       ; $4c76: $c7
    rst $10                                       ; $4c77: $d7
    jp $c3e3                                      ; $4c78: $c3 $e3 $c3


    rst $10                                       ; $4c7b: $d7
    adc b                                         ; $4c7c: $88
    reti                                          ; $4c7d: $d9


    ld [bc], a                                    ; $4c7e: $02
    rst $10                                       ; $4c7f: $d7
    add e                                         ; $4c80: $83

jr_097_4c81:
    db $eb                                        ; $4c81: $eb
    inc e                                         ; $4c82: $1c
    ld [bc], a                                    ; $4c83: $02
    db $eb                                        ; $4c84: $eb
    db $e3                                        ; $4c85: $e3
    push af                                       ; $4c86: $f5
    add d                                         ; $4c87: $82
    inc [hl]                                      ; $4c88: $34
    ld bc, $f1d1                                  ; $4c89: $01 $d1 $f1
    ld bc, $4301                                  ; $4c8c: $01 $01 $43
    ld c, h                                       ; $4c8f: $4c
    ld [bc], a                                    ; $4c90: $02
    ld d, a                                       ; $4c91: $57
    ld h, d                                       ; $4c92: $62
    inc bc                                        ; $4c93: $03
    inc a                                         ; $4c94: $3c
    ld a, [bc]                                    ; $4c95: $0a
    inc b                                         ; $4c96: $04
    ld a, [bc]                                    ; $4c97: $0a
    add [hl]                                      ; $4c98: $86
    add a                                         ; $4c99: $87
    ld d, l                                       ; $4c9a: $55
    and b                                         ; $4c9b: $a0
    ld [bc], a                                    ; $4c9c: $02
    ld d, a                                       ; $4c9d: $57
    nop                                           ; $4c9e: $00
    rra                                           ; $4c9f: $1f
    rra                                           ; $4ca0: $1f
    rra                                           ; $4ca1: $1f
    cp a                                          ; $4ca2: $bf
    cp a                                          ; $4ca3: $bf
    cp [hl]                                       ; $4ca4: $be
    cp [hl]                                       ; $4ca5: $be
    cp $5c                                        ; $4ca6: $fe $5c
    cp $0a                                        ; $4ca8: $fe $0a
    dec bc                                        ; $4caa: $0b
    add a                                         ; $4cab: $87
    ld bc, $5600                                  ; $4cac: $01 $00 $56
    ld a, [bc]                                    ; $4caf: $0a
    ld e, d                                       ; $4cb0: $5a
    ld a, [bc]                                    ; $4cb1: $0a
    jp hl                                         ; $4cb2: $e9


    ld sp, hl                                     ; $4cb3: $f9
    ld c, $f5                                     ; $4cb4: $0e $f5
    db $fd                                        ; $4cb6: $fd
    db $ed                                        ; $4cb7: $ed
    db $fd                                        ; $4cb8: $fd
    sub h                                         ; $4cb9: $94
    dec bc                                        ; $4cba: $0b
    sub b                                         ; $4cbb: $90
    dec de                                        ; $4cbc: $1b
    jr nz, @+$0d                                  ; $4cbd: $20 $0b

    add c                                         ; $4cbf: $81
    add d                                         ; $4cc0: $82
    ld bc, $8320                                  ; $4cc1: $01 $20 $83
    add e                                         ; $4cc4: $83
    jp $fcc3                                      ; $4cc5: $c3 $c3 $fc


    call nc, $f802                                ; $4cc8: $d4 $02 $f8
    ld h, l                                       ; $4ccb: $65
    ld hl, sp+$41                                 ; $4ccc: $f8 $41
    ld de, HeaderSGBFlag                          ; $4cce: $11 $46 $01
    ldh [$e0], a                                  ; $4cd1: $e0 $e0
    ld [hl], d                                    ; $4cd3: $72
    dec de                                        ; $4cd4: $1b
    dec d                                         ; $4cd5: $15
    and b                                         ; $4cd6: $a0
    ld [de], a                                    ; $4cd7: $12
    sub l                                         ; $4cd8: $95
    ld l, b                                       ; $4cd9: $68
    inc bc                                        ; $4cda: $03
    rlca                                          ; $4cdb: $07
    db $fc                                        ; $4cdc: $fc
    ld bc, $f800                                  ; $4cdd: $01 $00 $f8
    call c, Call_097_7201                         ; $4ce0: $dc $01 $72
    ld l, b                                       ; $4ce3: $68
    ld de, $f520                                  ; $4ce4: $11 $20 $f5
    ldh [$f6], a                                  ; $4ce7: $e0 $f6
    dec bc                                        ; $4ce9: $0b
    ld c, $0e                                     ; $4cea: $0e $0e
    ld c, e                                       ; $4cec: $4b
    ld c, $b6                                     ; $4ced: $0e $b6
    ld bc, $5f1e                                  ; $4cef: $01 $1e $5f
    ld e, $b6                                     ; $4cf2: $1e $b6
    ld e, $2c                                     ; $4cf4: $1e $2c
    inc a                                         ; $4cf6: $3c
    ld [$000c], sp                                ; $4cf7: $08 $0c $00
    ld h, $27                                     ; $4cfa: $26 $27
    ld [hl], a                                    ; $4cfc: $77
    daa                                           ; $4cfd: $27
    xor $47                                       ; $4cfe: $ee $47
    ld d, a                                       ; $4d00: $57
    rlca                                          ; $4d01: $07
    ld [$4746], sp                                ; $4d02: $08 $46 $47
    jp $30c3                                      ; $4d05: $c3 $c3 $30


    add hl, de                                    ; $4d08: $19
    ld d, [hl]                                    ; $4d09: $56
    ld a, [hl]                                    ; $4d0a: $7e
    cp [hl]                                       ; $4d0b: $be
    nop                                           ; $4d0c: $00
    cp $5c                                        ; $4d0d: $fe $5c
    db $fc                                        ; $4d0f: $fc
    ld a, [$70f8]                                 ; $4d10: $fa $f8 $70
    ldh a, [$c0]                                  ; $4d13: $f0 $c0
    ld l, b                                       ; $4d15: $68
    ret nz                                        ; $4d16: $c0

    sub b                                         ; $4d17: $90
    dec sp                                        ; $4d18: $3b
    ld [hl], h                                    ; $4d19: $74
    inc c                                         ; $4d1a: $0c
    inc a                                         ; $4d1b: $3c
    ld a, [hl]                                    ; $4d1c: $7e
    inc de                                        ; $4d1d: $13
    ld a, b                                       ; $4d1e: $78
    ld a, b                                       ; $4d1f: $78
    reti                                          ; $4d20: $d9


jr_097_4d21:
    nop                                           ; $4d21: $00
    ld sp, hl                                     ; $4d22: $f9
    or c                                          ; $4d23: $b1
    pop af                                        ; $4d24: $f1
    ei                                            ; $4d25: $fb
    pop af                                        ; $4d26: $f1
    or l                                          ; $4d27: $b5
    pop hl                                        ; $4d28: $e1
    jp nz, Jump_000_15c0                          ; $4d29: $c2 $c0 $15

    ld bc, $18b2                                  ; $4d2c: $01 $b2 $18
    add a                                         ; $4d2f: $87
    add a                                         ; $4d30: $87
    xor a                                         ; $4d31: $af
    adc a                                         ; $4d32: $8f
    ld e, a                                       ; $4d33: $5f
    rrca                                          ; $4d34: $0f
    jr z, jr_097_4d21                             ; $4d35: $28 $ea

    ldh [$4c], a                                  ; $4d37: $e0 $4c
    dec bc                                        ; $4d39: $0b
    ret nc                                        ; $4d3a: $d0

    rst $00                                       ; $4d3b: $c7
    inc bc                                        ; $4d3c: $03
    call nc, $8a80                                ; $4d3d: $d4 $80 $8a
    inc d                                         ; $4d40: $14
    add b                                         ; $4d41: $80
    add c                                         ; $4d42: $81
    add b                                         ; $4d43: $80
    inc h                                         ; $4d44: $24
    dec bc                                        ; $4d45: $0b
    xor e                                         ; $4d46: $ab
    ld [hl], d                                    ; $4d47: $72
    inc b                                         ; $4d48: $04
    inc bc                                        ; $4d49: $03
    inc bc                                        ; $4d4a: $03
    nop                                           ; $4d4b: $00
    ld b, $07                                     ; $4d4c: $06 $07
    and l                                         ; $4d4e: $a5
    rlca                                          ; $4d4f: $07
    ld e, e                                       ; $4d50: $5b
    rrca                                          ; $4d51: $0f
    ld l, e                                       ; $4d52: $6b
    pop hl                                        ; $4d53: $e1
    db $10                                        ; $4d54: $10
    db $e3                                        ; $4d55: $e3
    db $e3                                        ; $4d56: $e3
    ld b, e                                       ; $4d57: $43
    ld c, c                                       ; $4d58: $49
    ld bc, $c2c2                                  ; $4d59: $01 $c2 $c2
    add [hl]                                      ; $4d5c: $86
    add [hl]                                      ; $4d5d: $86
    inc b                                         ; $4d5e: $04
    adc [hl]                                      ; $4d5f: $8e
    adc [hl]                                      ; $4d60: $8e
    adc h                                         ; $4d61: $8c
    adc h                                         ; $4d62: $8c
    xor a                                         ; $4d63: $af
    and b                                         ; $4d64: $a0
    ld bc, $1f1f                                  ; $4d65: $01 $1f $1f
    add b                                         ; $4d68: $80
    and h                                         ; $4d69: $a4
    add hl, bc                                    ; $4d6a: $09
    ccf                                           ; $4d6b: $3f
    ccf                                           ; $4d6c: $3f
    ld l, [hl]                                    ; $4d6d: $6e
    ld a, [hl]                                    ; $4d6e: $7e
    ld e, a                                       ; $4d6f: $5f
    ld a, [hl]                                    ; $4d70: $7e
    xor d                                         ; $4d71: $aa
    ld b, b                                       ; $4d72: $40
    add b                                         ; $4d73: $80
    sub h                                         ; $4d74: $94
    dec bc                                        ; $4d75: $0b
    ld b, b                                       ; $4d76: $40
    ld b, b                                       ; $4d77: $40
    ld b, c                                       ; $4d78: $41
    ld b, c                                       ; $4d79: $41
    ld b, e                                       ; $4d7a: $43
    ld b, e                                       ; $4d7b: $43
    nop                                           ; $4d7c: $00
    ld h, a                                       ; $4d7d: $67
    ld h, a                                       ; $4d7e: $67
    ld a, [hl]                                    ; $4d7f: $7e
    ld a, [hl]                                    ; $4d80: $7e
    or l                                          ; $4d81: $b5
    rra                                           ; $4d82: $1f
    dec hl                                        ; $4d83: $2b
    ccf                                           ; $4d84: $3f
    ld c, b                                       ; $4d85: $48
    ld e, a                                       ; $4d86: $5f
    ld d, c                                       ; $4d87: $51
    ld [bc], a                                    ; $4d88: $02
    rst $08                                       ; $4d89: $cf
    rst $08                                       ; $4d8a: $cf
    inc d                                         ; $4d8b: $14
    add hl, bc                                    ; $4d8c: $09
    rrca                                          ; $4d8d: $0f
    rrca                                          ; $4d8e: $0f
    cp d                                          ; $4d8f: $ba
    nop                                           ; $4d90: $00
    sbc b                                         ; $4d91: $98
    db $dd                                        ; $4d92: $dd
    sbc b                                         ; $4d93: $98
    cp d                                          ; $4d94: $ba
    cp b                                          ; $4d95: $b8
    ld a, b                                       ; $4d96: $78
    ld a, b                                       ; $4d97: $78
    ld a, c                                       ; $4d98: $79
    nop                                           ; $4d99: $00
    ld a, c                                       ; $4d9a: $79
    reti                                          ; $4d9b: $d9


    reti                                          ; $4d9c: $d9


    sbc d                                         ; $4d9d: $9a
    sbc e                                         ; $4d9e: $9b
    sub a                                         ; $4d9f: $97
    sub a                                         ; $4da0: $97
    db $fd                                        ; $4da1: $fd
    inc [hl]                                      ; $4da2: $34
    rst $38                                       ; $4da3: $ff
    ld a, [$025e]                                 ; $4da4: $fa $5e $02
    di                                            ; $4da7: $f3
    rrca                                          ; $4da8: $0f
    db $eb                                        ; $4da9: $eb
    cp b                                          ; $4daa: $b8
    ld [bc], a                                    ; $4dab: $02
    or a                                          ; $4dac: $b7
    rst $38                                       ; $4dad: $ff
    inc c                                         ; $4dae: $0c
    ld a, [c]                                     ; $4daf: $f2
    ld a, [c]                                     ; $4db0: $f2
    or $f6                                        ; $4db1: $f6 $f6
    inc d                                         ; $4db3: $14
    add hl, de                                    ; $4db4: $19
    ret nc                                        ; $4db5: $d0

    inc c                                         ; $4db6: $0c
    rst $30                                       ; $4db7: $f7
    rst $38                                       ; $4db8: $ff
    nop                                           ; $4db9: $00
    rrca                                          ; $4dba: $0f
    rrca                                          ; $4dbb: $0f
    dec de                                        ; $4dbc: $1b
    rra                                           ; $4dbd: $1f
    scf                                           ; $4dbe: $37
    ccf                                           ; $4dbf: $3f
    ld e, [hl]                                    ; $4dc0: $5e
    ld a, [hl]                                    ; $4dc1: $7e
    daa                                           ; $4dc2: $27
    cp h                                          ; $4dc3: $bc
    db $fc                                        ; $4dc4: $fc
    cp $0b                                        ; $4dc5: $fe $0b
    cp [hl]                                       ; $4dc7: $be
    cp $5a                                        ; $4dc8: $fe $5a
    add hl, bc                                    ; $4dca: $09
    inc bc                                        ; $4dcb: $03
    dec b                                         ; $4dcc: $05
    inc bc                                        ; $4dcd: $03
    db $10                                        ; $4dce: $10
    rla                                           ; $4dcf: $17
    ld bc, $0e01                                  ; $4dd0: $01 $01 $0e
    ld d, b                                       ; $4dd3: $50
    inc bc                                        ; $4dd4: $03
    ld a, a                                       ; $4dd5: $7f
    ldh a, [rNR12]                                ; $4dd6: $f0 $12
    ld a, b                                       ; $4dd8: $78
    ld a, $40                                     ; $4dd9: $3e $40
    dec bc                                        ; $4ddb: $0b
    db $ec                                        ; $4ddc: $ec
    push af                                       ; $4ddd: $f5
    ld c, d                                       ; $4dde: $4a
    ld [bc], a                                    ; $4ddf: $02
    ld d, e                                       ; $4de0: $53
    cpl                                           ; $4de1: $2f
    dec b                                         ; $4de2: $05
    db $eb                                        ; $4de3: $eb
    ld a, [de]                                    ; $4de4: $1a
    dec bc                                        ; $4de5: $0b
    pop hl                                        ; $4de6: $e1
    ld [hl], $07                                  ; $4de7: $36 $07
    rlca                                          ; $4de9: $07
    inc b                                         ; $4dea: $04
    add a                                         ; $4deb: $87
    add a                                         ; $4dec: $87
    rst $08                                       ; $4ded: $cf
    rst $08                                       ; $4dee: $cf
    rst $28                                       ; $4def: $ef
    ld l, c                                       ; $4df0: $69
    inc bc                                        ; $4df1: $03
    cp $fe                                        ; $4df2: $fe $fe
    ld b, b                                       ; $4df4: $40
    ld a, [hl]                                    ; $4df5: $7e
    jr c, jr_097_4dfd                             ; $4df6: $38 $05

    cp [hl]                                       ; $4df8: $be
    cp a                                          ; $4df9: $bf
    sbc a                                         ; $4dfa: $9f
    sbc a                                         ; $4dfb: $9f
    rrca                                          ; $4dfc: $0f

jr_097_4dfd:
    rrca                                          ; $4dfd: $0f
    add b                                         ; $4dfe: $80
    ld h, h                                       ; $4dff: $64
    ld [$0101], sp                                ; $4e00: $08 $01 $01
    rlca                                          ; $4e03: $07
    rlca                                          ; $4e04: $07
    ld e, $1f                                     ; $4e05: $1e $1f
    jp $c30b                                      ; $4e07: $c3 $0b $c3


    ld h, e                                       ; $4e0a: $63
    db $e3                                        ; $4e0b: $e3
    cp e                                          ; $4e0c: $bb
    sub e                                         ; $4e0d: $93
    inc bc                                        ; $4e0e: $03
    ld l, a                                       ; $4e0f: $6f
    inc b                                         ; $4e10: $04
    inc bc                                        ; $4e11: $03
    jr c, @+$0a                                   ; $4e12: $38 $08

    ld [hl+], a                                   ; $4e14: $22
    ldh [$e0], a                                  ; $4e15: $e0 $e0
    db $ed                                        ; $4e17: $ed
    ld a, [bc]                                    ; $4e18: $0a
    ei                                            ; $4e19: $fb
    ei                                            ; $4e1a: $fb
    sbc $a8                                       ; $4e1b: $de $a8
    inc bc                                        ; $4e1d: $03
    cp $a8                                        ; $4e1e: $fe $a8
    ld l, h                                       ; $4e20: $6c
    inc bc                                        ; $4e21: $03
    push af                                       ; $4e22: $f5
    rst $30                                       ; $4e23: $f7
    dec b                                         ; $4e24: $05
    rst $30                                       ; $4e25: $f7
    ld [hl-], a                                   ; $4e26: $32
    ld b, e                                       ; $4e27: $43
    ld a, h                                       ; $4e28: $7c
    ld a, h                                       ; $4e29: $7c
    ld a, b                                       ; $4e2a: $78
    ld [bc], a                                    ; $4e2b: $02
    ld a, b                                       ; $4e2c: $78
    call c, $7efc                                 ; $4e2d: $dc $fc $7e
    cp $be                                        ; $4e30: $fe $be
    ld l, $16                                     ; $4e32: $2e $16
    cp $80                                        ; $4e34: $fe $80
    ret nz                                        ; $4e36: $c0

    nop                                           ; $4e37: $00
    rla                                           ; $4e38: $17
    rra                                           ; $4e39: $1f
    ld l, $3e                                     ; $4e3a: $2e $3e
    ld a, $3e                                     ; $4e3c: $3e $3e
    ld e, [hl]                                    ; $4e3e: $5e
    jr nz, jr_097_4ebf                            ; $4e3f: $20 $7e

    xor [hl]                                      ; $4e41: $ae
    sub [hl]                                      ; $4e42: $96
    dec b                                         ; $4e43: $05
    rst $18                                       ; $4e44: $df
    rst $38                                       ; $4e45: $ff
    dec a                                         ; $4e46: $3d
    ccf                                           ; $4e47: $3f
    ld a, [hl-]                                   ; $4e48: $3a
    ld [hl+], a                                   ; $4e49: $22
    ccf                                           ; $4e4a: $3f
    scf                                           ; $4e4b: $37
    inc l                                         ; $4e4c: $2c
    ld bc, $3f3f                                  ; $4e4d: $01 $3f $3f
    ld l, e                                       ; $4e50: $6b
    ld [hl], $07                                  ; $4e51: $36 $07
    or a                                          ; $4e53: $b7
    jp hl                                         ; $4e54: $e9


    ld l, c                                       ; $4e55: $69
    rlca                                          ; $4e56: $07
    adc [hl]                                      ; $4e57: $8e
    ld c, b                                       ; $4e58: $48
    ldh [$0b], a                                  ; $4e59: $e0 $0b
    ld [$02c4], sp                                ; $4e5b: $08 $c4 $02
    nop                                           ; $4e5e: $00
    add hl, bc                                    ; $4e5f: $09
    ld a, [hl]                                    ; $4e60: $7e
    ld b, $34                                     ; $4e61: $06 $34
    xor a                                         ; $4e63: $af
    nop                                           ; $4e64: $00
    ld a, d                                       ; $4e65: $7a
    rrca                                          ; $4e66: $0f
    or b                                          ; $4e67: $b0
    ld c, $4a                                     ; $4e68: $0e $4a
    or [hl]                                       ; $4e6a: $b6
    ld b, $a2                                     ; $4e6b: $06 $a2
    nop                                           ; $4e6d: $00
    dec b                                         ; $4e6e: $05
    ld b, l                                       ; $4e6f: $45
    nop                                           ; $4e70: $00
    xor e                                         ; $4e71: $ab
    nop                                           ; $4e72: $00
    rst $18                                       ; $4e73: $df
    xor [hl]                                      ; $4e74: $ae
    ld d, $21                                     ; $4e75: $16 $21
    sbc h                                         ; $4e77: $9c
    ld b, $14                                     ; $4e78: $06 $14
    xor d                                         ; $4e7a: $aa
    nop                                           ; $4e7b: $00
    ld a, l                                       ; $4e7c: $7d
    sbc b                                         ; $4e7d: $98
    rrca                                          ; $4e7e: $0f
    adc b                                         ; $4e7f: $88
    add [hl]                                      ; $4e80: $86
    rrca                                          ; $4e81: $0f
    rst $38                                       ; $4e82: $ff
    adc b                                         ; $4e83: $88
    nop                                           ; $4e84: $00
    ld [hl], a                                    ; $4e85: $77
    db $10                                        ; $4e86: $10
    rst $38                                       ; $4e87: $ff
    ld [bc], a                                    ; $4e88: $02
    db $fd                                        ; $4e89: $fd
    ld b, b                                       ; $4e8a: $40
    rst $38                                       ; $4e8b: $ff
    ld a, [bc]                                    ; $4e8c: $0a
    ld a, [hl]                                    ; $4e8d: $7e
    db $fd                                        ; $4e8e: $fd
    ld [$841d], a                                 ; $4e8f: $ea $1d $84
    ld c, $eb                                     ; $4e92: $0e $eb
    inc l                                         ; $4e94: $2c
    ld d, b                                       ; $4e95: $50
    dec c                                         ; $4e96: $0d
    ret nz                                        ; $4e97: $c0

    ld c, l                                       ; $4e98: $4d
    ld [bc], a                                    ; $4e99: $02
    rrca                                          ; $4e9a: $0f
    ld b, b                                       ; $4e9b: $40
    ret nc                                        ; $4e9c: $d0

    db $10                                        ; $4e9d: $10
    ld h, b                                       ; $4e9e: $60
    ld h, l                                       ; $4e9f: $65
    ld l, $54                                     ; $4ea0: $2e $54
    rst $30                                       ; $4ea2: $f7
    ld b, $04                                     ; $4ea3: $06 $04
    inc b                                         ; $4ea5: $04
    xor d                                         ; $4ea6: $aa
    ld c, $db                                     ; $4ea7: $0e $db
    jr nz, jr_097_4eb1                            ; $4ea9: $20 $06

    ld [hl], d                                    ; $4eab: $72
    ld bc, $9878                                  ; $4eac: $01 $78 $98
    ld [bc], a                                    ; $4eaf: $02
    ld a, a                                       ; $4eb0: $7f

jr_097_4eb1:
    ld l, $0a                                     ; $4eb1: $2e $0a
    cp b                                          ; $4eb3: $b8
    ld d, $8c                                     ; $4eb4: $16 $8c
    ld a, $7c                                     ; $4eb6: $3e $7c
    xor d                                         ; $4eb8: $aa
    and h                                         ; $4eb9: $a4
    ld [bc], a                                    ; $4eba: $02
    inc l                                         ; $4ebb: $2c
    dec e                                         ; $4ebc: $1d
    add b                                         ; $4ebd: $80
    inc de                                        ; $4ebe: $13

jr_097_4ebf:
    sub [hl]                                      ; $4ebf: $96
    ld b, $94                                     ; $4ec0: $06 $94
    ld c, $0f                                     ; $4ec2: $0e $0f
    rrca                                          ; $4ec4: $0f
    ldh a, [$60]                                  ; $4ec5: $f0 $60
    rrca                                          ; $4ec7: $0f
    inc l                                         ; $4ec8: $2c
    ld a, [bc]                                    ; $4ec9: $0a
    ld b, h                                       ; $4eca: $44
    add hl, bc                                    ; $4ecb: $09
    ld l, h                                       ; $4ecc: $6c
    rrca                                          ; $4ecd: $0f
    rra                                           ; $4ece: $1f
    rra                                           ; $4ecf: $1f
    ccf                                           ; $4ed0: $3f
    ccf                                           ; $4ed1: $3f
    jp nz, $1447                                  ; $4ed2: $c2 $47 $14

    ld c, c                                       ; $4ed5: $49
    rlca                                          ; $4ed6: $07
    ld a, a                                       ; $4ed7: $7f
    ld a, a                                       ; $4ed8: $7f
    rra                                           ; $4ed9: $1f
    rra                                           ; $4eda: $1f
    nop                                           ; $4edb: $00
    ld a, [de]                                    ; $4edc: $1a
    ld hl, sp-$7c                                 ; $4edd: $f8 $84
    ld a, [hl+]                                   ; $4edf: $2a
    inc b                                         ; $4ee0: $04
    ld sp, hl                                     ; $4ee1: $f9
    ld sp, hl                                     ; $4ee2: $f9
    ld a, [$b0fb]                                 ; $4ee3: $fa $fb $b0
    inc c                                         ; $4ee6: $0c
    ei                                            ; $4ee7: $fb
    rst $38                                       ; $4ee8: $ff
    ld c, d                                       ; $4ee9: $4a
    or $31                                        ; $4eea: $f6 $31
    inc h                                         ; $4eec: $24
    db $fc                                        ; $4eed: $fc
    db $fc                                        ; $4eee: $fc
    call nz, $fd06                                ; $4eef: $c4 $06 $fd
    ld [de], a                                    ; $4ef2: $12
    dec bc                                        ; $4ef3: $0b
    rst $38                                       ; $4ef4: $ff
    rl [hl]                                       ; $4ef5: $cb $16
    ld [bc], a                                    ; $4ef7: $02
    sub d                                         ; $4ef8: $92
    add hl, bc                                    ; $4ef9: $09
    ld hl, sp-$08                                 ; $4efa: $f8 $f8
    inc d                                         ; $4efc: $14
    ld c, $02                                     ; $4efd: $0e $02
    ld bc, $f000                                  ; $4eff: $01 $00 $f0
    dec hl                                        ; $4f02: $2b
    or e                                          ; $4f03: $b3
    call z, Call_097_503a                         ; $4f04: $cc $3a $50
    ld a, [de]                                    ; $4f07: $1a
    rla                                           ; $4f08: $17
    ret nc                                        ; $4f09: $d0

    ld e, e                                       ; $4f0a: $5b
    nop                                           ; $4f0b: $00
    nop                                           ; $4f0c: $00
    ret nc                                        ; $4f0d: $d0

    add hl, sp                                    ; $4f0e: $39
    ret z                                         ; $4f0f: $c8

    inc e                                         ; $4f10: $1c
    nop                                           ; $4f11: $00
    jr @+$1a                                      ; $4f12: $18 $18

    ret nz                                        ; $4f14: $c0

    ret nz                                        ; $4f15: $c0

    ld a, b                                       ; $4f16: $78
    ld a, b                                       ; $4f17: $78
    adc a                                         ; $4f18: $8f
    adc a                                         ; $4f19: $8f
    ld h, b                                       ; $4f1a: $60
    ld a, l                                       ; $4f1b: $7d
    sbc a                                         ; $4f1c: $9f
    rlca                                          ; $4f1d: $07
    ret c                                         ; $4f1e: $d8

    inc c                                         ; $4f1f: $0c
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    rrca                                          ; $4f22: $0f
    rrca                                          ; $4f23: $0f
    ld [hl], l                                    ; $4f24: $75
    ld c, c                                       ; $4f25: $49
    ld a, a                                       ; $4f26: $7f
    inc c                                         ; $4f27: $0c
    jr @+$01                                      ; $4f28: $18 $ff

    rst $38                                       ; $4f2a: $ff
    ldh [$08], a                                  ; $4f2b: $e0 $08
    ld hl, sp-$08                                 ; $4f2d: $f8 $f8
    sbc h                                         ; $4f2f: $9c
    ld [$dc97], sp                                ; $4f30: $08 $97 $dc
    rra                                           ; $4f33: $1f
    ld a, b                                       ; $4f34: $78
    ld a, b                                       ; $4f35: $78
    ld d, h                                       ; $4f36: $54
    jr @+$61                                      ; $4f37: $18 $5f

    sub h                                         ; $4f39: $94
    nop                                           ; $4f3a: $00
    ld e, $1a                                     ; $4f3b: $1e $1a
    jp nc, Jump_000_0608                          ; $4f3d: $d2 $08 $06

    inc bc                                        ; $4f40: $03
    inc bc                                        ; $4f41: $03
    add $c7                                       ; $4f42: $c6 $c7
    cp a                                          ; $4f44: $bf
    and b                                         ; $4f45: $a0
    ld [bc], a                                    ; $4f46: $02
    ld h, b                                       ; $4f47: $60
    rrca                                          ; $4f48: $0f
    add c                                         ; $4f49: $81
    inc bc                                        ; $4f4a: $03
    add c                                         ; $4f4b: $81
    ld bc, $0301                                  ; $4f4c: $01 $01 $03
    inc bc                                        ; $4f4f: $03
    rst $30                                       ; $4f50: $f7
    sbc a                                         ; $4f51: $9f
    dec b                                         ; $4f52: $05
    ld [hl], h                                    ; $4f53: $74
    ld b, d                                       ; $4f54: $42
    add l                                         ; $4f55: $85
    and c                                         ; $4f56: $a1
    dec b                                         ; $4f57: $05
    db $e3                                        ; $4f58: $e3
    db $e3                                        ; $4f59: $e3
    ldh a, [$f0]                                  ; $4f5a: $f0 $f0
    jp z, $fb1f                                   ; $4f5c: $ca $1f $fb

    sub e                                         ; $4f5f: $93
    rlca                                          ; $4f60: $07
    ld [c], a                                     ; $4f61: $e2
    cp [hl]                                       ; $4f62: $be
    ld [$2fd8], sp                                ; $4f63: $08 $d8 $2f
    ld b, h                                       ; $4f66: $44
    add hl, de                                    ; $4f67: $19
    jp $fec3                                      ; $4f68: $c3 $c3 $fe


    ld [c], a                                     ; $4f6b: $e2
    ld [bc], a                                    ; $4f6c: $02
    rst $38                                       ; $4f6d: $ff
    ld b, c                                       ; $4f6e: $41
    rst $38                                       ; $4f6f: $ff
    ld d, [hl]                                    ; $4f70: $56
    ld a, [bc]                                    ; $4f71: $0a
    inc e                                         ; $4f72: $1c
    inc e                                         ; $4f73: $1c
    ld l, e                                       ; $4f74: $6b
    ld a, a                                       ; $4f75: $7f
    rst $10                                       ; $4f76: $d7
    and b                                         ; $4f77: $a0
    dec b                                         ; $4f78: $05
    res 7, [hl]                                   ; $4f79: $cb $be
    inc c                                         ; $4f7b: $0c

jr_097_4f7c:
    ld a, [c]                                     ; $4f7c: $f2
    dec bc                                        ; $4f7d: $0b
    rra                                           ; $4f7e: $1f
    rra                                           ; $4f7f: $1f
    db $fc                                        ; $4f80: $fc
    ld [$7cc0], sp                                ; $4f81: $08 $c0 $7c
    rlca                                          ; $4f84: $07
    db $ed                                        ; $4f85: $ed
    rra                                           ; $4f86: $1f
    ret nz                                        ; $4f87: $c0

    ld a, [hl-]                                   ; $4f88: $3a
    dec c                                         ; $4f89: $0d
    ld a, $19                                     ; $4f8a: $3e $19
    nop                                           ; $4f8c: $00
    nop                                           ; $4f8d: $00
    cp $fe                                        ; $4f8e: $fe $fe
    ldh [$e0], a                                  ; $4f90: $e0 $e0
    ld de, $8f8f                                  ; $4f92: $11 $8f $8f
    rst $30                                       ; $4f95: $f7

jr_097_4f96:
    ld b, b                                       ; $4f96: $40
    ld bc, $fcfc                                  ; $4f97: $01 $fc $fc
    ldh a, [$ce]                                  ; $4f9a: $f0 $ce
    inc bc                                        ; $4f9c: $03
    nop                                           ; $4f9d: $00
    ccf                                           ; $4f9e: $3f
    ccf                                           ; $4f9f: $3f
    rlca                                          ; $4fa0: $07
    rlca                                          ; $4fa1: $07
    add c                                         ; $4fa2: $81
    add c                                         ; $4fa3: $81
    rst $38                                       ; $4fa4: $ff
    rst $38                                       ; $4fa5: $ff
    nop                                           ; $4fa6: $00
    push de                                       ; $4fa7: $d5
    rst $38                                       ; $4fa8: $ff
    ld a, e                                       ; $4fa9: $7b
    ld a, a                                       ; $4faa: $7f
    rrca                                          ; $4fab: $0f
    rrca                                          ; $4fac: $0f
    ld bc, $0701                                  ; $4fad: $01 $01 $07
    rst $38                                       ; $4fb0: $ff
    push af                                       ; $4fb1: $f5
    rst $18                                       ; $4fb2: $df
    ld a, [$d26f]                                 ; $4fb3: $fa $6f $d2
    ld [de], a                                    ; $4fb6: $12
    xor h                                         ; $4fb7: $ac
    add hl, de                                    ; $4fb8: $19
    sub b                                         ; $4fb9: $90
    jr jr_097_4f7c                                ; $4fba: $18 $c0

    inc [hl]                                      ; $4fbc: $34
    ld d, $80                                     ; $4fbd: $16 $80
    dec e                                         ; $4fbf: $1d
    cp $f0                                        ; $4fc0: $fe $f0
    ldh a, [rNR41]                                ; $4fc2: $f0 $20
    jr nz, jr_097_4fe7                            ; $4fc4: $20 $21

    nop                                           ; $4fc6: $00
    ld hl, $c2c2                                  ; $4fc7: $21 $c2 $c2
    ld h, [hl]                                    ; $4fca: $66
    and $bc                                       ; $4fcb: $e6 $bc
    db $fc                                        ; $4fcd: $fc
    ld d, a                                       ; $4fce: $57
    add b                                         ; $4fcf: $80
    ld b, b                                       ; $4fd0: $40
    ld b, $40                                     ; $4fd1: $06 $40
    ld b, b                                       ; $4fd3: $40
    add b                                         ; $4fd4: $80
    add b                                         ; $4fd5: $80
    inc c                                         ; $4fd6: $0c
    inc c                                         ; $4fd7: $0c
    ld [hl], $83                                  ; $4fd8: $36 $83
    sub d                                         ; $4fda: $92
    ld [bc], a                                    ; $4fdb: $02
    xor h                                         ; $4fdc: $ac
    db $fc                                        ; $4fdd: $fc
    ld e, b                                       ; $4fde: $58
    ld hl, sp-$16                                 ; $4fdf: $f8 $ea
    ld l, $63                                     ; $4fe1: $2e $63
    adc [hl]                                      ; $4fe3: $8e
    inc c                                         ; $4fe4: $0c
    ld [hl], b                                    ; $4fe5: $70
    rst $30                                       ; $4fe6: $f7

jr_097_4fe7:
    ret nz                                        ; $4fe7: $c0

    jr nz, @-$7e                                  ; $4fe8: $20 $80

    add hl, bc                                    ; $4fea: $09
    push af                                       ; $4feb: $f5
    rrca                                          ; $4fec: $0f
    add b                                         ; $4fed: $80
    add b                                         ; $4fee: $80
    db $fc                                        ; $4fef: $fc
    db $fc                                        ; $4ff0: $fc
    ld a, [hl]                                    ; $4ff1: $7e
    ld d, h                                       ; $4ff2: $54
    ld a, h                                       ; $4ff3: $7c
    rlca                                          ; $4ff4: $07
    ret c                                         ; $4ff5: $d8

    sbc a                                         ; $4ff6: $9f
    ld d, e                                       ; $4ff7: $53
    rrca                                          ; $4ff8: $0f
    add sp, $4f                                   ; $4ff9: $e8 $4f
    add b                                         ; $4ffb: $80
    ld a, [de]                                    ; $4ffc: $1a
    db $fc                                        ; $4ffd: $fc
    ccf                                           ; $4ffe: $3f
    ld d, l                                       ; $4fff: $55
    ld a, [$023c]                                 ; $5000: $fa $3c $02
    sub h                                         ; $5003: $94
    ld a, [hl+]                                   ; $5004: $2a
    inc a                                         ; $5005: $3c
    ld a, [hl+]                                   ; $5006: $2a
    inc b                                         ; $5007: $04
    jr z, jr_097_4f96                             ; $5008: $28 $8c

    ld c, l                                       ; $500a: $4d
    dec b                                         ; $500b: $05
    ldh a, [$15]                                  ; $500c: $f0 $15
    sub a                                         ; $500e: $97
    inc bc                                        ; $500f: $03
    ld a, a                                       ; $5010: $7f
    adc a                                         ; $5011: $8f
    ld a, a                                       ; $5012: $7f
    rra                                           ; $5013: $1f
    rst $38                                       ; $5014: $ff
    adc a                                         ; $5015: $8f
    cp d                                          ; $5016: $ba
    ld d, e                                       ; $5017: $53
    ld h, b                                       ; $5018: $60
    add hl, de                                    ; $5019: $19
    nop                                           ; $501a: $00
    ldh [$e0], a                                  ; $501b: $e0 $e0
    ret nc                                        ; $501d: $d0

    ldh a, [$e8]                                  ; $501e: $f0 $e8
    ld hl, sp-$0c                                 ; $5020: $f8 $f4
    db $fc                                        ; $5022: $fc
    or b                                          ; $5023: $b0
    jr nz, jr_097_502d                            ; $5024: $20 $07

    ld d, l                                       ; $5026: $55

jr_097_5027:
    jr nc, @+$19                                  ; $5027: $30 $17

    inc [hl]                                      ; $5029: $34
    rlca                                          ; $502a: $07
    push af                                       ; $502b: $f5
    and b                                         ; $502c: $a0

jr_097_502d:
    ld b, $06                                     ; $502d: $06 $06
    nop                                           ; $502f: $00
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    ld a, [$fd50]                                 ; $5032: $fa $50 $fd
    xor b                                         ; $5035: $a8
    ld d, b                                       ; $5036: $50
    ldh a, [$3a]                                  ; $5037: $f0 $3a
    db $f4                                        ; $5039: $f4

Call_097_503a:
    and b                                         ; $503a: $a0
    cp h                                          ; $503b: $bc
    cpl                                           ; $503c: $2f
    db $ec                                        ; $503d: $ec
    ld a, [hl+]                                   ; $503e: $2a
    call z, $a80f                                 ; $503f: $cc $0f $a8
    call nz, $a807                                ; $5042: $c4 $07 $a8
    cp h                                          ; $5045: $bc
    di                                            ; $5046: $f3
    ld b, l                                       ; $5047: $45
    cp $10                                        ; $5048: $fe $10
    inc h                                         ; $504a: $24
    ld [$0c08], sp                                ; $504b: $08 $08 $0c
    ld [$5b05], sp                                ; $504e: $08 $05 $5b
    ld d, l                                       ; $5051: $55
    nop                                           ; $5052: $00
    add b                                         ; $5053: $80
    ldh [$2c], a                                  ; $5054: $e0 $2c
    add d                                         ; $5056: $82
    add d                                         ; $5057: $82
    ld b, $06                                     ; $5058: $06 $06
    ld c, $0e                                     ; $505a: $0e $0e
    inc c                                         ; $505c: $0c
    ld [$fc0c], sp                                ; $505d: $08 $0c $fc
    db $fc                                        ; $5060: $fc
    db $fd                                        ; $5061: $fd
    add b                                         ; $5062: $80
    ld d, l                                       ; $5063: $55
    ld a, [hl-]                                   ; $5064: $3a
    jr @+$5f                                      ; $5065: $18 $5d

    nop                                           ; $5067: $00
    jr jr_097_50a4                                ; $5068: $18 $3a

    jr jr_097_50c8                                ; $506a: $18 $5c

    jr jr_097_5027                                ; $506c: $18 $b9

    add hl, de                                    ; $506e: $19
    ld e, c                                       ; $506f: $59
    ld b, $19                                     ; $5070: $06 $19
    cp d                                          ; $5072: $ba
    dec de                                        ; $5073: $1b
    rla                                           ; $5074: $17
    rla                                           ; $5075: $17
    ldh [$0b], a                                  ; $5076: $e0 $0b
    db $fc                                        ; $5078: $fc
    inc c                                         ; $5079: $0c
    ld e, a                                       ; $507a: $5f
    add hl, hl                                    ; $507b: $29
    ld a, a                                       ; $507c: $7f
    xor a                                         ; $507d: $af
    halt                                          ; $507e: $76
    rla                                           ; $507f: $17
    rst $18                                       ; $5080: $df
    ret z                                         ; $5081: $c8

    inc b                                         ; $5082: $04
    ei                                            ; $5083: $fb
    push de                                       ; $5084: $d5
    halt                                          ; $5085: $76
    cpl                                           ; $5086: $2f
    nop                                           ; $5087: $00
    db $fc                                        ; $5088: $fc
    db $fc                                        ; $5089: $fc
    ld c, $0e                                     ; $508a: $0e $0e
    ld [hl], b                                    ; $508c: $70
    ld [hl], b                                    ; $508d: $70
    ld [$1040], a                                 ; $508e: $ea $40 $10
    db $fd                                        ; $5091: $fd
    xor b                                         ; $5092: $a8
    rst $10                                       ; $5093: $d7
    inc d                                         ; $5094: $14
    rlca                                          ; $5095: $07
    db $10                                        ; $5096: $10
    db $10                                        ; $5097: $10
    jr nz, jr_097_50ba                            ; $5098: $20 $20

    ld [$fcfc], sp                                ; $509a: $08 $fc $fc
    cp $fe                                        ; $509d: $fe $fe
    ld h, b                                       ; $509f: $60
    add hl, hl                                    ; $50a0: $29
    pop af                                        ; $50a1: $f1
    pop af                                        ; $50a2: $f1
    db $fd                                        ; $50a3: $fd

jr_097_50a4:
    db $10                                        ; $50a4: $10
    xor b                                         ; $50a5: $a8
    ld h, b                                       ; $50a6: $60
    ld h, b                                       ; $50a7: $60
    and d                                         ; $50a8: $a2
    dec c                                         ; $50a9: $0d
    ret nz                                        ; $50aa: $c0

    ret nz                                        ; $50ab: $c0

    ld [hl], b                                    ; $50ac: $70
    ldh a, [rP1]                                  ; $50ad: $f0 $00
    adc b                                         ; $50af: $88
    ld hl, sp-$02                                 ; $50b0: $f8 $fe
    call nc, $297d                                ; $50b2: $d4 $7d $29
    add hl, de                                    ; $50b5: $19
    add hl, de                                    ; $50b6: $19
    ld bc, $c3c3                                  ; $50b7: $01 $c3 $c3

jr_097_50ba:
    ld a, e                                       ; $50ba: $7b
    ld a, e                                       ; $50bb: $7b
    sbc a                                         ; $50bc: $9f
    sbc a                                         ; $50bd: $9f
    ld a, a                                       ; $50be: $7f
    ret nz                                        ; $50bf: $c0

    rlca                                          ; $50c0: $07
    ld a, $56                                     ; $50c1: $3e $56
    cp $32                                        ; $50c3: $fe $32
    ld a, [bc]                                    ; $50c5: $0a
    pop bc                                        ; $50c6: $c1
    scf                                           ; $50c7: $37

jr_097_50c8:
    ld d, l                                       ; $50c8: $55
    ld [hl+], a                                   ; $50c9: $22
    and l                                         ; $50ca: $a5
    inc b                                         ; $50cb: $04
    push de                                       ; $50cc: $d5
    rrca                                          ; $50cd: $0f
    push af                                       ; $50ce: $f5
    ldh [rDIV], a                                 ; $50cf: $e0 $04
    ld bc, $07e8                                  ; $50d1: $01 $e8 $07
    nop                                           ; $50d4: $00
    ccf                                           ; $50d5: $3f
    push de                                       ; $50d6: $d5
    add b                                         ; $50d7: $80
    xor $44                                       ; $50d8: $ee $44
    db $dd                                        ; $50da: $dd
    ld c, d                                       ; $50db: $4a
    ret z                                         ; $50dc: $c8

    ld c, h                                       ; $50dd: $4c
    ld e, $f8                                     ; $50de: $1e $f8

Call_097_50e0:
Jump_097_50e0:
    ld hl, sp-$48                                 ; $50e0: $f8 $b8
    nop                                           ; $50e2: $00
    db $fd                                        ; $50e3: $fd
    inc b                                         ; $50e4: $04
    ld a, [de]                                    ; $50e5: $1a
    db $fd                                        ; $50e6: $fd
    ldh a, [rNR12]                                ; $50e7: $f0 $12
    dec b                                         ; $50e9: $05
    ld h, d                                       ; $50ea: $62
    dec e                                         ; $50eb: $1d
    rst $10                                       ; $50ec: $d7
    rrca                                          ; $50ed: $0f
    ldh [$2d], a                                  ; $50ee: $e0 $2d
    ret nz                                        ; $50f0: $c0

    ret nz                                        ; $50f1: $c0

    db $f4                                        ; $50f2: $f4
    and b                                         ; $50f3: $a0
    inc bc                                        ; $50f4: $03
    ld a, [$f1f0]                                 ; $50f5: $fa $f0 $f1
    ldh a, [$fa]                                  ; $50f8: $f0 $fa
    ret nc                                        ; $50fa: $d0

    add b                                         ; $50fb: $80
    ld c, $2e                                     ; $50fc: $0e $2e
    ld [$37ec], sp                                ; $50fe: $08 $ec $37
    ld e, l                                       ; $5101: $5d
    ldh [$2c], a                                  ; $5102: $e0 $2c
    jp z, $df0f                                   ; $5104: $ca $0f $df

    ld h, h                                       ; $5107: $64
    dec b                                         ; $5108: $05
    inc [hl]                                      ; $5109: $34
    dec e                                         ; $510a: $1d
    cp $ff                                        ; $510b: $fe $ff
    and d                                         ; $510d: $a2
    ret nc                                        ; $510e: $d0

    ld e, l                                       ; $510f: $5d
    adc a                                         ; $5110: $8f
    ld bc, $d700                                  ; $5111: $01 $00 $d7
    rst $18                                       ; $5114: $df
    xor $38                                       ; $5115: $ee $38
    dec b                                         ; $5117: $05
    sbc $41                                       ; $5118: $de $41
    cp $e0                                        ; $511a: $fe $e0
    inc e                                         ; $511c: $1c
    inc b                                         ; $511d: $04
    inc b                                         ; $511e: $04
    ld d, a                                       ; $511f: $57
    ld [bc], a                                    ; $5120: $02
    xor [hl]                                      ; $5121: $ae
    inc b                                         ; $5122: $04
    jr nc, jr_097_5125                            ; $5123: $30 $00

jr_097_5125:
    ld b, $06                                     ; $5125: $06 $06
    ccf                                           ; $5127: $3f
    ccf                                           ; $5128: $3f
    ld a, a                                       ; $5129: $7f
    ccf                                           ; $512a: $3f
    cp a                                          ; $512b: $bf
    dec d                                         ; $512c: $15
    ld a, [bc]                                    ; $512d: $0a
    ld a, a                                       ; $512e: $7f
    ld a, [hl+]                                   ; $512f: $2a
    ld a, a                                       ; $5130: $7f
    ld a, l                                       ; $5131: $7d
    ld [hl], a                                    ; $5132: $77
    dec b                                         ; $5133: $05
    ld d, l                                       ; $5134: $55
    xor c                                         ; $5135: $a9
    dec [hl]                                      ; $5136: $35
    xor d                                         ; $5137: $aa
    adc b                                         ; $5138: $88
    ld de, $ff14                                  ; $5139: $11 $14 $ff
    rst $38                                       ; $513c: $ff
    xor e                                         ; $513d: $ab
    ldh [$1f], a                                  ; $513e: $e0 $1f
    ld d, a                                       ; $5140: $57
    ld a, a                                       ; $5141: $7f
    cp a                                          ; $5142: $bf
    add b                                         ; $5143: $80
    ld [hl+], a                                   ; $5144: $22
    inc e                                         ; $5145: $1c
    rst $38                                       ; $5146: $ff
    ld b, e                                       ; $5147: $43
    jp $e3e3                                      ; $5148: $c3 $e3 $e3


    ld h, e                                       ; $514b: $63
    db $e3                                        ; $514c: $e3
    nop                                           ; $514d: $00
    db $e3                                        ; $514e: $e3
    db $e3                                        ; $514f: $e3
    push hl                                       ; $5150: $e5
    rst $20                                       ; $5151: $e7
    and a                                         ; $5152: $a7
    rst $20                                       ; $5153: $e7
    db $eb                                        ; $5154: $eb
    rst $28                                       ; $5155: $ef
    db $d3                                        ; $5156: $d3
    ret z                                         ; $5157: $c8

    dec de                                        ; $5158: $1b
    db $fc                                        ; $5159: $fc
    ld [$297f], sp                                ; $515a: $08 $7f $29
    ld c, $f5                                     ; $515d: $0e $f5
    rst $38                                       ; $515f: $ff
    xor a                                         ; $5160: $af
    ld a, [hl+]                                   ; $5161: $2a
    nop                                           ; $5162: $00
    ld a, [bc]                                    ; $5163: $0a
    xor b                                         ; $5164: $a8
    rst $00                                       ; $5165: $c7
    dec c                                         ; $5166: $0d
    xor e                                         ; $5167: $ab
    add b                                         ; $5168: $80
    ld c, a                                       ; $5169: $4f
    cp a                                          ; $516a: $bf
    reti                                          ; $516b: $d9


    dec b                                         ; $516c: $05
    nop                                           ; $516d: $00
    jr @+$4e                                      ; $516e: $18 $4c

jr_097_5170:
    dec c                                         ; $5170: $0d
    ld b, c                                       ; $5171: $41
    rst $38                                       ; $5172: $ff
    ld bc, $bf70                                  ; $5173: $01 $70 $bf
    rst $38                                       ; $5176: $ff
    rst $18                                       ; $5177: $df
    rst $38                                       ; $5178: $ff
    ld a, a                                       ; $5179: $7f
    ld b, $00                                     ; $517a: $06 $00
    ld b, $5f                                     ; $517c: $06 $5f
    rst $38                                       ; $517e: $ff
    cp e                                          ; $517f: $bb
    rst $38                                       ; $5180: $ff
    ld e, l                                       ; $5181: $5d
    rra                                           ; $5182: $1f
    nop                                           ; $5183: $00
    inc c                                         ; $5184: $0c
    ld [$207f], sp                                ; $5185: $08 $7f $20

jr_097_5188:
    rst $38                                       ; $5188: $ff
    xor a                                         ; $5189: $af
    stop                                          ; $518a: $10 $00
    xor a                                         ; $518c: $af
    rst $38                                       ; $518d: $ff
    ld d, l                                       ; $518e: $55
    cp a                                          ; $518f: $bf
    xor a                                         ; $5190: $af
    nop                                           ; $5191: $00
    ld a, a                                       ; $5192: $7f
    ld d, a                                       ; $5193: $57
    cp a                                          ; $5194: $bf
    add l                                         ; $5195: $85
    ld a, a                                       ; $5196: $7f
    ld b, d                                       ; $5197: $42

jr_097_5198:
    cp a                                          ; $5198: $bf
    push hl                                       ; $5199: $e5
    nop                                           ; $519a: $00
    rra                                           ; $519b: $1f
    ld b, d                                       ; $519c: $42
    cp a                                          ; $519d: $bf
    and c                                         ; $519e: $a1
    rra                                           ; $519f: $1f
    ld [hl], b                                    ; $51a0: $70
    adc a                                         ; $51a1: $8f
    dec bc                                        ; $51a2: $0b
    nop                                           ; $51a3: $00
    rst $38                                       ; $51a4: $ff
    ld b, l                                       ; $51a5: $45
    cp a                                          ; $51a6: $bf
    ld [hl+], a                                   ; $51a7: $22
    rst $18                                       ; $51a8: $df
    ld b, c                                       ; $51a9: $41
    cp a                                          ; $51aa: $bf
    ld h, d                                       ; $51ab: $62
    nop                                           ; $51ac: $00
    sbc a                                         ; $51ad: $9f
    ld d, c                                       ; $51ae: $51
    xor a                                         ; $51af: $af
    ld l, b                                       ; $51b0: $68
    sub a                                         ; $51b1: $97
    pop af                                        ; $51b2: $f1
    adc a                                         ; $51b3: $8f
    ret c                                         ; $51b4: $d8

    ld [$d087], sp                                ; $51b5: $08 $87 $d0
    adc a                                         ; $51b8: $8f
    ld hl, sp+$04                                 ; $51b9: $f8 $04
    ld [$f4c7], sp                                ; $51bb: $08 $c7 $f4
    rlc [hl]                                      ; $51be: $cb $06
    ld hl, sp-$39                                 ; $51c0: $f8 $c7
    db $e4                                        ; $51c2: $e4
    bit 7, a                                      ; $51c3: $cb $7f
    ld b, d                                       ; $51c5: $42
    db $10                                        ; $51c6: $10
    inc b                                         ; $51c7: $04
    jr z, jr_097_5188                             ; $51c8: $28 $be

    inc b                                         ; $51ca: $04
    ld sp, hl                                     ; $51cb: $f9
    ret c                                         ; $51cc: $d8

    add a                                         ; $51cd: $87
    db $f4                                        ; $51ce: $f4

jr_097_51cf:
    adc e                                         ; $51cf: $8b
    inc b                                         ; $51d0: $04
    jr jr_097_51cf                                ; $51d1: $18 $fc

    sbc e                                         ; $51d3: $9b
    ld c, $b8                                     ; $51d4: $0e $b8
    rst $38                                       ; $51d6: $ff
    db $f4                                        ; $51d7: $f4
    ei                                            ; $51d8: $fb
    ld e, $48                                     ; $51d9: $1e $48

jr_097_51db:
    ld a, [hl+]                                   ; $51db: $2a
    jr jr_097_5170                                ; $51dc: $18 $92

    jr z, jr_097_51db                             ; $51de: $28 $fb

    or b                                          ; $51e0: $b0
    adc b                                         ; $51e1: $88
    nop                                           ; $51e2: $00
    cp e                                          ; $51e3: $bb
    sbc a                                         ; $51e4: $9f
    jr nc, @+$4a                                  ; $51e5: $30 $48

    jr jr_097_5198                                ; $51e7: $18 $af

    rst $38                                       ; $51e9: $ff
    ld d, a                                       ; $51ea: $57
    rst $38                                       ; $51eb: $ff
    nop                                           ; $51ec: $00
    dec bc                                        ; $51ed: $0b
    rst $38                                       ; $51ee: $ff
    scf                                           ; $51ef: $37
    rst $18                                       ; $51f0: $df
    adc d                                         ; $51f1: $8a
    rst $38                                       ; $51f2: $ff
    and l                                         ; $51f3: $a5
    rst $18                                       ; $51f4: $df
    nop                                           ; $51f5: $00
    sub d                                         ; $51f6: $92
    rst $28                                       ; $51f7: $ef
    and l                                         ; $51f8: $a5
    rst $08                                       ; $51f9: $cf
    or c                                          ; $51fa: $b1
    rst $08                                       ; $51fb: $cf
    ld a, a                                       ; $51fc: $7f

jr_097_51fd:
    rst $38                                       ; $51fd: $ff
    nop                                           ; $51fe: $00
    dec l                                         ; $51ff: $2d
    rst $38                                       ; $5200: $ff
    sub a                                         ; $5201: $97
    ld a, a                                       ; $5202: $7f
    jp z, $a53f                                   ; $5203: $ca $3f $a5

Call_097_5206:
    ld e, a                                       ; $5206: $5f
    nop                                           ; $5207: $00
    ld c, e                                       ; $5208: $4b
    cp a                                          ; $5209: $bf

jr_097_520a:
    ld h, l                                       ; $520a: $65
    sbc a                                         ; $520b: $9f
    ld d, e                                       ; $520c: $53
    adc a                                         ; $520d: $8f
    ldh a, [$cf]                                  ; $520e: $f0 $cf
    ld hl, $c7e9                                  ; $5210: $21 $e9 $c7
    inc b                                         ; $5213: $04

jr_097_5214:
    jr z, jr_097_520a                             ; $5214: $28 $f4

    set 5, c                                      ; $5216: $cb $e9
    rst $00                                       ; $5218: $c7
    ldh [rNR23], a                                ; $5219: $e0 $18
    inc b                                         ; $521b: $04
    cp $ff                                        ; $521c: $fe $ff
    ei                                            ; $521e: $fb
    rst $20                                       ; $521f: $e7
    rst $28                                       ; $5220: $ef
    db $eb                                        ; $5221: $eb
    db $10                                        ; $5222: $10
    jp hl                                         ; $5223: $e9


    sub a                                         ; $5224: $97

jr_097_5225:
    cpl                                           ; $5225: $2f
    db $d3                                        ; $5226: $d3
    adc a                                         ; $5227: $8f
    inc b                                         ; $5228: $04
    jr jr_097_51fd                                ; $5229: $18 $d2

    inc b                                         ; $522b: $04
    db $10                                        ; $522c: $10
    ld e, [hl]                                    ; $522d: $5e
    jr z, jr_097_5214                             ; $522e: $28 $e4

    ld [$08f4], sp                                ; $5230: $08 $f4 $08
    nop                                           ; $5233: $00
    dec l                                         ; $5234: $2d
    rst $38                                       ; $5235: $ff
    sbc e                                         ; $5236: $9b
    ld a, a                                       ; $5237: $7f
    ld c, a                                       ; $5238: $4f
    cp a                                          ; $5239: $bf
    ld l, e                                       ; $523a: $6b
    sbc a                                         ; $523b: $9f
    ld [bc], a                                    ; $523c: $02
    ld b, l                                       ; $523d: $45
    cp a                                          ; $523e: $bf
    db $e3                                        ; $523f: $e3
    sbc a                                         ; $5240: $9f
    pop de                                        ; $5241: $d1
    xor a                                         ; $5242: $af
    inc b                                         ; $5243: $04
    nop                                           ; $5244: $00
    adc a                                         ; $5245: $8f
    ld [hl+], a                                   ; $5246: $22
    db $d3                                        ; $5247: $d3
    adc a                                         ; $5248: $8f
    inc b                                         ; $5249: $04
    jr z, jr_097_5225                             ; $524a: $28 $d9

    add a                                         ; $524c: $87
    db $d3                                        ; $524d: $d3
    ret c                                         ; $524e: $d8

    nop                                           ; $524f: $00
    db $e4                                        ; $5250: $e4
    ld [bc], a                                    ; $5251: $02
    set 5, b                                      ; $5252: $cb $e8
    rst $00                                       ; $5254: $c7
    db $ec                                        ; $5255: $ec
    jp Jump_000_04f8                              ; $5256: $c3 $f8 $04


    nop                                           ; $5259: $00
    ldh a, [$0e]                                  ; $525a: $f0 $0e
    rst $00                                       ; $525c: $c7
    db $fc                                        ; $525d: $fc
    jp Jump_000_3a73                              ; $525e: $c3 $73 $3a


    jr nz, @+$34                                  ; $5261: $20 $32

    add hl, bc                                    ; $5263: $09
    inc a                                         ; $5264: $3c
    add hl, bc                                    ; $5265: $09
    ldh a, [$64]                                  ; $5266: $f0 $64
    adc a                                         ; $5268: $8f
    ldh [$28], a                                  ; $5269: $e0 $28
    add sp, $08                                   ; $526b: $e8 $08
    pop de                                        ; $526d: $d1
    adc a                                         ; $526e: $8f
    ld e, $58                                     ; $526f: $1e $58
    rst $38                                       ; $5271: $ff
    rst $38                                       ; $5272: $ff
    ld bc, $e5f2                                  ; $5273: $01 $f2 $e5
    ld a, h                                       ; $5276: $7c
    db $e3                                        ; $5277: $e3
    ld a, [$f4e5]                                 ; $5278: $fa $e5 $f4
    inc b                                         ; $527b: $04
    nop                                           ; $527c: $00
    nop                                           ; $527d: $00
    ld [hl], b                                    ; $527e: $70
    rst $20                                       ; $527f: $e7
    ld a, [$50e5]                                 ; $5280: $fa $e5 $50
    rst $20                                       ; $5283: $e7
    rst $38                                       ; $5284: $ff
    rst $38                                       ; $5285: $ff
    ld d, b                                       ; $5286: $50
    or a                                          ; $5287: $b7
    ld a, [de]                                    ; $5288: $1a
    jr nz, @-$07                                  ; $5289: $20 $f7

    adc e                                         ; $528b: $8b
    ld bc, $fff5                                  ; $528c: $01 $f5 $ff
    ret c                                         ; $528f: $d8

    add a                                         ; $5290: $87
    ld e, e                                       ; $5291: $5b
    ld d, c                                       ; $5292: $51
    ld b, h                                       ; $5293: $44
    ld bc, $48d1                                  ; $5294: $01 $d1 $48
    ld bc, $0808                                  ; $5297: $01 $08 $08
    ld d, c                                       ; $529a: $51
    ld b, b                                       ; $529b: $40
    nop                                           ; $529c: $00
    jr jr_097_52a7                                ; $529d: $18 $08

    ret nz                                        ; $529f: $c0

    and [hl]                                      ; $52a0: $a6
    add hl, bc                                    ; $52a1: $09
    jr nz, jr_097_52a4                            ; $52a2: $20 $00

jr_097_52a4:
    cp $f6                                        ; $52a4: $fe $f6
    ld sp, hl                                     ; $52a6: $f9

jr_097_52a7:
    ld hl, sp-$19                                 ; $52a7: $f8 $e7
    ld d, c                                       ; $52a9: $51
    ld [bc], a                                    ; $52aa: $02
    rst $20                                       ; $52ab: $e7
    ldh a, [$e7]                                  ; $52ac: $f0 $e7
    pop de                                        ; $52ae: $d1
    rst $20                                       ; $52af: $e7
    or b                                          ; $52b0: $b0
    ld [$5510], sp                                ; $52b1: $08 $10 $55
    ld h, b                                       ; $52b4: $60
    db $e3                                        ; $52b5: $e3
    inc [hl]                                      ; $52b6: $34
    ld [$0838], sp                                ; $52b7: $08 $38 $08
    ei                                            ; $52ba: $fb
    rst $38                                       ; $52bb: $ff
    ld [hl], l                                    ; $52bc: $75
    rst $38                                       ; $52bd: $ff
    xor $8b                                       ; $52be: $ee $8b

Call_097_52c0:
    inc b                                         ; $52c0: $04
    nop                                           ; $52c1: $00
    ret c                                         ; $52c2: $d8

    add a                                         ; $52c3: $87
    ld [hl], c                                    ; $52c4: $71
    add h                                         ; $52c5: $84
    ld bc, $ac71                                  ; $52c6: $01 $71 $ac
    nop                                           ; $52c9: $00
    inc b                                         ; $52ca: $04
    ld [$611a], sp                                ; $52cb: $08 $1a $61
    rst $08                                       ; $52ce: $cf
    di                                            ; $52cf: $f3
    pop hl                                        ; $52d0: $e1
    ld de, $0820                                  ; $52d1: $11 $20 $08
    push af                                       ; $52d4: $f5
    ld b, $01                                     ; $52d5: $06 $01
    push af                                       ; $52d7: $f5
    inc bc                                        ; $52d8: $03
    rst $38                                       ; $52d9: $ff
    or b                                          ; $52da: $b0
    rst $20                                       ; $52db: $e7
    dec d                                         ; $52dc: $15
    db $e3                                        ; $52dd: $e3
    or b                                          ; $52de: $b0
    jr c, jr_097_52e1                             ; $52df: $38 $00

jr_097_52e1:
    ld [$4008], sp                                ; $52e1: $08 $08 $40
    cp c                                          ; $52e4: $b9
    inc c                                         ; $52e5: $0c
    nop                                           ; $52e6: $00
    ld [$71ff], a                                 ; $52e7: $ea $ff $71
    rst $38                                       ; $52ea: $ff
    ld a, [$00fd]                                 ; $52eb: $fa $fd $00
    ld a, l                                       ; $52ee: $7d
    cp $ee                                        ; $52ef: $fe $ee
    rst $38                                       ; $52f1: $ff
    ld [hl], e                                    ; $52f2: $73
    rst $38                                       ; $52f3: $ff
    db $eb                                        ; $52f4: $eb
    rst $38                                       ; $52f5: $ff
    nop                                           ; $52f6: $00
    ld h, b                                       ; $52f7: $60
    rst $38                                       ; $52f8: $ff
    sbc c                                         ; $52f9: $99
    rst $00                                       ; $52fa: $c7
    ld hl, $b9cf                                  ; $52fb: $21 $cf $b9
    rst $00                                       ; $52fe: $c7
    nop                                           ; $52ff: $00
    ld h, c                                       ; $5300: $61
    rst $08                                       ; $5301: $cf
    xor c                                         ; $5302: $a9
    ld b, a                                       ; $5303: $47
    ld h, c                                       ; $5304: $61
    adc a                                         ; $5305: $8f
    or c                                          ; $5306: $b1
    rst $08                                       ; $5307: $cf
    ld bc, $cfe1                                  ; $5308: $01 $e1 $cf
    ld a, [$f1ff]                                 ; $530b: $fa $ff $f1
    rst $38                                       ; $530e: $ff
    ld a, [$0098]                                 ; $530f: $fa $98 $00
    ld b, h                                       ; $5312: $44
    ld a, [$0828]                                 ; $5313: $fa $28 $08
    rst $38                                       ; $5316: $ff
    ld [hl], b                                    ; $5317: $70
    rst $38                                       ; $5318: $ff
    ld d, h                                       ; $5319: $54
    add hl, bc                                    ; $531a: $09
    db $ec                                        ; $531b: $ec
    jp $e909                                      ; $531c: $c3 $09 $e9


    rst $00                                       ; $531f: $c7
    ld hl, sp-$39                                 ; $5320: $f8 $c7
    inc b                                         ; $5322: $04
    ld [$c7f1], sp                                ; $5323: $08 $f1 $c7
    ld c, b                                       ; $5326: $48
    add hl, bc                                    ; $5327: $09
    ld e, d                                       ; $5328: $5a
    ret                                           ; $5329: $c9


    inc b                                         ; $532a: $04
    db $10                                        ; $532b: $10
    db $d3                                        ; $532c: $d3
    inc b                                         ; $532d: $04
    db $10                                        ; $532e: $10
    ld d, b                                       ; $532f: $50
    ld a, [hl-]                                   ; $5330: $3a
    cp $5b                                        ; $5331: $fe $5b
    ld [de], a                                    ; $5333: $12
    ld sp, hl                                     ; $5334: $f9
    ld [bc], a                                    ; $5335: $02
    rst $20                                       ; $5336: $e7
    ld [hl], c                                    ; $5337: $71
    rst $20                                       ; $5338: $e7
    ld sp, hl                                     ; $5339: $f9
    rst $20                                       ; $533a: $e7
    pop af                                        ; $533b: $f1
    inc b                                         ; $533c: $04
    nop                                           ; $533d: $00
    ld d, c                                       ; $533e: $51
    inc c                                         ; $533f: $0c
    or a                                          ; $5340: $b7
    or c                                          ; $5341: $b1
    ld [hl], a                                    ; $5342: $77
    pop af                                        ; $5343: $f1
    ldh a, [rP1]                                  ; $5344: $f0 $00
    ret nc                                        ; $5346: $d0

    ld b, b                                       ; $5347: $40
    rst $38                                       ; $5348: $ff
    push de                                       ; $5349: $d5
    dec c                                         ; $534a: $0d
    rst $38                                       ; $534b: $ff
    ret                                           ; $534c: $c9


    sub a                                         ; $534d: $97
    ld d, e                                       ; $534e: $53
    inc a                                         ; $534f: $3c
    jr nz, jr_097_535a                            ; $5350: $20 $08

    ld [$4053], sp                                ; $5352: $08 $53 $40
    ld b, b                                       ; $5355: $40
    adc l                                         ; $5356: $8d
    sbc d                                         ; $5357: $9a
    ld a, [bc]                                    ; $5358: $0a
    db $fd                                        ; $5359: $fd

jr_097_535a:
    rst $38                                       ; $535a: $ff
    pop af                                        ; $535b: $f1
    ldh a, [rP1]                                  ; $535c: $f0 $00
    inc b                                         ; $535e: $04
    ld [$f8b1], sp                                ; $535f: $08 $b1 $f8
    nop                                           ; $5362: $00
    ld d, b                                       ; $5363: $50
    pop hl                                        ; $5364: $e1
    ldh a, [rNR10]                                ; $5365: $f0 $10
    push de                                       ; $5367: $d5
    jr c, jr_097_537a                             ; $5368: $38 $10

    dec sp                                        ; $536a: $3b
    rst $08                                       ; $536b: $cf
    set 6, c                                      ; $536c: $cb $f1
    dec d                                         ; $536e: $15
    ld hl, sp-$02                                 ; $536f: $f8 $fe
    sbc $d0                                       ; $5371: $de $d0
    ld bc, $d053                                  ; $5373: $01 $53 $d0
    ld bc, $0452                                  ; $5376: $01 $52 $04
    db $10                                        ; $5379: $10

jr_097_537a:
    ld d, $e1                                     ; $537a: $16 $e1
    rra                                           ; $537c: $1f
    ld d, d                                       ; $537d: $52
    ret nc                                        ; $537e: $d0

    ld bc, $38fd                                  ; $537f: $01 $fd $38
    db $10                                        ; $5382: $10
    inc a                                         ; $5383: $3c
    ld [$a0fe], sp                                ; $5384: $08 $fe $a0
    ld b, b                                       ; $5387: $40
    nop                                           ; $5388: $00
    and c                                         ; $5389: $a1
    ldh a, [rP1]                                  ; $538a: $f0 $00
    xor c                                         ; $538c: $a9
    rst $00                                       ; $538d: $c7
    ld [hl], l                                    ; $538e: $75
    jp Jump_000_00a9                              ; $538f: $c3 $a9 $00


    rst $00                                       ; $5392: $c7
    dec a                                         ; $5393: $3d
    jp $c7ab                                      ; $5394: $c3 $ab $c7


    dec h                                         ; $5397: $25
    res 5, e                                      ; $5398: $cb $ab
    ld a, [bc]                                    ; $539a: $0a
    rst $38                                       ; $539b: $ff
    sub c                                         ; $539c: $91
    rst $38                                       ; $539d: $ff
    xor d                                         ; $539e: $aa
    ld a, b                                       ; $539f: $78
    nop                                           ; $53a0: $00
    xor d                                         ; $53a1: $aa
    ld [$8010], sp                                ; $53a2: $08 $10 $80
    nop                                           ; $53a5: $00
    rst $38                                       ; $53a6: $ff
    db $e3                                        ; $53a7: $e3
    sbc a                                         ; $53a8: $9f
    jp nc, $e30f                                  ; $53a9: $d2 $0f $e3

    rra                                           ; $53ac: $1f
    jp nc, Jump_000_0f2e                          ; $53ad: $d2 $2e $0f

    jp Jump_000_0004                              ; $53b0: $c3 $04 $00


    add e                                         ; $53b3: $83
    ld [$3400], sp                                ; $53b4: $08 $00 $34
    ld [$3804], sp                                ; $53b7: $08 $04 $38
    db $fc                                        ; $53ba: $fc
    adc [hl]                                      ; $53bb: $8e
    ld a, h                                       ; $53bc: $7c
    add hl, hl                                    ; $53bd: $29
    rst $08                                       ; $53be: $cf
    rst $18                                       ; $53bf: $df
    ccf                                           ; $53c0: $3f

jr_097_53c1:
    sbc h                                         ; $53c1: $9c
    ld a, [de]                                    ; $53c2: $1a
    inc b                                         ; $53c3: $04
    ld a, [bc]                                    ; $53c4: $0a
    inc b                                         ; $53c5: $04
    jr z, jr_097_53c1                             ; $53c6: $28 $f9

    adc l                                         ; $53c8: $8d
    db $10                                        ; $53c9: $10
    ld [bc], a                                    ; $53ca: $02
    rst $38                                       ; $53cb: $ff
    rst $38                                       ; $53cc: $ff
    ld [hl], a                                    ; $53cd: $77
    ld b, e                                       ; $53ce: $43
    inc hl                                        ; $53cf: $23
    ld [$5508], sp                                ; $53d0: $08 $08 $55
    ld h, b                                       ; $53d3: $60
    ld [bc], a                                    ; $53d4: $02
    sbc a                                         ; $53d5: $9f
    adc b                                         ; $53d6: $88
    nop                                           ; $53d7: $00
    sbc a                                         ; $53d8: $9f
    jp nc, Jump_000_0004                          ; $53d9: $d2 $04 $00

    ld [$9008], sp                                ; $53dc: $08 $08 $90
    ld [$48f0], sp                                ; $53df: $08 $f0 $48
    xor h                                         ; $53e2: $ac
    add hl, bc                                    ; $53e3: $09
    ld d, h                                       ; $53e4: $54
    ld d, l                                       ; $53e5: $55
    jr z, jr_097_53f8                             ; $53e6: $28 $10

    cp e                                          ; $53e8: $bb
    inc l                                         ; $53e9: $2c
    nop                                           ; $53ea: $00
    xor $30                                       ; $53eb: $ee $30
    db $10                                        ; $53ed: $10
    ld a, [c]                                     ; $53ee: $f2
    rrca                                          ; $53ef: $0f
    nop                                           ; $53f0: $00
    db $eb                                        ; $53f1: $eb
    rla                                           ; $53f2: $17
    ld a, [c]                                     ; $53f3: $f2
    rrca                                          ; $53f4: $0f
    xor e                                         ; $53f5: $ab
    rla                                           ; $53f6: $17
    ld [c], a                                     ; $53f7: $e2

jr_097_53f8:
    rra                                           ; $53f8: $1f
    ld [$17ab], sp                                ; $53f9: $08 $ab $17
    db $e3                                        ; $53fc: $e3
    rra                                           ; $53fd: $1f
    ret nc                                        ; $53fe: $d0

    add hl, hl                                    ; $53ff: $29
    ld a, [$fdff]                                 ; $5400: $fa $ff $fd
    ld a, [bc]                                    ; $5403: $0a
    ei                                            ; $5404: $fb
    or $ef                                        ; $5405: $f6 $ef
    db $fd                                        ; $5407: $fd
    xor h                                         ; $5408: $ac
    nop                                           ; $5409: $00
    ld de, $00b0                                  ; $540a: $11 $b0 $00
    ld d, l                                       ; $540d: $55
    add b                                         ; $540e: $80
    ld [$0020], sp                                ; $540f: $08 $20 $00
    rst $38                                       ; $5412: $ff
    and e                                         ; $5413: $a3
    rra                                           ; $5414: $1f
    db $e3                                        ; $5415: $e3
    rra                                           ; $5416: $1f
    and a                                         ; $5417: $a7

jr_097_5418:
    or l                                          ; $5418: $b5
    inc b                                         ; $5419: $04
    db $10                                        ; $541a: $10
    and e                                         ; $541b: $a3
    inc b                                         ; $541c: $04
    db $10                                        ; $541d: $10
    and b                                         ; $541e: $a0
    add hl, bc                                    ; $541f: $09
    ld [$0238], a                                 ; $5420: $ea $38 $02
    ld [$1008], a                                 ; $5423: $ea $08 $10
    ld [bc], a                                    ; $5426: $02
    ldh [rIE], a                                  ; $5427: $e0 $ff
    cp d                                          ; $5429: $ba
    push hl                                       ; $542a: $e5
    dec d                                         ; $542b: $15
    db $e3                                        ; $542c: $e3
    inc b                                         ; $542d: $04
    ld [$003a], sp                                ; $542e: $08 $3a $00
    push bc                                       ; $5431: $c5
    dec [hl]                                      ; $5432: $35
    jp $c5aa                                      ; $5433: $c3 $aa $c5


jr_097_5436:
    dec a                                         ; $5436: $3d
    jp $d4ea                                      ; $5437: $c3 $ea $d4


    call nc, Call_000_1801                        ; $543a: $d4 $01 $18
    ld [$1ce2], sp                                ; $543d: $08 $e2 $1c
    nop                                           ; $5440: $00
    add sp, -$20                                  ; $5441: $e8 $e0
    ld bc, $efd1                                  ; $5443: $01 $d1 $ef
    nop                                           ; $5446: $00
    ld l, c                                       ; $5447: $69
    rst $30                                       ; $5448: $f7
    and l                                         ; $5449: $a5
    ei                                            ; $544a: $fb
    add hl, de                                    ; $544b: $19
    rst $20                                       ; $544c: $e7
    inc [hl]                                      ; $544d: $34
    rlc e                                         ; $544e: $cb $03
    add hl, hl                                    ; $5450: $29
    rst $00                                       ; $5451: $c7
    or b                                          ; $5452: $b0
    rst $08                                       ; $5453: $cf
    add hl, hl                                    ; $5454: $29
    rst $00                                       ; $5455: $c7
    call nc, $d809                                ; $5456: $d4 $09 $d8
    add hl, bc                                    ; $5459: $09
    ld d, h                                       ; $545a: $54
    ld a, [c]                                     ; $545b: $f2
    call c, $f801                                 ; $545c: $dc $01 $f8
    ldh [rSB], a                                  ; $545f: $e0 $01
    ld a, [hl+]                                   ; $5461: $2a
    inc [hl]                                      ; $5462: $34
    nop                                           ; $5463: $00
    ld a, [hl+]                                   ; $5464: $2a
    push bc                                       ; $5465: $c5
    ld b, [hl]                                    ; $5466: $46
    dec l                                         ; $5467: $2d
    inc b                                         ; $5468: $04
    jr nz, jr_097_54a8                            ; $5469: $20 $3d

    jp $14e0                                      ; $546b: $c3 $e0 $14


    ld [bc], a                                    ; $546e: $02
    inc b                                         ; $546f: $04
    ld c, b                                       ; $5470: $48
    jr nc, jr_097_5418                            ; $5471: $30 $a5

    inc [hl]                                      ; $5473: $34
    nop                                           ; $5474: $00
    jr nz, jr_097_547b                            ; $5475: $20 $04

    ld b, b                                       ; $5477: $40
    ldh a, [rIE]                                  ; $5478: $f0 $ff
    ld [bc], a                                    ; $547a: $02

jr_097_547b:
    ld e, b                                       ; $547b: $58
    jr z, jr_097_54e6                             ; $547c: $28 $68

    ld bc, $2910                                  ; $547e: $01 $10 $29
    rst $00                                       ; $5481: $c7
    ld a, l                                       ; $5482: $7d
    inc b                                         ; $5483: $04
    nop                                           ; $5484: $00
    sub l                                         ; $5485: $95
    db $eb                                        ; $5486: $eb
    ld e, b                                       ; $5487: $58
    rst $38                                       ; $5488: $ff
    ld b, h                                       ; $5489: $44
    rlca                                          ; $548a: $07
    inc a                                         ; $548b: $3c
    jr nz, @+$63                                  ; $548c: $20 $61

    cp $f0                                        ; $548e: $fe $f0
    ld a, [hl]                                    ; $5490: $7e
    nop                                           ; $5491: $00
    ret nc                                        ; $5492: $d0

    rst $38                                       ; $5493: $ff
    jr z, jr_097_5436                             ; $5494: $28 $a0

    rst $38                                       ; $5496: $ff
    inc a                                         ; $5497: $3c
    jr c, jr_097_54d3                             ; $5498: $38 $39

jr_097_549a:
    ld c, b                                       ; $549a: $48
    nop                                           ; $549b: $00
    cp c                                          ; $549c: $b9
    ld b, a                                       ; $549d: $47
    ldh a, [$92]                                  ; $549e: $f0 $92
    ld a, h                                       ; $54a0: $7c
    ld [$70fd], sp                                ; $54a1: $08 $fd $70
    ld b, [hl]                                    ; $54a4: $46
    nop                                           ; $54a5: $00
    ld [hl], h                                    ; $54a6: $74

jr_097_54a7:
    ei                                            ; $54a7: $fb

jr_097_54a8:
    inc c                                         ; $54a8: $0c
    ld [$2049], sp                                ; $54a9: $08 $49 $20
    rst $38                                       ; $54ac: $ff
    inc b                                         ; $54ad: $04
    and $00                                       ; $54ae: $e6 $00
    ld bc, $48ff                                  ; $54b0: $01 $ff $48
    rst $30                                       ; $54b3: $f7
    ld bc, $fe00                                  ; $54b4: $01 $00 $fe
    nop                                           ; $54b7: $00

jr_097_54b8:
    rst $38                                       ; $54b8: $ff
    ld de, $08ef                                  ; $54b9: $11 $ef $08
    rst $30                                       ; $54bc: $f7
    add d                                         ; $54bd: $82
    adc b                                         ; $54be: $88
    or $00                                        ; $54bf: $f6 $00
    ld [de], a                                    ; $54c1: $12
    db $ed                                        ; $54c2: $ed
    nop                                           ; $54c3: $00
    ld d, $10                                     ; $54c4: $16 $10
    jr nz, jr_097_54a7                            ; $54c6: $20 $df

    inc h                                         ; $54c8: $24
    db $10                                        ; $54c9: $10
    srl c                                         ; $54ca: $cb $39
    rst $00                                       ; $54cc: $c7
    inc b                                         ; $54cd: $04
    ld [$cb34], sp                                ; $54ce: $08 $34 $cb
    jr c, jr_097_549a                             ; $54d1: $38 $c7

jr_097_54d3:
    ld a, [de]                                    ; $54d3: $1a
    inc [hl]                                      ; $54d4: $34
    db $eb                                        ; $54d5: $eb
    ld e, h                                       ; $54d6: $5c
    ld a, [hl]                                    ; $54d7: $7e
    nop                                           ; $54d8: $00
    ld b, b                                       ; $54d9: $40
    jr z, @+$7a                                   ; $54da: $28 $78

    call nz, Call_097_6000                        ; $54dc: $c4 $00 $60
    ld l, d                                       ; $54df: $6a
    rst $38                                       ; $54e0: $ff
    db $e4                                        ; $54e1: $e4
    ld de, $02c4                                  ; $54e2: $11 $c4 $02
    dec hl                                        ; $54e5: $2b

jr_097_54e6:
    ret z                                         ; $54e6: $c8

    ld [bc], a                                    ; $54e7: $02
    xor d                                         ; $54e8: $aa
    inc b                                         ; $54e9: $04
    ld [$51ff], sp                                ; $54ea: $08 $ff $51
    ret nz                                        ; $54ed: $c0

    jr nz, jr_097_54f1                            ; $54ee: $20 $01

    ret nz                                        ; $54f0: $c0

jr_097_54f1:
    nop                                           ; $54f1: $00
    ld bc, $ffc0                                  ; $54f2: $01 $c0 $ff
    ret z                                         ; $54f5: $c8

    inc c                                         ; $54f6: $0c
    nop                                           ; $54f7: $00
    ld [$1fa3], sp                                ; $54f8: $08 $a3 $1f
    rst $10                                       ; $54fb: $d7
    rrca                                          ; $54fc: $0f
    inc b                                         ; $54fd: $04
    jr jr_097_54a7                                ; $54fe: $18 $a7

    rra                                           ; $5500: $1f
    jp Jump_000_3f0f                              ; $5501: $c3 $0f $3f


    and a                                         ; $5504: $a7
    rra                                           ; $5505: $1f

Call_097_5506:
    cp $a8                                        ; $5506: $fe $a8

jr_097_5508:
    ld [hl+], a                                   ; $5508: $22
    ld [$0c08], sp                                ; $5509: $08 $08 $0c
    ld [$0838], sp                                ; $550c: $08 $38 $08
    ld b, b                                       ; $550f: $40
    ld a, [hl+]                                   ; $5510: $2a
    inc b                                         ; $5511: $04
    inc bc                                        ; $5512: $03
    ld a, [hl-]                                   ; $5513: $3a
    rst $00                                       ; $5514: $c7
    dec h                                         ; $5515: $25
    rst $08                                       ; $5516: $cf
    ld [hl-], a                                   ; $5517: $32
    rst $08                                       ; $5518: $cf
    jr jr_097_5540                                ; $5519: $18 $25

    rst $08                                       ; $551b: $cf
    ret nz                                        ; $551c: $c0

    ld b, b                                       ; $551d: $40
    nop                                           ; $551e: $00
    inc b                                         ; $551f: $04
    ld c, b                                       ; $5520: $48
    add e                                         ; $5521: $83
    ccf                                           ; $5522: $3f
    rst $20                                       ; $5523: $e7
    inc bc                                        ; $5524: $03
    rra                                           ; $5525: $1f
    add e                                         ; $5526: $83
    ccf                                           ; $5527: $3f

Call_097_5528:
    push hl                                       ; $5528: $e5
    rra                                           ; $5529: $1f
    adc e                                         ; $552a: $8b
    inc b                                         ; $552b: $04

jr_097_552c:
    jr nz, @+$3a                                  ; $552c: $20 $38

    jr z, jr_097_54b8                             ; $552e: $28 $88

    ld b, b                                       ; $5530: $40
    jr z, @+$34                                   ; $5531: $28 $32

    rst $08                                       ; $5533: $cf
    ld h, a                                       ; $5534: $67
    jr c, jr_097_5537                             ; $5535: $38 $00

jr_097_5537:
    sub a                                         ; $5537: $97
    rst $38                                       ; $5538: $ff
    ld c, $2a                                     ; $5539: $0e $2a
    rst $38                                       ; $553b: $ff
    jr nz, jr_097_5508                            ; $553c: $20 $ca

    nop                                           ; $553e: $00
    ld [bc], a                                    ; $553f: $02

jr_097_5540:
    ld a, $10                                     ; $5540: $3e $10
    ret nc                                        ; $5542: $d0

    ld l, b                                       ; $5543: $68
    ld [bc], a                                    ; $5544: $02
    ld c, b                                       ; $5545: $48
    add b                                         ; $5546: $80
    cp h                                          ; $5547: $bc
    ld bc, $ff40                                  ; $5548: $01 $40 $ff
    inc b                                         ; $554b: $04
    ei                                            ; $554c: $fb
    adc a                                         ; $554d: $8f
    ccf                                           ; $554e: $3f

jr_097_554f:
    push bc                                       ; $554f: $c5
    ld b, b                                       ; $5550: $40
    ccf                                           ; $5551: $3f
    inc b                                         ; $5552: $04
    jr jr_097_552c                                ; $5553: $18 $d7

    ccf                                           ; $5555: $3f
    rst $08                                       ; $5556: $cf
    ccf                                           ; $5557: $3f
    sub a                                         ; $5558: $97
    ld a, a                                       ; $5559: $7f
    jp nz, Jump_000_1b26                          ; $555a: $c2 $26 $1b

    add [hl]                                      ; $555d: $86
    dec a                                         ; $555e: $3d
    nop                                           ; $555f: $00
    rst $38                                       ; $5560: $ff
    adc b                                         ; $5561: $88
    ld a, a                                       ; $5562: $7f
    db $ec                                        ; $5563: $ec
    ld [$0400], sp                                ; $5564: $08 $00 $04
    rst $38                                       ; $5567: $ff
    ld [$41f7], sp                                ; $5568: $08 $f7 $41
    cp [hl]                                       ; $556b: $be
    or $08                                        ; $556c: $f6 $08
    jr nz, jr_097_554f                            ; $556e: $20 $df

    ld e, d                                       ; $5570: $5a
    ld [bc], a                                    ; $5571: $02
    inc d                                         ; $5572: $14
    ld bc, $4c41                                  ; $5573: $01 $41 $4c
    nop                                           ; $5576: $00
    jr @+$03                                      ; $5577: $18 $01

    cp $34                                        ; $5579: $fe $34
    ld [$028f], sp                                ; $557b: $08 $8f $02
    ld a, a                                       ; $557e: $7f
    rst $18                                       ; $557f: $df
    rst $38                                       ; $5580: $ff
    ld l, a                                       ; $5581: $6f
    rst $38                                       ; $5582: $ff
    sbc a                                         ; $5583: $9f
    ld d, h                                       ; $5584: $54
    nop                                           ; $5585: $00
    ld [de], a                                    ; $5586: $12
    adc h                                         ; $5587: $8c
    ld l, [hl]                                    ; $5588: $6e
    ld b, e                                       ; $5589: $43
    db $f4                                        ; $558a: $f4
    rst $38                                       ; $558b: $ff
    adc d                                         ; $558c: $8a
    ld [hl], h                                    ; $558d: $74
    nop                                           ; $558e: $00
    inc h                                         ; $558f: $24
    ld a, [bc]                                    ; $5590: $0a
    ld [$01ff], a                                 ; $5591: $ea $ff $01
    sub h                                         ; $5594: $94
    db $e3                                        ; $5595: $e3
    ld a, [c]                                     ; $5596: $f2
    db $fc                                        ; $5597: $fc
    inc e                                         ; $5598: $1c
    rst $38                                       ; $5599: $ff
    adc a                                         ; $559a: $8f
    ld c, b                                       ; $559b: $48
    ld bc, $28b1                                  ; $559c: $01 $b1 $28
    ld a, [bc]                                    ; $559f: $0a
    and l                                         ; $55a0: $a5
    or d                                          ; $55a1: $b2
    nop                                           ; $55a2: $00
    inc b                                         ; $55a3: $04
    jr @-$77                                      ; $55a4: $18 $87

    ccf                                           ; $55a6: $3f
    ld a, [$01b0]                                 ; $55a7: $fa $b0 $01
    xor [hl]                                      ; $55aa: $ae
    inc b                                         ; $55ab: $04
    ld [$b8f2], sp                                ; $55ac: $08 $f2 $b8
    ld bc, $bcf8                                  ; $55af: $01 $f8 $bc
    ld bc, $0a54                                  ; $55b2: $01 $54 $0a
    ld e, b                                       ; $55b5: $58
    ld a, [bc]                                    ; $55b6: $0a
    ld [hl+], a                                   ; $55b7: $22
    pop hl                                        ; $55b8: $e1
    ld a, d                                       ; $55b9: $7a
    ld [$1078], sp                                ; $55ba: $08 $78 $10
    inc b                                         ; $55bd: $04
    jr c, @+$03                                   ; $55be: $38 $01

    cp $01                                        ; $55c0: $fe $01
    cp $34                                        ; $55c2: $fe $34
    ld [$a508], sp                                ; $55c4: $08 $08 $a5
    rra                                           ; $55c7: $1f
    sub a                                         ; $55c8: $97
    cpl                                           ; $55c9: $2f
    inc b                                         ; $55ca: $04
    ld [$1fe7], sp                                ; $55cb: $08 $e7 $1f
    sub e                                         ; $55ce: $93
    ld h, d                                       ; $55cf: $62
    cpl                                           ; $55d0: $2f
    ld [hl+], a                                   ; $55d1: $22
    ld e, b                                       ; $55d2: $58
    inc h                                         ; $55d3: $24
    jr @+$03                                      ; $55d4: $18 $01

    cp $21                                        ; $55d6: $fe $21
    ld a, [hl+]                                   ; $55d8: $2a
    nop                                           ; $55d9: $00
    add hl, bc                                    ; $55da: $09
    nop                                           ; $55db: $00
    or $21                                        ; $55dc: $f6 $21
    sbc $01                                       ; $55de: $de $01
    cp $c7                                        ; $55e0: $fe $c7
    ccf                                           ; $55e2: $3f
    sub e                                         ; $55e3: $93
    ld b, b                                       ; $55e4: $40
    cpl                                           ; $55e5: $2f

jr_097_55e6:
    inc b                                         ; $55e6: $04
    jr jr_097_5634                                ; $55e7: $18 $4b

    ccf                                           ; $55e9: $3f
    add l                                         ; $55ea: $85
    ld a, a                                       ; $55eb: $7f
    ld c, e                                       ; $55ec: $4b
    ccf                                           ; $55ed: $3f
    or h                                          ; $55ee: $b4
    ld l, d                                       ; $55ef: $6a
    jr jr_097_55e6                                ; $55f0: $18 $f4

    call c, $7001                                 ; $55f2: $dc $01 $70
    ld [$cef8], sp                                ; $55f5: $08 $f8 $ce
    stop                                          ; $55f8: $10 $00
    rst $38                                       ; $55fa: $ff
    inc c                                         ; $55fb: $0c
    add b                                         ; $55fc: $80
    ld a, a                                       ; $55fd: $7f
    inc b                                         ; $55fe: $04
    ei                                            ; $55ff: $fb
    db $10                                        ; $5600: $10
    ld de, $00d2                                  ; $5601: $11 $d2 $00
    add hl, bc                                    ; $5604: $09
    or $00                                        ; $5605: $f6 $00
    add c                                         ; $5607: $81
    cp $51                                        ; $5608: $fe $51
    cp $81                                        ; $560a: $fe $81
    cp $05                                        ; $560c: $fe $05
    ld a, [$40c4]                                 ; $560e: $fa $c4 $40
    ld [$0834], sp                                ; $5611: $08 $34 $08
    dec b                                         ; $5614: $05
    ld a, a                                       ; $5615: $7f
    ld c, a                                       ; $5616: $4f
    inc b                                         ; $5617: $04
    nop                                           ; $5618: $00
    rst $08                                       ; $5619: $cf
    ccf                                           ; $561a: $3f
    ld b, e                                       ; $561b: $43
    rla                                           ; $561c: $17
    ld [$f800], a                                 ; $561d: $ea $00 $f8
    rst $38                                       ; $5620: $ff
    ld sp, hl                                     ; $5621: $f9
    cp $38                                        ; $5622: $fe $38
    ld [$083c], sp                                ; $5624: $08 $3c $08
    ret c                                         ; $5627: $d8

    ld a, [bc]                                    ; $5628: $0a
    ld [$0a08], sp                                ; $5629: $08 $08 $0a
    ld b, h                                       ; $562c: $44
    inc a                                         ; $562d: $3c
    nop                                           ; $562e: $00
    jr jr_097_563a                                ; $562f: $18 $09

    nop                                           ; $5631: $00
    rst $38                                       ; $5632: $ff
    ld [bc], a                                    ; $5633: $02

jr_097_5634:
    ld b, b                                       ; $5634: $40
    db $fd                                        ; $5635: $fd
    inc b                                         ; $5636: $04
    ld [$7f80], sp                                ; $5637: $08 $80 $7f

jr_097_563a:
    db $10                                        ; $563a: $10
    rst $28                                       ; $563b: $ef
    ld b, d                                       ; $563c: $42
    cp a                                          ; $563d: $bf
    sbc c                                         ; $563e: $99
    ld [hl+], a                                   ; $563f: $22
    ld a, [bc]                                    ; $5640: $0a
    inc b                                         ; $5641: $04
    ei                                            ; $5642: $fb
    ld h, $09                                     ; $5643: $26 $09
    ld l, d                                       ; $5645: $6a
    ld bc, $02bf                                  ; $5646: $01 $bf $02
    inc l                                         ; $5649: $2c
    ld bc, $4041                                  ; $564a: $01 $41 $40
    inc d                                         ; $564d: $14
    nop                                           ; $564e: $00
    inc hl                                        ; $564f: $23
    rst $38                                       ; $5650: $ff
    ld [$21ff], sp                                ; $5651: $08 $ff $21
    ld a, [hl+]                                   ; $5654: $2a
    nop                                           ; $5655: $00
    ret nc                                        ; $5656: $d0

    ld a, [hl]                                    ; $5657: $7e

Call_097_5658:
    add hl, bc                                    ; $5658: $09
    ld d, d                                       ; $5659: $52
    ld a, [bc]                                    ; $565a: $0a
    jp z, $0198                                   ; $565b: $ca $98 $01

    nop                                           ; $565e: $00
    rst $38                                       ; $565f: $ff
    ld hl, $a0de                                  ; $5660: $21 $de $a0
    ld d, b                                       ; $5663: $50
    ld a, [bc]                                    ; $5664: $0a
    db $10                                        ; $5665: $10
    ld l, b                                       ; $5666: $68
    add hl, bc                                    ; $5667: $09
    nop                                           ; $5668: $00
    ld [$8008], sp                                ; $5669: $08 $08 $80
    add b                                         ; $566c: $80
    ld bc, $0900                                  ; $566d: $01 $00 $09
    nop                                           ; $5670: $00
    ld d, h                                       ; $5671: $54
    nop                                           ; $5672: $00
    xor a                                         ; $5673: $af
    nop                                           ; $5674: $00
    ld a, d                                       ; $5675: $7a
    add hl, bc                                    ; $5676: $09
    sub b                                         ; $5677: $90
    ld bc, $0800                                  ; $5678: $01 $00 $08
    ld c, d                                       ; $567b: $4a
    ld b, $00                                     ; $567c: $06 $00
    and d                                         ; $567e: $a2
    nop                                           ; $567f: $00
    ld b, l                                       ; $5680: $45
    nop                                           ; $5681: $00
    dec b                                         ; $5682: $05
    xor e                                         ; $5683: $ab
    nop                                           ; $5684: $00
    rst $18                                       ; $5685: $df
    db $10                                        ; $5686: $10
    db $10                                        ; $5687: $10
    ld [de], a                                    ; $5688: $12
    nop                                           ; $5689: $00
    ld hl, $001e                                  ; $568a: $21 $1e $00
    jr @-$54                                      ; $568d: $18 $aa

    nop                                           ; $568f: $00
    ld a, l                                       ; $5690: $7d
    sbc b                                         ; $5691: $98
    ld de, $0820                                  ; $5692: $11 $20 $08
    ld c, b                                       ; $5695: $48
    nop                                           ; $5696: $00
    ld [bc], a                                    ; $5697: $02
    rlca                                          ; $5698: $07
    nop                                           ; $5699: $00
    jr z, jr_097_569c                             ; $569a: $28 $00

jr_097_569c:
    call nc, $8800                                ; $569c: $d4 $00 $88
    db $10                                        ; $569f: $10
    xor [hl]                                      ; $56a0: $ae
    add hl, de                                    ; $56a1: $19
    ld l, h                                       ; $56a2: $6c
    ld [$9480], sp                                ; $56a3: $08 $80 $94
    jr jr_097_56ac                                ; $56a6: $18 $04

    ei                                            ; $56a8: $fb
    ld [$44f7], sp                                ; $56a9: $08 $f7 $44

jr_097_56ac:
    cp e                                          ; $56ac: $bb
    db $10                                        ; $56ad: $10
    ld b, [hl]                                    ; $56ae: $46
    rst $28                                       ; $56af: $ef
    xor [hl]                                      ; $56b0: $ae
    add hl, bc                                    ; $56b1: $09
    db $10                                        ; $56b2: $10
    rst $28                                       ; $56b3: $ef
    ld b, b                                       ; $56b4: $40
    ret z                                         ; $56b5: $c8

    ld bc, $08f0                                  ; $56b6: $01 $f0 $08
    ld d, c                                       ; $56b9: $51
    dec b                                         ; $56ba: $05
    cp [hl]                                       ; $56bb: $be
    inc b                                         ; $56bc: $04
    ei                                            ; $56bd: $fb
    ld b, b                                       ; $56be: $40
    cp a                                          ; $56bf: $bf
    or h                                          ; $56c0: $b4
    ld [$aa41], sp                                ; $56c1: $08 $41 $aa
    jr nz, jr_097_56f7                            ; $56c4: $20 $31

    add b                                         ; $56c6: $80
    ld a, a                                       ; $56c7: $7f
    ret nc                                        ; $56c8: $d0

    ld [bc], a                                    ; $56c9: $02
    ld [hl], b                                    ; $56ca: $70
    db $10                                        ; $56cb: $10
    ld a, [hl+]                                   ; $56cc: $2a
    nop                                           ; $56cd: $00
    ld d, l                                       ; $56ce: $55
    ld e, a                                       ; $56cf: $5f
    nop                                           ; $56d0: $00
    ld h, b                                       ; $56d1: $60
    ld d, l                                       ; $56d2: $55
    ld a, e                                       ; $56d3: $7b
    ld [$007f], sp                                ; $56d4: $08 $7f $00
    dec b                                         ; $56d7: $05
    ld bc, $03aa                                  ; $56d8: $01 $aa $03
    ld d, a                                       ; $56db: $57
    nop                                           ; $56dc: $00
    inc bc                                        ; $56dd: $03
    xor [hl]                                      ; $56de: $ae
    rlca                                          ; $56df: $07
    ld e, l                                       ; $56e0: $5d
    rrca                                          ; $56e1: $0f
    dec bc                                        ; $56e2: $0b
    rrca                                          ; $56e3: $0f
    ld d, $00                                     ; $56e4: $16 $00
    ld e, $c0                                     ; $56e6: $1e $c0
    ret nz                                        ; $56e8: $c0

    ld [hl], l                                    ; $56e9: $75
    ldh [$ea], a                                  ; $56ea: $e0 $ea
    ret nz                                        ; $56ec: $c0

    push de                                       ; $56ed: $d5
    db $10                                        ; $56ee: $10

jr_097_56ef:
    ret nz                                        ; $56ef: $c0

    xor d                                         ; $56f0: $aa
    add b                                         ; $56f1: $80
    jr nz, jr_097_570c                            ; $56f2: $20 $18

    ld b, $04                                     ; $56f4: $06 $04
    ld d, a                                       ; $56f6: $57

jr_097_56f7:
    ld [bc], a                                    ; $56f7: $02
    ld b, c                                       ; $56f8: $41
    xor [hl]                                      ; $56f9: $ae
    inc b                                         ; $56fa: $04
    jr nc, jr_097_5703                            ; $56fb: $30 $06

    ld b, $00                                     ; $56fd: $06 $00
    rst $38                                       ; $56ff: $ff
    jr z, jr_097_5762                             ; $5700: $28 $60

    nop                                           ; $5702: $00

jr_097_5703:
    rst $10                                       ; $5703: $d7
    inc l                                         ; $5704: $2c
    dec bc                                        ; $5705: $0b

Call_097_5706:
    db $10                                        ; $5706: $10
    add hl, bc                                    ; $5707: $09
    ld [$0422], sp                                ; $5708: $08 $22 $04
    sub b                                         ; $570b: $90

jr_097_570c:
    ld a, d                                       ; $570c: $7a
    nop                                           ; $570d: $00
    ld a, h                                       ; $570e: $7c
    db $10                                        ; $570f: $10
    inc h                                         ; $5710: $24
    ld hl, $42e3                                  ; $5711: $21 $e3 $42
    ld [bc], a                                    ; $5714: $02
    jr c, jr_097_5719                             ; $5715: $38 $02

    ld d, [hl]                                    ; $5717: $56
    dec bc                                        ; $5718: $0b

jr_097_5719:
    ld [$80f7], sp                                ; $5719: $08 $f7 $80
    ld b, h                                       ; $571c: $44
    ld [de], a                                    ; $571d: $12
    sub d                                         ; $571e: $92
    ld [$4cc8], sp                                ; $571f: $08 $c8 $4c
    dec bc                                        ; $5722: $0b
    ld h, d                                       ; $5723: $62
    dec bc                                        ; $5724: $0b
    add b                                         ; $5725: $80
    add b                                         ; $5726: $80
    ld [c], a                                     ; $5727: $e2
    db $10                                        ; $5728: $10
    ld [hl+], a                                   ; $5729: $22
    nop                                           ; $572a: $00
    ld [$0008], sp                                ; $572b: $08 $08 $00
    sub l                                         ; $572e: $95
    nop                                           ; $572f: $00
    ld a, [hl-]                                   ; $5730: $3a
    nop                                           ; $5731: $00
    add hl, de                                    ; $5732: $19
    add b                                         ; $5733: $80
    sub b                                         ; $5734: $90
    nop                                           ; $5735: $00
    inc de                                        ; $5736: $13
    ld b, d                                       ; $5737: $42
    nop                                           ; $5738: $00
    xor b                                         ; $5739: $a8
    ld [de], a                                    ; $573a: $12
    ld bc, $00fb                                  ; $573b: $01 $fb $00
    add h                                         ; $573e: $84
    inc bc                                        ; $573f: $03
    inc d                                         ; $5740: $14
    ld a, [hl+]                                   ; $5741: $2a
    ld hl, sp-$38                                 ; $5742: $f8 $c8
    ld [$2a20], sp                                ; $5744: $08 $20 $2a
    ld a, b                                       ; $5747: $78
    add hl, bc                                    ; $5748: $09
    sbc h                                         ; $5749: $9c
    ld a, [de]                                    ; $574a: $1a
    cp b                                          ; $574b: $b8
    ld [$01ab], sp                                ; $574c: $08 $ab $01
    ld d, [hl]                                    ; $574f: $56
    nop                                           ; $5750: $00
    inc bc                                        ; $5751: $03
    xor e                                         ; $5752: $ab
    inc bc                                        ; $5753: $03
    ld d, l                                       ; $5754: $55
    ld bc, $01ab                                  ; $5755: $01 $ab $01
    dec b                                         ; $5758: $05
    inc h                                         ; $5759: $24
    ld bc, $cca0                                  ; $575a: $01 $a0 $cc
    db $10                                        ; $575d: $10
    push de                                       ; $575e: $d5
    add b                                         ; $575f: $80
    or b                                          ; $5760: $b0
    nop                                           ; $5761: $00

jr_097_5762:
    ret nz                                        ; $5762: $c0

    ld [$bc8d], a                                 ; $5763: $ea $8d $bc
    nop                                           ; $5766: $00
    xor d                                         ; $5767: $aa
    nop                                           ; $5768: $00
    ld d, b                                       ; $5769: $50
    call c, Call_000_0410                         ; $576a: $dc $10 $04
    jr z, jr_097_56ef                             ; $576d: $28 $80

    ld h, c                                       ; $576f: $61
    ld bc, $10c8                                  ; $5770: $01 $c8 $10
    jr nz, jr_097_57a5                            ; $5773: $20 $30

    nop                                           ; $5775: $00
    ld bc, $3a01                                  ; $5776: $01 $01 $3a
    ld a, [bc]                                    ; $5779: $0a
    ld bc, $15fe                                  ; $577a: $01 $fe $15
    ld l, b                                       ; $577d: $68
    rst $28                                       ; $577e: $ef
    or b                                          ; $577f: $b0
    ld bc, $031e                                  ; $5780: $01 $1e $03
    nop                                           ; $5783: $00
    call z, $8f07                                 ; $5784: $cc $07 $8f
    ld a, a                                       ; $5787: $7f
    rra                                           ; $5788: $1f
    add b                                         ; $5789: $80
    cp d                                          ; $578a: $ba
    ld [bc], a                                    ; $578b: $02
    rst $38                                       ; $578c: $ff
    rst $38                                       ; $578d: $ff
    ccf                                           ; $578e: $3f
    rst $38                                       ; $578f: $ff
    sub d                                         ; $5790: $92
    rst $38                                       ; $5791: $ff
    dec h                                         ; $5792: $25
    xor d                                         ; $5793: $aa
    inc [hl]                                      ; $5794: $34
    ld [de], a                                    ; $5795: $12
    db $fc                                        ; $5796: $fc
    sbc d                                         ; $5797: $9a
    inc b                                         ; $5798: $04
    ld a, [$02e0]                                 ; $5799: $fa $e0 $02
    xor c                                         ; $579c: $a9
    or d                                          ; $579d: $b2
    ld de, $9280                                  ; $579e: $11 $80 $92
    adc d                                         ; $57a1: $8a
    jr nz, jr_097_57a6                            ; $57a2: $20 $02

    rst $38                                       ; $57a4: $ff

jr_097_57a5:
    ld h, h                                       ; $57a5: $64

jr_097_57a6:
    add hl, bc                                    ; $57a6: $09
    add b                                         ; $57a7: $80
    ld a, a                                       ; $57a8: $7f
    nop                                           ; $57a9: $00
    add hl, bc                                    ; $57aa: $09
    inc b                                         ; $57ab: $04
    ld h, b                                       ; $57ac: $60
    ei                                            ; $57ad: $fb
    xor $01                                       ; $57ae: $ee $01
    ld [$8001], a                                 ; $57b0: $ea $01 $80
    ld a, a                                       ; $57b3: $7f
    nop                                           ; $57b4: $00
    nop                                           ; $57b5: $00
    ld h, b                                       ; $57b6: $60
    ld bc, $a060                                  ; $57b7: $01 $60 $a0
    ldh [$f5], a                                  ; $57ba: $e0 $f5
    ldh [$aa], a                                  ; $57bc: $e0 $aa
    ldh [$38], a                                  ; $57be: $e0 $38
    add hl, bc                                    ; $57c0: $09
    nop                                           ; $57c1: $00
    ld b, b                                       ; $57c2: $40
    ret nz                                        ; $57c3: $c0

    nop                                           ; $57c4: $00
    nop                                           ; $57c5: $00
    jr nz, jr_097_57e8                            ; $57c6: $20 $20

    ld h, b                                       ; $57c8: $60
    ld h, b                                       ; $57c9: $60
    inc b                                         ; $57ca: $04
    ld d, l                                       ; $57cb: $55
    nop                                           ; $57cc: $00
    ld [$d540], a                                 ; $57cd: $ea $40 $d5
    rst $20                                       ; $57d0: $e7
    ld bc, $8080                                  ; $57d1: $01 $80 $80
    ld a, [hl-]                                   ; $57d4: $3a
    inc b                                         ; $57d5: $04
    ei                                            ; $57d6: $fb
    jr c, jr_097_57eb                             ; $57d7: $38 $12

    cp $11                                        ; $57d9: $fe $11
    add h                                         ; $57db: $84
    ld a, [bc]                                    ; $57dc: $0a
    rst $18                                       ; $57dd: $df

jr_097_57de:
    or $06                                        ; $57de: $f6 $06
    push af                                       ; $57e0: $f5
    jr nz, jr_097_57de                            ; $57e1: $20 $fb

    ld a, [$2764]                                 ; $57e3: $fa $64 $27
    db $fc                                        ; $57e6: $fc
    db $fc                                        ; $57e7: $fc

jr_097_57e8:
    ld c, $0e                                     ; $57e8: $0e $0e
    ld [hl], b                                    ; $57ea: $70

jr_097_57eb:
    nop                                           ; $57eb: $00
    ld [hl], b                                    ; $57ec: $70
    ret nz                                        ; $57ed: $c0

    ret nz                                        ; $57ee: $c0

    cp h                                          ; $57ef: $bc
    ld a, h                                       ; $57f0: $7c
    xor e                                         ; $57f1: $ab
    rst $10                                       ; $57f2: $d7
    rst $30                                       ; $57f3: $f7
    inc b                                         ; $57f4: $04
    rst $38                                       ; $57f5: $ff

jr_097_57f6:
    db $10                                        ; $57f6: $10
    db $10                                        ; $57f7: $10
    jr nz, @+$22                                  ; $57f8: $20 $20

    ldh [$59], a                                  ; $57fa: $e0 $59
    and b                                         ; $57fc: $a0
    ld e, a                                       ; $57fd: $5f
    nop                                           ; $57fe: $00
    db $fc                                        ; $57ff: $fc
    db $fc                                        ; $5800: $fc
    cp $fe                                        ; $5801: $fe $fe
    rst $10                                       ; $5803: $d7
    rst $38                                       ; $5804: $ff
    ld [$40f7], a                                 ; $5805: $ea $f7 $40
    db $fd                                        ; $5808: $fd
    rst $18                                       ; $5809: $df
    ld b, $f1                                     ; $580a: $06 $f1
    pop af                                        ; $580c: $f1
    ld hl, sp-$08                                 ; $580d: $f8 $f8
    ld h, b                                       ; $580f: $60
    ld h, b                                       ; $5810: $60
    nop                                           ; $5811: $00
    ret nz                                        ; $5812: $c0

    ret nz                                        ; $5813: $c0

    add b                                         ; $5814: $80
    add b                                         ; $5815: $80
    ret nz                                        ; $5816: $c0

    ret nz                                        ; $5817: $c0

    ld [hl], b                                    ; $5818: $70
    ldh a, [rSC]                                  ; $5819: $f0 $02
    xor b                                         ; $581b: $a8
    ret c                                         ; $581c: $d8

    call nc, Call_097_7cfc                        ; $581d: $d4 $fc $7c
    ld a, h                                       ; $5820: $7c
    sbc b                                         ; $5821: $98
    ld [$d040], sp                                ; $5822: $08 $40 $d0
    jp nz, $c614                                  ; $5825: $c2 $14 $c6

    dec de                                        ; $5828: $1b
    cp $07                                        ; $5829: $fe $07
    rlca                                          ; $582b: $07
    or $fe                                        ; $582c: $f6 $fe
    db $eb                                        ; $582e: $eb
    rst $30                                       ; $582f: $f7
    add b                                         ; $5830: $80
    ld h, h                                       ; $5831: $64
    jr z, jr_097_584c                             ; $5832: $28 $18

    jr jr_097_57f6                                ; $5834: $18 $c0

    ret nz                                        ; $5836: $c0

    ld a, b                                       ; $5837: $78
    ld a, b                                       ; $5838: $78
    adc [hl]                                      ; $5839: $8e
    nop                                           ; $583a: $00
    adc [hl]                                      ; $583b: $8e
    ld [hl], b                                    ; $583c: $70
    ldh a, [$bc]                                  ; $583d: $f0 $bc
    ld a, h                                       ; $583f: $7c
    ld d, [hl]                                    ; $5840: $56
    xor $eb                                       ; $5841: $ee $eb
    ret nz                                        ; $5843: $c0

    ld a, [hl+]                                   ; $5844: $2a
    rra                                           ; $5845: $1f
    dec hl                                        ; $5846: $2b
    rlca                                          ; $5847: $07
    db $e3                                        ; $5848: $e3
    db $e3                                        ; $5849: $e3
    ldh [$e0], a                                  ; $584a: $e0 $e0

jr_097_584c:
    ret nc                                        ; $584c: $d0

    ldh a, [rOBP0]                                ; $584d: $f0 $48
    db $ec                                        ; $584f: $ec
    ld [hl], c                                    ; $5850: $71
    ld b, $fe                                     ; $5851: $06 $fe
    cp $84                                        ; $5853: $fe $84
    ld a, [bc]                                    ; $5855: $0a
    ret nz                                        ; $5856: $c0

    ret nz                                        ; $5857: $c0

    ldh [rTAC], a                                 ; $5858: $e0 $07
    ldh [$38], a                                  ; $585a: $e0 $38
    jr c, jr_097_587d                             ; $585c: $38 $1f

    rra                                           ; $585e: $1f
    inc l                                         ; $585f: $2c
    dec bc                                        ; $5860: $0b
    sub [hl]                                      ; $5861: $96
    dec hl                                        ; $5862: $2b
    ld a, [de]                                    ; $5863: $1a
    dec c                                         ; $5864: $0d
    adc c                                         ; $5865: $89
    ld e, b                                       ; $5866: $58
    ld a, [bc]                                    ; $5867: $0a
    nop                                           ; $5868: $00
    rst $38                                       ; $5869: $ff
    ld b, d                                       ; $586a: $42
    add b                                         ; $586b: $80
    ld de, $6f91                                  ; $586c: $11 $91 $6f
    ret nz                                        ; $586f: $c0

    ld a, [bc]                                    ; $5870: $0a
    nop                                           ; $5871: $00
    add b                                         ; $5872: $80
    add b                                         ; $5873: $80
    ldh a, [$f0]                                  ; $5874: $f0 $f0
    inc l                                         ; $5876: $2c
    db $fc                                        ; $5877: $fc
    xor d                                         ; $5878: $aa
    sub $03                                       ; $5879: $d6 $03
    push af                                       ; $587b: $f5
    rst $38                                       ; $587c: $ff

jr_097_587d:
    rra                                           ; $587d: $1f
    rra                                           ; $587e: $1f
    add e                                         ; $587f: $83
    add e                                         ; $5880: $83
    jr nz, @+$1a                                  ; $5881: $20 $18

    ld b, d                                       ; $5883: $42
    inc e                                         ; $5884: $1c
    ld l, d                                       ; $5885: $6a
    ld de, $0284                                  ; $5886: $11 $84 $02
    ret c                                         ; $5889: $d8

    dec bc                                        ; $588a: $0b
    add b                                         ; $588b: $80
    jr z, jr_097_58a1                             ; $588c: $28 $13

    ld b, h                                       ; $588e: $44
    ld [hl+], a                                   ; $588f: $22
    inc bc                                        ; $5890: $03
    jr nz, jr_097_5893                            ; $5891: $20 $00

jr_097_5893:
    rst $18                                       ; $5893: $df
    rrca                                          ; $5894: $0f
    rrca                                          ; $5895: $0f
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    inc bc                                        ; $5898: $03
    inc bc                                        ; $5899: $03
    ld b, $04                                     ; $589a: $06 $04
    rlca                                          ; $589c: $07
    dec c                                         ; $589d: $0d
    rrca                                          ; $589e: $0f
    rlca                                          ; $589f: $07
    rlca                                          ; $58a0: $07

jr_097_58a1:
    ld [hl], c                                    ; $58a1: $71
    ld [de], a                                    ; $58a2: $12
    rst $38                                       ; $58a3: $ff
    ld d, b                                       ; $58a4: $50
    ld h, [hl]                                    ; $58a5: $66
    xor a                                         ; $58a6: $af
    ld d, b                                       ; $58a7: $50
    dec bc                                        ; $58a8: $0b
    ld a, [hl-]                                   ; $58a9: $3a
    ld a, [bc]                                    ; $58aa: $0a
    adc d                                         ; $58ab: $8a
    push af                                       ; $58ac: $f5
    ld [hl-], a                                   ; $58ad: $32
    dec bc                                        ; $58ae: $0b
    ld d, b                                       ; $58af: $50
    dec bc                                        ; $58b0: $0b
    ld a, [bc]                                    ; $58b1: $0a
    add h                                         ; $58b2: $84
    ld e, b                                       ; $58b3: $58
    inc bc                                        ; $58b4: $03
    ld b, b                                       ; $58b5: $40
    cp a                                          ; $58b6: $bf
    ld [hl+], a                                   ; $58b7: $22
    db $dd                                        ; $58b8: $dd
    db $10                                        ; $58b9: $10
    dec de                                        ; $58ba: $1b
    ld bc, $0001                                  ; $58bb: $01 $01 $00
    inc bc                                        ; $58be: $03
    inc bc                                        ; $58bf: $03
    add $c6                                       ; $58c0: $c6 $c6
    ld a, [hl]                                    ; $58c2: $7e
    ld a, [hl]                                    ; $58c3: $7e
    rrca                                          ; $58c4: $0f
    rrca                                          ; $58c5: $0f
    ld [hl+], a                                   ; $58c6: $22
    ld bc, $7601                                  ; $58c7: $01 $01 $76
    dec bc                                        ; $58ca: $0b
    add b                                         ; $58cb: $80
    ld a, a                                       ; $58cc: $7f
    ld [hl+], a                                   ; $58cd: $22
    ld a, h                                       ; $58ce: $7c
    inc bc                                        ; $58cf: $03
    adc b                                         ; $58d0: $88
    ld l, b                                       ; $58d1: $68
    ld [hl], a                                    ; $58d2: $77
    db $fc                                        ; $58d3: $fc
    ld [hl-], a                                   ; $58d4: $32
    jr c, jr_097_591b                             ; $58d5: $38 $44

    rst $38                                       ; $58d7: $ff
    ld d, d                                       ; $58d8: $52
    ld bc, $bf4f                                  ; $58d9: $01 $4f $bf
    cp a                                          ; $58dc: $bf
    add c                                         ; $58dd: $81
    db $fc                                        ; $58de: $fc
    rla                                           ; $58df: $17
    ccf                                           ; $58e0: $3f
    ccf                                           ; $58e1: $3f
    di                                            ; $58e2: $f3
    di                                            ; $58e3: $f3
    add c                                         ; $58e4: $81
    add c                                         ; $58e5: $81
    ld a, $08                                     ; $58e6: $3e $08
    nop                                           ; $58e8: $00
    rst $30                                       ; $58e9: $f7
    rst $30                                       ; $58ea: $f7
    ld c, l                                       ; $58eb: $4d
    cp a                                          ; $58ec: $bf
    xor e                                         ; $58ed: $ab
    rst $30                                       ; $58ee: $f7
    ld [hl], a                                    ; $58ef: $77
    ld a, a                                       ; $58f0: $7f
    nop                                           ; $58f1: $00
    rra                                           ; $58f2: $1f
    rra                                           ; $58f3: $1f
    scf                                           ; $58f4: $37
    scf                                           ; $58f5: $37
    jp $8fc3                                      ; $58f6: $c3 $c3 $8f


    adc a                                         ; $58f9: $8f
    nop                                           ; $58fa: $00
    ccf                                           ; $58fb: $3f
    ccf                                           ; $58fc: $3f
    ld a, a                                       ; $58fd: $7f
    ld a, a                                       ; $58fe: $7f
    ccf                                           ; $58ff: $3f
    ccf                                           ; $5900: $3f
    rrca                                          ; $5901: $0f
    rrca                                          ; $5902: $0f
    db $10                                        ; $5903: $10
    sbc a                                         ; $5904: $9f
    sbc a                                         ; $5905: $9f
    sub $1c                                       ; $5906: $d6 $1c
    ld de, $fdea                                  ; $5908: $11 $ea $fd
    push af                                       ; $590b: $f5
    cp $c0                                        ; $590c: $fe $c0
    add h                                         ; $590e: $84
    add hl, de                                    ; $590f: $19
    jp nc, $0002                                  ; $5910: $d2 $02 $00

    adc a                                         ; $5913: $8f
    adc a                                         ; $5914: $8f
    push af                                       ; $5915: $f5
    ei                                            ; $5916: $fb
    daa                                           ; $5917: $27
    ld bc, $9cdf                                  ; $5918: $01 $df $9c

jr_097_591b:
    db $fc                                        ; $591b: $fc
    ldh a, [$f0]                                  ; $591c: $f0 $f0
    ret nz                                        ; $591e: $c0

    ret nz                                        ; $591f: $c0

    sub h                                         ; $5920: $94
    inc c                                         ; $5921: $0c
    ld d, b                                       ; $5922: $50
    ld bc, $006c                                  ; $5923: $01 $6c $00
    db $10                                        ; $5926: $10
    db $ec                                        ; $5927: $ec
    inc bc                                        ; $5928: $03
    ld b, b                                       ; $5929: $40
    rst $38                                       ; $592a: $ff
    ld a, [bc]                                    ; $592b: $0a
    db $fd                                        ; $592c: $fd
    sub b                                         ; $592d: $90
    add b                                         ; $592e: $80
    ld c, c                                       ; $592f: $49
    db $fd                                        ; $5930: $fd
    db $fd                                        ; $5931: $fd
    add b                                         ; $5932: $80
    ld l, c                                       ; $5933: $69
    jr c, jr_097_596e                             ; $5934: $38 $38

    ld [$58ff], a                                 ; $5936: $ea $ff $58
    ld [hl], c                                    ; $5939: $71
    db $10                                        ; $593a: $10
    rlca                                          ; $593b: $07

jr_097_593c:
    ld [hl], l                                    ; $593c: $75
    inc d                                         ; $593d: $14
    rlca                                          ; $593e: $07
    ld [$6008], sp                                ; $593f: $08 $08 $60
    rst $38                                       ; $5942: $ff
    ldh a, [rSB]                                  ; $5943: $f0 $01
    ldh a, [$e8]                                  ; $5945: $f0 $e8
    add sp, -$30                                  ; $5947: $e8 $d0
    ret nc                                        ; $5949: $d0

    ldh [$e0], a                                  ; $594a: $e0 $e0
    and [hl]                                      ; $594c: $a6
    add hl, bc                                    ; $594d: $09
    db $fc                                        ; $594e: $fc
    add sp, $03                                   ; $594f: $e8 $03
    ldh a, [rP1]                                  ; $5951: $f0 $00
    ld e, [hl]                                    ; $5953: $5e
    dec e                                         ; $5954: $1d
    ld d, b                                       ; $5955: $50
    ld [$1e54], sp                                ; $5956: $08 $54 $1e
    inc d                                         ; $5959: $14
    dec bc                                        ; $595a: $0b
    jr nz, jr_097_593c                            ; $595b: $20 $df

    reti                                          ; $595d: $d9


    ld a, [hl-]                                   ; $595e: $3a
    dec bc                                        ; $595f: $0b
    ld e, b                                       ; $5960: $58
    ld bc, $1ebf                                  ; $5961: $01 $bf $1e
    inc c                                         ; $5964: $0c
    inc l                                         ; $5965: $2c
    add hl, de                                    ; $5966: $19
    ld c, b                                       ; $5967: $48
    or a                                          ; $5968: $b7
    and h                                         ; $5969: $a4
    inc c                                         ; $596a: $0c
    adc d                                         ; $596b: $8a
    or $1a                                        ; $596c: $f6 $1a

jr_097_596e:
    ld [hl+], a                                   ; $596e: $22
    rst $18                                       ; $596f: $df
    ld [$0690], sp                                ; $5970: $08 $90 $06
    ld [$09da], sp                                ; $5973: $08 $da $09
    ld e, a                                       ; $5976: $5f
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    cpl                                           ; $5979: $2f
    nop                                           ; $597a: $00
    ld d, a                                       ; $597b: $57
    nop                                           ; $597c: $00
    inc bc                                        ; $597d: $03
    jr nz, jr_097_59a7                            ; $597e: $20 $27

    ld [bc], a                                    ; $5980: $02
    nop                                           ; $5981: $00
    ld c, e                                       ; $5982: $4b
    nop                                           ; $5983: $00
    dec b                                         ; $5984: $05
    jr nz, jr_097_59aa                            ; $5985: $20 $23

    and d                                         ; $5987: $a2
    dec h                                         ; $5988: $25
    db $fd                                        ; $5989: $fd
    ret nz                                        ; $598a: $c0

    ld e, d                                       ; $598b: $5a
    dec bc                                        ; $598c: $0b
    add b                                         ; $598d: $80
    ld [bc], a                                    ; $598e: $02
    rst $38                                       ; $598f: $ff
    nop                                           ; $5990: $00
    rlca                                          ; $5991: $07
    ld [$000b], sp                                ; $5992: $08 $0b $00
    ld bc, $0007                                  ; $5995: $01 $07 $00
    dec bc                                        ; $5998: $0b
    ld b, b                                       ; $5999: $40
    ld b, a                                       ; $599a: $47
    nop                                           ; $599b: $00
    rrca                                          ; $599c: $0f
    ld [$1008], sp                                ; $599d: $08 $08 $10
    nop                                           ; $59a0: $00
    rla                                           ; $59a1: $17
    ld b, b                                       ; $59a2: $40
    jr z, jr_097_59a5                             ; $59a3: $28 $00

jr_097_59a5:
    nop                                           ; $59a5: $00
    inc bc                                        ; $59a6: $03

jr_097_59a7:
    ld [$240d], sp                                ; $59a7: $08 $0d $24

jr_097_59aa:
    nop                                           ; $59aa: $00
    inc bc                                        ; $59ab: $03
    jr nc, @+$1a                                  ; $59ac: $30 $18

    ld [$aaf7], sp                                ; $59ae: $08 $f7 $aa
    ld a, [bc]                                    ; $59b1: $0a
    nop                                           ; $59b2: $00
    rst $38                                       ; $59b3: $ff
    dec bc                                        ; $59b4: $0b
    add d                                         ; $59b5: $82
    ld a, l                                       ; $59b6: $7d
    ld b, b                                       ; $59b7: $40
    cp a                                          ; $59b8: $bf
    or b                                          ; $59b9: $b0
    inc bc                                        ; $59ba: $03
    dec b                                         ; $59bb: $05
    ld l, $08                                     ; $59bc: $2e $08
    ld c, [hl]                                    ; $59be: $4e
    nop                                           ; $59bf: $00
    sbc a                                         ; $59c0: $9f
    inc [hl]                                      ; $59c1: $34
    nop                                           ; $59c2: $00
    ld d, b                                       ; $59c3: $50
    ld d, l                                       ; $59c4: $55
    jr nc, jr_097_59c7                            ; $59c5: $30 $00

jr_097_59c7:
    add h                                         ; $59c7: $84
    nop                                           ; $59c8: $00
    or h                                          ; $59c9: $b4
    dec de                                        ; $59ca: $1b
    inc b                                         ; $59cb: $04
    ld e, $ae                                     ; $59cc: $1e $ae
    dec bc                                        ; $59ce: $0b
    and e                                         ; $59cf: $a3
    ld [bc], a                                    ; $59d0: $02
    ld a, [bc]                                    ; $59d1: $0a
    inc h                                         ; $59d2: $24
    xor $04                                       ; $59d3: $ee $04
    ld hl, $10df                                  ; $59d5: $21 $df $10
    xor [hl]                                      ; $59d8: $ae
    db $10                                        ; $59d9: $10
    cp b                                          ; $59da: $b8
    inc c                                         ; $59db: $0c
    ld hl, $fa05                                  ; $59dc: $21 $05 $fa
    sbc $0c                                       ; $59df: $de $0c
    add d                                         ; $59e1: $82
    ld a, a                                       ; $59e2: $7f
    inc b                                         ; $59e3: $04
    dec b                                         ; $59e4: $05
    ld h, h                                       ; $59e5: $64
    nop                                           ; $59e6: $00
    ld b, l                                       ; $59e7: $45
    inc hl                                        ; $59e8: $23
    ld h, d                                       ; $59e9: $62
    nop                                           ; $59ea: $00
    ld [bc], a                                    ; $59eb: $02
    db $10                                        ; $59ec: $10
    ld d, c                                       ; $59ed: $51
    sub [hl]                                      ; $59ee: $96
    inc b                                         ; $59ef: $04
    dec b                                         ; $59f0: $05
    xor [hl]                                      ; $59f1: $ae
    db $10                                        ; $59f2: $10
    sub c                                         ; $59f3: $91
    ld b, b                                       ; $59f4: $40
    ld d, $89                                     ; $59f5: $16 $89
    ld a, [hl]                                    ; $59f7: $7e
    inc h                                         ; $59f8: $24
    dec d                                         ; $59f9: $15
    cpl                                           ; $59fa: $2f
    nop                                           ; $59fb: $00
    rra                                           ; $59fc: $1f
    add d                                         ; $59fd: $82
    nop                                           ; $59fe: $00
    ld e, $17                                     ; $59ff: $1e $17
    nop                                           ; $5a01: $00
    dec hl                                        ; $5a02: $2b
    or [hl]                                       ; $5a03: $b6
    nop                                           ; $5a04: $00
    sub h                                         ; $5a05: $94
    inc b                                         ; $5a06: $04
    sbc [hl]                                      ; $5a07: $9e
    ld [bc], a                                    ; $5a08: $02
    ld a, [hl+]                                   ; $5a09: $2a
    dec b                                         ; $5a0a: $05
    db $10                                        ; $5a0b: $10
    xor h                                         ; $5a0c: $ac
    ld b, h                                       ; $5a0d: $44
    dec d                                         ; $5a0e: $15
    ld bc, $0528                                  ; $5a0f: $01 $28 $05
    inc b                                         ; $5a12: $04
    ld d, b                                       ; $5a13: $50
    ld h, h                                       ; $5a14: $64
    sbc d                                         ; $5a15: $9a
    ld bc, $bf3f                                  ; $5a16: $01 $3f $bf
    nop                                           ; $5a19: $00
    dec d                                         ; $5a1a: $15
    ld a, a                                       ; $5a1b: $7f
    ld a, [hl+]                                   ; $5a1c: $2a
    ld a, a                                       ; $5a1d: $7f
    ld a, l                                       ; $5a1e: $7d
    rst $38                                       ; $5a1f: $ff
    cp a                                          ; $5a20: $bf
    rst $38                                       ; $5a21: $ff
    ld b, h                                       ; $5a22: $44
    ld d, l                                       ; $5a23: $55
    sbc l                                         ; $5a24: $9d
    ld [hl], $aa                                  ; $5a25: $36 $aa
    rst $38                                       ; $5a27: $ff
    ld e, a                                       ; $5a28: $5f
    daa                                           ; $5a29: $27
    rla                                           ; $5a2a: $17
    xor e                                         ; $5a2b: $ab
    ei                                            ; $5a2c: $fb
    adc d                                         ; $5a2d: $8a
    ld l, $07                                     ; $5a2e: $2e $07
    rst $30                                       ; $5a30: $f7
    rst $38                                       ; $5a31: $ff
    db $fd                                        ; $5a32: $fd
    inc [hl]                                      ; $5a33: $34
    rlca                                          ; $5a34: $07
    db $eb                                        ; $5a35: $eb
    ld a, [hl-]                                   ; $5a36: $3a
    rlca                                          ; $5a37: $07
    rst $30                                       ; $5a38: $f7
    xor l                                         ; $5a39: $ad
    ld b, h                                       ; $5a3a: $44
    ld b, $d4                                     ; $5a3b: $06 $d4
    ld d, b                                       ; $5a3d: $50
    ld b, $d4                                     ; $5a3e: $06 $d4
    ld h, h                                       ; $5a40: $64
    rlca                                          ; $5a41: $07
    ld [$a818], sp                                ; $5a42: $08 $18 $a8
    and $07                                       ; $5a45: $e6 $07
    rlca                                          ; $5a47: $07
    ld [$b5ff], a                                 ; $5a48: $ea $ff $b5
    rst $38                                       ; $5a4b: $ff
    sbc $24                                       ; $5a4c: $de $24
    nop                                           ; $5a4e: $00
    ld e, d                                       ; $5a4f: $5a
    rrca                                          ; $5a50: $0f
    ld h, b                                       ; $5a51: $60
    ld e, h                                       ; $5a52: $5c
    ld e, h                                       ; $5a53: $5c
    ldh [$62], a                                  ; $5a54: $e0 $62
    inc bc                                        ; $5a56: $03
    ei                                            ; $5a57: $fb
    ldh a, [rTAC]                                 ; $5a58: $f0 $07
    ld b, b                                       ; $5a5a: $40
    ld [$0b6e], sp                                ; $5a5b: $08 $6e $0b
    rst $08                                       ; $5a5e: $cf
    rst $08                                       ; $5a5f: $cf
    jr nz, jr_097_5ac2                            ; $5a60: $20 $60

    ld h, b                                       ; $5a62: $60
    ld h, b                                       ; $5a63: $60
    ld a, [bc]                                    ; $5a64: $0a
    rra                                           ; $5a65: $1f
    rra                                           ; $5a66: $1f
    inc h                                         ; $5a67: $24
    dec sp                                        ; $5a68: $3b
    add hl, de                                    ; $5a69: $19
    ld b, b                                       ; $5a6a: $40
    rra                                           ; $5a6b: $1f
    sub d                                         ; $5a6c: $92
    ld a, [bc]                                    ; $5a6d: $0a
    ld l, e                                       ; $5a6e: $6b
    ld a, a                                       ; $5a6f: $7f
    rst $10                                       ; $5a70: $d7
    rst $28                                       ; $5a71: $ef
    xor a                                         ; $5a72: $af
    rst $18                                       ; $5a73: $df
    ld c, $57                                     ; $5a74: $0e $57
    cp a                                          ; $5a76: $bf
    xor a                                         ; $5a77: $af
    ld a, a                                       ; $5a78: $7f

jr_097_5a79:
    ld [hl], c                                    ; $5a79: $71
    ld [$0300], sp                                ; $5a7a: $08 $00 $03
    ld bc, $0b40                                  ; $5a7d: $01 $40 $0b
    nop                                           ; $5a80: $00
    ld bc, $0155                                  ; $5a81: $01 $55 $01
    ld e, $1e                                     ; $5a84: $1e $1e
    inc [hl]                                      ; $5a86: $34
    inc a                                         ; $5a87: $3c
    inc l                                         ; $5a88: $2c
    nop                                           ; $5a89: $00
    inc a                                         ; $5a8a: $3c
    ld e, b                                       ; $5a8b: $58
    ld a, b                                       ; $5a8c: $78
    ldh a, [$f0]                                  ; $5a8d: $f0 $f0
    or b                                          ; $5a8f: $b0
    ldh a, [$ea]                                  ; $5a90: $f0 $ea
    call nc, $03e4                                ; $5a92: $d4 $e4 $03
    jr nz, @+$2a                                  ; $5a95: $20 $28

    ld bc, $001c                                  ; $5a97: $01 $1c $00
    xor e                                         ; $5a9a: $ab
    jr nz, jr_097_5a9d                            ; $5a9b: $20 $00

jr_097_5a9d:
    ld b, $06                                     ; $5a9d: $06 $06
    ld b, b                                       ; $5a9f: $40
    rlca                                          ; $5aa0: $07
    ld bc, $8300                                  ; $5aa1: $01 $00 $83
    add e                                         ; $5aa4: $83
    ld b, e                                       ; $5aa5: $43
    jp $c3d7                                      ; $5aa6: $c3 $d7 $c3


    ld b, b                                       ; $5aa9: $40
    ld l, e                                       ; $5aaa: $6b
    inc b                                         ; $5aab: $04
    nop                                           ; $5aac: $00
    xor d                                         ; $5aad: $aa
    inc bc                                        ; $5aae: $03
    dec b                                         ; $5aaf: $05
    rlca                                          ; $5ab0: $07
    xor e                                         ; $5ab1: $ab
    rrca                                          ; $5ab2: $0f
    nop                                           ; $5ab3: $00
    scf                                           ; $5ab4: $37
    ccf                                           ; $5ab5: $3f

jr_097_5ab6:
    ld l, a                                       ; $5ab6: $6f
    ld a, a                                       ; $5ab7: $7f
    cp [hl]                                       ; $5ab8: $be
    cp $7c                                        ; $5ab9: $fe $7c
    db $fc                                        ; $5abb: $fc
    jr nz, jr_097_5ab6                            ; $5abc: $20 $f8

    ld hl, sp+$52                                 ; $5abe: $f8 $52
    ld [bc], a                                    ; $5ac0: $02
    adc b                                         ; $5ac1: $88

jr_097_5ac2:
    sub b                                         ; $5ac2: $90
    sub b                                         ; $5ac3: $90
    jr nc, @+$32                                  ; $5ac4: $30 $30

    add a                                         ; $5ac6: $87
    ld d, $0c                                     ; $5ac7: $16 $0c
    ld b, b                                       ; $5ac9: $40
    ld b, b                                       ; $5aca: $40
    ret nz                                        ; $5acb: $c0

    ret nz                                        ; $5acc: $c0

    add e                                         ; $5acd: $83
    inc b                                         ; $5ace: $04
    inc bc                                        ; $5acf: $03
    jr nz, @+$81                                  ; $5ad0: $20 $7f

jr_097_5ad2:
    dec e                                         ; $5ad2: $1d
    nop                                           ; $5ad3: $00
    ld b, e                                       ; $5ad4: $43
    jp $e3e3                                      ; $5ad5: $c3 $e3 $e3


    ld h, e                                       ; $5ad8: $63
    db $e3                                        ; $5ad9: $e3
    db $e3                                        ; $5ada: $e3
    db $e3                                        ; $5adb: $e3
    nop                                           ; $5adc: $00
    push hl                                       ; $5add: $e5
    rst $20                                       ; $5ade: $e7
    and a                                         ; $5adf: $a7
    rst $20                                       ; $5ae0: $e7
    ld [$eeee], a                                 ; $5ae1: $ea $ee $ee
    xor $00                                       ; $5ae4: $ee $00
    pop hl                                        ; $5ae6: $e1
    pop hl                                        ; $5ae7: $e1
    pop bc                                        ; $5ae8: $c1
    pop bc                                        ; $5ae9: $c1
    inc bc                                        ; $5aea: $03
    inc bc                                        ; $5aeb: $03
    ld [bc], a                                    ; $5aec: $02
    ld [bc], a                                    ; $5aed: $02
    nop                                           ; $5aee: $00
    ld b, $04                                     ; $5aef: $06 $04
    ld e, l                                       ; $5af1: $5d
    ld [$14be], sp                                ; $5af2: $08 $be $14
    ld hl, sp-$08                                 ; $5af5: $f8 $f8
    jr nz, jr_097_5a79                            ; $5af7: $20 $80

    add b                                         ; $5af9: $80
    ld [hl-], a                                   ; $5afa: $32
    ld [$0202], sp                                ; $5afb: $08 $02 $02
    and [hl]                                      ; $5afe: $a6
    ld b, $55                                     ; $5aff: $06 $55
    dec c                                         ; $5b01: $0d
    nop                                           ; $5b02: $00
    xor [hl]                                      ; $5b03: $ae
    inc b                                         ; $5b04: $04
    dec e                                         ; $5b05: $1d
    inc a                                         ; $5b06: $3c
    ld c, $33                                     ; $5b07: $0e $33
    ld b, $15                                     ; $5b09: $06 $15
    add b                                         ; $5b0b: $80
    db $10                                        ; $5b0c: $10
    sub b                                         ; $5b0d: $90
    cp b                                          ; $5b0e: $b8
    dec b                                         ; $5b0f: $05
    rlca                                          ; $5b10: $07
    db $fc                                        ; $5b11: $fc
    ld bc, $f800                                  ; $5b12: $01 $00 $f8
    ld hl, sp-$03                                 ; $5b15: $f8 $fd
    ld hl, sp+$00                                 ; $5b17: $f8 $00
    ld [hl], d                                    ; $5b19: $72
    ldh a, [$f5]                                  ; $5b1a: $f0 $f5
    ldh a, [$fa]                                  ; $5b1c: $f0 $fa
    ldh a, [$f5]                                  ; $5b1e: $f0 $f5
    ldh [$61], a                                  ; $5b20: $e0 $61
    ldh [$a2], a                                  ; $5b22: $e0 $a2
    jr nc, jr_097_5b70                            ; $5b24: $30 $4a

    dec de                                        ; $5b26: $1b
    jr jr_097_5b41                                ; $5b27: $18 $18

    db $10                                        ; $5b29: $10
    db $10                                        ; $5b2a: $10
    ld a, [hl]                                    ; $5b2b: $7e
    jr jr_097_5b2e                                ; $5b2c: $18 $00

jr_097_5b2e:
    pop bc                                        ; $5b2e: $c1
    pop bc                                        ; $5b2f: $c1
    jp nz, $83c3                                  ; $5b30: $c2 $c3 $83

    add e                                         ; $5b33: $83
    dec bc                                        ; $5b34: $0b
    rrca                                          ; $5b35: $0f
    nop                                           ; $5b36: $00
    rla                                           ; $5b37: $17
    rra                                           ; $5b38: $1f
    cpl                                           ; $5b39: $2f
    ccf                                           ; $5b3a: $3f
    ld d, [hl]                                    ; $5b3b: $56
    ld a, [hl]                                    ; $5b3c: $7e
    cp [hl]                                       ; $5b3d: $be
    cp $07                                        ; $5b3e: $fe $07
    ld e, h                                       ; $5b40: $5c

jr_097_5b41:
    db $fc                                        ; $5b41: $fc
    ld a, [$70f8]                                 ; $5b42: $fa $f8 $70
    ld a, [c]                                     ; $5b45: $f2
    ld [bc], a                                    ; $5b46: $02
    ld d, d                                       ; $5b47: $52
    jr jr_097_5ad2                                ; $5b48: $18 $88

    ld c, $b4                                     ; $5b4a: $0e $b4
    inc h                                         ; $5b4c: $24
    dec c                                         ; $5b4d: $0d
    xor d                                         ; $5b4e: $aa
    ld bc, $4831                                  ; $5b4f: $01 $31 $48
    dec e                                         ; $5b52: $1d
    and b                                         ; $5b53: $a0
    ld d, d                                       ; $5b54: $52
    nop                                           ; $5b55: $00
    or b                                          ; $5b56: $b0
    ldh a, [rP1]                                  ; $5b57: $f0 $00
    ld d, b                                       ; $5b59: $50
    ld [hl], b                                    ; $5b5a: $70
    ld l, b                                       ; $5b5b: $68
    ld a, b                                       ; $5b5c: $78
    ld a, c                                       ; $5b5d: $79
    ld a, b                                       ; $5b5e: $78
    xor [hl]                                      ; $5b5f: $ae
    inc a                                         ; $5b60: $3c
    dec e                                         ; $5b61: $1d
    ld [hl], l                                    ; $5b62: $75
    inc a                                         ; $5b63: $3c
    ld a, [hl+]                                   ; $5b64: $2a
    ld hl, $1c31                                  ; $5b65: $21 $31 $1c
    nop                                           ; $5b68: $00
    ld c, b                                       ; $5b69: $48
    ld c, $03                                     ; $5b6a: $0e $03
    xor [hl]                                      ; $5b6c: $ae
    nop                                           ; $5b6d: $00
    add b                                         ; $5b6e: $80
    db $f4                                        ; $5b6f: $f4

jr_097_5b70:
    nop                                           ; $5b70: $00
    rlca                                          ; $5b71: $07
    rlca                                          ; $5b72: $07
    dec b                                         ; $5b73: $05
    rlca                                          ; $5b74: $07
    dec bc                                        ; $5b75: $0b
    rrca                                          ; $5b76: $0f
    ld e, a                                       ; $5b77: $5f
    inc h                                         ; $5b78: $24
    rrca                                          ; $5b79: $0f
    ld a, [bc]                                    ; $5b7a: $0a
    ld e, b                                       ; $5b7b: $58
    ld [hl], $02                                  ; $5b7c: $36 $02
    ld [bc], a                                    ; $5b7e: $02
    ld d, $08                                     ; $5b7f: $16 $08
    cp [hl]                                       ; $5b81: $be
    inc a                                         ; $5b82: $3c
    nop                                           ; $5b83: $00
    ld d, $1e                                     ; $5b84: $16 $1e
    ld a, [de]                                    ; $5b86: $1a
    ld e, $1e                                     ; $5b87: $1e $1e
    ld e, $0a                                     ; $5b89: $1e $0a
    ld c, $00                                     ; $5b8b: $0e $00
    dec c                                         ; $5b8d: $0d
    rrca                                          ; $5b8e: $0f
    rrca                                          ; $5b8f: $0f
    rrca                                          ; $5b90: $0f
    dec c                                         ; $5b91: $0d
    rrca                                          ; $5b92: $0f
    xor d                                         ; $5b93: $aa
    nop                                           ; $5b94: $00
    call nz, $18f9                                ; $5b95: $c4 $f9 $18
    ld a, [hl]                                    ; $5b98: $7e
    ld l, $bb                                     ; $5b99: $2e $bb
    rra                                           ; $5b9b: $1f
    ld d, a                                       ; $5b9c: $57
    ld e, $00                                     ; $5b9d: $1e $00
    ld [hl], $3e                                  ; $5b9f: $36 $3e
    nop                                           ; $5ba1: $00
    ld l, [hl]                                    ; $5ba2: $6e
    ld a, $3c                                     ; $5ba3: $3e $3c
    inc a                                         ; $5ba5: $3c
    ld l, h                                       ; $5ba6: $6c
    ld a, h                                       ; $5ba7: $7c
    ld e, l                                       ; $5ba8: $5d
    ld a, l                                       ; $5ba9: $7d
    add b                                         ; $5baa: $80
    ld b, [hl]                                    ; $5bab: $46
    ld [$0e0e], sp                                ; $5bac: $08 $0e $0e
    ld c, e                                       ; $5baf: $4b
    ld c, $b6                                     ; $5bb0: $0e $b6
    ld e, $5f                                     ; $5bb2: $1e $5f
    inc b                                         ; $5bb4: $04
    ld e, $b6                                     ; $5bb5: $1e $b6
    ld e, $2c                                     ; $5bb7: $1e $2c
    inc a                                         ; $5bb9: $3c
    ld e, b                                       ; $5bba: $58
    ld [$2726], sp                                ; $5bbb: $08 $26 $27
    nop                                           ; $5bbe: $00
    ld [hl], a                                    ; $5bbf: $77
    daa                                           ; $5bc0: $27
    xor $47                                       ; $5bc1: $ee $47
    ld d, a                                       ; $5bc3: $57
    rlca                                          ; $5bc4: $07
    ld b, [hl]                                    ; $5bc5: $46
    ld b, a                                       ; $5bc6: $47
    jr nz, @-$3b                                  ; $5bc7: $20 $c3

    jp $0c80                                      ; $5bc9: $c3 $80 $0c


    ld [$f5c0], a                                 ; $5bcc: $ea $c0 $f5
    and b                                         ; $5bcf: $a0
    cp d                                          ; $5bd0: $ba
    nop                                           ; $5bd1: $00
    sub b                                         ; $5bd2: $90
    push af                                       ; $5bd3: $f5
    and b                                         ; $5bd4: $a0
    ret c                                         ; $5bd5: $d8

    ret c                                         ; $5bd6: $d8

    ld c, h                                       ; $5bd7: $4c
    call z, Call_000_007b                         ; $5bd8: $cc $7b $00
    ld a, e                                       ; $5bdb: $7b
    rst $18                                       ; $5bdc: $df
    rst $38                                       ; $5bdd: $ff
    cp [hl]                                       ; $5bde: $be
    cp $fd                                        ; $5bdf: $fe $fd
    db $fc                                        ; $5be1: $fc
    cp d                                          ; $5be2: $ba
    add d                                         ; $5be3: $82
    inc b                                         ; $5be4: $04

jr_097_5be5:
    ld bc, $f4be                                  ; $5be5: $01 $be $f4
    rst $30                                       ; $5be8: $f7
    rst $30                                       ; $5be9: $f7
    inc a                                         ; $5bea: $3c
    xor [hl]                                      ; $5beb: $ae
    ld de, $0078                                  ; $5bec: $11 $78 $00
    ld a, b                                       ; $5bef: $78
    reti                                          ; $5bf0: $d9


    ld sp, hl                                     ; $5bf1: $f9
    or c                                          ; $5bf2: $b1
    pop af                                        ; $5bf3: $f1
    ei                                            ; $5bf4: $fb
    pop af                                        ; $5bf5: $f1
    or l                                          ; $5bf6: $b5
    ld a, [bc]                                    ; $5bf7: $0a
    pop hl                                        ; $5bf8: $e1
    jp nz, $c3c3                                  ; $5bf9: $c2 $c3 $c3

    or $00                                        ; $5bfc: $f6 $00
    add a                                         ; $5bfe: $87
    ld bc, $af10                                  ; $5bff: $01 $10 $af
    nop                                           ; $5c02: $00
    adc a                                         ; $5c03: $8f
    ld e, a                                       ; $5c04: $5f
    rrca                                          ; $5c05: $0f
    call nz, Call_097_46c4                        ; $5c06: $c4 $c4 $46
    add $e3                                       ; $5c09: $c6 $e3
    nop                                           ; $5c0b: $00
    db $e3                                        ; $5c0c: $e3
    ld h, c                                       ; $5c0d: $61
    pop hl                                        ; $5c0e: $e1
    pop af                                        ; $5c0f: $f1
    pop af                                        ; $5c10: $f1
    ret nc                                        ; $5c11: $d0

    ret nc                                        ; $5c12: $d0

    ld a, [$d800]                                 ; $5c13: $fa $00 $d8
    db $dd                                        ; $5c16: $dd
    ret c                                         ; $5c17: $d8

    rst $30                                       ; $5c18: $f7
    rst $30                                       ; $5c19: $f7
    or e                                          ; $5c1a: $b3
    di                                            ; $5c1b: $f3
    pop af                                        ; $5c1c: $f1
    call nc, Call_000_0001                        ; $5c1d: $d4 $01 $00
    ldh [$09], a                                  ; $5c20: $e0 $09
    ld hl, sp+$44                                 ; $5c22: $f8 $44
    ld bc, $01c1                                  ; $5c24: $01 $c1 $01
    nop                                           ; $5c27: $00
    add c                                         ; $5c28: $81
    add c                                         ; $5c29: $81
    ld h, [hl]                                    ; $5c2a: $66
    add e                                         ; $5c2b: $83
    ld bc, $8600                                  ; $5c2c: $01 $00 $86
    add hl, bc                                    ; $5c2f: $09
    ld d, a                                       ; $5c30: $57
    ld b, $c6                                     ; $5c31: $06 $c6
    inc hl                                        ; $5c33: $23
    db $f4                                        ; $5c34: $f4
    jr nc, jr_097_5be5                            ; $5c35: $30 $ae

    nop                                           ; $5c37: $00
    ld b, $55                                     ; $5c38: $06 $55
    inc b                                         ; $5c3a: $04
    inc c                                         ; $5c3b: $0c
    inc c                                         ; $5c3c: $0c
    inc e                                         ; $5c3d: $1c
    inc e                                         ; $5c3e: $1c
    jr c, jr_097_5c5d                             ; $5c3f: $38 $1c

    jr c, jr_097_5cb3                             ; $5c41: $38 $70

    ld [hl], b                                    ; $5c43: $70
    and $0b                                       ; $5c44: $e6 $0b
    ld c, b                                       ; $5c46: $48
    rrca                                          ; $5c47: $0f
    inc d                                         ; $5c48: $14
    add hl, hl                                    ; $5c49: $29
    ld bc, $3c01                                  ; $5c4a: $01 $01 $3c
    ld b, $07                                     ; $5c4d: $06 $07
    ld c, [hl]                                    ; $5c4f: $4e
    add hl, hl                                    ; $5c50: $29
    add h                                         ; $5c51: $84
    ld e, $44                                     ; $5c52: $1e $44
    ld [bc], a                                    ; $5c54: $02
    ld [hl], b                                    ; $5c55: $70
    ld de, $3e36                                  ; $5c56: $11 $36 $3e
    ld bc, $3cac                                  ; $5c59: $01 $ac $3c
    ld e, l                                       ; $5c5c: $5d

jr_097_5c5d:
    ld a, b                                       ; $5c5d: $78
    ld a, [$d878]                                 ; $5c5e: $fa $78 $d8
    ret nc                                        ; $5c61: $d0

    ld bc, $6282                                  ; $5c62: $01 $82 $62
    ld [$e1e1], sp                                ; $5c65: $08 $e1 $e1
    ld a, [c]                                     ; $5c68: $f2
    di                                            ; $5c69: $f3
    ld a, l                                       ; $5c6a: $7d
    sub d                                         ; $5c6b: $92
    inc b                                         ; $5c6c: $04
    ld a, e                                       ; $5c6d: $7b
    ld [$b33f], sp                                ; $5c6e: $08 $3f $b3
    di                                            ; $5c71: $f3
    rst $38                                       ; $5c72: $ff
    ret nz                                        ; $5c73: $c0

    nop                                           ; $5c74: $00
    halt                                          ; $5c75: $76
    or $e6                                        ; $5c76: $f6 $e6
    db $10                                        ; $5c78: $10
    and $c6                                       ; $5c79: $e6 $c6
    add $ab                                       ; $5c7b: $c6 $ab
    nop                                           ; $5c7d: $00
    jp $0101                                      ; $5c7e: $c3 $01 $01


    ld b, e                                       ; $5c81: $43
    sbc b                                         ; $5c82: $98
    call c, Call_097_5706                         ; $5c83: $dc $06 $57
    inc bc                                        ; $5c86: $03
    ld e, h                                       ; $5c87: $5c
    ld a, [bc]                                    ; $5c88: $0a
    inc h                                         ; $5c89: $24
    ld a, [bc]                                    ; $5c8a: $0a
    add [hl]                                      ; $5c8b: $86
    add a                                         ; $5c8c: $87
    ld d, l                                       ; $5c8d: $55
    add b                                         ; $5c8e: $80
    ld d, b                                       ; $5c8f: $50
    ld [bc], a                                    ; $5c90: $02
    ld d, a                                       ; $5c91: $57
    rra                                           ; $5c92: $1f
    rra                                           ; $5c93: $1f
    rra                                           ; $5c94: $1f
    cp a                                          ; $5c95: $bf
    cp a                                          ; $5c96: $bf
    cp [hl]                                       ; $5c97: $be
    dec b                                         ; $5c98: $05
    cp [hl]                                       ; $5c99: $be
    cp $fe                                        ; $5c9a: $fe $fe
    ld [$9ce0], a                                 ; $5c9c: $ea $e0 $9c
    rrca                                          ; $5c9f: $0f
    ret nc                                        ; $5ca0: $d0

    ld e, l                                       ; $5ca1: $5d
    inc b                                         ; $5ca2: $04
    ld [bc], a                                    ; $5ca3: $02
    call nc, $8a80                                ; $5ca4: $d4 $80 $8a
    add b                                         ; $5ca7: $80
    add c                                         ; $5ca8: $81

jr_097_5ca9:
    add b                                         ; $5ca9: $80
    add h                                         ; $5caa: $84
    ld a, [bc]                                    ; $5cab: $0a
    xor e                                         ; $5cac: $ab
    jp nz, $0182                                  ; $5cad: $c2 $82 $01

    ld h, h                                       ; $5cb0: $64
    dec c                                         ; $5cb1: $0d
    and l                                         ; $5cb2: $a5

jr_097_5cb3:
    rlca                                          ; $5cb3: $07
    ld e, e                                       ; $5cb4: $5b
    rrca                                          ; $5cb5: $0f
    halt                                          ; $5cb6: $76
    inc c                                         ; $5cb7: $0c
    add c                                         ; $5cb8: $81
    add h                                         ; $5cb9: $84
    ld bc, $8320                                  ; $5cba: $01 $20 $83
    add e                                         ; $5cbd: $83
    jp $1ec3                                      ; $5cbe: $c3 $c3 $1e


    ld a, [bc]                                    ; $5cc1: $0a
    ld hl, sp-$08                                 ; $5cc2: $f8 $f8
    ld b, h                                       ; $5cc4: $44
    ldh a, [rSB]                                  ; $5cc5: $f0 $01
    jr nz, jr_097_5ca9                            ; $5cc7: $20 $e0

    ldh [$aa], a                                  ; $5cc9: $e0 $aa
    inc a                                         ; $5ccb: $3c
    ld b, $c0                                     ; $5ccc: $06 $c0
    ret nz                                        ; $5cce: $c0

    nop                                           ; $5ccf: $00
    ld b, b                                       ; $5cd0: $40
    ld b, b                                       ; $5cd1: $40
    ld b, c                                       ; $5cd2: $41
    ld b, c                                       ; $5cd3: $41
    ld b, e                                       ; $5cd4: $43
    ld b, e                                       ; $5cd5: $43
    ld h, a                                       ; $5cd6: $67
    ld h, a                                       ; $5cd7: $67
    nop                                           ; $5cd8: $00
    ld a, [hl]                                    ; $5cd9: $7e
    ld a, [hl]                                    ; $5cda: $7e
    or l                                          ; $5cdb: $b5
    rra                                           ; $5cdc: $1f
    dec hl                                        ; $5cdd: $2b
    ccf                                           ; $5cde: $3f
    ld e, a                                       ; $5cdf: $5f
    ld a, a                                       ; $5ce0: $7f
    nop                                           ; $5ce1: $00
    rst $38                                       ; $5ce2: $ff
    rst $38                                       ; $5ce3: $ff
    rst $08                                       ; $5ce4: $cf
    rst $08                                       ; $5ce5: $cf
    add a                                         ; $5ce6: $87
    add a                                         ; $5ce7: $87
    rlca                                          ; $5ce8: $07
    rlca                                          ; $5ce9: $07
    ld bc, $0f0f                                  ; $5cea: $01 $0f $0f
    jp Jump_097_63c3                              ; $5ced: $c3 $c3 $63


    db $e3                                        ; $5cf0: $e3
    cp e                                          ; $5cf1: $bb
    ld [hl], l                                    ; $5cf2: $75
    inc bc                                        ; $5cf3: $03
    ld h, h                                       ; $5cf4: $64
    ld l, a                                       ; $5cf5: $6f
    halt                                          ; $5cf6: $76
    inc bc                                        ; $5cf7: $03
    ld d, [hl]                                    ; $5cf8: $56
    dec c                                         ; $5cf9: $0d
    ldh [$e0], a                                  ; $5cfa: $e0 $e0
    inc a                                         ; $5cfc: $3c
    ld [$fbfb], sp                                ; $5cfd: $08 $fb $fb
    db $10                                        ; $5d00: $10
    sbc $ff                                       ; $5d01: $de $ff
    ei                                            ; $5d03: $fb
    add b                                         ; $5d04: $80
    inc bc                                        ; $5d05: $03
    rst $28                                       ; $5d06: $ef
    rst $38                                       ; $5d07: $ff
    ld a, h                                       ; $5d08: $7c
    ld a, h                                       ; $5d09: $7c
    ld bc, $7878                                  ; $5d0a: $01 $78 $78
    call c, $7efc                                 ; $5d0d: $dc $fc $7e
    cp $be                                        ; $5d10: $fe $be
    ld l, l                                       ; $5d12: $6d
    dec bc                                        ; $5d13: $0b
    and b                                         ; $5d14: $a0
    sub d                                         ; $5d15: $92
    inc bc                                        ; $5d16: $03
    rrca                                          ; $5d17: $0f
    ld d, b                                       ; $5d18: $50
    ld [bc], a                                    ; $5d19: $02
    ld l, $3e                                     ; $5d1a: $2e $3e
    ld a, $3e                                     ; $5d1c: $3e $3e
    ld e, [hl]                                    ; $5d1e: $5e
    inc bc                                        ; $5d1f: $03
    ld a, [hl]                                    ; $5d20: $7e
    xor [hl]                                      ; $5d21: $ae
    cp $fe                                        ; $5d22: $fe $fe
    cp $df                                        ; $5d24: $fe $df
    ld c, b                                       ; $5d26: $48
    rlca                                          ; $5d27: $07
    adc h                                         ; $5d28: $8c
    dec e                                         ; $5d29: $1d
    add d                                         ; $5d2a: $82
    jp z, Jump_097_6b2b                           ; $5d2b: $ca $2b $6b

    pop hl                                        ; $5d2e: $e1
    db $e3                                        ; $5d2f: $e3
    db $e3                                        ; $5d30: $e3
    ld b, e                                       ; $5d31: $43
    add h                                         ; $5d32: $84
    ld bc, $00c2                                  ; $5d33: $01 $c2 $00
    jp nz, $8686                                  ; $5d36: $c2 $86 $86

    adc [hl]                                      ; $5d39: $8e
    adc [hl]                                      ; $5d3a: $8e
    adc h                                         ; $5d3b: $8c
    adc h                                         ; $5d3c: $8c
    xor a                                         ; $5d3d: $af
    sub b                                         ; $5d3e: $90
    add b                                         ; $5d3f: $80
    ld [bc], a                                    ; $5d40: $02
    rra                                           ; $5d41: $1f
    rra                                           ; $5d42: $1f
    add h                                         ; $5d43: $84
    ld a, [bc]                                    ; $5d44: $0a
    ccf                                           ; $5d45: $3f
    ccf                                           ; $5d46: $3f
    ld l, [hl]                                    ; $5d47: $6e
    ld a, [hl]                                    ; $5d48: $7e
    nop                                           ; $5d49: $00
    ld e, a                                       ; $5d4a: $5f
    ld a, [hl]                                    ; $5d4b: $7e
    xor [hl]                                      ; $5d4c: $ae
    adc h                                         ; $5d4d: $8c
    adc h                                         ; $5d4e: $8c
    adc h                                         ; $5d4f: $8c
    add h                                         ; $5d50: $84
    add h                                         ; $5d51: $84
    ld h, e                                       ; $5d52: $63
    ld b, $01                                     ; $5d53: $06 $01
    nop                                           ; $5d55: $00
    rra                                           ; $5d56: $1f
    ld [bc], a                                    ; $5d57: $02
    rrca                                          ; $5d58: $0f
    ld e, l                                       ; $5d59: $5d
    dec e                                         ; $5d5a: $1d
    call nz, $c802                                ; $5d5b: $c4 $02 $c8
    ld [bc], a                                    ; $5d5e: $02
    add b                                         ; $5d5f: $80
    or b                                          ; $5d60: $b0
    ld [$f8fd], sp                                ; $5d61: $08 $fd $f8
    ld a, [$f9f8]                                 ; $5d64: $fa $f8 $f9
    ld sp, hl                                     ; $5d67: $f9
    cp d                                          ; $5d68: $ba
    nop                                           ; $5d69: $00
    sbc b                                         ; $5d6a: $98
    db $dd                                        ; $5d6b: $dd
    sbc b                                         ; $5d6c: $98
    cp d                                          ; $5d6d: $ba
    cp b                                          ; $5d6e: $b8
    ld a, b                                       ; $5d6f: $78
    ld a, b                                       ; $5d70: $78
    ld a, c                                       ; $5d71: $79
    nop                                           ; $5d72: $00
    ld a, c                                       ; $5d73: $79
    reti                                          ; $5d74: $d9


    reti                                          ; $5d75: $d9


    sbc d                                         ; $5d76: $9a
    sbc e                                         ; $5d77: $9b
    sub a                                         ; $5d78: $97
    sub a                                         ; $5d79: $97
    cp $08                                        ; $5d7a: $fe $08
    ld a, h                                       ; $5d7c: $7c
    db $dd                                        ; $5d7d: $dd
    db $fc                                        ; $5d7e: $fc
    cp h                                          ; $5d7f: $bc
    ld e, b                                       ; $5d80: $58
    inc bc                                        ; $5d81: $03
    cp b                                          ; $5d82: $b8
    ld hl, sp+$78                                 ; $5d83: $f8 $78
    nop                                           ; $5d85: $00
    ld hl, sp-$0f                                 ; $5d86: $f8 $f1
    pop af                                        ; $5d88: $f1
    ld [hl], e                                    ; $5d89: $73
    di                                            ; $5d8a: $f3
    cp c                                          ; $5d8b: $b9
    add hl, de                                    ; $5d8c: $19
    ld [hl], d                                    ; $5d8d: $72
    nop                                           ; $5d8e: $00
    inc sp                                        ; $5d8f: $33
    inc hl                                        ; $5d90: $23
    inc hl                                        ; $5d91: $23
    ld h, d                                       ; $5d92: $62
    ld h, e                                       ; $5d93: $63
    ld b, l                                       ; $5d94: $45
    ld b, a                                       ; $5d95: $47
    add a                                         ; $5d96: $87
    ld [bc], a                                    ; $5d97: $02
    add a                                         ; $5d98: $87
    add l                                         ; $5d99: $85
    add a                                         ; $5d9a: $87
    dec bc                                        ; $5d9b: $0b
    rrca                                          ; $5d9c: $0f
    db $fd                                        ; $5d9d: $fd
    ld bc, $ef00                                  ; $5d9e: $01 $00 $ef
    add b                                         ; $5da1: $80
    ld bc, $cf10                                  ; $5da2: $01 $10 $cf
    rst $08                                       ; $5da5: $cf
    rst $00                                       ; $5da6: $c7
    rst $00                                       ; $5da7: $c7
    add a                                         ; $5da8: $87
    add a                                         ; $5da9: $87
    dec a                                         ; $5daa: $3d
    ld [$3a3f], sp                                ; $5dab: $08 $3f $3a
    ccf                                           ; $5dae: $3f
    scf                                           ; $5daf: $37
    ld l, h                                       ; $5db0: $6c
    nop                                           ; $5db1: $00
    ccf                                           ; $5db2: $3f
    ccf                                           ; $5db3: $3f
    ld l, e                                       ; $5db4: $6b
    nop                                           ; $5db5: $00
    ld a, a                                       ; $5db6: $7f
    rst $18                                       ; $5db7: $df
    rst $38                                       ; $5db8: $ff
    or a                                          ; $5db9: $b7
    rst $38                                       ; $5dba: $ff
    ld a, [c]                                     ; $5dbb: $f2
    ld a, [c]                                     ; $5dbc: $f2
    or $70                                        ; $5dbd: $f6 $70
    or $14                                        ; $5dbf: $f6 $14
    add hl, de                                    ; $5dc1: $19
    ret nc                                        ; $5dc2: $d0

    dec b                                         ; $5dc3: $05
    ld e, d                                       ; $5dc4: $5a
    inc b                                         ; $5dc5: $04
    rrca                                          ; $5dc6: $0f
    rrca                                          ; $5dc7: $0f
    dec de                                        ; $5dc8: $1b
    rra                                           ; $5dc9: $1f
    ld [bc], a                                    ; $5dca: $02
    scf                                           ; $5dcb: $37
    ccf                                           ; $5dcc: $3f
    ld e, [hl]                                    ; $5dcd: $5e
    ld a, [hl]                                    ; $5dce: $7e
    cp h                                          ; $5dcf: $bc
    db $fc                                        ; $5dd0: $fc
    xor [hl]                                      ; $5dd1: $ae
    dec bc                                        ; $5dd2: $0b
    cp [hl]                                       ; $5dd3: $be
    ld [hl], b                                    ; $5dd4: $70
    cp $06                                        ; $5dd5: $fe $06
    add hl, bc                                    ; $5dd7: $09
    db $d3                                        ; $5dd8: $d3
    ld [bc], a                                    ; $5dd9: $02
    inc bc                                        ; $5dda: $03
    db $10                                        ; $5ddb: $10
    ld bc, $0e01                                  ; $5ddc: $01 $01 $0e
    rrca                                          ; $5ddf: $0f
    dec de                                        ; $5de0: $1b
    rst $38                                       ; $5de1: $ff
    rst $38                                       ; $5de2: $ff
    ld a, a                                       ; $5de3: $7f
    or h                                          ; $5de4: $b4
    rlca                                          ; $5de5: $07
    db $d3                                        ; $5de6: $d3

jr_097_5de7:
    jr c, jr_097_5de7                             ; $5de7: $38 $fe

    ld [$0101], sp                                ; $5de9: $08 $01 $01
    ld e, b                                       ; $5dec: $58
    ret c                                         ; $5ded: $d8

    add hl, bc                                    ; $5dee: $09
    ld de, $34b9                                  ; $5def: $11 $b9 $34
    push af                                       ; $5df2: $f5
    ldh [rTAC], a                                 ; $5df3: $e0 $07
    ld [bc], a                                    ; $5df5: $02
    ld c, c                                       ; $5df6: $49
    cp a                                          ; $5df7: $bf
    ccf                                           ; $5df8: $3f
    ld a, a                                       ; $5df9: $7f
    nop                                           ; $5dfa: $00
    ld l, a                                       ; $5dfb: $6f
    rst $28                                       ; $5dfc: $ef
    ld c, a                                       ; $5dfd: $4f
    ld d, a                                       ; $5dfe: $57
    ld b, a                                       ; $5dff: $47
    rst $08                                       ; $5e00: $cf
    rst $00                                       ; $5e01: $c7
    rst $10                                       ; $5e02: $d7
    ld [$e3c3], sp                                ; $5e03: $08 $c3 $e3
    jp $59d7                                      ; $5e06: $c3 $d7 $59


    ld [bc], a                                    ; $5e09: $02
    rst $10                                       ; $5e0a: $d7
    add e                                         ; $5e0b: $83
    db $eb                                        ; $5e0c: $eb
    adc c                                         ; $5e0d: $89
    inc l                                         ; $5e0e: $2c
    inc b                                         ; $5e0f: $04
    db $eb                                        ; $5e10: $eb
    db $e3                                        ; $5e11: $e3
    push af                                       ; $5e12: $f5
    add h                                         ; $5e13: $84
    ld [bc], a                                    ; $5e14: $02
    pop de                                        ; $5e15: $d1
    pop af                                        ; $5e16: $f1
    ld l, d                                       ; $5e17: $6a
    ld a, [bc]                                    ; $5e18: $0a
    ldh [$9e], a                                  ; $5e19: $e0 $9e
    ld a, [bc]                                    ; $5e1b: $0a
    ld b, [hl]                                    ; $5e1c: $46
    inc c                                         ; $5e1d: $0c
    ld c, d                                       ; $5e1e: $4a
    inc c                                         ; $5e1f: $0c
    jp hl                                         ; $5e20: $e9


    ld sp, hl                                     ; $5e21: $f9
    push af                                       ; $5e22: $f5
    db $fd                                        ; $5e23: $fd
    db $ed                                        ; $5e24: $ed
    inc b                                         ; $5e25: $04
    db $fd                                        ; $5e26: $fd
    or $fe                                        ; $5e27: $f6 $fe
    ld a, [$f4fe]                                 ; $5e29: $fa $fe $f4
    inc c                                         ; $5e2c: $0c
    db $fd                                        ; $5e2d: $fd
    rst $38                                       ; $5e2e: $ff
    nop                                           ; $5e2f: $00
    rlca                                          ; $5e30: $07
    rlca                                          ; $5e31: $07
    add a                                         ; $5e32: $87
    add a                                         ; $5e33: $87
    rst $08                                       ; $5e34: $cf
    rst $08                                       ; $5e35: $cf
    rst $28                                       ; $5e36: $ef
    rst $28                                       ; $5e37: $ef
    and b                                         ; $5e38: $a0
    or [hl]                                       ; $5e39: $b6
    rrca                                          ; $5e3a: $0f
    ld a, [hl]                                    ; $5e3b: $7e
    ld h, d                                       ; $5e3c: $62
    ld bc, $bfbe                                  ; $5e3d: $01 $be $bf
    sbc a                                         ; $5e40: $9f
    sbc a                                         ; $5e41: $9f
    rrca                                          ; $5e42: $0f
    ret nz                                        ; $5e43: $c0

    ld c, h                                       ; $5e44: $4c
    rlca                                          ; $5e45: $07
    sbc [hl]                                      ; $5e46: $9e
    ld [$0707], sp                                ; $5e47: $08 $07 $07
    ld e, $1f                                     ; $5e4a: $1e $1f
    push af                                       ; $5e4c: $f5
    rst $38                                       ; $5e4d: $ff
    ld a, e                                       ; $5e4e: $7b
    xor e                                         ; $5e4f: $ab
    jr nz, jr_097_5e57                            ; $5e50: $20 $05

    pop bc                                        ; $5e52: $c1
    ld bc, $253b                                  ; $5e53: $01 $3b $25
    ld d, b                                       ; $5e56: $50

jr_097_5e57:
    ld c, h                                       ; $5e57: $4c
    db $eb                                        ; $5e58: $eb
    add hl, bc                                    ; $5e59: $09
    ld bc, $2552                                  ; $5e5a: $01 $52 $25
    ld de, $7ffa                                  ; $5e5d: $11 $fa $7f
    db $fd                                        ; $5e60: $fd

jr_097_5e61:
    scf                                           ; $5e61: $37
    dec b                                         ; $5e62: $05
    push af                                       ; $5e63: $f5
    rst $38                                       ; $5e64: $ff
    ld [$1c00], a                                 ; $5e65: $ea $00 $1c
    dec de                                        ; $5e68: $1b
    ld d, a                                       ; $5e69: $57
    ld a, a                                       ; $5e6a: $7f
    cp a                                          ; $5e6b: $bf
    ld h, c                                       ; $5e6c: $61
    dec d                                         ; $5e6d: $15
    jr c, jr_097_5ea0                             ; $5e6e: $38 $30

    xor d                                         ; $5e70: $aa
    ld a, h                                       ; $5e71: $7c
    dec b                                         ; $5e72: $05
    ld b, l                                       ; $5e73: $45
    rrca                                          ; $5e74: $0f
    ld a, b                                       ; $5e75: $78
    xor e                                         ; $5e76: $ab
    ld [hl], b                                    ; $5e77: $70
    ld c, d                                       ; $5e78: $4a
    ld d, a                                       ; $5e79: $57
    rrca                                          ; $5e7a: $0f
    sub d                                         ; $5e7b: $92
    ld e, $0c                                     ; $5e7c: $1e $0c
    rlca                                          ; $5e7e: $07
    cp a                                          ; $5e7f: $bf
    jr nz, jr_097_5e61                            ; $5e80: $20 $df

    inc de                                        ; $5e82: $13
    inc b                                         ; $5e83: $04
    ei                                            ; $5e84: $fb
    ld b, b                                       ; $5e85: $40
    call c, Call_000_0907                         ; $5e86: $dc $07 $09
    or $82                                        ; $5e89: $f6 $82
    rrca                                          ; $5e8b: $0f
    xor b                                         ; $5e8c: $a8
    ld e, $06                                     ; $5e8d: $1e $06
    db $10                                        ; $5e8f: $10
    rst $28                                       ; $5e90: $ef
    ld [bc], a                                    ; $5e91: $02
    db $fd                                        ; $5e92: $fd
    add h                                         ; $5e93: $84

jr_097_5e94:
    adc $07                                       ; $5e94: $ce $07
    cp d                                          ; $5e96: $ba
    ld c, $20                                     ; $5e97: $0e $20
    ccf                                           ; $5e99: $3f
    rst $38                                       ; $5e9a: $ff
    inc b                                         ; $5e9b: $04
    and b                                         ; $5e9c: $a0
    rrca                                          ; $5e9d: $0f
    jr nz, @+$37                                  ; $5e9e: $20 $35

jr_097_5ea0:
    sub h                                         ; $5ea0: $94
    ld a, [bc]                                    ; $5ea1: $0a
    ldh a, [rIF]                                  ; $5ea2: $f0 $0f
    ld [bc], a                                    ; $5ea4: $02
    ld b, $54                                     ; $5ea5: $06 $54

jr_097_5ea7:
    rla                                           ; $5ea7: $17
    ld c, b                                       ; $5ea8: $48
    sub b                                         ; $5ea9: $90
    ld c, $06                                     ; $5eaa: $0e $06
    ld bc, $60fe                                  ; $5eac: $01 $fe $60
    ld c, l                                       ; $5eaf: $4d
    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    jr @+$62                                      ; $5eb2: $18 $60

    jr jr_097_5e94                                ; $5eb4: $18 $de

    inc d                                         ; $5eb6: $14
    cp [hl]                                       ; $5eb7: $be
    ld [de], a                                    ; $5eb8: $12
    add l                                         ; $5eb9: $85
    add a                                         ; $5eba: $87
    and $e5                                       ; $5ebb: $e6 $e5
    ld a, a                                       ; $5ebd: $7f
    ld h, b                                       ; $5ebe: $60
    ld a, l                                       ; $5ebf: $7d
    ld [hl], $0f                                  ; $5ec0: $36 $0f
    jp nz, $9d1a                                  ; $5ec2: $c2 $1a $9d

    sbc l                                         ; $5ec5: $9d
    sub a                                         ; $5ec6: $97
    sbc a                                         ; $5ec7: $9f
    sbc c                                         ; $5ec8: $99
    ld b, b                                       ; $5ec9: $40
    sbc a                                         ; $5eca: $9f
    ld [bc], a                                    ; $5ecb: $02
    inc bc                                        ; $5ecc: $03
    add [hl]                                      ; $5ecd: $86
    adc d                                         ; $5ece: $8a
    adc [hl]                                      ; $5ecf: $8e
    ld d, $1a                                     ; $5ed0: $16 $1a
    ld a, [de]                                    ; $5ed2: $1a
    nop                                           ; $5ed3: $00
    ld d, $1e                                     ; $5ed4: $16 $1e
    ld d, $12                                     ; $5ed6: $16 $12
    ld e, $16                                     ; $5ed8: $1e $16
    ld e, $18                                     ; $5eda: $1e $18
    jr nz, jr_097_5ef6                            ; $5edc: $20 $18

    ld sp, $0001                                  ; $5ede: $31 $01 $00
    ld e, a                                       ; $5ee1: $5f
    ld a, a                                       ; $5ee2: $7f
    cp e                                          ; $5ee3: $bb
    rst $38                                       ; $5ee4: $ff
    ld e, [hl]                                    ; $5ee5: $5e
    jr nz, jr_097_5ea7                            ; $5ee6: $20 $bf

    cpl                                           ; $5ee8: $2f
    cp $07                                        ; $5ee9: $fe $07
    ld a, b                                       ; $5eeb: $78
    ld a, a                                       ; $5eec: $7f
    db $dd                                        ; $5eed: $dd
    db $db                                        ; $5eee: $db
    sbc e                                         ; $5eef: $9b
    ld [bc], a                                    ; $5ef0: $02
    sbc a                                         ; $5ef1: $9f
    db $dd                                        ; $5ef2: $dd
    rst $18                                       ; $5ef3: $df
    db $db                                        ; $5ef4: $db
    rst $18                                       ; $5ef5: $df

jr_097_5ef6:
    push af                                       ; $5ef6: $f5
    sbc [hl]                                      ; $5ef7: $9e
    ld [bc], a                                    ; $5ef8: $02
    rst $38                                       ; $5ef9: $ff
    nop                                           ; $5efa: $00
    rst $38                                       ; $5efb: $ff
    sub [hl]                                      ; $5efc: $96
    sbc l                                         ; $5efd: $9d
    sbc e                                         ; $5efe: $9b
    sbc [hl]                                      ; $5eff: $9e
    sbc $df                                       ; $5f00: $de $df
    db $fd                                        ; $5f02: $fd
    jr nc, @+$01                                  ; $5f03: $30 $ff

    xor [hl]                                      ; $5f05: $ae
    or [hl]                                       ; $5f06: $b6
    ld bc, $0e3c                                  ; $5f07: $01 $3c $0e
    sbc d                                         ; $5f0a: $9a
    sub [hl]                                      ; $5f0b: $96
    rst $10                                       ; $5f0c: $d7
    rst $18                                       ; $5f0d: $df
    dec b                                         ; $5f0e: $05
    ld a, a                                       ; $5f0f: $7f
    rst $38                                       ; $5f10: $ff
    or a                                          ; $5f11: $b7
    ld a, a                                       ; $5f12: $7f
    sbc $2e                                       ; $5f13: $de $2e

Jump_097_5f15:
    nop                                           ; $5f15: $00
    sub a                                         ; $5f16: $97
    ld h, e                                       ; $5f17: $63
    ld b, $80                                     ; $5f18: $06 $80
    ld [hl], h                                    ; $5f1a: $74
    ld [$1c14], sp                                ; $5f1b: $08 $14 $1c
    ld [de], a                                    ; $5f1e: $12
    ld e, $1e                                     ; $5f1f: $1e $1e
    ld a, [de]                                    ; $5f21: $1a
    add hl, sp                                    ; $5f22: $39
    nop                                           ; $5f23: $00
    ccf                                           ; $5f24: $3f
    ld l, a                                       ; $5f25: $6f
    ld l, l                                       ; $5f26: $6d
    call z, $00cf                                 ; $5f27: $cc $cf $00
    nop                                           ; $5f2a: $00
    db $10                                        ; $5f2b: $10
    ld [hl+], a                                   ; $5f2c: $22
    db $10                                        ; $5f2d: $10
    add hl, de                                    ; $5f2e: $19
    ld bc, $0d00                                  ; $5f2f: $01 $00 $0d
    dec c                                         ; $5f32: $0d
    inc c                                         ; $5f33: $0c
    ld bc, $8a00                                  ; $5f34: $01 $00 $8a
    nop                                           ; $5f37: $00
    adc [hl]                                      ; $5f38: $8e
    nop                                           ; $5f39: $00
    nop                                           ; $5f3a: $00
    rrca                                          ; $5f3b: $0f

jr_097_5f3c:
    rrca                                          ; $5f3c: $0f
    add hl, de                                    ; $5f3d: $19
    rra                                           ; $5f3e: $1f
    ld e, $00                                     ; $5f3f: $1e $00
    dec e                                         ; $5f41: $1d
    adc l                                         ; $5f42: $8d
    adc [hl]                                      ; $5f43: $8e
    adc [hl]                                      ; $5f44: $8e
    adc a                                         ; $5f45: $8f
    sbc l                                         ; $5f46: $9d
    sbc a                                         ; $5f47: $9f
    sbc $40                                       ; $5f48: $de $40
    rst $18                                       ; $5f4a: $df
    db $10                                        ; $5f4b: $10
    ld c, $80                                     ; $5f4c: $0e $80
    add b                                         ; $5f4e: $80
    jp $cdc3                                      ; $5f4f: $c3 $c3 $cd


    rst $08                                       ; $5f52: $cf
    nop                                           ; $5f53: $00
    or $fe                                        ; $5f54: $f6 $fe
    inc e                                         ; $5f56: $1c
    db $fc                                        ; $5f57: $fc
    cp b                                          ; $5f58: $b8
    ld a, b                                       ; $5f59: $78
    adc e                                         ; $5f5a: $8b
    adc [hl]                                      ; $5f5b: $8e
    ld bc, $9e9d                                  ; $5f5c: $01 $9d $9e
    ld a, $3f                                     ; $5f5f: $3e $3f
    cp l                                          ; $5f61: $bd
    cp a                                          ; $5f62: $bf
    xor $08                                       ; $5f63: $ee $08
    ld [hl+], a                                   ; $5f65: $22
    ld bc, $dade                                  ; $5f66: $01 $de $da
    ld e, [hl]                                    ; $5f69: $5e
    jp c, Jump_097_7fb9                           ; $5f6a: $da $b9 $7f

    ld l, l                                       ; $5f6d: $6d
    cp l                                          ; $5f6e: $bd
    ld b, $42                                     ; $5f6f: $06 $42
    db $dd                                        ; $5f71: $dd
    cp l                                          ; $5f72: $bd
    ld d, $5f                                     ; $5f73: $16 $5f
    ld e, a                                       ; $5f75: $5f
    ld e, d                                       ; $5f76: $5a
    ld e, a                                       ; $5f77: $5f
    jp c, $ab0b                                   ; $5f78: $da $0b $ab

    jr nz, jr_097_5f3c                            ; $5f7b: $20 $bf

    rst $10                                       ; $5f7d: $d7
    ld b, b                                       ; $5f7e: $40
    inc de                                        ; $5f7f: $13
    ld [hl], b                                    ; $5f80: $70
    ldh a, [$d1]                                  ; $5f81: $f0 $d1
    pop af                                        ; $5f83: $f1
    ld h, c                                       ; $5f84: $61
    ld c, $e1                                     ; $5f85: $0e $e1
    rst $28                                       ; $5f87: $ef
    rst $28                                       ; $5f88: $ef
    ld a, e                                       ; $5f89: $7b
    ld a, $13                                     ; $5f8a: $3e $13
    ld d, b                                       ; $5f8c: $50
    ld bc, $069d                                  ; $5f8d: $01 $9d $06
    inc bc                                        ; $5f90: $03
    nop                                           ; $5f91: $00
    inc bc                                        ; $5f92: $03
    dec h                                         ; $5f93: $25
    daa                                           ; $5f94: $27
    ld h, a                                       ; $5f95: $67
    ld h, l                                       ; $5f96: $65
    ld b, a                                       ; $5f97: $47
    ld b, l                                       ; $5f98: $45
    call $cf22                                    ; $5f99: $cd $22 $cf
    ret                                           ; $5f9c: $c9


    add b                                         ; $5f9d: $80
    nop                                           ; $5f9e: $00
    rlca                                          ; $5f9f: $07
    rlca                                          ; $5fa0: $07
    ld b, $72                                     ; $5fa1: $06 $72
    ld [bc], a                                    ; $5fa3: $02
    sub c                                         ; $5fa4: $91
    nop                                           ; $5fa5: $00
    sub c                                         ; $5fa6: $91
    sbc c                                         ; $5fa7: $99
    sbc c                                         ; $5fa8: $99
    adc b                                         ; $5fa9: $88
    adc b                                         ; $5faa: $88
    adc h                                         ; $5fab: $8c
    adc h                                         ; $5fac: $8c
    nop                                           ; $5fad: $00
    nop                                           ; $5fae: $00
    nop                                           ; $5faf: $00
    inc b                                         ; $5fb0: $04
    inc b                                         ; $5fb1: $04
    add $c6                                       ; $5fb2: $c6 $c6
    and d                                         ; $5fb4: $a2
    ld [c], a                                     ; $5fb5: $e2
    pop de                                        ; $5fb6: $d1
    nop                                           ; $5fb7: $00
    pop af                                        ; $5fb8: $f1
    ret                                           ; $5fb9: $c9


    ld sp, hl                                     ; $5fba: $f9
    db $f4                                        ; $5fbb: $f4
    db $ec                                        ; $5fbc: $ec
    ld a, d                                       ; $5fbd: $7a
    halt                                          ; $5fbe: $76
    sub a                                         ; $5fbf: $97
    nop                                           ; $5fc0: $00
    sbc e                                         ; $5fc1: $9b
    sbc e                                         ; $5fc2: $9b
    sub a                                         ; $5fc3: $97
    or l                                          ; $5fc4: $b5
    xor a                                         ; $5fc5: $af
    ld l, e                                       ; $5fc6: $6b
    ld e, a                                       ; $5fc7: $5f
    sub a                                         ; $5fc8: $97
    ld [$afff], sp                                ; $5fc9: $08 $ff $af
    rst $38                                       ; $5fcc: $ff
    ld a, e                                       ; $5fcd: $7b
    adc d                                         ; $5fce: $8a
    ld [bc], a                                    ; $5fcf: $02
    add [hl]                                      ; $5fd0: $86
    add [hl]                                      ; $5fd1: $86
    ld c, $2a                                     ; $5fd2: $0e $2a
    ld c, $37                                     ; $5fd4: $0e $37
    call z, $bd02                                 ; $5fd6: $cc $02 $bd
    sub [hl]                                      ; $5fd9: $96
    ld [bc], a                                    ; $5fda: $02
    cp e                                          ; $5fdb: $bb
    cpl                                           ; $5fdc: $2f
    rlca                                          ; $5fdd: $07
    ld [hl], a                                    ; $5fde: $77
    nop                                           ; $5fdf: $00
    ld a, e                                       ; $5fe0: $7b
    add hl, sp                                    ; $5fe1: $39
    ccf                                           ; $5fe2: $3f
    dec d                                         ; $5fe3: $15
    rra                                           ; $5fe4: $1f
    cp e                                          ; $5fe5: $bb
    cp a                                          ; $5fe6: $bf
    db $ed                                        ; $5fe7: $ed
    ld [c], a                                     ; $5fe8: $e2
    ld [bc], a                                    ; $5fe9: $02
    rlca                                          ; $5fea: $07
    ld a, $0f                                     ; $5feb: $3e $0f
    ret nz                                        ; $5fed: $c0

    ld c, $81                                     ; $5fee: $0e $81
    add c                                         ; $5ff0: $81
    jp nz, $00b0                                  ; $5ff1: $c2 $b0 $00

    rst $30                                       ; $5ff4: $f7
    dec bc                                        ; $5ff5: $0b
    rst $38                                       ; $5ff6: $ff
    rra                                           ; $5ff7: $1f
    rst $38                                       ; $5ff8: $ff
    cp a                                          ; $5ff9: $bf
    ld d, a                                       ; $5ffa: $57
    rlca                                          ; $5ffb: $07
    rst $18                                       ; $5ffc: $df
    ld e, $12                                     ; $5ffd: $1e $12
    add b                                         ; $5fff: $80

Call_097_6000:
    jr z, jr_097_6047                             ; $6000: $28 $45

    rst $10                                       ; $6002: $d7
    ld c, b                                       ; $6003: $48
    nop                                           ; $6004: $00
    ld e, a                                       ; $6005: $5f
    cp a                                          ; $6006: $bf
    cp a                                          ; $6007: $bf
    xor $06                                       ; $6008: $ee $06
    xor a                                         ; $600a: $af
    ld [hl], $12                                  ; $600b: $36 $12
    ld c, e                                       ; $600d: $4b
    ldh a, [rSC]                                  ; $600e: $f0 $02
    db $10                                        ; $6010: $10
    db $f4                                        ; $6011: $f4
    ei                                            ; $6012: $fb
    ld [$f808], sp                                ; $6013: $08 $08 $f8
    ld e, [hl]                                    ; $6016: $5e
    rlca                                          ; $6017: $07
    sub b                                         ; $6018: $90
    ld [$0268], sp                                ; $6019: $08 $68 $02
    ld a, [$e602]                                 ; $601c: $fa $02 $e6
    ld l, $7f                                     ; $601f: $2e $7f
    inc e                                         ; $6021: $1c
    inc b                                         ; $6022: $04
    db $dd                                        ; $6023: $dd
    ld a, a                                       ; $6024: $7f
    ei                                            ; $6025: $fb
    ld b, c                                       ; $6026: $41
    rst $38                                       ; $6027: $ff
    ld [hl], $0e                                  ; $6028: $36 $0e
    ld e, a                                       ; $602a: $5f
    ld a, a                                       ; $602b: $7f
    di                                            ; $602c: $f3
    di                                            ; $602d: $f3
    ld a, a                                       ; $602e: $7f
    or [hl]                                       ; $602f: $b6
    inc b                                         ; $6030: $04
    nop                                           ; $6031: $00
    rla                                           ; $6032: $17
    rla                                           ; $6033: $17
    dec hl                                        ; $6034: $2b
    dec hl                                        ; $6035: $2b
    dec b                                         ; $6036: $05
    dec b                                         ; $6037: $05
    ld [bc], a                                    ; $6038: $02
    ld [bc], a                                    ; $6039: $02
    ldh [$2c], a                                  ; $603a: $e0 $2c
    ld c, a                                       ; $603c: $4f
    cp b                                          ; $603d: $b8
    add hl, de                                    ; $603e: $19
    ld e, d                                       ; $603f: $5a
    inc c                                         ; $6040: $0c
    ld b, b                                       ; $6041: $40
    ld b, b                                       ; $6042: $40
    ld [hl], b                                    ; $6043: $70
    ld [hl], b                                    ; $6044: $70
    inc a                                         ; $6045: $3c
    ld a, a                                       ; $6046: $7f

jr_097_6047:
    inc a                                         ; $6047: $3c
    nop                                           ; $6048: $00
    add hl, hl                                    ; $6049: $29
    ldh a, [$59]                                  ; $604a: $f0 $59
    rrca                                          ; $604c: $0f
    ld [bc], a                                    ; $604d: $02
    ld c, b                                       ; $604e: $48
    inc b                                         ; $604f: $04
    sub b                                         ; $6050: $90
    ccf                                           ; $6051: $3f
    ld b, h                                       ; $6052: $44
    inc d                                         ; $6053: $14
    jr c, jr_097_605a                             ; $6054: $38 $04

    ld bc, $ffff                                  ; $6056: $01 $ff $ff
    or d                                          ; $6059: $b2

jr_097_605a:
    db $fd                                        ; $605a: $fd
    push de                                       ; $605b: $d5
    xor $ee                                       ; $605c: $ee $ee
    sub b                                         ; $605e: $90
    ld [$f000], sp                                ; $605f: $08 $00 $f0

jr_097_6062:
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    pop bc                                        ; $6064: $c1
    pop bc                                        ; $6065: $c1
    ld h, e                                       ; $6066: $63
    db $e3                                        ; $6067: $e3
    or c                                          ; $6068: $b1
    ld bc, $5071                                  ; $6069: $01 $71 $50
    or b                                          ; $606c: $b0
    xor b                                         ; $606d: $a8
    ret c                                         ; $606e: $d8

    call nc, Call_000_20ec                        ; $606f: $d4 $ec $20
    ld a, [de]                                    ; $6072: $1a
    ld [bc], a                                    ; $6073: $02
    add e                                         ; $6074: $83

jr_097_6075:
    add e                                         ; $6075: $83
    add [hl]                                      ; $6076: $86
    add a                                         ; $6077: $87
    push bc                                       ; $6078: $c5
    rst $00                                       ; $6079: $c7
    jr nz, jr_097_6086                            ; $607a: $20 $0a

    xor d                                         ; $607c: $aa
    jr nc, jr_097_6075                            ; $607d: $30 $f6

    push de                                       ; $607f: $d5
    ld h, d                                       ; $6080: $62
    inc bc                                        ; $6081: $03
    ld h, e                                       ; $6082: $63
    inc a                                         ; $6083: $3c
    ld a, b                                       ; $6084: $78
    ld a, a                                       ; $6085: $7f

jr_097_6086:
    db $fd                                        ; $6086: $fd
    ei                                            ; $6087: $fb
    ld e, l                                       ; $6088: $5d
    ld a, e                                       ; $6089: $7b
    db $fc                                        ; $608a: $fc
    rlca                                          ; $608b: $07
    ei                                            ; $608c: $fb
    ld a, d                                       ; $608d: $7a
    inc bc                                        ; $608e: $03
    db $ed                                        ; $608f: $ed
    ld a, [hl+]                                   ; $6090: $2a
    db $ed                                        ; $6091: $ed
    rrca                                          ; $6092: $0f
    db $fd                                        ; $6093: $fd
    sbc b                                         ; $6094: $98
    inc sp                                        ; $6095: $33
    nop                                           ; $6096: $00
    or b                                          ; $6097: $b0
    ldh a, [rSVBK]                                ; $6098: $f0 $70
    ret nc                                        ; $609a: $d0

    ret c                                         ; $609b: $d8

    add sp, $6c                                   ; $609c: $e8 $6c
    db $fc                                        ; $609e: $fc
    ld [bc], a                                    ; $609f: $02
    db $f4                                        ; $60a0: $f4
    db $fc                                        ; $60a1: $fc
    sbc [hl]                                      ; $60a2: $9e
    sbc [hl]                                      ; $60a3: $9e
    ld b, $06                                     ; $60a4: $06 $06
    sbc l                                         ; $60a6: $9d
    inc l                                         ; $60a7: $2c
    rst $28                                       ; $60a8: $ef
    and d                                         ; $60a9: $a2
    ld [hl-], a                                   ; $60aa: $32
    db $10                                        ; $60ab: $10
    ld sp, hl                                     ; $60ac: $f9
    call nc, $fc33                                ; $60ad: $d4 $33 $fc
    rst $38                                       ; $60b0: $ff
    ei                                            ; $60b1: $fb
    add a                                         ; $60b2: $87
    ld [$00ff], sp                                ; $60b3: $08 $ff $00
    push af                                       ; $60b6: $f5
    ei                                            ; $60b7: $fb
    ld a, d                                       ; $60b8: $7a
    db $fd                                        ; $60b9: $fd
    sbc l                                         ; $60ba: $9d
    sbc a                                         ; $60bb: $9f
    adc a                                         ; $60bc: $8f
    adc a                                         ; $60bd: $8f
    nop                                           ; $60be: $00
    jp $40c3                                      ; $60bf: $c3 $c3 $40


    ret nz                                        ; $60c2: $c0

    and b                                         ; $60c3: $a0
    ld h, b                                       ; $60c4: $60
    ld d, b                                       ; $60c5: $50
    ldh a, [$c1]                                  ; $60c6: $f0 $c1
    and $0c                                       ; $60c8: $e6 $0c
    inc h                                         ; $60ca: $24
    rrca                                          ; $60cb: $0f
    ld b, b                                       ; $60cc: $40
    ret nz                                        ; $60cd: $c0

    or b                                          ; $60ce: $b0
    ld [hl], b                                    ; $60cf: $70
    jr z, jr_097_6062                             ; $60d0: $28 $90

    nop                                           ; $60d2: $00
    ld b, b                                       ; $60d3: $40
    add sp, $4f                                   ; $60d4: $e8 $4f
    dec b                                         ; $60d6: $05
    ld a, h                                       ; $60d7: $7c
    ld a, h                                       ; $60d8: $7c
    inc a                                         ; $60d9: $3c
    inc a                                         ; $60da: $3c
    inc c                                         ; $60db: $0c
    inc c                                         ; $60dc: $0c
    add c                                         ; $60dd: $81
    ret nz                                        ; $60de: $c0

    rra                                           ; $60df: $1f
    ld a, [$7efe]                                 ; $60e0: $fa $fe $7e
    ld a, [hl]                                    ; $60e3: $7e
    ld e, $1e                                     ; $60e4: $1e $1e
    ld [hl], d                                    ; $60e6: $72
    ld c, a                                       ; $60e7: $4f
    nop                                           ; $60e8: $00
    inc b                                         ; $60e9: $04
    inc b                                         ; $60ea: $04
    ld bc, $0a01                                  ; $60eb: $01 $01 $0a
    ld a, [bc]                                    ; $60ee: $0a
    ld b, l                                       ; $60ef: $45
    ld b, l                                       ; $60f0: $45
    nop                                           ; $60f1: $00
    dec bc                                        ; $60f2: $0b
    dec bc                                        ; $60f3: $0b
    ld e, $1e                                     ; $60f4: $1e $1e
    dec sp                                        ; $60f6: $3b
    dec sp                                        ; $60f7: $3b
    nop                                           ; $60f8: $00
    nop                                           ; $60f9: $00
    nop                                           ; $60fa: $00
    ld de, $0f11                                  ; $60fb: $11 $11 $0f
    rrca                                          ; $60fe: $0f
    ld a, [hl+]                                   ; $60ff: $2a
    ld a, [hl+]                                   ; $6100: $2a
    dec c                                         ; $6101: $0d
    dec c                                         ; $6102: $0d
    ld c, $17                                     ; $6103: $0e $17
    rla                                           ; $6105: $17
    dec l                                         ; $6106: $2d
    dec l                                         ; $6107: $2d
    ld c, [hl]                                    ; $6108: $4e
    add hl, bc                                    ; $6109: $09
    call z, $010b                                 ; $610a: $cc $0b $01
    add hl, bc                                    ; $610d: $09
    rst $30                                       ; $610e: $f7
    ld d, b                                       ; $610f: $50
    rst $30                                       ; $6110: $f7
    ld a, $02                                     ; $6111: $3e $02
    sbc $ce                                       ; $6113: $de $ce
    rrca                                          ; $6115: $0f
    ld d, c                                       ; $6116: $51
    ld d, c                                       ; $6117: $51
    or d                                          ; $6118: $b2
    or d                                          ; $6119: $b2
    inc c                                         ; $611a: $0c
    ld [hl], l                                    ; $611b: $75
    ld [hl], l                                    ; $611c: $75
    di                                            ; $611d: $f3
    di                                            ; $611e: $f3
    ld [de], a                                    ; $611f: $12
    ld [$5b20], sp                                ; $6120: $08 $20 $5b
    add c                                         ; $6123: $81
    add c                                         ; $6124: $81
    add b                                         ; $6125: $80
    xor $0f                                       ; $6126: $ee $0f
    ld de, $0811                                  ; $6128: $11 $11 $08
    ld [$1515], sp                                ; $612b: $08 $15 $15
    dec de                                        ; $612e: $1b
    ld c, $1b                                     ; $612f: $0e $1b
    sbc a                                         ; $6131: $9f
    sbc a                                         ; $6132: $9f
    rst $18                                       ; $6133: $df
    ld h, c                                       ; $6134: $61
    dec b                                         ; $6135: $05
    inc c                                         ; $6136: $0c
    inc c                                         ; $6137: $0c
    sbc d                                         ; $6138: $9a
    dec bc                                        ; $6139: $0b
    rst $38                                       ; $613a: $ff
    ld [$bdff], sp                                ; $613b: $08 $ff $bd
    cp l                                          ; $613e: $bd
    rst $18                                       ; $613f: $df
    and b                                         ; $6140: $a0
    ld [bc], a                                    ; $6141: $02
    add d                                         ; $6142: $82
    add d                                         ; $6143: $82
    ld b, l                                       ; $6144: $45
    nop                                           ; $6145: $00
    ld b, l                                       ; $6146: $45
    add e                                         ; $6147: $83
    add e                                         ; $6148: $83
    push bc                                       ; $6149: $c5
    push bc                                       ; $614a: $c5
    db $e3                                        ; $614b: $e3
    db $e3                                        ; $614c: $e3
    push af                                       ; $614d: $f5
    inc b                                         ; $614e: $04
    push af                                       ; $614f: $f5
    ei                                            ; $6150: $fb
    ei                                            ; $6151: $fb
    ld a, e                                       ; $6152: $7b
    ld a, e                                       ; $6153: $7b
    sbc b                                         ; $6154: $98
    dec c                                         ; $6155: $0d
    rst $18                                       ; $6156: $df
    rst $18                                       ; $6157: $df
    ld b, $fe                                     ; $6158: $06 $fe
    cp $f7                                        ; $615a: $fe $f7
    rst $30                                       ; $615c: $f7
    ei                                            ; $615d: $fb
    xor e                                         ; $615e: $ab
    inc d                                         ; $615f: $14
    ld l, b                                       ; $6160: $68
    ld [$01df], sp                                ; $6161: $08 $df $01
    rst $18                                       ; $6164: $df
    cp a                                          ; $6165: $bf
    cp a                                          ; $6166: $bf
    cp $fe                                        ; $6167: $fe $fe
    rst $28                                       ; $6169: $ef
    rst $28                                       ; $616a: $ef
    inc e                                         ; $616b: $1c
    dec c                                         ; $616c: $0d
    add h                                         ; $616d: $84
    cp b                                          ; $616e: $b8
    dec c                                         ; $616f: $0d
    ld a, a                                       ; $6170: $7f
    ld a, a                                       ; $6171: $7f
    ei                                            ; $6172: $fb
    ei                                            ; $6173: $fb
    add b                                         ; $6174: $80
    ld [$ffff], sp                                ; $6175: $08 $ff $ff
    nop                                           ; $6178: $00
    pop af                                        ; $6179: $f1
    rst $38                                       ; $617a: $ff
    ld a, [$b8fd]                                 ; $617b: $fa $fd $b8
    rst $38                                       ; $617e: $ff
    sbc l                                         ; $617f: $9d
    cp $00                                        ; $6180: $fe $00
    xor h                                         ; $6182: $ac
    rst $18                                       ; $6183: $df
    sub $ef                                       ; $6184: $d6 $ef
    add $ff                                       ; $6186: $c6 $ff
    ld [$00f7], a                                 ; $6188: $ea $f7 $00
    ld [$f4f7], a                                 ; $618b: $ea $f7 $f4
    ei                                            ; $618e: $fb
    inc [hl]                                      ; $618f: $34
    ei                                            ; $6190: $fb
    add d                                         ; $6191: $82
    db $fd                                        ; $6192: $fd
    nop                                           ; $6193: $00
    ret nc                                        ; $6194: $d0

    rst $28                                       ; $6195: $ef
    ld [$c1f5], a                                 ; $6196: $ea $f5 $c1
    adc $ea                                       ; $6199: $ce $ea
    ld [$2ba6], a                                 ; $619b: $ea $a6 $2b
    ld [bc], a                                    ; $619e: $02
    ld a, a                                       ; $619f: $7f
    xor d                                         ; $61a0: $aa
    ld [$f7f7], sp                                ; $61a1: $08 $f7 $f7
    ld d, h                                       ; $61a4: $54
    ld [$0d34], sp                                ; $61a5: $08 $34 $0d
    ld sp, hl                                     ; $61a8: $f9
    add b                                         ; $61a9: $80
    inc h                                         ; $61aa: $24
    ld bc, $ff73                                  ; $61ab: $01 $73 $ff
    ld l, e                                       ; $61ae: $6b
    rst $30                                       ; $61af: $f7
    xor e                                         ; $61b0: $ab
    ld [hl], a                                    ; $61b1: $77
    sub [hl]                                      ; $61b2: $96
    nop                                           ; $61b3: $00
    ld l, a                                       ; $61b4: $6f
    sub h                                         ; $61b5: $94
    ld l, a                                       ; $61b6: $6f
    jp nc, $c52d                                  ; $61b7: $d2 $2d $c5

    dec sp                                        ; $61ba: $3b
    adc e                                         ; $61bb: $8b
    nop                                           ; $61bc: $00
    ld [hl], a                                    ; $61bd: $77
    inc bc                                        ; $61be: $03
    rst $38                                       ; $61bf: $ff
    sub a                                         ; $61c0: $97
    ld l, a                                       ; $61c1: $6f
    rlca                                          ; $61c2: $07
    rst $38                                       ; $61c3: $ff
    dec b                                         ; $61c4: $05
    nop                                           ; $61c5: $00
    push af                                       ; $61c6: $f5
    xor e                                         ; $61c7: $ab
    xor e                                         ; $61c8: $ab
    ld b, b                                       ; $61c9: $40
    ld b, b                                       ; $61ca: $40
    add sp, -$18                                  ; $61cb: $e8 $e8
    ret nc                                        ; $61cd: $d0

    ld b, b                                       ; $61ce: $40
    ret nc                                        ; $61cf: $d0

    ld a, [de]                                    ; $61d0: $1a
    rrca                                          ; $61d1: $0f
    ret nz                                        ; $61d2: $c0

    ret nz                                        ; $61d3: $c0

    adc h                                         ; $61d4: $8c
    adc h                                         ; $61d5: $8c
    ld [hl], h                                    ; $61d6: $74
    ld [hl], h                                    ; $61d7: $74
    nop                                           ; $61d8: $00
    rst $18                                       ; $61d9: $df
    rst $38                                       ; $61da: $ff
    xor a                                         ; $61db: $af
    rst $18                                       ; $61dc: $df
    call nc, $8aef                                ; $61dd: $d4 $ef $8a
    push af                                       ; $61e0: $f5
    nop                                           ; $61e1: $00
    ld c, h                                       ; $61e2: $4c
    or e                                          ; $61e3: $b3
    xor c                                         ; $61e4: $a9
    rst $10                                       ; $61e5: $d7
    pop bc                                        ; $61e6: $c1
    db $fd                                        ; $61e7: $fd
    xor d                                         ; $61e8: $aa
    xor d                                         ; $61e9: $aa
    ld d, b                                       ; $61ea: $50
    cp a                                          ; $61eb: $bf
    ld d, [hl]                                    ; $61ec: $56
    ld b, $9f                                     ; $61ed: $06 $9f
    ld [bc], a                                    ; $61ef: $02
    db $10                                        ; $61f0: $10
    xor a                                         ; $61f1: $af
    rst $18                                       ; $61f2: $df
    call Call_097_40ff                            ; $61f3: $cd $ff $40
    ret                                           ; $61f6: $c9


    ld h, [hl]                                    ; $61f7: $66
    ld b, $ea                                     ; $61f8: $06 $ea
    cp $d7                                        ; $61fa: $fe $d7
    rst $28                                       ; $61fc: $ef
    xor a                                         ; $61fd: $af
    rst $38                                       ; $61fe: $ff
    inc de                                        ; $61ff: $13
    ret c                                         ; $6200: $d8

    add sp, -$28                                  ; $6201: $e8 $d8
    and [hl]                                      ; $6203: $a6
    ld b, $78                                     ; $6204: $06 $78
    ld hl, sp+$6c                                 ; $6206: $f8 $6c
    rra                                           ; $6208: $1f
    and h                                         ; $6209: $a4
    ld c, $80                                     ; $620a: $0e $80
    halt                                          ; $620c: $76
    rra                                           ; $620d: $1f
    call c, Call_097_46dc                         ; $620e: $dc $dc $46
    add $c2                                       ; $6211: $c6 $c2
    ld b, d                                       ; $6213: $42
    ld b, b                                       ; $6214: $40
    ret nz                                        ; $6215: $c0

    add d                                         ; $6216: $82
    ld bc, $1f86                                  ; $6217: $01 $86 $1f
    ld b, d                                       ; $621a: $42
    ld b, d                                       ; $621b: $42
    add c                                         ; $621c: $81
    add c                                         ; $621d: $81
    ld h, d                                       ; $621e: $62
    ld h, d                                       ; $621f: $62
    ld b, b                                       ; $6220: $40
    jp Jump_000_04e6                              ; $6221: $c3 $e6 $04


    db $d3                                        ; $6224: $d3
    db $d3                                        ; $6225: $d3
    db $eb                                        ; $6226: $eb
    db $eb                                        ; $6227: $eb
    rst $30                                       ; $6228: $f7
    rst $30                                       ; $6229: $f7
    add b                                         ; $622a: $80
    and b                                         ; $622b: $a0
    dec de                                        ; $622c: $1b
    ret nz                                        ; $622d: $c0

    ret nz                                        ; $622e: $c0

    and b                                         ; $622f: $a0
    and b                                         ; $6230: $a0
    ret nc                                        ; $6231: $d0

    ret nc                                        ; $6232: $d0

    ld l, b                                       ; $6233: $68
    nop                                           ; $6234: $00
    ld l, b                                       ; $6235: $68
    db $fc                                        ; $6236: $fc
    db $fc                                        ; $6237: $fc
    ret                                           ; $6238: $c9


    rst $38                                       ; $6239: $ff
    push bc                                       ; $623a: $c5
    ei                                            ; $623b: $fb
    ld b, c                                       ; $623c: $41
    nop                                           ; $623d: $00
    cp a                                          ; $623e: $bf
    dec hl                                        ; $623f: $2b
    rst $10                                       ; $6240: $d7
    sbc e                                         ; $6241: $9b
    rst $20                                       ; $6242: $e7
    set 6, a                                      ; $6243: $cb $f7
    db $e3                                        ; $6245: $e3
    db $10                                        ; $6246: $10
    ei                                            ; $6247: $fb
    push de                                       ; $6248: $d5
    push de                                       ; $6249: $d5
    adc [hl]                                      ; $624a: $8e
    ld [$f8f8], sp                                ; $624b: $08 $f8 $f8
    call nc, $80d4                                ; $624e: $d4 $d4 $80
    jp nz, Jump_097_4001                          ; $6251: $c2 $01 $40

    xor b                                         ; $6254: $a8
    xor b                                         ; $6255: $a8
    ld [hl], h                                    ; $6256: $74
    ld [hl], h                                    ; $6257: $74
    add $c6                                       ; $6258: $c6 $c6
    add h                                         ; $625a: $84
    ld a, [bc]                                    ; $625b: $0a
    ld [$e8e8], sp                                ; $625c: $08 $e8 $e8
    db $f4                                        ; $625f: $f4
    db $f4                                        ; $6260: $f4
    xor b                                         ; $6261: $a8
    ld [$8080], sp                                ; $6262: $08 $80 $80
    ld [$fafa], sp                                ; $6265: $08 $fa $fa
    db $f4                                        ; $6268: $f4
    db $f4                                        ; $6269: $f4
    ret z                                         ; $626a: $c8

    rrca                                          ; $626b: $0f
    add b                                         ; $626c: $80
    add b                                         ; $626d: $80
    ld d, h                                       ; $626e: $54
    nop                                           ; $626f: $00
    ld d, h                                       ; $6270: $54
    xor d                                         ; $6271: $aa
    xor d                                         ; $6272: $aa
    db $fc                                        ; $6273: $fc
    db $fc                                        ; $6274: $fc
    ret nc                                        ; $6275: $d0

    ret nc                                        ; $6276: $d0

    and b                                         ; $6277: $a0
    add hl, de                                    ; $6278: $19
    and b                                         ; $6279: $a0
    ld b, b                                       ; $627a: $40
    ld b, b                                       ; $627b: $40
    db $f4                                        ; $627c: $f4
    dec bc                                        ; $627d: $0b
    or $0f                                        ; $627e: $f6 $0f
    ld b, b                                       ; $6280: $40
    ld b, b                                       ; $6281: $40
    cp $4f                                        ; $6282: $fe $4f
    and d                                         ; $6284: $a2
    ld a, [bc]                                    ; $6285: $0a
    inc c                                         ; $6286: $0c
    rst $18                                       ; $6287: $df
    ldh [rTIMA], a                                ; $6288: $e0 $05
    push af                                       ; $628a: $f5
    ei                                            ; $628b: $fb
    ld a, [$36e4]                                 ; $628c: $fa $e4 $36
    nop                                           ; $628f: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    ld [bc], a                                    ; $6292: $02
    ld [bc], a                                    ; $6293: $02
    dec c                                         ; $6294: $0d
    rrca                                          ; $6295: $0f
    inc de                                        ; $6296: $13
    rra                                           ; $6297: $1f
    xor d                                         ; $6298: $aa
    ld [bc], a                                    ; $6299: $02
    or [hl]                                       ; $629a: $b6
    call nc, $acec                                ; $629b: $d4 $ec $ac
    call c, Call_097_5658                         ; $629e: $dc $58 $56
    ld b, $f5                                     ; $62a1: $06 $f5
    or b                                          ; $62a3: $b0
    ld l, c                                       ; $62a4: $69
    dec b                                         ; $62a5: $05
    db $fc                                        ; $62a6: $fc
    ld d, $36                                     ; $62a7: $16 $36
    adc $18                                       ; $62a9: $ce $18
    and b                                         ; $62ab: $a0
    ldh [$d0], a                                  ; $62ac: $e0 $d0
    ldh a, [$37]                                  ; $62ae: $f0 $37
    ret z                                         ; $62b0: $c8

    ld hl, sp-$30                                 ; $62b1: $f8 $d0
    dec bc                                        ; $62b3: $0b
    or b                                          ; $62b4: $b0
    dec sp                                        ; $62b5: $3b
    jp c, Jump_000_2728                           ; $62b6: $da $28 $27

    ld e, b                                       ; $62b9: $58
    rrca                                          ; $62ba: $0f
    ld c, b                                       ; $62bb: $48
    ld l, $00                                     ; $62bc: $2e $00
    cp $ff                                        ; $62be: $fe $ff
    cp c                                          ; $62c0: $b9
    ld sp, hl                                     ; $62c1: $f9
    ld [hl], c                                    ; $62c2: $71
    pop af                                        ; $62c3: $f1
    ld a, [c]                                     ; $62c4: $f2
    di                                            ; $62c5: $f3
    ld [$e3e3], sp                                ; $62c6: $08 $e3 $e3
    ld h, [hl]                                    ; $62c9: $66
    rst $20                                       ; $62ca: $e7
    ldh a, [$0a]                                  ; $62cb: $f0 $0a
    rst $38                                       ; $62cd: $ff
    db $fd                                        ; $62ce: $fd
    ld hl, sp+$43                                 ; $62cf: $f8 $43
    rst $38                                       ; $62d1: $ff
    ldh [$5c], a                                  ; $62d2: $e0 $5c
    ld hl, sp-$08                                 ; $62d4: $f8 $f8
    inc e                                         ; $62d6: $1c
    inc e                                         ; $62d7: $1c
    and d                                         ; $62d8: $a2
    ld c, $68                                     ; $62d9: $0e $68
    dec c                                         ; $62db: $0d
    ld [de], a                                    ; $62dc: $12
    ld a, a                                       ; $62dd: $7f
    ld a, a                                       ; $62de: $7f
    ld [$4360], a                                 ; $62df: $ea $60 $43
    ld bc, $b801                                  ; $62e2: $01 $01 $b8
    ld c, $1d                                     ; $62e5: $0e $1d
    ld h, e                                       ; $62e7: $63
    rra                                           ; $62e8: $1f
    cp b                                          ; $62e9: $b8
    ld c, $b8                                     ; $62ea: $0e $b8
    dec bc                                        ; $62ec: $0b
    push de                                       ; $62ed: $d5
    ld [$e208], a                                 ; $62ee: $ea $08 $e2
    ld b, $90                                     ; $62f1: $06 $90
    dec c                                         ; $62f3: $0d
    nop                                           ; $62f4: $00
    ld [hl], b                                    ; $62f5: $70
    ld [hl], b                                    ; $62f6: $70
    rst $18                                       ; $62f7: $df
    rst $28                                       ; $62f8: $ef
    ld l, d                                       ; $62f9: $6a
    ld [hl], l                                    ; $62fa: $75
    jr c, jr_097_633c                             ; $62fb: $38 $3f

    ld [bc], a                                    ; $62fd: $02
    ld e, $1f                                     ; $62fe: $1e $1f

Call_097_6300:
    rrca                                          ; $6300: $0f
    rrca                                          ; $6301: $0f
    ccf                                           ; $6302: $3f
    ccf                                           ; $6303: $3f
    inc b                                         ; $6304: $04
    ld [$02f5], sp                                ; $6305: $08 $f5 $02
    rst $38                                       ; $6308: $ff
    xor d                                         ; $6309: $aa
    ld e, a                                       ; $630a: $5f
    ld b, l                                       ; $630b: $45
    cp a                                          ; $630c: $bf
    xor e                                         ; $630d: $ab
    jp c, $3706                                   ; $630e: $da $06 $37

    dec h                                         ; $6311: $25
    ccf                                           ; $6312: $3f
    dec bc                                        ; $6313: $0b
    ld c, [hl]                                    ; $6314: $4e
    ld b, $c7                                     ; $6315: $06 $c7
    rst $00                                       ; $6317: $c7
    inc d                                         ; $6318: $14
    ld a, [bc]                                    ; $6319: $0a
    rst $18                                       ; $631a: $df
    ld a, [c]                                     ; $631b: $f2
    rlca                                          ; $631c: $07
    ld [hl], h                                    ; $631d: $74
    ld e, a                                       ; $631e: $5f
    ret nz                                        ; $631f: $c0

    scf                                           ; $6320: $37
    ld a, [bc]                                    ; $6321: $0a
    ld [$380e], sp                                ; $6322: $08 $0e $38
    cp a                                          ; $6325: $bf
    ld h, h                                       ; $6326: $64
    ld h, $07                                     ; $6327: $26 $07
    rlca                                          ; $6329: $07
    add b                                         ; $632a: $80
    jp c, Jump_000_0c0d                           ; $632b: $da $0d $0c

    rrca                                          ; $632e: $0f
    add hl, sp                                    ; $632f: $39
    scf                                           ; $6330: $37
    ld d, [hl]                                    ; $6331: $56
    ld l, a                                       ; $6332: $6f
    db $ed                                        ; $6333: $ed
    ld hl, $9adf                                  ; $6334: $21 $df $9a
    xor $07                                       ; $6337: $ee $07
    rst $18                                       ; $6339: $df
    rst $38                                       ; $633a: $ff
    xor e                                         ; $633b: $ab

jr_097_633c:
    ld e, a                                       ; $633c: $5f
    ld c, [hl]                                    ; $633d: $4e
    ld e, $c4                                     ; $633e: $1e $c4
    ld sp, hl                                     ; $6340: $f9
    rrca                                          ; $6341: $0f
    sub b                                         ; $6342: $90
    inc c                                         ; $6343: $0c
    inc d                                         ; $6344: $14
    rra                                           ; $6345: $1f
    cp d                                          ; $6346: $ba
    sub b                                         ; $6347: $90
    inc [hl]                                      ; $6348: $34
    push de                                       ; $6349: $d5
    cp a                                          ; $634a: $bf
    ld b, b                                       ; $634b: $40
    ccf                                           ; $634c: $3f
    ld d, h                                       ; $634d: $54
    ld b, b                                       ; $634e: $40
    rst $38                                       ; $634f: $ff
    rst $38                                       ; $6350: $ff
    nop                                           ; $6351: $00
    inc d                                         ; $6352: $14
    db $fd                                        ; $6353: $fd
    ld c, $00                                     ; $6354: $0e $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    ld c, $0e                                     ; $6358: $0e $0e
    scf                                           ; $635a: $37
    add hl, sp                                    ; $635b: $39
    ld c, c                                       ; $635c: $49
    ld [hl], a                                    ; $635d: $77
    nop                                           ; $635e: $00
    ld d, e                                       ; $635f: $53
    ld l, a                                       ; $6360: $6f
    ld h, [hl]                                    ; $6361: $66
    ld e, [hl]                                    ; $6362: $5e
    call c, Call_097_70fc                         ; $6363: $dc $fc $70
    ldh a, [rP1]                                  ; $6366: $f0 $00
    ld c, $0e                                     ; $6368: $0e $0e
    ld [de], a                                    ; $636a: $12
    ld e, $2a                                     ; $636b: $1e $2a
    ld [hl], $2a                                  ; $636d: $36 $2a
    ld [hl], $00                                  ; $636f: $36 $00
    ld d, d                                       ; $6371: $52
    ld l, [hl]                                    ; $6372: $6e
    sub $ee                                       ; $6373: $d6 $ee
    ld l, h                                       ; $6375: $6c
    db $fc                                        ; $6376: $fc
    sbc b                                         ; $6377: $98
    ld a, b                                       ; $6378: $78
    nop                                           ; $6379: $00
    ld c, $0f                                     ; $637a: $0e $0f
    ld sp, $4b3f                                  ; $637c: $31 $3f $4b
    ld [hl], a                                    ; $637f: $77
    sub e                                         ; $6380: $93
    rst $28                                       ; $6381: $ef
    nop                                           ; $6382: $00
    and [hl]                                      ; $6383: $a6
    sbc $cc                                       ; $6384: $de $cc
    cp h                                          ; $6386: $bc
    cp b                                          ; $6387: $b8
    ld hl, sp-$20                                 ; $6388: $f8 $e0
    ldh [rP1], a                                  ; $638a: $e0 $00
    ld hl, $7ae1                                  ; $638c: $21 $e1 $7a
    ei                                            ; $638f: $fb
    and a                                         ; $6390: $a7
    sbc $c9                                       ; $6391: $de $c9
    rst $30                                       ; $6393: $f7
    nop                                           ; $6394: $00
    push hl                                       ; $6395: $e5
    ei                                            ; $6396: $fb
    ld sp, $1f3f                                  ; $6397: $31 $3f $1f
    rra                                           ; $639a: $1f
    dec d                                         ; $639b: $15
    dec de                                        ; $639c: $1b
    nop                                           ; $639d: $00
    ccf                                           ; $639e: $3f
    rst $38                                       ; $639f: $ff
    push af                                       ; $63a0: $f5
    ei                                            ; $63a1: $fb
    db $eb                                        ; $63a2: $eb
    rst $30                                       ; $63a3: $f7
    jp nc, $00ee                                  ; $63a4: $d2 $ee $00

    ld b, h                                       ; $63a7: $44
    ld a, h                                       ; $63a8: $7c
    jr z, jr_097_63e3                             ; $63a9: $28 $38

    ld sp, hl                                     ; $63ab: $f9
    ld sp, hl                                     ; $63ac: $f9
    and [hl]                                      ; $63ad: $a6
    ld e, a                                       ; $63ae: $5f
    nop                                           ; $63af: $00

jr_097_63b0:
    rrca                                          ; $63b0: $0f
    rrca                                          ; $63b1: $0f
    ld de, $251f                                  ; $63b2: $11 $1f $25
    dec sp                                        ; $63b5: $3b
    ld l, e                                       ; $63b6: $6b
    ld [hl], a                                    ; $63b7: $77
    nop                                           ; $63b8: $00
    or h                                          ; $63b9: $b4
    rst $28                                       ; $63ba: $ef
    xor [hl]                                      ; $63bb: $ae
    ld sp, hl                                     ; $63bc: $f9
    ld [hl], l                                    ; $63bd: $75
    rst $38                                       ; $63be: $ff
    rst $28                                       ; $63bf: $ef
    rra                                           ; $63c0: $1f
    nop                                           ; $63c1: $00
    ld a, b                                       ; $63c2: $78

Jump_097_63c3:
    ld a, b                                       ; $63c3: $78
    ld d, h                                       ; $63c4: $54
    ld l, h                                       ; $63c5: $6c
    ld c, d                                       ; $63c6: $4a
    halt                                          ; $63c7: $76
    ld h, [hl]                                    ; $63c8: $66
    ld a, d                                       ; $63c9: $7a
    nop                                           ; $63ca: $00
    inc sp                                        ; $63cb: $33
    dec a                                         ; $63cc: $3d
    add hl, de                                    ; $63cd: $19
    rra                                           ; $63ce: $1f
    ld b, $07                                     ; $63cf: $06 $07
    dec de                                        ; $63d1: $1b
    inc e                                         ; $63d2: $1c
    add b                                         ; $63d3: $80
    jr nz, jr_097_63de                            ; $63d4: $20 $08

    and l                                         ; $63d6: $a5
    cp e                                          ; $63d7: $bb
    set 6, a                                      ; $63d8: $cb $f7
    ld d, [hl]                                    ; $63da: $56
    xor $ac                                       ; $63db: $ee $ac
    ld [bc], a                                    ; $63dd: $02

jr_097_63de:
    ld a, h                                       ; $63de: $7c
    ret nc                                        ; $63df: $d0

    jr nc, jr_097_644a                            ; $63e0: $30 $68

    sbc b                                         ; $63e2: $98

jr_097_63e3:
    rst $38                                       ; $63e3: $ff
    ld bc, $8070                                  ; $63e4: $01 $70 $80
    sub b                                         ; $63e7: $90
    ld [bc], a                                    ; $63e8: $02
    nop                                           ; $63e9: $00
    ret nz                                        ; $63ea: $c0

    cp a                                          ; $63eb: $bf
    inc b                                         ; $63ec: $04
    jr jr_097_63b0                                ; $63ed: $18 $c1

    cp a                                          ; $63ef: $bf
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    rlca                                          ; $63f2: $07
    nop                                           ; $63f3: $00
    rst $38                                       ; $63f4: $ff
    xor d                                         ; $63f5: $aa
    ld d, l                                       ; $63f6: $55
    nop                                           ; $63f7: $00
    ld b, $00                                     ; $63f8: $06 $00
    ld [$2d00], sp                                ; $63fa: $08 $00 $2d
    nop                                           ; $63fd: $00
    ld h, b                                       ; $63fe: $60
    add e                                         ; $63ff: $83
    inc d                                         ; $6400: $14
    nop                                           ; $6401: $00
    inc b                                         ; $6402: $04
    ld c, b                                       ; $6403: $48
    nop                                           ; $6404: $00
    rst $38                                       ; $6405: $ff
    ld [$15f7], sp                                ; $6406: $08 $f7 $15
    nop                                           ; $6409: $00
    ld [$45ba], a                                 ; $640a: $ea $ba $45
    push af                                       ; $640d: $f5
    ld a, [bc]                                    ; $640e: $0a
    cp a                                          ; $640f: $bf
    nop                                           ; $6410: $00
    db $fd                                        ; $6411: $fd
    db $10                                        ; $6412: $10
    ld [bc], a                                    ; $6413: $02
    rst $38                                       ; $6414: $ff
    nop                                           ; $6415: $00
    ld a, [hl+]                                   ; $6416: $2a
    ld [$ef10], sp                                ; $6417: $08 $10 $ef
    and d                                         ; $641a: $a2
    ld e, l                                       ; $641b: $5d
    nop                                           ; $641c: $00
    ld b, b                                       ; $641d: $40
    cp a                                          ; $641e: $bf
    adc b                                         ; $641f: $88
    ld [hl], a                                    ; $6420: $77
    or l                                          ; $6421: $b5
    ld c, d                                       ; $6422: $4a
    xor $11                                       ; $6423: $ee $11
    nop                                           ; $6425: $00
    cp e                                          ; $6426: $bb
    nop                                           ; $6427: $00
    ld a, a                                       ; $6428: $7f
    nop                                           ; $6429: $00
    xor a                                         ; $642a: $af
    nop                                           ; $642b: $00
    ld e, a                                       ; $642c: $5f
    nop                                           ; $642d: $00
    nop                                           ; $642e: $00
    cp l                                          ; $642f: $bd
    nop                                           ; $6430: $00
    ld l, a                                       ; $6431: $6f
    nop                                           ; $6432: $00
    ld e, l                                       ; $6433: $5d
    nop                                           ; $6434: $00
    ei                                            ; $6435: $fb
    nop                                           ; $6436: $00
    jr nz, jr_097_6496                            ; $6437: $20 $5d

    and d                                         ; $6439: $a2
    ld c, e                                       ; $643a: $4b
    ld [$007a], sp                                ; $643b: $08 $7a $00
    rst $18                                       ; $643e: $df
    nop                                           ; $643f: $00
    xor $00                                       ; $6440: $ee $00
    nop                                           ; $6442: $00
    ld e, h                                       ; $6443: $5c
    nop                                           ; $6444: $00
    xor b                                         ; $6445: $a8
    nop                                           ; $6446: $00
    ld d, l                                       ; $6447: $55
    nop                                           ; $6448: $00
    xor d                                         ; $6449: $aa

jr_097_644a:
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    ld b, b                                       ; $644c: $40
    nop                                           ; $644d: $00
    add b                                         ; $644e: $80
    nop                                           ; $644f: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    ld hl, $0000                                  ; $6452: $21 $00 $00
    ld [$9400], sp                                ; $6455: $08 $00 $94
    nop                                           ; $6458: $00
    ld b, h                                       ; $6459: $44
    nop                                           ; $645a: $00
    adc b                                         ; $645b: $88
    inc [hl]                                      ; $645c: $34
    nop                                           ; $645d: $00
    db $10                                        ; $645e: $10
    ld c, $00                                     ; $645f: $0e $00
    db $10                                        ; $6461: $10
    ld [$2044], sp                                ; $6462: $08 $44 $20
    nop                                           ; $6465: $00
    add hl, hl                                    ; $6466: $29
    nop                                           ; $6467: $00
    ld b, h                                       ; $6468: $44
    ld e, [hl]                                    ; $6469: $5e
    ld [hl], $00                                  ; $646a: $36 $00
    rst $28                                       ; $646c: $ef
    nop                                           ; $646d: $00
    cp $83                                        ; $646e: $fe $83
    nop                                           ; $6470: $00
    cp [hl]                                       ; $6471: $be
    ld b, c                                       ; $6472: $41
    nop                                           ; $6473: $00
    ld l, a                                       ; $6474: $6f
    sub b                                         ; $6475: $90
    ld d, c                                       ; $6476: $51
    nop                                           ; $6477: $00
    ld [$d700], a                                 ; $6478: $ea $00 $d7
    nop                                           ; $647b: $00
    ld b, b                                       ; $647c: $40
    ld l, [hl]                                    ; $647d: $6e
    ld c, d                                       ; $647e: $4a
    nop                                           ; $647f: $00
    rst $38                                       ; $6480: $ff
    nop                                           ; $6481: $00
    sbc $21                                       ; $6482: $de $21
    xor l                                         ; $6484: $ad
    ld d, d                                       ; $6485: $52
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    rst $38                                       ; $6488: $ff
    ld a, [bc]                                    ; $6489: $0a
    push af                                       ; $648a: $f5
    sub h                                         ; $648b: $94
    ld l, e                                       ; $648c: $6b
    ccf                                           ; $648d: $3f
    ret nz                                        ; $648e: $c0

    ld [bc], a                                    ; $648f: $02
    ld d, l                                       ; $6490: $55
    xor d                                         ; $6491: $aa
    cp a                                          ; $6492: $bf
    ld b, b                                       ; $6493: $40
    ld l, a                                       ; $6494: $6f
    sub b                                         ; $6495: $90

jr_097_6496:
    add b                                         ; $6496: $80
    ld [$10a0], sp                                ; $6497: $08 $a0 $10
    ld e, a                                       ; $649a: $5f
    ld b, b                                       ; $649b: $40
    cp a                                          ; $649c: $bf
    add b                                         ; $649d: $80
    ld [$7a85], sp                                ; $649e: $08 $85 $7a
    xor d                                         ; $64a1: $aa
    ld d, l                                       ; $64a2: $55
    nop                                           ; $64a3: $00
    rst $10                                       ; $64a4: $d7
    jr z, jr_097_64a7                             ; $64a5: $28 $00

jr_097_64a7:
    rst $38                                       ; $64a7: $ff
    ld [hl+], a                                   ; $64a8: $22
    db $dd                                        ; $64a9: $dd
    inc b                                         ; $64aa: $04
    ei                                            ; $64ab: $fb
    dec bc                                        ; $64ac: $0b
    ld e, d                                       ; $64ad: $5a
    and l                                         ; $64ae: $a5
    or l                                          ; $64af: $b5
    ld c, d                                       ; $64b0: $4a
    ld e, $08                                     ; $64b1: $1e $08
    rst $28                                       ; $64b3: $ef
    and b                                         ; $64b4: $a0
    nop                                           ; $64b5: $00
    or b                                          ; $64b6: $b0
    jr c, jr_097_64bd                             ; $64b7: $38 $04

    db $ed                                        ; $64b9: $ed
    ld [de], a                                    ; $64ba: $12
    ld e, a                                       ; $64bb: $5f
    and b                                         ; $64bc: $a0

jr_097_64bd:
    cp [hl]                                       ; $64bd: $be
    ld e, d                                       ; $64be: $5a
    nop                                           ; $64bf: $00
    ld a, a                                       ; $64c0: $7f
    nop                                           ; $64c1: $00
    db $10                                        ; $64c2: $10
    cp d                                          ; $64c3: $ba
    nop                                           ; $64c4: $00
    ld [hl], l                                    ; $64c5: $75
    inc b                                         ; $64c6: $04
    nop                                           ; $64c7: $00
    ld d, b                                       ; $64c8: $50
    nop                                           ; $64c9: $00
    jr nz, jr_097_64cc                            ; $64ca: $20 $00

jr_097_64cc:
    nop                                           ; $64cc: $00
    xor $10                                       ; $64cd: $ee $10
    rst $38                                       ; $64cf: $ff
    nop                                           ; $64d0: $00
    dec sp                                        ; $64d1: $3b
    nop                                           ; $64d2: $00
    sub a                                         ; $64d3: $97
    nop                                           ; $64d4: $00
    ld b, b                                       ; $64d5: $40
    ld a, [hl+]                                   ; $64d6: $2a
    sbc d                                         ; $64d7: $9a
    nop                                           ; $64d8: $00
    ld [$1303], sp                                ; $64d9: $08 $03 $13
    inc b                                         ; $64dc: $04
    cp $01                                        ; $64dd: $fe $01
    nop                                           ; $64df: $00
    ldh a, [rTAC]                                 ; $64e0: $f0 $07
    and [hl]                                      ; $64e2: $a6
    ld [$106c], sp                                ; $64e3: $08 $6c $10
    rst $20                                       ; $64e6: $e7
    jr jr_097_64e9                                ; $64e7: $18 $00

jr_097_64e9:
    dec de                                        ; $64e9: $1b
    db $fc                                        ; $64ea: $fc
    inc a                                         ; $64eb: $3c
    rlca                                          ; $64ec: $07
    ld b, $03                                     ; $64ed: $06 $03
    xor e                                         ; $64ef: $ab
    ld d, h                                       ; $64f0: $54
    ld bc, $ff00                                  ; $64f1: $01 $00 $ff
    dec b                                         ; $64f4: $05
    inc bc                                        ; $64f5: $03
    inc bc                                        ; $64f6: $03
    nop                                           ; $64f7: $00
    or e                                          ; $64f8: $b3
    inc de                                        ; $64f9: $13
    ld de, $8e1a                                  ; $64fa: $11 $1a $8e
    pop af                                        ; $64fd: $f1
    ld b, b                                       ; $64fe: $40
    xor h                                         ; $64ff: $ac
    db $10                                        ; $6500: $10
    or c                                          ; $6501: $b1
    ld [$b804], sp                                ; $6502: $08 $04 $b8
    nop                                           ; $6505: $00
    ld [hl+], a                                   ; $6506: $22
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    add hl, bc                                    ; $6509: $09
    ld b, $14                                     ; $650a: $06 $14
    rlca                                          ; $650c: $07
    dec bc                                        ; $650d: $0b
    rlca                                          ; $650e: $07
    dec d                                         ; $650f: $15
    nop                                           ; $6510: $00
    inc bc                                        ; $6511: $03
    ld [bc], a                                    ; $6512: $02
    nop                                           ; $6513: $00
    add c                                         ; $6514: $81
    nop                                           ; $6515: $00
    ld [de], a                                    ; $6516: $12
    nop                                           ; $6517: $00
    dec h                                         ; $6518: $25
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    rst $38                                       ; $651b: $ff
    ld bc, $c739                                  ; $651c: $01 $39 $c7
    and d                                         ; $651f: $a2
    rst $38                                       ; $6520: $ff
    db $fd                                        ; $6521: $fd
    nop                                           ; $6522: $00
    cp $c5                                        ; $6523: $fe $c5
    ld a, $3c                                     ; $6525: $3e $3c
    rlca                                          ; $6527: $07
    ld d, a                                       ; $6528: $57
    rlca                                          ; $6529: $07
    rrca                                          ; $652a: $0f
    nop                                           ; $652b: $00
    inc bc                                        ; $652c: $03
    ld d, b                                       ; $652d: $50
    rst $38                                       ; $652e: $ff
    push af                                       ; $652f: $f5
    adc a                                         ; $6530: $8f
    adc [hl]                                      ; $6531: $8e
    ld bc, $0080                                  ; $6532: $01 $80 $00
    nop                                           ; $6535: $00
    add sp, $00                                   ; $6536: $e8 $00
    ld a, l                                       ; $6538: $7d
    add b                                         ; $6539: $80
    rrca                                          ; $653a: $0f
    ldh a, [$d0]                                  ; $653b: $f0 $d0
    ld [$40ff], sp                                ; $653d: $08 $ff $40
    nop                                           ; $6540: $00
    adc d                                         ; $6541: $8a
    inc b                                         ; $6542: $04
    ld bc, $00ae                                  ; $6543: $01 $ae $00
    db $db                                        ; $6546: $db
    add b                                         ; $6547: $80
    ld h, e                                       ; $6548: $63
    ld de, $52ad                                  ; $6549: $11 $ad $52
    ld e, d                                       ; $654c: $5a
    nop                                           ; $654d: $00
    or l                                          ; $654e: $b5
    nop                                           ; $654f: $00
    ld a, [$2e80]                                 ; $6550: $fa $80 $2e
    ld bc, $01fb                                  ; $6553: $01 $fb $01
    rst $28                                       ; $6556: $ef
    ld bc, $05fa                                  ; $6557: $01 $fa $05
    db $fd                                        ; $655a: $fd
    nop                                           ; $655b: $00
    ld [bc], a                                    ; $655c: $02
    ld [hl+], a                                   ; $655d: $22
    ld bc, $0054                                  ; $655e: $01 $54 $00
    add d                                         ; $6561: $82
    ld a, h                                       ; $6562: $7c
    inc c                                         ; $6563: $0c
    nop                                           ; $6564: $00
    add e                                         ; $6565: $83
    add c                                         ; $6566: $81
    nop                                           ; $6567: $00
    inc e                                         ; $6568: $1c
    db $e3                                        ; $6569: $e3
    pop de                                        ; $656a: $d1
    rst $38                                       ; $656b: $ff
    ccf                                           ; $656c: $3f
    nop                                           ; $656d: $00
    cp $ff                                        ; $656e: $fe $ff
    rst $38                                       ; $6570: $ff
    ld h, b                                       ; $6571: $60
    rra                                           ; $6572: $1f
    push af                                       ; $6573: $f5
    ld a, [bc]                                    ; $6574: $0a
    ld l, d                                       ; $6575: $6a
    nop                                           ; $6576: $00
    add l                                         ; $6577: $85
    cp $40                                        ; $6578: $fe $40
    ld e, a                                       ; $657a: $5f
    ldh [$be], a                                  ; $657b: $e0 $be
    pop bc                                        ; $657d: $c1
    ld l, a                                       ; $657e: $6f
    ld b, b                                       ; $657f: $40
    sub b                                         ; $6580: $90
    ld [hl], b                                    ; $6581: $70
    ld e, c                                       ; $6582: $59
    add c                                         ; $6583: $81
    ld a, [hl]                                    ; $6584: $7e
    nop                                           ; $6585: $00
    rst $38                                       ; $6586: $ff
    ld b, b                                       ; $6587: $40
    cp a                                          ; $6588: $bf
    nop                                           ; $6589: $00

jr_097_658a:
    dec d                                         ; $658a: $15
    ld [$54ab], a                                 ; $658b: $ea $ab $54
    ld a, a                                       ; $658e: $7f
    add b                                         ; $658f: $80
    db $fd                                        ; $6590: $fd
    ld [bc], a                                    ; $6591: $02
    ld b, b                                       ; $6592: $40
    rst $18                                       ; $6593: $df
    or a                                          ; $6594: $b7
    ld bc, $8162                                  ; $6595: $01 $62 $81
    add c                                         ; $6598: $81
    nop                                           ; $6599: $00
    ld c, a                                       ; $659a: $4f
    add b                                         ; $659b: $80
    nop                                           ; $659c: $00
    cp h                                          ; $659d: $bc
    jp Jump_097_7fe3                              ; $659e: $c3 $e3 $7f


    db $fd                                        ; $65a1: $fd
    ld e, $15                                     ; $65a2: $1e $15
    ld hl, sp+$00                                 ; $65a4: $f8 $00
    ld e, b                                       ; $65a6: $58
    ldh a, [$3e]                                  ; $65a7: $f0 $3e
    add b                                         ; $65a9: $80
    cp [hl]                                       ; $65aa: $be
    ld b, b                                       ; $65ab: $40
    ld a, a                                       ; $65ac: $7f
    ret nz                                        ; $65ad: $c0

    ld [$c0fa], sp                                ; $65ae: $08 $fa $c0
    push af                                       ; $65b1: $f5
    add b                                         ; $65b2: $80
    ldh a, [rNR23]                                ; $65b3: $f0 $18
    db $db                                        ; $65b5: $db
    nop                                           ; $65b6: $00
    or a                                          ; $65b7: $b7
    inc hl                                        ; $65b8: $23
    nop                                           ; $65b9: $00
    call $0084                                    ; $65ba: $cd $84 $00

jr_097_65bd:
    dec b                                         ; $65bd: $05
    nop                                           ; $65be: $00
    ld [bc], a                                    ; $65bf: $02
    jp nz, RST_10                                 ; $65c0: $c2 $10 $00

    ld c, c                                       ; $65c3: $49
    ld b, b                                       ; $65c4: $40
    ld a, [bc]                                    ; $65c5: $0a
    sub [hl]                                      ; $65c6: $96
    ld bc, $f0b4                                  ; $65c7: $01 $b4 $f0
    add sp, -$20                                  ; $65ca: $e8 $e0
    sub b                                         ; $65cc: $90
    ldh [rP1], a                                  ; $65cd: $e0 $00
    jp z, $f470                                   ; $65cf: $ca $70 $f4

    jr z, jr_097_65bd                             ; $65d2: $28 $e9

    jr nc, jr_097_658a                            ; $65d4: $30 $b4

    ld l, b                                       ; $65d6: $68
    ld h, e                                       ; $65d7: $63
    jr nz, jr_097_658a                            ; $65d8: $20 $b0

    nop                                           ; $65da: $00
    ldh a, [$38]                                  ; $65db: $f0 $38
    ld d, b                                       ; $65dd: $50
    nop                                           ; $65de: $00
    ld [hl+], a                                   ; $65df: $22
    cp c                                          ; $65e0: $b9
    add hl, bc                                    ; $65e1: $09
    ld [bc], a                                    ; $65e2: $02
    ld sp, $2018                                  ; $65e3: $31 $18 $20
    nop                                           ; $65e6: $00
    ld b, c                                       ; $65e7: $41
    rrca                                          ; $65e8: $0f
    ld b, b                                       ; $65e9: $40
    nop                                           ; $65ea: $00
    add hl, de                                    ; $65eb: $19
    di                                            ; $65ec: $f3
    ret nz                                        ; $65ed: $c0

    ret nz                                        ; $65ee: $c0

    nop                                           ; $65ef: $00
    add b                                         ; $65f0: $80
    daa                                           ; $65f1: $27
    ret nz                                        ; $65f2: $c0

    sbc a                                         ; $65f3: $9f
    ldh [rSTAT], a                                ; $65f4: $e0 $41
    cp $b4                                        ; $65f6: $fe $b4
    nop                                           ; $65f8: $00
    ld a, a                                       ; $65f9: $7f
    rst $18                                       ; $65fa: $df
    cpl                                           ; $65fb: $2f
    xor l                                         ; $65fc: $ad
    ld d, d                                       ; $65fd: $52
    sub b                                         ; $65fe: $90
    ld h, b                                       ; $65ff: $60
    ld l, d                                       ; $6600: $6a
    nop                                           ; $6601: $00
    db $10                                        ; $6602: $10
    db $fd                                        ; $6603: $fd
    ld [$18ee], sp                                ; $6604: $08 $ee $18
    adc e                                         ; $6607: $8b
    ld a, b                                       ; $6608: $78
    ccf                                           ; $6609: $3f
    ld [bc], a                                    ; $660a: $02
    ldh a, [$df]                                  ; $660b: $f0 $df
    ldh [$ad], a                                  ; $660d: $e0 $ad
    ld d, d                                       ; $660f: $52
    inc b                                         ; $6610: $04
    or $01                                        ; $6611: $f6 $01
    ld d, l                                       ; $6613: $55
    ld [bc], a                                    ; $6614: $02
    nop                                           ; $6615: $00
    cp e                                          ; $6616: $bb
    nop                                           ; $6617: $00
    ld [hl], a                                    ; $6618: $77
    nop                                           ; $6619: $00
    db $ed                                        ; $661a: $ed
    ld a, [hl+]                                   ; $661b: $2a
    ld [bc], a                                    ; $661c: $02
    cp $78                                        ; $661d: $fe $78
    ld bc, $3100                                  ; $661f: $01 $00 $31
    jr nz, jr_097_6626                            ; $6622: $20 $02

    ld [hl], l                                    ; $6624: $75
    ld a, [bc]                                    ; $6625: $0a

jr_097_6626:
    ld b, c                                       ; $6626: $41
    ld bc, $11ff                                  ; $6627: $01 $ff $11
    rst $28                                       ; $662a: $ef
    ld b, b                                       ; $662b: $40
    and e                                         ; $662c: $a3
    ld d, b                                       ; $662d: $50
    ld [hl-], a                                   ; $662e: $32
    ret nz                                        ; $662f: $c0

    add b                                         ; $6630: $80
    ret                                           ; $6631: $c9


    nop                                           ; $6632: $00
    ld a, a                                       ; $6633: $7f
    add b                                         ; $6634: $80
    nop                                           ; $6635: $00
    ld e, a                                       ; $6636: $5f
    ldh [$a8], a                                  ; $6637: $e0 $a8
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    ld a, a                                       ; $663b: $7f
    ld l, [hl]                                    ; $663c: $6e
    sub c                                         ; $663d: $91
    dec b                                         ; $663e: $05
    reti                                          ; $663f: $d9


    daa                                           ; $6640: $27
    cp $00                                        ; $6641: $fe $00
    push af                                       ; $6643: $f5
    ld b, d                                       ; $6644: $42
    ld [bc], a                                    ; $6645: $02
    ld [hl], h                                    ; $6646: $74
    ld d, b                                       ; $6647: $50
    ld bc, $5050                                  ; $6648: $01 $50 $50
    ld b, d                                       ; $664b: $42
    ld [bc], a                                    ; $664c: $02
    ld b, d                                       ; $664d: $42
    ld h, b                                       ; $664e: $60
    ld [bc], a                                    ; $664f: $02
    cp $01                                        ; $6650: $fe $01
    db $fd                                        ; $6652: $fd
    ld [bc], a                                    ; $6653: $02
    nop                                           ; $6654: $00
    ld a, c                                       ; $6655: $79
    ld [bc], a                                    ; $6656: $02
    sbc $03                                       ; $6657: $de $03
    xor $03                                       ; $6659: $ee $03
    ld e, a                                       ; $665b: $5f
    ld bc, $a900                                  ; $665c: $01 $00 $a9
    nop                                           ; $665f: $00
    rlca                                          ; $6660: $07
    cp $ce                                        ; $6661: $fe $ce
    inc bc                                        ; $6663: $03
    rlca                                          ; $6664: $07
    inc bc                                        ; $6665: $03
    nop                                           ; $6666: $00
    sbc a                                         ; $6667: $9f
    ld bc, $43bd                                  ; $6668: $01 $bd $43
    add e                                         ; $666b: $83
    cp $fd                                        ; $666c: $fe $fd
    cp $28                                        ; $666e: $fe $28
    ld d, h                                       ; $6670: $54
    xor a                                         ; $6671: $af
    or b                                          ; $6672: $b0
    ld c, b                                       ; $6673: $48
    ld b, d                                       ; $6674: $42
    ld a, h                                       ; $6675: $7c
    db $10                                        ; $6676: $10
    xor b                                         ; $6677: $a8
    rlca                                          ; $6678: $07
    ld d, l                                       ; $6679: $55
    nop                                           ; $667a: $00
    ld [$10a8], sp                                ; $667b: $08 $a8 $10
    rla                                           ; $667e: $17
    jr jr_097_66b5                                ; $667f: $18 $34

    rra                                           ; $6681: $1f
    ld e, a                                       ; $6682: $5f
    nop                                           ; $6683: $00
    rrca                                          ; $6684: $0f
    xor l                                         ; $6685: $ad
    ld [bc], a                                    ; $6686: $02
    ld c, d                                       ; $6687: $4a
    rlca                                          ; $6688: $07
    and e                                         ; $6689: $a3
    ld bc, $0050                                  ; $668a: $01 $50 $00
    add b                                         ; $668d: $80
    ldh [rSCX], a                                 ; $668e: $e0 $43
    jp c, Jump_097_4544                           ; $6690: $da $44 $45

    ret z                                         ; $6693: $c8

    sbc e                                         ; $6694: $9b
    ld [$2acc], sp                                ; $6695: $08 $cc $2a
    sbc a                                         ; $6698: $9f
    ld [hl+], a                                   ; $6699: $22
    sub d                                         ; $669a: $92
    ld [bc], a                                    ; $669b: $02
    xor d                                         ; $669c: $aa
    nop                                           ; $669d: $00
    push de                                       ; $669e: $d5
    and c                                         ; $669f: $a1
    call nz, $ff02                                ; $66a0: $c4 $02 $ff
    or h                                          ; $66a3: $b4
    ld [bc], a                                    ; $66a4: $02
    rst $38                                       ; $66a5: $ff
    nop                                           ; $66a6: $00
    ld d, [hl]                                    ; $66a7: $56
    ld bc, $5a80                                  ; $66a8: $01 $80 $5a
    ld [bc], a                                    ; $66ab: $02
    rst $00                                       ; $66ac: $c7
    rrca                                          ; $66ad: $0f
    adc l                                         ; $66ae: $8d
    ld [bc], a                                    ; $66af: $02
    ld d, [hl]                                    ; $66b0: $56
    ld bc, $39c0                                  ; $66b1: $01 $c0 $39
    db $dd                                        ; $66b4: $dd

jr_097_66b5:
    nop                                           ; $66b5: $00
    ld [hl+], a                                   ; $66b6: $22
    ld a, [hl+]                                   ; $66b7: $2a
    push de                                       ; $66b8: $d5
    dec d                                         ; $66b9: $15
    ld [$d52a], a                                 ; $66ba: $ea $2a $d5
    inc d                                         ; $66bd: $14
    nop                                           ; $66be: $00
    db $eb                                        ; $66bf: $eb
    inc b                                         ; $66c0: $04
    rst $38                                       ; $66c1: $ff
    ld c, d                                       ; $66c2: $4a
    rst $38                                       ; $66c3: $ff
    push af                                       ; $66c4: $f5
    rst $38                                       ; $66c5: $ff
    ld a, c                                       ; $66c6: $79
    nop                                           ; $66c7: $00
    add [hl]                                      ; $66c8: $86
    add sp, $17                                   ; $66c9: $e8 $17
    ld d, b                                       ; $66cb: $50
    xor a                                         ; $66cc: $af
    add d                                         ; $66cd: $82
    ld a, a                                       ; $66ce: $7f
    ld b, h                                       ; $66cf: $44
    ld [$28bf], sp                                ; $66d0: $08 $bf $28
    rst $38                                       ; $66d3: $ff
    ld d, l                                       ; $66d4: $55
    ld b, d                                       ; $66d5: $42
    inc bc                                        ; $66d6: $03
    inc de                                        ; $66d7: $13
    rst $28                                       ; $66d8: $ef
    push bc                                       ; $66d9: $c5
    db $10                                        ; $66da: $10
    ld a, [$fff0]                                 ; $66db: $fa $f0 $ff
    rst $00                                       ; $66de: $c7
    ld bc, $3fff                                  ; $66df: $01 $ff $3f
    rst $38                                       ; $66e2: $ff
    sbc [hl]                                      ; $66e3: $9e
    nop                                           ; $66e4: $00
    ld a, [hl]                                    ; $66e5: $7e
    inc e                                         ; $66e6: $1c
    db $fc                                        ; $66e7: $fc
    ldh [$e0], a                                  ; $66e8: $e0 $e0
    cp a                                          ; $66ea: $bf
    ld a, a                                       ; $66eb: $7f
    jr z, jr_097_66f6                             ; $66ec: $28 $08

    rst $10                                       ; $66ee: $d7
    add l                                         ; $66ef: $85
    ld a, [$89e8]                                 ; $66f0: $fa $e8 $89
    inc bc                                        ; $66f3: $03
    rrca                                          ; $66f4: $0f
    rrca                                          ; $66f5: $0f

jr_097_66f6:
    ld a, h                                       ; $66f6: $7c
    nop                                           ; $66f7: $00

jr_097_66f8:
    ld a, h                                       ; $66f8: $7c
    sub b                                         ; $66f9: $90
    ld [hl], b                                    ; $66fa: $70
    sub c                                         ; $66fb: $91
    ld [hl], c                                    ; $66fc: $71
    sub d                                         ; $66fd: $92
    ld [hl], e                                    ; $66fe: $73
    sbc a                                         ; $66ff: $9f
    nop                                           ; $6700: $00
    ld a, a                                       ; $6701: $7f
    or c                                          ; $6702: $b1
    ld [hl], c                                    ; $6703: $71
    sub c                                         ; $6704: $91
    ld [hl], c                                    ; $6705: $71
    jr nc, jr_097_66f8                            ; $6706: $30 $f0

    sub b                                         ; $6708: $90
    nop                                           ; $6709: $00
    ld [hl], b                                    ; $670a: $70
    sub h                                         ; $670b: $94
    db $ec                                        ; $670c: $ec
    inc l                                         ; $670d: $2c
    call c, $7898                                 ; $670e: $dc $98 $78
    ldh a, [rP1]                                  ; $6711: $f0 $00
    ldh a, [rOBP0]                                ; $6713: $f0 $48
    cp b                                          ; $6715: $b8
    xor b                                         ; $6716: $a8
    ret c                                         ; $6717: $d8

    call nc, $74ec                                ; $6718: $d4 $ec $74
    nop                                           ; $671b: $00
    ld a, h                                       ; $671c: $7c
    inc a                                         ; $671d: $3c
    db $fc                                        ; $671e: $fc
    ld [hl], e                                    ; $671f: $73
    rst $38                                       ; $6720: $ff
    inc [hl]                                      ; $6721: $34
    ei                                            ; $6722: $fb
    ld h, c                                       ; $6723: $61
    ld hl, $60fe                                  ; $6724: $21 $fe $60
    cp c                                          ; $6727: $b9
    inc de                                        ; $6728: $13
    ld b, b                                       ; $6729: $40
    ret nz                                        ; $672a: $c0

    inc e                                         ; $672b: $1c
    inc e                                         ; $672c: $1c
    and d                                         ; $672d: $a2
    dec bc                                        ; $672e: $0b
    db $10                                        ; $672f: $10
    ld a, a                                       ; $6730: $7f
    add b                                         ; $6731: $80
    nop                                           ; $6732: $00
    ret                                           ; $6733: $c9


    inc de                                        ; $6734: $13
    nop                                           ; $6735: $00

jr_097_6736:
    nop                                           ; $6736: $00
    ld e, a                                       ; $6737: $5f
    and b                                         ; $6738: $a0
    nop                                           ; $6739: $00
    dec sp                                        ; $673a: $3b
    call nz, $aa55                                ; $673b: $c4 $55 $aa
    ld a, [hl+]                                   ; $673e: $2a
    push de                                       ; $673f: $d5
    nop                                           ; $6740: $00
    rst $38                                       ; $6741: $ff
    nop                                           ; $6742: $00

Jump_097_6743:
    inc b                                         ; $6743: $04
    rst $38                                       ; $6744: $ff
    ld a, [hl+]                                   ; $6745: $2a
    rst $38                                       ; $6746: $ff
    push de                                       ; $6747: $d5
    rst $38                                       ; $6748: $ff
    db $db                                        ; $6749: $db
    inc h                                         ; $674a: $24
    nop                                           ; $674b: $00
    cp a                                          ; $674c: $bf
    ld b, b                                       ; $674d: $40
    ld c, [hl]                                    ; $674e: $4e
    or c                                          ; $674f: $b1
    sub l                                         ; $6750: $95
    ld l, d                                       ; $6751: $6a
    ld a, [hl+]                                   ; $6752: $2a
    push af                                       ; $6753: $f5
    inc b                                         ; $6754: $04
    ld d, l                                       ; $6755: $55
    ld [$ff85], a                                 ; $6756: $ea $85 $ff
    ld a, d                                       ; $6759: $7a
    call z, Call_097_7503                         ; $675a: $cc $03 $75
    adc d                                         ; $675d: $8a
    nop                                           ; $675e: $00
    ld [$d015], a                                 ; $675f: $ea $15 $d0
    cpl                                           ; $6762: $2f
    and c                                         ; $6763: $a1
    ld e, a                                       ; $6764: $5f
    ld a, [bc]                                    ; $6765: $0a
    rst $38                                       ; $6766: $ff
    db $10                                        ; $6767: $10
    ld d, a                                       ; $6768: $57
    rst $38                                       ; $6769: $ff
    xor a                                         ; $676a: $af
    or c                                          ; $676b: $b1
    inc bc                                        ; $676c: $03
    ldh a, [$f0]                                  ; $676d: $f0 $f0
    ld c, $fe                                     ; $676f: $0e $fe
    nop                                           ; $6771: $00
    db $e3                                        ; $6772: $e3
    rra                                           ; $6773: $1f
    ld c, $f1                                     ; $6774: $0e $f1
    pop hl                                        ; $6776: $e1
    cp $fc                                        ; $6777: $fe $fc
    rst $38                                       ; $6779: $ff
    nop                                           ; $677a: $00
    rra                                           ; $677b: $1f
    rra                                           ; $677c: $1f
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    rlca                                          ; $677f: $07
    rlca                                          ; $6780: $07
    ld [$000f], sp                                ; $6781: $08 $0f $00
    sub [hl]                                      ; $6784: $96
    sbc c                                         ; $6785: $99
    ld d, b                                       ; $6786: $50
    rst $18                                       ; $6787: $df
    cp a                                          ; $6788: $bf
    ld a, a                                       ; $6789: $7f
    ld d, b                                       ; $678a: $50
    or b                                          ; $678b: $b0
    nop                                           ; $678c: $00
    add hl, hl                                    ; $678d: $29
    reti                                          ; $678e: $d9


    db $fc                                        ; $678f: $fc

jr_097_6790:
    db $fc                                        ; $6790: $fc
    ld a, [de]                                    ; $6791: $1a
    and $c4                                       ; $6792: $e6 $c4
    inc a                                         ; $6794: $3c
    nop                                           ; $6795: $00
    jr jr_097_6790                                ; $6796: $18 $f8

    db $fc                                        ; $6798: $fc
    db $fc                                        ; $6799: $fc
    db $e3                                        ; $679a: $e3
    rst $38                                       ; $679b: $ff
    cp b                                          ; $679c: $b8
    rst $00                                       ; $679d: $c7
    jr nz, jr_097_6736                            ; $679e: $20 $96

    jp hl                                         ; $67a0: $e9


    ldh a, [$39]                                  ; $67a1: $f0 $39
    ld bc, $8201                                  ; $67a3: $01 $01 $82
    add e                                         ; $67a6: $83
    ld b, l                                       ; $67a7: $45
    nop                                           ; $67a8: $00
    add $03                                       ; $67a9: $c6 $03
    inc bc                                        ; $67ab: $03
    ld bc, $1c01                                  ; $67ac: $01 $01 $1c
    inc e                                         ; $67af: $1c
    ld [hl+], a                                   ; $67b0: $22
    nop                                           ; $67b1: $00
    ld a, $5d                                     ; $67b2: $3e $5d
    ld h, e                                       ; $67b4: $63
    add $fe                                       ; $67b5: $c6 $fe
    ld a, h                                       ; $67b7: $7c
    ld a, h                                       ; $67b8: $7c
    nop                                           ; $67b9: $00
    nop                                           ; $67ba: $00
    nop                                           ; $67bb: $00
    adc h                                         ; $67bc: $8c
    db $fc                                        ; $67bd: $fc
    sub h                                         ; $67be: $94
    db $ec                                        ; $67bf: $ec
    call nc, $d2ec                                ; $67c0: $d4 $ec $d2
    inc b                                         ; $67c3: $04
    xor $d2                                       ; $67c4: $ee $d2
    xor $52                                       ; $67c6: $ee $52
    ld l, [hl]                                    ; $67c8: $6e
    ld [bc], a                                    ; $67c9: $02
    ld [$ffe9], sp                                ; $67ca: $08 $e9 $ff
    jr nz, jr_097_684e                            ; $67cd: $20 $7f

    ld a, a                                       ; $67cf: $7f
    inc h                                         ; $67d0: $24
    ld c, d                                       ; $67d1: $4a
    ld a, [$14fd]                                 ; $67d2: $fa $fd $14
    dec de                                        ; $67d5: $1b
    stop                                          ; $67d6: $10 $00
    rra                                           ; $67d8: $1f
    add hl, hl                                    ; $67d9: $29
    scf                                           ; $67da: $37
    ld hl, $2b3f                                  ; $67db: $21 $3f $2b
    scf                                           ; $67de: $37
    ld c, d                                       ; $67df: $4a
    nop                                           ; $67e0: $00
    halt                                          ; $67e1: $76
    ld c, d                                       ; $67e2: $4a
    halt                                          ; $67e3: $76
    nop                                           ; $67e4: $00
    nop                                           ; $67e5: $00
    ret nz                                        ; $67e6: $c0

    ret nz                                        ; $67e7: $c0

    ld a, $02                                     ; $67e8: $3e $02
    cp $f5                                        ; $67ea: $fe $f5
    dec bc                                        ; $67ec: $0b
    ld [bc], a                                    ; $67ed: $02
    db $fd                                        ; $67ee: $fd
    ldh [rNR14], a                                ; $67ef: $e0 $14
    add hl, bc                                    ; $67f1: $09
    ccf                                           ; $67f2: $3f
    and b                                         ; $67f3: $a0
    ld [hl], $08                                  ; $67f4: $36 $08
    ld d, [hl]                                    ; $67f6: $56
    db $fc                                        ; $67f7: $fc
    inc b                                         ; $67f8: $04
    add $fe                                       ; $67f9: $c6 $fe
    sub [hl]                                      ; $67fb: $96
    xor $87                                       ; $67fc: $ee $87
    ld de, $86ff                                  ; $67fe: $11 $ff $86
    rst $38                                       ; $6801: $ff
    inc h                                         ; $6802: $24
    ld [$764a], sp                                ; $6803: $08 $4a $76
    ld l, d                                       ; $6806: $6a
    ld a, [hl+]                                   ; $6807: $2a
    nop                                           ; $6808: $00
    jr nc, jr_097_686d                            ; $6809: $30 $62

    ld a, [hl]                                    ; $680b: $7e
    ld [$c408], sp                                ; $680c: $08 $08 $c4
    inc bc                                        ; $680f: $03
    db $10                                        ; $6810: $10
    push af                                       ; $6811: $f5
    ld a, [bc]                                    ; $6812: $0a
    and d                                         ; $6813: $a2
    nop                                           ; $6814: $00
    ld e, l                                       ; $6815: $5d
    ld b, h                                       ; $6816: $44
    cp e                                          ; $6817: $bb
    ld hl, $52ff                                  ; $6818: $21 $ff $52
    rst $38                                       ; $681b: $ff
    xor l                                         ; $681c: $ad
    add b                                         ; $681d: $80
    ld [hl], c                                    ; $681e: $71
    inc b                                         ; $681f: $04
    inc bc                                        ; $6820: $03
    inc bc                                        ; $6821: $03
    inc e                                         ; $6822: $1c
    rra                                           ; $6823: $1f
    ld h, a                                       ; $6824: $67
    ld a, b                                       ; $6825: $78
    or b                                          ; $6826: $b0
    inc bc                                        ; $6827: $03
    rst $08                                       ; $6828: $cf
    ld b, b                                       ; $6829: $40
    cp a                                          ; $682a: $bf
    add a                                         ; $682b: $87
    ld a, a                                       ; $682c: $7f
    rra                                           ; $682d: $1f
    add c                                         ; $682e: $81
    inc c                                         ; $682f: $0c
    or b                                          ; $6830: $b0
    inc b                                         ; $6831: $04
    ldh [$88], a                                  ; $6832: $e0 $88
    inc c                                         ; $6834: $0c
    ld h, h                                       ; $6835: $64
    add hl, bc                                    ; $6836: $09
    xor c                                         ; $6837: $a9
    inc bc                                        ; $6838: $03
    nop                                           ; $6839: $00
    add b                                         ; $683a: $80
    add b                                         ; $683b: $80
    ld h, b                                       ; $683c: $60
    ldh [rP1], a                                  ; $683d: $e0 $00
    sbc b                                         ; $683f: $98
    ld a, b                                       ; $6840: $78
    scf                                           ; $6841: $37
    rst $08                                       ; $6842: $cf
    dec bc                                        ; $6843: $0b
    rst $30                                       ; $6844: $f7
    push bc                                       ; $6845: $c5
    ei                                            ; $6846: $fb
    nop                                           ; $6847: $00
    pop af                                        ; $6848: $f1
    cp $01                                        ; $6849: $fe $01
    ld bc, $0706                                  ; $684b: $01 $06 $07

jr_097_684e:
    add hl, de                                    ; $684e: $19
    ld e, $00                                     ; $684f: $1e $00
    ld l, h                                       ; $6851: $6c
    ld [hl], e                                    ; $6852: $73
    or c                                          ; $6853: $b1
    rst $08                                       ; $6854: $cf
    ld b, a                                       ; $6855: $47

jr_097_6856:
    cp a                                          ; $6856: $bf
    rst $08                                       ; $6857: $cf
    rst $38                                       ; $6858: $ff
    nop                                           ; $6859: $00
    cp h                                          ; $685a: $bc
    ld a, h                                       ; $685b: $7c
    jr c, jr_097_6856                             ; $685c: $38 $f8

    ld h, b                                       ; $685e: $60
    ldh [$c0], a                                  ; $685f: $e0 $c0
    ret nz                                        ; $6861: $c0

    nop                                           ; $6862: $00
    db $fc                                        ; $6863: $fc
    db $fc                                        ; $6864: $fc
    ld a, [c]                                     ; $6865: $f2
    adc $4d                                       ; $6866: $ce $4d
    ld [hl], e                                    ; $6868: $73
    ccf                                           ; $6869: $3f
    ccf                                           ; $686a: $3f
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00

jr_097_686d:
    nop                                           ; $686d: $00
    inc c                                         ; $686e: $0c
    rrca                                          ; $686f: $0f
    ld [de], a                                    ; $6870: $12
    dec e                                         ; $6871: $1d
    inc h                                         ; $6872: $24
    dec sp                                        ; $6873: $3b
    nop                                           ; $6874: $00
    add hl, hl                                    ; $6875: $29
    scf                                           ; $6876: $37
    ld c, e                                       ; $6877: $4b
    ld [hl], a                                    ; $6878: $77
    ld c, d                                       ; $6879: $4a
    halt                                          ; $687a: $76
    jp z, Jump_000_00f6                           ; $687b: $ca $f6 $00

    jp z, $f8f6                                   ; $687e: $ca $f6 $f8

    rst $38                                       ; $6881: $ff
    ld a, [hl]                                    ; $6882: $7e
    rst $38                                       ; $6883: $ff
    rst $20                                       ; $6884: $e7
    rst $20                                       ; $6885: $e7
    ret nz                                        ; $6886: $c0

    ld b, l                                       ; $6887: $45
    inc bc                                        ; $6888: $03
    add sp, $23                                   ; $6889: $e8 $23
    ld c, b                                       ; $688b: $48
    cp b                                          ; $688c: $b8
    inc h                                         ; $688d: $24
    call c, $ec94                                 ; $688e: $dc $94 $ec
    ld a, [bc]                                    ; $6891: $0a
    db $db                                        ; $6892: $db
    rst $20                                       ; $6893: $e7
    set 6, a                                      ; $6894: $cb $f7
    sub h                                         ; $6896: $94
    ld [$c06a], sp                                ; $6897: $08 $6a $c0
    nop                                           ; $689a: $00
    inc a                                         ; $689b: $3c
    nop                                           ; $689c: $00
    inc a                                         ; $689d: $3c
    ld c, a                                       ; $689e: $4f
    ld [hl], e                                    ; $689f: $73
    ld d, e                                       ; $68a0: $53
    ld l, a                                       ; $68a1: $6f
    and [hl]                                      ; $68a2: $a6
    sbc $9c                                       ; $68a3: $de $9c
    inc b                                         ; $68a5: $04
    db $fc                                        ; $68a6: $fc
    ldh a, [$f0]                                  ; $68a7: $f0 $f0
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    call nc, $c208                                ; $68ab: $d4 $08 $c2
    cp $00                                        ; $68ae: $fe $00
    ld c, d                                       ; $68b0: $4a
    halt                                          ; $68b1: $76
    ld b, d                                       ; $68b2: $42
    ld a, [hl]                                    ; $68b3: $7e
    ld l, d                                       ; $68b4: $6a
    halt                                          ; $68b5: $76
    ld b, l                                       ; $68b6: $45
    ld a, e                                       ; $68b7: $7b
    jr nz, jr_097_691d                            ; $68b8: $20 $63

    ld a, l                                       ; $68ba: $7d
    rra                                           ; $68bb: $1f
    inc e                                         ; $68bc: $1c
    ldh a, [$f0]                                  ; $68bd: $f0 $f0
    adc h                                         ; $68bf: $8c
    db $fc                                        ; $68c0: $fc
    jp nc, $ee06                                  ; $68c1: $d2 $06 $ee

    ld l, c                                       ; $68c4: $69
    ld [hl], a                                    ; $68c5: $77
    inc sp                                        ; $68c6: $33
    dec a                                         ; $68c7: $3d
    call z, Call_000_0418                         ; $68c8: $cc $18 $04
    jr z, jr_097_692f                             ; $68cb: $28 $62

    rlca                                          ; $68cd: $07
    ld a, [hl]                                    ; $68ce: $7e
    ld a, [$7d05]                                 ; $68cf: $fa $05 $7d
    add d                                         ; $68d2: $82
    sub b                                         ; $68d3: $90
    ld c, c                                       ; $68d4: $49
    ld [hl], b                                    ; $68d5: $70
    dec c                                         ; $68d6: $0d
    ld b, [hl]                                    ; $68d7: $46
    dec c                                         ; $68d8: $0d
    ld b, b                                       ; $68d9: $40
    ld a, a                                       ; $68da: $7f
    adc $11                                       ; $68db: $ce $11
    rra                                           ; $68dd: $1f
    rra                                           ; $68de: $1f
    ldh a, [$f0]                                  ; $68df: $f0 $f0
    rrca                                          ; $68e1: $0f
    rst $38                                       ; $68e2: $ff
    ld [bc], a                                    ; $68e3: $02
    ld hl, sp+$07                                 ; $68e4: $f8 $07
    rlca                                          ; $68e6: $07
    ld hl, sp-$60                                 ; $68e7: $f8 $a0
    rst $38                                       ; $68e9: $ff
    sbc [hl]                                      ; $68ea: $9e
    add hl, bc                                    ; $68eb: $09
    add e                                         ; $68ec: $83

jr_097_68ed:
    ld b, b                                       ; $68ed: $40
    add e                                         ; $68ee: $83
    dec de                                        ; $68ef: $1b
    dec c                                         ; $68f0: $0d
    ldh [$e0], a                                  ; $68f1: $e0 $e0
    jr jr_097_68ed                                ; $68f3: $18 $f8

    db $e4                                        ; $68f5: $e4
    inc e                                         ; $68f6: $1c
    nop                                           ; $68f7: $00
    ld a, [de]                                    ; $68f8: $1a
    and $85                                       ; $68f9: $e6 $85
    ei                                            ; $68fb: $fb
    ld [c], a                                     ; $68fc: $e2
    db $fd                                        ; $68fd: $fd
    jr nc, jr_097_6930                            ; $68fe: $30 $30

    nop                                           ; $6900: $00
    jr z, jr_097_693b                             ; $6901: $28 $38

    inc l                                         ; $6903: $2c
    inc [hl]                                      ; $6904: $34
    ld a, [hl+]                                   ; $6905: $2a
    ld [hl], $25                                  ; $6906: $36 $25
    dec sp                                        ; $6908: $3b
    nop                                           ; $6909: $00
    dec [hl]                                      ; $690a: $35
    dec sp                                        ; $690b: $3b
    add hl, de                                    ; $690c: $19
    rra                                           ; $690d: $1f
    adc l                                         ; $690e: $8d
    adc a                                         ; $690f: $8f
    ld h, c                                       ; $6910: $61
    ld a, a                                       ; $6911: $7f
    ld bc, $e69a                                  ; $6912: $01 $9a $e6
    call nz, Call_097_78bc                        ; $6915: $c4 $bc $78
    ld hl, sp-$80                                 ; $6918: $f8 $80
    sbc d                                         ; $691a: $9a
    inc hl                                        ; $691b: $23
    add b                                         ; $691c: $80

jr_097_691d:
    ldh a, [$08]                                  ; $691d: $f0 $08
    jr @+$21                                      ; $691f: $18 $1f

    ld h, $39                                     ; $6921: $26 $39
    inc l                                         ; $6923: $2c
    inc sp                                        ; $6924: $33
    ld c, b                                       ; $6925: $48
    nop                                           ; $6926: $00
    ld [hl], a                                    ; $6927: $77
    ld d, c                                       ; $6928: $51
    ld l, a                                       ; $6929: $6f
    ld d, d                                       ; $692a: $52
    ld l, [hl]                                    ; $692b: $6e
    pop af                                        ; $692c: $f1
    cp $18                                        ; $692d: $fe $18

jr_097_692f:
    ld [bc], a                                    ; $692f: $02

jr_097_6930:
    rst $38                                       ; $6930: $ff
    xor h                                         ; $6931: $ac
    ld e, a                                       ; $6932: $5f
    ld c, $ff                                     ; $6933: $0e $ff
    rra                                           ; $6935: $1f
    ld sp, hl                                     ; $6936: $f9
    dec b                                         ; $6937: $05
    add a                                         ; $6938: $87
    inc b                                         ; $6939: $04
    add a                                         ; $693a: $87

jr_097_693b:
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    ld b, e                                       ; $693d: $43
    jp Jump_000_01e8                              ; $693e: $c3 $e8 $01


    cp a                                          ; $6941: $bf
    dec [hl]                                      ; $6942: $35
    nop                                           ; $6943: $00
    jp c, $df28                                   ; $6944: $da $28 $df

    sbc a                                         ; $6947: $9f
    rst $28                                       ; $6948: $ef
    add a                                         ; $6949: $87
    rst $38                                       ; $694a: $ff
    call nc, $ec02                                ; $694b: $d4 $02 $ec
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    ld b, $06                                     ; $6950: $06 $06
    ld a, [de]                                    ; $6952: $1a
    add d                                         ; $6953: $82
    ld b, $4a                                     ; $6954: $06 $4a
    ld c, h                                       ; $6956: $4c
    halt                                          ; $6957: $76
    adc b                                         ; $6958: $88
    add hl, bc                                    ; $6959: $09
    ld c, h                                       ; $695a: $4c
    ld a, h                                       ; $695b: $7c
    add $19                                       ; $695c: $c6 $19
    sub [hl]                                      ; $695e: $96
    add hl, de                                    ; $695f: $19

jr_097_6960:
    ld d, [hl]                                    ; $6960: $56
    ld l, [hl]                                    ; $6961: $6e
    nop                                           ; $6962: $00
    ld b, [hl]                                    ; $6963: $46
    ld a, [hl]                                    ; $6964: $7e
    inc bc                                        ; $6965: $03
    inc bc                                        ; $6966: $03
    dec b                                         ; $6967: $05
    rlca                                          ; $6968: $07
    dec c                                         ; $6969: $0d
    dec bc                                        ; $696a: $0b
    nop                                           ; $696b: $00
    dec d                                         ; $696c: $15
    dec de                                        ; $696d: $1b
    dec hl                                        ; $696e: $2b
    scf                                           ; $696f: $37
    ld [hl+], a                                   ; $6970: $22
    ld a, $34                                     ; $6971: $3e $34
    inc l                                         ; $6973: $2c
    jr nz, jr_097_698e                            ; $6974: $20 $18

    jr jr_097_6960                                ; $6976: $18 $e8

    ld [$7b65], sp                                ; $6978: $08 $65 $7b
    jr nc, jr_097_69bc                            ; $697b: $30 $3f

    ld [hl-], a                                   ; $697d: $32
    nop                                           ; $697e: $00
    dec a                                         ; $697f: $3d
    jr jr_097_69a1                                ; $6980: $18 $1f

    add hl, bc                                    ; $6982: $09
    ld c, $0d                                     ; $6983: $0e $0d
    ld c, $38                                     ; $6985: $0e $38
    nop                                           ; $6987: $00

jr_097_6988:
    rrca                                          ; $6988: $0f
    ld hl, sp+$0f                                 ; $6989: $f8 $0f
    db $ed                                        ; $698b: $ed
    ld a, [de]                                    ; $698c: $1a
    dec de                                        ; $698d: $1b

jr_097_698e:
    db $f4                                        ; $698e: $f4
    dec a                                         ; $698f: $3d
    nop                                           ; $6990: $00
    ld a, [c]                                     ; $6991: $f2
    di                                            ; $6992: $f3
    call z, $82cd                                 ; $6993: $cc $cd $82
    add d                                         ; $6996: $82
    ld bc, $0243                                  ; $6997: $01 $43 $02
    add b                                         ; $699a: $80
    cp a                                          ; $699b: $bf
    ld b, b                                       ; $699c: $40
    inc d                                         ; $699d: $14
    db $eb                                        ; $699e: $eb
    pop de                                        ; $699f: $d1
    ld a, [c]                                     ; $69a0: $f2

jr_097_69a1:
    ld [bc], a                                    ; $69a1: $02
    sbc a                                         ; $69a2: $9f
    nop                                           ; $69a3: $00
    ld [bc], a                                    ; $69a4: $02
    adc e                                         ; $69a5: $8b
    ld b, $f2                                     ; $69a6: $06 $f2
    rrca                                          ; $69a8: $0f
    ld l, [hl]                                    ; $69a9: $6e
    sub b                                         ; $69aa: $90
    cp a                                          ; $69ab: $bf
    nop                                           ; $69ac: $00
    ret nz                                        ; $69ad: $c0

    db $d3                                        ; $69ae: $d3
    xor b                                         ; $69af: $a8
    add e                                         ; $69b0: $83
    db $fc                                        ; $69b1: $fc
    call $0602                                    ; $69b2: $cd $02 $06
    dec b                                         ; $69b5: $05
    ld bc, $01c7                                  ; $69b6: $01 $c7 $01
    db $fd                                        ; $69b9: $fd
    inc bc                                        ; $69ba: $03
    ret nz                                        ; $69bb: $c0

jr_097_69bc:
    ld c, e                                       ; $69bc: $4b

jr_097_69bd:
    and c                                         ; $69bd: $a1
    ret nz                                        ; $69be: $c0

    inc bc                                        ; $69bf: $03
    ld b, b                                       ; $69c0: $40
    and d                                         ; $69c1: $a2
    sub c                                         ; $69c2: $91
    ld b, $fa                                     ; $69c3: $06 $fa
    dec b                                         ; $69c5: $05
    jr nz, jr_097_6988                            ; $69c6: $20 $c0

    ret z                                         ; $69c8: $c8

    jr nc, jr_097_69cb                            ; $69c9: $30 $00

jr_097_69cb:
    db $10                                        ; $69cb: $10
    ld [$08bc], sp                                ; $69cc: $08 $bc $08
    ld c, b                                       ; $69cf: $48
    cp a                                          ; $69d0: $bf
    sbc c                                         ; $69d1: $99
    rst $20                                       ; $69d2: $e7
    ld bc, $fe47                                  ; $69d3: $01 $47 $fe
    ld a, [$acfc]                                 ; $69d6: $fa $fc $ac
    ld d, b                                       ; $69d9: $50
    jr z, @+$52                                   ; $69da: $28 $50

    dec d                                         ; $69dc: $15
    ld a, b                                       ; $69dd: $78
    ld h, l                                       ; $69de: $65
    rst $10                                       ; $69df: $d7
    nop                                           ; $69e0: $00
    ld l, $1e                                     ; $69e1: $2e $1e
    ret nz                                        ; $69e3: $c0

    dec sp                                        ; $69e4: $3b
    ld b, b                                       ; $69e5: $40
    ld a, $48                                     ; $69e6: $3e $48
    nop                                           ; $69e8: $00
    sub h                                         ; $69e9: $94
    nop                                           ; $69ea: $00
    ld b, b                                       ; $69eb: $40
    db $f4                                        ; $69ec: $f4
    ld hl, sp+$38                                 ; $69ed: $f8 $38
    ldh [$a7], a                                  ; $69ef: $e0 $a7
    ld a, b                                       ; $69f1: $78
    or b                                          ; $69f2: $b0
    nop                                           ; $69f3: $00
    ccf                                           ; $69f4: $3f
    ld l, a                                       ; $69f5: $6f
    rra                                           ; $69f6: $1f
    jp hl                                         ; $69f7: $e9


    ld d, $77                                     ; $69f8: $16 $77
    ld [$00fe], sp                                ; $69fa: $08 $fe $00
    ld bc, $40ba                                  ; $69fd: $01 $ba $40
    ld d, l                                       ; $6a00: $55
    jr nz, jr_097_69bd                            ; $6a01: $20 $ba

    ld h, b                                       ; $6a03: $60
    ld e, l                                       ; $6a04: $5d
    ld b, $e0                                     ; $6a05: $06 $e0
    cp e                                          ; $6a07: $bb
    ret nz                                        ; $6a08: $c0

    ld l, [hl]                                    ; $6a09: $6e
    add b                                         ; $6a0a: $80
    push bc                                       ; $6a0b: $c5
    ld c, $d0                                     ; $6a0c: $0e $d0
    dec bc                                        ; $6a0e: $0b
    xor e                                         ; $6a0f: $ab
    nop                                           ; $6a10: $00
    ld bc, $03d5                                  ; $6a11: $01 $d5 $03
    xor c                                         ; $6a14: $a9
    rlca                                          ; $6a15: $07
    push af                                       ; $6a16: $f5
    dec bc                                        ; $6a17: $0b
    db $db                                        ; $6a18: $db
    nop                                           ; $6a19: $00
    dec b                                         ; $6a1a: $05
    rst $30                                       ; $6a1b: $f7
    add hl, bc                                    ; $6a1c: $09
    add hl, hl                                    ; $6a1d: $29
    add b                                         ; $6a1e: $80
    sbc $80                                       ; $6a1f: $de $80
    dec sp                                        ; $6a21: $3b
    ld bc, $4fc0                                  ; $6a22: $01 $c0 $4f
    and b                                         ; $6a25: $a0
    cp [hl]                                       ; $6a26: $be
    ret nz                                        ; $6a27: $c0

    rst $18                                       ; $6a28: $df
    and b                                         ; $6a29: $a0
    ld h, b                                       ; $6a2a: $60
    ld c, $00                                     ; $6a2b: $0e $00
    ld bc, $a3ff                                  ; $6a2d: $01 $ff $a3
    ld e, a                                       ; $6a30: $5f
    ld b, e                                       ; $6a31: $43
    cp a                                          ; $6a32: $bf
    and e                                         ; $6a33: $a3
    ld e, a                                       ; $6a34: $5f
    inc c                                         ; $6a35: $0c
    ld b, c                                       ; $6a36: $41
    cp a                                          ; $6a37: $bf
    add h                                         ; $6a38: $84
    ld a, e                                       ; $6a39: $7b
    ld b, b                                       ; $6a3a: $40
    ld c, $e0                                     ; $6a3b: $0e $e0
    dec h                                         ; $6a3d: $25
    ld [$0004], sp                                ; $6a3e: $08 $04 $00
    inc b                                         ; $6a41: $04
    ld b, $02                                     ; $6a42: $06 $02
    inc de                                        ; $6a44: $13
    inc bc                                        ; $6a45: $03
    inc hl                                        ; $6a46: $23
    ld bc, $0043                                  ; $6a47: $01 $43 $00
    inc sp                                        ; $6a4a: $33
    sbc d                                         ; $6a4b: $9a
    ld a, [de]                                    ; $6a4c: $1a
    ld e, a                                       ; $6a4d: $5f
    ld c, $ae                                     ; $6a4e: $0e $ae
    inc c                                         ; $6a50: $0c
    rst $18                                       ; $6a51: $df
    inc b                                         ; $6a52: $04
    ld b, $fe                                     ; $6a53: $06 $fe
    inc bc                                        ; $6a55: $03
    rst $38                                       ; $6a56: $ff
    ld bc, $5cc0                                  ; $6a57: $01 $c0 $5c
    cp a                                          ; $6a5a: $bf
    ret nz                                        ; $6a5b: $c0

    jr nz, @-$08                                  ; $6a5c: $20 $f6

    ld sp, hl                                     ; $6a5e: $f9
    ret nz                                        ; $6a5f: $c0

    ld c, h                                       ; $6a60: $4c
    push af                                       ; $6a61: $f5
    ld a, [bc]                                    ; $6a62: $0a
    db $eb                                        ; $6a63: $eb
    dec d                                         ; $6a64: $15
    add b                                         ; $6a65: $80
    add b                                         ; $6a66: $80
    add b                                         ; $6a67: $80
    ld h, $f5                                     ; $6a68: $26 $f5
    jp z, $f0ef                                   ; $6a6a: $ca $ef $f0

    cp e                                          ; $6a6d: $bb
    ld a, h                                       ; $6a6e: $7c
    db $ed                                        ; $6a6f: $ed
    nop                                           ; $6a70: $00
    ld e, $f7                                     ; $6a71: $1e $f7
    rrca                                          ; $6a73: $0f
    rst $30                                       ; $6a74: $f7
    rlca                                          ; $6a75: $07
    xor e                                         ; $6a76: $ab
    rlca                                          ; $6a77: $07
    ld [hl], a                                    ; $6a78: $77
    nop                                           ; $6a79: $00
    inc bc                                        ; $6a7a: $03
    db $eb                                        ; $6a7b: $eb
    rlca                                          ; $6a7c: $07
    ld d, d                                       ; $6a7d: $52
    rlca                                          ; $6a7e: $07
    dec h                                         ; $6a7f: $25
    ld c, $46                                     ; $6a80: $0e $46
    ld b, b                                       ; $6a82: $40
    inc c                                         ; $6a83: $0c
    jr nz, jr_097_6a8d                            ; $6a84: $20 $07

    add b                                         ; $6a86: $80
    xor a                                         ; $6a87: $af
    add b                                         ; $6a88: $80
    ld e, a                                       ; $6a89: $5f
    add b                                         ; $6a8a: $80
    dec a                                         ; $6a8b: $3d
    nop                                           ; $6a8c: $00

jr_097_6a8d:
    add b                                         ; $6a8d: $80
    rst $28                                       ; $6a8e: $ef
    add b                                         ; $6a8f: $80
    sbc l                                         ; $6a90: $9d
    ret nz                                        ; $6a91: $c0

    ld e, e                                       ; $6a92: $5b
    ldh [$08], a                                  ; $6a93: $e0 $08
    nop                                           ; $6a95: $00
    inc c                                         ; $6a96: $0c
    inc e                                         ; $6a97: $1c
    ld [$081c], sp                                ; $6a98: $08 $1c $08
    ld [$0918], sp                                ; $6a9b: $08 $18 $09
    nop                                           ; $6a9e: $00
    jr jr_097_6ad1                                ; $6a9f: $18 $30

    add hl, de                                    ; $6aa1: $19
    ld e, e                                       ; $6aa2: $5b
    ld sp, $331b                                  ; $6aa3: $31 $1b $33
    push af                                       ; $6aa6: $f5
    ld [bc], a                                    ; $6aa7: $02
    ld h, b                                       ; $6aa8: $60
    ld [$c060], a                                 ; $6aa9: $ea $60 $c0
    ld h, b                                       ; $6aac: $60
    add b                                         ; $6aad: $80
    ld b, [hl]                                    ; $6aae: $46
    dec b                                         ; $6aaf: $05
    and c                                         ; $6ab0: $a1
    nop                                           ; $6ab1: $00
    add b                                         ; $6ab2: $80
    ld [$9480], sp                                ; $6ab3: $08 $80 $94
    nop                                           ; $6ab6: $00
    dec [hl]                                      ; $6ab7: $35
    ld l, [hl]                                    ; $6ab8: $6e
    ld l, h                                       ; $6ab9: $6c
    nop                                           ; $6aba: $00
    ld a, b                                       ; $6abb: $78
    ld e, d                                       ; $6abc: $5a
    ldh a, [$f5]                                  ; $6abd: $f0 $f5
    ldh [$ef], a                                  ; $6abf: $e0 $ef
    ret nz                                        ; $6ac1: $c0

    cp a                                          ; $6ac2: $bf
    sub b                                         ; $6ac3: $90
    or d                                          ; $6ac4: $b2
    nop                                           ; $6ac5: $00
    and l                                         ; $6ac6: $a5
    jp c, $1710                                   ; $6ac7: $da $10 $17

    jr nz, jr_097_6afa                            ; $6aca: $20 $2e

    ld b, b                                       ; $6acc: $40
    ei                                            ; $6acd: $fb
    add b                                         ; $6ace: $80
    sub $05                                       ; $6acf: $d6 $05

jr_097_6ad1:
    sbc $a1                                       ; $6ad1: $de $a1
    xor l                                         ; $6ad3: $ad
    jp nc, $fe03                                  ; $6ad4: $d2 $03 $fe

    rrca                                          ; $6ad7: $0f
    nop                                           ; $6ad8: $00
    db $f4                                        ; $6ad9: $f4
    rla                                           ; $6ada: $17
    db $ec                                        ; $6adb: $ec
    cp l                                          ; $6adc: $bd
    ld b, [hl]                                    ; $6add: $46
    push af                                       ; $6ade: $f5
    ld c, $be                                     ; $6adf: $0e $be
    inc b                                         ; $6ae1: $04
    rlca                                          ; $6ae2: $07
    ei                                            ; $6ae3: $fb
    rlca                                          ; $6ae4: $07
    db $fd                                        ; $6ae5: $fd
    inc bc                                        ; $6ae6: $03
    nop                                           ; $6ae7: $00
    inc a                                         ; $6ae8: $3c
    ld d, a                                       ; $6ae9: $57
    rst $28                                       ; $6aea: $ef
    ld b, b                                       ; $6aeb: $40
    sbc l                                         ; $6aec: $9d
    call z, $eb02                                 ; $6aed: $cc $02 $eb
    rla                                           ; $6af0: $17
    ld d, a                                       ; $6af1: $57
    xor a                                         ; $6af2: $af

Call_097_6af3:
    rst $28                                       ; $6af3: $ef
    rra                                           ; $6af4: $1f
    inc l                                         ; $6af5: $2c
    rst $18                                       ; $6af6: $df
    ccf                                           ; $6af7: $3f
    ld hl, sp+$0f                                 ; $6af8: $f8 $0f

jr_097_6afa:
    db $fd                                        ; $6afa: $fd
    db $fd                                        ; $6afb: $fd
    rlca                                          ; $6afc: $07
    or b                                          ; $6afd: $b0
    inc l                                         ; $6afe: $2c
    sub h                                         ; $6aff: $94
    db $eb                                        ; $6b00: $eb
    ld e, b                                       ; $6b01: $58
    db $f4                                        ; $6b02: $f4
    ld e, $04                                     ; $6b03: $1e $04
    cp a                                          ; $6b05: $bf
    pop bc                                        ; $6b06: $c1
    rlca                                          ; $6b07: $07
    jp c, Jump_000_070b                           ; $6b08: $da $0b $07

    rlca                                          ; $6b0b: $07
    dec bc                                        ; $6b0c: $0b
    nop                                           ; $6b0d: $00
    dec c                                         ; $6b0e: $0d
    dec d                                         ; $6b0f: $15
    dec de                                        ; $6b10: $1b
    ld [de], a                                    ; $6b11: $12
    ld e, $1c                                     ; $6b12: $1e $1c
    inc e                                         ; $6b14: $1c
    ld c, $00                                     ; $6b15: $0e $00
    rrca                                          ; $6b17: $0f
    dec c                                         ; $6b18: $0d
    rrca                                          ; $6b19: $0f
    ld a, [bc]                                    ; $6b1a: $0a
    rrca                                          ; $6b1b: $0f
    dec c                                         ; $6b1c: $0d
    ld c, $09                                     ; $6b1d: $0e $09
    db $10                                        ; $6b1f: $10
    ld c, $0c                                     ; $6b20: $0e $0c
    rrca                                          ; $6b22: $0f
    inc b                                         ; $6b23: $04
    ld [$ffff], sp                                ; $6b24: $08 $ff $ff
    ld b, a                                       ; $6b27: $47
    rst $00                                       ; $6b28: $c7
    ld [bc], a                                    ; $6b29: $02
    ld b, a                                       ; $6b2a: $47

Jump_097_6b2b:
    rst $00                                       ; $6b2b: $c7
    ld b, h                                       ; $6b2c: $44
    rst $00                                       ; $6b2d: $c7
    ld b, l                                       ; $6b2e: $45
    add $04                                       ; $6b2f: $c6 $04
    ld [$0045], sp                                ; $6b31: $08 $45 $00
    add $d8                                       ; $6b34: $c6 $d8
    ld hl, sp-$5a                                 ; $6b36: $f8 $a6
    cp $c9                                        ; $6b38: $fe $c9
    rst $30                                       ; $6b3a: $f7
    ld [c], a                                     ; $6b3b: $e2
    ld [$79fd], sp                                ; $6b3c: $08 $fd $79
    cp $7c                                        ; $6b3f: $fe $7c
    or h                                          ; $6b41: $b4
    ld [bc], a                                    ; $6b42: $02
    ld a, a                                       ; $6b43: $7f
    rst $38                                       ; $6b44: $ff
    db $10                                        ; $6b45: $10
    ld h, b                                       ; $6b46: $60
    db $10                                        ; $6b47: $10
    jp nz, $902a                                  ; $6b48: $c2 $2a $90

    inc e                                         ; $6b4b: $1c
    inc c                                         ; $6b4c: $0c
    rrca                                          ; $6b4d: $0f
    db $fc                                        ; $6b4e: $fc
    rst $38                                       ; $6b4f: $ff
    ld b, $08                                     ; $6b50: $06 $08
    rst $38                                       ; $6b52: $ff
    add $3f                                       ; $6b53: $c6 $3f
    inc bc                                        ; $6b55: $03
    and b                                         ; $6b56: $a0
    inc h                                         ; $6b57: $24
    db $dd                                        ; $6b58: $dd
    ld e, [hl]                                    ; $6b59: $5e
    cp l                                          ; $6b5a: $bd
    nop                                           ; $6b5b: $00
    ld a, [hl]                                    ; $6b5c: $7e
    dec a                                         ; $6b5d: $3d
    cp $5d                                        ; $6b5e: $fe $5d
    cp [hl]                                       ; $6b60: $be
    ld l, h                                       ; $6b61: $6c
    sbc a                                         ; $6b62: $9f
    dec [hl]                                      ; $6b63: $35
    nop                                           ; $6b64: $00
    adc $9a                                       ; $6b65: $ce $9a
    rst $20                                       ; $6b67: $e7
    call Call_097_6af3                            ; $6b68: $cd $f3 $6a
    rst $38                                       ; $6b6b: $ff
    ld [hl], c                                    ; $6b6c: $71
    jr nz, @+$01                                  ; $6b6d: $20 $ff

    ld l, e                                       ; $6b6f: $6b
    xor $02                                       ; $6b70: $ee $02
    ld a, c                                       ; $6b72: $79
    ld sp, hl                                     ; $6b73: $f9
    ld h, d                                       ; $6b74: $62
    db $e3                                        ; $6b75: $e3
    ld h, d                                       ; $6b76: $62
    inc b                                         ; $6b77: $04
    db $e3                                        ; $6b78: $e3
    ld [c], a                                     ; $6b79: $e2
    db $e3                                        ; $6b7a: $e3
    jr nz, jr_097_6b9d                            ; $6b7b: $20 $20

    jp nc, $ac0a                                  ; $6b7d: $d2 $0a $ac

    or h                                          ; $6b80: $b4
    nop                                           ; $6b81: $00
    or [hl]                                       ; $6b82: $b6
    cp d                                          ; $6b83: $ba
    ld e, d                                       ; $6b84: $5a
    sbc $4e                                       ; $6b85: $de $4e
    adc $22                                       ; $6b87: $ce $22
    ld [c], a                                     ; $6b89: $e2
    nop                                           ; $6b8a: $00
    ld [$1608], sp                                ; $6b8b: $08 $08 $16
    ld e, $15                                     ; $6b8e: $1e $15
    dec de                                        ; $6b90: $1b
    ld a, [de]                                    ; $6b91: $1a
    dec e                                         ; $6b92: $1d
    db $10                                        ; $6b93: $10
    dec c                                         ; $6b94: $0d
    ld c, $02                                     ; $6b95: $0e $02
    ld l, d                                       ; $6b97: $6a
    inc b                                         ; $6b98: $04
    ld bc, $6601                                  ; $6b99: $01 $01 $66
    ld a, c                                       ; $6b9c: $79

jr_097_6b9d:
    nop                                           ; $6b9d: $00
    inc sp                                        ; $6b9e: $33
    inc a                                         ; $6b9f: $3c
    jr jr_097_6bc1                                ; $6ba0: $18 $1f

    adc [hl]                                      ; $6ba2: $8e
    adc a                                         ; $6ba3: $8f

jr_097_6ba4:
    adc a                                         ; $6ba4: $8f
    adc a                                         ; $6ba5: $8f
    nop                                           ; $6ba6: $00
    adc h                                         ; $6ba7: $8c
    adc a                                         ; $6ba8: $8f
    adc c                                         ; $6ba9: $89
    adc [hl]                                      ; $6baa: $8e
    ld [$630f], sp                                ; $6bab: $08 $0f $63
    db $e3                                        ; $6bae: $e3
    ld bc, $7f9f                                  ; $6baf: $01 $9f $7f
    ldh a, [rIF]                                  ; $6bb2: $f0 $0f
    dec hl                                        ; $6bb4: $2b
    call nc, Call_097_52c0                        ; $6bb5: $d4 $c0 $52
    dec b                                         ; $6bb8: $05
    ld [de], a                                    ; $6bb9: $12
    ld a, a                                       ; $6bba: $7f
    rst $38                                       ; $6bbb: $ff
    ld l, d                                       ; $6bbc: $6a
    ld [hl], b                                    ; $6bbd: $70
    ld h, l                                       ; $6bbe: $65
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff

jr_097_6bc1:
    db $10                                        ; $6bc1: $10
    dec d                                         ; $6bc2: $15
    xor e                                         ; $6bc3: $ab
    ld bc, $d52b                                  ; $6bc4: $01 $2b $d5
    inc bc                                        ; $6bc7: $03
    rst $38                                       ; $6bc8: $ff
    rlca                                          ; $6bc9: $07
    rst $38                                       ; $6bca: $ff
    cpl                                           ; $6bcb: $2f
    ld a, b                                       ; $6bcc: $78

jr_097_6bcd:
    dec b                                         ; $6bcd: $05
    jr jr_097_6bcd                                ; $6bce: $18 $fd

    ld a, [$f7fa]                                 ; $6bd0: $fa $fa $f7
    ld [$153e], sp                                ; $6bd3: $08 $3e $15
    rst $30                                       ; $6bd6: $f7
    rst $38                                       ; $6bd7: $ff
    rst $28                                       ; $6bd8: $ef
    ld bc, $d3ff                                  ; $6bd9: $01 $ff $d3
    cpl                                           ; $6bdc: $2f
    xor a                                         ; $6bdd: $af
    ld e, a                                       ; $6bde: $5f
    ld e, a                                       ; $6bdf: $5f
    cp a                                          ; $6be0: $bf
    ld [de], a                                    ; $6be1: $12
    jr z, jr_097_6ba4                             ; $6be2: $28 $c0

    ld b, d                                       ; $6be4: $42
    dec c                                         ; $6be5: $0d
    jp c, $ce0c                                   ; $6be6: $da $0c $ce

    rst $08                                       ; $6be9: $cf
    inc sp                                        ; $6bea: $33
    db $fc                                        ; $6beb: $fc
    call z, Call_000_003f                         ; $6bec: $cc $3f $00
    inc sp                                        ; $6bef: $33
    rst $08                                       ; $6bf0: $cf
    add $f9                                       ; $6bf1: $c6 $f9
    dec c                                         ; $6bf3: $0d
    rrca                                          ; $6bf4: $0f
    ld [hl-], a                                   ; $6bf5: $32
    ccf                                           ; $6bf6: $3f
    ld bc, $f3cc                                  ; $6bf7: $01 $cc $f3
    ld [hl], c                                    ; $6bfa: $71
    adc a                                         ; $6bfb: $8f
    ld c, d                                       ; $6bfc: $4a
    cp a                                          ; $6bfd: $bf
    rla                                           ; $6bfe: $17
    and h                                         ; $6bff: $a4
    nop                                           ; $6c00: $00
    nop                                           ; $6c01: $00
    cp $ff                                        ; $6c02: $fe $ff
    or $fe                                        ; $6c04: $f6 $fe
    ld [$c2fe], a                                 ; $6c06: $ea $fe $c2
    cp $40                                        ; $6c09: $fe $40
    ld [hl], d                                    ; $6c0b: $72
    and b                                         ; $6c0c: $a0
    inc b                                         ; $6c0d: $04
    and h                                         ; $6c0e: $a4
    call c, $bc4c                                 ; $6c0f: $dc $4c $bc
    sbc h                                         ; $6c12: $9c
    ld a, h                                       ; $6c13: $7c
    inc b                                         ; $6c14: $04
    ccf                                           ; $6c15: $3f
    ccf                                           ; $6c16: $3f
    jr c, jr_097_6c58                             ; $6c17: $38 $3f

    ld [hl], $5e                                  ; $6c19: $36 $5e
    inc bc                                        ; $6c1b: $03
    add hl, sp                                    ; $6c1c: $39
    daa                                           ; $6c1d: $27
    ld bc, $774b                                  ; $6c1e: $01 $4b $77
    ld d, e                                       ; $6c21: $53
    ld l, a                                       ; $6c22: $6f
    ld c, e                                       ; $6c23: $4b
    ld [hl], a                                    ; $6c24: $77
    ldh a, [$30]                                  ; $6c25: $f0 $30
    inc b                                         ; $6c27: $04
    nop                                           ; $6c28: $00
    rst $28                                       ; $6c29: $ef
    rst $38                                       ; $6c2a: $ff
    ret c                                         ; $6c2b: $d8

    add sp, $68                                   ; $6c2c: $e8 $68
    sbc b                                         ; $6c2e: $98
    sbc b                                         ; $6c2f: $98
    ld a, b                                       ; $6c30: $78
    ld [bc], a                                    ; $6c31: $02
    inc sp                                        ; $6c32: $33
    di                                            ; $6c33: $f3
    db $fc                                        ; $6c34: $fc
    rst $38                                       ; $6c35: $ff
    ld e, d                                       ; $6c36: $5a
    and l                                         ; $6c37: $a5
    sbc d                                         ; $6c38: $9a
    dec l                                         ; $6c39: $2d
    ld a, [hl]                                    ; $6c3a: $7e
    jr nz, jr_097_6cbb                            ; $6c3b: $20 $7e

    add c                                         ; $6c3d: $81
    adc [hl]                                      ; $6c3e: $8e
    nop                                           ; $6c3f: $00
    ld e, e                                       ; $6c40: $5b
    ld h, a                                       ; $6c41: $67
    ld c, e                                       ; $6c42: $4b
    ld [hl], a                                    ; $6c43: $77
    ld l, e                                       ; $6c44: $6b
    nop                                           ; $6c45: $00
    ld [hl], a                                    ; $6c46: $77
    ld b, e                                       ; $6c47: $43
    ld a, a                                       ; $6c48: $7f
    ld l, e                                       ; $6c49: $6b
    ld [hl], a                                    ; $6c4a: $77
    ld h, l                                       ; $6c4b: $65
    ld a, e                                       ; $6c4c: $7b
    pop hl                                        ; $6c4d: $e1
    nop                                           ; $6c4e: $00
    rst $38                                       ; $6c4f: $ff
    ld [hl-], a                                   ; $6c50: $32
    db $fd                                        ; $6c51: $fd
    ld [hl+], a                                   ; $6c52: $22
    dec a                                         ; $6c53: $3d
    ret z                                         ; $6c54: $c8

    rst $30                                       ; $6c55: $f7
    ld a, a                                       ; $6c56: $7f
    adc b                                         ; $6c57: $88

jr_097_6c58:
    ld [c], a                                     ; $6c58: $e2
    inc bc                                        ; $6c59: $03
    ld bc, $d5fe                                  ; $6c5a: $01 $fe $d5
    inc d                                         ; $6c5d: $14
    ld b, $b7                                     ; $6c5e: $06 $b7
    rst $30                                       ; $6c60: $f7
    add b                                         ; $6c61: $80
    jr nz, jr_097_6ce3                            ; $6c62: $20 $7f

    cpl                                           ; $6c64: $2f
    inc e                                         ; $6c65: $1c
    ld b, $f0                                     ; $6c66: $06 $f0
    ldh a, [$cc]                                  ; $6c68: $f0 $cc
    inc a                                         ; $6c6a: $3c
    dec de                                        ; $6c6b: $1b
    nop                                           ; $6c6c: $00
    rst $20                                       ; $6c6d: $e7
    add [hl]                                      ; $6c6e: $86
    ld sp, hl                                     ; $6c6f: $f9
    db $e3                                        ; $6c70: $e3
    db $fc                                        ; $6c71: $fc
    dec bc                                        ; $6c72: $0b
    db $fc                                        ; $6c73: $fc
    sub $00                                       ; $6c74: $d6 $00
    ld sp, hl                                     ; $6c76: $f9
    add sp, -$09                                  ; $6c77: $e8 $f7
    ld d, e                                       ; $6c79: $53
    ld l, a                                       ; $6c7a: $6f
    add a                                         ; $6c7b: $87
    rst $38                                       ; $6c7c: $ff
    ld c, h                                       ; $6c7d: $4c
    nop                                           ; $6c7e: $00
    cp h                                          ; $6c7f: $bc
    sbc b                                         ; $6c80: $98
    ld hl, sp+$70                                 ; $6c81: $f8 $70
    ldh a, [$b9]                                  ; $6c83: $f0 $b9
    ld a, [hl]                                    ; $6c85: $7e
    ld a, h                                       ; $6c86: $7c
    ld [bc], a                                    ; $6c87: $02
    rst $38                                       ; $6c88: $ff
    xor $ff                                       ; $6c89: $ee $ff
    rst $10                                       ; $6c8b: $d7
    rst $38                                       ; $6c8c: $ff
    ei                                            ; $6c8d: $fb
    jr nc, jr_097_6ca6                            ; $6c8e: $30 $16

jr_097_6c90:
    ld bc, $0102                                  ; $6c90: $01 $02 $01
    ld [$fdf5], a                                 ; $6c93: $ea $f5 $fd
    ld a, [$d2fe]                                 ; $6c96: $fa $fe $d2
    jr nz, jr_097_6c90                            ; $6c99: $20 $f5

    add b                                         ; $6c9b: $80
    ld h, b                                       ; $6c9c: $60
    ld b, $dd                                     ; $6c9d: $06 $dd
    inc hl                                        ; $6c9f: $23
    dec hl                                        ; $6ca0: $2b
    rst $10                                       ; $6ca1: $d7
    rra                                           ; $6ca2: $1f
    cp $ba                                        ; $6ca3: $fe $ba
    ld a, [bc]                                    ; $6ca5: $0a

jr_097_6ca6:
    db $fd                                        ; $6ca6: $fd
    db $fc                                        ; $6ca7: $fc
    ei                                            ; $6ca8: $fb
    db $fc                                        ; $6ca9: $fc
    ld b, h                                       ; $6caa: $44
    inc b                                         ; $6cab: $04
    xor a                                         ; $6cac: $af
    add b                                         ; $6cad: $80
    ld d, [hl]                                    ; $6cae: $56
    push de                                       ; $6caf: $d5
    ld [hl+], a                                   ; $6cb0: $22
    rst $38                                       ; $6cb1: $ff
    ld [$0684], a                                 ; $6cb2: $ea $84 $06
    cpl                                           ; $6cb5: $2f
    rst $38                                       ; $6cb6: $ff
    rla                                           ; $6cb7: $17
    ld a, [hl]                                    ; $6cb8: $7e
    ld b, $f3                                     ; $6cb9: $06 $f3

jr_097_6cbb:
    nop                                           ; $6cbb: $00
    di                                            ; $6cbc: $f3
    inc bc                                        ; $6cbd: $03
    inc bc                                        ; $6cbe: $03
    ld b, $07                                     ; $6cbf: $06 $07
    adc [hl]                                      ; $6cc1: $8e
    adc a                                         ; $6cc2: $8f
    ld d, a                                       ; $6cc3: $57
    ret nc                                        ; $6cc4: $d0

    inc d                                         ; $6cc5: $14
    nop                                           ; $6cc6: $00
    sub b                                         ; $6cc7: $90
    ld h, [hl]                                    ; $6cc8: $66
    rst $38                                       ; $6cc9: $ff
    sub b                                         ; $6cca: $90
    ld c, [hl]                                    ; $6ccb: $4e
    or d                                          ; $6ccc: $b2
    cp a                                          ; $6ccd: $bf
    sub $ef                                       ; $6cce: $d6 $ef
    nop                                           ; $6cd0: $00
    ld a, [hl+]                                   ; $6cd1: $2a
    rst $18                                       ; $6cd2: $df
    ld d, [hl]                                    ; $6cd3: $56
    rst $38                                       ; $6cd4: $ff
    ld a, $ff                                     ; $6cd5: $3e $ff
    ld a, [c]                                     ; $6cd7: $f2
    di                                            ; $6cd8: $f3
    nop                                           ; $6cd9: $00
    ld [c], a                                     ; $6cda: $e2
    db $e3                                        ; $6cdb: $e3
    cp $ff                                        ; $6cdc: $fe $ff
    ld a, h                                       ; $6cde: $7c
    rst $38                                       ; $6cdf: $ff
    cp l                                          ; $6ce0: $bd
    ld a, [hl]                                    ; $6ce1: $7e
    nop                                           ; $6ce2: $00

jr_097_6ce3:
    ld e, c                                       ; $6ce3: $59
    cp [hl]                                       ; $6ce4: $be
    dec l                                         ; $6ce5: $2d
    sbc $92                                       ; $6ce6: $de $92
    rst $28                                       ; $6ce8: $ef
    pop bc                                        ; $6ce9: $c1
    rst $38                                       ; $6cea: $ff
    db $10                                        ; $6ceb: $10
    ld [hl], h                                    ; $6cec: $74
    ei                                            ; $6ced: $fb
    cp c                                          ; $6cee: $b9
    ret                                           ; $6cef: $c9


    ld b, $01                                     ; $6cf0: $06 $01
    rst $38                                       ; $6cf2: $ff
    add e                                         ; $6cf3: $83
    ld a, a                                       ; $6cf4: $7f
    jr nc, jr_097_6cf8                            ; $6cf5: $30 $01

    rst $38                                       ; $6cf7: $ff

jr_097_6cf8:
    dec c                                         ; $6cf8: $0d
    inc bc                                        ; $6cf9: $03
    inc b                                         ; $6cfa: $04
    nop                                           ; $6cfb: $00
    pop bc                                        ; $6cfc: $c1
    cp a                                          ; $6cfd: $bf
    nop                                           ; $6cfe: $00
    nop                                           ; $6cff: $00
    db $10                                        ; $6d00: $10
    ld d, c                                       ; $6d01: $51
    nop                                           ; $6d02: $00
    and a                                         ; $6d03: $a7
    cp d                                          ; $6d04: $ba
    rlca                                          ; $6d05: $07
    call nc, Call_000_282b                        ; $6d06: $d4 $2b $28
    rst $10                                       ; $6d09: $d7
    nop                                           ; $6d0a: $00
    ld bc, $e6ff                                  ; $6d0b: $01 $ff $e6
    rst $38                                       ; $6d0e: $ff
    ld h, b                                       ; $6d0f: $60
    ccf                                           ; $6d10: $3f
    ld a, d                                       ; $6d11: $7a
    dec d                                         ; $6d12: $15
    nop                                           ; $6d13: $00
    db $f4                                        ; $6d14: $f4
    dec de                                        ; $6d15: $1b
    sbc e                                         ; $6d16: $9b
    ld a, h                                       ; $6d17: $7c
    dec a                                         ; $6d18: $3d
    ld [c], a                                     ; $6d19: $e2
    and $c1                                       ; $6d1a: $e6 $c1
    db $10                                        ; $6d1c: $10
    pop bc                                        ; $6d1d: $c1
    nop                                           ; $6d1e: $00
    ld a, e                                       ; $6d1f: $7b
    xor b                                         ; $6d20: $a8
    ld b, $40                                     ; $6d21: $06 $40
    cp a                                          ; $6d23: $bf
    dec d                                         ; $6d24: $15
    ld [$ab00], a                                 ; $6d25: $ea $00 $ab
    ld d, h                                       ; $6d28: $54
    ld a, a                                       ; $6d29: $7f
    add b                                         ; $6d2a: $80
    db $fd                                        ; $6d2b: $fd
    ld [bc], a                                    ; $6d2c: $02
    ld e, a                                       ; $6d2d: $5f
    add b                                         ; $6d2e: $80
    nop                                           ; $6d2f: $00
    rst $38                                       ; $6d30: $ff
    add b                                         ; $6d31: $80
    ld a, e                                       ; $6d32: $7b
    rst $38                                       ; $6d33: $ff
    push de                                       ; $6d34: $d5
    dec hl                                        ; $6d35: $2b
    db $fc                                        ; $6d36: $fc
    inc bc                                        ; $6d37: $03
    nop                                           ; $6d38: $00
    ld a, e                                       ; $6d39: $7b
    inc b                                         ; $6d3a: $04
    call nc, $e408                                ; $6d3b: $d4 $08 $e4
    ld [$1c53], sp                                ; $6d3e: $08 $53 $1c
    nop                                           ; $6d41: $00
    xor b                                         ; $6d42: $a8
    rra                                           ; $6d43: $1f
    ld e, $e1                                     ; $6d44: $1e $e1
    and h                                         ; $6d46: $a4
    rst $38                                       ; $6d47: $ff
    ld a, [hl]                                    ; $6d48: $7e
    ld hl, sp+$00                                 ; $6d49: $f8 $00
    ld a, c                                       ; $6d4b: $79
    ld c, $1c                                     ; $6d4c: $0e $1c
    rlca                                          ; $6d4e: $07
    ld [hl], a                                    ; $6d4f: $77
    rrca                                          ; $6d50: $0f
    add $3c                                       ; $6d51: $c6 $3c
    nop                                           ; $6d53: $00
    dec c                                         ; $6d54: $0d
    ld hl, sp-$25                                 ; $6d55: $f8 $db
    add b                                         ; $6d57: $80
    rla                                           ; $6d58: $17
    ldh [$6d], a                                  ; $6d59: $e0 $6d
    stop                                          ; $6d5b: $10 $00
    jp c, Jump_000_3530                           ; $6d5d: $da $30 $35

    ldh [$e3], a                                  ; $6d60: $e0 $e3
    pop bc                                        ; $6d62: $c1
    add l                                         ; $6d63: $85
    ld bc, $1100                                  ; $6d64: $01 $00 $11
    nop                                           ; $6d67: $00
    xor $10                                       ; $6d68: $ee $10
    ld sp, hl                                     ; $6d6a: $f9
    ld b, $27                                     ; $6d6b: $06 $27
    add hl, de                                    ; $6d6d: $19
    nop                                           ; $6d6e: $00
    sbc c                                         ; $6d6f: $99
    ld h, b                                       ; $6d70: $60
    jp Jump_097_7f80                              ; $6d71: $c3 $80 $7f


    add b                                         ; $6d74: $80
    jr @-$17                                      ; $6d75: $18 $e7

    ld bc, $ffc5                                  ; $6d77: $01 $c5 $ff
    ld b, [hl]                                    ; $6d7a: $46
    rrca                                          ; $6d7b: $0f
    adc a                                         ; $6d7c: $8f
    inc bc                                        ; $6d7d: $03
    dec d                                         ; $6d7e: $15
    adc [hl]                                      ; $6d7f: $8e
    ld c, $00                                     ; $6d80: $0e $00
    nop                                           ; $6d82: $00
    ld [hl+], a                                   ; $6d83: $22
    ld bc, $074b                                  ; $6d84: $01 $4b $07
    and a                                         ; $6d87: $a7
    add hl, sp                                    ; $6d88: $39
    cp d                                          ; $6d89: $ba
    nop                                           ; $6d8a: $00
    ldh a, [$fc]                                  ; $6d8b: $f0 $fc
    ret nz                                        ; $6d8d: $c0

    ld a, b                                       ; $6d8e: $78
    rlca                                          ; $6d8f: $07
    add l                                         ; $6d90: $85
    ld a, b                                       ; $6d91: $78
    ld [hl], b                                    ; $6d92: $70
    ld bc, $4c80                                  ; $6d93: $01 $80 $4c
    add b                                         ; $6d96: $80
    cpl                                           ; $6d97: $2f
    ret nc                                        ; $6d98: $d0

    sub l                                         ; $6d99: $95
    ld [$0ff0], a                                 ; $6d9a: $ea $f0 $0f
    nop                                           ; $6d9d: $00
    ld b, b                                       ; $6d9e: $40
    add b                                         ; $6d9f: $80
    sub b                                         ; $6da0: $90
    ld h, b                                       ; $6da1: $60
    and b                                         ; $6da2: $a0
    jr jr_097_6dbd                                ; $6da3: $18 $18

    inc b                                         ; $6da5: $04
    inc bc                                        ; $6da6: $03
    db $f4                                        ; $6da7: $f4
    inc c                                         ; $6da8: $0c
    adc l                                         ; $6da9: $8d
    ld a, h                                       ; $6daa: $7c
    ld a, a                                       ; $6dab: $7f
    ld a, $ff                                     ; $6dac: $3e $ff
    cpl                                           ; $6dae: $2f
    ld d, b                                       ; $6daf: $50
    inc c                                         ; $6db0: $0c
    nop                                           ; $6db1: $00
    dec h                                         ; $6db2: $25
    nop                                           ; $6db3: $00
    ld [hl], e                                    ; $6db4: $73
    ld b, b                                       ; $6db5: $40
    add $79                                       ; $6db6: $c6 $79
    or c                                          ; $6db8: $b1
    ld a, a                                       ; $6db9: $7f
    ld [bc], a                                    ; $6dba: $02
    ld l, a                                       ; $6dbb: $6f
    rra                                           ; $6dbc: $1f

jr_097_6dbd:
    ld a, [$fd05]                                 ; $6dbd: $fa $05 $fd
    ld [bc], a                                    ; $6dc0: $02
    ret nc                                        ; $6dc1: $d0

    rrca                                          ; $6dc2: $0f
    call nc, $9a80                                ; $6dc3: $d4 $80 $9a
    rlca                                          ; $6dc6: $07
    sub l                                         ; $6dc7: $95
    ret nz                                        ; $6dc8: $c0

    ld l, $81                                     ; $6dc9: $2e $81
    db $dd                                        ; $6dcb: $dd
    ld [bc], a                                    ; $6dcc: $02
    cp $80                                        ; $6dcd: $fe $80
    ld b, b                                       ; $6dcf: $40
    inc bc                                        ; $6dd0: $03
    xor l                                         ; $6dd1: $ad
    ld d, e                                       ; $6dd2: $53
    inc a                                         ; $6dd3: $3c
    ld hl, sp-$18                                 ; $6dd4: $f8 $e8
    ldh a, [rHDMA5]                               ; $6dd6: $f0 $55
    nop                                           ; $6dd8: $00
    nop                                           ; $6dd9: $00
    dec bc                                        ; $6dda: $0b
    ldh a, [$9f]                                  ; $6ddb: $f0 $9f
    ld [$0cf5], sp                                ; $6ddd: $08 $f5 $0c
    ld c, e                                       ; $6de0: $4b
    db $10                                        ; $6de1: $10
    db $fc                                        ; $6de2: $fc
    or $f9                                        ; $6de3: $f6 $f9
    rst $20                                       ; $6de5: $e7
    rrca                                          ; $6de6: $0f
    sub b                                         ; $6de7: $90
    ld l, a                                       ; $6de8: $6f
    jr nz, @-$1f                                  ; $6de9: $20 $df

    nop                                           ; $6deb: $00
    ld d, b                                       ; $6dec: $50
    xor a                                         ; $6ded: $af

jr_097_6dee:
    cp b                                          ; $6dee: $b8
    ld b, a                                       ; $6def: $47
    ld l, h                                       ; $6df0: $6c
    sub e                                         ; $6df1: $93
    ld hl, sp+$07                                 ; $6df2: $f8 $07
    add b                                         ; $6df4: $80
    ret nz                                        ; $6df5: $c0

    inc c                                         ; $6df6: $0c

jr_097_6df7:
    ld [$f480], a                                 ; $6df7: $ea $80 $f4
    ld b, b                                       ; $6dfa: $40
    add sp, $40                                   ; $6dfb: $e8 $40
    ld d, b                                       ; $6dfd: $50
    nop                                           ; $6dfe: $00
    ret nz                                        ; $6dff: $c0

    pop hl                                        ; $6e00: $e1
    ret nz                                        ; $6e01: $c0

    jp nz, $bc80                                  ; $6e02: $c2 $80 $bc

    inc bc                                        ; $6e05: $03
    ld hl, sp+$00                                 ; $6e06: $f8 $00
    rlca                                          ; $6e08: $07
    ld a, h                                       ; $6e09: $7c
    inc bc                                        ; $6e0a: $03
    cp d                                          ; $6e0b: $ba
    dec b                                         ; $6e0c: $05
    ld a, h                                       ; $6e0d: $7c
    inc bc                                        ; $6e0e: $03
    xor [hl]                                      ; $6e0f: $ae
    ld b, $01                                     ; $6e10: $06 $01
    ld e, h                                       ; $6e12: $5c
    inc bc                                        ; $6e13: $03
    ld a, $01                                     ; $6e14: $3e $01
    xor h                                         ; $6e16: $ac
    inc l                                         ; $6e17: $2c
    or b                                          ; $6e18: $b0
    inc l                                         ; $6e19: $2c
    ld [hl], a                                    ; $6e1a: $77
    nop                                           ; $6e1b: $00
    nop                                           ; $6e1c: $00
    ld l, $01                                     ; $6e1d: $2e $01
    ld e, a                                       ; $6e1f: $5f
    nop                                           ; $6e20: $00
    ld a, $01                                     ; $6e21: $3e $01
    rra                                           ; $6e23: $1f
    ld [$3f00], sp                                ; $6e24: $08 $00 $3f
    nop                                           ; $6e27: $00
    ld e, a                                       ; $6e28: $5f
    inc c                                         ; $6e29: $0c
    db $10                                        ; $6e2a: $10
    cp [hl]                                       ; $6e2b: $be
    ld bc, $0056                                  ; $6e2c: $01 $56 $00
    ld bc, $03bc                                  ; $6e2f: $01 $bc $03
    cp $01                                        ; $6e32: $fe $01
    db $fc                                        ; $6e34: $fc
    inc bc                                        ; $6e35: $03
    ld a, [$0500]                                 ; $6e36: $fa $00 $05
    xor b                                         ; $6e39: $a8

jr_097_6e3a:
    ld d, a                                       ; $6e3a: $57
    add c                                         ; $6e3b: $81
    rst $38                                       ; $6e3c: $ff
    ret nz                                        ; $6e3d: $c0

    cp a                                          ; $6e3e: $bf
    add b                                         ; $6e3f: $80
    and b                                         ; $6e40: $a0
    inc b                                         ; $6e41: $04
    jr nz, jr_097_6dee                            ; $6e42: $20 $aa

    ld c, $16                                     ; $6e44: $0e $16
    adc d                                         ; $6e46: $8a
    push af                                       ; $6e47: $f5
    inc d                                         ; $6e48: $14
    db $eb                                        ; $6e49: $eb
    cp a                                          ; $6e4a: $bf
    nop                                           ; $6e4b: $00
    ret nz                                        ; $6e4c: $c0

    ld d, l                                       ; $6e4d: $55
    xor d                                         ; $6e4e: $aa
    cp a                                          ; $6e4f: $bf
    ret nz                                        ; $6e50: $c0

    ld l, a                                       ; $6e51: $6f
    sub b                                         ; $6e52: $90
    rst $38                                       ; $6e53: $ff
    ld [$3e80], sp                                ; $6e54: $08 $80 $3e
    add b                                         ; $6e57: $80
    cp $fa                                        ; $6e58: $fe $fa
    nop                                           ; $6e5a: $00
    cp d                                          ; $6e5b: $ba
    add b                                         ; $6e5c: $80
    ld [hl], l                                    ; $6e5d: $75
    add b                                         ; $6e5e: $80
    inc b                                         ; $6e5f: $04
    nop                                           ; $6e60: $00
    ld d, b                                       ; $6e61: $50
    add b                                         ; $6e62: $80
    and b                                         ; $6e63: $a0
    add b                                         ; $6e64: $80
    rst $00                                       ; $6e65: $c7
    rst $38                                       ; $6e66: $ff
    db $e3                                        ; $6e67: $e3
    ld b, d                                       ; $6e68: $42
    rst $18                                       ; $6e69: $df
    inc b                                         ; $6e6a: $04
    ld c, b                                       ; $6e6b: $48
    ld b, b                                       ; $6e6c: $40
    add b                                         ; $6e6d: $80
    add b                                         ; $6e6e: $80
    add b                                         ; $6e6f: $80
    inc b                                         ; $6e70: $04
    jr jr_097_6df7                                ; $6e71: $18 $84

    add h                                         ; $6e73: $84
    jr nz, jr_097_6e76                            ; $6e74: $20 $00

jr_097_6e76:
    and d                                         ; $6e76: $a2
    add b                                         ; $6e77: $80
    ld e, [hl]                                    ; $6e78: $5e
    and c                                         ; $6e79: $a1
    nop                                           ; $6e7a: $00
    inc bc                                        ; $6e7b: $03
    xor d                                         ; $6e7c: $aa
    ld a, [hl+]                                   ; $6e7d: $2a
    ld [bc], a                                    ; $6e7e: $02
    push de                                       ; $6e7f: $d5
    nop                                           ; $6e80: $00
    rst $38                                       ; $6e81: $ff
    inc b                                         ; $6e82: $04
    rst $38                                       ; $6e83: $ff
    ld a, [hl+]                                   ; $6e84: $2a
    ld [bc], a                                    ; $6e85: $02
    ld [bc], a                                    ; $6e86: $02
    rst $18                                       ; $6e87: $df
    db $10                                        ; $6e88: $10
    jr nz, jr_097_6e3a                            ; $6e89: $20 $af

    ld d, b                                       ; $6e8b: $50
    ld b, b                                       ; $6e8c: $40
    ld c, a                                       ; $6e8d: $4f
    ld e, h                                       ; $6e8e: $5c
    and e                                         ; $6e8f: $a3
    ld a, [hl-]                                   ; $6e90: $3a
    push bc                                       ; $6e91: $c5
    jr nc, @+$56                                  ; $6e92: $30 $54

    xor e                                         ; $6e94: $ab

jr_097_6e95:
    jr nz, jr_097_6ecf                            ; $6e95: $20 $38

    ld e, h                                       ; $6e97: $5c
    ld c, $44                                     ; $6e98: $0e $44
    cp h                                          ; $6e9a: $bc
    ld [de], a                                    ; $6e9b: $12
    xor $00                                       ; $6e9c: $ee $00
    ret                                           ; $6e9e: $c9


    rst $30                                       ; $6e9f: $f7
    push hl                                       ; $6ea0: $e5
    ei                                            ; $6ea1: $fb
    ld h, l                                       ; $6ea2: $65
    ld a, e                                       ; $6ea3: $7b
    ld hl, HeaderManufacturerCode                 ; $6ea4: $21 $3f $01
    db $10                                        ; $6ea7: $10
    rst $38                                       ; $6ea8: $ff
    jr z, @+$01                                   ; $6ea9: $28 $ff

    ld b, l                                       ; $6eab: $45
    rst $38                                       ; $6eac: $ff
    jr nz, jr_097_6e95                            ; $6ead: $20 $e6

    ld bc, $0241                                  ; $6eaf: $01 $41 $02
    sbc d                                         ; $6eb2: $9a
    ld b, $0a                                     ; $6eb3: $06 $0a
    rst $38                                       ; $6eb5: $ff
    add h                                         ; $6eb6: $84
    ld a, a                                       ; $6eb7: $7f
    xor d                                         ; $6eb8: $aa
    ld e, b                                       ; $6eb9: $58
    inc bc                                        ; $6eba: $03
    nop                                           ; $6ebb: $00
    ld a, [hl+]                                   ; $6ebc: $2a
    rst $38                                       ; $6ebd: $ff
    dec [hl]                                      ; $6ebe: $35
    rst $08                                       ; $6ebf: $cf
    sbc d                                         ; $6ec0: $9a
    rlca                                          ; $6ec1: $07
    ld d, c                                       ; $6ec2: $51
    xor a                                         ; $6ec3: $af
    ld bc, $ff88                                  ; $6ec4: $01 $88 $ff
    xor b                                         ; $6ec7: $a8
    ld d, a                                       ; $6ec8: $57
    ld b, b                                       ; $6ec9: $40
    cp a                                          ; $6eca: $bf
    nop                                           ; $6ecb: $00
    ld a, b                                       ; $6ecc: $78
    ld [bc], a                                    ; $6ecd: $02
    nop                                           ; $6ece: $00

jr_097_6ecf:
    ld [bc], a                                    ; $6ecf: $02
    db $fc                                        ; $6ed0: $fc
    jr nz, @+$01                                  ; $6ed1: $20 $ff

    ld d, b                                       ; $6ed3: $50
    rst $38                                       ; $6ed4: $ff
    ld [de], a                                    ; $6ed5: $12
    rrca                                          ; $6ed6: $0f
    db $10                                        ; $6ed7: $10
    add hl, hl                                    ; $6ed8: $29
    scf                                           ; $6ed9: $37
    dec hl                                        ; $6eda: $2b
    inc a                                         ; $6edb: $3c
    rlca                                          ; $6edc: $07
    ld b, d                                       ; $6edd: $42
    ld a, [hl]                                    ; $6ede: $7e
    ld d, d                                       ; $6edf: $52
    ld l, [hl]                                    ; $6ee0: $6e
    add c                                         ; $6ee1: $81
    inc b                                         ; $6ee2: $04
    ld [$6e52], sp                                ; $6ee3: $08 $52 $6e
    ld d, c                                       ; $6ee6: $51
    cp $2a                                        ; $6ee7: $fe $2a
    push af                                       ; $6ee9: $f5
    jr nz, jr_097_6ef4                            ; $6eea: $20 $08

    nop                                           ; $6eec: $00
    ld bc, $22ff                                  ; $6eed: $01 $ff $22
    rst $18                                       ; $6ef0: $df
    dec b                                         ; $6ef1: $05
    rst $38                                       ; $6ef2: $ff
    ld a, [bc]                                    ; $6ef3: $0a

jr_097_6ef4:
    db $fd                                        ; $6ef4: $fd
    nop                                           ; $6ef5: $00
    ld d, d                                       ; $6ef6: $52
    db $fc                                        ; $6ef7: $fc
    add hl, hl                                    ; $6ef8: $29
    cp $14                                        ; $6ef9: $fe $14
    rst $38                                       ; $6efb: $ff
    xor d                                         ; $6efc: $aa
    rst $30                                       ; $6efd: $f7
    nop                                           ; $6efe: $00
    ld d, l                                       ; $6eff: $55
    db $e3                                        ; $6f00: $e3
    sbc b                                         ; $6f01: $98
    rst $20                                       ; $6f02: $e7
    ld d, c                                       ; $6f03: $51
    rst $38                                       ; $6f04: $ff
    ld c, c                                       ; $6f05: $49
    ld a, $00                                     ; $6f06: $3e $00
    cp b                                          ; $6f08: $b8
    rlca                                          ; $6f09: $07
    ld d, b                                       ; $6f0a: $50
    xor a                                         ; $6f0b: $af
    dec b                                         ; $6f0c: $05
    rst $38                                       ; $6f0d: $ff
    and h                                         ; $6f0e: $a4
    ld hl, sp+$00                                 ; $6f0f: $f8 $00
    ld d, a                                       ; $6f11: $57
    ldh [$0a], a                                  ; $6f12: $e0 $0a
    push af                                       ; $6f14: $f5
    ld b, b                                       ; $6f15: $40
    rst $38                                       ; $6f16: $ff
    jp z, $013f                                   ; $6f17: $ca $3f $01

    ld d, l                                       ; $6f1a: $55
    ld a, [$ff88]                                 ; $6f1b: $fa $88 $ff
    ld b, l                                       ; $6f1e: $45
    cp a                                          ; $6f1f: $bf
    ld [bc], a                                    ; $6f20: $02
    cp h                                          ; $6f21: $bc
    inc bc                                        ; $6f22: $03
    nop                                           ; $6f23: $00
    ld [bc], a                                    ; $6f24: $02
    rst $18                                       ; $6f25: $df
    nop                                           ; $6f26: $00
    rst $38                                       ; $6f27: $ff

jr_097_6f28:
    ld [$63ff], sp                                ; $6f28: $08 $ff $63
    sbc h                                         ; $6f2b: $9c
    nop                                           ; $6f2c: $00
    adc b                                         ; $6f2d: $88
    ld a, a                                       ; $6f2e: $7f
    dec d                                         ; $6f2f: $15
    rst $38                                       ; $6f30: $ff
    xor h                                         ; $6f31: $ac
    di                                            ; $6f32: $f3
    ld h, e                                       ; $6f33: $63
    add b                                         ; $6f34: $80
    ld bc, $ea15                                  ; $6f35: $01 $15 $ea
    ld b, b                                       ; $6f38: $40
    rst $38                                       ; $6f39: $ff
    adc d                                         ; $6f3a: $8a
    ld a, a                                       ; $6f3b: $7f
    db $10                                        ; $6f3c: $10
    add h                                         ; $6f3d: $84
    nop                                           ; $6f3e: $00
    ld bc, $f049                                  ; $6f3f: $01 $49 $f0
    dec d                                         ; $6f42: $15
    ld [c], a                                     ; $6f43: $e2
    ld c, d                                       ; $6f44: $4a
    push af                                       ; $6f45: $f5
    jr nz, jr_097_6f28                            ; $6f46: $20 $e0

    inc bc                                        ; $6f48: $03
    nop                                           ; $6f49: $00
    xor d                                         ; $6f4a: $aa
    rst $00                                       ; $6f4b: $c7
    ld b, b                                       ; $6f4c: $40
    add b                                         ; $6f4d: $80
    adc d                                         ; $6f4e: $8a
    add b                                         ; $6f4f: $80
    ld d, l                                       ; $6f50: $55
    add b                                         ; $6f51: $80
    db $10                                        ; $6f52: $10
    xor [hl]                                      ; $6f53: $ae
    add b                                         ; $6f54: $80
    ld e, e                                       ; $6f55: $5b
    ld c, h                                       ; $6f56: $4c
    ld [bc], a                                    ; $6f57: $02
    ld a, a                                       ; $6f58: $7f
    add b                                         ; $6f59: $80
    xor l                                         ; $6f5a: $ad
    jp nc, Jump_097_5f15                          ; $6f5b: $d2 $15 $5f

    and b                                         ; $6f5e: $a0
    cp e                                          ; $6f5f: $bb
    ldh a, [rP1]                                  ; $6f60: $f0 $00
    xor d                                         ; $6f62: $aa
    ldh a, [rP1]                                  ; $6f63: $f0 $00
    add h                                         ; $6f65: $84
    ldh a, [rNR10]                                ; $6f66: $f0 $10
    nop                                           ; $6f68: $00
    push bc                                       ; $6f69: $c5
    ccf                                           ; $6f6a: $3f
    ld [bc], a                                    ; $6f6b: $02
    db $fc                                        ; $6f6c: $fc
    ld d, d                                       ; $6f6d: $52
    db $fd                                        ; $6f6e: $fd
    ret z                                         ; $6f6f: $c8

    ccf                                           ; $6f70: $3f
    ld [$ff11], sp                                ; $6f71: $08 $11 $ff
    add hl, hl                                    ; $6f74: $29
    cp $a0                                        ; $6f75: $fe $a0
    nop                                           ; $6f77: $00
    rst $28                                       ; $6f78: $ef
    ld d, l                                       ; $6f79: $55
    ld hl, sp+$20                                 ; $6f7a: $f8 $20
    xor d                                         ; $6f7c: $aa
    ld [hl], c                                    ; $6f7d: $71
    or b                                          ; $6f7e: $b0
    ld [$8749], sp                                ; $6f7f: $08 $49 $87
    ld [hl-], a                                   ; $6f82: $32
    rrca                                          ; $6f83: $0f
    and l                                         ; $6f84: $a5
    inc d                                         ; $6f85: $14
    ld e, a                                       ; $6f86: $5f
    ld a, [bc]                                    ; $6f87: $0a
    db $fc                                        ; $6f88: $fc
    dec c                                         ; $6f89: $0d

jr_097_6f8a:
    inc bc                                        ; $6f8a: $03
    xor l                                         ; $6f8b: $ad
    inc b                                         ; $6f8c: $04
    ld c, b                                       ; $6f8d: $48
    ld e, h                                       ; $6f8e: $5c
    db $e3                                        ; $6f8f: $e3
    nop                                           ; $6f90: $00
    add b                                         ; $6f91: $80
    rst $38                                       ; $6f92: $ff
    inc d                                         ; $6f93: $14
    rst $38                                       ; $6f94: $ff
    inc l                                         ; $6f95: $2c
    di                                            ; $6f96: $f3
    ld e, b                                       ; $6f97: $58
    rst $20                                       ; $6f98: $e7
    ld b, b                                       ; $6f99: $40
    add b                                         ; $6f9a: $80
    ld b, b                                       ; $6f9b: $40
    inc b                                         ; $6f9c: $04
    xor b                                         ; $6f9d: $a8
    rra                                           ; $6f9e: $1f
    ld d, l                                       ; $6f9f: $55
    ld hl, sp-$58                                 ; $6fa0: $f8 $a8
    rst $18                                       ; $6fa2: $df
    jr nz, jr_097_6f8a                            ; $6fa3: $20 $e5

    rra                                           ; $6fa5: $1f
    sub b                                         ; $6fa6: $90
    ld [$8f52], sp                                ; $6fa7: $08 $52 $8f
    and b                                         ; $6faa: $a0
    rra                                           ; $6fab: $1f
    add hl, bc                                    ; $6fac: $09
    nop                                           ; $6fad: $00
    cp $a0                                        ; $6fae: $fe $a0
    ld h, b                                       ; $6fb0: $60
    ld d, b                                       ; $6fb1: $50
    or b                                          ; $6fb2: $b0
    ld c, b                                       ; $6fb3: $48
    cp b                                          ; $6fb4: $b8
    jr z, jr_097_6fc7                             ; $6fb5: $28 $10

    ret c                                         ; $6fb7: $d8

    and h                                         ; $6fb8: $a4
    call c, $0802                                 ; $6fb9: $dc $02 $08
    xor h                                         ; $6fbc: $ac
    call c, $0c0c                                 ; $6fbd: $dc $0c $0c
    nop                                           ; $6fc0: $00
    inc d                                         ; $6fc1: $14
    inc e                                         ; $6fc2: $1c
    inc l                                         ; $6fc3: $2c
    inc [hl]                                      ; $6fc4: $34
    ld b, h                                       ; $6fc5: $44
    ld a, h                                       ; $6fc6: $7c

jr_097_6fc7:
    ld d, h                                       ; $6fc7: $54
    ld l, h                                       ; $6fc8: $6c
    nop                                           ; $6fc9: $00
    ld c, h                                       ; $6fca: $4c
    ld a, h                                       ; $6fcb: $7c
    ld l, b                                       ; $6fcc: $68
    ld e, b                                       ; $6fcd: $58
    jr nc, jr_097_7000                            ; $6fce: $30 $30

    add a                                         ; $6fd0: $87
    rst $38                                       ; $6fd1: $ff
    ld bc, $bf4e                                  ; $6fd2: $01 $4e $bf
    dec e                                         ; $6fd5: $1d
    cp $bc                                        ; $6fd6: $fe $bc
    ld a, a                                       ; $6fd8: $7f
    ld a, [hl]                                    ; $6fd9: $7e
    jp z, $0107                                   ; $6fda: $ca $07 $01

    ret z                                         ; $6fdd: $c8

    ld hl, sp-$58                                 ; $6fde: $f8 $a8
    ld hl, sp-$60                                 ; $6fe0: $f8 $a0
    and b                                         ; $6fe2: $a0
    ld a, a                                       ; $6fe3: $7f
    jp nc, Jump_000_1107                          ; $6fe4: $d2 $07 $11

    dec hl                                        ; $6fe7: $2b
    call nc, $a0a0                                ; $6fe8: $d4 $a0 $a0
    inc c                                         ; $6feb: $0c
    ld a, a                                       ; $6fec: $7f
    ld b, $06                                     ; $6fed: $06 $06
    inc d                                         ; $6fef: $14
    ld [$c400], sp                                ; $6ff0: $08 $00 $c4
    db $fc                                        ; $6ff3: $fc
    ld h, h                                       ; $6ff4: $64
    db $fc                                        ; $6ff5: $fc
    or h                                          ; $6ff6: $b4
    ld a, h                                       ; $6ff7: $7c
    call c, Call_000_003c                         ; $6ff8: $dc $3c $00
    ld h, [hl]                                    ; $6ffb: $66
    sbc [hl]                                      ; $6ffc: $9e
    ld sp, $1ecf                                  ; $6ffd: $31 $cf $1e

jr_097_7000:
    ld e, $22                                     ; $7000: $1e $22
    ld a, $00                                     ; $7002: $3e $00

Call_097_7004:
    ld c, d                                       ; $7004: $4a
    halt                                          ; $7005: $76
    sub d                                         ; $7006: $92
    xor $a6                                       ; $7007: $ee $a6
    sbc $9c                                       ; $7009: $de $9c
    db $fc                                        ; $700b: $fc
    nop                                           ; $700c: $00
    ldh a, [$f0]                                  ; $700d: $f0 $f0
    add b                                         ; $700f: $80
    add b                                         ; $7010: $80
    adc d                                         ; $7011: $8a
    push af                                       ; $7012: $f5
    pop hl                                        ; $7013: $e1
    cp $48                                        ; $7014: $fe $48
    ld hl, sp+$2e                                 ; $7016: $f8 $2e
    rlca                                          ; $7018: $07
    ld h, a                                       ; $7019: $67
    ld a, a                                       ; $701a: $7f
    ld b, b                                       ; $701b: $40
    add hl, de                                    ; $701c: $19
    ld a, b                                       ; $701d: $78
    ld hl, sp+$67                                 ; $701e: $f8 $67
    ld [bc], a                                    ; $7020: $02
    sbc a                                         ; $7021: $9f
    inc d                                         ; $7022: $14
    db $eb                                        ; $7023: $eb
    and c                                         ; $7024: $a1
    cp $fa                                        ; $7025: $fe $fa
    or b                                          ; $7027: $b0
    rlca                                          ; $7028: $07
    rlca                                          ; $7029: $07
    nop                                           ; $702a: $00
    rlca                                          ; $702b: $07
    nop                                           ; $702c: $00
    nop                                           ; $702d: $00
    pop af                                        ; $702e: $f1
    pop af                                        ; $702f: $f1
    adc b                                         ; $7030: $88
    ld hl, sp-$5b                                 ; $7031: $f8 $a5
    nop                                           ; $7033: $00
    db $dd                                        ; $7034: $dd
    sub l                                         ; $7035: $95
    db $ed                                        ; $7036: $ed
    ld c, l                                       ; $7037: $4d
    ld [hl], l                                    ; $7038: $75
    dec h                                         ; $7039: $25
    dec a                                         ; $703a: $3d
    dec e                                         ; $703b: $1d
    nop                                           ; $703c: $00
    dec e                                         ; $703d: $1d
    ld b, $07                                     ; $703e: $06 $07
    xor h                                         ; $7040: $ac
    rst $18                                       ; $7041: $df
    xor [hl]                                      ; $7042: $ae
    rst $18                                       ; $7043: $df
    rrca                                          ; $7044: $0f
    nop                                           ; $7045: $00
    rst $38                                       ; $7046: $ff
    dec de                                        ; $7047: $1b
    ei                                            ; $7048: $fb
    ld e, c                                       ; $7049: $59
    cp c                                          ; $704a: $b9
    ld e, b                                       ; $704b: $58
    cp b                                          ; $704c: $b8
    db $10                                        ; $704d: $10
    db $10                                        ; $704e: $10
    ldh a, [$30]                                  ; $704f: $f0 $30
    ldh a, [$a0]                                  ; $7051: $f0 $a0
    ld [$d828], sp                                ; $7053: $08 $28 $d8
    cp b                                          ; $7056: $b8
    ret z                                         ; $7057: $c8

    nop                                           ; $7058: $00
    sub h                                         ; $7059: $94
    db $ec                                        ; $705a: $ec
    sub h                                         ; $705b: $94
    db $ec                                        ; $705c: $ec
    add h                                         ; $705d: $84
    db $fc                                        ; $705e: $fc
    sub h                                         ; $705f: $94
    db $ec                                        ; $7060: $ec
    ld b, b                                       ; $7061: $40
    ld h, d                                       ; $7062: $62
    and b                                         ; $7063: $a0
    rlca                                          ; $7064: $07
    ld h, d                                       ; $7065: $62
    ld a, [hl]                                    ; $7066: $7e
    dec h                                         ; $7067: $25
    dec sp                                        ; $7068: $3b
    dec [hl]                                      ; $7069: $35
    dec sp                                        ; $706a: $3b
    nop                                           ; $706b: $00
    ld [hl-], a                                   ; $706c: $32
    dec a                                         ; $706d: $3d
    add hl, de                                    ; $706e: $19
    ld e, $1c                                     ; $706f: $1e $1c
    rra                                           ; $7071: $1f
    ld [bc], a                                    ; $7072: $02
    inc bc                                        ; $7073: $03
    db $10                                        ; $7074: $10
    jp nz, Jump_000_3ec3                          ; $7075: $c2 $c3 $3e

    add $01                                       ; $7078: $c6 $01
    dec c                                         ; $707a: $0d
    cp $fc                                        ; $707b: $fe $fc
    rst $38                                       ; $707d: $ff
    nop                                           ; $707e: $00
    db $fd                                        ; $707f: $fd
    cp $0d                                        ; $7080: $fe $0d
    ld c, $b1                                     ; $7082: $0e $b1
    ld [hl], c                                    ; $7084: $71
    and c                                         ; $7085: $a1
    ld h, c                                       ; $7086: $61
    nop                                           ; $7087: $00
    ld hl, $71e1                                  ; $7088: $21 $e1 $71
    pop af                                        ; $708b: $f1
    ld a, [hl]                                    ; $708c: $7e
    rst $38                                       ; $708d: $ff
    ld h, c                                       ; $708e: $61
    rst $38                                       ; $708f: $ff
    nop                                           ; $7090: $00
    ld h, [hl]                                    ; $7091: $66
    ld sp, hl                                     ; $7092: $f9
    ld a, b                                       ; $7093: $78
    rst $38                                       ; $7094: $ff
    inc l                                         ; $7095: $2c
    call c, $dc2c                                 ; $7096: $dc $2c $dc
    nop                                           ; $7099: $00
    inc c                                         ; $709a: $0c
    db $fc                                        ; $709b: $fc
    ld e, h                                       ; $709c: $5c
    cp h                                          ; $709d: $bc
    inc e                                         ; $709e: $1c
    db $fc                                        ; $709f: $fc
    sbc b                                         ; $70a0: $98
    ld hl, sp+$0e                                 ; $70a1: $f8 $0e
    ld a, b                                       ; $70a3: $78
    ld hl, sp-$70                                 ; $70a4: $f8 $90
    ld [hl], b                                    ; $70a6: $70
    call nc, Call_000_040f                        ; $70a7: $d4 $0f $04
    jr jr_097_70ac                                ; $70aa: $18 $00

jr_097_70ac:
    ld e, $7e                                     ; $70ac: $1e $7e
    adc h                                         ; $70ae: $8c
    nop                                           ; $70af: $00
    ld h, [hl]                                    ; $70b0: $66
    ld c, b                                       ; $70b1: $48

jr_097_70b2:
    cp b                                          ; $70b2: $b8
    ld d, $2c                                     ; $70b3: $16 $2c
    ld [bc], a                                    ; $70b5: $02
    nop                                           ; $70b6: $00
    ld a, $62                                     ; $70b7: $3e $62
    ld a, l                                       ; $70b9: $7d
    ld bc, $3c33                                  ; $70ba: $01 $33 $3c
    add hl, sp                                    ; $70bd: $39
    ld a, $19                                     ; $70be: $3e $19
    ld e, $09                                     ; $70c0: $1e $09
    ld [hl-], a                                   ; $70c2: $32
    ld b, $00                                     ; $70c3: $06 $00
    add hl, bc                                    ; $70c5: $09
    ld c, $0a                                     ; $70c6: $0e $0a
    dec c                                         ; $70c8: $0d
    sbc a                                         ; $70c9: $9f
    sbc a                                         ; $70ca: $9f
    ld b, b                                       ; $70cb: $40
    ret nz                                        ; $70cc: $c0

    ld [$c040], sp                                ; $70cd: $08 $40 $c0
    jr nz, jr_097_70b2                            ; $70d0: $20 $e0

    ld [bc], a                                    ; $70d2: $02
    jr jr_097_7135                                ; $70d3: $18 $60

    ldh [$ea], a                                  ; $70d5: $e0 $ea
    nop                                           ; $70d7: $00
    or $e1                                        ; $70d8: $f6 $e1
    rst $38                                       ; $70da: $ff
    ld a, c                                       ; $70db: $79
    ld [hl], a                                    ; $70dc: $77
    ld hl, $353f                                  ; $70dd: $21 $3f $35
    nop                                           ; $70e0: $00
    dec sp                                        ; $70e1: $3b
    dec h                                         ; $70e2: $25
    dec sp                                        ; $70e3: $3b
    ld [hl], l                                    ; $70e4: $75
    ld a, e                                       ; $70e5: $7b
    pop af                                        ; $70e6: $f1
    rst $38                                       ; $70e7: $ff
    ld h, a                                       ; $70e8: $67
    ld [$8c9f], sp                                ; $70e9: $08 $9f $8c
    di                                            ; $70ec: $f3
    pop af                                        ; $70ed: $f1
    adc h                                         ; $70ee: $8c
    nop                                           ; $70ef: $00
    rra                                           ; $70f0: $1f
    rra                                           ; $70f1: $1f
    inc bc                                        ; $70f2: $03
    add b                                         ; $70f3: $80
    ld bc, $0400                                  ; $70f4: $01 $00 $04
    rlca                                          ; $70f7: $07
    dec bc                                        ; $70f8: $0b
    inc c                                         ; $70f9: $0c
    sub $d9                                       ; $70fa: $d6 $d9

Call_097_70fc:
    or h                                          ; $70fc: $b4
    nop                                           ; $70fd: $00
    ld a, e                                       ; $70fe: $7b
    ld d, c                                       ; $70ff: $51
    cp a                                          ; $7100: $bf
    dec hl                                        ; $7101: $2b
    rst $18                                       ; $7102: $df
    sub a                                         ; $7103: $97
    rst $28                                       ; $7104: $ef
    add $00                                       ; $7105: $c6 $00
    cp $ea                                        ; $7107: $fe $ea
    or $3c                                        ; $7109: $f6 $3c
    ei                                            ; $710b: $fb

jr_097_710c:
    sub b                                         ; $710c: $90
    ld a, a                                       ; $710d: $7f
    ld a, [de]                                    ; $710e: $1a
    nop                                           ; $710f: $00
    db $fd                                        ; $7110: $fd
    ld a, b                                       ; $7111: $78
    rst $38                                       ; $7112: $ff
    cp $fd                                        ; $7113: $fe $fd
    ret                                           ; $7115: $c9


    adc $8f                                       ; $7116: $ce $8f
    ld bc, $ff8f                                  ; $7118: $01 $8f $ff
    ld hl, sp+$09                                 ; $711b: $f8 $09
    ld c, $36                                     ; $711d: $0e $36
    add hl, sp                                    ; $711f: $39
    sub b                                         ; $7120: $90
    ld c, l                                       ; $7121: $4d
    ld b, $6a                                     ; $7122: $06 $6a
    or $72                                        ; $7124: $f6 $72
    xor $ca                                       ; $7126: $ee $ca
    inc b                                         ; $7128: $04
    nop                                           ; $7129: $00
    sub b                                         ; $712a: $90
    dec l                                         ; $712b: $2d
    daa                                           ; $712c: $27
    db $10                                        ; $712d: $10
    ccf                                           ; $712e: $3f
    add hl, hl                                    ; $712f: $29
    ld a, $90                                     ; $7130: $3e $90
    ld c, l                                       ; $7132: $4d
    jr z, jr_097_710c                             ; $7133: $28 $d7

jr_097_7135:
    add a                                         ; $7135: $87
    ld a, a                                       ; $7136: $7f
    add b                                         ; $7137: $80
    ldh a, [$4c]                                  ; $7138: $f0 $4c
    ld hl, sp-$08                                 ; $713a: $f8 $f8
    add a                                         ; $713c: $87
    add a                                         ; $713d: $87
    jr c, jr_097_717f                             ; $713e: $38 $3f

    call $f200                                    ; $7140: $cd $00 $f2
    jr nc, @-$2f                                  ; $7143: $30 $cf

    add a                                         ; $7145: $87
    ld a, a                                       ; $7146: $7f
    ccf                                           ; $7147: $3f
    rst $38                                       ; $7148: $ff
    ld hl, sp+$08                                 ; $7149: $f8 $08
    ld hl, sp+$56                                 ; $714b: $f8 $56
    ld l, [hl]                                    ; $714d: $6e
    rst $20                                       ; $714e: $e7
    ld b, b                                       ; $714f: $40
    inc bc                                        ; $7150: $03
    ld h, [hl]                                    ; $7151: $66
    rst $18                                       ; $7152: $df
    ld h, a                                       ; $7153: $67
    nop                                           ; $7154: $00
    rst $18                                       ; $7155: $df
    rst $28                                       ; $7156: $ef
    rst $18                                       ; $7157: $df
    rst $20                                       ; $7158: $e7
    rst $18                                       ; $7159: $df
    adc h                                         ; $715a: $8c
    db $fc                                        ; $715b: $fc
    stop                                          ; $715c: $10 $00
    db $10                                        ; $715e: $10
    ldh a, [$f0]                                  ; $715f: $f0 $f0
    ld c, $fe                                     ; $7161: $0e $fe
    ld d, c                                       ; $7163: $51
    xor a                                         ; $7164: $af
    inc b                                         ; $7165: $04
    nop                                           ; $7166: $00
    ei                                            ; $7167: $fb
    ld [c], a                                     ; $7168: $e2
    db $fd                                        ; $7169: $fd
    ld sp, hl                                     ; $716a: $f9
    cp $9c                                        ; $716b: $fe $9c
    sbc a                                         ; $716d: $9f
    dec a                                         ; $716e: $3d
    nop                                           ; $716f: $00
    ld a, $45                                     ; $7170: $3e $45
    ld a, [hl]                                    ; $7172: $7e
    sub l                                         ; $7173: $95
    xor $ad                                       ; $7174: $ee $ad
    sbc $95                                       ; $7176: $de $95
    ld bc, $6dfe                                  ; $7178: $01 $fe $6d
    cp $3d                                        ; $717b: $fe $3d
    cp $b8                                        ; $717d: $fe $b8

jr_097_717f:
    ld a, a                                       ; $717f: $7f
    adc c                                         ; $7180: $89
    rlca                                          ; $7181: $07
    nop                                           ; $7182: $00
    add b                                         ; $7183: $80
    add c                                         ; $7184: $81
    add c                                         ; $7185: $81
    ld b, c                                       ; $7186: $41
    pop bc                                        ; $7187: $c1
    ld b, d                                       ; $7188: $42
    jp $0042                                      ; $7189: $c3 $42 $00


    jp $e7e4                                      ; $718c: $c3 $e4 $e7


    db $dd                                        ; $718f: $dd
    ld a, $ac                                     ; $7190: $3e $ac
    call c, Call_000_00cc                         ; $7192: $dc $cc $00
    cp h                                          ; $7195: $bc
    ld e, h                                       ; $7196: $5c

jr_097_7197:
    cp h                                          ; $7197: $bc
    ld e, b                                       ; $7198: $58
    cp b                                          ; $7199: $b8
    sbc b                                         ; $719a: $98
    ld a, b                                       ; $719b: $78
    or b                                          ; $719c: $b0
    nop                                           ; $719d: $00
    ld [hl], b                                    ; $719e: $70
    jr nc, @-$0e                                  ; $719f: $30 $f0

    ld h, b                                       ; $71a1: $60
    ldh [$c6], a                                  ; $71a2: $e0 $c6
    rst $00                                       ; $71a4: $c7
    and a                                         ; $71a5: $a7
    inc b                                         ; $71a6: $04
    rst $20                                       ; $71a7: $e7
    rst $10                                       ; $71a8: $d7
    or a                                          ; $71a9: $b7
    rst $10                                       ; $71aa: $d7
    or a                                          ; $71ab: $b7
    inc bc                                        ; $71ac: $03
    nop                                           ; $71ad: $00
    rst $10                                       ; $71ae: $d7
    ld d, d                                       ; $71af: $52
    nop                                           ; $71b0: $00
    ld [hl], e                                    ; $71b1: $73
    inc [hl]                                      ; $71b2: $34
    scf                                           ; $71b3: $37
    ld d, d                                       ; $71b4: $52
    cp l                                          ; $71b5: $bd
    jr z, jr_097_7197                             ; $71b6: $28 $df

    sub l                                         ; $71b8: $95
    ld [$cbef], sp                                ; $71b9: $08 $ef $cb
    rst $30                                       ; $71bc: $f7
    push bc                                       ; $71bd: $c5
    ld d, b                                       ; $71be: $50
    nop                                           ; $71bf: $00
    ld [hl], l                                    ; $71c0: $75
    cp $ba                                        ; $71c1: $fe $ba
    nop                                           ; $71c3: $00
    ld a, a                                       ; $71c4: $7f
    add hl, de                                    ; $71c5: $19
    ld e, $e6                                     ; $71c6: $1e $e6
    ld sp, hl                                     ; $71c8: $f9
    inc e                                         ; $71c9: $1c
    db $e3                                        ; $71ca: $e3
    pop af                                        ; $71cb: $f1
    jr nz, jr_097_71dd                            ; $71cc: $20 $0f

    rlca                                          ; $71ce: $07
    add c                                         ; $71cf: $81
    rlca                                          ; $71d0: $07
    ld sp, hl                                     ; $71d1: $f9
    ld sp, hl                                     ; $71d2: $f9
    nop                                           ; $71d3: $00
    nop                                           ; $71d4: $00
    dec e                                         ; $71d5: $1d
    add b                                         ; $71d6: $80
    ld e, d                                       ; $71d7: $5a
    dec b                                         ; $71d8: $05
    ld l, a                                       ; $71d9: $6f
    rst $38                                       ; $71da: $ff
    db $db                                        ; $71db: $db
    ei                                            ; $71dc: $fb

jr_097_71dd:
    adc b                                         ; $71dd: $88
    ld hl, sp-$38                                 ; $71de: $f8 $c8
    nop                                           ; $71e0: $00
    ld hl, sp-$6c                                 ; $71e1: $f8 $94
    db $ec                                        ; $71e3: $ec
    call nz, Call_000_03fc                        ; $71e4: $c4 $fc $03
    inc bc                                        ; $71e7: $03
    inc c                                         ; $71e8: $0c
    nop                                           ; $71e9: $00
    rrca                                          ; $71ea: $0f
    dec d                                         ; $71eb: $15
    dec de                                        ; $71ec: $1b
    add hl, hl                                    ; $71ed: $29
    scf                                           ; $71ee: $37
    ld [hl-], a                                   ; $71ef: $32
    ld l, $2c                                     ; $71f0: $2e $2c
    nop                                           ; $71f2: $00
    inc a                                         ; $71f3: $3c
    jr nc, jr_097_7226                            ; $71f4: $30 $30

    nop                                           ; $71f6: $00
    nop                                           ; $71f7: $00
    call nc, $c2ec                                ; $71f8: $d4 $ec $c2
    inc b                                         ; $71fb: $04
    cp $52                                        ; $71fc: $fe $52
    ld l, [hl]                                    ; $71fe: $6e
    ld e, d                                       ; $71ff: $5a
    ld h, [hl]                                    ; $7200: $66

Call_097_7201:
    ld [bc], a                                    ; $7201: $02
    jr jr_097_7256                                ; $7202: $18 $52

    ld l, [hl]                                    ; $7204: $6e
    ld bc, $fa3a                                  ; $7205: $01 $3a $fa
    scf                                           ; $7208: $37
    rst $38                                       ; $7209: $ff
    jr z, @-$07                                   ; $720a: $28 $f7

    ld [hl], d                                    ; $720c: $72
    ld [de], a                                    ; $720d: $12
    ld bc, $7f00                                  ; $720e: $01 $00 $7f
    rst $38                                       ; $7211: $ff
    ld h, a                                       ; $7212: $67
    rst $20                                       ; $7213: $e7
    ld h, b                                       ; $7214: $60
    ldh [$c0], a                                  ; $7215: $e0 $c0
    ret nz                                        ; $7217: $c0

    nop                                           ; $7218: $00
    rst $08                                       ; $7219: $cf
    rst $08                                       ; $721a: $cf
    push af                                       ; $721b: $f5
    ei                                            ; $721c: $fb
    or d                                          ; $721d: $b2
    xor [hl]                                      ; $721e: $ae
    ld a, h                                       ; $721f: $7c
    ld a, h                                       ; $7220: $7c
    add b                                         ; $7221: $80
    ld hl, sp+$03                                 ; $7222: $f8 $03
    ret nz                                        ; $7224: $c0

    and b                                         ; $7225: $a0

jr_097_7226:
    ld h, b                                       ; $7226: $60
    ld e, b                                       ; $7227: $58
    cp b                                          ; $7228: $b8
    and a                                         ; $7229: $a7
    rst $18                                       ; $722a: $df
    nop                                           ; $722b: $00
    ld e, b                                       ; $722c: $58
    rst $20                                       ; $722d: $e7
    db $e3                                        ; $722e: $e3
    db $fc                                        ; $722f: $fc
    ldh a, [rIE]                                  ; $7230: $f0 $ff
    ccf                                           ; $7232: $3f
    ccf                                           ; $7233: $3f
    ld [bc], a                                    ; $7234: $02
    ld e, a                                       ; $7235: $5f
    ld l, a                                       ; $7236: $6f
    ld l, b                                       ; $7237: $68
    ld e, b                                       ; $7238: $58
    ld bc, $9001                                  ; $7239: $01 $01 $90
    rrca                                          ; $723c: $0f
    push af                                       ; $723d: $f5
    ld b, b                                       ; $723e: $40
    ld a, [bc]                                    ; $723f: $0a
    sub b                                         ; $7240: $90
    cpl                                           ; $7241: $2f
    ld a, c                                       ; $7242: $79
    ld a, [hl]                                    ; $7243: $7e
    sbc c                                         ; $7244: $99
    cp $4c                                        ; $7245: $fe $4c
    cp a                                          ; $7247: $bf
    nop                                           ; $7248: $00
    inc e                                         ; $7249: $1c
    rst $38                                       ; $724a: $ff
    db $fc                                        ; $724b: $fc
    rst $38                                       ; $724c: $ff
    or $f7                                        ; $724d: $f6 $f7
    add [hl]                                      ; $724f: $86
    add a                                         ; $7250: $87
    db $10                                        ; $7251: $10
    inc bc                                        ; $7252: $03
    inc bc                                        ; $7253: $03
    ld [hl], a                                    ; $7254: $77
    scf                                           ; $7255: $37

jr_097_7256:
    rlca                                          ; $7256: $07
    cp h                                          ; $7257: $bc
    ld a, h                                       ; $7258: $7c
    and b                                         ; $7259: $a0
    ld h, b                                       ; $725a: $60
    nop                                           ; $725b: $00
    sub b                                         ; $725c: $90
    ld [hl], b                                    ; $725d: $70
    ld e, a                                       ; $725e: $5f
    cp a                                          ; $725f: $bf
    add hl, sp                                    ; $7260: $39
    cp $d8                                        ; $7261: $fe $d8
    rst $20                                       ; $7263: $e7
    ld hl, $e0e0                                  ; $7264: $21 $e0 $e0
    jr nz, jr_097_7286                            ; $7267: $20 $1d

    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    cpl                                           ; $726b: $2f
    ret nc                                        ; $726c: $d0

    adc h                                         ; $726d: $8c
    ld c, $04                                     ; $726e: $0e $04
    inc bc                                        ; $7270: $03
    inc bc                                        ; $7271: $03
    dec c                                         ; $7272: $0d
    ld c, $14                                     ; $7273: $0e $14
    sub b                                         ; $7275: $90
    nop                                           ; $7276: $00
    db $d3                                        ; $7277: $d3
    rst $28                                       ; $7278: $ef
    dec b                                         ; $7279: $05
    ld h, a                                       ; $727a: $67
    sbc a                                         ; $727b: $9f
    ld c, $fe                                     ; $727c: $0e $fe
    ccf                                           ; $727e: $3f

jr_097_727f:
    sbc h                                         ; $727f: $9c
    inc bc                                        ; $7280: $03
    rra                                           ; $7281: $1f
    add sp, $07                                   ; $7282: $e8 $07
    nop                                           ; $7284: $00
    db $f4                                        ; $7285: $f4

jr_097_7286:
    ei                                            ; $7286: $fb
    di                                            ; $7287: $f3
    db $fc                                        ; $7288: $fc
    ld sp, $183e                                  ; $7289: $31 $3e $18
    rra                                           ; $728c: $1f
    add c                                         ; $728d: $81
    sub d                                         ; $728e: $92
    ld bc, $d5ff                                  ; $728f: $01 $ff $d5
    rst $18                                       ; $7292: $df
    ld [hl+], a                                   ; $7293: $22
    ccf                                           ; $7294: $3f
    rst $30                                       ; $7295: $f7
    db $fc                                        ; $7296: $fc
    rlca                                          ; $7297: $07
    nop                                           ; $7298: $00
    sbc a                                         ; $7299: $9f
    ld a, a                                       ; $729a: $7f
    ld h, [hl]                                    ; $729b: $66
    sbc a                                         ; $729c: $9f
    dec de                                        ; $729d: $1b
    db $fc                                        ; $729e: $fc
    ld h, b                                       ; $729f: $60
    ld a, a                                       ; $72a0: $7f
    ld bc, $e799                                  ; $72a1: $01 $99 $e7
    ld b, a                                       ; $72a4: $47
    cp a                                          ; $72a5: $bf
    sbc a                                         ; $72a6: $9f
    ld a, a                                       ; $72a7: $7f
    db $fc                                        ; $72a8: $fc
    adc $12                                       ; $72a9: $ce $12
    nop                                           ; $72ab: $00
    ld bc, $7201                                  ; $72ac: $01 $01 $72
    di                                            ; $72af: $f3
    db $e3                                        ; $72b0: $e3
    db $e3                                        ; $72b1: $e3
    add c                                         ; $72b2: $81
    add c                                         ; $72b3: $81
    nop                                           ; $72b4: $00
    ld bc, $0601                                  ; $72b5: $01 $01 $06
    rlca                                          ; $72b8: $07
    add hl, de                                    ; $72b9: $19
    ld e, $6c                                     ; $72ba: $1e $6c
    ld [hl], e                                    ; $72bc: $73
    nop                                           ; $72bd: $00
    or c                                          ; $72be: $b1
    rst $08                                       ; $72bf: $cf
    jp Jump_097_6743                              ; $72c0: $c3 $43 $67


    and a                                         ; $72c3: $a7
    cp e                                          ; $72c4: $bb
    db $fc                                        ; $72c5: $fc
    inc b                                         ; $72c6: $04
    ret c                                         ; $72c7: $d8

    rst $20                                       ; $72c8: $e7
    ld h, e                                       ; $72c9: $63
    sbc a                                         ; $72ca: $9f
    adc a                                         ; $72cb: $8f
    add b                                         ; $72cc: $80
    ld bc, $fff3                                  ; $72cd: $01 $f3 $ff
    inc b                                         ; $72d0: $04
    db $ec                                        ; $72d1: $ec
    di                                            ; $72d2: $f3
    ld h, b                                       ; $72d3: $60
    sbc a                                         ; $72d4: $9f
    rrca                                          ; $72d5: $0f
    cp d                                          ; $72d6: $ba
    rlca                                          ; $72d7: $07
    pop af                                        ; $72d8: $f1
    pop af                                        ; $72d9: $f1
    ld b, b                                       ; $72da: $40
    ret nz                                        ; $72db: $c0

    ld bc, $8000                                  ; $72dc: $01 $00 $80
    add b                                         ; $72df: $80
    ld sp, hl                                     ; $72e0: $f9
    cp $3c                                        ; $72e1: $fe $3c
    ccf                                           ; $72e3: $3f

Call_097_72e4:
    ld de, $7f7c                                  ; $72e4: $11 $7c $7f
    cp $aa                                        ; $72e7: $fe $aa
    rlca                                          ; $72e9: $07
    xor h                                         ; $72ea: $ac
    ld e, a                                       ; $72eb: $5f
    inc c                                         ; $72ec: $0c
    and d                                         ; $72ed: $a2
    ld [bc], a                                    ; $72ee: $02
    jr nz, jr_097_7311                            ; $72ef: $20 $20

    ldh [$9c], a                                  ; $72f1: $e0 $9c
    ld [$70b0], sp                                ; $72f3: $08 $b0 $70
    sbc c                                         ; $72f6: $99
    ld a, c                                       ; $72f7: $79
    cp a                                          ; $72f8: $bf
    inc c                                         ; $72f9: $0c
    ld a, a                                       ; $72fa: $7f
    cp d                                          ; $72fb: $ba
    ld a, l                                       ; $72fc: $7d
    jr c, jr_097_727f                             ; $72fd: $38 $80

    ld b, $fe                                     ; $72ff: $06 $fe
    ld b, $ef                                     ; $7301: $06 $ef
    add a                                         ; $7303: $87
    db $10                                        ; $7304: $10
    rst $38                                       ; $7305: $ff
    sub a                                         ; $7306: $97
    rst $28                                       ; $7307: $ef
    ld [bc], a                                    ; $7308: $02
    ld [$ff87], sp                                ; $7309: $08 $87 $ff
    ld sp, hl                                     ; $730c: $f9
    cp $00                                        ; $730d: $fe $00
    ld l, d                                       ; $730f: $6a
    db $ed                                        ; $7310: $ed

jr_097_7311:
    sub $d9                                       ; $7311: $d6 $d9
    xor h                                         ; $7313: $ac
    or e                                          ; $7314: $b3
    ld e, c                                       ; $7315: $59
    ld h, a                                       ; $7316: $67
    ld bc, $cfb3                                  ; $7317: $01 $b3 $cf
    add $3e                                       ; $731a: $c6 $3e
    inc c                                         ; $731c: $0c
    db $fc                                        ; $731d: $fc
    inc a                                         ; $731e: $3c
    or $06                                        ; $731f: $f6 $06
    nop                                           ; $7321: $00
    di                                            ; $7322: $f3
    rst $38                                       ; $7323: $ff
    pop hl                                        ; $7324: $e1
    rst $38                                       ; $7325: $ff
    push hl                                       ; $7326: $e5
    ei                                            ; $7327: $fb
    ld h, c                                       ; $7328: $61
    ld a, a                                       ; $7329: $7f
    nop                                           ; $732a: $00
    ld h, l                                       ; $732b: $65
    ld a, e                                       ; $732c: $7b
    ld h, l                                       ; $732d: $65
    ld a, e                                       ; $732e: $7b
    dec bc                                        ; $732f: $0b
    rst $30                                       ; $7330: $f7
    pop bc                                        ; $7331: $c1
    rst $38                                       ; $7332: $ff
    nop                                           ; $7333: $00
    ld a, [c]                                     ; $7334: $f2
    db $fd                                        ; $7335: $fd
    db $fd                                        ; $7336: $fd
    cp $8e                                        ; $7337: $fe $8e
    adc a                                         ; $7339: $8f
    rlca                                          ; $733a: $07
    rlca                                          ; $733b: $07
    ld bc, $0303                                  ; $733c: $01 $03 $03
    nop                                           ; $733f: $00
    nop                                           ; $7340: $00
    sub a                                         ; $7341: $97
    rst $28                                       ; $7342: $ef
    rst $00                                       ; $7343: $c7
    and d                                         ; $7344: $a2
    rlca                                          ; $7345: $07
    inc b                                         ; $7346: $04
    ld b, b                                       ; $7347: $40

jr_097_7348:
    cp a                                          ; $7348: $bf
    ld a, [hl-]                                   ; $7349: $3a
    push bc                                       ; $734a: $c5
    add c                                         ; $734b: $81
    sub d                                         ; $734c: $92
    inc de                                        ; $734d: $13
    jr c, jr_097_7348                             ; $734e: $38 $f8

    inc b                                         ; $7350: $04
    ld hl, sp-$08                                 ; $7351: $f8 $f8
    db $e4                                        ; $7353: $e4
    db $fc                                        ; $7354: $fc
    jp nc, $0244                                  ; $7355: $d2 $44 $02

    ld l, l                                       ; $7358: $6d
    ld [hl], e                                    ; $7359: $73
    ld h, b                                       ; $735a: $60
    dec h                                         ; $735b: $25
    sub h                                         ; $735c: $94
    ld [bc], a                                    ; $735d: $02
    inc [hl]                                      ; $735e: $34
    ld [$3d32], sp                                ; $735f: $08 $32 $3d
    ld [hl-], a                                   ; $7362: $32
    dec a                                         ; $7363: $3d
    dec de                                        ; $7364: $1b
    nop                                           ; $7365: $00
    inc e                                         ; $7366: $1c
    add hl, de                                    ; $7367: $19
    ld e, $0c                                     ; $7368: $1e $0c
    rrca                                          ; $736a: $0f
    ld b, $07                                     ; $736b: $06 $07
    ld [hl], l                                    ; $736d: $75
    inc h                                         ; $736e: $24
    ld a, e                                       ; $736f: $7b
    ld h, h                                       ; $7370: $64
    stop                                          ; $7371: $10 $00
    inc sp                                        ; $7373: $33
    inc a                                         ; $7374: $3c
    ld c, $18                                     ; $7375: $0e $18
    inc bc                                        ; $7377: $03
    inc bc                                        ; $7378: $03
    nop                                           ; $7379: $00
    xor b                                         ; $737a: $a8
    ret c                                         ; $737b: $d8

    sub b                                         ; $737c: $90
    ldh a, [$d0]                                  ; $737d: $f0 $d0
    or b                                          ; $737f: $b0
    ld h, b                                       ; $7380: $60
    ld h, b                                       ; $7381: $60
    jr nz, jr_097_73c4                            ; $7382: $20 $40

    ld b, b                                       ; $7384: $40
    ld c, b                                       ; $7385: $48
    ld e, $02                                     ; $7386: $1e $02
    inc bc                                        ; $7388: $03
    dec b                                         ; $7389: $05
    ld b, $0a                                     ; $738a: $06 $0a
    nop                                           ; $738c: $00
    dec c                                         ; $738d: $0d
    inc d                                         ; $738e: $14
    dec de                                        ; $738f: $1b
    dec l                                         ; $7390: $2d
    inc sp                                        ; $7391: $33
    add hl, hl                                    ; $7392: $29
    scf                                           ; $7393: $37
    ld e, e                                       ; $7394: $5b
    nop                                           ; $7395: $00
    ld h, a                                       ; $7396: $67
    ld d, d                                       ; $7397: $52
    ld l, [hl]                                    ; $7398: $6e
    rst $10                                       ; $7399: $d7
    ccf                                           ; $739a: $3f
    xor a                                         ; $739b: $af
    ld a, a                                       ; $739c: $7f
    ld e, h                                       ; $739d: $5c
    ldh [$ca], a                                  ; $739e: $e0 $ca
    inc bc                                        ; $73a0: $03
    jr z, jr_097_73ad                             ; $73a1: $28 $0a

    ld a, h                                       ; $73a3: $7c
    ld c, $e9                                     ; $73a4: $0e $e9
    rst $30                                       ; $73a6: $f7
    ld hl, $293f                                  ; $73a7: $21 $3f $29
    nop                                           ; $73aa: $00
    scf                                           ; $73ab: $37
    inc hl                                        ; $73ac: $23

jr_097_73ad:
    ccf                                           ; $73ad: $3f
    ld c, e                                       ; $73ae: $4b
    ld [hl], a                                    ; $73af: $77
    ld d, d                                       ; $73b0: $52
    ld l, [hl]                                    ; $73b1: $6e
    ld c, d                                       ; $73b2: $4a
    nop                                           ; $73b3: $00
    halt                                          ; $73b4: $76
    ld d, d                                       ; $73b5: $52
    ld l, [hl]                                    ; $73b6: $6e
    adc a                                         ; $73b7: $8f
    adc a                                         ; $73b8: $8f
    sub d                                         ; $73b9: $92
    sbc l                                         ; $73ba: $9d
    dec l                                         ; $73bb: $2d
    ld bc, $5333                                  ; $73bc: $01 $33 $53
    ld l, a                                       ; $73bf: $6f
    ld h, $3e                                     ; $73c0: $26 $3e
    jr @+$1a                                      ; $73c2: $18 $18

jr_097_73c4:
    sbc h                                         ; $73c4: $9c
    ld c, $00                                     ; $73c5: $0e $00
    xor c                                         ; $73c7: $a9
    or a                                          ; $73c8: $b7
    db $e3                                        ; $73c9: $e3
    rst $38                                       ; $73ca: $ff
    xor e                                         ; $73cb: $ab
    or a                                          ; $73cc: $b7
    dec hl                                        ; $73cd: $2b
    scf                                           ; $73ce: $37
    inc c                                         ; $73cf: $0c
    ld c, d                                       ; $73d0: $4a
    halt                                          ; $73d1: $76
    ld c, d                                       ; $73d2: $4a
    halt                                          ; $73d3: $76
    and $09                                       ; $73d4: $e6 $09
    ld h, h                                       ; $73d6: $64
    ld [$7171], sp                                ; $73d7: $08 $71 $71
    inc b                                         ; $73da: $04
    call z, $92bc                                 ; $73db: $cc $bc $92
    xor $4a                                       ; $73de: $ee $4a
    cp b                                          ; $73e0: $b8
    inc bc                                        ; $73e1: $03
    inc a                                         ; $73e2: $3c
    inc a                                         ; $73e3: $3c
    nop                                           ; $73e4: $00
    ld l, b                                       ; $73e5: $68
    sbc b                                         ; $73e6: $98
    dec [hl]                                      ; $73e7: $35
    call $ef97                                    ; $73e8: $cd $97 $ef
    sub h                                         ; $73eb: $94
    db $ec                                        ; $73ec: $ec
    jr nz, @-$2c                                  ; $73ed: $20 $d2

    xor $4e                                       ; $73ef: $ee $4e
    dec c                                         ; $73f1: $0d
    ld d, d                                       ; $73f2: $52
    ld l, [hl]                                    ; $73f3: $6e
    pop af                                        ; $73f4: $f1
    pop af                                        ; $73f5: $f1
    ld [$f800], sp                                ; $73f6: $08 $00 $f8
    ld h, h                                       ; $73f9: $64
    sbc h                                         ; $73fa: $9c
    call c, Call_097_72e4                         ; $73fb: $dc $e4 $72
    ld a, [hl]                                    ; $73fe: $7e
    inc e                                         ; $73ff: $1c

Jump_097_7400:
    ld c, b                                       ; $7400: $48
    inc e                                         ; $7401: $1c
    call c, $550e                                 ; $7402: $dc $0e $55
    ld a, [$0508]                                 ; $7405: $fa $08 $05
    cp a                                          ; $7408: $bf
    ld a, [bc]                                    ; $7409: $0a
    push af                                       ; $740a: $f5
    nop                                           ; $740b: $00
    ld d, b                                       ; $740c: $50
    rst $28                                       ; $740d: $ef
    ld [bc], a                                    ; $740e: $02
    rst $38                                       ; $740f: $ff
    dec b                                         ; $7410: $05
    cp $80                                        ; $7411: $fe $80
    db $fd                                        ; $7413: $fd
    nop                                           ; $7414: $00
    inc d                                         ; $7415: $14
    rst $38                                       ; $7416: $ff
    inc d                                         ; $7417: $14
    db $e3                                        ; $7418: $e3
    inc l                                         ; $7419: $2c
    jp $d5aa                                      ; $741a: $c3 $aa $d5


    ld b, b                                       ; $741d: $40
    dec b                                         ; $741e: $05
    sub h                                         ; $741f: $94
    dec b                                         ; $7420: $05
    ld d, c                                       ; $7421: $51
    ccf                                           ; $7422: $3f
    ld a, [hl+]                                   ; $7423: $2a
    rra                                           ; $7424: $1f
    ld c, h                                       ; $7425: $4c
    add e                                         ; $7426: $83
    ld bc, $d72a                                  ; $7427: $01 $2a $d7
    ld de, $00ef                                  ; $742a: $11 $ef $00
    rst $38                                       ; $742d: $ff
    ld d, h                                       ; $742e: $54
    inc l                                         ; $742f: $2c
    dec b                                         ; $7430: $05
    nop                                           ; $7431: $00
    adc l                                         ; $7432: $8d
    inc bc                                        ; $7433: $03
    db $f4                                        ; $7434: $f4
    dec bc                                        ; $7435: $0b
    add e                                         ; $7436: $83
    rst $38                                       ; $7437: $ff
    ld b, c                                       ; $7438: $41
    cp a                                          ; $7439: $bf
    and b                                         ; $743a: $a0
    or b                                          ; $743b: $b0
    cpl                                           ; $743c: $2f
    xor e                                         ; $743d: $ab
    ld [de], a                                    ; $743e: $12
    ld [de], a                                    ; $743f: $12
    inc a                                         ; $7440: $3c
    inc a                                         ; $7441: $3c
    ld a, [c]                                     ; $7442: $f2
    adc $4d                                       ; $7443: $ce $4d
    inc b                                         ; $7445: $04
    ld [hl], e                                    ; $7446: $73
    ld [hl-], a                                   ; $7447: $32
    dec a                                         ; $7448: $3d
    rra                                           ; $7449: $1f
    rra                                           ; $744a: $1f
    ld a, [de]                                    ; $744b: $1a
    rra                                           ; $744c: $1f
    pop bc                                        ; $744d: $c1
    pop bc                                        ; $744e: $c1
    nop                                           ; $744f: $00
    add hl, sp                                    ; $7450: $39
    ld sp, hl                                     ; $7451: $f9
    ld h, a                                       ; $7452: $67
    sbc a                                         ; $7453: $9f
    adc l                                         ; $7454: $8d
    di                                            ; $7455: $f3
    pop hl                                        ; $7456: $e1
    rst $38                                       ; $7457: $ff
    ld b, b                                       ; $7458: $40
    ld sp, hl                                     ; $7459: $f9
    sub [hl]                                      ; $745a: $96
    inc bc                                        ; $745b: $03
    rla                                           ; $745c: $17
    rla                                           ; $745d: $17
    dec hl                                        ; $745e: $2b
    dec sp                                        ; $745f: $3b
    dec h                                         ; $7460: $25
    dec a                                         ; $7461: $3d
    nop                                           ; $7462: $00
    ld d, l                                       ; $7463: $55
    ld l, l                                       ; $7464: $6d
    ld d, [hl]                                    ; $7465: $56
    ld l, a                                       ; $7466: $6f
    ld h, [hl]                                    ; $7467: $66
    ld e, a                                       ; $7468: $5f
    ld c, [hl]                                    ; $7469: $4e
    ld a, a                                       ; $746a: $7f
    nop                                           ; $746b: $00
    ld [hl], h                                    ; $746c: $74
    ld [hl], a                                    ; $746d: $77
    add hl, bc                                    ; $746e: $09
    ld c, $f3                                     ; $746f: $0e $f3
    db $fc                                        ; $7471: $fc
    ld c, $f1                                     ; $7472: $0e $f1
    db $10                                        ; $7474: $10
    ld a, c                                       ; $7475: $79
    add a                                         ; $7476: $87
    inc bc                                        ; $7477: $03
    jr z, jr_097_7481                             ; $7478: $28 $07

    ld hl, sp-$08                                 ; $747a: $f8 $f8
    nop                                           ; $747c: $00
    nop                                           ; $747d: $00
    nop                                           ; $747e: $00
    ldh [$e0], a                                  ; $747f: $e0 $e0

jr_097_7481:
    cp h                                          ; $7481: $bc
    call c, $665a                                 ; $7482: $dc $5a $66
    dec h                                         ; $7485: $25
    dec sp                                        ; $7486: $3b
    ld [$1f1f], sp                                ; $7487: $08 $1f $1f
    ld bc, $6c01                                  ; $748a: $01 $01 $6c
    rrca                                          ; $748d: $0f
    inc bc                                        ; $748e: $03
    inc bc                                        ; $748f: $03
    db $fc                                        ; $7490: $fc
    inc b                                         ; $7491: $04
    rst $38                                       ; $7492: $ff
    rlca                                          ; $7493: $07
    ld hl, sp-$04                                 ; $7494: $f8 $fc
    inc bc                                        ; $7496: $03
    ld [hl], a                                    ; $7497: $77
    ld [bc], a                                    ; $7498: $02
    rst $38                                       ; $7499: $ff
    cp $14                                        ; $749a: $fe $14
    cp $00                                        ; $749c: $fe $00
    nop                                           ; $749e: $00
    ret nc                                        ; $749f: $d0

    ld c, h                                       ; $74a0: $4c
    ld b, [hl]                                    ; $74a1: $46

jr_097_74a2:
    ld d, $06                                     ; $74a2: $16 $06
    ld b, [hl]                                    ; $74a4: $46
    ld a, [hl]                                    ; $74a5: $7e
    nop                                           ; $74a6: $00
    ld d, [hl]                                    ; $74a7: $56
    ld l, [hl]                                    ; $74a8: $6e
    ld c, [hl]                                    ; $74a9: $4e
    ld a, [hl]                                    ; $74aa: $7e
    and h                                         ; $74ab: $a4
    call c, $fc8c                                 ; $74ac: $dc $8c $fc
    ld b, b                                       ; $74af: $40
    xor h                                         ; $74b0: $ac
    ld a, $05                                     ; $74b1: $3e $05
    xor b                                         ; $74b3: $a8
    ret c                                         ; $74b4: $d8

    adc b                                         ; $74b5: $88

jr_097_74b6:
    ld hl, sp+$28                                 ; $74b6: $f8 $28
    ret c                                         ; $74b8: $d8

    nop                                           ; $74b9: $00
    ld c, b                                       ; $74ba: $48
    cp b                                          ; $74bb: $b8
    jr jr_097_74b6                                ; $74bc: $18 $f8

    ld c, b                                       ; $74be: $48
    cp b                                          ; $74bf: $b8

jr_097_74c0:
    ld e, b                                       ; $74c0: $58
    cp b                                          ; $74c1: $b8
    add c                                         ; $74c2: $81
    inc b                                         ; $74c3: $04
    ld c, b                                       ; $74c4: $48
    ld e, b                                       ; $74c5: $58

jr_097_74c6:
    cp b                                          ; $74c6: $b8
    ret c                                         ; $74c7: $d8

    jr c, jr_097_74a2                             ; $74c8: $38 $d8

    jr c, jr_097_74c6                             ; $74ca: $38 $fa

    add hl, bc                                    ; $74cc: $09
    inc d                                         ; $74cd: $14
    jr nc, jr_097_74c0                            ; $74ce: $30 $f0

    ld l, b                                       ; $74d0: $68
    inc e                                         ; $74d1: $1c
    inc bc                                        ; $74d2: $03
    call nc, Call_000_031c                        ; $74d3: $d4 $1c $03
    ld [$01f6], a                                 ; $74d6: $ea $f6 $01
    ld h, d                                       ; $74d9: $62
    ld a, [hl]                                    ; $74da: $7e
    dec b                                         ; $74db: $05
    ld a, [$dda2]                                 ; $74dc: $fa $a2 $dd
    dec d                                         ; $74df: $15
    ld c, h                                       ; $74e0: $4c
    ld c, $01                                     ; $74e1: $0e $01
    cp $0a                                        ; $74e3: $fe $0a
    db $fd                                        ; $74e5: $fd
    ld d, b                                       ; $74e6: $50
    rst $38                                       ; $74e7: $ff
    jr nz, @-$1f                                  ; $74e8: $20 $df

    and b                                         ; $74ea: $a0
    ld l, $61                                     ; $74eb: $2e $61
    ld b, c                                       ; $74ed: $41
    inc [hl]                                      ; $74ee: $34
    ld b, $a0                                     ; $74ef: $06 $a0
    ld c, $6a                                     ; $74f1: $0e $6a
    halt                                          ; $74f3: $76
    add hl, hl                                    ; $74f4: $29
    scf                                           ; $74f5: $37
    ld [bc], a                                    ; $74f6: $02
    jr jr_097_74fc                                ; $74f7: $18 $03

    db $db                                        ; $74f9: $db
    rst $20                                       ; $74fa: $e7
    ld d, e                                       ; $74fb: $53

jr_097_74fc:
    ld l, a                                       ; $74fc: $6f
    or [hl]                                       ; $74fd: $b6
    adc $4c                                       ; $74fe: $ce $4c
    ld b, $28                                     ; $7500: $06 $28
    nop                                           ; $7502: $00

Call_097_7503:
    inc d                                         ; $7503: $14
    ld [$11ff], sp                                ; $7504: $08 $ff $11
    ld c, h                                       ; $7507: $4c
    ld b, $00                                     ; $7508: $06 $00
    call nz, Call_097_5506                        ; $750a: $c4 $06 $55
    ld a, [$aa21]                                 ; $750d: $fa $21 $aa
    ld [hl], l                                    ; $7510: $75
    or b                                          ; $7511: $b0
    ld c, $41                                     ; $7512: $0e $41
    xor a                                         ; $7514: $af
    ld [hl+], a                                   ; $7515: $22
    ld e, a                                       ; $7516: $5f
    sub b                                         ; $7517: $90
    ld c, $08                                     ; $7518: $0e $08
    ld b, a                                       ; $751a: $47
    add b                                         ; $751b: $80
    xor d                                         ; $751c: $aa
    push de                                       ; $751d: $d5
    ret nc                                        ; $751e: $d0

    ld b, $9f                                     ; $751f: $06 $9f
    add l                                         ; $7521: $85
    ld a, [hl]                                    ; $7522: $7e
    nop                                           ; $7523: $00
    ld a, [hl+]                                   ; $7524: $2a
    db $fc                                        ; $7525: $fc
    ld d, b                                       ; $7526: $50
    rst $38                                       ; $7527: $ff
    ld l, b                                       ; $7528: $68
    sbc a                                         ; $7529: $9f
    ld [de], a                                    ; $752a: $12
    db $fd                                        ; $752b: $fd
    adc b                                         ; $752c: $88
    ld d, b                                       ; $752d: $50
    jr nz, jr_097_756f                            ; $752e: $20 $3f

    ld d, d                                       ; $7530: $52
    xor a                                         ; $7531: $af
    ldh a, [$0e]                                  ; $7532: $f0 $0e
    ld h, [hl]                                    ; $7534: $66
    sbc [hl]                                      ; $7535: $9e
    adc $01                                       ; $7536: $ce $01
    ld a, $9b                                     ; $7538: $3e $9b
    ld a, e                                       ; $753a: $7b
    ld sp, $e0f1                                  ; $753b: $31 $f1 $e0
    ldh [$d0], a                                  ; $753e: $e0 $d0
    add hl, de                                    ; $7540: $19
    add b                                         ; $7541: $80
    rst $08                                       ; $7542: $cf
    rrca                                          ; $7543: $0f
    ldh [$e0], a                                  ; $7544: $e0 $e0
    ld e, b                                       ; $7546: $58
    cp b                                          ; $7547: $b8
    sub h                                         ; $7548: $94
    db $ec                                        ; $7549: $ec
    ld l, d                                       ; $754a: $6a
    ld [de], a                                    ; $754b: $12
    halt                                          ; $754c: $76
    ld e, $1e                                     ; $754d: $1e $1e
    add b                                         ; $754f: $80
    add hl, bc                                    ; $7550: $09
    xor b                                         ; $7551: $a8
    rst $18                                       ; $7552: $df
    or b                                          ; $7553: $b0
    ld [hl], $bf                                  ; $7554: $36 $bf

jr_097_7556:
    ld l, d                                       ; $7556: $6a
    ld [$0060], sp                                ; $7557: $08 $60 $00
    sub b                                         ; $755a: $90
    add hl, bc                                    ; $755b: $09
    ld a, [hl+]                                   ; $755c: $2a
    sub b                                         ; $755d: $90
    ld bc, $9022                                  ; $755e: $01 $22 $90
    ld de, $8044                                  ; $7561: $11 $44 $80
    call z, $5406                                 ; $7564: $cc $06 $54
    rst $38                                       ; $7567: $ff
    ld c, e                                       ; $7568: $4b
    sbc h                                         ; $7569: $9c
    or l                                          ; $756a: $b5
    rrca                                          ; $756b: $0f
    ld c, e                                       ; $756c: $4b
    nop                                           ; $756d: $00
    cp h                                          ; $756e: $bc

jr_097_756f:
    inc d                                         ; $756f: $14
    rst $38                                       ; $7570: $ff
    sub h                                         ; $7571: $94
    db $e3                                        ; $7572: $e3
    ld d, l                                       ; $7573: $55
    ld hl, sp+$20                                 ; $7574: $f8 $20
    nop                                           ; $7576: $00
    rst $38                                       ; $7577: $ff
    push de                                       ; $7578: $d5
    ccf                                           ; $7579: $3f
    ld a, [hl+]                                   ; $757a: $2a
    pop af                                        ; $757b: $f1
    ld e, b                                       ; $757c: $58
    rst $20                                       ; $757d: $e7
    ld [hl+], a                                   ; $757e: $22
    nop                                           ; $757f: $00
    rst $38                                       ; $7580: $ff
    add l                                         ; $7581: $85
    ld a, [hl]                                    ; $7582: $7e
    add h                                         ; $7583: $84
    ld hl, sp+$60                                 ; $7584: $f8 $60
    ld a, [bc]                                    ; $7586: $0a
    sub d                                         ; $7587: $92
    rlca                                          ; $7588: $07
    ld d, d                                       ; $7589: $52
    rst $38                                       ; $758a: $ff
    ld bc, $8070                                  ; $758b: $01 $70 $80
    ld [bc], a                                    ; $758e: $02
    nop                                           ; $758f: $00
    ret nz                                        ; $7590: $c0

    cp a                                          ; $7591: $bf
    inc b                                         ; $7592: $04
    jr jr_097_7556                                ; $7593: $18 $c1

    nop                                           ; $7595: $00
    cp a                                          ; $7596: $bf
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    nop                                           ; $7599: $00
    rst $38                                       ; $759a: $ff
    xor d                                         ; $759b: $aa
    ld d, l                                       ; $759c: $55
    nop                                           ; $759d: $00
    db $ec                                        ; $759e: $ec

jr_097_759f:
    ld b, $00                                     ; $759f: $06 $00
    ld [$2d00], sp                                ; $75a1: $08 $00 $2d
    nop                                           ; $75a4: $00
    add e                                         ; $75a5: $83
    inc d                                         ; $75a6: $14
    nop                                           ; $75a7: $00
    inc b                                         ; $75a8: $04
    ld c, b                                       ; $75a9: $48
    ld d, l                                       ; $75aa: $55
    xor d                                         ; $75ab: $aa
    ld [$55aa], sp                                ; $75ac: $08 $aa $55
    ld a, l                                       ; $75af: $7d
    add d                                         ; $75b0: $82
    rra                                           ; $75b1: $1f
    ld [$00f7], sp                                ; $75b2: $08 $f7 $00
    ld l, [hl]                                    ; $75b5: $6e
    nop                                           ; $75b6: $00
    nop                                           ; $75b7: $00
    db $fd                                        ; $75b8: $fd
    nop                                           ; $75b9: $00
    xor b                                         ; $75ba: $a8
    ld d, a                                       ; $75bb: $57
    sbc l                                         ; $75bc: $9d
    ld h, d                                       ; $75bd: $62
    cp a                                          ; $75be: $bf
    nop                                           ; $75bf: $00
    ld b, b                                       ; $75c0: $40
    db $fd                                        ; $75c1: $fd
    ld b, b                                       ; $75c2: $40
    ld a, e                                       ; $75c3: $7b
    ret nz                                        ; $75c4: $c0

    ld a, [hl]                                    ; $75c5: $7e
    ret nz                                        ; $75c6: $c0

    or l                                          ; $75c7: $b5
    nop                                           ; $75c8: $00
    ret nz                                        ; $75c9: $c0

    ld [$0080], a                                 ; $75ca: $ea $80 $00
    nop                                           ; $75cd: $00
    ld bc, $0200                                  ; $75ce: $01 $00 $02
    add b                                         ; $75d1: $80
    inc b                                         ; $75d2: $04
    nop                                           ; $75d3: $00
    inc bc                                        ; $75d4: $03
    nop                                           ; $75d5: $00
    dec b                                         ; $75d6: $05
    nop                                           ; $75d7: $00
    xor d                                         ; $75d8: $aa
    ld bc, $00fd                                  ; $75d9: $01 $fd $00
    inc bc                                        ; $75dc: $03
    jr nz, jr_097_759f                            ; $75dd: $20 $c0

    ret nz                                        ; $75df: $c0

    add b                                         ; $75e0: $80
    ldh [$80], a                                  ; $75e1: $e0 $80
    ldh a, [rP1]                                  ; $75e3: $f0 $00
    add b                                         ; $75e5: $80
    ld a, b                                       ; $75e6: $78
    ret nz                                        ; $75e7: $c0

    xor l                                         ; $75e8: $ad
    ld [hl], b                                    ; $75e9: $70
    sub [hl]                                      ; $75ea: $96
    ld a, b                                       ; $75eb: $78
    ld e, e                                       ; $75ec: $5b
    ld bc, $2a8c                                  ; $75ed: $01 $8c $2a
    push de                                       ; $75f0: $d5
    ld d, a                                       ; $75f1: $57
    xor b                                         ; $75f2: $a8
    cp [hl]                                       ; $75f3: $be
    ld b, c                                       ; $75f4: $41
    ld e, a                                       ; $75f5: $5f
    stop                                          ; $75f6: $10 $00
    nop                                           ; $75f8: $00
    db $ed                                        ; $75f9: $ed
    nop                                           ; $75fa: $00
    cp [hl]                                       ; $75fb: $be
    ld bc, $af50                                  ; $75fc: $01 $50 $af
    ld [$1510], a                                 ; $75ff: $ea $10 $15
    ld [hl], l                                    ; $7602: $75
    adc d                                         ; $7603: $8a

jr_097_7604:
    db $10                                        ; $7604: $10
    jr jr_097_7604                                ; $7605: $18 $fd

    nop                                           ; $7607: $00
    rst $18                                       ; $7608: $df
    nop                                           ; $7609: $00
    ld bc, $e817                                  ; $760a: $01 $17 $e8
    cp e                                          ; $760d: $bb
    ld b, h                                       ; $760e: $44
    db $fd                                        ; $760f: $fd
    ld [bc], a                                    ; $7610: $02
    cp a                                          ; $7611: $bf
    ld a, [bc]                                    ; $7612: $0a
    nop                                           ; $7613: $00
    ld [bc], a                                    ; $7614: $02
    ld a, [hl]                                    ; $7615: $7e
    nop                                           ; $7616: $00
    xor l                                         ; $7617: $ad
    nop                                           ; $7618: $00
    ld d, a                                       ; $7619: $57
    nop                                           ; $761a: $00
    ld [hl], b                                    ; $761b: $70
    ld c, b                                       ; $761c: $48

jr_097_761d:
    ld l, a                                       ; $761d: $6f
    nop                                           ; $761e: $00
    nop                                           ; $761f: $00
    ldh a, [rIF]                                  ; $7620: $f0 $0f
    jp c, Jump_097_7400                           ; $7622: $da $00 $74

    nop                                           ; $7625: $00
    xor b                                         ; $7626: $a8
    ld [bc], a                                    ; $7627: $02
    nop                                           ; $7628: $00
    ld d, c                                       ; $7629: $51
    nop                                           ; $762a: $00
    nop                                           ; $762b: $00
    nop                                           ; $762c: $00
    ld c, b                                       ; $762d: $48
    inc b                                         ; $762e: $04
    nop                                           ; $762f: $00
    nop                                           ; $7630: $00
    ld bc, $d100                                  ; $7631: $01 $00 $d1
    nop                                           ; $7634: $00
    and d                                         ; $7635: $a2
    nop                                           ; $7636: $00
    ld [$7700], sp                                ; $7637: $08 $00 $77
    nop                                           ; $763a: $00
    ld bc, $1000                                  ; $763b: $01 $00 $10
    ldh [$08], a                                  ; $763e: $e0 $08
    db $10                                        ; $7640: $10
    db $10                                        ; $7641: $10
    ld [$0815], sp                                ; $7642: $08 $15 $08
    ld bc, $0040                                  ; $7645: $01 $40 $00
    inc b                                         ; $7648: $04
    nop                                           ; $7649: $00
    sub b                                         ; $764a: $90
    nop                                           ; $764b: $00
    ld b, h                                       ; $764c: $44
    jr z, jr_097_764f                             ; $764d: $28 $00

jr_097_764f:
    nop                                           ; $764f: $00
    pop de                                        ; $7650: $d1
    nop                                           ; $7651: $00
    jr nc, jr_097_765c                            ; $7652: $30 $08

    add sp, $18                                   ; $7654: $e8 $18
    add hl, sp                                    ; $7656: $39
    ldh a, [rNR10]                                ; $7657: $f0 $10
    call nc, Call_097_50e0                        ; $7659: $d4 $e0 $50

jr_097_765c:
    ld [hl], $00                                  ; $765c: $36 $00
    push de                                       ; $765e: $d5
    nop                                           ; $765f: $00
    ld a, [$5000]                                 ; $7660: $fa $00 $50
    ld l, d                                       ; $7663: $6a
    ld b, $00                                     ; $7664: $06 $00
    rst $28                                       ; $7666: $ef
    rst $18                                       ; $7667: $df
    nop                                           ; $7668: $00
    ei                                            ; $7669: $fb
    inc b                                         ; $766a: $04
    ld l, a                                       ; $766b: $6f
    sub b                                         ; $766c: $90
    nop                                           ; $766d: $00
    cp [hl]                                       ; $766e: $be
    ld b, c                                       ; $766f: $41
    ld d, l                                       ; $7670: $55
    xor d                                         ; $7671: $aa
    rst $18                                       ; $7672: $df
    nop                                           ; $7673: $00
    ld a, e                                       ; $7674: $7b
    add b                                         ; $7675: $80
    nop                                           ; $7676: $00
    cp a                                          ; $7677: $bf
    ld b, b                                       ; $7678: $40
    ld e, a                                       ; $7679: $5f
    jr nz, jr_097_7691                            ; $767a: $20 $15

    ld a, [hl+]                                   ; $767c: $2a
    ld e, [hl]                                    ; $767d: $5e
    ld sp, $df00                                  ; $767e: $31 $00 $df
    jr nc, jr_097_761d                            ; $7681: $30 $9a

    ld [hl], l                                    ; $7683: $75
    xor [hl]                                      ; $7684: $ae
    ld d, c                                       ; $7685: $51
    ld d, l                                       ; $7686: $55
    xor d                                         ; $7687: $aa
    ld bc, $f50a                                  ; $7688: $01 $0a $f5
    add c                                         ; $768b: $81
    ld a, [hl]                                    ; $768c: $7e
    jr nz, @+$01                                  ; $768d: $20 $ff

    ld d, c                                       ; $768f: $51
    nop                                           ; $7690: $00

jr_097_7691:
    ld bc, $f500                                  ; $7691: $01 $00 $f5
    rst $38                                       ; $7694: $ff
    dec h                                         ; $7695: $25
    ld a, [$f5ca]                                 ; $7696: $fa $ca $f5
    add h                                         ; $7699: $84
    ei                                            ; $769a: $fb
    nop                                           ; $769b: $00
    ld [$00f7], sp                                ; $769c: $08 $f7 $00
    rst $38                                       ; $769f: $ff
    and d                                         ; $76a0: $a2
    rst $38                                       ; $76a1: $ff
    push de                                       ; $76a2: $d5
    rst $38                                       ; $76a3: $ff
    nop                                           ; $76a4: $00
    xor e                                         ; $76a5: $ab
    rst $38                                       ; $76a6: $ff
    xor e                                         ; $76a7: $ab
    ld d, a                                       ; $76a8: $57
    ld d, [hl]                                    ; $76a9: $56
    rst $38                                       ; $76aa: $ff
    db $fd                                        ; $76ab: $fd
    cp $00                                        ; $76ac: $fe $00
    call nc, Call_000_0c38                        ; $76ae: $d4 $38 $0c
    jr jr_097_76d1                                ; $76b1: $18 $1e

    add hl, bc                                    ; $76b3: $09
    jr c, @+$10                                   ; $76b4: $38 $0e

    nop                                           ; $76b6: $00
    ld l, h                                       ; $76b7: $6c
    jr jr_097_76d6                                ; $76b8: $18 $1c

    rlca                                          ; $76ba: $07
    xor e                                         ; $76bb: $ab
    rla                                           ; $76bc: $17
    db $d3                                        ; $76bd: $d3
    cpl                                           ; $76be: $2f
    nop                                           ; $76bf: $00
    ld d, [hl]                                    ; $76c0: $56
    rst $38                                       ; $76c1: $ff
    db $fc                                        ; $76c2: $fc
    ld hl, sp-$68                                 ; $76c3: $f8 $98
    ld [hl], b                                    ; $76c5: $70
    ld a, [hl-]                                   ; $76c6: $3a
    stop                                          ; $76c7: $10 $00
    dec d                                         ; $76c9: $15
    jr jr_097_7741                                ; $76ca: $18 $75

    ld [bc], a                                    ; $76cc: $02
    xor c                                         ; $76cd: $a9
    ld [bc], a                                    ; $76ce: $02
    ld d, b                                       ; $76cf: $50
    inc bc                                        ; $76d0: $03

jr_097_76d1:
    jr jr_097_76f6                                ; $76d1: $18 $23

    ld bc, $8201                                  ; $76d3: $01 $01 $82

jr_097_76d6:
    nop                                           ; $76d6: $00
    and c                                         ; $76d7: $a1
    ld [$00fa], sp                                ; $76d8: $08 $fa $00
    ld l, l                                       ; $76db: $6d
    adc h                                         ; $76dc: $8c
    halt                                          ; $76dd: $76
    nop                                           ; $76de: $00
    ld d, h                                       ; $76df: $54
    nop                                           ; $76e0: $00
    ld hl, $08a2                                  ; $76e1: $21 $a2 $08
    or [hl]                                       ; $76e4: $b6
    nop                                           ; $76e5: $00
    db $db                                        ; $76e6: $db
    inc a                                         ; $76e7: $3c
    nop                                           ; $76e8: $00
    or h                                          ; $76e9: $b4
    rst $38                                       ; $76ea: $ff
    db $eb                                        ; $76eb: $eb
    rst $30                                       ; $76ec: $f7
    ld h, $c1                                     ; $76ed: $26 $c1
    ld d, c                                       ; $76ef: $51
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    xor d                                         ; $76f2: $aa
    nop                                           ; $76f3: $00
    ld [hl], l                                    ; $76f4: $75
    nop                                           ; $76f5: $00

jr_097_76f6:
    cp a                                          ; $76f6: $bf
    nop                                           ; $76f7: $00
    add hl, bc                                    ; $76f8: $09
    ld e, $00                                     ; $76f9: $1e $00
    inc d                                         ; $76fb: $14
    rrca                                          ; $76fc: $0f
    dec bc                                        ; $76fd: $0b
    rlca                                          ; $76fe: $07
    ld h, $01                                     ; $76ff: $26 $01
    inc b                                         ; $7701: $04
    nop                                           ; $7702: $00
    ld [bc], a                                    ; $7703: $02
    ldh a, [rP1]                                  ; $7704: $f0 $00
    inc bc                                        ; $7706: $03
    db $fc                                        ; $7707: $fc
    dec e                                         ; $7708: $1d
    ld [bc], a                                    ; $7709: $02
    ld h, $08                                     ; $770a: $26 $08
    ld b, b                                       ; $770c: $40
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    and b                                         ; $770f: $a0
    nop                                           ; $7710: $00
    ld d, d                                       ; $7711: $52
    nop                                           ; $7712: $00
    and c                                         ; $7713: $a1
    nop                                           ; $7714: $00
    ret c                                         ; $7715: $d8

    add hl, de                                    ; $7716: $19
    rlca                                          ; $7717: $07
    and $18                                       ; $7718: $e6 $18
    push hl                                       ; $771a: $e5
    db $10                                        ; $771b: $10
    ld a, [hl-]                                   ; $771c: $3a
    nop                                           ; $771d: $00
    add d                                         ; $771e: $82
    nop                                           ; $771f: $00
    jp nz, Jump_000_0308                          ; $7720: $c2 $08 $03

    call nc, $f100                                ; $7723: $d4 $00 $f1
    ld c, $ce                                     ; $7726: $0e $ce
    or c                                          ; $7728: $b1
    ld d, h                                       ; $7729: $54
    add hl, bc                                    ; $772a: $09
    ld bc, $0408                                  ; $772b: $01 $08 $04
    add d                                         ; $772e: $82
    nop                                           ; $772f: $00
    rst $10                                       ; $7730: $d7
    nop                                           ; $7731: $00
    ld [bc], a                                    ; $7732: $02
    ld l, d                                       ; $7733: $6a
    nop                                           ; $7734: $00
    inc bc                                        ; $7735: $03
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    ld d, [hl]                                    ; $7738: $56
    ld bc, $03ac                                  ; $7739: $01 $ac $03
    jp hl                                         ; $773c: $e9


    rla                                           ; $773d: $17
    ld d, e                                       ; $773e: $53
    xor a                                         ; $773f: $af
    nop                                           ; $7740: $00

jr_097_7741:
    ld d, a                                       ; $7741: $57
    rst $38                                       ; $7742: $ff
    sbc [hl]                                      ; $7743: $9e
    rst $38                                       ; $7744: $ff
    ld l, l                                       ; $7745: $6d
    or e                                          ; $7746: $b3
    jp nc, Jump_000_00ed                          ; $7747: $d2 $ed $00

    ld h, c                                       ; $774a: $61
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    cp a                                          ; $774d: $bf
    ld a, l                                       ; $774e: $7d
    rst $38                                       ; $774f: $ff
    ld a, [$10fd]                                 ; $7750: $fa $fd $10
    ld a, l                                       ; $7753: $7d
    ei                                            ; $7754: $fb

jr_097_7755:
    nop                                           ; $7755: $00
    pop de                                        ; $7756: $d1
    add hl, bc                                    ; $7757: $09
    add b                                         ; $7758: $80
    rst $38                                       ; $7759: $ff
    adc a                                         ; $775a: $8f
    ldh a, [rP1]                                  ; $775b: $f0 $00
    rra                                           ; $775d: $1f
    db $eb                                        ; $775e: $eb
    cp h                                          ; $775f: $bc
    ldh a, [$bf]                                  ; $7760: $f0 $bf
    jp c, $6dbf                                   ; $7762: $da $bf $6d

    nop                                           ; $7765: $00
    add d                                         ; $7766: $82
    ld a, [hl-]                                   ; $7767: $3a
    push bc                                       ; $7768: $c5
    add l                                         ; $7769: $85
    rst $38                                       ; $776a: $ff
    db $eb                                        ; $776b: $eb
    rst $38                                       ; $776c: $ff
    dec a                                         ; $776d: $3d
    nop                                           ; $776e: $00
    rst $38                                       ; $776f: $ff
    ld c, d                                       ; $7770: $4a
    ccf                                           ; $7771: $3f
    dec l                                         ; $7772: $2d
    rra                                           ; $7773: $1f
    adc a                                         ; $7774: $8f
    ld a, a                                       ; $7775: $7f
    db $fd                                        ; $7776: $fd
    nop                                           ; $7777: $00
    rst $38                                       ; $7778: $ff
    db $e3                                        ; $7779: $e3
    add c                                         ; $777a: $81
    cp [hl]                                       ; $777b: $be
    pop bc                                        ; $777c: $c1
    ldh [rIE], a                                  ; $777d: $e0 $ff
    rra                                           ; $777f: $1f
    nop                                           ; $7780: $00
    rst $38                                       ; $7781: $ff
    and [hl]                                      ; $7782: $a6
    db $fc                                        ; $7783: $fc
    ld d, h                                       ; $7784: $54
    db $fc                                        ; $7785: $fc
    xor l                                         ; $7786: $ad
    cp $fb                                        ; $7787: $fe $fb
    inc bc                                        ; $7789: $03
    cp a                                          ; $778a: $bf
    ld a, [hl]                                    ; $778b: $7e
    sbc a                                         ; $778c: $9f
    ldh a, [$8f]                                  ; $778d: $f0 $8f
    ld a, a                                       ; $778f: $7f
    dec d                                         ; $7790: $15
    ld [bc], a                                    ; $7791: $02
    inc b                                         ; $7792: $04
    jr jr_097_7795                                ; $7793: $18 $00

jr_097_7795:
    ld a, a                                       ; $7795: $7f

jr_097_7796:
    sbc a                                         ; $7796: $9f
    ccf                                           ; $7797: $3f
    rst $38                                       ; $7798: $ff
    ld a, l                                       ; $7799: $7d
    cp a                                          ; $779a: $bf
    cp $3f                                        ; $779b: $fe $3f
    nop                                           ; $779d: $00
    db $dd                                        ; $779e: $dd
    ccf                                           ; $779f: $3f
    cp $1f                                        ; $77a0: $fe $1f
    rst $30                                       ; $77a2: $f7
    rrca                                          ; $77a3: $0f
    db $fc                                        ; $77a4: $fc
    inc bc                                        ; $77a5: $03
    ld d, $8a                                     ; $77a6: $16 $8a
    nop                                           ; $77a8: $00
    ld b, l                                       ; $77a9: $45
    ret z                                         ; $77aa: $c8

    nop                                           ; $77ab: $00
    ld bc, $1897                                  ; $77ac: $01 $97 $18
    add [hl]                                      ; $77af: $86
    ld bc, $00cc                                  ; $77b0: $01 $cc $00
    jr nc, jr_097_7755                            ; $77b3: $30 $a0

    ld b, b                                       ; $77b5: $40
    ld b, b                                       ; $77b6: $40
    add b                                         ; $77b7: $80
    ld [hl], b                                    ; $77b8: $70
    add b                                         ; $77b9: $80
    xor d                                         ; $77ba: $aa
    ld bc, $c5d0                                  ; $77bb: $01 $d0 $c5
    ld a, [$7ffa]                                 ; $77be: $fa $fa $7f
    ld e, l                                       ; $77c1: $5d
    ccf                                           ; $77c2: $3f
    sub l                                         ; $77c3: $95
    add hl, bc                                    ; $77c4: $09
    nop                                           ; $77c5: $00
    adc b                                         ; $77c6: $88
    nop                                           ; $77c7: $00
    inc h                                         ; $77c8: $24
    nop                                           ; $77c9: $00
    ld a, [bc]                                    ; $77ca: $0a
    nop                                           ; $77cb: $00
    dec d                                         ; $77cc: $15
    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    xor e                                         ; $77cf: $ab
    nop                                           ; $77d0: $00
    ld e, a                                       ; $77d1: $5f
    nop                                           ; $77d2: $00
    daa                                           ; $77d3: $27
    rra                                           ; $77d4: $1f
    inc c                                         ; $77d5: $0c
    inc bc                                        ; $77d6: $03
    ld b, b                                       ; $77d7: $40
    ld b, c                                       ; $77d8: $41
    sub b                                         ; $77d9: $90
    ld b, c                                       ; $77da: $41
    nop                                           ; $77db: $00
    rst $38                                       ; $77dc: $ff
    db $fc                                        ; $77dd: $fc
    rlca                                          ; $77de: $07
    ld hl, sp+$04                                 ; $77df: $f8 $04
    nop                                           ; $77e1: $00
    cp $c4                                        ; $77e2: $fe $c4
    ccf                                           ; $77e4: $3f
    ld [c], a                                     ; $77e5: $e2
    sbc a                                         ; $77e6: $9f
    ld [hl], c                                    ; $77e7: $71
    ld e, [hl]                                    ; $77e8: $5e
    or c                                          ; $77e9: $b1
    nop                                           ; $77ea: $00
    xor h                                         ; $77eb: $ac
    ld a, [c]                                     ; $77ec: $f2
    nop                                           ; $77ed: $00
    rst $38                                       ; $77ee: $ff
    rst $10                                       ; $77ef: $d7
    jr z, @+$11                                   ; $77f0: $28 $0f

    ret z                                         ; $77f2: $c8

    nop                                           ; $77f3: $00
    rlca                                          ; $77f4: $07
    ld [$580f], sp                                ; $77f5: $08 $0f $58
    rla                                           ; $77f8: $17
    xor b                                         ; $77f9: $a8
    cpl                                           ; $77fa: $2f
    ld e, b                                       ; $77fb: $58
    nop                                           ; $77fc: $00
    ld a, a                                       ; $77fd: $7f
    inc a                                         ; $77fe: $3c
    ld bc, $feff                                  ; $77ff: $01 $ff $fe
    ld bc, $01ff                                  ; $7802: $01 $ff $01
    nop                                           ; $7805: $00
    cp $01                                        ; $7806: $fe $01
    ld a, e                                       ; $7808: $7b
    call Call_097_49fe                            ; $7809: $cd $fe $49
    ld l, a                                       ; $780c: $6f
    ret                                           ; $780d: $c9


    jr nz, jr_097_7796                            ; $780e: $20 $86

    ld sp, hl                                     ; $7810: $f9
    or b                                          ; $7811: $b0
    add hl, sp                                    ; $7812: $39
    ld l, b                                       ; $7813: $68
    sub a                                         ; $7814: $97
    and [hl]                                      ; $7815: $a6
    ld e, b                                       ; $7816: $58
    ld l, b                                       ; $7817: $68
    nop                                           ; $7818: $00
    or b                                          ; $7819: $b0
    db $fd                                        ; $781a: $fd
    ld [c], a                                     ; $781b: $e2
    cp a                                          ; $781c: $bf
    di                                            ; $781d: $f3
    ld e, a                                       ; $781e: $5f
    ldh a, [$b7]                                  ; $781f: $f0 $b7
    nop                                           ; $7821: $00
    ret c                                         ; $7822: $d8

    ld d, a                                       ; $7823: $57
    cp b                                          ; $7824: $b8
    daa                                           ; $7825: $27
    ld hl, sp-$31                                 ; $7826: $f8 $cf
    ldh a, [$1f]                                  ; $7828: $f0 $1f
    inc b                                         ; $782a: $04
    ldh [$c5], a                                  ; $782b: $e0 $c5
    cp $79                                        ; $782d: $fe $79
    add [hl]                                      ; $782f: $86
    ld c, [hl]                                    ; $7830: $4e
    ld a, [de]                                    ; $7831: $1a
    db $fc                                        ; $7832: $fc
    inc bc                                        ; $7833: $03
    add h                                         ; $7834: $84
    or l                                          ; $7835: $b5
    ld a, [bc]                                    ; $7836: $0a
    ld e, a                                       ; $7837: $5f
    ret                                           ; $7838: $c9


    xor $c9                                       ; $7839: $ee $c9
    inc b                                         ; $783b: $04
    ld [$f1bf], sp                                ; $783c: $08 $bf $f1
    nop                                           ; $783f: $00
    cp $81                                        ; $7840: $fe $81
    ld c, a                                       ; $7842: $4f
    pop af                                        ; $7843: $f1
    cp $01                                        ; $7844: $fe $01
    sub b                                         ; $7846: $90
    ld h, b                                       ; $7847: $60
    nop                                           ; $7848: $00
    ld [hl], b                                    ; $7849: $70
    ldh [$7c], a                                  ; $784a: $e0 $7c
    jr nz, jr_097_7858                            ; $784c: $20 $0a

    inc [hl]                                      ; $784e: $34
    dec [hl]                                      ; $784f: $35
    ld a, [de]                                    ; $7850: $1a
    inc b                                         ; $7851: $04
    ld l, b                                       ; $7852: $68
    rra                                           ; $7853: $1f
    ld b, [hl]                                    ; $7854: $46
    cp a                                          ; $7855: $bf
    dec hl                                        ; $7856: $2b
    rst $38                                       ; $7857: $ff

jr_097_7858:
    ld [bc], a                                    ; $7858: $02
    ld bc, $05ff                                  ; $7859: $01 $ff $05
    add e                                         ; $785c: $83
    ld a, a                                       ; $785d: $7f
    ld bc, $03ff                                  ; $785e: $01 $ff $03
    ld [$0300], sp                                ; $7861: $08 $00 $03
    ldh a, [rSC]                                  ; $7864: $f0 $02
    ld c, b                                       ; $7866: $48
    add c                                         ; $7867: $81
    db $fc                                        ; $7868: $fc
    ld [hl-], a                                   ; $7869: $32
    ret nz                                        ; $786a: $c0

    cp a                                          ; $786b: $bf
    ldh a, [$0a]                                  ; $786c: $f0 $0a
    sub l                                         ; $786e: $95
    ld [$002a], a                                 ; $786f: $ea $2a $00
    push de                                       ; $7872: $d5
    cp l                                          ; $7873: $bd
    jp nz, $c03f                                  ; $7874: $c2 $3f $c0

    cp a                                          ; $7877: $bf
    ret nz                                        ; $7878: $c0

    ld [hl], a                                    ; $7879: $77
    nop                                           ; $787a: $00
    add b                                         ; $787b: $80
    xor [hl]                                      ; $787c: $ae
    ret nz                                        ; $787d: $c0

    ld a, l                                       ; $787e: $7d
    add b                                         ; $787f: $80
    sbc d                                         ; $7880: $9a
    ret nz                                        ; $7881: $c0

    ld [hl], h                                    ; $7882: $74
    nop                                           ; $7883: $00
    add b                                         ; $7884: $80
    xor b                                         ; $7885: $a8
    ret nz                                        ; $7886: $c0

    ld d, c                                       ; $7887: $51
    add b                                         ; $7888: $80
    and b                                         ; $7889: $a0
    ret nz                                        ; $788a: $c0

    ld c, c                                       ; $788b: $49
    nop                                           ; $788c: $00
    add b                                         ; $788d: $80
    or b                                          ; $788e: $b0
    rst $08                                       ; $788f: $cf
    ld c, b                                       ; $7890: $48
    sub b                                         ; $7891: $90
    add b                                         ; $7892: $80
    ld e, $52                                     ; $7893: $1e $52
    nop                                           ; $7895: $00
    ld hl, $4021                                  ; $7896: $21 $21 $40
    and e                                         ; $7899: $a3
    ld b, b                                       ; $789a: $40
    or [hl]                                       ; $789b: $b6
    ld b, c                                       ; $789c: $41
    call c, Call_097_6300                         ; $789d: $dc $00 $63
    ld b, c                                       ; $78a0: $41
    rst $38                                       ; $78a1: $ff
    ld a, a                                       ; $78a2: $7f
    ccf                                           ; $78a3: $3f
    rst $00                                       ; $78a4: $c7
    rst $38                                       ; $78a5: $ff
    db $e3                                        ; $78a6: $e3
    ld d, b                                       ; $78a7: $50
    rst $18                                       ; $78a8: $df
    inc b                                         ; $78a9: $04
    ld c, b                                       ; $78aa: $48
    ld a, [$0ac6]                                 ; $78ab: $fa $c6 $0a
    jr nz, @+$01                                  ; $78ae: $20 $ff

    nop                                           ; $78b0: $00
    ld a, l                                       ; $78b1: $7d
    nop                                           ; $78b2: $00
    add d                                         ; $78b3: $82
    sbc $21                                       ; $78b4: $de $21
    xor e                                         ; $78b6: $ab
    ld d, h                                       ; $78b7: $54
    ld d, l                                       ; $78b8: $55
    xor d                                         ; $78b9: $aa
    and d                                         ; $78ba: $a2
    nop                                           ; $78bb: $00

Call_097_78bc:
    ld e, l                                       ; $78bc: $5d
    ld d, c                                       ; $78bd: $51

jr_097_78be:
    xor [hl]                                      ; $78be: $ae
    ld [hl+], a                                   ; $78bf: $22
    db $dd                                        ; $78c0: $dd
    ld c, b                                       ; $78c1: $48
    or a                                          ; $78c2: $b7
    nop                                           ; $78c3: $00
    jr z, @+$01                                   ; $78c4: $28 $ff

    ld b, c                                       ; $78c6: $41
    ld d, b                                       ; $78c7: $50
    inc bc                                        ; $78c8: $03
    ld d, l                                       ; $78c9: $55
    ld l, [hl]                                    ; $78ca: $6e
    inc bc                                        ; $78cb: $03
    inc b                                         ; $78cc: $04
    rst $38                                       ; $78cd: $ff
    dec bc                                        ; $78ce: $0b
    nop                                           ; $78cf: $00

jr_097_78d0:
    rst $38                                       ; $78d0: $ff
    and l                                         ; $78d1: $a5
    ld a, [hl]                                    ; $78d2: $7e
    rrca                                          ; $78d3: $0f
    ld hl, sp+$4b                                 ; $78d4: $f8 $4b
    db $fc                                        ; $78d6: $fc
    xor h                                         ; $78d7: $ac
    nop                                           ; $78d8: $00
    rst $38                                       ; $78d9: $ff
    rlca                                          ; $78da: $07
    rst $38                                       ; $78db: $ff
    sbc c                                         ; $78dc: $99
    ld a, b                                       ; $78dd: $78
    jr z, jr_097_78d0                             ; $78de: $28 $f0

    ld e, e                                       ; $78e0: $5b
    jr nz, @-$02                                  ; $78e1: $20 $fc

    cpl                                           ; $78e3: $2f
    ld e, $00                                     ; $78e4: $1e $00
    add h                                         ; $78e6: $84
    ei                                            ; $78e7: $fb
    ld d, d                                       ; $78e8: $52
    db $fd                                        ; $78e9: $fd
    rst $20                                       ; $78ea: $e7
    jr nc, jr_097_792c                            ; $78eb: $30 $3f

    ei                                            ; $78ed: $fb
    inc b                                         ; $78ee: $04
    inc bc                                        ; $78ef: $03
    sbc [hl]                                      ; $78f0: $9e
    ld a, [bc]                                    ; $78f1: $0a
    xor [hl]                                      ; $78f2: $ae
    ld d, c                                       ; $78f3: $51
    ld a, l                                       ; $78f4: $7d
    add d                                         ; $78f5: $82
    nop                                           ; $78f6: $00
    ld a, [$5505]                                 ; $78f7: $fa $05 $55
    xor d                                         ; $78fa: $aa
    ld d, b                                       ; $78fb: $50
    jr nz, jr_097_78be                            ; $78fc: $20 $c0

    jr nz, jr_097_7900                            ; $78fe: $20 $00

jr_097_7900:
    ldh a, [rNR41]                                ; $7900: $f0 $20
    add sp, $30                                   ; $7902: $e8 $30
    or $18                                        ; $7904: $f6 $18
    xor c                                         ; $7906: $a9
    ld e, [hl]                                    ; $7907: $5e
    ld [bc], a                                    ; $7908: $02
    ld e, h                                       ; $7909: $5c
    xor a                                         ; $790a: $af
    adc a                                         ; $790b: $8f
    ld [hl], e                                    ; $790c: $73
    xor d                                         ; $790d: $aa
    ld d, l                                       ; $790e: $55
    ld d, b                                       ; $790f: $50
    ld [$a010], sp                                ; $7910: $08 $10 $a0
    jp $4502                                      ; $7913: $c3 $02 $45


    adc [hl]                                      ; $7916: $8e
    ld [bc], a                                    ; $7917: $02
    push de                                       ; $7918: $d5
    rst $38                                       ; $7919: $ff
    ret nz                                        ; $791a: $c0

    add c                                         ; $791b: $81
    add e                                         ; $791c: $83
    nop                                           ; $791d: $00
    add b                                         ; $791e: $80
    cp $81                                        ; $791f: $fe $81
    sbc b                                         ; $7921: $98
    rst $20                                       ; $7922: $e7
    ld h, e                                       ; $7923: $63
    rst $38                                       ; $7924: $ff
    cp [hl]                                       ; $7925: $be
    add b                                         ; $7926: $80
    ld e, [hl]                                    ; $7927: $5e
    nop                                           ; $7928: $00
    db $eb                                        ; $7929: $eb
    rst $38                                       ; $792a: $ff
    rrca                                          ; $792b: $0f

jr_097_792c:
    rst $38                                       ; $792c: $ff
    ld b, b                                       ; $792d: $40
    cp a                                          ; $792e: $bf
    pop af                                        ; $792f: $f1
    nop                                           ; $7930: $00
    rst $38                                       ; $7931: $ff
    ld a, [$0d0f]                                 ; $7932: $fa $0f $0d
    rlca                                          ; $7935: $07
    and $03                                       ; $7936: $e6 $03
    ld a, d                                       ; $7938: $7a
    nop                                           ; $7939: $00
    add a                                         ; $793a: $87
    adc h                                         ; $793b: $8c
    rst $38                                       ; $793c: $ff
    rst $08                                       ; $793d: $cf
    ldh a, [$6f]                                  ; $793e: $f0 $6f
    ldh a, [$38]                                  ; $7940: $f0 $38
    add b                                         ; $7942: $80
    sbc $01                                       ; $7943: $de $01
    ld b, d                                       ; $7945: $42
    cp a                                          ; $7946: $bf
    and l                                         ; $7947: $a5
    sbc $49                                       ; $7948: $de $49
    cp $0c                                        ; $794a: $fe $0c
    nop                                           ; $794c: $00
    rst $38                                       ; $794d: $ff
    ld hl, sp-$01                                 ; $794e: $f8 $ff
    and b                                         ; $7950: $a0
    ld a, a                                       ; $7951: $7f
    ld b, c                                       ; $7952: $41
    cp $f8                                        ; $7953: $fe $f8
    nop                                           ; $7955: $00
    rst $38                                       ; $7956: $ff
    rst $30                                       ; $7957: $f7
    rrca                                          ; $7958: $0f
    ld b, d                                       ; $7959: $42
    ld bc, $00ff                                  ; $795a: $01 $ff $00
    xor h                                         ; $795d: $ac
    nop                                           ; $795e: $00
    ld d, e                                       ; $795f: $53
    xor d                                         ; $7960: $aa
    ldh a, [rHDMA1]                               ; $7961: $f0 $51
    cp $0f                                        ; $7963: $fe $0f
    rst $38                                       ; $7965: $ff
    ld [hl+], a                                   ; $7966: $22
    nop                                           ; $7967: $00
    rst $18                                       ; $7968: $df
    inc b                                         ; $7969: $04
    rst $38                                       ; $796a: $ff
    adc b                                         ; $796b: $88
    rst $30                                       ; $796c: $f7
    add c                                         ; $796d: $81
    rst $38                                       ; $796e: $ff
    and a                                         ; $796f: $a7
    nop                                           ; $7970: $00
    cp $f0                                        ; $7971: $fe $f0
    rst $38                                       ; $7973: $ff
    ld h, h                                       ; $7974: $64
    dec sp                                        ; $7975: $3b
    ret                                           ; $7976: $c9


    ld [hl], a                                    ; $7977: $77
    add e                                         ; $7978: $83
    nop                                           ; $7979: $00
    cp $52                                        ; $797a: $fe $52
    rst $38                                       ; $797c: $ff
    ld a, [hl+]                                   ; $797d: $2a
    rst $38                                       ; $797e: $ff
    add l                                         ; $797f: $85
    ld a, a                                       ; $7980: $7f
    jp nz, $ff08                                  ; $7981: $c2 $08 $ff

    add a                                         ; $7984: $87
    ld a, a                                       ; $7985: $7f
    inc bc                                        ; $7986: $03
    inc [hl]                                      ; $7987: $34
    nop                                           ; $7988: $00
    adc h                                         ; $7989: $8c
    rlca                                          ; $798a: $07
    db $f4                                        ; $798b: $f4
    ld [bc], a                                    ; $798c: $02
    rrca                                          ; $798d: $0f
    jr @+$01                                      ; $798e: $18 $ff

    ld [c], a                                     ; $7990: $e2
    db $fd                                        ; $7991: $fd
    rrca                                          ; $7992: $0f
    db $10                                        ; $7993: $10
    inc b                                         ; $7994: $04
    db $fc                                        ; $7995: $fc
    nop                                           ; $7996: $00
    rst $38                                       ; $7997: $ff
    xor b                                         ; $7998: $a8
    rst $38                                       ; $7999: $ff
    ld d, b                                       ; $799a: $50
    rst $38                                       ; $799b: $ff
    add hl, hl                                    ; $799c: $29
    cp $80                                        ; $799d: $fe $80
    nop                                           ; $799f: $00
    ld a, a                                       ; $79a0: $7f
    rlca                                          ; $79a1: $07
    rst $38                                       ; $79a2: $ff
    rst $08                                       ; $79a3: $cf
    ld hl, sp+$48                                 ; $79a4: $f8 $48
    ld hl, sp-$70                                 ; $79a6: $f8 $90
    nop                                           ; $79a8: $00
    ldh a, [$35]                                  ; $79a9: $f0 $35
    ldh [$ae], a                                  ; $79ab: $e0 $ae
    ld [hl], b                                    ; $79ad: $70
    add hl, de                                    ; $79ae: $19
    cp $07                                        ; $79af: $fe $07
    nop                                           ; $79b1: $00
    rst $38                                       ; $79b2: $ff
    adc d                                         ; $79b3: $8a
    rst $38                                       ; $79b4: $ff
    call nz, $847f                                ; $79b5: $c4 $7f $84
    ld hl, sp+$4e                                 ; $79b8: $f8 $4e
    nop                                           ; $79ba: $00
    add h                                         ; $79bb: $84
    add d                                         ; $79bc: $82
    add e                                         ; $79bd: $83
    ld b, a                                       ; $79be: $47
    add c                                         ; $79bf: $81
    xor [hl]                                      ; $79c0: $ae
    pop bc                                        ; $79c1: $c1
    dec e                                         ; $79c2: $1d
    nop                                           ; $79c3: $00
    db $e3                                        ; $79c4: $e3
    sub a                                         ; $79c5: $97
    rst $38                                       ; $79c6: $ff
    ld a, a                                       ; $79c7: $7f
    rst $38                                       ; $79c8: $ff
    cp l                                          ; $79c9: $bd
    jp $0059                                      ; $79ca: $c3 $59 $00


    add [hl]                                      ; $79cd: $86
    or h                                          ; $79ce: $b4
    ret z                                         ; $79cf: $c8

    ld a, b                                       ; $79d0: $78
    sub b                                         ; $79d1: $90
    or h                                          ; $79d2: $b4
    reti                                          ; $79d3: $d9


    ld l, b                                       ; $79d4: $68
    nop                                           ; $79d5: $00
    sbc a                                         ; $79d6: $9f
    cp a                                          ; $79d7: $bf
    rst $00                                       ; $79d8: $c7
    ld d, l                                       ; $79d9: $55
    xor d                                         ; $79da: $aa
    and [hl]                                      ; $79db: $a6
    ld bc, $0053                                  ; $79dc: $01 $53 $00
    xor a                                         ; $79df: $af
    db $fc                                        ; $79e0: $fc
    rst $38                                       ; $79e1: $ff
    and h                                         ; $79e2: $a4
    ei                                            ; $79e3: $fb
    ld d, c                                       ; $79e4: $51
    cp $08                                        ; $79e5: $fe $08
    add b                                         ; $79e7: $80
    ld d, b                                       ; $79e8: $50
    nop                                           ; $79e9: $00
    ld a, h                                       ; $79ea: $7c
    rra                                           ; $79eb: $1f
    xor [hl]                                      ; $79ec: $ae
    pop de                                        ; $79ed: $d1
    ld d, l                                       ; $79ee: $55
    xor d                                         ; $79ef: $aa
    adc d                                         ; $79f0: $8a
    ld [$01f5], sp                                ; $79f1: $08 $f5 $01
    cp $a0                                        ; $79f4: $fe $a0
    ld [hl], b                                    ; $79f6: $70
    inc hl                                        ; $79f7: $23
    ld b, $03                                     ; $79f8: $06 $03
    ld bc, $0100                                  ; $79fa: $01 $00 $01
    ld b, e                                       ; $79fd: $43
    ld bc, $03bd                                  ; $79fe: $01 $bd $03
    and a                                         ; $7a01: $a7
    ld e, a                                       ; $7a02: $5f
    rst $38                                       ; $7a03: $ff
    nop                                           ; $7a04: $00
    rst $38                                       ; $7a05: $ff
    ld e, a                                       ; $7a06: $5f
    ldh [$bf], a                                  ; $7a07: $e0 $bf
    ret nz                                        ; $7a09: $c0

    inc sp                                        ; $7a0a: $33
    rra                                           ; $7a0b: $1f
    ccf                                           ; $7a0c: $3f
    add b                                         ; $7a0d: $80
    jp nz, Jump_000_1c03                          ; $7a0e: $c2 $03 $1c

    ld hl, sp-$3e                                 ; $7a11: $f8 $c2
    ld hl, sp-$3b                                 ; $7a13: $f8 $c5
    adc b                                         ; $7a15: $88
    dec bc                                        ; $7a16: $0b
    nop                                           ; $7a17: $00
    inc b                                         ; $7a18: $04
    sub a                                         ; $7a19: $97
    inc c                                         ; $7a1a: $0c
    ld l, a                                       ; $7a1b: $6f
    sbc h                                         ; $7a1c: $9c
    sbc e                                         ; $7a1d: $9b
    db $fc                                        ; $7a1e: $fc
    ld [hl], a                                    ; $7a1f: $77
    nop                                           ; $7a20: $00
    ld a, b                                       ; $7a21: $78
    cp e                                          ; $7a22: $bb
    ld h, h                                       ; $7a23: $64
    ld l, [hl]                                    ; $7a24: $6e
    pop af                                        ; $7a25: $f1
    db $dd                                        ; $7a26: $dd
    ld [c], a                                     ; $7a27: $e2
    cp d                                          ; $7a28: $ba
    ld bc, $55c5                                  ; $7a29: $01 $c5 $55
    xor d                                         ; $7a2c: $aa
    rst $38                                       ; $7a2d: $ff
    rla                                           ; $7a2e: $17
    rst $38                                       ; $7a2f: $ff
    xor l                                         ; $7a30: $ad
    inc b                                         ; $7a31: $04
    ld c, b                                       ; $7a32: $48
    ld bc, $7cab                                  ; $7a33: $01 $ab $7c
    rst $10                                       ; $7a36: $d7
    ld hl, sp+$11                                 ; $7a37: $f8 $11
    cp $8e                                        ; $7a39: $fe $8e
    sbc h                                         ; $7a3b: $9c
    nop                                           ; $7a3c: $00
    nop                                           ; $7a3d: $00
    sub b                                         ; $7a3e: $90
    rst $28                                       ; $7a3f: $ef
    ld b, b                                       ; $7a40: $40
    rst $38                                       ; $7a41: $ff
    ld c, b                                       ; $7a42: $48
    rst $30                                       ; $7a43: $f7
    ld b, d                                       ; $7a44: $42
    db $fd                                        ; $7a45: $fd
    nop                                           ; $7a46: $00
    add h                                         ; $7a47: $84
    ei                                            ; $7a48: $fb
    ld sp, hl                                     ; $7a49: $f9
    rst $38                                       ; $7a4a: $ff
    and $1f                                       ; $7a4b: $e6 $1f
    dec b                                         ; $7a4d: $05
    inc bc                                        ; $7a4e: $03
    ld b, b                                       ; $7a4f: $40
    ld [$00f0], a                                 ; $7a50: $ea $f0 $00
    cp $01                                        ; $7a53: $fe $01
    add e                                         ; $7a55: $83
    rst $38                                       ; $7a56: $ff
    ld b, c                                       ; $7a57: $41
    cp a                                          ; $7a58: $bf
    and b                                         ; $7a59: $a0
    nop                                           ; $7a5a: $00
    ld a, [hl+]                                   ; $7a5b: $2a
    xor e                                         ; $7a5c: $ab
    dec c                                         ; $7a5d: $0d
    dec b                                         ; $7a5e: $05
    xor h                                         ; $7a5f: $ac
    ld d, e                                       ; $7a60: $53
    ld d, e                                       ; $7a61: $53
    xor a                                         ; $7a62: $af
    ld e, a                                       ; $7a63: $5f
    jr nz, @+$01                                  ; $7a64: $20 $ff

    jp hl                                         ; $7a66: $e9


    jp nc, $ff08                                  ; $7a67: $d2 $08 $ff

    ld [bc], a                                    ; $7a6a: $02
    rst $38                                       ; $7a6b: $ff
    push hl                                       ; $7a6c: $e5
    rst $38                                       ; $7a6d: $ff
    add b                                         ; $7a6e: $80
    add b                                         ; $7a6f: $80
    ld c, h                                       ; $7a70: $4c
    db $ed                                        ; $7a71: $ed
    nop                                           ; $7a72: $00
    rrca                                          ; $7a73: $0f
    ldh a, [rHDMA5]                               ; $7a74: $f0 $55
    ldh [$de], a                                  ; $7a76: $e0 $de
    nop                                           ; $7a78: $00
    ld h, b                                       ; $7a79: $60
    dec hl                                        ; $7a7a: $2b
    db $f4                                        ; $7a7b: $f4
    push af                                       ; $7a7c: $f5
    ld a, [hl-]                                   ; $7a7d: $3a
    ret c                                         ; $7a7e: $d8

    ccf                                           ; $7a7f: $3f
    xor $00                                       ; $7a80: $ee $00
    rra                                           ; $7a82: $1f
    jp Jump_000_213f                              ; $7a83: $c3 $3f $21


    ret nz                                        ; $7a86: $c0

    rlca                                          ; $7a87: $07
    ld bc, $008f                                  ; $7a88: $01 $8f $00
    ld bc, $035d                                  ; $7a8b: $01 $5d $03
    ld a, c                                       ; $7a8e: $79
    add a                                         ; $7a8f: $87
    and c                                         ; $7a90: $a1
    ld e, a                                       ; $7a91: $5f
    dec bc                                        ; $7a92: $0b
    nop                                           ; $7a93: $00
    rst $38                                       ; $7a94: $ff
    cp $ff                                        ; $7a95: $fe $ff
    ei                                            ; $7a97: $fb
    db $fd                                        ; $7a98: $fd
    ld a, [de]                                    ; $7a99: $1a
    rst $38                                       ; $7a9a: $ff
    inc d                                         ; $7a9b: $14
    inc b                                         ; $7a9c: $04
    rrca                                          ; $7a9d: $0f
    jp z, $e207                                   ; $7a9e: $ca $07 $e2

    rra                                           ; $7aa1: $1f
    ld e, d                                       ; $7aa2: $5a
    add hl, bc                                    ; $7aa3: $09
    ld b, l                                       ; $7aa4: $45
    ei                                            ; $7aa5: $fb
    nop                                           ; $7aa6: $00
    xor b                                         ; $7aa7: $a8
    rst $30                                       ; $7aa8: $f7
    xor c                                         ; $7aa9: $a9
    ld [hl], a                                    ; $7aaa: $77
    ld [hl-], a                                   ; $7aab: $32
    dec e                                         ; $7aac: $1d
    add sp, $1f                                   ; $7aad: $e8 $1f
    nop                                           ; $7aaf: $00
    ld [$f0ff], sp                                ; $7ab0: $08 $ff $f0
    rst $38                                       ; $7ab3: $ff
    ld b, d                                       ; $7ab4: $42
    rst $38                                       ; $7ab5: $ff
    add h                                         ; $7ab6: $84
    rst $38                                       ; $7ab7: $ff
    nop                                           ; $7ab8: $00
    ld [$18ff], sp                                ; $7ab9: $08 $ff $18
    ldh a, [$30]                                  ; $7abc: $f0 $30
    ldh [$35], a                                  ; $7abe: $e0 $35
    ldh [rSB], a                                  ; $7ac0: $e0 $01
    ld d, $f8                                     ; $7ac2: $16 $f8
    inc l                                         ; $7ac4: $2c
    rst $38                                       ; $7ac5: $ff
    ld d, e                                       ; $7ac6: $53
    rst $38                                       ; $7ac7: $ff
    jr z, jr_097_7b36                             ; $7ac8: $28 $6c

    dec b                                         ; $7aca: $05
    nop                                           ; $7acb: $00
    ld [hl], b                                    ; $7acc: $70
    ccf                                           ; $7acd: $3f
    rrca                                          ; $7ace: $0f
    rrca                                          ; $7acf: $0f
    dec d                                         ; $7ad0: $15
    rlca                                          ; $7ad1: $07
    or h                                          ; $7ad2: $b4
    rrca                                          ; $7ad3: $0f
    nop                                           ; $7ad4: $00
    jp hl                                         ; $7ad5: $e9


    rra                                           ; $7ad6: $1f
    cp $ff                                        ; $7ad7: $fe $ff
    ld hl, $50e1                                  ; $7ad9: $21 $e1 $50
    ldh [rNR11], a                                ; $7adc: $e0 $11
    jp nz, $a07f                                  ; $7ade: $c2 $7f $a0

    pop af                                        ; $7ae1: $f1
    ld bc, $fa85                                  ; $7ae2: $01 $85 $fa
    nop                                           ; $7ae5: $00
    or b                                          ; $7ae6: $b0
    nop                                           ; $7ae7: $00
    nop                                           ; $7ae8: $00
    ld b, c                                       ; $7ae9: $41
    rst $38                                       ; $7aea: $ff
    add d                                         ; $7aeb: $82
    rst $38                                       ; $7aec: $ff
    ld d, c                                       ; $7aed: $51
    xor a                                         ; $7aee: $af
    ld [bc], a                                    ; $7aef: $02
    db $fd                                        ; $7af0: $fd
    inc b                                         ; $7af1: $04
    ld c, c                                       ; $7af2: $49
    cp $a4                                        ; $7af3: $fe $a4
    rst $38                                       ; $7af5: $ff
    ld b, b                                       ; $7af6: $40
    db $10                                        ; $7af7: $10
    ld [bc], a                                    ; $7af8: $02
    sbc [hl]                                      ; $7af9: $9e
    rst $38                                       ; $7afa: $ff
    nop                                           ; $7afb: $00
    rst $38                                       ; $7afc: $ff
    pop hl                                        ; $7afd: $e1
    rra                                           ; $7afe: $1f
    rst $38                                       ; $7aff: $ff
    daa                                           ; $7b00: $27
    ld hl, sp+$30                                 ; $7b01: $f8 $30
    rst $38                                       ; $7b03: $ff
    nop                                           ; $7b04: $00
    ld a, [de]                                    ; $7b05: $1a
    rst $38                                       ; $7b06: $ff
    adc a                                         ; $7b07: $8f
    ld a, a                                       ; $7b08: $7f
    ld [$44f7], sp                                ; $7b09: $08 $f7 $44
    ei                                            ; $7b0c: $fb
    ld b, b                                       ; $7b0d: $40
    and b                                         ; $7b0e: $a0
    ret nc                                        ; $7b0f: $d0

    ld bc, $ff3f                                  ; $7b10: $01 $3f $ff
    or c                                          ; $7b13: $b1
    ld a, [hl]                                    ; $7b14: $7e
    jr z, @+$01                                   ; $7b15: $28 $ff

    nop                                           ; $7b17: $00
    reti                                          ; $7b18: $d9


    rst $30                                       ; $7b19: $f7
    rlca                                          ; $7b1a: $07
    cp $4f                                        ; $7b1b: $fe $4f
    cp b                                          ; $7b1d: $b8
    sbc c                                         ; $7b1e: $99
    cp $05                                        ; $7b1f: $fe $05
    ld b, e                                       ; $7b21: $43
    rst $38                                       ; $7b22: $ff
    adc c                                         ; $7b23: $89
    rst $38                                       ; $7b24: $ff
    db $10                                        ; $7b25: $10
    xor h                                         ; $7b26: $ac
    ld bc, $58fc                                  ; $7b27: $01 $fc $58
    inc bc                                        ; $7b2a: $03
    ld [$0347], sp                                ; $7b2b: $08 $47 $03
    db $fd                                        ; $7b2e: $fd
    inc bc                                        ; $7b2f: $03
    ld a, [de]                                    ; $7b30: $1a
    inc b                                         ; $7b31: $04
    nop                                           ; $7b32: $00
    ld d, l                                       ; $7b33: $55
    add b                                         ; $7b34: $80
    nop                                           ; $7b35: $00

jr_097_7b36:
    sbc d                                         ; $7b36: $9a
    ldh [$f5], a                                  ; $7b37: $e0 $f5
    ld a, [$ff1f]                                 ; $7b39: $fa $1f $ff
    ld [hl+], a                                   ; $7b3c: $22
    db $dd                                        ; $7b3d: $dd
    nop                                           ; $7b3e: $00
    ld [$f4f7], sp                                ; $7b3f: $08 $f7 $f4
    ld a, a                                       ; $7b42: $7f
    ld a, [hl-]                                   ; $7b43: $3a
    rra                                           ; $7b44: $1f
    dec d                                         ; $7b45: $15
    ld e, $00                                     ; $7b46: $1e $00
    ret nc                                        ; $7b48: $d0

    ccf                                           ; $7b49: $3f
    ld h, h                                       ; $7b4a: $64
    ei                                            ; $7b4b: $fb
    sub c                                         ; $7b4c: $91
    rst $38                                       ; $7b4d: $ff
    inc h                                         ; $7b4e: $24
    ei                                            ; $7b4f: $fb
    nop                                           ; $7b50: $00
    ld d, c                                       ; $7b51: $51
    rst $38                                       ; $7b52: $ff
    add d                                         ; $7b53: $82
    ld a, a                                       ; $7b54: $7f
    rra                                           ; $7b55: $1f
    rst $38                                       ; $7b56: $ff
    cpl                                           ; $7b57: $2f
    ldh a, [rSB]                                  ; $7b58: $f0 $01
    ld a, b                                       ; $7b5a: $78
    ret nz                                        ; $7b5b: $c0

jr_097_7b5c:
    sbc a                                         ; $7b5c: $9f
    ldh [$c7], a                                  ; $7b5d: $e0 $c7
    ld hl, sp+$70                                 ; $7b5f: $f8 $70
    inc [hl]                                      ; $7b61: $34
    ld [bc], a                                    ; $7b62: $02
    nop                                           ; $7b63: $00
    and l                                         ; $7b64: $a5
    ei                                            ; $7b65: $fb
    pop bc                                        ; $7b66: $c1
    rst $38                                       ; $7b67: $ff
    jr nc, @+$01                                  ; $7b68: $30 $ff

    ld l, c                                       ; $7b6a: $69
    rra                                           ; $7b6b: $1f
    ld bc, $1f26                                  ; $7b6c: $01 $26 $1f
    push de                                       ; $7b6f: $d5
    ld l, $06                                     ; $7b70: $2e $06
    rst $38                                       ; $7b72: $ff
    cp e                                          ; $7b73: $bb
    jr nc, jr_097_7b78                            ; $7b74: $30 $02

    nop                                           ; $7b76: $00
    ld a, b                                       ; $7b77: $78

jr_097_7b78:
    rst $38                                       ; $7b78: $ff
    sbc a                                         ; $7b79: $9f
    ld a, a                                       ; $7b7a: $7f

Call_097_7b7b:
    jr nz, jr_097_7b5c                            ; $7b7b: $20 $df

    ld a, [hl]                                    ; $7b7d: $7e
    rst $38                                       ; $7b7e: $ff
    ld bc, $ff81                                  ; $7b7f: $01 $81 $ff
    rra                                           ; $7b82: $1f
    ldh [$03], a                                  ; $7b83: $e0 $03
    db $fc                                        ; $7b85: $fc
    and b                                         ; $7b86: $a0
    or $04                                        ; $7b87: $f6 $04
    nop                                           ; $7b89: $00
    ld a, a                                       ; $7b8a: $7f
    rst $38                                       ; $7b8b: $ff
    scf                                           ; $7b8c: $37
    ld hl, sp+$55                                 ; $7b8d: $f8 $55
    ldh [rIE], a                                  ; $7b8f: $e0 $ff
    add b                                         ; $7b91: $80
    nop                                           ; $7b92: $00
    ccf                                           ; $7b93: $3f
    ret nz                                        ; $7b94: $c0

    rst $10                                       ; $7b95: $d7
    xor b                                         ; $7b96: $a8
    ld [hl-], a                                   ; $7b97: $32
    dec c                                         ; $7b98: $0d
    dec b                                         ; $7b99: $05
    ld [bc], a                                    ; $7b9a: $02
    nop                                           ; $7b9b: $00
    ld [bc], a                                    ; $7b9c: $02
    inc bc                                        ; $7b9d: $03
    ld [bc], a                                    ; $7b9e: $02
    inc bc                                        ; $7b9f: $03
    rla                                           ; $7ba0: $17
    ld bc, $837c                                  ; $7ba1: $01 $7c $83
    ld [$5fa1], sp                                ; $7ba4: $08 $a1 $5f
    ld a, [hl+]                                   ; $7ba7: $2a
    rst $38                                       ; $7ba8: $ff
    ld a, d                                       ; $7ba9: $7a
    dec c                                         ; $7baa: $0d
    adc $01                                       ; $7bab: $ce $01
    ld a, c                                       ; $7bad: $79
    nop                                           ; $7bae: $00
    add a                                         ; $7baf: $87
    inc bc                                        ; $7bb0: $03
    cp $fc                                        ; $7bb1: $fe $fc
    db $fc                                        ; $7bb3: $fc
    db $10                                        ; $7bb4: $10
    ld hl, sp-$08                                 ; $7bb5: $f8 $f8
    nop                                           ; $7bb7: $00
    ldh a, [$7e]                                  ; $7bb8: $f0 $7e
    ld hl, $61a3                                  ; $7bba: $21 $a3 $61
    ld h, [hl]                                    ; $7bbd: $66
    pop bc                                        ; $7bbe: $c1
    jp $8100                                      ; $7bbf: $c3 $00 $81


    sub d                                         ; $7bc2: $92
    ld h, c                                       ; $7bc3: $61
    dec hl                                        ; $7bc4: $2b
    ld de, $0916                                  ; $7bc5: $11 $16 $09
    dec bc                                        ; $7bc8: $0b
    jr nz, jr_097_7bd0                            ; $7bc9: $20 $05

    ldh a, [rP1]                                  ; $7bcb: $f0 $00
    ld d, $a8                                     ; $7bcd: $16 $a8
    ret nc                                        ; $7bcf: $d0

jr_097_7bd0:
    push de                                       ; $7bd0: $d5
    ld [$0062], a                                 ; $7bd1: $ea $62 $00
    db $fd                                        ; $7bd4: $fd
    cp d                                          ; $7bd5: $ba
    ld a, a                                       ; $7bd6: $7f
    ld c, a                                       ; $7bd7: $4f
    ccf                                           ; $7bd8: $3f
    ld e, h                                       ; $7bd9: $5c
    jr nc, jr_097_7bf3                            ; $7bda: $30 $17

    nop                                           ; $7bdc: $00
    jr @+$1b                                      ; $7bdd: $18 $19

    ld e, $7c                                     ; $7bdf: $1e $7c
    rra                                           ; $7be1: $1f
    rst $10                                       ; $7be2: $d7
    ccf                                           ; $7be3: $3f
    inc l                                         ; $7be4: $2c
    nop                                           ; $7be5: $00
    di                                            ; $7be6: $f3
    ld e, [hl]                                    ; $7be7: $5e
    ldh [$bd], a                                  ; $7be8: $e0 $bd
    ret nz                                        ; $7bea: $c0

    inc c                                         ; $7beb: $0c
    inc bc                                        ; $7bec: $03
    sbc a                                         ; $7bed: $9f
    nop                                           ; $7bee: $00
    inc bc                                        ; $7bef: $03
    ld a, [c]                                     ; $7bf0: $f2
    rrca                                          ; $7bf1: $0f
    rlca                                          ; $7bf2: $07

jr_097_7bf3:
    db $fd                                        ; $7bf3: $fd
    cp $f9                                        ; $7bf4: $fe $f9
    dec de                                        ; $7bf6: $1b
    ld bc, $82e1                                  ; $7bf7: $01 $e1 $82
    ld bc, HeaderCartridgeType                    ; $7bfa: $01 $47 $01
    ld hl, sp+$07                                 ; $7bfd: $f8 $07
    nop                                           ; $7bff: $00
    dec hl                                        ; $7c00: $2b
    nop                                           ; $7c01: $00
    dec e                                         ; $7c02: $1d
    ld [c], a                                     ; $7c03: $e2
    ld a, [hl+]                                   ; $7c04: $2a
    dec e                                         ; $7c05: $1d
    dec bc                                        ; $7c06: $0b
    ld b, $77                                     ; $7c07: $06 $77
    add b                                         ; $7c09: $80
    nop                                           ; $7c0a: $00
    db $fd                                        ; $7c0b: $fd
    nop                                           ; $7c0c: $00
    cp a                                          ; $7c0d: $bf
    ld b, b                                       ; $7c0e: $40
    ld a, a                                       ; $7c0f: $7f
    add b                                         ; $7c10: $80
    or $09                                        ; $7c11: $f6 $09
    ld [bc], a                                    ; $7c13: $02
    ld l, a                                       ; $7c14: $6f
    sub b                                         ; $7c15: $90
    cp $01                                        ; $7c16: $fe $01
    ld d, l                                       ; $7c18: $55
    xor d                                         ; $7c19: $aa
    add $01                                       ; $7c1a: $c6 $01
    ld bc, $bc00                                  ; $7c1c: $01 $00 $bc
    ld b, e                                       ; $7c1f: $43
    ld a, a                                       ; $7c20: $7f
    add c                                         ; $7c21: $81
    or [hl]                                       ; $7c22: $b6
    ld c, c                                       ; $7c23: $49
    ld a, l                                       ; $7c24: $7d
    add e                                         ; $7c25: $83
    ld [bc], a                                    ; $7c26: $02
    cp d                                          ; $7c27: $ba
    ld b, l                                       ; $7c28: $45
    ld d, l                                       ; $7c29: $55
    xor e                                         ; $7c2a: $ab
    ld bc, $0203                                  ; $7c2b: $01 $03 $02
    dec b                                         ; $7c2e: $05
    ld bc, $a300                                  ; $7c2f: $01 $00 $a3
    ld bc, $01d7                                  ; $7c32: $01 $d7 $01
    cp a                                          ; $7c35: $bf
    ld b, c                                       ; $7c36: $41
    ld e, c                                       ; $7c37: $59
    and a                                         ; $7c38: $a7
    ld b, b                                       ; $7c39: $40
    xor e                                         ; $7c3a: $ab
    cp h                                          ; $7c3b: $bc
    ld b, $11                                     ; $7c3c: $06 $11
    xor $02                                       ; $7c3e: $ee $02
    db $fd                                        ; $7c40: $fd
    ld c, b                                       ; $7c41: $48
    rst $30                                       ; $7c42: $f7
    ld b, b                                       ; $7c43: $40
    and d                                         ; $7c44: $a2
    ld l, h                                       ; $7c45: $6c
    inc bc                                        ; $7c46: $03
    xor e                                         ; $7c47: $ab
    rst $38                                       ; $7c48: $ff
    rst $30                                       ; $7c49: $f7
    rst $38                                       ; $7c4a: $ff
    xor b                                         ; $7c4b: $a8
    ld d, a                                       ; $7c4c: $57
    ld bc, $eb15                                  ; $7c4d: $01 $15 $eb
    add hl, bc                                    ; $7c50: $09
    rst $30                                       ; $7c51: $f7
    ld de, $83ef                                  ; $7c52: $11 $ef $83
    jr nc, jr_097_7c6a                            ; $7c55: $30 $13

    nop                                           ; $7c57: $00
    ld [hl], l                                    ; $7c58: $75
    rst $38                                       ; $7c59: $ff
    jp z, $71f5                                   ; $7c5a: $ca $f5 $71

    cp $df                                        ; $7c5d: $fe $df
    ccf                                           ; $7c5f: $3f
    inc b                                         ; $7c60: $04
    adc e                                         ; $7c61: $8b
    ld a, a                                       ; $7c62: $7f
    inc d                                         ; $7c63: $14
    rst $38                                       ; $7c64: $ff
    add sp, -$76                                  ; $7c65: $e8 $8a
    inc bc                                        ; $7c67: $03
    and b                                         ; $7c68: $a0
    ld e, a                                       ; $7c69: $5f

jr_097_7c6a:
    nop                                           ; $7c6a: $00
    rla                                           ; $7c6b: $17
    rst $38                                       ; $7c6c: $ff
    xor d                                         ; $7c6d: $aa
    call c, $f817                                 ; $7c6e: $dc $17 $f8
    ld sp, hl                                     ; $7c71: $f9
    cp $10                                        ; $7c72: $fe $10
    ld e, $07                                     ; $7c74: $1e $07
    inc bc                                        ; $7c76: $03
    ld a, d                                       ; $7c77: $7a
    ld [bc], a                                    ; $7c78: $02
    ld b, c                                       ; $7c79: $41
    nop                                           ; $7c7a: $00
    xor d                                         ; $7c7b: $aa
    ret nz                                        ; $7c7c: $c0

    ld b, b                                       ; $7c7d: $40
    add b                                         ; $7c7e: $80
    inc hl                                        ; $7c7f: $23
    rlca                                          ; $7c80: $07
    rst $18                                       ; $7c81: $df
    rst $38                                       ; $7c82: $ff
    adc e                                         ; $7c83: $8b
    db $fc                                        ; $7c84: $fc
    adc b                                         ; $7c85: $88
    rst $38                                       ; $7c86: $ff
    ld e, c                                       ; $7c87: $59
    adc b                                         ; $7c88: $88
    dec l                                         ; $7c89: $2d
    rlca                                          ; $7c8a: $07
    xor d                                         ; $7c8b: $aa
    or d                                          ; $7c8c: $b2
    inc b                                         ; $7c8d: $04
    inc [hl]                                      ; $7c8e: $34
    rla                                           ; $7c8f: $17

jr_097_7c90:
    nop                                           ; $7c90: $00
    jr nc, jr_097_7cbb                            ; $7c91: $30 $28

    ld bc, $ff42                                  ; $7c93: $01 $42 $ff
    ld [bc], a                                    ; $7c96: $02
    ld b, $83                                     ; $7c97: $06 $83
    rst $38                                       ; $7c99: $ff
    xor e                                         ; $7c9a: $ab
    rst $10                                       ; $7c9b: $d7
    inc b                                         ; $7c9c: $04
    ld [$009b], sp                                ; $7c9d: $08 $9b $00
    rst $20                                       ; $7ca0: $e7
    xor e                                         ; $7ca1: $ab
    rst $10                                       ; $7ca2: $d7
    rst $38                                       ; $7ca3: $ff
    rst $38                                       ; $7ca4: $ff
    inc c                                         ; $7ca5: $0c
    rlca                                          ; $7ca6: $07
    ld b, $00                                     ; $7ca7: $06 $00
    inc bc                                        ; $7ca9: $03
    xor l                                         ; $7caa: $ad
    inc bc                                        ; $7cab: $03
    pop af                                        ; $7cac: $f1
    rrca                                          ; $7cad: $0f
    rst $38                                       ; $7cae: $ff
    cp $30                                        ; $7caf: $fe $30
    scf                                           ; $7cb1: $37
    ldh [rNR41], a                                ; $7cb2: $e0 $20
    ld [$3001], a                                 ; $7cb4: $ea $01 $30
    jr jr_097_7c90                                ; $7cb7: $18 $d7

    cp $01                                        ; $7cb9: $fe $01

jr_097_7cbb:
    ld [bc], a                                    ; $7cbb: $02
    ld [$4840], sp                                ; $7cbc: $08 $40 $48
    ld de, $ff0c                                  ; $7cbf: $11 $0c $ff
    inc c                                         ; $7cc2: $0c
    ld a, l                                       ; $7cc3: $7d
    rlca                                          ; $7cc4: $07
    xor c                                         ; $7cc5: $a9
    inc bc                                        ; $7cc6: $03
    ld bc, $0783                                  ; $7cc7: $01 $83 $07
    ld bc, $fff5                                  ; $7cca: $01 $f5 $ff
    pop de                                        ; $7ccd: $d1
    ccf                                           ; $7cce: $3f
    ld de, $11ff                                  ; $7ccf: $11 $ff $11
    adc l                                         ; $7cd2: $8d
    rlca                                          ; $7cd3: $07
    and c                                         ; $7cd4: $a1
    and b                                         ; $7cd5: $a0
    ld e, c                                       ; $7cd6: $59
    ld d, b                                       ; $7cd7: $50
    ld h, h                                       ; $7cd8: $64
    ld b, $c5                                     ; $7cd9: $06 $c5
    ei                                            ; $7cdb: $fb
    pop de                                        ; $7cdc: $d1
    rst $28                                       ; $7cdd: $ef
    inc b                                         ; $7cde: $04
    ld [$cd00], sp                                ; $7cdf: $08 $00 $cd
    di                                            ; $7ce2: $f3
    push de                                       ; $7ce3: $d5
    db $eb                                        ; $7ce4: $eb
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    and l                                         ; $7ce7: $a5
    ld a, [$c040]                                 ; $7ce8: $fa $40 $c0
    and b                                         ; $7ceb: $a0
    ld bc, $1f68                                  ; $7cec: $01 $68 $1f
    inc h                                         ; $7cef: $24
    rra                                           ; $7cf0: $1f
    push de                                       ; $7cf1: $d5
    cpl                                           ; $7cf2: $2f
    and b                                         ; $7cf3: $a0
    and b                                         ; $7cf4: $a0
    add hl, bc                                    ; $7cf5: $09
    ld c, [hl]                                    ; $7cf6: $4e
    cp d                                          ; $7cf7: $ba
    inc b                                         ; $7cf8: $04
    ld [$55f7], sp                                ; $7cf9: $08 $f7 $55

Call_097_7cfc:
    rst $28                                       ; $7cfc: $ef
    adc d                                         ; $7cfd: $8a
    and b                                         ; $7cfe: $a0
    ld e, h                                       ; $7cff: $5c
    inc bc                                        ; $7d00: $03
    pop bc                                        ; $7d01: $c1
    db $ec                                        ; $7d02: $ec
    ld bc, $ff03                                  ; $7d03: $01 $03 $ff
    rst $38                                       ; $7d06: $ff
    db $fc                                        ; $7d07: $fc
    rla                                           ; $7d08: $17
    nop                                           ; $7d09: $00
    ld hl, sp+$51                                 ; $7d0a: $f8 $51
    cp [hl]                                       ; $7d0c: $be
    inc e                                         ; $7d0d: $1c
    rst $38                                       ; $7d0e: $ff
    adc a                                         ; $7d0f: $8f
    rst $38                                       ; $7d10: $ff
    ldh a, [$08]                                  ; $7d11: $f0 $08
    ld a, a                                       ; $7d13: $7f
    ld a, [de]                                    ; $7d14: $1a
    dec c                                         ; $7d15: $0d
    and b                                         ; $7d16: $a0
    cp $01                                        ; $7d17: $fe $01
    sub $e8                                       ; $7d19: $d6 $e8
    db $fc                                        ; $7d1b: $fc
    nop                                           ; $7d1c: $00
    rst $38                                       ; $7d1d: $ff
    adc e                                         ; $7d1e: $8b
    rlca                                          ; $7d1f: $07
    rst $30                                       ; $7d20: $f7
    ld bc, $837d                                  ; $7d21: $01 $7d $83
    add [hl]                                      ; $7d24: $86
    adc b                                         ; $7d25: $88
    jr nc, @+$24                                  ; $7d26: $30 $22

    ld a, [hl+]                                   ; $7d28: $2a
    db $fd                                        ; $7d29: $fd
    pop de                                        ; $7d2a: $d1
    ld a, b                                       ; $7d2b: $78
    inc b                                         ; $7d2c: $04
    ld b, b                                       ; $7d2d: $40
    cp a                                          ; $7d2e: $bf
    adc d                                         ; $7d2f: $8a
    ld b, b                                       ; $7d30: $40
    db $fd                                        ; $7d31: $fd
    jr nc, @+$1c                                  ; $7d32: $30 $1a

    inc b                                         ; $7d34: $04
    rst $38                                       ; $7d35: $ff
    ld c, b                                       ; $7d36: $48
    rst $38                                       ; $7d37: $ff
    add c                                         ; $7d38: $81
    cp $06                                        ; $7d39: $fe $06
    ld b, d                                       ; $7d3b: $42
    cp l                                          ; $7d3c: $bd
    add b                                         ; $7d3d: $80
    ld a, a                                       ; $7d3e: $7f
    ld b, b                                       ; $7d3f: $40
    db $10                                        ; $7d40: $10
    dec b                                         ; $7d41: $05
    ld d, b                                       ; $7d42: $50
    ld c, b                                       ; $7d43: $48
    db $10                                        ; $7d44: $10
    inc hl                                        ; $7d45: $23
    rst $38                                       ; $7d46: $ff
    ld b, h                                       ; $7d47: $44
    inc [hl]                                      ; $7d48: $34
    ld b, $24                                     ; $7d49: $06 $24
    rst $18                                       ; $7d4b: $df
    ld c, b                                       ; $7d4c: $48
    ld d, $05                                     ; $7d4d: $16 $05
    ld d, b                                       ; $7d4f: $50
    db $10                                        ; $7d50: $10
    and b                                         ; $7d51: $a0
    or $06                                        ; $7d52: $f6 $06
    ld a, [hl]                                    ; $7d54: $7e
    rst $28                                       ; $7d55: $ef
    rlca                                          ; $7d56: $07
    ld c, b                                       ; $7d57: $48
    or a                                          ; $7d58: $b7
    jr z, @-$1f                                   ; $7d59: $28 $df

    ld de, $fe11                                  ; $7d5b: $11 $11 $fe
    jr nz, @+$01                                  ; $7d5e: $20 $ff

    ld d, b                                       ; $7d60: $50
    dec bc                                        ; $7d61: $0b
    ld bc, $20ff                                  ; $7d62: $01 $ff $20
    xor [hl]                                      ; $7d65: $ae
    inc b                                         ; $7d66: $04
    jr jr_097_7d91                                ; $7d67: $18 $28

    rst $10                                       ; $7d69: $d7
    inc b                                         ; $7d6a: $04
    ld a, d                                       ; $7d6b: $7a
    ld [bc], a                                    ; $7d6c: $02
    or b                                          ; $7d6d: $b0
    ld a, [hl-]                                   ; $7d6e: $3a
    inc b                                         ; $7d6f: $04
    ei                                            ; $7d70: $fb
    ld a, [bc]                                    ; $7d71: $0a
    inc [hl]                                      ; $7d72: $34
    push af                                       ; $7d73: $f5
    ld [bc], a                                    ; $7d74: $02
    ld c, b                                       ; $7d75: $48
    ld b, $b0                                     ; $7d76: $06 $b0
    ld a, [hl-]                                   ; $7d78: $3a
    inc b                                         ; $7d79: $04
    ld a, [hl]                                    ; $7d7a: $7e
    ld b, $04                                     ; $7d7b: $06 $04
    ei                                            ; $7d7d: $fb
    dec b                                         ; $7d7e: $05
    adc c                                         ; $7d7f: $89
    ld [hl], a                                    ; $7d80: $77
    ld b, b                                       ; $7d81: $40
    cp a                                          ; $7d82: $bf
    ld [hl+], a                                   ; $7d83: $22
    add [hl]                                      ; $7d84: $86
    inc bc                                        ; $7d85: $03
    jr z, jr_097_7dec                             ; $7d86: $28 $64

    inc b                                         ; $7d88: $04
    ld de, $5fa0                                  ; $7d89: $11 $a0 $5f
    add b                                         ; $7d8c: $80
    ld h, [hl]                                    ; $7d8d: $66
    inc bc                                        ; $7d8e: $03
    inc b                                         ; $7d8f: $04
    rst $38                                       ; $7d90: $ff

jr_097_7d91:
    ld l, b                                       ; $7d91: $68
    ld [hl], b                                    ; $7d92: $70
    inc sp                                        ; $7d93: $33
    ld [$bf50], sp                                ; $7d94: $08 $50 $bf
    add c                                         ; $7d97: $81
    ld a, a                                       ; $7d98: $7f
    ld [hl], b                                    ; $7d99: $70
    ld [$ff00], sp                                ; $7d9a: $08 $00 $ff
    ld de, $ee40                                  ; $7d9d: $11 $40 $ee
    or b                                          ; $7da0: $b0
    ld a, [bc]                                    ; $7da1: $0a
    add h                                         ; $7da2: $84
    rst $38                                       ; $7da3: $ff
    ld a, [bc]                                    ; $7da4: $0a
    rst $38                                       ; $7da5: $ff
    dec h                                         ; $7da6: $25
    cp $b0                                        ; $7da7: $fe $b0
    cp $0a                                        ; $7da9: $fe $0a
    ld de, $12b0                                  ; $7dab: $11 $b0 $12
    jr nc, jr_097_7dec                            ; $7dae: $30 $3c

    nop                                           ; $7db0: $00
    rst $38                                       ; $7db1: $ff
    ld d, d                                       ; $7db2: $52
    db $ed                                        ; $7db3: $ed
    ld b, b                                       ; $7db4: $40
    inc h                                         ; $7db5: $24
    call Call_097_5206                            ; $7db6: $cd $06 $52
    rst $28                                       ; $7db9: $ef
    add hl, bc                                    ; $7dba: $09

jr_097_7dbb:
    rst $30                                       ; $7dbb: $f7
    add b                                         ; $7dbc: $80
    ld a, a                                       ; $7dbd: $7f
    ld b, b                                       ; $7dbe: $40

jr_097_7dbf:
    ld d, b                                       ; $7dbf: $50
    or [hl]                                       ; $7dc0: $b6
    dec b                                         ; $7dc1: $05

jr_097_7dc2:
    ld c, d                                       ; $7dc2: $4a
    db $fd                                        ; $7dc3: $fd
    ld bc, $19fe                                  ; $7dc4: $01 $fe $19
    ld hl, sp+$10                                 ; $7dc7: $f8 $10
    jr z, jr_097_7dbb                             ; $7dc9: $28 $f0

    dec de                                        ; $7dcb: $1b
    ld b, b                                       ; $7dcc: $40
    dec b                                         ; $7dcd: $05
    ld bc, $82ff                                  ; $7dce: $01 $ff $82
    db $fd                                        ; $7dd1: $fd
    nop                                           ; $7dd2: $00
    inc d                                         ; $7dd3: $14
    rst $28                                       ; $7dd4: $ef
    ld c, c                                       ; $7dd5: $49
    rst $30                                       ; $7dd6: $f7
    jr nz, @-$1f                                  ; $7dd7: $20 $df

    ld a, [bc]                                    ; $7dd9: $0a
    db $fd                                        ; $7dda: $fd
    db $10                                        ; $7ddb: $10
    sub h                                         ; $7ddc: $94
    ld a, e                                       ; $7ddd: $7b
    ld hl, $32c0                                  ; $7dde: $21 $c0 $32
    jr nz, jr_097_7dc2                            ; $7de1: $20 $df

    ld [bc], a                                    ; $7de3: $02
    rst $38                                       ; $7de4: $ff
    ld l, l                                       ; $7de5: $6d
    inc d                                         ; $7de6: $14
    adc h                                         ; $7de7: $8c
    inc bc                                        ; $7de8: $03
    ld e, d                                       ; $7de9: $5a
    nop                                           ; $7dea: $00
    ei                                            ; $7deb: $fb

jr_097_7dec:
    db $10                                        ; $7dec: $10
    inc c                                         ; $7ded: $0c
    ldh [$5c], a                                  ; $7dee: $e0 $5c
    ld [hl+], a                                   ; $7df0: $22
    add h                                         ; $7df1: $84
    ld bc, $020e                                  ; $7df2: $01 $0e $02
    db $fd                                        ; $7df5: $fd
    ld b, b                                       ; $7df6: $40
    cp a                                          ; $7df7: $bf
    ld d, b                                       ; $7df8: $50
    dec c                                         ; $7df9: $0d
    or b                                          ; $7dfa: $b0
    dec de                                        ; $7dfb: $1b
    ld h, b                                       ; $7dfc: $60
    add hl, hl                                    ; $7dfd: $29
    add b                                         ; $7dfe: $80
    add h                                         ; $7dff: $84
    add d                                         ; $7e00: $82
    inc bc                                        ; $7e01: $03
    dec d                                         ; $7e02: $15
    ei                                            ; $7e03: $fb
    xor b                                         ; $7e04: $a8
    ld [hl], a                                    ; $7e05: $77
    ld h, b                                       ; $7e06: $60
    add hl, sp                                    ; $7e07: $39
    ld b, a                                       ; $7e08: $47
    cp a                                          ; $7e09: $bf
    ld l, b                                       ; $7e0a: $68
    ld [$0454], sp                                ; $7e0b: $08 $54 $04
    ld b, b                                       ; $7e0e: $40
    ld e, d                                       ; $7e0f: $5a
    jr nz, jr_097_7dbf                            ; $7e10: $20 $ad

    dec b                                         ; $7e12: $05
    ld b, h                                       ; $7e13: $44
    cp a                                          ; $7e14: $bf
    xor b                                         ; $7e15: $a8
    add b                                         ; $7e16: $80
    ld h, h                                       ; $7e17: $64
    nop                                           ; $7e18: $00
    ld b, b                                       ; $7e19: $40
    rst $38                                       ; $7e1a: $ff
    ld a, [bc]                                    ; $7e1b: $0a
    db $fd                                        ; $7e1c: $fd
    ld d, c                                       ; $7e1d: $51
    cp [hl]                                       ; $7e1e: $be
    ld [hl+], a                                   ; $7e1f: $22
    add b                                         ; $7e20: $80
    ld l, [hl]                                    ; $7e21: $6e
    nop                                           ; $7e22: $00
    ld b, l                                       ; $7e23: $45
    ei                                            ; $7e24: $fb
    db $10                                        ; $7e25: $10
    rst $38                                       ; $7e26: $ff
    ld c, c                                       ; $7e27: $49
    cp [hl]                                       ; $7e28: $be
    inc h                                         ; $7e29: $24
    ld c, b                                       ; $7e2a: $48
    rst $18                                       ; $7e2b: $df
    ld [de], a                                    ; $7e2c: $12
    ld bc, $21ff                                  ; $7e2d: $01 $ff $21
    sbc a                                         ; $7e30: $9f
    inc b                                         ; $7e31: $04
    ld a, [hl+]                                   ; $7e32: $2a
    call c, $0057                                 ; $7e33: $dc $57 $00
    ld hl, sp+$09                                 ; $7e36: $f8 $09
    cp $56                                        ; $7e38: $fe $56
    rst $28                                       ; $7e3a: $ef
    add c                                         ; $7e3b: $81
    ld a, a                                       ; $7e3c: $7f

jr_097_7e3d:
    ld a, [bc]                                    ; $7e3d: $0a
    ld de, $14fd                                  ; $7e3e: $11 $fd $14
    ei                                            ; $7e41: $fb
    jr nc, @+$5e                                  ; $7e42: $30 $5c

    jr z, jr_097_7e3d                             ; $7e44: $28 $f7

    ret nz                                        ; $7e46: $c0

    sub b                                         ; $7e47: $90
    ld h, l                                       ; $7e48: $65
    ld d, b                                       ; $7e49: $50
    ld a, [bc]                                    ; $7e4a: $0a
    and $03                                       ; $7e4b: $e6 $03
    nop                                           ; $7e4d: $00
    sub b                                         ; $7e4e: $90
    ld b, l                                       ; $7e4f: $45
    ld b, e                                       ; $7e50: $43
    cp [hl]                                       ; $7e51: $be
    inc d                                         ; $7e52: $14
    ei                                            ; $7e53: $fb
    ld e, [hl]                                    ; $7e54: $5e
    add d                                         ; $7e55: $82
    sub b                                         ; $7e56: $90
    ld bc, $3041                                  ; $7e57: $01 $41 $30
    dec h                                         ; $7e5a: $25
    ld d, d                                       ; $7e5b: $52
    ld bc, $5640                                  ; $7e5c: $01 $40 $56
    add b                                         ; $7e5f: $80
    ld a, [hl+]                                   ; $7e60: $2a
    cp $84                                        ; $7e61: $fe $84
    ld b, $04                                     ; $7e63: $06 $04
    dec l                                         ; $7e65: $2d
    rst $30                                       ; $7e66: $f7
    ld d, d                                       ; $7e67: $52
    db $ed                                        ; $7e68: $ed
    ret nc                                        ; $7e69: $d0

    ld a, [de]                                    ; $7e6a: $1a
    ld c, c                                       ; $7e6b: $49
    cp [hl]                                       ; $7e6c: $be
    nop                                           ; $7e6d: $00
    ld b, $ff                                     ; $7e6e: $06 $ff
    sub c                                         ; $7e70: $91
    rst $38                                       ; $7e71: $ff
    ld b, l                                       ; $7e72: $45
    cp [hl]                                       ; $7e73: $be
    sub d                                         ; $7e74: $92
    db $ed                                        ; $7e75: $ed
    dec b                                         ; $7e76: $05
    ld hl, $84fe                                  ; $7e77: $21 $fe $84
    ld a, a                                       ; $7e7a: $7f
    jr nc, jr_097_7eaf                            ; $7e7b: $30 $32

    ld bc, $e000                                  ; $7e7d: $01 $00 $e0
    dec d                                         ; $7e80: $15
    ld b, b                                       ; $7e81: $40
    and h                                         ; $7e82: $a4
    cp $06                                        ; $7e83: $fe $06
    inc h                                         ; $7e85: $24
    rst $38                                       ; $7e86: $ff
    sub c                                         ; $7e87: $91
    xor $24                                       ; $7e88: $ee $24
    rst $18                                       ; $7e8a: $df
    nop                                           ; $7e8b: $00
    sub c                                         ; $7e8c: $91
    ld a, [hl]                                    ; $7e8d: $7e
    ld [$12ff], sp                                ; $7e8e: $08 $ff $12
    db $fd                                        ; $7e91: $fd
    xor b                                         ; $7e92: $a8
    rst $18                                       ; $7e93: $df
    nop                                           ; $7e94: $00
    ld d, b                                       ; $7e95: $50
    rst $28                                       ; $7e96: $ef
    and d                                         ; $7e97: $a2
    rst $18                                       ; $7e98: $df
    jr z, @+$01                                   ; $7e99: $28 $ff

    ret nz                                        ; $7e9b: $c0

    ld a, a                                       ; $7e9c: $7f
    ld d, b                                       ; $7e9d: $50
    dec b                                         ; $7e9e: $05
    ld c, $00                                     ; $7e9f: $0e $00
    add b                                         ; $7ea1: $80
    ret nz                                        ; $7ea2: $c0

    dec b                                         ; $7ea3: $05
    nop                                           ; $7ea4: $00
    rst $38                                       ; $7ea5: $ff
    add d                                         ; $7ea6: $82
    ld a, l                                       ; $7ea7: $7d
    nop                                           ; $7ea8: $00
    ld l, c                                       ; $7ea9: $69
    sbc $04                                       ; $7eaa: $de $04
    rst $38                                       ; $7eac: $ff
    ld [de], a                                    ; $7ead: $12
    rst $38                                       ; $7eae: $ff

jr_097_7eaf:
    ret z                                         ; $7eaf: $c8

    cp a                                          ; $7eb0: $bf
    ld a, [bc]                                    ; $7eb1: $0a
    inc b                                         ; $7eb2: $04
    ei                                            ; $7eb3: $fb
    ld d, d                                       ; $7eb4: $52
    db $ed                                        ; $7eb5: $ed
    and b                                         ; $7eb6: $a0
    ld l, $01                                     ; $7eb7: $2e $01
    jr jr_097_7ebd                                ; $7eb9: $18 $02

    sub d                                         ; $7ebb: $92
    ld [hl+], a                                   ; $7ebc: $22

jr_097_7ebd:
    db $fd                                        ; $7ebd: $fd
    daa                                           ; $7ebe: $27
    jp nc, $2404                                  ; $7ebf: $d2 $04 $24

    rst $18                                       ; $7ec2: $df
    add b                                         ; $7ec3: $80
    jr nz, jr_097_7f0a                            ; $7ec4: $20 $44

    adc e                                         ; $7ec6: $8b
    ret nz                                        ; $7ec7: $c0

    ld a, [hl]                                    ; $7ec8: $7e
    ld [bc], a                                    ; $7ec9: $02
    ld [hl], b                                    ; $7eca: $70
    ld c, l                                       ; $7ecb: $4d
    nop                                           ; $7ecc: $00
    nop                                           ; $7ecd: $00
    rst $38                                       ; $7ece: $ff
    ld a, a                                       ; $7ecf: $7f
    ld d, c                                       ; $7ed0: $51
    nop                                           ; $7ed1: $00
    inc b                                         ; $7ed2: $04
    nop                                           ; $7ed3: $00
    sub l                                         ; $7ed4: $95
    dec h                                         ; $7ed5: $25
    sbc $7b                                       ; $7ed6: $de $7b
    ccf                                           ; $7ed8: $3f
    dec hl                                        ; $7ed9: $2b
    add l                                         ; $7eda: $85
    inc b                                         ; $7edb: $04
    rrca                                          ; $7edc: $0f
    dec d                                         ; $7edd: $15
    ld [hl], e                                    ; $7ede: $73
    ld c, [hl]                                    ; $7edf: $4e
    xor [hl]                                      ; $7ee0: $ae
    dec c                                         ; $7ee1: $0d
    add [hl]                                      ; $7ee2: $86
    inc b                                         ; $7ee3: $04
    sub l                                         ; $7ee4: $95
    dec h                                         ; $7ee5: $25
    ccf                                           ; $7ee6: $3f
    dec hl                                        ; $7ee7: $2b
    ld [$e221], a                                 ; $7ee8: $ea $21 $e2
    db $10                                        ; $7eeb: $10
    push af                                       ; $7eec: $f5
    ld l, [hl]                                    ; $7eed: $6e
    ld [$ca61], a                                 ; $7eee: $ea $61 $ca
    ld c, b                                       ; $7ef1: $48
    ld [hl+], a                                   ; $7ef2: $22
    inc h                                         ; $7ef3: $24
    jp c, $364a                                   ; $7ef4: $da $4a $36

    ld [hl], $71                                  ; $7ef7: $36 $71
    dec e                                         ; $7ef9: $1d
    call nz, $de28                                ; $7efa: $c4 $28 $de
    ld a, [hl-]                                   ; $7efd: $3a
    ei                                            ; $7efe: $fb
    dec e                                         ; $7eff: $1d
    ld [hl], c                                    ; $7f00: $71
    dec e                                         ; $7f01: $1d
    call nz, $1818                                ; $7f02: $c4 $18 $18
    ld [hl+], a                                   ; $7f05: $22
    dec [hl]                                      ; $7f06: $35
    dec b                                         ; $7f07: $05
    xor e                                         ; $7f08: $ab
    inc b                                         ; $7f09: $04

jr_097_7f0a:
    jr nz, jr_097_7f10                            ; $7f0a: $20 $04

    ld bc, $ff00                                  ; $7f0c: $01 $00 $ff
    ld a, a                                       ; $7f0f: $7f

jr_097_7f10:
    rrca                                          ; $7f10: $0f
    ld e, b                                       ; $7f11: $58
    inc b                                         ; $7f12: $04
    db $10                                        ; $7f13: $10
    cp a                                          ; $7f14: $bf
    ld a, [hl+]                                   ; $7f15: $2a
    cp e                                          ; $7f16: $bb
    ld bc, $04cd                                  ; $7f17: $01 $cd $04
    inc b                                         ; $7f1a: $04
    nop                                           ; $7f1b: $00
    rst $38                                       ; $7f1c: $ff
    ld a, $b8                                     ; $7f1d: $3e $b8
    ld b, c                                       ; $7f1f: $41
    xor [hl]                                      ; $7f20: $ae
    jr nz, jr_097_7f66                            ; $7f21: $20 $43

    ld [$6623], sp                                ; $7f23: $08 $23 $66
    ld h, b                                       ; $7f26: $60
    inc l                                         ; $7f27: $2c
    ld bc, $000a                                  ; $7f28: $01 $0a $00
    nop                                           ; $7f2b: $00
    dec de                                        ; $7f2c: $1b
    ld bc, $004a                                  ; $7f2d: $01 $4a $00
    ei                                            ; $7f30: $fb
    dec b                                         ; $7f31: $05
    nop                                           ; $7f32: $00
    nop                                           ; $7f33: $00
    rst $38                                       ; $7f34: $ff
    ld a, [hl-]                                   ; $7f35: $3a
    ld e, c                                       ; $7f36: $59
    ld a, [hl+]                                   ; $7f37: $2a
    ld [hl], c                                    ; $7f38: $71
    dec d                                         ; $7f39: $15
    ld b, l                                       ; $7f3a: $45
    nop                                           ; $7f3b: $00
    ei                                            ; $7f3c: $fb
    ld c, d                                       ; $7f3d: $4a
    ld d, l                                       ; $7f3e: $55
    ld a, [hl-]                                   ; $7f3f: $3a
    ld l, l                                       ; $7f40: $6d
    dec h                                         ; $7f41: $25
    ld h, l                                       ; $7f42: $65
    ld [$29f3], sp                                ; $7f43: $08 $f3 $29
    ld c, l                                       ; $7f46: $4d
    add hl, de                                    ; $7f47: $19
    ld h, l                                       ; $7f48: $65
    inc b                                         ; $7f49: $04
    nop                                           ; $7f4a: $00
    nop                                           ; $7f4b: $00
    ld bc, $ff00                                  ; $7f4c: $01 $00 $ff
    ld a, a                                       ; $7f4f: $7f
    rrca                                          ; $7f50: $0f
    ld e, b                                       ; $7f51: $58
    inc b                                         ; $7f52: $04
    db $10                                        ; $7f53: $10
    cp a                                          ; $7f54: $bf
    ld a, [hl+]                                   ; $7f55: $2a
    cp e                                          ; $7f56: $bb
    ld bc, $04cd                                  ; $7f57: $01 $cd $04
    inc b                                         ; $7f5a: $04
    nop                                           ; $7f5b: $00
    ld a, a                                       ; $7f5c: $7f
    ccf                                           ; $7f5d: $3f
    cp b                                          ; $7f5e: $b8
    ld b, c                                       ; $7f5f: $41
    xor [hl]                                      ; $7f60: $ae
    jr nz, jr_097_7fa6                            ; $7f61: $20 $43

    ld [$6623], sp                                ; $7f63: $08 $23 $66

jr_097_7f66:
    ld h, b                                       ; $7f66: $60
    inc l                                         ; $7f67: $2c
    ld bc, $000a                                  ; $7f68: $01 $0a $00
    nop                                           ; $7f6b: $00
    dec de                                        ; $7f6c: $1b
    ld bc, $004a                                  ; $7f6d: $01 $4a $00
    ei                                            ; $7f70: $fb
    dec b                                         ; $7f71: $05
    nop                                           ; $7f72: $00
    nop                                           ; $7f73: $00
    rst $38                                       ; $7f74: $ff
    ld a, [hl-]                                   ; $7f75: $3a
    ld e, c                                       ; $7f76: $59
    ld a, [hl+]                                   ; $7f77: $2a
    ld [hl], c                                    ; $7f78: $71
    dec d                                         ; $7f79: $15
    ld b, l                                       ; $7f7a: $45

jr_097_7f7b:
    nop                                           ; $7f7b: $00
    ei                                            ; $7f7c: $fb
    ld c, d                                       ; $7f7d: $4a
    ld d, l                                       ; $7f7e: $55
    ld a, [hl-]                                   ; $7f7f: $3a

Jump_097_7f80:
    ld l, l                                       ; $7f80: $6d
    dec h                                         ; $7f81: $25
    ld h, l                                       ; $7f82: $65
    ld [$29f3], sp                                ; $7f83: $08 $f3 $29
    ld c, l                                       ; $7f86: $4d
    add hl, de                                    ; $7f87: $19
    ld h, l                                       ; $7f88: $65
    inc b                                         ; $7f89: $04
    nop                                           ; $7f8a: $00
    nop                                           ; $7f8b: $00
    ld bc, $ff00                                  ; $7f8c: $01 $00 $ff
    ld a, a                                       ; $7f8f: $7f
    ld l, l                                       ; $7f90: $6d
    ld [hl], d                                    ; $7f91: $72
    nop                                           ; $7f92: $00

jr_097_7f93:
    jr jr_097_7f93                                ; $7f93: $18 $fe

    add hl, hl                                    ; $7f95: $29
    ld [hl], e                                    ; $7f96: $73
    add hl, hl                                    ; $7f97: $29
    xor h                                         ; $7f98: $ac
    db $10                                        ; $7f99: $10
    inc b                                         ; $7f9a: $04
    nop                                           ; $7f9b: $00
    db $db                                        ; $7f9c: $db
    dec c                                         ; $7f9d: $0d
    ccf                                           ; $7f9e: $3f
    dec hl                                        ; $7f9f: $2b
    jr jr_097_7fe2                                ; $7fa0: $18 $40

    inc c                                         ; $7fa2: $0c
    ld [$129e], sp                                ; $7fa3: $08 $9e $12

jr_097_7fa6:
    push af                                       ; $7fa6: $f5
    ld a, l                                       ; $7fa7: $7d
    rst $08                                       ; $7fa8: $cf
    ld d, b                                       ; $7fa9: $50
    ld [bc], a                                    ; $7faa: $02
    inc l                                         ; $7fab: $2c
    ld e, a                                       ; $7fac: $5f
    daa                                           ; $7fad: $27
    or d                                          ; $7fae: $b2
    ld [hl-], a                                   ; $7faf: $32
    adc c                                         ; $7fb0: $89
    dec l                                         ; $7fb1: $2d
    ld h, b                                       ; $7fb2: $60
    jr z, jr_097_7f7b                             ; $7fb3: $28 $c6

    ld d, e                                       ; $7fb5: $53
    pop hl                                        ; $7fb6: $e1
    inc b                                         ; $7fb7: $04
    ld [c], a                                     ; $7fb8: $e2

Jump_097_7fb9:
    dec a                                         ; $7fb9: $3d
    ld b, b                                       ; $7fba: $40
    inc c                                         ; $7fbb: $0c
    ld [hl], e                                    ; $7fbc: $73
    add hl, hl                                    ; $7fbd: $29
    ld e, a                                       ; $7fbe: $5f
    jr c, jr_097_7fce                             ; $7fbf: $38 $0d

    inc d                                         ; $7fc1: $14
    inc hl                                        ; $7fc2: $23
    inc c                                         ; $7fc3: $0c
    jp nc, Jump_000_2b29                          ; $7fc4: $d2 $29 $2b

    ld hl, $0864                                  ; $7fc7: $21 $64 $08
    nop                                           ; $7fca: $00
    nop                                           ; $7fcb: $00
    inc c                                         ; $7fcc: $0c
    nop                                           ; $7fcd: $00

jr_097_7fce:
    nop                                           ; $7fce: $00
    ld [de], a                                    ; $7fcf: $12
    nop                                           ; $7fd0: $00
    ld bc, $001e                                  ; $7fd1: $01 $1e $00
    inc bc                                        ; $7fd4: $03
    ld e, $00                                     ; $7fd5: $1e $00
    inc bc                                        ; $7fd7: $03
    ld [bc], a                                    ; $7fd8: $02
    nop                                           ; $7fd9: $00
    daa                                           ; $7fda: $27
    nop                                           ; $7fdb: $00
    xor [hl]                                      ; $7fdc: $ae
    nop                                           ; $7fdd: $00
    inc c                                         ; $7fde: $0c
    ld bc, $0057                                  ; $7fdf: $01 $57 $00

jr_097_7fe2:
    add b                                         ; $7fe2: $80

Jump_097_7fe3:
    nop                                           ; $7fe3: $00
    inc c                                         ; $7fe4: $0c
    ld bc, $006f                                  ; $7fe5: $01 $6f $00
    add b                                         ; $7fe8: $80
    nop                                           ; $7fe9: $00
    ld [bc], a                                    ; $7fea: $02
    ld bc, $00e0                                  ; $7feb: $01 $e0 $00
    ld [hl], $00                                  ; $7fee: $36 $00
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    ld [$5938], sp                                ; $7ff6: $08 $38 $59
    ld [bc], a                                    ; $7ff9: $02
    jr nz, jr_097_7ffe                            ; $7ffa: $20 $02

    nop                                           ; $7ffc: $00
    nop                                           ; $7ffd: $00

jr_097_7ffe:
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
