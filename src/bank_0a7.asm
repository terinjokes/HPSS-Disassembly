; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0a7", ROMX[$4000], BANK[$a7]

    db $a7

    ldh a, [rNR24]                                ; $4001: $f0 $19
    rst $28                                       ; $4003: $ef
    inc d                                         ; $4004: $14
    nop                                           ; $4005: $00
    rrca                                          ; $4006: $0f
    ld [$0506], sp                                ; $4007: $08 $06 $05
    daa                                           ; $400a: $27
    inc b                                         ; $400b: $04
    ld [hl-], a                                   ; $400c: $32
    ld [bc], a                                    ; $400d: $02
    nop                                           ; $400e: $00
    ld bc, $0900                                  ; $400f: $01 $00 $09
    nop                                           ; $4012: $00
    dec bc                                        ; $4013: $0b
    nop                                           ; $4014: $00
    ld sp, $0000                                  ; $4015: $31 $00 $00
    ld d, b                                       ; $4018: $50
    nop                                           ; $4019: $00
    db $e3                                        ; $401a: $e3
    nop                                           ; $401b: $00
    add c                                         ; $401c: $81
    nop                                           ; $401d: $00
    add b                                         ; $401e: $80
    nop                                           ; $401f: $00
    nop                                           ; $4020: $00
    pop bc                                        ; $4021: $c1
    nop                                           ; $4022: $00
    ld b, c                                       ; $4023: $41
    add b                                         ; $4024: $80
    ld b, e                                       ; $4025: $43
    add b                                         ; $4026: $80
    add a                                         ; $4027: $87
    nop                                           ; $4028: $00
    add b                                         ; $4029: $80
    ld bc, $3468                                  ; $402a: $01 $68 $34
    inc b                                         ; $402d: $04
    ld c, [hl]                                    ; $402e: $4e
    ld [hl-], a                                   ; $402f: $32
    push bc                                       ; $4030: $c5
    ld a, [hl-]                                   ; $4031: $3a
    ld h, d                                       ; $4032: $62
    nop                                           ; $4033: $00
    inc e                                         ; $4034: $1c
    rst $38                                       ; $4035: $ff
    inc bc                                        ; $4036: $03
    and a                                         ; $4037: $a7
    ld e, d                                       ; $4038: $5a
    ld a, [bc]                                    ; $4039: $0a
    db $f4                                        ; $403a: $f4
    sub $04                                       ; $403b: $d6 $04
    jr z, @+$05                                   ; $403d: $28 $03

    nop                                           ; $403f: $00
    nop                                           ; $4040: $00
    ld bc, $0825                                  ; $4041: $01 $25 $08
    ld [bc], a                                    ; $4044: $02
    nop                                           ; $4045: $00
    ld b, b                                       ; $4046: $40
    dec b                                         ; $4047: $05
    ld b, b                                       ; $4048: $40
    nop                                           ; $4049: $00
    dec b                                         ; $404a: $05
    ld [bc], a                                    ; $404b: $02
    jr z, jr_0a7_404e                             ; $404c: $28 $00

jr_0a7_404e:
    ld b, c                                       ; $404e: $41
    nop                                           ; $404f: $00
    nop                                           ; $4050: $00
    ld l, l                                       ; $4051: $6d
    ld c, h                                       ; $4052: $4c
    dec a                                         ; $4053: $3d
    jr nz, jr_0a7_4093                            ; $4054: $20 $3d

    jr c, jr_0a7_40d7                             ; $4056: $38 $7f

    jr nc, jr_0a7_405a                            ; $4058: $30 $00

jr_0a7_405a:
    ld [hl], e                                    ; $405a: $73
    ld c, h                                       ; $405b: $4c
    inc l                                         ; $405c: $2c
    inc de                                        ; $405d: $13
    db $dd                                        ; $405e: $dd
    dec h                                         ; $405f: $25
    ld c, d                                       ; $4060: $4a
    ld [hl-], a                                   ; $4061: $32
    nop                                           ; $4062: $00
    and h                                         ; $4063: $a4
    ld e, b                                       ; $4064: $58
    call z, $a4b4                                 ; $4065: $cc $b4 $a4
    ld e, b                                       ; $4068: $58
    ld l, b                                       ; $4069: $68
    sub b                                         ; $406a: $90
    nop                                           ; $406b: $00
    ld [$c8f8], sp                                ; $406c: $08 $f8 $c8
    jr nc, jr_0a7_4080                            ; $406f: $30 $0f

    ld [$203e], sp                                ; $4071: $08 $3e $20
    nop                                           ; $4074: $00
    ld d, a                                       ; $4075: $57
    ld c, e                                       ; $4076: $4b
    ld a, [hl]                                    ; $4077: $7e
    ld l, d                                       ; $4078: $6a
    inc l                                         ; $4079: $2c
    jr nc, jr_0a7_40ea                            ; $407a: $30 $6e

    ld d, d                                       ; $407c: $52
    nop                                           ; $407d: $00
    db $fd                                        ; $407e: $fd
    add l                                         ; $407f: $85

jr_0a7_4080:
    ret nc                                        ; $4080: $d0

jr_0a7_4081:
    and b                                         ; $4081: $a0
    ld [hl-], a                                   ; $4082: $32
    dec l                                         ; $4083: $2d
    add hl, sp                                    ; $4084: $39
    ld b, $00                                     ; $4085: $06 $00
    ld [hl], $2a                                  ; $4087: $36 $2a
    jr c, jr_0a7_40ab                             ; $4089: $38 $20

    ld l, b                                       ; $408b: $68
    ld d, b                                       ; $408c: $50
    ld [hl], b                                    ; $408d: $70
    ld b, b                                       ; $408e: $40
    nop                                           ; $408f: $00
    ret nc                                        ; $4090: $d0

    and b                                         ; $4091: $a0
    pop de                                        ; $4092: $d1

jr_0a7_4093:
    and b                                         ; $4093: $a0
    or h                                          ; $4094: $b4
    jr z, jr_0a7_40af                             ; $4095: $28 $18

    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    jr nc, jr_0a7_409b                            ; $4099: $30 $00

jr_0a7_409b:
    stop                                          ; $409b: $10 $00
    ld b, b                                       ; $409d: $40
    ld b, b                                       ; $409e: $40
    ld h, b                                       ; $409f: $60
    jr nz, jr_0a7_40a2                            ; $40a0: $20 $00

jr_0a7_40a2:
    or b                                          ; $40a2: $b0
    ld d, b                                       ; $40a3: $50
    or b                                          ; $40a4: $b0
    ld b, b                                       ; $40a5: $40
    add hl, bc                                    ; $40a6: $09
    ld b, $0b                                     ; $40a7: $06 $0b
    inc b                                         ; $40a9: $04
    nop                                           ; $40aa: $00

jr_0a7_40ab:
    dec bc                                        ; $40ab: $0b
    inc c                                         ; $40ac: $0c
    inc c                                         ; $40ad: $0c
    dec bc                                        ; $40ae: $0b

jr_0a7_40af:
    jr c, jr_0a7_40d8                             ; $40af: $38 $27

    ld l, $11                                     ; $40b1: $2e $11
    nop                                           ; $40b3: $00

Jump_0a7_40b4:
    ld a, [hl]                                    ; $40b4: $7e
    ld c, c                                       ; $40b5: $49
    ld b, [hl]                                    ; $40b6: $46
    dec b                                         ; $40b7: $05
    adc h                                         ; $40b8: $8c
    nop                                           ; $40b9: $00
    ld [$4000], sp                                ; $40ba: $08 $00 $40
    inc b                                         ; $40bd: $04
    sub [hl]                                      ; $40be: $96
    jr nc, jr_0a7_4081                            ; $40bf: $30 $c0

    nop                                           ; $40c1: $00
    inc [hl]                                      ; $40c2: $34
    nop                                           ; $40c3: $00
    jp z, Jump_000_0034                           ; $40c4: $ca $34 $00

    or l                                          ; $40c7: $b5
    ld c, d                                       ; $40c8: $4a
    adc e                                         ; $40c9: $8b
    ld [hl], h                                    ; $40ca: $74
    ld a, [hl]                                    ; $40cb: $7e
    ld [bc], a                                    ; $40cc: $02
    ld l, a                                       ; $40cd: $6f
    inc de                                        ; $40ce: $13
    nop                                           ; $40cf: $00
    db $d3                                        ; $40d0: $d3
    inc l                                         ; $40d1: $2c
    ld a, [c]                                     ; $40d2: $f2
    dec c                                         ; $40d3: $0d
    dec bc                                        ; $40d4: $0b
    nop                                           ; $40d5: $00
    dec [hl]                                      ; $40d6: $35

jr_0a7_40d7:
    ld [hl+], a                                   ; $40d7: $22

jr_0a7_40d8:
    nop                                           ; $40d8: $00
    ld a, $25                                     ; $40d9: $3e $25
    dec l                                         ; $40db: $2d
    ld a, [bc]                                    ; $40dc: $0a
    ld [hl], $20                                  ; $40dd: $36 $20
    ld bc, $0001                                  ; $40df: $01 $01 $00
    dec d                                         ; $40e2: $15
    nop                                           ; $40e3: $00
    rla                                           ; $40e4: $17
    nop                                           ; $40e5: $00
    call $0748                                    ; $40e6: $cd $48 $07
    inc b                                         ; $40e9: $04

jr_0a7_40ea:
    nop                                           ; $40ea: $00
    push bc                                       ; $40eb: $c5
    nop                                           ; $40ec: $00
    and [hl]                                      ; $40ed: $a6
    inc h                                         ; $40ee: $24
    inc bc                                        ; $40ef: $03
    ld [bc], a                                    ; $40f0: $02
    add c                                         ; $40f1: $81
    add c                                         ; $40f2: $81
    nop                                           ; $40f3: $00
    inc bc                                        ; $40f4: $03
    ld [bc], a                                    ; $40f5: $02
    ld bc, $6d01                                  ; $40f6: $01 $01 $6d
    nop                                           ; $40f9: $00
    sub d                                         ; $40fa: $92
    ld l, l                                       ; $40fb: $6d
    nop                                           ; $40fc: $00
    dec h                                         ; $40fd: $25
    jp c, $1de2                                   ; $40fe: $da $e2 $1d

    ccf                                           ; $4101: $3f
    ret nz                                        ; $4102: $c0

    call $0032                                    ; $4103: $cd $32 $00
    rst $10                                       ; $4106: $d7
    add hl, hl                                    ; $4107: $29
    ld [$7514], a                                 ; $4108: $ea $14 $75
    ld a, [bc]                                    ; $410b: $0a
    ld [$0095], a                                 ; $410c: $ea $95 $00
    call nc, $8bab                                ; $410f: $d4 $ab $8b
    ld [hl], h                                    ; $4112: $74
    sub e                                         ; $4113: $93
    ld l, l                                       ; $4114: $6d
    swap l                                        ; $4115: $cb $35
    nop                                           ; $4117: $00
    dec d                                         ; $4118: $15
    ld [$1de2], a                                 ; $4119: $ea $e2 $1d
    db $ec                                        ; $411c: $ec
    sub b                                         ; $411d: $90
    jp nc, Jump_000_00a8                          ; $411e: $d2 $a8 $00

    ld h, e                                       ; $4121: $63
    ld e, l                                       ; $4122: $5d
    or l                                          ; $4123: $b5

jr_0a7_4124:
    ld a, [hl+]                                   ; $4124: $2a
    sbc c                                         ; $4125: $99
    sub h                                         ; $4126: $94
    add c                                         ; $4127: $81
    inc c                                         ; $4128: $0c
    nop                                           ; $4129: $00
    sbc d                                         ; $412a: $9a
    nop                                           ; $412b: $00
    ret c                                         ; $412c: $d8

jr_0a7_412d:
    nop                                           ; $412d: $00
    rla                                           ; $412e: $17
    inc bc                                        ; $412f: $03
    xor e                                         ; $4130: $ab
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    rla                                           ; $4133: $17
    ld [bc], a                                    ; $4134: $02
    sub [hl]                                      ; $4135: $96
    dec b                                         ; $4136: $05
    rrca                                          ; $4137: $0f
    ld [bc], a                                    ; $4138: $02
    ld a, [hl-]                                   ; $4139: $3a
    dec h                                         ; $413a: $25
    nop                                           ; $413b: $00
    ld [hl], a                                    ; $413c: $77
    ld l, b                                       ; $413d: $68
    ld a, [hl+]                                   ; $413e: $2a
    dec d                                         ; $413f: $15
    sub h                                         ; $4140: $94
    ld l, b                                       ; $4141: $68
    adc d                                         ; $4142: $8a
    ld [hl], h                                    ; $4143: $74
    nop                                           ; $4144: $00
    rst $00                                       ; $4145: $c7
    cp c                                          ; $4146: $b9
    ld h, d                                       ; $4147: $62
    inc e                                         ; $4148: $1c
    ld c, l                                       ; $4149: $4d
    or b                                          ; $414a: $b0
    and e                                         ; $414b: $a3
    ld e, h                                       ; $414c: $5c
    nop                                           ; $414d: $00
    ld a, [bc]                                    ; $414e: $0a
    db $f4                                        ; $414f: $f4
    ld [hl], $c8                                  ; $4150: $36 $c8
    ld h, a                                       ; $4152: $67
    jr jr_0a7_4124                                ; $4153: $18 $cf

    inc sp                                        ; $4155: $33
    nop                                           ; $4156: $00
    inc l                                         ; $4157: $2c
    call nc, $e41c                                ; $4158: $d4 $1c $e4
    inc l                                         ; $415b: $2c
    ret nc                                        ; $415c: $d0

    sbc [hl]                                      ; $415d: $9e
    ld l, b                                       ; $415e: $68
    nop                                           ; $415f: $00
    ld [hl], $c4                                  ; $4160: $36 $c4
    ld hl, $a3c0                                  ; $4162: $21 $c0 $a3
    jr nz, jr_0a7_41aa                            ; $4165: $20 $43

    ld [bc], a                                    ; $4167: $02
    nop                                           ; $4168: $00
    add c                                         ; $4169: $81
    nop                                           ; $416a: $00
    jr nz, jr_0a7_412d                            ; $416b: $20 $c0

    ld d, b                                       ; $416d: $50
    sub b                                         ; $416e: $90
    and b                                         ; $416f: $a0
    jr nz, jr_0a7_4172                            ; $4170: $20 $00

jr_0a7_4172:
    ld e, d                                       ; $4172: $5a
    adc d                                         ; $4173: $8a
    add hl, hl                                    ; $4174: $29
    ret nc                                        ; $4175: $d0

    ld a, $c9                                     ; $4176: $3e $c9
    cp h                                          ; $4178: $bc
    ld e, e                                       ; $4179: $5b
    nop                                           ; $417a: $00
    ld h, d                                       ; $417b: $62
    add c                                         ; $417c: $81
    or c                                          ; $417d: $b1
    ld d, b                                       ; $417e: $50
    inc hl                                        ; $417f: $23
    jp nz, $40a1                                  ; $4180: $c2 $a1 $40

    nop                                           ; $4183: $00
    pop de                                        ; $4184: $d1
    and c                                         ; $4185: $a1
    jr z, jr_0a7_4198                             ; $4186: $28 $10

    ld l, [hl]                                    ; $4188: $6e
    add l                                         ; $4189: $85
    ld h, d                                       ; $418a: $62
    and c                                         ; $418b: $a1
    nop                                           ; $418c: $00
    inc bc                                        ; $418d: $03
    add b                                         ; $418e: $80
    add $05                                       ; $418f: $c6 $05
    rst $00                                       ; $4191: $c7
    ld b, [hl]                                    ; $4192: $46
    add a                                         ; $4193: $87
    add b                                         ; $4194: $80
    nop                                           ; $4195: $00
    dec bc                                        ; $4196: $0b
    ld [bc], a                                    ; $4197: $02

jr_0a7_4198:
    ld b, $01                                     ; $4198: $06 $01
    jr c, jr_0a7_419c                             ; $419a: $38 $00

jr_0a7_419c:
    ld h, [hl]                                    ; $419c: $66
    jr @+$03                                      ; $419d: $18 $01

    jp z, Jump_0a7_7530                           ; $419f: $ca $30 $75

    add b                                         ; $41a2: $80
    pop bc                                        ; $41a3: $c1
    nop                                           ; $41a4: $00
    add d                                         ; $41a5: $82
    adc $00                                       ; $41a6: $ce $00
    ld b, b                                       ; $41a8: $40
    ret nz                                        ; $41a9: $c0

jr_0a7_41aa:
    ld c, l                                       ; $41aa: $4d
    ld bc, $0007                                  ; $41ab: $01 $07 $00
    inc b                                         ; $41ae: $04
    inc bc                                        ; $41af: $03
    rlc b                                         ; $41b0: $cb $00
    nop                                           ; $41b2: $00
    ldh a, [rP1]                                  ; $41b3: $f0 $00
    ldh [rP1], a                                  ; $41b5: $e0 $00
    ld d, b                                       ; $41b7: $50
    jr nz, jr_0a7_420a                            ; $41b8: $20 $50

    jr nz, jr_0a7_41cd                            ; $41ba: $20 $11

    ld a, [bc]                                    ; $41bc: $0a
    nop                                           ; $41bd: $00
    inc bc                                        ; $41be: $03
    ld [de], a                                    ; $41bf: $12
    nop                                           ; $41c0: $00
    ld a, [bc]                                    ; $41c1: $0a
    ld bc, $020e                                  ; $41c2: $01 $0e $02
    nop                                           ; $41c5: $00
    nop                                           ; $41c6: $00
    dec b                                         ; $41c7: $05
    ld a, [de]                                    ; $41c8: $1a
    ld c, b                                       ; $41c9: $48
    scf                                           ; $41ca: $37
    ld e, $11                                     ; $41cb: $1e $11

jr_0a7_41cd:
    inc e                                         ; $41cd: $1c
    inc de                                        ; $41ce: $13
    nop                                           ; $41cf: $00
    inc e                                         ; $41d0: $1c
    inc de                                        ; $41d1: $13
    ld b, $05                                     ; $41d2: $06 $05
    inc c                                         ; $41d4: $0c
    dec bc                                        ; $41d5: $0b
    dec e                                         ; $41d6: $1d
    ld [de], a                                    ; $41d7: $12
    nop                                           ; $41d8: $00
    ld a, [de]                                    ; $41d9: $1a
    dec d                                         ; $41da: $15
    ld [$420f], sp                                ; $41db: $08 $0f $42
    add b                                         ; $41de: $80
    xor d                                         ; $41df: $aa
    jr nz, jr_0a7_41e2                            ; $41e0: $20 $00

jr_0a7_41e2:
    db $e4                                        ; $41e2: $e4
    ret nz                                        ; $41e3: $c0

    db $db                                        ; $41e4: $db
    ld a, [hl+]                                   ; $41e5: $2a
    xor [hl]                                      ; $41e6: $ae
    ld d, l                                       ; $41e7: $55
    ld e, h                                       ; $41e8: $5c
    and e                                         ; $41e9: $a3
    nop                                           ; $41ea: $00
    cp c                                          ; $41eb: $b9
    ld b, [hl]                                    ; $41ec: $46
    ld e, b                                       ; $41ed: $58
    and a                                         ; $41ee: $a7
    ldh a, [rNR10]                                ; $41ef: $f0 $10
    ld b, c                                       ; $41f1: $41
    ld bc, $f500                                  ; $41f2: $01 $00 $f5
    ret nc                                        ; $41f5: $d0

    jp c, $9828                                   ; $41f6: $da $28 $98

    ld h, b                                       ; $41f9: $60
    ld [hl], l                                    ; $41fa: $75
    sub b                                         ; $41fb: $90
    nop                                           ; $41fc: $00
    ld a, d                                       ; $41fd: $7a
    sbc b                                         ; $41fe: $98
    ld e, a                                       ; $41ff: $5f
    and b                                         ; $4200: $a0
    db $d3                                        ; $4201: $d3
    inc l                                         ; $4202: $2c
    and l                                         ; $4203: $a5
    ld e, d                                       ; $4204: $5a
    nop                                           ; $4205: $00
    jp nz, $d53d                                  ; $4206: $c2 $3d $d5

    ld a, [hl+]                                   ; $4209: $2a

jr_0a7_420a:
    cp $01                                        ; $420a: $fe $01
    ld a, [hl]                                    ; $420c: $7e
    dec [hl]                                      ; $420d: $35
    nop                                           ; $420e: $00
    cp l                                          ; $420f: $bd
    ld [de], a                                    ; $4210: $12
    ld a, [hl-]                                   ; $4211: $3a
    ld bc, $539c                                  ; $4212: $01 $9c $53
    ld c, l                                       ; $4215: $4d
    adc d                                         ; $4216: $8a
    nop                                           ; $4217: $00
    add [hl]                                      ; $4218: $86
    dec b                                         ; $4219: $05
    ld b, $81                                     ; $421a: $06 $81
    inc c                                         ; $421c: $0c
    dec bc                                        ; $421d: $0b
    ld b, $05                                     ; $421e: $06 $05
    nop                                           ; $4220: $00
    ld e, $11                                     ; $4221: $1e $11

jr_0a7_4223:
    dec e                                         ; $4223: $1d
    ld [de], a                                    ; $4224: $12
    pop af                                        ; $4225: $f1
    jr nz, jr_0a7_4268                            ; $4226: $20 $40

    add b                                         ; $4228: $80
    add b                                         ; $4229: $80
    ld l, d                                       ; $422a: $6a
    nop                                           ; $422b: $00
    add b                                         ; $422c: $80
    ld a, b                                       ; $422d: $78
    xor b                                         ; $422e: $a8
    ld a, b                                       ; $422f: $78
    xor b                                         ; $4230: $a8
    and h                                         ; $4231: $a4
    ld e, h                                       ; $4232: $5c
    nop                                           ; $4233: $00
    ld [de], a                                    ; $4234: $12

jr_0a7_4235:
    db $ec                                        ; $4235: $ec
    sbc b                                         ; $4236: $98
    ld l, b                                       ; $4237: $68
    cp b                                          ; $4238: $b8
    ld c, b                                       ; $4239: $48
    sbc b                                         ; $423a: $98
    ld l, b                                       ; $423b: $68
    nop                                           ; $423c: $00
    call c, Call_0a7_7ea4                         ; $423d: $dc $a4 $7e
    ld [bc], a                                    ; $4240: $02
    ld h, [hl]                                    ; $4241: $66
    ld c, d                                       ; $4242: $4a
    inc [hl]                                      ; $4243: $34
    jr z, jr_0a7_4246                             ; $4244: $28 $00

jr_0a7_4246:
    ld a, [bc]                                    ; $4246: $0a
    inc b                                         ; $4247: $04
    db $fd                                        ; $4248: $fd
    add d                                         ; $4249: $82
    ld [hl], d                                    ; $424a: $72
    ld c, l                                       ; $424b: $4d
    ld l, [hl]                                    ; $424c: $6e
    ld d, c                                       ; $424d: $51
    nop                                           ; $424e: $00
    ld sp, $740e                                  ; $424f: $31 $0e $74
    ld c, e                                       ; $4252: $4b
    dec sp                                        ; $4253: $3b
    inc d                                         ; $4254: $14
    ld c, [hl]                                    ; $4255: $4e
    add hl, bc                                    ; $4256: $09
    nop                                           ; $4257: $00
    inc b                                         ; $4258: $04
    inc bc                                        ; $4259: $03
    cp b                                          ; $425a: $b8
    ld [$10f0], sp                                ; $425b: $08 $f0 $10
    ld h, b                                       ; $425e: $60
    and b                                         ; $425f: $a0
    nop                                           ; $4260: $00
    ld [hl], b                                    ; $4261: $70
    sub b                                         ; $4262: $90
    jr nc, jr_0a7_4235                            ; $4263: $30 $d0

    ld h, b                                       ; $4265: $60
    and b                                         ; $4266: $a0
    ld a, b                                       ; $4267: $78

jr_0a7_4268:
    adc b                                         ; $4268: $88
    nop                                           ; $4269: $00
    cp b                                          ; $426a: $b8
    ld c, b                                       ; $426b: $48
    ld b, c                                       ; $426c: $41
    ld b, c                                       ; $426d: $41
    and c                                         ; $426e: $a1
    and b                                         ; $426f: $a0
    jp $0042                                      ; $4270: $c3 $42 $00


    pop hl                                        ; $4273: $e1
    nop                                           ; $4274: $00
    ld b, e                                       ; $4275: $43
    ld [bc], a                                    ; $4276: $02
    rst $08                                       ; $4277: $cf
    inc c                                         ; $4278: $0c
    ld d, [hl]                                    ; $4279: $56
    stop                                          ; $427a: $10 $00
    ld a, l                                       ; $427c: $7d
    ld b, d                                       ; $427d: $42
    ld [hl], $00                                  ; $427e: $36 $00
    add hl, hl                                    ; $4280: $29
    ld d, $74                                     ; $4281: $16 $74
    dec bc                                        ; $4283: $0b
    nop                                           ; $4284: $00
    cp c                                          ; $4285: $b9
    ld d, [hl]                                    ; $4286: $56
    rst $28                                       ; $4287: $ef
    jr z, @-$17                                   ; $4288: $28 $e7

    ld hl, $5abd                                  ; $428a: $21 $bd $5a
    nop                                           ; $428d: $00
    ld d, d                                       ; $428e: $52
    and c                                         ; $428f: $a1
    xor b                                         ; $4290: $a8
    ld [$8979], sp                                ; $4291: $08 $79 $89
    or e                                          ; $4294: $b3
    ld [hl], d                                    ; $4295: $72
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    add b                                         ; $4298: $80
    pop hl                                        ; $4299: $e1
    jr nz, jr_0a7_4223                            ; $429a: $20 $87

    inc b                                         ; $429c: $04
    ld h, c                                       ; $429d: $61
    jr nz, jr_0a7_42a0                            ; $429e: $20 $00

jr_0a7_42a0:
    pop bc                                        ; $42a0: $c1
    ld b, b                                       ; $42a1: $40
    ld e, b                                       ; $42a2: $58
    xor b                                         ; $42a3: $a8
    cp b                                          ; $42a4: $b8
    ld e, b                                       ; $42a5: $58
    ld hl, sp+$08                                 ; $42a6: $f8 $08
    nop                                           ; $42a8: $00
    jr z, @-$2e                                   ; $42a9: $28 $d0

    inc e                                         ; $42ab: $1c
    db $e4                                        ; $42ac: $e4
    inc a                                         ; $42ad: $3c
    call nz, $9965                                ; $42ae: $c4 $65 $99
    nop                                           ; $42b1: $00

jr_0a7_42b2:
    pop bc                                        ; $42b2: $c1
    inc a                                         ; $42b3: $3c
    ld b, $04                                     ; $42b4: $06 $04
    dec de                                        ; $42b6: $1b
    ld [de], a                                    ; $42b7: $12
    dec bc                                        ; $42b8: $0b
    nop                                           ; $42b9: $00
    nop                                           ; $42ba: $00
    ld d, $10                                     ; $42bb: $16 $10
    ld b, [hl]                                    ; $42bd: $46
    ld b, b                                       ; $42be: $40
    ld a, [bc]                                    ; $42bf: $0a
    nop                                           ; $42c0: $00
    ld l, e                                       ; $42c1: $6b
    ld b, b                                       ; $42c2: $40

Jump_0a7_42c3:
    nop                                           ; $42c3: $00
    inc l                                         ; $42c4: $2c
    jr z, jr_0a7_42b2                             ; $42c5: $28 $eb

    dec d                                         ; $42c7: $15
    or a                                          ; $42c8: $b7
    ld c, e                                       ; $42c9: $4b
    ld e, a                                       ; $42ca: $5f
    and c                                         ; $42cb: $a1
    nop                                           ; $42cc: $00
    ld [hl], $ca                                  ; $42cd: $36 $ca
    xor [hl]                                      ; $42cf: $ae

Call_0a7_42d0:
    ld d, d                                       ; $42d0: $52
    ld d, [hl]                                    ; $42d1: $56
    xor d                                         ; $42d2: $aa
    ld l, $d6                                     ; $42d3: $2e $d6
    nop                                           ; $42d5: $00
    add [hl]                                      ; $42d6: $86
    ld a, d                                       ; $42d7: $7a
    nop                                           ; $42d8: $00
    nop                                           ; $42d9: $00
    ld h, $26                                     ; $42da: $26 $26
    ld [hl], b                                    ; $42dc: $70
    ld d, b                                       ; $42dd: $50
    nop                                           ; $42de: $00
    ld b, [hl]                                    ; $42df: $46
    ld h, [hl]                                    ; $42e0: $66
    dec l                                         ; $42e1: $2d
    dec hl                                        ; $42e2: $2b
    daa                                           ; $42e3: $27
    dec h                                         ; $42e4: $25
    ld [hl], d                                    ; $42e5: $72
    ld d, d                                       ; $42e6: $52
    nop                                           ; $42e7: $00
    jr nz, @+$22                                  ; $42e8: $20 $20

    ret nz                                        ; $42ea: $c0

    ld b, b                                       ; $42eb: $40
    add c                                         ; $42ec: $81
    ld bc, $0203                                  ; $42ed: $01 $03 $02
    add b                                         ; $42f0: $80
    xor a                                         ; $42f1: $af
    ld [bc], a                                    ; $42f2: $02
    inc bc                                        ; $42f3: $03
    inc c                                         ; $42f4: $0c
    inc bc                                        ; $42f5: $03
    add hl, bc                                    ; $42f6: $09
    ld b, $05                                     ; $42f7: $06 $05
    inc bc                                        ; $42f9: $03
    nop                                           ; $42fa: $00
    ld h, b                                       ; $42fb: $60
    ld h, b                                       ; $42fc: $60
    rst $20                                       ; $42fd: $e7
    ld h, $6f                                     ; $42fe: $26 $6f
    adc b                                         ; $4300: $88
    dec sp                                        ; $4301: $3b
    rst $00                                       ; $4302: $c7
    nop                                           ; $4303: $00
    ld c, h                                       ; $4304: $4c
    or b                                          ; $4305: $b0
    ldh a, [rP1]                                  ; $4306: $f0 $00
    sbc b                                         ; $4308: $98
    ld [$041c], sp                                ; $4309: $08 $1c $04
    ld [$4060], sp                                ; $430c: $08 $60 $40
    ld h, b                                       ; $430f: $60
    ld b, b                                       ; $4310: $40
    jr c, jr_0a7_431c                             ; $4311: $38 $09

    halt                                          ; $4313: $76
    ld c, b                                       ; $4314: $48
    inc e                                         ; $4315: $1c
    ld d, b                                       ; $4316: $50
    db $10                                        ; $4317: $10
    cp l                                          ; $4318: $bd
    ld a, [bc]                                    ; $4319: $0a
    ld h, b                                       ; $431a: $60
    ld b, [hl]                                    ; $431b: $46

jr_0a7_431c:
    ld bc, $1028                                  ; $431c: $01 $28 $10
    jr z, jr_0a7_4331                             ; $431f: $28 $10

    nop                                           ; $4321: $00
    jr c, jr_0a7_4324                             ; $4322: $38 $00

jr_0a7_4324:
    ld [$3010], sp                                ; $4324: $08 $10 $30
    nop                                           ; $4327: $00
    ld [hl], b                                    ; $4328: $70
    nop                                           ; $4329: $00
    db $10                                        ; $432a: $10
    add [hl]                                      ; $432b: $86

jr_0a7_432c:
    dec b                                         ; $432c: $05
    add e                                         ; $432d: $83
    and [hl]                                      ; $432e: $a6
    ld [bc], a                                    ; $432f: $02
    rrca                                          ; $4330: $0f

jr_0a7_4331:
    inc c                                         ; $4331: $0c
    ld c, $05                                     ; $4332: $0e $05
    nop                                           ; $4334: $00
    ld c, $09                                     ; $4335: $0e $09
    jr jr_0a7_4350                                ; $4337: $18 $17

    dec a                                         ; $4339: $3d
    ld [hl+], a                                   ; $433a: $22
    inc bc                                        ; $433b: $03
    inc bc                                        ; $433c: $03
    nop                                           ; $433d: $00
    rlca                                          ; $433e: $07
    inc b                                         ; $433f: $04
    rlca                                          ; $4340: $07
    nop                                           ; $4341: $00
    rrca                                          ; $4342: $0f
    dec bc                                        ; $4343: $0b
    ld c, $02                                     ; $4344: $0e $02
    ld d, $04                                     ; $4346: $16 $04
    nop                                           ; $4348: $00
    ld c, $7c                                     ; $4349: $0e $7c
    ld bc, $fcc0                                  ; $434b: $01 $c0 $fc
    ld [bc], a                                    ; $434e: $02
    inc d                                         ; $434f: $14

jr_0a7_4350:
    ld [$0006], sp                                ; $4350: $08 $06 $00
    nop                                           ; $4353: $00
    ld c, $08                                     ; $4354: $0e $08
    ld [$8800], sp                                ; $4356: $08 $00 $88
    nop                                           ; $4359: $00
    dec d                                         ; $435a: $15
    nop                                           ; $435b: $00
    ld a, [bc]                                    ; $435c: $0a
    ld a, c                                       ; $435d: $79
    ld d, $c1                                     ; $435e: $16 $c1
    ld c, $95                                     ; $4360: $0e $95
    ld a, [de]                                    ; $4362: $1a
    dec de                                        ; $4363: $1b
    nop                                           ; $4364: $00
    dec d                                         ; $4365: $15
    dec c                                         ; $4366: $0d
    ld [bc], a                                    ; $4367: $02
    ld [$0c0f], sp                                ; $4368: $08 $0f $0c
    dec bc                                        ; $436b: $0b
    inc h                                         ; $436c: $24
    nop                                           ; $436d: $00
    inc h                                         ; $436e: $24
    inc a                                         ; $436f: $3c
    inc a                                         ; $4370: $3c
    sbc [hl]                                      ; $4371: $9e
    sub d                                         ; $4372: $92
    or $ea                                        ; $4373: $f6 $ea
    xor $04                                       ; $4375: $ee $04
    sub $3c                                       ; $4377: $d6 $3c
    inc l                                         ; $4379: $2c
    ld [hl], h                                    ; $437a: $74
    ld [hl], h                                    ; $437b: $74
    rra                                           ; $437c: $1f
    dec de                                        ; $437d: $1b
    jr nz, jr_0a7_4380                            ; $437e: $20 $00

jr_0a7_4380:
    nop                                           ; $4380: $00
    ld b, b                                       ; $4381: $40
    nop                                           ; $4382: $00
    and $84                                       ; $4383: $e6 $84
    sub $a0                                       ; $4385: $d6 $a0
    ld l, h                                       ; $4387: $6c
    ld d, b                                       ; $4388: $50
    ld b, b                                       ; $4389: $40
    jr c, jr_0a7_432c                             ; $438a: $38 $a0

    nop                                           ; $438c: $00
    ret nz                                        ; $438d: $c0

    ld b, b                                       ; $438e: $40
    add b                                         ; $438f: $80
    add b                                         ; $4390: $80
    add b                                         ; $4391: $80
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    add b                                         ; $4394: $80
    add b                                         ; $4395: $80
    ret nz                                        ; $4396: $c0

    ld b, b                                       ; $4397: $40
    ld h, b                                       ; $4398: $60
    and b                                         ; $4399: $a0
    ld h, b                                       ; $439a: $60
    and b                                         ; $439b: $a0
    nop                                           ; $439c: $00
    ld e, $10                                     ; $439d: $1e $10
    rra                                           ; $439f: $1f
    db $10                                        ; $43a0: $10
    dec l                                         ; $43a1: $2d
    ld [hl+], a                                   ; $43a2: $22
    ld a, [de]                                    ; $43a3: $1a
    nop                                           ; $43a4: $00
    nop                                           ; $43a5: $00
    ld d, l                                       ; $43a6: $55
    ld b, b                                       ; $43a7: $40
    jr nz, jr_0a7_43aa                            ; $43a8: $20 $00

jr_0a7_43aa:
    ld c, b                                       ; $43aa: $48
    ld b, b                                       ; $43ab: $40
    ld [hl], b                                    ; $43ac: $70
    jr nz, jr_0a7_43af                            ; $43ad: $20 $00

jr_0a7_43af:
    rlca                                          ; $43af: $07
    inc b                                         ; $43b0: $04
    ld c, $09                                     ; $43b1: $0e $09
    dec de                                        ; $43b3: $1b
    inc d                                         ; $43b4: $14
    scf                                           ; $43b5: $37
    jr z, jr_0a7_43b8                             ; $43b6: $28 $00

jr_0a7_43b8:
    rst $28                                       ; $43b8: $ef
    sub d                                         ; $43b9: $92
    ret                                           ; $43ba: $c9


    or c                                          ; $43bb: $b1
    ret c                                         ; $43bc: $d8

    jr nz, @+$12                                  ; $43bd: $20 $10

    ldh [rP1], a                                  ; $43bf: $e0 $00
    and c                                         ; $43c1: $a1
    ld b, b                                       ; $43c2: $40
    and d                                         ; $43c3: $a2
    ld h, b                                       ; $43c4: $60
    ld h, b                                       ; $43c5: $60
    and b                                         ; $43c6: $a0
    db $10                                        ; $43c7: $10
    ldh a, [rP1]                                  ; $43c8: $f0 $00
    call z, $b430                                 ; $43ca: $cc $30 $b4
    ld [$888e], sp                                ; $43cd: $08 $8e $88
    add [hl]                                      ; $43d0: $86
    nop                                           ; $43d1: $00
    rlca                                          ; $43d2: $07
    inc c                                         ; $43d3: $0c
    inc bc                                        ; $43d4: $03
    dec bc                                        ; $43d5: $0b
    inc b                                         ; $43d6: $04
    inc d                                         ; $43d7: $14
    nop                                           ; $43d8: $00
    inc bc                                        ; $43d9: $03
    cp l                                          ; $43da: $bd
    db $10                                        ; $43db: $10
    ld a, [hl]                                    ; $43dc: $7e
    inc bc                                        ; $43dd: $03
    nop                                           ; $43de: $00
    pop hl                                        ; $43df: $e1
    ld e, $b3                                     ; $43e0: $1e $b3
    xor h                                         ; $43e2: $ac
    add hl, sp                                    ; $43e3: $39
    ld h, $1d                                     ; $43e4: $26 $1d
    ld [de], a                                    ; $43e6: $12
    nop                                           ; $43e7: $00
    rra                                           ; $43e8: $1f
    db $10                                        ; $43e9: $10
    add hl, bc                                    ; $43ea: $09
    ld b, $1d                                     ; $43eb: $06 $1d
    ld [de], a                                    ; $43ed: $12
    add hl, bc                                    ; $43ee: $09
    ld b, $00                                     ; $43ef: $06 $00
    or h                                          ; $43f1: $b4
    jr z, jr_0a7_442c                             ; $43f2: $28 $38

    jr nz, @+$3a                                  ; $43f4: $20 $38

jr_0a7_43f6:
    jr nz, jr_0a7_4410                            ; $43f6: $20 $18

    nop                                           ; $43f8: $00
    nop                                           ; $43f9: $00
    jr jr_0a7_440c                                ; $43fa: $18 $10

    inc c                                         ; $43fc: $0c
    nop                                           ; $43fd: $00
    inc c                                         ; $43fe: $0c
    ld [$0006], sp                                ; $43ff: $08 $06 $00
    jr nz, jr_0a7_4413                            ; $4402: $20 $0f

    ld [$00ac], sp                                ; $4404: $08 $ac $00
    inc b                                         ; $4407: $04
    ld c, $08                                     ; $4408: $0e $08
    adc h                                         ; $440a: $8c
    adc b                                         ; $440b: $88

jr_0a7_440c:
    nop                                           ; $440c: $00
    add b                                         ; $440d: $80
    nop                                           ; $440e: $00
    ret nz                                        ; $440f: $c0

jr_0a7_4410:
    ld b, b                                       ; $4410: $40
    ldh [rNR41], a                                ; $4411: $e0 $20

jr_0a7_4413:
    rrca                                          ; $4413: $0f
    ld [$1909], sp                                ; $4414: $08 $09 $19

jr_0a7_4417:
    db $10                                        ; $4417: $10
    add hl, bc                                    ; $4418: $09
    nop                                           ; $4419: $00
    ld [hl+], a                                   ; $441a: $22
    ld bc, $0300                                  ; $441b: $01 $00 $03
    sbc b                                         ; $441e: $98
    inc de                                        ; $441f: $13
    add b                                         ; $4420: $80
    add h                                         ; $4421: $84
    nop                                           ; $4422: $00
    add b                                         ; $4423: $80
    jr nc, jr_0a7_43f6                            ; $4424: $30 $d0

    or b                                          ; $4426: $b0
    ld b, b                                       ; $4427: $40
    db $10                                        ; $4428: $10
    ldh [rP1], a                                  ; $4429: $e0 $00
    sub b                                         ; $442b: $90

jr_0a7_442c:
    ld h, b                                       ; $442c: $60

jr_0a7_442d:
    jr jr_0a7_4417                                ; $442d: $18 $e8

    jr nc, @-$2e                                  ; $442f: $30 $d0

    jr nc, jr_0a7_4443                            ; $4431: $30 $10

    nop                                           ; $4433: $00
    ld h, c                                       ; $4434: $61
    ld bc, $2263                                  ; $4435: $01 $63 $22
    ld h, e                                       ; $4438: $63
    ld [bc], a                                    ; $4439: $02
    ld [hl-], a                                   ; $443a: $32
    ld de, $1220                                  ; $443b: $11 $20 $12
    ld bc, $0a5a                                  ; $443e: $01 $5a $0a
    ldh a, [rNR10]                                ; $4441: $f0 $10

jr_0a7_4443:
    cp b                                          ; $4443: $b8
    ld c, b                                       ; $4444: $48
    ld a, b                                       ; $4445: $78
    ld [$58a0], sp                                ; $4446: $08 $a0 $58
    sub b                                         ; $4449: $90
    sbc b                                         ; $444a: $98
    ld a, $01                                     ; $444b: $3e $01
    sub b                                         ; $444d: $90
    nop                                           ; $444e: $00
    sub b                                         ; $444f: $90
    inc b                                         ; $4450: $04
    add b                                         ; $4451: $80
    ld h, b                                       ; $4452: $60
    and b                                         ; $4453: $a0
    ld b, b                                       ; $4454: $40
    ret nz                                        ; $4455: $c0

    ret nz                                        ; $4456: $c0

    nop                                           ; $4457: $00
    add b                                         ; $4458: $80
    ret nz                                        ; $4459: $c0

    nop                                           ; $445a: $00
    nop                                           ; $445b: $00
    ldh [rNR41], a                                ; $445c: $e0 $20
    ld h, b                                       ; $445e: $60
    nop                                           ; $445f: $00
    ld h, b                                       ; $4460: $60
    ld b, b                                       ; $4461: $40
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    inc h                                         ; $4465: $24
    inc h                                         ; $4466: $24
    ld [$1c08], sp                                ; $4467: $08 $08 $1c
    inc d                                         ; $446a: $14
    sbc b                                         ; $446b: $98
    nop                                           ; $446c: $00
    sbc b                                         ; $446d: $98
    nop                                           ; $446e: $00
    nop                                           ; $446f: $00
    ld b, $06                                     ; $4470: $06 $06
    ld b, $04                                     ; $4472: $06 $04
    dec c                                         ; $4474: $0d
    nop                                           ; $4475: $00
    ld a, [bc]                                    ; $4476: $0a
    ld [$0b06], sp                                ; $4477: $08 $06 $0b
    dec b                                         ; $447a: $05
    ld e, $12                                     ; $447b: $1e $12
    jr nc, jr_0a7_447f                            ; $447d: $30 $00

jr_0a7_447f:
    inc c                                         ; $447f: $0c
    ld a, d                                       ; $4480: $7a
    ld b, h                                       ; $4481: $44
    ld [hl], e                                    ; $4482: $73
    dec c                                         ; $4483: $0d
    db $db                                        ; $4484: $db
    add h                                         ; $4485: $84
    jr jr_0a7_4488                                ; $4486: $18 $00

jr_0a7_4488:
    ldh [$34], a                                  ; $4488: $e0 $34
    ret z                                         ; $448a: $c8

    call nc, $9428                                ; $448b: $d4 $28 $94
    ld l, b                                       ; $448e: $68
    jp z, $a400                                   ; $448f: $ca $00 $a4

    halt                                          ; $4492: $76
    ld [bc], a                                    ; $4493: $02
    halt                                          ; $4494: $76
    ld b, d                                       ; $4495: $42
    ld [hl], h                                    ; $4496: $74
    ld b, b                                       ; $4497: $40
    ld c, d                                       ; $4498: $4a
    nop                                           ; $4499: $00
    dec [hl]                                      ; $449a: $35
    rst $18                                       ; $449b: $df
    jr nz, jr_0a7_442d                            ; $449c: $20 $8f

    halt                                          ; $449e: $76
    dec e                                         ; $449f: $1d
    db $ec                                        ; $44a0: $ec
    or c                                          ; $44a1: $b1
    nop                                           ; $44a2: $00
    pop de                                        ; $44a3: $d1
    jr nc, jr_0a7_44e6                            ; $44a4: $30 $40

    jr nc, jr_0a7_44f8                            ; $44a6: $30 $50

    ld c, b                                       ; $44a8: $48
    jr nc, @+$08                                  ; $44a9: $30 $06

    nop                                           ; $44ab: $00
    ld [bc], a                                    ; $44ac: $02
    adc [hl]                                      ; $44ad: $8e
    adc b                                         ; $44ae: $88
    call c, $d850                                 ; $44af: $dc $50 $d8
    nop                                           ; $44b2: $00
    ld d, b                                       ; $44b3: $50
    jr nz, jr_0a7_44c6                            ; $44b4: $20 $10

    ld b, b                                       ; $44b6: $40
    ld h, $01                                     ; $44b7: $26 $01
    ld bc, $0600                                  ; $44b9: $01 $00 $06
    dec b                                         ; $44bc: $05
    dec bc                                        ; $44bd: $0b
    ld b, b                                       ; $44be: $40
    ld a, [bc]                                    ; $44bf: $0a
    ret nc                                        ; $44c0: $d0

    ld [bc], a                                    ; $44c1: $02
    add hl, bc                                    ; $44c2: $09

jr_0a7_44c3:
    ld l, $25                                     ; $44c3: $2e $25
    rst $18                                       ; $44c5: $df

jr_0a7_44c6:
    add b                                         ; $44c6: $80
    rst $30                                       ; $44c7: $f7
    nop                                           ; $44c8: $00
    ld c, b                                       ; $44c9: $48
    ld d, h                                       ; $44ca: $54
    jr z, jr_0a7_44e7                             ; $44cb: $28 $1a

    inc d                                         ; $44cd: $14
    ld e, $10                                     ; $44ce: $1e $10
    ld a, [bc]                                    ; $44d0: $0a
    ld [hl], $0c                                  ; $44d1: $36 $0c
    dec c                                         ; $44d3: $0d
    inc d                                         ; $44d4: $14
    nop                                           ; $44d5: $00

jr_0a7_44d6:
    call Call_000_0001                            ; $44d6: $cd $01 $00
    add a                                         ; $44d9: $87
    inc b                                         ; $44da: $04
    cp h                                          ; $44db: $bc
    nop                                           ; $44dc: $00
    ld bc, $52b0                                  ; $44dd: $01 $b0 $52
    inc b                                         ; $44e0: $04
    rlca                                          ; $44e1: $07
    dec bc                                        ; $44e2: $0b
    ld [$047e], sp                                ; $44e3: $08 $7e $04

jr_0a7_44e6:
    xor h                                         ; $44e6: $ac

jr_0a7_44e7:
    ld d, h                                       ; $44e7: $54
    ld e, h                                       ; $44e8: $5c
    inc h                                         ; $44e9: $24

jr_0a7_44ea:
    nop                                           ; $44ea: $00
    ld hl, sp-$78                                 ; $44eb: $f8 $88
    ldh a, [rP1]                                  ; $44ed: $f0 $00
    ret c                                         ; $44ef: $d8

    jr z, jr_0a7_44ea                             ; $44f0: $28 $f8

    adc b                                         ; $44f2: $88
    nop                                           ; $44f3: $00
    ret nc                                        ; $44f4: $d0

    jr nc, jr_0a7_44c3                            ; $44f5: $30 $cc

    or h                                          ; $44f7: $b4

jr_0a7_44f8:
    inc c                                         ; $44f8: $0c
    dec bc                                        ; $44f9: $0b
    inc c                                         ; $44fa: $0c
    dec bc                                        ; $44fb: $0b
    nop                                           ; $44fc: $00
    inc b                                         ; $44fd: $04
    inc bc                                        ; $44fe: $03
    ld de, $101e                                  ; $44ff: $11 $1e $10
    rrca                                          ; $4502: $0f
    ld [hl], $09                                  ; $4503: $36 $09
    nop                                           ; $4505: $00
    add hl, hl                                    ; $4506: $29
    db $10                                        ; $4507: $10
    add hl, sp                                    ; $4508: $39
    ld [$102c], sp                                ; $4509: $08 $2c $10
    ld a, $20                                     ; $450c: $3e $20
    jr z, jr_0a7_452e                             ; $450e: $28 $1e

    jr jr_0a7_44d6                                ; $4510: $18 $c4

    ld bc, $2804                                  ; $4512: $01 $04 $28
    inc bc                                        ; $4515: $03
    inc b                                         ; $4516: $04
    rrca                                          ; $4517: $0f
    ld [$3483], sp                                ; $4518: $08 $83 $34
    inc b                                         ; $451b: $04

jr_0a7_451c:
    ld d, b                                       ; $451c: $50
    ldh a, [$90]                                  ; $451d: $f0 $90
    ldh a, [$90]                                  ; $451f: $f0 $90
    cp h                                          ; $4521: $bc
    nop                                           ; $4522: $00
    db $fc                                        ; $4523: $fc
    ld bc, $4044                                  ; $4524: $01 $44 $40
    inc l                                         ; $4527: $2c
    inc b                                         ; $4528: $04
    inc b                                         ; $4529: $04
    nop                                           ; $452a: $00
    ld b, $02                                     ; $452b: $06 $02
    nop                                           ; $452d: $00

jr_0a7_452e:
    inc b                                         ; $452e: $04
    nop                                           ; $452f: $00
    ld d, b                                       ; $4530: $50
    inc c                                         ; $4531: $0c
    ld a, [hl-]                                   ; $4532: $3a
    inc b                                         ; $4533: $04
    ld bc, $045a                                  ; $4534: $01 $5a $04
    ld [$5808], sp                                ; $4537: $08 $08 $58
    ld c, b                                       ; $453a: $48
    nop                                           ; $453b: $00
    xor d                                         ; $453c: $aa
    add d                                         ; $453d: $82
    db $dd                                        ; $453e: $dd
    ld bc, $24de                                  ; $453f: $01 $de $24
    cpl                                           ; $4542: $2f
    ret nc                                        ; $4543: $d0

    inc b                                         ; $4544: $04
    sbc e                                         ; $4545: $9b
    ld h, b                                       ; $4546: $60
    rrca                                          ; $4547: $0f
    ld [$1a0e], sp                                ; $4548: $08 $0e $1a
    nop                                           ; $454b: $00
    jr jr_0a7_455e                                ; $454c: $18 $10

    nop                                           ; $454e: $00
    jr jr_0a7_4551                                ; $454f: $18 $00

jr_0a7_4551:
    jr c, @+$22                                   ; $4551: $38 $20

    jr nc, jr_0a7_4575                            ; $4553: $30 $20

    stop                                          ; $4555: $10 $00
    nop                                           ; $4557: $00
    rla                                           ; $4558: $17
    jp hl                                         ; $4559: $e9


    and [hl]                                      ; $455a: $a6
    ld e, d                                       ; $455b: $5a
    ld c, h                                       ; $455c: $4c
    or b                                          ; $455d: $b0

jr_0a7_455e:
    or h                                          ; $455e: $b4
    ld c, b                                       ; $455f: $48
    nop                                           ; $4560: $00
    ld l, [hl]                                    ; $4561: $6e
    sub d                                         ; $4562: $92
    or d                                          ; $4563: $b2
    ld c, h                                       ; $4564: $4c
    ld [hl], $08                                  ; $4565: $36 $08
    ld a, [hl-]                                   ; $4567: $3a
    inc h                                         ; $4568: $24
    ld b, $1e                                     ; $4569: $06 $1e
    db $10                                        ; $456b: $10
    ld c, $08                                     ; $456c: $0e $08
    rlca                                          ; $456e: $07
    ld e, d                                       ; $456f: $5a
    nop                                           ; $4570: $00
    ld [bc], a                                    ; $4571: $02
    jr @+$10                                      ; $4572: $18 $0e

    ld l, b                                       ; $4574: $68

jr_0a7_4575:
    ld [$0026], sp                                ; $4575: $08 $26 $00
    ldh a, [rSB]                                  ; $4578: $f0 $01
    jr nz, jr_0a7_451c                            ; $457a: $20 $a0

    ld sp, $50b0                                  ; $457c: $31 $b0 $50
    sub b                                         ; $457f: $90
    nop                                           ; $4580: $00
    ldh [$58], a                                  ; $4581: $e0 $58
    jr z, jr_0a7_45fd                             ; $4583: $28 $78

    ld c, b                                       ; $4585: $48
    inc c                                         ; $4586: $0c
    jr nc, jr_0a7_45e7                            ; $4587: $30 $5e

    nop                                           ; $4589: $00
    ld [hl+], a                                   ; $458a: $22
    ld c, [hl]                                    ; $458b: $4e
    inc [hl]                                      ; $458c: $34
    sbc e                                         ; $458d: $9b
    ld l, c                                       ; $458e: $69
    ld l, a                                       ; $458f: $6f
    ld l, c                                       ; $4590: $69
    ld c, [hl]                                    ; $4591: $4e
    nop                                           ; $4592: $00
    ld b, d                                       ; $4593: $42
    ld c, $02                                     ; $4594: $0e $02
    ld l, $22                                     ; $4596: $2e $22
    ld c, $02                                     ; $4598: $0e $02
    ld c, $00                                     ; $459a: $0e $00
    ld a, [bc]                                    ; $459c: $0a
    ld h, $22                                     ; $459d: $26 $22
    rlca                                          ; $459f: $07
    dec b                                         ; $45a0: $05
    and $a5                                       ; $45a1: $e6 $a5
    ld [hl], a                                    ; $45a3: $77
    nop                                           ; $45a4: $00
    inc b                                         ; $45a5: $04
    ld a, [hl+]                                   ; $45a6: $2a
    ld bc, $1827                                  ; $45a7: $01 $27 $18
    ld h, e                                       ; $45aa: $63
    ld e, h                                       ; $45ab: $5c
    inc e                                         ; $45ac: $1c
    nop                                           ; $45ad: $00
    inc de                                        ; $45ae: $13
    add $05                                       ; $45af: $c6 $05
    ld h, e                                       ; $45b1: $63
    add d                                         ; $45b2: $82
    ld e, c                                       ; $45b3: $59
    ld d, $4d                                     ; $45b4: $16 $4d
    nop                                           ; $45b6: $00
    ld a, [bc]                                    ; $45b7: $0a
    ld h, h                                       ; $45b8: $64
    inc hl                                        ; $45b9: $23
    ld h, h                                       ; $45ba: $64
    inc bc                                        ; $45bb: $03
    inc h                                         ; $45bc: $24
    inc bc                                        ; $45bd: $03
    dec c                                         ; $45be: $0d
    inc bc                                        ; $45bf: $03
    ld a, [bc]                                    ; $45c0: $0a
    dec e                                         ; $45c1: $1d
    ld [de], a                                    ; $45c2: $12
    jr @+$08                                      ; $45c3: $18 $06

    ld [bc], a                                    ; $45c5: $02
    add $01                                       ; $45c6: $c6 $01
    xor l                                         ; $45c8: $ad
    ld bc, $6880                                  ; $45c9: $01 $80 $68
    dec b                                         ; $45cc: $05
    ld h, d                                       ; $45cd: $62
    ld [hl+], a                                   ; $45ce: $22
    ld a, e                                       ; $45cf: $7b
    ld b, d                                       ; $45d0: $42
    ld a, [hl-]                                   ; $45d1: $3a
    ld [$00a0], sp                                ; $45d2: $08 $a0 $00
    ld b, b                                       ; $45d5: $40
    ld b, b                                       ; $45d6: $40
    nop                                           ; $45d7: $00
    and d                                         ; $45d8: $a2
    nop                                           ; $45d9: $00
    ld h, c                                       ; $45da: $61
    ld [bc], a                                    ; $45db: $02
    inc hl                                        ; $45dc: $23

jr_0a7_45dd:
    jr nz, jr_0a7_45df                            ; $45dd: $20 $00

jr_0a7_45df:
    ld de, $010e                                  ; $45df: $11 $0e $01
    ld b, e                                       ; $45e2: $43

Call_0a7_45e3:
    nop                                           ; $45e3: $00
    sub a                                         ; $45e4: $97
    ld h, c                                       ; $45e5: $61
    ld c, a                                       ; $45e6: $4f

jr_0a7_45e7:
    nop                                           ; $45e7: $00
    or l                                          ; $45e8: $b5
    xor a                                         ; $45e9: $af
    ld d, b                                       ; $45ea: $50
    rst $38                                       ; $45eb: $ff
    add l                                         ; $45ec: $85
    db $ec                                        ; $45ed: $ec
    ld b, h                                       ; $45ee: $44
    cp h                                          ; $45ef: $bc
    ld b, b                                       ; $45f0: $40
    and h                                         ; $45f1: $a4
    ld hl, sp+$01                                 ; $45f2: $f8 $01
    db $10                                        ; $45f4: $10
    ld a, [de]                                    ; $45f5: $1a
    ld b, $34                                     ; $45f6: $06 $34
    inc l                                         ; $45f8: $2c
    jr c, jr_0a7_45fb                             ; $45f9: $38 $00

jr_0a7_45fb:
    nop                                           ; $45fb: $00
    ld l, b                                       ; $45fc: $68

jr_0a7_45fd:
    ld e, b                                       ; $45fd: $58
    ld b, b                                       ; $45fe: $40
    jr nc, jr_0a7_4661                            ; $45ff: $30 $60

    db $10                                        ; $4601: $10
    jr c, jr_0a7_4608                             ; $4602: $38 $04

    ld [$0838], sp                                ; $4604: $08 $38 $08
    inc bc                                        ; $4607: $03

jr_0a7_4608:
    ld [bc], a                                    ; $4608: $02
    ld c, $0b                                     ; $4609: $0e $0b
    rlca                                          ; $460b: $07
    nop                                           ; $460c: $00
    ld [$004d], sp                                ; $460d: $08 $4d $00
    add hl, sp                                    ; $4610: $39
    ld bc, $0af1                                  ; $4611: $01 $f1 $0a
    sub b                                         ; $4614: $90
    ld h, b                                       ; $4615: $60
    jr nz, jr_0a7_4618                            ; $4616: $20 $00

jr_0a7_4618:
    ret nz                                        ; $4618: $c0

    sub b                                         ; $4619: $90
    ld h, b                                       ; $461a: $60
    jr nc, jr_0a7_45dd                            ; $461b: $30 $c0

    adc h                                         ; $461d: $8c
    ld [hl], b                                    ; $461e: $70
    call nz, $b81a                                ; $461f: $c4 $1a $b8
    ld a, d                                       ; $4622: $7a
    ld b, h                                       ; $4623: $44
    ld a, [hl+]                                   ; $4624: $2a
    inc c                                         ; $4625: $0c
    ld [hl+], a                                   ; $4626: $22
    ld [$5301], sp                                ; $4627: $08 $01 $53
    ld bc, $8003                                  ; $462a: $01 $03 $80
    ld a, h                                       ; $462d: $7c
    ld bc, $131c                                  ; $462e: $01 $1c $13
    add hl, sp                                    ; $4631: $39
    ld h, $36                                     ; $4632: $26 $36
    jr z, jr_0a7_46aa                             ; $4634: $28 $74

    nop                                           ; $4636: $00
    ld c, b                                       ; $4637: $48
    ld h, h                                       ; $4638: $64
    ld e, b                                       ; $4639: $58
    ld l, h                                       ; $463a: $6c
    ld d, b                                       ; $463b: $50
    ld h, h                                       ; $463c: $64
    ld e, b                                       ; $463d: $58
    inc h                                         ; $463e: $24
    nop                                           ; $463f: $00
    jr c, jr_0a7_4676                             ; $4640: $38 $34

    jr z, jr_0a7_4654                             ; $4642: $28 $10

    inc c                                         ; $4644: $0c
    ld a, [de]                                    ; $4645: $1a
    inc b                                         ; $4646: $04
    ld c, $08                                     ; $4647: $0e $08
    nop                                           ; $4649: $00
    inc b                                         ; $464a: $04
    ld [bc], a                                    ; $464b: $02
    rlca                                          ; $464c: $07
    rst $00                                       ; $464d: $c7
    dec e                                         ; $464e: $1d
    nop                                           ; $464f: $00
    ld l, c                                       ; $4650: $69
    ld h, $00                                     ; $4651: $26 $00
    ld c, l                                       ; $4653: $4d

jr_0a7_4654:
    ld [bc], a                                    ; $4654: $02
    ld l, l                                       ; $4655: $6d
    ld a, [hl+]                                   ; $4656: $2a
    ld h, l                                       ; $4657: $65
    ld [bc], a                                    ; $4658: $02
    dec h                                         ; $4659: $25
    ld [bc], a                                    ; $465a: $02
    add b                                         ; $465b: $80
    and b                                         ; $465c: $a0
    ld [$243a], sp                                ; $465d: $08 $3a $24
    ret nz                                        ; $4660: $c0

jr_0a7_4661:
    ld b, b                                       ; $4661: $40
    ldh a, [rNR10]                                ; $4662: $f0 $10
    sbc b                                         ; $4664: $98
    nop                                           ; $4665: $00
    ld l, b                                       ; $4666: $68
    xor b                                         ; $4667: $a8
    ld d, b                                       ; $4668: $50
    call nc, Call_0a7_7628                        ; $4669: $d4 $28 $76
    adc d                                         ; $466c: $8a
    ld a, d                                       ; $466d: $7a
    nop                                           ; $466e: $00
    and h                                         ; $466f: $a4
    sbc c                                         ; $4670: $99
    ld d, $04                                     ; $4671: $16 $04
    inc b                                         ; $4673: $04
    ld h, b                                       ; $4674: $60
    ld h, b                                       ; $4675: $60

jr_0a7_4676:
    db $ec                                        ; $4676: $ec
    nop                                           ; $4677: $00
    xor h                                         ; $4678: $ac
    ld c, h                                       ; $4679: $4c
    ld c, h                                       ; $467a: $4c
    ld e, h                                       ; $467b: $5c
    ld d, h                                       ; $467c: $54
    ld a, [hl-]                                   ; $467d: $3a
    ld a, [hl+]                                   ; $467e: $2a
    jr nc, jr_0a7_4681                            ; $467f: $30 $00

jr_0a7_4681:
    jr nc, jr_0a7_4683                            ; $4681: $30 $00

jr_0a7_4683:
    nop                                           ; $4683: $00
    inc a                                         ; $4684: $3c
    jr nz, @+$72                                  ; $4685: $20 $70

    ld c, b                                       ; $4687: $48
    ld a, b                                       ; $4688: $78
    ld b, c                                       ; $4689: $41
    ld b, b                                       ; $468a: $40
    sbc h                                         ; $468b: $9c
    ld bc, $70a0                                  ; $468c: $01 $a0 $70
    nop                                           ; $468f: $00
    ld a, b                                       ; $4690: $78
    ld b, b                                       ; $4691: $40
    ld b, h                                       ; $4692: $44
    ld bc, $1062                                  ; $4693: $01 $62 $10
    add d                                         ; $4696: $82
    inc bc                                        ; $4697: $03
    ld a, h                                       ; $4698: $7c
    add hl, bc                                    ; $4699: $09
    ld b, b                                       ; $469a: $40
    jr nc, jr_0a7_46ad                            ; $469b: $30 $10

    add c                                         ; $469d: $81
    dec bc                                        ; $469e: $0b
    dec c                                         ; $469f: $0d
    inc bc                                        ; $46a0: $03
    ld a, [bc]                                    ; $46a1: $0a
    rrca                                          ; $46a2: $0f
    ld [$0102], sp                                ; $46a3: $08 $02 $01
    ld [bc], a                                    ; $46a6: $02
    adc l                                         ; $46a7: $8d
    ld [bc], a                                    ; $46a8: $02
    add [hl]                                      ; $46a9: $86

jr_0a7_46aa:
    jr @-$0e                                      ; $46aa: $18 $f0

    ld d, c                                       ; $46ac: $51

jr_0a7_46ad:
    ld c, $1e                                     ; $46ad: $0e $1e
    inc bc                                        ; $46af: $03
    ld h, d                                       ; $46b0: $62
    ld b, $5b                                     ; $46b1: $06 $5b
    ld e, $1c                                     ; $46b3: $1e $1c
    inc b                                         ; $46b5: $04
    jr c, @+$0a                                   ; $46b6: $38 $08

    nop                                           ; $46b8: $00
    ld [hl], b                                    ; $46b9: $70
    db $10                                        ; $46ba: $10
    jp $0341                                      ; $46bb: $c3 $41 $03


    nop                                           ; $46be: $00
    jr nc, @+$22                                  ; $46bf: $30 $20

    jr jr_0a7_46c7                                ; $46c1: $18 $04

    nop                                           ; $46c3: $00
    ld d, [hl]                                    ; $46c4: $56
    ld hl, sp+$05                                 ; $46c5: $f8 $05

jr_0a7_46c7:
    add $0a                                       ; $46c7: $c6 $0a
    ret nc                                        ; $46c9: $d0

    jr nz, jr_0a7_46f6                            ; $46ca: $20 $2a

    inc bc                                        ; $46cc: $03
    ld [de], a                                    ; $46cd: $12
    jr z, jr_0a7_46e0                             ; $46ce: $28 $10

    ld e, b                                       ; $46d0: $58
    ld b, b                                       ; $46d1: $40
    jr jr_0a7_4654                                ; $46d2: $18 $80

    ld [hl], $de                                  ; $46d4: $36 $de
    ld [bc], a                                    ; $46d6: $02
    add b                                         ; $46d7: $80
    jr jr_0a7_46e0                                ; $46d8: $18 $06

    ld bc, $e800                                  ; $46da: $01 $00 $e8
    ld c, b                                       ; $46dd: $48
    ret nc                                        ; $46de: $d0

    nop                                           ; $46df: $00

jr_0a7_46e0:
    jr z, jr_0a7_46e2                             ; $46e0: $28 $00

jr_0a7_46e2:
    ret z                                         ; $46e2: $c8

    ld d, d                                       ; $46e3: $52
    add d                                         ; $46e4: $82
    inc [hl]                                      ; $46e5: $34
    ret nz                                        ; $46e6: $c0

    swap b                                        ; $46e7: $cb $30
    rst $20                                       ; $46e9: $e7
    dec de                                        ; $46ea: $1b
    sbc b                                         ; $46eb: $98
    ld [hl-], a                                   ; $46ec: $32
    inc c                                         ; $46ed: $0c
    ld a, [bc]                                    ; $46ee: $0a
    inc bc                                        ; $46ef: $03
    jp c, Jump_000_0401                           ; $46f0: $da $01 $04

    add b                                         ; $46f3: $80
    ld b, $ab                                     ; $46f4: $06 $ab

jr_0a7_46f6:
    ld e, $00                                     ; $46f6: $1e $00
    add l                                         ; $46f8: $85
    add b                                         ; $46f9: $80
    jp z, $d748                                   ; $46fa: $ca $48 $d7

    ld de, $20d3                                  ; $46fd: $11 $d3 $20
    nop                                           ; $4700: $00
    xor d                                         ; $4701: $aa
    sub b                                         ; $4702: $90
    dec hl                                        ; $4703: $2b
    ld [de], a                                    ; $4704: $12
    ld a, [hl-]                                   ; $4705: $3a
    jr nz, jr_0a7_4721                            ; $4706: $20 $19

    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    sub l                                         ; $470a: $95
    ld l, d                                       ; $470b: $6a
    adc e                                         ; $470c: $8b
    ld [hl], h                                    ; $470d: $74
    add a                                         ; $470e: $87
    ld a, e                                       ; $470f: $7b
    adc [hl]                                      ; $4710: $8e
    halt                                          ; $4711: $76
    nop                                           ; $4712: $00
    call nc, $3d28                                ; $4713: $d4 $28 $3d
    call nz, $8a7b                                ; $4716: $c4 $7b $8a
    ld [hl], e                                    ; $4719: $73
    sub d                                         ; $471a: $92
    nop                                           ; $471b: $00
    inc d                                         ; $471c: $14
    db $10                                        ; $471d: $10
    dec bc                                        ; $471e: $0b
    nop                                           ; $471f: $00
    rrca                                          ; $4720: $0f

jr_0a7_4721:
    ld a, [bc]                                    ; $4721: $0a
    inc bc                                        ; $4722: $03
    ld [bc], a                                    ; $4723: $02
    nop                                           ; $4724: $00
    ld de, $0510                                  ; $4725: $11 $10 $05
    nop                                           ; $4728: $00
    ld c, e                                       ; $4729: $4b
    ld c, b                                       ; $472a: $48
    add c                                         ; $472b: $81
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    ld a, [de]                                    ; $472e: $1a
    nop                                           ; $472f: $00
    dec de                                        ; $4730: $1b
    nop                                           ; $4731: $00
    ld [hl-], a                                   ; $4732: $32
    nop                                           ; $4733: $00
    dec h                                         ; $4734: $25
    nop                                           ; $4735: $00
    ld b, b                                       ; $4736: $40
    ld b, e                                       ; $4737: $43
    cp $03                                        ; $4738: $fe $03
    dec b                                         ; $473a: $05
    nop                                           ; $473b: $00
    inc de                                        ; $473c: $13
    nop                                           ; $473d: $00
    pop de                                        ; $473e: $d1
    nop                                           ; $473f: $00
    and b                                         ; $4740: $a0
    db $10                                        ; $4741: $10
    dec e                                         ; $4742: $1d
    ld [hl], b                                    ; $4743: $70
    ld [bc], a                                    ; $4744: $02
    nop                                           ; $4745: $00
    xor b                                         ; $4746: $a8
    ld d, b                                       ; $4747: $50
    ld [de], a                                    ; $4748: $12
    db $ec                                        ; $4749: $ec
    ld d, l                                       ; $474a: $55
    nop                                           ; $474b: $00
    add b                                         ; $474c: $80
    cp a                                          ; $474d: $bf
    jr nz, jr_0a7_476f                            ; $474e: $20 $1f

    ld [$0033], sp                                ; $4750: $08 $33 $00
    ld d, a                                       ; $4753: $57
    nop                                           ; $4754: $00
    ld b, b                                       ; $4755: $40
    ld l, $01                                     ; $4756: $2e $01
    rla                                           ; $4758: $17
    nop                                           ; $4759: $00
    dec h                                         ; $475a: $25
    ld [hl+], a                                   ; $475b: $22
    ld d, d                                       ; $475c: $52
    nop                                           ; $475d: $00
    xor h                                         ; $475e: $ac
    ei                                            ; $475f: $fb
    inc b                                         ; $4760: $04
    or c                                          ; $4761: $b1
    ld c, $99                                     ; $4762: $0e $99
    ld b, $0a                                     ; $4764: $06 $0a
    jr nz, jr_0a7_476c                            ; $4766: $20 $04

    ld a, [bc]                                    ; $4768: $0a
    inc h                                         ; $4769: $24
    inc b                                         ; $476a: $04
    ld [de], a                                    ; $476b: $12

jr_0a7_476c:
    inc c                                         ; $476c: $0c
    ld a, [hl+]                                   ; $476d: $2a
    dec h                                         ; $476e: $25

jr_0a7_476f:
    dec [hl]                                      ; $476f: $35
    ld [bc], a                                    ; $4770: $02
    ld [hl+], a                                   ; $4771: $22
    ld e, $01                                     ; $4772: $1e $01
    dec l                                         ; $4774: $2d
    ld [hl+], a                                   ; $4775: $22
    ld d, $02                                     ; $4776: $16 $02
    rlca                                          ; $4778: $07
    dec [hl]                                      ; $4779: $35
    adc [hl]                                      ; $477a: $8e
    ld a, [hl+]                                   ; $477b: $2a

jr_0a7_477c:
    nop                                           ; $477c: $00
    inc h                                         ; $477d: $24
    jr jr_0a7_47f0                                ; $477e: $18 $70

    ld c, $04                                     ; $4780: $0e $04
    db $e4                                        ; $4782: $e4
    jr @+$0b                                      ; $4783: $18 $09

    inc b                                         ; $4785: $04
    ld b, b                                       ; $4786: $40
    nop                                           ; $4787: $00
    db $e4                                        ; $4788: $e4
    ld d, h                                       ; $4789: $54
    ld [hl], l                                    ; $478a: $75
    add hl, bc                                    ; $478b: $09
    ld [$7e50], a                                 ; $478c: $ea $50 $7e
    inc h                                         ; $478f: $24
    nop                                           ; $4790: $00
    dec [hl]                                      ; $4791: $35
    add hl, bc                                    ; $4792: $09
    ld [hl], d                                    ; $4793: $72
    inc l                                         ; $4794: $2c
    cp a                                          ; $4795: $bf
    ld [bc], a                                    ; $4796: $02
    dec bc                                        ; $4797: $0b
    inc b                                         ; $4798: $04
    nop                                           ; $4799: $00
    dec hl                                        ; $479a: $2b
    jp z, $cd3e                                   ; $479b: $ca $3e $cd

    xor [hl]                                      ; $479e: $ae
    ld d, c                                       ; $479f: $51
    ld d, a                                       ; $47a0: $57
    xor d                                         ; $47a1: $aa
    nop                                           ; $47a2: $00
    ld [$3e15], a                                 ; $47a3: $ea $15 $3e
    ret                                           ; $47a6: $c9


    ld e, h                                       ; $47a7: $5c
    xor e                                         ; $47a8: $ab
    cp d                                          ; $47a9: $ba
    ld d, l                                       ; $47aa: $55
    nop                                           ; $47ab: $00
    db $e3                                        ; $47ac: $e3
    ldh [$6f], a                                  ; $47ad: $e0 $6f
    ld [$82ff], sp                                ; $47af: $08 $ff $82
    db $ec                                        ; $47b2: $ec
    stop                                          ; $47b3: $10 $00
    ld d, [hl]                                    ; $47b5: $56
    xor b                                         ; $47b6: $a8
    ld l, $d2                                     ; $47b7: $2e $d2
    xor $11                                       ; $47b9: $ee $11
    dec hl                                        ; $47bb: $2b
    call nc, $8600                                ; $47bc: $d4 $00 $86
    inc b                                         ; $47bf: $04
    and e                                         ; $47c0: $a3
    add e                                         ; $47c1: $83
    ret nc                                        ; $47c2: $d0

    nop                                           ; $47c3: $00
    ld hl, sp+$00                                 ; $47c4: $f8 $00
    nop                                           ; $47c6: $00
    ld a, [hl-]                                   ; $47c7: $3a
    ld [hl-], a                                   ; $47c8: $32
    add hl, bc                                    ; $47c9: $09
    nop                                           ; $47ca: $00
    rst $00                                       ; $47cb: $c7
    call nz, Call_000_00c5                        ; $47cc: $c4 $c5 $00
    jr nz, jr_0a7_477c                            ; $47cf: $20 $ab

    ld d, h                                       ; $47d1: $54
    jp nz, $930d                                  ; $47d2: $c2 $0d $93

    ld l, h                                       ; $47d5: $6c
    jp nc, $a52d                                  ; $47d6: $d2 $2d $a5

    nop                                           ; $47d9: $00
    ld e, d                                       ; $47da: $5a
    ld d, c                                       ; $47db: $51
    xor [hl]                                      ; $47dc: $ae
    ld c, b                                       ; $47dd: $48
    or a                                          ; $47de: $b7
    and e                                         ; $47df: $a3
    ld e, l                                       ; $47e0: $5d

jr_0a7_47e1:
    call $b200                                    ; $47e1: $cd $00 $b2
    and l                                         ; $47e4: $a5
    ld e, d                                       ; $47e5: $5a
    rst $00                                       ; $47e6: $c7
    add hl, sp                                    ; $47e7: $39
    db $d3                                        ; $47e8: $d3
    xor l                                         ; $47e9: $ad
    or c                                          ; $47ea: $b1
    nop                                           ; $47eb: $00
    ld c, [hl]                                    ; $47ec: $4e
    db $eb                                        ; $47ed: $eb
    inc d                                         ; $47ee: $14
    rst $10                                       ; $47ef: $d7

jr_0a7_47f0:
    xor b                                         ; $47f0: $a8
    dec [hl]                                      ; $47f1: $35
    ld a, [bc]                                    ; $47f2: $0a
    ld c, $02                                     ; $47f3: $0e $02
    ld bc, $0289                                  ; $47f5: $01 $89 $02
    nop                                           ; $47f8: $00
    ld bc, $b083                                  ; $47f9: $01 $83 $b0
    rlca                                          ; $47fc: $07
    add d                                         ; $47fd: $82
    add b                                         ; $47fe: $80
    cp d                                          ; $47ff: $ba
    rlca                                          ; $4800: $07
    sub l                                         ; $4801: $95
    ld l, d                                       ; $4802: $6a
    ld c, e                                       ; $4803: $4b
    or h                                          ; $4804: $b4
    sub l                                         ; $4805: $95
    ld l, d                                       ; $4806: $6a
    dec bc                                        ; $4807: $0b
    nop                                           ; $4808: $00
    db $f4                                        ; $4809: $f4
    jp nz, Jump_0a7_673c                          ; $480a: $c2 $3c $67

    jr jr_0a7_47e1                                ; $480d: $18 $d2

Jump_0a7_480f:
    inc l                                         ; $480f: $2c
    di                                            ; $4810: $f3
    nop                                           ; $4811: $00
    inc c                                         ; $4812: $0c
    ld [$d115], a                                 ; $4813: $ea $15 $d1
    ld l, $a3                                     ; $4816: $2e $a3
    ld e, h                                       ; $4818: $5c
    ld b, [hl]                                    ; $4819: $46
    nop                                           ; $481a: $00
    jr c, @-$4b                                   ; $481b: $38 $b3

    ld c, h                                       ; $481d: $4c
    push bc                                       ; $481e: $c5
    ld a, [hl-]                                   ; $481f: $3a
    ret nc                                        ; $4820: $d0

    cpl                                           ; $4821: $2f
    ld l, e                                       ; $4822: $6b
    ld bc, $7514                                  ; $4823: $01 $14 $75
    ld c, d                                       ; $4826: $4a
    db $eb                                        ; $4827: $eb
    sub h                                         ; $4828: $94
    push de                                       ; $4829: $d5
    xor d                                         ; $482a: $aa
    ldh a, [$0e]                                  ; $482b: $f0 $0e
    nop                                           ; $482d: $00
    jp z, Jump_000_1534                           ; $482e: $ca $34 $15

    ld [$1ce3], a                                 ; $4831: $ea $e3 $1c
    ld a, e                                       ; $4834: $7b
    ld b, l                                       ; $4835: $45
    nop                                           ; $4836: $00
    jp nc, Jump_0a7_658c                          ; $4837: $d2 $8c $65

    ld e, d                                       ; $483a: $5a
    ld [hl], e                                    ; $483b: $73
    ld c, l                                       ; $483c: $4d
    dec h                                         ; $483d: $25
    ld a, [de]                                    ; $483e: $1a
    nop                                           ; $483f: $00
    ld d, $09                                     ; $4840: $16 $09
    db $10                                        ; $4842: $10
    rrca                                          ; $4843: $0f
    inc sp                                        ; $4844: $33
    inc l                                         ; $4845: $2c
    inc d                                         ; $4846: $14
    inc d                                         ; $4847: $14
    nop                                           ; $4848: $00
    add d                                         ; $4849: $82
    add d                                         ; $484a: $82
    or [hl]                                       ; $484b: $b6
    inc h                                         ; $484c: $24
    cp h                                          ; $484d: $bc
    ld [$00bc], sp                                ; $484e: $08 $bc $00
    ld bc, $46ba                                  ; $4851: $01 $ba $46
    adc $30                                       ; $4854: $ce $30
    inc [hl]                                      ; $4856: $34
    ret z                                         ; $4857: $c8

    ld bc, $07df                                  ; $4858: $01 $df $07
    add $3a                                       ; $485b: $c6 $3a
    ld [bc], a                                    ; $485d: $02
    ld b, [hl]                                    ; $485e: $46
    inc de                                        ; $485f: $13
    rrca                                          ; $4860: $0f
    nop                                           ; $4861: $00
    dec c                                         ; $4862: $0d
    ld h, a                                       ; $4863: $67
    add hl, hl                                    ; $4864: $29
    di                                            ; $4865: $f3
    rlca                                          ; $4866: $07
    ld de, $0020                                  ; $4867: $11 $20 $00
    ld a, [bc]                                    ; $486a: $0a
    and h                                         ; $486b: $a4
    ld [bc], a                                    ; $486c: $02
    jr jr_0a7_486f                                ; $486d: $18 $00

jr_0a7_486f:
    ld [hl], b                                    ; $486f: $70
    ld b, b                                       ; $4870: $40
    ld h, c                                       ; $4871: $61
    nop                                           ; $4872: $00
    ld bc, $04c4                                  ; $4873: $01 $c4 $04
    dec h                                         ; $4876: $25
    jr nz, jr_0a7_48e3                            ; $4877: $20 $6a

    ld b, b                                       ; $4879: $40
    sub $00                                       ; $487a: $d6 $00
    nop                                           ; $487c: $00
    cp l                                          ; $487d: $bd
    nop                                           ; $487e: $00
    dec l                                         ; $487f: $2d
    ld [hl+], a                                   ; $4880: $22
    ld sp, hl                                     ; $4881: $f9
    and a                                         ; $4882: $a7
    ld l, [hl]                                    ; $4883: $6e
    nop                                           ; $4884: $00
    db $10                                        ; $4885: $10
    ld l, h                                       ; $4886: $6c
    inc d                                         ; $4887: $14
    ld d, b                                       ; $4888: $50
    jr nz, @-$14                                  ; $4889: $20 $ea

    ld [de], a                                    ; $488b: $12
    jp c, Jump_000_2206                           ; $488c: $da $06 $22

    ld d, b                                       ; $488f: $50
    db $10                                        ; $4890: $10
    rlca                                          ; $4891: $07
    inc b                                         ; $4892: $04
    ld a, d                                       ; $4893: $7a
    inc bc                                        ; $4894: $03
    and h                                         ; $4895: $a4
    inc b                                         ; $4896: $04
    dec sp                                        ; $4897: $3b
    nop                                           ; $4898: $00
    jr nc, jr_0a7_48c1                            ; $4899: $30 $26

    nop                                           ; $489b: $00
    ld [de], a                                    ; $489c: $12
    nop                                           ; $489d: $00
    ld h, l                                       ; $489e: $65
    ld b, b                                       ; $489f: $40
    rst $10                                       ; $48a0: $d7
    nop                                           ; $48a1: $00
    ld a, [hl+]                                   ; $48a2: $2a
    ld [$1415], a                                 ; $48a3: $ea $15 $14
    ld l, e                                       ; $48a6: $6b
    xor $11                                       ; $48a7: $ee $11
    sbc $00                                       ; $48a9: $de $00
    ld hl, $d7e8                                  ; $48ab: $21 $e8 $d7
    db $fc                                        ; $48ae: $fc
    inc bc                                        ; $48af: $03
    dec l                                         ; $48b0: $2d
    ld a, [bc]                                    ; $48b1: $0a
    ld b, a                                       ; $48b2: $47
    nop                                           ; $48b3: $00
    ld bc, $0699                                  ; $48b4: $01 $99 $06
    di                                            ; $48b7: $f3
    adc h                                         ; $48b8: $8c
    xor $d1                                       ; $48b9: $ee $d1
    add $00                                       ; $48bb: $c6 $00
    add hl, de                                    ; $48bd: $19
    inc l                                         ; $48be: $2c
    db $d3                                        ; $48bf: $d3
    ld a, e                                       ; $48c0: $7b

jr_0a7_48c1:
    add h                                         ; $48c1: $84
    sbc l                                         ; $48c2: $9d
    ld l, d                                       ; $48c3: $6a
    nop                                           ; $48c4: $00

jr_0a7_48c5:
    add b                                         ; $48c5: $80
    ld a, [$8007]                                 ; $48c6: $fa $07 $80
    nop                                           ; $48c9: $00
    ret z                                         ; $48ca: $c8

    ld c, b                                       ; $48cb: $48
    ldh [rP1], a                                  ; $48cc: $e0 $00
    ret c                                         ; $48ce: $d8

    jr nz, @-$76                                  ; $48cf: $20 $88

    jr nz, jr_0a7_48c5                            ; $48d1: $20 $f2

    ld bc, $0e11                                  ; $48d3: $01 $11 $0e
    ld a, [de]                                    ; $48d6: $1a
    inc b                                         ; $48d7: $04
    dec bc                                        ; $48d8: $0b
    db $10                                        ; $48d9: $10
    inc b                                         ; $48da: $04
    add hl, bc                                    ; $48db: $09
    ld b, $02                                     ; $48dc: $06 $02
    ld [$040b], sp                                ; $48de: $08 $0b $04
    inc de                                        ; $48e1: $13
    inc c                                         ; $48e2: $0c

jr_0a7_48e3:
    nop                                           ; $48e3: $00
    ld [hl], l                                    ; $48e4: $75
    ld c, c                                       ; $48e5: $49
    ld h, [hl]                                    ; $48e6: $66
    ld e, d                                       ; $48e7: $5a
    ret c                                         ; $48e8: $d8

    and b                                         ; $48e9: $a0
    add sp, $08                                   ; $48ea: $e8 $08
    add d                                         ; $48ec: $82
    and b                                         ; $48ed: $a0
    inc c                                         ; $48ee: $0c
    ldh [rNR41], a                                ; $48ef: $e0 $20

jr_0a7_48f1:
    or b                                          ; $48f1: $b0
    ld d, b                                       ; $48f2: $50
    db $10                                        ; $48f3: $10
    cp d                                          ; $48f4: $ba
    inc bc                                        ; $48f5: $03
    add hl, hl                                    ; $48f6: $29
    nop                                           ; $48f7: $00
    ld hl, $0015                                  ; $48f8: $21 $15 $00
    sbc e                                         ; $48fb: $9b
    add b                                         ; $48fc: $80
    sbc e                                         ; $48fd: $9b
    inc b                                         ; $48fe: $04
    db $f4                                        ; $48ff: $f4
    ld c, $2b                                     ; $4900: $0e $2b
    reti                                          ; $4902: $d9


    ld b, $40                                     ; $4903: $06 $40
    ld e, d                                       ; $4905: $5a
    ld [hl-], a                                   ; $4906: $32
    add b                                         ; $4907: $80
    ld bc, $05cc                                  ; $4908: $01 $cc $05
    and b                                         ; $490b: $a0
    ld c, b                                       ; $490c: $48
    ld b, b                                       ; $490d: $40
    sbc d                                         ; $490e: $9a
    ld [bc], a                                    ; $490f: $02
    ld b, b                                       ; $4910: $40
    jr nc, jr_0a7_4945                            ; $4911: $30 $32

    dec d                                         ; $4913: $15
    jr jr_0a7_4926                                ; $4914: $18 $10

    ld [$0000], sp                                ; $4916: $08 $00 $00
    rst $18                                       ; $4919: $df
    xor e                                         ; $491a: $ab
    rst $18                                       ; $491b: $df
    ld hl, $44ba                                  ; $491c: $21 $ba $44
    ld d, c                                       ; $491f: $51
    nop                                           ; $4920: $00
    xor [hl]                                      ; $4921: $ae
    and l                                         ; $4922: $a5
    ld e, d                                       ; $4923: $5a
    ld [hl], d                                    ; $4924: $72
    adc h                                         ; $4925: $8c

jr_0a7_4926:
    ld c, c                                       ; $4926: $49
    or c                                          ; $4927: $b1
    adc d                                         ; $4928: $8a
    ld [$0370], sp                                ; $4929: $08 $70 $03
    ld [bc], a                                    ; $492c: $02
    jr nz, jr_0a7_48f1                            ; $492d: $20 $c2

    dec c                                         ; $492f: $0d
    jr nz, @+$27                                  ; $4930: $20 $25

    dec b                                         ; $4932: $05
    nop                                           ; $4933: $00
    ld b, [hl]                                    ; $4934: $46
    nop                                           ; $4935: $00
    and e                                         ; $4936: $a3
    ld [bc], a                                    ; $4937: $02
    add a                                         ; $4938: $87
    ld h, b                                       ; $4939: $60
    ret z                                         ; $493a: $c8

    nop                                           ; $493b: $00
    nop                                           ; $493c: $00
    add c                                         ; $493d: $81
    ld bc, $9293                                  ; $493e: $01 $93 $92
    halt                                          ; $4941: $76
    ld de, $81fe                                  ; $4942: $11 $fe $81

jr_0a7_4945:
    nop                                           ; $4945: $00
    ld [$fd95], a                                 ; $4946: $ea $95 $fd
    ld [bc], a                                    ; $4949: $02
    sbc a                                         ; $494a: $9f
    ld h, b                                       ; $494b: $60
    ld b, c                                       ; $494c: $41
    nop                                           ; $494d: $00
    nop                                           ; $494e: $00
    and c                                         ; $494f: $a1
    nop                                           ; $4950: $00
    jp $e100                                      ; $4951: $c3 $00 $e1


    nop                                           ; $4954: $00
    jp nz, Jump_000_0001                          ; $4955: $c2 $01 $00

    inc c                                         ; $4958: $0c
    jp $8473                                      ; $4959: $c3 $73 $84


    sbc l                                         ; $495c: $9d
    ld h, d                                       ; $495d: $62
    sbc $2c                                       ; $495e: $de $2c
    nop                                           ; $4960: $00
    cp a                                          ; $4961: $bf
    ld b, e                                       ; $4962: $43
    ld a, [de]                                    ; $4963: $1a
    ld h, h                                       ; $4964: $64
    adc l                                         ; $4965: $8d
    ld [hl], d                                    ; $4966: $72
    sbc $20                                       ; $4967: $de $20
    nop                                           ; $4969: $00
    jp hl                                         ; $496a: $e9


    sub [hl]                                      ; $496b: $96
    ld a, l                                       ; $496c: $7d
    ld [bc], a                                    ; $496d: $02
    dec a                                         ; $496e: $3d
    ld [hl-], a                                   ; $496f: $32
    db $fd                                        ; $4970: $fd
    jr jr_0a7_4973                                ; $4971: $18 $00

jr_0a7_4973:
    db $d3                                        ; $4973: $d3
    ld hl, $526a                                  ; $4974: $21 $6a $52
    and b                                         ; $4977: $a0
    sub b                                         ; $4978: $90
    ld l, b                                       ; $4979: $68
    ld d, b                                       ; $497a: $50
    nop                                           ; $497b: $00
    ld e, b                                       ; $497c: $58
    jr nz, @-$26                                  ; $497d: $20 $d8

    jr nz, jr_0a7_49f1                            ; $497f: $20 $70

    nop                                           ; $4981: $00
    ld l, l                                       ; $4982: $6d
    ld d, h                                       ; $4983: $54
    nop                                           ; $4984: $00
    sbc $a2                                       ; $4985: $de $a2
    add l                                         ; $4987: $85
    ld [hl], c                                    ; $4988: $71
    sbc $22                                       ; $4989: $de $22
    cp [hl]                                       ; $498b: $be
    ld b, d                                       ; $498c: $42
    nop                                           ; $498d: $00
    ld e, h                                       ; $498e: $5c
    and h                                         ; $498f: $a4
    cp [hl]                                       ; $4990: $be
    ld c, h                                       ; $4991: $4c
    db $f4                                        ; $4992: $f4
    inc d                                         ; $4993: $14

jr_0a7_4994:
    dec e                                         ; $4994: $1d
    ld [de], a                                    ; $4995: $12
    nop                                           ; $4996: $00
    ld e, c                                       ; $4997: $59
    ld b, [hl]                                    ; $4998: $46
    inc a                                         ; $4999: $3c
    dec h                                         ; $499a: $25
    ld l, l                                       ; $499b: $6d
    ld b, h                                       ; $499c: $44
    inc b                                         ; $499d: $04
    ld bc, $5c04                                  ; $499e: $01 $04 $5c
    ld b, c                                       ; $49a1: $41
    ld l, e                                       ; $49a2: $6b
    ld b, d                                       ; $49a3: $42
    ld e, [hl]                                    ; $49a4: $5e
    xor d                                         ; $49a5: $aa
    inc bc                                        ; $49a6: $03
    rla                                           ; $49a7: $17
    db $10                                        ; $49a8: $10
    ld [bc], a                                    ; $49a9: $02
    ld a, [bc]                                    ; $49aa: $0a
    nop                                           ; $49ab: $00
    dec c                                         ; $49ac: $0d
    inc c                                         ; $49ad: $0c
    inc bc                                        ; $49ae: $03
    ld [bc], a                                    ; $49af: $02
    ld h, d                                       ; $49b0: $62
    ld b, $0c                                     ; $49b1: $06 $0c
    db $10                                        ; $49b3: $10
    dec b                                         ; $49b4: $05
    nop                                           ; $49b5: $00

jr_0a7_49b6:
    pop de                                        ; $49b6: $d1
    ld c, h                                       ; $49b7: $4c
    ld [bc], a                                    ; $49b8: $02
    sub d                                         ; $49b9: $92
    inc c                                         ; $49ba: $0c
    dec h                                         ; $49bb: $25
    ld a, [de]                                    ; $49bc: $1a
    ld b, b                                       ; $49bd: $40
    ld sp, $00e8                                  ; $49be: $31 $e8 $00
    inc sp                                        ; $49c1: $33
    inc c                                         ; $49c2: $0c
    sub $28                                       ; $49c3: $d6 $28
    ret nc                                        ; $49c5: $d0

    jr nz, jr_0a7_49c8                            ; $49c6: $20 $00

jr_0a7_49c8:
    sub b                                         ; $49c8: $90
    ld [hl], b                                    ; $49c9: $70
    jr c, jr_0a7_4994                             ; $49ca: $38 $c8

    inc [hl]                                      ; $49cc: $34
    call nc, $8078                                ; $49cd: $d4 $78 $80

jr_0a7_49d0:
    nop                                           ; $49d0: $00
    and h                                         ; $49d1: $a4
    ld e, b                                       ; $49d2: $58
    sbc $22                                       ; $49d3: $de $22
    and h                                         ; $49d5: $a4
    jr jr_0a7_4a57                                ; $49d6: $18 $7f

    ld b, e                                       ; $49d8: $43
    nop                                           ; $49d9: $00
    cpl                                           ; $49da: $2f
    inc hl                                        ; $49db: $23
    dec de                                        ; $49dc: $1b
    inc d                                         ; $49dd: $14
    inc l                                         ; $49de: $2c
    inc hl                                        ; $49df: $23
    ld b, $01                                     ; $49e0: $06 $01
    add b                                         ; $49e2: $80
    db $e3                                        ; $49e3: $e3
    inc c                                         ; $49e4: $0c
    inc c                                         ; $49e5: $0c
    dec bc                                        ; $49e6: $0b
    ld h, [hl]                                    ; $49e7: $66

jr_0a7_49e8:
    jr jr_0a7_49b6                                ; $49e8: $18 $cc

jr_0a7_49ea:
    jr nc, jr_0a7_4a14                            ; $49ea: $30 $28

    nop                                           ; $49ec: $00
    ret nc                                        ; $49ed: $d0

    jr jr_0a7_49d0                                ; $49ee: $18 $e0

    inc l                                         ; $49f0: $2c

jr_0a7_49f1:
    ret nc                                        ; $49f1: $d0

    sub [hl]                                      ; $49f2: $96
    ld h, b                                       ; $49f3: $60
    ld [hl-], a                                   ; $49f4: $32
    nop                                           ; $49f5: $00
    ret nz                                        ; $49f6: $c0

    ld hl, $60c0                                  ; $49f7: $21 $c0 $60
    ld h, b                                       ; $49fa: $60
    db $e3                                        ; $49fb: $e3
    and e                                         ; $49fc: $a3
    ld c, c                                       ; $49fd: $49
    nop                                           ; $49fe: $00
    ld c, c                                       ; $49ff: $49
    inc e                                         ; $4a00: $1c
    inc d                                         ; $4a01: $14
    jr jr_0a7_4a1c                                ; $4a02: $18 $18

    jr nz, @+$22                                  ; $4a04: $20 $20

    ld [hl], h                                    ; $4a06: $74

jr_0a7_4a07:
    nop                                           ; $4a07: $00
    ld d, h                                       ; $4a08: $54
    jr nz, jr_0a7_4a2b                            ; $4a09: $20 $20

    jp nz, $4940                                  ; $4a0b: $c2 $40 $49

    nop                                           ; $4a0e: $00

jr_0a7_4a0f:
    and $00                                       ; $4a0f: $e6 $00
    ld hl, $60eb                                  ; $4a11: $21 $eb $60

jr_0a7_4a14:
    rst $20                                       ; $4a14: $e7
    inc h                                         ; $4a15: $24
    rst $18                                       ; $4a16: $df
    ld c, b                                       ; $4a17: $48
    ld a, [bc]                                    ; $4a18: $0a
    add b                                         ; $4a19: $80
    jr jr_0a7_4a20                                ; $4a1a: $18 $04

jr_0a7_4a1c:
    ret nc                                        ; $4a1c: $d0

    nop                                           ; $4a1d: $00
    cp h                                          ; $4a1e: $bc
    ld b, b                                       ; $4a1f: $40

jr_0a7_4a20:
    and a                                         ; $4a20: $a7
    ld e, d                                       ; $4a21: $5a
    ld a, [c]                                     ; $4a22: $f2
    nop                                           ; $4a23: $00
    adc h                                         ; $4a24: $8c
    cp $c0                                        ; $4a25: $fe $c0
    adc a                                         ; $4a27: $8f
    ld [hl], d                                    ; $4a28: $72
    rst $10                                       ; $4a29: $d7
    dec hl                                        ; $4a2a: $2b

jr_0a7_4a2b:
    db $eb                                        ; $4a2b: $eb

jr_0a7_4a2c:
    nop                                           ; $4a2c: $00
    sub h                                         ; $4a2d: $94
    ld d, h                                       ; $4a2e: $54
    xor b                                         ; $4a2f: $a8
    adc d                                         ; $4a30: $8a
    ld [hl], h                                    ; $4a31: $74
    push bc                                       ; $4a32: $c5
    cp d                                          ; $4a33: $ba
    ld h, d                                       ; $4a34: $62
    nop                                           ; $4a35: $00
    ld e, h                                       ; $4a36: $5c
    call $a3b2                                    ; $4a37: $cd $b2 $a3
    ld e, h                                       ; $4a3a: $5c
    ld a, [bc]                                    ; $4a3b: $0a
    db $f4                                        ; $4a3c: $f4
    sub $00                                       ; $4a3d: $d6 $00
    jr z, jr_0a7_49ea                             ; $4a3f: $28 $a9

    ld d, [hl]                                    ; $4a41: $56
    jp nc, $a92d                                  ; $4a42: $d2 $2d $a9

    ld d, [hl]                                    ; $4a45: $56
    ret nc                                        ; $4a46: $d0

    nop                                           ; $4a47: $00
    xor a                                         ; $4a48: $af
    ld b, e                                       ; $4a49: $43
    inc a                                         ; $4a4a: $3c
    and $9a                                       ; $4a4b: $e6 $9a
    adc e                                         ; $4a4d: $8b
    ld [hl], l                                    ; $4a4e: $75
    rst $08                                       ; $4a4f: $cf
    nop                                           ; $4a50: $00
    jr nc, jr_0a7_4a2c                            ; $4a51: $30 $d9

    jr z, jr_0a7_49e8                             ; $4a53: $28 $93

    ld h, d                                       ; $4a55: $62
    dec sp                                        ; $4a56: $3b

jr_0a7_4a57:
    ret z                                         ; $4a57: $c8

    ld sp, $d000                                  ; $4a58: $31 $00 $d0
    ld a, c                                       ; $4a5b: $79
    add b                                         ; $4a5c: $80
    and l                                         ; $4a5d: $a5
    ld e, c                                       ; $4a5e: $59
    db $dd                                        ; $4a5f: $dd
    jr nz, jr_0a7_4a07                            ; $4a60: $20 $a5

    nop                                           ; $4a62: $00
    sbc b                                         ; $4a63: $98
    xor e                                         ; $4a64: $ab
    ld d, b                                       ; $4a65: $50
    add hl, de                                    ; $4a66: $19
    jp hl                                         ; $4a67: $e9


    ret                                           ; $4a68: $c9


    jr nc, jr_0a7_4a0f                            ; $4a69: $30 $a4

    nop                                           ; $4a6b: $00
    ld e, b                                       ; $4a6c: $58
    xor h                                         ; $4a6d: $ac
    ld d, b                                       ; $4a6e: $50
    ret c                                         ; $4a6f: $d8

    xor b                                         ; $4a70: $a8
    call z, $abb0                                 ; $4a71: $cc $b0 $ab
    dec b                                         ; $4a74: $05
    ld d, l                                       ; $4a75: $55
    ld a, [bc]                                    ; $4a76: $0a
    ld [bc], a                                    ; $4a77: $02
    rrca                                          ; $4a78: $0f
    add hl, bc                                    ; $4a79: $09
    call c, $0804                                 ; $4a7a: $dc $04 $08
    ld [bc], a                                    ; $4a7d: $02
    jr jr_0a7_4a8e                                ; $4a7e: $18 $0e

    ld b, $04                                     ; $4a80: $06 $04
    inc c                                         ; $4a82: $0c
    ld [$0e86], sp                                ; $4a83: $08 $86 $0e
    ld h, b                                       ; $4a86: $60
    dec d                                         ; $4a87: $15
    jr nc, jr_0a7_4a91                            ; $4a88: $30 $07

    nop                                           ; $4a8a: $00
    nop                                           ; $4a8b: $00
    nop                                           ; $4a8c: $00
    ld d, a                                       ; $4a8d: $57

jr_0a7_4a8e:
    ld d, e                                       ; $4a8e: $53
    ld h, a                                       ; $4a8f: $67
    ld b, [hl]                                    ; $4a90: $46

jr_0a7_4a91:
    rra                                           ; $4a91: $1f
    add hl, bc                                    ; $4a92: $09
    rra                                           ; $4a93: $1f
    nop                                           ; $4a94: $00
    ld d, $bf                                     ; $4a95: $16 $bf
    adc b                                         ; $4a97: $88
    ld a, [hl]                                    ; $4a98: $7e
    ld [hl], c                                    ; $4a99: $71
    db $fd                                        ; $4a9a: $fd
    sub d                                         ; $4a9b: $92
    or $00                                        ; $4a9c: $f6 $00
    ld c, c                                       ; $4a9e: $49
    or d                                          ; $4a9f: $b2
    nop                                           ; $4aa0: $00
    sbc $00                                       ; $4aa1: $de $00
    db $f4                                        ; $4aa3: $f4
    sub b                                         ; $4aa4: $90
    rst $38                                       ; $4aa5: $ff
    nop                                           ; $4aa6: $00
    and [hl]                                      ; $4aa7: $a6
    db $fc                                        ; $4aa8: $fc
    nop                                           ; $4aa9: $00
    ld [$7f10], a                                 ; $4aaa: $ea $10 $7f
    add d                                         ; $4aad: $82
    rst $30                                       ; $4aae: $f7
    nop                                           ; $4aaf: $00
    ld [$5a5a], sp                                ; $4ab0: $08 $5a $5a
    cp h                                          ; $4ab3: $bc
    ld [$20dc], sp                                ; $4ab4: $08 $dc $20
    db $f4                                        ; $4ab7: $f4
    inc b                                         ; $4ab8: $04
    adc b                                         ; $4ab9: $88
    xor $d0                                       ; $4aba: $ee $d0
    ld a, [c]                                     ; $4abc: $f2
    inc c                                         ; $4abd: $0c
    ld h, b                                       ; $4abe: $60
    dec b                                         ; $4abf: $05
    inc b                                         ; $4ac0: $04
    cp $00                                        ; $4ac1: $fe $00
    sub d                                         ; $4ac3: $92
    sbc [hl]                                      ; $4ac4: $9e
    ld h, b                                       ; $4ac5: $60
    jp $373d                                      ; $4ac6: $c3 $3d $37


    bit 6, d                                      ; $4ac9: $cb $72
    nop                                           ; $4acb: $00
    adc h                                         ; $4acc: $8c
    ld [hl], $ca                                  ; $4acd: $36 $ca
    ld a, e                                       ; $4acf: $7b
    or h                                          ; $4ad0: $b4
    dec [hl]                                      ; $4ad1: $35
    jp z, RST_20                                  ; $4ad2: $ca $20 $00

    jr nz, jr_0a7_4b37                            ; $4ad5: $20 $60

    ld h, b                                       ; $4ad7: $60
    ld e, $1e                                     ; $4ad8: $1e $1e
    ld d, [hl]                                    ; $4ada: $56
    ld e, d                                       ; $4adb: $5a
    ld e, h                                       ; $4adc: $5c
    nop                                           ; $4add: $00
    ld d, h                                       ; $4ade: $54
    db $ec                                        ; $4adf: $ec
    xor h                                         ; $4ae0: $ac
    ld h, b                                       ; $4ae1: $60
    ld h, b                                       ; $4ae2: $60
    inc b                                         ; $4ae3: $04
    inc b                                         ; $4ae4: $04
    ld a, [bc]                                    ; $4ae5: $0a
    nop                                           ; $4ae6: $00
    nop                                           ; $4ae7: $00
    add a                                         ; $4ae8: $87
    ld [bc], a                                    ; $4ae9: $02
    rst $20                                       ; $4aea: $e7
    ld [bc], a                                    ; $4aeb: $02
    inc a                                         ; $4aec: $3c
    inc hl                                        ; $4aed: $23
    ld [hl-], a                                   ; $4aee: $32
    ld c, $2d                                     ; $4aef: $0e $2d
    rrca                                          ; $4af1: $0f
    nop                                           ; $4af2: $00
    add hl, de                                    ; $4af3: $19
    jp nz, $da01                                  ; $4af4: $c2 $01 $da

    ld hl, $06ed                                  ; $4af7: $21 $ed $06
    jr nc, @-$4e                                  ; $4afa: $30 $b0

    add sp, $04                                   ; $4afc: $e8 $04
    and b                                         ; $4afe: $a0
    ld l, e                                       ; $4aff: $6b
    dec bc                                        ; $4b00: $0b
    ld a, [hl+]                                   ; $4b01: $2a
    daa                                           ; $4b02: $27
    sub b                                         ; $4b03: $90
    nop                                           ; $4b04: $00
    ret z                                         ; $4b05: $c8

    nop                                           ; $4b06: $00
    ld e, b                                       ; $4b07: $58
    or h                                          ; $4b08: $b4
    adc d                                         ; $4b09: $8a
    rlca                                          ; $4b0a: $07
    ldh [$80], a                                  ; $4b0b: $e0 $80
    rlca                                          ; $4b0d: $07
    sbc b                                         ; $4b0e: $98
    rra                                           ; $4b0f: $1f
    ld h, b                                       ; $4b10: $60
    ld h, b                                       ; $4b11: $60
    ldh [rP1], a                                  ; $4b12: $e0 $00
    nop                                           ; $4b14: $00
    add hl, sp                                    ; $4b15: $39
    jr nz, jr_0a7_4b51                            ; $4b16: $20 $39

    jr nz, @-$62                                  ; $4b18: $20 $9c

    sub b                                         ; $4b1a: $90
    dec b                                         ; $4b1b: $05
    ld bc, $0600                                  ; $4b1c: $01 $00 $06
    inc b                                         ; $4b1f: $04
    db $10                                        ; $4b20: $10
    db $10                                        ; $4b21: $10
    jr nz, jr_0a7_4b44                            ; $4b22: $20 $20

    adc l                                         ; $4b24: $8d
    ld [bc], a                                    ; $4b25: $02
    ret nc                                        ; $4b26: $d0

    or e                                          ; $4b27: $b3
    rla                                           ; $4b28: $17
    ld e, h                                       ; $4b29: $5c
    ld e, $08                                     ; $4b2a: $1e $08
    cp d                                          ; $4b2c: $ba
    rlca                                          ; $4b2d: $07
    ld a, b                                       ; $4b2e: $78
    ld c, b                                       ; $4b2f: $48
    dec de                                        ; $4b30: $1b
    ld bc, $6700                                  ; $4b31: $01 $00 $67
    ld e, b                                       ; $4b34: $58
    cpl                                           ; $4b35: $2f
    db $10                                        ; $4b36: $10

jr_0a7_4b37:
    inc de                                        ; $4b37: $13
    nop                                           ; $4b38: $00
    ld [bc], a                                    ; $4b39: $02
    ld [bc], a                                    ; $4b3a: $02
    add b                                         ; $4b3b: $80
    ld a, h                                       ; $4b3c: $7c
    inc b                                         ; $4b3d: $04
    nop                                           ; $4b3e: $00
    jp c, $904a                                   ; $4b3f: $da $4a $90

    nop                                           ; $4b42: $00
    ld a, b                                       ; $4b43: $78

jr_0a7_4b44:
    ld [$f004], sp                                ; $4b44: $08 $04 $f0
    db $10                                        ; $4b47: $10
    add $c2                                       ; $4b48: $c6 $c2
    ld a, [bc]                                    ; $4b4a: $0a
    sub [hl]                                      ; $4b4b: $96
    dec b                                         ; $4b4c: $05
    ld c, b                                       ; $4b4d: $48
    ld c, b                                       ; $4b4e: $48
    nop                                           ; $4b4f: $00
    rlca                                          ; $4b50: $07

jr_0a7_4b51:
    ld bc, $000e                                  ; $4b51: $01 $0e $00
    ld c, $02                                     ; $4b54: $0e $02
    inc c                                         ; $4b56: $0c
    inc b                                         ; $4b57: $04
    nop                                           ; $4b58: $00
    inc e                                         ; $4b59: $1c
    inc b                                         ; $4b5a: $04
    jr jr_0a7_4b5d                                ; $4b5b: $18 $00

jr_0a7_4b5d:
    ld a, [de]                                    ; $4b5d: $1a
    ld [$0053], sp                                ; $4b5e: $08 $53 $00
    nop                                           ; $4b61: $00
    ld a, [bc]                                    ; $4b62: $0a
    ld [$0005], sp                                ; $4b63: $08 $05 $00
    ld a, [bc]                                    ; $4b66: $0a
    ld a, [bc]                                    ; $4b67: $0a
    nop                                           ; $4b68: $00
    nop                                           ; $4b69: $00
    ld bc, $8282                                  ; $4b6a: $01 $82 $82
    adc b                                         ; $4b6d: $88
    ld [$41c5], sp                                ; $4b6e: $08 $c5 $41
    xor [hl]                                      ; $4b71: $ae
    and [hl]                                      ; $4b72: $a6
    rla                                           ; $4b73: $17
    ld b, h                                       ; $4b74: $44
    dec b                                         ; $4b75: $05
    ld h, h                                       ; $4b76: $64
    dec b                                         ; $4b77: $05
    rlca                                          ; $4b78: $07
    inc b                                         ; $4b79: $04
    add hl, bc                                    ; $4b7a: $09
    adc h                                         ; $4b7b: $8c
    dec b                                         ; $4b7c: $05
    ld sp, $0011                                  ; $4b7d: $31 $11 $00
    ld [de], a                                    ; $4b80: $12
    inc c                                         ; $4b81: $0c
    ld d, l                                       ; $4b82: $55

jr_0a7_4b83:
    ld [$049b], sp                                ; $4b83: $08 $9b $04
    ld b, l                                       ; $4b86: $45
    ld a, [bc]                                    ; $4b87: $0a
    db $10                                        ; $4b88: $10
    inc de                                        ; $4b89: $13
    inc b                                         ; $4b8a: $04
    dec b                                         ; $4b8b: $05
    ld d, b                                       ; $4b8c: $50
    inc b                                         ; $4b8d: $04
    ld bc, $7f00                                  ; $4b8e: $01 $00 $7f
    dec d                                         ; $4b91: $15
    nop                                           ; $4b92: $00
    ld d, l                                       ; $4b93: $55
    ld a, [hl+]                                   ; $4b94: $2a
    and c                                         ; $4b95: $a1
    ld e, [hl]                                    ; $4b96: $5e
    sbc c                                         ; $4b97: $99
    ld h, [hl]                                    ; $4b98: $66
    ld h, [hl]                                    ; $4b99: $66
    sbc c                                         ; $4b9a: $99
    nop                                           ; $4b9b: $00
    db $ed                                        ; $4b9c: $ed
    ld d, d                                       ; $4b9d: $52
    cp b                                          ; $4b9e: $b8
    daa                                           ; $4b9f: $27
    dec a                                         ; $4ba0: $3d
    jr z, @+$68                                   ; $4ba1: $28 $66

    ld bc, $7720                                  ; $4ba3: $01 $20 $77
    nop                                           ; $4ba6: $00
    db $10                                        ; $4ba7: $10
    ld d, $1c                                     ; $4ba8: $16 $1c
    inc e                                         ; $4baa: $1c
    inc bc                                        ; $4bab: $03
    add $01                                       ; $4bac: $c6 $01
    dec d                                         ; $4bae: $15
    ld h, e                                       ; $4baf: $63
    add b                                         ; $4bb0: $80
    ld b, b                                       ; $4bb1: $40
    xor b                                         ; $4bb2: $a8
    ld b, $50                                     ; $4bb3: $06 $50
    cp [hl]                                       ; $4bb5: $be
    inc b                                         ; $4bb6: $04
    add hl, bc                                    ; $4bb7: $09
    ld e, [hl]                                    ; $4bb8: $5e
    inc bc                                        ; $4bb9: $03
    nop                                           ; $4bba: $00
    ld h, [hl]                                    ; $4bbb: $66
    ld bc, $0021                                  ; $4bbc: $01 $21 $00
    add hl, hl                                    ; $4bbf: $29
    add hl, bc                                    ; $4bc0: $09
    ld e, a                                       ; $4bc1: $5f
    ld c, b                                       ; $4bc2: $48
    nop                                           ; $4bc3: $00
    adc [hl]                                      ; $4bc4: $8e
    ld bc, $8093                                  ; $4bc5: $01 $93 $80
    ld [$2411], a                                 ; $4bc8: $ea $11 $24
    db $db                                        ; $4bcb: $db
    nop                                           ; $4bcc: $00
    sub c                                         ; $4bcd: $91
    ld l, [hl]                                    ; $4bce: $6e
    ld a, [$2a05]                                 ; $4bcf: $fa $05 $2a
    push de                                       ; $4bd2: $d5
    daa                                           ; $4bd3: $27
    jp c, $4400                                   ; $4bd4: $da $00 $44

    cp e                                          ; $4bd7: $bb
    ld c, c                                       ; $4bd8: $49
    or [hl]                                       ; $4bd9: $b6
    ld a, [hl]                                    ; $4bda: $7e
    adc c                                         ; $4bdb: $89
    db $fd                                        ; $4bdc: $fd
    ld e, d                                       ; $4bdd: $5a
    nop                                           ; $4bde: $00
    ld b, [hl]                                    ; $4bdf: $46
    add l                                         ; $4be0: $85
    jp Jump_000_3000                              ; $4be1: $c3 $00 $30


jr_0a7_4be4:
    db $10                                        ; $4be4: $10
    jp z, Jump_000_00b2                           ; $4be5: $ca $b2 $00

    ld l, [hl]                                    ; $4be8: $6e
    ld [de], a                                    ; $4be9: $12
    ld d, a                                       ; $4bea: $57
    ld c, c                                       ; $4beb: $49
    ld a, [bc]                                    ; $4bec: $0a
    inc b                                         ; $4bed: $04
    scf                                           ; $4bee: $37
    jr z, jr_0a7_4bf1                             ; $4bef: $28 $00

jr_0a7_4bf1:
    dec de                                        ; $4bf1: $1b
    inc b                                         ; $4bf2: $04
    ld a, [bc]                                    ; $4bf3: $0a
    ld [$0018], sp                                ; $4bf4: $08 $18 $00
    adc h                                         ; $4bf7: $8c
    add b                                         ; $4bf8: $80
    nop                                           ; $4bf9: $00
    add [hl]                                      ; $4bfa: $86
    nop                                           ; $4bfb: $00
    jp $c041                                      ; $4bfc: $c3 $41 $c0


    nop                                           ; $4bff: $00
    and b                                         ; $4c00: $a0

jr_0a7_4c01:
    jr nz, jr_0a7_4b83                            ; $4c01: $20 $80

    ld hl, sp+$08                                 ; $4c03: $f8 $08
    rra                                           ; $4c05: $1f
    pop hl                                        ; $4c06: $e1
    ld [hl-], a                                   ; $4c07: $32
    jp nz, Jump_0a7_40b4                          ; $4c08: $c2 $b4 $40

    ld e, b                                       ; $4c0b: $58
    nop                                           ; $4c0c: $00
    adc b                                         ; $4c0d: $88
    ld a, [hl]                                    ; $4c0e: $7e
    add d                                         ; $4c0f: $82
    or b                                          ; $4c10: $b0
    ld b, b                                       ; $4c11: $40
    ld [hl], h                                    ; $4c12: $74
    add b                                         ; $4c13: $80
    call z, Call_000_0450                         ; $4c14: $cc $50 $04
    ld a, [$1002]                                 ; $4c17: $fa $02 $10
    inc a                                         ; $4c1a: $3c
    dec b                                         ; $4c1b: $05
    ld b, b                                       ; $4c1c: $40
    ld h, b                                       ; $4c1d: $60
    jr nz, jr_0a7_4c01                            ; $4c1e: $20 $e1

    nop                                           ; $4c20: $00
    jr nz, jr_0a7_4be4                            ; $4c21: $20 $c1

    ld b, c                                       ; $4c23: $41
    ld b, b                                       ; $4c24: $40
    add b                                         ; $4c25: $80
    call nc, $fdd4                                ; $4c26: $d4 $d4 $fd
    nop                                           ; $4c29: $00
    ld b, l                                       ; $4c2a: $45
    ld d, a                                       ; $4c2b: $57
    xor b                                         ; $4c2c: $a8
    ld a, [hl+]                                   ; $4c2d: $2a
    push de                                       ; $4c2e: $d5
    ld [hl], d                                    ; $4c2f: $72
    adc l                                         ; $4c30: $8d
    ld l, l                                       ; $4c31: $6d
    nop                                           ; $4c32: $00
    sub d                                         ; $4c33: $92
    cp d                                          ; $4c34: $ba
    ld b, l                                       ; $4c35: $45
    db $dd                                        ; $4c36: $dd
    ld [de], a                                    ; $4c37: $12
    dec bc                                        ; $4c38: $0b
    push af                                       ; $4c39: $f5
    rla                                           ; $4c3a: $17
    nop                                           ; $4c3b: $00
    db $eb                                        ; $4c3c: $eb
    ld l, $d0                                     ; $4c3d: $2e $d0
    sbc l                                         ; $4c3f: $9d

jr_0a7_4c40:
    ld h, d                                       ; $4c40: $62
    ld [de], a                                    ; $4c41: $12
    push hl                                       ; $4c42: $e5
    inc h                                         ; $4c43: $24
    ld bc, $bdc3                                  ; $4c44: $01 $c3 $bd
    ld b, d                                       ; $4c47: $42
    ld c, d                                       ; $4c48: $4a
    add l                                         ; $4c49: $85
    jr nz, jr_0a7_4c6c                            ; $4c4a: $20 $20

    add b                                         ; $4c4c: $80
    dec bc                                        ; $4c4d: $0b
    nop                                           ; $4c4e: $00
    ld b, b                                       ; $4c4f: $40
    ld b, b                                       ; $4c50: $40
    sub b                                         ; $4c51: $90
    db $10                                        ; $4c52: $10
    and b                                         ; $4c53: $a0
    jr nz, @-$5e                                  ; $4c54: $20 $a0

    jr nz, jr_0a7_4c58                            ; $4c56: $20 $00

jr_0a7_4c58:
    ld b, b                                       ; $4c58: $40
    nop                                           ; $4c59: $00
    ld e, a                                       ; $4c5a: $5f
    inc d                                         ; $4c5b: $14
    inc bc                                        ; $4c5c: $03
    ld [bc], a                                    ; $4c5d: $02
    ldh [$c0], a                                  ; $4c5e: $e0 $c0
    nop                                           ; $4c60: $00
    ld h, c                                       ; $4c61: $61
    ld b, b                                       ; $4c62: $40
    ld [hl], e                                    ; $4c63: $73
    ld [de], a                                    ; $4c64: $12
    sub a                                         ; $4c65: $97
    inc b                                         ; $4c66: $04
    ld e, h                                       ; $4c67: $5c
    inc bc                                        ; $4c68: $03
    nop                                           ; $4c69: $00
    jr c, jr_0a7_4c73                             ; $4c6a: $38 $07

jr_0a7_4c6c:
    cp [hl]                                       ; $4c6c: $be
    and h                                         ; $4c6d: $a4
    rst $30                                       ; $4c6e: $f7
    ld c, b                                       ; $4c6f: $48
    pop hl                                        ; $4c70: $e1
    ld e, $00                                     ; $4c71: $1e $00

jr_0a7_4c73:
    and [hl]                                      ; $4c73: $a6
    ld e, c                                       ; $4c74: $59
    inc d                                         ; $4c75: $14
    db $eb                                        ; $4c76: $eb
    jr c, jr_0a7_4c40                             ; $4c77: $38 $c7

    ld a, b                                       ; $4c79: $78
    sub a                                         ; $4c7a: $97
    nop                                           ; $4c7b: $00
    xor l                                         ; $4c7c: $ad
    ld c, d                                       ; $4c7d: $4a
    ld d, [hl]                                    ; $4c7e: $56
    add c                                         ; $4c7f: $81
    ld b, [hl]                                    ; $4c80: $46
    add l                                         ; $4c81: $85
    and b                                         ; $4c82: $a0
    ld h, c                                       ; $4c83: $61
    nop                                           ; $4c84: $00
    ld h, e                                       ; $4c85: $63
    and b                                         ; $4c86: $a0
    db $e3                                        ; $4c87: $e3
    ld [hl+], a                                   ; $4c88: $22
    ld h, c                                       ; $4c89: $61
    add c                                         ; $4c8a: $81
    ret c                                         ; $4c8b: $d8

    ld [$3000], sp                                ; $4c8c: $08 $00 $30
    ret nc                                        ; $4c8f: $d0

    db $fd                                        ; $4c90: $fd
    jp nz, Jump_000_2837                          ; $4c91: $c2 $37 $28

    inc de                                        ; $4c94: $13
    inc c                                         ; $4c95: $0c
    nop                                           ; $4c96: $00
    dec a                                         ; $4c97: $3d
    ld [hl+], a                                   ; $4c98: $22
    ld a, [hl]                                    ; $4c99: $7e
    ld b, c                                       ; $4c9a: $41
    inc [hl]                                      ; $4c9b: $34
    inc hl                                        ; $4c9c: $23
    inc a                                         ; $4c9d: $3c
    inc sp                                        ; $4c9e: $33
    db $10                                        ; $4c9f: $10
    ld e, $11                                     ; $4ca0: $1e $11
    pop hl                                        ; $4ca2: $e1
    or $07                                        ; $4ca3: $f6 $07
    ld hl, $a000                                  ; $4ca5: $21 $00 $a0
    nop                                           ; $4ca8: $00
    nop                                           ; $4ca9: $00
    ld d, c                                       ; $4caa: $51
    add b                                         ; $4cab: $80
    pop de                                        ; $4cac: $d1
    nop                                           ; $4cad: $00
    add d                                         ; $4cae: $82
    ld bc, $8152                                  ; $4caf: $01 $52 $81
    nop                                           ; $4cb2: $00
    ld l, b                                       ; $4cb3: $68
    ld h, b                                       ; $4cb4: $60
    push af                                       ; $4cb5: $f5
    inc h                                         ; $4cb6: $24
    ld a, l                                       ; $4cb7: $7d
    adc l                                         ; $4cb8: $8d
    xor h                                         ; $4cb9: $ac
    ld d, b                                       ; $4cba: $50
    nop                                           ; $4cbb: $00
    ld d, [hl]                                    ; $4cbc: $56
    xor d                                         ; $4cbd: $aa
    cpl                                           ; $4cbe: $2f
    jp nc, $31ce                                  ; $4cbf: $d2 $ce $31

    add hl, bc                                    ; $4cc2: $09
    or $10                                        ; $4cc3: $f6 $10
    ld b, e                                       ; $4cc5: $43
    ld [bc], a                                    ; $4cc6: $02
    add b                                         ; $4cc7: $80
    ld b, b                                       ; $4cc8: $40
    ld de, $2033                                  ; $4cc9: $11 $33 $20
    ld e, $01                                     ; $4ccc: $1e $01
    nop                                           ; $4cce: $00
    ei                                            ; $4ccf: $fb
    call nz, Call_000_1a65                        ; $4cd0: $c4 $65 $1a
    push de                                       ; $4cd3: $d5
    ld a, [hl+]                                   ; $4cd4: $2a
    swap h                                        ; $4cd5: $cb $34
    nop                                           ; $4cd7: $00
    and l                                         ; $4cd8: $a5
    ld e, d                                       ; $4cd9: $5a
    ret                                           ; $4cda: $c9


    ld [hl], $4b                                  ; $4cdb: $36 $4b
    or h                                          ; $4cdd: $b4
    and l                                         ; $4cde: $a5
    ld e, d                                       ; $4cdf: $5a
    nop                                           ; $4ce0: $00
    ld a, [bc]                                    ; $4ce1: $0a
    push af                                       ; $4ce2: $f5
    ld [de], a                                    ; $4ce3: $12
    db $ed                                        ; $4ce4: $ed
    ld [hl+], a                                   ; $4ce5: $22
    db $dd                                        ; $4ce6: $dd
    ld c, b                                       ; $4ce7: $48
    or a                                          ; $4ce8: $b7
    ld [bc], a                                    ; $4ce9: $02
    and h                                         ; $4cea: $a4
    ld e, e                                       ; $4ceb: $5b
    ld b, a                                       ; $4cec: $47
    cp b                                          ; $4ced: $b8
    db $d3                                        ; $4cee: $d3
    inc l                                         ; $4cef: $2c
    ldh a, [$0c]                                  ; $4cf0: $f0 $0c
    ld d, a                                       ; $4cf2: $57
    inc bc                                        ; $4cf3: $03
    jr z, jr_0a7_4d4d                             ; $4cf4: $28 $57

    jr z, jr_0a7_4d23                             ; $4cf6: $28 $2b

    db $10                                        ; $4cf8: $10
    ld [hl], b                                    ; $4cf9: $70
    inc c                                         ; $4cfa: $0c
    ld b, $b6                                     ; $4cfb: $06 $b6
    dec bc                                        ; $4cfd: $0b
    ld b, d                                       ; $4cfe: $42
    nop                                           ; $4cff: $00
    or b                                          ; $4d00: $b0
    dec b                                         ; $4d01: $05
    xor e                                         ; $4d02: $ab
    ld d, l                                       ; $4d03: $55
    db $d3                                        ; $4d04: $d3
    inc l                                         ; $4d05: $2c
    ret nz                                        ; $4d06: $c0

    ld a, [hl-]                                   ; $4d07: $3a
    ld c, a                                       ; $4d08: $4f
    ld [bc], a                                    ; $4d09: $02
    or b                                          ; $4d0a: $b0
    ld [hl], e                                    ; $4d0b: $73
    nop                                           ; $4d0c: $00
    db $e3                                        ; $4d0d: $e3
    nop                                           ; $4d0e: $00
    add c                                         ; $4d0f: $81
    ld bc, $4102                                  ; $4d10: $01 $02 $41
    nop                                           ; $4d13: $00
    add b                                         ; $4d14: $80
    ld b, c                                       ; $4d15: $41
    add b                                         ; $4d16: $80
    ld b, e                                       ; $4d17: $43
    add d                                         ; $4d18: $82
    add a                                         ; $4d19: $87
    ld b, $8b                                     ; $4d1a: $06 $8b
    ld b, b                                       ; $4d1c: $40
    ld [hl], b                                    ; $4d1d: $70
    ret nz                                        ; $4d1e: $c0

    ld [bc], a                                    ; $4d1f: $02
    or b                                          ; $4d20: $b0
    and l                                         ; $4d21: $a5
    ld e, c                                       ; $4d22: $59

jr_0a7_4d23:
    inc c                                         ; $4d23: $0c
    ldh a, [$58]                                  ; $4d24: $f0 $58
    nop                                           ; $4d26: $00
    xor b                                         ; $4d27: $a8
    call z, $ab30                                 ; $4d28: $cc $30 $ab
    ld d, h                                       ; $4d2b: $54
    xor d                                         ; $4d2c: $aa
    ld bc, $08f8                                  ; $4d2d: $01 $f8 $08
    nop                                           ; $4d30: $00
    add sp, $00                                   ; $4d31: $e8 $00
    call z, Call_000_0004                         ; $4d33: $cc $04 $00
    ld [hl], h                                    ; $4d36: $74
    add b                                         ; $4d37: $80
    add sp, -$40                                  ; $4d38: $e8 $c0
    ld e, $04                                     ; $4d3a: $1e $04
    ld d, b                                       ; $4d3c: $50
    dec c                                         ; $4d3d: $0d
    ld h, l                                       ; $4d3e: $65
    ld e, d                                       ; $4d3f: $5a
    ld b, a                                       ; $4d40: $47
    add hl, sp                                    ; $4d41: $39
    ld d, e                                       ; $4d42: $53
    inc l                                         ; $4d43: $2c
    nop                                           ; $4d44: $00
    pop af                                        ; $4d45: $f1
    ld c, $eb                                     ; $4d46: $0e $eb
    sub l                                         ; $4d48: $95
    ld d, a                                       ; $4d49: $57
    add hl, hl                                    ; $4d4a: $29
    ld d, l                                       ; $4d4b: $55
    nop                                           ; $4d4c: $00

jr_0a7_4d4d:
    nop                                           ; $4d4d: $00
    jp nc, Jump_0a7_6300                          ; $4d4e: $d2 $00 $63

    nop                                           ; $4d51: $00
    db $d3                                        ; $4d52: $d3
    nop                                           ; $4d53: $00
    xor $00                                       ; $4d54: $ee $00
    ld e, [hl]                                    ; $4d56: $5e
    ld a, c                                       ; $4d57: $79
    ld b, $06                                     ; $4d58: $06 $06
    ldh [$fe], a                                  ; $4d5a: $e0 $fe
    inc d                                         ; $4d5c: $14
    inc b                                         ; $4d5d: $04
    dec c                                         ; $4d5e: $0d
    ld hl, sp+$3c                                 ; $4d5f: $f8 $3c
    db $10                                        ; $4d61: $10
    ld [$c003], sp                                ; $4d62: $08 $03 $c0
    ld d, $10                                     ; $4d65: $16 $10
    ld c, d                                       ; $4d67: $4a
    ld a, [de]                                    ; $4d68: $1a
    inc bc                                        ; $4d69: $03
    nop                                           ; $4d6a: $00
    dec b                                         ; $4d6b: $05
    ld [bc], a                                    ; $4d6c: $02
    dec b                                         ; $4d6d: $05
    ld [bc], a                                    ; $4d6e: $02
    add b                                         ; $4d6f: $80
    ld e, [hl]                                    ; $4d70: $5e
    rlca                                          ; $4d71: $07
    ld bc, $0304                                  ; $4d72: $01 $04 $03
    ld b, $01                                     ; $4d75: $06 $01
    ld h, c                                       ; $4d77: $61
    jr nz, jr_0a7_4d7a                            ; $4d78: $20 $00

jr_0a7_4d7a:
    ld b, h                                       ; $4d7a: $44
    nop                                           ; $4d7b: $00
    dec de                                        ; $4d7c: $1b
    db $10                                        ; $4d7d: $10
    ccf                                           ; $4d7e: $3f
    jr nz, jr_0a7_4dba                            ; $4d7f: $20 $39

    add hl, hl                                    ; $4d81: $29
    ld b, b                                       ; $4d82: $40
    sub b                                         ; $4d83: $90
    ld c, d                                       ; $4d84: $4a
    ld b, $e3                                     ; $4d85: $06 $e3
    nop                                           ; $4d87: $00
    pop bc                                        ; $4d88: $c1
    ld b, b                                       ; $4d89: $40
    and $84                                       ; $4d8a: $e6 $84
    nop                                           ; $4d8c: $00
    cp a                                          ; $4d8d: $bf
    ld bc, $0837                                  ; $4d8e: $01 $37 $08
    ld l, d                                       ; $4d91: $6a
    dec d                                         ; $4d92: $15
    inc [hl]                                      ; $4d93: $34
    dec bc                                        ; $4d94: $0b
    nop                                           ; $4d95: $00
    rst $30                                       ; $4d96: $f7
    adc b                                         ; $4d97: $88
    call nc, $2b2b                                ; $4d98: $d4 $2b $2b
    nop                                           ; $4d9b: $00
    cp a                                          ; $4d9c: $bf
    nop                                           ; $4d9d: $00
    nop                                           ; $4d9e: $00
    db $eb                                        ; $4d9f: $eb
    inc d                                         ; $4da0: $14
    ld d, [hl]                                    ; $4da1: $56
    xor c                                         ; $4da2: $a9
    ld c, a                                       ; $4da3: $4f
    or b                                          ; $4da4: $b0
    or [hl]                                       ; $4da5: $b6
    ld c, c                                       ; $4da6: $49
    ld b, $5d                                     ; $4da7: $06 $5d
    and d                                         ; $4da9: $a2
    cp e                                          ; $4daa: $bb
    ld b, b                                       ; $4dab: $40
    rlca                                          ; $4dac: $07
    jr c, jr_0a7_4daf                             ; $4dad: $38 $00

jr_0a7_4daf:
    ld h, b                                       ; $4daf: $60
    dec c                                         ; $4db0: $0d
    inc c                                         ; $4db1: $0c
    ret nz                                        ; $4db2: $c0

    add $06                                       ; $4db3: $c6 $06
    ld c, b                                       ; $4db5: $48
    dec bc                                        ; $4db6: $0b
    dec hl                                        ; $4db7: $2b
    ret nz                                        ; $4db8: $c0

    ld c, e                                       ; $4db9: $4b

jr_0a7_4dba:
    add b                                         ; $4dba: $80
    ld b, [hl]                                    ; $4dbb: $46
    add c                                         ; $4dbc: $81
    nop                                           ; $4dbd: $00
    rlc b                                         ; $4dbe: $cb $00
    or $01                                        ; $4dc0: $f6 $01
    sbc a                                         ; $4dc2: $9f

jr_0a7_4dc3:
    nop                                           ; $4dc3: $00
    ld c, d                                       ; $4dc4: $4a
    ld bc, $2700                                  ; $4dc5: $01 $00 $27
    nop                                           ; $4dc8: $00
    ld d, l                                       ; $4dc9: $55
    sub b                                         ; $4dca: $90
    rra                                           ; $4dcb: $1f
    inc b                                         ; $4dcc: $04
    rla                                           ; $4dcd: $17
    db $10                                        ; $4dce: $10
    dec c                                         ; $4dcf: $0d
    inc sp                                        ; $4dd0: $33
    jr nz, jr_0a7_4dea                            ; $4dd1: $20 $17

    nop                                           ; $4dd3: $00
    add b                                         ; $4dd4: $80
    ld b, $4e                                     ; $4dd5: $06 $4e
    dec b                                         ; $4dd7: $05
    ld b, $ea                                     ; $4dd8: $06 $ea
    ld b, $70                                     ; $4dda: $06 $70
    ld [bc], a                                    ; $4ddc: $02
    ld a, [hl+]                                   ; $4ddd: $2a
    db $10                                        ; $4dde: $10
    ld e, b                                       ; $4ddf: $58
    dec b                                         ; $4de0: $05
    jp nz, Jump_000_2e02                          ; $4de1: $c2 $02 $2e

    ld hl, $0215                                  ; $4de4: $21 $15 $02
    nop                                           ; $4de7: $00
    ld e, [hl]                                    ; $4de8: $5e
    ld b, c                                       ; $4de9: $41

jr_0a7_4dea:
    dec l                                         ; $4dea: $2d
    ld [bc], a                                    ; $4deb: $02
    ld d, $00                                     ; $4dec: $16 $00
    inc hl                                        ; $4dee: $23
    jr nz, jr_0a7_4df1                            ; $4def: $20 $00

jr_0a7_4df1:
    dec d                                         ; $4df1: $15
    nop                                           ; $4df2: $00
    rla                                           ; $4df3: $17
    nop                                           ; $4df4: $00
    rst $10                                       ; $4df5: $d7
    jr z, jr_0a7_4e71                             ; $4df6: $28 $79

    ld b, $00                                     ; $4df8: $06 $00
    jp nz, Jump_0a7_6c3d                          ; $4dfa: $c2 $3d $6c

    inc de                                        ; $4dfd: $13
    ld c, [hl]                                    ; $4dfe: $4e
    ld sp, $136c                                  ; $4dff: $31 $6c $13
    nop                                           ; $4e02: $00
    sbc $21                                       ; $4e03: $de $21
    xor h                                         ; $4e05: $ac
    ld d, e                                       ; $4e06: $53
    xor $12                                       ; $4e07: $ee $12
    ld a, [hl+]                                   ; $4e09: $2a
    call nc, $0520                                ; $4e0a: $d4 $20 $05
    ld a, [$0a80]                                 ; $4e0d: $fa $80 $0a
    or a                                          ; $4e10: $b7
    ld c, b                                       ; $4e11: $48
    dec e                                         ; $4e12: $1d
    pop hl                                        ; $4e13: $e1
    db $fc                                        ; $4e14: $fc
    inc b                                         ; $4e15: $04
    jr jr_0a7_4dc3                                ; $4e16: $18 $ab

    ld d, h                                       ; $4e18: $54
    ld d, e                                       ; $4e19: $53
    xor h                                         ; $4e1a: $ac
    ld d, b                                       ; $4e1b: $50
    ld l, $50                                     ; $4e1c: $2e $50
    xor a                                         ; $4e1e: $af
    nop                                           ; $4e1f: $00
    ld c, b                                       ; $4e20: $48
    or a                                          ; $4e21: $b7
    ld c, c                                       ; $4e22: $49
    ld b, $52                                     ; $4e23: $06 $52
    ld c, l                                       ; $4e25: $4d
    push de                                       ; $4e26: $d5
    ld c, d                                       ; $4e27: $4a
    ld bc, $005f                                  ; $4e28: $01 $5f $00
    dec d                                         ; $4e2b: $15
    nop                                           ; $4e2c: $00
    inc e                                         ; $4e2d: $1c
    db $10                                        ; $4e2e: $10
    ld a, [de]                                    ; $4e2f: $1a
    ld c, h                                       ; $4e30: $4c
    dec b                                         ; $4e31: $05
    nop                                           ; $4e32: $00
    ld [$d514], a                                 ; $4e33: $ea $14 $d5
    add hl, bc                                    ; $4e36: $09
    sbc $d0                                       ; $4e37: $de $d0
    inc bc                                        ; $4e39: $03
    nop                                           ; $4e3a: $00
    nop                                           ; $4e3b: $00
    rrca                                          ; $4e3c: $0f
    ld [$8081], sp                                ; $4e3d: $08 $81 $80
    sub c                                         ; $4e40: $91
    ld de, $00e8                                  ; $4e41: $11 $e8 $00
    nop                                           ; $4e44: $00
    dec c                                         ; $4e45: $0d
    ld [$8083], sp                                ; $4e46: $08 $83 $80
    push bc                                       ; $4e49: $c5
    nop                                           ; $4e4a: $00
    add $44                                       ; $4e4b: $c6 $44
    ld h, b                                       ; $4e4d: $60
    ld bc, $0320                                  ; $4e4e: $01 $20 $03
    or h                                          ; $4e51: $b4
    inc b                                         ; $4e52: $04
    inc b                                         ; $4e53: $04
    rrca                                          ; $4e54: $0f
    ld [bc], a                                    ; $4e55: $02
    ld e, [hl]                                    ; $4e56: $5e
    ld b, b                                       ; $4e57: $40
    nop                                           ; $4e58: $00
    push af                                       ; $4e59: $f5
    adc d                                         ; $4e5a: $8a
    rst $38                                       ; $4e5b: $ff
    nop                                           ; $4e5c: $00
    ld [$2360], a                                 ; $4e5d: $ea $60 $23
    ld [hl+], a                                   ; $4e60: $22
    ld b, b                                       ; $4e61: $40
    nop                                           ; $4e62: $00
    ld [hl], $07                                  ; $4e63: $36 $07

jr_0a7_4e65:
    jp nc, $a100                                  ; $4e65: $d2 $00 $a1

    ld hl, $4046                                  ; $4e68: $21 $46 $40
    nop                                           ; $4e6b: $00
    call z, $a648                                 ; $4e6c: $cc $48 $a6
    nop                                           ; $4e6f: $00
    ret                                           ; $4e70: $c9


jr_0a7_4e71:
    ld bc, $087a                                  ; $4e71: $01 $7a $08
    ld d, d                                       ; $4e74: $52
    ld e, h                                       ; $4e75: $5c
    ld d, h                                       ; $4e76: $54
    inc bc                                        ; $4e77: $03
    db $10                                        ; $4e78: $10
    jr nc, @+$13                                  ; $4e79: $30 $11

    ld b, d                                       ; $4e7b: $42
    nop                                           ; $4e7c: $00
    sub d                                         ; $4e7d: $92
    ld b, $00                                     ; $4e7e: $06 $00
    ldh [$f3], a                                  ; $4e80: $e0 $f3
    rlca                                          ; $4e82: $07
    ld l, h                                       ; $4e83: $6c
    inc de                                        ; $4e84: $13
    inc l                                         ; $4e85: $2c
    add hl, hl                                    ; $4e86: $29
    ld bc, $d000                                  ; $4e87: $01 $00 $d0
    cpl                                           ; $4e8a: $2f
    add sp, $00                                   ; $4e8b: $e8 $00
    rla                                           ; $4e8d: $17
    ld [hl], h                                    ; $4e8e: $74
    dec bc                                        ; $4e8f: $0b
    cp c                                          ; $4e90: $b9
    ld b, [hl]                                    ; $4e91: $46
    ret z                                         ; $4e92: $c8

    daa                                           ; $4e93: $27
    and h                                         ; $4e94: $a4
    nop                                           ; $4e95: $00
    ld b, e                                       ; $4e96: $43
    sbc l                                         ; $4e97: $9d
    ld h, d                                       ; $4e98: $62
    sub d                                         ; $4e99: $92
    ld h, c                                       ; $4e9a: $61
    add hl, hl                                    ; $4e9b: $29
    ld h, $3a                                     ; $4e9c: $26 $3a
    nop                                           ; $4e9e: $00
    inc b                                         ; $4e9f: $04
    ld d, l                                       ; $4ea0: $55
    ld a, [bc]                                    ; $4ea1: $0a
    cp $80                                        ; $4ea2: $fe $80
    xor l                                         ; $4ea4: $ad
    sub c                                         ; $4ea5: $91
    ld c, d                                       ; $4ea6: $4a
    nop                                           ; $4ea7: $00
    inc [hl]                                      ; $4ea8: $34
    db $fd                                        ; $4ea9: $fd
    nop                                           ; $4eaa: $00
    jp nc, $af22                                  ; $4eab: $d2 $22 $af

    ld bc, $0079                                  ; $4eae: $01 $79 $00
    ld [hl], $5a                                  ; $4eb1: $36 $5a
    ld b, h                                       ; $4eb3: $44
    dec e                                         ; $4eb4: $1d
    db $10                                        ; $4eb5: $10
    ld d, $08                                     ; $4eb6: $16 $08
    dec de                                        ; $4eb8: $1b
    nop                                           ; $4eb9: $00
    dec b                                         ; $4eba: $05
    dec sp                                        ; $4ebb: $3b
    inc h                                         ; $4ebc: $24
    ld c, $00                                     ; $4ebd: $0e $00
    ld [de], a                                    ; $4ebf: $12
    dec c                                         ; $4ec0: $0d
    add hl, sp                                    ; $4ec1: $39
    jr nz, @+$08                                  ; $4ec2: $20 $06

    inc d                                         ; $4ec4: $14
    and $02                                       ; $4ec5: $e6 $02
    jr z, jr_0a7_4ed9                             ; $4ec7: $28 $10

    ld sp, $5000                                  ; $4ec9: $31 $00 $50
    dec bc                                        ; $4ecc: $0b
    jr nz, jr_0a7_4f20                            ; $4ecd: $20 $51

    jr nz, jr_0a7_4e65                            ; $4ecf: $20 $94

    ld a, [c]                                     ; $4ed1: $f2
    ld [bc], a                                    ; $4ed2: $02
    jr nc, jr_0a7_4f39                            ; $4ed3: $30 $64

    nop                                           ; $4ed5: $00
    sbc $0d                                       ; $4ed6: $de $0d
    nop                                           ; $4ed8: $00

jr_0a7_4ed9:
    ldh [rP1], a                                  ; $4ed9: $e0 $00
    sub b                                         ; $4edb: $90
    ld h, b                                       ; $4edc: $60
    ld d, b                                       ; $4edd: $50
    jr nz, jr_0a7_4f30                            ; $4ede: $20 $50

    jr nz, jr_0a7_4f03                            ; $4ee0: $20 $21

    jr z, jr_0a7_4ef4                             ; $4ee2: $28 $10

    ld [bc], a                                    ; $4ee4: $02
    jr jr_0a7_4f17                                ; $4ee5: $18 $30

    nop                                           ; $4ee7: $00
    ld [hl], b                                    ; $4ee8: $70
    nop                                           ; $4ee9: $00
    ldh [rNR21], a                                ; $4eea: $e0 $16

jr_0a7_4eec:
    nop                                           ; $4eec: $00
    ld a, [hl+]                                   ; $4eed: $2a
    adc e                                         ; $4eee: $8b
    ld [hl], l                                    ; $4eef: $75
    sub e                                         ; $4ef0: $93
    ld l, l                                       ; $4ef1: $6d
    swap h                                        ; $4ef2: $cb $34

jr_0a7_4ef4:
    sub l                                         ; $4ef4: $95
    nop                                           ; $4ef5: $00
    ld l, d                                       ; $4ef6: $6a
    ld [c], a                                     ; $4ef7: $e2
    dec e                                         ; $4ef8: $1d
    xor h                                         ; $4ef9: $ac
    ld d, h                                       ; $4efa: $54
    jp z, Jump_0a7_67b2                           ; $4efb: $ca $b2 $67

    nop                                           ; $4efe: $00
    jr @-$48                                      ; $4eff: $18 $b6

    add hl, hl                                    ; $4f01: $29
    db $dd                                        ; $4f02: $dd

jr_0a7_4f03:
    nop                                           ; $4f03: $00
    adc l                                         ; $4f04: $8d
    ld bc, $029a                                  ; $4f05: $01 $9a $02
    db $10                                        ; $4f08: $10
    ret c                                         ; $4f09: $d8

    nop                                           ; $4f0a: $00
    rlca                                          ; $4f0b: $07
    nop                                           ; $4f0c: $00
    dec bc                                        ; $4f0d: $0b
    inc b                                         ; $4f0e: $04
    nop                                           ; $4f0f: $00
    ld a, [bc]                                    ; $4f10: $0a
    nop                                           ; $4f11: $00
    ld bc, $012e                                  ; $4f12: $01 $2e $01
    rst $18                                       ; $4f15: $df
    nop                                           ; $4f16: $00

jr_0a7_4f17:
    rst $30                                       ; $4f17: $f7
    ld [$6854], sp                                ; $4f18: $08 $54 $68
    jr z, jr_0a7_4f6b                             ; $4f1b: $28 $4e

    add hl, bc                                    ; $4f1d: $09
    ld d, b                                       ; $4f1e: $50
    add hl, de                                    ; $4f1f: $19

jr_0a7_4f20:
    ld c, $84                                     ; $4f20: $0e $84
    ld de, $6196                                  ; $4f22: $11 $96 $61
    and h                                         ; $4f25: $a4
    rlca                                          ; $4f26: $07
    ld b, e                                       ; $4f27: $43
    ld [c], a                                     ; $4f28: $e2
    ld bc, $40a1                                  ; $4f29: $01 $a1 $40
    ld [bc], a                                    ; $4f2c: $02
    ld [$085a], sp                                ; $4f2d: $08 $5a $08

jr_0a7_4f30:
    ldh a, [$2e]                                  ; $4f30: $f0 $2e
    db $dd                                        ; $4f32: $dd
    ld [hl], c                                    ; $4f33: $71
    inc b                                         ; $4f34: $04
    adc [hl]                                      ; $4f35: $8e
    ld b, $30                                     ; $4f36: $06 $30
    inc [hl]                                      ; $4f38: $34

jr_0a7_4f39:
    inc b                                         ; $4f39: $04
    ld c, d                                       ; $4f3a: $4a
    ld b, $f6                                     ; $4f3b: $06 $f6
    ld b, $0c                                     ; $4f3d: $06 $0c
    jr nc, jr_0a7_4f41                            ; $4f3f: $30 $00

jr_0a7_4f41:
    and b                                         ; $4f41: $a0
    inc c                                         ; $4f42: $0c
    cpl                                           ; $4f43: $2f
    ld b, b                                       ; $4f44: $40
    ld h, [hl]                                    ; $4f45: $66
    ld b, $f0                                     ; $4f46: $06 $f0
    nop                                           ; $4f48: $00
    ret nc                                        ; $4f49: $d0

    jr nz, jr_0a7_4eec                            ; $4f4a: $20 $a0

    nop                                           ; $4f4c: $00
    ld d, b                                       ; $4f4d: $50
    ret z                                         ; $4f4e: $c8

    jr nc, jr_0a7_4f86                            ; $4f4f: $30 $35

    ld a, [bc]                                    ; $4f51: $0a
    ld sp, hl                                     ; $4f52: $f9
    ld b, $c1                                     ; $4f53: $06 $c1
    rlca                                          ; $4f55: $07
    ld c, $05                                     ; $4f56: $0e $05
    ld a, [bc]                                    ; $4f58: $0a
    dec bc                                        ; $4f59: $0b
    inc b                                         ; $4f5a: $04
    inc l                                         ; $4f5b: $2c
    rlca                                          ; $4f5c: $07
    or d                                          ; $4f5d: $b2
    dec b                                         ; $4f5e: $05
    jr jr_0a7_4f6b                                ; $4f5f: $18 $0a

    nop                                           ; $4f61: $00
    dec bc                                        ; $4f62: $0b
    inc b                                         ; $4f63: $04
    rla                                           ; $4f64: $17
    ld [$106c], sp                                ; $4f65: $08 $6c $10
    ld c, b                                       ; $4f68: $48
    jr nc, jr_0a7_4f75                            ; $4f69: $30 $0a

jr_0a7_4f6b:
    ret c                                         ; $4f6b: $d8

    jr nz, jr_0a7_4f7e                            ; $4f6c: $20 $10

    ldh [$50], a                                  ; $4f6e: $e0 $50
    rrca                                          ; $4f70: $0f
    ld [bc], a                                    ; $4f71: $02
    ld b, $06                                     ; $4f72: $06 $06
    dec c                                         ; $4f74: $0d

jr_0a7_4f75:
    xor b                                         ; $4f75: $a8
    ld a, [hl+]                                   ; $4f76: $2a
    ld de, $e210                                  ; $4f77: $11 $10 $e2
    ld b, $60                                     ; $4f7a: $06 $60
    jr z, jr_0a7_4f7f                             ; $4f7c: $28 $01

jr_0a7_4f7e:
    ld h, c                                       ; $4f7e: $61

jr_0a7_4f7f:
    nop                                           ; $4f7f: $00
    ld [hl-], a                                   ; $4f80: $32
    nop                                           ; $4f81: $00
    ld bc, $0112                                  ; $4f82: $01 $12 $01
    ld [bc], a                                    ; $4f85: $02

jr_0a7_4f86:
    ld bc, $0205                                  ; $4f86: $01 $05 $02
    ldh [rP1], a                                  ; $4f89: $e0 $00
    nop                                           ; $4f8b: $00
    or b                                          ; $4f8c: $b0
    ld b, b                                       ; $4f8d: $40
    ld e, b                                       ; $4f8e: $58
    add b                                         ; $4f8f: $80
    ld c, b                                       ; $4f90: $48
    add b                                         ; $4f91: $80
    sbc b                                         ; $4f92: $98
    and [hl]                                      ; $4f93: $a6
    ret nc                                        ; $4f94: $d0

    inc b                                         ; $4f95: $04
    sub b                                         ; $4f96: $90
    ld e, [hl]                                    ; $4f97: $5e
    rlca                                          ; $4f98: $07
    ld h, b                                       ; $4f99: $60
    add b                                         ; $4f9a: $80
    pop de                                        ; $4f9b: $d1
    ld c, $7e                                     ; $4f9c: $0e $7e
    ld [$a060], sp                                ; $4f9e: $08 $60 $a0
    xor [hl]                                      ; $4fa1: $ae
    inc b                                         ; $4fa2: $04
    jr nc, jr_0a7_5011                            ; $4fa3: $30 $6c

    ld [bc], a                                    ; $4fa5: $02
    ld a, [bc]                                    ; $4fa6: $0a
    inc b                                         ; $4fa7: $04
    ld a, [bc]                                    ; $4fa8: $0a
    inc b                                         ; $4fa9: $04
    inc c                                         ; $4faa: $0c
    nop                                           ; $4fab: $00
    nop                                           ; $4fac: $00
    inc [hl]                                      ; $4fad: $34
    ld [$1c22], sp                                ; $4fae: $08 $22 $1c
    ld [hl], d                                    ; $4fb1: $72
    inc c                                         ; $4fb2: $0c
    ld e, c                                       ; $4fb3: $59
    ld h, b                                       ; $4fb4: $60
    ld b, $5c                                     ; $4fb5: $06 $5c
    ld c, c                                       ; $4fb7: $49
    sbc h                                         ; $4fb8: $9c
    rrca                                          ; $4fb9: $0f
    ld a, $39                                     ; $4fba: $3e $39
    ccf                                           ; $4fbc: $3f
    ld [hl], $5f                                  ; $4fbd: $36 $5f
    ld bc, $1f58                                  ; $4fbf: $01 $58 $1f
    inc e                                         ; $4fc2: $1c
    cpl                                           ; $4fc3: $2f
    ld l, $1f                                     ; $4fc4: $2e $1f
    rra                                           ; $4fc6: $1f
    add sp, $04                                   ; $4fc7: $e8 $04
    nop                                           ; $4fc9: $00
    ld bc, $ee1e                                  ; $4fca: $01 $1e $ee
    ld a, l                                       ; $4fcd: $7d
    sbc l                                         ; $4fce: $9d
    ld [hl], d                                    ; $4fcf: $72
    or d                                          ; $4fd0: $b2
    ldh [rP1], a                                  ; $4fd1: $e0 $00
    ldh [$c3], a                                  ; $4fd3: $e0 $c3
    jp $9898                                      ; $4fd5: $c3 $98 $98


    jr @+$1a                                      ; $4fd8: $18 $18

    add b                                         ; $4fda: $80
    nop                                           ; $4fdb: $00
    add b                                         ; $4fdc: $80
    jr nc, @+$32                                  ; $4fdd: $30 $30

    inc sp                                        ; $4fdf: $33
    inc sp                                        ; $4fe0: $33
    inc b                                         ; $4fe1: $04
    inc b                                         ; $4fe2: $04
    or a                                          ; $4fe3: $b7
    nop                                           ; $4fe4: $00
    or a                                          ; $4fe5: $b7
    rra                                           ; $4fe6: $1f
    dec e                                         ; $4fe7: $1d
    cpl                                           ; $4fe8: $2f
    ld l, $7f                                     ; $4fe9: $2e $7f
    ld a, e                                       ; $4feb: $7b
    cp a                                          ; $4fec: $bf
    nop                                           ; $4fed: $00
    cp h                                          ; $4fee: $bc
    sub d                                         ; $4fef: $92
    sub d                                         ; $4ff0: $92
    jr jr_0a7_500b                                ; $4ff1: $18 $18

    cp $ee                                        ; $4ff3: $fe $ee
    db $fc                                        ; $4ff5: $fc
    nop                                           ; $4ff6: $00
    ld d, h                                       ; $4ff7: $54
    db $dd                                        ; $4ff8: $dd
    xor l                                         ; $4ff9: $ad
    sbc $aa                                       ; $4ffa: $de $aa
    adc [hl]                                      ; $4ffc: $8e
    halt                                          ; $4ffd: $76
    ld c, $00                                     ; $4ffe: $0e $00
    ld a, [c]                                     ; $5000: $f2
    ld a, b                                       ; $5001: $78
    ld [hl], a                                    ; $5002: $77
    ld l, $29                                     ; $5003: $2e $29
    ld b, $05                                     ; $5005: $06 $05
    rlca                                          ; $5007: $07
    ld bc, $6307                                  ; $5008: $01 $07 $63

jr_0a7_500b:
    ld h, e                                       ; $500b: $63
    ld h, h                                       ; $500c: $64
    ld h, h                                       ; $500d: $64
    jr jr_0a7_5028                                ; $500e: $18 $18

    ld b, [hl]                                    ; $5010: $46

jr_0a7_5011:
    rlca                                          ; $5011: $07
    nop                                           ; $5012: $00
    add b                                         ; $5013: $80
    jr jr_0a7_502e                                ; $5014: $18 $18

    ldh [$e0], a                                  ; $5016: $e0 $e0
    di                                            ; $5018: $f3
    ld [hl], e                                    ; $5019: $73
    ei                                            ; $501a: $fb
    ld bc, $fc3b                                  ; $501b: $01 $3b $fc
    inc e                                         ; $501e: $1c
    cp $7e                                        ; $501f: $fe $7e
    ld a, h                                       ; $5021: $7c
    sbc h                                         ; $5022: $9c
    rst $38                                       ; $5023: $ff
    rrca                                          ; $5024: $0f
    nop                                           ; $5025: $00
    ld c, a                                       ; $5026: $4f
    ld c, a                                       ; $5027: $4f

jr_0a7_5028:
    ccf                                           ; $5028: $3f
    dec sp                                        ; $5029: $3b
    dec sp                                        ; $502a: $3b
    dec [hl]                                      ; $502b: $35
    ld a, e                                       ; $502c: $7b
    ld [hl], l                                    ; $502d: $75

jr_0a7_502e:
    nop                                           ; $502e: $00
    di                                            ; $502f: $f3
    db $ec                                        ; $5030: $ec
    ld [hl], b                                    ; $5031: $70
    ld c, a                                       ; $5032: $4f
    db $fc                                        ; $5033: $fc
    inc a                                         ; $5034: $3c
    ld hl, sp-$08                                 ; $5035: $f8 $f8
    nop                                           ; $5037: $00
    db $f4                                        ; $5038: $f4
    ld [hl], h                                    ; $5039: $74
    ldh a, [$f0]                                  ; $503a: $f0 $f0
    ldh [$e0], a                                  ; $503c: $e0 $e0
    jr @+$1a                                      ; $503e: $18 $18

    ld b, b                                       ; $5040: $40

Call_0a7_5041:
    db $10                                        ; $5041: $10
    sbc [hl]                                      ; $5042: $9e
    dec b                                         ; $5043: $05
    ld h, a                                       ; $5044: $67
    ld [hl+], a                                   ; $5045: $22
    ld [$dc00], sp                                ; $5046: $08 $00 $dc
    adc b                                         ; $5049: $88
    ld bc, $c0c8                                  ; $504a: $01 $c8 $c0
    cp l                                          ; $504d: $bd
    ld [$009a], sp                                ; $504e: $08 $9a $00
    ret nz                                        ; $5051: $c0

    adc c                                         ; $5052: $89
    dec d                                         ; $5053: $15
    nop                                           ; $5054: $00
    inc hl                                        ; $5055: $23
    ld bc, $2073                                  ; $5056: $01 $73 $20
    jr z, jr_0a7_505b                             ; $5059: $28 $00

jr_0a7_505b:
    inc a                                         ; $505b: $3c
    jr jr_0a7_506f                                ; $505c: $18 $11

    ld e, h                                       ; $505e: $5c
    ld [$9a28], sp                                ; $505f: $08 $28 $9a
    rlca                                          ; $5062: $07
    inc d                                         ; $5063: $14
    ld [$cc38], sp                                ; $5064: $08 $38 $cc
    ld bc, $b6e0                                  ; $5067: $01 $e0 $b6
    add hl, bc                                    ; $506a: $09
    cp b                                          ; $506b: $b8
    add hl, de                                    ; $506c: $19
    xor l                                         ; $506d: $ad
    rrca                                          ; $506e: $0f

jr_0a7_506f:
    inc b                                         ; $506f: $04
    inc b                                         ; $5070: $04
    rlca                                          ; $5071: $07
    rlca                                          ; $5072: $07
    rrca                                          ; $5073: $0f
    ld b, b                                       ; $5074: $40
    rrca                                          ; $5075: $0f
    or d                                          ; $5076: $b2
    nop                                           ; $5077: $00
    dec de                                        ; $5078: $1b
    ccf                                           ; $5079: $3f
    inc a                                         ; $507a: $3c
    ld h, b                                       ; $507b: $60
    ld h, b                                       ; $507c: $60
    nop                                           ; $507d: $00
    nop                                           ; $507e: $00
    nop                                           ; $507f: $00
    db $e3                                        ; $5080: $e3
    db $e3                                        ; $5081: $e3
    ld a, [c]                                     ; $5082: $f2
    ld d, d                                       ; $5083: $52
    ret c                                         ; $5084: $d8

    xor b                                         ; $5085: $a8

jr_0a7_5086:
    sbc $00                                       ; $5086: $de $00
    xor [hl]                                      ; $5088: $ae
    adc $36                                       ; $5089: $ce $36
    ld c, $f2                                     ; $508b: $0e $f2
    ld h, [hl]                                    ; $508d: $66
    ld h, [hl]                                    ; $508e: $66
    ld h, c                                       ; $508f: $61
    nop                                           ; $5090: $00
    ld h, c                                       ; $5091: $61
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    add $c6                                       ; $5094: $c6 $c6
    db $f4                                        ; $5096: $f4
    ld d, h                                       ; $5097: $54
    ldh [rP1], a                                  ; $5098: $e0 $00
    ldh [$e8], a                                  ; $509a: $e0 $e8
    jr z, jr_0a7_5086                             ; $509c: $28 $e8

    jr z, @-$36                                   ; $509e: $28 $c8

    ld c, b                                       ; $50a0: $48
    ldh a, [rP1]                                  ; $50a1: $f0 $00
    ld [hl], b                                    ; $50a3: $70
    ldh a, [rSVBK]                                ; $50a4: $f0 $70
    db $ec                                        ; $50a6: $ec
    xor h                                         ; $50a7: $ac
    ret z                                         ; $50a8: $c8

    ret z                                         ; $50a9: $c8

Call_0a7_50aa:
    ret nz                                        ; $50aa: $c0

    inc d                                         ; $50ab: $14
    ret nz                                        ; $50ac: $c0

    add c                                         ; $50ad: $81
    add c                                         ; $50ae: $81
    ld [hl], e                                    ; $50af: $73
    ld c, $06                                     ; $50b0: $0e $06
    ld bc, $3000                                  ; $50b2: $01 $00 $30
    jr nc, jr_0a7_50cb                            ; $50b5: $30 $14

    ld sp, $0731                                  ; $50b7: $31 $31 $07
    ld bc, $0f00                                  ; $50ba: $01 $00 $0f
    sub l                                         ; $50bd: $95
    ld bc, $0606                                  ; $50be: $01 $06 $06
    nop                                           ; $50c1: $00
    ld [bc], a                                    ; $50c2: $02
    ld [bc], a                                    ; $50c3: $02
    ld [hl], b                                    ; $50c4: $70
    ld [hl], b                                    ; $50c5: $70
    ld hl, sp-$08                                 ; $50c6: $f8 $f8
    cp $6e                                        ; $50c8: $fe $6e
    nop                                           ; $50ca: $00

jr_0a7_50cb:
    cp $96                                        ; $50cb: $fe $96
    cp [hl]                                       ; $50cd: $be
    ld c, [hl]                                    ; $50ce: $4e
    inc b                                         ; $50cf: $04
    inc b                                         ; $50d0: $04
    ld [hl], b                                    ; $50d1: $70
    ld [hl], b                                    ; $50d2: $70
    nop                                           ; $50d3: $00
    ld e, [hl]                                    ; $50d4: $5e
    ld a, [hl]                                    ; $50d5: $7e
    dec c                                         ; $50d6: $0d
    ld sp, $544c                                  ; $50d7: $31 $4c $54
    ld a, [hl-]                                   ; $50da: $3a
    ld a, [hl+]                                   ; $50db: $2a
    jr nz, jr_0a7_5116                            ; $50dc: $20 $38

    jr c, jr_0a7_511e                             ; $50de: $38 $3e

    ld c, $25                                     ; $50e0: $0e $25
    nop                                           ; $50e2: $00
    ld e, e                                       ; $50e3: $5b
    ld bc, $0035                                  ; $50e4: $01 $35 $00
    nop                                           ; $50e7: $00
    adc a                                         ; $50e8: $8f
    dec b                                         ; $50e9: $05
    ld d, l                                       ; $50ea: $55
    rrca                                          ; $50eb: $0f
    dec c                                         ; $50ec: $0d
    rrca                                          ; $50ed: $0f
    rlca                                          ; $50ee: $07
    ld b, b                                       ; $50ef: $40
    ld [bc], a                                    ; $50f0: $02
    xor [hl]                                      ; $50f1: $ae
    ld a, [bc]                                    ; $50f2: $0a
    ld a, [bc]                                    ; $50f3: $0a
    nop                                           ; $50f4: $00
    daa                                           ; $50f5: $27
    ld [bc], a                                    ; $50f6: $02
    dec c                                         ; $50f7: $0d
    rlca                                          ; $50f8: $07
    ld b, b                                       ; $50f9: $40
    ld d, a                                       ; $50fa: $57
    dec d                                         ; $50fb: $15
    ld b, $08                                     ; $50fc: $06 $08
    nop                                           ; $50fe: $00
    dec bc                                        ; $50ff: $0b
    ld bc, $0017                                  ; $5100: $01 $17 $00
    nop                                           ; $5103: $00
    cpl                                           ; $5104: $2f
    rlca                                          ; $5105: $07
    dec e                                         ; $5106: $1d
    ld a, [bc]                                    ; $5107: $0a
    xor e                                         ; $5108: $ab
    ld bc, $0b5e                                  ; $5109: $01 $5e $0b
    ld c, $97                                     ; $510c: $0e $97
    ld e, $de                                     ; $510e: $1e $de
    ld b, a                                       ; $5110: $47
    cp [hl]                                       ; $5111: $be
    ld a, [de]                                    ; $5112: $1a
    dec bc                                        ; $5113: $0b
    ld b, $69                                     ; $5114: $06 $69

jr_0a7_5116:
    ld h, $dd                                     ; $5116: $26 $dd
    nop                                           ; $5118: $00
    ld [hl-], a                                   ; $5119: $32
    rst $28                                       ; $511a: $ef
    db $f4                                        ; $511b: $f4
    cp [hl]                                       ; $511c: $be
    ld b, b                                       ; $511d: $40

jr_0a7_511e:
    ld a, [$ea16]                                 ; $511e: $fa $16 $ea
    nop                                           ; $5121: $00
    ld a, h                                       ; $5122: $7c
    rst $18                                       ; $5123: $df
    or $d2                                        ; $5124: $f6 $d2
    add sp, -$48                                  ; $5126: $e8 $b8
    ld l, b                                       ; $5128: $68
    ld b, $c6                                     ; $5129: $06 $c6
    adc b                                         ; $512b: $88
    ld [de], a                                    ; $512c: $12
    add a                                         ; $512d: $87
    ld c, $06                                     ; $512e: $0e $06
    nop                                           ; $5130: $00
    ld b, [hl]                                    ; $5131: $46
    nop                                           ; $5132: $00
    rlca                                          ; $5133: $07
    add b                                         ; $5134: $80
    inc c                                         ; $5135: $0c
    pop bc                                        ; $5136: $c1
    ret z                                         ; $5137: $c8

    and d                                         ; $5138: $a2
    ld b, $80                                     ; $5139: $06 $80
    inc d                                         ; $513b: $14
    add b                                         ; $513c: $80
    add a                                         ; $513d: $87
    call c, Call_0a7_6000                         ; $513e: $dc $00 $60
    ld h, b                                       ; $5141: $60
    ld a, l                                       ; $5142: $7d
    nop                                           ; $5143: $00
    ld e, l                                       ; $5144: $5d
    inc h                                         ; $5145: $24
    inc l                                         ; $5146: $2c
    ld e, h                                       ; $5147: $5c
    ld b, h                                       ; $5148: $44
    ld a, [de]                                    ; $5149: $1a
    ld a, [de]                                    ; $514a: $1a
    ld b, b                                       ; $514b: $40
    nop                                           ; $514c: $00
    ld b, b                                       ; $514d: $40
    ld [$3908], sp                                ; $514e: $08 $08 $39
    add hl, sp                                    ; $5151: $39
    ld a, h                                       ; $5152: $7c
    ld h, h                                       ; $5153: $64
    ld a, h                                       ; $5154: $7c
    nop                                           ; $5155: $00
    ld b, h                                       ; $5156: $44
    ld e, l                                       ; $5157: $5d
    ld e, l                                       ; $5158: $5d
    nop                                           ; $5159: $00
    nop                                           ; $515a: $00
    adc a                                         ; $515b: $8f
    adc a                                         ; $515c: $8f
    rla                                           ; $515d: $17
    nop                                           ; $515e: $00
    inc d                                         ; $515f: $14
    ccf                                           ; $5160: $3f
    ld a, $00                                     ; $5161: $3e $00
    nop                                           ; $5163: $00
    ld [hl], $36                                  ; $5164: $36 $36
    rst $38                                       ; $5166: $ff
    nop                                           ; $5167: $00
    rst $38                                       ; $5168: $ff
    cp a                                          ; $5169: $bf
    adc e                                         ; $516a: $8b
    rst $38                                       ; $516b: $ff
    di                                            ; $516c: $f3
    or $aa                                        ; $516d: $f6 $aa
    rst $28                                       ; $516f: $ef
    nop                                           ; $5170: $00
    sub a                                         ; $5171: $97
    xor $92                                       ; $5172: $ee $92
    ld e, $1e                                     ; $5174: $1e $1e
    rra                                           ; $5176: $1f
    dec e                                         ; $5177: $1d
    ccf                                           ; $5178: $3f
    nop                                           ; $5179: $00
    dec [hl]                                      ; $517a: $35
    rra                                           ; $517b: $1f
    jr jr_0a7_518d                                ; $517c: $18 $0f

    ld c, $0e                                     ; $517e: $0e $0e
    dec c                                         ; $5180: $0d
    ld h, [hl]                                    ; $5181: $66
    nop                                           ; $5182: $00
    ld h, l                                       ; $5183: $65
    ld h, a                                       ; $5184: $67
    ld h, [hl]                                    ; $5185: $66
    adc a                                         ; $5186: $8f
    ld [hl], a                                    ; $5187: $77
    adc [hl]                                      ; $5188: $8e
    halt                                          ; $5189: $76
    add $00                                       ; $518a: $c6 $00
    ld a, [hl-]                                   ; $518c: $3a

jr_0a7_518d:
    sbc [hl]                                      ; $518d: $9e
    ld h, [hl]                                    ; $518e: $66
    ld a, l                                       ; $518f: $7d
    sbc l                                         ; $5190: $9d
    ld a, h                                       ; $5191: $7c
    call c, Call_000_00f3                         ; $5192: $dc $f3 $00
    inc sp                                        ; $5195: $33
    db $eb                                        ; $5196: $eb
    db $eb                                        ; $5197: $eb
    add e                                         ; $5198: $83
    add e                                         ; $5199: $83
    jr jr_0a7_51b4                                ; $519a: $18 $18

    add hl, de                                    ; $519c: $19
    inc b                                         ; $519d: $04
    add hl, de                                    ; $519e: $19
    inc bc                                        ; $519f: $03
    inc bc                                        ; $51a0: $03
    rlca                                          ; $51a1: $07
    ld b, $c0                                     ; $51a2: $06 $c0
    ld bc, $3f7f                                  ; $51a4: $01 $7f $3f
    nop                                           ; $51a7: $00
    inc a                                         ; $51a8: $3c
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    adc b                                         ; $51ab: $88
    adc b                                         ; $51ac: $88
    db $ec                                        ; $51ad: $ec
    db $ec                                        ; $51ae: $ec
    db $f4                                        ; $51af: $f4
    nop                                           ; $51b0: $00
    inc [hl]                                      ; $51b1: $34
    ld hl, sp-$28                                 ; $51b2: $f8 $d8

jr_0a7_51b4:
    db $fc                                        ; $51b4: $fc
    db $fc                                        ; $51b5: $fc
    db $fc                                        ; $51b6: $fc
    inc a                                         ; $51b7: $3c
    db $fc                                        ; $51b8: $fc
    nop                                           ; $51b9: $00
    inc a                                         ; $51ba: $3c
    ld a, [hl]                                    ; $51bb: $7e
    ld c, c                                       ; $51bc: $49
    ld a, [hl]                                    ; $51bd: $7e
    ld [hl], l                                    ; $51be: $75
    ld a, [hl]                                    ; $51bf: $7e
    ld a, c                                       ; $51c0: $79
    rra                                           ; $51c1: $1f
    nop                                           ; $51c2: $00
    ld e, $03                                     ; $51c3: $1e $03
    inc bc                                        ; $51c5: $03
    jr jr_0a7_51e0                                ; $51c6: $18 $18

    jr c, jr_0a7_5202                             ; $51c8: $38 $38

    ld a, [$fa00]                                 ; $51ca: $fa $00 $fa
    rra                                           ; $51cd: $1f
    rst $28                                       ; $51ce: $ef
    cp [hl]                                       ; $51cf: $be
    ld d, [hl]                                    ; $51d0: $56
    sbc h                                         ; $51d1: $9c
    ld l, b                                       ; $51d2: $68
    inc a                                         ; $51d3: $3c
    nop                                           ; $51d4: $00
    call nz, $30f0                                ; $51d5: $c4 $f0 $30
    ld b, $06                                     ; $51d8: $06 $06
    ld [de], a                                    ; $51da: $12
    ld [de], a                                    ; $51db: $12
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    nop                                           ; $51de: $00
    rst $18                                       ; $51df: $df

jr_0a7_51e0:
    xor a                                         ; $51e0: $af
    adc a                                         ; $51e1: $8f
    ld [hl], l                                    ; $51e2: $75
    db $dd                                        ; $51e3: $dd
    ld a, [hl+]                                   ; $51e4: $2a
    adc a                                         ; $51e5: $8f
    nop                                           ; $51e6: $00
    ld [hl], l                                    ; $51e7: $75
    rst $08                                       ; $51e8: $cf
    or l                                          ; $51e9: $b5
    ld [hl], a                                    ; $51ea: $77
    ld c, a                                       ; $51eb: $4f
    cp $f2                                        ; $51ec: $fe $f2
    scf                                           ; $51ee: $37
    nop                                           ; $51ef: $00
    scf                                           ; $51f0: $37
    ld b, b                                       ; $51f1: $40
    ld b, b                                       ; $51f2: $40
    ret nc                                        ; $51f3: $d0

    ret nc                                        ; $51f4: $d0

    ldh [$e0], a                                  ; $51f5: $e0 $e0
    ldh a, [$0b]                                  ; $51f7: $f0 $0b
    ldh a, [$50]                                  ; $51f9: $f0 $50
    ld d, b                                       ; $51fb: $50
    and b                                         ; $51fc: $a0
    ld bc, $4000                                  ; $51fd: $01 $00 $40
    ld d, b                                       ; $5200: $50
    rlca                                          ; $5201: $07

jr_0a7_5202:
    ld e, d                                       ; $5202: $5a
    dec bc                                        ; $5203: $0b
    ld h, b                                       ; $5204: $60
    and b                                         ; $5205: $a0
    ld h, [hl]                                    ; $5206: $66
    rla                                           ; $5207: $17
    ld l, h                                       ; $5208: $6c
    rrca                                          ; $5209: $0f
    call nz, $c0c4                                ; $520a: $c4 $c4 $c0
    ret nz                                        ; $520d: $c0

    ld sp, $3100                                  ; $520e: $31 $00 $31
    rst $38                                       ; $5211: $ff
    rst $38                                       ; $5212: $ff
    rst $38                                       ; $5213: $ff
    ld l, e                                       ; $5214: $6b
    rst $38                                       ; $5215: $ff
    dec e                                         ; $5216: $1d
    rst $18                                       ; $5217: $df
    nop                                           ; $5218: $00
    and e                                         ; $5219: $a3
    ld a, $26                                     ; $521a: $3e $26
    rlca                                          ; $521c: $07
    dec b                                         ; $521d: $05
    ld h, a                                       ; $521e: $67
    ld h, [hl]                                    ; $521f: $66
    ld c, a                                       ; $5220: $4f
    nop                                           ; $5221: $00
    ld c, a                                       ; $5222: $4f
    rrca                                          ; $5223: $0f
    ld c, $07                                     ; $5224: $0e $07
    inc b                                         ; $5226: $04
    daa                                           ; $5227: $27
    inc h                                         ; $5228: $24
    scf                                           ; $5229: $37
    nop                                           ; $522a: $00
    ld [hl], $07                                  ; $522b: $36 $07
    rlca                                          ; $522d: $07
    rst $28                                       ; $522e: $ef
    ld d, $87                                     ; $522f: $16 $87
    ld a, c                                       ; $5231: $79
    rst $00                                       ; $5232: $c7
    nop                                           ; $5233: $00

Jump_0a7_5234:
    ld a, [hl-]                                   ; $5234: $3a
    and e                                         ; $5235: $a3
    ld e, l                                       ; $5236: $5d
    inc sp                                        ; $5237: $33
    call Call_000_16f9                            ; $5238: $cd $f9 $16
    ei                                            ; $523b: $fb
    ld [bc], a                                    ; $523c: $02
    push bc                                       ; $523d: $c5
    db $fd                                        ; $523e: $fd
    ld a, [bc]                                    ; $523f: $0a
    ld bc, $0201                                  ; $5240: $01 $01 $02
    ld bc, $1800                                  ; $5243: $01 $00 $18
    ret nz                                        ; $5246: $c0

    ld bc, $2a00                                  ; $5247: $01 $00 $2a
    dec b                                         ; $524a: $05
    inc bc                                        ; $524b: $03
    ld [bc], a                                    ; $524c: $02
    ld [bc], a                                    ; $524d: $02
    rst $38                                       ; $524e: $ff
    sbc c                                         ; $524f: $99
    rst $38                                       ; $5250: $ff
    inc bc                                        ; $5251: $03
    rst $28                                       ; $5252: $ef
    ld a, a                                       ; $5253: $7f
    ld a, a                                       ; $5254: $7f
    ld d, a                                       ; $5255: $57
    ld d, a                                       ; $5256: $57
    nop                                           ; $5257: $00
    ld h, b                                       ; $5258: $60
    rlca                                          ; $5259: $07
    xor h                                         ; $525a: $ac
    rra                                           ; $525b: $1f
    nop                                           ; $525c: $00
    ld h, a                                       ; $525d: $67
    ld h, a                                       ; $525e: $67
    inc bc                                        ; $525f: $03
    inc bc                                        ; $5260: $03
    add a                                         ; $5261: $87
    add [hl]                                      ; $5262: $86
    jp $00c2                                      ; $5263: $c3 $c2 $00


    sub e                                         ; $5266: $93
    sub e                                         ; $5267: $93
    add b                                         ; $5268: $80
    add b                                         ; $5269: $80
    ret nz                                        ; $526a: $c0

    ret nz                                        ; $526b: $c0

    ld h, b                                       ; $526c: $60
    ld h, b                                       ; $526d: $60
    nop                                           ; $526e: $00
    ldh a, [$b0]                                  ; $526f: $f0 $b0
    or h                                          ; $5271: $b4
    ld [hl], h                                    ; $5272: $74
    db $f4                                        ; $5273: $f4
    inc [hl]                                      ; $5274: $34
    ret nz                                        ; $5275: $c0

    ret nz                                        ; $5276: $c0

    nop                                           ; $5277: $00
    or b                                          ; $5278: $b0
    or b                                          ; $5279: $b0
    jr nc, jr_0a7_52ac                            ; $527a: $30 $30

    nop                                           ; $527c: $00
    nop                                           ; $527d: $00
    ldh [$e0], a                                  ; $527e: $e0 $e0
    nop                                           ; $5280: $00
    add b                                         ; $5281: $80
    add b                                         ; $5282: $80
    sub b                                         ; $5283: $90
    sub b                                         ; $5284: $90
    ret c                                         ; $5285: $d8

    ret c                                         ; $5286: $d8

    ret nz                                        ; $5287: $c0

    ret nz                                        ; $5288: $c0

    nop                                           ; $5289: $00
    ldh [$e0], a                                  ; $528a: $e0 $e0
    ret nz                                        ; $528c: $c0

    ld b, b                                       ; $528d: $40
    add sp, -$18                                  ; $528e: $e8 $e8
    ldh [$e0], a                                  ; $5290: $e0 $e0
    add hl, bc                                    ; $5292: $09
    ret z                                         ; $5293: $c8

    ld c, b                                       ; $5294: $48
    ldh [$e0], a                                  ; $5295: $e0 $e0
    and $2f                                       ; $5297: $e6 $2f
    ld [bc], a                                    ; $5299: $02
    ld [bc], a                                    ; $529a: $02
    call c, Call_000_000f                         ; $529b: $dc $0f $00
    dec b                                         ; $529e: $05
    dec b                                         ; $529f: $05
    dec bc                                        ; $52a0: $0b
    dec bc                                        ; $52a1: $0b
    rlca                                          ; $52a2: $07
    rlca                                          ; $52a3: $07
    rra                                           ; $52a4: $1f
    ld e, $00                                     ; $52a5: $1e $00
    ld a, $39                                     ; $52a7: $3e $39
    ld a, b                                       ; $52a9: $78
    ld h, a                                       ; $52aa: $67
    nop                                           ; $52ab: $00

jr_0a7_52ac:
    nop                                           ; $52ac: $00
    and b                                         ; $52ad: $a0
    and b                                         ; $52ae: $a0
    add b                                         ; $52af: $80
    ret nz                                        ; $52b0: $c0

    nop                                           ; $52b1: $00
    ret nc                                        ; $52b2: $d0

    cp h                                          ; $52b3: $bc
    ld c, h                                       ; $52b4: $4c
    ld a, [hl]                                    ; $52b5: $7e
    and [hl]                                      ; $52b6: $a6
    ld a, [hl-]                                   ; $52b7: $3a
    jp z, $7800                                   ; $52b8: $ca $00 $78

    sbc b                                         ; $52bb: $98
    ld l, d                                       ; $52bc: $6a
    ld d, l                                       ; $52bd: $55
    ld a, a                                       ; $52be: $7f
    ld l, b                                       ; $52bf: $68
    dec a                                         ; $52c0: $3d
    ld a, [hl-]                                   ; $52c1: $3a
    ret nz                                        ; $52c2: $c0

    jr z, jr_0a7_52ca                             ; $52c3: $28 $05

    ld a, [de]                                    ; $52c5: $1a
    inc bc                                        ; $52c6: $03
    and b                                         ; $52c7: $a0
    and b                                         ; $52c8: $a0
    ret nc                                        ; $52c9: $d0

jr_0a7_52ca:
    ret nc                                        ; $52ca: $d0

    cp $0e                                        ; $52cb: $fe $0e
    ld bc, $bcfc                                  ; $52cd: $01 $fc $bc
    ld hl, sp-$68                                 ; $52d0: $f8 $98
    ldh a, [$f0]                                  ; $52d2: $f0 $f0
    jr nc, jr_0a7_52d6                            ; $52d4: $30 $00

jr_0a7_52d6:
    ld bc, $fe80                                  ; $52d6: $01 $80 $fe
    rrca                                          ; $52d9: $0f
    inc b                                         ; $52da: $04
    nop                                           ; $52db: $00
    xor $04                                       ; $52dc: $ee $04
    and $c0                                       ; $52de: $e6 $c0
    cp e                                          ; $52e0: $bb
    inc bc                                        ; $52e1: $03
    ret nz                                        ; $52e2: $c0

    rst $20                                       ; $52e3: $e7
    ld b, d                                       ; $52e4: $42
    ld d, a                                       ; $52e5: $57
    ld [bc], a                                    ; $52e6: $02
    and d                                         ; $52e7: $a2
    jr jr_0a7_52f1                                ; $52e8: $18 $07

    inc h                                         ; $52ea: $24

jr_0a7_52eb:
    dec bc                                        ; $52eb: $0b
    nop                                           ; $52ec: $00
    ld [bc], a                                    ; $52ed: $02
    ld [bc], a                                    ; $52ee: $02
    rlca                                          ; $52ef: $07
    rlca                                          ; $52f0: $07

jr_0a7_52f1:
    dec bc                                        ; $52f1: $0b
    dec bc                                        ; $52f2: $0b
    rrca                                          ; $52f3: $0f
    rrca                                          ; $52f4: $0f
    add a                                         ; $52f5: $87
    ld d, [hl]                                    ; $52f6: $56
    ld bc, $0307                                  ; $52f7: $01 $07 $03
    ld [bc], a                                    ; $52fa: $02
    inc bc                                        ; $52fb: $03
    ld bc, $3a00                                  ; $52fc: $01 $00 $3a
    dec bc                                        ; $52ff: $0b
    di                                            ; $5300: $f3
    dec e                                         ; $5301: $1d
    nop                                           ; $5302: $00
    rlca                                          ; $5303: $07
    ld b, $07                                     ; $5304: $06 $07

jr_0a7_5306:
    ld b, $e3                                     ; $5306: $06 $e3
    ld [c], a                                     ; $5308: $e2
    ld [hl], e                                    ; $5309: $73
    ld d, e                                       ; $530a: $53
    ld [$2939], sp                                ; $530b: $08 $39 $29
    ld a, b                                       ; $530e: $78
    ld c, b                                       ; $530f: $48
    db $10                                        ; $5310: $10
    dec bc                                        ; $5311: $0b
    ld a, $39                                     ; $5312: $3e $39
    rra                                           ; $5314: $1f
    nop                                           ; $5315: $00
    ld d, $3f                                     ; $5316: $16 $3f
    jr c, jr_0a7_5338                             ; $5318: $38 $1e

    dec e                                         ; $531a: $1d
    rrca                                          ; $531b: $0f
    ld a, [bc]                                    ; $531c: $0a
    rlca                                          ; $531d: $07
    ld b, b                                       ; $531e: $40
    rlca                                          ; $531f: $07
    ld h, h                                       ; $5320: $64
    ld [$ec1c], sp                                ; $5321: $08 $1c $ec
    ld a, h                                       ; $5324: $7c
    sbc h                                         ; $5325: $9c
    ld [hl], h                                    ; $5326: $74
    or h                                          ; $5327: $b4
    nop                                           ; $5328: $00
    ldh [$e0], a                                  ; $5329: $e0 $e0
    call z, $becc                                 ; $532b: $cc $cc $be
    or d                                          ; $532e: $b2
    inc a                                         ; $532f: $3c
    inc h                                         ; $5330: $24
    nop                                           ; $5331: $00
    ld e, $1e                                     ; $5332: $1e $1e
    rrca                                          ; $5334: $0f
    rrca                                          ; $5335: $0f
    rrca                                          ; $5336: $0f

jr_0a7_5337:
    dec c                                         ; $5337: $0d

jr_0a7_5338:
    rra                                           ; $5338: $1f
    jr jr_0a7_533b                                ; $5339: $18 $00

jr_0a7_533b:
    ld a, a                                       ; $533b: $7f
    ld [hl], c                                    ; $533c: $71
    ld a, a                                       ; $533d: $7f
    ld a, h                                       ; $533e: $7c
    ld a, a                                       ; $533f: $7f
    ld [hl], h                                    ; $5340: $74
    ccf                                           ; $5341: $3f
    inc h                                         ; $5342: $24
    nop                                           ; $5343: $00
    ld a, $39                                     ; $5344: $3e $39
    cp [hl]                                       ; $5346: $be
    ld d, [hl]                                    ; $5347: $56
    rst $18                                       ; $5348: $df
    cpl                                           ; $5349: $2f
    rst $18                                       ; $534a: $df
    dec hl                                        ; $534b: $2b
    nop                                           ; $534c: $00
    adc a                                         ; $534d: $8f
    ld [hl], c                                    ; $534e: $71
    rra                                           ; $534f: $1f
    jp hl                                         ; $5350: $e9


    rst $18                                       ; $5351: $df
    daa                                           ; $5352: $27
    ld b, a                                       ; $5353: $47
    cp e                                          ; $5354: $bb
    jr nz, jr_0a7_5306                            ; $5355: $20 $af

    ld d, h                                       ; $5357: $54
    or a                                          ; $5358: $b7
    ld c, $61                                     ; $5359: $0e $61
    ld h, c                                       ; $535b: $61
    ld h, b                                       ; $535c: $60
    ld h, b                                       ; $535d: $60
    ld bc, $0124                                  ; $535e: $01 $24 $01
    add e                                         ; $5361: $83
    ld bc, $8500                                  ; $5362: $01 $00 $85
    add l                                         ; $5365: $85
    rst $00                                       ; $5366: $c7
    ld c, $38                                     ; $5367: $0e $38
    jr c, jr_0a7_52eb                             ; $5369: $38 $80

    ld h, b                                       ; $536b: $60

jr_0a7_536c:
    ld bc, $fff6                                  ; $536c: $01 $f6 $ff
    ld sp, hl                                     ; $536f: $f9
    db $fd                                        ; $5370: $fd
    jp z, $8dfe                                   ; $5371: $ca $fe $8d

    nop                                           ; $5374: $00
    ccf                                           ; $5375: $3f
    jr nc, jr_0a7_5337                            ; $5376: $30 $bf

    cp d                                          ; $5378: $ba
    ccf                                           ; $5379: $3f
    ccf                                           ; $537a: $3f
    ccf                                           ; $537b: $3f
    dec a                                         ; $537c: $3d
    nop                                           ; $537d: $00
    rst $18                                       ; $537e: $df
    db $dd                                        ; $537f: $dd
    rst $08                                       ; $5380: $cf
    rst $08                                       ; $5381: $cf
    dec bc                                        ; $5382: $0b
    dec bc                                        ; $5383: $0b
    jr nc, jr_0a7_53b6                            ; $5384: $30 $30

    nop                                           ; $5386: $00
    rst $30                                       ; $5387: $f7
    dec bc                                        ; $5388: $0b
    db $e3                                        ; $5389: $e3
    ld a, l                                       ; $538a: $7d
    di                                            ; $538b: $f3
    dec c                                         ; $538c: $0d
    rst $30                                       ; $538d: $f7
    dec hl                                        ; $538e: $2b
    nop                                           ; $538f: $00
    rst $38                                       ; $5390: $ff
    rst $20                                       ; $5391: $e7
    db $fc                                        ; $5392: $fc
    call c, $fafa                                 ; $5393: $dc $fa $fa
    db $fc                                        ; $5396: $fc
    db $fc                                        ; $5397: $fc
    ld b, h                                       ; $5398: $44
    add c                                         ; $5399: $81
    ld bc, $8500                                  ; $539a: $01 $00 $85
    add l                                         ; $539d: $85
    dec bc                                        ; $539e: $0b
    ld bc, $0f00                                  ; $539f: $01 $00 $0f
    rrca                                          ; $53a2: $0f
    nop                                           ; $53a3: $00
    scf                                           ; $53a4: $37
    ld [hl], $37                                  ; $53a5: $36 $37
    scf                                           ; $53a7: $37
    cp $f1                                        ; $53a8: $fe $f1
    db $fc                                        ; $53aa: $fc
    db $d3                                        ; $53ab: $d3
    nop                                           ; $53ac: $00
    rst $38                                       ; $53ad: $ff
    ld hl, sp-$06                                 ; $53ae: $f8 $fa
    and l                                         ; $53b0: $a5
    ld hl, sp-$19                                 ; $53b1: $f8 $e7
    db $fc                                        ; $53b3: $fc
    ld a, e                                       ; $53b4: $7b
    inc c                                         ; $53b5: $0c

jr_0a7_53b6:
    rst $38                                       ; $53b6: $ff
    sub b                                         ; $53b7: $90
    ld sp, hl                                     ; $53b8: $f9
    ld d, $c2                                     ; $53b9: $16 $c2
    jr jr_0a7_536c                                ; $53bb: $18 $af

    ld a, $ff                                     ; $53bd: $3e $ff
    sbc c                                         ; $53bf: $99
    inc bc                                        ; $53c0: $03
    cp $f6                                        ; $53c1: $fe $f6
    db $fd                                        ; $53c3: $fd
    db $fd                                        ; $53c4: $fd
    jp nz, $92c2                                  ; $53c5: $c2 $c2 $92

    add hl, bc                                    ; $53c8: $09
    sbc $09                                       ; $53c9: $de $09
    or b                                          ; $53cb: $b0
    adc $24                                       ; $53cc: $ce $24
    add b                                         ; $53ce: $80
    db $f4                                        ; $53cf: $f4
    ld bc, $0348                                  ; $53d0: $01 $48 $03
    ldh [$60], a                                  ; $53d3: $e0 $60
    ldh [rNR41], a                                ; $53d5: $e0 $20

jr_0a7_53d7:
    ld [$68e8], sp                                ; $53d7: $08 $e8 $68
    add sp, -$18                                  ; $53da: $e8 $e8
    ld d, h                                       ; $53dc: $54
    inc bc                                        ; $53dd: $03
    db $10                                        ; $53de: $10
    or $36                                        ; $53df: $f6 $36
    jr nz, jr_0a7_53d7                            ; $53e1: $20 $f4

    ld [hl], h                                    ; $53e3: $74
    ld l, [hl]                                    ; $53e4: $6e
    ld bc, $c7c8                                  ; $53e5: $01 $c8 $c7
    rst $00                                       ; $53e8: $c7
    rrca                                          ; $53e9: $0f
    dec bc                                        ; $53ea: $0b
    nop                                           ; $53eb: $00
    jr jr_0a7_540a                                ; $53ec: $18 $1c

    add hl, hl                                    ; $53ee: $29
    add hl, sp                                    ; $53ef: $39
    ld a, h                                       ; $53f0: $7c
    ld c, h                                       ; $53f1: $4c
    jr nc, jr_0a7_5424                            ; $53f2: $30 $30

    nop                                           ; $53f4: $00
    ld b, [hl]                                    ; $53f5: $46
    ld b, [hl]                                    ; $53f6: $46
    ld [$6008], sp                                ; $53f7: $08 $08 $60
    ld h, b                                       ; $53fa: $60
    ld l, h                                       ; $53fb: $6c
    ld l, h                                       ; $53fc: $6c
    add c                                         ; $53fd: $81
    and b                                         ; $53fe: $a0
    dec sp                                        ; $53ff: $3b

Jump_0a7_5400:
    pop bc                                        ; $5400: $c1
    pop bc                                        ; $5401: $c1
    jp $83c3                                      ; $5402: $c3 $c3 $83


    add e                                         ; $5405: $83
    ld [hl+], a                                   ; $5406: $22
    add hl, bc                                    ; $5407: $09
    ld [bc], a                                    ; $5408: $02
    db $10                                        ; $5409: $10

jr_0a7_540a:
    db $10                                        ; $540a: $10
    inc e                                         ; $540b: $1c
    inc e                                         ; $540c: $1c
    ld a, $32                                     ; $540d: $3e $32
    db $10                                        ; $540f: $10
    add hl, bc                                    ; $5410: $09
    rra                                           ; $5411: $1f
    ld bc, $3f18                                  ; $5412: $01 $18 $3f
    inc a                                         ; $5415: $3c
    rrca                                          ; $5416: $0f
    ld c, $17                                     ; $5417: $0e $17
    rla                                           ; $5419: $17
    ld [c], a                                     ; $541a: $e2
    add hl, bc                                    ; $541b: $09
    nop                                           ; $541c: $00
    call nz, Call_000_10c4                        ; $541d: $c4 $c4 $10
    db $10                                        ; $5420: $10
    db $f4                                        ; $5421: $f4
    db $f4                                        ; $5422: $f4
    db $fd                                        ; $5423: $fd

jr_0a7_5424:
    sbc l                                         ; $5424: $9d
    inc h                                         ; $5425: $24

jr_0a7_5426:
    call c, $c02c                                 ; $5426: $dc $2c $c0
    dec de                                        ; $5429: $1b
    ld e, $ee                                     ; $542a: $1e $ee
    jr nz, jr_0a7_5437                            ; $542c: $20 $09

    ret nz                                        ; $542e: $c0

    ret nz                                        ; $542f: $c0

    dec h                                         ; $5430: $25
    db $e3                                        ; $5431: $e3
    db $e3                                        ; $5432: $e3
    cp d                                          ; $5433: $ba
    ld a, [bc]                                    ; $5434: $0a
    ld a, [de]                                    ; $5435: $1a
    ld a, [de]                                    ; $5436: $1a

jr_0a7_5437:
    ld [$300a], sp                                ; $5437: $08 $0a $30
    ld bc, $0400                                  ; $543a: $01 $00 $04
    ld [de], a                                    ; $543d: $12
    ld [de], a                                    ; $543e: $12
    inc bc                                        ; $543f: $03
    inc bc                                        ; $5440: $03
    ld bc, $0001                                  ; $5441: $01 $01 $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    ld h, [hl]                                    ; $5447: $66
    ld h, [hl]                                    ; $5448: $66
    ld b, $06                                     ; $5449: $06 $06

jr_0a7_544b:
    ret nz                                        ; $544b: $c0

    ret nz                                        ; $544c: $c0

    ret nc                                        ; $544d: $d0

    ret nc                                        ; $544e: $d0

    nop                                           ; $544f: $00
    rra                                           ; $5450: $1f
    rra                                           ; $5451: $1f
    rrca                                          ; $5452: $0f
    inc c                                         ; $5453: $0c
    ld e, $19                                     ; $5454: $1e $19
    ld b, $06                                     ; $5456: $06 $06
    nop                                           ; $5458: $00
    ld b, [hl]                                    ; $5459: $46
    ld b, [hl]                                    ; $545a: $46
    db $10                                        ; $545b: $10
    db $10                                        ; $545c: $10
    ldh a, [$f0]                                  ; $545d: $f0 $f0
    ei                                            ; $545f: $fb
    db $db                                        ; $5460: $db
    nop                                           ; $5461: $00
    db $db                                        ; $5462: $db
    xor e                                         ; $5463: $ab
    cp h                                          ; $5464: $bc
    ld c, h                                       ; $5465: $4c
    xor $96                                       ; $5466: $ee $96
    sbc a                                         ; $5468: $9f
    sbc h                                         ; $5469: $9c
    ld [bc], a                                    ; $546a: $02
    ld a, $39                                     ; $546b: $3e $39
    ld a, a                                       ; $546d: $7f
    ld [hl], h                                    ; $546e: $74
    ld a, $39                                     ; $546f: $3e $39
    ld [hl], d                                    ; $5471: $72
    add hl, bc                                    ; $5472: $09
    ld h, a                                       ; $5473: $67
    db $10                                        ; $5474: $10
    ld h, a                                       ; $5475: $67
    ld h, b                                       ; $5476: $60
    ld h, b                                       ; $5477: $60
    ld d, d                                       ; $5478: $52
    jr jr_0a7_54eb                                ; $5479: $18 $70

    or b                                          ; $547b: $b0
    db $e3                                        ; $547c: $e3
    ld h, e                                       ; $547d: $63
    ld [$cccc], sp                                ; $547e: $08 $cc $cc
    adc h                                         ; $5481: $8c
    adc h                                         ; $5482: $8c
    sub a                                         ; $5483: $97
    rra                                           ; $5484: $1f
    jr @+$1a                                      ; $5485: $18 $18

    xor l                                         ; $5487: $ad
    nop                                           ; $5488: $00
    xor l                                         ; $5489: $ad
    rst $18                                       ; $548a: $df
    sub $7f                                       ; $548b: $d6 $7f
    ld a, c                                       ; $548d: $79
    db $fd                                        ; $548e: $fd
    jp nz, Jump_000_00fe                          ; $548f: $c2 $fe $00

    adc l                                         ; $5492: $8d
    add b                                         ; $5493: $80
    add b                                         ; $5494: $80
    ld [$2008], sp                                ; $5495: $08 $08 $20
    jr nz, jr_0a7_5426                            ; $5498: $20 $8c

    nop                                           ; $549a: $00
    adc h                                         ; $549b: $8c
    ret z                                         ; $549c: $c8

    ret z                                         ; $549d: $c8

    ldh [$60], a                                  ; $549e: $e0 $60
    and $66                                       ; $54a0: $e6 $66
    and $00                                       ; $54a2: $e6 $00
    ld h, [hl]                                    ; $54a4: $66
    jr nz, jr_0a7_54c7                            ; $54a5: $20 $20

    halt                                          ; $54a7: $76
    ld d, [hl]                                    ; $54a8: $56
    ld d, d                                       ; $54a9: $52
    ld [hl], d                                    ; $54aa: $72
    jr z, jr_0a7_54ad                             ; $54ab: $28 $00

jr_0a7_54ad:
    jr c, jr_0a7_544b                             ; $54ad: $38 $9c

    sub h                                         ; $54af: $94
    ld l, c                                       ; $54b0: $69
    ld l, c                                       ; $54b1: $69
    ld [bc], a                                    ; $54b2: $02
    ld [bc], a                                    ; $54b3: $02
    ld b, [hl]                                    ; $54b4: $46
    nop                                           ; $54b5: $00
    ld b, [hl]                                    ; $54b6: $46
    jp $cac3                                      ; $54b7: $c3 $c3 $ca


    jp z, $1818                                   ; $54ba: $ca $18 $18

    dec bc                                        ; $54bd: $0b
    nop                                           ; $54be: $00
    dec bc                                        ; $54bf: $0b
    ld e, a                                       ; $54c0: $5f
    ld e, [hl]                                    ; $54c1: $5e
    ld a, a                                       ; $54c2: $7f
    ld a, d                                       ; $54c3: $7a
    cp $c9                                        ; $54c4: $fe $c9
    ld a, b                                       ; $54c6: $78

jr_0a7_54c7:
    db $10                                        ; $54c7: $10
    ld [hl], a                                    ; $54c8: $77
    ld b, c                                       ; $54c9: $41
    ld b, c                                       ; $54ca: $41
    xor h                                         ; $54cb: $ac
    ld a, [de]                                    ; $54cc: $1a
    ldh [$60], a                                  ; $54cd: $e0 $60
    add $46                                       ; $54cf: $c6 $46
    nop                                           ; $54d1: $00
    or $f6                                        ; $54d2: $f6 $f6
    ldh a, [$30]                                  ; $54d4: $f0 $30
    ldh a, [rNR10]                                ; $54d6: $f0 $10
    ld hl, sp-$58                                 ; $54d8: $f8 $a8
    ld [bc], a                                    ; $54da: $02
    ld a, [$f09a]                                 ; $54db: $fa $9a $f0
    ld [hl], b                                    ; $54de: $70
    ret nz                                        ; $54df: $c0

    ret nz                                        ; $54e0: $c0

    call nz, Call_0a7_601a                        ; $54e1: $c4 $1a $60
    nop                                           ; $54e4: $00
    ld h, b                                       ; $54e5: $60
    or b                                          ; $54e6: $b0
    ret nc                                        ; $54e7: $d0

    ld [c], a                                     ; $54e8: $e2
    and d                                         ; $54e9: $a2
    ld c, d                                       ; $54ea: $4a

jr_0a7_54eb:
    ld c, d                                       ; $54eb: $4a
    inc e                                         ; $54ec: $1c
    nop                                           ; $54ed: $00
    inc d                                         ; $54ee: $14
    inc h                                         ; $54ef: $24
    inc a                                         ; $54f0: $3c
    ld a, e                                       ; $54f1: $7b
    ld a, e                                       ; $54f2: $7b
    jr nz, @+$22                                  ; $54f3: $20 $20

    ld a, a                                       ; $54f5: $7f
    nop                                           ; $54f6: $00
    ld l, c                                       ; $54f7: $69
    ld [hl], e                                    ; $54f8: $73
    ld l, l                                       ; $54f9: $6d
    ld a, [$ffd4]                                 ; $54fa: $fa $d4 $ff
    db $e3                                        ; $54fd: $e3
    ld e, [hl]                                    ; $54fe: $5e
    db $10                                        ; $54ff: $10
    ld e, [hl]                                    ; $5500: $5e
    inc c                                         ; $5501: $0c
    inc c                                         ; $5502: $0c
    or [hl]                                       ; $5503: $b6
    ld [$0145], sp                                ; $5504: $08 $45 $01
    and d                                         ; $5507: $a2
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    ld [hl], c                                    ; $550a: $71
    jr nz, @+$24                                  ; $550b: $20 $22

    nop                                           ; $550d: $00
    sub l                                         ; $550e: $95
    nop                                           ; $550f: $00
    ld b, e                                       ; $5510: $43
    ld bc, $8510                                  ; $5511: $01 $10 $85
    ld bc, $ec0b                                  ; $5514: $01 $0b $ec
    ld b, $34                                     ; $5517: $06 $34
    inc [hl]                                      ; $5519: $34
    ld a, a                                       ; $551a: $7f
    ld c, e                                       ; $551b: $4b
    nop                                           ; $551c: $00
    ld l, a                                       ; $551d: $6f
    ld d, e                                       ; $551e: $53
    ld a, [hl]                                    ; $551f: $7e
    ld h, [hl]                                    ; $5520: $66
    jr jr_0a7_553b                                ; $5521: $18 $18

    add hl, bc                                    ; $5523: $09
    add hl, bc                                    ; $5524: $09
    sub b                                         ; $5525: $90
    ld e, [hl]                                    ; $5526: $5e
    ld a, [de]                                    ; $5527: $1a
    ld h, $26                                     ; $5528: $26 $26
    ld [$1108], a                                 ; $552a: $ea $08 $11
    ld de, $1b1b                                  ; $552d: $11 $1b $1b
    nop                                           ; $5530: $00
    dec b                                         ; $5531: $05
    dec b                                         ; $5532: $05
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    or d                                          ; $5535: $b2
    or d                                          ; $5536: $b2
    inc sp                                        ; $5537: $33
    inc sp                                        ; $5538: $33
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00

jr_0a7_553b:
    nop                                           ; $553b: $00
    sbc b                                         ; $553c: $98
    sbc b                                         ; $553d: $98
    ret c                                         ; $553e: $d8

    ret c                                         ; $553f: $d8

    and c                                         ; $5540: $a1
    and c                                         ; $5541: $a1
    nop                                           ; $5542: $00
    ldh [$e0], a                                  ; $5543: $e0 $e0
    adc b                                         ; $5545: $88
    adc b                                         ; $5546: $88
    ld a, [de]                                    ; $5547: $1a
    ld a, [de]                                    ; $5548: $1a
    ld a, a                                       ; $5549: $7f
    ld a, a                                       ; $554a: $7f
    nop                                           ; $554b: $00
    ld e, a                                       ; $554c: $5f
    ld d, d                                       ; $554d: $52
    dec sp                                        ; $554e: $3b
    ld h, $32                                     ; $554f: $26 $32
    dec l                                         ; $5551: $2d
    ld hl, sp-$09                                 ; $5552: $f8 $f7
    nop                                           ; $5554: $00
    ld a, [hl]                                    ; $5555: $7e
    ld b, l                                       ; $5556: $45
    ld bc, $0701                                  ; $5557: $01 $01 $07
    ld b, $67                                     ; $555a: $06 $67

jr_0a7_555c:
    ld h, [hl]                                    ; $555c: $66
    nop                                           ; $555d: $00
    add e                                         ; $555e: $83
    add e                                         ; $555f: $83
    add sp, -$18                                  ; $5560: $e8 $e8
    db $f4                                        ; $5562: $f4
    inc [hl]                                      ; $5563: $34
    inc a                                         ; $5564: $3c
    call c, Call_0a7_7c00                         ; $5565: $dc $00 $7c
    xor h                                         ; $5568: $ac
    db $fc                                        ; $5569: $fc
    rst $20                                       ; $556a: $e7
    ld a, a                                       ; $556b: $7f
    ld a, b                                       ; $556c: $78
    ld a, [hl]                                    ; $556d: $7e
    ld a, c                                       ; $556e: $79
    nop                                           ; $556f: $00
    rst $38                                       ; $5570: $ff
    db $e4                                        ; $5571: $e4
    ld a, a                                       ; $5572: $7f
    ld a, e                                       ; $5573: $7b
    ccf                                           ; $5574: $3f
    ld a, $5e                                     ; $5575: $3e $5e
    ld e, c                                       ; $5577: $59
    nop                                           ; $5578: $00
    cpl                                           ; $5579: $2f
    inc l                                         ; $557a: $2c
    inc a                                         ; $557b: $3c
    call z, $7e8e                                 ; $557c: $cc $8e $7e
    ld e, h                                       ; $557f: $5c
    xor h                                         ; $5580: $ac
    nop                                           ; $5581: $00
    jr c, jr_0a7_555c                             ; $5582: $38 $d8

    cp e                                          ; $5584: $bb
    ld l, e                                       ; $5585: $6b
    or $36                                        ; $5586: $f6 $36
    ld [hl], h                                    ; $5588: $74
    or h                                          ; $5589: $b4
    nop                                           ; $558a: $00
    ld hl, sp+$58                                 ; $558b: $f8 $58
    db $fc                                        ; $558d: $fc
    di                                            ; $558e: $f3
    ld hl, sp-$29                                 ; $558f: $f8 $d7
    db $fc                                        ; $5591: $fc
    ei                                            ; $5592: $fb
    nop                                           ; $5593: $00
    db $fc                                        ; $5594: $fc
    and e                                         ; $5595: $a3
    ld a, [$fde5]                                 ; $5596: $fa $e5 $fd
    ld a, [$d5fb]                                 ; $5599: $fa $fb $d5
    nop                                           ; $559c: $00
    di                                            ; $559d: $f3
    inc c                                         ; $559e: $0c
    ldh [$a0], a                                  ; $559f: $e0 $a0
    and $66                                       ; $55a1: $e6 $66
    db $e4                                        ; $55a3: $e4
    and h                                         ; $55a4: $a4
    ld [bc], a                                    ; $55a5: $02
    ldh a, [rSVBK]                                ; $55a6: $f0 $70
    ld h, b                                       ; $55a8: $60
    and b                                         ; $55a9: $a0
    ld [hl], b                                    ; $55aa: $70

Call_0a7_55ab:
    or b                                          ; $55ab: $b0
    ldh [rSB], a                                  ; $55ac: $e0 $01
    ldh [rP1], a                                  ; $55ae: $e0 $00
    rst $00                                       ; $55b0: $c7
    cp c                                          ; $55b1: $b9
    db $fd                                        ; $55b2: $fd
    push bc                                       ; $55b3: $c5
    cp $ee                                        ; $55b4: $fe $ee
    jr c, jr_0a7_55f0                             ; $55b6: $38 $38

    nop                                           ; $55b8: $00
    ld [$6308], sp                                ; $55b9: $08 $08 $63
    ld h, e                                       ; $55bc: $63
    ld h, d                                       ; $55bd: $62
    ld h, d                                       ; $55be: $62
    nop                                           ; $55bf: $00
    nop                                           ; $55c0: $00
    rrca                                          ; $55c1: $0f
    ret nz                                        ; $55c2: $c0

    ret nz                                        ; $55c3: $c0

    ld c, h                                       ; $55c4: $4c
    ld c, h                                       ; $55c5: $4c
    jr c, jr_0a7_55d1                             ; $55c6: $38 $09

    add h                                         ; $55c8: $84
    add hl, bc                                    ; $55c9: $09
    ldh [rNR12], a                                ; $55ca: $e0 $12
    scf                                           ; $55cc: $37
    dec b                                         ; $55cd: $05
    db $e4                                        ; $55ce: $e4
    db $ec                                        ; $55cf: $ec
    ld a, [hl+]                                   ; $55d0: $2a

jr_0a7_55d1:
    and l                                         ; $55d1: $a5
    rrca                                          ; $55d2: $0f
    ld a, [hl+]                                   ; $55d3: $2a
    dec bc                                        ; $55d4: $0b
    ret nz                                        ; $55d5: $c0

    ret nz                                        ; $55d6: $c0

    ld b, b                                       ; $55d7: $40
    ld a, [hl-]                                   ; $55d8: $3a
    dec bc                                        ; $55d9: $0b
    dec bc                                        ; $55da: $0b
    nop                                           ; $55db: $00
    dec b                                         ; $55dc: $05
    dec b                                         ; $55dd: $05
    rrca                                          ; $55de: $0f
    ld c, $0b                                     ; $55df: $0e $0b
    ld a, [bc]                                    ; $55e1: $0a
    add a                                         ; $55e2: $87
    add l                                         ; $55e3: $85
    nop                                           ; $55e4: $00
    ld b, d                                       ; $55e5: $42
    ld b, d                                       ; $55e6: $42
    ld d, c                                       ; $55e7: $51
    ld d, c                                       ; $55e8: $51
    ld hl, sp-$48                                 ; $55e9: $f8 $b8
    sbc c                                         ; $55eb: $99
    sbc c                                         ; $55ec: $99
    nop                                           ; $55ed: $00
    reti                                          ; $55ee: $d9


    ld e, c                                       ; $55ef: $59

jr_0a7_55f0:
    ld [hl], b                                    ; $55f0: $70
    or b                                          ; $55f1: $b0
    ld [hl-], a                                   ; $55f2: $32
    jp nc, $20e0                                  ; $55f3: $d2 $e0 $20

    inc c                                         ; $55f6: $0c
    ret c                                         ; $55f7: $d8

    ret c                                         ; $55f8: $d8

    dec de                                        ; $55f9: $1b
    dec de                                        ; $55fa: $1b
    ld e, $2f                                     ; $55fb: $1e $2f
    ld a, [hl-]                                   ; $55fd: $3a
    dec bc                                        ; $55fe: $0b
    rrca                                          ; $55ff: $0f
    inc c                                         ; $5600: $0c

Call_0a7_5601:
    nop                                           ; $5601: $00

Jump_0a7_5602:
    ld a, [hl]                                    ; $5602: $7e
    ld a, l                                       ; $5603: $7d
    ld a, [hl]                                    ; $5604: $7e
    ld a, l                                       ; $5605: $7d
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    jr z, jr_0a7_5632                             ; $5608: $28 $28

    and b                                         ; $560a: $a0
    call z, $9a04                                 ; $560b: $cc $04 $9a
    ld a, h                                       ; $560e: $7c
    dec b                                         ; $560f: $05
    ld e, [hl]                                    ; $5610: $5e
    ccf                                           ; $5611: $3f
    rst $08                                       ; $5612: $cf
    sbc [hl]                                      ; $5613: $9e
    ld l, d                                       ; $5614: $6a
    ld [bc], a                                    ; $5615: $02
    ld l, h                                       ; $5616: $6c
    ld l, e                                       ; $5617: $6b
    inc e                                         ; $5618: $1c
    inc de                                        ; $5619: $13
    ld a, $3d                                     ; $561a: $3e $3d
    ld c, $03                                     ; $561c: $0e $03
    ld [hl], e                                    ; $561e: $73
    nop                                           ; $561f: $00
    ccf                                           ; $5620: $3f
    ccf                                           ; $5621: $3f
    cp $ee                                        ; $5622: $fe $ee
    inc c                                         ; $5624: $0c
    inc c                                         ; $5625: $0c
    ldh [rLCDC], a                                ; $5626: $e0 $40
    inc bc                                        ; $5628: $03
    ld a, h                                       ; $5629: $7c
    cp h                                          ; $562a: $bc
    ld a, d                                       ; $562b: $7a
    or d                                          ; $562c: $b2
    db $f4                                        ; $562d: $f4
    db $f4                                        ; $562e: $f4
    jp c, $ea03                                   ; $562f: $da $03 $ea

jr_0a7_5632:
    dec b                                         ; $5632: $05
    add b                                         ; $5633: $80
    cp [hl]                                       ; $5634: $be
    dec e                                         ; $5635: $1d
    nop                                           ; $5636: $00
    nop                                           ; $5637: $00
    ld d, l                                       ; $5638: $55
    ld d, l                                       ; $5639: $55
    dec sp                                        ; $563a: $3b
    dec sp                                        ; $563b: $3b
    ccf                                           ; $563c: $3f
    nop                                           ; $563d: $00
    ld a, $0f                                     ; $563e: $3e $0f
    inc c                                         ; $5640: $0c
    ld c, a                                       ; $5641: $4f
    ld c, [hl]                                    ; $5642: $4e
    rra                                           ; $5643: $1f
    rra                                           ; $5644: $1f
    add hl, bc                                    ; $5645: $09
    ld bc, $0709                                  ; $5646: $01 $09 $07
    ld b, $03                                     ; $5649: $06 $03
    ld [bc], a                                    ; $564b: $02
    and e                                         ; $564c: $a3
    and e                                         ; $564d: $a3
    ret c                                         ; $564e: $d8

    inc bc                                        ; $564f: $03
    add [hl]                                      ; $5650: $86
    sbc [hl]                                      ; $5651: $9e
    ld [bc], a                                    ; $5652: $02
    dec bc                                        ; $5653: $0b
    ld a, [bc]                                    ; $5654: $0a
    dec b                                         ; $5655: $05
    dec b                                         ; $5656: $05
    and b                                         ; $5657: $a0
    ld c, b                                       ; $5658: $48
    ldh a, [$0d]                                  ; $5659: $f0 $0d
    add $00                                       ; $565b: $c6 $00
    add $e0                                       ; $565d: $c6 $e0
    jr nz, @+$32                                  ; $565f: $20 $30

    ldh a, [$b8]                                  ; $5661: $f0 $b8
    ld c, b                                       ; $5663: $48
    adc b                                         ; $5664: $88
    db $10                                        ; $5665: $10
    ld a, b                                       ; $5666: $78
    ret c                                         ; $5667: $d8

    xor b                                         ; $5668: $a8
    and b                                         ; $5669: $a0
    rrca                                          ; $566a: $0f
    ld d, $16                                     ; $566b: $16 $16
    rla                                           ; $566d: $17
    rla                                           ; $566e: $17
    db $10                                        ; $566f: $10
    ld e, a                                       ; $5670: $5f
    ld e, h                                       ; $5671: $5c
    ccf                                           ; $5672: $3f
    jr z, jr_0a7_5677                             ; $5673: $28 $02

    cp a                                          ; $5675: $bf
    and b                                         ; $5676: $a0

jr_0a7_5677:
    ld de, $0011                                  ; $5677: $11 $11 $00
    ld a, h                                       ; $567a: $7c
    ld a, h                                       ; $567b: $7c
    cp $d6                                        ; $567c: $fe $d6
    or $8a                                        ; $567e: $f6 $8a
    ld b, a                                       ; $5680: $47
    add hl, sp                                    ; $5681: $39
    nop                                           ; $5682: $00
    and e                                         ; $5683: $a3
    ld e, l                                       ; $5684: $5d
    inc de                                        ; $5685: $13
    db $ed                                        ; $5686: $ed
    and [hl]                                      ; $5687: $a6
    ld e, d                                       ; $5688: $5a
    or b                                          ; $5689: $b0
    ld d, b                                       ; $568a: $50
    nop                                           ; $568b: $00
    or b                                          ; $568c: $b0
    ld d, b                                       ; $568d: $50
    ld [hl], b                                    ; $568e: $70
    or b                                          ; $568f: $b0
    ldh [$60], a                                  ; $5690: $e0 $60
    add b                                         ; $5692: $80
    add b                                         ; $5693: $80
    add b                                         ; $5694: $80
    nop                                           ; $5695: $00
    inc e                                         ; $5696: $1c
    ld a, a                                       ; $5697: $7f
    ld [hl], l                                    ; $5698: $75
    ld e, a                                       ; $5699: $5f
    ld e, b                                       ; $569a: $58
    cp a                                          ; $569b: $bf
    cp d                                          ; $569c: $ba
    rst $18                                       ; $569d: $df
    jr @-$1f                                      ; $569e: $18 $df

    ld [hl], $36                                  ; $56a0: $36 $36
    xor [hl]                                      ; $56a2: $ae
    ld c, $10                                     ; $56a3: $0e $10
    dec b                                         ; $56a5: $05
    dec b                                         ; $56a6: $05
    rst $38                                       ; $56a7: $ff
    cp [hl]                                       ; $56a8: $be
    inc c                                         ; $56a9: $0c
    ret nz                                        ; $56aa: $c0

    ld b, b                                       ; $56ab: $40
    ret c                                         ; $56ac: $d8

    ret c                                         ; $56ad: $d8

    db $ec                                        ; $56ae: $ec
    ld c, $4a                                     ; $56af: $0e $4a
    ld c, $1f                                     ; $56b1: $0e $1f
    ld e, $20                                     ; $56b3: $1e $20
    dec bc                                        ; $56b5: $0b
    dec bc                                        ; $56b6: $0b
    db $fc                                        ; $56b7: $fc
    dec bc                                        ; $56b8: $0b
    ld h, b                                       ; $56b9: $60
    ld b, b                                       ; $56ba: $40
    ldh [$e0], a                                  ; $56bb: $e0 $e0
    ld hl, sp+$00                                 ; $56bd: $f8 $00
    ret nz                                        ; $56bf: $c0

    sbc $2e                                       ; $56c0: $de $2e
    rst $18                                       ; $56c2: $df
    and a                                         ; $56c3: $a7
    xor $96                                       ; $56c4: $ee $96
    add a                                         ; $56c6: $87
    nop                                           ; $56c7: $00
    ld a, c                                       ; $56c8: $79
    rst $20                                       ; $56c9: $e7
    add hl, de                                    ; $56ca: $19
    di                                            ; $56cb: $f3
    call $8ff3                                    ; $56cc: $cd $f3 $8f
    xor e                                         ; $56cf: $ab
    ld bc, $e357                                  ; $56d0: $01 $57 $e3
    sbc l                                         ; $56d3: $9d
    ld b, $06                                     ; $56d4: $06 $06
    add [hl]                                      ; $56d6: $86
    add [hl]                                      ; $56d7: $86
    cp [hl]                                       ; $56d8: $be
    add hl, bc                                    ; $56d9: $09
    nop                                           ; $56da: $00
    sbc b                                         ; $56db: $98
    sbc b                                         ; $56dc: $98
    nop                                           ; $56dd: $00
    nop                                           ; $56de: $00
    jr nz, jr_0a7_5701                            ; $56df: $20 $20

    ld bc, $0001                                  ; $56e1: $01 $01 $00
    ld b, e                                       ; $56e4: $43
    cp l                                          ; $56e5: $bd
    ld c, $f2                                     ; $56e6: $0e $f2
    adc $3e                                       ; $56e8: $ce $3e
    ldh a, [rLCDC]                                ; $56ea: $f0 $40
    inc [hl]                                      ; $56ec: $34
    ldh a, [$50]                                  ; $56ed: $f0 $50
    and [hl]                                      ; $56ef: $a6
    inc l                                         ; $56f0: $2c
    add sp, $1c                                   ; $56f1: $e8 $1c
    inc c                                         ; $56f3: $0c
    ld bc, $0100                                  ; $56f4: $01 $00 $01
    ld bc, $8680                                  ; $56f7: $01 $80 $86
    inc c                                         ; $56fa: $0c
    ld [$4b08], sp                                ; $56fb: $08 $08 $4b
    ld c, e                                       ; $56fe: $4b
    jr c, jr_0a7_5729                             ; $56ff: $38 $28

jr_0a7_5701:
    ld a, $00                                     ; $5701: $3e $00
    ld d, $f7                                     ; $5703: $16 $f7
    jp hl                                         ; $5705: $e9


    ld a, [c]                                     ; $5706: $f2
    call z, $bbc7                                 ; $5707: $cc $c7 $bb
    dec bc                                        ; $570a: $0b
    ld bc, $430b                                  ; $570b: $01 $0b $43
    ld b, d                                       ; $570e: $42
    rrca                                          ; $570f: $0f
    rrca                                          ; $5710: $0f
    dec hl                                        ; $5711: $2b
    ld a, [hl+]                                   ; $5712: $2a
    halt                                          ; $5713: $76
    add hl, bc                                    ; $5714: $09
    nop                                           ; $5715: $00
    inc c                                         ; $5716: $0c
    inc c                                         ; $5717: $0c
    ld b, b                                       ; $5718: $40
    ld b, b                                       ; $5719: $40
    jp $d7bd                                      ; $571a: $c3 $bd $d7


    dec hl                                        ; $571d: $2b
    ld [bc], a                                    ; $571e: $02
    rst $38                                       ; $571f: $ff
    sub e                                         ; $5720: $93
    db $fc                                        ; $5721: $fc
    ld l, h                                       ; $5722: $6c
    db $fc                                        ; $5723: $fc
    cp h                                          ; $5724: $bc
    and $1c                                       ; $5725: $e6 $1c
    rrca                                          ; $5727: $0f
    db $10                                        ; $5728: $10

jr_0a7_5729:
    inc c                                         ; $5729: $0c
    inc c                                         ; $572a: $0c
    dec bc                                        ; $572b: $0b
    ld a, [$6715]                                 ; $572c: $fa $15 $67
    rlca                                          ; $572f: $07
    dec b                                         ; $5730: $05
    scf                                           ; $5731: $37
    nop                                           ; $5732: $00
    ld [hl], $33                                  ; $5733: $36 $33
    ld [hl-], a                                   ; $5735: $32
    db $e4                                        ; $5736: $e4
    ld h, h                                       ; $5737: $64
    ldh a, [rSVBK]                                ; $5738: $f0 $70
    ld l, h                                       ; $573a: $6c
    inc b                                         ; $573b: $04
    adc h                                         ; $573c: $8c
    cp l                                          ; $573d: $bd
    ld d, l                                       ; $573e: $55
    sub a                                         ; $573f: $97
    ld l, a                                       ; $5740: $6f
    add h                                         ; $5741: $84
    nop                                           ; $5742: $00
    ld l, l                                       ; $5743: $6d
    rst $30                                       ; $5744: $f7
    inc b                                         ; $5745: $04
    ld l, c                                       ; $5746: $69
    db $fc                                        ; $5747: $fc
    rst $20                                       ; $5748: $e7
    ccf                                           ; $5749: $3f
    jr c, jr_0a7_575e                             ; $574a: $38 $12

    inc bc                                        ; $574c: $03
    ld h, h                                       ; $574d: $64
    ccf                                           ; $574e: $3f
    ret nz                                        ; $574f: $c0

    jr nc, jr_0a7_5753                            ; $5750: $30 $01

    db $10                                        ; $5752: $10

jr_0a7_5753:
    ld a, [bc]                                    ; $5753: $0a
    ld hl, sp-$40                                 ; $5754: $f8 $c0
    xor $de                                       ; $5756: $ee $de
    db $fc                                        ; $5758: $fc
    sbc h                                         ; $5759: $9c
    jr nz, jr_0a7_57cc                            ; $575a: $20 $70

    ld [hl], b                                    ; $575c: $70
    and c                                         ; $575d: $a1

jr_0a7_575e:
    ld l, $30                                     ; $575e: $2e $30
    jr nc, jr_0a7_579a                            ; $5760: $30 $38

    jr z, @+$14                                   ; $5762: $28 $12

    nop                                           ; $5764: $00
    ld [de], a                                    ; $5765: $12
    jr c, jr_0a7_5790                             ; $5766: $38 $28

    inc e                                         ; $5768: $1c
    inc d                                         ; $5769: $14
    inc l                                         ; $576a: $2c
    inc l                                         ; $576b: $2c
    ld h, $49                                     ; $576c: $26 $49
    ld h, $c8                                     ; $576e: $26 $c8
    inc e                                         ; $5770: $1c
    ld bc, $da01                                  ; $5771: $01 $01 $da
    inc c                                         ; $5774: $0c
    ld c, $0d                                     ; $5775: $0e $0d
    jr nc, jr_0a7_577e                            ; $5777: $30 $05

    nop                                           ; $5779: $00
    ld [hl], a                                    ; $577a: $77
    ld [hl], b                                    ; $577b: $70
    ld c, a                                       ; $577c: $4f
    ld [hl], e                                    ; $577d: $73

jr_0a7_577e:
    ld l, h                                       ; $577e: $6c
    dec sp                                        ; $577f: $3b
    dec [hl]                                      ; $5780: $35
    dec de                                        ; $5781: $1b
    ld [hl], h                                    ; $5782: $74
    dec d                                         ; $5783: $15
    inc l                                         ; $5784: $2c
    jr jr_0a7_57d9                                ; $5785: $18 $52

    inc b                                         ; $5787: $04
    ret nz                                        ; $5788: $c0

    rlca                                          ; $5789: $07
    ldh a, [$3e]                                  ; $578a: $f0 $3e
    jr nc, @-$5e                                  ; $578c: $30 $a0

    and b                                         ; $578e: $a0
    nop                                           ; $578f: $00

jr_0a7_5790:
    ld b, $05                                     ; $5790: $06 $05
    rrca                                          ; $5792: $0f
    ld a, [bc]                                    ; $5793: $0a
    rra                                           ; $5794: $1f
    ld e, $3f                                     ; $5795: $1e $3f
    ld a, $00                                     ; $5797: $3e $00
    ccf                                           ; $5799: $3f

jr_0a7_579a:
    add hl, sp                                    ; $579a: $39
    rra                                           ; $579b: $1f
    rra                                           ; $579c: $1f
    rra                                           ; $579d: $1f
    rla                                           ; $579e: $17
    ld b, $06                                     ; $579f: $06 $06
    nop                                           ; $57a1: $00
    ld [hl], b                                    ; $57a2: $70
    and b                                         ; $57a3: $a0
    ld a, $de                                     ; $57a4: $3e $de
    dec a                                         ; $57a6: $3d
    reti                                          ; $57a7: $d9


    ld a, [$097a]                                 ; $57a8: $fa $7a $09
    db $f4                                        ; $57ab: $f4
    db $f4                                        ; $57ac: $f4
    ldh a, [$b0]                                  ; $57ad: $f0 $b0
    dec b                                         ; $57af: $05
    rra                                           ; $57b0: $1f
    jr nz, jr_0a7_57d3                            ; $57b1: $20 $20

    ld [hl-], a                                   ; $57b3: $32
    nop                                           ; $57b4: $00
    nop                                           ; $57b5: $00
    ldh a, [$f8]                                  ; $57b6: $f0 $f8
    cp b                                          ; $57b8: $b8
    ld hl, sp+$48                                 ; $57b9: $f8 $48
    ld hl, sp-$78                                 ; $57bb: $f8 $88
    ld hl, sp+$00                                 ; $57bd: $f8 $00

Jump_0a7_57bf:
    ret c                                         ; $57bf: $d8

    ld e, $19                                     ; $57c0: $1e $19
    ld a, [de]                                    ; $57c2: $1a
    dec d                                         ; $57c3: $15
    inc a                                         ; $57c4: $3c
    inc sp                                        ; $57c5: $33
    ld [hl], c                                    ; $57c6: $71
    nop                                           ; $57c7: $00
    ld c, [hl]                                    ; $57c8: $4e
    ld [hl], e                                    ; $57c9: $73
    ld l, l                                       ; $57ca: $6d
    dec a                                         ; $57cb: $3d

jr_0a7_57cc:
    ld [hl-], a                                   ; $57cc: $32
    add hl, sp                                    ; $57cd: $39
    ld [hl], $5b                                  ; $57ce: $36 $5b
    ld bc, $3f54                                  ; $57d0: $01 $54 $3f

jr_0a7_57d3:
    dec sp                                        ; $57d3: $3b
    rra                                           ; $57d4: $1f
    inc e                                         ; $57d5: $1c
    ld c, $0e                                     ; $57d6: $0e $0e
    sub h                                         ; $57d8: $94

jr_0a7_57d9:
    rrca                                          ; $57d9: $0f
    ret nz                                        ; $57da: $c0

    sbc h                                         ; $57db: $9c
    rrca                                          ; $57dc: $0f
    ld l, d                                       ; $57dd: $6a
    inc c                                         ; $57de: $0c
    jr nz, jr_0a7_5801                            ; $57df: $20 $20

    inc b                                         ; $57e1: $04
    inc b                                         ; $57e2: $04
    inc c                                         ; $57e3: $0c
    inc c                                         ; $57e4: $0c
    and b                                         ; $57e5: $a0
    ld [hl], d                                    ; $57e6: $72
    inc b                                         ; $57e7: $04
    jr nz, @-$48                                  ; $57e8: $20 $b6

    ld bc, $d8d0                                  ; $57ea: $01 $d0 $d8
    xor b                                         ; $57ed: $a8
    or b                                          ; $57ee: $b0
    ld d, b                                       ; $57ef: $50
    ld [hl], h                                    ; $57f0: $74
    ldh a, [$e0]                                  ; $57f1: $f0 $e0
    inc bc                                        ; $57f3: $03
    call nc, $680d                                ; $57f4: $d4 $0d $68
    ld a, [bc]                                    ; $57f7: $0a
    ld h, b                                       ; $57f8: $60
    ld bc, $0000                                  ; $57f9: $01 $00 $00
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00
    add hl, de                                    ; $57fe: $19
    add hl, de                                    ; $57ff: $19
    dec de                                        ; $5800: $1b

jr_0a7_5801:
    dec de                                        ; $5801: $1b
    rrca                                          ; $5802: $0f
    inc c                                         ; $5803: $0c
    ld c, $0d                                     ; $5804: $0e $0d
    jr nz, @-$70                                  ; $5806: $20 $8e

    adc l                                         ; $5808: $8d
    inc d                                         ; $5809: $14
    ld a, [de]                                    ; $580a: $1a
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    ld e, h                                       ; $580d: $5c
    ld e, h                                       ; $580e: $5c
    db $fc                                        ; $580f: $fc
    ld e, $a4                                     ; $5810: $1e $a4
    ld e, b                                       ; $5812: $58
    ld e, b                                       ; $5813: $58
    ld hl, sp+$49                                 ; $5814: $f8 $49
    ld d, b                                       ; $5816: $50
    ld b, $da                                     ; $5817: $06 $da
    inc [hl]                                      ; $5819: $34
    ld e, $06                                     ; $581a: $1e $06
    jr nz, jr_0a7_581e                            ; $581c: $20 $00

jr_0a7_581e:
    ldh a, [$50]                                  ; $581e: $f0 $50
    cp $3e                                        ; $5820: $fe $3e
    cp $2e                                        ; $5822: $fe $2e
    ccf                                           ; $5824: $3f
    jp Jump_0a7_7f00                              ; $5825: $c3 $00 $7f


    add l                                         ; $5828: $85
    ld l, a                                       ; $5829: $6f
    ld d, e                                       ; $582a: $53
    ld h, a                                       ; $582b: $67
    ld e, b                                       ; $582c: $58
    ld h, a                                       ; $582d: $67
    ld e, c                                       ; $582e: $59
    nop                                           ; $582f: $00
    ld a, a                                       ; $5830: $7f
    ld h, [hl]                                    ; $5831: $66
    ld l, a                                       ; $5832: $6f
    rla                                           ; $5833: $17
    ld a, a                                       ; $5834: $7f
    dec de                                        ; $5835: $1b
    ccf                                           ; $5836: $3f
    scf                                           ; $5837: $37
    inc bc                                        ; $5838: $03
    ld a, $36                                     ; $5839: $3e $36
    ld a, $2a                                     ; $583b: $3e $2a
    inc e                                         ; $583d: $1c
    inc d                                         ; $583e: $14
    ld a, l                                       ; $583f: $7d
    db $10                                        ; $5840: $10
    or [hl]                                       ; $5841: $b6
    scf                                           ; $5842: $37
    ret nz                                        ; $5843: $c0

    ld [bc], a                                    ; $5844: $02
    add hl, bc                                    ; $5845: $09
    ld h, b                                       ; $5846: $60
    ld [$0d0e], sp                                ; $5847: $08 $0e $0d
    ld b, $05                                     ; $584a: $06 $05
    ld [bc], a                                    ; $584c: $02
    ld bc, $270c                                  ; $584d: $01 $0c $27
    inc h                                         ; $5850: $24
    ld h, e                                       ; $5851: $63
    ld h, d                                       ; $5852: $62
    ld a, h                                       ; $5853: $7c
    inc c                                         ; $5854: $0c
    add b                                         ; $5855: $80
    inc c                                         ; $5856: $0c
    rlca                                          ; $5857: $07
    inc b                                         ; $5858: $04
    jr jr_0a7_5862                                ; $5859: $18 $07

    ld b, $05                                     ; $585b: $06 $05
    ld bc, $e100                                  ; $585d: $01 $00 $e1
    cpl                                           ; $5860: $2f
    inc e                                         ; $5861: $1c

jr_0a7_5862:
    inc e                                         ; $5862: $1c
    inc a                                         ; $5863: $3c
    nop                                           ; $5864: $00
    inc l                                         ; $5865: $2c
    db $10                                        ; $5866: $10
    db $10                                        ; $5867: $10
    jr c, @+$2a                                   ; $5868: $38 $28

    jr c, jr_0a7_5894                             ; $586a: $38 $28

    ld [hl], h                                    ; $586c: $74
    nop                                           ; $586d: $00
    ld d, h                                       ; $586e: $54
    ld [hl], h                                    ; $586f: $74
    ld [hl], h                                    ; $5870: $74
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    ld c, $0e                                     ; $5873: $0e $0e
    ld e, $00                                     ; $5875: $1e $00
    ld d, $18                                     ; $5877: $16 $18
    jr jr_0a7_58bf                                ; $5879: $18 $44

    ld b, h                                       ; $587b: $44
    ld l, $2a                                     ; $587c: $2e $2a
    ld h, [hl]                                    ; $587e: $66
    ld c, b                                       ; $587f: $48
    ld b, [hl]                                    ; $5880: $46
    ld h, [hl]                                    ; $5881: $66
    add hl, bc                                    ; $5882: $09
    or c                                          ; $5883: $b1
    or c                                          ; $5884: $b1
    jr nz, @+$0d                                  ; $5885: $20 $0b

    ldh a, [$f0]                                  ; $5887: $f0 $f0
    db $f4                                        ; $5889: $f4
    add hl, bc                                    ; $588a: $09
    db $f4                                        ; $588b: $f4
    ldh [$e0], a                                  ; $588c: $e0 $e0
    jr nz, jr_0a7_5891                            ; $588e: $20 $01

    nop                                           ; $5890: $00

jr_0a7_5891:
    ld e, $1e                                     ; $5891: $1e $1e
    inc e                                         ; $5893: $1c

jr_0a7_5894:
    rlca                                          ; $5894: $07
    nop                                           ; $5895: $00
    and c                                         ; $5896: $a1
    pop af                                        ; $5897: $f1
    xor a                                         ; $5898: $af
    ei                                            ; $5899: $fb
    ld d, l                                       ; $589a: $55
    rst $38                                       ; $589b: $ff
    db $e3                                        ; $589c: $e3
    cp $40                                        ; $589d: $fe $40
    cp $e6                                        ; $589f: $fe $e6
    ld e, $38                                     ; $58a1: $1e $38
    jr c, @+$7a                                   ; $58a3: $38 $78

    ld c, b                                       ; $58a5: $48
    ld [hl], d                                    ; $58a6: $72
    ld d, d                                       ; $58a7: $52
    nop                                           ; $58a8: $00
    scf                                           ; $58a9: $37
    dec [hl]                                      ; $58aa: $35
    ld b, $06                                     ; $58ab: $06 $06
    ld b, b                                       ; $58ad: $40
    ld b, b                                       ; $58ae: $40
    inc c                                         ; $58af: $0c
    inc c                                         ; $58b0: $0c
    nop                                           ; $58b1: $00
    sbc h                                         ; $58b2: $9c
    sub h                                         ; $58b3: $94
    jr c, jr_0a7_58de                             ; $58b4: $38 $28

    ld a, h                                       ; $58b6: $7c
    ld b, h                                       ; $58b7: $44
    ld a, [hl-]                                   ; $58b8: $3a
    ld a, [hl-]                                   ; $58b9: $3a
    ld [$0404], sp                                ; $58ba: $08 $04 $04
    ld h, h                                       ; $58bd: $64
    ld h, h                                       ; $58be: $64

jr_0a7_58bf:
    ld [hl], $0d                                  ; $58bf: $36 $0d
    ld a, [hl-]                                   ; $58c1: $3a
    ld a, [hl+]                                   ; $58c2: $2a
    inc a                                         ; $58c3: $3c
    inc de                                        ; $58c4: $13
    inc l                                         ; $58c5: $2c
    sbc h                                         ; $58c6: $9c
    sub h                                         ; $58c7: $94
    jr nz, jr_0a7_58d9                            ; $58c8: $20 $0f

    ld h, [hl]                                    ; $58ca: $66
    ld h, [hl]                                    ; $58cb: $66
    sub d                                         ; $58cc: $92
    dec e                                         ; $58cd: $1d
    cp $0c                                        ; $58ce: $fe $0c
    ld h, b                                       ; $58d0: $60
    db $10                                        ; $58d1: $10
    ld bc, $7100                                  ; $58d2: $01 $00 $71
    rrca                                          ; $58d5: $0f
    sbc [hl]                                      ; $58d6: $9e
    ld l, d                                       ; $58d7: $6a
    ccf                                           ; $58d8: $3f

jr_0a7_58d9:
    rst $08                                       ; $58d9: $cf
    cp [hl]                                       ; $58da: $be
    nop                                           ; $58db: $00
    ld e, [hl]                                    ; $58dc: $5e
    rst $38                                       ; $58dd: $ff

jr_0a7_58de:
    sub [hl]                                      ; $58de: $96
    or $9a                                        ; $58df: $f6 $9a
    rst $38                                       ; $58e1: $ff
    di                                            ; $58e2: $f3
    jr z, jr_0a7_58e5                             ; $58e3: $28 $00

jr_0a7_58e5:
    jr z, jr_0a7_594e                             ; $58e5: $28 $67

    ld [hl+], a                                   ; $58e7: $22
    ld a, $29                                     ; $58e8: $3e $29
    ccf                                           ; $58ea: $3f
    ld h, $7f                                     ; $58eb: $26 $7f
    nop                                           ; $58ed: $00
    ld a, b                                       ; $58ee: $78
    ccf                                           ; $58ef: $3f
    inc a                                         ; $58f0: $3c
    ccf                                           ; $58f1: $3f
    ld [hl-], a                                   ; $58f2: $32
    rra                                           ; $58f3: $1f
    rra                                           ; $58f4: $1f
    jp $c304                                      ; $58f5: $c3 $04 $c3


    pop bc                                        ; $58f8: $c1
    pop bc                                        ; $58f9: $c1
    ld a, b                                       ; $58fa: $78
    ld a, b                                       ; $58fb: $78
    adc h                                         ; $58fc: $8c
    rlca                                          ; $58fd: $07
    add l                                         ; $58fe: $85
    adc a                                         ; $58ff: $8f
    ld bc, $df75                                  ; $5900: $01 $75 $df
    ld a, [hl+]                                   ; $5903: $2a
    rst $38                                       ; $5904: $ff
    add a                                         ; $5905: $87
    ld a, a                                       ; $5906: $7f
    ld a, a                                       ; $5907: $7f
    db $fc                                        ; $5908: $fc
    inc c                                         ; $5909: $0c
    jr nz, jr_0a7_5918                            ; $590a: $20 $0c

    inc c                                         ; $590c: $0c
    ld e, b                                       ; $590d: $58
    rra                                           ; $590e: $1f
    ld h, b                                       ; $590f: $60
    ld h, b                                       ; $5910: $60
    ld a, h                                       ; $5911: $7c
    ld e, h                                       ; $5912: $5c
    ld e, d                                       ; $5913: $5a
    ld bc, $de2a                                  ; $5914: $01 $2a $de
    xor [hl]                                      ; $5917: $ae

jr_0a7_5918:
    ld a, [c]                                     ; $5918: $f2
    sub d                                         ; $5919: $92
    ld a, b                                       ; $591a: $78
    ld a, b                                       ; $591b: $78
    call c, $801b                                 ; $591c: $dc $1b $80
    ld [hl], b                                    ; $591f: $70
    rra                                           ; $5920: $1f
    ld h, h                                       ; $5921: $64
    ld h, h                                       ; $5922: $64
    ld c, b                                       ; $5923: $48
    ld c, b                                       ; $5924: $48
    inc e                                         ; $5925: $1c
    inc d                                         ; $5926: $14
    inc e                                         ; $5927: $1c
    nop                                           ; $5928: $00
    inc d                                         ; $5929: $14
    ld a, [hl+]                                   ; $592a: $2a
    ld a, [hl+]                                   ; $592b: $2a
    ld [hl], d                                    ; $592c: $72
    ld d, d                                       ; $592d: $52
    ld h, b                                       ; $592e: $60
    ld h, b                                       ; $592f: $60
    ldh a, [$0c]                                  ; $5930: $f0 $0c
    push hl                                       ; $5932: $e5
    ld [$ff42], sp                                ; $5933: $08 $42 $ff
    ld bc, $c360                                  ; $5936: $01 $60 $c3
    db $fd                                        ; $5939: $fd
    add e                                         ; $593a: $83
    db $fd                                        ; $593b: $fd
    inc b                                         ; $593c: $04
    ld c, b                                       ; $593d: $48
    ld l, a                                       ; $593e: $6f
    nop                                           ; $593f: $00
    sub b                                         ; $5940: $90
    cp a                                          ; $5941: $bf
    ret nz                                        ; $5942: $c0

    cpl                                           ; $5943: $2f
    ret nc                                        ; $5944: $d0

    rst $18                                       ; $5945: $df
    and b                                         ; $5946: $a0
    xor a                                         ; $5947: $af
    nop                                           ; $5948: $00
    ret nc                                        ; $5949: $d0

    rst $10                                       ; $594a: $d7
    add sp, $2f                                   ; $594b: $e8 $2f
    ret nc                                        ; $594d: $d0

jr_0a7_594e:
    rst $38                                       ; $594e: $ff
    add b                                         ; $594f: $80
    rst $38                                       ; $5950: $ff
    ld b, b                                       ; $5951: $40
    nop                                           ; $5952: $00
    ld [bc], a                                    ; $5953: $02
    ld e, b                                       ; $5954: $58
    scf                                           ; $5955: $37
    ret z                                         ; $5956: $c8

    db $db                                        ; $5957: $db
    and h                                         ; $5958: $a4
    cpl                                           ; $5959: $2f
    ret nc                                        ; $595a: $d0

    nop                                           ; $595b: $00
    rst $10                                       ; $595c: $d7
    xor b                                         ; $595d: $a8
    ccf                                           ; $595e: $3f
    ret nz                                        ; $595f: $c0

    rst $18                                       ; $5960: $df
    and b                                         ; $5961: $a0
    cpl                                           ; $5962: $2f
    ret nc                                        ; $5963: $d0

    nop                                           ; $5964: $00
    rst $30                                       ; $5965: $f7
    adc b                                         ; $5966: $88
    rst $38                                       ; $5967: $ff
    ld bc, $0bf4                                  ; $5968: $01 $f4 $0b
    ei                                            ; $596b: $fb
    dec b                                         ; $596c: $05
    ld [$03fc], sp                                ; $596d: $08 $fc $03
    db $eb                                        ; $5970: $eb
    dec d                                         ; $5971: $15
    ld [$0700], sp                                ; $5972: $08 $00 $07
    db $fd                                        ; $5975: $fd
    inc bc                                        ; $5976: $03
    nop                                           ; $5977: $00
    ld e, a                                       ; $5978: $5f
    and b                                         ; $5979: $a0
    or a                                          ; $597a: $b7
    ret z                                         ; $597b: $c8

    db $db                                        ; $597c: $db
    db $e4                                        ; $597d: $e4
    xor a                                         ; $597e: $af
    ret nc                                        ; $597f: $d0

    add b                                         ; $5980: $80
    jr nz, jr_0a7_598b                            ; $5981: $20 $08

    scf                                           ; $5983: $37
    ret z                                         ; $5984: $c8

    rst $18                                       ; $5985: $df
    and b                                         ; $5986: $a0
    ld e, [hl]                                    ; $5987: $5e
    and b                                         ; $5988: $a0
    or [hl]                                       ; $5989: $b6
    nop                                           ; $598a: $00

jr_0a7_598b:
    ret z                                         ; $598b: $c8

    jp c, $aee4                                   ; $598c: $da $e4 $ae

    ret nc                                        ; $598f: $d0

    ld a, $c0                                     ; $5990: $3e $c0
    sbc $00                                       ; $5992: $de $00
    and b                                         ; $5994: $a0
    ld [hl], $c8                                  ; $5995: $36 $c8
    sbc $a0                                       ; $5997: $de $a0
    ld l, [hl]                                    ; $5999: $6e
    sub b                                         ; $599a: $90
    cp [hl]                                       ; $599b: $be
    nop                                           ; $599c: $00
    ret nz                                        ; $599d: $c0

    ld l, $d0                                     ; $599e: $2e $d0
    sbc $a0                                       ; $59a0: $de $a0
    xor [hl]                                      ; $59a2: $ae
    ret nc                                        ; $59a3: $d0

    sub $00                                       ; $59a4: $d6 $00
    add sp, $2e                                   ; $59a6: $e8 $2e
    ret nc                                        ; $59a8: $d0

    cp $80                                        ; $59a9: $fe $80
    ld l, a                                       ; $59ab: $6f
    ld de, $0074                                  ; $59ac: $11 $74 $00
    dec bc                                        ; $59af: $0b
    ld a, e                                       ; $59b0: $7b
    dec b                                         ; $59b1: $05
    ld a, h                                       ; $59b2: $7c
    inc bc                                        ; $59b3: $03
    ld l, e                                       ; $59b4: $6b
    dec d                                         ; $59b5: $15
    ld [hl], h                                    ; $59b6: $74
    ld bc, $5b0b                                  ; $59b7: $01 $0b $5b
    dec h                                         ; $59ba: $25
    ld l, h                                       ; $59bb: $6c
    inc de                                        ; $59bc: $13
    ld a, a                                       ; $59bd: $7f
    ld bc, $3810                                  ; $59be: $01 $10 $38
    nop                                           ; $59c1: $00
    ld a, e                                       ; $59c2: $7b
    rlca                                          ; $59c3: $07
    ld a, l                                       ; $59c4: $7d
    inc bc                                        ; $59c5: $03
    or e                                          ; $59c6: $b3
    cp $8f                                        ; $59c7: $fe $8f
    xor l                                         ; $59c9: $ad
    nop                                           ; $59ca: $00
    add h                                         ; $59cb: $84
    call nc, $a88c                                ; $59cc: $d4 $8c $a8
    adc b                                         ; $59cf: $88
    ret c                                         ; $59d0: $d8

    sbc a                                         ; $59d1: $9f
    cp a                                          ; $59d2: $bf
    nop                                           ; $59d3: $00
    ld a, [c]                                     ; $59d4: $f2
    rst $38                                       ; $59d5: $ff
    sbc a                                         ; $59d6: $9f
    ld [c], a                                     ; $59d7: $e2
    rrca                                          ; $59d8: $0f
    ld [$9c97], sp                                ; $59d9: $08 $97 $9c
    nop                                           ; $59dc: $00
    ld h, e                                       ; $59dd: $63
    ld a, a                                       ; $59de: $7f
    ld hl, $733f                                  ; $59df: $21 $3f $73
    ld e, [hl]                                    ; $59e2: $5e
    sbc $ac                                       ; $59e3: $de $ac
    nop                                           ; $59e5: $00
    xor h                                         ; $59e6: $ac
    ld d, h                                       ; $59e7: $54
    ld d, h                                       ; $59e8: $54
    xor h                                         ; $59e9: $ac
    ld [c], a                                     ; $59ea: $e2
    ccf                                           ; $59eb: $3f
    push af                                       ; $59ec: $f5
    ld e, [hl]                                    ; $59ed: $5e
    nop                                           ; $59ee: $00
    res 1, h                                      ; $59ef: $cb $8c
    add a                                         ; $59f1: $87
    inc b                                         ; $59f2: $04
    inc bc                                        ; $59f3: $03
    ld [bc], a                                    ; $59f4: $02
    ld bc, $0001                                  ; $59f5: $01 $01 $00
    ld [bc], a                                    ; $59f8: $02
    inc bc                                        ; $59f9: $03
    ld [bc], a                                    ; $59fa: $02

jr_0a7_59fb:
    ld [bc], a                                    ; $59fb: $02
    pop hl                                        ; $59fc: $e1
    ccf                                           ; $59fd: $3f
    pop af                                        ; $59fe: $f1
    rra                                           ; $59ff: $1f
    add b                                         ; $5a00: $80
    ld [bc], a                                    ; $5a01: $02
    nop                                           ; $5a02: $00
    ld a, a                                       ; $5a03: $7f
    adc a                                         ; $5a04: $8f
    rst $18                                       ; $5a05: $df
    ld bc, $01ab                                  ; $5a06: $01 $ab $01
    ld d, l                                       ; $5a09: $55
    nop                                           ; $5a0a: $00
    inc bc                                        ; $5a0b: $03
    xor e                                         ; $5a0c: $ab
    cp $85                                        ; $5a0d: $fe $85
    db $fd                                        ; $5a0f: $fd
    add [hl]                                      ; $5a10: $86
    cp $f5                                        ; $5a11: $fe $f5
    nop                                           ; $5a13: $00
    adc a                                         ; $5a14: $8f
    rst $38                                       ; $5a15: $ff
    add c                                         ; $5a16: $81
    rst $38                                       ; $5a17: $ff
    add e                                         ; $5a18: $83
    cp $86                                        ; $5a19: $fe $86
    db $fc                                        ; $5a1b: $fc
    nop                                           ; $5a1c: $00
    adc h                                         ; $5a1d: $8c
    ld hl, sp-$54                                 ; $5a1e: $f8 $ac
    ld e, h                                       ; $5a20: $5c
    ld d, d                                       ; $5a21: $52
    cp [hl]                                       ; $5a22: $be
    and e                                         ; $5a23: $a3
    ld a, a                                       ; $5a24: $7f
    db $10                                        ; $5a25: $10
    pop bc                                        ; $5a26: $c1
    rst $38                                       ; $5a27: $ff
    ret nz                                        ; $5a28: $c0

    ld b, h                                       ; $5a29: $44
    nop                                           ; $5a2a: $00
    inc de                                        ; $5a2b: $13
    rra                                           ; $5a2c: $1f
    dec c                                         ; $5a2d: $0d
    rrca                                          ; $5a2e: $0f
    ld [$0f0d], sp                                ; $5a2f: $08 $0d $0f
    ld [hl], b                                    ; $5a32: $70
    ld a, a                                       ; $5a33: $7f
    push hl                                       ; $5a34: $e5
    ld [$ff81], sp                                ; $5a35: $08 $81 $ff
    jp $fe00                                      ; $5a38: $c3 $00 $fe


    ld a, $fc                                     ; $5a3b: $3e $fc
    inc c                                         ; $5a3d: $0c
    ld hl, sp+$05                                 ; $5a3e: $f8 $05
    ld d, a                                       ; $5a40: $57
    adc c                                         ; $5a41: $89
    nop                                           ; $5a42: $00
    xor a                                         ; $5a43: $af
    pop de                                        ; $5a44: $d1
    rst $18                                       ; $5a45: $df
    pop af                                        ; $5a46: $f1
    cp a                                          ; $5a47: $bf
    sub c                                         ; $5a48: $91
    rra                                           ; $5a49: $1f
    add hl, bc                                    ; $5a4a: $09
    nop                                           ; $5a4b: $00
    rrca                                          ; $5a4c: $0f
    dec b                                         ; $5a4d: $05
    rlca                                          ; $5a4e: $07
    rrca                                          ; $5a4f: $0f
    dec bc                                        ; $5a50: $0b
    cp $fe                                        ; $5a51: $fe $fe
    di                                            ; $5a53: $f3
    nop                                           ; $5a54: $00
    add e                                         ; $5a55: $83
    add d                                         ; $5a56: $82
    add e                                         ; $5a57: $83
    ld [c], a                                     ; $5a58: $e2
    db $e3                                        ; $5a59: $e3
    sbc [hl]                                      ; $5a5a: $9e
    rst $38                                       ; $5a5b: $ff
    add d                                         ; $5a5c: $82
    add b                                         ; $5a5d: $80
    ld b, h                                       ; $5a5e: $44
    nop                                           ; $5a5f: $00
    pop bc                                        ; $5a60: $c1
    rst $38                                       ; $5a61: $ff
    rlca                                          ; $5a62: $07
    rlca                                          ; $5a63: $07
    ret z                                         ; $5a64: $c8

    rst $08                                       ; $5a65: $cf
    jr nc, @+$22                                  ; $5a66: $30 $20

    rst $38                                       ; $5a68: $ff
    ld [$0002], sp                                ; $5a69: $08 $02 $00
    ld a, a                                       ; $5a6c: $7f

jr_0a7_5a6d:
    rst $38                                       ; $5a6d: $ff
    ret                                           ; $5a6e: $c9


    adc [hl]                                      ; $5a6f: $8e
    adc e                                         ; $5a70: $8b
    nop                                           ; $5a71: $00
    inc c                                         ; $5a72: $0c
    jr jr_0a7_5a6d                                ; $5a73: $18 $f8

    and [hl]                                      ; $5a75: $a6
    cp $61                                        ; $5a76: $fe $61
    rst $38                                       ; $5a78: $ff
    jr nz, jr_0a7_59fb                            ; $5a79: $20 $80

    ld [bc], a                                    ; $5a7b: $02
    nop                                           ; $5a7c: $00
    ld l, $ff                                     ; $5a7d: $2e $ff
    pop af                                        ; $5a7f: $f1
    rst $38                                       ; $5a80: $ff
    pop bc                                        ; $5a81: $c1

jr_0a7_5a82:
    ld a, a                                       ; $5a82: $7f
    rla                                           ; $5a83: $17
    nop                                           ; $5a84: $00
    add hl, de                                    ; $5a85: $19
    cpl                                           ; $5a86: $2f
    ld sp, $d9ff                                  ; $5a87: $31 $ff $d9
    cp a                                          ; $5a8a: $bf
    rst $00                                       ; $5a8b: $c7
    cp a                                          ; $5a8c: $bf
    nop                                           ; $5a8d: $00
    pop bc                                        ; $5a8e: $c1
    rst $38                                       ; $5a8f: $ff
    add c                                         ; $5a90: $81
    ld a, a                                       ; $5a91: $7f
    cp a                                          ; $5a92: $bf
    pop hl                                        ; $5a93: $e1
    rst $38                                       ; $5a94: $ff
    cp a                                          ; $5a95: $bf
    ld [de], a                                    ; $5a96: $12
    ret nz                                        ; $5a97: $c0

    rst $18                                       ; $5a98: $df
    ldh [$30], a                                  ; $5a99: $e0 $30
    add hl, sp                                    ; $5a9b: $39
    add b                                         ; $5a9c: $80
    rst $38                                       ; $5a9d: $ff
    ld d, b                                       ; $5a9e: $50
    ld c, c                                       ; $5a9f: $49
    ld [hl], a                                    ; $5aa0: $77
    db $10                                        ; $5aa1: $10
    adc b                                         ; $5aa2: $88
    xor d                                         ; $5aa3: $aa
    ld d, l                                       ; $5aa4: $55
    ld h, b                                       ; $5aa5: $60
    add hl, sp                                    ; $5aa6: $39
    ei                                            ; $5aa7: $fb
    inc b                                         ; $5aa8: $04
    db $fd                                        ; $5aa9: $fd
    ld [bc], a                                    ; $5aaa: $02
    add b                                         ; $5aab: $80
    db $10                                        ; $5aac: $10
    ld c, b                                       ; $5aad: $48
    cp $01                                        ; $5aae: $fe $01
    ld a, a                                       ; $5ab0: $7f
    add b                                         ; $5ab1: $80
    xor d                                         ; $5ab2: $aa
    ld d, l                                       ; $5ab3: $55
    nop                                           ; $5ab4: $00
    ld de, $7fff                                  ; $5ab5: $11 $ff $7f
    add b                                         ; $5ab8: $80
    add e                                         ; $5ab9: $83
    add hl, hl                                    ; $5aba: $29
    rst $38                                       ; $5abb: $ff
    rst $38                                       ; $5abc: $ff
    xor d                                         ; $5abd: $aa
    ld b, $08                                     ; $5abe: $06 $08
    ld h, d                                       ; $5ac0: $62
    nop                                           ; $5ac1: $00
    db $10                                        ; $5ac2: $10
    ld c, b                                       ; $5ac3: $48
    add b                                         ; $5ac4: $80
    add hl, bc                                    ; $5ac5: $09
    db $eb                                        ; $5ac6: $eb
    rla                                           ; $5ac7: $17
    push af                                       ; $5ac8: $f5
    add h                                         ; $5ac9: $84
    ld bc, $00f4                                  ; $5aca: $01 $f4 $00
    dec bc                                        ; $5acd: $0b
    ld l, l                                       ; $5ace: $6d
    sub e                                         ; $5acf: $93
    add b                                         ; $5ad0: $80
    ld a, a                                       ; $5ad1: $7f
    ld [hl], $c8                                  ; $5ad2: $36 $c8
    jp c, $a40a                                   ; $5ad4: $da $0a $a4

    ld l, $d0                                     ; $5ad7: $2e $d0
    sub $a0                                       ; $5ad9: $d6 $a0
    ld bc, $a0de                                  ; $5adb: $01 $de $a0
    ld bc, $0192                                  ; $5ade: $01 $92 $01
    db $ec                                        ; $5ae1: $ec
    nop                                           ; $5ae2: $00
    rst $38                                       ; $5ae3: $ff
    cp $01                                        ; $5ae4: $fe $01
    ld [bc], a                                    ; $5ae6: $02
    db $fd                                        ; $5ae7: $fd
    ld [bc], a                                    ; $5ae8: $02
    ld [$4081], sp                                ; $5ae9: $08 $81 $40
    jr jr_0a7_5a82                                ; $5aec: $18 $94

    db $fc                                        ; $5aee: $fc
    xor [hl]                                      ; $5aef: $ae
    ld a, [c]                                     ; $5af0: $f2
    rst $18                                       ; $5af1: $df
    pop hl                                        ; $5af2: $e1
    sbc [hl]                                      ; $5af3: $9e
    ld [$fe00], sp                                ; $5af4: $08 $00 $fe
    add e                                         ; $5af7: $83
    cp $83                                        ; $5af8: $fe $83
    rst $38                                       ; $5afa: $ff
    rst $38                                       ; $5afb: $ff
    scf                                           ; $5afc: $37
    jr c, jr_0a7_5aff                             ; $5afd: $38 $00

jr_0a7_5aff:
    ld e, a                                       ; $5aff: $5f
    ld h, b                                       ; $5b00: $60
    rst $38                                       ; $5b01: $ff
    add b                                         ; $5b02: $80
    ld a, a                                       ; $5b03: $7f
    pop bc                                        ; $5b04: $c1
    ld a, $f3                                     ; $5b05: $3e $f3
    db $10                                        ; $5b07: $10
    inc c                                         ; $5b08: $0c
    rst $38                                       ; $5b09: $ff
    inc b                                         ; $5b0a: $04
    dec e                                         ; $5b0b: $1d
    ld [bc], a                                    ; $5b0c: $02
    adc b                                         ; $5b0d: $88
    ld hl, sp-$70                                 ; $5b0e: $f8 $90
    ldh a, [rP1]                                  ; $5b10: $f0 $00
    ret nc                                        ; $5b12: $d0

    ldh a, [$38]                                  ; $5b13: $f0 $38
    ld hl, sp+$07                                 ; $5b15: $f8 $07
    rst $38                                       ; $5b17: $ff
    inc bc                                        ; $5b18: $03
    cp $40                                        ; $5b19: $fe $40
    ld bc, $022d                                  ; $5b1b: $01 $2d $02
    dec de                                        ; $5b1e: $1b
    dec d                                         ; $5b1f: $15
    dec [hl]                                      ; $5b20: $35
    dec hl                                        ; $5b21: $2b
    ld l, e                                       ; $5b22: $6b
    ld d, l                                       ; $5b23: $55
    rlca                                          ; $5b24: $07
    push de                                       ; $5b25: $d5
    xor e                                         ; $5b26: $ab
    xor e                                         ; $5b27: $ab
    ld d, l                                       ; $5b28: $55
    ld d, l                                       ; $5b29: $55
    inc b                                         ; $5b2a: $04
    nop                                           ; $5b2b: $00
    ld a, l                                       ; $5b2c: $7d
    ld [$0802], sp                                ; $5b2d: $08 $02 $08
    inc d                                         ; $5b30: $14

jr_0a7_5b31:
    xor d                                         ; $5b31: $aa
    nop                                           ; $5b32: $00
    ld d, l                                       ; $5b33: $55
    inc b                                         ; $5b34: $04
    nop                                           ; $5b35: $00
    rst $38                                       ; $5b36: $ff
    ld [$0c00], sp                                ; $5b37: $08 $00 $0c
    rst $38                                       ; $5b3a: $ff
    ld [bc], a                                    ; $5b3b: $02
    ld sp, hl                                     ; $5b3c: $f9
    ld c, $1c                                     ; $5b3d: $0e $1c
    rst $28                                       ; $5b3f: $ef
    jr jr_0a7_5b31                                ; $5b40: $18 $ef

    inc b                                         ; $5b42: $04
    adc b                                         ; $5b43: $88
    inc c                                         ; $5b44: $0c
    add b                                         ; $5b45: $80
    or b                                          ; $5b46: $b0
    db $10                                        ; $5b47: $10
    xor d                                         ; $5b48: $aa
    rst $38                                       ; $5b49: $ff
    push af                                       ; $5b4a: $f5
    rst $38                                       ; $5b4b: $ff
    rst $18                                       ; $5b4c: $df
    ccf                                           ; $5b4d: $3f
    dec bc                                        ; $5b4e: $0b
    nop                                           ; $5b4f: $00
    rlca                                          ; $5b50: $07
    sbc d                                         ; $5b51: $9a
    nop                                           ; $5b52: $00
    and e                                         ; $5b53: $a3
    inc e                                         ; $5b54: $1c
    inc e                                         ; $5b55: $1c
    inc hl                                        ; $5b56: $23
    dec e                                         ; $5b57: $1d
    nop                                           ; $5b58: $00
    ld hl, sp+$38                                 ; $5b59: $f8 $38
    di                                            ; $5b5b: $f3
    ld [hl], e                                    ; $5b5c: $73
    db $e4                                        ; $5b5d: $e4
    db $e4                                        ; $5b5e: $e4
    ret z                                         ; $5b5f: $c8

    ld b, a                                       ; $5b60: $47
    nop                                           ; $5b61: $00
    sbc b                                         ; $5b62: $98
    ld a, [de]                                    ; $5b63: $1a
    sbc l                                         ; $5b64: $9d
    ld e, $4f                                     ; $5b65: $1e $4f
    ld b, l                                       ; $5b67: $45
    add e                                         ; $5b68: $83
    xor e                                         ; $5b69: $ab
    nop                                           ; $5b6a: $00
    rra                                           ; $5b6b: $1f
    inc de                                        ; $5b6c: $13
    call z, Call_000_2050                         ; $5b6d: $cc $50 $20
    jr nz, jr_0a7_5b83                            ; $5b70: $20 $11

    pop hl                                        ; $5b72: $e1
    nop                                           ; $5b73: $00
    inc de                                        ; $5b74: $13
    sub [hl]                                      ; $5b75: $96
    ld h, a                                       ; $5b76: $67
    ld a, l                                       ; $5b77: $7d
    rst $08                                       ; $5b78: $cf
    rst $38                                       ; $5b79: $ff
    sbc a                                         ; $5b7a: $9f
    ld h, e                                       ; $5b7b: $63
    nop                                           ; $5b7c: $00
    add h                                         ; $5b7d: $84
    inc b                                         ; $5b7e: $04
    inc bc                                        ; $5b7f: $03
    cp e                                          ; $5b80: $bb
    ld a, l                                       ; $5b81: $7d
    rst $20                                       ; $5b82: $e7

jr_0a7_5b83:
    cp $82                                        ; $5b83: $fe $82

jr_0a7_5b85:
    jr nz, @+$01                                  ; $5b85: $20 $ff

    ld a, l                                       ; $5b87: $7d
    xor e                                         ; $5b88: $ab
    ld [bc], a                                    ; $5b89: $02
    cp $ff                                        ; $5b8a: $fe $ff
    ld d, c                                       ; $5b8c: $51
    jr nz, @+$30                                  ; $5b8d: $20 $2e

    nop                                           ; $5b8f: $00
    ld b, b                                       ; $5b90: $40
    cp a                                          ; $5b91: $bf
    ld b, b                                       ; $5b92: $40
    ld a, a                                       ; $5b93: $7f
    add b                                         ; $5b94: $80
    ld a, a                                       ; $5b95: $7f
    add b                                         ; $5b96: $80
    cp a                                          ; $5b97: $bf
    nop                                           ; $5b98: $00
    ret nz                                        ; $5b99: $c0

    rst $10                                       ; $5b9a: $d7
    add sp, -$56                                  ; $5b9b: $e8 $aa
    push af                                       ; $5b9d: $f5
    sub b                                         ; $5b9e: $90
    ld h, b                                       ; $5b9f: $60
    ld l, c                                       ; $5ba0: $69
    nop                                           ; $5ba1: $00
    db $10                                        ; $5ba2: $10
    xor e                                         ; $5ba3: $ab
    ld de, $23d7                                  ; $5ba4: $11 $d7 $23
    jp $a327                                      ; $5ba7: $c3 $27 $a3


    nop                                           ; $5baa: $00
    ld b, a                                       ; $5bab: $47
    add l                                         ; $5bac: $85
    ld b, e                                       ; $5bad: $43
    sbc c                                         ; $5bae: $99
    add b                                         ; $5baf: $80
    ld [hl], a                                    ; $5bb0: $77
    ccf                                           ; $5bb1: $3f
    ld a, a                                       ; $5bb2: $7f
    add h                                         ; $5bb3: $84
    db $d3                                        ; $5bb4: $d3
    ld [hl-], a                                   ; $5bb5: $32
    ld sp, hl                                     ; $5bb6: $f9
    cp $88                                        ; $5bb7: $fe $88
    ld [hl], b                                    ; $5bb9: $70
    ldh [$0a], a                                  ; $5bba: $e0 $0a
    cp $ff                                        ; $5bbc: $fe $ff
    nop                                           ; $5bbe: $00
    ld a, [$d5fc]                                 ; $5bbf: $fa $fc $d5
    ldh [$5a], a                                  ; $5bc2: $e0 $5a
    add b                                         ; $5bc4: $80
    ld b, e                                       ; $5bc5: $43
    inc a                                         ; $5bc6: $3c
    jr z, jr_0a7_5b85                             ; $5bc7: $28 $bc

    ld b, e                                       ; $5bc9: $43
    ldh [rWY], a                                  ; $5bca: $e0 $4a
    pop bc                                        ; $5bcc: $c1
    ld b, b                                       ; $5bcd: $40
    ld bc, $0b91                                  ; $5bce: $01 $91 $0b
    rst $30                                       ; $5bd1: $f7
    nop                                           ; $5bd2: $00
    add hl, bc                                    ; $5bd3: $09
    ld l, c                                       ; $5bd4: $69
    sbc b                                         ; $5bd5: $98
    ld hl, sp-$10                                 ; $5bd6: $f8 $f0
    sub h                                         ; $5bd8: $94
    ld h, e                                       ; $5bd9: $63
    adc e                                         ; $5bda: $8b
    nop                                           ; $5bdb: $00
    inc b                                         ; $5bdc: $04
    ld b, [hl]                                    ; $5bdd: $46
    adc c                                         ; $5bde: $89
    sub h                                         ; $5bdf: $94
    set 7, a                                      ; $5be0: $cb $ff
    rst $38                                       ; $5be2: $ff
    db $fc                                        ; $5be3: $fc
    nop                                           ; $5be4: $00
    rst $38                                       ; $5be5: $ff
    ld h, [hl]                                    ; $5be6: $66
    ld hl, sp+$01                                 ; $5be7: $f8 $01
    nop                                           ; $5be9: $00
    ld b, $f8                                     ; $5bea: $06 $f8
    ldh a, [rP1]                                  ; $5bec: $f0 $00
    rrca                                          ; $5bee: $0f
    ld l, $d1                                     ; $5bef: $2e $d1
    nop                                           ; $5bf1: $00
    rst $38                                       ; $5bf2: $ff
    ret z                                         ; $5bf3: $c8

    ldh [$d0], a                                  ; $5bf4: $e0 $d0
    nop                                           ; $5bf6: $00
    nop                                           ; $5bf7: $00
    and b                                         ; $5bf8: $a0
    inc bc                                        ; $5bf9: $03
    ld b, e                                       ; $5bfa: $43
    inc b                                         ; $5bfb: $04
    and d                                         ; $5bfc: $a2
    inc b                                         ; $5bfd: $04
    ld c, c                                       ; $5bfe: $49
    nop                                           ; $5bff: $00
    add h                                         ; $5c00: $84
    rlca                                          ; $5c01: $07
    ret z                                         ; $5c02: $c8

    add a                                         ; $5c03: $87
    ld c, b                                       ; $5c04: $48
    ld b, l                                       ; $5c05: $45

Jump_0a7_5c06:
    rrca                                          ; $5c06: $0f
    xor e                                         ; $5c07: $ab
    nop                                           ; $5c08: $00
    rlca                                          ; $5c09: $07
    push bc                                       ; $5c0a: $c5
    inc bc                                        ; $5c0b: $03
    nop                                           ; $5c0c: $00
    ldh a, [$72]                                  ; $5c0d: $f0 $72
    inc c                                         ; $5c0f: $0c
    dec c                                         ; $5c10: $0d
    jr nz, jr_0a7_5c15                            ; $5c11: $20 $02

    push de                                       ; $5c13: $d5
    ld c, c                                       ; $5c14: $49

jr_0a7_5c15:
    ld bc, $df80                                  ; $5c15: $01 $80 $df
    ldh a, [$9f]                                  ; $5c18: $f0 $9f
    sub b                                         ; $5c1a: $90
    nop                                           ; $5c1b: $00
    ccf                                           ; $5c1c: $3f

jr_0a7_5c1d:
    xor b                                         ; $5c1d: $a8
    ld a, a                                       ; $5c1e: $7f
    inc [hl]                                      ; $5c1f: $34
    ld a, a                                       ; $5c20: $7f
    ld e, [hl]                                    ; $5c21: $5e
    ccf                                           ; $5c22: $3f
    cpl                                           ; $5c23: $2f
    ld de, $151f                                  ; $5c24: $11 $1f $15
    db $e3                                        ; $5c27: $e3
    rra                                           ; $5c28: $1f
    dec sp                                        ; $5c29: $3b
    add c                                         ; $5c2a: $81
    rst $38                                       ; $5c2b: $ff
    ld c, e                                       ; $5c2c: $4b
    or b                                          ; $5c2d: $b0
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00
    rla                                           ; $5c30: $17
    ret z                                         ; $5c31: $c8

    rrca                                          ; $5c32: $0f
    ret nc                                        ; $5c33: $d0

    ld [hl], a                                    ; $5c34: $77
    sbc b                                         ; $5c35: $98
    ld a, d                                       ; $5c36: $7a
    sbc l                                         ; $5c37: $9d
    nop                                           ; $5c38: $00
    sbc l                                         ; $5c39: $9d
    adc a                                         ; $5c3a: $8f
    ld c, $87                                     ; $5c3b: $0e $87
    add a                                         ; $5c3d: $87
    inc bc                                        ; $5c3e: $03
    ld b, d                                       ; $5c3f: $42
    ld bc, $fa10                                  ; $5c40: $01 $10 $fa
    inc b                                         ; $5c43: $04
    ld hl, sp+$02                                 ; $5c44: $f8 $02
    nop                                           ; $5c46: $00
    ld sp, hl                                     ; $5c47: $f9
    inc b                                         ; $5c48: $04
    ld [hl], l                                    ; $5c49: $75
    adc b                                         ; $5c4a: $88
    nop                                           ; $5c4b: $00
    xor e                                         ; $5c4c: $ab
    ret c                                         ; $5c4d: $d8

    ld e, e                                       ; $5c4e: $5b
    ld hl, sp-$47                                 ; $5c4f: $f8 $b9
    ld hl, sp-$2b                                 ; $5c51: $f8 $d5
    ld a, e                                       ; $5c53: $7b
    nop                                           ; $5c54: $00
    ld l, e                                       ; $5c55: $6b
    ccf                                           ; $5c56: $3f
    scf                                           ; $5c57: $37
    ld a, $be                                     ; $5c58: $3e $be
    inc e                                         ; $5c5a: $1c
    jr nz, jr_0a7_5c1d                            ; $5c5b: $20 $c0

    ld bc, $38c4                                  ; $5c5d: $01 $c4 $38
    ld a, [de]                                    ; $5c60: $1a
    inc b                                         ; $5c61: $04
    db $fc                                        ; $5c62: $fc
    ld [bc], a                                    ; $5c63: $02
    and d                                         ; $5c64: $a2
    inc d                                         ; $5c65: $14
    ld bc, $1101                                  ; $5c66: $01 $01 $11
    jr nz, @+$4e                                  ; $5c69: $20 $4c

    jr nz, jr_0a7_5cac                            ; $5c6b: $20 $3f

    ld b, b                                       ; $5c6d: $40
    rst $38                                       ; $5c6e: $ff
    add sp, $00                                   ; $5c6f: $e8 $00
    nop                                           ; $5c71: $00
    rst $18                                       ; $5c72: $df
    ld h, b                                       ; $5c73: $60
    add hl, hl                                    ; $5c74: $29
    nop                                           ; $5c75: $00
    ld d, d                                       ; $5c76: $52
    add c                                         ; $5c77: $81
    sub c                                         ; $5c78: $91
    ld h, d                                       ; $5c79: $62
    nop                                           ; $5c7a: $00
    ld l, b                                       ; $5c7b: $68
    inc de                                        ; $5c7c: $13
    xor h                                         ; $5c7d: $ac
    inc de                                        ; $5c7e: $13
    and h                                         ; $5c7f: $a4
    inc de                                        ; $5c80: $13
    ldh [rNR22], a                                ; $5c81: $e0 $17
    ld [bc], a                                    ; $5c83: $02
    db $e4                                        ; $5c84: $e4
    rla                                           ; $5c85: $17
    ld h, a                                       ; $5c86: $67
    sbc b                                         ; $5c87: $98
    ret nz                                        ; $5c88: $c0

    ccf                                           ; $5c89: $3f
    add e                                         ; $5c8a: $83
    ld c, e                                       ; $5c8b: $4b
    db $fc                                        ; $5c8c: $fc
    nop                                           ; $5c8d: $00
    ld [bc], a                                    ; $5c8e: $02
    ld a, [c]                                     ; $5c8f: $f2
    inc c                                         ; $5c90: $0c
    ld d, [hl]                                    ; $5c91: $56
    xor h                                         ; $5c92: $ac
    adc l                                         ; $5c93: $8d
    ld hl, sp+$7a                                 ; $5c94: $f8 $7a
    nop                                           ; $5c96: $00
    ldh a, [$d1]                                  ; $5c97: $f0 $d1
    db $e4                                        ; $5c99: $e4
    ret nz                                        ; $5c9a: $c0

    ld [bc], a                                    ; $5c9b: $02
    ld [$6f07], sp                                ; $5c9c: $08 $07 $6f
    nop                                           ; $5c9f: $00
    ld d, b                                       ; $5ca0: $50
    ld d, a                                       ; $5ca1: $57

jr_0a7_5ca2:
    ld l, b                                       ; $5ca2: $68
    dec hl                                        ; $5ca3: $2b
    ld [hl], h                                    ; $5ca4: $74
    dec h                                         ; $5ca5: $25
    ld a, [hl-]                                   ; $5ca6: $3a
    ld [hl-], a                                   ; $5ca7: $32
    nop                                           ; $5ca8: $00
    dec a                                         ; $5ca9: $3d
    jr jr_0a7_5ceb                                ; $5caa: $18 $3f

jr_0a7_5cac:
    adc l                                         ; $5cac: $8d
    rra                                           ; $5cad: $1f
    sub $0f                                       ; $5cae: $d6 $0f
    xor $00                                       ; $5cb0: $ee $00
    rla                                           ; $5cb2: $17
    push de                                       ; $5cb3: $d5
    daa                                           ; $5cb4: $27
    ld [$1727], a                                 ; $5cb5: $ea $27 $17
    db $e3                                        ; $5cb8: $e3
    ld c, e                                       ; $5cb9: $4b
    ld bc, $81e1                                  ; $5cba: $01 $e1 $81
    ret nc                                        ; $5cbd: $d0

    inc h                                         ; $5cbe: $24
    adc b                                         ; $5cbf: $88
    ld [hl+], a                                   ; $5cc0: $22
    inc e                                         ; $5cc1: $1c
    cp a                                          ; $5cc2: $bf
    dec bc                                        ; $5cc3: $0b
    inc b                                         ; $5cc4: $04
    add b                                         ; $5cc5: $80
    rst $38                                       ; $5cc6: $ff
    ld d, b                                       ; $5cc7: $50
    rst $38                                       ; $5cc8: $ff
    db $ec                                        ; $5cc9: $ec
    ld c, h                                       ; $5cca: $4c
    ld bc, $7fff                                  ; $5ccb: $01 $ff $7f
    ld [bc], a                                    ; $5cce: $02
    ld e, a                                       ; $5ccf: $5f
    ccf                                           ; $5cd0: $3f
    add b                                         ; $5cd1: $80
    ld a, a                                       ; $5cd2: $7f
    rra                                           ; $5cd3: $1f
    ldh [rHDMA2], a                               ; $5cd4: $e0 $52
    jr c, jr_0a7_5d1d                             ; $5cd6: $38 $45

    nop                                           ; $5cd8: $00
    rst $38                                       ; $5cd9: $ff
    jr nz, jr_0a7_5ca2                            ; $5cda: $20 $c6

    adc b                                         ; $5cdc: $88
    ld [hl], b                                    ; $5cdd: $70
    ld a, [hl+]                                   ; $5cde: $2a
    ret c                                         ; $5cdf: $d8

    dec c                                         ; $5ce0: $0d
    nop                                           ; $5ce1: $00
    ld hl, sp+$1a                                 ; $5ce2: $f8 $1a
    pop af                                        ; $5ce4: $f1
    ld [hl], c                                    ; $5ce5: $71
    and $e6                                       ; $5ce6: $e6 $e6
    ret z                                         ; $5ce8: $c8

    ret                                           ; $5ce9: $c9


    nop                                           ; $5cea: $00

jr_0a7_5ceb:
    sub b                                         ; $5ceb: $90
    ld d, h                                       ; $5cec: $54
    inc hl                                        ; $5ced: $23
    ld [hl+], a                                   ; $5cee: $22
    ld b, b                                       ; $5cef: $40
    ccf                                           ; $5cf0: $3f
    ld b, b                                       ; $5cf1: $40
    ld l, a                                       ; $5cf2: $6f
    nop                                           ; $5cf3: $00
    jr nc, jr_0a7_5d30                            ; $5cf4: $30 $3a

    db $dd                                        ; $5cf6: $dd
    sub $2f                                       ; $5cf7: $d6 $2f
    dec h                                         ; $5cf9: $25
    inc de                                        ; $5cfa: $13
    pop de                                        ; $5cfb: $d1
    nop                                           ; $5cfc: $00
    ld [$9c63], sp                                ; $5cfd: $08 $63 $9c
    adc d                                         ; $5d00: $8a
    ld h, b                                       ; $5d01: $60
    db $ed                                        ; $5d02: $ed
    db $10                                        ; $5d03: $10
    db $eb                                        ; $5d04: $eb
    nop                                           ; $5d05: $00
    ld de, $63b7                                  ; $5d06: $11 $b7 $63
    db $e3                                        ; $5d09: $e3
    rst $00                                       ; $5d0a: $c7
    jp $8587                                      ; $5d0b: $c3 $87 $85


    nop                                           ; $5d0e: $00
    inc bc                                        ; $5d0f: $03
    xor a                                         ; $5d10: $af
    rst $38                                       ; $5d11: $ff
    db $fc                                        ; $5d12: $fc
    cp $f4                                        ; $5d13: $fe $f4
    ld a, b                                       ; $5d15: $78
    ld d, b                                       ; $5d16: $50
    nop                                           ; $5d17: $00
    nop                                           ; $5d18: $00
    inc l                                         ; $5d19: $2c
    inc bc                                        ; $5d1a: $03
    rla                                           ; $5d1b: $17
    rrca                                          ; $5d1c: $0f

jr_0a7_5d1d:
    inc a                                         ; $5d1d: $3c
    rra                                           ; $5d1e: $1f
    or a                                          ; $5d1f: $b7
    jr nz, jr_0a7_5da1                            ; $5d20: $20 $7f

    sbc a                                         ; $5d22: $9f
    cp d                                          ; $5d23: $ba
    nop                                           ; $5d24: $00
    rra                                           ; $5d25: $1f
    ld h, b                                       ; $5d26: $60
    dec e                                         ; $5d27: $1d
    ld [hl-], a                                   ; $5d28: $32
    adc d                                         ; $5d29: $8a
    nop                                           ; $5d2a: $00
    dec e                                         ; $5d2b: $1d
    db $db                                        ; $5d2c: $db
    rst $20                                       ; $5d2d: $e7
    ld a, e                                       ; $5d2e: $7b
    db $fc                                        ; $5d2f: $fc

jr_0a7_5d30:
    rrca                                          ; $5d30: $0f
    rst $38                                       ; $5d31: $ff
    db $f4                                        ; $5d32: $f4
    ld b, b                                       ; $5d33: $40
    ld [$00f0], sp                                ; $5d34: $08 $f0 $00
    dec b                                         ; $5d37: $05
    ld [c], a                                     ; $5d38: $e2
    add hl, de                                    ; $5d39: $19
    and c                                         ; $5d3a: $a1
    ld [hl], d                                    ; $5d3b: $72
    ld b, d                                       ; $5d3c: $42
    nop                                           ; $5d3d: $00
    db $e4                                        ; $5d3e: $e4
    inc bc                                        ; $5d3f: $03

jr_0a7_5d40:
    call nz, $8443                                ; $5d40: $c4 $43 $84
    add hl, bc                                    ; $5d43: $09
    ld [hl], b                                    ; $5d44: $70
    ld [hl], c                                    ; $5d45: $71

jr_0a7_5d46:
    ld [bc], a                                    ; $5d46: $02
    adc [hl]                                      ; $5d47: $8e
    adc [hl]                                      ; $5d48: $8e
    ld bc, $0031                                  ; $5d49: $01 $31 $00
    ld a, [hl]                                    ; $5d4c: $7e
    ld c, b                                       ; $5d4d: $48
    inc h                                         ; $5d4e: $24
    jp nz, Jump_000_3c00                          ; $5d4f: $c2 $00 $3c

    cp b                                          ; $5d52: $b8
    ld b, [hl]                                    ; $5d53: $46
    dec b                                         ; $5d54: $05
    ld a, [$fe01]                                 ; $5d55: $fa $01 $fe
    ld bc, $fe20                                  ; $5d58: $01 $20 $fe
    nop                                           ; $5d5b: $00
    ld [bc], a                                    ; $5d5c: $02
    nop                                           ; $5d5d: $00
    ld [bc], a                                    ; $5d5e: $02
    db $fd                                        ; $5d5f: $fd
    cp d                                          ; $5d60: $ba
    ld a, h                                       ; $5d61: $7c
    ld hl, $8000                                  ; $5d62: $21 $00 $80
    inc e                                         ; $5d65: $1c
    ld b, b                                       ; $5d66: $40
    and c                                         ; $5d67: $a1
    ld e, $42                                     ; $5d68: $1e $42
    ld hl, $003f                                  ; $5d6a: $21 $3f $00
    ld b, b                                       ; $5d6d: $40
    ld l, d                                       ; $5d6e: $6a
    sub l                                         ; $5d6f: $95
    ld d, l                                       ; $5d70: $55
    rst $28                                       ; $5d71: $ef
    ld de, $008c                                  ; $5d72: $11 $8c $00
    nop                                           ; $5d75: $00
    ld e, [hl]                                    ; $5d76: $5e
    xor h                                         ; $5d77: $ac
    inc de                                        ; $5d78: $13
    db $10                                        ; $5d79: $10
    ld a, a                                       ; $5d7a: $7f
    sub d                                         ; $5d7b: $92
    ccf                                           ; $5d7c: $3f
    dec a                                         ; $5d7d: $3d
    nop                                           ; $5d7e: $00
    sbc [hl]                                      ; $5d7f: $9e
    adc d                                         ; $5d80: $8a
    sbc h                                         ; $5d81: $9c
    inc c                                         ; $5d82: $0c
    add b                                         ; $5d83: $80
    ld l, b                                       ; $5d84: $68
    ldh a, [$90]                                  ; $5d85: $f0 $90
    nop                                           ; $5d87: $00

jr_0a7_5d88:
    ld h, b                                       ; $5d88: $60
    ld h, [hl]                                    ; $5d89: $66
    nop                                           ; $5d8a: $00
    ld [$4707], sp                                ; $5d8b: $08 $07 $47
    jr c, jr_0a7_5d40                             ; $5d8e: $38 $b0

    jr nz, jr_0a7_5dd2                            ; $5d90: $20 $40

    xor [hl]                                      ; $5d92: $ae
    sbc d                                         ; $5d93: $9a
    nop                                           ; $5d94: $00
    ld a, [bc]                                    ; $5d95: $0a
    db $fd                                        ; $5d96: $fd
    ld bc, $09fc                                  ; $5d97: $01 $fc $09
    nop                                           ; $5d9a: $00
    db $fc                                        ; $5d9b: $fc
    ld a, [hl+]                                   ; $5d9c: $2a
    db $fc                                        ; $5d9d: $fc
    add hl, de                                    ; $5d9e: $19
    db $fc                                        ; $5d9f: $fc
    or [hl]                                       ; $5da0: $b6

jr_0a7_5da1:
    ld hl, sp-$14                                 ; $5da1: $f8 $ec
    nop                                           ; $5da3: $00
    ldh a, [$37]                                  ; $5da4: $f0 $37
    adc $be                                       ; $5da6: $ce $be
    rst $38                                       ; $5da8: $ff
    ld [hl], d                                    ; $5da9: $72
    db $fc                                        ; $5daa: $fc
    sbc b                                         ; $5dab: $98
    nop                                           ; $5dac: $00
    ld h, b                                       ; $5dad: $60
    add h                                         ; $5dae: $84
    inc bc                                        ; $5daf: $03
    ld [hl+], a                                   ; $5db0: $22
    inc e                                         ; $5db1: $1c
    ld d, e                                       ; $5db2: $53
    jr nz, jr_0a7_5e14                            ; $5db3: $20 $5f

    nop                                           ; $5db5: $00
    jr nz, jr_0a7_5de7                            ; $5db6: $20 $2f

    jr nc, jr_0a7_5d46                            ; $5db8: $30 $8c

    nop                                           ; $5dba: $00

jr_0a7_5dbb:
    ld hl, $9e1e                                  ; $5dbb: $21 $1e $9e
    ld [$6361], sp                                ; $5dbe: $08 $61 $63
    add b                                         ; $5dc1: $80
    ld b, $b8                                     ; $5dc2: $06 $b8
    inc h                                         ; $5dc4: $24
    ld e, a                                       ; $5dc5: $5f
    jr nz, jr_0a7_5df3                            ; $5dc6: $20 $2b

    nop                                           ; $5dc8: $00
    inc [hl]                                      ; $5dc9: $34
    or l                                          ; $5dca: $b5
    ld a, [de]                                    ; $5dcb: $1a
    ld e, d                                       ; $5dcc: $5a
    adc a                                         ; $5dcd: $8f
    xor a                                         ; $5dce: $af
    ld b, a                                       ; $5dcf: $47
    ld d, l                                       ; $5dd0: $55
    nop                                           ; $5dd1: $00

jr_0a7_5dd2:
    inc hl                                        ; $5dd2: $23
    db $eb                                        ; $5dd3: $eb
    db $10                                        ; $5dd4: $10
    ldh a, [$08]                                  ; $5dd5: $f0 $08
    ld a, a                                       ; $5dd7: $7f
    ccf                                           ; $5dd8: $3f
    pop hl                                        ; $5dd9: $e1
    ld [$df7f], sp                                ; $5dda: $08 $7f $df
    rst $38                                       ; $5ddd: $ff
    cp a                                          ; $5dde: $bf
    ld e, e                                       ; $5ddf: $5b
    ld [bc], a                                    ; $5de0: $02
    db $fc                                        ; $5de1: $fc
    cp $ff                                        ; $5de2: $fe $ff
    nop                                           ; $5de4: $00
    db $fc                                        ; $5de5: $fc
    db $fc                                        ; $5de6: $fc

jr_0a7_5de7:
    ld sp, hl                                     ; $5de7: $f9
    or a                                          ; $5de8: $b7
    jr jr_0a7_5d88                                ; $5de9: $18 $9d

    adc [hl]                                      ; $5deb: $8e
    ld c, [hl]                                    ; $5dec: $4e
    nop                                           ; $5ded: $00
    add a                                         ; $5dee: $87
    and a                                         ; $5def: $a7
    inc bc                                        ; $5df0: $03

jr_0a7_5df1:
    nop                                           ; $5df1: $00
    ld a, l                                       ; $5df2: $7d

jr_0a7_5df3:
    jr c, jr_0a7_5dbb                             ; $5df3: $38 $c6

    ld h, l                                       ; $5df5: $65
    nop                                           ; $5df6: $00
    sbc d                                         ; $5df7: $9a
    ld [bc], a                                    ; $5df8: $02
    db $fd                                        ; $5df9: $fd
    rst $38                                       ; $5dfa: $ff
    nop                                           ; $5dfb: $00

jr_0a7_5dfc:
    ld a, d                                       ; $5dfc: $7a
    add l                                         ; $5dfd: $85
    inc h                                         ; $5dfe: $24
    jr nz, jr_0a7_5dfc                            ; $5dff: $20 $fb

    db $d3                                        ; $5e01: $d3
    ld a, d                                       ; $5e02: $7a
    ld [bc], a                                    ; $5e03: $02
    cp [hl]                                       ; $5e04: $be
    ld a, h                                       ; $5e05: $7c
    cp b                                          ; $5e06: $b8
    nop                                           ; $5e07: $00
    ld b, h                                       ; $5e08: $44
    nop                                           ; $5e09: $00
    inc bc                                        ; $5e0a: $03
    ldh a, [$08]                                  ; $5e0b: $f0 $08
    xor d                                         ; $5e0d: $aa
    ld d, c                                       ; $5e0e: $51
    call nc, Call_0a7_45e3                        ; $5e0f: $d4 $e3 $45
    nop                                           ; $5e12: $00
    add [hl]                                      ; $5e13: $86

jr_0a7_5e14:
    add h                                         ; $5e14: $84
    rlca                                          ; $5e15: $07
    inc c                                         ; $5e16: $0c
    daa                                           ; $5e17: $27
    add [hl]                                      ; $5e18: $86
    ld d, e                                       ; $5e19: $53
    inc de                                        ; $5e1a: $13
    nop                                           ; $5e1b: $00
    db $eb                                        ; $5e1c: $eb
    ld [hl], e                                    ; $5e1d: $73
    ld sp, hl                                     ; $5e1e: $f9
    ld c, b                                       ; $5e1f: $48
    inc sp                                        ; $5e20: $33
    dec d                                         ; $5e21: $15
    add e                                         ; $5e22: $83
    and e                                         ; $5e23: $a3
    nop                                           ; $5e24: $00
    ld c, c                                       ; $5e25: $49
    ret nz                                        ; $5e26: $c0

    ld sp, $20c5                                  ; $5e27: $31 $c5 $20
    add $28                                       ; $5e2a: $c6 $28
    xor b                                         ; $5e2c: $a8
    jr @+$53                                      ; $5e2d: $18 $51

    inc b                                         ; $5e2f: $04
    ei                                            ; $5e30: $fb
    ld e, d                                       ; $5e31: $5a
    dec bc                                        ; $5e32: $0b
    ld b, b                                       ; $5e33: $40
    inc c                                         ; $5e34: $0c
    add b                                         ; $5e35: $80
    rst $38                                       ; $5e36: $ff
    ld b, c                                       ; $5e37: $41
    add b                                         ; $5e38: $80
    nop                                           ; $5e39: $00
    inc b                                         ; $5e3a: $04
    and e                                         ; $5e3b: $a3
    inc e                                         ; $5e3c: $1c
    ld e, h                                       ; $5e3d: $5c
    jr nz, jr_0a7_5df1                            ; $5e3e: $20 $b1

    ld b, b                                       ; $5e40: $40
    xor a                                         ; $5e41: $af
    db $10                                        ; $5e42: $10
    ld b, b                                       ; $5e43: $40
    rra                                           ; $5e44: $1f
    and b                                         ; $5e45: $a0
    ld [bc], a                                    ; $5e46: $02
    ld [$20bf], sp                                ; $5e47: $08 $bf $20
    db $ed                                        ; $5e4a: $ed
    ld de, $1404                                  ; $5e4b: $11 $04 $14
    ld [$04ea], sp                                ; $5e4e: $08 $ea $04
    db $f4                                        ; $5e51: $f4
    add e                                         ; $5e52: $83
    inc bc                                        ; $5e53: $03
    rst $38                                       ; $5e54: $ff
    ld [bc], a                                    ; $5e55: $02
    ld [bc], a                                    ; $5e56: $02
    ld a, [$fe06]                                 ; $5e57: $fa $06 $fe
    inc b                                         ; $5e5a: $04
    rst $30                                       ; $5e5b: $f7
    adc b                                         ; $5e5c: $88
    ld [de], a                                    ; $5e5d: $12
    ld e, h                                       ; $5e5e: $5c
    rst $38                                       ; $5e5f: $ff
    ld [hl], d                                    ; $5e60: $72
    add b                                         ; $5e61: $80
    ld [hl-], a                                   ; $5e62: $32
    ld l, l                                       ; $5e63: $6d
    add d                                         ; $5e64: $82
    ld l, l                                       ; $5e65: $6d
    ld [hl], d                                    ; $5e66: $72
    ld e, l                                       ; $5e67: $5d
    db $ec                                        ; $5e68: $ec
    inc de                                        ; $5e69: $13
    ld a, [c]                                     ; $5e6a: $f2
    ld c, e                                       ; $5e6b: $4b
    db $fd                                        ; $5e6c: $fd
    ld bc, $f603                                  ; $5e6d: $01 $03 $f6
    add hl, bc                                    ; $5e70: $09
    ei                                            ; $5e71: $fb
    dec b                                         ; $5e72: $05
    db $ec                                        ; $5e73: $ec
    inc de                                        ; $5e74: $13
    add d                                         ; $5e75: $82
    dec c                                         ; $5e76: $0d
    nop                                           ; $5e77: $00
    push af                                       ; $5e78: $f5
    dec bc                                        ; $5e79: $0b
    db $db                                        ; $5e7a: $db
    daa                                           ; $5e7b: $27
    db $ed                                        ; $5e7c: $ed
    inc de                                        ; $5e7d: $13
    ld a, [$9005]                                 ; $5e7e: $fa $05 $90
    sub d                                         ; $5e81: $92
    ld l, l                                       ; $5e82: $6d
    rst $28                                       ; $5e83: $ef
    ld de, $3da2                                  ; $5e84: $11 $a2 $3d
    db $db                                        ; $5e87: $db
    dec h                                         ; $5e88: $25
    ld a, e                                       ; $5e89: $7b
    dec b                                         ; $5e8a: $05
    inc d                                         ; $5e8b: $14
    ld l, h                                       ; $5e8c: $6c
    inc de                                        ; $5e8d: $13
    ld a, e                                       ; $5e8e: $7b
    or b                                          ; $5e8f: $b0
    dec b                                         ; $5e90: $05
    ld [hl], l                                    ; $5e91: $75
    ld l, $10                                     ; $5e92: $2e $10
    sub b                                         ; $5e94: $90
    ld l, a                                       ; $5e95: $6f
    sbc [hl]                                      ; $5e96: $9e
    ldh [$5d], a                                  ; $5e97: $e0 $5d
    ld [hl], a                                    ; $5e99: $77
    adc b                                         ; $5e9a: $88
    pop af                                        ; $5e9b: $f1
    dec c                                         ; $5e9c: $0d
    ld [hl], d                                    ; $5e9d: $72
    ld d, h                                       ; $5e9e: $54
    add d                                         ; $5e9f: $82
    inc b                                         ; $5ea0: $04
    ld [hl], d                                    ; $5ea1: $72
    ld c, h                                       ; $5ea2: $4c
    nop                                           ; $5ea3: $00
    jr @+$01                                      ; $5ea4: $18 $ff

    ccf                                           ; $5ea6: $3f
    ret nz                                        ; $5ea7: $c0

    xor e                                         ; $5ea8: $ab
    ld [bc], a                                    ; $5ea9: $02
    ld [bc], a                                    ; $5eaa: $02
    jr nc, jr_0a7_5eb0                            ; $5eab: $30 $03

    rst $38                                       ; $5ead: $ff
    ld sp, hl                                     ; $5eae: $f9
    ld e, d                                       ; $5eaf: $5a

jr_0a7_5eb0:
    rlca                                          ; $5eb0: $07
    ld d, e                                       ; $5eb1: $53
    inc bc                                        ; $5eb2: $03
    rst $30                                       ; $5eb3: $f7
    inc b                                         ; $5eb4: $04
    jr z, jr_0a7_5ed3                             ; $5eb5: $28 $1c

    jr jr_0a7_5f38                                ; $5eb7: $18 $7f

    scf                                           ; $5eb9: $37
    ld b, $3c                                     ; $5eba: $06 $3c
    dec b                                         ; $5ebc: $05
    jp $fb44                                      ; $5ebd: $c3 $44 $fb


    ld b, h                                       ; $5ec0: $44
    ei                                            ; $5ec1: $fb
    inc e                                         ; $5ec2: $1c
    jr @-$0d                                      ; $5ec3: $18 $f1

    jr z, jr_0a7_5ec7                             ; $5ec5: $28 $00

jr_0a7_5ec7:
    inc bc                                        ; $5ec7: $03
    ld a, c                                       ; $5ec8: $79
    add a                                         ; $5ec9: $87
    adc e                                         ; $5eca: $8b
    rst $30                                       ; $5ecb: $f7
    adc c                                         ; $5ecc: $89
    rst $30                                       ; $5ecd: $f7
    ld d, b                                       ; $5ece: $50
    ld c, [hl]                                    ; $5ecf: $4e
    ld [c], a                                     ; $5ed0: $e2
    inc c                                         ; $5ed1: $0c
    ld [c], a                                     ; $5ed2: $e2

jr_0a7_5ed3:
    ret nc                                        ; $5ed3: $d0

    ld e, b                                       ; $5ed4: $58
    jp nz, $b20c                                  ; $5ed5: $c2 $0c $b2

    ld e, h                                       ; $5ed8: $5c
    ld b, h                                       ; $5ed9: $44
    ei                                            ; $5eda: $fb
    ld a, b                                       ; $5edb: $78
    ld [hl], h                                    ; $5edc: $74
    ld d, b                                       ; $5edd: $50
    xor e                                         ; $5ede: $ab
    nop                                           ; $5edf: $00
    rst $00                                       ; $5ee0: $c7
    pop de                                        ; $5ee1: $d1
    rst $18                                       ; $5ee2: $df
    ld b, e                                       ; $5ee3: $43
    rst $18                                       ; $5ee4: $df
    reti                                          ; $5ee5: $d9


    ld b, a                                       ; $5ee6: $47
    ld c, e                                       ; $5ee7: $4b
    ld b, $d7                                     ; $5ee8: $06 $d7
    ld l, c                                       ; $5eea: $69
    rst $00                                       ; $5eeb: $c7
    dec sp                                        ; $5eec: $3b
    rst $20                                       ; $5eed: $e7
    ld [hl], b                                    ; $5eee: $70
    jr z, jr_0a7_5f65                             ; $5eef: $28 $74

    jr z, jr_0a7_5f48                             ; $5ef1: $28 $55

    ld h, b                                       ; $5ef3: $60
    rst $38                                       ; $5ef4: $ff
    adc h                                         ; $5ef5: $8c
    jr c, @+$76                                   ; $5ef6: $38 $74

    ld [$ff55], sp                                ; $5ef8: $08 $55 $ff
    ld h, h                                       ; $5efb: $64
    bit 6, b                                      ; $5efc: $cb $70
    nop                                           ; $5efe: $00
    rst $30                                       ; $5eff: $f7
    db $10                                        ; $5f00: $10
    rst $30                                       ; $5f01: $f7
    scf                                           ; $5f02: $37
    ret nc                                        ; $5f03: $d0

    ld d, b                                       ; $5f04: $50
    rst $30                                       ; $5f05: $f7
    ld l, b                                       ; $5f06: $68
    inc bc                                        ; $5f07: $03
    rst $00                                       ; $5f08: $c7
    ld [hl], b                                    ; $5f09: $70
    rst $28                                       ; $5f0a: $ef
    ld b, b                                       ; $5f0b: $40
    rst $38                                       ; $5f0c: $ff
    adc e                                         ; $5f0d: $8b
    adc h                                         ; $5f0e: $8c
    db $10                                        ; $5f0f: $10
    or h                                          ; $5f10: $b4
    jr c, jr_0a7_5f13                             ; $5f11: $38 $00

jr_0a7_5f13:
    ld bc, $477f                                  ; $5f13: $01 $7f $47
    rst $00                                       ; $5f16: $c7
    dec l                                         ; $5f17: $2d
    ld l, a                                       ; $5f18: $6f
    ld c, b                                       ; $5f19: $48
    rst $08                                       ; $5f1a: $cf
    nop                                           ; $5f1b: $00
    ld [$4d8f], sp                                ; $5f1c: $08 $8f $4d
    rst $08                                       ; $5f1f: $cf
    add hl, bc                                    ; $5f20: $09
    adc a                                         ; $5f21: $8f
    ld c, d                                       ; $5f22: $4a
    rst $08                                       ; $5f23: $cf
    nop                                           ; $5f24: $00
    ldh [$fe], a                                  ; $5f25: $e0 $fe
    ld a, [c]                                     ; $5f27: $f2
    sub e                                         ; $5f28: $93
    db $fc                                        ; $5f29: $fc
    ld a, $fa                                     ; $5f2a: $3e $fa
    ei                                            ; $5f2c: $fb
    nop                                           ; $5f2d: $00
    ld hl, sp-$47                                 ; $5f2e: $f8 $b9
    ld a, [$78fb]                                 ; $5f30: $fa $fb $78
    ld sp, hl                                     ; $5f33: $f9
    ld a, [hl]                                    ; $5f34: $7e
    rst $30                                       ; $5f35: $f7
    nop                                           ; $5f36: $00
    dec bc                                        ; $5f37: $0b

jr_0a7_5f38:
    adc a                                         ; $5f38: $8f
    ld c, h                                       ; $5f39: $4c
    rst $08                                       ; $5f3a: $cf
    inc bc                                        ; $5f3b: $03
    add e                                         ; $5f3c: $83
    rra                                           ; $5f3d: $1f
    ld e, $00                                     ; $5f3e: $1e $00
    daa                                           ; $5f40: $27
    cp a                                          ; $5f41: $bf
    ld d, a                                       ; $5f42: $57
    ld a, [hl]                                    ; $5f43: $7e
    ld a, a                                       ; $5f44: $7f
    ld a, a                                       ; $5f45: $7f
    rst $38                                       ; $5f46: $ff
    cp [hl]                                       ; $5f47: $be

jr_0a7_5f48:
    nop                                           ; $5f48: $00
    inc a                                         ; $5f49: $3c
    db $ed                                        ; $5f4a: $ed
    ld a, d                                       ; $5f4b: $7a
    ei                                            ; $5f4c: $fb
    ldh a, [$f1]                                  ; $5f4d: $f0 $f1
    ld hl, sp-$38                                 ; $5f4f: $f8 $c8
    ld [bc], a                                    ; $5f51: $02
    db $fc                                        ; $5f52: $fc
    push af                                       ; $5f53: $f5
    db $fc                                        ; $5f54: $fc
    db $fc                                        ; $5f55: $fc
    cp $fa                                        ; $5f56: $fe $fa
    rst $08                                       ; $5f58: $cf
    dec b                                         ; $5f59: $05
    add b                                         ; $5f5a: $80
    nop                                           ; $5f5b: $00

jr_0a7_5f5c:
    ld e, h                                       ; $5f5c: $5c
    ld h, e                                       ; $5f5d: $63
    ld a, $41                                     ; $5f5e: $3e $41
    ld a, [hl+]                                   ; $5f60: $2a
    ld d, l                                       ; $5f61: $55
    ld bc, $04bf                                  ; $5f62: $01 $bf $04

jr_0a7_5f65:
    ld h, e                                       ; $5f65: $63
    ld a, a                                       ; $5f66: $7f
    ld b, c                                       ; $5f67: $41
    ld a, a                                       ; $5f68: $7f
    inc e                                         ; $5f69: $1c
    inc c                                         ; $5f6a: $0c
    jr jr_0a7_5fec                                ; $5f6b: $18 $7f

    ld h, e                                       ; $5f6d: $63
    jr z, jr_0a7_5fef                             ; $5f6e: $28 $7f

    ld e, l                                       ; $5f70: $5d
    ld a, [bc]                                    ; $5f71: $0a
    ld b, b                                       ; $5f72: $40
    cp [hl]                                       ; $5f73: $be
    jr nz, jr_0a7_5f76                            ; $5f74: $20 $00

jr_0a7_5f76:
    ld d, l                                       ; $5f76: $55
    rst $38                                       ; $5f77: $ff
    cp a                                          ; $5f78: $bf
    nop                                           ; $5f79: $00
    ld b, b                                       ; $5f7a: $40
    jr nz, jr_0a7_5f5c                            ; $5f7b: $20 $df

    and b                                         ; $5f7d: $a0
    ld e, a                                       ; $5f7e: $5f
    add $fe                                       ; $5f7f: $c6 $fe
    cp d                                          ; $5f81: $ba
    nop                                           ; $5f82: $00
    add $7d                                       ; $5f83: $c6 $7d
    add d                                         ; $5f85: $82
    ld d, h                                       ; $5f86: $54
    xor d                                         ; $5f87: $aa
    ld d, h                                       ; $5f88: $54
    rst $38                                       ; $5f89: $ff
    db $fd                                        ; $5f8a: $fd
    nop                                           ; $5f8b: $00
    ld [bc], a                                    ; $5f8c: $02
    inc b                                         ; $5f8d: $04
    ei                                            ; $5f8e: $fb
    ld bc, $7ffe                                  ; $5f8f: $01 $fe $7f
    inc bc                                        ; $5f92: $03
    rst $08                                       ; $5f93: $cf
    nop                                           ; $5f94: $00
    ld c, [hl]                                    ; $5f95: $4e
    ld a, a                                       ; $5f96: $7f
    dec sp                                        ; $5f97: $3b
    rst $38                                       ; $5f98: $ff
    ld l, l                                       ; $5f99: $6d
    cp a                                          ; $5f9a: $bf
    jr c, @+$01                                   ; $5f9b: $38 $ff

jr_0a7_5f9d:
    nop                                           ; $5f9d: $00
    halt                                          ; $5f9e: $76
    sbc c                                         ; $5f9f: $99
    ld e, $cf                                     ; $5fa0: $1e $cf
    ld c, c                                       ; $5fa2: $49
    cp $80                                        ; $5fa3: $fe $80
    db $e3                                        ; $5fa5: $e3
    nop                                           ; $5fa6: $00
    ld h, d                                       ; $5fa7: $62
    or $d4                                        ; $5fa8: $f6 $d4

jr_0a7_5faa:
    ei                                            ; $5faa: $fb

jr_0a7_5fab:
    ld l, d                                       ; $5fab: $6a
    ld sp, hl                                     ; $5fac: $f9
    jr c, jr_0a7_5faa                             ; $5fad: $38 $fb

    nop                                           ; $5faf: $00
    jp c, $f031                                   ; $5fb0: $da $31 $f0

    db $e3                                        ; $5fb3: $e3
    ld [hl+], a                                   ; $5fb4: $22
    adc a                                         ; $5fb5: $8f
    dec bc                                        ; $5fb6: $0b
    rst $18                                       ; $5fb7: $df
    nop                                           ; $5fb8: $00
    ld e, h                                       ; $5fb9: $5c
    sub a                                         ; $5fba: $97
    rra                                           ; $5fbb: $1f
    dec sp                                        ; $5fbc: $3b
    ccf                                           ; $5fbd: $3f
    rst $10                                       ; $5fbe: $d7
    ld a, [hl]                                    ; $5fbf: $7e
    ld e, e                                       ; $5fc0: $5b
    nop                                           ; $5fc1: $00
    ld a, a                                       ; $5fc2: $7f
    ld d, e                                       ; $5fc3: $53
    ld a, a                                       ; $5fc4: $7f
    ld e, e                                       ; $5fc5: $5b
    ld a, a                                       ; $5fc6: $7f
    pop hl                                        ; $5fc7: $e1
    jr nz, jr_0a7_5f9d                            ; $5fc8: $20 $d3

    nop                                           ; $5fca: $00
    ld [hl], d                                    ; $5fcb: $72
    pop de                                        ; $5fcc: $d1
    ldh a, [$b8]                                  ; $5fcd: $f0 $b8
    ld hl, sp-$2b                                 ; $5fcf: $f8 $d5

jr_0a7_5fd1:
    db $fc                                        ; $5fd1: $fc
    or h                                          ; $5fd2: $b4

jr_0a7_5fd3:
    jr z, jr_0a7_5fd1                             ; $5fd3: $28 $fc

    sub h                                         ; $5fd5: $94
    inc b                                         ; $5fd6: $04
    nop                                           ; $5fd7: $00
    rst $18                                       ; $5fd8: $df
    pop de                                        ; $5fd9: $d1
    ld d, a                                       ; $5fda: $57
    ld a, a                                       ; $5fdb: $7f
    rst $38                                       ; $5fdc: $ff
    ld sp, hl                                     ; $5fdd: $f9
    add b                                         ; $5fde: $80
    pop hl                                        ; $5fdf: $e1
    ld h, a                                       ; $5fe0: $67
    db $d3                                        ; $5fe1: $d3
    db $e4                                        ; $5fe2: $e4
    dec [hl]                                      ; $5fe3: $35
    ld a, [$fbd8]                                 ; $5fe4: $fa $d8 $fb
    ld sp, hl                                     ; $5fe7: $f9
    nop                                           ; $5fe8: $00
    ei                                            ; $5fe9: $fb
    ldh a, [$f9]                                  ; $5fea: $f0 $f9

jr_0a7_5fec:
    ld hl, sp-$10                                 ; $5fec: $f8 $f0
    di                                            ; $5fee: $f3

jr_0a7_5fef:
    ldh [rLY], a                                  ; $5fef: $e0 $44
    ld b, b                                       ; $5ff1: $40
    add e                                         ; $5ff2: $83
    ret nc                                        ; $5ff3: $d0

    rrca                                          ; $5ff4: $0f
    cp a                                          ; $5ff5: $bf
    ld b, b                                       ; $5ff6: $40
    ld e, l                                       ; $5ff7: $5d
    and e                                         ; $5ff8: $a3
    adc d                                         ; $5ff9: $8a
    rst $30                                       ; $5ffa: $f7
    nop                                           ; $5ffb: $00
    ld l, h                                       ; $5ffc: $6c
    cp $20                                        ; $5ffd: $fe $20
    inc e                                         ; $5fff: $1c

Call_0a7_6000:
jr_0a7_6000:
    db $10                                        ; $6000: $10
    pop hl                                        ; $6001: $e1
    ld a, a                                       ; $6002: $7f
    ld a, a                                       ; $6003: $7f
    nop                                           ; $6004: $00
    rra                                           ; $6005: $1f
    ccf                                           ; $6006: $3f
    ld d, $0f                                     ; $6007: $16 $0f
    ld sp, $80c0                                  ; $6009: $31 $c0 $80
    ld a, a                                       ; $600c: $7f
    jr nz, jr_0a7_6000                            ; $600d: $20 $f1

    ld c, $eb                                     ; $600f: $0e $eb
    rrca                                          ; $6011: $0f
    db $fd                                        ; $6012: $fd
    cp $c8                                        ; $6013: $fe $c8
    ld a, [c]                                     ; $6015: $f2
    ld h, c                                       ; $6016: $61
    nop                                           ; $6017: $00
    add h                                         ; $6018: $84
    adc e                                         ; $6019: $8b

Call_0a7_601a:
    ld [hl], b                                    ; $601a: $70
    dec b                                         ; $601b: $05

jr_0a7_601c:
    ld hl, sp+$67                                 ; $601c: $f8 $67
    sbc b                                         ; $601e: $98
    nop                                           ; $601f: $00
    nop                                           ; $6020: $00
    db $fc                                        ; $6021: $fc
    ld [$23fc], sp                                ; $6022: $08 $fc $23
    inc e                                         ; $6025: $1c
    sub h                                         ; $6026: $94
    ld h, b                                       ; $6027: $60
    ld l, a                                       ; $6028: $6f
    jr nz, jr_0a7_5fab                            ; $6029: $20 $80

    ld e, a                                       ; $602b: $5f
    add b                                         ; $602c: $80
    dec b                                         ; $602d: $05
    ld e, a                                       ; $602e: $5f
    and b                                         ; $602f: $a0
    adc e                                         ; $6030: $8b
    ld [hl], h                                    ; $6031: $74
    ld d, h                                       ; $6032: $54
    nop                                           ; $6033: $00
    dec sp                                        ; $6034: $3b
    db $e4                                        ; $6035: $e4
    add hl, de                                    ; $6036: $19
    add hl, de                                    ; $6037: $19
    inc b                                         ; $6038: $04
    jp z, $ea04                                   ; $6039: $ca $04 $ea

    add b                                         ; $603c: $80
    sub $04                                       ; $603d: $d6 $04
    db $f4                                        ; $603f: $f4
    add hl, bc                                    ; $6040: $09
    pop de                                        ; $6041: $d1
    ld a, [hl-]                                   ; $6042: $3a
    ld h, d                                       ; $6043: $62
    db $f4                                        ; $6044: $f4
    add [hl]                                      ; $6045: $86
    nop                                           ; $6046: $00
    ld e, c                                       ; $6047: $59
    sub l                                         ; $6048: $95
    ld c, [hl]                                    ; $6049: $4e
    ld a, [bc]                                    ; $604a: $0a
    rst $00                                       ; $604b: $c7
    inc bc                                        ; $604c: $03
    add b                                         ; $604d: $80
    ld c, h                                       ; $604e: $4c
    nop                                           ; $604f: $00
    jr nc, jr_0a7_5fd3                            ; $6050: $30 $81

    ld a, [hl]                                    ; $6052: $7e
    jr c, jr_0a7_601c                             ; $6053: $38 $c7

    ld b, d                                       ; $6055: $42
    cp l                                          ; $6056: $bd
    ldh [rP1], a                                  ; $6057: $e0 $00
    nop                                           ; $6059: $00
    db $eb                                        ; $605a: $eb
    nop                                           ; $605b: $00
    ret                                           ; $605c: $c9


    rst $38                                       ; $605d: $ff
    jp c, Jump_000_04a1                           ; $605e: $da $a1 $04

    nop                                           ; $6061: $00
    ei                                            ; $6062: $fb
    jp z, Jump_0a7_57bf                           ; $6063: $ca $bf $57

    xor b                                         ; $6066: $a8
    xor l                                         ; $6067: $ad
    ret z                                         ; $6068: $c8

    cp a                                          ; $6069: $bf
    nop                                           ; $606a: $00
    ld b, b                                       ; $606b: $40
    ret c                                         ; $606c: $d8

    daa                                           ; $606d: $27
    adc d                                         ; $606e: $8a
    rst $38                                       ; $606f: $ff
    ld d, h                                       ; $6070: $54

jr_0a7_6071:
    adc e                                         ; $6071: $8b
    ret z                                         ; $6072: $c8

    inc b                                         ; $6073: $04
    scf                                           ; $6074: $37
    xor d                                         ; $6075: $aa
    rst $38                                       ; $6076: $ff
    inc de                                        ; $6077: $13
    ldh [$2f], a                                  ; $6078: $e0 $2f
    ld bc, $83ff                                  ; $607a: $01 $ff $83
    nop                                           ; $607d: $00
    rst $38                                       ; $607e: $ff
    rst $10                                       ; $607f: $d7
    cp $ef                                        ; $6080: $fe $ef
    ld a, h                                       ; $6082: $7c
    ld a, h                                       ; $6083: $7c
    add hl, sp                                    ; $6084: $39
    ld [bc], a                                    ; $6085: $02
    nop                                           ; $6086: $00
    add c                                         ; $6087: $81
    and e                                         ; $6088: $a3
    ld b, c                                       ; $6089: $41
    ld b, c                                       ; $608a: $41
    inc sp                                        ; $608b: $33
    db $10                                        ; $608c: $10
    add sp, -$54                                  ; $608d: $e8 $ac
    nop                                           ; $608f: $00
    ret z                                         ; $6090: $c8

    ld d, a                                       ; $6091: $57

jr_0a7_6092:
    xor b                                         ; $6092: $a8
    adc a                                         ; $6093: $8f
    cp d                                          ; $6094: $ba
    ld b, a                                       ; $6095: $47
    cp b                                          ; $6096: $b8
    xor a                                         ; $6097: $af
    nop                                           ; $6098: $00
    ret c                                         ; $6099: $d8

    inc b                                         ; $609a: $04
    db $db                                        ; $609b: $db
    ld hl, sp-$71                                 ; $609c: $f8 $8f
    ld d, [hl]                                    ; $609e: $56
    dec l                                         ; $609f: $2d
    dec c                                         ; $60a0: $0d
    ld [bc], a                                    ; $60a1: $02
    or [hl]                                       ; $60a2: $b6
    ld e, $a5                                     ; $60a3: $1e $a5
    adc l                                         ; $60a5: $8d
    or [hl]                                       ; $60a6: $b6
    sbc [hl]                                      ; $60a7: $9e
    inc b                                         ; $60a8: $04
    jr nz, jr_0a7_6092                            ; $60a9: $20 $e7

    nop                                           ; $60ab: $00
    jr jr_0a7_6071                                ; $60ac: $18 $c3

    ld a, h                                       ; $60ae: $7c
    pop hl                                        ; $60af: $e1
    rra                                           ; $60b0: $1f
    ld sp, $1f0e                                  ; $60b1: $31 $0e $1f
    db $10                                        ; $60b4: $10
    db $10                                        ; $60b5: $10
    rla                                           ; $60b6: $17
    ld bc, $056d                                  ; $60b7: $01 $6d $05
    jr nz, jr_0a7_60fc                            ; $60ba: $20 $40

    xor a                                         ; $60bc: $af
    sbc l                                         ; $60bd: $9d
    nop                                           ; $60be: $00
    xor e                                         ; $60bf: $ab
    daa                                           ; $60c0: $27
    sbc b                                         ; $60c1: $98
    call c, Call_000_20a8                         ; $60c2: $dc $a8 $20
    ret c                                         ; $60c5: $d8

    sbc c                                         ; $60c6: $99

jr_0a7_60c7:
    nop                                           ; $60c7: $00
    add sp, $67                                   ; $60c8: $e8 $67
    sbc h                                         ; $60ca: $9c
    rst $28                                       ; $60cb: $ef
    sbc b                                         ; $60cc: $98
    sbc h                                         ; $60cd: $9c
    and a                                         ; $60ce: $a7
    adc l                                         ; $60cf: $8d
    nop                                           ; $60d0: $00
    or [hl]                                       ; $60d1: $b6
    adc a                                         ; $60d2: $8f
    or h                                          ; $60d3: $b4
    sub a                                         ; $60d4: $97
    xor h                                         ; $60d5: $ac
    rst $18                                       ; $60d6: $df
    and h                                         ; $60d7: $a4
    sbc a                                         ; $60d8: $9f
    ld l, c                                       ; $60d9: $69
    and h                                         ; $60da: $a4
    inc b                                         ; $60db: $04
    ld [$0f20], sp                                ; $60dc: $08 $20 $0f
    xor [hl]                                      ; $60df: $ae
    sub [hl]                                      ; $60e0: $96
    inc bc                                        ; $60e1: $03
    xor [hl]                                      ; $60e2: $ae
    ld d, c                                       ; $60e3: $51
    ld l, d                                       ; $60e4: $6a
    rrca                                          ; $60e5: $0f
    nop                                           ; $60e6: $00
    xor [hl]                                      ; $60e7: $ae
    ld d, c                                       ; $60e8: $51
    sbc a                                         ; $60e9: $9f
    db $e4                                        ; $60ea: $e4
    sbc a                                         ; $60eb: $9f
    and h                                         ; $60ec: $a4
    rst $10                                       ; $60ed: $d7
    db $ec                                        ; $60ee: $ec
    rla                                           ; $60ef: $17
    add l                                         ; $60f0: $85
    cp $c4                                        ; $60f1: $fe $c4
    ld a, b                                       ; $60f3: $78
    nop                                           ; $60f4: $00
    ret nz                                        ; $60f5: $c0

    ld a, [bc]                                    ; $60f6: $0a
    dec b                                         ; $60f7: $05
    ld a, [de]                                    ; $60f8: $1a
    jr z, jr_0a7_60c7                             ; $60f9: $28 $cc

    ld a, [de]                                    ; $60fb: $1a

jr_0a7_60fc:
    add b                                         ; $60fc: $80
    adc l                                         ; $60fd: $8d
    rrca                                          ; $60fe: $0f
    rra                                           ; $60ff: $1f
    ldh [rNR44], a                                ; $6100: $e0 $23
    call c, $e01f                                 ; $6102: $dc $1f $e0
    daa                                           ; $6105: $27
    ld b, $d8                                     ; $6106: $06 $d8
    ld e, a                                       ; $6108: $5f
    and b                                         ; $6109: $a0
    ld e, a                                       ; $610a: $5f
    and b                                         ; $610b: $a0
    ld l, h                                       ; $610c: $6c
    rrca                                          ; $610d: $0f
    and d                                         ; $610e: $a2
    ld c, a                                       ; $610f: $4f
    db $fc                                        ; $6110: $fc
    ld h, c                                       ; $6111: $61
    inc bc                                        ; $6112: $03
    db $10                                        ; $6113: $10
    ld e, b                                       ; $6114: $58
    jr nz, jr_0a7_612f                            ; $6115: $20 $18

    cp $01                                        ; $6117: $fe $01
    db $fd                                        ; $6119: $fd
    ld [bc], a                                    ; $611a: $02
    dec e                                         ; $611b: $1d
    rlca                                          ; $611c: $07
    add b                                         ; $611d: $80
    ld [de], a                                    ; $611e: $12
    jr nz, jr_0a7_6199                            ; $611f: $20 $78

    add a                                         ; $6121: $87
    ld [hl], a                                    ; $6122: $77
    adc a                                         ; $6123: $8f
    ld l, b                                       ; $6124: $68
    sbc a                                         ; $6125: $9f
    ld d, a                                       ; $6126: $57
    nop                                           ; $6127: $00
    cp a                                          ; $6128: $bf
    ld e, a                                       ; $6129: $5f
    cp a                                          ; $612a: $bf
    ld e, a                                       ; $612b: $5f
    or a                                          ; $612c: $b7
    ld c, a                                       ; $612d: $4f
    adc e                                         ; $612e: $8b

jr_0a7_612f:
    ei                                            ; $612f: $fb
    nop                                           ; $6130: $00
    ld b, $7b                                     ; $6131: $06 $7b
    add a                                         ; $6133: $87
    cp b                                          ; $6134: $b8
    jp Jump_0a7_63d9                              ; $6135: $c3 $d9 $63


    db $ed                                        ; $6138: $ed
    nop                                           ; $6139: $00
    or b                                          ; $613a: $b0
    xor e                                         ; $613b: $ab
    rst $30                                       ; $613c: $f7
    xor c                                         ; $613d: $a9
    di                                            ; $613e: $f3
    ld e, b                                       ; $613f: $58
    push bc                                       ; $6140: $c5
    cp a                                          ; $6141: $bf
    dec b                                         ; $6142: $05
    ld b, b                                       ; $6143: $40
    cp a                                          ; $6144: $bf
    ret nz                                        ; $6145: $c0

    ld a, a                                       ; $6146: $7f
    ret nz                                        ; $6147: $c0

    inc b                                         ; $6148: $04
    nop                                           ; $6149: $00
    add b                                         ; $614a: $80
    ld a, [bc]                                    ; $614b: $0a
    stop                                          ; $614c: $10 $00
    add b                                         ; $614e: $80
    ld h, a                                       ; $614f: $67
    sub a                                         ; $6150: $97
    ld [hl], b                                    ; $6151: $70
    adc b                                         ; $6152: $88
    ld a, b                                       ; $6153: $78
    add a                                         ; $6154: $87
    ld a, a                                       ; $6155: $7f
    ld [bc], a                                    ; $6156: $02
    add b                                         ; $6157: $80
    ld [hl], b                                    ; $6158: $70
    adc a                                         ; $6159: $8f
    ld l, e                                       ; $615a: $6b
    sbc a                                         ; $615b: $9f
    ld h, b                                       ; $615c: $60
    ld b, $00                                     ; $615d: $06 $00
    sbc a                                         ; $615f: $9f
    ld [hl-], a                                   ; $6160: $32
    and b                                         ; $6161: $a0
    ccf                                           ; $6162: $3f
    sbc $06                                       ; $6163: $de $06
    ld e, d                                       ; $6165: $5a

jr_0a7_6166:
    ld [$c0bf], sp                                ; $6166: $08 $bf $c0
    ld a, [bc]                                    ; $6169: $0a
    ld [$007f], sp                                ; $616a: $08 $7f $00
    add b                                         ; $616d: $80
    db $db                                        ; $616e: $db
    inc h                                         ; $616f: $24
    rst $10                                       ; $6170: $d7
    jr z, @+$51                                   ; $6171: $28 $4f

    or b                                          ; $6173: $b0
    xor l                                         ; $6174: $ad
    inc bc                                        ; $6175: $03
    ld d, d                                       ; $6176: $52
    dec de                                        ; $6177: $1b
    db $e4                                        ; $6178: $e4
    and a                                         ; $6179: $a7
    ld e, b                                       ; $617a: $58
    rra                                           ; $617b: $1f
    ld [hl-], a                                   ; $617c: $32
    ld bc, $4ba2                                  ; $617d: $01 $a2 $4b
    inc h                                         ; $6180: $24
    ld d, a                                       ; $6181: $57
    xor b                                         ; $6182: $a8
    or b                                          ; $6183: $b0
    ld e, e                                       ; $6184: $5b
    xor d                                         ; $6185: $aa
    ld d, l                                       ; $6186: $55
    ret nz                                        ; $6187: $c0

    ld e, e                                       ; $6188: $5b
    cp a                                          ; $6189: $bf
    ld b, b                                       ; $618a: $40
    nop                                           ; $618b: $00
    ret nz                                        ; $618c: $c0

    rst $38                                       ; $618d: $ff
    adc a                                         ; $618e: $8f
    rst $38                                       ; $618f: $ff
    sbc a                                         ; $6190: $9f
    rst $38                                       ; $6191: $ff
    sbc d                                         ; $6192: $9a
    rst $38                                       ; $6193: $ff
    db $10                                        ; $6194: $10
    sub l                                         ; $6195: $95
    rst $38                                       ; $6196: $ff
    sub b                                         ; $6197: $90
    inc b                                         ; $6198: $04

jr_0a7_6199:
    nop                                           ; $6199: $00
    ldh a, [rIE]                                  ; $619a: $f0 $ff
    ld bc, $41ff                                  ; $619c: $01 $ff $41
    pop af                                        ; $619f: $f1
    inc d                                         ; $61a0: $14
    ld [bc], a                                    ; $61a1: $02
    xor c                                         ; $61a2: $a9
    rst $38                                       ; $61a3: $ff
    ld e, c                                       ; $61a4: $59
    rst $38                                       ; $61a5: $ff
    add hl, bc                                    ; $61a6: $09
    inc b                                         ; $61a7: $04
    nop                                           ; $61a8: $00
    nop                                           ; $61a9: $00
    rrca                                          ; $61aa: $0f
    rst $38                                       ; $61ab: $ff
    dec b                                         ; $61ac: $05
    rst $28                                       ; $61ad: $ef
    ret nc                                        ; $61ae: $d0

    xor a                                         ; $61af: $af
    ld b, [hl]                                    ; $61b0: $46
    cp c                                          ; $61b1: $b9
    inc d                                         ; $61b2: $14
    sub h                                         ; $61b3: $94
    res 6, c                                      ; $61b4: $cb $b1
    ld [hl], $17                                  ; $61b6: $36 $17
    ld d, l                                       ; $61b8: $55
    ld [hl-], a                                   ; $61b9: $32
    inc bc                                        ; $61ba: $03
    add hl, hl                                    ; $61bb: $29
    add $04                                       ; $61bc: $c6 $04
    ld b, l                                       ; $61be: $45
    cp b                                          ; $61bf: $b8
    and c                                         ; $61c0: $a1
    ld e, $8c                                     ; $61c1: $1e $8c
    db $10                                        ; $61c3: $10
    jr nz, jr_0a7_61c8                            ; $61c4: $20 $02

    ld a, l                                       ; $61c6: $7d
    nop                                           ; $61c7: $00

jr_0a7_61c8:
    ld [$0677], sp                                ; $61c8: $08 $77 $06
    ld e, c                                       ; $61cb: $59
    inc c                                         ; $61cc: $0c
    or e                                          ; $61cd: $b3
    ld [$0057], sp                                ; $61ce: $08 $57 $00
    nop                                           ; $61d1: $00
    ccf                                           ; $61d2: $3f
    nop                                           ; $61d3: $00
    ld d, a                                       ; $61d4: $57
    nop                                           ; $61d5: $00
    sub h                                         ; $61d6: $94
    jp nz, $003d                                  ; $61d7: $c2 $3d $00

    ret nz                                        ; $61da: $c0

    ccf                                           ; $61db: $3f
    jp nz, $863d                                  ; $61dc: $c2 $3d $86

    ld l, c                                       ; $61df: $69
    ld b, $f9                                     ; $61e0: $06 $f9
    jr nz, jr_0a7_6166                            ; $61e2: $20 $82

    ld l, l                                       ; $61e4: $6d
    pop af                                        ; $61e5: $f1
    rlca                                          ; $61e6: $07
    ld l, d                                       ; $61e7: $6a
    inc bc                                        ; $61e8: $03
    db $fc                                        ; $61e9: $fc
    inc bc                                        ; $61ea: $03
    db $ec                                        ; $61eb: $ec
    add b                                         ; $61ec: $80
    rlca                                          ; $61ed: $07
    rlca                                          ; $61ee: $07
    db $ed                                        ; $61ef: $ed
    ld [bc], a                                    ; $61f0: $02
    db $dd                                        ; $61f1: $dd
    ld [bc], a                                    ; $61f2: $02
    db $ed                                        ; $61f3: $ed
    nop                                           ; $61f4: $00
    rst $08                                       ; $61f5: $cf
    add hl, bc                                    ; $61f6: $09
    nop                                           ; $61f7: $00
    and c                                         ; $61f8: $a1
    ld b, d                                       ; $61f9: $42
    cp l                                          ; $61fa: $bd
    ld [bc], a                                    ; $61fb: $02
    dec c                                         ; $61fc: $0d
    ld b, $e9                                     ; $61fd: $06 $e9
    db $10                                        ; $61ff: $10
    jr nz, @+$42                                  ; $6200: $20 $40

    inc hl                                        ; $6202: $23
    ld a, [c]                                     ; $6203: $f2
    rrca                                          ; $6204: $0f
    adc b                                         ; $6205: $88
    rlca                                          ; $6206: $07
    sbc c                                         ; $6207: $99
    ld d, $f6                                     ; $6208: $16 $f6
    ld b, b                                       ; $620a: $40
    ld [bc], a                                    ; $620b: $02
    inc hl                                        ; $620c: $23

jr_0a7_620d:
    ret nz                                        ; $620d: $c0

    inc de                                        ; $620e: $13
    ld [c], a                                     ; $620f: $e2
    rst $38                                       ; $6210: $ff
    jr nz, jr_0a7_6223                            ; $6211: $20 $10

    ld [$10e1], sp                                ; $6213: $08 $e1 $10
    ld e, [hl]                                    ; $6216: $5e
    ld sp, $c00f                                  ; $6217: $31 $0f $c0
    ld bc, $e300                                  ; $621a: $01 $00 $e3
    ld [bc], a                                    ; $621d: $02
    rst $38                                       ; $621e: $ff
    nop                                           ; $621f: $00
    jr nz, jr_0a7_6277                            ; $6220: $20 $55

    rst $38                                       ; $6222: $ff

jr_0a7_6223:
    sub e                                         ; $6223: $93
    inc c                                         ; $6224: $0c
    dec hl                                        ; $6225: $2b
    call nc, Call_000_2054                        ; $6226: $d4 $54 $20
    dec hl                                        ; $6229: $2b
    db $d3                                        ; $622a: $d3
    add b                                         ; $622b: $80
    jr nz, @-$54                                  ; $622c: $20 $aa

    ld a, a                                       ; $622e: $7f
    ld [hl], a                                    ; $622f: $77
    cp [hl]                                       ; $6230: $be
    sbc h                                         ; $6231: $9c
    nop                                           ; $6232: $00
    ld a, $29                                     ; $6233: $3e $29
    inc e                                         ; $6235: $1c
    ld [bc], a                                    ; $6236: $02
    jr jr_0a7_6247                                ; $6237: $18 $0e

    ld bc, $0857                                  ; $6239: $01 $57 $08
    adc a                                         ; $623c: $8f
    cp a                                          ; $623d: $bf
    rst $18                                       ; $623e: $df
    rra                                           ; $623f: $1f
    call nz, Call_0a7_7505                        ; $6240: $c4 $05 $75
    ld a, [hl-]                                   ; $6243: $3a
    ld e, d                                       ; $6244: $5a
    nop                                           ; $6245: $00
    dec a                                         ; $6246: $3d

jr_0a7_6247:
    ld l, h                                       ; $6247: $6c
    sbc a                                         ; $6248: $9f
    ld b, a                                       ; $6249: $47
    inc bc                                        ; $624a: $03
    jr nc, jr_0a7_620d                            ; $624b: $30 $c0

    ld a, [$fc00]                                 ; $624d: $fa $00 $fc
    push af                                       ; $6250: $f5
    inc c                                         ; $6251: $0c
    db $eb                                        ; $6252: $eb
    add hl, de                                    ; $6253: $19
    reti                                          ; $6254: $d9


    dec sp                                        ; $6255: $3b
    or c                                          ; $6256: $b1
    nop                                           ; $6257: $00
    ld [hl], e                                    ; $6258: $73
    db $e3                                        ; $6259: $e3
    pop hl                                        ; $625a: $e1
    adc l                                         ; $625b: $8d
    pop bc                                        ; $625c: $c1
    inc hl                                        ; $625d: $23
    inc e                                         ; $625e: $1c
    ld e, l                                       ; $625f: $5d
    ld [bc], a                                    ; $6260: $02
    ld [hl+], a                                   ; $6261: $22
    pop af                                        ; $6262: $f1
    cp a                                          ; $6263: $bf
    rst $28                                       ; $6264: $ef
    ld a, a                                       ; $6265: $7f
    ld e, a                                       ; $6266: $5f
    db $f4                                        ; $6267: $f4
    ld b, d                                       ; $6268: $42
    ld e, h                                       ; $6269: $5c

jr_0a7_626a:
    nop                                           ; $626a: $00
    cp $ef                                        ; $626b: $fe $ef
    cp $ff                                        ; $626d: $fe $ff
    cp $fd                                        ; $626f: $fe $fd
    cp $fe                                        ; $6271: $fe $fe
    nop                                           ; $6273: $00
    db $fd                                        ; $6274: $fd
    ld hl, sp-$03                                 ; $6275: $f8 $fd

jr_0a7_6277:
    pop af                                        ; $6277: $f1
    ld sp, hl                                     ; $6278: $f9
    pop hl                                        ; $6279: $e1
    ldh a, [$32]                                  ; $627a: $f0 $32
    nop                                           ; $627c: $00
    ld b, c                                       ; $627d: $41
    sbc [hl]                                      ; $627e: $9e
    ld b, c                                       ; $627f: $41
    ld a, l                                       ; $6280: $7d
    add d                                         ; $6281: $82
    ld a, d                                       ; $6282: $7a
    add l                                         ; $6283: $85
    xor l                                         ; $6284: $ad
    nop                                           ; $6285: $00
    ld e, d                                       ; $6286: $5a
    ld e, d                                       ; $6287: $5a
    or l                                          ; $6288: $b5
    cp b                                          ; $6289: $b8
    rst $28                                       ; $628a: $ef

jr_0a7_628b:
    db $fc                                        ; $628b: $fc
    rst $08                                       ; $628c: $cf
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    nop                                           ; $628f: $00
    dec c                                         ; $6290: $0d
    nop                                           ; $6291: $00
    or $08                                        ; $6292: $f6 $08
    ld l, e                                       ; $6294: $6b
    sbc h                                         ; $6295: $9c

jr_0a7_6296:
    db $e3                                        ; $6296: $e3
    nop                                           ; $6297: $00
    inc e                                         ; $6298: $1c
    xor d                                         ; $6299: $aa
    ld e, l                                       ; $629a: $5d
    ld l, d                                       ; $629b: $6a
    sbc l                                         ; $629c: $9d
    ld [$001d], a                                 ; $629d: $ea $1d $00
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    add b                                         ; $62a2: $80
    nop                                           ; $62a3: $00
    pop bc                                        ; $62a4: $c1
    nop                                           ; $62a5: $00
    dec h                                         ; $62a6: $25
    ld h, $62                                     ; $62a7: $26 $62
    inc bc                                        ; $62a9: $03
    rst $18                                       ; $62aa: $df
    db $fd                                        ; $62ab: $fd
    cp a                                          ; $62ac: $bf
    cp a                                          ; $62ad: $bf
    rst $38                                       ; $62ae: $ff
    cp a                                          ; $62af: $bf
    ld h, h                                       ; $62b0: $64
    inc c                                         ; $62b1: $0c
    call c, $c031                                 ; $62b2: $dc $31 $c0
    ld a, [hl]                                    ; $62b5: $7e
    add hl, bc                                    ; $62b6: $09
    nop                                           ; $62b7: $00
    ld e, d                                       ; $62b8: $5a
    rst $38                                       ; $62b9: $ff
    nop                                           ; $62ba: $00
    db $e3                                        ; $62bb: $e3
    ld [$14e3], sp                                ; $62bc: $08 $e3 $14
    add b                                         ; $62bf: $80
    inc h                                         ; $62c0: $24
    ld c, l                                       ; $62c1: $4d
    ld e, [hl]                                    ; $62c2: $5e
    ld a, d                                       ; $62c3: $7a
    inc a                                         ; $62c4: $3c
    cp l                                          ; $62c5: $bd
    add c                                         ; $62c6: $81
    ld b, d                                       ; $62c7: $42
    jp Jump_000_3c40                              ; $62c8: $c3 $40 $3c


    rst $30                                       ; $62cb: $f7
    cpl                                           ; $62cc: $2f
    rst $00                                       ; $62cd: $c7
    jr c, jr_0a7_628b                             ; $62ce: $38 $bb

    ld c, h                                       ; $62d0: $4c
    cp e                                          ; $62d1: $bb
    ld a, h                                       ; $62d2: $7c
    nop                                           ; $62d3: $00
    jp $b378                                      ; $62d4: $c3 $78 $b3


    ld a, b                                       ; $62d7: $78
    rst $10                                       ; $62d8: $d7
    jr nz, jr_0a7_6296                            ; $62d9: $20 $bb

    ld e, h                                       ; $62db: $5c
    rrca                                          ; $62dc: $0f
    or e                                          ; $62dd: $b3
    ld a, b                                       ; $62de: $78
    jp Jump_0a7_5234                              ; $62df: $c3 $34 $52


    ld e, l                                       ; $62e2: $5d
    ld d, b                                       ; $62e3: $50
    ld a, [de]                                    ; $62e4: $1a
    rst $28                                       ; $62e5: $ef
    ld b, $02                                     ; $62e6: $06 $02
    jr nz, jr_0a7_626a                            ; $62e8: $20 $80

    ld c, [hl]                                    ; $62ea: $4e
    dec c                                         ; $62eb: $0d
    ld a, h                                       ; $62ec: $7c
    add e                                         ; $62ed: $83
    cp e                                          ; $62ee: $bb
    rst $00                                       ; $62ef: $c7
    ld [hl], $cd                                  ; $62f0: $36 $cd
    xor a                                         ; $62f2: $af
    inc bc                                        ; $62f3: $03
    db $db                                        ; $62f4: $db
    xor e                                         ; $62f5: $ab
    rst $18                                       ; $62f6: $df
    xor e                                         ; $62f7: $ab
    rst $18                                       ; $62f8: $df
    ld a, a                                       ; $62f9: $7f
    ld d, h                                       ; $62fa: $54
    ld [bc], a                                    ; $62fb: $02
    add h                                         ; $62fc: $84
    ld c, l                                       ; $62fd: $4d
    nop                                           ; $62fe: $00
    dec [hl]                                      ; $62ff: $35

Jump_0a7_6300:
    add a                                         ; $6300: $87
    inc sp                                        ; $6301: $33
    ld c, e                                       ; $6302: $4b
    ld hl, sp+$04                                 ; $6303: $f8 $04
    db $fc                                        ; $6305: $fc
    inc bc                                        ; $6306: $03
    ret nz                                        ; $6307: $c0

    ld b, b                                       ; $6308: $40
    ld c, b                                       ; $6309: $48
    ld a, [hl+]                                   ; $630a: $2a
    ld b, $e0                                     ; $630b: $06 $e0
    cpl                                           ; $630d: $2f
    ldh a, [$d7]                                  ; $630e: $f0 $d7
    ld hl, sp-$09                                 ; $6310: $f8 $f7
    ld e, $f8                                     ; $6312: $1e $f8
    rst $30                                       ; $6314: $f7
    ret c                                         ; $6315: $d8

    sbc [hl]                                      ; $6316: $9e
    dec c                                         ; $6317: $0d
    adc b                                         ; $6318: $88
    ld a, [bc]                                    ; $6319: $0a
    add $0b                                       ; $631a: $c6 $0b
    jr c, @+$0c                                   ; $631c: $38 $0a

    db $ec                                        ; $631e: $ec
    ld bc, $cba3                                  ; $631f: $01 $a3 $cb
    call nc, Call_000_271b                        ; $6322: $d4 $1b $27
    inc a                                         ; $6325: $3c
    rst $00                                       ; $6326: $c7
    ld [$0605], a                                 ; $6327: $ea $05 $06
    ld [bc], a                                    ; $632a: $02
    ei                                            ; $632b: $fb
    dec b                                         ; $632c: $05
    ei                                            ; $632d: $fb
    rlca                                          ; $632e: $07
    ld c, b                                       ; $632f: $48

jr_0a7_6330:
    ld a, [bc]                                    ; $6330: $0a
    ld c, d                                       ; $6331: $4a
    ld [bc], a                                    ; $6332: $02
    add b                                         ; $6333: $80
    cp c                                          ; $6334: $b9
    jp hl                                         ; $6335: $e9


    rlca                                          ; $6336: $07
    nop                                           ; $6337: $00
    ld [$4a08], sp                                ; $6338: $08 $08 $4a
    jr c, jr_0a7_6330                             ; $633b: $38 $f3

    rra                                           ; $633d: $1f
    ccf                                           ; $633e: $3f
    ld b, b                                       ; $633f: $40
    and b                                         ; $6340: $a0
    ld a, b                                       ; $6341: $78
    ld bc, $04fb                                  ; $6342: $01 $fb $04
    push af                                       ; $6345: $f5
    ld c, $f1                                     ; $6346: $0e $f1
    ld c, $f5                                     ; $6348: $0e $f5
    ld [bc], a                                    ; $634a: $02
    db $10                                        ; $634b: $10
    add b                                         ; $634c: $80
    xor $0d                                       ; $634d: $ee $0d
    pop hl                                        ; $634f: $e1
    ld e, $de                                     ; $6350: $1e $de
    ccf                                           ; $6352: $3f
    or c                                          ; $6353: $b1
    ld l, a                                       ; $6354: $6f
    ld a, [hl]                                    ; $6355: $7e
    ld b, $df                                     ; $6356: $06 $df
    ld e, a                                       ; $6358: $5f
    rst $38                                       ; $6359: $ff
    ld e, a                                       ; $635a: $5f
    cp $10                                        ; $635b: $fe $10
    dec hl                                        ; $635d: $2b
    ld e, b                                       ; $635e: $58
    jr @-$3f                                      ; $635f: $18 $bf

    inc b                                         ; $6361: $04
    ret nz                                        ; $6362: $c0

    pop af                                        ; $6363: $f1
    inc b                                         ; $6364: $04
    pop af                                        ; $6365: $f1
    ld a, [bc]                                    ; $6366: $0a
    inc [hl]                                      ; $6367: $34
    ld c, [hl]                                    ; $6368: $4e
    xor a                                         ; $6369: $af
    dec a                                         ; $636a: $3d
    ld [bc], a                                    ; $636b: $02
    sbc [hl]                                      ; $636c: $9e
    ld e, [hl]                                    ; $636d: $5e
    ret nz                                        ; $636e: $c0

    ld hl, $1ee1                                  ; $636f: $21 $e1 $1e
    ld c, b                                       ; $6372: $48
    ld l, $63                                     ; $6373: $2e $63
    nop                                           ; $6375: $00

jr_0a7_6376:
    inc e                                         ; $6376: $1c
    ld e, l                                       ; $6377: $5d
    and [hl]                                      ; $6378: $a6
    db $dd                                        ; $6379: $dd
    ld a, $e1                                     ; $637a: $3e $e1
    inc a                                         ; $637c: $3c
    reti                                          ; $637d: $d9


    nop                                           ; $637e: $00
    inc a                                         ; $637f: $3c
    db $eb                                        ; $6380: $eb

jr_0a7_6381:
    db $10                                        ; $6381: $10
    db $dd                                        ; $6382: $dd
    ld l, $d9                                     ; $6383: $2e $d9
    inc a                                         ; $6385: $3c
    pop hl                                        ; $6386: $e1
    ld b, b                                       ; $6387: $40
    ld a, [de]                                    ; $6388: $1a
    ld h, d                                       ; $6389: $62
    ld e, [hl]                                    ; $638a: $5e
    ld a, [de]                                    ; $638b: $1a
    push hl                                       ; $638c: $e5
    jr jr_0a7_6376                                ; $638d: $18 $e7

    ld [$00b7], sp                                ; $638f: $08 $b7 $00
    ld [$08f7], sp                                ; $6392: $08 $f7 $08
    or a                                          ; $6395: $b7
    nop                                           ; $6396: $00
    rst $18                                       ; $6397: $df
    nop                                           ; $6398: $00
    sbc [hl]                                      ; $6399: $9e
    nop                                           ; $639a: $00
    nop                                           ; $639b: $00
    ld d, [hl]                                    ; $639c: $56
    nop                                           ; $639d: $00
    cp $10                                        ; $639e: $fe $10
    ld l, [hl]                                    ; $63a0: $6e
    jr nz, jr_0a7_6381                            ; $63a1: $20 $de

    ld [bc], a                                    ; $63a3: $02
    jr nc, jr_0a7_63f5                            ; $63a4: $30 $4f

    db $10                                        ; $63a6: $10
    xor $00                                       ; $63a7: $ee $00
    ld a, [hl]                                    ; $63a9: $7e
    inc b                                         ; $63aa: $04
    nop                                           ; $63ab: $00
    add hl, hl                                    ; $63ac: $29
    nop                                           ; $63ad: $00
    add hl, bc                                    ; $63ae: $09
    ld [hl], b                                    ; $63af: $70
    ld [hl], c                                    ; $63b0: $71
    adc [hl]                                      ; $63b1: $8e
    adc [hl]                                      ; $63b2: $8e
    ld bc, $0031                                  ; $63b3: $01 $31 $00
    ld l, b                                       ; $63b6: $68
    ld a, d                                       ; $63b7: $7a
    ret nz                                        ; $63b8: $c0

    daa                                           ; $63b9: $27
    ld [hl], b                                    ; $63ba: $70
    ccf                                           ; $63bb: $3f
    ld b, l                                       ; $63bc: $45
    ld [hl], b                                    ; $63bd: $70
    rla                                           ; $63be: $17
    cp $01                                        ; $63bf: $fe $01
    jp c, Jump_000_2400                           ; $63c1: $da $00 $24

    ld [$f214], a                                 ; $63c4: $ea $14 $f2
    dec c                                         ; $63c7: $0d
    or h                                          ; $63c8: $b4
    ld c, d                                       ; $63c9: $4a
    ret c                                         ; $63ca: $d8

    nop                                           ; $63cb: $00
    daa                                           ; $63cc: $27
    db $e4                                        ; $63cd: $e4
    ld a, [de]                                    ; $63ce: $1a
    xor b                                         ; $63cf: $a8
    ld d, a                                       ; $63d0: $57
    rst $10                                       ; $63d1: $d7
    jp Jump_000_00a5                              ; $63d2: $c3 $a5 $00


    db $db                                        ; $63d5: $db
    ld d, d                                       ; $63d6: $52
    adc a                                         ; $63d7: $8f
    and l                                         ; $63d8: $a5

Jump_0a7_63d9:
    sbc e                                         ; $63d9: $9b
    ld a, [bc]                                    ; $63da: $0a
    cp e                                          ; $63db: $bb
    push hl                                       ; $63dc: $e5
    nop                                           ; $63dd: $00
    sbc e                                         ; $63de: $9b
    ld a, [de]                                    ; $63df: $1a
    xor e                                         ; $63e0: $ab
    jp hl                                         ; $63e1: $e9


    adc e                                         ; $63e2: $8b
    ld d, $ab                                     ; $63e3: $16 $ab
    jp hl                                         ; $63e5: $e9


    nop                                           ; $63e6: $00
    add e                                         ; $63e7: $83
    ld [hl-], a                                   ; $63e8: $32
    add e                                         ; $63e9: $83
    reti                                          ; $63ea: $d9


    and e                                         ; $63eb: $a3
    ld h, $db                                     ; $63ec: $26 $db
    db $dd                                        ; $63ee: $dd
    nop                                           ; $63ef: $00
    xor e                                         ; $63f0: $ab
    ld [hl+], a                                   ; $63f1: $22
    rst $38                                       ; $63f2: $ff
    sbc c                                         ; $63f3: $99
    rst $28                                       ; $63f4: $ef

jr_0a7_63f5:
    ldh a, [rNR11]                                ; $63f5: $f0 $11
    sub [hl]                                      ; $63f7: $96
    ld a, [bc]                                    ; $63f8: $0a
    jr nz, jr_0a7_63fb                            ; $63f9: $20 $00

jr_0a7_63fb:
    rst $38                                       ; $63fb: $ff
    ld [bc], a                                    ; $63fc: $02
    ld e, b                                       ; $63fd: $58
    rst $38                                       ; $63fe: $ff
    rst $38                                       ; $63ff: $ff
    ld a, a                                       ; $6400: $7f
    rst $38                                       ; $6401: $ff
    cp a                                          ; $6402: $bf
    nop                                           ; $6403: $00
    rst $38                                       ; $6404: $ff
    rst $18                                       ; $6405: $df
    rst $18                                       ; $6406: $df
    rst $20                                       ; $6407: $e7
    rst $28                                       ; $6408: $ef

jr_0a7_6409:
    di                                            ; $6409: $f3
    rst $30                                       ; $640a: $f7
    ld sp, hl                                     ; $640b: $f9
    jr jr_0a7_6409                                ; $640c: $18 $fb

    db $fc                                        ; $640e: $fc
    db $fc                                        ; $640f: $fc
    ld de, $0300                                  ; $6410: $11 $00 $03

jr_0a7_6413:
    jr nc, jr_0a7_6413                            ; $6413: $30 $fe

    rst $38                                       ; $6415: $ff
    ei                                            ; $6416: $fb
    jp nz, Jump_0a7_480f                          ; $6417: $c2 $0f $48

    inc l                                         ; $641a: $2c
    nop                                           ; $641b: $00
    ld [$feff], a                                 ; $641c: $ea $ff $fe
    cp $22                                        ; $641f: $fe $22
    ld e, b                                       ; $6421: $58
    ld a, a                                       ; $6422: $7f
    nop                                           ; $6423: $00
    ld a, a                                       ; $6424: $7f
    ld a, [de]                                    ; $6425: $1a

jr_0a7_6426:
    ccf                                           ; $6426: $3f
    dec b                                         ; $6427: $05
    sbc a                                         ; $6428: $9f
    add d                                         ; $6429: $82
    rst $08                                       ; $642a: $cf
    ret nz                                        ; $642b: $c0

    nop                                           ; $642c: $00
    rst $20                                       ; $642d: $e7
    ld h, b                                       ; $642e: $60
    pop af                                        ; $642f: $f1
    pop hl                                        ; $6430: $e1
    ld hl, sp-$2f                                 ; $6431: $f8 $d1
    db $fc                                        ; $6433: $fc
    ld d, l                                       ; $6434: $55
    inc hl                                        ; $6435: $23
    rst $38                                       ; $6436: $ff
    add b                                         ; $6437: $80
    ld h, d                                       ; $6438: $62
    nop                                           ; $6439: $00
    rra                                           ; $643a: $1f
    ldh [$7f], a                                  ; $643b: $e0 $7f
    rlca                                          ; $643d: $07
    ld [$1861], sp                                ; $643e: $08 $61 $18
    and b                                         ; $6441: $a0
    ld d, e                                       ; $6442: $53
    ld b, b                                       ; $6443: $40
    cp a                                          ; $6444: $bf
    ld d, b                                       ; $6445: $50
    ld h, b                                       ; $6446: $60
    rst $38                                       ; $6447: $ff
    rst $38                                       ; $6448: $ff
    ld d, a                                       ; $6449: $57
    rst $38                                       ; $644a: $ff
    dec hl                                        ; $644b: $2b
    nop                                           ; $644c: $00
    rst $38                                       ; $644d: $ff
    dec d                                         ; $644e: $15
    rst $38                                       ; $644f: $ff
    adc d                                         ; $6450: $8a
    ld a, a                                       ; $6451: $7f
    push hl                                       ; $6452: $e5
    rra                                           ; $6453: $1f
    ld a, [c]                                     ; $6454: $f2
    dec b                                         ; $6455: $05
    rrca                                          ; $6456: $0f

Jump_0a7_6457:
    ld sp, hl                                     ; $6457: $f9
    rlca                                          ; $6458: $07
    ld hl, sp+$07                                 ; $6459: $f8 $07
    add b                                         ; $645b: $80
    jr z, jr_0a7_64dd                             ; $645c: $28 $7f

    sbc d                                         ; $645e: $9a
    nop                                           ; $645f: $00
    ld [$ff7e], sp                                ; $6460: $08 $7e $ff
    nop                                           ; $6463: $00
    ldh [$8e], a                                  ; $6464: $e0 $8e
    ld c, b                                       ; $6466: $48
    add b                                         ; $6467: $80
    ldh a, [rP1]                                  ; $6468: $f0 $00
    ld b, c                                       ; $646a: $41
    ld bc, $38a0                                  ; $646b: $01 $a0 $38
    xor b                                         ; $646e: $a8
    rst $38                                       ; $646f: $ff
    inc bc                                        ; $6470: $03
    ld a, a                                       ; $6471: $7f
    ld e, a                                       ; $6472: $5f
    and [hl]                                      ; $6473: $a6
    db $10                                        ; $6474: $10
    db $10                                        ; $6475: $10
    rst $38                                       ; $6476: $ff
    rst $38                                       ; $6477: $ff
    db $fd                                        ; $6478: $fd
    inc b                                         ; $6479: $04

jr_0a7_647a:
    jr nz, jr_0a7_647a                            ; $647a: $20 $fe

    rst $38                                       ; $647c: $ff
    and e                                         ; $647d: $a3
    db $fc                                        ; $647e: $fc
    ld hl, $fcc3                                  ; $647f: $21 $c3 $fc
    inc b                                         ; $6482: $04
    jr z, jr_0a7_6426                             ; $6483: $28 $a1

    cp $d1                                        ; $6485: $fe $d1
    cp $ef                                        ; $6487: $fe $ef
    ld h, b                                       ; $6489: $60
    ret nz                                        ; $648a: $c0

    pop af                                        ; $648b: $f1
    nop                                           ; $648c: $00
    pop bc                                        ; $648d: $c1
    ld d, b                                       ; $648e: $50
    rst $38                                       ; $648f: $ff
    and b                                         ; $6490: $a0
    rst $38                                       ; $6491: $ff
    ldh [rIE], a                                  ; $6492: $e0 $ff
    call nc, $ff02                                ; $6494: $d4 $02 $ff
    ld l, d                                       ; $6497: $6a
    rst $38                                       ; $6498: $ff
    push de                                       ; $6499: $d5
    rst $38                                       ; $649a: $ff
    xor d                                         ; $649b: $aa
    ld b, [hl]                                    ; $649c: $46
    nop                                           ; $649d: $00
    xor $01                                       ; $649e: $ee $01
    rst $38                                       ; $64a0: $ff
    rst $38                                       ; $64a1: $ff
    nop                                           ; $64a2: $00
    ld a, a                                       ; $64a3: $7f
    add b                                         ; $64a4: $80
    rra                                           ; $64a5: $1f
    ldh [rNR52], a                                ; $64a6: $e0 $26
    add hl, bc                                    ; $64a8: $09
    dec d                                         ; $64a9: $15
    add b                                         ; $64aa: $80
    rst $38                                       ; $64ab: $ff
    ld d, l                                       ; $64ac: $55
    inc d                                         ; $64ad: $14
    nop                                           ; $64ae: $00
    push de                                       ; $64af: $d5
    ld [hl+], a                                   ; $64b0: $22
    ld bc, $15aa                                  ; $64b1: $01 $aa $15
    ld b, c                                       ; $64b4: $41
    jr z, @-$02                                   ; $64b5: $28 $fc

    nop                                           ; $64b7: $00
    ld [bc], a                                    ; $64b8: $02
    nop                                           ; $64b9: $00
    inc bc                                        ; $64ba: $03
    ld [bc], a                                    ; $64bb: $02
    jr @-$06                                      ; $64bc: $18 $f8

    rlca                                          ; $64be: $07
    ld hl, sp+$03                                 ; $64bf: $f8 $03
    ld bc, $0000                                  ; $64c1: $01 $00 $00
    dec b                                         ; $64c4: $05
    ccf                                           ; $64c5: $3f
    ld e, a                                       ; $64c6: $5f
    ld b, d                                       ; $64c7: $42
    ld bc, $2804                                  ; $64c8: $01 $04 $28
    ld b, b                                       ; $64cb: $40
    rla                                           ; $64cc: $17
    ld [hl-], a                                   ; $64cd: $32
    ld h, c                                       ; $64ce: $61
    ldh a, [$0c]                                  ; $64cf: $f0 $0c
    ld [c], a                                     ; $64d1: $e2
    rra                                           ; $64d2: $1f
    add l                                         ; $64d3: $85
    ld a, a                                       ; $64d4: $7f
    ld d, b                                       ; $64d5: $50
    ld a, [bc]                                    ; $64d6: $0a
    db $e4                                        ; $64d7: $e4
    nop                                           ; $64d8: $00
    dec hl                                        ; $64d9: $2b
    db $ec                                        ; $64da: $ec
    nop                                           ; $64db: $00
    cp a                                          ; $64dc: $bf

jr_0a7_64dd:
    rst $38                                       ; $64dd: $ff
    rra                                           ; $64de: $1f
    ld a, a                                       ; $64df: $7f
    nop                                           ; $64e0: $00
    rra                                           ; $64e1: $1f
    ccf                                           ; $64e2: $3f
    rlca                                          ; $64e3: $07
    adc a                                         ; $64e4: $8f
    jp $f0e3                                      ; $64e5: $c3 $e3 $f0


    ld sp, hl                                     ; $64e8: $f9
    ld b, b                                       ; $64e9: $40
    db $fc                                        ; $64ea: $fc
    adc c                                         ; $64eb: $89
    ld e, b                                       ; $64ec: $58
    rst $38                                       ; $64ed: $ff
    ccf                                           ; $64ee: $3f
    ld a, a                                       ; $64ef: $7f
    rra                                           ; $64f0: $1f
    sbc a                                         ; $64f1: $9f
    add a                                         ; $64f2: $87
    ld [hl+], a                                   ; $64f3: $22
    rst $08                                       ; $64f4: $cf
    rst $28                                       ; $64f5: $ef
    inc h                                         ; $64f6: $24
    ld h, c                                       ; $64f7: $61
    pop hl                                        ; $64f8: $e1
    di                                            ; $64f9: $f3
    ld hl, sp+$29                                 ; $64fa: $f8 $29
    ld h, b                                       ; $64fc: $60
    ld a, a                                       ; $64fd: $7f
    nop                                           ; $64fe: $00
    rst $38                                       ; $64ff: $ff
    ccf                                           ; $6500: $3f
    ccf                                           ; $6501: $3f
    adc a                                         ; $6502: $8f
    rst $18                                       ; $6503: $df
    rst $20                                       ; $6504: $e7
    rst $30                                       ; $6505: $f7
    ld sp, hl                                     ; $6506: $f9
    ret                                           ; $6507: $c9


    xor e                                         ; $6508: $ab
    ld de, $59d0                                  ; $6509: $11 $d0 $59
    inc c                                         ; $650c: $0c
    ldh a, [$e0]                                  ; $650d: $f0 $e0
    ld c, c                                       ; $650f: $49
    ret nz                                        ; $6510: $c0

    nop                                           ; $6511: $00
    ld bc, $8500                                  ; $6512: $01 $00 $85
    ldh a, [rSTAT]                                ; $6515: $f0 $41
    jr nc, jr_0a7_6528                            ; $6517: $30 $0f

    inc b                                         ; $6519: $04
    inc bc                                        ; $651a: $03
    ld h, $10                                     ; $651b: $26 $10
    inc bc                                        ; $651d: $03
    or a                                          ; $651e: $b7
    nop                                           ; $651f: $00
    ret nz                                        ; $6520: $c0

    ld [bc], a                                    ; $6521: $02
    jr z, jr_0a7_6534                             ; $6522: $28 $10

Jump_0a7_6524:
    ld [hl+], a                                   ; $6524: $22
    ld b, b                                       ; $6525: $40
    ccf                                           ; $6526: $3f
    nop                                           ; $6527: $00

jr_0a7_6528:
    rra                                           ; $6528: $1f
    nop                                           ; $6529: $00
    rrca                                          ; $652a: $0f

jr_0a7_652b:
    jr nc, jr_0a7_652d                            ; $652b: $30 $00

jr_0a7_652d:
    rlca                                          ; $652d: $07
    add hl, de                                    ; $652e: $19

jr_0a7_652f:
    jr c, jr_0a7_6554                             ; $652f: $38 $23

jr_0a7_6531:
    jr nz, @+$05                                  ; $6531: $20 $03

    ld [bc], a                                    ; $6533: $02

jr_0a7_6534:
    ld bc, $0200                                  ; $6534: $01 $00 $02
    ld bc, $0003                                  ; $6537: $01 $03 $00
    ld bc, $0200                                  ; $653a: $01 $00 $02
    inc b                                         ; $653d: $04
    db $10                                        ; $653e: $10
    dec b                                         ; $653f: $05
    ld a, [hl+]                                   ; $6540: $2a
    nop                                           ; $6541: $00
    inc de                                        ; $6542: $13
    inc b                                         ; $6543: $04
    nop                                           ; $6544: $00
    dec hl                                        ; $6545: $2b
    ld [$1200], sp                                ; $6546: $08 $00 $12
    inc b                                         ; $6549: $04
    db $10                                        ; $654a: $10
    add b                                         ; $654b: $80
    ld [bc], a                                    ; $654c: $02
    ld a, a                                       ; $654d: $7f
    and b                                         ; $654e: $a0
    rra                                           ; $654f: $1f
    inc c                                         ; $6550: $0c
    inc bc                                        ; $6551: $03
    ld b, b                                       ; $6552: $40
    ld l, d                                       ; $6553: $6a

jr_0a7_6554:
    nop                                           ; $6554: $00
    add b                                         ; $6555: $80
    add [hl]                                      ; $6556: $86
    ld d, h                                       ; $6557: $54
    db $10                                        ; $6558: $10
    inc c                                         ; $6559: $0c
    ldh a, [rLCDC]                                ; $655a: $f0 $40
    add b                                         ; $655c: $80
    ld a, [bc]                                    ; $655d: $0a
    jr jr_0a7_65c0                                ; $655e: $18 $60

    ld b, b                                       ; $6560: $40
    cp $80                                        ; $6561: $fe $80

jr_0a7_6563:
    dec [hl]                                      ; $6563: $35
    ld bc, $00f8                                  ; $6564: $01 $f8 $00
    ldh a, [rNR10]                                ; $6567: $f0 $10
    ldh [rP1], a                                  ; $6569: $e0 $00
    ldh [rNR41], a                                ; $656b: $e0 $20
    jr nz, jr_0a7_652f                            ; $656d: $20 $c0

    ld e, $50                                     ; $656f: $1e $50
    nop                                           ; $6571: $00
    jr nz, jr_0a7_6534                            ; $6572: $20 $c0

    nop                                           ; $6574: $00
    ret nz                                        ; $6575: $c0

    ld bc, $8040                                  ; $6576: $01 $40 $80
    ld b, b                                       ; $6579: $40
    add b                                         ; $657a: $80
    nop                                           ; $657b: $00

jr_0a7_657c:
    add b                                         ; $657c: $80
    ret nz                                        ; $657d: $c0

    ld b, d                                       ; $657e: $42
    nop                                           ; $657f: $00
    dec e                                         ; $6580: $1d
    ld b, b                                       ; $6581: $40
    nop                                           ; $6582: $00
    inc c                                         ; $6583: $0c
    ld [hl], b                                    ; $6584: $70
    ld [$006e], sp                                ; $6585: $08 $6e $00
    and c                                         ; $6588: $a1
    jr z, jr_0a7_652b                             ; $6589: $28 $a0

    inc d                                         ; $658b: $14

Jump_0a7_658c:
    nop                                           ; $658c: $00
    adc h                                         ; $658d: $8c
    inc b                                         ; $658e: $04
    jr @+$52                                      ; $658f: $18 $50

    nop                                           ; $6591: $00
    jr nz, jr_0a7_6531                            ; $6592: $20 $9d

    ld d, b                                       ; $6594: $50
    sub a                                         ; $6595: $97
    nop                                           ; $6596: $00
    ld bc, $fc83                                  ; $6597: $01 $83 $fc
    ret                                           ; $659a: $c9


    jr nz, jr_0a7_65dc                            ; $659b: $20 $3f

    nop                                           ; $659d: $00
    ld bc, $aa20                                  ; $659e: $01 $20 $aa
    ld [$50c4], sp                                ; $65a1: $08 $c4 $50
    pop de                                        ; $65a4: $d1

jr_0a7_65a5:
    add hl, bc                                    ; $65a5: $09
    ld a, $40                                     ; $65a6: $3e $40
    nop                                           ; $65a8: $00
    inc e                                         ; $65a9: $1c
    inc h                                         ; $65aa: $24
    ld [$005a], sp                                ; $65ab: $08 $5a $00
    inc l                                         ; $65ae: $2c
    nop                                           ; $65af: $00
    jr jr_0a7_65d2                                ; $65b0: $18 $20

    nop                                           ; $65b2: $00
    jr nc, @-$7e                                  ; $65b3: $30 $80

    ld h, b                                       ; $65b5: $60
    ld h, b                                       ; $65b6: $60
    rra                                           ; $65b7: $1f
    ld [$0007], sp                                ; $65b8: $08 $07 $00
    add e                                         ; $65bb: $83
    dec [hl]                                      ; $65bc: $35
    ld b, b                                       ; $65bd: $40
    inc l                                         ; $65be: $2c

jr_0a7_65bf:
    nop                                           ; $65bf: $00

jr_0a7_65c0:
    stop                                          ; $65c0: $10 $00
    ld [$7105], sp                                ; $65c2: $08 $05 $71
    cpl                                           ; $65c5: $2f
    add hl, de                                    ; $65c6: $19
    ld a, [bc]                                    ; $65c7: $0a
    stop                                          ; $65c8: $10 $00
    jr nc, jr_0a7_65dc                            ; $65ca: $30 $10

    jr nz, @+$5b                                  ; $65cc: $20 $59

    jr nz, jr_0a7_6563                            ; $65ce: $20 $93

    jr nc, jr_0a7_65d8                            ; $65d0: $30 $06

jr_0a7_65d2:
    nop                                           ; $65d2: $00
    ld [bc], a                                    ; $65d3: $02
    rrca                                          ; $65d4: $0f
    dec b                                         ; $65d5: $05
    rrca                                          ; $65d6: $0f
    add hl, bc                                    ; $65d7: $09

jr_0a7_65d8:
    rrca                                          ; $65d8: $0f
    add hl, bc                                    ; $65d9: $09
    jr nc, jr_0a7_657c                            ; $65da: $30 $a0

jr_0a7_65dc:
    ld bc, $7800                                  ; $65dc: $01 $00 $78
    ld [bc], a                                    ; $65df: $02
    ld [$7c78], sp                                ; $65e0: $08 $78 $7c
    ld a, b                                       ; $65e3: $78
    ld a, [hl]                                    ; $65e4: $7e
    ld h, h                                       ; $65e5: $64
    db $10                                        ; $65e6: $10

jr_0a7_65e7:
    ld a, a                                       ; $65e7: $7f
    halt                                          ; $65e8: $76
    jr nz, @+$03                                  ; $65e9: $20 $01

    jr nc, jr_0a7_665d                            ; $65eb: $30 $70

    jr nz, jr_0a7_65e7                            ; $65ed: $20 $f8

    ld d, b                                       ; $65ef: $50
    ld [hl+], a                                   ; $65f0: $22
    db $fc                                        ; $65f1: $fc
    ret c                                         ; $65f2: $d8

    inc h                                         ; $65f3: $24
    ld [$0f0f], sp                                ; $65f4: $08 $0f $0f
    rra                                           ; $65f7: $1f
    ld [bc], a                                    ; $65f8: $02
    ld [$0e1b], sp                                ; $65f9: $08 $1b $0e
    rra                                           ; $65fc: $1f
    inc e                                         ; $65fd: $1c
    ccf                                           ; $65fe: $3f
    jr jr_0a7_65bf                                ; $65ff: $18 $be

    jr nz, @-$3e                                  ; $6601: $20 $c0

    jr nc, jr_0a7_65a5                            ; $6603: $30 $a0

    ld b, e                                       ; $6605: $43
    ld a, a                                       ; $6606: $7f
    inc sp                                        ; $6607: $33
    ret nz                                        ; $6608: $c0

    ccf                                           ; $6609: $3f
    sub [hl]                                      ; $660a: $96
    ld bc, $43b0                                  ; $660b: $01 $b0 $43
    ld b, $f8                                     ; $660e: $06 $f8
    ld b, d                                       ; $6610: $42
    ld bc, $43c0                                  ; $6611: $01 $c0 $43
    ret nz                                        ; $6614: $c0

    add $11                                       ; $6615: $c6 $11
    ret nc                                        ; $6617: $d0

    ld b, e                                       ; $6618: $43
    add b                                         ; $6619: $80
    ld a, a                                       ; $661a: $7f
    db $10                                        ; $661b: $10
    rrca                                          ; $661c: $0f
    and b                                         ; $661d: $a0
    rra                                           ; $661e: $1f
    inc b                                         ; $661f: $04
    ld e, [hl]                                    ; $6620: $5e
    ld bc, $00a5                                  ; $6621: $01 $a5 $00
    ld d, d                                       ; $6624: $52
    adc [hl]                                      ; $6625: $8e
    ld hl, $0000                                  ; $6626: $21 $00 $00
    inc a                                         ; $6629: $3c
    ld d, b                                       ; $662a: $50
    add b                                         ; $662b: $80
    ld b, d                                       ; $662c: $42
    add hl, bc                                    ; $662d: $09
    ld e, d                                       ; $662e: $5a
    add hl, bc                                    ; $662f: $09
    sub [hl]                                      ; $6630: $96
    ld hl, $5400                                  ; $6631: $21 $00 $54
    ld bc, $98fe                                  ; $6634: $01 $fe $98
    db $10                                        ; $6637: $10
    ld c, h                                       ; $6638: $4c
    rra                                           ; $6639: $1f
    ldh [$c4], a                                  ; $663a: $e0 $c4
    ld bc, $5050                                  ; $663c: $01 $50 $50
    inc c                                         ; $663f: $0c
    inc bc                                        ; $6640: $03
    inc b                                         ; $6641: $04
    ldh a, [$74]                                  ; $6642: $f0 $74
    ld [$099b], sp                                ; $6644: $08 $9b $09
    ldh [rNR42], a                                ; $6647: $e0 $21
    ld e, [hl]                                    ; $6649: $5e
    ld h, c                                       ; $664a: $61
    nop                                           ; $664b: $00
    dec b                                         ; $664c: $05
    ld hl, sp+$06                                 ; $664d: $f8 $06
    nop                                           ; $664f: $00
    ld hl, sp-$7b                                 ; $6650: $f8 $85
    ld a, b                                       ; $6652: $78
    ld a, d                                       ; $6653: $7a
    nop                                           ; $6654: $00
    inc d                                         ; $6655: $14
    nop                                           ; $6656: $00
    ld a, [hl+]                                   ; $6657: $2a
    adc a                                         ; $6658: $8f
    inc b                                         ; $6659: $04
    nop                                           ; $665a: $00
    ld a, [bc]                                    ; $665b: $0a
    nop                                           ; $665c: $00

jr_0a7_665d:
    dec d                                         ; $665d: $15
    jr z, jr_0a7_6662                             ; $665e: $28 $02

    dec h                                         ; $6660: $25
    ld h, c                                       ; $6661: $61

jr_0a7_6662:
    sub $01                                       ; $6662: $d6 $01
    db $10                                        ; $6664: $10
    ld c, d                                       ; $6665: $4a
    nop                                           ; $6666: $00
    add b                                         ; $6667: $80
    ld a, a                                       ; $6668: $7f
    ld b, b                                       ; $6669: $40
    ccf                                           ; $666a: $3f
    jr nz, @+$21                                  ; $666b: $20 $1f

    db $10                                        ; $666d: $10
    rrca                                          ; $666e: $0f
    add h                                         ; $666f: $84
    ld a, b                                       ; $6670: $78
    ld bc, $0407                                  ; $6671: $01 $07 $04
    inc bc                                        ; $6674: $03
    inc b                                         ; $6675: $04
    ld h, b                                       ; $6676: $60
    ld [bc], a                                    ; $6677: $02
    ld b, $01                                     ; $6678: $06 $01
    inc b                                         ; $667a: $04
    ld [bc], a                                    ; $667b: $02
    ld bc, HeaderLogo                             ; $667c: $01 $04 $01
    ld a, [bc]                                    ; $667f: $0a
    ld [$0a00], sp                                ; $6680: $08 $00 $0a
    ld bc, $1600                                  ; $6683: $01 $00 $16
    ld bc, $012e                                  ; $6686: $01 $2e $01
    ld e, $01                                     ; $6689: $1e $01
    jr z, jr_0a7_6690                             ; $668b: $28 $03

    ld d, d                                       ; $668d: $52
    ld e, l                                       ; $668e: $5d
    ld d, b                                       ; $668f: $50

jr_0a7_6690:
    nop                                           ; $6690: $00
    ld d, b                                       ; $6691: $50
    ret nz                                        ; $6692: $c0

    ld e, d                                       ; $6693: $5a
    ld a, a                                       ; $6694: $7f
    nop                                           ; $6695: $00
    and h                                         ; $6696: $a4
    ld [bc], a                                    ; $6697: $02
    db $10                                        ; $6698: $10
    jr nz, jr_0a7_66aa                            ; $6699: $20 $0f

    nop                                           ; $669b: $00
    ld a, [hl-]                                   ; $669c: $3a
    nop                                           ; $669d: $00
    ld [$1107], sp                                ; $669e: $08 $07 $11
    ld b, $0f                                     ; $66a1: $06 $0f
    ld sp, $1700                                  ; $66a3: $31 $00 $17
    ld [hl], h                                    ; $66a6: $74

jr_0a7_66a7:
    nop                                           ; $66a7: $00
    ret nc                                        ; $66a8: $d0

    inc e                                         ; $66a9: $1c

jr_0a7_66aa:
    ld a, [hl-]                                   ; $66aa: $3a
    ret nz                                        ; $66ab: $c0

    call nc, $022a                                ; $66ac: $d4 $2a $02
    db $fc                                        ; $66af: $fc
    ret nc                                        ; $66b0: $d0

    ld a, [hl-]                                   ; $66b1: $3a
    ld [$e40a], a                                 ; $66b2: $ea $0a $e4
    ld [hl+], a                                   ; $66b5: $22
    jr nz, @+$53                                  ; $66b6: $20 $51

    and $02                                       ; $66b8: $e6 $02
    ld a, [$0422]                                 ; $66ba: $fa $22 $04
    nop                                           ; $66bd: $00
    inc bc                                        ; $66be: $03
    inc b                                         ; $66bf: $04
    inc b                                         ; $66c0: $04
    ld c, $04                                     ; $66c1: $0e $04
    rrca                                          ; $66c3: $0f
    ld b, $8a                                     ; $66c4: $06 $8a
    ld b, d                                       ; $66c6: $42
    adc $01                                       ; $66c7: $ce $01
    nop                                           ; $66c9: $00
    ld h, b                                       ; $66ca: $60
    jr nz, jr_0a7_66da                            ; $66cb: $20 $0d

    rrca                                          ; $66cd: $0f
    rrca                                          ; $66ce: $0f
    rrca                                          ; $66cf: $0f
    dec c                                         ; $66d0: $0d
    rrca                                          ; $66d1: $0f
    ld b, b                                       ; $66d2: $40
    ld [$0004], sp                                ; $66d3: $08 $04 $00
    jr jr_0a7_66e7                                ; $66d6: $18 $0f

    inc e                                         ; $66d8: $1c
    rrca                                          ; $66d9: $0f

jr_0a7_66da:
    jr @+$21                                      ; $66da: $18 $1f

    nop                                           ; $66dc: $00
    nop                                           ; $66dd: $00
    nop                                           ; $66de: $00
    add c                                         ; $66df: $81
    nop                                           ; $66e0: $00
    add e                                         ; $66e1: $83
    add c                                         ; $66e2: $81
    rst $00                                       ; $66e3: $c7
    add d                                         ; $66e4: $82
    nop                                           ; $66e5: $00
    ld l, a                                       ; $66e6: $6f

jr_0a7_66e7:
    call nz, $e8bf                                ; $66e7: $c4 $bf $e8
    ld a, a                                       ; $66ea: $7f
    ldh a, [rIE]                                  ; $66eb: $f0 $ff
    ret nz                                        ; $66ed: $c0

    ld bc, $6070                                  ; $66ee: $01 $70 $60
    ld d, b                                       ; $66f1: $50
    ld [hl], b                                    ; $66f2: $70
    ld d, b                                       ; $66f3: $50
    ld [hl], b                                    ; $66f4: $70
    ld e, b                                       ; $66f5: $58
    ld [bc], a                                    ; $66f6: $02
    nop                                           ; $66f7: $00
    nop                                           ; $66f8: $00
    call c, $cc78                                 ; $66f9: $dc $78 $cc
    ld a, b                                       ; $66fc: $78
    sbc a                                         ; $66fd: $9f
    db $fc                                        ; $66fe: $fc
    inc [hl]                                      ; $66ff: $34
    rra                                           ; $6700: $1f
    inc d                                         ; $6701: $14
    ld a, d                                       ; $6702: $7a
    ccf                                           ; $6703: $3f
    inc c                                         ; $6704: $0c
    jr nc, jr_0a7_6707                            ; $6705: $30 $00

jr_0a7_6707:
    inc c                                         ; $6707: $0c
    jr nc, jr_0a7_671a                            ; $6708: $30 $10

    ld a, [de]                                    ; $670a: $1a
    rra                                           ; $670b: $1f
    nop                                           ; $670c: $00
    ld a, a                                       ; $670d: $7f
    ret nz                                        ; $670e: $c0

    rst $38                                       ; $670f: $ff
    ldh a, [$7f]                                  ; $6710: $f0 $7f
    ld sp, hl                                     ; $6712: $f9
    cpl                                           ; $6713: $2f
    ld hl, sp+$00                                 ; $6714: $f8 $00
    rla                                           ; $6716: $17
    db $fc                                        ; $6717: $fc
    cpl                                           ; $6718: $2f
    ei                                            ; $6719: $fb

jr_0a7_671a:
    rra                                           ; $671a: $1f
    db $fc                                        ; $671b: $fc
    rrca                                          ; $671c: $0f
    rst $38                                       ; $671d: $ff
    ret nz                                        ; $671e: $c0

    xor b                                         ; $671f: $a8
    ld a, [de]                                    ; $6720: $1a
    ld [bc], a                                    ; $6721: $02
    jr c, jr_0a7_66a7                             ; $6722: $38 $83

    add d                                         ; $6724: $82
    add e                                         ; $6725: $83
    add d                                         ; $6726: $82
    jp Jump_000_0082                              ; $6727: $c3 $82 $00


    jp $c3c2                                      ; $672a: $c3 $c2 $c3


    jp Jump_0a7_42c3                              ; $672d: $c3 $c3 $42


    rst $00                                       ; $6730: $c7
    call nz, $c720                                ; $6731: $c4 $20 $c7
    add $b8                                       ; $6734: $c6 $b8
    ld a, [bc]                                    ; $6736: $0a
    add c                                         ; $6737: $81
    add b                                         ; $6738: $80
    sbc a                                         ; $6739: $9f
    adc l                                         ; $673a: $8d
    cp a                                          ; $673b: $bf

Jump_0a7_673c:
    nop                                           ; $673c: $00
    sub e                                         ; $673d: $93
    rst $38                                       ; $673e: $ff
    pop hl                                        ; $673f: $e1
    rst $38                                       ; $6740: $ff
    ld h, b                                       ; $6741: $60
    rst $38                                       ; $6742: $ff
    ld a, a                                       ; $6743: $7f
    ld b, b                                       ; $6744: $40
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    ldh [rLCDC], a                                ; $6747: $e0 $40
    ldh a, [$a0]                                  ; $6749: $f0 $a0
    ld hl, sp+$10                                 ; $674b: $f8 $10
    ld sp, hl                                     ; $674d: $f9
    nop                                           ; $674e: $00
    ld [$09fb], sp                                ; $674f: $08 $fb $09
    rst $38                                       ; $6752: $ff
    rrca                                          ; $6753: $0f
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    ld bc, $0101                                  ; $6756: $01 $01 $01
    inc bc                                        ; $6759: $03
    ld bc, $0307                                  ; $675a: $01 $07 $03
    rrca                                          ; $675d: $0f
    inc b                                         ; $675e: $04
    sub e                                         ; $675f: $93
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    rlca                                          ; $6762: $07
    rlca                                          ; $6763: $07
    inc bc                                        ; $6764: $03
    ccf                                           ; $6765: $3f
    rra                                           ; $6766: $1f
    rst $08                                       ; $6767: $cf
    call nz, Call_000_00df                        ; $6768: $c4 $df $00
    adc $ff                                       ; $676b: $ce $ff
    db $f4                                        ; $676d: $f4
    rst $38                                       ; $676e: $ff
    add $ff                                       ; $676f: $c6 $ff
    ld h, h                                       ; $6771: $64
    rst $38                                       ; $6772: $ff
    nop                                           ; $6773: $00
    ld hl, sp-$01                                 ; $6774: $f8 $ff
    ret nz                                        ; $6776: $c0

    rst $38                                       ; $6777: $ff
    pop bc                                        ; $6778: $c1
    rst $38                                       ; $6779: $ff
    ld b, l                                       ; $677a: $45
    rst $38                                       ; $677b: $ff
    ld d, h                                       ; $677c: $54
    ld b, e                                       ; $677d: $43
    inc b                                         ; $677e: $04
    nop                                           ; $677f: $00
    ld b, a                                       ; $6780: $47
    ld [$2700], sp                                ; $6781: $08 $00 $27
    ld c, c                                       ; $6784: $49
    dec b                                         ; $6785: $05
    dec bc                                        ; $6786: $0b
    rst $38                                       ; $6787: $ff
    ld bc, $ff23                                  ; $6788: $01 $23 $ff
    add a                                         ; $678b: $87
    rst $38                                       ; $678c: $ff
    ld b, d                                       ; $678d: $42
    rst $38                                       ; $678e: $ff
    rst $00                                       ; $678f: $c7
    inc b                                         ; $6790: $04
    nop                                           ; $6791: $00
    ld b, b                                       ; $6792: $40
    add $08                                       ; $6793: $c6 $08
    nop                                           ; $6795: $00
    sub $ff                                       ; $6796: $d6 $ff
    ld h, a                                       ; $6798: $67
    rst $38                                       ; $6799: $ff
    add e                                         ; $679a: $83
    rst $38                                       ; $679b: $ff
    db $10                                        ; $679c: $10
    rra                                           ; $679d: $1f
    rst $38                                       ; $679e: $ff

jr_0a7_679f:
    ccf                                           ; $679f: $3f
    ld [bc], a                                    ; $67a0: $02
    nop                                           ; $67a1: $00
    rra                                           ; $67a2: $1f
    rst $38                                       ; $67a3: $ff
    ld de, $44ff                                  ; $67a4: $11 $ff $44
    inc a                                         ; $67a7: $3c
    ld [hl-], a                                   ; $67a8: $32
    nop                                           ; $67a9: $00
    pop bc                                        ; $67aa: $c1
    rst $38                                       ; $67ab: $ff
    jp Jump_000_006c                              ; $67ac: $c3 $6c $00


    ld b, c                                       ; $67af: $41
    rst $38                                       ; $67b0: $ff
    ld b, b                                       ; $67b1: $40

Jump_0a7_67b2:
    add l                                         ; $67b2: $85
    ei                                            ; $67b3: $fb
    dec b                                         ; $67b4: $05
    xor e                                         ; $67b5: $ab
    rst $38                                       ; $67b6: $ff
    ld bc, $03ff                                  ; $67b7: $01 $ff $03
    rst $38                                       ; $67ba: $ff
    ld b, c                                       ; $67bb: $41
    add c                                         ; $67bc: $81
    dec d                                         ; $67bd: $15
    ld d, $12                                     ; $67be: $16 $12
    rst $38                                       ; $67c0: $ff
    ldh a, [rIE]                                  ; $67c1: $f0 $ff
    db $fc                                        ; $67c3: $fc
    dec bc                                        ; $67c4: $0b
    dec b                                         ; $67c5: $05
    jr jr_0a7_679f                                ; $67c6: $18 $d7

    rst $38                                       ; $67c8: $ff
    xor [hl]                                      ; $67c9: $ae
    xor e                                         ; $67ca: $ab
    dec d                                         ; $67cb: $15
    inc [hl]                                      ; $67cc: $34
    ld [$ff7f], sp                                ; $67cd: $08 $7f $ff
    jr c, jr_0a7_67d2                             ; $67d0: $38 $00

jr_0a7_67d2:
    rst $38                                       ; $67d2: $ff
    ld sp, hl                                     ; $67d3: $f9
    rst $38                                       ; $67d4: $ff
    ld [hl], e                                    ; $67d5: $73
    rst $38                                       ; $67d6: $ff
    cp l                                          ; $67d7: $bd
    rst $38                                       ; $67d8: $ff
    ld a, l                                       ; $67d9: $7d
    sub c                                         ; $67da: $91
    db $10                                        ; $67db: $10
    ld c, $52                                     ; $67dc: $0e $52
    rst $38                                       ; $67de: $ff
    jr c, jr_0a7_67e1                             ; $67df: $38 $00

jr_0a7_67e1:
    rst $20                                       ; $67e1: $e7
    rst $38                                       ; $67e2: $ff
    rr [hl]                                       ; $67e3: $cb $1e
    ld e, $5b                                     ; $67e5: $1e $5b
    xor b                                         ; $67e7: $a8
    ld b, b                                       ; $67e8: $40
    ld c, $e8                                     ; $67e9: $0e $e8
    ld a, c                                       ; $67eb: $79
    dec h                                         ; $67ec: $25
    ld b, b                                       ; $67ed: $40
    dec b                                         ; $67ee: $05
    ld de, $1def                                  ; $67ef: $11 $ef $1d
    cp e                                          ; $67f2: $bb
    dec c                                         ; $67f3: $0d
    ld b, d                                       ; $67f4: $42
    sbc e                                         ; $67f5: $9b
    ld [hl], $0d                                  ; $67f6: $36 $0d
    inc b                                         ; $67f8: $04
    rst $38                                       ; $67f9: $ff
    ld b, b                                       ; $67fa: $40
    rst $38                                       ; $67fb: $ff
    and e                                         ; $67fc: $a3
    dec b                                         ; $67fd: $05
    ld e, l                                       ; $67fe: $5d
    nop                                           ; $67ff: $00
    rst $38                                       ; $6800: $ff
    ld a, d                                       ; $6801: $7a
    rst $38                                       ; $6802: $ff
    sbc h                                         ; $6803: $9c
    rst $38                                       ; $6804: $ff
    sbc d                                         ; $6805: $9a
    rst $38                                       ; $6806: $ff
    inc e                                         ; $6807: $1c
    adc b                                         ; $6808: $88
    ld d, c                                       ; $6809: $51
    ld b, $fc                                     ; $680a: $06 $fc
    cp $96                                        ; $680c: $fe $96
    ld [hl], d                                    ; $680e: $72
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    rst $38                                       ; $6811: $ff
    ret c                                         ; $6812: $d8

    ret z                                         ; $6813: $c8

    ld [bc], a                                    ; $6814: $02
    nop                                           ; $6815: $00
    ld b, $10                                     ; $6816: $06 $10
    ccf                                           ; $6818: $3f
    inc e                                         ; $6819: $1c
    ret z                                         ; $681a: $c8

    nop                                           ; $681b: $00
    db $fc                                        ; $681c: $fc
    rst $38                                       ; $681d: $ff

jr_0a7_681e:
    cp b                                          ; $681e: $b8
    jr nz, @+$01                                  ; $681f: $20 $ff

    ld a, h                                       ; $6821: $7c
    inc b                                         ; $6822: $04
    jr jr_0a7_681e                                ; $6823: $18 $f9

    pop af                                        ; $6825: $f1
    db $fd                                        ; $6826: $fd
    jp hl                                         ; $6827: $e9


    rst $38                                       ; $6828: $ff
    ld d, b                                       ; $6829: $50
    push bc                                       ; $682a: $c5

Call_0a7_682b:
    sub h                                         ; $682b: $94
    nop                                           ; $682c: $00
    jr jr_0a7_6831                                ; $682d: $18 $02

    stop                                          ; $682f: $10 $00

jr_0a7_6831:
    rst $38                                       ; $6831: $ff
    cp [hl]                                       ; $6832: $be
    rst $38                                       ; $6833: $ff
    ld bc, $ff44                                  ; $6834: $01 $44 $ff
    add d                                         ; $6837: $82
    rst $38                                       ; $6838: $ff
    ld l, l                                       ; $6839: $6d
    rst $38                                       ; $683a: $ff
    ld l, h                                       ; $683b: $6c
    cp c                                          ; $683c: $b9
    ld b, [hl]                                    ; $683d: $46
    ld d, d                                       ; $683e: $52
    ld [bc], a                                    ; $683f: $02
    ld e, e                                       ; $6840: $5b
    nop                                           ; $6841: $00
    add c                                         ; $6842: $81
    add hl, bc                                    ; $6843: $09
    dec c                                         ; $6844: $0d
    rst $38                                       ; $6845: $ff
    scf                                           ; $6846: $37
    jr c, jr_0a7_6849                             ; $6847: $38 $00

jr_0a7_6849:
    ccf                                           ; $6849: $3f
    dec bc                                        ; $684a: $0b
    rst $38                                       ; $684b: $ff
    rlca                                          ; $684c: $07
    rst $38                                       ; $684d: $ff
    pop af                                        ; $684e: $f1
    and [hl]                                      ; $684f: $a6
    nop                                           ; $6850: $00
    adc l                                         ; $6851: $8d
    add sp, $00                                   ; $6852: $e8 $00
    dec [hl]                                      ; $6854: $35
    ld c, $e8                                     ; $6855: $0e $e8
    daa                                           ; $6857: $27
    dec [hl]                                      ; $6858: $35
    or $10                                        ; $6859: $f6 $10
    pop af                                        ; $685b: $f1
    ld c, $73                                     ; $685c: $0e $73
    call nz, $fb00                                ; $685e: $c4 $00 $fb
    rst $38                                       ; $6861: $ff
    di                                            ; $6862: $f3
    ld a, [hl+]                                   ; $6863: $2a
    rst $38                                       ; $6864: $ff
    push hl                                       ; $6865: $e5
    rst $28                                       ; $6866: $ef
    ld b, $37                                     ; $6867: $06 $37
    ld e, e                                       ; $6869: $5b
    ld d, $f8                                     ; $686a: $16 $f8
    db $ec                                        ; $686c: $ec
    nop                                           ; $686d: $00
    pop af                                        ; $686e: $f1
    xor b                                         ; $686f: $a8
    scf                                           ; $6870: $37
    ld b, $f2                                     ; $6871: $06 $f2
    ld a, [c]                                     ; $6873: $f2
    nop                                           ; $6874: $00
    ldh [rNR13], a                                ; $6875: $e0 $13
    rla                                           ; $6877: $17
    inc e                                         ; $6878: $1c
    rst $38                                       ; $6879: $ff
    call c, Call_0a7_50aa                         ; $687a: $dc $aa $50
    ld bc, $4c00                                  ; $687d: $01 $00 $4c
    nop                                           ; $6880: $00
    ld b, b                                       ; $6881: $40
    jp Jump_0a7_5c06                              ; $6882: $c3 $06 $5c


    xor [hl]                                      ; $6885: $ae
    nop                                           ; $6886: $00
    ld b, b                                       ; $6887: $40
    xor l                                         ; $6888: $ad
    inc e                                         ; $6889: $1c
    ld bc, $2143                                  ; $688a: $01 $43 $21
    rlca                                          ; $688d: $07
    db $e4                                        ; $688e: $e4
    jr jr_0a7_68a1                                ; $688f: $18 $10

    jr nz, jr_0a7_6899                            ; $6891: $20 $06

    dec b                                         ; $6893: $05
    call c, $aa06                                 ; $6894: $dc $06 $aa
    cp $00                                        ; $6897: $fe $00

jr_0a7_6899:
    rst $28                                       ; $6899: $ef
    inc sp                                        ; $689a: $33
    rlca                                          ; $689b: $07
    ld c, $e0                                     ; $689c: $0e $e0
    jr @+$23                                      ; $689e: $18 $21

    add c                                         ; $68a0: $81

jr_0a7_68a1:
    dec a                                         ; $68a1: $3d
    rst $38                                       ; $68a2: $ff
    ld a, [de]                                    ; $68a3: $1a
    sub d                                         ; $68a4: $92
    rst $38                                       ; $68a5: $ff
    inc h                                         ; $68a6: $24
    ld a, c                                       ; $68a7: $79
    ld bc, HeaderGlobalChecksum                   ; $68a8: $01 $4e $01
    ld b, a                                       ; $68ab: $47
    sub b                                         ; $68ac: $90
    nop                                           ; $68ad: $00
    ld b, a                                       ; $68ae: $47
    jr @+$01                                      ; $68af: $18 $ff

    rst $38                                       ; $68b1: $ff
    sub l                                         ; $68b2: $95
    ld l, d                                       ; $68b3: $6a
    rra                                           ; $68b4: $1f
    ld l, d                                       ; $68b5: $6a
    dec h                                         ; $68b6: $25
    add b                                         ; $68b7: $80
    add b                                         ; $68b8: $80
    ret nz                                        ; $68b9: $c0

    nop                                           ; $68ba: $00
    add b                                         ; $68bb: $80
    ldh a, [$e0]                                  ; $68bc: $f0 $e0
    ldh a, [$d0]                                  ; $68be: $f0 $d0
    ldh a, [rNR10]                                ; $68c0: $f0 $10
    ldh a, [rP1]                                  ; $68c2: $f0 $00
    db $10                                        ; $68c4: $10
    pop af                                        ; $68c5: $f1
    sub c                                         ; $68c6: $91
    pop af                                        ; $68c7: $f1
    pop de                                        ; $68c8: $d1
    ld a, [c]                                     ; $68c9: $f2
    db $d3                                        ; $68ca: $d3
    ld a, [$d340]                                 ; $68cb: $fa $40 $d3
    rrca                                          ; $68ce: $0f
    ld bc, $7cff                                  ; $68cf: $01 $ff $7c

jr_0a7_68d2:
    jr c, jr_0a7_68d2                             ; $68d2: $38 $fe

    ld a, h                                       ; $68d4: $7c
    cp $00                                        ; $68d5: $fe $00
    and $fe                                       ; $68d7: $e6 $fe
    jp z, $e2fe                                   ; $68d9: $ca $fe $e2

    cp $e6                                        ; $68dc: $fe $e6
    ld a, [hl]                                    ; $68de: $7e
    ld a, [de]                                    ; $68df: $1a
    ld a, [c]                                     ; $68e0: $f2
    ld a, [hl]                                    ; $68e1: $7e
    jp c, $14d8                                   ; $68e2: $da $d8 $14

    jp c, Jump_000_0304                           ; $68e5: $da $04 $03

    ld hl, sp+$01                                 ; $68e8: $f8 $01
    ld [bc], a                                    ; $68ea: $02
    dec de                                        ; $68eb: $1b
    inc bc                                        ; $68ec: $03
    dec b                                         ; $68ed: $05
    inc bc                                        ; $68ee: $03
    jr c, @+$0a                                   ; $68ef: $38 $08

    jr nz, @+$07                                  ; $68f1: $20 $05

    ret nz                                        ; $68f3: $c0

    ld [bc], a                                    ; $68f4: $02
    jr z, jr_0a7_692b                             ; $68f5: $28 $34

    ld [$fa01], sp                                ; $68f7: $08 $01 $fa
    rst $08                                       ; $68fa: $cf
    db $f4                                        ; $68fb: $f4
    rra                                           ; $68fc: $1f
    add sp, $3f                                   ; $68fd: $e8 $3f
    ret nc                                        ; $68ff: $d0

    sbc c                                         ; $6900: $99
    ld bc, $f001                                  ; $6901: $01 $01 $f0
    rst $38                                       ; $6904: $ff
    ld a, a                                       ; $6905: $7f
    jp c, $fb7f                                   ; $6906: $da $7f $fb

    ccf                                           ; $6909: $3f
    jp nz, $c007                                  ; $690a: $c2 $07 $c0

    add $07                                       ; $690d: $c6 $07
    ld c, a                                       ; $690f: $4f
    ld [$069e], sp                                ; $6910: $08 $9e $06
    rlca                                          ; $6913: $07
    adc h                                         ; $6914: $8c
    rlca                                          ; $6915: $07
    jp c, $8f00                                   ; $6916: $da $00 $8f

    db $fc                                        ; $6919: $fc
    rst $18                                       ; $691a: $df
    add sp, -$01                                  ; $691b: $e8 $ff
    ret nc                                        ; $691d: $d0

    rst $38                                       ; $691e: $ff
    ld hl, sp+$14                                 ; $691f: $f8 $14
    ld a, a                                       ; $6921: $7f
    push af                                       ; $6922: $f5
    rst $38                                       ; $6923: $ff
    ld a, [hl-]                                   ; $6924: $3a
    ld [$0260], sp                                ; $6925: $08 $60 $02
    nop                                           ; $6928: $00
    jr nz, @-$1e                                  ; $6929: $20 $e0

jr_0a7_692b:
    ld bc, $e070                                  ; $692b: $01 $70 $e0
    jr nc, @-$0e                                  ; $692e: $30 $f0

    ld d, b                                       ; $6930: $50
    ldh a, [$e8]                                  ; $6931: $f0 $e8
    push hl                                       ; $6933: $e5
    ld bc, $e050                                  ; $6934: $01 $50 $e0
    inc e                                         ; $6937: $1c
    nop                                           ; $6938: $00
    and b                                         ; $6939: $a0
    ld hl, sp+$07                                 ; $693a: $f8 $07
    dec b                                         ; $693c: $05
    rst $38                                       ; $693d: $ff
    db $10                                        ; $693e: $10
    rst $38                                       ; $693f: $ff
    ld [bc], a                                    ; $6940: $02
    ld a, a                                       ; $6941: $7f
    db $dd                                        ; $6942: $dd
    rst $38                                       ; $6943: $ff
    cp $7f                                        ; $6944: $fe $7f
    rst $18                                       ; $6946: $df
    ld b, b                                       ; $6947: $40
    ld [$aaff], sp                                ; $6948: $08 $ff $aa
    call nz, $2a06                                ; $694b: $c4 $06 $2a
    add hl, de                                    ; $694e: $19
    ld de, $c3e9                                  ; $694f: $11 $e9 $c3
    ld [bc], a                                    ; $6952: $02
    pop hl                                        ; $6953: $e1
    cp h                                          ; $6954: $bc
    ld bc, $0681                                  ; $6955: $01 $81 $06
    rst $38                                       ; $6958: $ff
    ld a, [$f8ff]                                 ; $6959: $fa $ff $f8
    ldh a, [$ba]                                  ; $695c: $f0 $ba
    ld [$0084], sp                                ; $695e: $08 $84 $00
    ret nz                                        ; $6961: $c0

    ld e, b                                       ; $6962: $58
    ret nz                                        ; $6963: $c0

    add h                                         ; $6964: $84
    nop                                           ; $6965: $00
    ret nz                                        ; $6966: $c0

    ld d, e                                       ; $6967: $53
    ld d, $7e                                     ; $6968: $16 $7e
    dec e                                         ; $696a: $1d
    rrca                                          ; $696b: $0f
    rlca                                          ; $696c: $07
    ld a, l                                       ; $696d: $7d
    ld [bc], a                                    ; $696e: $02
    ccf                                           ; $696f: $3f
    db $d3                                        ; $6970: $d3
    rst $38                                       ; $6971: $ff
    rst $28                                       ; $6972: $ef
    rst $18                                       ; $6973: $df
    sbc a                                         ; $6974: $9f
    inc b                                         ; $6975: $04
    nop                                           ; $6976: $00
    sub a                                         ; $6977: $97
    nop                                           ; $6978: $00
    rst $28                                       ; $6979: $ef
    ld [$96c7], a                                 ; $697a: $ea $c7 $96
    rst $28                                       ; $697d: $ef
    ld l, d                                       ; $697e: $6a
    rst $00                                       ; $697f: $c7
    sub l                                         ; $6980: $95
    ld d, [hl]                                    ; $6981: $56
    db $e3                                        ; $6982: $e3
    adc d                                         ; $6983: $8a
    rrca                                          ; $6984: $0f
    db $f4                                        ; $6985: $f4
    ld e, l                                       ; $6986: $5d
    ld [bc], a                                    ; $6987: $02
    ld [$07ff], sp                                ; $6988: $08 $ff $07
    db $10                                        ; $698b: $10
    add hl, bc                                    ; $698c: $09
    db $f4                                        ; $698d: $f4
    rrca                                          ; $698e: $0f
    rst $38                                       ; $698f: $ff
    sub b                                         ; $6990: $90
    rst $38                                       ; $6991: $ff
    jr z, jr_0a7_6a0d                             ; $6992: $28 $79

    ld [bc], a                                    ; $6994: $02
    db $10                                        ; $6995: $10
    ld [$14c4], sp                                ; $6996: $08 $c4 $14
    xor l                                         ; $6999: $ad
    ld bc, $1114                                  ; $699a: $01 $14 $11
    rst $38                                       ; $699d: $ff
    add hl, hl                                    ; $699e: $29
    adc e                                         ; $699f: $8b
    ld [bc], a                                    ; $69a0: $02
    add hl, bc                                    ; $69a1: $09
    ld a, c                                       ; $69a2: $79
    ld [bc], a                                    ; $69a3: $02
    ld [de], a                                    ; $69a4: $12
    rst $38                                       ; $69a5: $ff
    inc b                                         ; $69a6: $04
    ld d, h                                       ; $69a7: $54
    adc e                                         ; $69a8: $8b
    inc hl                                        ; $69a9: $23
    rst $18                                       ; $69aa: $df
    ld [$01e1], a                                 ; $69ab: $ea $e1 $01
    ld d, [hl]                                    ; $69ae: $56
    xor a                                         ; $69af: $af
    ld bc, $c7bb                                  ; $69b0: $01 $bb $c7
    ld d, c                                       ; $69b3: $51
    xor a                                         ; $69b4: $af

jr_0a7_69b5:
    xor e                                         ; $69b5: $ab
    rst $00                                       ; $69b6: $c7
    add b                                         ; $69b7: $80
    ld a, b                                       ; $69b8: $78
    rlca                                          ; $69b9: $07
    ld bc, $fd02                                  ; $69ba: $01 $02 $fd
    nop                                           ; $69bd: $00
    rst $38                                       ; $69be: $ff
    ld d, b                                       ; $69bf: $50
    xor a                                         ; $69c0: $af
    nop                                           ; $69c1: $00
    sbc [hl]                                      ; $69c2: $9e
    nop                                           ; $69c3: $00
    ld b, h                                       ; $69c4: $44
    ret nz                                        ; $69c5: $c0

    nop                                           ; $69c6: $00
    dec b                                         ; $69c7: $05
    inc b                                         ; $69c8: $04
    ei                                            ; $69c9: $fb
    nop                                           ; $69ca: $00
    ld c, [hl]                                    ; $69cb: $4e
    nop                                           ; $69cc: $00
    ld b, b                                       ; $69cd: $40
    cp a                                          ; $69ce: $bf
    ld bc, $fb04                                  ; $69cf: $01 $04 $fb
    ld [de], a                                    ; $69d2: $12
    db $ed                                        ; $69d3: $ed
    jr nz, jr_0a7_69b5                            ; $69d4: $20 $df

    inc bc                                        ; $69d6: $03
    ld b, d                                       ; $69d7: $42
    nop                                           ; $69d8: $00
    inc h                                         ; $69d9: $24
    ld e, l                                       ; $69da: $5d
    rst $20                                       ; $69db: $e7
    ld d, b                                       ; $69dc: $50
    rlca                                          ; $69dd: $07
    cp $0e                                        ; $69de: $fe $0e
    rst $30                                       ; $69e0: $f7
    ld bc, $df23                                  ; $69e1: $01 $23 $df
    nop                                           ; $69e4: $00
    ld a, c                                       ; $69e5: $79
    add a                                         ; $69e6: $87
    and [hl]                                      ; $69e7: $a6
    rr c                                          ; $69e8: $cb $19
    rst $00                                       ; $69ea: $c7
    ld h, d                                       ; $69eb: $62
    adc a                                         ; $69ec: $8f
    inc b                                         ; $69ed: $04
    ld d, l                                       ; $69ee: $55
    add e                                         ; $69ef: $83
    xor b                                         ; $69f0: $a8
    rst $10                                       ; $69f1: $d7
    and l                                         ; $69f2: $a5
    add hl, de                                    ; $69f3: $19
    ld [bc], a                                    ; $69f4: $02
    add c                                         ; $69f5: $81
    cp $00                                        ; $69f6: $fe $00
    and d                                         ; $69f8: $a2
    db $fd                                        ; $69f9: $fd
    ret nc                                        ; $69fa: $d0

    rst $28                                       ; $69fb: $ef
    jp hl                                         ; $69fc: $e9


    rst $30                                       ; $69fd: $f7
    ld [hl], h                                    ; $69fe: $74
    ei                                            ; $69ff: $fb
    nop                                           ; $6a00: $00
    and d                                         ; $6a01: $a2
    db $fd                                        ; $6a02: $fd
    db $e4                                        ; $6a03: $e4
    rst $18                                       ; $6a04: $df
    call nc, Call_0a7_55ab                        ; $6a05: $d4 $ab $55

jr_0a7_6a08:
    xor d                                         ; $6a08: $aa
    nop                                           ; $6a09: $00
    xor d                                         ; $6a0a: $aa
    ld d, a                                       ; $6a0b: $57
    ld d, h                                       ; $6a0c: $54

jr_0a7_6a0d:
    xor e                                         ; $6a0d: $ab
    xor d                                         ; $6a0e: $aa
    ld d, l                                       ; $6a0f: $55
    ld b, e                                       ; $6a10: $43
    cp h                                          ; $6a11: $bc
    nop                                           ; $6a12: $00
    xor e                                         ; $6a13: $ab
    ld d, h                                       ; $6a14: $54
    ld d, l                                       ; $6a15: $55
    ld [$4db2], a                                 ; $6a16: $ea $b2 $4d
    xor d                                         ; $6a19: $aa
    ld d, a                                       ; $6a1a: $57
    nop                                           ; $6a1b: $00
    ld b, e                                       ; $6a1c: $43
    cp a                                          ; $6a1d: $bf
    ld b, $ff                                     ; $6a1e: $06 $ff
    xor l                                         ; $6a20: $ad
    ld [hl], a                                    ; $6a21: $77
    rla                                           ; $6a22: $17
    xor $00                                       ; $6a23: $ee $00
    add [hl]                                      ; $6a25: $86
    ld a, a                                       ; $6a26: $7f
    ld c, l                                       ; $6a27: $4d
    cp [hl]                                       ; $6a28: $be
    xor d                                         ; $6a29: $aa
    ld e, a                                       ; $6a2a: $5f
    xor c                                         ; $6a2b: $a9
    rst $10                                       ; $6a2c: $d7
    nop                                           ; $6a2d: $00
    jr @-$17                                      ; $6a2e: $18 $e7

    dec [hl]                                      ; $6a30: $35
    jp $854a                                      ; $6a31: $c3 $4a $85


    dec h                                         ; $6a34: $25
    jp nz, Jump_0a7_5400                          ; $6a35: $c2 $00 $54

    add e                                         ; $6a38: $83
    ld a, [hl+]                                   ; $6a39: $2a
    pop bc                                        ; $6a3a: $c1
    ld d, l                                       ; $6a3b: $55
    and d                                         ; $6a3c: $a2
    call nz, Call_000_00bb                        ; $6a3d: $c4 $bb $00
    ld [c], a                                     ; $6a40: $e2
    rst $10                                       ; $6a41: $d7
    ld d, l                                       ; $6a42: $55
    ld [$f5ca], a                                 ; $6a43: $ea $ca $f5
    ld d, c                                       ; $6a46: $51
    ld [$a200], a                                 ; $6a47: $ea $00 $a2
    db $fd                                        ; $6a4a: $fd
    ld h, l                                       ; $6a4b: $65
    ld a, [$f738]                                 ; $6a4c: $fa $38 $f7
    ld e, l                                       ; $6a4f: $5d
    and d                                         ; $6a50: $a2
    nop                                           ; $6a51: $00
    xor b                                         ; $6a52: $a8
    ld d, a                                       ; $6a53: $57
    dec d                                         ; $6a54: $15
    ld [$55aa], a                                 ; $6a55: $ea $aa $55
    inc b                                         ; $6a58: $04
    db $eb                                        ; $6a59: $eb
    ld bc, $55aa                                  ; $6a5a: $01 $aa $55
    ld d, c                                       ; $6a5d: $51
    xor [hl]                                      ; $6a5e: $ae
    and [hl]                                      ; $6a5f: $a6
    ld e, c                                       ; $6a60: $59
    dec b                                         ; $6a61: $05
    ld [hl], d                                    ; $6a62: $72
    rlca                                          ; $6a63: $07
    ld d, l                                       ; $6a64: $55
    db $10                                        ; $6a65: $10
    jp nc, Jump_000_1000                          ; $6a66: $d2 $00 $10

    ld [c], a                                     ; $6a69: $e2
    db $10                                        ; $6a6a: $10
    db $10                                        ; $6a6b: $10
    db $f4                                        ; $6a6c: $f4
    ld bc, $310a                                  ; $6a6d: $01 $0a $31
    ld [de], a                                    ; $6a70: $12
    adc d                                         ; $6a71: $8a
    and h                                         ; $6a72: $a4
    ld [$ff50], sp                                ; $6a73: $08 $50 $ff
    jr nz, jr_0a7_6a08                            ; $6a76: $20 $90

    rla                                           ; $6a78: $17
    add hl, bc                                    ; $6a79: $09
    ld [$0210], sp                                ; $6a7a: $08 $10 $02
    ldh a, [$30]                                  ; $6a7d: $f0 $30
    ld [de], a                                    ; $6a7f: $12
    ret nz                                        ; $6a80: $c0

    jr c, @-$34                                   ; $6a81: $38 $ca

    nop                                           ; $6a83: $00

jr_0a7_6a84:
    jp c, RST_10                                  ; $6a84: $da $10 $00

    rst $38                                       ; $6a87: $ff
    ld e, b                                       ; $6a88: $58
    rst $20                                       ; $6a89: $e7
    add b                                         ; $6a8a: $80
    ld [hl], b                                    ; $6a8b: $70
    rlca                                          ; $6a8c: $07
    cp a                                          ; $6a8d: $bf
    ld b, $f9                                     ; $6a8e: $06 $f9
    ld d, b                                       ; $6a90: $50
    xor a                                         ; $6a91: $af
    and b                                         ; $6a92: $a0
    ld e, a                                       ; $6a93: $5f
    nop                                           ; $6a94: $00
    add hl, bc                                    ; $6a95: $09
    or $02                                        ; $6a96: $f6 $02
    db $fd                                        ; $6a98: $fd
    dec b                                         ; $6a99: $05
    ld a, [$75aa]                                 ; $6a9a: $fa $aa $75
    nop                                           ; $6a9d: $00
    db $10                                        ; $6a9e: $10
    rst $28                                       ; $6a9f: $ef
    add d                                         ; $6aa0: $82
    ld a, l                                       ; $6aa1: $7d
    ld b, h                                       ; $6aa2: $44
    cp e                                          ; $6aa3: $bb
    xor d                                         ; $6aa4: $aa
    ld d, l                                       ; $6aa5: $55
    nop                                           ; $6aa6: $00
    ld bc, $92fe                                  ; $6aa7: $01 $fe $92
    ld l, a                                       ; $6aaa: $6f
    jr z, jr_0a7_6a84                             ; $6aab: $28 $d7

    ld de, $00ee                                  ; $6aad: $11 $ee $00
    ld [hl+], a                                   ; $6ab0: $22
    db $dd                                        ; $6ab1: $dd
    dec b                                         ; $6ab2: $05
    ld a, [$dd62]                                 ; $6ab3: $fa $62 $dd
    sub b                                         ; $6ab6: $90
    ld l, a                                       ; $6ab7: $6f
    nop                                           ; $6ab8: $00
    ld bc, $22fe                                  ; $6ab9: $01 $fe $22
    db $fd                                        ; $6abc: $fd
    ld d, b                                       ; $6abd: $50
    xor a                                         ; $6abe: $af
    add hl, hl                                    ; $6abf: $29
    rst $10                                       ; $6ac0: $d7
    nop                                           ; $6ac1: $00
    ld b, h                                       ; $6ac2: $44
    cp e                                          ; $6ac3: $bb
    ld [bc], a                                    ; $6ac4: $02
    db $fd                                        ; $6ac5: $fd
    and h                                         ; $6ac6: $a4
    ld e, a                                       ; $6ac7: $5f
    ld d, h                                       ; $6ac8: $54
    xor e                                         ; $6ac9: $ab
    nop                                           ; $6aca: $00
    ld b, l                                       ; $6acb: $45
    xor d                                         ; $6acc: $aa
    xor b                                         ; $6acd: $a8
    ld d, a                                       ; $6ace: $57
    ld b, l                                       ; $6acf: $45
    cp d                                          ; $6ad0: $ba
    ld [$0015], a                                 ; $6ad1: $ea $15 $00
    sub h                                         ; $6ad4: $94
    cpl                                           ; $6ad5: $2f
    ld l, d                                       ; $6ad6: $6a
    sub l                                         ; $6ad7: $95
    pop bc                                        ; $6ad8: $c1
    ld a, $6a                                     ; $6ad9: $3e $6a
    dec d                                         ; $6adb: $15
    nop                                           ; $6adc: $00
    ld d, c                                       ; $6add: $51
    xor [hl]                                      ; $6ade: $ae
    xor d                                         ; $6adf: $aa
    ld d, l                                       ; $6ae0: $55
    ld d, l                                       ; $6ae1: $55
    xor e                                         ; $6ae2: $ab
    ld a, [bc]                                    ; $6ae3: $0a
    push af                                       ; $6ae4: $f5
    ld hl, $ae55                                  ; $6ae5: $21 $55 $ae
    xor b                                         ; $6ae8: $a8
    nop                                           ; $6ae9: $00
    xor d                                         ; $6aea: $aa
    and [hl]                                      ; $6aeb: $a6
    ld e, c                                       ; $6aec: $59
    ld d, l                                       ; $6aed: $55
    jr nz, jr_0a7_6af0                            ; $6aee: $20 $00

jr_0a7_6af0:
    add b                                         ; $6af0: $80
    or b                                          ; $6af1: $b0
    nop                                           ; $6af2: $00
    ld e, l                                       ; $6af3: $5d
    ld d, d                                       ; $6af4: $52
    xor h                                         ; $6af5: $ac
    db $db                                        ; $6af6: $db
    inc h                                         ; $6af7: $24
    ld l, c                                       ; $6af8: $69
    add [hl]                                      ; $6af9: $86
    nop                                           ; $6afa: $00
    cp d                                          ; $6afb: $ba
    ld b, l                                       ; $6afc: $45
    dec de                                        ; $6afd: $1b
    ldh [$a7], a                                  ; $6afe: $e0 $a7
    ld e, b                                       ; $6b00: $58
    ld d, l                                       ; $6b01: $55
    xor d                                         ; $6b02: $aa
    nop                                           ; $6b03: $00
    adc d                                         ; $6b04: $8a
    ld a, l                                       ; $6b05: $7d
    ld d, c                                       ; $6b06: $51
    xor [hl]                                      ; $6b07: $ae
    db $db                                        ; $6b08: $db
    inc b                                         ; $6b09: $04
    ld [hl], l                                    ; $6b0a: $75
    adc d                                         ; $6b0b: $8a
    nop                                           ; $6b0c: $00

jr_0a7_6b0d:
    dec hl                                        ; $6b0d: $2b
    call nc, $2ad5                                ; $6b0e: $d4 $d5 $2a
    xor d                                         ; $6b11: $aa
    ld [hl], l                                    ; $6b12: $75
    inc b                                         ; $6b13: $04
    ei                                            ; $6b14: $fb
    nop                                           ; $6b15: $00
    ld a, [hl+]                                   ; $6b16: $2a
    push de                                       ; $6b17: $d5
    sub c                                         ; $6b18: $91
    xor $ea                                       ; $6b19: $ee $ea
    dec d                                         ; $6b1b: $15
    or l                                          ; $6b1c: $b5
    ld c, $00                                     ; $6b1d: $0e $00
    ld [$4f15], a                                 ; $6b1f: $ea $15 $4f
    or b                                          ; $6b22: $b0
    xor h                                         ; $6b23: $ac
    ld d, e                                       ; $6b24: $53
    ld d, e                                       ; $6b25: $53
    xor b                                         ; $6b26: $a8
    nop                                           ; $6b27: $00
    adc d                                         ; $6b28: $8a
    ld d, l                                       ; $6b29: $55
    ld d, h                                       ; $6b2a: $54
    xor [hl]                                      ; $6b2b: $ae
    jr nz, jr_0a7_6b0d                            ; $6b2c: $20 $df

    ld [hl], h                                    ; $6b2e: $74
    adc e                                         ; $6b2f: $8b
    nop                                           ; $6b30: $00
    ld e, d                                       ; $6b31: $5a

jr_0a7_6b32:
    add l                                         ; $6b32: $85
    ld l, a                                       ; $6b33: $6f
    sub b                                         ; $6b34: $90
    cp l                                          ; $6b35: $bd
    ld b, b                                       ; $6b36: $40
    ld d, h                                       ; $6b37: $54
    xor e                                         ; $6b38: $ab
    nop                                           ; $6b39: $00
    ld [$7515], a                                 ; $6b3a: $ea $15 $75
    adc d                                         ; $6b3d: $8a
    cp d                                          ; $6b3e: $ba
    ld b, a                                       ; $6b3f: $47
    inc d                                         ; $6b40: $14
    db $eb                                        ; $6b41: $eb
    jr nz, jr_0a7_6b32                            ; $6b42: $20 $ee

    ld de, $0008                                  ; $6b44: $11 $08 $00
    ld b, l                                       ; $6b47: $45
    cp l                                          ; $6b48: $bd
    ld [bc], a                                    ; $6b49: $02
    ld l, [hl]                                    ; $6b4a: $6e
    sub c                                         ; $6b4b: $91
    nop                                           ; $6b4c: $00
    ld b, l                                       ; $6b4d: $45
    cp d                                          ; $6b4e: $ba
    xor d                                         ; $6b4f: $aa
    ld d, a                                       ; $6b50: $57
    ld a, l                                       ; $6b51: $7d
    add d                                         ; $6b52: $82
    cp d                                          ; $6b53: $ba
    ld b, l                                       ; $6b54: $45
    add b                                         ; $6b55: $80
    ret nz                                        ; $6b56: $c0

    jr z, jr_0a7_6b59                             ; $6b57: $28 $00

jr_0a7_6b59:
    rst $38                                       ; $6b59: $ff
    ld b, [hl]                                    ; $6b5a: $46
    cp c                                          ; $6b5b: $b9
    nop                                           ; $6b5c: $00
    rst $38                                       ; $6b5d: $ff
    jr nz, jr_0a7_6bb9                            ; $6b5e: $20 $59

    rst $18                                       ; $6b60: $df
    ldh [rIF], a                                  ; $6b61: $e0 $0f
    ld b, h                                       ; $6b63: $44
    and d                                         ; $6b64: $a2
    ld bc, $0fe8                                  ; $6b65: $01 $e8 $0f
    ld c, b                                       ; $6b68: $48
    or a                                          ; $6b69: $b7
    cp d                                          ; $6b6a: $ba
    add hl, bc                                    ; $6b6b: $09
    inc h                                         ; $6b6c: $24
    ld h, b                                       ; $6b6d: $60
    sbc a                                         ; $6b6e: $9f
    db $f4                                        ; $6b6f: $f4
    rrca                                          ; $6b70: $0f
    ld a, [bc]                                    ; $6b71: $0a
    push af                                       ; $6b72: $f5
    cp h                                          ; $6b73: $bc
    add hl, bc                                    ; $6b74: $09
    ld [$98f7], sp                                ; $6b75: $08 $f7 $98
    jp nz, Jump_000_1409                          ; $6b78: $c2 $09 $14

    db $eb                                        ; $6b7b: $eb
    call z, $a009                                 ; $6b7c: $cc $09 $a0
    ld c, $21                                     ; $6b7f: $0e $21
    sbc $14                                       ; $6b81: $de $14
    nop                                           ; $6b83: $00
    db $eb                                        ; $6b84: $eb
    adc d                                         ; $6b85: $8a
    ld [hl], l                                    ; $6b86: $75
    ld d, c                                       ; $6b87: $51
    xor [hl]                                      ; $6b88: $ae
    jr z, @-$27                                   ; $6b89: $28 $d7

    ld b, b                                       ; $6b8b: $40
    ld b, b                                       ; $6b8c: $40
    cp a                                          ; $6b8d: $bf
    cp b                                          ; $6b8e: $b8
    nop                                           ; $6b8f: $00
    xor d                                         ; $6b90: $aa
    ld [hl+], a                                   ; $6b91: $22
    db $dd                                        ; $6b92: $dd
    xor c                                         ; $6b93: $a9
    ld d, [hl]                                    ; $6b94: $56
    ld b, d                                       ; $6b95: $42
    ld b, b                                       ; $6b96: $40
    cp l                                          ; $6b97: $bd
    nop                                           ; $6b98: $00
    ld c, c                                       ; $6b99: $49
    add c                                         ; $6b9a: $81
    ld a, [hl]                                    ; $6b9b: $7e
    ld [$d415], a                                 ; $6b9c: $ea $15 $d4
    ld a, [hl+]                                   ; $6b9f: $2a
    nop                                           ; $6ba0: $00
    jr nz, @-$1f                                  ; $6ba1: $20 $df

    ld d, l                                       ; $6ba3: $55
    xor d                                         ; $6ba4: $aa
    ld l, $d1                                     ; $6ba5: $2e $d1
    db $db                                        ; $6ba7: $db
    jr nz, jr_0a7_6bd2                            ; $6ba8: $20 $28

    and h                                         ; $6baa: $a4
    ld e, e                                       ; $6bab: $5b
    sub b                                         ; $6bac: $90
    ld [$7c14], sp                                ; $6bad: $08 $14 $7c
    ld bc, $ea15                                  ; $6bb0: $01 $15 $ea
    and d                                         ; $6bb3: $a2
    ld b, b                                       ; $6bb4: $40
    ld e, a                                       ; $6bb5: $5f
    ld [$4108], sp                                ; $6bb6: $08 $08 $41

jr_0a7_6bb9:
    cp [hl]                                       ; $6bb9: $be
    and d                                         ; $6bba: $a2
    ld e, l                                       ; $6bbb: $5d
    or l                                          ; $6bbc: $b5
    ld a, [bc]                                    ; $6bbd: $0a
    ld [hl-], a                                   ; $6bbe: $32
    ld l, b                                       ; $6bbf: $68
    sub a                                         ; $6bc0: $97
    sub b                                         ; $6bc1: $90
    ld [$0094], sp                                ; $6bc2: $08 $94 $00
    ld d, l                                       ; $6bc5: $55
    ld a, h                                       ; $6bc6: $7c
    sub h                                         ; $6bc7: $94
    nop                                           ; $6bc8: $00
    db $dd                                        ; $6bc9: $dd
    db $10                                        ; $6bca: $10
    ld [hl+], a                                   ; $6bcb: $22
    xor d                                         ; $6bcc: $aa
    ld [hl], l                                    ; $6bcd: $75
    inc c                                         ; $6bce: $0c
    ld [$827d], sp                                ; $6bcf: $08 $7d $82

jr_0a7_6bd2:
    xor [hl]                                      ; $6bd2: $ae
    ld d, c                                       ; $6bd3: $51
    nop                                           ; $6bd4: $00
    ld e, l                                       ; $6bd5: $5d
    and d                                         ; $6bd6: $a2
    sub [hl]                                      ; $6bd7: $96
    ld a, c                                       ; $6bd8: $79
    ld b, l                                       ; $6bd9: $45
    cp d                                          ; $6bda: $ba
    ld a, [$2205]                                 ; $6bdb: $fa $05 $22
    call nc, Call_0a7_682b                        ; $6bde: $d4 $2b $68
    nop                                           ; $6be1: $00
    xor d                                         ; $6be2: $aa
    xor d                                         ; $6be3: $aa
    ld d, l                                       ; $6be4: $55
    or b                                          ; $6be5: $b0
    jr c, jr_0a7_6bee                             ; $6be6: $38 $06

    ld h, d                                       ; $6be8: $62
    ld sp, hl                                     ; $6be9: $f9
    or b                                          ; $6bea: $b0
    ld l, b                                       ; $6beb: $68
    sub h                                         ; $6bec: $94
    add hl, bc                                    ; $6bed: $09

jr_0a7_6bee:
    ld d, a                                       ; $6bee: $57
    rst $38                                       ; $6bef: $ff
    ld h, d                                       ; $6bf0: $62
    or b                                          ; $6bf1: $b0
    ld b, b                                       ; $6bf2: $40
    nop                                           ; $6bf3: $00
    inc bc                                        ; $6bf4: $03
    rst $38                                       ; $6bf5: $ff
    ldh [$c0], a                                  ; $6bf6: $e0 $c0
    cp $f8                                        ; $6bf8: $fe $f8
    cpl                                           ; $6bfa: $2f
    ld c, c                                       ; $6bfb: $49
    dec b                                         ; $6bfc: $05
    or b                                          ; $6bfd: $b0
    ld a, [hl+]                                   ; $6bfe: $2a
    jr nz, jr_0a7_6c01                            ; $6bff: $20 $00

jr_0a7_6c01:
    rst $38                                       ; $6c01: $ff
    and b                                         ; $6c02: $a0
    ld e, b                                       ; $6c03: $58
    ld bc, $82fe                                  ; $6c04: $01 $fe $82
    ld a, a                                       ; $6c07: $7f
    jr z, jr_0a7_6c23                             ; $6c08: $28 $19

    rst $10                                       ; $6c0a: $d7
    db $10                                        ; $6c0b: $10

jr_0a7_6c0c:
    rst $28                                       ; $6c0c: $ef
    and b                                         ; $6c0d: $a0
    add hl, hl                                    ; $6c0e: $29
    or b                                          ; $6c0f: $b0
    rra                                           ; $6c10: $1f
    ld [$b8f7], sp                                ; $6c11: $08 $f7 $b8
    cpl                                           ; $6c14: $2f
    nop                                           ; $6c15: $00
    adc h                                         ; $6c16: $8c
    ld a, a                                       ; $6c17: $7f
    ld a, [$dd1d]                                 ; $6c18: $fa $1d $dd
    ld a, $38                                     ; $6c1b: $3e $38
    rst $38                                       ; $6c1d: $ff
    nop                                           ; $6c1e: $00
    ld [hl], l                                    ; $6c1f: $75
    cp d                                          ; $6c20: $ba
    ld l, b                                       ; $6c21: $68
    rst $38                                       ; $6c22: $ff

jr_0a7_6c23:
    ld a, [$a73f]                                 ; $6c23: $fa $3f $a7
    ld e, a                                       ; $6c26: $5f
    nop                                           ; $6c27: $00
    and e                                         ; $6c28: $a3
    nop                                           ; $6c29: $00
    ld [hl], h                                    ; $6c2a: $74
    add c                                         ; $6c2b: $81

jr_0a7_6c2c:
    ld d, c                                       ; $6c2c: $51
    add d                                         ; $6c2d: $82
    xor d                                         ; $6c2e: $aa
    ld b, c                                       ; $6c2f: $41
    nop                                           ; $6c30: $00
    ld d, l                                       ; $6c31: $55
    xor d                                         ; $6c32: $aa
    jr z, jr_0a7_6c0c                             ; $6c33: $28 $d7

    add c                                         ; $6c35: $81
    rst $38                                       ; $6c36: $ff
    jp z, Jump_000_00ff                           ; $6c37: $ca $ff $00

    inc e                                         ; $6c3a: $1c
    ld a, [c]                                     ; $6c3b: $f2
    xor d                                         ; $6c3c: $aa

Jump_0a7_6c3d:
    ld a, l                                       ; $6c3d: $7d
    dec d                                         ; $6c3e: $15
    cp $aa                                        ; $6c3f: $fe $aa
    ld e, a                                       ; $6c41: $5f
    nop                                           ; $6c42: $00
    dec d                                         ; $6c43: $15
    rst $28                                       ; $6c44: $ef
    ld l, $ff                                     ; $6c45: $2e $ff
    ld e, l                                       ; $6c47: $5d
    ld a, [$f1ee]                                 ; $6c48: $fa $ee $f1
    add h                                         ; $6c4b: $84
    ld [hl], b                                    ; $6c4c: $70
    add hl, hl                                    ; $6c4d: $29
    ld [hl], b                                    ; $6c4e: $70
    adc a                                         ; $6c4f: $8f
    xor d                                         ; $6c50: $aa
    ld d, a                                       ; $6c51: $57
    ld [hl], b                                    ; $6c52: $70
    add hl, bc                                    ; $6c53: $09
    ld a, a                                       ; $6c54: $7f
    rst $38                                       ; $6c55: $ff
    ld bc, $5dbe                                  ; $6c56: $01 $be $5d
    cp l                                          ; $6c59: $bd
    ld e, $1c                                     ; $6c5a: $1e $1c
    rst $38                                       ; $6c5c: $ff
    inc c                                         ; $6c5d: $0c
    push hl                                       ; $6c5e: $e5
    inc b                                         ; $6c5f: $04
    ld [$ff00], sp                                ; $6c60: $08 $00 $ff
    xor d                                         ; $6c63: $aa
    ld d, l                                       ; $6c64: $55
    sub b                                         ; $6c65: $90
    add hl, de                                    ; $6c66: $19
    ld l, d                                       ; $6c67: $6a
    sub l                                         ; $6c68: $95
    dec d                                         ; $6c69: $15
    nop                                           ; $6c6a: $00
    ld [$f70a], a                                 ; $6c6b: $ea $0a $f7
    inc d                                         ; $6c6e: $14
    db $eb                                        ; $6c6f: $eb
    xor [hl]                                      ; $6c70: $ae
    ld d, c                                       ; $6c71: $51
    ei                                            ; $6c72: $fb
    nop                                           ; $6c73: $00
    nop                                           ; $6c74: $00
    db $fd                                        ; $6c75: $fd

jr_0a7_6c76:
    ld [bc], a                                    ; $6c76: $02
    cp a                                          ; $6c77: $bf
    ld b, b                                       ; $6c78: $40
    rst $20                                       ; $6c79: $e7
    jr jr_0a7_6c76                                ; $6c7a: $18 $fa

    nop                                           ; $6c7c: $00
    inc b                                         ; $6c7d: $04
    rst $18                                       ; $6c7e: $df
    jr nz, jr_0a7_6c2c                            ; $6c7f: $20 $ab

    inc b                                         ; $6c81: $04
    rst $38                                       ; $6c82: $ff
    nop                                           ; $6c83: $00
    rst $28                                       ; $6c84: $ef
    add b                                         ; $6c85: $80
    stop                                          ; $6c86: $10 $00
    or a                                          ; $6c88: $b7
    ld c, b                                       ; $6c89: $48
    ei                                            ; $6c8a: $fb
    inc b                                         ; $6c8b: $04
    ld l, $c1                                     ; $6c8c: $2e $c1
    rst $38                                       ; $6c8e: $ff
    nop                                           ; $6c8f: $00
    nop                                           ; $6c90: $00
    ld a, e                                       ; $6c91: $7b
    add h                                         ; $6c92: $84
    or $09                                        ; $6c93: $f6 $09
    ld a, a                                       ; $6c95: $7f
    add b                                         ; $6c96: $80
    db $db                                        ; $6c97: $db
    nop                                           ; $6c98: $00
    inc h                                         ; $6c99: $24
    xor [hl]                                      ; $6c9a: $ae
    ld d, c                                       ; $6c9b: $51
    ld a, a                                       ; $6c9c: $7f
    add b                                         ; $6c9d: $80
    or e                                          ; $6c9e: $b3
    ld c, h                                       ; $6c9f: $4c
    cp $20                                        ; $6ca0: $fe $20
    ld bc, $20bb                                  ; $6ca2: $01 $bb $20
    nop                                           ; $6ca5: $00
    db $eb                                        ; $6ca6: $eb
    db $10                                        ; $6ca7: $10
    cp l                                          ; $6ca8: $bd
    ld b, d                                       ; $6ca9: $42
    ei                                            ; $6caa: $fb
    nop                                           ; $6cab: $00
    nop                                           ; $6cac: $00
    rst $18                                       ; $6cad: $df
    nop                                           ; $6cae: $00
    jp c, Jump_0a7_6524                           ; $6caf: $da $24 $65

    sbc d                                         ; $6cb2: $9a
    cp $00                                        ; $6cb3: $fe $00
    ld bc, $904f                                  ; $6cb5: $01 $4f $90
    xor $11                                       ; $6cb8: $ee $11
    dec [hl]                                      ; $6cba: $35
    jp nz, Jump_000_00ff                          ; $6cbb: $c2 $ff $00

    nop                                           ; $6cbe: $00
    rst $08                                       ; $6cbf: $cf
    jr nc, @-$03                                  ; $6cc0: $30 $fb

    nop                                           ; $6cc2: $00
    halt                                          ; $6cc3: $76
    adc c                                         ; $6cc4: $89
    rst $28                                       ; $6cc5: $ef
    nop                                           ; $6cc6: $00
    db $10                                        ; $6cc7: $10
    ld a, l                                       ; $6cc8: $7d
    ld [bc], a                                    ; $6cc9: $02
    cp e                                          ; $6cca: $bb
    ld b, b                                       ; $6ccb: $40
    and $19                                       ; $6ccc: $e6 $19
    rst $38                                       ; $6cce: $ff
    nop                                           ; $6ccf: $00
    nop                                           ; $6cd0: $00
    sub a                                         ; $6cd1: $97
    ld l, b                                       ; $6cd2: $68
    ld sp, hl                                     ; $6cd3: $f9

jr_0a7_6cd4:
    ld b, $df                                     ; $6cd4: $06 $df
    nop                                           ; $6cd6: $00
    and $00                                       ; $6cd7: $e6 $00
    ld [$817e], sp                                ; $6cd9: $08 $7e $81
    rst $18                                       ; $6cdc: $df
    jr nz, jr_0a7_6cd4                            ; $6cdd: $20 $f5

    ld [bc], a                                    ; $6cdf: $02
    cp $00                                        ; $6ce0: $fe $00
    ld bc, $40bf                                  ; $6ce2: $01 $bf $40
    jp hl                                         ; $6ce5: $e9


    ld d, $fd                                     ; $6ce6: $16 $fd
    nop                                           ; $6ce8: $00
    cp a                                          ; $6ce9: $bf
    nop                                           ; $6cea: $00
    ld b, b                                       ; $6ceb: $40
    rst $30                                       ; $6cec: $f7
    ld [$806f], sp                                ; $6ced: $08 $6f $80
    db $fd                                        ; $6cf0: $fd
    ld [bc], a                                    ; $6cf1: $02
    ld l, a                                       ; $6cf2: $6f
    nop                                           ; $6cf3: $00
    sub b                                         ; $6cf4: $90
    rst $38                                       ; $6cf5: $ff
    nop                                           ; $6cf6: $00
    or h                                          ; $6cf7: $b4
    dec bc                                        ; $6cf8: $0b
    ld a, a                                       ; $6cf9: $7f
    add b                                         ; $6cfa: $80

jr_0a7_6cfb:
    db $eb                                        ; $6cfb: $eb
    nop                                           ; $6cfc: $00
    inc d                                         ; $6cfd: $14
    ld a, [hl]                                    ; $6cfe: $7e
    ld bc, $847b                                  ; $6cff: $01 $7b $84
    cp a                                          ; $6d02: $bf
    ld b, b                                       ; $6d03: $40
    db $fc                                        ; $6d04: $fc
    nop                                           ; $6d05: $00
    inc bc                                        ; $6d06: $03
    ld c, a                                       ; $6d07: $4f
    or b                                          ; $6d08: $b0
    ei                                            ; $6d09: $fb
    inc b                                         ; $6d0a: $04

Call_0a7_6d0b:
    call c, $bf03                                 ; $6d0b: $dc $03 $bf
    ld [$f700], sp                                ; $6d0e: $08 $00 $f7
    ld [$f3df], sp                                ; $6d11: $08 $df $f3
    ld [bc], a                                    ; $6d14: $02
    push af                                       ; $6d15: $f5
    nop                                           ; $6d16: $00
    cp a                                          ; $6d17: $bf
    dec b                                         ; $6d18: $05
    nop                                           ; $6d19: $00
    cp $01                                        ; $6d1a: $fe $01
    rst $18                                       ; $6d1c: $df
    jr nz, @+$09                                  ; $6d1d: $20 $07

    ld a, [de]                                    ; $6d1f: $1a
    push hl                                       ; $6d20: $e5
    cp c                                          ; $6d21: $b9
    ld [$0010], sp                                ; $6d22: $08 $10 $00
    swap h                                        ; $6d25: $cb $34
    db $eb                                        ; $6d27: $eb
    ld [de], a                                    ; $6d28: $12
    nop                                           ; $6d29: $00
    rst $08                                       ; $6d2a: $cf
    nop                                           ; $6d2b: $00
    db $fc                                        ; $6d2c: $fc
    ld b, b                                       ; $6d2d: $40
    inc bc                                        ; $6d2e: $03
    jp $950f                                      ; $6d2f: $c3 $0f $95


    nop                                           ; $6d32: $00
    cp $00                                        ; $6d33: $fe $00
    db $eb                                        ; $6d35: $eb
    inc d                                         ; $6d36: $14
    nop                                           ; $6d37: $00
    ccf                                           ; $6d38: $3f
    nop                                           ; $6d39: $00
    ld sp, hl                                     ; $6d3a: $f9
    ld b, $ff                                     ; $6d3b: $06 $ff
    nop                                           ; $6d3d: $00
    db $dd                                        ; $6d3e: $dd
    ld [bc], a                                    ; $6d3f: $02
    ld c, d                                       ; $6d40: $4a
    cp $d7                                        ; $6d41: $fe $d7
    rlca                                          ; $6d43: $07
    db $db                                        ; $6d44: $db
    inc b                                         ; $6d45: $04
    inc de                                        ; $6d46: $13
    inc bc                                        ; $6d47: $03
    nop                                           ; $6d48: $00
    ret nc                                        ; $6d49: $d0

    ld [$823f], sp                                ; $6d4a: $08 $3f $82
    ld a, b                                       ; $6d4d: $78
    dec b                                         ; $6d4e: $05
    cp $00                                        ; $6d4f: $fe $00
    rst $18                                       ; $6d51: $df
    jr nz, jr_0a7_6cfb                            ; $6d52: $20 $a7

    db $ed                                        ; $6d54: $ed
    rlca                                          ; $6d55: $07
    ld l, a                                       ; $6d56: $6f
    and h                                         ; $6d57: $a4
    jr nc, jr_0a7_6d5a                            ; $6d58: $30 $00

jr_0a7_6d5a:
    rst $30                                       ; $6d5a: $f7
    dec a                                         ; $6d5b: $3d
    inc b                                         ; $6d5c: $04
    adc $01                                       ; $6d5d: $ce $01
    ld d, l                                       ; $6d5f: $55
    ld a, [bc]                                    ; $6d60: $0a
    cp a                                          ; $6d61: $bf
    ld b, b                                       ; $6d62: $40
    add h                                         ; $6d63: $84
    inc b                                         ; $6d64: $04
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    ld c, [hl]                                    ; $6d67: $4e
    or b                                          ; $6d68: $b0
    db $fd                                        ; $6d69: $fd
    ld h, b                                       ; $6d6a: $60
    nop                                           ; $6d6b: $00
    cp a                                          ; $6d6c: $bf
    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    db $d3                                        ; $6d6f: $d3
    inc l                                         ; $6d70: $2c
    ld a, a                                       ; $6d71: $7f
    add b                                         ; $6d72: $80
    db $f4                                        ; $6d73: $f4
    nop                                           ; $6d74: $00
    ei                                            ; $6d75: $fb
    inc b                                         ; $6d76: $04
    ld b, l                                       ; $6d77: $45
    ld e, a                                       ; $6d78: $5f
    ld [hl], $00                                  ; $6d79: $36 $00
    rst $38                                       ; $6d7b: $ff
    nop                                           ; $6d7c: $00
    xor l                                         ; $6d7d: $ad
    ld d, d                                       ; $6d7e: $52
    nop                                           ; $6d7f: $00
    rst $28                                       ; $6d80: $ef
    ld d, a                                       ; $6d81: $57
    ld [bc], a                                    ; $6d82: $02
    db $10                                        ; $6d83: $10
    ei                                            ; $6d84: $fb
    nop                                           ; $6d85: $00
    ld e, a                                       ; $6d86: $5f
    ld e, h                                       ; $6d87: $5c
    nop                                           ; $6d88: $00
    sbc a                                         ; $6d89: $9f
    ld h, b                                       ; $6d8a: $60
    ei                                            ; $6d8b: $fb
    nop                                           ; $6d8c: $00
    ld b, c                                       ; $6d8d: $41
    rla                                           ; $6d8e: $17
    add [hl]                                      ; $6d8f: $86
    nop                                           ; $6d90: $00
    ld h, e                                       ; $6d91: $63
    sbc b                                         ; $6d92: $98
    rst $38                                       ; $6d93: $ff
    nop                                           ; $6d94: $00
    ld sp, hl                                     ; $6d95: $f9
    halt                                          ; $6d96: $76
    nop                                           ; $6d97: $00
    nop                                           ; $6d98: $00
    cp $00                                        ; $6d99: $fe $00
    ld [hl], l                                    ; $6d9b: $75
    adc d                                         ; $6d9c: $8a
    rst $38                                       ; $6d9d: $ff
    nop                                           ; $6d9e: $00
    sbc a                                         ; $6d9f: $9f
    nop                                           ; $6da0: $00
    inc b                                         ; $6da1: $04
    db $ed                                        ; $6da2: $ed
    ld [de], a                                    ; $6da3: $12
    rst $30                                       ; $6da4: $f7
    nop                                           ; $6da5: $00
    ld a, a                                       ; $6da6: $7f
    rst $38                                       ; $6da7: $ff
    rlca                                          ; $6da8: $07
    ld e, e                                       ; $6da9: $5b
    nop                                           ; $6daa: $00
    inc b                                         ; $6dab: $04
    ld a, a                                       ; $6dac: $7f
    add b                                         ; $6dad: $80
    rst $08                                       ; $6dae: $cf
    jr nc, jr_0a7_6e2f                            ; $6daf: $30 $7e

    ld [hl], b                                    ; $6db1: $70
    nop                                           ; $6db2: $00
    db $eb                                        ; $6db3: $eb
    inc d                                         ; $6db4: $14
    pop de                                        ; $6db5: $d1
    ld [hl], $09                                  ; $6db6: $36 $09
    inc e                                         ; $6db8: $1c
    ld [$14e6], sp                                ; $6db9: $08 $e6 $14
    nop                                           ; $6dbc: $00
    rst $38                                       ; $6dbd: $ff
    nop                                           ; $6dbe: $00
    cpl                                           ; $6dbf: $2f
    sbc d                                         ; $6dc0: $9a
    nop                                           ; $6dc1: $00
    ld hl, $1ae5                                  ; $6dc2: $21 $e5 $1a
    inc h                                         ; $6dc5: $24
    ld [$00d3], sp                                ; $6dc6: $08 $d3 $00
    push af                                       ; $6dc9: $f5
    ld a, [bc]                                    ; $6dca: $0a
    adc $08                                       ; $6dcb: $ce $08
    add [hl]                                      ; $6dcd: $86
    ld c, $0f                                     ; $6dce: $0e $0f
    rst $18                                       ; $6dd0: $df
    nop                                           ; $6dd1: $00
    cp c                                          ; $6dd2: $b9
    ld b, [hl]                                    ; $6dd3: $46
    ld e, [hl]                                    ; $6dd4: $5e
    ld bc, $02b7                                  ; $6dd5: $01 $b7 $02
    di                                            ; $6dd8: $f3
    add hl, bc                                    ; $6dd9: $09
    inc c                                         ; $6dda: $0c
    cpl                                           ; $6ddb: $2f
    nop                                           ; $6ddc: $00
    sbc $b4                                       ; $6ddd: $de $b4
    ld b, $af                                     ; $6ddf: $06 $af
    nop                                           ; $6de1: $00
    cp l                                          ; $6de2: $bd
    dec bc                                        ; $6de3: $0b
    ld h, c                                       ; $6de4: $61
    push af                                       ; $6de5: $f5
    inc a                                         ; $6de6: $3c
    ld bc, $0976                                  ; $6de7: $01 $76 $09
    rst $30                                       ; $6dea: $f7
    nop                                           ; $6deb: $00
    ld a, [hl]                                    ; $6dec: $7e
    add b                                         ; $6ded: $80
    db $fd                                        ; $6dee: $fd
    ld a, [bc]                                    ; $6def: $0a
    db $10                                        ; $6df0: $10
    xor c                                         ; $6df1: $a9
    ld d, [hl]                                    ; $6df2: $56
    ld a, a                                       ; $6df3: $7f
    jp c, Jump_0a7_7400                           ; $6df4: $da $00 $74

    adc e                                         ; $6df7: $8b
    rst $18                                       ; $6df8: $df
    jr nz, jr_0a7_6e0b                            ; $6df9: $20 $10

    ccf                                           ; $6dfb: $3f
    ret nz                                        ; $6dfc: $c0

    ei                                            ; $6dfd: $fb
    ld c, b                                       ; $6dfe: $48
    nop                                           ; $6dff: $00
    db $eb                                        ; $6e00: $eb
    inc d                                         ; $6e01: $14
    push af                                       ; $6e02: $f5
    nop                                           ; $6e03: $00
    nop                                           ; $6e04: $00
    cp h                                          ; $6e05: $bc
    ld b, e                                       ; $6e06: $43
    rst $28                                       ; $6e07: $ef
    db $10                                        ; $6e08: $10
    ccf                                           ; $6e09: $3f
    ret nz                                        ; $6e0a: $c0

jr_0a7_6e0b:
    push hl                                       ; $6e0b: $e5
    ld a, [de]                                    ; $6e0c: $1a
    nop                                           ; $6e0d: $00
    cp [hl]                                       ; $6e0e: $be
    ld b, c                                       ; $6e0f: $41
    rst $28                                       ; $6e10: $ef
    db $10                                        ; $6e11: $10
    cp a                                          ; $6e12: $bf
    ld b, b                                       ; $6e13: $40
    push af                                       ; $6e14: $f5
    ld a, [bc]                                    ; $6e15: $0a
    nop                                           ; $6e16: $00
    xor $10                                       ; $6e17: $ee $10
    cp l                                          ; $6e19: $bd

jr_0a7_6e1a:
    ld b, b                                       ; $6e1a: $40
    ld a, [hl]                                    ; $6e1b: $7e
    add c                                         ; $6e1c: $81
    rst $10                                       ; $6e1d: $d7
    jr z, @+$20                                   ; $6e1e: $28 $1e

    ld sp, hl                                     ; $6e20: $f9
    ld b, $3f                                     ; $6e21: $06 $3f
    ld b, b                                       ; $6e23: $40
    dec [hl]                                      ; $6e24: $35
    add sp, $2d                                   ; $6e25: $e8 $2d
    ld [bc], a                                    ; $6e27: $02
    jr z, jr_0a7_6e1a                             ; $6e28: $28 $f0

    dec e                                         ; $6e2a: $1d
    inc bc                                        ; $6e2b: $03
    ld [hl], b                                    ; $6e2c: $70
    inc bc                                        ; $6e2d: $03
    inc l                                         ; $6e2e: $2c

jr_0a7_6e2f:
    ld d, $02                                     ; $6e2f: $16 $02
    jr jr_0a7_6eab                                ; $6e31: $18 $78

    dec d                                         ; $6e33: $15
    ld [bc], a                                    ; $6e34: $02
    inc bc                                        ; $6e35: $03
    rlca                                          ; $6e36: $07
    inc bc                                        ; $6e37: $03
    nop                                           ; $6e38: $00
    ld b, $03                                     ; $6e39: $06 $03
    rlca                                          ; $6e3b: $07
    rlca                                          ; $6e3c: $07
    ld c, $07                                     ; $6e3d: $0e $07
    inc c                                         ; $6e3f: $0c
    rlca                                          ; $6e40: $07
    ld bc, $0f0a                                  ; $6e41: $01 $0a $0f
    inc e                                         ; $6e44: $1c
    rrca                                          ; $6e45: $0f
    ret nz                                        ; $6e46: $c0

    ret nz                                        ; $6e47: $c0

    ldh [rSC], a                                  ; $6e48: $e0 $02
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00
    ld h, b                                       ; $6e4c: $60
    ldh [$30], a                                  ; $6e4d: $e0 $30

jr_0a7_6e4f:
    ldh [$b0], a                                  ; $6e4f: $e0 $b0
    ldh a, [$58]                                  ; $6e51: $f0 $58
    ldh a, [rP1]                                  ; $6e53: $f0 $00
    jr z, jr_0a7_6e4f                             ; $6e55: $28 $f8

    inc e                                         ; $6e57: $1c
    nop                                           ; $6e58: $00
    xor d                                         ; $6e59: $aa
    nop                                           ; $6e5a: $00
    stop                                          ; $6e5b: $10 $00
    ld d, b                                       ; $6e5d: $50
    jr z, jr_0a7_6ec7                             ; $6e5e: $28 $67

    ld b, $20                                     ; $6e60: $06 $20
    ld l, e                                       ; $6e62: $6b
    ld d, $20                                     ; $6e63: $16 $20
    rra                                           ; $6e65: $1f
    db $10                                        ; $6e66: $10
    rrca                                          ; $6e67: $0f
    ld bc, $0708                                  ; $6e68: $01 $08 $07
    inc b                                         ; $6e6b: $04
    inc bc                                        ; $6e6c: $03
    ld [bc], a                                    ; $6e6d: $02
    ld bc, $4902                                  ; $6e6e: $01 $02 $49
    ld b, $e8                                     ; $6e71: $06 $e8
    ld c, a                                       ; $6e73: $4f
    nop                                           ; $6e74: $00
    scf                                           ; $6e75: $37
    ld b, a                                       ; $6e76: $47
    add hl, sp                                    ; $6e77: $39
    rlca                                          ; $6e78: $07
    db $fc                                        ; $6e79: $fc
    db $10                                        ; $6e7a: $10
    ld c, b                                       ; $6e7b: $48
    ret nz                                        ; $6e7c: $c0

    ccf                                           ; $6e7d: $3f
    db $10                                        ; $6e7e: $10
    ld [$010f], sp                                ; $6e7f: $08 $0f $01
    nop                                           ; $6e82: $00
    ld a, [bc]                                    ; $6e83: $0a
    ld [hl], d                                    ; $6e84: $72
    ld b, $0b                                     ; $6e85: $06 $0b
    nop                                           ; $6e87: $00
    rlca                                          ; $6e88: $07
    add b                                         ; $6e89: $80
    inc b                                         ; $6e8a: $04
    db $10                                        ; $6e8b: $10
    ld a, [bc]                                    ; $6e8c: $0a
    nop                                           ; $6e8d: $00
    inc c                                         ; $6e8e: $0c
    ldh a, [$28]                                  ; $6e8f: $f0 $28
    ret nz                                        ; $6e91: $c0

    ld d, b                                       ; $6e92: $50
    nop                                           ; $6e93: $00
    add b                                         ; $6e94: $80
    and b                                         ; $6e95: $a0
    nop                                           ; $6e96: $00
    ret nz                                        ; $6e97: $c0

    nop                                           ; $6e98: $00
    and b                                         ; $6e99: $a0
    nop                                           ; $6e9a: $00
    ld b, b                                       ; $6e9b: $40
    xor h                                         ; $6e9c: $ac
    adc d                                         ; $6e9d: $8a
    nop                                           ; $6e9e: $00
    inc c                                         ; $6e9f: $0c
    ld c, d                                       ; $6ea0: $4a
    nop                                           ; $6ea1: $00
    ld bc, $38b5                                  ; $6ea2: $01 $b5 $38
    ld a, [$0a15]                                 ; $6ea5: $fa $15 $0a
    nop                                           ; $6ea8: $00
    ld d, b                                       ; $6ea9: $50
    inc h                                         ; $6eaa: $24

jr_0a7_6eab:
    rst $10                                       ; $6eab: $d7
    ld b, $08                                     ; $6eac: $06 $08
    swap b                                        ; $6eae: $cb $30
    ldh [$80], a                                  ; $6eb0: $e0 $80
    ld a, h                                       ; $6eb2: $7c
    ldh a, [$60]                                  ; $6eb3: $f0 $60
    cpl                                           ; $6eb5: $2f
    ldh a, [$2c]                                  ; $6eb6: $f0 $2c
    ld e, $26                                     ; $6eb8: $1e $26
    add b                                         ; $6eba: $80
    nop                                           ; $6ebb: $00
    ldh a, [$e0]                                  ; $6ebc: $f0 $e0
    ld e, a                                       ; $6ebe: $5f
    nop                                           ; $6ebf: $00
    db $fc                                        ; $6ec0: $fc
    dec hl                                        ; $6ec1: $2b
    rst $38                                       ; $6ec2: $ff
    jr jr_0a7_6ee4                                ; $6ec3: $18 $1f

    inc [hl]                                      ; $6ec5: $34
    rra                                           ; $6ec6: $1f

jr_0a7_6ec7:
    ld l, b                                       ; $6ec7: $68
    nop                                           ; $6ec8: $00
    ccf                                           ; $6ec9: $3f
    push af                                       ; $6eca: $f5
    rst $38                                       ; $6ecb: $ff
    ei                                            ; $6ecc: $fb
    ld a, a                                       ; $6ecd: $7f
    inc [hl]                                      ; $6ece: $34
    rra                                           ; $6ecf: $1f
    jr c, jr_0a7_6ed2                             ; $6ed0: $38 $00

jr_0a7_6ed2:
    rra                                           ; $6ed2: $1f
    ldh a, [rIE]                                  ; $6ed3: $f0 $ff
    sbc h                                         ; $6ed5: $9c
    ld hl, sp+$0e                                 ; $6ed6: $f8 $0e
    db $fc                                        ; $6ed8: $fc
    or a                                          ; $6ed9: $b7
    nop                                           ; $6eda: $00
    cp $7e                                        ; $6edb: $fe $7e
    db $fc                                        ; $6edd: $fc
    cp h                                          ; $6ede: $bc
    ld hl, sp+$5c                                 ; $6edf: $f8 $5c
    db $fc                                        ; $6ee1: $fc
    ld l, $1c                                     ; $6ee2: $2e $1c

jr_0a7_6ee4:
    db $fc                                        ; $6ee4: $fc
    rla                                           ; $6ee5: $17
    cp $59                                        ; $6ee6: $fe $59
    ld bc, $2440                                  ; $6ee8: $01 $40 $24
    ld l, l                                       ; $6eeb: $6d
    rlca                                          ; $6eec: $07
    cp a                                          ; $6eed: $bf
    rlca                                          ; $6eee: $07
    nop                                           ; $6eef: $00
    rst $38                                       ; $6ef0: $ff
    ld e, c                                       ; $6ef1: $59
    cp $72                                        ; $6ef2: $fe $72
    cp l                                          ; $6ef4: $bd
    add hl, hl                                    ; $6ef5: $29
    cp $53                                        ; $6ef6: $fe $53
    ld [bc], a                                    ; $6ef8: $02
    db $fc                                        ; $6ef9: $fc
    ld [$d5f4], a                                 ; $6efa: $ea $f4 $d5
    ld a, [$a1a8]                                 ; $6efd: $fa $a8 $a1
    rlca                                          ; $6f00: $07
    ld b, e                                       ; $6f01: $43
    nop                                           ; $6f02: $00
    cp a                                          ; $6f03: $bf
    and e                                         ; $6f04: $a3
    ld e, a                                       ; $6f05: $5f
    pop de                                        ; $6f06: $d1
    cpl                                           ; $6f07: $2f
    ld [hl], l                                    ; $6f08: $75
    dec bc                                        ; $6f09: $0b
    xor d                                         ; $6f0a: $aa
    ld [bc], a                                    ; $6f0b: $02
    ld d, a                                       ; $6f0c: $57
    ld d, l                                       ; $6f0d: $55
    xor a                                         ; $6f0e: $af
    adc e                                         ; $6f0f: $8b
    ld a, a                                       ; $6f10: $7f
    scf                                           ; $6f11: $37
    ld c, h                                       ; $6f12: $4c
    inc b                                         ; $6f13: $04
    adc d                                         ; $6f14: $8a
    ld b, b                                       ; $6f15: $40
    ld [hl], l                                    ; $6f16: $75
    db $10                                        ; $6f17: $10
    dec c                                         ; $6f18: $0d
    ld b, c                                       ; $6f19: $41
    cp a                                          ; $6f1a: $bf
    xor d                                         ; $6f1b: $aa
    ld d, a                                       ; $6f1c: $57
    ld d, a                                       ; $6f1d: $57
    xor a                                         ; $6f1e: $af
    ld b, b                                       ; $6f1f: $40
    daa                                           ; $6f20: $27
    add sp, $06                                   ; $6f21: $e8 $06
    push de                                       ; $6f23: $d5
    ld a, [$f4ca]                                 ; $6f24: $fa $ca $f4
    sub e                                         ; $6f27: $93
    add sp, $00                                   ; $6f28: $e8 $00
    ld c, d                                       ; $6f2a: $4a
    db $f4                                        ; $6f2b: $f4
    and c                                         ; $6f2c: $a1
    cp $d8                                        ; $6f2d: $fe $d8
    rst $38                                       ; $6f2f: $ff
    push af                                       ; $6f30: $f5
    rst $38                                       ; $6f31: $ff
    nop                                           ; $6f32: $00
    dec bc                                        ; $6f33: $0b
    rst $38                                       ; $6f34: $ff
    ld l, c                                       ; $6f35: $69
    sub a                                         ; $6f36: $97
    db $f4                                        ; $6f37: $f4
    dec bc                                        ; $6f38: $0b
    ld d, c                                       ; $6f39: $51
    rrca                                          ; $6f3a: $0f
    db $10                                        ; $6f3b: $10
    and l                                         ; $6f3c: $a5
    ld e, a                                       ; $6f3d: $5f
    ld a, [bc]                                    ; $6f3e: $0a
    db $eb                                        ; $6f3f: $eb
    rlca                                          ; $6f40: $07
    adc d                                         ; $6f41: $8a
    rst $38                                       ; $6f42: $ff
    ld c, [hl]                                    ; $6f43: $4e
    or c                                          ; $6f44: $b1
    add b                                         ; $6f45: $80
    ldh [rDIV], a                                 ; $6f46: $e0 $04
    xor c                                         ; $6f48: $a9
    adc c                                         ; $6f49: $89
    ld d, a                                       ; $6f4a: $57
    ld d, d                                       ; $6f4b: $52
    xor a                                         ; $6f4c: $af
    dec h                                         ; $6f4d: $25
    rst $18                                       ; $6f4e: $df
    nop                                           ; $6f4f: $00
    ld a, d                                       ; $6f50: $7a
    adc a                                         ; $6f51: $8f
    ld d, a                                       ; $6f52: $57
    sbc a                                         ; $6f53: $9f
    ld [$c2ff], a                                 ; $6f54: $ea $ff $c2
    db $fd                                        ; $6f57: $fd
    nop                                           ; $6f58: $00
    sub l                                         ; $6f59: $95
    ld [$d12a], a                                 ; $6f5a: $ea $2a $d1
    sub d                                         ; $6f5d: $92
    ldh [$2d], a                                  ; $6f5e: $e0 $2d
    jp nz, Jump_0a7_5602                          ; $6f60: $c2 $02 $56

    xor c                                         ; $6f63: $a9
    ld bc, $10fe                                  ; $6f64: $01 $fe $10
    rst $28                                       ; $6f67: $ef
    ld b, b                                       ; $6f68: $40
    dec b                                         ; $6f69: $05
    and d                                         ; $6f6a: $a2
    nop                                           ; $6f6b: $00
    and d                                         ; $6f6c: $a2
    ld b, c                                       ; $6f6d: $41
    push de                                       ; $6f6e: $d5
    nop                                           ; $6f6f: $00
    ld l, d                                       ; $6f70: $6a
    ld de, $42b5                                  ; $6f71: $11 $b5 $42
    jr jr_0a7_6fd0                                ; $6f74: $18 $5a

jr_0a7_6f76:
    and l                                         ; $6f76: $a5
    add b                                         ; $6f77: $80
    add b                                         ; $6f78: $80
    add hl, de                                    ; $6f79: $19
    ld a, [c]                                     ; $6f7a: $f2
    ld d, $e0                                     ; $6f7b: $16 $e0
    ret nz                                        ; $6f7d: $c0

    ld a, [hl]                                    ; $6f7e: $7e
    ld a, [hl+]                                   ; $6f7f: $2a
    ld hl, sp+$07                                 ; $6f80: $f8 $07
    db $f4                                        ; $6f82: $f4
    rlca                                          ; $6f83: $07

jr_0a7_6f84:
    add b                                         ; $6f84: $80
    inc c                                         ; $6f85: $0c
    rlca                                          ; $6f86: $07
    and b                                         ; $6f87: $a0
    ld l, h                                       ; $6f88: $6c
    rlca                                          ; $6f89: $07
    ld hl, sp+$02                                 ; $6f8a: $f8 $02
    rst $38                                       ; $6f8c: $ff
    ret nz                                        ; $6f8d: $c0

    rst $38                                       ; $6f8e: $ff
    ret nz                                        ; $6f8f: $c0

    nop                                           ; $6f90: $00
    ld hl, sp-$28                                 ; $6f91: $f8 $d8
    nop                                           ; $6f93: $00
    add e                                         ; $6f94: $83
    add $f0                                       ; $6f95: $c6 $f0
    dec a                                         ; $6f97: $3d
    ld [bc], a                                    ; $6f98: $02
    ld hl, $f87f                                  ; $6f99: $21 $7f $f8
    rrca                                          ; $6f9c: $0f
    ld a, [de]                                    ; $6f9d: $1a
    ld d, $e0                                     ; $6f9e: $16 $e0
    add hl, sp                                    ; $6fa0: $39
    db $fc                                        ; $6fa1: $fc
    jr nz, jr_0a7_6f84                            ; $6fa2: $20 $e0

    ld e, a                                       ; $6fa4: $5f
    db $10                                        ; $6fa5: $10
    ld b, $49                                     ; $6fa6: $06 $49
    or $22                                        ; $6fa8: $f6 $22
    db $fd                                        ; $6faa: $fd
    dec h                                         ; $6fab: $25
    nop                                           ; $6fac: $00
    ld a, [$759a]                                 ; $6fad: $fa $9a $75
    ld d, b                                       ; $6fb0: $50
    cp a                                          ; $6fb1: $bf
    adc d                                         ; $6fb2: $8a
    ld a, l                                       ; $6fb3: $7d
    ld b, h                                       ; $6fb4: $44

jr_0a7_6fb5:
    jr nc, jr_0a7_6f76                            ; $6fb5: $30 $bf

    ld e, $d2                                     ; $6fb7: $1e $d2
    ld d, $10                                     ; $6fb9: $16 $10
    dec l                                         ; $6fbb: $2d
    nop                                           ; $6fbc: $00
    rst $38                                       ; $6fbd: $ff
    ld hl, $88de                                  ; $6fbe: $21 $de $88
    ld e, e                                       ; $6fc1: $5b
    ld c, c                                       ; $6fc2: $49
    rst $38                                       ; $6fc3: $ff
    ldh [$9f], a                                  ; $6fc4: $e0 $9f
    ld b, b                                       ; $6fc6: $40
    ld b, b                                       ; $6fc7: $40
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    ld d, b                                       ; $6fca: $50
    jr c, jr_0a7_6fcd                             ; $6fcb: $38 $00

jr_0a7_6fcd:
    rst $38                                       ; $6fcd: $ff
    db $10                                        ; $6fce: $10
    ld d, b                                       ; $6fcf: $50

jr_0a7_6fd0:
    call Call_0a7_5601                            ; $6fd0: $cd $01 $56
    rlca                                          ; $6fd3: $07
    jr nz, jr_0a7_6fb5                            ; $6fd4: $20 $df

    ld bc, $3f81                                  ; $6fd6: $01 $81 $3f
    inc bc                                        ; $6fd9: $03
    ld a, [bc]                                    ; $6fda: $0a
    push af                                       ; $6fdb: $f5
    add b                                         ; $6fdc: $80
    ld a, a                                       ; $6fdd: $7f
    ld [$0aff], sp                                ; $6fde: $08 $ff $0a
    ld [$60e8], sp                                ; $6fe1: $08 $e8 $60
    ld e, a                                       ; $6fe4: $5f
    and $11                                       ; $6fe5: $e6 $11
    ld a, h                                       ; $6fe7: $7c
    rlca                                          ; $6fe8: $07
    ld d, b                                       ; $6fe9: $50
    ld c, b                                       ; $6fea: $48
    rlca                                          ; $6feb: $07
    inc b                                         ; $6fec: $04
    rst $38                                       ; $6fed: $ff
    ld hl, $ff00                                  ; $6fee: $21 $00 $ff
    ld a, a                                       ; $6ff1: $7f
    cp a                                          ; $6ff2: $bf
    sub [hl]                                      ; $6ff3: $96
    ld a, a                                       ; $6ff4: $7f
    ld b, l                                       ; $6ff5: $45
    cp a                                          ; $6ff6: $bf
    cp $00                                        ; $6ff7: $fe $00
    rrca                                          ; $6ff9: $0f
    call c, $9a2f                                 ; $6ffa: $dc $2f $9a
    ld a, a                                       ; $6ffd: $7f
    ld d, h                                       ; $6ffe: $54
    cp a                                          ; $6fff: $bf
    xor e                                         ; $7000: $ab
    nop                                           ; $7001: $00
    ld a, a                                       ; $7002: $7f
    call c, $a3ff                                 ; $7003: $dc $ff $a3
    rst $38                                       ; $7006: $ff
    ld d, l                                       ; $7007: $55
    xor d                                         ; $7008: $aa
    ld a, [hl+]                                   ; $7009: $2a
    nop                                           ; $700a: $00
    pop de                                        ; $700b: $d1
    ld d, c                                       ; $700c: $51
    and b                                         ; $700d: $a0
    xor d                                         ; $700e: $aa
    ld d, h                                       ; $700f: $54
    dec b                                         ; $7010: $05
    ld a, [$8048]                                 ; $7011: $fa $48 $80
    and [hl]                                      ; $7014: $a6
    rlca                                          ; $7015: $07
    ld e, d                                       ; $7016: $5a
    rst $38                                       ; $7017: $ff
    ld d, c                                       ; $7018: $51
    xor a                                         ; $7019: $af
    xor d                                         ; $701a: $aa
    dec d                                         ; $701b: $15
    dec d                                         ; $701c: $15
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    xor d                                         ; $701f: $aa
    ld bc, $025d                                  ; $7020: $01 $5d $02
    add sp, $17                                   ; $7023: $e8 $17
    ld a, a                                       ; $7025: $7f
    nop                                           ; $7026: $00
    rst $38                                       ; $7027: $ff
    cp e                                          ; $7028: $bb
    ld b, a                                       ; $7029: $47
    cp a                                          ; $702a: $bf
    rlca                                          ; $702b: $07
    ld h, a                                       ; $702c: $67
    sbc a                                         ; $702d: $9f
    ld c, [hl]                                    ; $702e: $4e
    nop                                           ; $702f: $00
    cp a                                          ; $7030: $bf
    xor h                                         ; $7031: $ac
    ld e, a                                       ; $7032: $5f
    ld l, d                                       ; $7033: $6a
    sbc a                                         ; $7034: $9f
    or h                                          ; $7035: $b4
    ld e, a                                       ; $7036: $5f
    db $f4                                        ; $7037: $f4
    nop                                           ; $7038: $00
    rst $38                                       ; $7039: $ff
    cp $ff                                        ; $703a: $fe $ff
    xor b                                         ; $703c: $a8
    rst $38                                       ; $703d: $ff
    ld d, c                                       ; $703e: $51
    xor $8a                                       ; $703f: $ee $8a
    ld bc, $16f5                                  ; $7041: $01 $f5 $16
    add sp, -$5b                                  ; $7044: $e8 $a5
    ld d, b                                       ; $7046: $50
    ld c, d                                       ; $7047: $4a
    and b                                         ; $7048: $a0
    cp b                                          ; $7049: $b8
    dec b                                         ; $704a: $05
    nop                                           ; $704b: $00
    rst $18                                       ; $704c: $df
    ld d, a                                       ; $704d: $57
    cp a                                          ; $704e: $bf
    ld hl, $d4df                                  ; $704f: $21 $df $d4
    dec hl                                        ; $7052: $2b
    cp d                                          ; $7053: $ba
    inc b                                         ; $7054: $04
    dec b                                         ; $7055: $05
    dec d                                         ; $7056: $15
    ld [bc], a                                    ; $7057: $02
    xor [hl]                                      ; $7058: $ae
    ld de, $2b00                                  ; $7059: $11 $00 $2b
    sbc $21                                       ; $705c: $de $21
    add b                                         ; $705e: $80
    nop                                           ; $705f: $00
    dec de                                        ; $7060: $1b
    ret c                                         ; $7061: $d8

    ccf                                           ; $7062: $3f
    or h                                          ; $7063: $b4
    ld a, a                                       ; $7064: $7f
    ld l, d                                       ; $7065: $6a
    db $fd                                        ; $7066: $fd
    call nc, $ff02                                ; $7067: $d4 $02 $ff
    ld a, [$cfff]                                 ; $706a: $fa $ff $cf
    ccf                                           ; $706d: $3f
    cp l                                          ; $706e: $bd
    ld [$9903], sp                                ; $706f: $08 $03 $99
    nop                                           ; $7072: $00
    ld h, h                                       ; $7073: $64
    ld [hl], $c9                                  ; $7074: $36 $c9
    ld c, c                                       ; $7076: $49
    or [hl]                                       ; $7077: $b6
    nop                                           ; $7078: $00
    rst $38                                       ; $7079: $ff
    and l                                         ; $707a: $a5
    nop                                           ; $707b: $00
    ld a, [$ffd5]                                 ; $707c: $fa $d5 $ff
    ld l, a                                       ; $707f: $6f
    rst $38                                       ; $7080: $ff
    cp c                                          ; $7081: $b9
    ld a, a                                       ; $7082: $7f
    ld d, h                                       ; $7083: $54
    db $10                                        ; $7084: $10
    adc e                                         ; $7085: $8b
    and d                                         ; $7086: $a2
    dec e                                         ; $7087: $1d
    call z, $140e                                 ; $7088: $cc $0e $14
    rst $28                                       ; $708b: $ef
    ld l, d                                       ; $708c: $6a
    rst $38                                       ; $708d: $ff
    ld b, b                                       ; $708e: $40
    rst $38                                       ; $708f: $ff
    ld e, h                                       ; $7090: $5c
    nop                                           ; $7091: $00
    ld e, [hl]                                    ; $7092: $5e
    and b                                         ; $7093: $a0
    db $fd                                        ; $7094: $fd
    ld [bc], a                                    ; $7095: $02
    ld a, [$0005]                                 ; $7096: $fa $05 $00
    push de                                       ; $7099: $d5
    ld a, [hl+]                                   ; $709a: $2a
    ld [$fd15], a                                 ; $709b: $ea $15 $fd
    ld [bc], a                                    ; $709e: $02
    cp [hl]                                       ; $709f: $be
    ld b, c                                       ; $70a0: $41
    nop                                           ; $70a1: $00
    ei                                            ; $70a2: $fb
    inc b                                         ; $70a3: $04
    db $fd                                        ; $70a4: $fd
    inc bc                                        ; $70a5: $03
    ld d, a                                       ; $70a6: $57
    xor c                                         ; $70a7: $a9
    xor c                                         ; $70a8: $a9
    ld d, a                                       ; $70a9: $57
    add b                                         ; $70aa: $80
    ld d, b                                       ; $70ab: $50
    ld e, $84                                     ; $70ac: $1e $84
    ld a, e                                       ; $70ae: $7b
    ld d, b                                       ; $70af: $50
    xor a                                         ; $70b0: $af
    rst $30                                       ; $70b1: $f7
    cp $d7                                        ; $70b2: $fe $d7
    ld [bc], a                                    ; $70b4: $02
    cp $e7                                        ; $70b5: $fe $e7
    cp $cc                                        ; $70b7: $fe $cc
    rst $38                                       ; $70b9: $ff
    ld a, b                                       ; $70ba: $78
    ld e, d                                       ; $70bb: $5a
    rla                                           ; $70bc: $17
    ld bc, $fe00                                  ; $70bd: $01 $00 $fe
    or l                                          ; $70c0: $b5
    ld a, [$f77a]                                 ; $70c1: $fa $7a $f7
    inc [hl]                                      ; $70c4: $34
    ei                                            ; $70c5: $fb
    sbc d                                         ; $70c6: $9a
    nop                                           ; $70c7: $00
    ld a, l                                       ; $70c8: $7d
    dec hl                                        ; $70c9: $2b
    db $fc                                        ; $70ca: $fc
    sub l                                         ; $70cb: $95
    ld a, [hl]                                    ; $70cc: $7e
    ld a, [bc]                                    ; $70cd: $0a
    rst $38                                       ; $70ce: $ff
    or l                                          ; $70cf: $b5
    ld b, b                                       ; $70d0: $40
    ld a, a                                       ; $70d1: $7f
    db $10                                        ; $70d2: $10
    ld h, a                                       ; $70d3: $67
    sub l                                         ; $70d4: $95
    ld e, a                                       ; $70d5: $5f
    rst $38                                       ; $70d6: $ff
    cp a                                          ; $70d7: $bf
    rst $38                                       ; $70d8: $ff
    db $fd                                        ; $70d9: $fd
    nop                                           ; $70da: $00
    cp $5c                                        ; $70db: $fe $5c
    rst $38                                       ; $70dd: $ff
    inc l                                         ; $70de: $2c
    rst $38                                       ; $70df: $ff
    ld d, $ff                                     ; $70e0: $16 $ff
    ld c, $01                                     ; $70e2: $0e $01
    rst $38                                       ; $70e4: $ff
    ld b, a                                       ; $70e5: $47
    cp a                                          ; $70e6: $bf
    push de                                       ; $70e7: $d5
    xor d                                         ; $70e8: $aa
    ld [$f0f5], a                                 ; $70e9: $ea $f5 $f0
    ld a, $03                                     ; $70ec: $3e $03
    ld l, d                                       ; $70ee: $6a
    sub l                                         ; $70ef: $95
    ld b, h                                       ; $70f0: $44
    cp e                                          ; $70f1: $bb
    ld [hl+], a                                   ; $70f2: $22
    rst $10                                       ; $70f3: $d7
    db $10                                        ; $70f4: $10
    rlca                                          ; $70f5: $07
    inc e                                         ; $70f6: $1c
    ld b, $01                                     ; $70f7: $06 $01
    ld [hl+], a                                   ; $70f9: $22
    db $dd                                        ; $70fa: $dd
    ld b, l                                       ; $70fb: $45
    cp d                                          ; $70fc: $ba
    jr z, jr_0a7_7156                             ; $70fd: $28 $57

    sub e                                         ; $70ff: $93
    ld e, $01                                     ; $7100: $1e $01
    nop                                           ; $7102: $00
    ld [hl+], a                                   ; $7103: $22
    rst $18                                       ; $7104: $df
    add hl, bc                                    ; $7105: $09
    rst $38                                       ; $7106: $ff
    ld d, [hl]                                    ; $7107: $56
    rst $38                                       ; $7108: $ff
    cp e                                          ; $7109: $bb
    rst $38                                       ; $710a: $ff
    nop                                           ; $710b: $00
    call nc, Call_0a7_7efb                        ; $710c: $d4 $fb $7e
    pop af                                        ; $710f: $f1
    or l                                          ; $7110: $b5
    jp z, $e5da                                   ; $7111: $ca $da $e5

    nop                                           ; $7114: $00
    db $ed                                        ; $7115: $ed
    ld a, [c]                                     ; $7116: $f2
    halt                                          ; $7117: $76
    ld sp, hl                                     ; $7118: $f9
    push hl                                       ; $7119: $e5
    ld a, [$d7ea]                                 ; $711a: $fa $ea $d7
    call nz, Call_000_0ef0                        ; $711d: $c4 $f0 $0e
    ld h, b                                       ; $7120: $60
    ld h, $55                                     ; $7121: $26 $55
    ld b, l                                       ; $7123: $45
    cp d                                          ; $7124: $ba
    db $ec                                        ; $7125: $ec
    ld c, $05                                     ; $7126: $0e $05
    ld a, [$609c]                                 ; $7128: $fa $9c $60
    ld e, [hl]                                    ; $712b: $5e
    ld a, [hl+]                                   ; $712c: $2a
    push de                                       ; $712d: $d5
    ldh a, [$5e]                                  ; $712e: $f0 $5e
    or d                                          ; $7130: $b2
    dec c                                         ; $7131: $0d
    ret nc                                        ; $7132: $d0

    ld e, h                                       ; $7133: $5c
    and b                                         ; $7134: $a0
    ld e, a                                       ; $7135: $5f
    ld hl, $2ad5                                  ; $7136: $21 $d5 $2a
    ld d, b                                       ; $7139: $50
    ld c, l                                       ; $713a: $4d
    dec hl                                        ; $713b: $2b
    call nc, $a25d                                ; $713c: $d4 $5d $a2
    or [hl]                                       ; $713f: $b6
    inc c                                         ; $7140: $0c
    add b                                         ; $7141: $80
    ld d, b                                       ; $7142: $50
    dec l                                         ; $7143: $2d
    db $eb                                        ; $7144: $eb
    inc d                                         ; $7145: $14
    rst $30                                       ; $7146: $f7
    ld [$00af], sp                                ; $7147: $08 $af $00
    ld e, l                                       ; $714a: $5d
    nop                                           ; $714b: $00
    add d                                         ; $714c: $82
    rst $28                                       ; $714d: $ef
    db $10                                        ; $714e: $10
    db $fc                                        ; $714f: $fc
    inc bc                                        ; $7150: $03
    ld l, a                                       ; $7151: $6f
    sub b                                         ; $7152: $90
    cp a                                          ; $7153: $bf
    ld b, $40                                     ; $7154: $06 $40

jr_0a7_7156:
    db $fd                                        ; $7156: $fd
    ld [bc], a                                    ; $7157: $02
    sub a                                         ; $7158: $97
    ld l, b                                       ; $7159: $68
    ld [hl], $0c                                  ; $715a: $36 $0c
    ld d, b                                       ; $715c: $50
    dec a                                         ; $715d: $3d
    sbc c                                         ; $715e: $99
    nop                                           ; $715f: $00
    ld h, [hl]                                    ; $7160: $66
    rst $38                                       ; $7161: $ff
    nop                                           ; $7162: $00
    jp nc, $ef2d                                  ; $7163: $d2 $2d $ef

    db $10                                        ; $7166: $10
    ld a, c                                       ; $7167: $79
    ld b, b                                       ; $7168: $40
    add [hl]                                      ; $7169: $86
    sub b                                         ; $716a: $90
    inc c                                         ; $716b: $0c
    rla                                           ; $716c: $17
    add sp, -$58                                  ; $716d: $e8 $a8
    ld e, a                                       ; $716f: $5f
    ld b, l                                       ; $7170: $45
    cp d                                          ; $7171: $ba
    inc b                                         ; $7172: $04
    xor l                                         ; $7173: $ad
    ld d, b                                       ; $7174: $50
    ld d, h                                       ; $7175: $54
    xor e                                         ; $7176: $ab
    add d                                         ; $7177: $82
    call nc, Call_000_2a07                        ; $7178: $d4 $07 $2a
    push de                                       ; $717b: $d5
    rrca                                          ; $717c: $0f
    ld d, h                                       ; $717d: $54
    xor d                                         ; $717e: $aa
    and d                                         ; $717f: $a2
    ld e, l                                       ; $7180: $5d
    call nc, Call_000_0c0f                        ; $7181: $d4 $0f $0c
    rrca                                          ; $7184: $0f
    ld hl, sp+$07                                 ; $7185: $f8 $07
    ld d, h                                       ; $7187: $54
    rlca                                          ; $7188: $07
    inc h                                         ; $7189: $24
    sub d                                         ; $718a: $92
    ld a, l                                       ; $718b: $7d
    jr jr_0a7_719d                                ; $718c: $18 $0f

    ld d, h                                       ; $718e: $54
    xor e                                         ; $718f: $ab

jr_0a7_7190:
    nop                                           ; $7190: $00
    rra                                           ; $7191: $1f
    ld h, h                                       ; $7192: $64
    nop                                           ; $7193: $00
    ld e, c                                       ; $7194: $59
    inc b                                         ; $7195: $04
    ld bc, $00d8                                  ; $7196: $01 $d8 $00
    inc bc                                        ; $7199: $03
    nop                                           ; $719a: $00
    inc b                                         ; $719b: $04
    nop                                           ; $719c: $00

jr_0a7_719d:
    add hl, bc                                    ; $719d: $09
    add hl, bc                                    ; $719e: $09
    inc bc                                        ; $719f: $03
    nop                                           ; $71a0: $00
    rst $08                                       ; $71a1: $cf
    ld [bc], a                                    ; $71a2: $02
    ld [$000e], sp                                ; $71a3: $08 $0e $00
    nop                                           ; $71a6: $00
    nop                                           ; $71a7: $00
    dec bc                                        ; $71a8: $0b
    jr jr_0a7_71bf                                ; $71a9: $18 $14

    nop                                           ; $71ab: $00
    ld hl, $1008                                  ; $71ac: $21 $08 $10
    ld d, b                                       ; $71af: $50
    ccf                                           ; $71b0: $3f
    add hl, bc                                    ; $71b1: $09
    add hl, bc                                    ; $71b2: $09
    jr nz, jr_0a7_71fd                            ; $71b3: $20 $48

    ld [hl+], a                                   ; $71b5: $22
    ld [$203e], sp                                ; $71b6: $08 $3e $20
    ccf                                           ; $71b9: $3f
    ld [$2005], sp                                ; $71ba: $08 $05 $20
    ld e, l                                       ; $71bd: $5d
    ld d, b                                       ; $71be: $50

jr_0a7_71bf:
    rst $38                                       ; $71bf: $ff
    rlca                                          ; $71c0: $07
    jr z, @+$06                                   ; $71c1: $28 $04

    jr nc, @+$66                                  ; $71c3: $30 $64

    ld [$4804], sp                                ; $71c5: $08 $04 $48
    and b                                         ; $71c8: $a0
    ld [$3850], sp                                ; $71c9: $08 $50 $38
    ld c, d                                       ; $71cc: $4a
    jr nz, @+$05                                  ; $71cd: $20 $03

    ld d, b                                       ; $71cf: $50
    rst $38                                       ; $71d0: $ff
    jr nz, jr_0a7_723b                            ; $71d1: $20 $68

    ld l, h                                       ; $71d3: $6c
    db $10                                        ; $71d4: $10
    and h                                         ; $71d5: $a4
    ld [$00a8], sp                                ; $71d6: $08 $a8 $00
    ld h, e                                       ; $71d9: $63
    jr jr_0a7_7190                                ; $71da: $18 $b4

    ld [$2804], sp                                ; $71dc: $08 $04 $28
    ld e, l                                       ; $71df: $5d
    ld d, b                                       ; $71e0: $50
    rst $38                                       ; $71e1: $ff
    add hl, hl                                    ; $71e2: $29
    ld [$6081], sp                                ; $71e3: $08 $81 $60
    ld e, [hl]                                    ; $71e6: $5e
    ld l, b                                       ; $71e7: $68
    di                                            ; $71e8: $f3
    ld [$4804], sp                                ; $71e9: $08 $04 $48
    ld bc, $8e68                                  ; $71ec: $01 $68 $8e
    ld d, b                                       ; $71ef: $50
    db $10                                        ; $71f0: $10
    ld h, b                                       ; $71f1: $60
    rst $38                                       ; $71f2: $ff
    dec hl                                        ; $71f3: $2b
    add hl, de                                    ; $71f4: $19
    nop                                           ; $71f5: $00
    add hl, hl                                    ; $71f6: $29
    ret z                                         ; $71f7: $c8

    jr @+$72                                      ; $71f8: $18 $70

    ld c, c                                       ; $71fa: $49
    ld [hl], $28                                  ; $71fb: $36 $28

jr_0a7_71fd:
    add [hl]                                      ; $71fd: $86
    ld [$1004], sp                                ; $71fe: $08 $04 $10
    ld l, [hl]                                    ; $7201: $6e
    add hl, bc                                    ; $7202: $09
    rst $38                                       ; $7203: $ff
    add h                                         ; $7204: $84
    sub c                                         ; $7205: $91
    sub c                                         ; $7206: $91
    ld b, c                                       ; $7207: $41
    sub d                                         ; $7208: $92
    ld c, b                                       ; $7209: $48
    cpl                                           ; $720a: $2f
    ld de, $1998                                  ; $720b: $11 $98 $19
    jr c, jr_0a7_7251                             ; $720e: $38 $41

    sbc b                                         ; $7210: $98
    add hl, bc                                    ; $7211: $09
    inc b                                         ; $7212: $04
    jr nc, @+$01                                  ; $7213: $30 $ff

    pop hl                                        ; $7215: $e1
    ld [$4804], sp                                ; $7216: $08 $04 $48
    ld h, e                                       ; $7219: $63
    add hl, bc                                    ; $721a: $09
    inc b                                         ; $721b: $04
    ld c, b                                       ; $721c: $48
    cp d                                          ; $721d: $ba
    add hl, sp                                    ; $721e: $39
    add sp, $28                                   ; $721f: $e8 $28
    ld b, h                                       ; $7221: $44
    ld e, c                                       ; $7222: $59
    ld c, h                                       ; $7223: $4c
    ld c, b                                       ; $7224: $48
    rst $38                                       ; $7225: $ff
    ld e, e                                       ; $7226: $5b
    ld hl, $18ac                                  ; $7227: $21 $ac $18
    ld h, h                                       ; $722a: $64
    add hl, de                                    ; $722b: $19
    ret nc                                        ; $722c: $d0

    ld sp, $113c                                  ; $722d: $31 $3c $11

jr_0a7_7230:
    ld h, b                                       ; $7230: $60
    add hl, bc                                    ; $7231: $09
    inc a                                         ; $7232: $3c
    ld b, d                                       ; $7233: $42
    dec hl                                        ; $7234: $2b
    ld a, [bc]                                    ; $7235: $0a
    rst $38                                       ; $7236: $ff
    ld a, $29                                     ; $7237: $3e $29
    dec d                                         ; $7239: $15
    ld b, d                                       ; $723a: $42

jr_0a7_723b:
    db $e4                                        ; $723b: $e4
    ld l, c                                       ; $723c: $69
    xor h                                         ; $723d: $ac
    ld hl, $3070                                  ; $723e: $21 $70 $30
    db $10                                        ; $7241: $10
    ld c, d                                       ; $7242: $4a
    ret c                                         ; $7243: $d8

    ld e, b                                       ; $7244: $58
    ld b, b                                       ; $7245: $40
    ld b, d                                       ; $7246: $42
    rst $38                                       ; $7247: $ff

jr_0a7_7248:
    ld [hl], h                                    ; $7248: $74
    ld c, d                                       ; $7249: $4a
    ld [hl+], a                                   ; $724a: $22
    ld a, d                                       ; $724b: $7a
    jr nz, @+$42                                  ; $724c: $20 $40

    dec d                                         ; $724e: $15
    add hl, hl                                    ; $724f: $29
    ret nz                                        ; $7250: $c0

jr_0a7_7251:
    ld a, [hl+]                                   ; $7251: $2a
    ld e, l                                       ; $7252: $5d
    ld c, b                                       ; $7253: $48
    and a                                         ; $7254: $a7
    jr nz, jr_0a7_7248                            ; $7255: $20 $f1

    ld d, d                                       ; $7257: $52

jr_0a7_7258:
    ret nz                                        ; $7258: $c0

    call nz, Call_000_1e58                        ; $7259: $c4 $58 $1e
    ld h, b                                       ; $725c: $60
    inc b                                         ; $725d: $04
    inc b                                         ; $725e: $04
    rra                                           ; $725f: $1f
    nop                                           ; $7260: $00
    ld e, h                                       ; $7261: $5c
    inc b                                         ; $7262: $04
    ld bc, $00c0                                  ; $7263: $01 $c0 $00
    ld bc, $0800                                  ; $7266: $01 $00 $08
    jr jr_0a7_7277                                ; $7269: $18 $0c

    jr jr_0a7_726d                                ; $726b: $18 $00

jr_0a7_726d:
    add hl, bc                                    ; $726d: $09
    ccf                                           ; $726e: $3f
    add hl, bc                                    ; $726f: $09
    add hl, bc                                    ; $7270: $09
    inc e                                         ; $7271: $1c
    ld c, b                                       ; $7272: $48
    rrca                                          ; $7273: $0f
    nop                                           ; $7274: $00
    jr nz, jr_0a7_7287                            ; $7275: $20 $10

jr_0a7_7277:
    inc h                                         ; $7277: $24
    jr c, jr_0a7_72ae                             ; $7278: $38 $34

    nop                                           ; $727a: $00
    dec d                                         ; $727b: $15
    ld [$04ff], sp                                ; $727c: $08 $ff $04
    ld b, b                                       ; $727f: $40
    inc bc                                        ; $7280: $03
    add b                                         ; $7281: $80
    inc hl                                        ; $7282: $23
    ld d, b                                       ; $7283: $50
    ld a, $60                                     ; $7284: $3e $60
    ld d, l                                       ; $7286: $55

jr_0a7_7287:
    jr jr_0a7_72f2                                ; $7287: $18 $69

    nop                                           ; $7289: $00
    inc b                                         ; $728a: $04
    jr z, jr_0a7_730b                             ; $728b: $28 $7e

jr_0a7_728d:
    jr jr_0a7_728d                                ; $728d: $18 $fe

    sub h                                         ; $728f: $94
    ld c, b                                       ; $7290: $48
    ld h, b                                       ; $7291: $60
    jr nz, jr_0a7_7230                            ; $7292: $20 $9c

    jr nz, jr_0a7_72eb                            ; $7294: $20 $55

    jr nc, jr_0a7_72a8                            ; $7296: $30 $10

    jr c, jr_0a7_72b9                             ; $7298: $38 $1f

    jr z, jr_0a7_7258                             ; $729a: $28 $bc

    db $10                                        ; $729c: $10
    ld d, a                                       ; $729d: $57
    nop                                           ; $729e: $00
    ld e, d                                       ; $729f: $5a
    inc b                                         ; $72a0: $04
    ld bc, $00b0                                  ; $72a1: $01 $b0 $00
    inc b                                         ; $72a4: $04
    jr nz, jr_0a7_72b8                            ; $72a5: $20 $11

    sbc b                                         ; $72a7: $98

jr_0a7_72a8:
    nop                                           ; $72a8: $00
    ld bc, $0900                                  ; $72a9: $01 $00 $09
    ld hl, sp+$01                                 ; $72ac: $f8 $01

jr_0a7_72ae:
    nop                                           ; $72ae: $00
    dec c                                         ; $72af: $0d
    jr nc, @+$10                                  ; $72b0: $30 $0e

    db $10                                        ; $72b2: $10
    db $10                                        ; $72b3: $10
    jr jr_0a7_72d2                                ; $72b4: $18 $1c

    nop                                           ; $72b6: $00
    inc b                                         ; $72b7: $04

jr_0a7_72b8:
    add hl, bc                                    ; $72b8: $09

jr_0a7_72b9:
    add hl, bc                                    ; $72b9: $09
    db $fd                                        ; $72ba: $fd
    dec b                                         ; $72bb: $05
    nop                                           ; $72bc: $00
    ld b, $00                                     ; $72bd: $06 $00
    jr nc, jr_0a7_72f9                            ; $72bf: $30 $38

    ld c, $00                                     ; $72c1: $0e $00
    ld c, a                                       ; $72c3: $4f
    db $10                                        ; $72c4: $10
    jr @+$0a                                      ; $72c5: $18 $08

    nop                                           ; $72c7: $00
    jr c, jr_0a7_72ca                             ; $72c8: $38 $00

jr_0a7_72ca:
    rst $38                                       ; $72ca: $ff
    inc b                                         ; $72cb: $04
    jr jr_0a7_7308                                ; $72cc: $18 $3a

    jr c, jr_0a7_72d6                             ; $72ce: $38 $06

    jr nc, jr_0a7_730e                            ; $72d0: $30 $3c

jr_0a7_72d2:
    nop                                           ; $72d2: $00
    inc b                                         ; $72d3: $04
    nop                                           ; $72d4: $00
    sbc c                                         ; $72d5: $99

jr_0a7_72d6:
    nop                                           ; $72d6: $00
    ld e, l                                       ; $72d7: $5d
    jr jr_0a7_733e                                ; $72d8: $18 $64

    ld [$04ff], sp                                ; $72da: $08 $ff $04
    jr c, jr_0a7_72e1                             ; $72dd: $38 $02

    ld [hl], b                                    ; $72df: $70
    ld e, b                                       ; $72e0: $58

jr_0a7_72e1:
    jr nz, jr_0a7_72eb                            ; $72e1: $20 $08

    jr z, jr_0a7_7341                             ; $72e3: $28 $5c

    ld c, b                                       ; $72e5: $48
    ld l, b                                       ; $72e6: $68
    ld [$30a4], sp                                ; $72e7: $08 $a4 $30
    jp hl                                         ; $72ea: $e9


jr_0a7_72eb:
    jr nz, @+$01                                  ; $72eb: $20 $ff

    or e                                          ; $72ed: $b3
    jr jr_0a7_7344                                ; $72ee: $18 $54

    ld c, b                                       ; $72f0: $48
    ld d, [hl]                                    ; $72f1: $56

jr_0a7_72f2:
    ld e, b                                       ; $72f2: $58
    ld h, h                                       ; $72f3: $64
    sub b                                         ; $72f4: $90
    ld l, $50                                     ; $72f5: $2e $50
    ld c, h                                       ; $72f7: $4c
    ld b, b                                       ; $72f8: $40

jr_0a7_72f9:
    and b                                         ; $72f9: $a0
    ld l, b                                       ; $72fa: $68
    inc l                                         ; $72fb: $2c
    ld h, b                                       ; $72fc: $60
    rst $38                                       ; $72fd: $ff
    ld a, e                                       ; $72fe: $7b
    ld h, b                                       ; $72ff: $60
    call $dc28                                    ; $7300: $cd $28 $dc
    jr nc, jr_0a7_7322                            ; $7303: $30 $1d

    ld hl, $5013                                  ; $7305: $21 $13 $50

jr_0a7_7308:
    add hl, bc                                    ; $7308: $09
    ld c, b                                       ; $7309: $48
    ld h, b                                       ; $730a: $60

jr_0a7_730b:
    ld hl, $210b                                  ; $730b: $21 $0b $21

jr_0a7_730e:
    rst $38                                       ; $730e: $ff
    ld h, b                                       ; $730f: $60
    add hl, hl                                    ; $7310: $29
    ld e, b                                       ; $7311: $58
    add hl, bc                                    ; $7312: $09
    and [hl]                                      ; $7313: $a6
    ld b, c                                       ; $7314: $41
    ld l, l                                       ; $7315: $6d
    add hl, bc                                    ; $7316: $09
    or [hl]                                       ; $7317: $b6
    ld c, c                                       ; $7318: $49
    inc de                                        ; $7319: $13
    add hl, bc                                    ; $731a: $09
    inc b                                         ; $731b: $04
    ld b, b                                       ; $731c: $40
    rrca                                          ; $731d: $0f
    ld h, b                                       ; $731e: $60
    rst $38                                       ; $731f: $ff
    ld l, $60                                     ; $7320: $2e $60

jr_0a7_7322:
    ld c, d                                       ; $7322: $4a
    ld e, b                                       ; $7323: $58
    sbc b                                         ; $7324: $98
    ld hl, $11db                                  ; $7325: $21 $db $11
    sub l                                         ; $7328: $95
    add hl, hl                                    ; $7329: $29
    sbc l                                         ; $732a: $9d
    ld e, c                                       ; $732b: $59
    db $f4                                        ; $732c: $f4
    ld de, $31b0                                  ; $732d: $11 $b0 $31
    rst $38                                       ; $7330: $ff
    ld [bc], a                                    ; $7331: $02
    ld a, [bc]                                    ; $7332: $0a
    ld h, $2a                                     ; $7333: $26 $2a
    db $10                                        ; $7335: $10
    ld [hl-], a                                   ; $7336: $32
    scf                                           ; $7337: $37
    ld [hl+], a                                   ; $7338: $22
    ldh a, [rSTAT]                                ; $7339: $f0 $41
    or h                                          ; $733b: $b4
    ld d, b                                       ; $733c: $50
    ld b, [hl]                                    ; $733d: $46

jr_0a7_733e:
    jr jr_0a7_7350                                ; $733e: $18 $10

    ld c, b                                       ; $7340: $48

jr_0a7_7341:
    cp $3d                                        ; $7341: $fe $3d
    ld [de], a                                    ; $7343: $12

jr_0a7_7344:
    ld [hl-], a                                   ; $7344: $32
    jr nz, jr_0a7_739f                            ; $7345: $20 $58

    ld a, [bc]                                    ; $7347: $0a
    ld [de], a                                    ; $7348: $12

jr_0a7_7349:
    jr c, jr_0a7_7349                             ; $7349: $38 $fe

    ld de, $301a                                  ; $734b: $11 $1a $30
    xor d                                         ; $734e: $aa
    ld a, [de]                                    ; $734f: $1a

jr_0a7_7350:
    ld a, [hl]                                    ; $7350: $7e
    nop                                           ; $7351: $00
    ld c, a                                       ; $7352: $4f
    inc b                                         ; $7353: $04
    ld bc, $00d0                                  ; $7354: $01 $d0 $00
    nop                                           ; $7357: $00
    add hl, bc                                    ; $7358: $09
    jr z, jr_0a7_7368                             ; $7359: $28 $0d

    db $10                                        ; $735b: $10
    ld [bc], a                                    ; $735c: $02
    nop                                           ; $735d: $00
    ld d, $18                                     ; $735e: $16 $18
    rrca                                          ; $7360: $0f
    nop                                           ; $7361: $00
    inc b                                         ; $7362: $04
    add hl, bc                                    ; $7363: $09
    add hl, bc                                    ; $7364: $09
    inc b                                         ; $7365: $04
    jr jr_0a7_7388                                ; $7366: $18 $20

jr_0a7_7368:
    ld c, b                                       ; $7368: $48
    jr z, @+$22                                   ; $7369: $28 $20

jr_0a7_736b:
    add hl, hl                                    ; $736b: $29
    db $10                                        ; $736c: $10
    ld a, e                                       ; $736d: $7b
    add hl, bc                                    ; $736e: $09
    ld bc, $4620                                  ; $736f: $01 $20 $46
    jr z, jr_0a7_739f                             ; $7372: $28 $2b

    ld [$182f], sp                                ; $7374: $08 $2f $18
    nop                                           ; $7377: $00
    inc d                                         ; $7378: $14
    nop                                           ; $7379: $00
    inc b                                         ; $737a: $04
    jr c, @+$01                                   ; $737b: $38 $ff

    ld bc, $5c78                                  ; $737d: $01 $78 $5c
    db $10                                        ; $7380: $10
    ld b, b                                       ; $7381: $40
    ld c, b                                       ; $7382: $48
    ld a, b                                       ; $7383: $78
    db $10                                        ; $7384: $10
    inc h                                         ; $7385: $24
    ld h, b                                       ; $7386: $60
    ld h, b                                       ; $7387: $60

jr_0a7_7388:
    nop                                           ; $7388: $00
    add h                                         ; $7389: $84
    jr z, jr_0a7_73ba                             ; $738a: $28 $2e

    ld [$a8ff], sp                                ; $738c: $08 $ff $a8
    db $10                                        ; $738f: $10
    xor h                                         ; $7390: $ac
    db $10                                        ; $7391: $10
    ld b, [hl]                                    ; $7392: $46
    jr nc, @+$06                                  ; $7393: $30 $04

    jr nz, jr_0a7_73b4                            ; $7395: $20 $1d

    ld [$583a], sp                                ; $7397: $08 $3a $58
    sbc h                                         ; $739a: $9c

jr_0a7_739b:
    db $10                                        ; $739b: $10
    inc b                                         ; $739c: $04
    jr nc, @-$1f                                  ; $739d: $30 $df

jr_0a7_739f:
    db $e4                                        ; $739f: $e4
    jr c, @-$12                                   ; $73a0: $38 $ec

    ld [$4c00], sp                                ; $73a2: $08 $00 $4c
    jr z, jr_0a7_736b                             ; $73a5: $28 $c4

    jr jr_0a7_739b                                ; $73a7: $18 $f2

    db $10                                        ; $73a9: $10
    db $10                                        ; $73aa: $10
    jr c, jr_0a7_73c0                             ; $73ab: $38 $13

    jr z, @+$01                                   ; $73ad: $28 $ff

    db $10                                        ; $73af: $10
    ld sp, $10c1                                  ; $73b0: $31 $c1 $10
    inc c                                         ; $73b3: $0c

jr_0a7_73b4:
    add hl, sp                                    ; $73b4: $39
    inc d                                         ; $73b5: $14
    add hl, bc                                    ; $73b6: $09
    ld e, l                                       ; $73b7: $5d
    ld b, b                                       ; $73b8: $40

jr_0a7_73b9:
    and l                                         ; $73b9: $a5

jr_0a7_73ba:
    db $10                                        ; $73ba: $10
    ld a, b                                       ; $73bb: $78
    ld c, b                                       ; $73bc: $48
    and b                                         ; $73bd: $a0
    jr nz, @+$01                                  ; $73be: $20 $ff

jr_0a7_73c0:
    sbc e                                         ; $73c0: $9b
    db $10                                        ; $73c1: $10
    jr nz, @+$12                                  ; $73c2: $20 $10

    ld l, a                                       ; $73c4: $6f
    nop                                           ; $73c5: $00
    jr jr_0a7_73f1                                ; $73c6: $18 $29

    ld [$1440], sp                                ; $73c8: $08 $40 $14
    ld [$3804], sp                                ; $73cb: $08 $04 $38
    ld h, b                                       ; $73ce: $60
    jr c, @+$01                                   ; $73cf: $38 $ff

    ld d, h                                       ; $73d1: $54
    ld de, $399a                                  ; $73d2: $11 $9a $39
    ld h, h                                       ; $73d5: $64
    add hl, de                                    ; $73d6: $19
    ld l, b                                       ; $73d7: $68
    jr z, jr_0a7_7446                             ; $73d8: $28 $6c

    jr nz, jr_0a7_741a                            ; $73da: $20 $3e

    ld l, b                                       ; $73dc: $68
    pop de                                        ; $73dd: $d1
    db $10                                        ; $73de: $10
    db $fd                                        ; $73df: $fd

jr_0a7_73e0:
    ld d, b                                       ; $73e0: $50
    rst $38                                       ; $73e1: $ff
    sbc e                                         ; $73e2: $9b
    add hl, sp                                    ; $73e3: $39
    pop de                                        ; $73e4: $d1
    jr nz, jr_0a7_73e0                            ; $73e5: $20 $f9

    jr jr_0a7_73b9                                ; $73e7: $18 $d0

jr_0a7_73e9:
    ld b, b                                       ; $73e9: $40
    call nc, $5c50                                ; $73ea: $d4 $50 $5c
    ld c, c                                       ; $73ed: $49
    ret nz                                        ; $73ee: $c0

    jr z, jr_0a7_7465                             ; $73ef: $28 $74

jr_0a7_73f1:
    ld c, b                                       ; $73f1: $48
    rst $38                                       ; $73f2: $ff
    ld l, $5a                                     ; $73f3: $2e $5a
    jr nc, jr_0a7_73f9                            ; $73f5: $30 $02

    cp [hl]                                       ; $73f7: $be
    ld b, b                                       ; $73f8: $40

jr_0a7_73f9:
    ldh [rNR10], a                                ; $73f9: $e0 $10
    sub h                                         ; $73fb: $94
    add hl, bc                                    ; $73fc: $09
    inc b                                         ; $73fd: $04
    jr nc, jr_0a7_73c0                            ; $73fe: $30 $c0

Jump_0a7_7400:
    jr c, @-$52                                   ; $7400: $38 $ac

    add hl, hl                                    ; $7402: $29
    rst $38                                       ; $7403: $ff
    inc a                                         ; $7404: $3c
    ld c, d                                       ; $7405: $4a
    cp b                                          ; $7406: $b8
    ld b, c                                       ; $7407: $41
    call nc, $9448                                ; $7408: $d4 $48 $94
    ld sp, $5080                                  ; $740b: $31 $80 $50
    ldh [$28], a                                  ; $740e: $e0 $28
    ld a, [c]                                     ; $7410: $f2
    ld sp, $2a18                                  ; $7411: $31 $18 $2a
    rst $38                                       ; $7414: $ff
    db $eb                                        ; $7415: $eb
    ld b, b                                       ; $7416: $40
    db $10                                        ; $7417: $10
    ld c, d                                       ; $7418: $4a
    sub e                                         ; $7419: $93

jr_0a7_741a:
    ld [bc], a                                    ; $741a: $02
    ld [hl], b                                    ; $741b: $70
    ld a, [de]                                    ; $741c: $1a
    ld h, b                                       ; $741d: $60
    ld c, d                                       ; $741e: $4a
    db $ec                                        ; $741f: $ec
    ld b, c                                       ; $7420: $41
    ld de, $4c31                                  ; $7421: $11 $31 $4c
    add hl, sp                                    ; $7424: $39
    rst $30                                       ; $7425: $f7
    jr nz, jr_0a7_7442                            ; $7426: $20 $1a

    db $fc                                        ; $7428: $fc
    jr c, jr_0a7_73e9                             ; $7429: $38 $be

    ld a, [de]                                    ; $742b: $1a
    nop                                           ; $742c: $00
    ld d, c                                       ; $742d: $51
    add hl, bc                                    ; $742e: $09
    db $ec                                        ; $742f: $ec
    ld d, b                                       ; $7430: $50
    ld de, $6d8b                                  ; $7431: $11 $8b $6d
    ld c, d                                       ; $7434: $4a
    rst $38                                       ; $7435: $ff
    sbc e                                         ; $7436: $9b
    ld d, d                                       ; $7437: $52
    inc bc                                        ; $7438: $03
    ld a, [de]                                    ; $7439: $1a
    ld l, d                                       ; $743a: $6a
    ld c, e                                       ; $743b: $4b
    ld e, [hl]                                    ; $743c: $5e
    inc hl                                        ; $743d: $23
    jr nz, jr_0a7_746b                            ; $743e: $20 $2b

    sbc h                                         ; $7440: $9c
    ld [hl], b                                    ; $7441: $70

jr_0a7_7442:
    ld a, h                                       ; $7442: $7c
    inc hl                                        ; $7443: $23
    ld d, b                                       ; $7444: $50
    ld h, d                                       ; $7445: $62

jr_0a7_7446:
    db $fc                                        ; $7446: $fc
    jr nz, jr_0a7_74a9                            ; $7447: $20 $60

    ld [hl], b                                    ; $7449: $70
    ld [hl], d                                    ; $744a: $72
    ld l, e                                       ; $744b: $6b
    ld [hl+], a                                   ; $744c: $22
    cp h                                          ; $744d: $bc
    inc sp                                        ; $744e: $33
    sub $43                                       ; $744f: $d6 $43
    db $fd                                        ; $7451: $fd
    inc bc                                        ; $7452: $03
    ld l, $00                                     ; $7453: $2e $00
    ld d, c                                       ; $7455: $51
    inc b                                         ; $7456: $04

jr_0a7_7457:
    ld bc, $0080                                  ; $7457: $01 $80 $00
    ld bc, $0908                                  ; $745a: $01 $08 $09
    add hl, bc                                    ; $745d: $09
    add hl, bc                                    ; $745e: $09
    inc b                                         ; $745f: $04
    ld [$10f8], sp                                ; $7460: $08 $f8 $10
    jr z, @+$11                                   ; $7463: $28 $0f

jr_0a7_7465:
    nop                                           ; $7465: $00
    inc c                                         ; $7466: $0c
    db $10                                        ; $7467: $10
    db $10                                        ; $7468: $10
    ld c, b                                       ; $7469: $48
    inc d                                         ; $746a: $14

jr_0a7_746b:
    jr z, jr_0a7_746d                             ; $746b: $28 $00

jr_0a7_746d:
    nop                                           ; $746d: $00
    inc b                                         ; $746e: $04
    ccf                                           ; $746f: $3f
    inc b                                         ; $7470: $04
    add hl, bc                                    ; $7471: $09
    inc b                                         ; $7472: $04
    jr nz, jr_0a7_74ad                            ; $7473: $20 $38

    jr z, jr_0a7_74b7                             ; $7475: $28 $40

    ld c, b                                       ; $7477: $48
    ld h, h                                       ; $7478: $64
    jr z, jr_0a7_74af                             ; $7479: $28 $34

    jr z, @+$57                                   ; $747b: $28 $55

    nop                                           ; $747d: $00
    rst $38                                       ; $747e: $ff
    inc b                                         ; $747f: $04
    jr jr_0a7_7484                                ; $7480: $18 $02

    adc b                                         ; $7482: $88
    ld a, e                                       ; $7483: $7b

jr_0a7_7484:
    ld [$4850], sp                                ; $7484: $08 $50 $48
    ld e, h                                       ; $7487: $5c
    nop                                           ; $7488: $00
    sbc [hl]                                      ; $7489: $9e
    ld l, b                                       ; $748a: $68
    inc b                                         ; $748b: $04
    ld c, b                                       ; $748c: $48
    ld [bc], a                                    ; $748d: $02
    jr @+$01                                      ; $748e: $18 $ff

    scf                                           ; $7490: $37
    ld [$103b], sp                                ; $7491: $08 $3b $10
    sbc c                                         ; $7494: $99
    jr c, jr_0a7_7457                             ; $7495: $38 $c0

    jr nz, jr_0a7_74f1                            ; $7497: $20 $58

    ld [hl], b                                    ; $7499: $70
    ld h, a                                       ; $749a: $67
    ld b, b                                       ; $749b: $40
    ld [$7b08], a                                 ; $749c: $ea $08 $7b
    ld h, b                                       ; $749f: $60
    db $fc                                        ; $74a0: $fc
    ld a, h                                       ; $74a1: $7c
    nop                                           ; $74a2: $00
    add b                                         ; $74a3: $80
    jr c, @+$6c                                   ; $74a4: $38 $6a

    db $10                                        ; $74a6: $10
    ld e, e                                       ; $74a7: $5b
    ld b, b                                       ; $74a8: $40

jr_0a7_74a9:
    add b                                         ; $74a9: $80
    ld e, b                                       ; $74aa: $58
    ld a, [hl-]                                   ; $74ab: $3a
    add hl, de                                    ; $74ac: $19

jr_0a7_74ad:
    dec e                                         ; $74ad: $1d
    nop                                           ; $74ae: $00

jr_0a7_74af:
    ld d, [hl]                                    ; $74af: $56
    inc b                                         ; $74b0: $04
    ld bc, $0080                                  ; $74b1: $01 $80 $00
    ld bc, $0918                                  ; $74b4: $01 $18 $09

jr_0a7_74b7:
    inc b                                         ; $74b7: $04
    ld [$2810], sp                                ; $74b8: $08 $10 $28
    add hl, bc                                    ; $74bb: $09
    rst $30                                       ; $74bc: $f7
    ld bc, $2020                                  ; $74bd: $01 $20 $20
    ld b, b                                       ; $74c0: $40
    rlca                                          ; $74c1: $07
    jr z, jr_0a7_74e8                             ; $74c2: $28 $24

    ld [$4800], sp                                ; $74c4: $08 $00 $48
    jr z, jr_0a7_74f1                             ; $74c7: $28 $28

    jr z, jr_0a7_74fc                             ; $74c9: $28 $31

    ld [$047f], sp                                ; $74cb: $08 $7f $04
    ld [hl], $30                                  ; $74ce: $36 $30
    ld [$6bb0], sp                                ; $74d0: $08 $b0 $6b
    jr nz, @+$43                                  ; $74d3: $20 $41

    ld b, b                                       ; $74d5: $40
    dec [hl]                                      ; $74d6: $35
    nop                                           ; $74d7: $00
    ld d, b                                       ; $74d8: $50
    sub b                                         ; $74d9: $90
    ld h, $10                                     ; $74da: $26 $10
    sbc b                                         ; $74dc: $98
    ld h, b                                       ; $74dd: $60
    ld [$0400], sp                                ; $74de: $08 $00 $04
    inc bc                                        ; $74e1: $03
    nop                                           ; $74e2: $00
    ld [hl], c                                    ; $74e3: $71
    jr nc, jr_0a7_751d                            ; $74e4: $30 $37

    nop                                           ; $74e6: $00
    ld d, c                                       ; $74e7: $51

jr_0a7_74e8:
    inc b                                         ; $74e8: $04
    ld bc, $0080                                  ; $74e9: $01 $80 $00
    ld bc, $0908                                  ; $74ec: $01 $08 $09
    add hl, bc                                    ; $74ef: $09
    add hl, bc                                    ; $74f0: $09

jr_0a7_74f1:
    inc b                                         ; $74f1: $04
    ld [$10ff], sp                                ; $74f2: $08 $ff $10
    jr z, jr_0a7_7506                             ; $74f5: $28 $0f

    nop                                           ; $74f7: $00
    inc bc                                        ; $74f8: $03
    db $10                                        ; $74f9: $10
    db $10                                        ; $74fa: $10
    ld b, b                                       ; $74fb: $40

jr_0a7_74fc:
    inc hl                                        ; $74fc: $23
    db $10                                        ; $74fd: $10
    jr nc, jr_0a7_7530                            ; $74fe: $30 $30

    dec b                                         ; $7500: $05
    jr z, jr_0a7_751c                             ; $7501: $28 $19

    jr z, @+$01                                   ; $7503: $28 $ff

Call_0a7_7505:
    ld b, b                                       ; $7505: $40

jr_0a7_7506:
    jr nz, jr_0a7_750b                            ; $7506: $20 $03

    add b                                         ; $7508: $80
    inc hl                                        ; $7509: $23
    ld d, b                                       ; $750a: $50

jr_0a7_750b:
    ld bc, $7e68                                  ; $750b: $01 $68 $7e
    ld [$0082], sp                                ; $750e: $08 $82 $00
    ld a, b                                       ; $7511: $78
    nop                                           ; $7512: $00
    inc b                                         ; $7513: $04
    ld [$8bff], sp                                ; $7514: $08 $ff $8b
    jr nc, @+$3f                                  ; $7517: $30 $3d

    ld d, b                                       ; $7519: $50
    ld d, b                                       ; $751a: $50
    add b                                         ; $751b: $80

jr_0a7_751c:
    ld e, l                                       ; $751c: $5d

jr_0a7_751d:
    ld d, b                                       ; $751d: $50
    pop bc                                        ; $751e: $c1
    nop                                           ; $751f: $00
    inc a                                         ; $7520: $3c
    db $10                                        ; $7521: $10
    call c, $3c08                                 ; $7522: $dc $08 $3c
    ldh a, [rIE]                                  ; $7525: $f0 $ff
    ld [hl], l                                    ; $7527: $75

jr_0a7_7528:
    jr @+$2f                                      ; $7528: $18 $2d

    jr jr_0a7_7528                                ; $752a: $18 $fc

    jr nz, @+$0e                                  ; $752c: $20 $0c

    ld e, c                                       ; $752e: $59
    inc b                                         ; $752f: $04

Jump_0a7_7530:
jr_0a7_7530:
    add hl, bc                                    ; $7530: $09
    sub b                                         ; $7531: $90

jr_0a7_7532:
    jr z, jr_0a7_753b                             ; $7532: $28 $07

    ld sp, $4100                                  ; $7534: $31 $00 $41
    rst $38                                       ; $7537: $ff
    inc e                                         ; $7538: $1c
    jr c, @-$46                                   ; $7539: $38 $b8

jr_0a7_753b:
    ld [$2080], sp                                ; $753b: $08 $80 $20
    ld b, h                                       ; $753e: $44
    jr nc, jr_0a7_7532                            ; $753f: $30 $f1

    db $10                                        ; $7541: $10
    db $10                                        ; $7542: $10
    sbc b                                         ; $7543: $98
    ld [hl], a                                    ; $7544: $77
    db $10                                        ; $7545: $10
    ld [de], a                                    ; $7546: $12
    add hl, de                                    ; $7547: $19
    cp $84                                        ; $7548: $fe $84
    jr c, jr_0a7_757b                             ; $754a: $38 $2f

    ld h, b                                       ; $754c: $60
    ld [hl], d                                    ; $754d: $72
    db $10                                        ; $754e: $10
    dec l                                         ; $754f: $2d
    ld c, c                                       ; $7550: $49
    inc a                                         ; $7551: $3c
    ld l, c                                       ; $7552: $69
    jr nc, jr_0a7_7576                            ; $7553: $30 $21

    ld [$4530], sp                                ; $7555: $08 $30 $45
    nop                                           ; $7558: $00
    ld b, a                                       ; $7559: $47
    inc b                                         ; $755a: $04
    ld bc, $0068                                  ; $755b: $01 $68 $00
    nop                                           ; $755e: $00
    nop                                           ; $755f: $00
    inc b                                         ; $7560: $04
    ld c, b                                       ; $7561: $48
    rrca                                          ; $7562: $0f
    ld h, b                                       ; $7563: $60
    jr nz, jr_0a7_7566                            ; $7564: $20 $00

jr_0a7_7566:
    ld hl, $0909                                  ; $7566: $21 $09 $09
    inc b                                         ; $7569: $04
    ld c, b                                       ; $756a: $48
    add hl, bc                                    ; $756b: $09
    add hl, bc                                    ; $756c: $09
    nop                                           ; $756d: $00
    inc b                                         ; $756e: $04
    inc b                                         ; $756f: $04
    add b                                         ; $7570: $80
    rst $38                                       ; $7571: $ff
    ld a, [de]                                    ; $7572: $1a
    db $10                                        ; $7573: $10
    ld e, $08                                     ; $7574: $1e $08

jr_0a7_7576:
    ld d, e                                       ; $7576: $53
    jr nz, jr_0a7_7589                            ; $7577: $20 $10

    ld l, b                                       ; $7579: $68
    inc [hl]                                      ; $757a: $34

jr_0a7_757b:
    jr nc, @+$52                                  ; $757b: $30 $50

    ld e, b                                       ; $757d: $58
    jr c, jr_0a7_75b8                             ; $757e: $38 $38

    ld e, d                                       ; $7580: $5a
    db $10                                        ; $7581: $10
    rst $38                                       ; $7582: $ff
    db $10                                        ; $7583: $10
    ld h, b                                       ; $7584: $60
    ld d, b                                       ; $7585: $50
    jr nz, @-$79                                  ; $7586: $20 $85

    nop                                           ; $7588: $00

jr_0a7_7589:
    inc b                                         ; $7589: $04
    ld d, b                                       ; $758a: $50
    cp e                                          ; $758b: $bb
    ld c, b                                       ; $758c: $48
    inc e                                         ; $758d: $1c
    ld d, b                                       ; $758e: $50
    cp a                                          ; $758f: $bf
    db $10                                        ; $7590: $10
    and d                                         ; $7591: $a2
    ld [$04ff], sp                                ; $7592: $08 $ff $04
    ld b, b                                       ; $7595: $40
    ret nz                                        ; $7596: $c0

    db $10                                        ; $7597: $10
    push hl                                       ; $7598: $e5
    nop                                           ; $7599: $00
    ld hl, sp+$28                                 ; $759a: $f8 $28
    ld l, b                                       ; $759c: $68
    jr z, @+$12                                   ; $759d: $28 $10

    ld c, b                                       ; $759f: $48
    sub $10                                       ; $75a0: $d6 $10
    inc l                                         ; $75a2: $2c
    jr nz, @+$01                                  ; $75a3: $20 $ff

    call z, $9448                                 ; $75a5: $cc $48 $94
    adc b                                         ; $75a8: $88
    ld h, e                                       ; $75a9: $63
    ld e, b                                       ; $75aa: $58
    inc c                                         ; $75ab: $0c
    add hl, bc                                    ; $75ac: $09
    jp nz, Jump_000_2058                          ; $75ad: $c2 $58 $20

    ld sp, $093b                                  ; $75b0: $31 $3b $09

jr_0a7_75b3:
    cp d                                          ; $75b3: $ba
    db $10                                        ; $75b4: $10
    rst $38                                       ; $75b5: $ff
    ld b, b                                       ; $75b6: $40
    add hl, de                                    ; $75b7: $19

jr_0a7_75b8:
    sub b                                         ; $75b8: $90
    jr nc, @-$3d                                  ; $75b9: $30 $c1

    ld l, b                                       ; $75bb: $68
    or b                                          ; $75bc: $b0
    ld b, b                                       ; $75bd: $40
    ld b, $21                                     ; $75be: $06 $21
    ld b, b                                       ; $75c0: $40
    jr nc, jr_0a7_75c7                            ; $75c1: $30 $04

    db $10                                        ; $75c3: $10
    rra                                           ; $75c4: $1f
    ld b, c                                       ; $75c5: $41
    rst $38                                       ; $75c6: $ff

jr_0a7_75c7:
    ld a, h                                       ; $75c7: $7c
    add hl, bc                                    ; $75c8: $09
    dec b                                         ; $75c9: $05
    ld [hl], c                                    ; $75ca: $71
    ld sp, hl                                     ; $75cb: $f9
    jr nc, jr_0a7_75d4                            ; $75cc: $30 $06

    sbc b                                         ; $75ce: $98
    db $fc                                        ; $75cf: $fc
    ld c, b                                       ; $75d0: $48
    inc [hl]                                      ; $75d1: $34
    ld b, c                                       ; $75d2: $41
    rst $38                                       ; $75d3: $ff

jr_0a7_75d4:
    ld b, c                                       ; $75d4: $41
    jr nz, @+$13                                  ; $75d5: $20 $11

    ld hl, sp+$68                                 ; $75d7: $f8 $68
    ld sp, $11cc                                  ; $75d9: $31 $cc $11
    rst $30                                       ; $75dc: $f7
    add hl, bc                                    ; $75dd: $09
    ld a, c                                       ; $75de: $79
    add c                                         ; $75df: $81
    adc c                                         ; $75e0: $89
    add hl, bc                                    ; $75e1: $09
    ld c, c                                       ; $75e2: $49
    nop                                           ; $75e3: $00
    ld d, c                                       ; $75e4: $51
    inc b                                         ; $75e5: $04
    ld bc, $0080                                  ; $75e6: $01 $80 $00
    ld bc, $0908                                  ; $75e9: $01 $08 $09
    add hl, bc                                    ; $75ec: $09
    add hl, bc                                    ; $75ed: $09
    inc b                                         ; $75ee: $04
    ld [$10fb], sp                                ; $75ef: $08 $fb $10
    jr z, @+$11                                   ; $75f2: $28 $0f

    jr nz, @+$0b                                  ; $75f4: $20 $09

    jr c, @+$22                                   ; $75f6: $38 $20

    jr nz, jr_0a7_7609                            ; $75f8: $20 $0f

    ld h, b                                       ; $75fa: $60
    nop                                           ; $75fb: $00
    ccf                                           ; $75fc: $3f
    ld [$4804], sp                                ; $75fd: $08 $04 $48
    rst $38                                       ; $7600: $ff
    ld c, e                                       ; $7601: $4b
    jr nz, jr_0a7_7607                            ; $7602: $20 $03

    jr nc, jr_0a7_7613                            ; $7604: $30 $0d

    ld d, b                                       ; $7606: $50

jr_0a7_7607:
    inc de                                        ; $7607: $13
    add b                                         ; $7608: $80

jr_0a7_7609:
    ld b, c                                       ; $7609: $41
    ld l, b                                       ; $760a: $68
    cpl                                           ; $760b: $2f
    ld a, b                                       ; $760c: $78
    ld c, d                                       ; $760d: $4a
    jr nc, jr_0a7_75b3                            ; $760e: $30 $a3

    nop                                           ; $7610: $00
    ld a, a                                       ; $7611: $7f
    nop                                           ; $7612: $00

jr_0a7_7613:
    jr nz, jr_0a7_7645                            ; $7613: $20 $30

    or h                                          ; $7615: $b4
    ld [$08cc], sp                                ; $7616: $08 $cc $08
    db $10                                        ; $7619: $10
    ld b, b                                       ; $761a: $40
    cp h                                          ; $761b: $bc
    nop                                           ; $761c: $00
    sub e                                         ; $761d: $93
    jr @+$06                                      ; $761e: $18 $04

    ld c, b                                       ; $7620: $48
    rst $38                                       ; $7621: $ff
    inc d                                         ; $7622: $14
    ld [$4804], sp                                ; $7623: $08 $04 $48

jr_0a7_7626:
    jr nz, jr_0a7_7658                            ; $7626: $20 $30

Call_0a7_7628:
    cp d                                          ; $7628: $ba
    nop                                           ; $7629: $00
    ld [hl], b                                    ; $762a: $70
    jr nc, @+$01                                  ; $762b: $30 $ff

    ld [$00ca], sp                                ; $762d: $08 $ca $00
    inc b                                         ; $7630: $04
    db $10                                        ; $7631: $10
    rst $38                                       ; $7632: $ff
    ld e, h                                       ; $7633: $5c
    ld b, b                                       ; $7634: $40
    ld h, b                                       ; $7635: $60
    jr nz, jr_0a7_7647                            ; $7636: $20 $0f

    ld c, b                                       ; $7638: $48

jr_0a7_7639:
    inc h                                         ; $7639: $24
    jr jr_0a7_7640                                ; $763a: $18 $04

    ld b, b                                       ; $763c: $40
    ld c, b                                       ; $763d: $48
    ld l, c                                       ; $763e: $69
    inc c                                         ; $763f: $0c

jr_0a7_7640:
    ld l, c                                       ; $7640: $69
    ld h, h                                       ; $7641: $64
    ld l, c                                       ; $7642: $69
    rst $38                                       ; $7643: $ff
    ld [hl], h                                    ; $7644: $74

jr_0a7_7645:
    ld c, c                                       ; $7645: $49
    ld c, a                                       ; $7646: $4f

jr_0a7_7647:
    add hl, bc                                    ; $7647: $09
    and b                                         ; $7648: $a0
    jr z, jr_0a7_7682                             ; $7649: $28 $37

    add hl, hl                                    ; $764b: $29
    adc h                                         ; $764c: $8c
    ld de, $4805                                  ; $764d: $11 $05 $48
    sub h                                         ; $7650: $94
    add hl, bc                                    ; $7651: $09
    sbc l                                         ; $7652: $9d
    ld bc, $c8ff                                  ; $7653: $01 $ff $c8

jr_0a7_7656:
    jr jr_0a7_7639                                ; $7656: $18 $e1

jr_0a7_7658:
    db $10                                        ; $7658: $10
    ld [de], a                                    ; $7659: $12
    ld b, c                                       ; $765a: $41
    ld l, h                                       ; $765b: $6c
    ld h, c                                       ; $765c: $61
    rst $00                                       ; $765d: $c7
    ld [$2041], sp                                ; $765e: $08 $41 $20
    ret nz                                        ; $7661: $c0

    ld b, b                                       ; $7662: $40

jr_0a7_7663:
    inc l                                         ; $7663: $2c
    add hl, hl                                    ; $7664: $29
    rst $38                                       ; $7665: $ff
    xor h                                         ; $7666: $ac

jr_0a7_7667:
    ld c, c                                       ; $7667: $49
    ret nc                                        ; $7668: $d0

    jr c, jr_0a7_7663                             ; $7669: $38 $f8

    add hl, hl                                    ; $766b: $29
    ld h, h                                       ; $766c: $64
    jr nz, jr_0a7_7626                            ; $766d: $20 $b7

    add hl, sp                                    ; $766f: $39
    inc h                                         ; $7670: $24
    add hl, sp                                    ; $7671: $39
    db $e4                                        ; $7672: $e4
    add b                                         ; $7673: $80
    ld a, $52                                     ; $7674: $3e $52
    add b                                         ; $7676: $80
    inc b                                         ; $7677: $04
    ld c, b                                       ; $7678: $48
    ld a, $00                                     ; $7679: $3e $00
    ld b, [hl]                                    ; $767b: $46
    inc b                                         ; $767c: $04
    ld bc, $0068                                  ; $767d: $01 $68 $00
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00

jr_0a7_7682:
    inc b                                         ; $7682: $04
    ld c, b                                       ; $7683: $48
    inc bc                                        ; $7684: $03
    ld l, b                                       ; $7685: $68
    inc b                                         ; $7686: $04
    ld e, $00                                     ; $7687: $1e $00
    add hl, bc                                    ; $7689: $09
    add hl, bc                                    ; $768a: $09
    inc b                                         ; $768b: $04
    ld c, b                                       ; $768c: $48
    ld [bc], a                                    ; $768d: $02
    nop                                           ; $768e: $00
    ld b, $08                                     ; $768f: $06 $08
    inc b                                         ; $7691: $04
    xor b                                         ; $7692: $a8
    add hl, bc                                    ; $7693: $09
    rst $38                                       ; $7694: $ff
    ld e, e                                       ; $7695: $5b
    ld d, b                                       ; $7696: $50
    ld l, l                                       ; $7697: $6d
    nop                                           ; $7698: $00
    ld [hl-], a                                   ; $7699: $32
    db $10                                        ; $769a: $10
    dec b                                         ; $769b: $05
    ld b, b                                       ; $769c: $40
    inc d                                         ; $769d: $14
    ld [$7004], sp                                ; $769e: $08 $04 $70
    add h                                         ; $76a1: $84
    nop                                           ; $76a2: $00
    jr z, jr_0a7_76cd                             ; $76a3: $28 $28

    rst $38                                       ; $76a5: $ff
    sub e                                         ; $76a6: $93
    jr nz, @+$12                                  ; $76a7: $20 $10

    ld [hl], b                                    ; $76a9: $70
    sbc e                                         ; $76aa: $9b
    jr z, jr_0a7_76f9                             ; $76ab: $28 $4c

    ld d, b                                       ; $76ad: $50
    and b                                         ; $76ae: $a0
    jr z, jr_0a7_7656                             ; $76af: $28 $a5

    nop                                           ; $76b1: $00
    inc b                                         ; $76b2: $04
    jr @-$5c                                      ; $76b3: $18 $a2

    jr nz, @+$01                                  ; $76b5: $20 $ff

    ld l, h                                       ; $76b7: $6c
    jr z, jr_0a7_7667                             ; $76b8: $28 $ad

    adc b                                         ; $76ba: $88
    add b                                         ; $76bb: $80
    ld b, b                                       ; $76bc: $40
    adc l                                         ; $76bd: $8d
    jr jr_0a7_7700                                ; $76be: $18 $40

    ld c, b                                       ; $76c0: $48
    db $ed                                        ; $76c1: $ed
    nop                                           ; $76c2: $00
    or l                                          ; $76c3: $b5
    nop                                           ; $76c4: $00
    inc b                                         ; $76c5: $04
    ld c, b                                       ; $76c6: $48
    rst $38                                       ; $76c7: $ff
    inc e                                         ; $76c8: $1c
    ld c, b                                       ; $76c9: $48
    jr nz, jr_0a7_7704                            ; $76ca: $20 $38

    adc b                                         ; $76cc: $88

jr_0a7_76cd:
    ld e, b                                       ; $76cd: $58
    sub c                                         ; $76ce: $91
    ld c, b                                       ; $76cf: $48
    adc h                                         ; $76d0: $8c
    db $10                                        ; $76d1: $10
    jr nc, jr_0a7_772d                            ; $76d2: $30 $59

    xor h                                         ; $76d4: $ac

jr_0a7_76d5:
    jr nc, @+$12                                  ; $76d5: $30 $10

    ld c, c                                       ; $76d7: $49
    rst $38                                       ; $76d8: $ff
    rrca                                          ; $76d9: $0f
    jr nz, jr_0a7_7748                            ; $76da: $20 $6c

    jr nc, @+$6d                                  ; $76dc: $30 $6b

    db $10                                        ; $76de: $10
    sub h                                         ; $76df: $94
    ld d, c                                       ; $76e0: $51
    ld a, b                                       ; $76e1: $78

jr_0a7_76e2:
    add hl, sp                                    ; $76e2: $39
    ld l, [hl]                                    ; $76e3: $6e
    add b                                         ; $76e4: $80
    add h                                         ; $76e5: $84
    ld hl, $01bb                                  ; $76e6: $21 $bb $01

jr_0a7_76e9:
    db $fc                                        ; $76e9: $fc
    pop de                                        ; $76ea: $d1
    ld [hl], c                                    ; $76eb: $71
    ld c, e                                       ; $76ec: $4b
    ld e, b                                       ; $76ed: $58
    ld l, h                                       ; $76ee: $6c
    ld c, b                                       ; $76ef: $48
    db $10                                        ; $76f0: $10
    jr jr_0a7_76e2                                ; $76f1: $18 $ef

    add hl, bc                                    ; $76f3: $09
    ld b, $3a                                     ; $76f4: $06 $3a
    ld [hl], c                                    ; $76f6: $71
    nop                                           ; $76f7: $00
    ld c, [hl]                                    ; $76f8: $4e

jr_0a7_76f9:
    inc b                                         ; $76f9: $04
    ld bc, $0070                                  ; $76fa: $01 $70 $00
    nop                                           ; $76fd: $00
    inc b                                         ; $76fe: $04
    ld c, b                                       ; $76ff: $48

jr_0a7_7700:
    ld [bc], a                                    ; $7700: $02
    ld l, b                                       ; $7701: $68
    jr nz, jr_0a7_7704                            ; $7702: $20 $00

jr_0a7_7704:
    add hl, bc                                    ; $7704: $09
    rst $38                                       ; $7705: $ff
    inc b                                         ; $7706: $04
    ld c, b                                       ; $7707: $48
    ld bc, $0500                                  ; $7708: $01 $00 $05
    ld [$3004], sp                                ; $770b: $08 $04 $30
    ld b, b                                       ; $770e: $40
    jr nz, jr_0a7_7735                            ; $770f: $20 $24

    jr nc, jr_0a7_7761                            ; $7711: $30 $4e

    ld [$0816], sp                                ; $7713: $08 $16 $08
    rst $38                                       ; $7716: $ff
    inc b                                         ; $7717: $04
    db $10                                        ; $7718: $10
    rra                                           ; $7719: $1f
    ld [$3066], sp                                ; $771a: $08 $66 $30
    ld d, b                                       ; $771d: $50
    jr z, @+$12                                   ; $771e: $28 $10

    jr c, @+$4f                                   ; $7720: $38 $4d

    ld [$3838], sp                                ; $7722: $08 $38 $38
    ld e, h                                       ; $7725: $5c
    db $10                                        ; $7726: $10
    rst $38                                       ; $7727: $ff
    ld d, e                                       ; $7728: $53
    db $10                                        ; $7729: $10
    inc b                                         ; $772a: $04
    jr nz, jr_0a7_779a                            ; $772b: $20 $6d

jr_0a7_772d:
    nop                                           ; $772d: $00
    dec d                                         ; $772e: $15
    jr nc, jr_0a7_7738                            ; $772f: $30 $07

    ld c, b                                       ; $7731: $48
    jr jr_0a7_773c                                ; $7732: $18 $08

    inc h                                         ; $7734: $24

jr_0a7_7735:
    jr jr_0a7_76e9                                ; $7735: $18 $b2

    ld b, b                                       ; $7737: $40

jr_0a7_7738:
    rst $38                                       ; $7738: $ff
    ret c                                         ; $7739: $d8

    jr z, @-$5d                                   ; $773a: $28 $a1

jr_0a7_773c:
    db $10                                        ; $773c: $10
    db $10                                        ; $773d: $10
    ld c, b                                       ; $773e: $48
    sbc $08                                       ; $773f: $de $08

jr_0a7_7741:
    xor $50                                       ; $7741: $ee $50
    ld a, c                                       ; $7743: $79
    jr jr_0a7_77a3                                ; $7744: $18 $5d

    jr nz, jr_0a7_7757                            ; $7746: $20 $0f

jr_0a7_7748:
    jr z, @+$01                                   ; $7748: $28 $ff

    inc [hl]                                      ; $774a: $34
    jr nc, jr_0a7_76d5                            ; $774b: $30 $88

    jr z, @-$52                                   ; $774d: $28 $ac

    jr z, jr_0a7_7741                             ; $774f: $28 $f0

    jr z, jr_0a7_77c8                             ; $7751: $28 $75

    db $10                                        ; $7753: $10
    ld l, $09                                     ; $7754: $2e $09
    sbc c                                         ; $7756: $99

jr_0a7_7757:
    jr c, jr_0a7_776d                             ; $7757: $38 $14

    jr nc, @+$01                                  ; $7759: $30 $ff

    ldh [rNR41], a                                ; $775b: $e0 $20
    cp $08                                        ; $775d: $fe $08
    inc b                                         ; $775f: $04
    ret nz                                        ; $7760: $c0

jr_0a7_7761:
    ld b, h                                       ; $7761: $44
    jr nz, jr_0a7_7789                            ; $7762: $20 $25

    ld l, b                                       ; $7764: $68
    inc e                                         ; $7765: $1c
    ld b, c                                       ; $7766: $41
    add h                                         ; $7767: $84
    ld b, b                                       ; $7768: $40
    ld hl, sp+$30                                 ; $7769: $f8 $30
    rst $38                                       ; $776b: $ff
    and d                                         ; $776c: $a2

jr_0a7_776d:
    ld de, $4004                                  ; $776d: $11 $04 $40
    ld d, c                                       ; $7770: $51
    ld c, b                                       ; $7771: $48
    adc l                                         ; $7772: $8d
    db $10                                        ; $7773: $10
    add hl, hl                                    ; $7774: $29
    ld hl, $30a8                                  ; $7775: $21 $a8 $30
    ld c, h                                       ; $7778: $4c
    ld h, b                                       ; $7779: $60
    dec [hl]                                      ; $777a: $35
    ld sp, $10ff                                  ; $777b: $31 $ff $10
    ld l, b                                       ; $777e: $68
    pop bc                                        ; $777f: $c1
    add hl, sp                                    ; $7780: $39
    ld h, b                                       ; $7781: $60
    ld e, b                                       ; $7782: $58
    ld l, a                                       ; $7783: $6f
    ld e, b                                       ; $7784: $58
    inc bc                                        ; $7785: $03
    ld [de], a                                    ; $7786: $12
    sub h                                         ; $7787: $94
    ld b, c                                       ; $7788: $41

jr_0a7_7789:
    ld d, b                                       ; $7789: $50
    ld d, b                                       ; $778a: $50
    sbc $09                                       ; $778b: $de $09
    rst $38                                       ; $778d: $ff
    ld h, b                                       ; $778e: $60
    ld h, b                                       ; $778f: $60
    or b                                          ; $7790: $b0
    ld c, c                                       ; $7791: $49
    jr z, @+$54                                   ; $7792: $28 $52

    ld h, b                                       ; $7794: $60
    ld sp, $6241                                  ; $7795: $31 $41 $62
    ld e, h                                       ; $7798: $5c
    ld e, b                                       ; $7799: $58

jr_0a7_779a:
    ld b, h                                       ; $779a: $44
    ld bc, $7900                                  ; $779b: $01 $00 $79
    rst $38                                       ; $779e: $ff
    and h                                         ; $779f: $a4
    ld sp, $4220                                  ; $77a0: $31 $20 $42

jr_0a7_77a3:
    jr nz, @+$43                                  ; $77a3: $20 $41

    inc a                                         ; $77a5: $3c
    ld c, d                                       ; $77a6: $4a
    jr nc, @+$1b                                  ; $77a7: $30 $19

    ret c                                         ; $77a9: $d8

    ld [hl-], a                                   ; $77aa: $32
    inc h                                         ; $77ab: $24
    add hl, bc                                    ; $77ac: $09
    ret z                                         ; $77ad: $c8

    jr c, @+$01                                   ; $77ae: $38 $ff

    cp l                                          ; $77b0: $bd

jr_0a7_77b1:
    ld a, [hl-]                                   ; $77b1: $3a
    jr nc, jr_0a7_7826                            ; $77b2: $30 $72

    ld c, h                                       ; $77b4: $4c
    add hl, de                                    ; $77b5: $19
    cp [hl]                                       ; $77b6: $be
    jr nc, @-$62                                  ; $77b7: $30 $9c

    ld a, [bc]                                    ; $77b9: $0a
    ret z                                         ; $77ba: $c8

    ld [hl+], a                                   ; $77bb: $22
    jr jr_0a7_77ff                                ; $77bc: $18 $41

    dec [hl]                                      ; $77be: $35
    ld d, e                                       ; $77bf: $53
    rst $38                                       ; $77c0: $ff
    jr @+$15                                      ; $77c1: $18 $13

    ld a, c                                       ; $77c3: $79
    ld hl, $4aa4                                  ; $77c4: $21 $a4 $4a

jr_0a7_77c7:
    sbc b                                         ; $77c7: $98

jr_0a7_77c8:
    add hl, hl                                    ; $77c8: $29
    ld d, b                                       ; $77c9: $50
    jr nc, jr_0a7_77dc                            ; $77ca: $30 $10

    ld c, e                                       ; $77cc: $4b
    rrca                                          ; $77cd: $0f
    ld b, e                                       ; $77ce: $43
    rst $10                                       ; $77cf: $d7
    ld sp, $30ff                                  ; $77d0: $31 $ff $30
    ld d, b                                       ; $77d3: $50
    ld a, b                                       ; $77d4: $78
    jr c, @+$5c                                   ; $77d5: $38 $5a

    dec hl                                        ; $77d7: $2b
    rst $38                                       ; $77d8: $ff

jr_0a7_77d9:
    ld l, c                                       ; $77d9: $69
    ret nc                                        ; $77da: $d0

    ld b, c                                       ; $77db: $41

jr_0a7_77dc:
    sbc b                                         ; $77dc: $98
    dec hl                                        ; $77dd: $2b
    sbc a                                         ; $77de: $9f
    ld d, b                                       ; $77df: $50
    ld h, h                                       ; $77e0: $64
    ld c, e                                       ; $77e1: $4b
    add b                                         ; $77e2: $80
    db $ec                                        ; $77e3: $ec
    dec bc                                        ; $77e4: $0b
    ld l, $00                                     ; $77e5: $2e $00
    ld c, e                                       ; $77e7: $4b
    inc b                                         ; $77e8: $04
    ld bc, $0090                                  ; $77e9: $01 $90 $00
    nop                                           ; $77ec: $00
    inc b                                         ; $77ed: $04
    nop                                           ; $77ee: $00
    add hl, bc                                    ; $77ef: $09
    inc b                                         ; $77f0: $04
    jr jr_0a7_7801                                ; $77f1: $18 $0e

    ld [$001f], sp                                ; $77f3: $08 $1f $00
    nop                                           ; $77f6: $00
    add hl, bc                                    ; $77f7: $09
    ld bc, $1020                                  ; $77f8: $01 $20 $10
    jr nc, jr_0a7_7801                            ; $77fb: $30 $04

    jr nz, jr_0a7_781f                            ; $77fd: $20 $20

jr_0a7_77ff:
    jr z, jr_0a7_7805                             ; $77ff: $28 $04

jr_0a7_7801:
    jr z, @+$01                                   ; $7801: $28 $ff

    ld b, d                                       ; $7803: $42
    ld d, b                                       ; $7804: $50

jr_0a7_7805:
    ld e, $18                                     ; $7805: $1e $18
    ld c, b                                       ; $7807: $48
    jr nz, @+$52                                  ; $7808: $20 $50

    jr jr_0a7_780d                                ; $780a: $18 $01

    ld [hl], b                                    ; $780c: $70

jr_0a7_780d:
    ld c, h                                       ; $780d: $4c
    jr nz, @+$3f                                  ; $780e: $20 $3d

    jr z, @+$4e                                   ; $7810: $28 $4c

    ld l, b                                       ; $7812: $68
    rst $38                                       ; $7813: $ff
    ld c, b                                       ; $7814: $48
    jr c, jr_0a7_77b1                             ; $7815: $38 $9a

    jr nz, jr_0a7_781d                            ; $7817: $20 $04

    ld h, b                                       ; $7819: $60
    xor b                                         ; $781a: $a8
    jr nz, jr_0a7_788b                            ; $781b: $20 $6e

jr_0a7_781d:
    jr nz, jr_0a7_77c7                            ; $781d: $20 $a8

jr_0a7_781f:
    jr jr_0a7_77b1                                ; $781f: $18 $90

    ld c, b                                       ; $7821: $48
    jr nc, @+$32                                  ; $7822: $30 $30

    rst $38                                       ; $7824: $ff
    or b                                          ; $7825: $b0

jr_0a7_7826:
    ld b, b                                       ; $7826: $40
    or h                                          ; $7827: $b4
    ld c, b                                       ; $7828: $48
    inc a                                         ; $7829: $3c
    ld c, b                                       ; $782a: $48
    inc c                                         ; $782b: $0c
    add hl, bc                                    ; $782c: $09
    ld b, b                                       ; $782d: $40
    jr z, @-$12                                   ; $782e: $28 $ec

    jr z, jr_0a7_77d9                             ; $7830: $28 $a7

    ld b, b                                       ; $7832: $40
    jr nz, @+$1a                                  ; $7833: $20 $18

    ldh a, [$b0]                                  ; $7835: $f0 $b0
    ld b, b                                       ; $7837: $40
    ld a, [$5258]                                 ; $7838: $fa $58 $52
    sbc b                                         ; $783b: $98
    ld e, [hl]                                    ; $783c: $5e
    ld e, b                                       ; $783d: $58
    inc b                                         ; $783e: $04
    inc b                                         ; $783f: $04
    inc d                                         ; $7840: $14
    nop                                           ; $7841: $00
    ld e, a                                       ; $7842: $5f
    inc b                                         ; $7843: $04
    ld bc, $00b8                                  ; $7844: $01 $b8 $00
    inc b                                         ; $7847: $04
    jr nz, jr_0a7_7857                            ; $7848: $20 $0d

    jr @+$03                                      ; $784a: $18 $01

    jr nz, @+$12                                  ; $784c: $20 $10

    ld b, b                                       ; $784e: $40
    inc d                                         ; $784f: $14
    db $10                                        ; $7850: $10
    rst $38                                       ; $7851: $ff
    ld sp, $3868                                  ; $7852: $31 $68 $38
    ld b, b                                       ; $7855: $40
    ld b, b                                       ; $7856: $40

jr_0a7_7857:
    db $10                                        ; $7857: $10
    ld bc, $2de0                                  ; $7858: $01 $e0 $2d
    ld d, b                                       ; $785b: $50
    ld l, b                                       ; $785c: $68

jr_0a7_785d:
    jr @+$06                                      ; $785d: $18 $04

    ld e, b                                       ; $785f: $58
    adc a                                         ; $7860: $8f
    ld b, b                                       ; $7861: $40
    ldh a, [rNR30]                                ; $7862: $f0 $1a
    sub b                                         ; $7864: $90
    ld c, l                                       ; $7865: $4d
    ld d, b                                       ; $7866: $50
    ld b, b                                       ; $7867: $40
    ld h, b                                       ; $7868: $60
    call c, $1a08                                 ; $7869: $dc $08 $1a
    nop                                           ; $786c: $00
    ld b, a                                       ; $786d: $47
    inc b                                         ; $786e: $04
    ld bc, $0088                                  ; $786f: $01 $88 $00
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    inc b                                         ; $7874: $04
    jr nc, jr_0a7_7888                            ; $7875: $30 $11

    jr z, jr_0a7_787c                             ; $7877: $28 $03

    jr nz, @+$01                                  ; $7879: $20 $ff

    rra                                           ; $787b: $1f

jr_0a7_787c:
    jr jr_0a7_7890                                ; $787c: $18 $12

    jr c, jr_0a7_789e                             ; $787e: $38 $1e

    ld e, b                                       ; $7880: $58
    jr nc, jr_0a7_78ab                            ; $7881: $30 $28

    ld b, a                                       ; $7883: $47
    jr z, jr_0a7_78d2                             ; $7884: $28 $4c

    ld h, b                                       ; $7886: $60
    add hl, hl                                    ; $7887: $29

jr_0a7_7888:
    ld c, b                                       ; $7888: $48
    ld d, d                                       ; $7889: $52
    ld b, b                                       ; $788a: $40

jr_0a7_788b:
    rst $38                                       ; $788b: $ff
    inc b                                         ; $788c: $04
    jr z, jr_0a7_790a                             ; $788d: $28 $7b

    db $10                                        ; $788f: $10

jr_0a7_7890:
    inc b                                         ; $7890: $04
    ld h, b                                       ; $7891: $60
    sub [hl]                                      ; $7892: $96
    ld c, b                                       ; $7893: $48
    rra                                           ; $7894: $1f
    db $10                                        ; $7895: $10
    ld c, b                                       ; $7896: $48
    ld h, b                                       ; $7897: $60
    dec hl                                        ; $7898: $2b
    ld l, b                                       ; $7899: $68
    xor b                                         ; $789a: $a8
    jr nc, jr_0a7_785d                            ; $789b: $30 $c0

    sbc h                                         ; $789d: $9c

jr_0a7_789e:
    and b                                         ; $789e: $a0
    ld e, h                                       ; $789f: $5c
    ld l, b                                       ; $78a0: $68
    inc de                                        ; $78a1: $13
    nop                                           ; $78a2: $00
    ld e, a                                       ; $78a3: $5f

jr_0a7_78a4:
    inc b                                         ; $78a4: $04
    ld bc, $0080                                  ; $78a5: $01 $80 $00
    ld bc, $1240                                  ; $78a8: $01 $40 $12

jr_0a7_78ab:
    ld l, b                                       ; $78ab: $68
    jr nz, jr_0a7_78c6                            ; $78ac: $20 $18

    inc h                                         ; $78ae: $24
    jr c, jr_0a7_78eb                             ; $78af: $38 $3a

    cp b                                          ; $78b1: $b8
    rst $38                                       ; $78b2: $ff
    ld b, [hl]                                    ; $78b3: $46
    ld e, b                                       ; $78b4: $58
    inc b                                         ; $78b5: $04
    jr c, jr_0a7_78ec                             ; $78b6: $38 $34

    ld e, b                                       ; $78b8: $58
    ld e, $68                                     ; $78b9: $1e $68
    adc b                                         ; $78bb: $88
    ld e, b                                       ; $78bc: $58
    ld l, [hl]                                    ; $78bd: $6e
    jr c, jr_0a7_78dc                             ; $78be: $38 $1c

    ld h, b                                       ; $78c0: $60
    add d                                         ; $78c1: $82
    jr nc, jr_0a7_78a4                            ; $78c2: $30 $e0

    ld [hl], h                                    ; $78c4: $74
    ld a, b                                       ; $78c5: $78

jr_0a7_78c6:
    ld c, d                                       ; $78c6: $4a
    ld e, b                                       ; $78c7: $58
    call z, Call_000_1a68                         ; $78c8: $cc $68 $1a
    nop                                           ; $78cb: $00
    ld e, a                                       ; $78cc: $5f
    inc b                                         ; $78cd: $04
    ld bc, $00b8                                  ; $78ce: $01 $b8 $00
    inc b                                         ; $78d1: $04

jr_0a7_78d2:
    jr nz, jr_0a7_78e1                            ; $78d2: $20 $0d

    jr @+$03                                      ; $78d4: $18 $01

    jr nz, @+$12                                  ; $78d6: $20 $10

    ld b, b                                       ; $78d8: $40
    inc d                                         ; $78d9: $14
    db $10                                        ; $78da: $10
    rst $38                                       ; $78db: $ff

jr_0a7_78dc:
    ld sp, $3868                                  ; $78dc: $31 $68 $38
    ld b, b                                       ; $78df: $40
    ld b, b                                       ; $78e0: $40

jr_0a7_78e1:
    db $10                                        ; $78e1: $10
    ld bc, $2de0                                  ; $78e2: $01 $e0 $2d
    ld d, b                                       ; $78e5: $50
    ld l, b                                       ; $78e6: $68
    jr jr_0a7_78ed                                ; $78e7: $18 $04

    ld e, b                                       ; $78e9: $58
    ld [de], a                                    ; $78ea: $12

jr_0a7_78eb:
    ld l, b                                       ; $78eb: $68

jr_0a7_78ec:
    rst $38                                       ; $78ec: $ff

jr_0a7_78ed:
    ld a, [bc]                                    ; $78ed: $0a
    ld c, b                                       ; $78ee: $48
    sub b                                         ; $78ef: $90
    jr nz, jr_0a7_795a                            ; $78f0: $20 $68

    ld d, b                                       ; $78f2: $50
    ld e, $58                                     ; $78f3: $1e $58
    ld l, c                                       ; $78f5: $69
    ld b, b                                       ; $78f6: $40
    ld e, d                                       ; $78f7: $5a
    add b                                         ; $78f8: $80
    ret c                                         ; $78f9: $d8

    sbc b                                         ; $78fa: $98
    ld e, $48                                     ; $78fb: $1e $48
    nop                                           ; $78fd: $00
    inc b                                         ; $78fe: $04
    inc b                                         ; $78ff: $04
    inc e                                         ; $7900: $1c
    nop                                           ; $7901: $00
    ld e, a                                       ; $7902: $5f
    inc b                                         ; $7903: $04
    ld bc, $00b8                                  ; $7904: $01 $b8 $00
    inc bc                                        ; $7907: $03
    nop                                           ; $7908: $00
    inc b                                         ; $7909: $04

jr_0a7_790a:
    nop                                           ; $790a: $00
    ld a, [bc]                                    ; $790b: $0a
    ld [$3801], sp                                ; $790c: $08 $01 $38
    rrca                                          ; $790f: $0f
    ld h, b                                       ; $7910: $60
    rst $38                                       ; $7911: $ff
    db $10                                        ; $7912: $10
    jr nz, jr_0a7_7938                            ; $7913: $20 $23

    jr c, jr_0a7_7958                             ; $7915: $38 $41

    ld h, b                                       ; $7917: $60
    inc a                                         ; $7918: $3c
    db $10                                        ; $7919: $10
    inc b                                         ; $791a: $04
    ld c, b                                       ; $791b: $48
    ld c, e                                       ; $791c: $4b
    ld c, b                                       ; $791d: $48
    inc de                                        ; $791e: $13
    ld c, b                                       ; $791f: $48
    ld [hl], l                                    ; $7920: $75

jr_0a7_7921:
    jr nc, @+$01                                  ; $7921: $30 $ff

    ld bc, $6070                                  ; $7923: $01 $70 $60
    jr z, @+$6a                                   ; $7926: $28 $68

    jr nc, jr_0a7_797d                            ; $7928: $30 $53

    ld d, b                                       ; $792a: $50
    xor a                                         ; $792b: $af
    ld b, b                                       ; $792c: $40
    or b                                          ; $792d: $b0
    jr jr_0a7_7998                                ; $792e: $18 $68

    ld h, b                                       ; $7930: $60
    ld a, $38                                     ; $7931: $3e $38
    ldh a, [$60]                                  ; $7933: $f0 $60
    ld e, b                                       ; $7935: $58
    ld c, c                                       ; $7936: $49
    ld [hl], b                                    ; $7937: $70

jr_0a7_7938:
    call c, Call_0a7_42d0                         ; $7938: $dc $d0 $42
    jr c, jr_0a7_7984                             ; $793b: $38 $47

    nop                                           ; $793d: $00
    ld e, [hl]                                    ; $793e: $5e
    inc b                                         ; $793f: $04
    ld bc, $00b8                                  ; $7940: $01 $b8 $00
    inc bc                                        ; $7943: $03
    nop                                           ; $7944: $00
    inc b                                         ; $7945: $04
    nop                                           ; $7946: $00
    ld a, [bc]                                    ; $7947: $0a
    ld [$0801], sp                                ; $7948: $08 $01 $08
    add hl, bc                                    ; $794b: $09

jr_0a7_794c:
    db $fd                                        ; $794c: $fd
    ld bc, $0f10                                  ; $794d: $01 $10 $0f
    jr z, @+$10                                   ; $7950: $28 $0e

    nop                                           ; $7952: $00
    ld [de], a                                    ; $7953: $12
    db $10                                        ; $7954: $10
    dec l                                         ; $7955: $2d
    jr nc, jr_0a7_7986                            ; $7956: $30 $2e

jr_0a7_7958:
    nop                                           ; $7958: $00
    add hl, bc                                    ; $7959: $09

jr_0a7_795a:
    jr z, jr_0a7_795c                             ; $795a: $28 $00

jr_0a7_795c:
    call c, Call_0a7_5041                         ; $795c: $dc $41 $50
    ld a, $10                                     ; $795f: $3e $10
    nop                                           ; $7961: $00
    inc [hl]                                      ; $7962: $34
    nop                                           ; $7963: $00
    ld c, b                                       ; $7964: $48
    ld [$084b], sp                                ; $7965: $08 $4b $08
    nop                                           ; $7968: $00
    inc b                                         ; $7969: $04
    rst $38                                       ; $796a: $ff

jr_0a7_796b:
    ld b, [hl]                                    ; $796b: $46
    ld [$104f], sp                                ; $796c: $08 $4f $10
    rrca                                          ; $796f: $0f
    jr @+$12                                      ; $7970: $18 $10

    jr nc, jr_0a7_7997                            ; $7972: $30 $23

    jr jr_0a7_7996                                ; $7974: $18 $20

    jr z, jr_0a7_79e0                             ; $7976: $28 $68

    nop                                           ; $7978: $00
    inc b                                         ; $7979: $04
    jr jr_0a7_796b                                ; $797a: $18 $ef

    ld [bc], a                                    ; $797c: $02

jr_0a7_797d:
    nop                                           ; $797d: $00
    ld a, d                                       ; $797e: $7a
    jr z, jr_0a7_79b9                             ; $797f: $28 $38

    jr c, @+$0b                                   ; $7981: $38 $09

    inc b                                         ; $7983: $04

jr_0a7_7984:
    jr nz, jr_0a7_79e6                            ; $7984: $20 $60

jr_0a7_7986:
    jr nz, @+$06                                  ; $7986: $20 $04

    jr z, @-$4e                                   ; $7988: $28 $b0

    ld [$38ff], sp                                ; $798a: $08 $ff $38
    nop                                           ; $798d: $00

jr_0a7_798e:
    cp d                                          ; $798e: $ba
    jr c, jr_0a7_7921                             ; $798f: $38 $90

    db $10                                        ; $7991: $10
    ld e, h                                       ; $7992: $5c
    db $10                                        ; $7993: $10
    adc $28                                       ; $7994: $ce $28

jr_0a7_7996:
    ret z                                         ; $7996: $c8

jr_0a7_7997:
    db $10                                        ; $7997: $10

jr_0a7_7998:
    rrc b                                         ; $7998: $cb $08
    inc b                                         ; $799a: $04
    jr nc, @+$01                                  ; $799b: $30 $ff

    and b                                         ; $799d: $a0
    jr nz, jr_0a7_79a4                            ; $799e: $20 $04

    jr z, jr_0a7_7a0e                             ; $79a0: $28 $6c

    jr nc, jr_0a7_794c                            ; $79a2: $30 $a8

jr_0a7_79a4:
    jr z, jr_0a7_798e                             ; $79a4: $28 $e8

    jr nz, jr_0a7_7998                            ; $79a6: $20 $f0

    db $10                                        ; $79a8: $10
    jr c, @+$4a                                   ; $79a9: $38 $48

    ld b, b                                       ; $79ab: $40
    jr c, @+$01                                   ; $79ac: $38 $ff

    add c                                         ; $79ae: $81
    jr c, jr_0a7_79db                             ; $79af: $38 $2a

jr_0a7_79b1:
    ld e, c                                       ; $79b1: $59
    or h                                          ; $79b2: $b4
    jr nz, jr_0a7_79dd                            ; $79b3: $20 $28

    ld hl, $30c4                                  ; $79b5: $21 $c4 $30
    add hl, hl                                    ; $79b8: $29

jr_0a7_79b9:
    ld b, b                                       ; $79b9: $40
    ld a, [bc]                                    ; $79ba: $0a
    add hl, bc                                    ; $79bb: $09
    ld b, b                                       ; $79bc: $40
    ld c, c                                       ; $79bd: $49
    cp $6e                                        ; $79be: $fe $6e
    ld c, c                                       ; $79c0: $49
    sbc b                                         ; $79c1: $98
    add hl, hl                                    ; $79c2: $29
    jr nz, jr_0a7_79f6                            ; $79c3: $20 $31

    db $10                                        ; $79c5: $10
    jr nc, jr_0a7_7a06                            ; $79c6: $30 $3e

    ld sp, $6838                                  ; $79c8: $31 $38 $68
    rl c                                          ; $79cb: $cb $11
    ld l, $00                                     ; $79cd: $2e $00
    ld c, [hl]                                    ; $79cf: $4e
    inc b                                         ; $79d0: $04
    ld bc, $0090                                  ; $79d1: $01 $90 $00
    nop                                           ; $79d4: $00
    inc b                                         ; $79d5: $04
    jr jr_0a7_79e6                                ; $79d6: $18 $0e

    jr z, jr_0a7_79dc                             ; $79d8: $28 $02

    db $10                                        ; $79da: $10

jr_0a7_79db:
    add hl, bc                                    ; $79db: $09

jr_0a7_79dc:
    db $e3                                        ; $79dc: $e3

jr_0a7_79dd:
    jr jr_0a7_79df                                ; $79dd: $18 $00

jr_0a7_79df:
    inc b                                         ; $79df: $04

jr_0a7_79e0:
    nop                                           ; $79e0: $00
    db $10                                        ; $79e1: $10
    jr @+$0b                                      ; $79e2: $18 $09

    add hl, bc                                    ; $79e4: $09
    add hl, bc                                    ; $79e5: $09

jr_0a7_79e6:
    inc b                                         ; $79e6: $04
    db $10                                        ; $79e7: $10
    ld [hl], $58                                  ; $79e8: $36 $58
    rst $38                                       ; $79ea: $ff
    inc [hl]                                      ; $79eb: $34
    jr c, jr_0a7_7a34                             ; $79ec: $38 $46

    jr z, @+$4a                                   ; $79ee: $28 $48

    jr nz, jr_0a7_79f6                            ; $79f0: $20 $04

    jr nc, jr_0a7_7a2c                            ; $79f2: $30 $38

    nop                                           ; $79f4: $00
    inc bc                                        ; $79f5: $03

jr_0a7_79f6:
    jr nc, @+$4a                                  ; $79f6: $30 $48

    jr nz, jr_0a7_79fd                            ; $79f8: $20 $03

    ld e, b                                       ; $79fa: $58
    rst $38                                       ; $79fb: $ff
    ld a, d                                       ; $79fc: $7a

jr_0a7_79fd:
    nop                                           ; $79fd: $00
    inc b                                         ; $79fe: $04
    jr jr_0a7_7a65                                ; $79ff: $18 $64

    jr jr_0a7_7a3f                                ; $7a01: $18 $3c

    ld c, b                                       ; $7a03: $48
    ld b, b                                       ; $7a04: $40
    db $10                                        ; $7a05: $10

jr_0a7_7a06:
    ld a, h                                       ; $7a06: $7c
    ld b, b                                       ; $7a07: $40
    add b                                         ; $7a08: $80
    ld l, b                                       ; $7a09: $68
    ld l, b                                       ; $7a0a: $68
    jr z, @+$01                                   ; $7a0b: $28 $ff

    xor [hl]                                      ; $7a0d: $ae

jr_0a7_7a0e:
    jr jr_0a7_79b1                                ; $7a0e: $18 $a1

    jr @+$2e                                      ; $7a10: $18 $2c

    ld c, b                                       ; $7a12: $48
    or h                                          ; $7a13: $b4
    jr @-$42                                      ; $7a14: $18 $bc

    ld [$3804], sp                                ; $7a16: $08 $04 $38
    ld [$f228], a                                 ; $7a19: $ea $28 $f2
    ld b, b                                       ; $7a1c: $40
    cp h                                          ; $7a1d: $bc
    or b                                          ; $7a1e: $b0
    ld c, b                                       ; $7a1f: $48
    inc b                                         ; $7a20: $04
    xor h                                         ; $7a21: $ac

jr_0a7_7a22:
    ld c, b                                       ; $7a22: $48
    db $10                                        ; $7a23: $10
    jr nz, jr_0a7_7a22                            ; $7a24: $20 $fc

    db $10                                        ; $7a26: $10
    db $ec                                        ; $7a27: $ec
    jr z, jr_0a7_7a6f                             ; $7a28: $28 $45

    nop                                           ; $7a2a: $00
    ld c, d                                       ; $7a2b: $4a

jr_0a7_7a2c:
    inc b                                         ; $7a2c: $04
    ld bc, $00b0                                  ; $7a2d: $01 $b0 $00
    nop                                           ; $7a30: $00
    inc b                                         ; $7a31: $04
    nop                                           ; $7a32: $00
    add hl, bc                                    ; $7a33: $09

jr_0a7_7a34:
    ld c, $38                                     ; $7a34: $0e $38
    nop                                           ; $7a36: $00
    ld a, $00                                     ; $7a37: $3e $00
    add hl, bc                                    ; $7a39: $09
    ld bc, $1e00                                  ; $7a3a: $01 $00 $1e
    jr nc, jr_0a7_7a52                            ; $7a3d: $30 $13

jr_0a7_7a3f:
    jr jr_0a7_7a65                                ; $7a3f: $18 $24

    nop                                           ; $7a41: $00
    ld l, $38                                     ; $7a42: $2e $38
    add hl, bc                                    ; $7a44: $09
    rst $20                                       ; $7a45: $e7
    db $10                                        ; $7a46: $10
    ld d, b                                       ; $7a47: $50
    ld sp, $4018                                  ; $7a48: $31 $18 $40
    ld b, b                                       ; $7a4b: $40
    inc b                                         ; $7a4c: $04
    add hl, bc                                    ; $7a4d: $09
    ld hl, $5f00                                  ; $7a4e: $21 $00 $5f
    ld b, b                                       ; $7a51: $40

jr_0a7_7a52:
    ld d, d                                       ; $7a52: $52
    db $10                                        ; $7a53: $10
    rst $38                                       ; $7a54: $ff
    ld h, b                                       ; $7a55: $60
    ld h, b                                       ; $7a56: $60
    ld [hl], h                                    ; $7a57: $74
    jr nz, jr_0a7_7a5e                            ; $7a58: $20 $04

    jr c, jr_0a7_7a5d                             ; $7a5a: $38 $01

    ret nz                                        ; $7a5c: $c0

jr_0a7_7a5d:
    ld d, b                                       ; $7a5d: $50

jr_0a7_7a5e:
    nop                                           ; $7a5e: $00
    inc b                                         ; $7a5f: $04
    db $10                                        ; $7a60: $10
    dec c                                         ; $7a61: $0d
    jr jr_0a7_7ae3                                ; $7a62: $18 $7f

    nop                                           ; $7a64: $00

jr_0a7_7a65:
    rst $38                                       ; $7a65: $ff
    inc b                                         ; $7a66: $04
    ld [$401f], sp                                ; $7a67: $08 $1f $40
    ld [hl], b                                    ; $7a6a: $70
    nop                                           ; $7a6b: $00
    ld de, $0e38                                  ; $7a6c: $11 $38 $0e

jr_0a7_7a6f:
    ld e, b                                       ; $7a6f: $58
    ld sp, $7850                                  ; $7a70: $31 $50 $78
    jr jr_0a7_7a79                                ; $7a73: $18 $04

    jr nz, @+$01                                  ; $7a75: $20 $ff

    dec a                                         ; $7a77: $3d
    ld h, b                                       ; $7a78: $60

jr_0a7_7a79:
    ld h, b                                       ; $7a79: $60
    db $10                                        ; $7a7a: $10
    ld e, h                                       ; $7a7b: $5c
    jr z, jr_0a7_7ade                             ; $7a7c: $28 $60

    jr nz, jr_0a7_7af8                            ; $7a7e: $20 $78

    jr z, jr_0a7_7a9e                             ; $7a80: $28 $1c

    adc b                                         ; $7a82: $88
    dec sp                                        ; $7a83: $3b
    ld c, b                                       ; $7a84: $48
    inc a                                         ; $7a85: $3c
    jr nz, @+$01                                  ; $7a86: $20 $ff

    adc d                                         ; $7a88: $8a
    ld h, b                                       ; $7a89: $60
    ld c, l                                       ; $7a8a: $4d
    ld a, b                                       ; $7a8b: $78
    ld a, h                                       ; $7a8c: $7c
    ld c, b                                       ; $7a8d: $48
    ld b, [hl]                                    ; $7a8e: $46
    add hl, bc                                    ; $7a8f: $09
    ld l, a                                       ; $7a90: $6f
    jr nc, jr_0a7_7b02                            ; $7a91: $30 $6f

    ld hl, $5080                                  ; $7a93: $21 $80 $50
    xor b                                         ; $7a96: $a8
    jr @+$01                                      ; $7a97: $18 $ff

    ld c, l                                       ; $7a99: $4d
    add hl, bc                                    ; $7a9a: $09
    sub b                                         ; $7a9b: $90
    add hl, bc                                    ; $7a9c: $09
    add b                                         ; $7a9d: $80

jr_0a7_7a9e:
    add hl, de                                    ; $7a9e: $19
    xor d                                         ; $7a9f: $aa
    ld de, $2004                                  ; $7aa0: $11 $04 $20
    ld b, b                                       ; $7aa3: $40
    ld b, c                                       ; $7aa4: $41
    sbc h                                         ; $7aa5: $9c
    ld de, $2941                                  ; $7aa6: $11 $41 $29
    ld hl, sp-$54                                 ; $7aa9: $f8 $ac
    add hl, hl                                    ; $7aab: $29
    add h                                         ; $7aac: $84
    add hl, bc                                    ; $7aad: $09
    rrca                                          ; $7aae: $0f
    jr nz, jr_0a7_7aed                            ; $7aaf: $20 $3c

    jr nc, jr_0a7_7ab7                            ; $7ab1: $30 $04

    ld c, d                                       ; $7ab3: $4a
    add hl, sp                                    ; $7ab4: $39
    nop                                           ; $7ab5: $00
    ld e, e                                       ; $7ab6: $5b

jr_0a7_7ab7:
    inc b                                         ; $7ab7: $04
    ld bc, $0078                                  ; $7ab8: $01 $78 $00
    inc b                                         ; $7abb: $04
    ld c, b                                       ; $7abc: $48
    ld bc, $0908                                  ; $7abd: $01 $08 $09
    ld bc, $1040                                  ; $7ac0: $01 $40 $10
    ld h, b                                       ; $7ac3: $60
    db $db                                        ; $7ac4: $db
    ld hl, $0d10                                  ; $7ac5: $21 $10 $0d

jr_0a7_7ac8:
    jr nc, jr_0a7_7ad3                            ; $7ac8: $30 $09

    ld sp, $1e18                                  ; $7aca: $31 $18 $1e
    jr c, jr_0a7_7ad3                             ; $7acd: $38 $04

    jr nc, @+$52                                  ; $7acf: $30 $50

    rrca                                          ; $7ad1: $0f
    nop                                           ; $7ad2: $00

jr_0a7_7ad3:
    rst $38                                       ; $7ad3: $ff
    jr nc, jr_0a7_7b36                            ; $7ad4: $30 $60

    ld d, b                                       ; $7ad6: $50
    jr nc, jr_0a7_7add                            ; $7ad7: $30 $04

    ld c, b                                       ; $7ad9: $48
    inc bc                                        ; $7ada: $03
    ld d, b                                       ; $7adb: $50
    and b                                         ; $7adc: $a0

jr_0a7_7add:
    nop                                           ; $7add: $00

jr_0a7_7ade:
    inc b                                         ; $7ade: $04
    ld d, b                                       ; $7adf: $50
    ld d, l                                       ; $7ae0: $55
    db $10                                        ; $7ae1: $10
    inc b                                         ; $7ae2: $04

jr_0a7_7ae3:
    ld b, b                                       ; $7ae3: $40
    rst $38                                       ; $7ae4: $ff
    ld c, $58                                     ; $7ae5: $0e $58
    and e                                         ; $7ae7: $a3
    jr jr_0a7_7b3a                                ; $7ae8: $18 $50

    ld h, b                                       ; $7aea: $60
    ld d, $18                                     ; $7aeb: $16 $18

jr_0a7_7aed:
    and h                                         ; $7aed: $a4
    ld b, b                                       ; $7aee: $40
    ld h, c                                       ; $7aef: $61
    ld h, b                                       ; $7af0: $60
    rrca                                          ; $7af1: $0f
    ld l, b                                       ; $7af2: $68
    jr nc, jr_0a7_7b55                            ; $7af3: $30 $60

    rst $38                                       ; $7af5: $ff
    sub d                                         ; $7af6: $92
    ld a, b                                       ; $7af7: $78

jr_0a7_7af8:
    add h                                         ; $7af8: $84
    jr z, jr_0a7_7b17                             ; $7af9: $28 $1c

    adc c                                         ; $7afb: $89
    sbc [hl]                                      ; $7afc: $9e
    ld c, b                                       ; $7afd: $48
    inc a                                         ; $7afe: $3c
    ld de, $40af                                  ; $7aff: $11 $af $40

jr_0a7_7b02:
    ld c, c                                       ; $7b02: $49
    ld de, $0160                                  ; $7b03: $11 $60 $01
    rst $38                                       ; $7b06: $ff
    inc b                                         ; $7b07: $04
    jr nc, jr_0a7_7b59                            ; $7b08: $30 $4f

    add hl, bc                                    ; $7b0a: $09
    or c                                          ; $7b0b: $b1
    add b                                         ; $7b0c: $80
    ld de, $3c11                                  ; $7b0d: $11 $11 $3c
    add hl, bc                                    ; $7b10: $09
    pop de                                        ; $7b11: $d1
    jr jr_0a7_7b34                                ; $7b12: $18 $20

    add hl, de                                    ; $7b14: $19
    jr c, jr_0a7_7b37                             ; $7b15: $38 $20

jr_0a7_7b17:
    rst $38                                       ; $7b17: $ff
    jr @+$12                                      ; $7b18: $18 $10

    ld l, h                                       ; $7b1a: $6c
    jr nc, @-$32                                  ; $7b1b: $30 $cc

    jr c, jr_0a7_7ac8                             ; $7b1d: $38 $a9

    ld de, $1870                                  ; $7b1f: $11 $70 $18
    rra                                           ; $7b22: $1f
    jr z, jr_0a7_7b45                             ; $7b23: $28 $20

jr_0a7_7b25:
    db $10                                        ; $7b25: $10
    jr z, @+$2a                                   ; $7b26: $28 $28

    add b                                         ; $7b28: $80
    add sp, $29                                   ; $7b29: $e8 $29
    inc hl                                        ; $7b2b: $23
    nop                                           ; $7b2c: $00
    ld b, l                                       ; $7b2d: $45
    inc b                                         ; $7b2e: $04
    ld bc, $00c8                                  ; $7b2f: $01 $c8 $00
    nop                                           ; $7b32: $00
    nop                                           ; $7b33: $00

jr_0a7_7b34:
    rrca                                          ; $7b34: $0f
    ld h, b                                       ; $7b35: $60

jr_0a7_7b36:
    nop                                           ; $7b36: $00

jr_0a7_7b37:
    inc d                                         ; $7b37: $14
    db $10                                        ; $7b38: $10
    rst $38                                       ; $7b39: $ff

jr_0a7_7b3a:
    ld [$1020], sp                                ; $7b3a: $08 $20 $10
    ld l, b                                       ; $7b3d: $68
    inc d                                         ; $7b3e: $14
    jr z, jr_0a7_7b48                             ; $7b3f: $28 $07

    ld c, b                                       ; $7b41: $48
    ld b, h                                       ; $7b42: $44
    jr nz, jr_0a7_7b49                            ; $7b43: $20 $04

jr_0a7_7b45:
    jr nc, jr_0a7_7b65                            ; $7b45: $30 $1e

    ld h, b                                       ; $7b47: $60

jr_0a7_7b48:
    inc sp                                        ; $7b48: $33

jr_0a7_7b49:
    ld d, b                                       ; $7b49: $50
    rst $38                                       ; $7b4a: $ff
    rra                                           ; $7b4b: $1f
    jr c, jr_0a7_7bc9                             ; $7b4c: $38 $7b

    ld [$1804], sp                                ; $7b4e: $08 $04 $18
    inc a                                         ; $7b51: $3c
    ld c, b                                       ; $7b52: $48
    sub d                                         ; $7b53: $92

jr_0a7_7b54:
    db $10                                        ; $7b54: $10

jr_0a7_7b55:
    ld de, $3080                                  ; $7b55: $11 $80 $30

jr_0a7_7b58:
    or b                                          ; $7b58: $b0

jr_0a7_7b59:
    ld h, h                                       ; $7b59: $64
    ret nc                                        ; $7b5a: $d0

    rst $38                                       ; $7b5b: $ff
    ld l, h                                       ; $7b5c: $6c
    ld a, b                                       ; $7b5d: $78
    ldh [$50], a                                  ; $7b5e: $e0 $50
    db $f4                                        ; $7b60: $f4
    ld b, b                                       ; $7b61: $40
    xor d                                         ; $7b62: $aa
    jr jr_0a7_7b25                                ; $7b63: $18 $c0

jr_0a7_7b65:
    ld h, b                                       ; $7b65: $60
    pop de                                        ; $7b66: $d1
    ld h, b                                       ; $7b67: $60

jr_0a7_7b68:
    inc [hl]                                      ; $7b68: $34
    ld d, c                                       ; $7b69: $51
    ld hl, sp+$78                                 ; $7b6a: $f8 $78
    ldh [rLY], a                                  ; $7b6c: $e0 $44
    ld e, c                                       ; $7b6e: $59
    ld h, e                                       ; $7b6f: $63
    ld c, c                                       ; $7b70: $49
    add c                                         ; $7b71: $81
    ld h, c                                       ; $7b72: $61
    rst $18                                       ; $7b73: $df
    nop                                           ; $7b74: $00
    ld d, c                                       ; $7b75: $51
    inc b                                         ; $7b76: $04
    ld bc, $00a0                                  ; $7b77: $01 $a0 $00
    ld bc, $0908                                  ; $7b7a: $01 $08 $09
    add hl, bc                                    ; $7b7d: $09
    add hl, bc                                    ; $7b7e: $09
    db $10                                        ; $7b7f: $10
    ld c, b                                       ; $7b80: $48
    cp a                                          ; $7b81: $bf
    rrca                                          ; $7b82: $0f
    nop                                           ; $7b83: $00
    nop                                           ; $7b84: $00
    inc h                                         ; $7b85: $24
    ld l, b                                       ; $7b86: $68
    jr nz, @+$5a                                  ; $7b87: $20 $58

    rra                                           ; $7b89: $1f

jr_0a7_7b8a:
    jr c, jr_0a7_7bb5                             ; $7b8a: $38 $29

    ld d, b                                       ; $7b8c: $50
    dec d                                         ; $7b8d: $15
    and b                                         ; $7b8e: $a0
    ld a, $08                                     ; $7b8f: $3e $08
    rst $38                                       ; $7b91: $ff
    ld d, l                                       ; $7b92: $55
    db $10                                        ; $7b93: $10
    inc b                                         ; $7b94: $04
    ld b, b                                       ; $7b95: $40
    rrca                                          ; $7b96: $0f
    ld h, b                                       ; $7b97: $60
    add a                                         ; $7b98: $87
    db $10                                        ; $7b99: $10
    dec b                                         ; $7b9a: $05
    ld c, b                                       ; $7b9b: $48
    inc de                                        ; $7b9c: $13
    ld [$1827], sp                                ; $7b9d: $08 $27 $18
    dec l                                         ; $7ba0: $2d
    jr nz, jr_0a7_7b8a                            ; $7ba1: $20 $e7

    and a                                         ; $7ba3: $a7
    jr @+$12                                      ; $7ba4: $18 $10

    ld e, b                                       ; $7ba6: $58
    inc b                                         ; $7ba7: $04
    db $10                                        ; $7ba8: $10
    inc b                                         ; $7ba9: $04
    inc b                                         ; $7baa: $04
    xor [hl]                                      ; $7bab: $ae
    ld [$1064], sp                                ; $7bac: $08 $64 $10
    or [hl]                                       ; $7baf: $b6
    ld [$04ff], sp                                ; $7bb0: $08 $ff $04
    jr z, jr_0a7_7b54                             ; $7bb3: $28 $9f

jr_0a7_7bb5:
    jr c, jr_0a7_7bcd                             ; $7bb5: $38 $16

    jr @-$15                                      ; $7bb7: $18 $e9

    jr z, jr_0a7_7c0b                             ; $7bb9: $28 $50

    jr z, jr_0a7_7c1a                             ; $7bbb: $28 $5d

    ld c, b                                       ; $7bbd: $48
    inc c                                         ; $7bbe: $0c
    sbc b                                         ; $7bbf: $98
    xor e                                         ; $7bc0: $ab
    ld b, b                                       ; $7bc1: $40
    rst $38                                       ; $7bc2: $ff
    jr nz, jr_0a7_7bde                            ; $7bc3: $20 $19

    add h                                         ; $7bc5: $84
    ld c, b                                       ; $7bc6: $48
    dec e                                         ; $7bc7: $1d
    ld d, b                                       ; $7bc8: $50

jr_0a7_7bc9:
    xor c                                         ; $7bc9: $a9
    jr nc, jr_0a7_7b58                            ; $7bca: $30 $8c

    nop                                           ; $7bcc: $00

jr_0a7_7bcd:
    or c                                          ; $7bcd: $b1
    jr nc, jr_0a7_7b68                            ; $7bce: $30 $98

    ld [$194c], sp                                ; $7bd0: $08 $4c $19
    rst $38                                       ; $7bd3: $ff
    ld d, b                                       ; $7bd4: $50
    ld de, $48a4                                  ; $7bd5: $11 $a4 $48
    dec sp                                        ; $7bd8: $3b
    ld c, c                                       ; $7bd9: $49
    ld e, h                                       ; $7bda: $5c
    add hl, bc                                    ; $7bdb: $09
    xor $20                                       ; $7bdc: $ee $20

jr_0a7_7bde:
    dec h                                         ; $7bde: $25
    ld bc, $0190                                  ; $7bdf: $01 $90 $01
    ld c, [hl]                                    ; $7be2: $4e
    ld c, b                                       ; $7be3: $48
    rst $38                                       ; $7be4: $ff
    ld d, b                                       ; $7be5: $50
    ld b, b                                       ; $7be6: $40
    and h                                         ; $7be7: $a4
    add hl, bc                                    ; $7be8: $09
    ld l, a                                       ; $7be9: $6f
    ld a, b                                       ; $7bea: $78
    jr nz, jr_0a7_7c35                            ; $7beb: $20 $48

    cpl                                           ; $7bed: $2f
    ld d, b                                       ; $7bee: $50
    inc l                                         ; $7bef: $2c
    ld [hl], b                                    ; $7bf0: $70
    sbc a                                         ; $7bf1: $9f
    ld l, b                                       ; $7bf2: $68
    push de                                       ; $7bf3: $d5
    add hl, de                                    ; $7bf4: $19
    rst $38                                       ; $7bf5: $ff

jr_0a7_7bf6:
    inc b                                         ; $7bf6: $04
    jr c, jr_0a7_7bff                             ; $7bf7: $38 $06

    ld [bc], a                                    ; $7bf9: $02
    and [hl]                                      ; $7bfa: $a6
    add hl, bc                                    ; $7bfb: $09
    inc b                                         ; $7bfc: $04
    jr c, jr_0a7_7c0f                             ; $7bfd: $38 $10

jr_0a7_7bff:
    or c                                          ; $7bff: $b1

Call_0a7_7c00:
    cp a                                          ; $7c00: $bf
    ld de, $49dc                                  ; $7c01: $11 $dc $49
    ld l, $12                                     ; $7c04: $2e $12
    rst $38                                       ; $7c06: $ff
    ret nz                                        ; $7c07: $c0

    jr @-$3d                                      ; $7c08: $18 $c1

    db $10                                        ; $7c0a: $10

jr_0a7_7c0b:
    xor $19                                       ; $7c0b: $ee $19
    xor a                                         ; $7c0d: $af
    ld e, b                                       ; $7c0e: $58

jr_0a7_7c0f:
    call z, $bc68                                 ; $7c0f: $cc $68 $bc
    ld h, b                                       ; $7c12: $60
    rrca                                          ; $7c13: $0f
    ld l, b                                       ; $7c14: $68
    or $31                                        ; $7c15: $f6 $31
    rst $38                                       ; $7c17: $ff
    adc e                                         ; $7c18: $8b
    ld a, [bc]                                    ; $7c19: $0a

jr_0a7_7c1a:
    inc b                                         ; $7c1a: $04
    jr jr_0a7_7c42                                ; $7c1b: $18 $25

    ld [de], a                                    ; $7c1d: $12
    and b                                         ; $7c1e: $a0
    ld d, b                                       ; $7c1f: $50
    inc b                                         ; $7c20: $04
    jr z, jr_0a7_7bf6                             ; $7c21: $28 $d3

    adc c                                         ; $7c23: $89
    cpl                                           ; $7c24: $2f
    ld h, d                                       ; $7c25: $62
    call c, $ff79                                 ; $7c26: $dc $79 $ff
    jr c, jr_0a7_7c4d                             ; $7c29: $38 $22

    inc a                                         ; $7c2b: $3c
    ld a, [hl+]                                   ; $7c2c: $2a
    db $fc                                        ; $7c2d: $fc
    ld b, b                                       ; $7c2e: $40
    db $fc                                        ; $7c2f: $fc
    ld [de], a                                    ; $7c30: $12
    dec b                                         ; $7c31: $05
    ld a, d                                       ; $7c32: $7a
    sub h                                         ; $7c33: $94
    ld e, d                                       ; $7c34: $5a

jr_0a7_7c35:
    xor c                                         ; $7c35: $a9
    add hl, bc                                    ; $7c36: $09
    ld h, h                                       ; $7c37: $64
    and b                                         ; $7c38: $a0
    rst $38                                       ; $7c39: $ff
    jr c, jr_0a7_7c8e                             ; $7c3a: $38 $52

    ld e, b                                       ; $7c3c: $58
    add hl, hl                                    ; $7c3d: $29
    ld e, $62                                     ; $7c3e: $1e $62
    ld [hl], b                                    ; $7c40: $70
    inc sp                                        ; $7c41: $33

jr_0a7_7c42:
    ld e, $2b                                     ; $7c42: $1e $2b
    inc e                                         ; $7c44: $1c
    ld h, e                                       ; $7c45: $63
    adc h                                         ; $7c46: $8c
    ld hl, $13a0                                  ; $7c47: $21 $a0 $13
    rst $38                                       ; $7c4a: $ff
    add h                                         ; $7c4b: $84
    sbc c                                         ; $7c4c: $99

jr_0a7_7c4d:
    or l                                          ; $7c4d: $b5
    ld hl, $2b39                                  ; $7c4e: $21 $39 $2b
    ret nz                                        ; $7c51: $c0

    ld h, b                                       ; $7c52: $60
    inc c                                         ; $7c53: $0c
    ld a, c                                       ; $7c54: $79
    ld sp, $ec61                                  ; $7c55: $31 $61 $ec
    ld e, c                                       ; $7c58: $59
    ld h, l                                       ; $7c59: $65
    ld a, b                                       ; $7c5a: $78
    rst $38                                       ; $7c5b: $ff
    ld a, h                                       ; $7c5c: $7c
    or e                                          ; $7c5d: $b3
    db $e3                                        ; $7c5e: $e3
    ld a, [hl+]                                   ; $7c5f: $2a
    ld b, b                                       ; $7c60: $40
    ld b, c                                       ; $7c61: $41
    ld l, $5c                                     ; $7c62: $2e $5c
    push de                                       ; $7c64: $d5
    ld a, [hl+]                                   ; $7c65: $2a
    ld e, h                                       ; $7c66: $5c
    ld d, d                                       ; $7c67: $52
    ld b, b                                       ; $7c68: $40
    ld l, b                                       ; $7c69: $68
    jr nz, jr_0a7_7cb5                            ; $7c6a: $20 $49

    rst $38                                       ; $7c6c: $ff
    ld e, l                                       ; $7c6d: $5d
    inc d                                         ; $7c6e: $14
    call nz, $9a33                                ; $7c6f: $c4 $33 $9a
    inc a                                         ; $7c72: $3c
    sub b                                         ; $7c73: $90
    ld d, d                                       ; $7c74: $52
    inc c                                         ; $7c75: $0c
    ld e, d                                       ; $7c76: $5a
    rst $08                                       ; $7c77: $cf
    dec bc                                        ; $7c78: $0b
    ld [hl], b                                    ; $7c79: $70
    ld a, [hl+]                                   ; $7c7a: $2a
    ld a, b                                       ; $7c7b: $78
    ld a, [de]                                    ; $7c7c: $1a
    rst $38                                       ; $7c7d: $ff
    ld e, a                                       ; $7c7e: $5f
    inc a                                         ; $7c7f: $3c
    and b                                         ; $7c80: $a0
    inc [hl]                                      ; $7c81: $34

jr_0a7_7c82:
    ld c, $4c                                     ; $7c82: $0e $4c
    ld c, h                                       ; $7c84: $4c
    ld d, h                                       ; $7c85: $54
    and [hl]                                      ; $7c86: $a6
    inc de                                        ; $7c87: $13
    inc a                                         ; $7c88: $3c
    ld b, h                                       ; $7c89: $44
    ld b, b                                       ; $7c8a: $40
    inc e                                         ; $7c8b: $1c
    rst $38                                       ; $7c8c: $ff
    ld [hl], e                                    ; $7c8d: $73

jr_0a7_7c8e:
    rst $38                                       ; $7c8e: $ff
    ld l, h                                       ; $7c8f: $6c
    jr z, jr_0a7_7c82                             ; $7c90: $28 $f0

    ld e, d                                       ; $7c92: $5a
    db $f4                                        ; $7c93: $f4
    inc a                                         ; $7c94: $3c
    and $6c                                       ; $7c95: $e6 $6c
    ld b, b                                       ; $7c97: $40
    inc de                                        ; $7c98: $13
    ld a, b                                       ; $7c99: $78
    sbc d                                         ; $7c9a: $9a
    inc c                                         ; $7c9b: $0c
    inc [hl]                                      ; $7c9c: $34
    add b                                         ; $7c9d: $80
    add h                                         ; $7c9e: $84
    rst $38                                       ; $7c9f: $ff
    db $e4                                        ; $7ca0: $e4
    ld a, [hl+]                                   ; $7ca1: $2a
    ld a, [c]                                     ; $7ca2: $f2
    ld a, [hl-]                                   ; $7ca3: $3a
    ccf                                           ; $7ca4: $3f
    inc hl                                        ; $7ca5: $23
    db $fc                                        ; $7ca6: $fc
    ld d, e                                       ; $7ca7: $53
    ld l, b                                       ; $7ca8: $68
    dec hl                                        ; $7ca9: $2b
    ld [hl], b                                    ; $7caa: $70
    add hl, sp                                    ; $7cab: $39
    db $f4                                        ; $7cac: $f4
    ld d, c                                       ; $7cad: $51
    inc c                                         ; $7cae: $0c
    add hl, sp                                    ; $7caf: $39
    rst $38                                       ; $7cb0: $ff
    ld sp, hl                                     ; $7cb1: $f9
    sub e                                         ; $7cb2: $93
    dec sp                                        ; $7cb3: $3b
    inc b                                         ; $7cb4: $04

jr_0a7_7cb5:
    ld b, b                                       ; $7cb5: $40
    ld b, l                                       ; $7cb6: $45
    rst $38                                       ; $7cb7: $ff
    db $10                                        ; $7cb8: $10
    cp h                                          ; $7cb9: $bc
    inc sp                                        ; $7cba: $33
    ld h, b                                       ; $7cbb: $60
    dec de                                        ; $7cbc: $1b
    ld c, b                                       ; $7cbd: $48
    jr c, jr_0a7_7d0c                             ; $7cbe: $38 $4c

    jr @+$01                                      ; $7cc0: $18 $ff

    rst $10                                       ; $7cc2: $d7
    adc h                                         ; $7cc3: $8c
    inc [hl]                                      ; $7cc4: $34
    ld c, h                                       ; $7cc5: $4c
    ld l, c                                       ; $7cc6: $69
    ld d, e                                       ; $7cc7: $53
    add h                                         ; $7cc8: $84
    dec c                                         ; $7cc9: $0d
    sbc h                                         ; $7cca: $9c
    ld d, c                                       ; $7ccb: $51
    call nc, $8e0c                                ; $7ccc: $d4 $0c $8e
    dec [hl]                                      ; $7ccf: $35
    ld a, e                                       ; $7cd0: $7b
    ld d, $ff                                     ; $7cd1: $16 $ff
    pop af                                        ; $7cd3: $f1
    dec [hl]                                      ; $7cd4: $35
    jr z, @+$26                                   ; $7cd5: $28 $24

    jr jr_0a7_7d4b                                ; $7cd7: $18 $72

    sub b                                         ; $7cd9: $90
    inc sp                                        ; $7cda: $33
    ld hl, sp+$1d                                 ; $7cdb: $f8 $1d
    jr nc, @+$28                                  ; $7cdd: $30 $26

    ld d, a                                       ; $7cdf: $57
    inc d                                         ; $7ce0: $14
    ei                                            ; $7ce1: $fb
    inc l                                         ; $7ce2: $2c
    rst $38                                       ; $7ce3: $ff
    add hl, bc                                    ; $7ce4: $09
    jr z, jr_0a7_7cf8                             ; $7ce5: $28 $11

    stop                                          ; $7ce7: $10 $00
    ld a, d                                       ; $7ce9: $7a
    add e                                         ; $7cea: $83
    dec a                                         ; $7ceb: $3d
    scf                                           ; $7cec: $37
    push bc                                       ; $7ced: $c5
    rst $10                                       ; $7cee: $d7
    add h                                         ; $7cef: $84
    ret nc                                        ; $7cf0: $d0

    ld d, $d8                                     ; $7cf1: $16 $d8
    ld l, $ff                                     ; $7cf3: $2e $ff
    ld [hl], b                                    ; $7cf5: $70
    inc d                                         ; $7cf6: $14
    or c                                          ; $7cf7: $b1

jr_0a7_7cf8:
    ld h, $ea                                     ; $7cf8: $26 $ea
    ld d, $f1                                     ; $7cfa: $16 $f1
    inc a                                         ; $7cfc: $3c
    sbc a                                         ; $7cfd: $9f
    adc h                                         ; $7cfe: $8c
    ld c, b                                       ; $7cff: $48
    inc a                                         ; $7d00: $3c
    ldh [$66], a                                  ; $7d01: $e0 $66
    call c, $ff4d                                 ; $7d03: $dc $4d $ff
    ldh [$15], a                                  ; $7d06: $e0 $15
    ld b, e                                       ; $7d08: $43
    and b                                         ; $7d09: $a0

jr_0a7_7d0a:
    add sp, $3c                                   ; $7d0a: $e8 $3c

jr_0a7_7d0c:
    sbc d                                         ; $7d0c: $9a
    ld d, l                                       ; $7d0d: $55
    ld l, b                                       ; $7d0e: $68
    ld e, [hl]                                    ; $7d0f: $5e
    ldh [rNR44], a                                ; $7d10: $e0 $23
    pop bc                                        ; $7d12: $c1
    ld e, [hl]                                    ; $7d13: $5e
    ld d, h                                       ; $7d14: $54
    ld h, d                                       ; $7d15: $62
    rst $38                                       ; $7d16: $ff
    inc c                                         ; $7d17: $0c
    daa                                           ; $7d18: $27
    ld b, h                                       ; $7d19: $44
    dec hl                                        ; $7d1a: $2b
    or h                                          ; $7d1b: $b4
    daa                                           ; $7d1c: $27
    ld c, $37                                     ; $7d1d: $0e $37
    ld a, b                                       ; $7d1f: $78
    ld b, [hl]                                    ; $7d20: $46
    ld e, a                                       ; $7d21: $5f
    dec hl                                        ; $7d22: $2b
    ld l, l                                       ; $7d23: $6d
    ld c, $a0                                     ; $7d24: $0e $a0
    ld e, c                                       ; $7d26: $59
    rst $38                                       ; $7d27: $ff
    db $10                                        ; $7d28: $10
    ld d, b                                       ; $7d29: $50
    jp $dc29                                      ; $7d2a: $c3 $29 $dc


    ld a, e                                       ; $7d2d: $7b
    db $db                                        ; $7d2e: $db
    ld h, e                                       ; $7d2f: $63
    add c                                         ; $7d30: $81
    inc l                                         ; $7d31: $2c
    dec b                                         ; $7d32: $05
    ld [hl], h                                    ; $7d33: $74
    nop                                           ; $7d34: $00
    ld h, d                                       ; $7d35: $62
    sub h                                         ; $7d36: $94

jr_0a7_7d37:
    jr z, jr_0a7_7d37                             ; $7d37: $28 $fe

    ld de, $7032                                  ; $7d39: $11 $32 $70
    ld e, b                                       ; $7d3c: $58
    dec bc                                        ; $7d3d: $0b
    inc [hl]                                      ; $7d3e: $34
    rla                                           ; $7d3f: $17
    cpl                                           ; $7d40: $2f
    jp z, Jump_0a7_6457                           ; $7d41: $ca $57 $64

    ld l, b                                       ; $7d44: $68
    ld [hl], e                                    ; $7d45: $73
    ld l, b                                       ; $7d46: $68
    jr nz, jr_0a7_7d49                            ; $7d47: $20 $00

jr_0a7_7d49:
    ld c, a                                       ; $7d49: $4f
    inc b                                         ; $7d4a: $04

jr_0a7_7d4b:
    ld bc, $00d0                                  ; $7d4b: $01 $d0 $00
    nop                                           ; $7d4e: $00
    ld c, $58                                     ; $7d4f: $0e $58
    db $10                                        ; $7d51: $10
    ld l, b                                       ; $7d52: $68
    dec l                                         ; $7d53: $2d
    ld e, b                                       ; $7d54: $58
    jr nc, jr_0a7_7d67                            ; $7d55: $30 $10

    rst $38                                       ; $7d57: $ff
    inc h                                         ; $7d58: $24
    ld [hl], b                                    ; $7d59: $70
    ld [bc], a                                    ; $7d5a: $02
    ld [hl], b                                    ; $7d5b: $70
    inc d                                         ; $7d5c: $14
    ld d, b                                       ; $7d5d: $50
    dec a                                         ; $7d5e: $3d
    ld b, b                                       ; $7d5f: $40
    ld l, [hl]                                    ; $7d60: $6e
    ld [hl], b                                    ; $7d61: $70
    ld d, b                                       ; $7d62: $50
    jr nc, jr_0a7_7da5                            ; $7d63: $30 $40

    and b                                         ; $7d65: $a0
    ld a, l                                       ; $7d66: $7d

jr_0a7_7d67:
    ld h, b                                       ; $7d67: $60
    rst $38                                       ; $7d68: $ff
    dec bc                                        ; $7d69: $0b
    add b                                         ; $7d6a: $80
    or h                                          ; $7d6b: $b4
    jr z, @+$06                                   ; $7d6c: $28 $04

    jr c, jr_0a7_7dac                             ; $7d6e: $38 $3c

    adc b                                         ; $7d70: $88
    jr nz, jr_0a7_7dbb                            ; $7d71: $20 $48

    or d                                          ; $7d73: $b2
    ld l, b                                       ; $7d74: $68
    db $dd                                        ; $7d75: $dd
    ld d, b                                       ; $7d76: $50
    nop                                           ; $7d77: $00
    ld hl, $baff                                  ; $7d78: $21 $ff $ba
    jr z, jr_0a7_7d9b                             ; $7d7b: $28 $1e

    add hl, hl                                    ; $7d7d: $29
    dec h                                         ; $7d7e: $25
    ld c, c                                       ; $7d7f: $49
    push hl                                       ; $7d80: $e5
    ld c, b                                       ; $7d81: $48
    ld a, [hl]                                    ; $7d82: $7e
    ld a, b                                       ; $7d83: $78

jr_0a7_7d84:
    db $10                                        ; $7d84: $10
    ld d, c                                       ; $7d85: $51
    ld [c], a                                     ; $7d86: $e2
    jr jr_0a7_7d0a                                ; $7d87: $18 $81

    ld h, c                                       ; $7d89: $61
    ld l, l                                       ; $7d8a: $6d
    nop                                           ; $7d8b: $00
    ld e, h                                       ; $7d8c: $5c
    inc b                                         ; $7d8d: $04
    ld bc, $0080                                  ; $7d8e: $01 $80 $00
    ld bc, $0b28                                  ; $7d91: $01 $28 $0b
    nop                                           ; $7d94: $00
    db $10                                        ; $7d95: $10
    ld c, b                                       ; $7d96: $48
    add hl, bc                                    ; $7d97: $09
    add hl, bc                                    ; $7d98: $09
    rst $38                                       ; $7d99: $ff
    inc de                                        ; $7d9a: $13

jr_0a7_7d9b:
    ld [$4020], sp                                ; $7d9b: $08 $20 $40
    inc h                                         ; $7d9e: $24
    jr nz, jr_0a7_7da5                            ; $7d9f: $20 $04

    jr nc, @+$26                                  ; $7da1: $30 $24

jr_0a7_7da3:
    jr nz, jr_0a7_7da9                            ; $7da3: $20 $04

jr_0a7_7da5:
    ld c, b                                       ; $7da5: $48
    ld b, a                                       ; $7da6: $47
    db $10                                        ; $7da7: $10
    inc b                                         ; $7da8: $04

jr_0a7_7da9:
    ld b, b                                       ; $7da9: $40
    rst $18                                       ; $7daa: $df
    inc bc                                        ; $7dab: $03

jr_0a7_7dac:
    and b                                         ; $7dac: $a0
    inc hl                                        ; $7dad: $23
    sbc b                                         ; $7dae: $98
    add hl, bc                                    ; $7daf: $09
    ld [hl], d                                    ; $7db0: $72
    nop                                           ; $7db1: $00
    inc b                                         ; $7db2: $04
    ld h, b                                       ; $7db3: $60
    inc de                                        ; $7db4: $13

jr_0a7_7db5:
    ld l, b                                       ; $7db5: $68
    ld e, h                                       ; $7db6: $5c
    ld c, b                                       ; $7db7: $48
    cp c                                          ; $7db8: $b9
    jr nz, @+$01                                  ; $7db9: $20 $ff

jr_0a7_7dbb:
    inc de                                        ; $7dbb: $13
    ld d, b                                       ; $7dbc: $50
    ret c                                         ; $7dbd: $d8

    ld h, b                                       ; $7dbe: $60
    jp hl                                         ; $7dbf: $e9


    ld [hl], b                                    ; $7dc0: $70
    or $48                                        ; $7dc1: $f6 $48
    ld a, [$7410]                                 ; $7dc3: $fa $10 $74
    jr z, @-$34                                   ; $7dc6: $28 $ca

    jr nz, jr_0a7_7dcc                            ; $7dc8: $20 $02

    ld a, b                                       ; $7dca: $78
    add hl, sp                                    ; $7dcb: $39

jr_0a7_7dcc:
    nop                                           ; $7dcc: $00
    inc b                                         ; $7dcd: $04
    inc b                                         ; $7dce: $04
    ld b, b                                       ; $7dcf: $40
    ld h, c                                       ; $7dd0: $61
    ld d, b                                       ; $7dd1: $50
    db $ec                                        ; $7dd2: $ec
    jr jr_0a7_7dde                                ; $7dd3: $18 $09

    add hl, bc                                    ; $7dd5: $09
    inc b                                         ; $7dd6: $04
    jr z, @+$01                                   ; $7dd7: $28 $ff

    ld b, b                                       ; $7dd9: $40
    jr nz, jr_0a7_7da3                            ; $7dda: $20 $c7

    jr nz, jr_0a7_7e1e                            ; $7ddc: $20 $40

jr_0a7_7dde:
    add hl, sp                                    ; $7dde: $39
    ld l, [hl]                                    ; $7ddf: $6e
    jr c, @+$0c                                   ; $7de0: $38 $0a

    ld e, b                                       ; $7de2: $58
    ld a, h                                       ; $7de3: $7c
    add hl, de                                    ; $7de4: $19
    ld b, d                                       ; $7de5: $42
    ld hl, $30f0                                  ; $7de6: $21 $f0 $30
    rst $38                                       ; $7de9: $ff
    adc d                                         ; $7dea: $8a
    jr nc, jr_0a7_7d84                            ; $7deb: $30 $97

    jr jr_0a7_7e1d                                ; $7ded: $18 $2e

    ld d, b                                       ; $7def: $50
    ld [hl], h                                    ; $7df0: $74
    jr nz, jr_0a7_7db5                            ; $7df1: $20 $c2

    add c                                         ; $7df3: $81
    ret nc                                        ; $7df4: $d0

    ld d, b                                       ; $7df5: $50
    sub [hl]                                      ; $7df6: $96
    ld b, c                                       ; $7df7: $41
    ld a, $58                                     ; $7df8: $3e $58
    rst $38                                       ; $7dfa: $ff
    ld [hl], b                                    ; $7dfb: $70
    jr z, @-$0e                                   ; $7dfc: $28 $f0

    add hl, sp                                    ; $7dfe: $39
    push hl                                       ; $7dff: $e5
    jr z, jr_0a7_7e7d                             ; $7e00: $28 $7b

    ld c, c                                       ; $7e02: $49
    ld h, h                                       ; $7e03: $64
    jr nz, jr_0a7_7e0a                            ; $7e04: $20 $04

    db $10                                        ; $7e06: $10
    add sp, $29                                   ; $7e07: $e8 $29
    sub b                                         ; $7e09: $90

jr_0a7_7e0a:
    and c                                         ; $7e0a: $a1
    rst $38                                       ; $7e0b: $ff
    ld h, b                                       ; $7e0c: $60
    nop                                           ; $7e0d: $00
    jr z, jr_0a7_7e30                             ; $7e0e: $28 $20

    cp a                                          ; $7e10: $bf
    ld sp, $1238                                  ; $7e11: $31 $38 $12
    inc [hl]                                      ; $7e14: $34
    ld sp, $1084                                  ; $7e15: $31 $84 $10
    inc b                                         ; $7e18: $04
    ld c, b                                       ; $7e19: $48
    ccf                                           ; $7e1a: $3f
    ld b, d                                       ; $7e1b: $42
    rst $38                                       ; $7e1c: $ff

jr_0a7_7e1d:
    ld a, d                                       ; $7e1d: $7a

jr_0a7_7e1e:
    ld a, [de]                                    ; $7e1e: $1a
    ld b, d                                       ; $7e1f: $42
    ld e, d                                       ; $7e20: $5a
    add [hl]                                      ; $7e21: $86
    ld l, c                                       ; $7e22: $69
    rla                                           ; $7e23: $17
    ld [hl+], a                                   ; $7e24: $22
    db $10                                        ; $7e25: $10
    ld b, b                                       ; $7e26: $40

jr_0a7_7e27:
    sbc [hl]                                      ; $7e27: $9e
    ld h, c                                       ; $7e28: $61
    sub c                                         ; $7e29: $91
    ld d, d                                       ; $7e2a: $52
    pop de                                        ; $7e2b: $d1
    jr @+$01                                      ; $7e2c: $18 $ff

    inc h                                         ; $7e2e: $24
    ld c, c                                       ; $7e2f: $49

jr_0a7_7e30:
    ld b, h                                       ; $7e30: $44
    jr nz, @+$0a                                  ; $7e31: $20 $08

    add hl, bc                                    ; $7e33: $09
    inc b                                         ; $7e34: $04
    db $10                                        ; $7e35: $10
    db $eb                                        ; $7e36: $eb
    ld a, [hl-]                                   ; $7e37: $3a
    jr nz, jr_0a7_7e72                            ; $7e38: $20 $38

    ld hl, $fd10                                  ; $7e3a: $21 $10 $fd
    ld [bc], a                                    ; $7e3d: $02
    rst $38                                       ; $7e3e: $ff
    inc b                                         ; $7e3f: $04
    stop                                          ; $7e40: $10 $00
    add hl, sp                                    ; $7e42: $39
    inc h                                         ; $7e43: $24
    sub e                                         ; $7e44: $93
    ld c, b                                       ; $7e45: $48
    jr nc, jr_0a7_7e4c                            ; $7e46: $30 $04

    jr nz, @+$46                                  ; $7e48: $20 $44

    ld c, e                                       ; $7e4a: $4b
    dec e                                         ; $7e4b: $1d

jr_0a7_7e4c:
    ld [hl], c                                    ; $7e4c: $71
    ccf                                           ; $7e4d: $3f
    ld a, [de]                                    ; $7e4e: $1a

jr_0a7_7e4f:
    rst $38                                       ; $7e4f: $ff
    ld e, b                                       ; $7e50: $58
    jr jr_0a7_7e84                                ; $7e51: $18 $31

    jr nz, jr_0a7_7e5c                            ; $7e53: $20 $07

    jr z, @+$63                                   ; $7e55: $28 $61

    add hl, hl                                    ; $7e57: $29
    db $e4                                        ; $7e58: $e4

jr_0a7_7e59:
    jr z, @+$72                                   ; $7e59: $28 $70

    add hl, hl                                    ; $7e5b: $29

jr_0a7_7e5c:
    db $f4                                        ; $7e5c: $f4
    jr z, jr_0a7_7e7f                             ; $7e5d: $28 $20

    jr nc, jr_0a7_7e59                            ; $7e5f: $30 $f8

    ld c, [hl]                                    ; $7e61: $4e
    inc hl                                        ; $7e62: $23
    ld l, b                                       ; $7e63: $68
    ld c, c                                       ; $7e64: $49
    call nz, Call_000_2848                        ; $7e65: $c4 $48 $28
    ld c, c                                       ; $7e68: $49
    call c, Call_0a7_6d0b                         ; $7e69: $dc $0b $6d
    nop                                           ; $7e6c: $00
    ld d, c                                       ; $7e6d: $51
    inc b                                         ; $7e6e: $04
    ld bc, $0080                                  ; $7e6f: $01 $80 $00

jr_0a7_7e72:
    ld bc, $0908                                  ; $7e72: $01 $08 $09
    add hl, bc                                    ; $7e75: $09
    add hl, bc                                    ; $7e76: $09
    inc b                                         ; $7e77: $04
    ld [$10f1], sp                                ; $7e78: $08 $f1 $10
    jr z, jr_0a7_7e8c                             ; $7e7b: $28 $0f

jr_0a7_7e7d:
    nop                                           ; $7e7d: $00
    inc bc                                        ; $7e7e: $03

jr_0a7_7e7f:
    db $10                                        ; $7e7f: $10
    jr nz, @+$1a                                  ; $7e80: $20 $18

    inc b                                         ; $7e82: $04
    inc b                                         ; $7e83: $04

jr_0a7_7e84:
    add hl, bc                                    ; $7e84: $09
    inc d                                         ; $7e85: $14
    jr nz, @+$01                                  ; $7e86: $20 $ff

    jr nc, @+$4a                                  ; $7e88: $30 $48

    db $10                                        ; $7e8a: $10
    ld c, b                                       ; $7e8b: $48

jr_0a7_7e8c:
    ccf                                           ; $7e8c: $3f
    jr nz, jr_0a7_7eb9                            ; $7e8d: $20 $2a

    nop                                           ; $7e8f: $00
    ld e, d                                       ; $7e90: $5a
    ld h, b                                       ; $7e91: $60
    add hl, de                                    ; $7e92: $19
    jr z, @+$62                                   ; $7e93: $28 $60

    ld [$3857], sp                                ; $7e95: $08 $57 $38
    rst $38                                       ; $7e98: $ff
    ld [$2348], sp                                ; $7e99: $08 $48 $23
    jr c, jr_0a7_7e27                             ; $7e9c: $38 $89

    nop                                           ; $7e9e: $00
    sbc b                                         ; $7e9f: $98
    ld e, b                                       ; $7ea0: $58
    ld a, [hl]                                    ; $7ea1: $7e
    jr z, jr_0a7_7ea8                             ; $7ea2: $28 $04

Call_0a7_7ea4:
    jr z, jr_0a7_7ef8                             ; $7ea4: $28 $52

    jr jr_0a7_7eac                                ; $7ea6: $18 $04

jr_0a7_7ea8:
    jr nc, @+$01                                  ; $7ea8: $30 $ff

    ld a, $10                                     ; $7eaa: $3e $10

jr_0a7_7eac:
    ld de, $6340                                  ; $7eac: $11 $40 $63
    db $10                                        ; $7eaf: $10
    ld l, $48                                     ; $7eb0: $2e $48
    call c, $7800                                 ; $7eb2: $dc $00 $78
    jr jr_0a7_7e4f                                ; $7eb5: $18 $98

    jr nc, jr_0a7_7eec                            ; $7eb7: $30 $33

jr_0a7_7eb9:
    jr nz, @+$01                                  ; $7eb9: $20 $ff

    db $10                                        ; $7ebb: $10
    adc b                                         ; $7ebc: $88
    inc b                                         ; $7ebd: $04
    db $10                                        ; $7ebe: $10
    jr nz, jr_0a7_7ee9                            ; $7ebf: $20 $28

    ld de, $0f28                                  ; $7ec1: $11 $28 $0f
    ld b, b                                       ; $7ec4: $40
    inc l                                         ; $7ec5: $2c
    add hl, sp                                    ; $7ec6: $39
    dec b                                         ; $7ec7: $05
    ld c, b                                       ; $7ec8: $48
    add hl, sp                                    ; $7ec9: $39
    jr z, @+$01                                   ; $7eca: $28 $ff

    ld b, [hl]                                    ; $7ecc: $46
    add hl, bc                                    ; $7ecd: $09
    ld l, [hl]                                    ; $7ece: $6e
    nop                                           ; $7ecf: $00

jr_0a7_7ed0:
    ld c, b                                       ; $7ed0: $48
    jr z, jr_0a7_7f17                             ; $7ed1: $28 $44

    add hl, hl                                    ; $7ed3: $29
    ld e, c                                       ; $7ed4: $59
    jr nc, jr_0a7_7f17                            ; $7ed5: $30 $40

jr_0a7_7ed7:
    add hl, sp                                    ; $7ed7: $39
    jr nz, jr_0a7_7efa                            ; $7ed8: $20 $20

    sbc e                                         ; $7eda: $9b
    nop                                           ; $7edb: $00
    rst $38                                       ; $7edc: $ff
    dec [hl]                                      ; $7edd: $35
    nop                                           ; $7ede: $00
    and d                                         ; $7edf: $a2
    ld [$4804], sp                                ; $7ee0: $08 $04 $48
    ld d, $39                                     ; $7ee3: $16 $39
    jp hl                                         ; $7ee5: $e9


    ld [$18b0], sp                                ; $7ee6: $08 $b0 $18

jr_0a7_7ee9:
    rst $20                                       ; $7ee9: $e7
    jr z, @-$30                                   ; $7eea: $28 $ce

jr_0a7_7eec:
    db $10                                        ; $7eec: $10
    rst $38                                       ; $7eed: $ff
    adc h                                         ; $7eee: $8c
    ld de, $3804                                  ; $7eef: $11 $04 $38
    ld [c], a                                     ; $7ef2: $e2
    ld [$5158], sp                                ; $7ef3: $08 $58 $51
    jr nz, jr_0a7_7f28                            ; $7ef6: $20 $30

jr_0a7_7ef8:
    or b                                          ; $7ef8: $b0
    add hl, hl                                    ; $7ef9: $29

jr_0a7_7efa:
    ld h, b                                       ; $7efa: $60

Call_0a7_7efb:
    jr jr_0a7_7ed0                                ; $7efb: $18 $d3

    ld sp, $ccff                                  ; $7efd: $31 $ff $cc

Jump_0a7_7f00:
    ld b, c                                       ; $7f00: $41
    ld a, l                                       ; $7f01: $7d
    ld e, c                                       ; $7f02: $59
    nop                                           ; $7f03: $00
    ld a, [de]                                    ; $7f04: $1a
    inc de                                        ; $7f05: $13
    ld l, b                                       ; $7f06: $68
    adc [hl]                                      ; $7f07: $8e
    ld e, c                                       ; $7f08: $59
    jp hl                                         ; $7f09: $e9


    ld b, c                                       ; $7f0a: $41
    ld [hl], e                                    ; $7f0b: $73
    ld sp, $39bc                                  ; $7f0c: $31 $bc $39
    rst $38                                       ; $7f0f: $ff
    ret nz                                        ; $7f10: $c0

    ld c, c                                       ; $7f11: $49
    or d                                          ; $7f12: $b2
    ld c, c                                       ; $7f13: $49
    adc [hl]                                      ; $7f14: $8e
    add hl, sp                                    ; $7f15: $39
    ret nz                                        ; $7f16: $c0

jr_0a7_7f17:
    ld b, c                                       ; $7f17: $41
    ld [hl], b                                    ; $7f18: $70
    jr z, jr_0a7_7ed7                             ; $7f19: $28 $bc

    ld b, c                                       ; $7f1b: $41
    ret nz                                        ; $7f1c: $c0

    ld c, c                                       ; $7f1d: $49
    or b                                          ; $7f1e: $b0
    ld sp, $08ff                                  ; $7f1f: $31 $ff $08
    add hl, hl                                    ; $7f22: $29
    ld hl, sp+$20                                 ; $7f23: $f8 $20
    ld [$d829], sp                                ; $7f25: $08 $29 $d8

jr_0a7_7f28:
    ld b, b                                       ; $7f28: $40
    ld a, c                                       ; $7f29: $79
    ld de, $3804                                  ; $7f2a: $11 $04 $38
    rrca                                          ; $7f2d: $0f
    ld l, b                                       ; $7f2e: $68
    inc e                                         ; $7f2f: $1c
    ld c, b                                       ; $7f30: $48
    rst $38                                       ; $7f31: $ff
    dec l                                         ; $7f32: $2d
    ld l, c                                       ; $7f33: $69
    sub h                                         ; $7f34: $94
    ld a, d                                       ; $7f35: $7a
    cpl                                           ; $7f36: $2f
    ld h, b                                       ; $7f37: $60
    db $eb                                        ; $7f38: $eb
    ld l, c                                       ; $7f39: $69
    inc c                                         ; $7f3a: $0c
    dec bc                                        ; $7f3b: $0b
    ld [hl], b                                    ; $7f3c: $70
    jr nc, @+$11                                  ; $7f3d: $30 $0f

    ld h, b                                       ; $7f3f: $60
    ld [hl], e                                    ; $7f40: $73
    ld [hl-], a                                   ; $7f41: $32
    ld hl, sp+$04                                 ; $7f42: $f8 $04
    ld b, b                                       ; $7f44: $40
    ret nz                                        ; $7f45: $c0

    ld c, c                                       ; $7f46: $49
    adc $1a                                       ; $7f47: $ce $1a
    dec e                                         ; $7f49: $1d
    ld c, b                                       ; $7f4a: $48
    adc l                                         ; $7f4b: $8d
    inc bc                                        ; $7f4c: $03
    ld a, $00                                     ; $7f4d: $3e $00
    ld d, c                                       ; $7f4f: $51
    inc b                                         ; $7f50: $04
    ld bc, $0080                                  ; $7f51: $01 $80 $00
    ld bc, $0908                                  ; $7f54: $01 $08 $09
    add hl, bc                                    ; $7f57: $09
    add hl, bc                                    ; $7f58: $09
    inc b                                         ; $7f59: $04
    ld [$10ff], sp                                ; $7f5a: $08 $ff $10
    jr z, jr_0a7_7f6e                             ; $7f5d: $28 $0f

    nop                                           ; $7f5f: $00
    inc bc                                        ; $7f60: $03
    db $10                                        ; $7f61: $10
    db $10                                        ; $7f62: $10
    ld b, b                                       ; $7f63: $40
    inc hl                                        ; $7f64: $23
    db $10                                        ; $7f65: $10
    add hl, bc                                    ; $7f66: $09
    jr nc, jr_0a7_7f99                            ; $7f67: $30 $30

    jr nz, jr_0a7_7f6e                            ; $7f69: $20 $03

    add b                                         ; $7f6b: $80
    rst $38                                       ; $7f6c: $ff
    inc hl                                        ; $7f6d: $23

jr_0a7_7f6e:
    ld d, b                                       ; $7f6e: $50
    ld l, d                                       ; $7f6f: $6a
    ld [hl], b                                    ; $7f70: $70
    ld b, b                                       ; $7f71: $40
    ld c, b                                       ; $7f72: $48
    halt                                          ; $7f73: $76
    nop                                           ; $7f74: $00
    ld a, [hl]                                    ; $7f75: $7e
    ld [$3804], sp                                ; $7f76: $08 $04 $38
    ld [hl+], a                                   ; $7f79: $22
    jr jr_0a7_7f80                                ; $7f7a: $18 $04

    jr nc, @+$01                                  ; $7f7c: $30 $ff

    inc l                                         ; $7f7e: $2c
    ld a, b                                       ; $7f7f: $78

jr_0a7_7f80:
    inc b                                         ; $7f80: $04
    sub b                                         ; $7f81: $90
    inc l                                         ; $7f82: $2c
    ld c, b                                       ; $7f83: $48
    ret c                                         ; $7f84: $d8

    ld l, b                                       ; $7f85: $68
    rst $10                                       ; $7f86: $d7
    db $10                                        ; $7f87: $10
    ld d, l                                       ; $7f88: $55
    ld b, b                                       ; $7f89: $40
    ldh a, [rNR23]                                ; $7f8a: $f0 $18
    halt                                          ; $7f8c: $76
    ld c, b                                       ; $7f8d: $48
    rst $38                                       ; $7f8e: $ff
    ld [bc], a                                    ; $7f8f: $02
    ld e, b                                       ; $7f90: $58
    call z, $fc70                                 ; $7f91: $cc $70 $fc
    ld c, b                                       ; $7f94: $48
    add hl, hl                                    ; $7f95: $29
    ld de, $793c                                  ; $7f96: $11 $3c $79

jr_0a7_7f99:
    ld [c], a                                     ; $7f99: $e2
    ld l, b                                       ; $7f9a: $68
    xor b                                         ; $7f9b: $a8
    ld e, b                                       ; $7f9c: $58
    ld l, b                                       ; $7f9d: $68
    ld c, c                                       ; $7f9e: $49
    rst $38                                       ; $7f9f: $ff
    ld l, [hl]                                    ; $7fa0: $6e
    ld de, $50b8                                  ; $7fa1: $11 $b8 $50
    ld e, h                                       ; $7fa4: $5c
    ld d, b                                       ; $7fa5: $50
    ld c, [hl]                                    ; $7fa6: $4e
    jr nz, jr_0a7_7fb7                            ; $7fa7: $20 $0e

    add hl, sp                                    ; $7fa9: $39
    sbc h                                         ; $7faa: $9c
    ld bc, $099e                                  ; $7fab: $01 $9e $09
    inc b                                         ; $7fae: $04
    ld [hl], b                                    ; $7faf: $70
    rst $38                                       ; $7fb0: $ff
    jr @+$0a                                      ; $7fb1: $18 $08

    inc b                                         ; $7fb3: $04
    jr nz, @+$52                                  ; $7fb4: $20 $50

    ld e, c                                       ; $7fb6: $59

jr_0a7_7fb7:
    sub e                                         ; $7fb7: $93
    ld d, c                                       ; $7fb8: $51
    ret z                                         ; $7fb9: $c8

    ld sp, $2155                                  ; $7fba: $31 $55 $21
    ret c                                         ; $7fbd: $d8

    add hl, hl                                    ; $7fbe: $29
    ld h, h                                       ; $7fbf: $64
    ld b, c                                       ; $7fc0: $41
    ld hl, sp+$4c                                 ; $7fc1: $f8 $4c
    ld e, b                                       ; $7fc3: $58
    dec c                                         ; $7fc4: $0d
    ld [hl+], a                                   ; $7fc5: $22
    ld h, e                                       ; $7fc6: $63
    jr nz, @+$1e                                  ; $7fc7: $20 $1c

    ld a, [hl+]                                   ; $7fc9: $2a
    rrca                                          ; $7fca: $0f
    ld c, b                                       ; $7fcb: $48
    inc b                                         ; $7fcc: $04

    db $12, $00, $47, $04, $01, $68, $00, $00, $00, $04, $48, $03, $78, $23, $08, $ff
    db $04, $28, $0e, $08, $3b, $b0, $4b, $10, $05, $18, $5f, $50, $10, $78, $48, $40
    db $80, $53, $60, $04

    rst $38                                       ; $7ff1: $ff
    ld a, a                                       ; $7ff2: $7f
    rra                                           ; $7ff3: $1f
    nop                                           ; $7ff4: $00
    ld c, $00                                     ; $7ff5: $0e $00
    nop                                           ; $7ff7: $00
    nop                                           ; $7ff8: $00
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
