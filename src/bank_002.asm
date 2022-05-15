; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    db $02

    ld l, h                                       ; $4001: $6c
    ld e, [hl]                                    ; $4002: $5e

    db $7e, $7d, $b8, $4b

    inc c                                         ; $4007: $0c
    ld h, d                                       ; $4008: $62

    db $72, $50, $80, $5e, $a8, $49, $d6, $4b, $0a, $4c

    ld d, [hl]                                    ; $4013: $56
    ld d, b                                       ; $4014: $50
    rst $20                                       ; $4015: $e7
    ld c, e                                       ; $4016: $4b

    db $f8, $4b, $00, $4c, $59, $50

    ld c, d                                       ; $401d: $4a
    ld d, b                                       ; $401e: $50
    and a                                         ; $401f: $a7
    ld d, b                                       ; $4020: $50
    cp d                                          ; $4021: $ba
    ld d, b                                       ; $4022: $50
    ret z                                         ; $4023: $c8

    ld d, b                                       ; $4024: $50
    and d                                         ; $4025: $a2
    ld d, c                                       ; $4026: $51
    rst $00                                       ; $4027: $c7
    ld c, e                                       ; $4028: $4b
    rra                                           ; $4029: $1f
    ld d, d                                       ; $402a: $52

    db $38, $54

    adc b                                         ; $402d: $88
    ld d, h                                       ; $402e: $54
    or h                                          ; $402f: $b4
    ld d, h                                       ; $4030: $54
    rst $10                                       ; $4031: $d7
    ld c, [hl]                                    ; $4032: $4e
    call c, $8254                                 ; $4033: $dc $54 $82
    ld d, d                                       ; $4036: $52
    add d                                         ; $4037: $82
    ld d, d                                       ; $4038: $52
    rst $00                                       ; $4039: $c7
    ld c, e                                       ; $403a: $4b
    add d                                         ; $403b: $82
    ld d, d                                       ; $403c: $52
    xor b                                         ; $403d: $a8
    ld c, e                                       ; $403e: $4b
    or h                                          ; $403f: $b4
    ld d, h                                       ; $4040: $54
    or h                                          ; $4041: $b4
    ld d, h                                       ; $4042: $54
    or h                                          ; $4043: $b4
    ld d, h                                       ; $4044: $54
    ld l, a                                       ; $4045: $6f
    ld d, l                                       ; $4046: $55
    ld h, a                                       ; $4047: $67
    ld d, b                                       ; $4048: $50
    add sp, $54                                   ; $4049: $e8 $54
    db $f4                                        ; $404b: $f4
    ld d, h                                       ; $404c: $54
    nop                                           ; $404d: $00
    ld d, l                                       ; $404e: $55
    sub d                                         ; $404f: $92
    ld d, d                                       ; $4050: $52
    adc d                                         ; $4051: $8a
    ld d, d                                       ; $4052: $52
    and d                                         ; $4053: $a2
    ld d, d                                       ; $4054: $52
    or b                                          ; $4055: $b0
    ld c, e                                       ; $4056: $4b
    jr c, jr_002_40ad                             ; $4057: $38 $54

    ld c, h                                       ; $4059: $4c
    ld d, h                                       ; $405a: $54
    ld b, b                                       ; $405b: $40
    ld d, h                                       ; $405c: $54
    add b                                         ; $405d: $80
    ld d, l                                       ; $405e: $55
    ret nc                                        ; $405f: $d0

    ld d, h                                       ; $4060: $54

    db $a5, $4e

    cp l                                          ; $4063: $bd
    ld d, h                                       ; $4064: $54
    sbc h                                         ; $4065: $9c
    ld d, h                                       ; $4066: $54
    sbc h                                         ; $4067: $9c
    ld d, h                                       ; $4068: $54
    xor b                                         ; $4069: $a8
    ld d, h                                       ; $406a: $54
    xor b                                         ; $406b: $a8
    ld d, h                                       ; $406c: $54
    ld a, h                                       ; $406d: $7c
    ld d, h                                       ; $406e: $54
    ld [hl], b                                    ; $406f: $70
    ld d, h                                       ; $4070: $54
    ld e, b                                       ; $4071: $58
    ld d, h                                       ; $4072: $54
    ld h, h                                       ; $4073: $64
    ld d, h                                       ; $4074: $54
    inc c                                         ; $4075: $0c
    ld d, l                                       ; $4076: $55
    inc l                                         ; $4077: $2c
    ld d, l                                       ; $4078: $55
    ld [hl+], a                                   ; $4079: $22
    ld d, b                                       ; $407a: $50
    inc l                                         ; $407b: $2c
    ld d, b                                       ; $407c: $50
    ld [hl], $50                                  ; $407d: $36 $50
    ld b, b                                       ; $407f: $40
    ld d, b                                       ; $4080: $50
    inc [hl]                                      ; $4081: $34
    ld d, l                                       ; $4082: $55
    inc l                                         ; $4083: $2c
    ld d, l                                       ; $4084: $55
    inc [hl]                                      ; $4085: $34
    ld d, l                                       ; $4086: $55
    inc l                                         ; $4087: $2c
    ld d, l                                       ; $4088: $55
    inc l                                         ; $4089: $2c
    ld d, l                                       ; $408a: $55
    inc [hl]                                      ; $408b: $34
    ld d, l                                       ; $408c: $55
    inc l                                         ; $408d: $2c
    ld d, l                                       ; $408e: $55
    inc [hl]                                      ; $408f: $34
    ld d, l                                       ; $4090: $55
    inc l                                         ; $4091: $2c
    ld d, l                                       ; $4092: $55
    inc h                                         ; $4093: $24
    ld d, l                                       ; $4094: $55
    inc e                                         ; $4095: $1c
    ld d, l                                       ; $4096: $55
    inc c                                         ; $4097: $0c
    ld d, l                                       ; $4098: $55
    inc d                                         ; $4099: $14
    ld d, l                                       ; $409a: $55
    sub b                                         ; $409b: $90
    ld d, h                                       ; $409c: $54
    add hl, de                                    ; $409d: $19
    ld d, b                                       ; $409e: $50
    add hl, de                                    ; $409f: $19
    ld d, b                                       ; $40a0: $50
    add hl, de                                    ; $40a1: $19
    ld d, b                                       ; $40a2: $50
    add hl, de                                    ; $40a3: $19
    ld d, b                                       ; $40a4: $50
    db $c2                                        ; $40a5: $c2
    ld d, d                                       ; $40a6: $52

    db $3b, $55

    ld b, h                                       ; $40a9: $44
    ld d, [hl]                                    ; $40aa: $56
    ld c, l                                       ; $40ab: $4d
    ld d, [hl]                                    ; $40ac: $56

jr_002_40ad:
    ld d, h                                       ; $40ad: $54
    ld d, [hl]                                    ; $40ae: $56
    add b                                         ; $40af: $80
    ld d, b                                       ; $40b0: $50
    ld d, h                                       ; $40b1: $54
    ld d, l                                       ; $40b2: $55
    ld e, h                                       ; $40b3: $5c
    ld d, [hl]                                    ; $40b4: $56
    ld h, d                                       ; $40b5: $62
    ld d, [hl]                                    ; $40b6: $56
    add e                                         ; $40b7: $83
    ld c, [hl]                                    ; $40b8: $4e
    rra                                           ; $40b9: $1f
    ld d, e                                       ; $40ba: $53
    sbc d                                         ; $40bb: $9a
    ld d, d                                       ; $40bc: $52
    xor d                                         ; $40bd: $aa
    ld d, d                                       ; $40be: $52
    or d                                          ; $40bf: $b2
    ld d, d                                       ; $40c0: $52
    cp d                                          ; $40c1: $ba
    ld d, d                                       ; $40c2: $52
    add l                                         ; $40c3: $85
    ld d, b                                       ; $40c4: $50
    add hl, hl                                    ; $40c5: $29
    ld d, [hl]                                    ; $40c6: $56
    cpl                                           ; $40c7: $2f
    ld d, [hl]                                    ; $40c8: $56
    add hl, sp                                    ; $40c9: $39
    ld d, [hl]                                    ; $40ca: $56

    db $9d, $56

    and l                                         ; $40cd: $a5
    ld d, [hl]                                    ; $40ce: $56
    xor h                                         ; $40cf: $ac
    ld d, [hl]                                    ; $40d0: $56
    cp [hl]                                       ; $40d1: $be
    ld d, [hl]                                    ; $40d2: $56
    cp [hl]                                       ; $40d3: $be
    ld d, [hl]                                    ; $40d4: $56
    adc a                                         ; $40d5: $8f
    ld c, [hl]                                    ; $40d6: $4e
    sbc d                                         ; $40d7: $9a
    ld c, [hl]                                    ; $40d8: $4e
    ld l, b                                       ; $40d9: $68
    ld d, e                                       ; $40da: $53
    ld l, a                                       ; $40db: $6f
    ld d, e                                       ; $40dc: $53
    xor l                                         ; $40dd: $ad
    ld e, a                                       ; $40de: $5f
    ld a, [hl+]                                   ; $40df: $2a
    ld h, b                                       ; $40e0: $60
    ld b, e                                       ; $40e1: $43
    ld h, b                                       ; $40e2: $60
    cp l                                          ; $40e3: $bd
    ld h, c                                       ; $40e4: $61
    ldh [$61], a                                  ; $40e5: $e0 $61
    sbc [hl]                                      ; $40e7: $9e
    ld d, e                                       ; $40e8: $53
    ld l, h                                       ; $40e9: $6c
    ld e, [hl]                                    ; $40ea: $5e
    ld l, h                                       ; $40eb: $6c
    ld e, [hl]                                    ; $40ec: $5e
    ld l, h                                       ; $40ed: $6c
    ld e, [hl]                                    ; $40ee: $5e
    ld l, h                                       ; $40ef: $6c
    ld e, [hl]                                    ; $40f0: $5e
    ld l, h                                       ; $40f1: $6c
    ld e, [hl]                                    ; $40f2: $5e
    ld l, h                                       ; $40f3: $6c
    ld e, [hl]                                    ; $40f4: $5e
    ld l, h                                       ; $40f5: $6c
    ld e, [hl]                                    ; $40f6: $5e

    db $ba, $7c, $19, $6e, $61, $6e, $7f, $6e, $7c, $76, $d1, $56

    ld a, [bc]                                    ; $4103: $0a
    ld a, a                                       ; $4104: $7f

    db $7a, $57, $9a, $57

    adc d                                         ; $4109: $8a
    ld d, a                                       ; $410a: $57

    db $31, $58, $e4, $58

    ld a, b                                       ; $410f: $78
    ld e, b                                       ; $4110: $58
    and a                                         ; $4111: $a7
    ld e, c                                       ; $4112: $59
    ld d, [hl]                                    ; $4113: $56
    ld e, d                                       ; $4114: $5a
    sub d                                         ; $4115: $92
    ld e, d                                       ; $4116: $5a
    sbc l                                         ; $4117: $9d
    ld e, d                                       ; $4118: $5a
    xor b                                         ; $4119: $a8
    ld e, d                                       ; $411a: $5a
    or h                                          ; $411b: $b4
    ld e, d                                       ; $411c: $5a
    inc l                                         ; $411d: $2c
    ld e, e                                       ; $411e: $5b
    ld h, d                                       ; $411f: $62
    ld e, e                                       ; $4120: $5b
    ld [hl], b                                    ; $4121: $70
    ld e, e                                       ; $4122: $5b

    db $c4, $56

    call nz, $c456                                ; $4125: $c4 $56 $c4
    ld d, [hl]                                    ; $4128: $56
    call nz, $c456                                ; $4129: $c4 $56 $c4
    ld d, [hl]                                    ; $412c: $56
    call nz, $c456                                ; $412d: $c4 $56 $c4
    ld d, [hl]                                    ; $4130: $56
    call nz, $c456                                ; $4131: $c4 $56 $c4
    ld d, [hl]                                    ; $4134: $56
    call nz, $c456                                ; $4135: $c4 $56 $c4
    ld d, [hl]                                    ; $4138: $56
    call nz, $c456                                ; $4139: $c4 $56 $c4
    ld d, [hl]                                    ; $413c: $56

    db $0e, $57

    call z, $eb5e                                 ; $413f: $cc $5e $eb
    ld e, [hl]                                    ; $4142: $5e
    inc d                                         ; $4143: $14
    ld e, a                                       ; $4144: $5f
    ld d, c                                       ; $4145: $51
    ld e, a                                       ; $4146: $5f
    ld a, c                                       ; $4147: $79
    ld e, a                                       ; $4148: $5f
    add a                                         ; $4149: $87
    ld c, b                                       ; $414a: $48

    db $31, $58

    inc [hl]                                      ; $414d: $34
    ld e, d                                       ; $414e: $5a
    ld [bc], a                                    ; $414f: $02
    ld e, e                                       ; $4150: $5b
    add a                                         ; $4151: $87
    ld c, b                                       ; $4152: $48
    sub a                                         ; $4153: $97
    ld c, b                                       ; $4154: $48
    ld e, e                                       ; $4155: $5b
    ld e, h                                       ; $4156: $5c
    rst $38                                       ; $4157: $ff
    ld e, e                                       ; $4158: $5b
    ld d, $5d                                     ; $4159: $16 $5d
    inc c                                         ; $415b: $0c
    ld e, [hl]                                    ; $415c: $5e
    sub e                                         ; $415d: $93
    ld c, c                                       ; $415e: $49
    push af                                       ; $415f: $f5
    ld e, c                                       ; $4160: $59

    db $29, $76, $57, $58, $ed, $6d

    sbc d                                         ; $4167: $9a
    ld h, b                                       ; $4168: $60
    pop bc                                        ; $4169: $c1
    ld h, b                                       ; $416a: $60
    ld hl, sp+$60                                 ; $416b: $f8 $60
    dec l                                         ; $416d: $2d
    ld h, c                                       ; $416e: $61
    jr @+$5a                                      ; $416f: $18 $58

    db $3f, $5b, $f8, $08, $f8, $08

    di                                            ; $4177: $f3
    dec c                                         ; $4178: $0d
    db $fc                                        ; $4179: $fc
    ld b, d                                       ; $417a: $42
    di                                            ; $417b: $f3
    dec c                                         ; $417c: $0d
    cp [hl]                                       ; $417d: $be
    inc b                                         ; $417e: $04
    db $fc                                        ; $417f: $fc
    ld b, d                                       ; $4180: $42
    and $04                                       ; $4181: $e6 $04
    db $fc                                        ; $4183: $fc
    ld b, d                                       ; $4184: $42
    and $04                                       ; $4185: $e6 $04
    ld hl, sp+$08                                 ; $4187: $f8 $08
    ld hl, sp+$08                                 ; $4189: $f8 $08

    db $00, $02, $01, $02, $02, $02, $03, $02, $04, $02, $05, $02, $06, $02, $07, $02
    db $ff, $10

    nop                                           ; $419d: $00
    ld [bc], a                                    ; $419e: $02
    ld bc, $0202                                  ; $419f: $01 $02 $02
    ld [bc], a                                    ; $41a2: $02
    rst $38                                       ; $41a3: $ff
    db $06                                        ; $41a4: $06

    db $01, $04, $02, $04, $03, $04, $04, $04, $ff, $08

    ld b, $04                                     ; $41af: $06 $04
    rlca                                          ; $41b1: $07
    inc b                                         ; $41b2: $04
    ld [$0904], sp                                ; $41b3: $08 $04 $09
    inc b                                         ; $41b6: $04
    rst $38                                       ; $41b7: $ff
    db $08                                        ; $41b8: $08

    db $0b, $04, $0c, $04, $0d, $04, $0e, $04, $ff, $08, $00, $06, $03, $06, $02, $06
    db $04, $06, $01, $06, $04, $06, $01, $06, $04, $0a, $01, $0a, $04, $0c, $01, $0c
    db $04, $06, $01, $06, $02, $06, $03, $06

    rst $38                                       ; $41e1: $ff
    inc e                                         ; $41e2: $1c

    db $05, $03, $06, $03, $07, $03, $08, $03, $05, $03, $06, $03, $07, $03, $08, $03
    db $05, $08, $06, $08, $07, $08, $08, $08, $05, $08, $06, $08, $07, $08, $08, $08
    db $09, $02, $0a, $02, $0b, $02

    inc c                                         ; $4209: $0c
    ld [bc], a                                    ; $420a: $02
    add hl, bc                                    ; $420b: $09
    ld [bc], a                                    ; $420c: $02
    ld a, [bc]                                    ; $420d: $0a
    ld [bc], a                                    ; $420e: $02
    dec bc                                        ; $420f: $0b
    ld [bc], a                                    ; $4210: $02
    inc c                                         ; $4211: $0c
    ld [bc], a                                    ; $4212: $02
    dec b                                         ; $4213: $05
    ld [bc], a                                    ; $4214: $02
    ld b, $02                                     ; $4215: $06 $02
    rlca                                          ; $4217: $07
    ld [bc], a                                    ; $4218: $02
    ld [$0702], sp                                ; $4219: $08 $02 $07
    ld [bc], a                                    ; $421c: $02
    ld b, $02                                     ; $421d: $06 $02
    rst $38                                       ; $421f: $ff
    inc a                                         ; $4220: $3c

    db $09, $02, $0a, $02, $0b, $02, $0c, $02, $09, $02, $0a, $02, $0b, $02, $0c, $02
    db $05, $08, $06, $08, $07, $08, $08, $08, $05, $08, $06, $08, $07, $08, $08, $08
    db $09, $02, $0a, $02

    dec bc                                        ; $4245: $0b
    ld [bc], a                                    ; $4246: $02
    inc c                                         ; $4247: $0c
    ld [bc], a                                    ; $4248: $02
    add hl, bc                                    ; $4249: $09
    ld [bc], a                                    ; $424a: $02
    ld a, [bc]                                    ; $424b: $0a
    ld [bc], a                                    ; $424c: $02
    dec bc                                        ; $424d: $0b
    ld [bc], a                                    ; $424e: $02
    inc c                                         ; $424f: $0c
    ld [bc], a                                    ; $4250: $02
    add hl, bc                                    ; $4251: $09
    ld [bc], a                                    ; $4252: $02
    ld a, [bc]                                    ; $4253: $0a
    ld [bc], a                                    ; $4254: $02
    dec bc                                        ; $4255: $0b
    ld [bc], a                                    ; $4256: $02
    inc c                                         ; $4257: $0c
    ld [bc], a                                    ; $4258: $02
    rst $38                                       ; $4259: $ff
    jr c, jr_002_4281                             ; $425a: $38 $25

    inc b                                         ; $425c: $04
    ld h, $04                                     ; $425d: $26 $04
    daa                                           ; $425f: $27
    inc b                                         ; $4260: $04
    jr z, jr_002_4267                             ; $4261: $28 $04

    rst $38                                       ; $4263: $ff
    ld [$0429], sp                                ; $4264: $08 $29 $04

jr_002_4267:
    ld a, [hl+]                                   ; $4267: $2a
    inc b                                         ; $4268: $04
    dec hl                                        ; $4269: $2b
    inc b                                         ; $426a: $04
    inc l                                         ; $426b: $2c
    inc b                                         ; $426c: $04
    rst $38                                       ; $426d: $ff
    ld [$042d], sp                                ; $426e: $08 $2d $04
    ld l, $04                                     ; $4271: $2e $04
    cpl                                           ; $4273: $2f
    inc d                                         ; $4274: $14
    ld l, $04                                     ; $4275: $2e $04
    rst $38                                       ; $4277: $ff
    ld [$7800], sp                                ; $4278: $08 $00 $78
    ld bc, $0203                                  ; $427b: $01 $03 $02
    inc bc                                        ; $427e: $03
    inc bc                                        ; $427f: $03
    inc bc                                        ; $4280: $03

jr_002_4281:
    inc b                                         ; $4281: $04
    inc bc                                        ; $4282: $03
    rst $38                                       ; $4283: $ff
    ld a, [bc]                                    ; $4284: $0a
    rlca                                          ; $4285: $07
    inc h                                         ; $4286: $24
    ld [$0704], sp                                ; $4287: $08 $04 $07
    inc b                                         ; $428a: $04
    ld [$0704], sp                                ; $428b: $08 $04 $07
    inc b                                         ; $428e: $04
    ld [$0704], sp                                ; $428f: $08 $04 $07
    inc b                                         ; $4292: $04
    ld [$0704], sp                                ; $4293: $08 $04 $07
    jr jr_002_42a0                                ; $4296: $18 $08

    inc b                                         ; $4298: $04
    rlca                                          ; $4299: $07
    inc b                                         ; $429a: $04
    ld [$070c], sp                                ; $429b: $08 $0c $07
    jr @+$0a                                      ; $429e: $18 $08

jr_002_42a0:
    inc b                                         ; $42a0: $04
    rlca                                          ; $42a1: $07
    inc b                                         ; $42a2: $04
    ld [$070c], sp                                ; $42a3: $08 $0c $07
    inc b                                         ; $42a6: $04
    ld [$0704], sp                                ; $42a7: $08 $04 $07
    jr @+$0a                                      ; $42aa: $18 $08

    inc b                                         ; $42ac: $04
    rlca                                          ; $42ad: $07
    inc b                                         ; $42ae: $04
    ld [$070c], sp                                ; $42af: $08 $0c $07
    inc b                                         ; $42b2: $04
    ld [$0704], sp                                ; $42b3: $08 $04 $07
    jr @+$0a                                      ; $42b6: $18 $08

    inc c                                         ; $42b8: $0c
    rlca                                          ; $42b9: $07
    inc b                                         ; $42ba: $04
    ld [$0704], sp                                ; $42bb: $08 $04 $07
    inc b                                         ; $42be: $04
    ld [$070c], sp                                ; $42bf: $08 $0c $07
    inc b                                         ; $42c2: $04
    ld [$ff0c], sp                                ; $42c3: $08 $0c $ff
    ld b, b                                       ; $42c6: $40
    ld [hl+], a                                   ; $42c7: $22
    jr jr_002_42ed                                ; $42c8: $18 $23

    jr @+$01                                      ; $42ca: $18 $ff

    inc b                                         ; $42cc: $04
    inc h                                         ; $42cd: $24
    nop                                           ; $42ce: $00

    db $1c, $30, $1d, $04, $1e, $04, $1f, $04, $20, $04, $21, $04, $ff, $0c

    dec b                                         ; $42dd: $05
    jr jr_002_42e6                                ; $42de: $18 $06

    jr @+$01                                      ; $42e0: $18 $ff

    inc b                                         ; $42e2: $04
    add hl, bc                                    ; $42e3: $09
    or h                                          ; $42e4: $b4
    ld a, [bc]                                    ; $42e5: $0a

jr_002_42e6:
    inc b                                         ; $42e6: $04
    dec bc                                        ; $42e7: $0b
    inc c                                         ; $42e8: $0c
    inc c                                         ; $42e9: $0c
    inc b                                         ; $42ea: $04
    add hl, bc                                    ; $42eb: $09
    ld a, b                                       ; $42ec: $78

jr_002_42ed:
    ld a, [bc]                                    ; $42ed: $0a
    inc b                                         ; $42ee: $04
    dec bc                                        ; $42ef: $0b
    inc c                                         ; $42f0: $0c
    ld a, [bc]                                    ; $42f1: $0a
    inc b                                         ; $42f2: $04
    dec bc                                        ; $42f3: $0b
    inc b                                         ; $42f4: $04
    inc c                                         ; $42f5: $0c
    inc b                                         ; $42f6: $04
    rst $38                                       ; $42f7: $ff
    inc d                                         ; $42f8: $14
    dec c                                         ; $42f9: $0d
    jr jr_002_430a                                ; $42fa: $18 $0e

    jr jr_002_430b                                ; $42fc: $18 $0d

    ld [$050f], sp                                ; $42fe: $08 $0f $05
    dec c                                         ; $4301: $0d
    ld [$050f], sp                                ; $4302: $08 $0f $05
    ld c, $18                                     ; $4305: $0e $18
    dec c                                         ; $4307: $0d
    jr jr_002_4319                                ; $4308: $18 $0f

jr_002_430a:
    dec b                                         ; $430a: $05

jr_002_430b:
    rst $38                                       ; $430b: $ff
    ld [de], a                                    ; $430c: $12
    ld bc, $0201                                  ; $430d: $01 $01 $02
    ld bc, $0103                                  ; $4310: $01 $03 $01
    inc b                                         ; $4313: $04
    ld bc, $0105                                  ; $4314: $01 $05 $01
    ld b, $01                                     ; $4317: $06 $01

jr_002_4319:
    rst $38                                       ; $4319: $ff
    inc c                                         ; $431a: $0c
    ld [$0901], sp                                ; $431b: $08 $01 $09
    ld bc, $010a                                  ; $431e: $01 $0a $01
    dec bc                                        ; $4321: $0b
    ld bc, $010c                                  ; $4322: $01 $0c $01
    dec c                                         ; $4325: $0d
    ld bc, $0cff                                  ; $4326: $01 $ff $0c
    rrca                                          ; $4329: $0f
    ld bc, $0110                                  ; $432a: $01 $10 $01
    ld de, $1201                                  ; $432d: $11 $01 $12
    ld bc, $0113                                  ; $4330: $01 $13 $01
    inc d                                         ; $4333: $14
    ld bc, $0cff                                  ; $4334: $01 $ff $0c
    ld bc, $0201                                  ; $4337: $01 $01 $02
    ld bc, $0103                                  ; $433a: $01 $03 $01
    inc b                                         ; $433d: $04
    ld bc, $08ff                                  ; $433e: $01 $ff $08
    ld b, $01                                     ; $4341: $06 $01
    rlca                                          ; $4343: $07
    ld bc, $0108                                  ; $4344: $01 $08 $01
    add hl, bc                                    ; $4347: $09
    ld bc, $08ff                                  ; $4348: $01 $ff $08
    dec bc                                        ; $434b: $0b
    ld bc, $010c                                  ; $434c: $01 $0c $01
    dec c                                         ; $434f: $0d
    ld bc, $010e                                  ; $4350: $01 $0e $01
    rst $38                                       ; $4353: $ff
    db $08                                        ; $4354: $08

    db $01, $04, $02, $04, $03, $04, $04, $04, $05, $04, $06, $04, $ff, $0c

    ld [$0904], sp                                ; $4363: $08 $04 $09
    inc b                                         ; $4366: $04
    ld a, [bc]                                    ; $4367: $0a
    inc b                                         ; $4368: $04
    dec bc                                        ; $4369: $0b
    inc b                                         ; $436a: $04
    inc c                                         ; $436b: $0c
    inc b                                         ; $436c: $04
    dec c                                         ; $436d: $0d
    inc b                                         ; $436e: $04
    rst $38                                       ; $436f: $ff
    inc c                                         ; $4370: $0c

    db $0f, $04, $10, $04, $11, $04, $12, $04, $13, $04, $14, $04, $ff, $0c

    ld [bc], a                                    ; $437f: $02
    inc b                                         ; $4380: $04
    inc b                                         ; $4381: $04
    inc b                                         ; $4382: $04
    ld b, $04                                     ; $4383: $06 $04
    ld [$0a04], sp                                ; $4385: $08 $04 $0a
    inc b                                         ; $4388: $04
    inc c                                         ; $4389: $0c
    inc b                                         ; $438a: $04
    rst $38                                       ; $438b: $ff
    inc c                                         ; $438c: $0c
    db $10                                        ; $438d: $10
    inc b                                         ; $438e: $04
    ld [de], a                                    ; $438f: $12
    inc b                                         ; $4390: $04
    inc d                                         ; $4391: $14
    inc b                                         ; $4392: $04
    ld d, $04                                     ; $4393: $16 $04
    jr jr_002_439b                                ; $4395: $18 $04

    ld a, [de]                                    ; $4397: $1a
    inc b                                         ; $4398: $04
    rst $38                                       ; $4399: $ff
    inc c                                         ; $439a: $0c

jr_002_439b:
    ld e, $04                                     ; $439b: $1e $04
    jr nz, jr_002_43a3                            ; $439d: $20 $04

    ld [hl+], a                                   ; $439f: $22
    inc b                                         ; $43a0: $04
    inc h                                         ; $43a1: $24
    inc b                                         ; $43a2: $04

jr_002_43a3:
    ld h, $04                                     ; $43a3: $26 $04
    jr z, jr_002_43ab                             ; $43a5: $28 $04

    rst $38                                       ; $43a7: $ff
    inc c                                         ; $43a8: $0c
    ld e, h                                       ; $43a9: $5c
    ld a, [bc]                                    ; $43aa: $0a

jr_002_43ab:
    ld e, l                                       ; $43ab: $5d
    inc b                                         ; $43ac: $04
    ld e, [hl]                                    ; $43ad: $5e
    inc b                                         ; $43ae: $04
    ld e, a                                       ; $43af: $5f
    inc b                                         ; $43b0: $04
    ld h, b                                       ; $43b1: $60
    inc b                                         ; $43b2: $04
    rst $38                                       ; $43b3: $ff
    ld a, [bc]                                    ; $43b4: $0a
    nop                                           ; $43b5: $00
    inc b                                         ; $43b6: $04
    ld [bc], a                                    ; $43b7: $02
    inc b                                         ; $43b8: $04
    inc b                                         ; $43b9: $04
    inc b                                         ; $43ba: $04
    ld b, $04                                     ; $43bb: $06 $04
    ld [$0a00], sp                                ; $43bd: $08 $00 $0a
    inc bc                                        ; $43c0: $03
    inc c                                         ; $43c1: $0c
    inc bc                                        ; $43c2: $03
    ld c, $03                                     ; $43c3: $0e $03
    db $10                                        ; $43c5: $10
    inc bc                                        ; $43c6: $03
    ld [de], a                                    ; $43c7: $12
    nop                                           ; $43c8: $00
    inc d                                         ; $43c9: $14
    inc b                                         ; $43ca: $04
    ld d, $04                                     ; $43cb: $16 $04
    jr jr_002_43d3                                ; $43cd: $18 $04

    rst $38                                       ; $43cf: $ff
    ld b, $1a                                     ; $43d0: $06 $1a
    nop                                           ; $43d2: $00

jr_002_43d3:
    ld [de], a                                    ; $43d3: $12
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    inc b                                         ; $43d6: $04
    ld [bc], a                                    ; $43d7: $02
    inc b                                         ; $43d8: $04
    inc b                                         ; $43d9: $04
    inc b                                         ; $43da: $04
    ld b, $04                                     ; $43db: $06 $04
    ld [$0a00], sp                                ; $43dd: $08 $00 $0a
    inc bc                                        ; $43e0: $03
    inc c                                         ; $43e1: $0c
    inc bc                                        ; $43e2: $03
    ld [$0a03], sp                                ; $43e3: $08 $03 $0a
    inc bc                                        ; $43e6: $03
    inc c                                         ; $43e7: $0c
    inc bc                                        ; $43e8: $03
    ld [$0e00], sp                                ; $43e9: $08 $00 $0e
    inc bc                                        ; $43ec: $03
    db $10                                        ; $43ed: $10
    inc bc                                        ; $43ee: $03
    ld [de], a                                    ; $43ef: $12
    inc bc                                        ; $43f0: $03
    inc d                                         ; $43f1: $14
    inc bc                                        ; $43f2: $03
    ld d, $03                                     ; $43f3: $16 $03
    jr jr_002_43fa                                ; $43f5: $18 $03

    ld a, [de]                                    ; $43f7: $1a
    inc bc                                        ; $43f8: $03
    inc e                                         ; $43f9: $1c

jr_002_43fa:
    inc bc                                        ; $43fa: $03
    ld e, $03                                     ; $43fb: $1e $03
    jr nz, jr_002_4402                            ; $43fd: $20 $03

    ld [hl+], a                                   ; $43ff: $22
    ld b, $24                                     ; $4400: $06 $24

jr_002_4402:
    inc bc                                        ; $4402: $03
    ld h, $03                                     ; $4403: $26 $03
    jr z, jr_002_4407                             ; $4405: $28 $00

jr_002_4407:
    jr z, jr_002_440c                             ; $4407: $28 $03

    ld a, [hl+]                                   ; $4409: $2a
    inc bc                                        ; $440a: $03
    inc l                                         ; $440b: $2c

jr_002_440c:
    inc bc                                        ; $440c: $03
    ld l, $00                                     ; $440d: $2e $00
    jr nc, jr_002_4412                            ; $440f: $30 $01

    ld [hl-], a                                   ; $4411: $32

jr_002_4412:
    ld bc, HeaderTitle                            ; $4412: $01 $34 $01
    rst $38                                       ; $4415: $ff
    ld b, $fd                                     ; $4416: $06 $fd
    inc hl                                        ; $4418: $23
    ld [hl], $01                                  ; $4419: $36 $01
    jr c, jr_002_441e                             ; $441b: $38 $01

    ld a, [hl-]                                   ; $441d: $3a

jr_002_441e:
    ld bc, $013c                                  ; $441e: $01 $3c $01
    ld a, $01                                     ; $4421: $3e $01
    ld b, b                                       ; $4423: $40
    ld bc, $0142                                  ; $4424: $01 $42 $01
    ld b, h                                       ; $4427: $44
    ld bc, HeaderSGBFlag                          ; $4428: $01 $46 $01
    ld c, b                                       ; $442b: $48
    nop                                           ; $442c: $00
    ld c, d                                       ; $442d: $4a
    nop                                           ; $442e: $00
    ld c, h                                       ; $442f: $4c
    inc b                                         ; $4430: $04
    ld c, [hl]                                    ; $4431: $4e
    inc b                                         ; $4432: $04
    ld d, b                                       ; $4433: $50
    inc b                                         ; $4434: $04
    ld d, d                                       ; $4435: $52
    inc b                                         ; $4436: $04
    ld d, h                                       ; $4437: $54
    inc b                                         ; $4438: $04
    ld d, [hl]                                    ; $4439: $56
    inc b                                         ; $443a: $04
    rst $38                                       ; $443b: $ff
    inc c                                         ; $443c: $0c
    nop                                           ; $443d: $00
    inc b                                         ; $443e: $04
    ld [bc], a                                    ; $443f: $02
    inc b                                         ; $4440: $04
    inc b                                         ; $4441: $04
    inc b                                         ; $4442: $04
    ld b, $04                                     ; $4443: $06 $04
    ld [$0000], sp                                ; $4445: $08 $00 $00
    inc b                                         ; $4448: $04
    ld [bc], a                                    ; $4449: $02
    inc b                                         ; $444a: $04
    inc b                                         ; $444b: $04
    inc b                                         ; $444c: $04
    ld b, $04                                     ; $444d: $06 $04
    ld [$1500], sp                                ; $444f: $08 $00 $15
    nop                                           ; $4452: $00
    ld a, [hl+]                                   ; $4453: $2a
    inc b                                         ; $4454: $04
    inc l                                         ; $4455: $2c
    inc b                                         ; $4456: $04
    ld l, $04                                     ; $4457: $2e $04
    jr nc, jr_002_445f                            ; $4459: $30 $04

    ld [hl-], a                                   ; $445b: $32
    inc b                                         ; $445c: $04
    inc [hl]                                      ; $445d: $34
    inc b                                         ; $445e: $04

jr_002_445f:
    ld [hl], $04                                  ; $445f: $36 $04
    jr c, jr_002_4463                             ; $4461: $38 $00

jr_002_4463:
    ld d, d                                       ; $4463: $52
    ld a, [bc]                                    ; $4464: $0a
    ld d, h                                       ; $4465: $54
    inc b                                         ; $4466: $04
    ld d, [hl]                                    ; $4467: $56
    inc b                                         ; $4468: $04
    ld e, b                                       ; $4469: $58
    inc b                                         ; $446a: $04
    ld e, d                                       ; $446b: $5a
    inc b                                         ; $446c: $04
    ld e, h                                       ; $446d: $5c
    inc b                                         ; $446e: $04
    ld e, [hl]                                    ; $446f: $5e
    inc b                                         ; $4470: $04
    ld h, b                                       ; $4471: $60
    inc b                                         ; $4472: $04
    ld h, d                                       ; $4473: $62
    inc b                                         ; $4474: $04
    ld h, h                                       ; $4475: $64
    inc b                                         ; $4476: $04
    ld h, [hl]                                    ; $4477: $66
    inc b                                         ; $4478: $04
    ld l, b                                       ; $4479: $68
    inc b                                         ; $447a: $04
    ld h, d                                       ; $447b: $62
    nop                                           ; $447c: $00
    ld a, [hl-]                                   ; $447d: $3a
    ld [bc], a                                    ; $447e: $02
    inc a                                         ; $447f: $3c
    ld [bc], a                                    ; $4480: $02
    ld a, $02                                     ; $4481: $3e $02
    rst $38                                       ; $4483: $ff
    ld b, $40                                     ; $4484: $06 $40
    nop                                           ; $4486: $00
    ld b, d                                       ; $4487: $42
    nop                                           ; $4488: $00
    ld c, d                                       ; $4489: $4a
    ld [bc], a                                    ; $448a: $02
    ld c, h                                       ; $448b: $4c
    ld [bc], a                                    ; $448c: $02
    ld c, [hl]                                    ; $448d: $4e
    ld [bc], a                                    ; $448e: $02
    rst $38                                       ; $448f: $ff
    ld b, $50                                     ; $4490: $06 $50
    nop                                           ; $4492: $00
    ld d, d                                       ; $4493: $52
    nop                                           ; $4494: $00
    ld a, [hl+]                                   ; $4495: $2a
    inc d                                         ; $4496: $14
    inc l                                         ; $4497: $2c
    inc b                                         ; $4498: $04
    ld l, $04                                     ; $4499: $2e $04
    jr nc, jr_002_44a9                            ; $449b: $30 $0c

    ld l, $04                                     ; $449d: $2e $04
    inc l                                         ; $449f: $2c
    inc b                                         ; $44a0: $04
    rst $38                                       ; $44a1: $ff
    inc c                                         ; $44a2: $0c
    ld [hl-], a                                   ; $44a3: $32
    ld [bc], a                                    ; $44a4: $02
    inc [hl]                                      ; $44a5: $34
    ld [bc], a                                    ; $44a6: $02
    ld [hl], $02                                  ; $44a7: $36 $02

jr_002_44a9:
    jr c, jr_002_44ad                             ; $44a9: $38 $02

    ld a, [hl-]                                   ; $44ab: $3a
    ld [bc], a                                    ; $44ac: $02

jr_002_44ad:
    inc a                                         ; $44ad: $3c
    ld [bc], a                                    ; $44ae: $02
    ld a, $02                                     ; $44af: $3e $02
    ld b, b                                       ; $44b1: $40
    ld [bc], a                                    ; $44b2: $02
    ld b, d                                       ; $44b3: $42
    ld [bc], a                                    ; $44b4: $02
    ld b, h                                       ; $44b5: $44
    ld [bc], a                                    ; $44b6: $02
    ld b, [hl]                                    ; $44b7: $46
    ld [bc], a                                    ; $44b8: $02
    ld c, b                                       ; $44b9: $48
    ld [bc], a                                    ; $44ba: $02
    ld c, d                                       ; $44bb: $4a
    ld [bc], a                                    ; $44bc: $02
    ld c, h                                       ; $44bd: $4c
    ld [bc], a                                    ; $44be: $02
    ld c, [hl]                                    ; $44bf: $4e
    ld [bc], a                                    ; $44c0: $02
    ld d, b                                       ; $44c1: $50
    nop                                           ; $44c2: $00
    ld a, [hl+]                                   ; $44c3: $2a
    inc b                                         ; $44c4: $04
    inc l                                         ; $44c5: $2c
    inc b                                         ; $44c6: $04
    ld l, $04                                     ; $44c7: $2e $04
    jr nc, jr_002_44cf                            ; $44c9: $30 $04

    ld [hl-], a                                   ; $44cb: $32
    inc b                                         ; $44cc: $04
    inc [hl]                                      ; $44cd: $34
    nop                                           ; $44ce: $00

jr_002_44cf:
    ld a, [hl+]                                   ; $44cf: $2a
    nop                                           ; $44d0: $00
    ld l, $02                                     ; $44d1: $2e $02
    jr nc, jr_002_44d7                            ; $44d3: $30 $02

    ld [hl-], a                                   ; $44d5: $32
    nop                                           ; $44d6: $00

jr_002_44d7:
    inc [hl]                                      ; $44d7: $34
    ld [bc], a                                    ; $44d8: $02
    ld [hl], $02                                  ; $44d9: $36 $02
    inc l                                         ; $44db: $2c
    nop                                           ; $44dc: $00
    jr c, jr_002_44e1                             ; $44dd: $38 $02

    ld a, [hl-]                                   ; $44df: $3a
    ld [bc], a                                    ; $44e0: $02

jr_002_44e1:
    inc a                                         ; $44e1: $3c
    ld [bc], a                                    ; $44e2: $02
    ld a, $02                                     ; $44e3: $3e $02
    ld b, b                                       ; $44e5: $40
    ld [bc], a                                    ; $44e6: $02
    ld b, d                                       ; $44e7: $42
    ld [bc], a                                    ; $44e8: $02
    ld b, h                                       ; $44e9: $44
    ld [bc], a                                    ; $44ea: $02
    ld b, [hl]                                    ; $44eb: $46
    ld [bc], a                                    ; $44ec: $02
    ld c, b                                       ; $44ed: $48
    nop                                           ; $44ee: $00
    dec d                                         ; $44ef: $15
    inc b                                         ; $44f0: $04
    ld d, $04                                     ; $44f1: $16 $04
    rst $38                                       ; $44f3: $ff
    inc b                                         ; $44f4: $04
    dec d                                         ; $44f5: $15
    inc b                                         ; $44f6: $04
    ld d, $04                                     ; $44f7: $16 $04
    rst $38                                       ; $44f9: $ff
    ld a, [bc]                                    ; $44fa: $0a
    rla                                           ; $44fb: $17
    ld [bc], a                                    ; $44fc: $02
    jr jr_002_4501                                ; $44fd: $18 $02

    add hl, de                                    ; $44ff: $19
    ld [bc], a                                    ; $4500: $02

jr_002_4501:
    ld a, [de]                                    ; $4501: $1a
    ld [bc], a                                    ; $4502: $02
    dec de                                        ; $4503: $1b
    ld [bc], a                                    ; $4504: $02
    inc e                                         ; $4505: $1c
    ld [bc], a                                    ; $4506: $02
    rst $38                                       ; $4507: $ff
    inc c                                         ; $4508: $0c
    rla                                           ; $4509: $17
    ld [bc], a                                    ; $450a: $02
    jr jr_002_450f                                ; $450b: $18 $02

    add hl, de                                    ; $450d: $19
    ld [bc], a                                    ; $450e: $02

jr_002_450f:
    ld a, [de]                                    ; $450f: $1a
    ld [bc], a                                    ; $4510: $02
    dec de                                        ; $4511: $1b
    ld [bc], a                                    ; $4512: $02
    inc e                                         ; $4513: $1c
    ld [bc], a                                    ; $4514: $02
    rst $38                                       ; $4515: $ff
    inc c                                         ; $4516: $0c
    dec d                                         ; $4517: $15
    nop                                           ; $4518: $00

    db $11, $02, $12, $02, $13, $02, $14, $02, $15, $02, $16, $08, $17, $02, $18, $02
    db $19, $02, $1a, $04, $1b, $02, $10, $00, $00, $8c

    ld bc, $0204                                  ; $4533: $01 $04 $02
    inc b                                         ; $4536: $04
    ld bc, $ff04                                  ; $4537: $01 $04 $ff
    ld [$0400], sp                                ; $453a: $08 $00 $04
    ld bc, $0204                                  ; $453d: $01 $04 $02
    inc b                                         ; $4540: $04
    inc bc                                        ; $4541: $03
    inc b                                         ; $4542: $04
    inc b                                         ; $4543: $04
    inc b                                         ; $4544: $04
    dec b                                         ; $4545: $05
    inc b                                         ; $4546: $04
    ld b, $04                                     ; $4547: $06 $04
    rlca                                          ; $4549: $07
    inc b                                         ; $454a: $04
    rst $38                                       ; $454b: $ff
    stop                                          ; $454c: $10 $00
    ld [bc], a                                    ; $454e: $02
    ld bc, $0202                                  ; $454f: $01 $02 $02
    ld [bc], a                                    ; $4552: $02
    inc bc                                        ; $4553: $03
    ld [bc], a                                    ; $4554: $02
    inc b                                         ; $4555: $04
    ld [bc], a                                    ; $4556: $02
    dec b                                         ; $4557: $05
    ld [bc], a                                    ; $4558: $02
    ld b, $02                                     ; $4559: $06 $02
    rlca                                          ; $455b: $07
    ld [bc], a                                    ; $455c: $02
    ld [$0902], sp                                ; $455d: $08 $02 $09
    ld [bc], a                                    ; $4560: $02
    ld a, [bc]                                    ; $4561: $0a
    ld [bc], a                                    ; $4562: $02
    dec bc                                        ; $4563: $0b
    ld [bc], a                                    ; $4564: $02
    inc c                                         ; $4565: $0c
    ld [bc], a                                    ; $4566: $02
    dec c                                         ; $4567: $0d
    ld [bc], a                                    ; $4568: $02
    ld c, $02                                     ; $4569: $0e $02
    rrca                                          ; $456b: $0f
    ld [bc], a                                    ; $456c: $02
    db $10                                        ; $456d: $10
    ld [bc], a                                    ; $456e: $02
    ld de, $0002                                  ; $456f: $11 $02 $00
    inc bc                                        ; $4572: $03
    ld bc, $0203                                  ; $4573: $01 $03 $02
    inc bc                                        ; $4576: $03
    inc bc                                        ; $4577: $03
    inc bc                                        ; $4578: $03
    rst $38                                       ; $4579: $ff
    ld [$0304], sp                                ; $457a: $08 $04 $03
    dec b                                         ; $457d: $05
    inc bc                                        ; $457e: $03
    ld b, $03                                     ; $457f: $06 $03
    rlca                                          ; $4581: $07
    inc bc                                        ; $4582: $03
    rst $38                                       ; $4583: $ff
    ld [$0108], sp                                ; $4584: $08 $08 $01
    add hl, bc                                    ; $4587: $09
    ld bc, $010a                                  ; $4588: $01 $0a $01
    dec bc                                        ; $458b: $0b
    ld bc, $08ff                                  ; $458c: $01 $ff $08
    inc b                                         ; $458f: $04
    ld bc, $0105                                  ; $4590: $01 $05 $01
    ld b, $01                                     ; $4593: $06 $01
    rlca                                          ; $4595: $07
    ld bc, $08ff                                  ; $4596: $01 $ff $08
    nop                                           ; $4599: $00
    ld bc, $0101                                  ; $459a: $01 $01 $01
    ld [bc], a                                    ; $459d: $02
    ld bc, $0103                                  ; $459e: $01 $03 $01
    rst $38                                       ; $45a1: $ff
    ld [$0400], sp                                ; $45a2: $08 $00 $04
    ld bc, $0204                                  ; $45a5: $01 $04 $02
    inc b                                         ; $45a8: $04
    inc bc                                        ; $45a9: $03
    inc b                                         ; $45aa: $04
    inc b                                         ; $45ab: $04
    inc b                                         ; $45ac: $04
    dec b                                         ; $45ad: $05
    inc b                                         ; $45ae: $04
    ld b, $0a                                     ; $45af: $06 $0a
    dec b                                         ; $45b1: $05
    inc b                                         ; $45b2: $04
    inc b                                         ; $45b3: $04
    inc b                                         ; $45b4: $04
    inc bc                                        ; $45b5: $03
    inc b                                         ; $45b6: $04
    ld [bc], a                                    ; $45b7: $02
    inc b                                         ; $45b8: $04
    ld bc, $0004                                  ; $45b9: $01 $04 $00
    nop                                           ; $45bc: $00
    ld [bc], a                                    ; $45bd: $02
    ld [bc], a                                    ; $45be: $02
    inc bc                                        ; $45bf: $03
    ld [bc], a                                    ; $45c0: $02
    inc b                                         ; $45c1: $04
    ld [bc], a                                    ; $45c2: $02
    dec b                                         ; $45c3: $05
    ld [bc], a                                    ; $45c4: $02
    ld b, $02                                     ; $45c5: $06 $02
    rlca                                          ; $45c7: $07
    ld [bc], a                                    ; $45c8: $02
    ld [$0902], sp                                ; $45c9: $08 $02 $09
    ld [bc], a                                    ; $45cc: $02
    ld a, [bc]                                    ; $45cd: $0a
    ld [bc], a                                    ; $45ce: $02
    dec bc                                        ; $45cf: $0b
    ld [bc], a                                    ; $45d0: $02
    inc c                                         ; $45d1: $0c
    ld [bc], a                                    ; $45d2: $02
    dec c                                         ; $45d3: $0d
    nop                                           ; $45d4: $00
    rrca                                          ; $45d5: $0f
    ld e, $10                                     ; $45d6: $1e $10
    ld [$1e11], sp                                ; $45d8: $08 $11 $1e
    db $10                                        ; $45db: $10
    ld [$1e0f], sp                                ; $45dc: $08 $0f $1e
    db $10                                        ; $45df: $10
    ld [$1e11], sp                                ; $45e0: $08 $11 $1e
    db $10                                        ; $45e3: $10
    ld [$1e0f], sp                                ; $45e4: $08 $0f $1e
    db $10                                        ; $45e7: $10
    ld [$1011], sp                                ; $45e8: $08 $11 $10
    ld [de], a                                    ; $45eb: $12
    inc b                                         ; $45ec: $04
    inc de                                        ; $45ed: $13
    inc b                                         ; $45ee: $04
    inc d                                         ; $45ef: $14
    inc b                                         ; $45f0: $04
    dec d                                         ; $45f1: $15
    inc b                                         ; $45f2: $04
    inc d                                         ; $45f3: $14
    inc b                                         ; $45f4: $04
    dec d                                         ; $45f5: $15
    inc b                                         ; $45f6: $04
    inc d                                         ; $45f7: $14
    inc b                                         ; $45f8: $04
    dec d                                         ; $45f9: $15
    inc b                                         ; $45fa: $04
    inc d                                         ; $45fb: $14
    inc b                                         ; $45fc: $04
    inc de                                        ; $45fd: $13
    inc b                                         ; $45fe: $04
    ld [de], a                                    ; $45ff: $12
    inc b                                         ; $4600: $04
    ld de, $101e                                  ; $4601: $11 $1e $10
    ld [$100f], sp                                ; $4604: $08 $0f $10
    db $10                                        ; $4607: $10
    ld [$1011], sp                                ; $4608: $08 $11 $10
    ld [de], a                                    ; $460b: $12
    inc b                                         ; $460c: $04
    inc de                                        ; $460d: $13
    inc b                                         ; $460e: $04
    inc d                                         ; $460f: $14
    inc b                                         ; $4610: $04
    inc de                                        ; $4611: $13
    inc b                                         ; $4612: $04
    inc d                                         ; $4613: $14
    inc b                                         ; $4614: $04
    inc de                                        ; $4615: $13
    inc b                                         ; $4616: $04
    inc d                                         ; $4617: $14
    inc b                                         ; $4618: $04
    dec d                                         ; $4619: $15
    inc b                                         ; $461a: $04
    ld d, $04                                     ; $461b: $16 $04
    rla                                           ; $461d: $17
    inc c                                         ; $461e: $0c
    ld d, $04                                     ; $461f: $16 $04
    dec d                                         ; $4621: $15
    inc b                                         ; $4622: $04
    inc d                                         ; $4623: $14
    inc b                                         ; $4624: $04
    inc de                                        ; $4625: $13
    inc b                                         ; $4626: $04
    inc d                                         ; $4627: $14
    inc b                                         ; $4628: $04
    inc de                                        ; $4629: $13
    inc b                                         ; $462a: $04
    inc d                                         ; $462b: $14
    inc b                                         ; $462c: $04
    dec d                                         ; $462d: $15
    inc b                                         ; $462e: $04
    ld d, $04                                     ; $462f: $16 $04
    rla                                           ; $4631: $17
    inc c                                         ; $4632: $0c
    jr @+$0a                                      ; $4633: $18 $08

    add hl, de                                    ; $4635: $19
    inc b                                         ; $4636: $04
    ld a, [de]                                    ; $4637: $1a
    inc b                                         ; $4638: $04
    rst $38                                       ; $4639: $ff
    ld h, h                                       ; $463a: $64
    ld hl, $1b04                                  ; $463b: $21 $04 $1b
    inc b                                         ; $463e: $04
    inc e                                         ; $463f: $1c
    inc b                                         ; $4640: $04
    dec de                                        ; $4641: $1b
    inc b                                         ; $4642: $04
    ld hl, $1b04                                  ; $4643: $21 $04 $1b
    inc b                                         ; $4646: $04
    inc e                                         ; $4647: $1c
    inc b                                         ; $4648: $04
    dec de                                        ; $4649: $1b
    inc b                                         ; $464a: $04
    ld hl, $1b04                                  ; $464b: $21 $04 $1b
    inc b                                         ; $464e: $04
    inc e                                         ; $464f: $1c
    inc b                                         ; $4650: $04
    dec de                                        ; $4651: $1b
    inc b                                         ; $4652: $04
    ld hl, $1d10                                  ; $4653: $21 $10 $1d
    db $10                                        ; $4656: $10
    ld hl, $1d10                                  ; $4657: $21 $10 $1d
    db $10                                        ; $465a: $10
    ld e, $04                                     ; $465b: $1e $04
    rra                                           ; $465d: $1f
    inc b                                         ; $465e: $04
    jr nz, jr_002_4665                            ; $465f: $20 $04

    ld hl, $1b04                                  ; $4661: $21 $04 $1b
    inc b                                         ; $4664: $04

jr_002_4665:
    inc e                                         ; $4665: $1c
    inc b                                         ; $4666: $04
    dec de                                        ; $4667: $1b
    inc b                                         ; $4668: $04
    inc e                                         ; $4669: $1c
    inc b                                         ; $466a: $04
    dec e                                         ; $466b: $1d
    ld [$041e], sp                                ; $466c: $08 $1e $04
    rra                                           ; $466f: $1f
    inc b                                         ; $4670: $04
    jr nz, jr_002_4677                            ; $4671: $20 $04

    ld e, $04                                     ; $4673: $1e $04
    rra                                           ; $4675: $1f
    inc b                                         ; $4676: $04

jr_002_4677:
    jr nz, jr_002_467d                            ; $4677: $20 $04

    rst $38                                       ; $4679: $ff
    ld a, $22                                     ; $467a: $3e $22
    inc b                                         ; $467c: $04

jr_002_467d:
    inc hl                                        ; $467d: $23
    inc b                                         ; $467e: $04
    inc h                                         ; $467f: $24
    inc b                                         ; $4680: $04
    dec h                                         ; $4681: $25
    inc b                                         ; $4682: $04
    ld h, $04                                     ; $4683: $26 $04
    daa                                           ; $4685: $27
    inc b                                         ; $4686: $04
    ld [hl+], a                                   ; $4687: $22
    inc b                                         ; $4688: $04
    inc hl                                        ; $4689: $23
    inc b                                         ; $468a: $04
    inc h                                         ; $468b: $24
    inc b                                         ; $468c: $04
    dec h                                         ; $468d: $25
    inc b                                         ; $468e: $04
    ld h, $04                                     ; $468f: $26 $04
    daa                                           ; $4691: $27
    inc b                                         ; $4692: $04
    ld [hl+], a                                   ; $4693: $22
    inc b                                         ; $4694: $04
    inc hl                                        ; $4695: $23
    inc b                                         ; $4696: $04
    inc h                                         ; $4697: $24
    inc b                                         ; $4698: $04
    dec h                                         ; $4699: $25
    inc b                                         ; $469a: $04
    ld h, $04                                     ; $469b: $26 $04
    daa                                           ; $469d: $27
    db $10                                        ; $469e: $10
    rst $38                                       ; $469f: $ff
    inc h                                         ; $46a0: $24
    jr z, @+$2f                                   ; $46a1: $28 $2d

    add hl, hl                                    ; $46a3: $29
    inc b                                         ; $46a4: $04
    ld a, [hl+]                                   ; $46a5: $2a
    inc b                                         ; $46a6: $04
    dec hl                                        ; $46a7: $2b
    inc b                                         ; $46a8: $04
    inc l                                         ; $46a9: $2c
    inc b                                         ; $46aa: $04
    dec l                                         ; $46ab: $2d
    inc b                                         ; $46ac: $04
    rst $38                                       ; $46ad: $ff
    inc c                                         ; $46ae: $0c
    ld l, $1e                                     ; $46af: $2e $1e
    cpl                                           ; $46b1: $2f
    ld b, [hl]                                    ; $46b2: $46
    rst $38                                       ; $46b3: $ff
    inc b                                         ; $46b4: $04
    dec d                                         ; $46b5: $15
    inc b                                         ; $46b6: $04
    ld d, $04                                     ; $46b7: $16 $04
    rla                                           ; $46b9: $17
    inc b                                         ; $46ba: $04
    jr jr_002_46bd                                ; $46bb: $18 $00

jr_002_46bd:
    jr jr_002_46c3                                ; $46bd: $18 $04

    rla                                           ; $46bf: $17
    inc b                                         ; $46c0: $04
    ld d, $04                                     ; $46c1: $16 $04

jr_002_46c3:
    dec d                                         ; $46c3: $15
    nop                                           ; $46c4: $00
    ld bc, $0204                                  ; $46c5: $01 $04 $02
    inc b                                         ; $46c8: $04
    inc bc                                        ; $46c9: $03
    inc b                                         ; $46ca: $04
    inc b                                         ; $46cb: $04
    inc b                                         ; $46cc: $04
    dec b                                         ; $46cd: $05
    inc b                                         ; $46ce: $04
    ld b, $04                                     ; $46cf: $06 $04
    rlca                                          ; $46d1: $07
    inc b                                         ; $46d2: $04
    rst $38                                       ; $46d3: $ff
    ld c, $00                                     ; $46d4: $0e $00
    nop                                           ; $46d6: $00
    ld a, [hl+]                                   ; $46d7: $2a
    inc b                                         ; $46d8: $04
    inc l                                         ; $46d9: $2c
    inc b                                         ; $46da: $04
    ld l, $00                                     ; $46db: $2e $00
    dec d                                         ; $46dd: $15
    ld [bc], a                                    ; $46de: $02
    ld d, $02                                     ; $46df: $16 $02
    rla                                           ; $46e1: $17
    ld [bc], a                                    ; $46e2: $02
    jr jr_002_46e7                                ; $46e3: $18 $02

    add hl, de                                    ; $46e5: $19
    ld [bc], a                                    ; $46e6: $02

jr_002_46e7:
    ld a, [de]                                    ; $46e7: $1a
    ld [bc], a                                    ; $46e8: $02
    dec de                                        ; $46e9: $1b
    ld [bc], a                                    ; $46ea: $02
    inc e                                         ; $46eb: $1c
    ld [bc], a                                    ; $46ec: $02
    dec e                                         ; $46ed: $1d
    ld [bc], a                                    ; $46ee: $02
    ld e, $02                                     ; $46ef: $1e $02
    rra                                           ; $46f1: $1f
    ld [bc], a                                    ; $46f2: $02
    jr nz, @+$04                                  ; $46f3: $20 $02

    ld hl, $2202                                  ; $46f5: $21 $02 $22
    ld [bc], a                                    ; $46f8: $02
    inc hl                                        ; $46f9: $23
    ld [bc], a                                    ; $46fa: $02
    inc h                                         ; $46fb: $24
    nop                                           ; $46fc: $00
    dec h                                         ; $46fd: $25
    ld [bc], a                                    ; $46fe: $02
    ld h, $02                                     ; $46ff: $26 $02
    daa                                           ; $4701: $27
    ld [bc], a                                    ; $4702: $02
    jr z, jr_002_4707                             ; $4703: $28 $02

    add hl, hl                                    ; $4705: $29
    ld [bc], a                                    ; $4706: $02

jr_002_4707:
    ld a, [hl+]                                   ; $4707: $2a
    ld [bc], a                                    ; $4708: $02
    dec hl                                        ; $4709: $2b
    ld [bc], a                                    ; $470a: $02
    inc l                                         ; $470b: $2c
    ld [bc], a                                    ; $470c: $02
    dec l                                         ; $470d: $2d
    ld [bc], a                                    ; $470e: $02
    ld l, $02                                     ; $470f: $2e $02
    cpl                                           ; $4711: $2f
    ld [bc], a                                    ; $4712: $02
    jr nc, @+$04                                  ; $4713: $30 $02

    ld sp, $3202                                  ; $4715: $31 $02 $32
    ld [bc], a                                    ; $4718: $02
    inc sp                                        ; $4719: $33
    ld [bc], a                                    ; $471a: $02
    inc [hl]                                      ; $471b: $34
    ld [bc], a                                    ; $471c: $02
    dec [hl]                                      ; $471d: $35
    ld [bc], a                                    ; $471e: $02
    ld [hl], $02                                  ; $471f: $36 $02
    scf                                           ; $4721: $37
    ld [bc], a                                    ; $4722: $02
    jr c, jr_002_4727                             ; $4723: $38 $02

    add hl, sp                                    ; $4725: $39
    ld [bc], a                                    ; $4726: $02

jr_002_4727:
    ld a, [hl-]                                   ; $4727: $3a
    ld [bc], a                                    ; $4728: $02
    dec sp                                        ; $4729: $3b
    ld [bc], a                                    ; $472a: $02
    inc a                                         ; $472b: $3c
    ld [bc], a                                    ; $472c: $02
    dec a                                         ; $472d: $3d
    ld [bc], a                                    ; $472e: $02
    ld a, $02                                     ; $472f: $3e $02
    ccf                                           ; $4731: $3f
    ld [bc], a                                    ; $4732: $02
    ld b, b                                       ; $4733: $40
    ld [bc], a                                    ; $4734: $02
    ld b, c                                       ; $4735: $41
    ld [bc], a                                    ; $4736: $02
    ld b, d                                       ; $4737: $42
    ld [bc], a                                    ; $4738: $02
    ld b, e                                       ; $4739: $43
    nop                                           ; $473a: $00
    ld b, h                                       ; $473b: $44
    inc d                                         ; $473c: $14
    ld b, l                                       ; $473d: $45
    inc bc                                        ; $473e: $03
    ld b, [hl]                                    ; $473f: $46
    inc bc                                        ; $4740: $03
    ld b, a                                       ; $4741: $47
    inc bc                                        ; $4742: $03
    ld c, b                                       ; $4743: $48
    inc bc                                        ; $4744: $03
    ld c, c                                       ; $4745: $49
    inc bc                                        ; $4746: $03
    ld c, d                                       ; $4747: $4a
    nop                                           ; $4748: $00
    ld c, e                                       ; $4749: $4b
    inc bc                                        ; $474a: $03
    ld c, h                                       ; $474b: $4c
    ld [bc], a                                    ; $474c: $02
    ld c, l                                       ; $474d: $4d
    inc bc                                        ; $474e: $03
    ld c, [hl]                                    ; $474f: $4e
    ld [bc], a                                    ; $4750: $02
    ld c, a                                       ; $4751: $4f
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    inc b                                         ; $4754: $04
    ld bc, $0204                                  ; $4755: $01 $04 $02
    inc b                                         ; $4758: $04
    inc bc                                        ; $4759: $03
    nop                                           ; $475a: $00
    inc bc                                        ; $475b: $03
    inc b                                         ; $475c: $04
    ld [bc], a                                    ; $475d: $02
    inc b                                         ; $475e: $04
    ld bc, $0004                                  ; $475f: $01 $04 $00
    nop                                           ; $4762: $00
    inc bc                                        ; $4763: $03
    nop                                           ; $4764: $00
    dec b                                         ; $4765: $05
    inc b                                         ; $4766: $04
    ld b, $04                                     ; $4767: $06 $04
    rlca                                          ; $4769: $07
    nop                                           ; $476a: $00
    nop                                           ; $476b: $00
    dec b                                         ; $476c: $05
    ld [bc], a                                    ; $476d: $02
    dec b                                         ; $476e: $05
    inc b                                         ; $476f: $04
    dec b                                         ; $4770: $05
    ld b, $05                                     ; $4771: $06 $05
    ld [$0a05], sp                                ; $4773: $08 $05 $0a
    dec b                                         ; $4776: $05
    inc c                                         ; $4777: $0c
    dec b                                         ; $4778: $05
    ld c, $05                                     ; $4779: $0e $05
    db $10                                        ; $477b: $10
    dec b                                         ; $477c: $05
    ld [de], a                                    ; $477d: $12
    dec b                                         ; $477e: $05
    inc d                                         ; $477f: $14
    dec b                                         ; $4780: $05
    ld c, $05                                     ; $4781: $0e $05
    db $10                                        ; $4783: $10
    dec b                                         ; $4784: $05
    ld [de], a                                    ; $4785: $12
    dec b                                         ; $4786: $05
    inc d                                         ; $4787: $14
    dec b                                         ; $4788: $05
    inc c                                         ; $4789: $0c
    dec b                                         ; $478a: $05
    ld a, [bc]                                    ; $478b: $0a
    dec b                                         ; $478c: $05
    ld [$0605], sp                                ; $478d: $08 $05 $06
    dec b                                         ; $4790: $05
    inc b                                         ; $4791: $04
    dec b                                         ; $4792: $05
    ld [bc], a                                    ; $4793: $02
    dec b                                         ; $4794: $05
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    dec b                                         ; $4798: $05
    ld [bc], a                                    ; $4799: $02
    dec b                                         ; $479a: $05
    inc b                                         ; $479b: $04
    dec b                                         ; $479c: $05
    ld b, $05                                     ; $479d: $06 $05
    ld [$0a05], sp                                ; $479f: $08 $05 $0a
    dec b                                         ; $47a2: $05
    inc c                                         ; $47a3: $0c
    dec b                                         ; $47a4: $05
    ld c, $05                                     ; $47a5: $0e $05
    db $10                                        ; $47a7: $10
    dec b                                         ; $47a8: $05
    ld [de], a                                    ; $47a9: $12
    dec b                                         ; $47aa: $05
    inc d                                         ; $47ab: $14
    rrca                                          ; $47ac: $0f
    ld d, $05                                     ; $47ad: $16 $05
    inc d                                         ; $47af: $14
    dec b                                         ; $47b0: $05
    db $10                                        ; $47b1: $10
    dec b                                         ; $47b2: $05
    inc c                                         ; $47b3: $0c
    dec b                                         ; $47b4: $05
    ld a, [bc]                                    ; $47b5: $0a
    dec b                                         ; $47b6: $05
    ld a, [bc]                                    ; $47b7: $0a
    dec b                                         ; $47b8: $05
    ld [$0605], sp                                ; $47b9: $08 $05 $06
    dec b                                         ; $47bc: $05
    inc b                                         ; $47bd: $04
    dec b                                         ; $47be: $05
    ld [bc], a                                    ; $47bf: $02
    dec b                                         ; $47c0: $05
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    nop                                           ; $47c3: $00
    inc bc                                        ; $47c4: $03
    ld bc, $0203                                  ; $47c5: $01 $03 $02
    inc bc                                        ; $47c8: $03
    rst $38                                       ; $47c9: $ff
    ld b, $01                                     ; $47ca: $06 $01
    nop                                           ; $47cc: $00
    ld [bc], a                                    ; $47cd: $02
    nop                                           ; $47ce: $00
    inc bc                                        ; $47cf: $03
    nop                                           ; $47d0: $00
    dec b                                         ; $47d1: $05
    nop                                           ; $47d2: $00
    ld b, $02                                     ; $47d3: $06 $02
    rlca                                          ; $47d5: $07
    ld [bc], a                                    ; $47d6: $02
    ld [$0902], sp                                ; $47d7: $08 $02 $09
    nop                                           ; $47da: $00
    nop                                           ; $47db: $00
    ld b, $01                                     ; $47dc: $06 $01
    inc bc                                        ; $47de: $03
    ld [bc], a                                    ; $47df: $02
    inc bc                                        ; $47e0: $03
    inc bc                                        ; $47e1: $03
    inc bc                                        ; $47e2: $03
    rst $38                                       ; $47e3: $ff
    ld [$0304], sp                                ; $47e4: $08 $04 $03
    dec b                                         ; $47e7: $05
    inc bc                                        ; $47e8: $03
    ld b, $03                                     ; $47e9: $06 $03
    rlca                                          ; $47eb: $07
    inc bc                                        ; $47ec: $03
    ld [$0903], sp                                ; $47ed: $08 $03 $09
    nop                                           ; $47f0: $00
    nop                                           ; $47f1: $00
    inc bc                                        ; $47f2: $03
    ld [bc], a                                    ; $47f3: $02
    inc bc                                        ; $47f4: $03
    inc b                                         ; $47f5: $04
    inc bc                                        ; $47f6: $03
    ld b, $03                                     ; $47f7: $06 $03
    ld [$0a00], sp                                ; $47f9: $08 $00 $0a
    nop                                           ; $47fc: $00
    inc c                                         ; $47fd: $0c
    nop                                           ; $47fe: $00
    jr jr_002_4801                                ; $47ff: $18 $00

jr_002_4801:
    inc c                                         ; $4801: $0c
    inc bc                                        ; $4802: $03
    ld c, $03                                     ; $4803: $0e $03
    db $10                                        ; $4805: $10
    inc bc                                        ; $4806: $03
    ld [de], a                                    ; $4807: $12
    inc bc                                        ; $4808: $03
    inc d                                         ; $4809: $14
    inc bc                                        ; $480a: $03
    ld d, $03                                     ; $480b: $16 $03
    ld a, [bc]                                    ; $480d: $0a
    nop                                           ; $480e: $00
    jr jr_002_4814                                ; $480f: $18 $03

    ld a, [de]                                    ; $4811: $1a
    inc bc                                        ; $4812: $03
    inc e                                         ; $4813: $1c

jr_002_4814:
    inc bc                                        ; $4814: $03
    ld e, $03                                     ; $4815: $1e $03
    jr nz, jr_002_481c                            ; $4817: $20 $03

    ld [hl+], a                                   ; $4819: $22
    inc bc                                        ; $481a: $03
    ld a, [bc]                                    ; $481b: $0a

jr_002_481c:
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    ld a, [bc]                                    ; $481e: $0a
    ld [bc], a                                    ; $481f: $02
    inc bc                                        ; $4820: $03
    inc b                                         ; $4821: $04
    inc bc                                        ; $4822: $03
    ld b, $03                                     ; $4823: $06 $03
    ld [$0a03], sp                                ; $4825: $08 $03 $0a
    inc bc                                        ; $4828: $03
    inc c                                         ; $4829: $0c
    inc bc                                        ; $482a: $03
    ld c, $03                                     ; $482b: $0e $03
    db $10                                        ; $482d: $10
    inc bc                                        ; $482e: $03
    ld [de], a                                    ; $482f: $12
    inc bc                                        ; $4830: $03
    inc d                                         ; $4831: $14
    inc bc                                        ; $4832: $03
    ld d, $03                                     ; $4833: $16 $03
    jr jr_002_483a                                ; $4835: $18 $03

    ld a, [de]                                    ; $4837: $1a
    inc bc                                        ; $4838: $03
    inc e                                         ; $4839: $1c

jr_002_483a:
    inc bc                                        ; $483a: $03
    ld e, $03                                     ; $483b: $1e $03
    jr nz, jr_002_4842                            ; $483d: $20 $03

    nop                                           ; $483f: $00
    ld b, $22                                     ; $4840: $06 $22

jr_002_4842:
    inc bc                                        ; $4842: $03
    inc h                                         ; $4843: $24
    ld a, [bc]                                    ; $4844: $0a
    ld [hl+], a                                   ; $4845: $22
    inc bc                                        ; $4846: $03
    rst $38                                       ; $4847: $ff
    ld a, [hl+]                                   ; $4848: $2a
    nop                                           ; $4849: $00
    inc bc                                        ; $484a: $03
    ld bc, $0203                                  ; $484b: $01 $03 $02
    inc bc                                        ; $484e: $03
    inc bc                                        ; $484f: $03
    inc bc                                        ; $4850: $03
    inc b                                         ; $4851: $04
    inc bc                                        ; $4852: $03
    dec b                                         ; $4853: $05
    inc bc                                        ; $4854: $03
    rst $38                                       ; $4855: $ff
    inc c                                         ; $4856: $0c
    nop                                           ; $4857: $00
    dec e                                         ; $4858: $1d
    ld bc, $0206                                  ; $4859: $01 $06 $02
    ld b, $03                                     ; $485c: $06 $03
    ld b, $04                                     ; $485e: $06 $04
    ld b, $05                                     ; $4860: $06 $05
    ld b, $06                                     ; $4862: $06 $06
    inc bc                                        ; $4864: $03
    rlca                                          ; $4865: $07
    inc bc                                        ; $4866: $03
    ld [$0903], sp                                ; $4867: $08 $03 $09
    inc bc                                        ; $486a: $03
    ld a, [bc]                                    ; $486b: $0a
    inc bc                                        ; $486c: $03
    dec bc                                        ; $486d: $0b
    inc bc                                        ; $486e: $03
    inc b                                         ; $486f: $04
    inc bc                                        ; $4870: $03
    dec b                                         ; $4871: $05
    inc bc                                        ; $4872: $03
    rst $38                                       ; $4873: $ff
    db $10                                        ; $4874: $10
    inc c                                         ; $4875: $0c
    inc bc                                        ; $4876: $03
    dec c                                         ; $4877: $0d
    inc bc                                        ; $4878: $03
    ld c, $03                                     ; $4879: $0e $03
    rst $38                                       ; $487b: $ff
    ld b, $0f                                     ; $487c: $06 $0f
    ld b, $10                                     ; $487e: $06 $10
    ld b, $11                                     ; $4880: $06 $11
    ld b, $12                                     ; $4882: $06 $12
    ld b, $13                                     ; $4884: $06 $13
    nop                                           ; $4886: $00
    ld [hl], d                                    ; $4887: $72
    cp l                                          ; $4888: $bd
    ld [bc], a                                    ; $4889: $02
    rst $20                                       ; $488a: $e7
    ld b, $b8                                     ; $488b: $06 $b8
    ld b, c                                       ; $488d: $41
    rst $20                                       ; $488e: $e7
    ld b, $c1                                     ; $488f: $06 $c1

jr_002_4891:
    ld b, c                                       ; $4891: $41
    nop                                           ; $4892: $00
    ld b, $18                                     ; $4893: $06 $18
    adc d                                         ; $4895: $8a
    ld c, b                                       ; $4896: $48
    ld d, h                                       ; $4897: $54
    nop                                           ; $4898: $00
    sub b                                         ; $4899: $90
    nop                                           ; $489a: $00
    ld [de], a                                    ; $489b: $12
    inc b                                         ; $489c: $04
    ld h, b                                       ; $489d: $60
    rst $20                                       ; $489e: $e7
    rlca                                          ; $489f: $07
    ld [hl], h                                    ; $48a0: $74
    ld b, c                                       ; $48a1: $41
    rst $20                                       ; $48a2: $e7
    rlca                                          ; $48a3: $07
    ret                                           ; $48a4: $c9


    ld b, c                                       ; $48a5: $41
    rst $20                                       ; $48a6: $e7
    rlca                                          ; $48a7: $07
    ld a, d                                       ; $48a8: $7a
    ld b, d                                       ; $48a9: $42
    nop                                           ; $48aa: $00
    ld bc, $02e7                                  ; $48ab: $01 $e7 $02
    xor e                                         ; $48ae: $ab
    ld h, e                                       ; $48af: $63
    daa                                           ; $48b0: $27
    xor d                                         ; $48b1: $aa
    ld c, b                                       ; $48b2: $48
    rst $20                                       ; $48b3: $e7
    rlca                                          ; $48b4: $07
    add sp, $41                                   ; $48b5: $e8 $41
    jr nc, jr_002_48b9                            ; $48b7: $30 $00

jr_002_48b9:
    ld c, c                                       ; $48b9: $49
    rst $20                                       ; $48ba: $e7
    rlca                                          ; $48bb: $07
    ld a, [bc]                                    ; $48bc: $0a
    ld b, d                                       ; $48bd: $42
    daa                                           ; $48be: $27
    xor d                                         ; $48bf: $aa
    ld c, b                                       ; $48c0: $48
    inc c                                         ; $48c1: $0c
    ld de, $e749                                  ; $48c2: $11 $49 $e7
    rlca                                          ; $48c5: $07
    ld c, h                                       ; $48c6: $4c
    ld b, d                                       ; $48c7: $42
    nop                                           ; $48c8: $00
    ld bc, $07e7                                  ; $48c9: $01 $e7 $07
    ld d, c                                       ; $48cc: $51
    ld b, d                                       ; $48cd: $42
    dec l                                         ; $48ce: $2d
    ret z                                         ; $48cf: $c8

    ld c, b                                       ; $48d0: $48
    rst $20                                       ; $48d1: $e7
    rlca                                          ; $48d2: $07
    ld e, c                                       ; $48d3: $59
    ld b, d                                       ; $48d4: $42
    daa                                           ; $48d5: $27
    add sp, $48                                   ; $48d6: $e8 $48
    nop                                           ; $48d8: $00
    ld e, $0c                                     ; $48d9: $1e $0c
    ld d, d                                       ; $48db: $52
    ld c, c                                       ; $48dc: $49
    rst $20                                       ; $48dd: $e7
    rlca                                          ; $48de: $07
    db $fc                                        ; $48df: $fc
    ld b, c                                       ; $48e0: $41
    rst $20                                       ; $48e1: $e7
    rlca                                          ; $48e2: $07
    ccf                                           ; $48e3: $3f
    ld b, d                                       ; $48e4: $42
    jr jr_002_4891                                ; $48e5: $18 $aa

    ld c, b                                       ; $48e7: $48
    dec d                                         ; $48e8: $15
    ld h, $00                                     ; $48e9: $26 $00
    ld e, $e7                                     ; $48eb: $1e $e7
    rlca                                          ; $48ed: $07
    db $fc                                        ; $48ee: $fc
    ld b, c                                       ; $48ef: $41
    rst $20                                       ; $48f0: $e7
    rlca                                          ; $48f1: $07
    ccf                                           ; $48f2: $3f
    ld b, d                                       ; $48f3: $42
    rst $20                                       ; $48f4: $e7
    rlca                                          ; $48f5: $07
    ld l, b                                       ; $48f6: $68
    ld b, d                                       ; $48f7: $42
    dec l                                         ; $48f8: $2d
    db $fd                                        ; $48f9: $fd
    ld c, b                                       ; $48fa: $48
    call z, $5727                                 ; $48fb: $cc $27 $57
    nop                                           ; $48fe: $00
    nop                                           ; $48ff: $00
    rst $20                                       ; $4900: $e7
    rlca                                          ; $4901: $07
    cp c                                          ; $4902: $b9
    ld b, c                                       ; $4903: $41
    nop                                           ; $4904: $00
    ld bc, $07e7                                  ; $4905: $01 $e7 $07
    ret                                           ; $4908: $c9


    ld b, c                                       ; $4909: $41
    rst $20                                       ; $490a: $e7
    rlca                                          ; $490b: $07
    ld bc, $1842                                  ; $490c: $01 $42 $18
    xor d                                         ; $490f: $aa
    ld c, b                                       ; $4910: $48
    dec d                                         ; $4911: $15
    ld c, d                                       ; $4912: $4a
    sub b                                         ; $4913: $90
    ld bc, $07e7                                  ; $4914: $01 $e7 $07
    ld a, d                                       ; $4917: $7a
    ld b, d                                       ; $4918: $42
    nop                                           ; $4919: $00
    ld bc, $0290                                  ; $491a: $01 $90 $02
    rst $20                                       ; $491d: $e7
    rlca                                          ; $491e: $07
    ld a, d                                       ; $491f: $7a
    ld b, d                                       ; $4920: $42
    nop                                           ; $4921: $00
    ld bc, $0390                                  ; $4922: $01 $90 $03
    rst $20                                       ; $4925: $e7
    rlca                                          ; $4926: $07
    ld a, d                                       ; $4927: $7a
    ld b, d                                       ; $4928: $42
    nop                                           ; $4929: $00
    ld bc, $0490                                  ; $492a: $01 $90 $04
    rst $20                                       ; $492d: $e7
    rlca                                          ; $492e: $07
    ld a, d                                       ; $492f: $7a
    ld b, d                                       ; $4930: $42
    nop                                           ; $4931: $00
    ld bc, $0590                                  ; $4932: $01 $90 $05
    rst $20                                       ; $4935: $e7
    rlca                                          ; $4936: $07
    ld a, d                                       ; $4937: $7a
    ld b, d                                       ; $4938: $42
    nop                                           ; $4939: $00
    ld bc, $0690                                  ; $493a: $01 $90 $06
    rst $20                                       ; $493d: $e7
    rlca                                          ; $493e: $07
    ld a, d                                       ; $493f: $7a
    ld b, d                                       ; $4940: $42
    nop                                           ; $4941: $00
    ld bc, $0790                                  ; $4942: $01 $90 $07
    rst $20                                       ; $4945: $e7
    rlca                                          ; $4946: $07
    ld a, d                                       ; $4947: $7a
    ld b, d                                       ; $4948: $42
    nop                                           ; $4949: $00
    ld bc, $0890                                  ; $494a: $01 $90 $08
    rst $20                                       ; $494d: $e7
    rlca                                          ; $494e: $07
    or c                                          ; $494f: $b1
    ld b, d                                       ; $4950: $42
    rrca                                          ; $4951: $0f
    dec d                                         ; $4952: $15
    ld a, [de]                                    ; $4953: $1a
    sub b                                         ; $4954: $90
    rlca                                          ; $4955: $07
    rst $20                                       ; $4956: $e7
    rlca                                          ; $4957: $07
    ld a, d                                       ; $4958: $7a
    ld b, d                                       ; $4959: $42
    nop                                           ; $495a: $00
    ld bc, $0690                                  ; $495b: $01 $90 $06
    rst $20                                       ; $495e: $e7
    rlca                                          ; $495f: $07
    ld a, d                                       ; $4960: $7a
    ld b, d                                       ; $4961: $42
    nop                                           ; $4962: $00
    ld bc, $0590                                  ; $4963: $01 $90 $05
    rst $20                                       ; $4966: $e7
    rlca                                          ; $4967: $07
    ld a, d                                       ; $4968: $7a
    ld b, d                                       ; $4969: $42
    nop                                           ; $496a: $00
    ld bc, $0490                                  ; $496b: $01 $90 $04
    rst $20                                       ; $496e: $e7
    rlca                                          ; $496f: $07
    ld a, d                                       ; $4970: $7a
    ld b, d                                       ; $4971: $42
    nop                                           ; $4972: $00
    ld bc, $0390                                  ; $4973: $01 $90 $03
    rst $20                                       ; $4976: $e7
    rlca                                          ; $4977: $07
    ld a, d                                       ; $4978: $7a
    ld b, d                                       ; $4979: $42
    nop                                           ; $497a: $00
    ld bc, $0290                                  ; $497b: $01 $90 $02
    rst $20                                       ; $497e: $e7
    rlca                                          ; $497f: $07
    ld a, d                                       ; $4980: $7a
    ld b, d                                       ; $4981: $42
    nop                                           ; $4982: $00
    ld bc, $0190                                  ; $4983: $01 $90 $01
    rst $20                                       ; $4986: $e7
    rlca                                          ; $4987: $07
    ld a, d                                       ; $4988: $7a
    ld b, d                                       ; $4989: $42
    nop                                           ; $498a: $00
    ld bc, $0090                                  ; $498b: $01 $90 $00
    rst $20                                       ; $498e: $e7
    rlca                                          ; $498f: $07
    ld a, d                                       ; $4990: $7a
    ld b, d                                       ; $4991: $42
    rrca                                          ; $4992: $0f
    ld [hl], d                                    ; $4993: $72
    sub b                                         ; $4994: $90
    nop                                           ; $4995: $00
    sub e                                         ; $4996: $93
    rst $20                                       ; $4997: $e7
    ld b, $c7                                     ; $4998: $06 $c7
    ld l, b                                       ; $499a: $68
    rst $20                                       ; $499b: $e7
    ld b, $cd                                     ; $499c: $06 $cd
    ld l, b                                       ; $499e: $68
    rst $20                                       ; $499f: $e7
    ld b, $d3                                     ; $49a0: $06 $d3
    ld l, b                                       ; $49a2: $68
    nop                                           ; $49a3: $00
    ld bc, $9618                                  ; $49a4: $01 $18 $96
    ld c, c                                       ; $49a7: $49

    db $54, $98, $e7, $06, $de, $68, $d2, $47, $4a

    ld b, a                                       ; $49b1: $47
    ld c, d                                       ; $49b2: $4a
    ld b, a                                       ; $49b3: $47
    ld c, d                                       ; $49b4: $4a
    ld b, a                                       ; $49b5: $47
    ld c, d                                       ; $49b6: $4a
    ld b, a                                       ; $49b7: $47
    ld c, d                                       ; $49b8: $4a
    ld b, a                                       ; $49b9: $47
    ld c, d                                       ; $49ba: $4a
    ld b, a                                       ; $49bb: $47
    ld c, d                                       ; $49bc: $4a
    ld b, a                                       ; $49bd: $47
    ld c, d                                       ; $49be: $4a
    ld b, a                                       ; $49bf: $47
    ld c, d                                       ; $49c0: $4a
    ld b, a                                       ; $49c1: $47
    ld c, d                                       ; $49c2: $4a
    ld b, a                                       ; $49c3: $47
    ld c, d                                       ; $49c4: $4a
    ld b, a                                       ; $49c5: $47
    ld c, d                                       ; $49c6: $4a
    ld b, a                                       ; $49c7: $47
    ld c, d                                       ; $49c8: $4a
    ld b, a                                       ; $49c9: $47
    ld c, d                                       ; $49ca: $4a
    cp l                                          ; $49cb: $bd
    ld c, d                                       ; $49cc: $4a
    ld b, a                                       ; $49cd: $47
    ld c, d                                       ; $49ce: $4a
    ld b, a                                       ; $49cf: $47
    ld c, d                                       ; $49d0: $4a
    ld b, a                                       ; $49d1: $47
    ld c, d                                       ; $49d2: $4a
    ld b, a                                       ; $49d3: $47
    ld c, d                                       ; $49d4: $4a
    ld b, a                                       ; $49d5: $47
    ld c, d                                       ; $49d6: $4a
    ld b, a                                       ; $49d7: $47
    ld c, d                                       ; $49d8: $4a
    ld b, a                                       ; $49d9: $47
    ld c, d                                       ; $49da: $4a
    ld b, a                                       ; $49db: $47
    ld c, d                                       ; $49dc: $4a
    ld b, a                                       ; $49dd: $47
    ld c, d                                       ; $49de: $4a
    ld b, a                                       ; $49df: $47
    ld c, d                                       ; $49e0: $4a
    ld b, a                                       ; $49e1: $47
    ld c, d                                       ; $49e2: $4a
    ld b, a                                       ; $49e3: $47
    ld c, d                                       ; $49e4: $4a
    ld b, a                                       ; $49e5: $47
    ld c, d                                       ; $49e6: $4a
    ld b, a                                       ; $49e7: $47
    ld c, d                                       ; $49e8: $4a
    ld b, a                                       ; $49e9: $47
    ld c, d                                       ; $49ea: $4a
    ld b, a                                       ; $49eb: $47
    ld c, d                                       ; $49ec: $4a
    ld b, a                                       ; $49ed: $47
    ld c, d                                       ; $49ee: $4a
    ld b, a                                       ; $49ef: $47
    ld c, d                                       ; $49f0: $4a
    ld b, a                                       ; $49f1: $47
    ld c, d                                       ; $49f2: $4a
    ld b, a                                       ; $49f3: $47
    ld c, d                                       ; $49f4: $4a
    ld b, a                                       ; $49f5: $47
    ld c, d                                       ; $49f6: $4a
    ld b, a                                       ; $49f7: $47
    ld c, d                                       ; $49f8: $4a
    ld b, a                                       ; $49f9: $47
    ld c, d                                       ; $49fa: $4a
    ld b, a                                       ; $49fb: $47
    ld c, d                                       ; $49fc: $4a
    ld b, a                                       ; $49fd: $47
    ld c, d                                       ; $49fe: $4a
    ld b, a                                       ; $49ff: $47
    ld c, d                                       ; $4a00: $4a
    ld b, a                                       ; $4a01: $47
    ld c, d                                       ; $4a02: $4a
    ld b, a                                       ; $4a03: $47
    ld c, d                                       ; $4a04: $4a
    ld b, a                                       ; $4a05: $47
    ld c, d                                       ; $4a06: $4a
    ld b, a                                       ; $4a07: $47
    ld c, d                                       ; $4a08: $4a
    ld b, a                                       ; $4a09: $47
    ld c, d                                       ; $4a0a: $4a
    ld b, a                                       ; $4a0b: $47
    ld c, d                                       ; $4a0c: $4a
    ld b, a                                       ; $4a0d: $47
    ld c, d                                       ; $4a0e: $4a
    ld b, a                                       ; $4a0f: $47
    ld c, d                                       ; $4a10: $4a
    ld b, a                                       ; $4a11: $47
    ld c, d                                       ; $4a12: $4a
    ld b, a                                       ; $4a13: $47
    ld c, d                                       ; $4a14: $4a
    ld b, a                                       ; $4a15: $47
    ld c, d                                       ; $4a16: $4a
    ld b, a                                       ; $4a17: $47
    ld c, d                                       ; $4a18: $4a
    ld b, a                                       ; $4a19: $47
    ld c, d                                       ; $4a1a: $4a
    ld b, a                                       ; $4a1b: $47
    ld c, d                                       ; $4a1c: $4a
    ld b, a                                       ; $4a1d: $47
    ld c, d                                       ; $4a1e: $4a
    ld b, a                                       ; $4a1f: $47
    ld c, d                                       ; $4a20: $4a
    ld b, a                                       ; $4a21: $47
    ld c, d                                       ; $4a22: $4a
    ld b, a                                       ; $4a23: $47
    ld c, d                                       ; $4a24: $4a
    ld b, a                                       ; $4a25: $47
    ld c, d                                       ; $4a26: $4a
    ld b, a                                       ; $4a27: $47
    ld c, d                                       ; $4a28: $4a
    ld b, a                                       ; $4a29: $47
    ld c, d                                       ; $4a2a: $4a
    ld b, a                                       ; $4a2b: $47
    ld c, d                                       ; $4a2c: $4a
    ld b, a                                       ; $4a2d: $47
    ld c, d                                       ; $4a2e: $4a
    ld b, a                                       ; $4a2f: $47
    ld c, d                                       ; $4a30: $4a
    ld b, a                                       ; $4a31: $47
    ld c, d                                       ; $4a32: $4a
    ld b, a                                       ; $4a33: $47
    ld c, d                                       ; $4a34: $4a
    ld b, c                                       ; $4a35: $41
    ld c, e                                       ; $4a36: $4b
    ld b, a                                       ; $4a37: $47
    ld c, d                                       ; $4a38: $4a
    ld b, a                                       ; $4a39: $47
    ld c, d                                       ; $4a3a: $4a
    ld b, a                                       ; $4a3b: $47
    ld c, d                                       ; $4a3c: $4a
    ld b, a                                       ; $4a3d: $47
    ld c, d                                       ; $4a3e: $4a
    ld b, a                                       ; $4a3f: $47
    ld c, d                                       ; $4a40: $4a
    ld b, a                                       ; $4a41: $47
    ld c, d                                       ; $4a42: $4a
    sbc l                                         ; $4a43: $9d
    ld c, e                                       ; $4a44: $4b
    ld b, a                                       ; $4a45: $47
    ld c, d                                       ; $4a46: $4a

    db $e1, $04, $d2, $63, $4a

    ld a, c                                       ; $4a4c: $79
    ld c, d                                       ; $4a4d: $4a

    db $a6, $4a, $8f, $4a

    jp nc, $4a63                                  ; $4a52: $d2 $63 $4a

    and [hl]                                      ; $4a55: $a6
    ld c, d                                       ; $4a56: $4a
    and [hl]                                      ; $4a57: $a6
    ld c, d                                       ; $4a58: $4a
    and [hl]                                      ; $4a59: $a6
    ld c, d                                       ; $4a5a: $4a
    ld a, c                                       ; $4a5b: $79
    ld c, d                                       ; $4a5c: $4a
    adc a                                         ; $4a5d: $8f
    ld c, d                                       ; $4a5e: $4a
    adc a                                         ; $4a5f: $8f
    ld c, d                                       ; $4a60: $4a
    adc a                                         ; $4a61: $8f
    ld c, d                                       ; $4a62: $4a

    db $de, $00, $51, $a5, $41, $03, $00, $00, $06, $38, $ff, $e1, $1e, $24, $f3, $61
    db $06, $00, $00, $18, $47, $4a

    sbc $04                                       ; $4a79: $de $04
    ld d, c                                       ; $4a7b: $51
    xor a                                         ; $4a7c: $af
    ld b, c                                       ; $4a7d: $41
    inc bc                                        ; $4a7e: $03
    nop                                           ; $4a7f: $00
    nop                                           ; $4a80: $00
    ld b, $c8                                     ; $4a81: $06 $c8
    nop                                           ; $4a83: $00
    pop hl                                        ; $4a84: $e1
    ld e, $24                                     ; $4a85: $1e $24
    di                                            ; $4a87: $f3
    ld h, c                                       ; $4a88: $61
    ld b, $00                                     ; $4a89: $06 $00
    nop                                           ; $4a8b: $00
    jr jr_002_4ad5                                ; $4a8c: $18 $47

    ld c, d                                       ; $4a8e: $4a

    db $de, $06, $51, $b9, $41, $66, $03, $38, $ff, $06, $00, $00, $e1, $1e, $24, $f3
    db $61

    inc bc                                        ; $4aa0: $03
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    jr jr_002_4aec                                ; $4aa3: $18 $47

    ld c, d                                       ; $4aa5: $4a

    db $de, $02, $51, $b9, $41, $69, $03, $c8, $00, $06, $00, $00, $e1, $1e, $24, $f3
    db $61, $03, $00, $00, $18, $47, $4a

    ld d, h                                       ; $4abd: $54
    nop                                           ; $4abe: $00
    add a                                         ; $4abf: $87
    inc b                                         ; $4ac0: $04
    ld c, e                                       ; $4ac1: $4b
    inc hl                                        ; $4ac2: $23
    ld c, e                                       ; $4ac3: $4b
    scf                                           ; $4ac4: $37
    ld c, e                                       ; $4ac5: $4b
    db $e4                                        ; $4ac6: $e4
    ld c, d                                       ; $4ac7: $4a
    daa                                           ; $4ac8: $27
    ld c, e                                       ; $4ac9: $4b
    di                                            ; $4aca: $f3
    ld c, d                                       ; $4acb: $4a
    rst $28                                       ; $4acc: $ef
    ld c, d                                       ; $4acd: $4a
    db $10                                        ; $4ace: $10
    ld c, e                                       ; $4acf: $4b
    inc c                                         ; $4ad0: $0c
    ld c, e                                       ; $4ad1: $4b

jr_002_4ad2:
    jr jr_002_4b1f                                ; $4ad2: $18 $4b

    ld [hl-], a                                   ; $4ad4: $32

jr_002_4ad5:
    ld c, e                                       ; $4ad5: $4b
    rst $30                                       ; $4ad6: $f7
    ld c, d                                       ; $4ad7: $4a
    inc a                                         ; $4ad8: $3c
    ld c, e                                       ; $4ad9: $4b
    nop                                           ; $4ada: $00
    ld c, e                                       ; $4adb: $4b
    ld [$2c4b], sp                                ; $4adc: $08 $4b $2c
    ld c, e                                       ; $4adf: $4b
    ei                                            ; $4ae0: $fb
    ld c, d                                       ; $4ae1: $4a
    inc d                                         ; $4ae2: $14
    ld c, e                                       ; $4ae3: $4b
    add hl, bc                                    ; $4ae4: $09
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00
    inc d                                         ; $4ae7: $14
    add hl, bc                                    ; $4ae8: $09
    ld bc, $1400                                  ; $4ae9: $01 $00 $14

jr_002_4aec:
    jr jr_002_4ad2                                ; $4aec: $18 $e4

    ld c, d                                       ; $4aee: $4a
    add hl, bc                                    ; $4aef: $09
    ld [bc], a                                    ; $4af0: $02
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    add hl, bc                                    ; $4af3: $09
    inc bc                                        ; $4af4: $03
    nop                                           ; $4af5: $00
    nop                                           ; $4af6: $00
    add hl, bc                                    ; $4af7: $09
    inc b                                         ; $4af8: $04
    nop                                           ; $4af9: $00
    nop                                           ; $4afa: $00
    ld h, [hl]                                    ; $4afb: $66
    add hl, bc                                    ; $4afc: $09
    dec b                                         ; $4afd: $05
    nop                                           ; $4afe: $00
    nop                                           ; $4aff: $00
    add hl, bc                                    ; $4b00: $09
    ld b, $00                                     ; $4b01: $06 $00
    nop                                           ; $4b03: $00
    add hl, bc                                    ; $4b04: $09
    rlca                                          ; $4b05: $07
    nop                                           ; $4b06: $00
    nop                                           ; $4b07: $00
    add hl, bc                                    ; $4b08: $09
    ld [$0000], sp                                ; $4b09: $08 $00 $00
    add hl, bc                                    ; $4b0c: $09
    add hl, bc                                    ; $4b0d: $09
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    add hl, bc                                    ; $4b10: $09
    ld a, [bc]                                    ; $4b11: $0a
    nop                                           ; $4b12: $00
    nop                                           ; $4b13: $00
    add hl, bc                                    ; $4b14: $09
    dec bc                                        ; $4b15: $0b
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    add hl, bc                                    ; $4b18: $09
    inc c                                         ; $4b19: $0c
    nop                                           ; $4b1a: $00
    inc d                                         ; $4b1b: $14
    add hl, bc                                    ; $4b1c: $09
    dec c                                         ; $4b1d: $0d
    nop                                           ; $4b1e: $00

jr_002_4b1f:
    inc d                                         ; $4b1f: $14
    jr jr_002_4b3a                                ; $4b20: $18 $18

    ld c, e                                       ; $4b22: $4b
    add hl, bc                                    ; $4b23: $09
    ld c, $00                                     ; $4b24: $0e $00
    nop                                           ; $4b26: $00
    ld d, c                                       ; $4b27: $51
    push de                                       ; $4b28: $d5
    ld b, l                                       ; $4b29: $45
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    ld h, [hl]                                    ; $4b2c: $66
    ld d, c                                       ; $4b2d: $51
    dec sp                                        ; $4b2e: $3b
    ld b, [hl]                                    ; $4b2f: $46
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    ld d, c                                       ; $4b32: $51
    ld a, e                                       ; $4b33: $7b
    ld b, [hl]                                    ; $4b34: $46
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    ld d, c                                       ; $4b37: $51
    and c                                         ; $4b38: $a1
    ld b, [hl]                                    ; $4b39: $46

jr_002_4b3a:
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    ld d, c                                       ; $4b3c: $51
    xor a                                         ; $4b3d: $af
    ld b, [hl]                                    ; $4b3e: $46
    nop                                           ; $4b3f: $00
    nop                                           ; $4b40: $00
    add a                                         ; $4b41: $87
    ld c, [hl]                                    ; $4b42: $4e
    ld c, e                                       ; $4b43: $4b
    ld e, d                                       ; $4b44: $5a
    ld c, e                                       ; $4b45: $4b
    ld b, a                                       ; $4b46: $47
    ld c, d                                       ; $4b47: $4a
    ld h, a                                       ; $4b48: $67
    ld c, e                                       ; $4b49: $4b
    ld b, a                                       ; $4b4a: $47
    ld c, d                                       ; $4b4b: $4a
    ld h, b                                       ; $4b4c: $60
    ld c, e                                       ; $4b4d: $4b
    ld d, h                                       ; $4b4e: $54
    sbc b                                         ; $4b4f: $98
    add hl, bc                                    ; $4b50: $09
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    ld d, h                                       ; $4b54: $54
    sbc b                                         ; $4b55: $98
    add hl, bc                                    ; $4b56: $09
    ld bc, $0000                                  ; $4b57: $01 $00 $00
    ld d, h                                       ; $4b5a: $54
    sbc b                                         ; $4b5b: $98
    add hl, bc                                    ; $4b5c: $09
    inc b                                         ; $4b5d: $04
    nop                                           ; $4b5e: $00
    nop                                           ; $4b5f: $00
    ld d, h                                       ; $4b60: $54
    sbc b                                         ; $4b61: $98
    ld h, [hl]                                    ; $4b62: $66
    add hl, bc                                    ; $4b63: $09
    ld bc, $0000                                  ; $4b64: $01 $00 $00
    ld d, h                                       ; $4b67: $54
    sbc b                                         ; $4b68: $98
    pop hl                                        ; $4b69: $e1
    ld [bc], a                                    ; $4b6a: $02
    db $e4                                        ; $4b6b: $e4
    nop                                           ; $4b6c: $00
    add [hl]                                      ; $4b6d: $86
    ld c, e                                       ; $4b6e: $4b
    sbc $06                                       ; $4b6f: $de $06
    ld d, c                                       ; $4b71: $51
    cp c                                          ; $4b72: $b9
    ld b, c                                       ; $4b73: $41
    ld h, [hl]                                    ; $4b74: $66
    inc bc                                        ; $4b75: $03
    jr c, @+$01                                   ; $4b76: $38 $ff

    ld b, $00                                     ; $4b78: $06 $00
    nop                                           ; $4b7a: $00
    pop hl                                        ; $4b7b: $e1
    ld e, $24                                     ; $4b7c: $1e $24
    di                                            ; $4b7e: $f3
    ld h, c                                       ; $4b7f: $61
    inc bc                                        ; $4b80: $03
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    jr jr_002_4bec                                ; $4b83: $18 $67

    ld c, e                                       ; $4b85: $4b
    sbc $02                                       ; $4b86: $de $02
    ld d, c                                       ; $4b88: $51
    cp c                                          ; $4b89: $b9
    ld b, c                                       ; $4b8a: $41
    ld l, c                                       ; $4b8b: $69
    inc bc                                        ; $4b8c: $03
    ret z                                         ; $4b8d: $c8

    nop                                           ; $4b8e: $00
    ld b, $00                                     ; $4b8f: $06 $00
    nop                                           ; $4b91: $00
    pop hl                                        ; $4b92: $e1
    ld e, $24                                     ; $4b93: $1e $24
    di                                            ; $4b95: $f3
    ld h, c                                       ; $4b96: $61
    inc bc                                        ; $4b97: $03
    nop                                           ; $4b98: $00
    nop                                           ; $4b99: $00
    jr @+$69                                      ; $4b9a: $18 $67

    ld c, e                                       ; $4b9c: $4b
    add a                                         ; $4b9d: $87
    sbc $4c                                       ; $4b9e: $de $4c
    db $e4                                        ; $4ba0: $e4
    ld c, h                                       ; $4ba1: $4c
    ld [$f04c], a                                 ; $4ba2: $ea $4c $f0
    ld c, h                                       ; $4ba5: $4c
    or $4c                                        ; $4ba6: $f6 $4c
    ld d, h                                       ; $4ba8: $54
    sbc b                                         ; $4ba9: $98
    cp l                                          ; $4baa: $bd
    ld [bc], a                                    ; $4bab: $02
    add hl, bc                                    ; $4bac: $09
    rlca                                          ; $4bad: $07
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    ld d, h                                       ; $4bb0: $54
    sbc b                                         ; $4bb1: $98
    cp l                                          ; $4bb2: $bd
    ld b, $09                                     ; $4bb3: $06 $09
    nop                                           ; $4bb5: $00
    nop                                           ; $4bb6: $00
    nop                                           ; $4bb7: $00

    db $6f, $73, $41, $60, $54, $10, $00, $00, $e7, $06, $65, $67, $57, $00, $00

    ld l, a                                       ; $4bc7: $6f
    ld [hl], e                                    ; $4bc8: $73
    ld b, c                                       ; $4bc9: $41
    ld h, b                                       ; $4bca: $60
    ld d, h                                       ; $4bcb: $54
    stop                                          ; $4bcc: $10 $00
    nop                                           ; $4bce: $00
    rst $20                                       ; $4bcf: $e7
    ld b, $a7                                     ; $4bd0: $06 $a7
    ld h, a                                       ; $4bd2: $67
    ld d, a                                       ; $4bd3: $57
    nop                                           ; $4bd4: $00
    nop                                           ; $4bd5: $00

    db $6f, $73, $41, $60, $54, $10, $00, $00

    ld d, h                                       ; $4bde: $54
    nop                                           ; $4bdf: $00
    rst $20                                       ; $4be0: $e7
    ld b, $e6                                     ; $4be1: $06 $e6
    ld h, a                                       ; $4be3: $67
    ld d, a                                       ; $4be4: $57
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    ld l, a                                       ; $4be7: $6f
    ld [hl], e                                    ; $4be8: $73
    ld b, c                                       ; $4be9: $41
    ld h, b                                       ; $4bea: $60
    ld d, h                                       ; $4beb: $54

jr_002_4bec:
    stop                                          ; $4bec: $10 $00
    nop                                           ; $4bee: $00
    ld d, h                                       ; $4bef: $54
    nop                                           ; $4bf0: $00
    rst $20                                       ; $4bf1: $e7
    ld b, $e0                                     ; $4bf2: $06 $e0
    ld h, a                                       ; $4bf4: $67
    ld d, a                                       ; $4bf5: $57
    nop                                           ; $4bf6: $00
    nop                                           ; $4bf7: $00

    db $6f, $73, $41, $60, $54, $10, $00, $00, $6f, $73, $41, $60, $09, $00, $54, $10
    db $00, $00, $87

    adc e                                         ; $4c0b: $8b
    ld c, h                                       ; $4c0c: $4c
    sub d                                         ; $4c0d: $92
    ld c, h                                       ; $4c0e: $4c
    sbc c                                         ; $4c0f: $99
    ld c, h                                       ; $4c10: $4c
    and b                                         ; $4c11: $a0
    ld c, h                                       ; $4c12: $4c
    and a                                         ; $4c13: $a7
    ld c, h                                       ; $4c14: $4c

    db $ae, $4c, $b4, $4c

    cp e                                          ; $4c19: $bb
    ld c, h                                       ; $4c1a: $4c
    jp nz, $8b4c                                  ; $4c1b: $c2 $4c $8b

    ld c, h                                       ; $4c1e: $4c
    adc e                                         ; $4c1f: $8b
    ld c, h                                       ; $4c20: $4c
    adc e                                         ; $4c21: $8b
    ld c, h                                       ; $4c22: $4c
    adc e                                         ; $4c23: $8b
    ld c, h                                       ; $4c24: $4c
    ret                                           ; $4c25: $c9


    ld c, h                                       ; $4c26: $4c
    ret nc                                        ; $4c27: $d0

    ld c, h                                       ; $4c28: $4c
    rst $10                                       ; $4c29: $d7
    ld c, h                                       ; $4c2a: $4c
    adc e                                         ; $4c2b: $8b
    ld c, h                                       ; $4c2c: $4c
    adc e                                         ; $4c2d: $8b
    ld c, h                                       ; $4c2e: $4c
    adc e                                         ; $4c2f: $8b
    ld c, h                                       ; $4c30: $4c
    adc e                                         ; $4c31: $8b
    ld c, h                                       ; $4c32: $4c
    sbc $4c                                       ; $4c33: $de $4c
    db $e4                                        ; $4c35: $e4
    ld c, h                                       ; $4c36: $4c
    ld [$f04c], a                                 ; $4c37: $ea $4c $f0
    ld c, h                                       ; $4c3a: $4c
    or $4c                                        ; $4c3b: $f6 $4c
    nop                                           ; $4c3d: $00
    ld c, l                                       ; $4c3e: $4d
    inc c                                         ; $4c3f: $0c
    ld c, l                                       ; $4c40: $4d
    ld d, $4d                                     ; $4c41: $16 $4d
    jr nz, jr_002_4c92                            ; $4c43: $20 $4d

    ld a, [hl+]                                   ; $4c45: $2a
    ld c, l                                       ; $4c46: $4d
    dec [hl]                                      ; $4c47: $35
    ld c, l                                       ; $4c48: $4d
    ccf                                           ; $4c49: $3f
    ld c, l                                       ; $4c4a: $4d
    ld c, c                                       ; $4c4b: $49
    ld c, l                                       ; $4c4c: $4d
    ld d, e                                       ; $4c4d: $53
    ld c, l                                       ; $4c4e: $4d
    ld e, [hl]                                    ; $4c4f: $5e
    ld c, l                                       ; $4c50: $4d
    ld l, b                                       ; $4c51: $68
    ld c, l                                       ; $4c52: $4d
    ld [hl], d                                    ; $4c53: $72
    ld c, l                                       ; $4c54: $4d
    ld a, h                                       ; $4c55: $7c
    ld c, l                                       ; $4c56: $4d
    add a                                         ; $4c57: $87
    ld c, l                                       ; $4c58: $4d
    sub c                                         ; $4c59: $91
    ld c, l                                       ; $4c5a: $4d
    sbc e                                         ; $4c5b: $9b
    ld c, l                                       ; $4c5c: $4d
    and l                                         ; $4c5d: $a5
    ld c, l                                       ; $4c5e: $4d
    or b                                          ; $4c5f: $b0
    ld c, l                                       ; $4c60: $4d
    cp d                                          ; $4c61: $ba
    ld c, l                                       ; $4c62: $4d
    call nz, $ce4d                                ; $4c63: $c4 $4d $ce
    ld c, l                                       ; $4c66: $4d
    reti                                          ; $4c67: $d9


    ld c, l                                       ; $4c68: $4d
    db $e3                                        ; $4c69: $e3
    ld c, l                                       ; $4c6a: $4d
    db $ed                                        ; $4c6b: $ed
    ld c, l                                       ; $4c6c: $4d
    rst $30                                       ; $4c6d: $f7
    ld c, l                                       ; $4c6e: $4d
    ld [bc], a                                    ; $4c6f: $02
    ld c, [hl]                                    ; $4c70: $4e
    add hl, bc                                    ; $4c71: $09
    ld c, [hl]                                    ; $4c72: $4e
    inc de                                        ; $4c73: $13
    ld c, [hl]                                    ; $4c74: $4e
    dec e                                         ; $4c75: $1d
    ld c, [hl]                                    ; $4c76: $4e
    daa                                           ; $4c77: $27
    ld c, [hl]                                    ; $4c78: $4e
    ld [hl-], a                                   ; $4c79: $32
    ld c, [hl]                                    ; $4c7a: $4e
    jr c, @+$50                                   ; $4c7b: $38 $4e

    ld a, $4e                                     ; $4c7d: $3e $4e
    ld c, b                                       ; $4c7f: $48
    ld c, [hl]                                    ; $4c80: $4e
    ld d, d                                       ; $4c81: $52
    ld c, [hl]                                    ; $4c82: $4e
    ld l, l                                       ; $4c83: $6d
    ld c, [hl]                                    ; $4c84: $4e
    ld h, e                                       ; $4c85: $63
    ld c, [hl]                                    ; $4c86: $4e
    ld [hl], a                                    ; $4c87: $77
    ld c, [hl]                                    ; $4c88: $4e
    ld a, l                                       ; $4c89: $7d
    ld c, [hl]                                    ; $4c8a: $4e
    cp l                                          ; $4c8b: $bd
    ld bc, $7951                                  ; $4c8c: $01 $51 $79
    ld b, d                                       ; $4c8f: $42
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00

jr_002_4c92:
    cp l                                          ; $4c92: $bd
    ld bc, $dd51                                  ; $4c93: $01 $51 $dd
    ld b, d                                       ; $4c96: $42
    nop                                           ; $4c97: $00
    nop                                           ; $4c98: $00
    cp l                                          ; $4c99: $bd
    ld bc, $8551                                  ; $4c9a: $01 $51 $85
    ld b, d                                       ; $4c9d: $42
    nop                                           ; $4c9e: $00
    nop                                           ; $4c9f: $00
    cp l                                          ; $4ca0: $bd
    ld bc, $e351                                  ; $4ca1: $01 $51 $e3
    ld b, d                                       ; $4ca4: $42
    nop                                           ; $4ca5: $00
    nop                                           ; $4ca6: $00
    cp l                                          ; $4ca7: $bd
    ld bc, $f951                                  ; $4ca8: $01 $51 $f9
    ld b, d                                       ; $4cab: $42
    nop                                           ; $4cac: $00
    nop                                           ; $4cad: $00

    db $bd, $01, $09, $10, $00, $00, $bd, $01, $51, $cf, $42, $00, $00

    cp l                                          ; $4cbb: $bd
    ld bc, $c751                                  ; $4cbc: $01 $51 $c7
    ld b, d                                       ; $4cbf: $42
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    cp l                                          ; $4cc2: $bd
    ld bc, $cd51                                  ; $4cc3: $01 $51 $cd
    ld b, d                                       ; $4cc6: $42
    nop                                           ; $4cc7: $00
    nop                                           ; $4cc8: $00
    cp l                                          ; $4cc9: $bd
    ld b, $51                                     ; $4cca: $06 $51
    ld e, e                                       ; $4ccc: $5b
    ld b, d                                       ; $4ccd: $42
    nop                                           ; $4cce: $00
    nop                                           ; $4ccf: $00
    cp l                                          ; $4cd0: $bd
    ld b, $51                                     ; $4cd1: $06 $51
    ld h, l                                       ; $4cd3: $65
    ld b, d                                       ; $4cd4: $42
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    cp l                                          ; $4cd7: $bd
    rlca                                          ; $4cd8: $07
    ld d, c                                       ; $4cd9: $51
    ld l, a                                       ; $4cda: $6f
    ld b, d                                       ; $4cdb: $42
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    cp l                                          ; $4cde: $bd
    ld [bc], a                                    ; $4cdf: $02
    add hl, bc                                    ; $4ce0: $09
    jr nc, jr_002_4ce3                            ; $4ce1: $30 $00

jr_002_4ce3:
    nop                                           ; $4ce3: $00
    cp l                                          ; $4ce4: $bd
    nop                                           ; $4ce5: $00
    add hl, bc                                    ; $4ce6: $09
    ld sp, $0000                                  ; $4ce7: $31 $00 $00
    cp l                                          ; $4cea: $bd
    ld b, $09                                     ; $4ceb: $06 $09
    ld [hl-], a                                   ; $4ced: $32
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    cp l                                          ; $4cf0: $bd
    rlca                                          ; $4cf1: $07
    add hl, bc                                    ; $4cf2: $09
    inc sp                                        ; $4cf3: $33
    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    ld [de], a                                    ; $4cf6: $12
    ld [$04bd], sp                                ; $4cf7: $08 $bd $04
    db $ed                                        ; $4cfa: $ed
    ld [bc], a                                    ; $4cfb: $02
    add hl, bc                                    ; $4cfc: $09
    inc [hl]                                      ; $4cfd: $34
    nop                                           ; $4cfe: $00
    nop                                           ; $4cff: $00
    ld d, h                                       ; $4d00: $54
    sbc b                                         ; $4d01: $98
    ld [de], a                                    ; $4d02: $12
    ld [$04bd], sp                                ; $4d03: $08 $bd $04
    db $ed                                        ; $4d06: $ed
    nop                                           ; $4d07: $00
    add hl, bc                                    ; $4d08: $09
    ld [hl], $00                                  ; $4d09: $36 $00
    nop                                           ; $4d0b: $00
    ld [de], a                                    ; $4d0c: $12
    ld [$00bd], sp                                ; $4d0d: $08 $bd $00
    db $ed                                        ; $4d10: $ed
    ld [bc], a                                    ; $4d11: $02
    add hl, bc                                    ; $4d12: $09
    jr c, jr_002_4d15                             ; $4d13: $38 $00

jr_002_4d15:
    nop                                           ; $4d15: $00
    ld [de], a                                    ; $4d16: $12
    ld [$00bd], sp                                ; $4d17: $08 $bd $00
    db $ed                                        ; $4d1a: $ed
    ld [bc], a                                    ; $4d1b: $02
    add hl, bc                                    ; $4d1c: $09
    ld a, [hl-]                                   ; $4d1d: $3a
    nop                                           ; $4d1e: $00
    nop                                           ; $4d1f: $00
    ld [de], a                                    ; $4d20: $12
    ld [$00bd], sp                                ; $4d21: $08 $bd $00
    db $ed                                        ; $4d24: $ed
    ld [bc], a                                    ; $4d25: $02
    add hl, bc                                    ; $4d26: $09
    inc a                                         ; $4d27: $3c
    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    ld h, [hl]                                    ; $4d2a: $66
    ld [de], a                                    ; $4d2b: $12
    ld [$00bd], sp                                ; $4d2c: $08 $bd $00
    db $ed                                        ; $4d2f: $ed
    ld [bc], a                                    ; $4d30: $02
    add hl, bc                                    ; $4d31: $09
    ld a, [hl-]                                   ; $4d32: $3a
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    ld [de], a                                    ; $4d35: $12
    ld [$00bd], sp                                ; $4d36: $08 $bd $00
    db $ed                                        ; $4d39: $ed
    ld [bc], a                                    ; $4d3a: $02
    add hl, bc                                    ; $4d3b: $09
    ld a, $00                                     ; $4d3c: $3e $00
    nop                                           ; $4d3e: $00
    ld [de], a                                    ; $4d3f: $12
    ld [$00bd], sp                                ; $4d40: $08 $bd $00
    db $ed                                        ; $4d43: $ed
    ld [bc], a                                    ; $4d44: $02
    add hl, bc                                    ; $4d45: $09
    ld b, b                                       ; $4d46: $40
    nop                                           ; $4d47: $00
    nop                                           ; $4d48: $00
    ld [de], a                                    ; $4d49: $12
    ld [$00bd], sp                                ; $4d4a: $08 $bd $00
    db $ed                                        ; $4d4d: $ed
    ld [bc], a                                    ; $4d4e: $02
    add hl, bc                                    ; $4d4f: $09
    ld b, d                                       ; $4d50: $42
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    ld h, [hl]                                    ; $4d53: $66
    ld [de], a                                    ; $4d54: $12
    ld [$00bd], sp                                ; $4d55: $08 $bd $00
    db $ed                                        ; $4d58: $ed
    ld [bc], a                                    ; $4d59: $02
    add hl, bc                                    ; $4d5a: $09
    ld b, b                                       ; $4d5b: $40
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    ld [de], a                                    ; $4d5e: $12
    ld [$00bd], sp                                ; $4d5f: $08 $bd $00
    db $ed                                        ; $4d62: $ed
    ld [bc], a                                    ; $4d63: $02
    add hl, bc                                    ; $4d64: $09
    ld b, h                                       ; $4d65: $44
    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    ld [de], a                                    ; $4d68: $12
    ld [$00bd], sp                                ; $4d69: $08 $bd $00
    db $ed                                        ; $4d6c: $ed
    ld [bc], a                                    ; $4d6d: $02
    add hl, bc                                    ; $4d6e: $09
    ld b, [hl]                                    ; $4d6f: $46
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    ld [de], a                                    ; $4d72: $12
    ld [$00bd], sp                                ; $4d73: $08 $bd $00
    db $ed                                        ; $4d76: $ed
    ld [bc], a                                    ; $4d77: $02
    add hl, bc                                    ; $4d78: $09
    ld c, b                                       ; $4d79: $48
    nop                                           ; $4d7a: $00
    nop                                           ; $4d7b: $00
    ld h, [hl]                                    ; $4d7c: $66
    ld [de], a                                    ; $4d7d: $12
    ld [$00bd], sp                                ; $4d7e: $08 $bd $00
    db $ed                                        ; $4d81: $ed
    ld [bc], a                                    ; $4d82: $02
    add hl, bc                                    ; $4d83: $09
    ld b, [hl]                                    ; $4d84: $46
    nop                                           ; $4d85: $00
    nop                                           ; $4d86: $00
    ld [de], a                                    ; $4d87: $12
    ld [$00bd], sp                                ; $4d88: $08 $bd $00
    db $ed                                        ; $4d8b: $ed
    ld bc, $4a09                                  ; $4d8c: $01 $09 $4a
    nop                                           ; $4d8f: $00
    nop                                           ; $4d90: $00
    ld [de], a                                    ; $4d91: $12
    ld [$00bd], sp                                ; $4d92: $08 $bd $00
    db $ed                                        ; $4d95: $ed
    ld bc, $4c09                                  ; $4d96: $01 $09 $4c
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    ld [de], a                                    ; $4d9b: $12
    ld [$00bd], sp                                ; $4d9c: $08 $bd $00
    db $ed                                        ; $4d9f: $ed
    ld bc, $4e09                                  ; $4da0: $01 $09 $4e
    nop                                           ; $4da3: $00
    nop                                           ; $4da4: $00
    ld h, [hl]                                    ; $4da5: $66
    ld [de], a                                    ; $4da6: $12
    ld [$00bd], sp                                ; $4da7: $08 $bd $00
    db $ed                                        ; $4daa: $ed
    ld bc, $4c09                                  ; $4dab: $01 $09 $4c
    nop                                           ; $4dae: $00
    nop                                           ; $4daf: $00
    ld [de], a                                    ; $4db0: $12
    ld [$00bd], sp                                ; $4db1: $08 $bd $00
    db $ed                                        ; $4db4: $ed
    ld bc, $5009                                  ; $4db5: $01 $09 $50
    nop                                           ; $4db8: $00
    nop                                           ; $4db9: $00
    ld [de], a                                    ; $4dba: $12
    ld [$00bd], sp                                ; $4dbb: $08 $bd $00
    db $ed                                        ; $4dbe: $ed
    ld bc, $5209                                  ; $4dbf: $01 $09 $52
    nop                                           ; $4dc2: $00
    nop                                           ; $4dc3: $00
    ld [de], a                                    ; $4dc4: $12
    ld [$00bd], sp                                ; $4dc5: $08 $bd $00
    db $ed                                        ; $4dc8: $ed
    ld bc, $5409                                  ; $4dc9: $01 $09 $54
    nop                                           ; $4dcc: $00
    nop                                           ; $4dcd: $00
    ld h, [hl]                                    ; $4dce: $66
    ld [de], a                                    ; $4dcf: $12
    ld [$00bd], sp                                ; $4dd0: $08 $bd $00
    db $ed                                        ; $4dd3: $ed
    ld bc, $5209                                  ; $4dd4: $01 $09 $52
    nop                                           ; $4dd7: $00
    nop                                           ; $4dd8: $00
    ld [de], a                                    ; $4dd9: $12
    ld [$00bd], sp                                ; $4dda: $08 $bd $00
    db $ed                                        ; $4ddd: $ed
    ld bc, $5609                                  ; $4dde: $01 $09 $56
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    ld [de], a                                    ; $4de3: $12
    ld [$00bd], sp                                ; $4de4: $08 $bd $00
    db $ed                                        ; $4de7: $ed
    ld bc, $5809                                  ; $4de8: $01 $09 $58
    nop                                           ; $4deb: $00
    nop                                           ; $4dec: $00
    ld [de], a                                    ; $4ded: $12
    ld [$00bd], sp                                ; $4dee: $08 $bd $00
    db $ed                                        ; $4df1: $ed
    ld bc, $5a09                                  ; $4df2: $01 $09 $5a
    nop                                           ; $4df5: $00
    nop                                           ; $4df6: $00
    ld h, [hl]                                    ; $4df7: $66
    ld [de], a                                    ; $4df8: $12
    ld [$00bd], sp                                ; $4df9: $08 $bd $00
    db $ed                                        ; $4dfc: $ed
    ld bc, $5809                                  ; $4dfd: $01 $09 $58
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    cp l                                          ; $4e02: $bd
    inc b                                         ; $4e03: $04
    ld d, c                                       ; $4e04: $51
    xor c                                         ; $4e05: $a9
    ld b, e                                       ; $4e06: $43
    nop                                           ; $4e07: $00
    nop                                           ; $4e08: $00
    ld [de], a                                    ; $4e09: $12
    ld [$00bd], sp                                ; $4e0a: $08 $bd $00
    db $ed                                        ; $4e0d: $ed
    ld bc, $6109                                  ; $4e0e: $01 $09 $61
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    ld [de], a                                    ; $4e13: $12
    ld [$00bd], sp                                ; $4e14: $08 $bd $00
    db $ed                                        ; $4e17: $ed
    ld bc, $6309                                  ; $4e18: $01 $09 $63
    nop                                           ; $4e1b: $00
    nop                                           ; $4e1c: $00
    ld [de], a                                    ; $4e1d: $12
    ld [$00bd], sp                                ; $4e1e: $08 $bd $00
    db $ed                                        ; $4e21: $ed
    ld bc, $6509                                  ; $4e22: $01 $09 $65
    nop                                           ; $4e25: $00
    nop                                           ; $4e26: $00
    ld h, [hl]                                    ; $4e27: $66
    ld [de], a                                    ; $4e28: $12
    ld [$00bd], sp                                ; $4e29: $08 $bd $00
    db $ed                                        ; $4e2c: $ed
    ld bc, $6309                                  ; $4e2d: $01 $09 $63
    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    cp l                                          ; $4e32: $bd
    ld b, $09                                     ; $4e33: $06 $09
    ld h, a                                       ; $4e35: $67
    nop                                           ; $4e36: $00
    nop                                           ; $4e37: $00
    cp l                                          ; $4e38: $bd
    inc b                                         ; $4e39: $04
    add hl, bc                                    ; $4e3a: $09
    ld l, b                                       ; $4e3b: $68
    nop                                           ; $4e3c: $00
    nop                                           ; $4e3d: $00
    ld [de], a                                    ; $4e3e: $12
    ld [$00bd], sp                                ; $4e3f: $08 $bd $00
    db $ed                                        ; $4e42: $ed
    ld bc, $6909                                  ; $4e43: $01 $09 $69
    nop                                           ; $4e46: $00
    nop                                           ; $4e47: $00
    ld [de], a                                    ; $4e48: $12
    ld [$00bd], sp                                ; $4e49: $08 $bd $00
    db $ed                                        ; $4e4c: $ed
    ld bc, $6b09                                  ; $4e4d: $01 $09 $6b
    nop                                           ; $4e50: $00
    nop                                           ; $4e51: $00
    ld [de], a                                    ; $4e52: $12
    ld [$00bd], sp                                ; $4e53: $08 $bd $00
    db $ed                                        ; $4e56: $ed
    ld bc, $6d09                                  ; $4e57: $01 $09 $6d
    nop                                           ; $4e5a: $00
    inc d                                         ; $4e5b: $14
    add hl, bc                                    ; $4e5c: $09
    ld l, a                                       ; $4e5d: $6f
    nop                                           ; $4e5e: $00
    inc d                                         ; $4e5f: $14
    jr @+$5a                                      ; $4e60: $18 $58

    ld c, [hl]                                    ; $4e62: $4e
    ld [de], a                                    ; $4e63: $12
    ld [$00bd], sp                                ; $4e64: $08 $bd $00
    db $ed                                        ; $4e67: $ed
    ld bc, $7109                                  ; $4e68: $01 $09 $71
    nop                                           ; $4e6b: $00
    nop                                           ; $4e6c: $00
    ld [de], a                                    ; $4e6d: $12
    ld [$00bd], sp                                ; $4e6e: $08 $bd $00
    db $ed                                        ; $4e71: $ed
    ld bc, $7309                                  ; $4e72: $01 $09 $73
    nop                                           ; $4e75: $00
    nop                                           ; $4e76: $00
    cp l                                          ; $4e77: $bd
    inc bc                                        ; $4e78: $03
    add hl, bc                                    ; $4e79: $09
    ld [hl], l                                    ; $4e7a: $75
    nop                                           ; $4e7b: $00
    nop                                           ; $4e7c: $00
    cp l                                          ; $4e7d: $bd
    inc b                                         ; $4e7e: $04
    add hl, bc                                    ; $4e7f: $09
    halt                                          ; $4e80: $76
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    ld d, h                                       ; $4e83: $54
    jr jr_002_4e98                                ; $4e84: $18 $12

    ld [$00bd], sp                                ; $4e86: $08 $bd $00
    db $ed                                        ; $4e89: $ed
    inc b                                         ; $4e8a: $04
    add hl, bc                                    ; $4e8b: $09
    nop                                           ; $4e8c: $00
    nop                                           ; $4e8d: $00
    nop                                           ; $4e8e: $00
    ld [de], a                                    ; $4e8f: $12
    ld [$00bd], sp                                ; $4e90: $08 $bd $00
    db $ed                                        ; $4e93: $ed
    inc bc                                        ; $4e94: $03
    ld d, c                                       ; $4e95: $51
    ld l, e                                       ; $4e96: $6b
    ld b, a                                       ; $4e97: $47

jr_002_4e98:
    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    ld [de], a                                    ; $4e9a: $12
    ld [$00bd], sp                                ; $4e9b: $08 $bd $00
    db $ed                                        ; $4e9e: $ed
    ld bc, $9751                                  ; $4e9f: $01 $51 $97
    ld b, a                                       ; $4ea2: $47
    nop                                           ; $4ea3: $00
    nop                                           ; $4ea4: $00

    db $72, $87, $b8, $4e, $c0, $4e, $d0, $4e, $c8, $4e, $b7, $4e, $bf, $4e, $cf, $4e
    db $c7, $4e, $66, $bd, $04, $51, $c3, $41, $00, $00, $66, $bd, $05, $51, $c5, $41
    db $00, $00, $66, $bd, $06, $51, $e3, $41, $00, $00, $66, $bd, $01, $51, $21, $42
    db $00, $00

    ld [hl], d                                    ; $4ed7: $72
    add a                                         ; $4ed8: $87

jr_002_4ed9:
    add hl, de                                    ; $4ed9: $19
    ld c, a                                       ; $4eda: $4f
    ld hl, $294f                                  ; $4edb: $21 $4f $29
    ld c, a                                       ; $4ede: $4f
    ld sp, $394f                                  ; $4edf: $31 $4f $39
    ld c, a                                       ; $4ee2: $4f
    ld b, c                                       ; $4ee3: $41
    ld c, a                                       ; $4ee4: $4f
    ld c, c                                       ; $4ee5: $49
    ld c, a                                       ; $4ee6: $4f
    ld d, c                                       ; $4ee7: $51
    ld c, a                                       ; $4ee8: $4f

jr_002_4ee9:
    ld e, c                                       ; $4ee9: $59
    ld c, a                                       ; $4eea: $4f
    ld h, c                                       ; $4eeb: $61
    ld c, a                                       ; $4eec: $4f
    ld l, c                                       ; $4eed: $69
    ld c, a                                       ; $4eee: $4f
    ld [hl], c                                    ; $4eef: $71
    ld c, a                                       ; $4ef0: $4f

jr_002_4ef1:
    ld a, c                                       ; $4ef1: $79
    ld c, a                                       ; $4ef2: $4f
    add c                                         ; $4ef3: $81
    ld c, a                                       ; $4ef4: $4f
    adc c                                         ; $4ef5: $89
    ld c, a                                       ; $4ef6: $4f
    sub c                                         ; $4ef7: $91
    ld c, a                                       ; $4ef8: $4f

jr_002_4ef9:
    sbc c                                         ; $4ef9: $99
    ld c, a                                       ; $4efa: $4f
    and c                                         ; $4efb: $a1
    ld c, a                                       ; $4efc: $4f
    xor c                                         ; $4efd: $a9
    ld c, a                                       ; $4efe: $4f
    or c                                          ; $4eff: $b1
    ld c, a                                       ; $4f00: $4f

jr_002_4f01:
    cp c                                          ; $4f01: $b9
    ld c, a                                       ; $4f02: $4f
    pop bc                                        ; $4f03: $c1
    ld c, a                                       ; $4f04: $4f
    ret                                           ; $4f05: $c9


    ld c, a                                       ; $4f06: $4f
    pop de                                        ; $4f07: $d1
    ld c, a                                       ; $4f08: $4f

jr_002_4f09:
    reti                                          ; $4f09: $d9


    ld c, a                                       ; $4f0a: $4f
    pop hl                                        ; $4f0b: $e1
    ld c, a                                       ; $4f0c: $4f
    jp hl                                         ; $4f0d: $e9


    ld c, a                                       ; $4f0e: $4f
    pop af                                        ; $4f0f: $f1
    ld c, a                                       ; $4f10: $4f

jr_002_4f11:
    ld sp, hl                                     ; $4f11: $f9
    ld c, a                                       ; $4f12: $4f
    ld bc, $0950                                  ; $4f13: $01 $50 $09
    ld d, b                                       ; $4f16: $50
    ld de, $5450                                  ; $4f17: $11 $50 $54
    jr jr_002_4ed9                                ; $4f1a: $18 $bd

    dec b                                         ; $4f1c: $05
    add hl, bc                                    ; $4f1d: $09
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    nop                                           ; $4f20: $00

jr_002_4f21:
    ld d, h                                       ; $4f21: $54
    jr @-$41                                      ; $4f22: $18 $bd

    ld bc, $0109                                  ; $4f24: $01 $09 $01
    nop                                           ; $4f27: $00
    nop                                           ; $4f28: $00

jr_002_4f29:
    ld d, h                                       ; $4f29: $54
    jr jr_002_4ee9                                ; $4f2a: $18 $bd

    inc bc                                        ; $4f2c: $03
    add hl, bc                                    ; $4f2d: $09
    ld [bc], a                                    ; $4f2e: $02
    nop                                           ; $4f2f: $00
    nop                                           ; $4f30: $00

jr_002_4f31:
    ld d, h                                       ; $4f31: $54
    jr jr_002_4ef1                                ; $4f32: $18 $bd

    ld bc, $0309                                  ; $4f34: $01 $09 $03
    nop                                           ; $4f37: $00
    nop                                           ; $4f38: $00

jr_002_4f39:
    ld d, h                                       ; $4f39: $54
    jr jr_002_4ef9                                ; $4f3a: $18 $bd

    nop                                           ; $4f3c: $00
    add hl, bc                                    ; $4f3d: $09
    inc b                                         ; $4f3e: $04
    nop                                           ; $4f3f: $00
    nop                                           ; $4f40: $00

jr_002_4f41:
    ld d, h                                       ; $4f41: $54
    jr jr_002_4f01                                ; $4f42: $18 $bd

    ld bc, $0509                                  ; $4f44: $01 $09 $05
    nop                                           ; $4f47: $00
    nop                                           ; $4f48: $00

jr_002_4f49:
    ld d, h                                       ; $4f49: $54
    jr jr_002_4f09                                ; $4f4a: $18 $bd

    nop                                           ; $4f4c: $00
    add hl, bc                                    ; $4f4d: $09
    ld b, $00                                     ; $4f4e: $06 $00
    nop                                           ; $4f50: $00

jr_002_4f51:
    ld d, h                                       ; $4f51: $54
    jr jr_002_4f11                                ; $4f52: $18 $bd

    ld bc, $0709                                  ; $4f54: $01 $09 $07
    nop                                           ; $4f57: $00
    nop                                           ; $4f58: $00

jr_002_4f59:
    ld d, h                                       ; $4f59: $54
    jr @-$41                                      ; $4f5a: $18 $bd

    dec b                                         ; $4f5c: $05
    add hl, bc                                    ; $4f5d: $09
    ld [$0000], sp                                ; $4f5e: $08 $00 $00

jr_002_4f61:
    ld d, h                                       ; $4f61: $54
    jr jr_002_4f21                                ; $4f62: $18 $bd

    dec b                                         ; $4f64: $05
    add hl, bc                                    ; $4f65: $09
    add hl, bc                                    ; $4f66: $09
    nop                                           ; $4f67: $00
    nop                                           ; $4f68: $00

jr_002_4f69:
    ld d, h                                       ; $4f69: $54
    jr jr_002_4f29                                ; $4f6a: $18 $bd

    ld bc, $0a09                                  ; $4f6c: $01 $09 $0a
    nop                                           ; $4f6f: $00
    nop                                           ; $4f70: $00

jr_002_4f71:
    ld d, h                                       ; $4f71: $54
    jr jr_002_4f31                                ; $4f72: $18 $bd

    ld bc, $0b09                                  ; $4f74: $01 $09 $0b
    nop                                           ; $4f77: $00
    nop                                           ; $4f78: $00

jr_002_4f79:
    ld d, h                                       ; $4f79: $54
    jr jr_002_4f39                                ; $4f7a: $18 $bd

    ld bc, $0c09                                  ; $4f7c: $01 $09 $0c
    nop                                           ; $4f7f: $00
    nop                                           ; $4f80: $00

jr_002_4f81:
    ld d, h                                       ; $4f81: $54
    jr jr_002_4f41                                ; $4f82: $18 $bd

    inc bc                                        ; $4f84: $03
    add hl, bc                                    ; $4f85: $09
    dec c                                         ; $4f86: $0d
    nop                                           ; $4f87: $00
    nop                                           ; $4f88: $00

jr_002_4f89:
    ld d, h                                       ; $4f89: $54
    jr jr_002_4f49                                ; $4f8a: $18 $bd

    nop                                           ; $4f8c: $00
    add hl, bc                                    ; $4f8d: $09
    ld c, $00                                     ; $4f8e: $0e $00
    nop                                           ; $4f90: $00

jr_002_4f91:
    ld d, h                                       ; $4f91: $54
    jr jr_002_4f51                                ; $4f92: $18 $bd

    dec b                                         ; $4f94: $05
    add hl, bc                                    ; $4f95: $09
    rrca                                          ; $4f96: $0f
    nop                                           ; $4f97: $00
    nop                                           ; $4f98: $00

jr_002_4f99:
    ld d, h                                       ; $4f99: $54
    jr jr_002_4f59                                ; $4f9a: $18 $bd

    dec b                                         ; $4f9c: $05
    add hl, bc                                    ; $4f9d: $09
    stop                                          ; $4f9e: $10 $00
    nop                                           ; $4fa0: $00

jr_002_4fa1:
    ld d, h                                       ; $4fa1: $54
    jr jr_002_4f61                                ; $4fa2: $18 $bd

    dec b                                         ; $4fa4: $05
    add hl, bc                                    ; $4fa5: $09
    ld de, $0000                                  ; $4fa6: $11 $00 $00

jr_002_4fa9:
    ld d, h                                       ; $4fa9: $54
    jr jr_002_4f69                                ; $4faa: $18 $bd

    nop                                           ; $4fac: $00
    add hl, bc                                    ; $4fad: $09
    ld [de], a                                    ; $4fae: $12
    nop                                           ; $4faf: $00
    nop                                           ; $4fb0: $00

jr_002_4fb1:
    ld d, h                                       ; $4fb1: $54
    jr jr_002_4f71                                ; $4fb2: $18 $bd

    ld bc, $1309                                  ; $4fb4: $01 $09 $13
    nop                                           ; $4fb7: $00
    nop                                           ; $4fb8: $00

jr_002_4fb9:
    ld d, h                                       ; $4fb9: $54
    jr jr_002_4f79                                ; $4fba: $18 $bd

    ld bc, $1409                                  ; $4fbc: $01 $09 $14
    nop                                           ; $4fbf: $00
    nop                                           ; $4fc0: $00

jr_002_4fc1:
    ld d, h                                       ; $4fc1: $54
    jr jr_002_4f81                                ; $4fc2: $18 $bd

    dec b                                         ; $4fc4: $05
    add hl, bc                                    ; $4fc5: $09
    dec d                                         ; $4fc6: $15
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00

jr_002_4fc9:
    ld d, h                                       ; $4fc9: $54
    jr jr_002_4f89                                ; $4fca: $18 $bd

    inc bc                                        ; $4fcc: $03
    add hl, bc                                    ; $4fcd: $09
    ld d, $00                                     ; $4fce: $16 $00
    nop                                           ; $4fd0: $00

jr_002_4fd1:
    ld d, h                                       ; $4fd1: $54
    jr jr_002_4f91                                ; $4fd2: $18 $bd

    dec b                                         ; $4fd4: $05
    add hl, bc                                    ; $4fd5: $09
    rla                                           ; $4fd6: $17
    nop                                           ; $4fd7: $00
    nop                                           ; $4fd8: $00
    ld d, h                                       ; $4fd9: $54
    jr jr_002_4f99                                ; $4fda: $18 $bd

    dec b                                         ; $4fdc: $05
    add hl, bc                                    ; $4fdd: $09
    jr jr_002_4fe0                                ; $4fde: $18 $00

jr_002_4fe0:
    nop                                           ; $4fe0: $00
    ld d, h                                       ; $4fe1: $54
    jr jr_002_4fa1                                ; $4fe2: $18 $bd

    ld bc, $1909                                  ; $4fe4: $01 $09 $19
    nop                                           ; $4fe7: $00
    nop                                           ; $4fe8: $00
    ld d, h                                       ; $4fe9: $54
    jr jr_002_4fa9                                ; $4fea: $18 $bd

    inc bc                                        ; $4fec: $03
    add hl, bc                                    ; $4fed: $09
    ld a, [de]                                    ; $4fee: $1a
    nop                                           ; $4fef: $00
    nop                                           ; $4ff0: $00
    ld d, h                                       ; $4ff1: $54
    jr jr_002_4fb1                                ; $4ff2: $18 $bd

    ld bc, $1b09                                  ; $4ff4: $01 $09 $1b
    nop                                           ; $4ff7: $00
    nop                                           ; $4ff8: $00
    ld d, h                                       ; $4ff9: $54
    jr jr_002_4fb9                                ; $4ffa: $18 $bd

    ld bc, $1c09                                  ; $4ffc: $01 $09 $1c
    nop                                           ; $4fff: $00
    nop                                           ; $5000: $00
    ld d, h                                       ; $5001: $54
    jr jr_002_4fc1                                ; $5002: $18 $bd

    dec b                                         ; $5004: $05
    add hl, bc                                    ; $5005: $09
    dec e                                         ; $5006: $1d
    nop                                           ; $5007: $00
    nop                                           ; $5008: $00
    ld d, h                                       ; $5009: $54
    jr jr_002_4fc9                                ; $500a: $18 $bd

    dec b                                         ; $500c: $05
    add hl, bc                                    ; $500d: $09
    ld e, $00                                     ; $500e: $1e $00
    nop                                           ; $5010: $00
    ld d, h                                       ; $5011: $54
    jr jr_002_4fd1                                ; $5012: $18 $bd

    ld bc, $1f09                                  ; $5014: $01 $09 $1f
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    ld [hl], d                                    ; $5019: $72
    cp l                                          ; $501a: $bd
    nop                                           ; $501b: $00
    rst $20                                       ; $501c: $e7
    ld b, $8c                                     ; $501d: $06 $8c
    ld h, h                                       ; $501f: $64
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    ld [de], a                                    ; $5022: $12
    ld [$00bd], sp                                ; $5023: $08 $bd $00
    db $ed                                        ; $5026: $ed
    ld [bc], a                                    ; $5027: $02
    add hl, bc                                    ; $5028: $09
    cp $00                                        ; $5029: $fe $00
    nop                                           ; $502b: $00
    ld [de], a                                    ; $502c: $12
    ld [$00bd], sp                                ; $502d: $08 $bd $00
    db $ed                                        ; $5030: $ed
    ld bc, $1a09                                  ; $5031: $01 $09 $1a
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    ld [de], a                                    ; $5036: $12
    ld [$00bd], sp                                ; $5037: $08 $bd $00
    db $ed                                        ; $503a: $ed
    ld bc, $2409                                  ; $503b: $01 $09 $24
    nop                                           ; $503e: $00
    nop                                           ; $503f: $00
    ld [de], a                                    ; $5040: $12
    ld [$00bd], sp                                ; $5041: $08 $bd $00
    db $ed                                        ; $5044: $ed
    ld bc, $2e09                                  ; $5045: $01 $09 $2e
    nop                                           ; $5048: $00
    nop                                           ; $5049: $00
    ld d, h                                       ; $504a: $54
    sbc b                                         ; $504b: $98
    ld [de], a                                    ; $504c: $12
    ld [$02bd], sp                                ; $504d: $08 $bd $02
    db $ed                                        ; $5050: $ed
    inc b                                         ; $5051: $04
    add hl, bc                                    ; $5052: $09
    ld c, $00                                     ; $5053: $0e $00
    nop                                           ; $5055: $00
    ld h, b                                       ; $5056: $60
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00

    db $54, $98, $bd, $07, $09, $07, $00, $00

    ld d, h                                       ; $5061: $54
    sbc b                                         ; $5062: $98
    add hl, bc                                    ; $5063: $09
    rlca                                          ; $5064: $07
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    ld d, h                                       ; $5067: $54
    sbc b                                         ; $5068: $98
    push de                                       ; $5069: $d5
    add hl, bc                                    ; $506a: $09
    nop                                           ; $506b: $00
    nop                                           ; $506c: $00
    nop                                           ; $506d: $00
    ld h, b                                       ; $506e: $60
    ld d, a                                       ; $506f: $57
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00

    db $bd, $02, $51, $8b, $41, $00, $00

    cp l                                          ; $5079: $bd
    ld b, $51                                     ; $507a: $06 $51
    sbc l                                         ; $507c: $9d
    ld b, c                                       ; $507d: $41
    nop                                           ; $507e: $00
    nop                                           ; $507f: $00
    push de                                       ; $5080: $d5
    cp l                                          ; $5081: $bd
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    nop                                           ; $5084: $00
    ld [hl], d                                    ; $5085: $72
    cp l                                          ; $5086: $bd
    ld b, $87                                     ; $5087: $06 $87

jr_002_5089:
    sub e                                         ; $5089: $93
    ld d, b                                       ; $508a: $50
    sub a                                         ; $508b: $97
    ld d, b                                       ; $508c: $50
    sbc e                                         ; $508d: $9b
    ld d, b                                       ; $508e: $50
    sbc a                                         ; $508f: $9f
    ld d, b                                       ; $5090: $50
    and e                                         ; $5091: $a3
    ld d, b                                       ; $5092: $50
    add hl, bc                                    ; $5093: $09
    nop                                           ; $5094: $00
    nop                                           ; $5095: $00
    nop                                           ; $5096: $00
    add hl, bc                                    ; $5097: $09
    ld bc, $0000                                  ; $5098: $01 $00 $00
    add hl, bc                                    ; $509b: $09
    ld [bc], a                                    ; $509c: $02
    nop                                           ; $509d: $00
    nop                                           ; $509e: $00
    add hl, bc                                    ; $509f: $09
    inc bc                                        ; $50a0: $03
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    add hl, bc                                    ; $50a3: $09
    inc b                                         ; $50a4: $04
    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    ld d, h                                       ; $50a7: $54
    sbc b                                         ; $50a8: $98
    cp l                                          ; $50a9: $bd
    inc bc                                        ; $50aa: $03
    db $ed                                        ; $50ab: $ed
    ld [bc], a                                    ; $50ac: $02
    rst $20                                       ; $50ad: $e7
    ld b, $b5                                     ; $50ae: $06 $b5
    ld l, b                                       ; $50b0: $68
    ld [de], a                                    ; $50b1: $12
    ld [$0209], sp                                ; $50b2: $08 $09 $02
    ld b, $d4                                     ; $50b5: $06 $d4
    cp $00                                        ; $50b7: $fe $00
    nop                                           ; $50b9: $00
    cp l                                          ; $50ba: $bd
    nop                                           ; $50bb: $00
    rst $20                                       ; $50bc: $e7
    ld b, $c3                                     ; $50bd: $06 $c3
    ld l, b                                       ; $50bf: $68
    ld b, $d4                                     ; $50c0: $06 $d4
    cp $51                                        ; $50c2: $fe $51
    ld [hl], c                                    ; $50c4: $71
    ld b, l                                       ; $50c5: $45
    nop                                           ; $50c6: $00
    nop                                           ; $50c7: $00
    ld [hl], d                                    ; $50c8: $72
    ld d, h                                       ; $50c9: $54
    jr jr_002_5089                                ; $50ca: $18 $bd

    dec b                                         ; $50cc: $05
    pop hl                                        ; $50cd: $e1
    ld [bc], a                                    ; $50ce: $02
    db $e4                                        ; $50cf: $e4
    nop                                           ; $50d0: $00
    push de                                       ; $50d1: $d5
    ld d, b                                       ; $50d2: $50
    cp l                                          ; $50d3: $bd
    ld bc, $0be1                                  ; $50d4: $01 $e1 $0b
    jp nc, Jump_002_50ee                          ; $50d7: $d2 $ee $50

    ld [bc], a                                    ; $50da: $02
    ld d, c                                       ; $50db: $51
    ld d, $51                                     ; $50dc: $16 $51
    ld a, [hl+]                                   ; $50de: $2a
    ld d, c                                       ; $50df: $51
    ld a, $51                                     ; $50e0: $3e $51
    ld d, d                                       ; $50e2: $52
    ld d, c                                       ; $50e3: $51
    ld h, [hl]                                    ; $50e4: $66
    ld d, c                                       ; $50e5: $51
    ld a, d                                       ; $50e6: $7a
    ld d, c                                       ; $50e7: $51
    adc [hl]                                      ; $50e8: $8e
    ld d, c                                       ; $50e9: $51

jr_002_50ea:
    adc [hl]                                      ; $50ea: $8e
    ld d, c                                       ; $50eb: $51
    adc [hl]                                      ; $50ec: $8e
    ld d, c                                       ; $50ed: $51

Jump_002_50ee:
    inc h                                         ; $50ee: $24
    jp nc, Jump_000_2463                          ; $50ef: $d2 $63 $24

    cp l                                          ; $50f2: $bd
    ld h, e                                       ; $50f3: $63
    inc bc                                        ; $50f4: $03
    nop                                           ; $50f5: $00
    nop                                           ; $50f6: $00
    ld b, $e0                                     ; $50f7: $06 $e0
    db $fc                                        ; $50f9: $fc
    ld d, c                                       ; $50fa: $51
    add l                                         ; $50fb: $85
    ld b, l                                       ; $50fc: $45
    nop                                           ; $50fd: $00

jr_002_50fe:
    rrca                                          ; $50fe: $0f
    jr @-$29                                      ; $50ff: $18 $d5

    ld d, b                                       ; $5101: $50
    inc h                                         ; $5102: $24
    bit 4, e                                      ; $5103: $cb $63
    inc h                                         ; $5105: $24
    cp l                                          ; $5106: $bd
    ld h, e                                       ; $5107: $63
    inc bc                                        ; $5108: $03
    sub b                                         ; $5109: $90
    ld bc, $7006                                  ; $510a: $01 $06 $70
    cp $51                                        ; $510d: $fe $51
    adc a                                         ; $510f: $8f
    ld b, l                                       ; $5110: $45
    nop                                           ; $5111: $00

jr_002_5112:
    rrca                                          ; $5112: $0f
    jr jr_002_50ea                                ; $5113: $18 $d5

    ld d, b                                       ; $5115: $50
    inc h                                         ; $5116: $24
    bit 4, e                                      ; $5117: $cb $63
    inc h                                         ; $5119: $24
    call nz, Call_002_5163                        ; $511a: $c4 $63 $51
    sbc c                                         ; $511d: $99
    ld b, l                                       ; $511e: $45
    inc bc                                        ; $511f: $03
    jr nz, jr_002_5125                            ; $5120: $20 $03

    ld b, $00                                     ; $5122: $06 $00
    nop                                           ; $5124: $00

jr_002_5125:
    nop                                           ; $5125: $00

jr_002_5126:
    rrca                                          ; $5126: $0f
    jr jr_002_50fe                                ; $5127: $18 $d5

    ld d, b                                       ; $5129: $50
    inc h                                         ; $512a: $24
    bit 4, e                                      ; $512b: $cb $63
    inc h                                         ; $512d: $24
    call nz, Call_000_0363                        ; $512e: $c4 $63 $03
    sub b                                         ; $5131: $90
    ld bc, $9006                                  ; $5132: $01 $06 $90
    ld bc, $8f51                                  ; $5135: $01 $51 $8f
    ld b, l                                       ; $5138: $45
    nop                                           ; $5139: $00

jr_002_513a:
    rrca                                          ; $513a: $0f
    jr jr_002_5112                                ; $513b: $18 $d5

    ld d, b                                       ; $513d: $50
    inc h                                         ; $513e: $24
    jp nc, Jump_000_2463                          ; $513f: $d2 $63 $24

    call nz, Call_002_5163                        ; $5142: $c4 $63 $51
    add l                                         ; $5145: $85
    ld b, l                                       ; $5146: $45
    inc bc                                        ; $5147: $03
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    ld b, $20                                     ; $514a: $06 $20
    inc bc                                        ; $514c: $03
    nop                                           ; $514d: $00

jr_002_514e:
    rrca                                          ; $514e: $0f
    jr jr_002_5126                                ; $514f: $18 $d5

    ld d, b                                       ; $5151: $50
    inc h                                         ; $5152: $24
    jp nc, Jump_000_2463                          ; $5153: $d2 $63 $24

    call nz, Call_000_0363                        ; $5156: $c4 $63 $03
    ld [hl], b                                    ; $5159: $70
    cp $06                                        ; $515a: $fe $06
    sub b                                         ; $515c: $90
    ld bc, $8f51                                  ; $515d: $01 $51 $8f
    ld b, l                                       ; $5160: $45
    nop                                           ; $5161: $00

jr_002_5162:
    rrca                                          ; $5162: $0f

Call_002_5163:
Jump_002_5163:
jr_002_5163:
    jr jr_002_513a                                ; $5163: $18 $d5

    ld d, b                                       ; $5165: $50
    inc h                                         ; $5166: $24

jr_002_5167:
    jp nc, Jump_000_2463                          ; $5167: $d2 $63 $24

    call nz, Call_002_5163                        ; $516a: $c4 $63 $51
    sbc c                                         ; $516d: $99
    ld b, l                                       ; $516e: $45
    inc bc                                        ; $516f: $03
    ldh [$fc], a                                  ; $5170: $e0 $fc
    ld b, $00                                     ; $5172: $06 $00
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00

jr_002_5176:
    rrca                                          ; $5176: $0f

Call_002_5177:
    jr jr_002_514e                                ; $5177: $18 $d5

    ld d, b                                       ; $5179: $50
    inc bc                                        ; $517a: $03
    ld [hl], b                                    ; $517b: $70
    cp $06                                        ; $517c: $fe $06
    ld [hl], b                                    ; $517e: $70
    cp $24                                        ; $517f: $fe $24
    cp l                                          ; $5181: $bd
    ld h, e                                       ; $5182: $63
    inc h                                         ; $5183: $24
    jp nc, Jump_002_5163                          ; $5184: $d2 $63 $51

    adc a                                         ; $5187: $8f
    ld b, l                                       ; $5188: $45
    nop                                           ; $5189: $00
    rrca                                          ; $518a: $0f
    jr jr_002_5162                                ; $518b: $18 $d5

    ld d, b                                       ; $518d: $50
    inc h                                         ; $518e: $24
    jp nc, Jump_000_2463                          ; $518f: $d2 $63 $24

    call nz, Call_002_5163                        ; $5192: $c4 $63 $51
    add l                                         ; $5195: $85
    ld b, l                                       ; $5196: $45
    inc bc                                        ; $5197: $03
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    ld b, $00                                     ; $519a: $06 $00
    nop                                           ; $519c: $00
    nop                                           ; $519d: $00
    inc d                                         ; $519e: $14
    jr jr_002_5176                                ; $519f: $18 $d5

    ld d, b                                       ; $51a1: $50
    ld [hl], d                                    ; $51a2: $72
    ld d, h                                       ; $51a3: $54
    jr jr_002_5163                                ; $51a4: $18 $bd

    inc b                                         ; $51a6: $04
    pop hl                                        ; $51a7: $e1
    ld [bc], a                                    ; $51a8: $02
    db $e4                                        ; $51a9: $e4
    nop                                           ; $51aa: $00
    xor [hl]                                      ; $51ab: $ae
    ld d, c                                       ; $51ac: $51
    ld h, [hl]                                    ; $51ad: $66
    db $db                                        ; $51ae: $db
    ld bc, $51ba                                  ; $51af: $01 $ba $51
    ld d, c                                       ; $51b2: $51
    and e                                         ; $51b3: $a3
    ld b, l                                       ; $51b4: $45
    nop                                           ; $51b5: $00
    ld h, h                                       ; $51b6: $64
    jr jr_002_5167                                ; $51b7: $18 $ae

    ld d, c                                       ; $51b9: $51
    ld h, b                                       ; $51ba: $60
    nop                                           ; $51bb: $00
    nop                                           ; $51bc: $00
    ld h, e                                       ; $51bd: $63

jr_002_51be:
    ld d, c                                       ; $51be: $51
    and e                                         ; $51bf: $a3
    ld b, l                                       ; $51c0: $45
    nop                                           ; $51c1: $00
    inc d                                         ; $51c2: $14
    rst $20                                       ; $51c3: $e7
    ld b, $c9                                     ; $51c4: $06 $c9
    ld h, [hl]                                    ; $51c6: $66
    nop                                           ; $51c7: $00
    nop                                           ; $51c8: $00
    ld d, h                                       ; $51c9: $54
    sbc b                                         ; $51ca: $98
    pop hl                                        ; $51cb: $e1
    dec b                                         ; $51cc: $05

jr_002_51cd:
    jp nc, Jump_002_51d8                          ; $51cd: $d2 $d8 $51

    and $51                                       ; $51d0: $e6 $51
    db $f4                                        ; $51d2: $f4
    ld d, c                                       ; $51d3: $51
    inc bc                                        ; $51d4: $03
    ld d, d                                       ; $51d5: $52
    ld [de], a                                    ; $51d6: $12
    ld d, d                                       ; $51d7: $52

Jump_002_51d8:
    ld d, c                                       ; $51d8: $51
    ld d, l                                       ; $51d9: $55
    ld b, e                                       ; $51da: $43
    inc bc                                        ; $51db: $03

jr_002_51dc:
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    ld b, $6a                                     ; $51de: $06 $6a
    rst $38                                       ; $51e0: $ff
    nop                                           ; $51e1: $00
    ld [hl-], a                                   ; $51e2: $32
    jr @-$33                                      ; $51e3: $18 $cb

    ld d, c                                       ; $51e5: $51
    ld d, c                                       ; $51e6: $51
    ld h, e                                       ; $51e7: $63
    ld b, e                                       ; $51e8: $43

jr_002_51e9:
    inc bc                                        ; $51e9: $03
    nop                                           ; $51ea: $00
    nop                                           ; $51eb: $00
    ld b, $96                                     ; $51ec: $06 $96
    nop                                           ; $51ee: $00
    nop                                           ; $51ef: $00
    ld [hl-], a                                   ; $51f0: $32
    jr jr_002_51be                                ; $51f1: $18 $cb

    ld d, c                                       ; $51f3: $51
    ld l, c                                       ; $51f4: $69
    ld d, c                                       ; $51f5: $51
    ld [hl], c                                    ; $51f6: $71
    ld b, e                                       ; $51f7: $43
    inc bc                                        ; $51f8: $03
    sub [hl]                                      ; $51f9: $96
    nop                                           ; $51fa: $00
    ld b, $00                                     ; $51fb: $06 $00
    nop                                           ; $51fd: $00
    nop                                           ; $51fe: $00
    ld [hl-], a                                   ; $51ff: $32
    jr jr_002_51cd                                ; $5200: $18 $cb

    ld d, c                                       ; $5202: $51
    ld h, [hl]                                    ; $5203: $66
    ld d, c                                       ; $5204: $51
    ld [hl], c                                    ; $5205: $71
    ld b, e                                       ; $5206: $43
    inc bc                                        ; $5207: $03
    ld l, d                                       ; $5208: $6a
    rst $38                                       ; $5209: $ff
    ld b, $00                                     ; $520a: $06 $00
    nop                                           ; $520c: $00
    nop                                           ; $520d: $00
    ld [hl-], a                                   ; $520e: $32
    jr jr_002_51dc                                ; $520f: $18 $cb

    ld d, c                                       ; $5211: $51
    add hl, bc                                    ; $5212: $09
    ld c, $03                                     ; $5213: $0e $03
    nop                                           ; $5215: $00
    nop                                           ; $5216: $00
    ld b, $00                                     ; $5217: $06 $00
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00
    ld b, c                                       ; $521b: $41
    jr jr_002_51e9                                ; $521c: $18 $cb

    ld d, c                                       ; $521e: $51
    ld d, h                                       ; $521f: $54
    sbc b                                         ; $5220: $98
    cp l                                          ; $5221: $bd
    dec b                                         ; $5222: $05
    rst $20                                       ; $5223: $e7
    ld b, $9a                                     ; $5224: $06 $9a
    ld h, h                                       ; $5226: $64
    ld a, [hl+]                                   ; $5227: $2a
    ld a, [hl]                                    ; $5228: $7e
    ld d, d                                       ; $5229: $52
    pop hl                                        ; $522a: $e1
    dec b                                         ; $522b: $05
    jp nc, Jump_002_5237                          ; $522c: $d2 $37 $52

    ld b, l                                       ; $522f: $45
    ld d, d                                       ; $5230: $52
    ld d, e                                       ; $5231: $53
    ld d, d                                       ; $5232: $52
    ld h, d                                       ; $5233: $62
    ld d, d                                       ; $5234: $52
    ld [hl], c                                    ; $5235: $71
    ld d, d                                       ; $5236: $52

Jump_002_5237:
    ld d, c                                       ; $5237: $51
    ld d, l                                       ; $5238: $55
    ld b, e                                       ; $5239: $43
    inc bc                                        ; $523a: $03
    nop                                           ; $523b: $00
    nop                                           ; $523c: $00
    ld b, $6a                                     ; $523d: $06 $6a
    rst $38                                       ; $523f: $ff
    nop                                           ; $5240: $00
    ld a, [bc]                                    ; $5241: $0a
    jr jr_002_5263                                ; $5242: $18 $1f

    ld d, d                                       ; $5244: $52
    ld d, c                                       ; $5245: $51
    ld h, e                                       ; $5246: $63
    ld b, e                                       ; $5247: $43
    inc bc                                        ; $5248: $03
    nop                                           ; $5249: $00
    nop                                           ; $524a: $00
    ld b, $96                                     ; $524b: $06 $96
    nop                                           ; $524d: $00
    nop                                           ; $524e: $00
    ld a, [bc]                                    ; $524f: $0a
    jr jr_002_5271                                ; $5250: $18 $1f

    ld d, d                                       ; $5252: $52
    ld l, c                                       ; $5253: $69
    ld d, c                                       ; $5254: $51
    ld [hl], c                                    ; $5255: $71
    ld b, e                                       ; $5256: $43
    inc bc                                        ; $5257: $03
    sub [hl]                                      ; $5258: $96
    nop                                           ; $5259: $00
    ld b, $00                                     ; $525a: $06 $00
    nop                                           ; $525c: $00
    nop                                           ; $525d: $00
    ld [hl-], a                                   ; $525e: $32
    jr jr_002_5280                                ; $525f: $18 $1f

    ld d, d                                       ; $5261: $52
    ld h, [hl]                                    ; $5262: $66

jr_002_5263:
    ld d, c                                       ; $5263: $51
    ld [hl], c                                    ; $5264: $71
    ld b, e                                       ; $5265: $43
    inc bc                                        ; $5266: $03
    ld l, d                                       ; $5267: $6a
    rst $38                                       ; $5268: $ff
    ld b, $00                                     ; $5269: $06 $00
    nop                                           ; $526b: $00
    nop                                           ; $526c: $00
    ld [hl-], a                                   ; $526d: $32
    jr jr_002_528f                                ; $526e: $18 $1f

    ld d, d                                       ; $5270: $52

jr_002_5271:
    add hl, bc                                    ; $5271: $09
    ld c, $03                                     ; $5272: $0e $03
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    ld b, $00                                     ; $5276: $06 $00
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    ld b, c                                       ; $527a: $41
    jr jr_002_529c                                ; $527b: $18 $1f

    ld d, d                                       ; $527d: $52
    add hl, bc                                    ; $527e: $09
    rlca                                          ; $527f: $07

jr_002_5280:
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    ld d, h                                       ; $5282: $54
    sbc b                                         ; $5283: $98
    cp l                                          ; $5284: $bd
    ld bc, $0809                                  ; $5285: $01 $09 $08
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    ld d, h                                       ; $528a: $54
    sbc b                                         ; $528b: $98
    cp l                                          ; $528c: $bd
    dec b                                         ; $528d: $05
    add hl, bc                                    ; $528e: $09

jr_002_528f:
    ld [$0000], sp                                ; $528f: $08 $00 $00
    ld d, h                                       ; $5292: $54

jr_002_5293:
    sbc b                                         ; $5293: $98
    cp l                                          ; $5294: $bd
    rlca                                          ; $5295: $07
    add hl, bc                                    ; $5296: $09
    ld [$0000], sp                                ; $5297: $08 $00 $00
    ld d, h                                       ; $529a: $54
    sbc b                                         ; $529b: $98

jr_002_529c:
    cp l                                          ; $529c: $bd
    rlca                                          ; $529d: $07
    add hl, bc                                    ; $529e: $09
    rlca                                          ; $529f: $07
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    ld d, h                                       ; $52a2: $54
    sbc b                                         ; $52a3: $98
    cp l                                          ; $52a4: $bd
    nop                                           ; $52a5: $00
    add hl, bc                                    ; $52a6: $09
    dec b                                         ; $52a7: $05
    nop                                           ; $52a8: $00
    nop                                           ; $52a9: $00
    ld d, h                                       ; $52aa: $54
    sbc b                                         ; $52ab: $98
    cp l                                          ; $52ac: $bd
    nop                                           ; $52ad: $00
    add hl, bc                                    ; $52ae: $09
    rlca                                          ; $52af: $07

jr_002_52b0:
    nop                                           ; $52b0: $00
    nop                                           ; $52b1: $00
    ld d, h                                       ; $52b2: $54
    sbc b                                         ; $52b3: $98
    cp l                                          ; $52b4: $bd
    inc bc                                        ; $52b5: $03
    add hl, bc                                    ; $52b6: $09
    rlca                                          ; $52b7: $07
    nop                                           ; $52b8: $00
    nop                                           ; $52b9: $00
    ld d, h                                       ; $52ba: $54
    sbc b                                         ; $52bb: $98
    cp l                                          ; $52bc: $bd
    dec b                                         ; $52bd: $05

jr_002_52be:
    add hl, bc                                    ; $52be: $09
    rlca                                          ; $52bf: $07
    nop                                           ; $52c0: $00
    nop                                           ; $52c1: $00
    ld d, h                                       ; $52c2: $54
    sbc b                                         ; $52c3: $98
    cp l                                          ; $52c4: $bd
    ld b, $09                                     ; $52c5: $06 $09
    rlca                                          ; $52c7: $07
    jr jr_002_5293                                ; $52c8: $18 $c9

    ld d, c                                       ; $52ca: $51
    pop hl                                        ; $52cb: $e1
    dec b                                         ; $52cc: $05

jr_002_52cd:
    jp nc, Jump_002_52d8                          ; $52cd: $d2 $d8 $52

    and $52                                       ; $52d0: $e6 $52
    db $f4                                        ; $52d2: $f4
    ld d, d                                       ; $52d3: $52
    inc bc                                        ; $52d4: $03
    ld d, e                                       ; $52d5: $53
    ld [de], a                                    ; $52d6: $12
    ld d, e                                       ; $52d7: $53

Jump_002_52d8:
    ld d, c                                       ; $52d8: $51
    dec c                                         ; $52d9: $0d
    ld b, e                                       ; $52da: $43
    inc bc                                        ; $52db: $03

jr_002_52dc:
    nop                                           ; $52dc: $00
    nop                                           ; $52dd: $00
    ld b, $7c                                     ; $52de: $06 $7c
    db $fc                                        ; $52e0: $fc
    nop                                           ; $52e1: $00
    ld b, c                                       ; $52e2: $41
    jr jr_002_52b0                                ; $52e3: $18 $cb

    ld d, d                                       ; $52e5: $52
    ld d, c                                       ; $52e6: $51
    dec de                                        ; $52e7: $1b
    ld b, e                                       ; $52e8: $43

jr_002_52e9:
    inc bc                                        ; $52e9: $03
    nop                                           ; $52ea: $00
    nop                                           ; $52eb: $00
    ld b, $84                                     ; $52ec: $06 $84
    inc bc                                        ; $52ee: $03
    nop                                           ; $52ef: $00
    ld b, c                                       ; $52f0: $41
    jr jr_002_52be                                ; $52f1: $18 $cb

    ld d, d                                       ; $52f3: $52
    ld l, c                                       ; $52f4: $69
    ld d, c                                       ; $52f5: $51
    add hl, hl                                    ; $52f6: $29
    ld b, e                                       ; $52f7: $43
    inc bc                                        ; $52f8: $03
    add h                                         ; $52f9: $84
    inc bc                                        ; $52fa: $03
    ld b, $00                                     ; $52fb: $06 $00
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    ld b, c                                       ; $52ff: $41
    jr jr_002_52cd                                ; $5300: $18 $cb

    ld d, d                                       ; $5302: $52
    ld h, [hl]                                    ; $5303: $66
    ld d, c                                       ; $5304: $51
    add hl, hl                                    ; $5305: $29
    ld b, e                                       ; $5306: $43
    inc bc                                        ; $5307: $03
    ld a, h                                       ; $5308: $7c
    db $fc                                        ; $5309: $fc
    ld b, $00                                     ; $530a: $06 $00
    nop                                           ; $530c: $00
    nop                                           ; $530d: $00
    ld b, c                                       ; $530e: $41
    jr jr_002_52dc                                ; $530f: $18 $cb

    ld d, d                                       ; $5311: $52
    add hl, bc                                    ; $5312: $09
    ld c, $03                                     ; $5313: $0e $03
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    ld b, $00                                     ; $5317: $06 $00
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00
    dec l                                         ; $531b: $2d
    jr jr_002_52e9                                ; $531c: $18 $cb

    ld d, d                                       ; $531e: $52
    ld d, h                                       ; $531f: $54
    sbc b                                         ; $5320: $98
    cp l                                          ; $5321: $bd
    inc bc                                        ; $5322: $03
    pop hl                                        ; $5323: $e1
    inc b                                         ; $5324: $04
    jp nc, Jump_002_532e                          ; $5325: $d2 $2e $53

    inc a                                         ; $5328: $3c
    ld d, e                                       ; $5329: $53
    ld c, d                                       ; $532a: $4a
    ld d, e                                       ; $532b: $53
    ld e, c                                       ; $532c: $59
    ld d, e                                       ; $532d: $53

Jump_002_532e:
    ld d, c                                       ; $532e: $51
    scf                                           ; $532f: $37
    ld b, e                                       ; $5330: $43
    inc bc                                        ; $5331: $03
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    ld b, $18                                     ; $5334: $06 $18
    db $fc                                        ; $5336: $fc
    nop                                           ; $5337: $00
    db $10                                        ; $5338: $10
    jr jr_002_535e                                ; $5339: $18 $23

    ld d, e                                       ; $533b: $53
    ld d, c                                       ; $533c: $51
    ld b, c                                       ; $533d: $41
    ld b, e                                       ; $533e: $43
    inc bc                                        ; $533f: $03
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    ld b, $e8                                     ; $5342: $06 $e8
    inc bc                                        ; $5344: $03
    nop                                           ; $5345: $00
    db $10                                        ; $5346: $10
    jr @+$25                                      ; $5347: $18 $23

    ld d, e                                       ; $5349: $53
    ld l, c                                       ; $534a: $69
    ld d, c                                       ; $534b: $51
    ld c, e                                       ; $534c: $4b
    ld b, e                                       ; $534d: $43
    inc bc                                        ; $534e: $03
    add sp, $03                                   ; $534f: $e8 $03
    ld b, $00                                     ; $5351: $06 $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    db $10                                        ; $5355: $10
    jr jr_002_537b                                ; $5356: $18 $23

    ld d, e                                       ; $5358: $53
    ld h, [hl]                                    ; $5359: $66
    ld d, c                                       ; $535a: $51
    ld c, e                                       ; $535b: $4b

jr_002_535c:
    ld b, e                                       ; $535c: $43
    inc bc                                        ; $535d: $03

jr_002_535e:
    jr jr_002_535c                                ; $535e: $18 $fc

    ld b, $00                                     ; $5360: $06 $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    db $10                                        ; $5364: $10
    jr jr_002_538a                                ; $5365: $18 $23

    ld d, e                                       ; $5367: $53
    cp l                                          ; $5368: $bd
    dec b                                         ; $5369: $05
    ld d, c                                       ; $536a: $51
    jp $0047                                      ; $536b: $c3 $47 $00


    nop                                           ; $536e: $00
    cp l                                          ; $536f: $bd
    inc bc                                        ; $5370: $03
    ld d, c                                       ; $5371: $51
    jp $0047                                      ; $5372: $c3 $47 $00


    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537a: $00

jr_002_537b:
    ld [bc], a                                    ; $537b: $02
    nop                                           ; $537c: $00
    inc d                                         ; $537d: $14
    nop                                           ; $537e: $00
    ld bc, $0000                                  ; $537f: $01 $00 $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    ld [bc], a                                    ; $5385: $02
    nop                                           ; $5386: $00
    inc d                                         ; $5387: $14
    nop                                           ; $5388: $00
    ld [bc], a                                    ; $5389: $02

jr_002_538a:
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    nop                                           ; $538d: $00
    nop                                           ; $538e: $00
    nop                                           ; $538f: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    call Call_000_398b                            ; $5394: $cd $8b $39
    ret                                           ; $5397: $c9


    ld a, $01                                     ; $5398: $3e $01
    call Call_000_395e                            ; $539a: $cd $5e $39
    ret                                           ; $539d: $c9


    inc h                                         ; $539e: $24
    sub h                                         ; $539f: $94
    ld d, e                                       ; $53a0: $53
    ldh a, [rWY]                                  ; $53a1: $f0 $4a
    nop                                           ; $53a3: $00
    di                                            ; $53a4: $f3
    rst $30                                       ; $53a5: $f7
    nop                                           ; $53a6: $00
    ld c, [hl]                                    ; $53a7: $4e
    ld [bc], a                                    ; $53a8: $02
    add hl, sp                                    ; $53a9: $39
    or [hl]                                       ; $53aa: $b6
    cp l                                          ; $53ab: $bd
    dec b                                         ; $53ac: $05
    ld a, [hl]                                    ; $53ad: $7e
    ld d, c                                       ; $53ae: $51
    ld d, a                                       ; $53af: $57
    ld c, b                                       ; $53b0: $48
    nop                                           ; $53b1: $00
    add hl, hl                                    ; $53b2: $29
    inc h                                         ; $53b3: $24
    sbc b                                         ; $53b4: $98
    ld d, e                                       ; $53b5: $53
    ld b, $a8                                     ; $53b6: $06 $a8
    db $fd                                        ; $53b8: $fd
    nop                                           ; $53b9: $00
    inc b                                         ; $53ba: $04
    ld b, $38                                     ; $53bb: $06 $38
    rst $38                                       ; $53bd: $ff
    nop                                           ; $53be: $00
    inc hl                                        ; $53bf: $23
    ld b, $00                                     ; $53c0: $06 $00
    nop                                           ; $53c2: $00
    ld d, c                                       ; $53c3: $51
    ld [hl], l                                    ; $53c4: $75
    ld c, b                                       ; $53c5: $48
    nop                                           ; $53c6: $00
    dec b                                         ; $53c7: $05
    dec de                                        ; $53c8: $1b
    halt                                          ; $53c9: $76
    ld d, e                                       ; $53ca: $53
    nop                                           ; $53cb: $00
    ld bc, $dba2                                  ; $53cc: $01 $a2 $db
    inc bc                                        ; $53cf: $03
    sub b                                         ; $53d0: $90
    ld bc, $1e00                                  ; $53d1: $01 $00 $1e
    ld d, c                                       ; $53d4: $51
    ld h, e                                       ; $53d5: $63
    ld c, b                                       ; $53d6: $48
    nop                                           ; $53d7: $00
    ld [hl-], a                                   ; $53d8: $32
    rst $20                                       ; $53d9: $e7
    rlca                                          ; $53da: $07
    ld d, e                                       ; $53db: $53
    ld l, a                                       ; $53dc: $6f
    dec de                                        ; $53dd: $1b
    adc d                                         ; $53de: $8a
    ld d, e                                       ; $53df: $53
    inc bc                                        ; $53e0: $03
    inc l                                         ; $53e1: $2c
    ld bc, $7006                                  ; $53e2: $01 $06 $70
    cp $00                                        ; $53e5: $fe $00
    ld [hl-], a                                   ; $53e7: $32
    ldh a, [$ae]                                  ; $53e8: $f0 $ae
    nop                                           ; $53ea: $00
    di                                            ; $53eb: $f3
    ccf                                           ; $53ec: $3f
    nop                                           ; $53ed: $00
    ld c, [hl]                                    ; $53ee: $4e
    ld b, $39                                     ; $53ef: $06 $39
    or [hl]                                       ; $53f1: $b6
    ldh a, [$cb]                                  ; $53f2: $f0 $cb
    nop                                           ; $53f4: $00
    di                                            ; $53f5: $f3
    ld c, h                                       ; $53f6: $4c
    nop                                           ; $53f7: $00
    ld c, [hl]                                    ; $53f8: $4e
    inc bc                                        ; $53f9: $03
    add hl, sp                                    ; $53fa: $39
    or [hl]                                       ; $53fb: $b6
    ldh a, [$da]                                  ; $53fc: $f0 $da
    nop                                           ; $53fe: $00
    di                                            ; $53ff: $f3
    ld d, e                                       ; $5400: $53
    nop                                           ; $5401: $00
    ld c, [hl]                                    ; $5402: $4e
    inc b                                         ; $5403: $04
    add hl, sp                                    ; $5404: $39
    or [hl]                                       ; $5405: $b6
    ldh a, [$f2]                                  ; $5406: $f0 $f2
    nop                                           ; $5408: $00
    di                                            ; $5409: $f3
    ld h, d                                       ; $540a: $62
    nop                                           ; $540b: $00
    ld c, [hl]                                    ; $540c: $4e
    dec b                                         ; $540d: $05
    add hl, sp                                    ; $540e: $39
    or [hl]                                       ; $540f: $b6
    nop                                           ; $5410: $00
    ld a, [bc]                                    ; $5411: $0a
    ld d, c                                       ; $5412: $51
    ld [hl], l                                    ; $5413: $75
    ld c, b                                       ; $5414: $48
    ld b, $64                                     ; $5415: $06 $64
    nop                                           ; $5417: $00
    inc bc                                        ; $5418: $03
    ret z                                         ; $5419: $c8

    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    jr z, jr_002_5424                             ; $541c: $28 $06

    ld [hl], b                                    ; $541e: $70
    cp $51                                        ; $541f: $fe $51
    ld h, e                                       ; $5421: $63
    ld c, b                                       ; $5422: $48
    inc bc                                        ; $5423: $03

jr_002_5424:
    sub b                                         ; $5424: $90
    ld bc, $801b                                  ; $5425: $01 $1b $80
    ld d, e                                       ; $5428: $53
    nop                                           ; $5429: $00
    ld bc, $eba2                                  ; $542a: $01 $a2 $eb
    nop                                           ; $542d: $00
    ld e, $00                                     ; $542e: $1e $00
    inc hl                                        ; $5430: $23
    rst $20                                       ; $5431: $e7
    rlca                                          ; $5432: $07
    ld h, e                                       ; $5433: $63
    ld l, a                                       ; $5434: $6f
    ld d, a                                       ; $5435: $57
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00

    db $54, $98, $bd, $01, $09, $07, $00, $00

    ld d, h                                       ; $5440: $54
    sbc b                                         ; $5441: $98
    ld [de], a                                    ; $5442: $12
    ld [$00bd], sp                                ; $5443: $08 $bd $00
    db $ed                                        ; $5446: $ed
    ld [bc], a                                    ; $5447: $02
    add hl, bc                                    ; $5448: $09
    ld c, $00                                     ; $5449: $0e $00
    nop                                           ; $544b: $00
    ld d, h                                       ; $544c: $54
    sbc b                                         ; $544d: $98
    ld [de], a                                    ; $544e: $12
    ld [$00bd], sp                                ; $544f: $08 $bd $00
    db $ed                                        ; $5452: $ed
    ld bc, $0e09                                  ; $5453: $01 $09 $0e
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    ld d, h                                       ; $5458: $54
    sbc b                                         ; $5459: $98
    ld [de], a                                    ; $545a: $12
    ld [$00bd], sp                                ; $545b: $08 $bd $00
    db $ed                                        ; $545e: $ed
    ld bc, $0e09                                  ; $545f: $01 $09 $0e
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    ld d, h                                       ; $5464: $54
    sbc b                                         ; $5465: $98
    ld [de], a                                    ; $5466: $12
    ld [$00bd], sp                                ; $5467: $08 $bd $00
    db $ed                                        ; $546a: $ed
    ld bc, $0e09                                  ; $546b: $01 $09 $0e
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    ld d, h                                       ; $5470: $54
    sbc b                                         ; $5471: $98
    ld [de], a                                    ; $5472: $12
    ld [$00bd], sp                                ; $5473: $08 $bd $00
    db $ed                                        ; $5476: $ed
    ld bc, $0e09                                  ; $5477: $01 $09 $0e
    nop                                           ; $547a: $00
    nop                                           ; $547b: $00
    ld d, h                                       ; $547c: $54
    sbc b                                         ; $547d: $98
    ld [de], a                                    ; $547e: $12
    ld [$00bd], sp                                ; $547f: $08 $bd $00
    db $ed                                        ; $5482: $ed
    ld [bc], a                                    ; $5483: $02
    add hl, bc                                    ; $5484: $09
    ld c, $00                                     ; $5485: $0e $00
    nop                                           ; $5487: $00
    ld d, h                                       ; $5488: $54
    sbc b                                         ; $5489: $98
    cp l                                          ; $548a: $bd
    ld [bc], a                                    ; $548b: $02
    add hl, bc                                    ; $548c: $09
    rlca                                          ; $548d: $07
    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    ld d, h                                       ; $5490: $54
    sbc b                                         ; $5491: $98
    ld [de], a                                    ; $5492: $12
    ld [$06bd], sp                                ; $5493: $08 $bd $06
    db $ed                                        ; $5496: $ed
    inc b                                         ; $5497: $04
    add hl, bc                                    ; $5498: $09
    ld c, $00                                     ; $5499: $0e $00
    nop                                           ; $549b: $00
    ld d, h                                       ; $549c: $54
    sbc b                                         ; $549d: $98
    ld [de], a                                    ; $549e: $12
    ld [$00bd], sp                                ; $549f: $08 $bd $00
    db $ed                                        ; $54a2: $ed
    ld [bc], a                                    ; $54a3: $02
    add hl, bc                                    ; $54a4: $09
    ld c, $00                                     ; $54a5: $0e $00
    nop                                           ; $54a7: $00
    ld d, h                                       ; $54a8: $54
    sbc b                                         ; $54a9: $98
    ld [de], a                                    ; $54aa: $12
    ld [$00bd], sp                                ; $54ab: $08 $bd $00
    db $ed                                        ; $54ae: $ed
    ld bc, $0e09                                  ; $54af: $01 $09 $0e
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    cp l                                          ; $54b4: $bd
    inc b                                         ; $54b5: $04
    add hl, bc                                    ; $54b6: $09
    nop                                           ; $54b7: $00
    dec de                                        ; $54b8: $1b
    add $54                                       ; $54b9: $c6 $54
    nop                                           ; $54bb: $00
    nop                                           ; $54bc: $00
    cp l                                          ; $54bd: $bd
    inc b                                         ; $54be: $04
    add hl, bc                                    ; $54bf: $09
    dec b                                         ; $54c0: $05
    dec de                                        ; $54c1: $1b
    add $54                                       ; $54c2: $c6 $54
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    ld a, [bc]                                    ; $54c7: $0a
    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    nop                                           ; $54ca: $00
    dec b                                         ; $54cb: $05
    nop                                           ; $54cc: $00
    ret nz                                        ; $54cd: $c0

    ld b, $05                                     ; $54ce: $06 $05
    ld d, h                                       ; $54d0: $54
    sbc b                                         ; $54d1: $98
    ld [de], a                                    ; $54d2: $12
    ld [$04bd], sp                                ; $54d3: $08 $bd $04
    db $ed                                        ; $54d6: $ed
    ld bc, $0e09                                  ; $54d7: $01 $09 $0e
    nop                                           ; $54da: $00
    nop                                           ; $54db: $00
    ld d, h                                       ; $54dc: $54
    sbc b                                         ; $54dd: $98
    ld [de], a                                    ; $54de: $12
    ld [$00bd], sp                                ; $54df: $08 $bd $00
    db $ed                                        ; $54e2: $ed
    dec b                                         ; $54e3: $05
    add hl, bc                                    ; $54e4: $09
    ld c, $00                                     ; $54e5: $0e $00
    nop                                           ; $54e7: $00
    ld d, h                                       ; $54e8: $54
    sbc b                                         ; $54e9: $98
    ld [de], a                                    ; $54ea: $12
    ld [$00bd], sp                                ; $54eb: $08 $bd $00
    db $ed                                        ; $54ee: $ed
    ld bc, $0e09                                  ; $54ef: $01 $09 $0e
    nop                                           ; $54f2: $00
    nop                                           ; $54f3: $00
    ld d, h                                       ; $54f4: $54
    sbc b                                         ; $54f5: $98
    ld [de], a                                    ; $54f6: $12
    ld [$00bd], sp                                ; $54f7: $08 $bd $00
    db $ed                                        ; $54fa: $ed
    dec b                                         ; $54fb: $05
    add hl, bc                                    ; $54fc: $09
    ld c, $00                                     ; $54fd: $0e $00
    nop                                           ; $54ff: $00
    ld d, h                                       ; $5500: $54
    sbc b                                         ; $5501: $98
    ld [de], a                                    ; $5502: $12
    ld [$00bd], sp                                ; $5503: $08 $bd $00

jr_002_5506:
    db $ed                                        ; $5506: $ed
    inc bc                                        ; $5507: $03
    add hl, bc                                    ; $5508: $09
    ld c, $00                                     ; $5509: $0e $00
    nop                                           ; $550b: $00
    ld d, h                                       ; $550c: $54
    sbc b                                         ; $550d: $98
    cp l                                          ; $550e: $bd
    inc bc                                        ; $550f: $03
    add hl, bc                                    ; $5510: $09
    rlca                                          ; $5511: $07
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    ld d, h                                       ; $5514: $54
    sbc b                                         ; $5515: $98
    cp l                                          ; $5516: $bd
    ld [bc], a                                    ; $5517: $02
    add hl, bc                                    ; $5518: $09
    rlca                                          ; $5519: $07
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    ld d, h                                       ; $551c: $54
    sbc b                                         ; $551d: $98
    cp l                                          ; $551e: $bd
    dec b                                         ; $551f: $05
    add hl, bc                                    ; $5520: $09
    rlca                                          ; $5521: $07
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    ld d, h                                       ; $5524: $54
    sbc b                                         ; $5525: $98
    cp l                                          ; $5526: $bd
    ld b, $09                                     ; $5527: $06 $09
    rlca                                          ; $5529: $07
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00
    ld d, h                                       ; $552c: $54
    sbc b                                         ; $552d: $98
    cp l                                          ; $552e: $bd
    nop                                           ; $552f: $00
    add hl, bc                                    ; $5530: $09
    dec b                                         ; $5531: $05
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    ld d, h                                       ; $5534: $54
    sbc b                                         ; $5535: $98
    cp l                                          ; $5536: $bd
    nop                                           ; $5537: $00
    jr jr_002_5581                                ; $5538: $18 $47

    ld c, d                                       ; $553a: $4a

    db $db, $2a, $46, $55, $bd, $00, $51, $31, $45, $00, $00

    ld d, h                                       ; $5546: $54
    jr jr_002_5506                                ; $5547: $18 $bd

    inc b                                         ; $5549: $04
    add hl, bc                                    ; $554a: $09
    nop                                           ; $554b: $00
    ld b, $50                                     ; $554c: $06 $50
    ei                                            ; $554e: $fb
    nop                                           ; $554f: $00
    jr z, jr_002_55a9                             ; $5550: $28 $57

    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    cp l                                          ; $5554: $bd
    inc bc                                        ; $5555: $03
    add hl, bc                                    ; $5556: $09
    rlca                                          ; $5557: $07
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00
    ld d, c                                       ; $555a: $51
    pop de                                        ; $555b: $d1
    ld b, h                                       ; $555c: $44
    ld c, [hl]                                    ; $555d: $4e
    inc b                                         ; $555e: $04
    ld c, b                                       ; $555f: $48
    db $fc                                        ; $5560: $fc
    ld c, e                                       ; $5561: $4b
    ld hl, sp+$39                                 ; $5562: $f8 $39
    ld e, d                                       ; $5564: $5a
    nop                                           ; $5565: $00
    ld b, $51                                     ; $5566: $06 $51
    rst $10                                       ; $5568: $d7
    ld b, h                                       ; $5569: $44
    nop                                           ; $556a: $00
    ld b, $18                                     ; $556b: $06 $18
    ld e, d                                       ; $556d: $5a
    ld d, l                                       ; $556e: $55
    ld d, h                                       ; $556f: $54
    jr jr_002_5584                                ; $5570: $18 $12

    add b                                         ; $5572: $80
    cp l                                          ; $5573: $bd
    rlca                                          ; $5574: $07
    add hl, bc                                    ; $5575: $09
    ld [$06e7], sp                                ; $5576: $08 $e7 $06
    and c                                         ; $5579: $a1
    ld h, h                                       ; $557a: $64
    ld a, [hl+]                                   ; $557b: $2a
    sub c                                         ; $557c: $91
    ld d, l                                       ; $557d: $55
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    ld d, h                                       ; $5580: $54

jr_002_5581:
    jr jr_002_5595                                ; $5581: $18 $12

    add b                                         ; $5583: $80

jr_002_5584:
    cp l                                          ; $5584: $bd
    nop                                           ; $5585: $00
    add hl, bc                                    ; $5586: $09
    rlca                                          ; $5587: $07
    rst $20                                       ; $5588: $e7
    ld b, $a1                                     ; $5589: $06 $a1
    ld h, h                                       ; $558b: $64
    ld a, [hl+]                                   ; $558c: $2a
    sub c                                         ; $558d: $91
    ld d, l                                       ; $558e: $55
    nop                                           ; $558f: $00
    nop                                           ; $5590: $00
    ld d, h                                       ; $5591: $54
    db $10                                        ; $5592: $10
    ld d, c                                       ; $5593: $51
    ld h, e                                       ; $5594: $63

jr_002_5595:
    ld b, e                                       ; $5595: $43
    ld [de], a                                    ; $5596: $12
    ret nz                                        ; $5597: $c0

    ld l, a                                       ; $5598: $6f
    ld [hl], a                                    ; $5599: $77
    ld b, c                                       ; $559a: $41
    inc bc                                        ; $559b: $03
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    ld b, $80                                     ; $559e: $06 $80
    ld bc, $4100                                  ; $55a0: $01 $00 $41
    ld h, [hl]                                    ; $55a3: $66
    ld d, c                                       ; $55a4: $51
    ld [hl], c                                    ; $55a5: $71
    ld b, e                                       ; $55a6: $43
    ld l, a                                       ; $55a7: $6f
    ld a, a                                       ; $55a8: $7f

jr_002_55a9:
    ld b, c                                       ; $55a9: $41
    inc bc                                        ; $55aa: $03
    add b                                         ; $55ab: $80
    cp $06                                        ; $55ac: $fe $06
    nop                                           ; $55ae: $00
    nop                                           ; $55af: $00
    nop                                           ; $55b0: $00
    ldh a, [$6f]                                  ; $55b1: $f0 $6f
    ld a, e                                       ; $55b3: $7b
    ld b, c                                       ; $55b4: $41
    ld d, c                                       ; $55b5: $51
    ld d, l                                       ; $55b6: $55
    ld b, e                                       ; $55b7: $43
    inc bc                                        ; $55b8: $03
    nop                                           ; $55b9: $00
    nop                                           ; $55ba: $00
    ld b, $80                                     ; $55bb: $06 $80
    cp $00                                        ; $55bd: $fe $00
    ld [hl-], a                                   ; $55bf: $32
    ld l, c                                       ; $55c0: $69
    ld d, c                                       ; $55c1: $51
    ld [hl], c                                    ; $55c2: $71
    ld b, e                                       ; $55c3: $43
    ld l, a                                       ; $55c4: $6f
    add e                                         ; $55c5: $83
    ld b, c                                       ; $55c6: $41
    inc bc                                        ; $55c7: $03
    add b                                         ; $55c8: $80
    ld bc, $0006                                  ; $55c9: $01 $06 $00
    nop                                           ; $55cc: $00
    nop                                           ; $55cd: $00
    ld e, a                                       ; $55ce: $5f
    ld l, a                                       ; $55cf: $6f
    ld [hl], a                                    ; $55d0: $77
    ld b, c                                       ; $55d1: $41
    ld d, c                                       ; $55d2: $51
    ld h, e                                       ; $55d3: $63
    ld b, e                                       ; $55d4: $43
    inc bc                                        ; $55d5: $03
    nop                                           ; $55d6: $00
    nop                                           ; $55d7: $00
    ld b, $80                                     ; $55d8: $06 $80
    ld bc, $3200                                  ; $55da: $01 $00 $32
    ld l, c                                       ; $55dd: $69
    ld d, c                                       ; $55de: $51
    ld [hl], c                                    ; $55df: $71
    ld b, e                                       ; $55e0: $43
    ld l, a                                       ; $55e1: $6f
    add e                                         ; $55e2: $83
    ld b, c                                       ; $55e3: $41
    inc bc                                        ; $55e4: $03
    add b                                         ; $55e5: $80
    ld bc, $0006                                  ; $55e6: $01 $06 $00
    nop                                           ; $55e9: $00
    nop                                           ; $55ea: $00
    ld e, a                                       ; $55eb: $5f
    ld l, a                                       ; $55ec: $6f
    ld a, e                                       ; $55ed: $7b
    ld b, c                                       ; $55ee: $41
    ld d, c                                       ; $55ef: $51
    ld d, l                                       ; $55f0: $55
    ld b, e                                       ; $55f1: $43
    inc bc                                        ; $55f2: $03
    nop                                           ; $55f3: $00
    nop                                           ; $55f4: $00
    ld b, $80                                     ; $55f5: $06 $80
    cp $00                                        ; $55f7: $fe $00
    ld [hl-], a                                   ; $55f9: $32
    ld l, c                                       ; $55fa: $69
    ld d, c                                       ; $55fb: $51
    ld [hl], c                                    ; $55fc: $71
    ld b, e                                       ; $55fd: $43
    ld l, a                                       ; $55fe: $6f
    add e                                         ; $55ff: $83
    ld b, c                                       ; $5600: $41
    inc bc                                        ; $5601: $03
    add b                                         ; $5602: $80
    ld bc, $0006                                  ; $5603: $01 $06 $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    ld b, c                                       ; $5608: $41
    ld l, a                                       ; $5609: $6f
    ld [hl], a                                    ; $560a: $77
    ld b, c                                       ; $560b: $41
    ld d, c                                       ; $560c: $51
    ld h, e                                       ; $560d: $63
    ld b, e                                       ; $560e: $43
    inc bc                                        ; $560f: $03
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    ld b, $80                                     ; $5612: $06 $80
    ld bc, $3200                                  ; $5614: $01 $00 $32
    ld h, [hl]                                    ; $5617: $66
    ld d, c                                       ; $5618: $51
    ld [hl], c                                    ; $5619: $71
    ld b, e                                       ; $561a: $43
    ld l, a                                       ; $561b: $6f
    add e                                         ; $561c: $83
    ld b, c                                       ; $561d: $41
    inc bc                                        ; $561e: $03
    add b                                         ; $561f: $80
    cp $06                                        ; $5620: $fe $06
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    rrca                                          ; $5625: $0f
    jr @-$5b                                      ; $5626: $18 $a3

    ld d, l                                       ; $5628: $55
    cp l                                          ; $5629: $bd
    inc bc                                        ; $562a: $03
    add hl, bc                                    ; $562b: $09
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    nop                                           ; $562e: $00
    ld [de], a                                    ; $562f: $12
    ld [$05bd], sp                                ; $5630: $08 $bd $05
    db $ed                                        ; $5633: $ed
    ld bc, $0009                                  ; $5634: $01 $09 $00
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    ld [de], a                                    ; $5639: $12
    ld [$05bd], sp                                ; $563a: $08 $bd $05
    db $ed                                        ; $563d: $ed
    inc b                                         ; $563e: $04
    ld d, c                                       ; $563f: $51
    dec e                                         ; $5640: $1d
    ld c, b                                       ; $5641: $48
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    ld a, [hl]                                    ; $5644: $7e
    ld [hl], d                                    ; $5645: $72
    cp l                                          ; $5646: $bd
    rlca                                          ; $5647: $07
    ld d, c                                       ; $5648: $51
    dec sp                                        ; $5649: $3b
    ld b, l                                       ; $564a: $45
    nop                                           ; $564b: $00
    nop                                           ; $564c: $00
    cp l                                          ; $564d: $bd
    inc b                                         ; $564e: $04
    ld d, c                                       ; $564f: $51
    dec sp                                        ; $5650: $3b
    ld b, l                                       ; $5651: $45
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    ld a, [hl]                                    ; $5654: $7e
    cp l                                          ; $5655: $bd
    rlca                                          ; $5656: $07
    ld d, c                                       ; $5657: $51
    ld c, l                                       ; $5658: $4d
    ld b, l                                       ; $5659: $45
    nop                                           ; $565a: $00
    nop                                           ; $565b: $00
    cp l                                          ; $565c: $bd
    nop                                           ; $565d: $00
    add hl, bc                                    ; $565e: $09
    nop                                           ; $565f: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    add a                                         ; $5662: $87
    ld l, l                                       ; $5663: $6d
    ld d, [hl]                                    ; $5664: $56
    ld [hl], e                                    ; $5665: $73
    ld d, [hl]                                    ; $5666: $56
    ld a, c                                       ; $5667: $79
    ld d, [hl]                                    ; $5668: $56
    add l                                         ; $5669: $85
    ld d, [hl]                                    ; $566a: $56
    sub c                                         ; $566b: $91
    ld d, [hl]                                    ; $566c: $56
    cp l                                          ; $566d: $bd
    inc b                                         ; $566e: $04
    add hl, bc                                    ; $566f: $09
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    cp l                                          ; $5673: $bd
    inc bc                                        ; $5674: $03
    add hl, bc                                    ; $5675: $09
    inc b                                         ; $5676: $04
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    ld a, [hl]                                    ; $5679: $7e
    cp l                                          ; $567a: $bd
    inc b                                         ; $567b: $04
    ld h, [hl]                                    ; $567c: $66
    ld d, c                                       ; $567d: $51
    db $d3                                        ; $567e: $d3
    ld b, a                                       ; $567f: $47
    nop                                           ; $5680: $00
    ld [$0057], sp                                ; $5681: $08 $57 $00
    nop                                           ; $5684: $00
    ld a, [hl]                                    ; $5685: $7e
    cp l                                          ; $5686: $bd
    inc b                                         ; $5687: $04
    ld l, c                                       ; $5688: $69
    ld d, c                                       ; $5689: $51
    db $d3                                        ; $568a: $d3
    ld b, a                                       ; $568b: $47
    nop                                           ; $568c: $00
    ld [$0057], sp                                ; $568d: $08 $57 $00
    nop                                           ; $5690: $00
    ld a, [hl]                                    ; $5691: $7e
    cp l                                          ; $5692: $bd
    inc bc                                        ; $5693: $03
    ld h, [hl]                                    ; $5694: $66
    ld d, c                                       ; $5695: $51
    db $d3                                        ; $5696: $d3
    ld b, a                                       ; $5697: $47
    nop                                           ; $5698: $00
    ld [$0057], sp                                ; $5699: $08 $57 $00
    nop                                           ; $569c: $00

    db $54, $18, $bd, $00, $09, $05, $00, $00

    cp l                                          ; $56a5: $bd
    inc bc                                        ; $56a6: $03
    ld d, c                                       ; $56a7: $51
    jr @+$5c                                      ; $56a8: $18 $5a

    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    db $e4                                        ; $56ac: $e4
    ld bc, $56b7                                  ; $56ad: $01 $b7 $56
    cp l                                          ; $56b0: $bd
    inc bc                                        ; $56b1: $03
    ld d, c                                       ; $56b2: $51
    ld c, c                                       ; $56b3: $49
    ld c, b                                       ; $56b4: $48
    nop                                           ; $56b5: $00
    nop                                           ; $56b6: $00
    cp l                                          ; $56b7: $bd
    ld b, $51                                     ; $56b8: $06 $51
    ld c, c                                       ; $56ba: $49
    ld c, b                                       ; $56bb: $48
    nop                                           ; $56bc: $00
    nop                                           ; $56bd: $00
    cp l                                          ; $56be: $bd
    inc b                                         ; $56bf: $04
    add hl, bc                                    ; $56c0: $09
    rlca                                          ; $56c1: $07
    nop                                           ; $56c2: $00
    nop                                           ; $56c3: $00

    db $72, $81, $00, $00, $84, $00, $00, $09, $00, $bd, $01, $00, $00, $72, $81, $00
    db $00, $84, $00, $00, $09, $00, $bd, $00, $00, $00, $00, $04, $01, $04, $02, $04
    db $03, $04, $04, $04, $05, $04, $06, $04, $07, $00

    rlca                                          ; $56ee: $07
    inc b                                         ; $56ef: $04
    ld b, $04                                     ; $56f0: $06 $04
    dec b                                         ; $56f2: $05
    inc b                                         ; $56f3: $04
    inc b                                         ; $56f4: $04
    inc b                                         ; $56f5: $04
    inc bc                                        ; $56f6: $03
    inc b                                         ; $56f7: $04
    ld [bc], a                                    ; $56f8: $02
    inc b                                         ; $56f9: $04
    ld bc, $0004                                  ; $56fa: $01 $04 $00
    nop                                           ; $56fd: $00

    db $08, $04, $09, $04, $0a, $04, $0b, $04, $0c, $04, $0d, $04, $0e, $04, $0f, $00
    db $72, $bd, $00, $d5, $87, $1d, $57, $28, $57, $33, $57, $57, $57

    ld l, h                                       ; $571b: $6c
    ld d, a                                       ; $571c: $57

    db $81, $1a, $00, $84, $34, $00, $00, $00, $18, $3b, $57, $81, $1a, $00, $84, $5c
    db $00, $00, $00

    jr jr_002_576d                                ; $5730: $18 $3b

    ld d, a                                       ; $5732: $57

    db $81, $1a, $00, $84, $84, $00, $00, $00, $51, $de, $56, $00, $02, $90, $0a, $48
    db $00, $4b, $f6, $4e, $03, $39, $9e, $00, $0a, $93, $2a, $42, $57, $e7, $06, $5a
    db $69, $18, $42, $57, $7e, $51, $fe, $56, $e7, $06, $18, $69, $e7, $06, $81, $69
    db $60, $00, $01, $63, $00, $20, $57, $00, $00

    ld a, [hl]                                    ; $576c: $7e

jr_002_576d:
    cp l                                          ; $576d: $bd
    ld [bc], a                                    ; $576e: $02
    add hl, bc                                    ; $576f: $09
    db $10                                        ; $5770: $10
    rst $20                                       ; $5771: $e7
    ld b, $a0                                     ; $5772: $06 $a0
    ld l, b                                       ; $5774: $68
    nop                                           ; $5775: $00
    ld bc, $7118                                  ; $5776: $01 $18 $71
    ld d, a                                       ; $5779: $57

    db $72, $bd, $00, $e7, $06, $a6, $68, $e7, $06, $94, $68, $00, $01, $18, $7d, $57

    ld [de], a                                    ; $578a: $12
    ld [$01bd], sp                                ; $578b: $08 $bd $01
    db $ed                                        ; $578e: $ed
    ld [bc], a                                    ; $578f: $02
    add hl, bc                                    ; $5790: $09
    nop                                           ; $5791: $00
    add c                                         ; $5792: $81
    inc [hl]                                      ; $5793: $34
    nop                                           ; $5794: $00
    add h                                         ; $5795: $84
    adc b                                         ; $5796: $88
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00

    db $09, $00, $87, $b1, $57, $bc, $57, $c7, $57, $d2, $57, $dd, $57, $f5, $57, $fe
    db $57, $07, $58

    db $10                                        ; $57ad: $10
    ld e, b                                       ; $57ae: $58

    db $e8, $57, $bd, $01, $81, $52, $00, $84, $37, $00, $18, $16, $58, $bd, $02, $81
    db $80, $00, $84, $2e, $00, $18, $16, $58, $bd, $03, $81, $88, $00, $84, $47, $00
    db $18, $16, $58, $bd, $04, $81, $88, $00, $84, $5f, $00, $18, $16, $58, $bd, $05
    db $81, $54, $00, $84, $7b, $00, $18, $16, $58, $54, $04, $bd, $00, $81, $4c, $00
    db $84, $90, $00, $18, $16, $58, $bd, $07, $e7, $06, $d6, $66, $18, $16, $58, $bd
    db $07, $e7, $06, $d6, $66, $18, $16, $58, $bd, $07, $e7, $06, $d6, $66, $18, $16
    db $58

    cp l                                          ; $5810: $bd
    rlca                                          ; $5811: $07
    rst $20                                       ; $5812: $e7
    ld b, $d6                                     ; $5813: $06 $d6
    ld h, [hl]                                    ; $5815: $66

    db $00, $00

    add hl, bc                                    ; $5818: $09
    nop                                           ; $5819: $00
    cp l                                          ; $581a: $bd
    inc b                                         ; $581b: $04
    add c                                         ; $581c: $81
    ld c, b                                       ; $581d: $48
    nop                                           ; $581e: $00
    add h                                         ; $581f: $84
    stop                                          ; $5820: $10 $00
    dec de                                        ; $5822: $1b
    daa                                           ; $5823: $27
    ld e, b                                       ; $5824: $58
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    inc b                                         ; $5828: $04
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    ld [$4000], sp                                ; $582c: $08 $00 $40
    inc bc                                        ; $582f: $03
    inc b                                         ; $5830: $04

    db $72, $90, $00, $87, $45, $58, $40, $58, $3b, $58, $09, $0a, $18, $45, $58, $09
    db $02, $18, $45, $58, $93, $e7, $06, $c7, $68, $e7, $06, $cd, $68, $e7, $06, $d3
    db $68, $00, $01, $18, $45, $58, $72, $bd, $02, $81, $8f, $00, $84, $8c, $00, $24
    db $68, $58, $00, $01, $18, $60, $58

    ld hl, $002b                                  ; $5868: $21 $2b $00
    add hl, bc                                    ; $586b: $09
    res 0, [hl]                                   ; $586c: $cb $86
    call Call_000_2e82                            ; $586e: $cd $82 $2e
    or a                                          ; $5871: $b7
    jp nz, Jump_000_08ec                          ; $5872: $c2 $ec $08

    set 0, [hl]                                   ; $5875: $cb $c6
    ret                                           ; $5877: $c9


    ld h, b                                       ; $5878: $60
    rst $20                                       ; $5879: $e7
    ld b, $aa                                     ; $587a: $06 $aa
    ld h, [hl]                                    ; $587c: $66
    cp l                                          ; $587d: $bd
    nop                                           ; $587e: $00
    add hl, bc                                    ; $587f: $09
    nop                                           ; $5880: $00
    add c                                         ; $5881: $81
    ld c, a                                       ; $5882: $4f
    nop                                           ; $5883: $00
    add h                                         ; $5884: $84
    ld a, $00                                     ; $5885: $3e $00
    nop                                           ; $5887: $00
    inc hl                                        ; $5888: $23
    nop                                           ; $5889: $00
    ld a, [bc]                                    ; $588a: $0a
    ld h, e                                       ; $588b: $63
    nop                                           ; $588c: $00
    ld bc, $a451                                  ; $588d: $01 $51 $a4
    ld e, b                                       ; $5890: $58
    nop                                           ; $5891: $00
    ld [bc], a                                    ; $5892: $02
    rst $20                                       ; $5893: $e7
    ld b, $ae                                     ; $5894: $06 $ae
    ld h, [hl]                                    ; $5896: $66
    nop                                           ; $5897: $00
    jr jr_002_58fa                                ; $5898: $18 $60

    add hl, bc                                    ; $589a: $09
    nop                                           ; $589b: $00
    add a                                         ; $589c: $87
    adc c                                         ; $589d: $89
    ld e, b                                       ; $589e: $58
    and c                                         ; $589f: $a1
    ld e, b                                       ; $58a0: $58
    ld d, a                                       ; $58a1: $57
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    nop                                           ; $58a4: $00
    ld [bc], a                                    ; $58a5: $02
    ld bc, $0202                                  ; $58a6: $01 $02 $02
    ld [bc], a                                    ; $58a9: $02
    inc bc                                        ; $58aa: $03
    ld [bc], a                                    ; $58ab: $02
    inc b                                         ; $58ac: $04
    ld [bc], a                                    ; $58ad: $02
    dec b                                         ; $58ae: $05
    ld [bc], a                                    ; $58af: $02
    ld b, $02                                     ; $58b0: $06 $02
    rlca                                          ; $58b2: $07
    ld [bc], a                                    ; $58b3: $02
    ld [$0902], sp                                ; $58b4: $08 $02 $09
    ld [bc], a                                    ; $58b7: $02
    ld a, [bc]                                    ; $58b8: $0a
    ld [bc], a                                    ; $58b9: $02
    dec bc                                        ; $58ba: $0b
    nop                                           ; $58bb: $00
    nop                                           ; $58bc: $00
    ld b, $01                                     ; $58bd: $06 $01
    ld b, $02                                     ; $58bf: $06 $02
    ld b, $03                                     ; $58c1: $06 $03
    ld b, $04                                     ; $58c3: $06 $04
    ld b, $05                                     ; $58c5: $06 $05
    ld b, $06                                     ; $58c7: $06 $06
    ld b, $07                                     ; $58c9: $06 $07
    ld b, $08                                     ; $58cb: $06 $08
    ld b, $ff                                     ; $58cd: $06 $ff
    ld [de], a                                    ; $58cf: $12

    db $00, $06, $02, $06, $04, $06, $06, $06, $08, $06, $0a, $06, $0c, $06, $0e, $06
    db $10, $06, $ff, $12, $87

    ld sp, hl                                     ; $58e5: $f9
    ld e, b                                       ; $58e6: $58

    db $ed, $58

    ld hl, $0859                                  ; $58e9: $21 $59 $08
    ld e, c                                       ; $58ec: $59

    db $e7, $06, $08, $69, $12, $08, $51, $d0, $58, $18, $fc, $58

    ld d, c                                       ; $58f9: $51

jr_002_58fa:
    cp h                                          ; $58fa: $bc
    ld e, b                                       ; $58fb: $58

    db $bd, $00, $ed, $06, $81, $1c, $00, $84, $2e, $00, $00, $00

    add c                                         ; $5908: $81
    ld a, e                                       ; $5909: $7b
    nop                                           ; $590a: $00
    add h                                         ; $590b: $84
    adc c                                         ; $590c: $89
    nop                                           ; $590d: $00
    cp l                                          ; $590e: $bd
    nop                                           ; $590f: $00
    ld d, c                                       ; $5910: $51
    ccf                                           ; $5911: $3f
    ld e, c                                       ; $5912: $59
    nop                                           ; $5913: $00
    ld bc, $07e7                                  ; $5914: $01 $e7 $07
    dec bc                                        ; $5917: $0b
    ld b, e                                       ; $5918: $43
    daa                                           ; $5919: $27
    inc de                                        ; $591a: $13
    ld e, c                                       ; $591b: $59
    ld d, c                                       ; $591c: $51
    cp h                                          ; $591d: $bc
    ld e, b                                       ; $591e: $58
    nop                                           ; $591f: $00
    nop                                           ; $5920: $00
    add c                                         ; $5921: $81
    adc b                                         ; $5922: $88
    nop                                           ; $5923: $00
    add h                                         ; $5924: $84
    add [hl]                                      ; $5925: $86
    nop                                           ; $5926: $00
    cp l                                          ; $5927: $bd
    nop                                           ; $5928: $00
    ld d, c                                       ; $5929: $51
    ccf                                           ; $592a: $3f
    ld e, c                                       ; $592b: $59
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    rst $20                                       ; $592e: $e7
    ld b, $e2                                     ; $592f: $06 $e2
    ld b, c                                       ; $5931: $41
    daa                                           ; $5932: $27
    ld a, [hl-]                                   ; $5933: $3a
    ld e, c                                       ; $5934: $59
    ld d, c                                       ; $5935: $51

jr_002_5936:
    cp h                                          ; $5936: $bc
    ld e, b                                       ; $5937: $58
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    ld d, c                                       ; $593a: $51
    ld b, c                                       ; $593b: $41
    ld e, c                                       ; $593c: $59
    nop                                           ; $593d: $00
    nop                                           ; $593e: $00
    nop                                           ; $593f: $00
    nop                                           ; $5940: $00
    add hl, bc                                    ; $5941: $09
    ld b, $0a                                     ; $5942: $06 $0a
    ld b, $0b                                     ; $5944: $06 $0b
    ld b, $0c                                     ; $5946: $06 $0c
    ld b, $0d                                     ; $5948: $06 $0d

jr_002_594a:
    ld b, $0e                                     ; $594a: $06 $0e
    ld b, $0f                                     ; $594c: $06 $0f
    ld b, $10                                     ; $594e: $06 $10
    ld b, $11                                     ; $5950: $06 $11
    ld b, $12                                     ; $5952: $06 $12
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    inc b                                         ; $5956: $04
    ld bc, $0204                                  ; $5957: $01 $04 $02
    inc b                                         ; $595a: $04
    rst $38                                       ; $595b: $ff
    ld b, $03                                     ; $595c: $06 $03
    inc b                                         ; $595e: $04
    inc b                                         ; $595f: $04
    inc b                                         ; $5960: $04
    dec b                                         ; $5961: $05
    inc b                                         ; $5962: $04
    rst $38                                       ; $5963: $ff
    ld b, $06                                     ; $5964: $06 $06
    inc b                                         ; $5966: $04
    rlca                                          ; $5967: $07
    inc b                                         ; $5968: $04
    ld [$ff04], sp                                ; $5969: $08 $04 $ff
    ld b, $00                                     ; $596c: $06 $00
    ld b, $01                                     ; $596e: $06 $01
    dec b                                         ; $5970: $05
    ld [bc], a                                    ; $5971: $02
    dec b                                         ; $5972: $05
    inc bc                                        ; $5973: $03
    dec b                                         ; $5974: $05
    ld [bc], a                                    ; $5975: $02
    dec b                                         ; $5976: $05
    ld bc, $ff06                                  ; $5977: $01 $06 $ff
    inc c                                         ; $597a: $0c
    nop                                           ; $597b: $00
    inc c                                         ; $597c: $0c
    ld bc, $020c                                  ; $597d: $01 $0c $02
    inc c                                         ; $5980: $0c
    inc bc                                        ; $5981: $03

jr_002_5982:
    inc c                                         ; $5982: $0c
    rst $38                                       ; $5983: $ff
    ld [$0a00], sp                                ; $5984: $08 $00 $0a
    ld bc, $0206                                  ; $5987: $01 $06 $02
    ld a, [bc]                                    ; $598a: $0a
    ld bc, $ff06                                  ; $598b: $01 $06 $ff
    ld [$0500], sp                                ; $598e: $08 $00 $05
    ld bc, $0205                                  ; $5991: $01 $05 $02
    dec b                                         ; $5994: $05
    inc bc                                        ; $5995: $03
    ld b, $04                                     ; $5996: $06 $04
    ld b, $05                                     ; $5998: $06 $05
    dec b                                         ; $599a: $05
    rst $38                                       ; $599b: $ff
    inc c                                         ; $599c: $0c
    nop                                           ; $599d: $00
    nop                                           ; $599e: $00
    nop                                           ; $599f: $00
    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    ld [$4000], sp                                ; $59a2: $08 $00 $40
    nop                                           ; $59a5: $00
    inc b                                         ; $59a6: $04
    push de                                       ; $59a7: $d5
    ld [hl], d                                    ; $59a8: $72
    cp l                                          ; $59a9: $bd

jr_002_59aa:
    nop                                           ; $59aa: $00
    add a                                         ; $59ab: $87
    or d                                          ; $59ac: $b2
    ld e, c                                       ; $59ad: $59
    jp c, $c659                                   ; $59ae: $da $59 $c6

    ld e, c                                       ; $59b1: $59
    ld d, h                                       ; $59b2: $54
    jr jr_002_5936                                ; $59b3: $18 $81

    jr z, jr_002_59b7                             ; $59b5: $28 $00

jr_002_59b7:
    add h                                         ; $59b7: $84
    ld d, b                                       ; $59b8: $50
    nop                                           ; $59b9: $00
    ld d, c                                       ; $59ba: $51
    ld d, l                                       ; $59bb: $55
    ld e, c                                       ; $59bc: $59
    nop                                           ; $59bd: $00
    ld bc, $06e7                                  ; $59be: $01 $e7 $06
    dec b                                         ; $59c1: $05
    ld h, [hl]                                    ; $59c2: $66
    jr jr_002_5982                                ; $59c3: $18 $bd

    ld e, c                                       ; $59c5: $59
    ld d, h                                       ; $59c6: $54
    jr jr_002_594a                                ; $59c7: $18 $81

    jr z, jr_002_59cb                             ; $59c9: $28 $00

jr_002_59cb:
    add h                                         ; $59cb: $84

jr_002_59cc:
    ld d, b                                       ; $59cc: $50
    nop                                           ; $59cd: $00
    ld d, c                                       ; $59ce: $51
    ld d, l                                       ; $59cf: $55
    ld e, c                                       ; $59d0: $59
    nop                                           ; $59d1: $00
    ld bc, $05e7                                  ; $59d2: $01 $e7 $05
    pop hl                                        ; $59d5: $e1
    ld a, d                                       ; $59d6: $7a
    jr jr_002_59aa                                ; $59d7: $18 $d1

    ld e, c                                       ; $59d9: $59
    add c                                         ; $59da: $81
    ld bc, $8400                                  ; $59db: $01 $00 $84
    adc d                                         ; $59de: $8a
    nop                                           ; $59df: $00
    add hl, bc                                    ; $59e0: $09
    ld a, [bc]                                    ; $59e1: $0a
    nop                                           ; $59e2: $00
    ld bc, $06e7                                  ; $59e3: $01 $e7 $06
    ld [c], a                                     ; $59e6: $e2
    ld h, l                                       ; $59e7: $65
    jr jr_002_59cc                                ; $59e8: $18 $e2

    ld e, c                                       ; $59ea: $59
    jr nc, jr_002_59ed                            ; $59eb: $30 $00

jr_002_59ed:
    nop                                           ; $59ed: $00
    nop                                           ; $59ee: $00
    db $10                                        ; $59ef: $10
    ld bc, $4000                                  ; $59f0: $01 $00 $40
    inc bc                                        ; $59f3: $03
    ld [bc], a                                    ; $59f4: $02
    ld [hl], d                                    ; $59f5: $72
    push de                                       ; $59f6: $d5
    cp l                                          ; $59f7: $bd
    inc bc                                        ; $59f8: $03
    add a                                         ; $59f9: $87
    cp $59                                        ; $59fa: $fe $59
    ld [hl], a                                    ; $59fc: $77
    ld e, d                                       ; $59fd: $5a
    ld [de], a                                    ; $59fe: $12
    inc b                                         ; $59ff: $04
    dec de                                        ; $5a00: $1b
    db $eb                                        ; $5a01: $eb
    ld e, c                                       ; $5a02: $59
    ld h, b                                       ; $5a03: $60
    add c                                         ; $5a04: $81
    xor d                                         ; $5a05: $aa
    nop                                           ; $5a06: $00
    add h                                         ; $5a07: $84
    jr c, jr_002_5a0a                             ; $5a08: $38 $00

jr_002_5a0a:
    ld d, c                                       ; $5a0a: $51
    jr @+$5c                                      ; $5a0b: $18 $5a

    nop                                           ; $5a0d: $00
    ld [bc], a                                    ; $5a0e: $02
    rst $20                                       ; $5a0f: $e7
    ld b, $6f                                     ; $5a10: $06 $6f
    ld h, l                                       ; $5a12: $65
    nop                                           ; $5a13: $00
    ld bc, $0f18                                  ; $5a14: $01 $18 $0f
    ld e, d                                       ; $5a17: $5a
    nop                                           ; $5a18: $00
    dec b                                         ; $5a19: $05

jr_002_5a1a:
    ld bc, $0205                                  ; $5a1a: $01 $05 $02
    dec b                                         ; $5a1d: $05
    inc bc                                        ; $5a1e: $03
    dec b                                         ; $5a1f: $05
    inc b                                         ; $5a20: $04
    dec b                                         ; $5a21: $05
    dec b                                         ; $5a22: $05
    dec b                                         ; $5a23: $05
    ld b, $05                                     ; $5a24: $06 $05
    rlca                                          ; $5a26: $07
    dec b                                         ; $5a27: $05
    rst $38                                       ; $5a28: $ff
    db $10                                        ; $5a29: $10
    jr nc, jr_002_5a2c                            ; $5a2a: $30 $00

jr_002_5a2c:
    nop                                           ; $5a2c: $00
    nop                                           ; $5a2d: $00
    or b                                          ; $5a2e: $b0
    nop                                           ; $5a2f: $00
    nop                                           ; $5a30: $00
    ld b, b                                       ; $5a31: $40
    inc bc                                        ; $5a32: $03
    ld [bc], a                                    ; $5a33: $02
    push de                                       ; $5a34: $d5
    cp l                                          ; $5a35: $bd
    ld bc, $3c87                                  ; $5a36: $01 $87 $3c
    ld e, d                                       ; $5a39: $5a
    ld [hl], a                                    ; $5a3a: $77
    ld e, d                                       ; $5a3b: $5a
    ld [de], a                                    ; $5a3c: $12
    inc b                                         ; $5a3d: $04
    dec de                                        ; $5a3e: $1b
    ld a, [hl+]                                   ; $5a3f: $2a
    ld e, d                                       ; $5a40: $5a
    ld h, b                                       ; $5a41: $60
    add c                                         ; $5a42: $81
    xor d                                         ; $5a43: $aa
    nop                                           ; $5a44: $00
    add h                                         ; $5a45: $84
    jr c, jr_002_5a48                             ; $5a46: $38 $00

jr_002_5a48:
    ld d, c                                       ; $5a48: $51
    jr jr_002_5aa5                                ; $5a49: $18 $5a

    nop                                           ; $5a4b: $00
    ld [bc], a                                    ; $5a4c: $02
    rst $20                                       ; $5a4d: $e7
    ld b, $6f                                     ; $5a4e: $06 $6f
    ld h, l                                       ; $5a50: $65
    nop                                           ; $5a51: $00
    ld bc, $4d18                                  ; $5a52: $01 $18 $4d
    ld e, d                                       ; $5a55: $5a
    push de                                       ; $5a56: $d5
    ld [hl], d                                    ; $5a57: $72

jr_002_5a58:
    cp l                                          ; $5a58: $bd
    ld bc, $5f87                                  ; $5a59: $01 $87 $5f
    ld e, d                                       ; $5a5c: $5a
    ld a, h                                       ; $5a5d: $7c
    ld e, d                                       ; $5a5e: $5a
    ld [de], a                                    ; $5a5f: $12
    inc b                                         ; $5a60: $04
    ld h, b                                       ; $5a61: $60
    add c                                         ; $5a62: $81

jr_002_5a63:
    xor d                                         ; $5a63: $aa
    nop                                           ; $5a64: $00
    rst $20                                       ; $5a65: $e7
    ld b, $ba                                     ; $5a66: $06 $ba
    ld h, l                                       ; $5a68: $65
    ld d, c                                       ; $5a69: $51
    ld d, l                                       ; $5a6a: $55
    ld e, c                                       ; $5a6b: $59
    nop                                           ; $5a6c: $00
    ld [bc], a                                    ; $5a6d: $02
    rst $20                                       ; $5a6e: $e7

jr_002_5a6f:
    ld b, $6f                                     ; $5a6f: $06 $6f
    ld h, l                                       ; $5a71: $65
    nop                                           ; $5a72: $00
    ld bc, $6e18                                  ; $5a73: $01 $18 $6e
    ld e, d                                       ; $5a76: $5a
    add hl, bc                                    ; $5a77: $09
    ld [$8018], sp                                ; $5a78: $08 $18 $80
    ld e, d                                       ; $5a7b: $5a
    cp l                                          ; $5a7c: $bd
    ld [bc], a                                    ; $5a7d: $02
    add hl, bc                                    ; $5a7e: $09
    inc bc                                        ; $5a7f: $03
    add h                                         ; $5a80: $84
    adc e                                         ; $5a81: $8b
    nop                                           ; $5a82: $00
    add c                                         ; $5a83: $81
    ld de, $0300                                  ; $5a84: $11 $00 $03
    dec b                                         ; $5a87: $05
    nop                                           ; $5a88: $00
    nop                                           ; $5a89: $00
    ld bc, $06e7                                  ; $5a8a: $01 $e7 $06
    daa                                           ; $5a8d: $27
    ld h, l                                       ; $5a8e: $65
    jr jr_002_5a1a                                ; $5a8f: $18 $89

    ld e, d                                       ; $5a91: $5a
    cp l                                          ; $5a92: $bd
    dec b                                         ; $5a93: $05
    dec de                                        ; $5a94: $1b
    sbc l                                         ; $5a95: $9d
    ld e, c                                       ; $5a96: $59
    ld d, c                                       ; $5a97: $51
    ld l, l                                       ; $5a98: $6d
    ld e, c                                       ; $5a99: $59
    jr jr_002_5a58                                ; $5a9a: $18 $bc

    ld e, d                                       ; $5a9c: $5a
    cp l                                          ; $5a9d: $bd
    inc b                                         ; $5a9e: $04
    dec de                                        ; $5a9f: $1b
    sbc l                                         ; $5aa0: $9d
    ld e, c                                       ; $5aa1: $59
    ld d, c                                       ; $5aa2: $51
    ld a, e                                       ; $5aa3: $7b
    ld e, c                                       ; $5aa4: $59

jr_002_5aa5:
    jr jr_002_5a63                                ; $5aa5: $18 $bc

    ld e, d                                       ; $5aa7: $5a
    ld [hl], d                                    ; $5aa8: $72
    dec de                                        ; $5aa9: $1b
    sbc l                                         ; $5aaa: $9d
    ld e, c                                       ; $5aab: $59
    cp l                                          ; $5aac: $bd
    rlca                                          ; $5aad: $07
    ld d, c                                       ; $5aae: $51
    add l                                         ; $5aaf: $85
    ld e, c                                       ; $5ab0: $59
    jr jr_002_5a6f                                ; $5ab1: $18 $bc

    ld e, d                                       ; $5ab3: $5a
    cp l                                          ; $5ab4: $bd
    ld b, $1b                                     ; $5ab5: $06 $1b
    sbc l                                         ; $5ab7: $9d
    ld e, c                                       ; $5ab8: $59
    ld d, c                                       ; $5ab9: $51
    adc a                                         ; $5aba: $8f
    ld e, c                                       ; $5abb: $59
    ld [de], a                                    ; $5abc: $12
    inc b                                         ; $5abd: $04
    ld d, h                                       ; $5abe: $54
    jr jr_002_5ac4                                ; $5abf: $18 $03

    nop                                           ; $5ac1: $00
    cp $e7                                        ; $5ac2: $fe $e7

jr_002_5ac4:
    ld b, $ba                                     ; $5ac4: $06 $ba
    ld h, l                                       ; $5ac6: $65
    nop                                           ; $5ac7: $00
    ld h, h                                       ; $5ac8: $64
    ld d, a                                       ; $5ac9: $57
    nop                                           ; $5aca: $00
    nop                                           ; $5acb: $00
    nop                                           ; $5acc: $00
    dec b                                         ; $5acd: $05
    ld bc, $0205                                  ; $5ace: $01 $05 $02
    dec b                                         ; $5ad1: $05
    inc bc                                        ; $5ad2: $03
    dec b                                         ; $5ad3: $05
    inc b                                         ; $5ad4: $04
    dec b                                         ; $5ad5: $05
    dec b                                         ; $5ad6: $05
    dec b                                         ; $5ad7: $05
    ld b, $05                                     ; $5ad8: $06 $05
    rst $38                                       ; $5ada: $ff
    db $08                                        ; $5adb: $08

    db $07, $03, $08, $03, $09, $03, $0a, $03, $0b, $03, $0c, $03, $0d, $03, $0e, $03
    db $0f, $03, $10, $03, $11, $03, $12, $03, $13, $03, $14, $03, $15, $03, $16, $03
    db $17, $03, $18, $03, $19, $00

    ld a, [hl]                                    ; $5b02: $7e
    cp l                                          ; $5b03: $bd
    ld [bc], a                                    ; $5b04: $02
    ld d, c                                       ; $5b05: $51
    call z, Call_000_125a                         ; $5b06: $cc $5a $12
    inc b                                         ; $5b09: $04
    ld d, h                                       ; $5b0a: $54
    jr jr_002_5b10                                ; $5b0b: $18 $03

    nop                                           ; $5b0d: $00
    cp $e7                                        ; $5b0e: $fe $e7

jr_002_5b10:
    ld b, $ba                                     ; $5b10: $06 $ba
    ld h, l                                       ; $5b12: $65
    nop                                           ; $5b13: $00
    ld h, h                                       ; $5b14: $64
    ld d, a                                       ; $5b15: $57
    nop                                           ; $5b16: $00
    nop                                           ; $5b17: $00
    ld d, c                                       ; $5b18: $51
    call c, Call_000_125a                         ; $5b19: $dc $5a $12
    nop                                           ; $5b1c: $00
    sub b                                         ; $5b1d: $90
    add hl, sp                                    ; $5b1e: $39
    rst $20                                       ; $5b1f: $e7
    ld b, $c7                                     ; $5b20: $06 $c7
    ld h, l                                       ; $5b22: $65
    nop                                           ; $5b23: $00

jr_002_5b24:
    ld bc, $2a93                                  ; $5b24: $01 $93 $2a
    rra                                           ; $5b27: $1f
    ld e, e                                       ; $5b28: $5b
    ld d, a                                       ; $5b29: $57
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    ld a, [hl]                                    ; $5b2c: $7e
    cp l                                          ; $5b2d: $bd
    rlca                                          ; $5b2e: $07
    ld [de], a                                    ; $5b2f: $12
    inc b                                         ; $5b30: $04
    ld d, h                                       ; $5b31: $54
    jr jr_002_5b37                                ; $5b32: $18 $03

    nop                                           ; $5b34: $00
    cp $e7                                        ; $5b35: $fe $e7

jr_002_5b37:
    ld b, $b4                                     ; $5b37: $06 $b4
    ld h, l                                       ; $5b39: $65
    nop                                           ; $5b3a: $00
    ld h, h                                       ; $5b3b: $64
    ld d, a                                       ; $5b3c: $57
    nop                                           ; $5b3d: $00
    nop                                           ; $5b3e: $00

    db $e7, $06, $fe, $66, $bd, $02, $51, $dc, $5a, $00, $3c, $60, $e7, $06, $39, $67
    db $00, $32, $e7, $06, $5d, $67, $57, $00, $00

jr_002_5b58:
    nop                                           ; $5b58: $00
    ld b, $01                                     ; $5b59: $06 $01
    ld b, $02                                     ; $5b5b: $06 $02
    ld b, $03                                     ; $5b5d: $06 $03
    ld b, $04                                     ; $5b5f: $06 $04
    nop                                           ; $5b61: $00
    ld a, [hl]                                    ; $5b62: $7e
    cp l                                          ; $5b63: $bd
    ld b, $03                                     ; $5b64: $06 $03
    nop                                           ; $5b66: $00
    rst $38                                       ; $5b67: $ff
    ld d, c                                       ; $5b68: $51
    ld e, b                                       ; $5b69: $58
    ld e, e                                       ; $5b6a: $5b
    nop                                           ; $5b6b: $00
    ld e, $57                                     ; $5b6c: $1e $57
    nop                                           ; $5b6e: $00
    nop                                           ; $5b6f: $00
    add a                                         ; $5b70: $87
    ld a, l                                       ; $5b71: $7d
    ld e, e                                       ; $5b72: $5b
    sbc c                                         ; $5b73: $99
    ld e, e                                       ; $5b74: $5b
    or c                                          ; $5b75: $b1
    ld e, e                                       ; $5b76: $5b
    cp a                                          ; $5b77: $bf
    ld e, e                                       ; $5b78: $5b
    jp nc, $cd5b                                  ; $5b79: $d2 $5b $cd

    ld e, e                                       ; $5b7c: $5b
    rst $20                                       ; $5b7d: $e7
    ld b, $b9                                     ; $5b7e: $06 $b9
    ld h, h                                       ; $5b80: $64
    cp l                                          ; $5b81: $bd
    nop                                           ; $5b82: $00
    add hl, bc                                    ; $5b83: $09
    ld a, [bc]                                    ; $5b84: $0a
    add c                                         ; $5b85: $81
    stop                                          ; $5b86: $10 $00
    add h                                         ; $5b88: $84
    ld l, b                                       ; $5b89: $68
    nop                                           ; $5b8a: $00
    ld h, e                                       ; $5b8b: $63
    rst $20                                       ; $5b8c: $e7
    ld b, $c9                                     ; $5b8d: $06 $c9
    ld h, h                                       ; $5b8f: $64
    rst $20                                       ; $5b90: $e7
    ld b, $f0                                     ; $5b91: $06 $f0
    ld h, h                                       ; $5b93: $64
    nop                                           ; $5b94: $00
    ld [bc], a                                    ; $5b95: $02
    jr jr_002_5b24                                ; $5b96: $18 $8c

    ld e, e                                       ; $5b98: $5b
    rst $20                                       ; $5b99: $e7
    ld b, $c3                                     ; $5b9a: $06 $c3
    ld h, h                                       ; $5b9c: $64
    add hl, bc                                    ; $5b9d: $09
    nop                                           ; $5b9e: $00
    add c                                         ; $5b9f: $81
    stop                                          ; $5ba0: $10 $00
    add h                                         ; $5ba2: $84
    ld l, b                                       ; $5ba3: $68
    nop                                           ; $5ba4: $00

jr_002_5ba5:
    cp l                                          ; $5ba5: $bd
    rlca                                          ; $5ba6: $07
    ld h, e                                       ; $5ba7: $63
    rst $20                                       ; $5ba8: $e7
    ld b, $f6                                     ; $5ba9: $06 $f6
    ld h, h                                       ; $5bab: $64
    nop                                           ; $5bac: $00
    ld [bc], a                                    ; $5bad: $02
    jr jr_002_5b58                                ; $5bae: $18 $a8

    ld e, e                                       ; $5bb0: $5b
    ld h, b                                       ; $5bb1: $60
    cp l                                          ; $5bb2: $bd
    nop                                           ; $5bb3: $00
    add hl, bc                                    ; $5bb4: $09
    dec bc                                        ; $5bb5: $0b
    add c                                         ; $5bb6: $81
    inc sp                                        ; $5bb7: $33
    nop                                           ; $5bb8: $00
    add h                                         ; $5bb9: $84
    stop                                          ; $5bba: $10 $00
    ld h, e                                       ; $5bbc: $63
    nop                                           ; $5bbd: $00
    nop                                           ; $5bbe: $00
    ld h, b                                       ; $5bbf: $60
    cp l                                          ; $5bc0: $bd
    nop                                           ; $5bc1: $00
    add hl, bc                                    ; $5bc2: $09
    dec bc                                        ; $5bc3: $0b
    add c                                         ; $5bc4: $81
    ld l, e                                       ; $5bc5: $6b
    nop                                           ; $5bc6: $00
    add h                                         ; $5bc7: $84
    stop                                          ; $5bc8: $10 $00
    ld h, e                                       ; $5bca: $63
    nop                                           ; $5bcb: $00
    nop                                           ; $5bcc: $00
    cp l                                          ; $5bcd: $bd
    nop                                           ; $5bce: $00
    jr jr_002_5ba5                                ; $5bcf: $18 $d4

    ld e, e                                       ; $5bd1: $5b
    cp l                                          ; $5bd2: $bd
    ld b, $60                                     ; $5bd3: $06 $60
    add hl, bc                                    ; $5bd5: $09
    dec c                                         ; $5bd6: $0d
    add c                                         ; $5bd7: $81
    ld d, b                                       ; $5bd8: $50
    nop                                           ; $5bd9: $00
    add h                                         ; $5bda: $84
    jr c, jr_002_5bdd                             ; $5bdb: $38 $00

jr_002_5bdd:
    ld b, $9c                                     ; $5bdd: $06 $9c
    rst $38                                       ; $5bdf: $ff
    ld h, e                                       ; $5be0: $63
    ld d, c                                       ; $5be1: $51
    db $ed                                        ; $5be2: $ed
    ld e, e                                       ; $5be3: $5b
    nop                                           ; $5be4: $00
    ld h, h                                       ; $5be5: $64
    rst $20                                       ; $5be6: $e7
    ld b, $a8                                     ; $5be7: $06 $a8
    ld h, h                                       ; $5be9: $64
    ld d, a                                       ; $5bea: $57
    nop                                           ; $5beb: $00
    nop                                           ; $5bec: $00
    dec c                                         ; $5bed: $0d
    ld [$080e], sp                                ; $5bee: $08 $0e $08
    rrca                                          ; $5bf1: $0f
    ld [$0610], sp                                ; $5bf2: $08 $10 $06
    db $10                                        ; $5bf5: $10
    ld [$0812], sp                                ; $5bf6: $08 $12 $08
    inc de                                        ; $5bf9: $13
    ld [$0614], sp                                ; $5bfa: $08 $14 $06
    rst $38                                       ; $5bfd: $ff
    ld [bc], a                                    ; $5bfe: $02
    ld [de], a                                    ; $5bff: $12
    ld [$00bd], sp                                ; $5c00: $08 $bd $00
    db $ed                                        ; $5c03: $ed
    ld [bc], a                                    ; $5c04: $02
    add c                                         ; $5c05: $81
    jr nc, jr_002_5c08                            ; $5c06: $30 $00

jr_002_5c08:
    add h                                         ; $5c08: $84
    ld a, b                                       ; $5c09: $78
    nop                                           ; $5c0a: $00
    rst $20                                       ; $5c0b: $e7
    ld bc, $47fb                                  ; $5c0c: $01 $fb $47
    inc c                                         ; $5c0f: $0c
    ld hl, $005c                                  ; $5c10: $21 $5c $00
    inc d                                         ; $5c13: $14
    add hl, bc                                    ; $5c14: $09
    nop                                           ; $5c15: $00
    nop                                           ; $5c16: $00
    inc d                                         ; $5c17: $14
    rst $20                                       ; $5c18: $e7
    ld bc, $4831                                  ; $5c19: $01 $31 $48
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    jr @+$0d                                      ; $5c1e: $18 $0b

    ld e, h                                       ; $5c20: $5c
    add hl, bc                                    ; $5c21: $09
    nop                                           ; $5c22: $00
    nop                                           ; $5c23: $00
    inc a                                         ; $5c24: $3c
    rst $20                                       ; $5c25: $e7
    ld bc, $4843                                  ; $5c26: $01 $43 $48
    rst $20                                       ; $5c29: $e7
    ld bc, $482a                                  ; $5c2a: $01 $2a $48
    ld d, c                                       ; $5c2d: $51
    ld c, [hl]                                    ; $5c2e: $4e
    ld e, h                                       ; $5c2f: $5c
    nop                                           ; $5c30: $00
    inc a                                         ; $5c31: $3c
    add hl, bc                                    ; $5c32: $09
    inc b                                         ; $5c33: $04
    nop                                           ; $5c34: $00
    inc d                                         ; $5c35: $14
    rst $20                                       ; $5c36: $e7
    ld bc, $4858                                  ; $5c37: $01 $58 $48
    nop                                           ; $5c3a: $00
    inc d                                         ; $5c3b: $14
    add hl, bc                                    ; $5c3c: $09
    inc b                                         ; $5c3d: $04
    rst $20                                       ; $5c3e: $e7
    ld bc, $4877                                  ; $5c3f: $01 $77 $48
    ld a, [hl+]                                   ; $5c42: $2a
    inc [hl]                                      ; $5c43: $34
    ld e, h                                       ; $5c44: $5c
    rst $20                                       ; $5c45: $e7
    ld bc, $4889                                  ; $5c46: $01 $89 $48
    rst $20                                       ; $5c49: $e7
    ld bc, $482a                                  ; $5c4a: $01 $2a $48
    rrca                                          ; $5c4d: $0f
    ld [bc], a                                    ; $5c4e: $02
    inc c                                         ; $5c4f: $0c
    inc b                                         ; $5c50: $04
    inc c                                         ; $5c51: $0c
    ld b, $0c                                     ; $5c52: $06 $0c
    inc b                                         ; $5c54: $04
    inc c                                         ; $5c55: $0c
    rst $38                                       ; $5c56: $ff
    ld [$3044], sp                                ; $5c57: $08 $44 $30
    inc e                                         ; $5c5a: $1c
    ld [de], a                                    ; $5c5b: $12
    ld [$00bd], sp                                ; $5c5c: $08 $bd $00
    db $ed                                        ; $5c5f: $ed
    ld bc, $6c81                                  ; $5c60: $01 $81 $6c
    nop                                           ; $5c63: $00
    add h                                         ; $5c64: $84
    ld a, b                                       ; $5c65: $78
    nop                                           ; $5c66: $00
    add hl, bc                                    ; $5c67: $09

jr_002_5c68:
    nop                                           ; $5c68: $00
    nop                                           ; $5c69: $00
    nop                                           ; $5c6a: $00
    rst $20                                       ; $5c6b: $e7
    ld bc, $47fb                                  ; $5c6c: $01 $fb $47
    rst $20                                       ; $5c6f: $e7
    ld bc, $4847                                  ; $5c70: $01 $47 $48
    rst $20                                       ; $5c73: $e7
    ld bc, $482a                                  ; $5c74: $01 $2a $48
    ld d, c                                       ; $5c77: $51
    ld c, [hl]                                    ; $5c78: $4e
    ld e, h                                       ; $5c79: $5c
    nop                                           ; $5c7a: $00
    inc a                                         ; $5c7b: $3c
    add hl, bc                                    ; $5c7c: $09
    inc b                                         ; $5c7d: $04
    nop                                           ; $5c7e: $00

jr_002_5c7f:
    ld bc, $01e7                                  ; $5c7f: $01 $e7 $01
    cp b                                          ; $5c82: $b8
    ld c, b                                       ; $5c83: $48
    daa                                           ; $5c84: $27
    ld a, [hl]                                    ; $5c85: $7e
    ld e, h                                       ; $5c86: $5c
    inc c                                         ; $5c87: $0c
    add hl, bc                                    ; $5c88: $09
    ld e, l                                       ; $5c89: $5d
    rst $20                                       ; $5c8a: $e7
    ld bc, $48a6                                  ; $5c8b: $01 $a6 $48
    ld a, [hl+]                                   ; $5c8e: $2a
    or b                                          ; $5c8f: $b0
    ld e, h                                       ; $5c90: $5c
    rst $20                                       ; $5c91: $e7
    ld bc, $48da                                  ; $5c92: $01 $da $48
    ld a, [hl+]                                   ; $5c95: $2a
    ld a, [hl]                                    ; $5c96: $7e
    ld e, h                                       ; $5c97: $5c
    dec d                                         ; $5c98: $15
    ld b, b                                       ; $5c99: $40
    rst $20                                       ; $5c9a: $e7
    ld bc, $488d                                  ; $5c9b: $01 $8d $48
    rst $20                                       ; $5c9e: $e7
    ld bc, $482a                                  ; $5c9f: $01 $2a $48
    rst $20                                       ; $5ca2: $e7
    ld bc, $48ec                                  ; $5ca3: $01 $ec $48
    daa                                           ; $5ca6: $27
    ret nz                                        ; $5ca7: $c0

    ld e, h                                       ; $5ca8: $5c
    rst $20                                       ; $5ca9: $e7
    ld bc, $4835                                  ; $5caa: $01 $35 $48
    jr jr_002_5d0a                                ; $5cad: $18 $5b

    ld e, h                                       ; $5caf: $5c
    dec d                                         ; $5cb0: $15
    ld a, [de]                                    ; $5cb1: $1a
    rst $20                                       ; $5cb2: $e7
    ld bc, $482a                                  ; $5cb3: $01 $2a $48
    rst $20                                       ; $5cb6: $e7
    ld bc, $48f6                                  ; $5cb7: $01 $f6 $48
    daa                                           ; $5cba: $27
    ldh [$5c], a                                  ; $5cbb: $e0 $5c
    jr jr_002_5c68                                ; $5cbd: $18 $a9

    ld e, h                                       ; $5cbf: $5c
    rst $20                                       ; $5cc0: $e7
    ld bc, $49b0                                  ; $5cc1: $01 $b0 $49
    daa                                           ; $5cc4: $27
    rst $10                                       ; $5cc5: $d7
    ld e, h                                       ; $5cc6: $5c
    ld d, c                                       ; $5cc7: $51
    jp hl                                         ; $5cc8: $e9


    ld e, h                                       ; $5cc9: $5c
    nop                                           ; $5cca: $00
    and b                                         ; $5ccb: $a0
    rst $20                                       ; $5ccc: $e7
    ld bc, $4977                                  ; $5ccd: $01 $77 $49
    rst $20                                       ; $5cd0: $e7
    ld bc, $49ad                                  ; $5cd1: $01 $ad $49
    jr jr_002_5c7f                                ; $5cd4: $18 $a9

    ld e, h                                       ; $5cd6: $5c
    ld d, c                                       ; $5cd7: $51
    jp hl                                         ; $5cd8: $e9


    ld e, h                                       ; $5cd9: $5c
    rst $20                                       ; $5cda: $e7
    ld bc, $4909                                  ; $5cdb: $01 $09 $49
    nop                                           ; $5cde: $00
    nop                                           ; $5cdf: $00
    ld d, c                                       ; $5ce0: $51
    db $fd                                        ; $5ce1: $fd
    ld e, h                                       ; $5ce2: $5c
    rst $20                                       ; $5ce3: $e7
    ld bc, $4913                                  ; $5ce4: $01 $13 $49
    nop                                           ; $5ce7: $00
    nop                                           ; $5ce8: $00
    db $10                                        ; $5ce9: $10
    ld b, $12                                     ; $5cea: $06 $12
    ld b, $14                                     ; $5cec: $06 $14
    ld b, $16                                     ; $5cee: $06 $16
    ld b, $18                                     ; $5cf0: $06 $18
    ld b, $1a                                     ; $5cf2: $06 $1a
    ld b, $1c                                     ; $5cf4: $06 $1c
    ld b, $1e                                     ; $5cf6: $06 $1e
    ld b, $20                                     ; $5cf8: $06 $20
    ld b, $ff                                     ; $5cfa: $06 $ff
    ld [de], a                                    ; $5cfc: $12
    ld [hl+], a                                   ; $5cfd: $22
    ld b, $24                                     ; $5cfe: $06 $24
    ld b, $26                                     ; $5d00: $06 $26
    ld b, $28                                     ; $5d02: $06 $28
    ld b, $2a                                     ; $5d04: $06 $2a
    ld b, $2c                                     ; $5d06: $06 $2c
    nop                                           ; $5d08: $00
    add hl, bc                                    ; $5d09: $09

jr_002_5d0a:
    inc b                                         ; $5d0a: $04
    nop                                           ; $5d0b: $00
    ld bc, $01e7                                  ; $5d0c: $01 $e7 $01
    dec e                                         ; $5d0f: $1d
    ld c, c                                       ; $5d10: $49
    nop                                           ; $5d11: $00
    inc d                                         ; $5d12: $14
    add hl, bc                                    ; $5d13: $09
    inc b                                         ; $5d14: $04
    rrca                                          ; $5d15: $0f
    ld [hl], d                                    ; $5d16: $72
    add h                                         ; $5d17: $84
    ld e, b                                       ; $5d18: $58
    nop                                           ; $5d19: $00
    dec de                                        ; $5d1a: $1b
    ld [bc], a                                    ; $5d1b: $02
    ld e, [hl]                                    ; $5d1c: $5e
    rst $20                                       ; $5d1d: $e7
    ld bc, $49b8                                  ; $5d1e: $01 $b8 $49
    add a                                         ; $5d21: $87
    dec l                                         ; $5d22: $2d
    ld e, l                                       ; $5d23: $5d
    ld h, $5d                                     ; $5d24: $26 $5d
    ld h, [hl]                                    ; $5d26: $66
    add c                                         ; $5d27: $81
    ld l, h                                       ; $5d28: $6c
    nop                                           ; $5d29: $00
    jr jr_002_5d5c                                ; $5d2a: $18 $30

    ld e, l                                       ; $5d2c: $5d
    add c                                         ; $5d2d: $81
    jr nc, jr_002_5d30                            ; $5d2e: $30 $00

jr_002_5d30:
    rst $20                                       ; $5d30: $e7
    ld bc, $49d9                                  ; $5d31: $01 $d9 $49
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    rst $20                                       ; $5d36: $e7
    ld bc, $492c                                  ; $5d37: $01 $2c $49
    ld [$0006], a                                 ; $5d3a: $ea $06 $00
    nop                                           ; $5d3d: $00
    inc bc                                        ; $5d3e: $03
    nop                                           ; $5d3f: $00
    nop                                           ; $5d40: $00
    nop                                           ; $5d41: $00
    ld bc, $0090                                  ; $5d42: $01 $90 $00
    rst $20                                       ; $5d45: $e7
    ld bc, $496c                                  ; $5d46: $01 $6c $49
    daa                                           ; $5d49: $27
    ld b, c                                       ; $5d4a: $41
    ld e, l                                       ; $5d4b: $5d
    xor [hl]                                      ; $5d4c: $ae
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    nop                                           ; $5d4f: $00
    nop                                           ; $5d50: $00
    rst $20                                       ; $5d51: $e7
    ld bc, $4931                                  ; $5d52: $01 $31 $49
    rst $20                                       ; $5d55: $e7
    ld bc, $49de                                  ; $5d56: $01 $de $49
    ld [$0006], a                                 ; $5d59: $ea $06 $00

jr_002_5d5c:
    nop                                           ; $5d5c: $00
    inc bc                                        ; $5d5d: $03
    nop                                           ; $5d5e: $00
    nop                                           ; $5d5f: $00
    nop                                           ; $5d60: $00
    ld bc, $0190                                  ; $5d61: $01 $90 $01
    rst $20                                       ; $5d64: $e7
    ld bc, $496c                                  ; $5d65: $01 $6c $49
    daa                                           ; $5d68: $27
    ld h, b                                       ; $5d69: $60
    ld e, l                                       ; $5d6a: $5d
    xor [hl]                                      ; $5d6b: $ae
    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    rst $20                                       ; $5d70: $e7
    ld bc, $4936                                  ; $5d71: $01 $36 $49
    rst $20                                       ; $5d74: $e7
    ld bc, $49e3                                  ; $5d75: $01 $e3 $49
    ld [$0006], a                                 ; $5d78: $ea $06 $00
    nop                                           ; $5d7b: $00
    inc bc                                        ; $5d7c: $03
    nop                                           ; $5d7d: $00
    nop                                           ; $5d7e: $00
    nop                                           ; $5d7f: $00
    nop                                           ; $5d80: $00
    jr @+$18                                      ; $5d81: $18 $16

    ld e, l                                       ; $5d83: $5d
    nop                                           ; $5d84: $00
    ld a, [bc]                                    ; $5d85: $0a
    ld bc, $020a                                  ; $5d86: $01 $0a $02
    ld a, [bc]                                    ; $5d89: $0a
    inc bc                                        ; $5d8a: $03
    ld a, [bc]                                    ; $5d8b: $0a
    ld [bc], a                                    ; $5d8c: $02
    ld a, [bc]                                    ; $5d8d: $0a
    ld bc, $ff0a                                  ; $5d8e: $01 $0a $ff
    inc c                                         ; $5d91: $0c
    nop                                           ; $5d92: $00
    ld [$0801], sp                                ; $5d93: $08 $01 $08
    ld [bc], a                                    ; $5d96: $02
    ld [$0803], sp                                ; $5d97: $08 $03 $08
    ld [bc], a                                    ; $5d9a: $02
    ld [$0801], sp                                ; $5d9b: $08 $01 $08
    rst $38                                       ; $5d9e: $ff
    inc c                                         ; $5d9f: $0c
    nop                                           ; $5da0: $00
    ld b, $01                                     ; $5da1: $06 $01
    ld b, $02                                     ; $5da3: $06 $02
    ld b, $03                                     ; $5da5: $06 $03
    ld b, $02                                     ; $5da7: $06 $02
    ld b, $01                                     ; $5da9: $06 $01
    ld b, $ff                                     ; $5dab: $06 $ff
    inc c                                         ; $5dad: $0c
    inc b                                         ; $5dae: $04
    ld a, [bc]                                    ; $5daf: $0a
    dec b                                         ; $5db0: $05
    ld a, [bc]                                    ; $5db1: $0a
    ld b, $0a                                     ; $5db2: $06 $0a
    rlca                                          ; $5db4: $07
    ld a, [bc]                                    ; $5db5: $0a
    ld b, $0a                                     ; $5db6: $06 $0a
    dec b                                         ; $5db8: $05
    ld a, [bc]                                    ; $5db9: $0a
    rst $38                                       ; $5dba: $ff
    inc c                                         ; $5dbb: $0c
    inc b                                         ; $5dbc: $04
    ld [$0805], sp                                ; $5dbd: $08 $05 $08
    ld b, $08                                     ; $5dc0: $06 $08
    rlca                                          ; $5dc2: $07
    ld [$0806], sp                                ; $5dc3: $08 $06 $08
    dec b                                         ; $5dc6: $05
    ld [$0cff], sp                                ; $5dc7: $08 $ff $0c
    inc b                                         ; $5dca: $04
    ld b, $05                                     ; $5dcb: $06 $05
    ld b, $06                                     ; $5dcd: $06 $06
    ld b, $07                                     ; $5dcf: $06 $07
    ld b, $06                                     ; $5dd1: $06 $06
    ld b, $05                                     ; $5dd3: $06 $05
    ld b, $ff                                     ; $5dd5: $06 $ff
    inc c                                         ; $5dd7: $0c
    ld [$090a], sp                                ; $5dd8: $08 $0a $09
    ld a, [bc]                                    ; $5ddb: $0a
    ld a, [bc]                                    ; $5ddc: $0a
    ld a, [bc]                                    ; $5ddd: $0a
    dec bc                                        ; $5dde: $0b
    ld a, [bc]                                    ; $5ddf: $0a
    ld a, [bc]                                    ; $5de0: $0a
    ld a, [bc]                                    ; $5de1: $0a
    add hl, bc                                    ; $5de2: $09
    ld a, [bc]                                    ; $5de3: $0a
    rst $38                                       ; $5de4: $ff
    inc c                                         ; $5de5: $0c
    ld [$0908], sp                                ; $5de6: $08 $08 $09
    ld [$080a], sp                                ; $5de9: $08 $0a $08
    dec bc                                        ; $5dec: $0b
    ld [$080a], sp                                ; $5ded: $08 $0a $08
    add hl, bc                                    ; $5df0: $09
    ld [$0cff], sp                                ; $5df1: $08 $ff $0c
    ld [$0906], sp                                ; $5df4: $08 $06 $09
    ld b, $0a                                     ; $5df7: $06 $0a
    ld b, $0b                                     ; $5df9: $06 $0b
    ld b, $0a                                     ; $5dfb: $06 $0a
    ld b, $09                                     ; $5dfd: $06 $09
    ld b, $ff                                     ; $5dff: $06 $ff
    inc c                                         ; $5e01: $0c
    nop                                           ; $5e02: $00
    ld bc, $0000                                  ; $5e03: $01 $00 $00
    nop                                           ; $5e06: $00
    ld bc, $c000                                  ; $5e07: $01 $00 $c0
    dec b                                         ; $5e0a: $05
    dec b                                         ; $5e0b: $05
    ld [de], a                                    ; $5e0c: $12
    inc b                                         ; $5e0d: $04
    ld h, b                                       ; $5e0e: $60
    ld [hl], d                                    ; $5e0f: $72
    cp l                                          ; $5e10: $bd
    ld bc, $1b87                                  ; $5e11: $01 $87 $1b
    ld e, [hl]                                    ; $5e14: $5e
    ld b, e                                       ; $5e15: $43
    ld e, [hl]                                    ; $5e16: $5e
    ld c, l                                       ; $5e17: $4d
    ld e, [hl]                                    ; $5e18: $5e
    ld d, a                                       ; $5e19: $57
    ld e, [hl]                                    ; $5e1a: $5e
    add h                                         ; $5e1b: $84
    add h                                         ; $5e1c: $84
    nop                                           ; $5e1d: $00
    nop                                           ; $5e1e: $00
    nop                                           ; $5e1f: $00
    inc c                                         ; $5e20: $0c
    dec hl                                        ; $5e21: $2b
    ld e, [hl]                                    ; $5e22: $5e
    nop                                           ; $5e23: $00
    nop                                           ; $5e24: $00
    inc c                                         ; $5e25: $0c
    scf                                           ; $5e26: $37
    ld e, [hl]                                    ; $5e27: $5e
    jr jr_002_5e45                                ; $5e28: $18 $1b

    ld e, [hl]                                    ; $5e2a: $5e
    ld h, e                                       ; $5e2b: $63
    add hl, bc                                    ; $5e2c: $09
    ld [bc], a                                    ; $5e2d: $02
    nop                                           ; $5e2e: $00
    ld b, $09                                     ; $5e2f: $06 $09
    ld bc, $0600                                  ; $5e31: $01 $00 $06
    add hl, bc                                    ; $5e34: $09
    nop                                           ; $5e35: $00
    rrca                                          ; $5e36: $0f
    add hl, bc                                    ; $5e37: $09
    ld bc, $0600                                  ; $5e38: $01 $00 $06
    add hl, bc                                    ; $5e3b: $09
    ld [bc], a                                    ; $5e3c: $02
    nop                                           ; $5e3d: $00
    ld b, $60                                     ; $5e3e: $06 $60
    nop                                           ; $5e40: $00
    ld b, $0f                                     ; $5e41: $06 $0f
    ld h, b                                       ; $5e43: $60
    add c                                         ; $5e44: $81

jr_002_5e45:
    ld a, [hl-]                                   ; $5e45: $3a
    nop                                           ; $5e46: $00
    add h                                         ; $5e47: $84
    inc c                                         ; $5e48: $0c
    nop                                           ; $5e49: $00
    jr @+$60                                      ; $5e4a: $18 $5e

    ld e, [hl]                                    ; $5e4c: $5e
    ld h, b                                       ; $5e4d: $60
    add c                                         ; $5e4e: $81
    ld c, a                                       ; $5e4f: $4f
    nop                                           ; $5e50: $00
    add h                                         ; $5e51: $84
    inc c                                         ; $5e52: $0c
    nop                                           ; $5e53: $00
    jr @+$60                                      ; $5e54: $18 $5e

    ld e, [hl]                                    ; $5e56: $5e
    ld h, b                                       ; $5e57: $60
    add c                                         ; $5e58: $81
    ld h, h                                       ; $5e59: $64
    nop                                           ; $5e5a: $00
    add h                                         ; $5e5b: $84
    inc c                                         ; $5e5c: $0c
    nop                                           ; $5e5d: $00
    ld d, c                                       ; $5e5e: $51
    ld h, [hl]                                    ; $5e5f: $66
    ld e, [hl]                                    ; $5e60: $5e
    nop                                           ; $5e61: $00
    ld bc, $0063                                  ; $5e62: $01 $63 $00
    nop                                           ; $5e65: $00
    inc bc                                        ; $5e66: $03
    inc d                                         ; $5e67: $14
    inc b                                         ; $5e68: $04
    ld b, $05                                     ; $5e69: $06 $05
    nop                                           ; $5e6b: $00
    ld h, b                                       ; $5e6c: $60
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00

    ld hl, $0001                                  ; $5e6f: $21 $01 $00
    add hl, bc                                    ; $5e72: $09
    ld a, [hl+]                                   ; $5e73: $2a
    sub [hl]                                      ; $5e74: $96
    cp $14                                        ; $5e75: $fe $14
    jp c, Jump_000_0039                           ; $5e77: $da $39 $00

    ld a, [hl]                                    ; $5e7a: $7e
    cp $14                                        ; $5e7b: $fe $14
    jp Jump_000_0039                              ; $5e7d: $c3 $39 $00


    db $54, $00, $bd, $04, $1b, $b0, $5e, $51, $ba, $5e, $60, $00, $02, $e7, $03, $53
    db $40, $27, $ad, $5e, $63, $54, $18, $93, $27, $ad, $5e, $24, $6f, $5e, $2d, $a7
    db $5e, $ab, $00, $01, $18, $97, $5e, $5d, $00, $01, $18, $97, $5e, $57, $00, $00
    db $00, $0a, $00, $40, $00, $06, $00, $00, $05, $05, $00, $02, $01, $02, $02, $02
    db $03, $02, $04, $02, $05, $02, $06, $02, $07, $02, $ff, $10

    ld [de], a                                    ; $5ecc: $12
    ld [$00bd], sp                                ; $5ecd: $08 $bd $00
    db $ed                                        ; $5ed0: $ed
    ld bc, $1c81                                  ; $5ed1: $01 $81 $1c
    nop                                           ; $5ed4: $00
    add h                                         ; $5ed5: $84
    ld d, b                                       ; $5ed6: $50
    nop                                           ; $5ed7: $00
    ld d, c                                       ; $5ed8: $51
    db $e3                                        ; $5ed9: $e3
    ld e, [hl]                                    ; $5eda: $5e
    inc bc                                        ; $5edb: $03
    nop                                           ; $5edc: $00
    ld bc, $8006                                  ; $5edd: $01 $06 $80
    nop                                           ; $5ee0: $00
    nop                                           ; $5ee1: $00
    nop                                           ; $5ee2: $00
    nop                                           ; $5ee3: $00
    inc b                                         ; $5ee4: $04
    ld [bc], a                                    ; $5ee5: $02
    inc b                                         ; $5ee6: $04
    inc b                                         ; $5ee7: $04
    inc b                                         ; $5ee8: $04
    rst $38                                       ; $5ee9: $ff
    ld b, $12                                     ; $5eea: $06 $12
    ld [$00bd], sp                                ; $5eec: $08 $bd $00
    db $ed                                        ; $5eef: $ed
    ld bc, $1681                                  ; $5ef0: $01 $81 $16
    nop                                           ; $5ef3: $00
    add h                                         ; $5ef4: $84
    add d                                         ; $5ef5: $82
    nop                                           ; $5ef6: $00
    ld d, c                                       ; $5ef7: $51
    ld [bc], a                                    ; $5ef8: $02
    ld e, a                                       ; $5ef9: $5f
    inc bc                                        ; $5efa: $03
    call c, $0600                                 ; $5efb: $dc $00 $06
    sub d                                         ; $5efe: $92
    rst $38                                       ; $5eff: $ff
    nop                                           ; $5f00: $00
    nop                                           ; $5f01: $00
    nop                                           ; $5f02: $00
    dec b                                         ; $5f03: $05
    ld [bc], a                                    ; $5f04: $02
    dec b                                         ; $5f05: $05
    inc b                                         ; $5f06: $04
    dec b                                         ; $5f07: $05
    ld b, $05                                     ; $5f08: $06 $05
    ld [$0a05], sp                                ; $5f0a: $08 $05 $0a
    dec b                                         ; $5f0d: $05
    inc c                                         ; $5f0e: $0c
    dec b                                         ; $5f0f: $05
    ld c, $05                                     ; $5f10: $0e $05
    rst $38                                       ; $5f12: $ff
    db $10                                        ; $5f13: $10
    add hl, bc                                    ; $5f14: $09
    nop                                           ; $5f15: $00
    ld h, e                                       ; $5f16: $63
    cp l                                          ; $5f17: $bd
    nop                                           ; $5f18: $00
    add c                                         ; $5f19: $81
    ld c, h                                       ; $5f1a: $4c
    nop                                           ; $5f1b: $00
    add h                                         ; $5f1c: $84
    jr nz, jr_002_5f1f                            ; $5f1d: $20 $00

jr_002_5f1f:
    ld d, c                                       ; $5f1f: $51
    dec hl                                        ; $5f20: $2b
    ld e, a                                       ; $5f21: $5f
    nop                                           ; $5f22: $00
    db $e4                                        ; $5f23: $e4
    rst $20                                       ; $5f24: $e7
    ld b, $8b                                     ; $5f25: $06 $8b
    ld l, c                                       ; $5f27: $69
    ld d, a                                       ; $5f28: $57
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    nop                                           ; $5f2b: $00
    inc c                                         ; $5f2c: $0c
    ld bc, $020c                                  ; $5f2d: $01 $0c $02
    inc c                                         ; $5f30: $0c
    inc bc                                        ; $5f31: $03
    inc c                                         ; $5f32: $0c
    inc b                                         ; $5f33: $04
    inc c                                         ; $5f34: $0c
    dec b                                         ; $5f35: $05
    inc c                                         ; $5f36: $0c
    ld b, $0c                                     ; $5f37: $06 $0c
    rlca                                          ; $5f39: $07
    inc c                                         ; $5f3a: $0c
    ld [$090c], sp                                ; $5f3b: $08 $0c $09
    inc c                                         ; $5f3e: $0c
    ld a, [bc]                                    ; $5f3f: $0a
    inc c                                         ; $5f40: $0c
    dec bc                                        ; $5f41: $0b
    inc c                                         ; $5f42: $0c
    inc c                                         ; $5f43: $0c
    inc c                                         ; $5f44: $0c
    dec c                                         ; $5f45: $0d
    inc c                                         ; $5f46: $0c
    ld c, $0c                                     ; $5f47: $0e $0c
    rrca                                          ; $5f49: $0f
    inc c                                         ; $5f4a: $0c
    db $10                                        ; $5f4b: $10
    inc c                                         ; $5f4c: $0c
    ld de, $120c                                  ; $5f4d: $11 $0c $12
    nop                                           ; $5f50: $00
    add hl, bc                                    ; $5f51: $09
    nop                                           ; $5f52: $00
    ld h, e                                       ; $5f53: $63
    cp l                                          ; $5f54: $bd
    nop                                           ; $5f55: $00
    add c                                         ; $5f56: $81
    ld c, h                                       ; $5f57: $4c
    nop                                           ; $5f58: $00
    add h                                         ; $5f59: $84
    jr nz, jr_002_5f5c                            ; $5f5a: $20 $00

jr_002_5f5c:
    ld d, c                                       ; $5f5c: $51
    ld l, l                                       ; $5f5d: $6d
    ld e, a                                       ; $5f5e: $5f
    nop                                           ; $5f5f: $00
    ld b, a                                       ; $5f60: $47
    rst $20                                       ; $5f61: $e7
    ld b, $90                                     ; $5f62: $06 $90
    ld l, c                                       ; $5f64: $69
    nop                                           ; $5f65: $00
    ld bc, $06e7                                  ; $5f66: $01 $e7 $06
    and e                                         ; $5f69: $a3
    ld l, c                                       ; $5f6a: $69
    nop                                           ; $5f6b: $00
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    inc c                                         ; $5f6e: $0c
    ld bc, $020c                                  ; $5f6f: $01 $0c $02
    inc c                                         ; $5f72: $0c
    inc bc                                        ; $5f73: $03
    inc c                                         ; $5f74: $0c
    inc b                                         ; $5f75: $04
    inc c                                         ; $5f76: $0c
    dec b                                         ; $5f77: $05
    nop                                           ; $5f78: $00
    add hl, bc                                    ; $5f79: $09
    nop                                           ; $5f7a: $00
    ld h, e                                       ; $5f7b: $63
    cp l                                          ; $5f7c: $bd
    ld bc, $8481                                  ; $5f7d: $01 $81 $84
    nop                                           ; $5f80: $00
    add h                                         ; $5f81: $84
    ld c, a                                       ; $5f82: $4f
    nop                                           ; $5f83: $00
    ld d, c                                       ; $5f84: $51
    adc c                                         ; $5f85: $89
    ld e, a                                       ; $5f86: $5f
    nop                                           ; $5f87: $00
    nop                                           ; $5f88: $00
    nop                                           ; $5f89: $00
    rlca                                          ; $5f8a: $07
    ld bc, $0207                                  ; $5f8b: $01 $07 $02
    rlca                                          ; $5f8e: $07
    inc bc                                        ; $5f8f: $03
    rlca                                          ; $5f90: $07
    rst $38                                       ; $5f91: $ff
    ld [$0500], sp                                ; $5f92: $08 $00 $05
    ld bc, $0205                                  ; $5f95: $01 $05 $02
    dec b                                         ; $5f98: $05
    inc bc                                        ; $5f99: $03
    dec b                                         ; $5f9a: $05

jr_002_5f9b:
    inc b                                         ; $5f9b: $04
    dec b                                         ; $5f9c: $05

jr_002_5f9d:
    dec b                                         ; $5f9d: $05
    dec b                                         ; $5f9e: $05
    ld b, $05                                     ; $5f9f: $06 $05
    rlca                                          ; $5fa1: $07
    dec b                                         ; $5fa2: $05
    rst $38                                       ; $5fa3: $ff
    db $10                                        ; $5fa4: $10
    ld [$0905], sp                                ; $5fa5: $08 $05 $09
    dec b                                         ; $5fa8: $05
    ld [$ff05], sp                                ; $5fa9: $08 $05 $ff
    jr jr_002_6002                                ; $5fac: $18 $54

    jr @-$17                                      ; $5fae: $18 $e7

    dec b                                         ; $5fb0: $05
    ld a, d                                       ; $5fb1: $7a
    ld a, d                                       ; $5fb2: $7a
    ld d, c                                       ; $5fb3: $51
    sub e                                         ; $5fb4: $93
    ld e, a                                       ; $5fb5: $5f
    add a                                         ; $5fb6: $87
    cp l                                          ; $5fb7: $bd
    ld e, a                                       ; $5fb8: $5f
    jp nz, $c75f                                  ; $5fb9: $c2 $5f $c7

    ld e, a                                       ; $5fbc: $5f
    cp l                                          ; $5fbd: $bd
    ld [bc], a                                    ; $5fbe: $02
    jr @-$29                                      ; $5fbf: $18 $d5

    ld e, a                                       ; $5fc1: $5f
    cp l                                          ; $5fc2: $bd
    inc b                                         ; $5fc3: $04
    jr jr_002_5f9b                                ; $5fc4: $18 $d5

    ld e, a                                       ; $5fc6: $5f
    cp l                                          ; $5fc7: $bd
    inc bc                                        ; $5fc8: $03
    dec de                                        ; $5fc9: $1b
    inc d                                         ; $5fca: $14
    ld h, b                                       ; $5fcb: $60
    rst $20                                       ; $5fcc: $e7
    dec b                                         ; $5fcd: $05
    ret nc                                        ; $5fce: $d0

    ld a, d                                       ; $5fcf: $7a
    nop                                           ; $5fd0: $00
    ld [bc], a                                    ; $5fd1: $02
    jr jr_002_5f9d                                ; $5fd2: $18 $c9

    ld e, a                                       ; $5fd4: $5f
    pop hl                                        ; $5fd5: $e1
    inc b                                         ; $5fd6: $04
    jp nc, Jump_002_5fe0                          ; $5fd7: $d2 $e0 $5f

    rst $20                                       ; $5fda: $e7
    ld e, a                                       ; $5fdb: $5f
    xor $5f                                       ; $5fdc: $ee $5f
    xor $5f                                       ; $5fde: $ee $5f

Jump_002_5fe0:
    dec de                                        ; $5fe0: $1b
    nop                                           ; $5fe1: $00
    ld h, b                                       ; $5fe2: $60
    sub b                                         ; $5fe3: $90
    inc a                                         ; $5fe4: $3c
    nop                                           ; $5fe5: $00
    nop                                           ; $5fe6: $00
    dec de                                        ; $5fe7: $1b
    ld a, [bc]                                    ; $5fe8: $0a
    ld h, b                                       ; $5fe9: $60
    sub b                                         ; $5fea: $90
    inc a                                         ; $5feb: $3c
    nop                                           ; $5fec: $00
    nop                                           ; $5fed: $00
    dec de                                        ; $5fee: $1b
    inc d                                         ; $5fef: $14

jr_002_5ff0:
    ld h, b                                       ; $5ff0: $60
    rst $20                                       ; $5ff1: $e7
    dec b                                         ; $5ff2: $05
    sub b                                         ; $5ff3: $90
    ld a, d                                       ; $5ff4: $7a
    sub b                                         ; $5ff5: $90
    inc d                                         ; $5ff6: $14
    nop                                           ; $5ff7: $00
    ld bc, $2a93                                  ; $5ff8: $01 $93 $2a
    rst $30                                       ; $5ffb: $f7
    ld e, a                                       ; $5ffc: $5f
    jr jr_002_5ff0                                ; $5ffd: $18 $f1

    ld e, a                                       ; $5fff: $5f
    nop                                           ; $6000: $00
    inc b                                         ; $6001: $04

jr_002_6002:
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    ld [$4000], sp                                ; $6005: $08 $00 $40
    inc bc                                        ; $6008: $03
    inc b                                         ; $6009: $04
    nop                                           ; $600a: $00
    ld [$0000], sp                                ; $600b: $08 $00 $00
    nop                                           ; $600e: $00
    ld [$4000], sp                                ; $600f: $08 $00 $40
    ld [bc], a                                    ; $6012: $02
    inc bc                                        ; $6013: $03
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    inc b                                         ; $6019: $04
    nop                                           ; $601a: $00
    nop                                           ; $601b: $00
    nop                                           ; $601c: $00
    dec b                                         ; $601d: $05
    ld bc, $0205                                  ; $601e: $01 $05 $02
    dec b                                         ; $6021: $05
    inc bc                                        ; $6022: $03
    dec b                                         ; $6023: $05
    ld [bc], a                                    ; $6024: $02
    dec b                                         ; $6025: $05
    ld bc, $0005                                  ; $6026: $01 $05 $00
    nop                                           ; $6029: $00
    cp l                                          ; $602a: $bd
    inc bc                                        ; $602b: $03
    ld [hl], d                                    ; $602c: $72
    ld h, b                                       ; $602d: $60
    ld d, h                                       ; $602e: $54
    nop                                           ; $602f: $00
    nop                                           ; $6030: $00
    ld bc, $e824                                  ; $6031: $01 $24 $e8
    ld h, c                                       ; $6034: $61
    ld a, [hl+]                                   ; $6035: $2a
    jr nc, @+$62                                  ; $6036: $30 $60

    ld d, h                                       ; $6038: $54
    jr jr_002_609e                                ; $6039: $18 $63

    ld d, c                                       ; $603b: $51
    ld e, $60                                     ; $603c: $1e $60
    nop                                           ; $603e: $00
    ld e, $18                                     ; $603f: $1e $18
    dec l                                         ; $6041: $2d
    ld h, b                                       ; $6042: $60
    ld h, b                                       ; $6043: $60
    sub b                                         ; $6044: $90
    inc bc                                        ; $6045: $03
    ld l, a                                       ; $6046: $6f
    add a                                         ; $6047: $87
    ld b, c                                       ; $6048: $41
    ld d, h                                       ; $6049: $54
    jr jr_002_604c                                ; $604a: $18 $00

jr_002_604c:
    nop                                           ; $604c: $00
    rst $20                                       ; $604d: $e7
    rlca                                          ; $604e: $07
    ld [hl], h                                    ; $604f: $74
    ld [hl], l                                    ; $6050: $75
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    sub e                                         ; $6053: $93
    ld a, [hl+]                                   ; $6054: $2a
    ld c, e                                       ; $6055: $4b
    ld h, b                                       ; $6056: $60
    ld d, a                                       ; $6057: $57
    nop                                           ; $6058: $00
    nop                                           ; $6059: $00
    nop                                           ; $605a: $00
    rrca                                          ; $605b: $0f
    ld bc, $020f                                  ; $605c: $01 $0f $02
    rrca                                          ; $605f: $0f
    inc bc                                        ; $6060: $03
    rrca                                          ; $6061: $0f
    inc b                                         ; $6062: $04
    rrca                                          ; $6063: $0f
    dec b                                         ; $6064: $05
    rrca                                          ; $6065: $0f
    ld b, $0f                                     ; $6066: $06 $0f
    rlca                                          ; $6068: $07
    rrca                                          ; $6069: $0f
    ld [$090f], sp                                ; $606a: $08 $0f $09
    rrca                                          ; $606d: $0f
    ld a, [bc]                                    ; $606e: $0a
    rrca                                          ; $606f: $0f
    dec bc                                        ; $6070: $0b
    rrca                                          ; $6071: $0f
    inc c                                         ; $6072: $0c
    rrca                                          ; $6073: $0f
    dec c                                         ; $6074: $0d
    rrca                                          ; $6075: $0f
    ld c, $0f                                     ; $6076: $0e $0f
    rrca                                          ; $6078: $0f
    rrca                                          ; $6079: $0f

jr_002_607a:
    rst $38                                       ; $607a: $ff
    jr nz, jr_002_607d                            ; $607b: $20 $00

jr_002_607d:
    inc b                                         ; $607d: $04
    nop                                           ; $607e: $00
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    ld [bc], a                                    ; $6081: $02
    nop                                           ; $6082: $00
    ld b, b                                       ; $6083: $40
    inc bc                                        ; $6084: $03
    ld [bc], a                                    ; $6085: $02
    nop                                           ; $6086: $00
    inc b                                         ; $6087: $04
    nop                                           ; $6088: $00
    ld d, l                                       ; $6089: $55
    nop                                           ; $608a: $00
    ld [bc], a                                    ; $608b: $02
    nop                                           ; $608c: $00
    sub l                                         ; $608d: $95
    inc bc                                        ; $608e: $03
    ld [bc], a                                    ; $608f: $02
    nop                                           ; $6090: $00
    inc b                                         ; $6091: $04
    nop                                           ; $6092: $00
    xor d                                         ; $6093: $aa
    nop                                           ; $6094: $00
    ld [bc], a                                    ; $6095: $02
    nop                                           ; $6096: $00
    ld [$0203], a                                 ; $6097: $ea $03 $02
    cp l                                          ; $609a: $bd
    inc b                                         ; $609b: $04
    add h                                         ; $609c: $84
    add b                                         ; $609d: $80

jr_002_609e:
    nop                                           ; $609e: $00
    ld d, c                                       ; $609f: $51
    ld e, d                                       ; $60a0: $5a
    ld h, b                                       ; $60a1: $60
    add a                                         ; $60a2: $87
    xor c                                         ; $60a3: $a9
    ld h, b                                       ; $60a4: $60
    or c                                          ; $60a5: $b1
    ld h, b                                       ; $60a6: $60
    cp c                                          ; $60a7: $b9
    ld h, b                                       ; $60a8: $60
    add c                                         ; $60a9: $81
    stop                                          ; $60aa: $10 $00
    dec de                                        ; $60ac: $1b
    ld a, h                                       ; $60ad: $7c
    ld h, b                                       ; $60ae: $60
    nop                                           ; $60af: $00
    nop                                           ; $60b0: $00
    add c                                         ; $60b1: $81
    ld d, b                                       ; $60b2: $50
    nop                                           ; $60b3: $00
    dec de                                        ; $60b4: $1b
    add [hl]                                      ; $60b5: $86
    ld h, b                                       ; $60b6: $60
    nop                                           ; $60b7: $00
    nop                                           ; $60b8: $00
    add c                                         ; $60b9: $81
    sub b                                         ; $60ba: $90
    nop                                           ; $60bb: $00
    dec de                                        ; $60bc: $1b
    sub b                                         ; $60bd: $90
    ld h, b                                       ; $60be: $60
    nop                                           ; $60bf: $00
    nop                                           ; $60c0: $00
    ld [hl], d                                    ; $60c1: $72
    cp l                                          ; $60c2: $bd
    inc b                                         ; $60c3: $04
    ld d, c                                       ; $60c4: $51
    ld e, d                                       ; $60c5: $5a
    ld h, b                                       ; $60c6: $60
    ld [de], a                                    ; $60c7: $12
    inc b                                         ; $60c8: $04
    inc bc                                        ; $60c9: $03
    nop                                           ; $60ca: $00
    ld bc, $0000                                  ; $60cb: $01 $00 $00
    inc de                                        ; $60ce: $13
    inc b                                         ; $60cf: $04
    nop                                           ; $60d0: $00
    inc b                                         ; $60d1: $04
    ld bc, $0204                                  ; $60d2: $01 $04 $02
    inc b                                         ; $60d5: $04
    inc bc                                        ; $60d6: $03
    inc b                                         ; $60d7: $04
    inc b                                         ; $60d8: $04
    inc b                                         ; $60d9: $04
    dec b                                         ; $60da: $05
    inc b                                         ; $60db: $04
    ld b, $04                                     ; $60dc: $06 $04
    rlca                                          ; $60de: $07
    inc b                                         ; $60df: $04
    ld [$0904], sp                                ; $60e0: $08 $04 $09
    inc b                                         ; $60e3: $04
    ld a, [bc]                                    ; $60e4: $0a
    inc b                                         ; $60e5: $04
    dec bc                                        ; $60e6: $0b
    inc b                                         ; $60e7: $04
    inc c                                         ; $60e8: $0c
    inc b                                         ; $60e9: $04
    dec c                                         ; $60ea: $0d
    inc b                                         ; $60eb: $04
    ld c, $04                                     ; $60ec: $0e $04
    rrca                                          ; $60ee: $0f
    inc b                                         ; $60ef: $04
    db $10                                        ; $60f0: $10
    inc b                                         ; $60f1: $04
    ld de, $1204                                  ; $60f2: $11 $04 $12
    inc b                                         ; $60f5: $04
    rst $38                                       ; $60f6: $ff
    jr z, jr_002_607a                             ; $60f7: $28 $81

    ld c, d                                       ; $60f9: $4a
    nop                                           ; $60fa: $00
    add h                                         ; $60fb: $84
    sbc a                                         ; $60fc: $9f
    nop                                           ; $60fd: $00
    ld d, c                                       ; $60fe: $51
    adc $60                                       ; $60ff: $ce $60
    nop                                           ; $6101: $00
    ld d, b                                       ; $6102: $50
    inc h                                         ; $6103: $24
    add hl, bc                                    ; $6104: $09
    ld h, c                                       ; $6105: $61
    jr jr_002_6109                                ; $6106: $18 $01

    ld h, c                                       ; $6108: $61

jr_002_6109:
    ld a, [$cb30]                                 ; $6109: $fa $30 $cb
    inc a                                         ; $610c: $3c
    ld [$cb30], a                                 ; $610d: $ea $30 $cb
    ret                                           ; $6110: $c9


    nop                                           ; $6111: $00
    dec b                                         ; $6112: $05
    ld bc, $0205                                  ; $6113: $01 $05 $02
    dec b                                         ; $6116: $05
    inc bc                                        ; $6117: $03
    dec b                                         ; $6118: $05
    inc b                                         ; $6119: $04
    dec b                                         ; $611a: $05
    dec b                                         ; $611b: $05
    dec b                                         ; $611c: $05
    ld b, $05                                     ; $611d: $06 $05
    rlca                                          ; $611f: $07
    dec b                                         ; $6120: $05
    rst $38                                       ; $6121: $ff
    db $10                                        ; $6122: $10
    ld [$0902], sp                                ; $6123: $08 $02 $09
    ld [bc], a                                    ; $6126: $02
    ld a, [bc]                                    ; $6127: $0a
    ld [bc], a                                    ; $6128: $02
    dec bc                                        ; $6129: $0b
    ld [bc], a                                    ; $612a: $02
    rst $38                                       ; $612b: $ff
    ld [$1272], sp                                ; $612c: $08 $72 $12
    inc b                                         ; $612f: $04
    rst $20                                       ; $6130: $e7
    ld b, $7f                                     ; $6131: $06 $7f
    ld l, b                                       ; $6133: $68
    add a                                         ; $6134: $87
    ld b, e                                       ; $6135: $43
    ld h, c                                       ; $6136: $61
    ld c, l                                       ; $6137: $4d
    ld h, c                                       ; $6138: $61
    ld d, a                                       ; $6139: $57
    ld h, c                                       ; $613a: $61
    ld a, b                                       ; $613b: $78
    ld h, c                                       ; $613c: $61
    adc d                                         ; $613d: $8a
    ld h, c                                       ; $613e: $61
    sbc h                                         ; $613f: $9c
    ld h, c                                       ; $6140: $61
    ld h, [hl]                                    ; $6141: $66
    ld h, c                                       ; $6142: $61
    rst $20                                       ; $6143: $e7
    rlca                                          ; $6144: $07
    jp nz, Jump_002_6375                          ; $6145: $c2 $75 $63

    ld d, c                                       ; $6148: $51
    ld de, $0061                                  ; $6149: $11 $61 $00
    nop                                           ; $614c: $00
    rst $20                                       ; $614d: $e7
    rlca                                          ; $614e: $07
    nop                                           ; $614f: $00
    halt                                          ; $6150: $76
    ld h, e                                       ; $6151: $63
    ld d, c                                       ; $6152: $51
    inc hl                                        ; $6153: $23
    ld h, c                                       ; $6154: $61
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    ld [de], a                                    ; $6157: $12
    nop                                           ; $6158: $00
    inc bc                                        ; $6159: $03
    nop                                           ; $615a: $00
    nop                                           ; $615b: $00
    ld b, $00                                     ; $615c: $06 $00
    nop                                           ; $615e: $00
    cp l                                          ; $615f: $bd
    ld [bc], a                                    ; $6160: $02
    ld h, e                                       ; $6161: $63
    add hl, bc                                    ; $6162: $09
    inc c                                         ; $6163: $0c
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    add hl, bc                                    ; $6166: $09
    rrca                                          ; $6167: $0f
    inc bc                                        ; $6168: $03
    and [hl]                                      ; $6169: $a6
    rst $38                                       ; $616a: $ff
    ld b, $c4                                     ; $616b: $06 $c4
    rst $38                                       ; $616d: $ff
    cp l                                          ; $616e: $bd
    inc bc                                        ; $616f: $03
    nop                                           ; $6170: $00
    inc hl                                        ; $6171: $23
    inc c                                         ; $6172: $0c
    xor [hl]                                      ; $6173: $ae
    ld h, c                                       ; $6174: $61
    ld d, a                                       ; $6175: $57
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    add hl, bc                                    ; $6178: $09
    rrca                                          ; $6179: $0f
    inc bc                                        ; $617a: $03
    ld e, d                                       ; $617b: $5a
    nop                                           ; $617c: $00
    ld b, $3c                                     ; $617d: $06 $3c
    nop                                           ; $617f: $00
    cp l                                          ; $6180: $bd
    inc bc                                        ; $6181: $03
    nop                                           ; $6182: $00
    inc hl                                        ; $6183: $23
    inc c                                         ; $6184: $0c
    xor [hl]                                      ; $6185: $ae
    ld h, c                                       ; $6186: $61
    ld d, a                                       ; $6187: $57
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    add hl, bc                                    ; $618a: $09
    ld c, $03                                     ; $618b: $0e $03
    sub [hl]                                      ; $618d: $96
    nop                                           ; $618e: $00
    ld b, $64                                     ; $618f: $06 $64
    nop                                           ; $6191: $00
    cp l                                          ; $6192: $bd
    inc bc                                        ; $6193: $03
    nop                                           ; $6194: $00
    inc hl                                        ; $6195: $23
    inc c                                         ; $6196: $0c
    xor [hl]                                      ; $6197: $ae
    ld h, c                                       ; $6198: $61
    ld d, a                                       ; $6199: $57
    nop                                           ; $619a: $00
    nop                                           ; $619b: $00
    add hl, bc                                    ; $619c: $09
    dec c                                         ; $619d: $0d
    inc bc                                        ; $619e: $03
    ldh a, [rP1]                                  ; $619f: $f0 $00
    ld b, $a0                                     ; $61a1: $06 $a0
    nop                                           ; $61a3: $00
    cp l                                          ; $61a4: $bd
    inc bc                                        ; $61a5: $03
    nop                                           ; $61a6: $00
    inc hl                                        ; $61a7: $23
    inc c                                         ; $61a8: $0c
    xor [hl]                                      ; $61a9: $ae
    ld h, c                                       ; $61aa: $61
    ld d, a                                       ; $61ab: $57
    nop                                           ; $61ac: $00
    nop                                           ; $61ad: $00
    ret nz                                        ; $61ae: $c0

    ld a, [bc]                                    ; $61af: $0a
    ld h, e                                       ; $61b0: $63
    nop                                           ; $61b1: $00
    ld bc, $0060                                  ; $61b2: $01 $60 $00
    ld bc, $ae24                                  ; $61b5: $01 $24 $ae
    ld l, $2a                                     ; $61b8: $2e $2a
    or b                                          ; $61ba: $b0
    ld h, c                                       ; $61bb: $61
    rrca                                          ; $61bc: $0f
    rst $20                                       ; $61bd: $e7
    rlca                                          ; $61be: $07
    add b                                         ; $61bf: $80
    ld h, [hl]                                    ; $61c0: $66
    ld a, [hl+]                                   ; $61c1: $2a
    xor l                                         ; $61c2: $ad
    ld e, [hl]                                    ; $61c3: $5e
    ld [hl], d                                    ; $61c4: $72
    cp l                                          ; $61c5: $bd
    inc b                                         ; $61c6: $04
    dec de                                        ; $61c7: $1b
    or b                                          ; $61c8: $b0
    ld e, [hl]                                    ; $61c9: $5e
    ld d, c                                       ; $61ca: $51
    cp d                                          ; $61cb: $ba
    ld e, [hl]                                    ; $61cc: $5e
    ld h, e                                       ; $61cd: $63
    ld d, h                                       ; $61ce: $54
    jr jr_002_61d1                                ; $61cf: $18 $00

jr_002_61d1:
    nop                                           ; $61d1: $00
    nop                                           ; $61d2: $00
    inc bc                                        ; $61d3: $03
    ld bc, $0203                                  ; $61d4: $01 $03 $02
    inc bc                                        ; $61d7: $03
    inc bc                                        ; $61d8: $03
    inc bc                                        ; $61d9: $03
    inc b                                         ; $61da: $04
    inc bc                                        ; $61db: $03
    dec b                                         ; $61dc: $05
    inc bc                                        ; $61dd: $03
    rst $38                                       ; $61de: $ff
    inc c                                         ; $61df: $0c
    ld [hl], d                                    ; $61e0: $72
    cp l                                          ; $61e1: $bd
    inc b                                         ; $61e2: $04
    ld d, c                                       ; $61e3: $51
    jp nc, Jump_000_0061                          ; $61e4: $d2 $61 $00

    nop                                           ; $61e7: $00
    call Call_000_2e82                            ; $61e8: $cd $82 $2e
    ld hl, $ccf6                                  ; $61eb: $21 $f6 $cc
    rst $08                                       ; $61ee: $cf
    or a                                          ; $61ef: $b7
    jp Jump_000_0039                              ; $61f0: $c3 $39 $00


    call Call_000_2e8a                            ; $61f3: $cd $8a $2e
    add $0f                                       ; $61f6: $c6 $0f
    ld hl, $001c                                  ; $61f8: $21 $1c $00
    add hl, bc                                    ; $61fb: $09
    ld [hl], a                                    ; $61fc: $77
    ld hl, $ff98                                  ; $61fd: $21 $98 $ff
    ld e, [hl]                                    ; $6200: $5e
    inc hl                                        ; $6201: $23
    ld d, [hl]                                    ; $6202: $56
    ld hl, $001a                                  ; $6203: $21 $1a $00
    add hl, bc                                    ; $6206: $09
    ld [hl], e                                    ; $6207: $73
    inc hl                                        ; $6208: $23
    ld [hl], d                                    ; $6209: $72
    pop hl                                        ; $620a: $e1
    ret                                           ; $620b: $c9


    ld h, b                                       ; $620c: $60
    inc h                                         ; $620d: $24
    and l                                         ; $620e: $a5
    ld h, e                                       ; $620f: $63
    inc h                                         ; $6210: $24
    ldh [rIF], a                                  ; $6211: $e0 $0f
    add a                                         ; $6213: $87
    ld [hl], $62                                  ; $6214: $36 $62
    ld h, [hl]                                    ; $6216: $66
    ld h, d                                       ; $6217: $62
    ld h, [hl]                                    ; $6218: $66
    ld h, d                                       ; $6219: $62
    and e                                         ; $621a: $a3
    ld h, d                                       ; $621b: $62
    ld a, h                                       ; $621c: $7c
    ld h, d                                       ; $621d: $62
    db $ed                                        ; $621e: $ed
    ld h, d                                       ; $621f: $62
    ld l, d                                       ; $6220: $6a
    ld h, e                                       ; $6221: $63
    sub c                                         ; $6222: $91
    ld h, e                                       ; $6223: $63
    inc a                                         ; $6224: $3c
    ld h, e                                       ; $6225: $63
    ld d, h                                       ; $6226: $54
    ld h, e                                       ; $6227: $63
    sub l                                         ; $6228: $95
    ld h, d                                       ; $6229: $62
    sbc d                                         ; $622a: $9a
    ld h, d                                       ; $622b: $62
    sbc a                                         ; $622c: $9f

jr_002_622d:
    ld h, d                                       ; $622d: $62
    jr c, @+$64                                   ; $622e: $38 $62

    ld d, b                                       ; $6230: $50
    ld h, d                                       ; $6231: $62
    ld b, b                                       ; $6232: $40
    ld h, d                                       ; $6233: $62
    ld c, b                                       ; $6234: $48
    ld h, d                                       ; $6235: $62
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    inc h                                         ; $6238: $24
    ld [hl], l                                    ; $6239: $75
    stop                                          ; $623a: $10 $00

jr_002_623c:
    dec b                                         ; $623c: $05
    jr jr_002_6277                                ; $623d: $18 $38

    ld h, d                                       ; $623f: $62
    inc h                                         ; $6240: $24

jr_002_6241:
    ld [hl], l                                    ; $6241: $75
    stop                                          ; $6242: $10 $00
    ld b, $18                                     ; $6244: $06 $18
    ld b, b                                       ; $6246: $40
    ld h, d                                       ; $6247: $62
    inc h                                         ; $6248: $24
    ld [hl], l                                    ; $6249: $75
    stop                                          ; $624a: $10 $00
    inc b                                         ; $624c: $04
    jr jr_002_6297                                ; $624d: $18 $48

    ld h, d                                       ; $624f: $62
    inc h                                         ; $6250: $24
    ld [hl], l                                    ; $6251: $75
    db $10                                        ; $6252: $10
    sbc a                                         ; $6253: $9f
    jr nz, @+$26                                  ; $6254: $20 $24

    ld [hl], l                                    ; $6256: $75
    db $10                                        ; $6257: $10
    and d                                         ; $6258: $a2
    jr nz, jr_002_627f                            ; $6259: $20 $24

    ld [hl], l                                    ; $625b: $75
    db $10                                        ; $625c: $10
    sbc a                                         ; $625d: $9f
    ldh [$a2], a                                  ; $625e: $e0 $a2
    ldh [rP1], a                                  ; $6260: $e0 $00
    ld [$5018], sp                                ; $6262: $08 $18 $50
    ld h, d                                       ; $6265: $62
    inc h                                         ; $6266: $24
    ld [hl], l                                    ; $6267: $75
    db $10                                        ; $6268: $10
    and d                                         ; $6269: $a2
    ldh [rNR50], a                                ; $626a: $e0 $24
    ld [hl], l                                    ; $626c: $75
    db $10                                        ; $626d: $10
    and d                                         ; $626e: $a2
    jr nz, jr_002_6271                            ; $626f: $20 $00

jr_002_6271:
    ld [$06e7], sp                                ; $6271: $08 $e7 $06
    xor c                                         ; $6274: $a9

jr_002_6275:
    ld l, e                                       ; $6275: $6b
    daa                                           ; $6276: $27

jr_002_6277:
    ld h, [hl]                                    ; $6277: $66
    ld h, d                                       ; $6278: $62
    jr jr_002_622d                                ; $6279: $18 $b2

    ld h, d                                       ; $627b: $62
    ret nz                                        ; $627c: $c0

    inc bc                                        ; $627d: $03
    inc h                                         ; $627e: $24

jr_002_627f:
    ld [hl], l                                    ; $627f: $75
    db $10                                        ; $6280: $10
    and d                                         ; $6281: $a2
    jr nz, @+$26                                  ; $6282: $20 $24

    ld [hl], l                                    ; $6284: $75
    db $10                                        ; $6285: $10
    and d                                         ; $6286: $a2
    ldh [rP1], a                                  ; $6287: $e0 $00
    ld [$ae24], sp                                ; $6289: $08 $24 $ae
    ld l, $2a                                     ; $628c: $2e $2a
    ld a, [hl]                                    ; $628e: $7e
    ld h, d                                       ; $628f: $62
    nop                                           ; $6290: $00
    jr jr_002_62ab                                ; $6291: $18 $18

    ld a, h                                       ; $6293: $7c
    ld h, d                                       ; $6294: $62
    sbc a                                         ; $6295: $9f
    ret nz                                        ; $6296: $c0

jr_002_6297:
    jr jr_002_623c                                ; $6297: $18 $a3

    ld h, d                                       ; $6299: $62
    and d                                         ; $629a: $a2
    ret nz                                        ; $629b: $c0

    jr jr_002_6241                                ; $629c: $18 $a3

    ld h, d                                       ; $629e: $62
    sbc a                                         ; $629f: $9f
    ret nz                                        ; $62a0: $c0

    and d                                         ; $62a1: $a2
    ret nz                                        ; $62a2: $c0

    inc h                                         ; $62a3: $24
    and l                                         ; $62a4: $a5
    ld h, e                                       ; $62a5: $63
    inc h                                         ; $62a6: $24
    ldh [rIF], a                                  ; $62a7: $e0 $0f
    ld [de], a                                    ; $62a9: $12
    inc b                                         ; $62aa: $04

jr_002_62ab:
    rst $20                                       ; $62ab: $e7
    ld b, $93                                     ; $62ac: $06 $93
    ld l, d                                       ; $62ae: $6a
    daa                                           ; $62af: $27
    or l                                          ; $62b0: $b5
    ld h, d                                       ; $62b1: $62
    ld d, a                                       ; $62b2: $57
    nop                                           ; $62b3: $00
    nop                                           ; $62b4: $00
    inc h                                         ; $62b5: $24
    ld [hl], l                                    ; $62b6: $75
    db $10                                        ; $62b7: $10
    sbc a                                         ; $62b8: $9f
    jr nz, jr_002_62df                            ; $62b9: $20 $24

    ld [hl], l                                    ; $62bb: $75
    db $10                                        ; $62bc: $10
    sbc a                                         ; $62bd: $9f
    jr nz, jr_002_62e4                            ; $62be: $20 $24

    ld [hl], l                                    ; $62c0: $75
    db $10                                        ; $62c1: $10
    and d                                         ; $62c2: $a2
    jr nz, @-$5f                                  ; $62c3: $20 $9f

    ret nz                                        ; $62c5: $c0

    inc h                                         ; $62c6: $24
    ld [hl], l                                    ; $62c7: $75
    db $10                                        ; $62c8: $10
    sbc a                                         ; $62c9: $9f
    jr nz, jr_002_62f0                            ; $62ca: $20 $24

    ld [hl], l                                    ; $62cc: $75
    db $10                                        ; $62cd: $10
    sbc a                                         ; $62ce: $9f
    jr nz, jr_002_62f5                            ; $62cf: $20 $24

    ld [hl], l                                    ; $62d1: $75
    db $10                                        ; $62d2: $10
    and d                                         ; $62d3: $a2
    jr nz, jr_002_6275                            ; $62d4: $20 $9f

    ret nz                                        ; $62d6: $c0

    inc h                                         ; $62d7: $24
    ld [hl], l                                    ; $62d8: $75
    db $10                                        ; $62d9: $10
    sbc a                                         ; $62da: $9f
    jr nz, jr_002_6301                            ; $62db: $20 $24

    ld [hl], l                                    ; $62dd: $75
    db $10                                        ; $62de: $10

jr_002_62df:
    sbc a                                         ; $62df: $9f
    jr nz, jr_002_6306                            ; $62e0: $20 $24

    ld [hl], l                                    ; $62e2: $75
    db $10                                        ; $62e3: $10

jr_002_62e4:
    and d                                         ; $62e4: $a2
    ret nz                                        ; $62e5: $c0

    sbc a                                         ; $62e6: $9f
    ret nz                                        ; $62e7: $c0

    nop                                           ; $62e8: $00
    ld [$b518], sp                                ; $62e9: $08 $18 $b5
    ld h, d                                       ; $62ec: $62
    rst $20                                       ; $62ed: $e7
    ld b, $05                                     ; $62ee: $06 $05

jr_002_62f0:
    ld l, h                                       ; $62f0: $6c
    ld a, [hl+]                                   ; $62f1: $2a
    inc c                                         ; $62f2: $0c
    ld h, e                                       ; $62f3: $63
    sbc a                                         ; $62f4: $9f

jr_002_62f5:
    ret nz                                        ; $62f5: $c0

    inc h                                         ; $62f6: $24
    ld [hl], l                                    ; $62f7: $75
    db $10                                        ; $62f8: $10
    sbc a                                         ; $62f9: $9f
    jr nz, jr_002_6320                            ; $62fa: $20 $24

    ld [hl], l                                    ; $62fc: $75
    db $10                                        ; $62fd: $10
    sbc a                                         ; $62fe: $9f
    ldh [$a2], a                                  ; $62ff: $e0 $a2

jr_002_6301:
    jr nz, jr_002_6327                            ; $6301: $20 $24

    ld [hl], l                                    ; $6303: $75
    db $10                                        ; $6304: $10
    sbc a                                         ; $6305: $9f

jr_002_6306:
    jr nz, jr_002_632c                            ; $6306: $20 $24

    ld [hl], l                                    ; $6308: $75
    stop                                          ; $6309: $10 $00
    nop                                           ; $630b: $00
    ld d, a                                       ; $630c: $57
    nop                                           ; $630d: $00
    nop                                           ; $630e: $00
    inc h                                         ; $630f: $24
    ld [hl], l                                    ; $6310: $75
    db $10                                        ; $6311: $10
    sbc a                                         ; $6312: $9f
    jr nz, jr_002_6339                            ; $6313: $20 $24

    ld [hl], l                                    ; $6315: $75
    db $10                                        ; $6316: $10
    sbc a                                         ; $6317: $9f
    jr nz, jr_002_633e                            ; $6318: $20 $24

    ld [hl], l                                    ; $631a: $75
    db $10                                        ; $631b: $10
    sbc a                                         ; $631c: $9f
    jr nz, jr_002_6343                            ; $631d: $20 $24

    ld [hl], l                                    ; $631f: $75

jr_002_6320:
    db $10                                        ; $6320: $10
    sbc a                                         ; $6321: $9f
    and b                                         ; $6322: $a0
    and d                                         ; $6323: $a2
    jr nz, jr_002_634a                            ; $6324: $20 $24

    ld [hl], l                                    ; $6326: $75

jr_002_6327:
    db $10                                        ; $6327: $10
    sbc a                                         ; $6328: $9f
    jr nz, @+$26                                  ; $6329: $20 $24

    ld [hl], l                                    ; $632b: $75

jr_002_632c:
    db $10                                        ; $632c: $10
    sbc a                                         ; $632d: $9f
    jr nz, jr_002_6354                            ; $632e: $20 $24

    ld [hl], l                                    ; $6330: $75
    db $10                                        ; $6331: $10
    sbc a                                         ; $6332: $9f
    jr nz, jr_002_6359                            ; $6333: $20 $24

    ld [hl], l                                    ; $6335: $75
    db $10                                        ; $6336: $10
    sbc a                                         ; $6337: $9f
    and b                                         ; $6338: $a0

jr_002_6339:
    and d                                         ; $6339: $a2
    ldh [rIF], a                                  ; $633a: $e0 $0f
    inc c                                         ; $633c: $0c
    rrca                                          ; $633d: $0f

jr_002_633e:
    ld h, e                                       ; $633e: $63
    nop                                           ; $633f: $00
    ld [$0f0c], sp                                ; $6340: $08 $0c $0f

jr_002_6343:
    ld h, e                                       ; $6343: $63
    nop                                           ; $6344: $00
    ld [$00db], sp                                ; $6345: $08 $db $00
    ld c, l                                       ; $6348: $4d
    ld h, e                                       ; $6349: $63

jr_002_634a:
    jr jr_002_6388                                ; $634a: $18 $3c

    ld h, e                                       ; $634c: $63
    rst $20                                       ; $634d: $e7
    ld b, $c9                                     ; $634e: $06 $c9
    ld l, e                                       ; $6350: $6b
    ld d, a                                       ; $6351: $57
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00

jr_002_6354:
    nop                                           ; $6354: $00
    nop                                           ; $6355: $00
    and d                                         ; $6356: $a2
    ldh [$0c], a                                  ; $6357: $e0 $0c

jr_002_6359:
    rrca                                          ; $6359: $0f
    ld h, e                                       ; $635a: $63
    nop                                           ; $635b: $00
    ld [$20a2], sp                                ; $635c: $08 $a2 $20
    inc h                                         ; $635f: $24
    ld [hl], l                                    ; $6360: $75
    stop                                          ; $6361: $10 $00
    ld [$7524], sp                                ; $6363: $08 $24 $75
    db $10                                        ; $6366: $10
    ld d, a                                       ; $6367: $57
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    inc h                                         ; $636a: $24
    ld [hl], l                                    ; $636b: $75
    db $10                                        ; $636c: $10
    sbc a                                         ; $636d: $9f
    jr nz, jr_002_6394                            ; $636e: $20 $24

    ld [hl], l                                    ; $6370: $75
    db $10                                        ; $6371: $10
    sbc a                                         ; $6372: $9f
    jr nz, jr_002_6399                            ; $6373: $20 $24

Jump_002_6375:
    ld [hl], l                                    ; $6375: $75
    db $10                                        ; $6376: $10
    sbc a                                         ; $6377: $9f
    ret nz                                        ; $6378: $c0

    and d                                         ; $6379: $a2
    jr nz, jr_002_63a0                            ; $637a: $20 $24

    ld [hl], l                                    ; $637c: $75
    db $10                                        ; $637d: $10
    sbc a                                         ; $637e: $9f
    jr nz, jr_002_63a5                            ; $637f: $20 $24

    ld [hl], l                                    ; $6381: $75
    db $10                                        ; $6382: $10
    sbc a                                         ; $6383: $9f
    jr nz, @+$26                                  ; $6384: $20 $24

    ld [hl], l                                    ; $6386: $75
    db $10                                        ; $6387: $10

jr_002_6388:
    sbc a                                         ; $6388: $9f
    ret nz                                        ; $6389: $c0

    and d                                         ; $638a: $a2
    ldh [rP1], a                                  ; $638b: $e0 $00
    inc b                                         ; $638d: $04
    jr jr_002_63fa                                ; $638e: $18 $6a

    ld h, e                                       ; $6390: $63
    rst $20                                       ; $6391: $e7
    ld b, $e5                                     ; $6392: $06 $e5

jr_002_6394:
    ld l, e                                       ; $6394: $6b
    ld a, [hl+]                                   ; $6395: $2a
    inc c                                         ; $6396: $0c
    ld h, e                                       ; $6397: $63
    inc h                                         ; $6398: $24

jr_002_6399:
    ld [hl], l                                    ; $6399: $75
    db $10                                        ; $639a: $10
    and d                                         ; $639b: $a2
    ldh [rNR50], a                                ; $639c: $e0 $24
    ld [hl], l                                    ; $639e: $75
    db $10                                        ; $639f: $10

jr_002_63a0:
    and d                                         ; $63a0: $a2
    jr nz, jr_002_63fa                            ; $63a1: $20 $57

    nop                                           ; $63a3: $00
    nop                                           ; $63a4: $00

jr_002_63a5:
    ld de, $00ff                                  ; $63a5: $11 $ff $00
    jp Jump_000_2ea4                              ; $63a8: $c3 $a4 $2e


    ldh a, [$a5]                                  ; $63ab: $f0 $a5
    and $01                                       ; $63ad: $e6 $01
    jp Jump_000_0039                              ; $63af: $c3 $39 $00


    call Call_000_3194                            ; $63b2: $cd $94 $31

    ld hl, $0026                                  ; $63b5: $21 $26 $00
    add hl, bc                                    ; $63b8: $09
    ld [hl], e                                    ; $63b9: $73
    inc hl                                        ; $63ba: $23
    ld [hl], d                                    ; $63bb: $72
    ret                                           ; $63bc: $c9


    ld hl, $002c                                  ; $63bd: $21 $2c $00
    add hl, bc                                    ; $63c0: $09
    set 6, [hl]                                   ; $63c1: $cb $f6
    ret                                           ; $63c3: $c9


    ld hl, $002c                                  ; $63c4: $21 $2c $00
    add hl, bc                                    ; $63c7: $09
    res 6, [hl]                                   ; $63c8: $cb $b6
    ret                                           ; $63ca: $c9


    ld hl, $002b                                  ; $63cb: $21 $2b $00
    add hl, bc                                    ; $63ce: $09
    set 5, [hl]                                   ; $63cf: $cb $ee
    ret                                           ; $63d1: $c9


    ld hl, $002b                                  ; $63d2: $21 $2b $00
    add hl, bc                                    ; $63d5: $09
    res 5, [hl]                                   ; $63d6: $cb $ae
    ret                                           ; $63d8: $c9


    nop                                           ; $63d9: $00
    inc b                                         ; $63da: $04
    ld bc, $0204                                  ; $63db: $01 $04 $02
    inc b                                         ; $63de: $04
    inc bc                                        ; $63df: $03
    inc b                                         ; $63e0: $04
    inc b                                         ; $63e1: $04
    inc b                                         ; $63e2: $04
    dec b                                         ; $63e3: $05
    inc b                                         ; $63e4: $04
    ld b, $04                                     ; $63e5: $06 $04
    rlca                                          ; $63e7: $07
    inc b                                         ; $63e8: $04
    ld [$0904], sp                                ; $63e9: $08 $04 $09
    inc b                                         ; $63ec: $04
    ld a, [bc]                                    ; $63ed: $0a
    inc b                                         ; $63ee: $04
    dec bc                                        ; $63ef: $0b
    inc b                                         ; $63f0: $04
    rst $38                                       ; $63f1: $ff
    jr jr_002_63f4                                ; $63f2: $18 $00

jr_002_63f4:
    dec b                                         ; $63f4: $05
    ld bc, $0205                                  ; $63f5: $01 $05 $02
    dec b                                         ; $63f8: $05
    inc bc                                        ; $63f9: $03

jr_002_63fa:
    dec b                                         ; $63fa: $05
    inc b                                         ; $63fb: $04
    dec b                                         ; $63fc: $05
    dec b                                         ; $63fd: $05
    dec b                                         ; $63fe: $05
    ld b, $05                                     ; $63ff: $06 $05
    rlca                                          ; $6401: $07
    dec b                                         ; $6402: $05
    ld [$0905], sp                                ; $6403: $08 $05 $09
    dec b                                         ; $6406: $05
    ld a, [bc]                                    ; $6407: $0a
    dec b                                         ; $6408: $05
    dec bc                                        ; $6409: $0b
    dec b                                         ; $640a: $05
    inc c                                         ; $640b: $0c
    dec b                                         ; $640c: $05
    dec c                                         ; $640d: $0d
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    dec b                                         ; $6410: $05
    ld bc, $0205                                  ; $6411: $01 $05 $02
    dec b                                         ; $6414: $05
    inc bc                                        ; $6415: $03
    dec b                                         ; $6416: $05
    inc b                                         ; $6417: $04
    dec b                                         ; $6418: $05
    dec b                                         ; $6419: $05
    dec b                                         ; $641a: $05
    inc b                                         ; $641b: $04
    dec b                                         ; $641c: $05
    inc bc                                        ; $641d: $03
    dec b                                         ; $641e: $05
    ld [bc], a                                    ; $641f: $02
    dec b                                         ; $6420: $05
    ld bc, $0005                                  ; $6421: $01 $05 $00
    nop                                           ; $6424: $00
    ld b, $02                                     ; $6425: $06 $02
    rlca                                          ; $6427: $07
    ld [bc], a                                    ; $6428: $02
    ld [$ff02], sp                                ; $6429: $08 $02 $ff
    ld b, $00                                     ; $642c: $06 $00
    inc b                                         ; $642e: $04
    ld bc, $0204                                  ; $642f: $01 $04 $02
    inc b                                         ; $6432: $04
    inc bc                                        ; $6433: $03
    inc b                                         ; $6434: $04
    inc b                                         ; $6435: $04
    inc b                                         ; $6436: $04
    dec b                                         ; $6437: $05
    inc b                                         ; $6438: $04
    ld b, $04                                     ; $6439: $06 $04
    rlca                                          ; $643b: $07
    inc b                                         ; $643c: $04
    ld [$0904], sp                                ; $643d: $08 $04 $09
    inc b                                         ; $6440: $04
    ld a, [bc]                                    ; $6441: $0a
    inc b                                         ; $6442: $04
    dec bc                                        ; $6443: $0b
    inc b                                         ; $6444: $04
    inc c                                         ; $6445: $0c
    inc b                                         ; $6446: $04
    dec c                                         ; $6447: $0d
    inc b                                         ; $6448: $04
    ld c, $00                                     ; $6449: $0e $00
    ld [bc], a                                    ; $644b: $02
    inc b                                         ; $644c: $04
    inc bc                                        ; $644d: $03
    inc b                                         ; $644e: $04
    inc b                                         ; $644f: $04
    inc b                                         ; $6450: $04
    dec b                                         ; $6451: $05
    inc b                                         ; $6452: $04
    ld b, $04                                     ; $6453: $06 $04
    rlca                                          ; $6455: $07
    inc b                                         ; $6456: $04
    ld [$0904], sp                                ; $6457: $08 $04 $09
    inc b                                         ; $645a: $04
    dec b                                         ; $645b: $05
    inc b                                         ; $645c: $04
    ld b, $04                                     ; $645d: $06 $04
    rlca                                          ; $645f: $07
    inc b                                         ; $6460: $04
    ld [$0904], sp                                ; $6461: $08 $04 $09
    inc b                                         ; $6464: $04
    ld a, [bc]                                    ; $6465: $0a
    inc b                                         ; $6466: $04
    dec bc                                        ; $6467: $0b
    inc b                                         ; $6468: $04
    inc c                                         ; $6469: $0c
    inc b                                         ; $646a: $04
    dec c                                         ; $646b: $0d
    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    inc b                                         ; $646e: $04
    ld bc, $ff04                                  ; $646f: $01 $04 $ff
    inc b                                         ; $6472: $04
    nop                                           ; $6473: $00
    inc bc                                        ; $6474: $03
    ld bc, $0203                                  ; $6475: $01 $03 $02
    inc bc                                        ; $6478: $03
    inc bc                                        ; $6479: $03
    inc bc                                        ; $647a: $03
    inc b                                         ; $647b: $04
    inc bc                                        ; $647c: $03
    rst $38                                       ; $647d: $ff
    ld a, [bc]                                    ; $647e: $0a
    dec b                                         ; $647f: $05
    inc b                                         ; $6480: $04
    ld b, $04                                     ; $6481: $06 $04
    rlca                                          ; $6483: $07
    inc b                                         ; $6484: $04
    ld [$0904], sp                                ; $6485: $08 $04 $09
    nop                                           ; $6488: $00
    ld a, [bc]                                    ; $6489: $0a
    inc bc                                        ; $648a: $03
    dec bc                                        ; $648b: $0b
    inc bc                                        ; $648c: $03
    inc c                                         ; $648d: $0c
    inc bc                                        ; $648e: $03
    dec c                                         ; $648f: $0d
    inc bc                                        ; $6490: $03
    rst $38                                       ; $6491: $ff
    ld [$0c00], sp                                ; $6492: $08 $00 $0c
    ld bc, $0204                                  ; $6495: $01 $04 $02
    inc b                                         ; $6498: $04
    inc bc                                        ; $6499: $03
    inc b                                         ; $649a: $04
    inc b                                         ; $649b: $04
    inc b                                         ; $649c: $04
    dec b                                         ; $649d: $05
    inc b                                         ; $649e: $04
    ld b, $04                                     ; $649f: $06 $04
    rlca                                          ; $64a1: $07
    inc b                                         ; $64a2: $04
    ld [$0904], sp                                ; $64a3: $08 $04 $09
    inc b                                         ; $64a6: $04
    ld a, [bc]                                    ; $64a7: $0a
    inc b                                         ; $64a8: $04
    dec bc                                        ; $64a9: $0b
    inc b                                         ; $64aa: $04
    inc c                                         ; $64ab: $0c
    inc b                                         ; $64ac: $04
    dec c                                         ; $64ad: $0d
    inc b                                         ; $64ae: $04
    ld c, $04                                     ; $64af: $0e $04
    rrca                                          ; $64b1: $0f
    inc b                                         ; $64b2: $04
    db $10                                        ; $64b3: $10
    inc b                                         ; $64b4: $04
    ld de, $1204                                  ; $64b5: $11 $04 $12
    inc b                                         ; $64b8: $04
    inc de                                        ; $64b9: $13
    inc b                                         ; $64ba: $04
    rlca                                          ; $64bb: $07
    inc b                                         ; $64bc: $04
    ld [$0904], sp                                ; $64bd: $08 $04 $09
    inc b                                         ; $64c0: $04
    ld a, [bc]                                    ; $64c1: $0a
    inc b                                         ; $64c2: $04
    dec bc                                        ; $64c3: $0b
    inc b                                         ; $64c4: $04
    inc c                                         ; $64c5: $0c
    inc b                                         ; $64c6: $04
    dec c                                         ; $64c7: $0d
    inc b                                         ; $64c8: $04
    ld c, $04                                     ; $64c9: $0e $04
    rrca                                          ; $64cb: $0f
    inc b                                         ; $64cc: $04
    db $10                                        ; $64cd: $10
    inc b                                         ; $64ce: $04
    ld de, $1204                                  ; $64cf: $11 $04 $12
    inc b                                         ; $64d2: $04
    inc de                                        ; $64d3: $13
    inc b                                         ; $64d4: $04
    inc d                                         ; $64d5: $14
    inc b                                         ; $64d6: $04
    dec d                                         ; $64d7: $15
    inc b                                         ; $64d8: $04
    ld d, $04                                     ; $64d9: $16 $04
    rla                                           ; $64db: $17
    inc b                                         ; $64dc: $04
    jr jr_002_64e3                                ; $64dd: $18 $04

    add hl, de                                    ; $64df: $19
    inc b                                         ; $64e0: $04
    ld a, [de]                                    ; $64e1: $1a
    inc b                                         ; $64e2: $04

jr_002_64e3:
    dec de                                        ; $64e3: $1b
    inc b                                         ; $64e4: $04
    inc e                                         ; $64e5: $1c
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    inc c                                         ; $64e8: $0c
    ld bc, $0204                                  ; $64e9: $01 $04 $02
    inc b                                         ; $64ec: $04
    inc bc                                        ; $64ed: $03
    inc b                                         ; $64ee: $04
    inc b                                         ; $64ef: $04
    inc b                                         ; $64f0: $04
    dec b                                         ; $64f1: $05
    inc b                                         ; $64f2: $04
    ld b, $04                                     ; $64f3: $06 $04
    rlca                                          ; $64f5: $07
    inc b                                         ; $64f6: $04
    ld [$0904], sp                                ; $64f7: $08 $04 $09
    inc b                                         ; $64fa: $04
    ld a, [bc]                                    ; $64fb: $0a
    inc b                                         ; $64fc: $04
    dec bc                                        ; $64fd: $0b
    inc b                                         ; $64fe: $04
    inc c                                         ; $64ff: $0c
    inc b                                         ; $6500: $04
    dec c                                         ; $6501: $0d
    inc b                                         ; $6502: $04
    ld c, $04                                     ; $6503: $0e $04
    rrca                                          ; $6505: $0f
    inc b                                         ; $6506: $04
    db $10                                        ; $6507: $10
    inc b                                         ; $6508: $04
    ld de, $1204                                  ; $6509: $11 $04 $12
    inc b                                         ; $650c: $04
    inc de                                        ; $650d: $13
    inc b                                         ; $650e: $04
    inc d                                         ; $650f: $14
    inc b                                         ; $6510: $04
    dec d                                         ; $6511: $15
    inc b                                         ; $6512: $04
    ld d, $04                                     ; $6513: $16 $04
    rla                                           ; $6515: $17
    inc b                                         ; $6516: $04
    jr jr_002_651d                                ; $6517: $18 $04

    add hl, de                                    ; $6519: $19
    inc b                                         ; $651a: $04
    ld a, [de]                                    ; $651b: $1a
    inc b                                         ; $651c: $04

jr_002_651d:
    dec de                                        ; $651d: $1b
    inc b                                         ; $651e: $04
    inc e                                         ; $651f: $1c
    inc b                                         ; $6520: $04
    dec e                                         ; $6521: $1d
    nop                                           ; $6522: $00

    db $00, $04, $01, $04, $02, $04, $03, $04, $04, $04, $05, $04, $06, $04, $07, $04
    db $08, $04, $09, $04, $0a, $04, $0b, $04, $0c, $00

    nop                                           ; $653d: $00
    inc b                                         ; $653e: $04
    ld bc, $0204                                  ; $653f: $01 $04 $02
    inc b                                         ; $6542: $04
    inc bc                                        ; $6543: $03
    inc b                                         ; $6544: $04
    inc b                                         ; $6545: $04
    inc b                                         ; $6546: $04
    dec b                                         ; $6547: $05
    inc b                                         ; $6548: $04
    ld b, $04                                     ; $6549: $06 $04
    rlca                                          ; $654b: $07
    inc b                                         ; $654c: $04
    ld [$0904], sp                                ; $654d: $08 $04 $09
    inc b                                         ; $6550: $04
    ld a, [bc]                                    ; $6551: $0a
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    ld b, $01                                     ; $6554: $06 $01
    ld b, $02                                     ; $6556: $06 $02
    ld b, $03                                     ; $6558: $06 $03
    ld b, $02                                     ; $655a: $06 $02
    ld b, $01                                     ; $655c: $06 $01
    ld b, $00                                     ; $655e: $06 $00
    nop                                           ; $6560: $00
    inc b                                         ; $6561: $04
    ld [bc], a                                    ; $6562: $02
    dec b                                         ; $6563: $05
    ld [bc], a                                    ; $6564: $02
    rst $38                                       ; $6565: $ff
    inc b                                         ; $6566: $04
    nop                                           ; $6567: $00
    ld [bc], a                                    ; $6568: $02
    ld bc, $0202                                  ; $6569: $01 $02 $02
    ld [bc], a                                    ; $656c: $02
    inc bc                                        ; $656d: $03
    ld [bc], a                                    ; $656e: $02
    inc b                                         ; $656f: $04
    ld [bc], a                                    ; $6570: $02
    dec b                                         ; $6571: $05
    ld [bc], a                                    ; $6572: $02
    ld b, $02                                     ; $6573: $06 $02
    rst $38                                       ; $6575: $ff
    ld [$0400], sp                                ; $6576: $08 $00 $04
    ld bc, $0204                                  ; $6579: $01 $04 $02
    inc b                                         ; $657c: $04
    inc bc                                        ; $657d: $03
    inc b                                         ; $657e: $04
    inc b                                         ; $657f: $04
    inc b                                         ; $6580: $04
    dec b                                         ; $6581: $05
    inc b                                         ; $6582: $04
    ld b, $04                                     ; $6583: $06 $04
    rst $38                                       ; $6585: $ff
    ld c, $00                                     ; $6586: $0e $00
    inc bc                                        ; $6588: $03
    ld bc, $0203                                  ; $6589: $01 $03 $02
    inc bc                                        ; $658c: $03
    inc bc                                        ; $658d: $03
    inc bc                                        ; $658e: $03
    inc b                                         ; $658f: $04
    inc bc                                        ; $6590: $03
    dec b                                         ; $6591: $05
    inc bc                                        ; $6592: $03
    ld b, $03                                     ; $6593: $06 $03
    rlca                                          ; $6595: $07
    inc bc                                        ; $6596: $03
    ld [$0903], sp                                ; $6597: $08 $03 $09
    inc bc                                        ; $659a: $03
    ld a, [bc]                                    ; $659b: $0a
    inc bc                                        ; $659c: $03
    dec bc                                        ; $659d: $0b
    inc bc                                        ; $659e: $03
    inc c                                         ; $659f: $0c
    inc bc                                        ; $65a0: $03
    dec c                                         ; $65a1: $0d
    inc bc                                        ; $65a2: $03
    ld c, $03                                     ; $65a3: $0e $03
    rrca                                          ; $65a5: $0f
    inc bc                                        ; $65a6: $03
    db $10                                        ; $65a7: $10
    inc bc                                        ; $65a8: $03
    ld de, $0000                                  ; $65a9: $11 $00 $00
    nop                                           ; $65ac: $00
    nop                                           ; $65ad: $00
    db $10                                        ; $65ae: $10
    ld bc, $0210                                  ; $65af: $01 $10 $02
    db $10                                        ; $65b2: $10
    inc bc                                        ; $65b3: $03
    db $10                                        ; $65b4: $10
    inc b                                         ; $65b5: $04
    db $10                                        ; $65b6: $10
    dec b                                         ; $65b7: $05
    inc b                                         ; $65b8: $04
    ld b, $04                                     ; $65b9: $06 $04
    rlca                                          ; $65bb: $07
    nop                                           ; $65bc: $00
    nop                                           ; $65bd: $00
    dec b                                         ; $65be: $05
    ld bc, $0205                                  ; $65bf: $01 $05 $02
    dec b                                         ; $65c2: $05
    inc bc                                        ; $65c3: $03
    dec b                                         ; $65c4: $05
    inc b                                         ; $65c5: $04
    dec b                                         ; $65c6: $05
    dec b                                         ; $65c7: $05
    dec b                                         ; $65c8: $05
    ld b, $05                                     ; $65c9: $06 $05
    rlca                                          ; $65cb: $07
    dec b                                         ; $65cc: $05
    ld [$0905], sp                                ; $65cd: $08 $05 $09
    dec b                                         ; $65d0: $05
    ld a, [bc]                                    ; $65d1: $0a
    dec b                                         ; $65d2: $05
    dec bc                                        ; $65d3: $0b
    dec b                                         ; $65d4: $05
    inc c                                         ; $65d5: $0c
    dec b                                         ; $65d6: $05
    dec c                                         ; $65d7: $0d
    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    inc b                                         ; $65da: $04
    ld bc, $0204                                  ; $65db: $01 $04 $02
    inc b                                         ; $65de: $04
    inc bc                                        ; $65df: $03
    inc b                                         ; $65e0: $04
    inc b                                         ; $65e1: $04
    inc b                                         ; $65e2: $04
    dec b                                         ; $65e3: $05
    inc b                                         ; $65e4: $04
    ld b, $04                                     ; $65e5: $06 $04
    rlca                                          ; $65e7: $07
    inc b                                         ; $65e8: $04
    ld [$0904], sp                                ; $65e9: $08 $04 $09
    inc b                                         ; $65ec: $04
    ld a, [bc]                                    ; $65ed: $0a
    inc b                                         ; $65ee: $04
    dec bc                                        ; $65ef: $0b
    inc b                                         ; $65f0: $04
    inc c                                         ; $65f1: $0c
    inc b                                         ; $65f2: $04
    dec c                                         ; $65f3: $0d
    nop                                           ; $65f4: $00
    dec b                                         ; $65f5: $05
    dec b                                         ; $65f6: $05
    ld b, $05                                     ; $65f7: $06 $05
    rlca                                          ; $65f9: $07
    dec b                                         ; $65fa: $05
    ld [$0905], sp                                ; $65fb: $08 $05 $09
    dec b                                         ; $65fe: $05
    ld a, [bc]                                    ; $65ff: $0a
    dec b                                         ; $6600: $05
    dec bc                                        ; $6601: $0b
    dec b                                         ; $6602: $05
    ld [$0905], sp                                ; $6603: $08 $05 $09
    dec b                                         ; $6606: $05
    ld a, [bc]                                    ; $6607: $0a
    dec b                                         ; $6608: $05
    dec bc                                        ; $6609: $0b
    dec b                                         ; $660a: $05
    inc c                                         ; $660b: $0c
    dec b                                         ; $660c: $05
    dec c                                         ; $660d: $0d
    dec b                                         ; $660e: $05
    ld c, $05                                     ; $660f: $0e $05
    rrca                                          ; $6611: $0f
    dec b                                         ; $6612: $05
    db $10                                        ; $6613: $10
    dec b                                         ; $6614: $05
    ld de, $1205                                  ; $6615: $11 $05 $12
    dec b                                         ; $6618: $05
    inc de                                        ; $6619: $13
    dec b                                         ; $661a: $05
    db $10                                        ; $661b: $10
    dec b                                         ; $661c: $05
    ld de, $1205                                  ; $661d: $11 $05 $12
    dec b                                         ; $6620: $05
    inc de                                        ; $6621: $13
    dec b                                         ; $6622: $05
    inc d                                         ; $6623: $14
    dec b                                         ; $6624: $05
    dec d                                         ; $6625: $15
    dec b                                         ; $6626: $05
    ld d, $05                                     ; $6627: $16 $05
    rla                                           ; $6629: $17
    dec b                                         ; $662a: $05
    jr jr_002_6632                                ; $662b: $18 $05

    add hl, de                                    ; $662d: $19
    dec b                                         ; $662e: $05
    ld a, [de]                                    ; $662f: $1a
    dec b                                         ; $6630: $05
    dec de                                        ; $6631: $1b

jr_002_6632:
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    inc b                                         ; $6634: $04
    ld bc, $0204                                  ; $6635: $01 $04 $02
    inc b                                         ; $6638: $04
    inc bc                                        ; $6639: $03
    inc b                                         ; $663a: $04
    inc b                                         ; $663b: $04
    inc b                                         ; $663c: $04
    dec b                                         ; $663d: $05
    inc b                                         ; $663e: $04
    ld b, $04                                     ; $663f: $06 $04
    rlca                                          ; $6641: $07
    inc b                                         ; $6642: $04
    ld [$0000], sp                                ; $6643: $08 $00 $00
    inc b                                         ; $6646: $04
    ld bc, $0204                                  ; $6647: $01 $04 $02
    inc b                                         ; $664a: $04
    inc bc                                        ; $664b: $03
    inc b                                         ; $664c: $04
    inc b                                         ; $664d: $04
    inc b                                         ; $664e: $04
    dec b                                         ; $664f: $05
    inc b                                         ; $6650: $04
    ld b, $04                                     ; $6651: $06 $04
    rlca                                          ; $6653: $07
    inc b                                         ; $6654: $04
    ld [$0204], sp                                ; $6655: $08 $04 $02
    inc b                                         ; $6658: $04
    inc bc                                        ; $6659: $03
    inc b                                         ; $665a: $04
    inc b                                         ; $665b: $04
    inc b                                         ; $665c: $04
    dec b                                         ; $665d: $05
    inc b                                         ; $665e: $04
    ld b, $04                                     ; $665f: $06 $04
    rlca                                          ; $6661: $07
    inc b                                         ; $6662: $04
    ld [$0000], sp                                ; $6663: $08 $00 $00
    inc b                                         ; $6666: $04
    ld bc, $0204                                  ; $6667: $01 $04 $02
    inc b                                         ; $666a: $04
    inc bc                                        ; $666b: $03
    inc b                                         ; $666c: $04
    inc b                                         ; $666d: $04
    inc b                                         ; $666e: $04
    dec b                                         ; $666f: $05
    inc b                                         ; $6670: $04
    ld b, $04                                     ; $6671: $06 $04
    rlca                                          ; $6673: $07
    inc b                                         ; $6674: $04
    ld [$0904], sp                                ; $6675: $08 $04 $09
    inc b                                         ; $6678: $04
    ld a, [bc]                                    ; $6679: $0a
    inc b                                         ; $667a: $04
    dec bc                                        ; $667b: $0b
    inc b                                         ; $667c: $04
    inc c                                         ; $667d: $0c
    inc b                                         ; $667e: $04
    dec c                                         ; $667f: $0d
    inc b                                         ; $6680: $04
    ld c, $04                                     ; $6681: $0e $04
    rrca                                          ; $6683: $0f
    nop                                           ; $6684: $00
    stop                                          ; $6685: $10 $00
    ld de, $0000                                  ; $6687: $11 $00 $00
    inc b                                         ; $668a: $04
    ld bc, $0204                                  ; $668b: $01 $04 $02
    inc b                                         ; $668e: $04
    inc bc                                        ; $668f: $03
    inc b                                         ; $6690: $04
    inc b                                         ; $6691: $04
    inc b                                         ; $6692: $04
    dec b                                         ; $6693: $05
    inc b                                         ; $6694: $04
    ld b, $04                                     ; $6695: $06 $04
    rlca                                          ; $6697: $07
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    ld b, $01                                     ; $669a: $06 $01
    ld b, $02                                     ; $669c: $06 $02
    ld b, $03                                     ; $669e: $06 $03
    ld b, $04                                     ; $66a0: $06 $04
    ld b, $05                                     ; $66a2: $06 $05
    ld b, $06                                     ; $66a4: $06 $06
    ld b, $05                                     ; $66a6: $06 $05
    ld b, $04                                     ; $66a8: $06 $04
    ld b, $05                                     ; $66aa: $06 $05
    ld b, $06                                     ; $66ac: $06 $06
    ld b, $07                                     ; $66ae: $06 $07
    nop                                           ; $66b0: $00
    ld [$0904], sp                                ; $66b1: $08 $04 $09
    inc b                                         ; $66b4: $04
    ld a, [bc]                                    ; $66b5: $0a
    inc b                                         ; $66b6: $04
    dec bc                                        ; $66b7: $0b
    inc b                                         ; $66b8: $04
    inc c                                         ; $66b9: $0c
    inc b                                         ; $66ba: $04
    dec c                                         ; $66bb: $0d
    nop                                           ; $66bc: $00
    nop                                           ; $66bd: $00
    inc b                                         ; $66be: $04
    ld bc, $0204                                  ; $66bf: $01 $04 $02
    inc b                                         ; $66c2: $04
    inc bc                                        ; $66c3: $03
    inc b                                         ; $66c4: $04
    inc b                                         ; $66c5: $04
    inc b                                         ; $66c6: $04
    dec b                                         ; $66c7: $05
    inc b                                         ; $66c8: $04
    ld b, $04                                     ; $66c9: $06 $04
    rlca                                          ; $66cb: $07
    nop                                           ; $66cc: $00
    ld [$0904], sp                                ; $66cd: $08 $04 $09
    inc b                                         ; $66d0: $04
    ld a, [bc]                                    ; $66d1: $0a
    inc b                                         ; $66d2: $04
    dec bc                                        ; $66d3: $0b
    inc b                                         ; $66d4: $04
    ld a, [bc]                                    ; $66d5: $0a
    inc b                                         ; $66d6: $04
    add hl, bc                                    ; $66d7: $09
    inc b                                         ; $66d8: $04
    ld [$0000], sp                                ; $66d9: $08 $00 $00
    inc b                                         ; $66dc: $04
    ld bc, $0204                                  ; $66dd: $01 $04 $02
    inc b                                         ; $66e0: $04
    inc bc                                        ; $66e1: $03
    inc b                                         ; $66e2: $04
    inc b                                         ; $66e3: $04
    inc b                                         ; $66e4: $04
    dec b                                         ; $66e5: $05
    inc b                                         ; $66e6: $04
    ld b, $04                                     ; $66e7: $06 $04
    rlca                                          ; $66e9: $07
    inc b                                         ; $66ea: $04
    ld [$0904], sp                                ; $66eb: $08 $04 $09
    inc b                                         ; $66ee: $04
    ld a, [bc]                                    ; $66ef: $0a
    inc b                                         ; $66f0: $04
    dec bc                                        ; $66f1: $0b
    nop                                           ; $66f2: $00
    nop                                           ; $66f3: $00
    dec b                                         ; $66f4: $05
    ld bc, $0205                                  ; $66f5: $01 $05 $02
    dec b                                         ; $66f8: $05
    inc bc                                        ; $66f9: $03
    dec b                                         ; $66fa: $05
    inc b                                         ; $66fb: $04
    dec b                                         ; $66fc: $05
    dec b                                         ; $66fd: $05
    dec b                                         ; $66fe: $05
    ld b, $05                                     ; $66ff: $06 $05
    rlca                                          ; $6701: $07
    dec b                                         ; $6702: $05
    ld [$0905], sp                                ; $6703: $08 $05 $09
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00
    inc b                                         ; $6708: $04
    ld bc, $0204                                  ; $6709: $01 $04 $02
    inc b                                         ; $670c: $04
    inc bc                                        ; $670d: $03
    inc b                                         ; $670e: $04
    inc b                                         ; $670f: $04
    inc b                                         ; $6710: $04
    dec b                                         ; $6711: $05
    inc b                                         ; $6712: $04
    ld b, $04                                     ; $6713: $06 $04
    rlca                                          ; $6715: $07
    inc b                                         ; $6716: $04
    ld [$0904], sp                                ; $6717: $08 $04 $09
    inc b                                         ; $671a: $04
    ld a, [bc]                                    ; $671b: $0a
    inc b                                         ; $671c: $04
    dec bc                                        ; $671d: $0b
    inc b                                         ; $671e: $04
    inc c                                         ; $671f: $0c
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    inc b                                         ; $6722: $04
    ld bc, $0204                                  ; $6723: $01 $04 $02
    inc b                                         ; $6726: $04
    inc bc                                        ; $6727: $03
    inc b                                         ; $6728: $04
    inc b                                         ; $6729: $04
    inc b                                         ; $672a: $04
    dec b                                         ; $672b: $05
    inc b                                         ; $672c: $04
    ld b, $04                                     ; $672d: $06 $04
    rlca                                          ; $672f: $07
    inc b                                         ; $6730: $04
    rlca                                          ; $6731: $07
    inc b                                         ; $6732: $04
    rst $38                                       ; $6733: $ff
    ld [de], a                                    ; $6734: $12
    nop                                           ; $6735: $00
    ld [bc], a                                    ; $6736: $02
    ld bc, $0202                                  ; $6737: $01 $02 $02
    ld [bc], a                                    ; $673a: $02
    inc bc                                        ; $673b: $03
    ld [bc], a                                    ; $673c: $02
    rst $38                                       ; $673d: $ff
    ld [$0400], sp                                ; $673e: $08 $00 $04
    ld bc, $0204                                  ; $6741: $01 $04 $02
    inc b                                         ; $6744: $04
    inc bc                                        ; $6745: $03
    inc b                                         ; $6746: $04
    inc b                                         ; $6747: $04
    inc b                                         ; $6748: $04
    dec b                                         ; $6749: $05
    inc b                                         ; $674a: $04
    ld b, $04                                     ; $674b: $06 $04
    rlca                                          ; $674d: $07
    inc b                                         ; $674e: $04
    ld [$0904], sp                                ; $674f: $08 $04 $09
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    inc b                                         ; $6754: $04
    ld bc, $0204                                  ; $6755: $01 $04 $02
    inc b                                         ; $6758: $04
    inc bc                                        ; $6759: $03
    inc b                                         ; $675a: $04
    inc b                                         ; $675b: $04
    inc b                                         ; $675c: $04
    dec b                                         ; $675d: $05
    inc b                                         ; $675e: $04
    ld b, $04                                     ; $675f: $06 $04
    rlca                                          ; $6761: $07
    inc b                                         ; $6762: $04
    ld [$0904], sp                                ; $6763: $08 $04 $09
    inc b                                         ; $6766: $04
    ld a, [bc]                                    ; $6767: $0a
    inc b                                         ; $6768: $04
    dec bc                                        ; $6769: $0b
    inc b                                         ; $676a: $04
    inc c                                         ; $676b: $0c
    inc b                                         ; $676c: $04
    dec c                                         ; $676d: $0d
    inc b                                         ; $676e: $04
    ld c, $04                                     ; $676f: $0e $04
    rrca                                          ; $6771: $0f
    inc b                                         ; $6772: $04
    db $10                                        ; $6773: $10
    inc b                                         ; $6774: $04
    ld de, $1204                                  ; $6775: $11 $04 $12
    inc b                                         ; $6778: $04
    inc de                                        ; $6779: $13
    inc b                                         ; $677a: $04
    inc d                                         ; $677b: $14
    inc b                                         ; $677c: $04
    dec d                                         ; $677d: $15
    inc b                                         ; $677e: $04
    ld d, $04                                     ; $677f: $16 $04
    rla                                           ; $6781: $17
    inc b                                         ; $6782: $04
    jr jr_002_6789                                ; $6783: $18 $04

    add hl, de                                    ; $6785: $19
    inc b                                         ; $6786: $04
    ld a, [de]                                    ; $6787: $1a
    inc b                                         ; $6788: $04

jr_002_6789:
    dec de                                        ; $6789: $1b
    inc b                                         ; $678a: $04
    inc e                                         ; $678b: $1c
    nop                                           ; $678c: $00
    nop                                           ; $678d: $00
    inc b                                         ; $678e: $04
    ld bc, $0204                                  ; $678f: $01 $04 $02
    inc b                                         ; $6792: $04
    inc bc                                        ; $6793: $03
    inc b                                         ; $6794: $04
    inc b                                         ; $6795: $04
    inc b                                         ; $6796: $04
    rst $38                                       ; $6797: $ff
    ld a, [bc]                                    ; $6798: $0a
    nop                                           ; $6799: $00
    inc b                                         ; $679a: $04
    ld bc, $0204                                  ; $679b: $01 $04 $02
    inc b                                         ; $679e: $04
    inc bc                                        ; $679f: $03
    inc b                                         ; $67a0: $04
    inc b                                         ; $67a1: $04
    inc b                                         ; $67a2: $04
    dec b                                         ; $67a3: $05
    inc b                                         ; $67a4: $04
    ld b, $04                                     ; $67a5: $06 $04
    rlca                                          ; $67a7: $07
    inc b                                         ; $67a8: $04
    ld [$0904], sp                                ; $67a9: $08 $04 $09
    inc b                                         ; $67ac: $04
    ld [$0704], sp                                ; $67ad: $08 $04 $07
    inc b                                         ; $67b0: $04
    ld b, $04                                     ; $67b1: $06 $04
    dec b                                         ; $67b3: $05
    inc b                                         ; $67b4: $04
    inc b                                         ; $67b5: $04
    inc b                                         ; $67b6: $04
    inc bc                                        ; $67b7: $03
    inc b                                         ; $67b8: $04
    ld [bc], a                                    ; $67b9: $02
    inc b                                         ; $67ba: $04
    ld bc, $0204                                  ; $67bb: $01 $04 $02
    inc b                                         ; $67be: $04
    inc bc                                        ; $67bf: $03
    inc b                                         ; $67c0: $04
    inc b                                         ; $67c1: $04
    inc b                                         ; $67c2: $04
    dec b                                         ; $67c3: $05
    inc b                                         ; $67c4: $04
    ld b, $04                                     ; $67c5: $06 $04
    rlca                                          ; $67c7: $07
    inc b                                         ; $67c8: $04
    ld [$0904], sp                                ; $67c9: $08 $04 $09
    inc b                                         ; $67cc: $04
    ld a, [bc]                                    ; $67cd: $0a
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    inc b                                         ; $67d0: $04
    ld bc, $0204                                  ; $67d1: $01 $04 $02
    inc b                                         ; $67d4: $04
    inc bc                                        ; $67d5: $03
    inc b                                         ; $67d6: $04
    inc b                                         ; $67d7: $04
    inc b                                         ; $67d8: $04
    dec b                                         ; $67d9: $05
    inc b                                         ; $67da: $04
    ld b, $04                                     ; $67db: $06 $04
    rlca                                          ; $67dd: $07
    inc b                                         ; $67de: $04
    ld [$0904], sp                                ; $67df: $08 $04 $09
    inc b                                         ; $67e2: $04
    rst $38                                       ; $67e3: $ff
    inc c                                         ; $67e4: $0c
    nop                                           ; $67e5: $00
    ld b, $01                                     ; $67e6: $06 $01
    ld b, $02                                     ; $67e8: $06 $02
    ld b, $03                                     ; $67ea: $06 $03
    ld b, $04                                     ; $67ec: $06 $04
    ld b, $05                                     ; $67ee: $06 $05
    ld b, $06                                     ; $67f0: $06 $06
    ld b, $07                                     ; $67f2: $06 $07
    ld b, $08                                     ; $67f4: $06 $08
    ld b, $09                                     ; $67f6: $06 $09
    ld b, $0a                                     ; $67f8: $06 $0a
    ld b, $0b                                     ; $67fa: $06 $0b
    ld b, $ff                                     ; $67fc: $06 $ff
    ld [$0400], sp                                ; $67fe: $08 $00 $04
    ld bc, $0204                                  ; $6801: $01 $04 $02
    inc b                                         ; $6804: $04
    inc bc                                        ; $6805: $03
    inc b                                         ; $6806: $04
    inc b                                         ; $6807: $04
    inc b                                         ; $6808: $04
    dec b                                         ; $6809: $05
    inc b                                         ; $680a: $04
    ld b, $04                                     ; $680b: $06 $04
    rlca                                          ; $680d: $07
    inc b                                         ; $680e: $04
    ld [$0904], sp                                ; $680f: $08 $04 $09
    inc b                                         ; $6812: $04
    ld a, [bc]                                    ; $6813: $0a
    inc b                                         ; $6814: $04
    dec bc                                        ; $6815: $0b
    inc b                                         ; $6816: $04
    inc c                                         ; $6817: $0c
    inc b                                         ; $6818: $04
    dec c                                         ; $6819: $0d
    inc b                                         ; $681a: $04
    ld c, $04                                     ; $681b: $0e $04
    rrca                                          ; $681d: $0f
    inc b                                         ; $681e: $04
    db $10                                        ; $681f: $10
    inc b                                         ; $6820: $04
    ld de, $0000                                  ; $6821: $11 $00 $00
    dec b                                         ; $6824: $05
    ld bc, $0205                                  ; $6825: $01 $05 $02
    dec b                                         ; $6828: $05
    inc bc                                        ; $6829: $03
    dec b                                         ; $682a: $05
    inc b                                         ; $682b: $04
    dec b                                         ; $682c: $05
    dec b                                         ; $682d: $05
    dec b                                         ; $682e: $05
    ld b, $05                                     ; $682f: $06 $05
    rlca                                          ; $6831: $07
    dec b                                         ; $6832: $05
    ld [$0905], sp                                ; $6833: $08 $05 $09
    dec b                                         ; $6836: $05
    ld a, [bc]                                    ; $6837: $0a
    dec b                                         ; $6838: $05
    dec bc                                        ; $6839: $0b
    dec b                                         ; $683a: $05
    inc c                                         ; $683b: $0c
    dec b                                         ; $683c: $05
    dec c                                         ; $683d: $0d
    dec b                                         ; $683e: $05
    ld c, $05                                     ; $683f: $0e $05
    rrca                                          ; $6841: $0f
    dec b                                         ; $6842: $05
    db $10                                        ; $6843: $10
    dec b                                         ; $6844: $05
    ld de, $1205                                  ; $6845: $11 $05 $12
    dec b                                         ; $6848: $05
    inc de                                        ; $6849: $13
    dec b                                         ; $684a: $05
    inc d                                         ; $684b: $14
    dec b                                         ; $684c: $05
    dec d                                         ; $684d: $15
    dec b                                         ; $684e: $05
    ld d, $05                                     ; $684f: $16 $05
    rla                                           ; $6851: $17
    dec b                                         ; $6852: $05
    jr jr_002_6855                                ; $6853: $18 $00

jr_002_6855:
    add hl, de                                    ; $6855: $19
    dec b                                         ; $6856: $05
    ld a, [de]                                    ; $6857: $1a
    dec b                                         ; $6858: $05
    dec de                                        ; $6859: $1b
    dec b                                         ; $685a: $05
    inc e                                         ; $685b: $1c
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    dec b                                         ; $685e: $05
    ld bc, $0205                                  ; $685f: $01 $05 $02
    dec b                                         ; $6862: $05
    inc bc                                        ; $6863: $03
    dec b                                         ; $6864: $05
    inc b                                         ; $6865: $04
    dec b                                         ; $6866: $05
    dec b                                         ; $6867: $05
    dec b                                         ; $6868: $05
    ld b, $05                                     ; $6869: $06 $05
    rlca                                          ; $686b: $07
    dec b                                         ; $686c: $05
    ld [$0905], sp                                ; $686d: $08 $05 $09
    dec b                                         ; $6870: $05
    ld a, [bc]                                    ; $6871: $0a
    dec b                                         ; $6872: $05
    dec bc                                        ; $6873: $0b
    dec b                                         ; $6874: $05
    inc c                                         ; $6875: $0c
    dec b                                         ; $6876: $05
    dec c                                         ; $6877: $0d
    dec b                                         ; $6878: $05
    ld c, $05                                     ; $6879: $0e $05
    rrca                                          ; $687b: $0f
    dec b                                         ; $687c: $05
    db $10                                        ; $687d: $10
    dec b                                         ; $687e: $05
    ld de, $1205                                  ; $687f: $11 $05 $12
    dec b                                         ; $6882: $05
    inc de                                        ; $6883: $13
    dec b                                         ; $6884: $05
    inc d                                         ; $6885: $14
    dec b                                         ; $6886: $05
    dec d                                         ; $6887: $15
    dec b                                         ; $6888: $05
    ld d, $05                                     ; $6889: $16 $05
    rla                                           ; $688b: $17
    dec b                                         ; $688c: $05
    jr jr_002_6894                                ; $688d: $18 $05

    add hl, de                                    ; $688f: $19
    dec b                                         ; $6890: $05
    ld a, [de]                                    ; $6891: $1a
    dec b                                         ; $6892: $05
    dec de                                        ; $6893: $1b

jr_002_6894:
    dec b                                         ; $6894: $05
    inc e                                         ; $6895: $1c
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    inc b                                         ; $6898: $04
    ld bc, $0204                                  ; $6899: $01 $04 $02
    inc b                                         ; $689c: $04
    inc bc                                        ; $689d: $03
    inc b                                         ; $689e: $04
    inc b                                         ; $689f: $04
    inc b                                         ; $68a0: $04
    dec b                                         ; $68a1: $05
    inc b                                         ; $68a2: $04
    ld b, $04                                     ; $68a3: $06 $04
    rlca                                          ; $68a5: $07
    inc b                                         ; $68a6: $04
    ld [$0904], sp                                ; $68a7: $08 $04 $09
    inc b                                         ; $68aa: $04
    ld a, [bc]                                    ; $68ab: $0a
    inc b                                         ; $68ac: $04
    dec bc                                        ; $68ad: $0b
    inc b                                         ; $68ae: $04
    inc c                                         ; $68af: $0c
    inc b                                         ; $68b0: $04
    dec c                                         ; $68b1: $0d
    inc b                                         ; $68b2: $04
    ld c, $04                                     ; $68b3: $0e $04
    rrca                                          ; $68b5: $0f
    inc b                                         ; $68b6: $04
    stop                                          ; $68b7: $10 $00
    nop                                           ; $68b9: $00
    inc bc                                        ; $68ba: $03
    ld bc, $0203                                  ; $68bb: $01 $03 $02
    inc bc                                        ; $68be: $03
    inc bc                                        ; $68bf: $03
    inc bc                                        ; $68c0: $03
    inc b                                         ; $68c1: $04
    inc bc                                        ; $68c2: $03
    dec b                                         ; $68c3: $05
    inc bc                                        ; $68c4: $03
    ld b, $03                                     ; $68c5: $06 $03
    rlca                                          ; $68c7: $07
    inc bc                                        ; $68c8: $03
    ld [$0903], sp                                ; $68c9: $08 $03 $09
    inc bc                                        ; $68cc: $03
    ld a, [bc]                                    ; $68cd: $0a
    inc bc                                        ; $68ce: $03
    dec bc                                        ; $68cf: $0b
    inc bc                                        ; $68d0: $03
    inc c                                         ; $68d1: $0c
    inc bc                                        ; $68d2: $03
    dec c                                         ; $68d3: $0d
    inc bc                                        ; $68d4: $03
    rst $38                                       ; $68d5: $ff
    inc e                                         ; $68d6: $1c

    db $00, $00, $00, $00, $00, $08, $00, $40, $00, $05, $00, $00, $00, $00, $00, $08
    db $00, $40, $00, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06
    db $01, $06, $02, $06, $03, $06, $04, $06, $05, $06, $ff, $0c

    ld b, $06                                     ; $6903: $06 $06
    rlca                                          ; $6905: $07
    ld b, $08                                     ; $6906: $06 $08
    ld b, $09                                     ; $6908: $06 $09
    ld b, $0a                                     ; $690a: $06 $0a
    ld b, $0b                                     ; $690c: $06 $0b
    ld b, $ff                                     ; $690e: $06 $ff
    ld a, [de]                                    ; $6910: $1a
    ld b, $06                                     ; $6911: $06 $06
    rlca                                          ; $6913: $07
    ld b, $08                                     ; $6914: $06 $08
    ld b, $09                                     ; $6916: $06 $09
    ld b, $0a                                     ; $6918: $06 $0a
    ld [de], a                                    ; $691a: $12
    rst $38                                       ; $691b: $ff
    ld h, $00                                     ; $691c: $26 $00
    ld b, $01                                     ; $691e: $06 $01
    ld b, $02                                     ; $6920: $06 $02
    ld b, $03                                     ; $6922: $06 $03
    ld b, $04                                     ; $6924: $06 $04
    ld b, $05                                     ; $6926: $06 $05
    ld b, $ff                                     ; $6928: $06 $ff
    inc c                                         ; $692a: $0c
    ld b, $06                                     ; $692b: $06 $06
    rlca                                          ; $692d: $07
    ld b, $08                                     ; $692e: $06 $08
    ld b, $09                                     ; $6930: $06 $09
    ld b, $0a                                     ; $6932: $06 $0a
    ld b, $0b                                     ; $6934: $06 $0b
    ld b, $0c                                     ; $6936: $06 $0c
    ld b, $0d                                     ; $6938: $06 $0d
    ld b, $0e                                     ; $693a: $06 $0e
    ld b, $0f                                     ; $693c: $06 $0f
    ld b, $10                                     ; $693e: $06 $10
    ld b, $11                                     ; $6940: $06 $11
    inc hl                                        ; $6942: $23
    ld a, [bc]                                    ; $6943: $0a
    ld b, $09                                     ; $6944: $06 $09
    ld b, $08                                     ; $6946: $06 $08
    ld b, $07                                     ; $6948: $06 $07
    ld b, $fe                                     ; $694a: $06 $fe
    xor c                                         ; $694c: $a9
    rst $38                                       ; $694d: $ff
    ld b, $06                                     ; $694e: $06 $06
    rlca                                          ; $6950: $07
    ld b, $08                                     ; $6951: $06 $08
    ld b, $09                                     ; $6953: $06 $09
    ld b, $0a                                     ; $6955: $06 $0a
    ld b, $0b                                     ; $6957: $06 $0b
    ld b, $0c                                     ; $6959: $06 $0c
    ld b, $0d                                     ; $695b: $06 $0d
    ld b, $fe                                     ; $695d: $06 $fe
    sub [hl]                                      ; $695f: $96
    rst $38                                       ; $6960: $ff
    ld c, $06                                     ; $6961: $0e $06
    rrca                                          ; $6963: $0f
    ld b, $10                                     ; $6964: $06 $10
    ld b, $11                                     ; $6966: $06 $11
    nop                                           ; $6968: $00
    ld b, $06                                     ; $6969: $06 $06
    rlca                                          ; $696b: $07
    ld b, $08                                     ; $696c: $06 $08
    ld b, $09                                     ; $696e: $06 $09
    ld b, $0a                                     ; $6970: $06 $0a
    ld b, $0b                                     ; $6972: $06 $0b
    ld [de], a                                    ; $6974: $12
    inc c                                         ; $6975: $0c
    ld b, $fe                                     ; $6976: $06 $fe
    ld a, l                                       ; $6978: $7d
    rst $38                                       ; $6979: $ff
    nop                                           ; $697a: $00
    ld b, $01                                     ; $697b: $06 $01
    ld b, $02                                     ; $697d: $06 $02
    ld b, $03                                     ; $697f: $06 $03
    ld b, $04                                     ; $6981: $06 $04
    ld b, $05                                     ; $6983: $06 $05
    ld [de], a                                    ; $6985: $12
    ld b, $00                                     ; $6986: $06 $00
    dec c                                         ; $6988: $0d
    ld b, $0e                                     ; $6989: $06 $0e
    ld b, $0f                                     ; $698b: $06 $0f
    ld b, $10                                     ; $698d: $06 $10
    nop                                           ; $698f: $00
    inc c                                         ; $6990: $0c
    ld a, [bc]                                    ; $6991: $0a
    dec c                                         ; $6992: $0d
    ld a, [bc]                                    ; $6993: $0a
    ld c, $00                                     ; $6994: $0e $00
    ld [de], a                                    ; $6996: $12
    ld b, $13                                     ; $6997: $06 $13
    ld b, $14                                     ; $6999: $06 $14
    ld b, $15                                     ; $699b: $06 $15
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    ld b, $01                                     ; $699f: $06 $01
    ld b, $02                                     ; $69a1: $06 $02
    ld b, $ff                                     ; $69a3: $06 $ff
    db $06                                        ; $69a5: $06

    db $2d, $05, $2e, $05, $2f, $05, $30, $05, $31, $05, $32, $05, $33, $05, $34, $05
    db $35, $05, $36, $05, $37, $05, $38, $05, $39, $0f, $fe, $34, $ff

    ld b, $05                                     ; $69c3: $06 $05
    rlca                                          ; $69c5: $07
    dec b                                         ; $69c6: $05
    ld [$0905], sp                                ; $69c7: $08 $05 $09
    dec b                                         ; $69ca: $05
    ld a, [bc]                                    ; $69cb: $0a
    dec b                                         ; $69cc: $05
    dec bc                                        ; $69cd: $0b
    dec b                                         ; $69ce: $05
    inc c                                         ; $69cf: $0c
    dec b                                         ; $69d0: $05
    dec c                                         ; $69d1: $0d
    ld b, $0e                                     ; $69d2: $06 $0e
    ld b, $0f                                     ; $69d4: $06 $0f
    dec b                                         ; $69d6: $05
    cp $1d                                        ; $69d7: $fe $1d
    rst $38                                       ; $69d9: $ff

    db $00, $05, $01, $05, $02, $05, $03, $00, $fe, $12, $ff, $10, $0a, $11, $0a, $12
    db $0a, $13, $00, $1a, $08, $1b, $08, $1c, $08, $1d, $08, $1e, $08, $1f, $08, $20
    db $08, $21, $08, $22, $08, $23, $00

    inc h                                         ; $6a01: $24
    ld b, $25                                     ; $6a02: $06 $25
    ld b, $26                                     ; $6a04: $06 $26
    ld b, $27                                     ; $6a06: $06 $27
    ld b, $28                                     ; $6a08: $06 $28
    ld b, $29                                     ; $6a0a: $06 $29
    ld b, $2a                                     ; $6a0c: $06 $2a
    ld b, $2b                                     ; $6a0e: $06 $2b
    ld b, $2c                                     ; $6a10: $06 $2c
    ld b, $ff                                     ; $6a12: $06 $ff
    ld [de], a                                    ; $6a14: $12

    db $00, $00

    ld e, [hl]                                    ; $6a17: $5e
    dec b                                         ; $6a18: $05
    ld h, b                                       ; $6a19: $60
    dec b                                         ; $6a1a: $05
    ld h, d                                       ; $6a1b: $62
    dec b                                         ; $6a1c: $05
    ld h, h                                       ; $6a1d: $64
    dec b                                         ; $6a1e: $05
    ld h, [hl]                                    ; $6a1f: $66
    dec b                                         ; $6a20: $05
    ld l, b                                       ; $6a21: $68
    dec b                                         ; $6a22: $05
    ld l, d                                       ; $6a23: $6a
    dec b                                         ; $6a24: $05
    ld l, h                                       ; $6a25: $6c
    dec b                                         ; $6a26: $05
    ld l, [hl]                                    ; $6a27: $6e
    dec b                                         ; $6a28: $05
    ld [hl], b                                    ; $6a29: $70
    dec b                                         ; $6a2a: $05
    ld [hl], d                                    ; $6a2b: $72
    dec b                                         ; $6a2c: $05
    ld [hl], h                                    ; $6a2d: $74
    dec b                                         ; $6a2e: $05
    halt                                          ; $6a2f: $76
    rrca                                          ; $6a30: $0f
    cp $e3                                        ; $6a31: $fe $e3
    rst $38                                       ; $6a33: $ff

    db $0c, $05, $0e, $05, $10, $05, $12, $05, $14, $05, $16, $05, $18, $05, $1a, $06
    db $1c, $06, $1e, $06, $fe, $cc, $ff

    nop                                           ; $6a4b: $00
    dec b                                         ; $6a4c: $05
    ld [bc], a                                    ; $6a4d: $02
    dec b                                         ; $6a4e: $05
    inc b                                         ; $6a4f: $04
    dec b                                         ; $6a50: $05
    ld b, $00                                     ; $6a51: $06 $00
    cp $c1                                        ; $6a53: $fe $c1
    rst $38                                       ; $6a55: $ff
    jr nz, jr_002_6a62                            ; $6a56: $20 $0a

    ld [hl+], a                                   ; $6a58: $22
    ld a, [bc]                                    ; $6a59: $0a
    inc h                                         ; $6a5a: $24
    ld a, [bc]                                    ; $6a5b: $0a
    ld h, $00                                     ; $6a5c: $26 $00
    inc [hl]                                      ; $6a5e: $34
    ld [$0836], sp                                ; $6a5f: $08 $36 $08

jr_002_6a62:
    jr c, @+$0a                                   ; $6a62: $38 $08

    ld a, [hl-]                                   ; $6a64: $3a
    ld [$083c], sp                                ; $6a65: $08 $3c $08
    ld a, $08                                     ; $6a68: $3e $08
    ld b, b                                       ; $6a6a: $40
    ld [$0842], sp                                ; $6a6b: $08 $42 $08
    ld b, h                                       ; $6a6e: $44
    ld [$0046], sp                                ; $6a6f: $08 $46 $00

    db $48, $06, $4a, $06, $4c, $06, $4e, $06, $50, $06, $52, $06, $54, $06, $56, $06
    db $58, $06, $ff, $12

    inc c                                         ; $6a86: $0c
    ld [$080d], sp                                ; $6a87: $08 $0d $08
    ld c, $08                                     ; $6a8a: $0e $08
    rrca                                          ; $6a8c: $0f
    ld [$000e], sp                                ; $6a8d: $08 $0e $00
    ld b, $06                                     ; $6a90: $06 $06
    rlca                                          ; $6a92: $07
    ld b, $08                                     ; $6a93: $06 $08
    ld b, $09                                     ; $6a95: $06 $09
    ld b, $0a                                     ; $6a97: $06 $0a
    ld b, $fe                                     ; $6a99: $06 $fe
    ld e, d                                       ; $6a9b: $5a
    db $fe                                        ; $6a9c: $fe

    db $0b, $08, $0c, $08, $0d, $08, $0e, $08, $0f, $00

    inc c                                         ; $6aa7: $0c
    ld [$080d], sp                                ; $6aa8: $08 $0d $08
    ld c, $08                                     ; $6aab: $0e $08
    rrca                                          ; $6aad: $0f
    ld [$000c], sp                                ; $6aae: $08 $0c $00
    inc c                                         ; $6ab1: $0c
    ld [$080d], sp                                ; $6ab2: $08 $0d $08
    ld c, $08                                     ; $6ab5: $0e $08
    rrca                                          ; $6ab7: $0f
    nop                                           ; $6ab8: $00
    ld a, [bc]                                    ; $6ab9: $0a
    ld b, $0c                                     ; $6aba: $06 $0c
    ld b, $0e                                     ; $6abc: $06 $0e
    ld b, $10                                     ; $6abe: $06 $10
    ld b, $12                                     ; $6ac0: $06 $12
    ld b, $14                                     ; $6ac2: $06 $14
    ld b, $16                                     ; $6ac4: $06 $16
    ld b, $fe                                     ; $6ac6: $06 $fe
    ld c, l                                       ; $6ac8: $4d
    rst $38                                       ; $6ac9: $ff
    jr jr_002_6ad4                                ; $6aca: $18 $08

    ld a, [de]                                    ; $6acc: $1a
    ld [$081c], sp                                ; $6acd: $08 $1c $08
    ld e, $00                                     ; $6ad0: $1e $00
    jr nz, @+$08                                  ; $6ad2: $20 $06

jr_002_6ad4:
    ld [hl+], a                                   ; $6ad4: $22
    ld b, $24                                     ; $6ad5: $06 $24
    ld b, $26                                     ; $6ad7: $06 $26
    ld b, $28                                     ; $6ad9: $06 $28
    ld b, $2a                                     ; $6adb: $06 $2a
    ld b, $2c                                     ; $6add: $06 $2c
    ld b, $2e                                     ; $6adf: $06 $2e
    ld b, $fe                                     ; $6ae1: $06 $fe
    ld [hl-], a                                   ; $6ae3: $32
    rst $38                                       ; $6ae4: $ff
    nop                                           ; $6ae5: $00
    ld b, $01                                     ; $6ae6: $06 $01
    ld b, $02                                     ; $6ae8: $06 $02
    ld b, $03                                     ; $6aea: $06 $03
    ld b, $04                                     ; $6aec: $06 $04
    ld b, $05                                     ; $6aee: $06 $05
    ld b, $06                                     ; $6af0: $06 $06
    ld b, $07                                     ; $6af2: $06 $07
    ld b, $ff                                     ; $6af4: $06 $ff
    db $10                                        ; $6af6: $10
    add hl, bc                                    ; $6af7: $09
    ld b, $0a                                     ; $6af8: $06 $0a
    ld b, $0b                                     ; $6afa: $06 $0b
    ld b, $0c                                     ; $6afc: $06 $0c
    ld b, $0d                                     ; $6afe: $06 $0d
    ld b, $0e                                     ; $6b00: $06 $0e
    ld b, $0f                                     ; $6b02: $06 $0f
    ld b, $10                                     ; $6b04: $06 $10
    ld b, $11                                     ; $6b06: $06 $11
    ld b, $12                                     ; $6b08: $06 $12
    ld b, $13                                     ; $6b0a: $06 $13
    ld b, $14                                     ; $6b0c: $06 $14
    ld b, $15                                     ; $6b0e: $06 $15
    ld b, $16                                     ; $6b10: $06 $16
    ld b, $17                                     ; $6b12: $06 $17
    ld b, $fe                                     ; $6b14: $06 $fe
    rst $08                                       ; $6b16: $cf
    rst $38                                       ; $6b17: $ff
    jr jr_002_6b22                                ; $6b18: $18 $08

    add hl, de                                    ; $6b1a: $19
    ld [$081a], sp                                ; $6b1b: $08 $1a $08
    dec de                                        ; $6b1e: $1b
    ld [$c4fe], sp                                ; $6b1f: $08 $fe $c4

jr_002_6b22:
    rst $38                                       ; $6b22: $ff

    db $00, $03, $01, $03, $02, $00, $03, $03, $04, $02, $05, $02, $ff, $06, $06, $03
    db $07, $03, $08, $03, $09, $03, $0a, $03, $0b, $03, $0c, $00

    nop                                           ; $6b3f: $00
    ld b, $01                                     ; $6b40: $06 $01
    ld b, $02                                     ; $6b42: $06 $02
    ld b, $03                                     ; $6b44: $06 $03
    nop                                           ; $6b46: $00
    inc b                                         ; $6b47: $04
    dec b                                         ; $6b48: $05
    dec b                                         ; $6b49: $05
    dec b                                         ; $6b4a: $05
    ld b, $05                                     ; $6b4b: $06 $05
    rlca                                          ; $6b4d: $07
    dec b                                         ; $6b4e: $05
    rst $38                                       ; $6b4f: $ff
    ld [$0608], sp                                ; $6b50: $08 $08 $06
    add hl, bc                                    ; $6b53: $09
    ld b, $0a                                     ; $6b54: $06 $0a
    ld b, $0b                                     ; $6b56: $06 $0b
    ld b, $0c                                     ; $6b58: $06 $0c
    ld b, $ff                                     ; $6b5a: $06 $ff
    ld a, [bc]                                    ; $6b5c: $0a
    nop                                           ; $6b5d: $00
    ld b, $01                                     ; $6b5e: $06 $01
    ld b, $02                                     ; $6b60: $06 $02
    ld b, $03                                     ; $6b62: $06 $03
    ld b, $04                                     ; $6b64: $06 $04
    nop                                           ; $6b66: $00
    ld a, [bc]                                    ; $6b67: $0a
    ld b, $0b                                     ; $6b68: $06 $0b
    ld b, $0c                                     ; $6b6a: $06 $0c
    ld b, $0d                                     ; $6b6c: $06 $0d
    ld b, $0e                                     ; $6b6e: $06 $0e
    ld b, $ff                                     ; $6b70: $06 $ff
    ld a, [bc]                                    ; $6b72: $0a
    rrca                                          ; $6b73: $0f
    ld b, $10                                     ; $6b74: $06 $10
    ld b, $11                                     ; $6b76: $06 $11
    ld b, $12                                     ; $6b78: $06 $12
    ld b, $13                                     ; $6b7a: $06 $13
    ld b, $14                                     ; $6b7c: $06 $14
    ld b, $15                                     ; $6b7e: $06 $15
    inc c                                         ; $6b80: $0c
    ld d, $06                                     ; $6b81: $16 $06
    rla                                           ; $6b83: $17
    ld b, $00                                     ; $6b84: $06 $00
    ld b, $01                                     ; $6b86: $06 $01
    ld b, $02                                     ; $6b88: $06 $02
    ld b, $03                                     ; $6b8a: $06 $03
    ld b, $04                                     ; $6b8c: $06 $04
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    nop                                           ; $6b90: $00
    dec b                                         ; $6b91: $05
    dec b                                         ; $6b92: $05
    ld b, $05                                     ; $6b93: $06 $05
    rlca                                          ; $6b95: $07
    dec b                                         ; $6b96: $05
    ld [$0905], sp                                ; $6b97: $08 $05 $09
    nop                                           ; $6b9a: $00
    nop                                           ; $6b9b: $00
    dec b                                         ; $6b9c: $05
    ld bc, $0205                                  ; $6b9d: $01 $05 $02
    dec b                                         ; $6ba0: $05
    inc bc                                        ; $6ba1: $03
    dec b                                         ; $6ba2: $05
    inc b                                         ; $6ba3: $04
    dec b                                         ; $6ba4: $05
    dec b                                         ; $6ba5: $05
    dec b                                         ; $6ba6: $05
    ld b, $05                                     ; $6ba7: $06 $05
    rlca                                          ; $6ba9: $07
    nop                                           ; $6baa: $00
    nop                                           ; $6bab: $00
    dec b                                         ; $6bac: $05
    ld [$0905], sp                                ; $6bad: $08 $05 $09
    dec b                                         ; $6bb0: $05
    ld a, [bc]                                    ; $6bb1: $0a
    dec b                                         ; $6bb2: $05
    dec bc                                        ; $6bb3: $0b
    dec b                                         ; $6bb4: $05
    inc c                                         ; $6bb5: $0c
    dec b                                         ; $6bb6: $05
    dec c                                         ; $6bb7: $0d
    dec b                                         ; $6bb8: $05
    ld c, $05                                     ; $6bb9: $0e $05
    rrca                                          ; $6bbb: $0f
    dec b                                         ; $6bbc: $05
    db $10                                        ; $6bbd: $10
    dec b                                         ; $6bbe: $05
    ld de, $0000                                  ; $6bbf: $11 $00 $00
    inc bc                                        ; $6bc2: $03
    ld bc, $0203                                  ; $6bc3: $01 $03 $02
    inc bc                                        ; $6bc6: $03
    inc bc                                        ; $6bc7: $03
    nop                                           ; $6bc8: $00
    inc b                                         ; $6bc9: $04
    inc bc                                        ; $6bca: $03
    dec b                                         ; $6bcb: $05
    inc bc                                        ; $6bcc: $03
    ld b, $03                                     ; $6bcd: $06 $03
    rlca                                          ; $6bcf: $07
    nop                                           ; $6bd0: $00
    ld [$0905], sp                                ; $6bd1: $08 $05 $09
    dec b                                         ; $6bd4: $05
    ld a, [bc]                                    ; $6bd5: $0a
    dec b                                         ; $6bd6: $05
    dec bc                                        ; $6bd7: $0b
    dec b                                         ; $6bd8: $05
    inc c                                         ; $6bd9: $0c
    dec b                                         ; $6bda: $05
    dec c                                         ; $6bdb: $0d
    dec b                                         ; $6bdc: $05
    ld c, $05                                     ; $6bdd: $0e $05
    rrca                                          ; $6bdf: $0f
    dec b                                         ; $6be0: $05
    db $10                                        ; $6be1: $10
    dec b                                         ; $6be2: $05
    ld de, $1205                                  ; $6be3: $11 $05 $12
    dec b                                         ; $6be6: $05
    inc de                                        ; $6be7: $13
    dec b                                         ; $6be8: $05
    inc d                                         ; $6be9: $14
    dec b                                         ; $6bea: $05
    ld [de], a                                    ; $6beb: $12
    dec b                                         ; $6bec: $05
    inc de                                        ; $6bed: $13
    dec b                                         ; $6bee: $05
    inc d                                         ; $6bef: $14
    nop                                           ; $6bf0: $00
    dec bc                                        ; $6bf1: $0b
    dec b                                         ; $6bf2: $05
    inc c                                         ; $6bf3: $0c
    dec b                                         ; $6bf4: $05
    dec c                                         ; $6bf5: $0d
    dec b                                         ; $6bf6: $05
    ld c, $05                                     ; $6bf7: $0e $05
    rrca                                          ; $6bf9: $0f
    dec b                                         ; $6bfa: $05
    db $10                                        ; $6bfb: $10
    dec b                                         ; $6bfc: $05
    ld de, $0e05                                  ; $6bfd: $11 $05 $0e
    dec b                                         ; $6c00: $05
    rrca                                          ; $6c01: $0f
    dec b                                         ; $6c02: $05
    db $10                                        ; $6c03: $10
    dec b                                         ; $6c04: $05
    ld de, $0000                                  ; $6c05: $11 $00 $00
    ld b, $01                                     ; $6c08: $06 $01
    ld b, $02                                     ; $6c0a: $06 $02
    ld b, $03                                     ; $6c0c: $06 $03
    ld b, $04                                     ; $6c0e: $06 $04
    ld b, $05                                     ; $6c10: $06 $05
    nop                                           ; $6c12: $00
    nop                                           ; $6c13: $00
    ld b, $01                                     ; $6c14: $06 $01
    ld b, $02                                     ; $6c16: $06 $02
    ld b, $03                                     ; $6c18: $06 $03
    ld b, $04                                     ; $6c1a: $06 $04
    ld b, $05                                     ; $6c1c: $06 $05
    ld b, $ff                                     ; $6c1e: $06 $ff
    ld b, $00                                     ; $6c20: $06 $00
    ld b, $01                                     ; $6c22: $06 $01
    ld b, $02                                     ; $6c24: $06 $02
    ld b, $03                                     ; $6c26: $06 $03
    ld b, $04                                     ; $6c28: $06 $04
    ld b, $05                                     ; $6c2a: $06 $05
    ld b, $ff                                     ; $6c2c: $06 $ff
    ld b, $03                                     ; $6c2e: $06 $03
    ld b, $04                                     ; $6c30: $06 $04
    ld b, $05                                     ; $6c32: $06 $05
    ld b, $ff                                     ; $6c34: $06 $ff
    ld b, $06                                     ; $6c36: $06 $06
    ld b, $07                                     ; $6c38: $06 $07
    ld b, $08                                     ; $6c3a: $06 $08
    ld b, $09                                     ; $6c3c: $06 $09
    ld b, $0a                                     ; $6c3e: $06 $0a
    ld b, $0b                                     ; $6c40: $06 $0b
    ld b, $ff                                     ; $6c42: $06 $ff
    ld [$060c], sp                                ; $6c44: $08 $0c $06
    dec c                                         ; $6c47: $0d
    ld b, $0e                                     ; $6c48: $06 $0e
    nop                                           ; $6c4a: $00
    ld b, $06                                     ; $6c4b: $06 $06
    rlca                                          ; $6c4d: $07
    ld b, $08                                     ; $6c4e: $06 $08
    ld b, $09                                     ; $6c50: $06 $09
    ld b, $0a                                     ; $6c52: $06 $0a
    ld b, $0b                                     ; $6c54: $06 $0b
    ld b, $0c                                     ; $6c56: $06 $0c
    ld b, $0d                                     ; $6c58: $06 $0d
    ld b, $0e                                     ; $6c5a: $06 $0e
    nop                                           ; $6c5c: $00
    ld b, $04                                     ; $6c5d: $06 $04
    rlca                                          ; $6c5f: $07
    inc b                                         ; $6c60: $04
    ld [$0904], sp                                ; $6c61: $08 $04 $09
    inc b                                         ; $6c64: $04
    ld a, [bc]                                    ; $6c65: $0a
    inc b                                         ; $6c66: $04
    dec bc                                        ; $6c67: $0b
    inc b                                         ; $6c68: $04
    inc c                                         ; $6c69: $0c
    inc b                                         ; $6c6a: $04
    dec c                                         ; $6c6b: $0d
    inc b                                         ; $6c6c: $04
    ld c, $04                                     ; $6c6d: $0e $04
    rrca                                          ; $6c6f: $0f
    inc b                                         ; $6c70: $04
    db $10                                        ; $6c71: $10
    inc b                                         ; $6c72: $04
    ld de, $1204                                  ; $6c73: $11 $04 $12
    inc b                                         ; $6c76: $04
    inc de                                        ; $6c77: $13
    inc b                                         ; $6c78: $04
    inc d                                         ; $6c79: $14
    inc b                                         ; $6c7a: $04
    dec d                                         ; $6c7b: $15
    inc b                                         ; $6c7c: $04
    ld d, $04                                     ; $6c7d: $16 $04
    rla                                           ; $6c7f: $17
    inc b                                         ; $6c80: $04
    jr @+$06                                      ; $6c81: $18 $04

    add hl, de                                    ; $6c83: $19
    ld b, $1a                                     ; $6c84: $06 $1a
    ld b, $1b                                     ; $6c86: $06 $1b
    ld b, $1c                                     ; $6c88: $06 $1c
    ld b, $1d                                     ; $6c8a: $06 $1d
    ld b, $1e                                     ; $6c8c: $06 $1e
    nop                                           ; $6c8e: $00
    nop                                           ; $6c8f: $00
    ld b, $01                                     ; $6c90: $06 $01
    ld b, $02                                     ; $6c92: $06 $02
    ld b, $03                                     ; $6c94: $06 $03
    ld b, $04                                     ; $6c96: $06 $04
    ld b, $05                                     ; $6c98: $06 $05
    nop                                           ; $6c9a: $00
    ld b, $06                                     ; $6c9b: $06 $06
    rlca                                          ; $6c9d: $07
    ld b, $08                                     ; $6c9e: $06 $08
    ld b, $09                                     ; $6ca0: $06 $09
    ld b, $0a                                     ; $6ca2: $06 $0a
    ld b, $0b                                     ; $6ca4: $06 $0b
    ld b, $ff                                     ; $6ca6: $06 $ff
    ld b, $00                                     ; $6ca8: $06 $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    inc b                                         ; $6cac: $04
    ld bc, $0204                                  ; $6cad: $01 $04 $02
    inc b                                         ; $6cb0: $04
    inc bc                                        ; $6cb1: $03
    inc b                                         ; $6cb2: $04
    inc b                                         ; $6cb3: $04
    inc b                                         ; $6cb4: $04
    dec b                                         ; $6cb5: $05
    inc b                                         ; $6cb6: $04
    ld b, $04                                     ; $6cb7: $06 $04
    rlca                                          ; $6cb9: $07
    inc b                                         ; $6cba: $04
    ld [$0904], sp                                ; $6cbb: $08 $04 $09
    inc b                                         ; $6cbe: $04
    ld a, [bc]                                    ; $6cbf: $0a
    nop                                           ; $6cc0: $00
    ld b, $06                                     ; $6cc1: $06 $06
    rlca                                          ; $6cc3: $07
    ld b, $08                                     ; $6cc4: $06 $08
    ld b, $09                                     ; $6cc6: $06 $09
    ld b, $0a                                     ; $6cc8: $06 $0a
    ld b, $0b                                     ; $6cca: $06 $0b
    ld b, $0c                                     ; $6ccc: $06 $0c
    nop                                           ; $6cce: $00
    dec bc                                        ; $6ccf: $0b
    dec b                                         ; $6cd0: $05
    inc c                                         ; $6cd1: $0c
    dec b                                         ; $6cd2: $05
    dec c                                         ; $6cd3: $0d
    dec b                                         ; $6cd4: $05
    ld c, $05                                     ; $6cd5: $0e $05
    rrca                                          ; $6cd7: $0f
    dec b                                         ; $6cd8: $05
    db $10                                        ; $6cd9: $10
    dec b                                         ; $6cda: $05
    ld de, $0000                                  ; $6cdb: $11 $00 $00
    ld b, $01                                     ; $6cde: $06 $01
    ld b, $02                                     ; $6ce0: $06 $02
    ld b, $03                                     ; $6ce2: $06 $03
    nop                                           ; $6ce4: $00
    inc b                                         ; $6ce5: $04
    dec b                                         ; $6ce6: $05
    dec b                                         ; $6ce7: $05
    dec b                                         ; $6ce8: $05
    ld b, $05                                     ; $6ce9: $06 $05
    rlca                                          ; $6ceb: $07
    dec b                                         ; $6cec: $05
    ld [$0905], sp                                ; $6ced: $08 $05 $09
    dec b                                         ; $6cf0: $05
    ld a, [bc]                                    ; $6cf1: $0a
    dec b                                         ; $6cf2: $05
    dec bc                                        ; $6cf3: $0b
    dec b                                         ; $6cf4: $05
    inc c                                         ; $6cf5: $0c
    dec b                                         ; $6cf6: $05
    dec c                                         ; $6cf7: $0d
    dec b                                         ; $6cf8: $05
    ld c, $05                                     ; $6cf9: $0e $05
    rrca                                          ; $6cfb: $0f
    dec b                                         ; $6cfc: $05
    db $10                                        ; $6cfd: $10
    dec b                                         ; $6cfe: $05
    ld de, $1205                                  ; $6cff: $11 $05 $12
    dec b                                         ; $6d02: $05
    inc de                                        ; $6d03: $13
    dec b                                         ; $6d04: $05
    inc d                                         ; $6d05: $14
    dec b                                         ; $6d06: $05
    dec d                                         ; $6d07: $15
    nop                                           ; $6d08: $00
    nop                                           ; $6d09: $00
    dec b                                         ; $6d0a: $05
    ld bc, $0205                                  ; $6d0b: $01 $05 $02
    nop                                           ; $6d0e: $00
    inc bc                                        ; $6d0f: $03
    inc bc                                        ; $6d10: $03
    inc b                                         ; $6d11: $04
    inc bc                                        ; $6d12: $03
    dec b                                         ; $6d13: $05
    inc bc                                        ; $6d14: $03
    rst $38                                       ; $6d15: $ff
    ld b, $06                                     ; $6d16: $06 $06
    ld b, $07                                     ; $6d18: $06 $07
    ld b, $08                                     ; $6d1a: $06 $08
    ld b, $09                                     ; $6d1c: $06 $09
    ld b, $0a                                     ; $6d1e: $06 $0a
    ld b, $0b                                     ; $6d20: $06 $0b
    nop                                           ; $6d22: $00
    nop                                           ; $6d23: $00
    nop                                           ; $6d24: $00
    nop                                           ; $6d25: $00
    inc b                                         ; $6d26: $04
    ld bc, $0204                                  ; $6d27: $01 $04 $02
    inc b                                         ; $6d2a: $04
    inc bc                                        ; $6d2b: $03
    inc b                                         ; $6d2c: $04
    inc b                                         ; $6d2d: $04
    inc b                                         ; $6d2e: $04
    dec b                                         ; $6d2f: $05
    inc b                                         ; $6d30: $04
    ld b, $04                                     ; $6d31: $06 $04
    rlca                                          ; $6d33: $07
    inc b                                         ; $6d34: $04
    ld [$0904], sp                                ; $6d35: $08 $04 $09
    inc b                                         ; $6d38: $04
    rst $38                                       ; $6d39: $ff
    inc d                                         ; $6d3a: $14
    ld a, [bc]                                    ; $6d3b: $0a
    ld [$080b], sp                                ; $6d3c: $08 $0b $08
    inc c                                         ; $6d3f: $0c
    ld b, $0d                                     ; $6d40: $06 $0d
    ld b, $0e                                     ; $6d42: $06 $0e
    ld b, $0f                                     ; $6d44: $06 $0f
    ld b, $10                                     ; $6d46: $06 $10
    ld b, $11                                     ; $6d48: $06 $11
    ld b, $ff                                     ; $6d4a: $06 $ff
    inc c                                         ; $6d4c: $0c
    nop                                           ; $6d4d: $00
    dec b                                         ; $6d4e: $05
    ld bc, $0205                                  ; $6d4f: $01 $05 $02
    dec b                                         ; $6d52: $05
    inc bc                                        ; $6d53: $03
    dec b                                         ; $6d54: $05
    inc b                                         ; $6d55: $04
    dec b                                         ; $6d56: $05
    dec b                                         ; $6d57: $05
    dec b                                         ; $6d58: $05
    ld b, $05                                     ; $6d59: $06 $05
    rlca                                          ; $6d5b: $07
    dec b                                         ; $6d5c: $05
    ld [$0000], sp                                ; $6d5d: $08 $00 $00
    nop                                           ; $6d60: $00
    add hl, bc                                    ; $6d61: $09
    dec b                                         ; $6d62: $05
    ld a, [bc]                                    ; $6d63: $0a
    dec b                                         ; $6d64: $05
    dec bc                                        ; $6d65: $0b
    dec b                                         ; $6d66: $05
    inc c                                         ; $6d67: $0c
    dec b                                         ; $6d68: $05
    dec c                                         ; $6d69: $0d
    dec b                                         ; $6d6a: $05
    ld c, $05                                     ; $6d6b: $0e $05
    rrca                                          ; $6d6d: $0f
    dec b                                         ; $6d6e: $05
    db $10                                        ; $6d6f: $10
    dec b                                         ; $6d70: $05
    ld de, $1205                                  ; $6d71: $11 $05 $12
    dec b                                         ; $6d74: $05
    inc de                                        ; $6d75: $13
    dec b                                         ; $6d76: $05
    inc d                                         ; $6d77: $14
    dec b                                         ; $6d78: $05
    dec d                                         ; $6d79: $15
    dec b                                         ; $6d7a: $05
    ld d, $05                                     ; $6d7b: $16 $05
    rla                                           ; $6d7d: $17
    dec b                                         ; $6d7e: $05
    jr jr_002_6d86                                ; $6d7f: $18 $05

    add hl, de                                    ; $6d81: $19
    dec b                                         ; $6d82: $05
    ld a, [de]                                    ; $6d83: $1a
    dec b                                         ; $6d84: $05
    rst $38                                       ; $6d85: $ff

jr_002_6d86:
    inc h                                         ; $6d86: $24
    nop                                           ; $6d87: $00
    dec b                                         ; $6d88: $05
    ld bc, $0205                                  ; $6d89: $01 $05 $02
    inc b                                         ; $6d8c: $04
    inc bc                                        ; $6d8d: $03
    inc bc                                        ; $6d8e: $03
    inc b                                         ; $6d8f: $04
    inc bc                                        ; $6d90: $03
    dec b                                         ; $6d91: $05
    inc bc                                        ; $6d92: $03
    ld b, $03                                     ; $6d93: $06 $03
    rlca                                          ; $6d95: $07
    inc bc                                        ; $6d96: $03
    rst $38                                       ; $6d97: $ff
    ld a, [bc]                                    ; $6d98: $0a
    ld [$0904], sp                                ; $6d99: $08 $04 $09
    inc b                                         ; $6d9c: $04
    ld a, [bc]                                    ; $6d9d: $0a
    inc b                                         ; $6d9e: $04
    dec bc                                        ; $6d9f: $0b
    inc b                                         ; $6da0: $04
    inc c                                         ; $6da1: $0c
    inc b                                         ; $6da2: $04
    dec c                                         ; $6da3: $0d
    inc b                                         ; $6da4: $04
    ld c, $04                                     ; $6da5: $0e $04
    nop                                           ; $6da7: $00
    inc b                                         ; $6da8: $04
    ld bc, $0200                                  ; $6da9: $01 $00 $02
    inc b                                         ; $6dac: $04
    inc bc                                        ; $6dad: $03
    inc b                                         ; $6dae: $04
    inc b                                         ; $6daf: $04
    inc b                                         ; $6db0: $04
    dec b                                         ; $6db1: $05
    inc b                                         ; $6db2: $04
    ld b, $04                                     ; $6db3: $06 $04
    rlca                                          ; $6db5: $07
    inc b                                         ; $6db6: $04
    rst $38                                       ; $6db7: $ff
    inc c                                         ; $6db8: $0c
    ld [$0904], sp                                ; $6db9: $08 $04 $09
    inc b                                         ; $6dbc: $04
    ld a, [bc]                                    ; $6dbd: $0a
    inc b                                         ; $6dbe: $04
    dec bc                                        ; $6dbf: $0b
    nop                                           ; $6dc0: $00
    nop                                           ; $6dc1: $00
    inc b                                         ; $6dc2: $04
    ld bc, $0204                                  ; $6dc3: $01 $04 $02
    nop                                           ; $6dc6: $00
    inc bc                                        ; $6dc7: $03
    inc b                                         ; $6dc8: $04
    inc b                                         ; $6dc9: $04
    inc b                                         ; $6dca: $04
    dec b                                         ; $6dcb: $05
    inc b                                         ; $6dcc: $04
    ld b, $04                                     ; $6dcd: $06 $04
    rlca                                          ; $6dcf: $07
    inc b                                         ; $6dd0: $04
    rst $38                                       ; $6dd1: $ff
    ld a, [bc]                                    ; $6dd2: $0a
    rlca                                          ; $6dd3: $07
    nop                                           ; $6dd4: $00

    db $00, $08, $01, $08, $02, $08, $03, $08, $02, $08, $01, $08, $ff, $0c, $00, $00
    db $00, $00, $00, $10, $00, $00, $00, $06, $e4, $2a, $05, $6e, $1b, $e3, $6d, $12
    db $04, $60, $bd, $00, $09, $00, $54, $04, $81, $a2, $00, $84, $90, $00, $00, $00
    db $1b, $e3, $6d, $12, $04, $60, $bd, $07, $09, $00, $54, $04, $81, $82, $00, $84
    db $90, $00, $00, $00, $7e, $e7, $07, $e0, $65, $72, $12, $04, $bd, $07, $e7, $07
    db $e5, $65, $51, $d5, $6d, $87, $4d, $6e, $56, $6e, $3e, $6e

    inc sp                                        ; $6e31: $33
    ld l, [hl]                                    ; $6e32: $6e
    ld d, h                                       ; $6e33: $54
    inc b                                         ; $6e34: $04
    rst $20                                       ; $6e35: $e7
    ld b, $f0                                     ; $6e36: $06 $f0
    ld h, h                                       ; $6e38: $64
    nop                                           ; $6e39: $00
    ld bc, $3518                                  ; $6e3a: $01 $18 $35
    ld l, [hl]                                    ; $6e3d: $6e

    db $bd, $00, $e7, $07, $4f, $66, $e7, $06, $f0, $64, $00, $01, $18, $3e, $6e, $e7
    db $07, $0f, $74, $00, $01, $18, $4d, $6e, $90, $00, $e7, $07, $40, $74, $00, $01
    db $18, $58, $6e, $7e, $e7, $07, $93, $65, $72, $bd, $07, $1b, $d7, $68, $e7, $07
    db $7f, $6d, $00, $20, $1b, $e1, $68, $00, $20, $1b, $eb, $68, $00, $10, $57, $00
    db $00, $60, $7e, $12, $04, $bd, $04, $e7, $07, $5e, $66, $2a, $9d, $6e, $00, $0a
    db $15, $43, $e7, $07, $be, $6d, $ea, $00, $05, $15, $11, $e7, $07, $93, $74, $e7
    db $07, $00, $66, $e7, $03, $94, $6b, $87

    rra                                           ; $6ea6: $1f
    ld l, a                                       ; $6ea7: $6f
    ld d, l                                       ; $6ea8: $55
    ld l, a                                       ; $6ea9: $6f
    adc c                                         ; $6eaa: $89
    ld l, a                                       ; $6eab: $6f

    db $f0, $6f

    nop                                           ; $6eae: $00
    ld [hl], b                                    ; $6eaf: $70
    db $10                                        ; $6eb0: $10
    ld [hl], b                                    ; $6eb1: $70
    adc a                                         ; $6eb2: $8f
    ld [hl], b                                    ; $6eb3: $70
    or l                                          ; $6eb4: $b5
    ld [hl], b                                    ; $6eb5: $70
    push bc                                       ; $6eb6: $c5
    ld [hl], b                                    ; $6eb7: $70
    ld d, [hl]                                    ; $6eb8: $56
    ld [hl], c                                    ; $6eb9: $71
    sub b                                         ; $6eba: $90
    ld [hl], c                                    ; $6ebb: $71
    and b                                         ; $6ebc: $a0
    ld [hl], c                                    ; $6ebd: $71
    ld b, d                                       ; $6ebe: $42
    ld [hl], d                                    ; $6ebf: $72
    cp b                                          ; $6ec0: $b8
    ld [hl], d                                    ; $6ec1: $72
    or $72                                        ; $6ec2: $f6 $72
    jr nc, jr_002_6f39                            ; $6ec4: $30 $73

    jp hl                                         ; $6ec6: $e9


    ld [hl], e                                    ; $6ec7: $73
    halt                                          ; $6ec8: $76
    ld [hl], b                                    ; $6ec9: $70
    add [hl]                                      ; $6eca: $86
    ld [hl], c                                    ; $6ecb: $71
    db $dd                                        ; $6ecc: $dd
    ld [hl], e                                    ; $6ecd: $73
    ld b, h                                       ; $6ece: $44
    ld [hl], c                                    ; $6ecf: $71
    ld [$3072], sp                                ; $6ed0: $08 $72 $30
    ld [hl], h                                    ; $6ed3: $74
    ld d, c                                       ; $6ed4: $51
    ld [hl], h                                    ; $6ed5: $74
    ld [hl], d                                    ; $6ed6: $72
    ld [hl], h                                    ; $6ed7: $74
    adc l                                         ; $6ed8: $8d
    ld [hl], h                                    ; $6ed9: $74
    cp d                                          ; $6eda: $ba
    ld [hl], h                                    ; $6edb: $74
    ld [c], a                                     ; $6edc: $e2
    ld l, [hl]                                    ; $6edd: $6e
    db $10                                        ; $6ede: $10
    ld [hl], l                                    ; $6edf: $75
    push af                                       ; $6ee0: $f5
    ld [hl], h                                    ; $6ee1: $74
    or $2a                                        ; $6ee2: $f6 $2a
    cp d                                          ; $6ee4: $ba
    ld b, $87                                     ; $6ee5: $06 $87
    di                                            ; $6ee7: $f3
    ld l, [hl]                                    ; $6ee8: $6e
    ld a, [$016e]                                 ; $6ee9: $fa $6e $01
    ld l, a                                       ; $6eec: $6f
    ld [$0f6f], sp                                ; $6eed: $08 $6f $0f
    ld l, a                                       ; $6ef0: $6f
    ld d, $6f                                     ; $6ef1: $16 $6f
    ld c, [hl]                                    ; $6ef3: $4e
    ld [bc], a                                    ; $6ef4: $02
    add hl, sp                                    ; $6ef5: $39
    ld a, [hl]                                    ; $6ef6: $7e
    ld d, a                                       ; $6ef7: $57
    nop                                           ; $6ef8: $00
    nop                                           ; $6ef9: $00
    ld c, [hl]                                    ; $6efa: $4e
    dec b                                         ; $6efb: $05
    add hl, sp                                    ; $6efc: $39
    ld a, [hl]                                    ; $6efd: $7e
    ld d, a                                       ; $6efe: $57
    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    ld c, [hl]                                    ; $6f01: $4e
    ld [$7e39], sp                                ; $6f02: $08 $39 $7e
    ld d, a                                       ; $6f05: $57
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    ld c, [hl]                                    ; $6f08: $4e
    dec bc                                        ; $6f09: $0b
    add hl, sp                                    ; $6f0a: $39
    ld a, [hl]                                    ; $6f0b: $7e
    ld d, a                                       ; $6f0c: $57
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    ld c, [hl]                                    ; $6f0f: $4e
    db $10                                        ; $6f10: $10
    add hl, sp                                    ; $6f11: $39
    ld a, [hl]                                    ; $6f12: $7e
    ld d, a                                       ; $6f13: $57
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    ld c, [hl]                                    ; $6f16: $4e
    inc c                                         ; $6f17: $0c
    add hl, sp                                    ; $6f18: $39
    ld a, [hl]                                    ; $6f19: $7e
    ld d, a                                       ; $6f1a: $57
    nop                                           ; $6f1b: $00
    nop                                           ; $6f1c: $00
    nop                                           ; $6f1d: $00
    nop                                           ; $6f1e: $00
    sbc a                                         ; $6f1f: $9f
    db $ed                                        ; $6f20: $ed
    and d                                         ; $6f21: $a2
    ld hl, sp+$0c                                 ; $6f22: $f8 $0c
    ld l, $75                                     ; $6f24: $2e $75
    inc c                                         ; $6f26: $0c
    ld a, $75                                     ; $6f27: $3e $75
    rst $20                                       ; $6f29: $e7
    rlca                                          ; $6f2a: $07
    add d                                         ; $6f2b: $82
    ld h, a                                       ; $6f2c: $67
    inc bc                                        ; $6f2d: $03
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    ld b, $00                                     ; $6f30: $06 $00
    nop                                           ; $6f32: $00
    rst $20                                       ; $6f33: $e7
    rlca                                          ; $6f34: $07
    dec e                                         ; $6f35: $1d
    ld l, [hl]                                    ; $6f36: $6e
    rst $20                                       ; $6f37: $e7
    rlca                                          ; $6f38: $07

jr_002_6f39:
    ld h, d                                       ; $6f39: $62
    ld l, c                                       ; $6f3a: $69
    rst $20                                       ; $6f3b: $e7
    rlca                                          ; $6f3c: $07
    ldh [rBCPD], a                                ; $6f3d: $e0 $69
    rst $20                                       ; $6f3f: $e7
    rlca                                          ; $6f40: $07
    dec c                                         ; $6f41: $0d
    ld l, [hl]                                    ; $6f42: $6e
    ld [$07e7], a                                 ; $6f43: $ea $e7 $07
    ld b, l                                       ; $6f46: $45
    ld [hl], d                                    ; $6f47: $72
    rst $20                                       ; $6f48: $e7
    rlca                                          ; $6f49: $07
    ld d, l                                       ; $6f4a: $55
    ld l, d                                       ; $6f4b: $6a
    nop                                           ; $6f4c: $00
    inc d                                         ; $6f4d: $14
    rst $20                                       ; $6f4e: $e7
    rlca                                          ; $6f4f: $07
    ld l, h                                       ; $6f50: $6c
    ld l, d                                       ; $6f51: $6a
    ld d, a                                       ; $6f52: $57
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00
    sbc a                                         ; $6f55: $9f
    db $ed                                        ; $6f56: $ed
    and d                                         ; $6f57: $a2
    ld hl, sp+$0c                                 ; $6f58: $f8 $0c
    ld l, $75                                     ; $6f5a: $2e $75
    inc c                                         ; $6f5c: $0c
    ld a, $75                                     ; $6f5d: $3e $75
    rst $20                                       ; $6f5f: $e7
    rlca                                          ; $6f60: $07
    add d                                         ; $6f61: $82
    ld h, a                                       ; $6f62: $67
    inc bc                                        ; $6f63: $03
    db $ec                                        ; $6f64: $ec
    rst $38                                       ; $6f65: $ff
    ld b, $00                                     ; $6f66: $06 $00
    nop                                           ; $6f68: $00
    rst $20                                       ; $6f69: $e7
    rlca                                          ; $6f6a: $07
    dec e                                         ; $6f6b: $1d
    ld l, [hl]                                    ; $6f6c: $6e
    rst $20                                       ; $6f6d: $e7
    rlca                                          ; $6f6e: $07
    ld h, d                                       ; $6f6f: $62
    ld l, c                                       ; $6f70: $69
    nop                                           ; $6f71: $00
    inc d                                         ; $6f72: $14
    rst $20                                       ; $6f73: $e7
    rlca                                          ; $6f74: $07
    db $10                                        ; $6f75: $10
    ld l, d                                       ; $6f76: $6a
    rst $20                                       ; $6f77: $e7
    rlca                                          ; $6f78: $07
    dec c                                         ; $6f79: $0d
    ld l, [hl]                                    ; $6f7a: $6e
    inc c                                         ; $6f7b: $0c
    xor h                                         ; $6f7c: $ac
    ld [hl], l                                    ; $6f7d: $75
    rst $20                                       ; $6f7e: $e7
    rlca                                          ; $6f7f: $07
    ld l, h                                       ; $6f80: $6c
    ld l, d                                       ; $6f81: $6a

jr_002_6f82:
    rst $20                                       ; $6f82: $e7
    rlca                                          ; $6f83: $07
    ld b, l                                       ; $6f84: $45
    ld [hl], d                                    ; $6f85: $72
    ld d, a                                       ; $6f86: $57
    nop                                           ; $6f87: $00
    nop                                           ; $6f88: $00
    rst $20                                       ; $6f89: $e7
    rlca                                          ; $6f8a: $07
    db $ed                                        ; $6f8b: $ed
    ld l, e                                       ; $6f8c: $6b
    inc c                                         ; $6f8d: $0c
    ld c, $76                                     ; $6f8e: $0e $76
    nop                                           ; $6f90: $00
    inc d                                         ; $6f91: $14
    rst $20                                       ; $6f92: $e7
    rlca                                          ; $6f93: $07
    add d                                         ; $6f94: $82
    ld h, a                                       ; $6f95: $67
    rst $20                                       ; $6f96: $e7
    rlca                                          ; $6f97: $07
    ld e, b                                       ; $6f98: $58
    ld l, c                                       ; $6f99: $69
    ld a, [hl+]                                   ; $6f9a: $2a
    cp b                                          ; $6f9b: $b8
    ld l, a                                       ; $6f9c: $6f
    sbc a                                         ; $6f9d: $9f
    inc de                                        ; $6f9e: $13
    and d                                         ; $6f9f: $a2
    ldh a, [$0c]                                  ; $6fa0: $f0 $0c
    ld l, $75                                     ; $6fa2: $2e $75
    inc c                                         ; $6fa4: $0c
    ld c, b                                       ; $6fa5: $48
    ld [hl], l                                    ; $6fa6: $75
    add c                                         ; $6fa7: $81
    add b                                         ; $6fa8: $80
    nop                                           ; $6fa9: $00
    add h                                         ; $6faa: $84
    ld d, a                                       ; $6fab: $57
    nop                                           ; $6fac: $00
    inc bc                                        ; $6fad: $03
    ld h, h                                       ; $6fae: $64
    nop                                           ; $6faf: $00
    ld h, [hl]                                    ; $6fb0: $66
    rst $20                                       ; $6fb1: $e7
    rlca                                          ; $6fb2: $07
    cp l                                          ; $6fb3: $bd
    ld h, [hl]                                    ; $6fb4: $66
    jr jr_002_6f82                                ; $6fb5: $18 $cb

    ld l, a                                       ; $6fb7: $6f
    sbc a                                         ; $6fb8: $9f
    db $ed                                        ; $6fb9: $ed
    and d                                         ; $6fba: $a2
    ld hl, sp+$0c                                 ; $6fbb: $f8 $0c
    ld l, $75                                     ; $6fbd: $2e $75
    inc c                                         ; $6fbf: $0c
    ld c, b                                       ; $6fc0: $48
    ld [hl], l                                    ; $6fc1: $75
    add c                                         ; $6fc2: $81
    inc l                                         ; $6fc3: $2c
    nop                                           ; $6fc4: $00
    add h                                         ; $6fc5: $84
    ld d, a                                       ; $6fc6: $57
    nop                                           ; $6fc7: $00
    inc bc                                        ; $6fc8: $03
    sbc h                                         ; $6fc9: $9c
    rst $38                                       ; $6fca: $ff
    rst $20                                       ; $6fcb: $e7
    rlca                                          ; $6fcc: $07
    ld h, d                                       ; $6fcd: $62
    ld l, c                                       ; $6fce: $69
    rst $20                                       ; $6fcf: $e7
    rlca                                          ; $6fd0: $07
    dec c                                         ; $6fd1: $0d
    ld l, [hl]                                    ; $6fd2: $6e
    ld d, c                                       ; $6fd3: $51
    ld h, c                                       ; $6fd4: $61
    ld l, l                                       ; $6fd5: $6d
    rst $20                                       ; $6fd6: $e7
    rlca                                          ; $6fd7: $07
    jr z, jr_002_7044                             ; $6fd8: $28 $6a

    nop                                           ; $6fda: $00
    ld a, l                                       ; $6fdb: $7d
    rst $20                                       ; $6fdc: $e7
    rlca                                          ; $6fdd: $07
    ld l, h                                       ; $6fde: $6c
    ld l, d                                       ; $6fdf: $6a
    rst $20                                       ; $6fe0: $e7
    rlca                                          ; $6fe1: $07
    ld b, l                                       ; $6fe2: $45
    ld [hl], d                                    ; $6fe3: $72
    nop                                           ; $6fe4: $00
    ld e, $e7                                     ; $6fe5: $1e $e7
    rlca                                          ; $6fe7: $07
    dec h                                         ; $6fe8: $25
    ld l, h                                       ; $6fe9: $6c
    inc c                                         ; $6fea: $0c
    ld c, $76                                     ; $6feb: $0e $76
    ld d, a                                       ; $6fed: $57
    nop                                           ; $6fee: $00
    nop                                           ; $6fef: $00

    db $9f, $ed, $a2, $f8, $0c, $2e, $75, $0c, $3e, $75, $0c, $53, $75, $57, $00, $00

    sbc a                                         ; $7000: $9f
    db $ed                                        ; $7001: $ed
    and d                                         ; $7002: $a2
    ld hl, sp+$0c                                 ; $7003: $f8 $0c
    ld l, $75                                     ; $7005: $2e $75
    inc c                                         ; $7007: $0c
    ld a, $75                                     ; $7008: $3e $75
    inc c                                         ; $700a: $0c
    ld d, e                                       ; $700b: $53
    ld [hl], l                                    ; $700c: $75
    ld d, a                                       ; $700d: $57
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
    rst $20                                       ; $7010: $e7
    rlca                                          ; $7011: $07
    db $ed                                        ; $7012: $ed
    ld l, e                                       ; $7013: $6b
    inc c                                         ; $7014: $0c
    ld c, $76                                     ; $7015: $0e $76
    nop                                           ; $7017: $00
    inc d                                         ; $7018: $14
    rst $20                                       ; $7019: $e7
    rlca                                          ; $701a: $07
    ld e, b                                       ; $701b: $58
    ld l, c                                       ; $701c: $69
    ld a, [hl+]                                   ; $701d: $2a
    ld b, d                                       ; $701e: $42
    ld [hl], b                                    ; $701f: $70
    rst $20                                       ; $7020: $e7
    rlca                                          ; $7021: $07
    ld b, $6e                                     ; $7022: $06 $6e
    sbc a                                         ; $7024: $9f
    inc de                                        ; $7025: $13
    and d                                         ; $7026: $a2
    ldh a, [$66]                                  ; $7027: $f0 $66
    ld c, [hl]                                    ; $7029: $4e
    ld de, $2af6                                  ; $702a: $11 $f6 $2a
    add hl, sp                                    ; $702d: $39
    ld a, [hl]                                    ; $702e: $7e
    nop                                           ; $702f: $00
    rlca                                          ; $7030: $07
    ld c, [hl]                                    ; $7031: $4e
    ld de, $2af6                                  ; $7032: $11 $f6 $2a
    add hl, sp                                    ; $7035: $39
    ld a, [hl]                                    ; $7036: $7e
    nop                                           ; $7037: $00
    rlca                                          ; $7038: $07
    ld c, [hl]                                    ; $7039: $4e
    ld de, $2af6                                  ; $703a: $11 $f6 $2a
    add hl, sp                                    ; $703d: $39
    ld a, [hl]                                    ; $703e: $7e
    jr jr_002_709d                                ; $703f: $18 $5c

    ld [hl], b                                    ; $7041: $70
    sbc a                                         ; $7042: $9f
    db $ed                                        ; $7043: $ed

jr_002_7044:
    and d                                         ; $7044: $a2
    ld hl, sp+$4e                                 ; $7045: $f8 $4e
    ld de, $01f6                                  ; $7047: $11 $f6 $01
    add hl, sp                                    ; $704a: $39
    ld a, [hl]                                    ; $704b: $7e
    nop                                           ; $704c: $00
    ld a, [bc]                                    ; $704d: $0a
    ld c, [hl]                                    ; $704e: $4e
    ld de, $01f6                                  ; $704f: $11 $f6 $01
    add hl, sp                                    ; $7052: $39
    ld a, [hl]                                    ; $7053: $7e
    nop                                           ; $7054: $00
    ld a, [bc]                                    ; $7055: $0a
    ld c, [hl]                                    ; $7056: $4e
    ld de, $01f6                                  ; $7057: $11 $f6 $01
    add hl, sp                                    ; $705a: $39
    ld a, [hl]                                    ; $705b: $7e
    nop                                           ; $705c: $00
    ld a, [bc]                                    ; $705d: $0a
    ld h, e                                       ; $705e: $63
    inc c                                         ; $705f: $0c
    ld a, $75                                     ; $7060: $3e $75
    rst $20                                       ; $7062: $e7
    rlca                                          ; $7063: $07
    dec c                                         ; $7064: $0d
    ld l, [hl]                                    ; $7065: $6e
    rst $20                                       ; $7066: $e7
    rlca                                          ; $7067: $07
    ld b, l                                       ; $7068: $45
    ld [hl], d                                    ; $7069: $72
    nop                                           ; $706a: $00
    ld e, $e7                                     ; $706b: $1e $e7
    rlca                                          ; $706d: $07
    dec h                                         ; $706e: $25
    ld l, h                                       ; $706f: $6c
    inc c                                         ; $7070: $0c
    ld c, $76                                     ; $7071: $0e $76
    ld d, a                                       ; $7073: $57
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    rst $20                                       ; $7076: $e7
    rlca                                          ; $7077: $07
    ld e, b                                       ; $7078: $58
    ld l, c                                       ; $7079: $69
    ld a, [hl+]                                   ; $707a: $2a
    add h                                         ; $707b: $84
    ld [hl], b                                    ; $707c: $70
    sbc a                                         ; $707d: $9f
    inc de                                        ; $707e: $13
    and d                                         ; $707f: $a2
    ldh a, [rNR23]                                ; $7080: $f0 $18
    adc b                                         ; $7082: $88
    ld [hl], b                                    ; $7083: $70
    sbc a                                         ; $7084: $9f
    db $ed                                        ; $7085: $ed
    and d                                         ; $7086: $a2
    ld hl, sp+$63                                 ; $7087: $f8 $63
    inc c                                         ; $7089: $0c
    ld a, $75                                     ; $708a: $3e $75
    ld d, a                                       ; $708c: $57
    nop                                           ; $708d: $00
    nop                                           ; $708e: $00
    sbc a                                         ; $708f: $9f
    db $ed                                        ; $7090: $ed
    and d                                         ; $7091: $a2
    ld hl, sp+$63                                 ; $7092: $f8 $63
    rst $20                                       ; $7094: $e7
    rlca                                          ; $7095: $07
    or l                                          ; $7096: $b5
    ld l, l                                       ; $7097: $6d
    nop                                           ; $7098: $00
    inc d                                         ; $7099: $14
    rst $20                                       ; $709a: $e7
    rlca                                          ; $709b: $07
    dec c                                         ; $709c: $0d

jr_002_709d:
    ld l, [hl]                                    ; $709d: $6e
    nop                                           ; $709e: $00
    ld a, [bc]                                    ; $709f: $0a
    inc c                                         ; $70a0: $0c
    ld c, b                                       ; $70a1: $48
    ld [hl], l                                    ; $70a2: $75
    inc bc                                        ; $70a3: $03
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    ld b, $00                                     ; $70a6: $06 $00
    nop                                           ; $70a8: $00
    rst $20                                       ; $70a9: $e7
    rlca                                          ; $70aa: $07
    dec e                                         ; $70ab: $1d
    ld l, [hl]                                    ; $70ac: $6e
    ld [$07e7], a                                 ; $70ad: $ea $e7 $07
    ld b, l                                       ; $70b0: $45
    ld [hl], d                                    ; $70b1: $72
    ld d, a                                       ; $70b2: $57
    nop                                           ; $70b3: $00
    nop                                           ; $70b4: $00
    sbc a                                         ; $70b5: $9f
    db $ed                                        ; $70b6: $ed
    and d                                         ; $70b7: $a2
    ld hl, sp+$0c                                 ; $70b8: $f8 $0c
    dec [hl]                                      ; $70ba: $35
    ld [hl], l                                    ; $70bb: $75
    inc c                                         ; $70bc: $0c
    ld c, b                                       ; $70bd: $48
    ld [hl], l                                    ; $70be: $75
    inc c                                         ; $70bf: $0c
    ld d, e                                       ; $70c0: $53
    ld [hl], l                                    ; $70c1: $75
    ld d, a                                       ; $70c2: $57
    nop                                           ; $70c3: $00
    nop                                           ; $70c4: $00

jr_002_70c5:
    rst $20                                       ; $70c5: $e7
    rlca                                          ; $70c6: $07
    db $ed                                        ; $70c7: $ed
    ld l, e                                       ; $70c8: $6b
    inc c                                         ; $70c9: $0c
    ld c, $76                                     ; $70ca: $0e $76
    nop                                           ; $70cc: $00
    inc d                                         ; $70cd: $14
    rst $20                                       ; $70ce: $e7
    rlca                                          ; $70cf: $07
    ld e, b                                       ; $70d0: $58
    ld l, c                                       ; $70d1: $69
    ld a, [hl+]                                   ; $70d2: $2a
    pop hl                                        ; $70d3: $e1
    ld [hl], b                                    ; $70d4: $70
    rst $20                                       ; $70d5: $e7
    rlca                                          ; $70d6: $07
    ld b, $6e                                     ; $70d7: $06 $6e
    sbc a                                         ; $70d9: $9f
    inc de                                        ; $70da: $13
    and d                                         ; $70db: $a2
    ldh a, [$66]                                  ; $70dc: $f0 $66
    jr jr_002_70c5                                ; $70de: $18 $e5

    ld [hl], b                                    ; $70e0: $70
    sbc a                                         ; $70e1: $9f
    db $ed                                        ; $70e2: $ed
    and d                                         ; $70e3: $a2
    ld hl, sp+$0c                                 ; $70e4: $f8 $0c
    dec [hl]                                      ; $70e6: $35
    ld [hl], l                                    ; $70e7: $75
    ld h, b                                       ; $70e8: $60
    nop                                           ; $70e9: $00
    ld a, [bc]                                    ; $70ea: $0a
    rst $20                                       ; $70eb: $e7
    rlca                                          ; $70ec: $07
    jp c, Jump_000_2766                           ; $70ed: $da $66 $27

    inc b                                         ; $70f0: $04
    ld [hl], c                                    ; $70f1: $71
    inc c                                         ; $70f2: $0c
    ld c, b                                       ; $70f3: $48
    ld [hl], l                                    ; $70f4: $75
    inc c                                         ; $70f5: $0c
    ld h, a                                       ; $70f6: $67
    ld [hl], l                                    ; $70f7: $75
    nop                                           ; $70f8: $00
    ld a, [bc]                                    ; $70f9: $0a
    rst $20                                       ; $70fa: $e7
    rlca                                          ; $70fb: $07
    dec h                                         ; $70fc: $25
    ld l, h                                       ; $70fd: $6c
    inc c                                         ; $70fe: $0c
    ld c, $76                                     ; $70ff: $0e $76
    ld d, a                                       ; $7101: $57
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    rst $20                                       ; $7104: $e7
    rlca                                          ; $7105: $07
    jp nz, $e766                                  ; $7106: $c2 $66 $e7

    dec b                                         ; $7109: $05
    ld e, [hl]                                    ; $710a: $5e
    ld d, c                                       ; $710b: $51
    ld c, [hl]                                    ; $710c: $4e
    inc d                                         ; $710d: $14
    or $01                                        ; $710e: $f6 $01
    add hl, sp                                    ; $7110: $39
    ld a, [hl]                                    ; $7111: $7e
    rst $20                                       ; $7112: $e7
    rlca                                          ; $7113: $07
    ret z                                         ; $7114: $c8

    ld h, [hl]                                    ; $7115: $66
    rst $20                                       ; $7116: $e7
    dec b                                         ; $7117: $05
    ld e, [hl]                                    ; $7118: $5e
    ld d, c                                       ; $7119: $51
    ld c, [hl]                                    ; $711a: $4e
    inc d                                         ; $711b: $14
    or $01                                        ; $711c: $f6 $01
    add hl, sp                                    ; $711e: $39
    ld a, [hl]                                    ; $711f: $7e
    rst $20                                       ; $7120: $e7
    rlca                                          ; $7121: $07
    adc $66                                       ; $7122: $ce $66
    rst $20                                       ; $7124: $e7
    dec b                                         ; $7125: $05
    ld e, [hl]                                    ; $7126: $5e
    ld d, c                                       ; $7127: $51
    ld c, [hl]                                    ; $7128: $4e
    inc d                                         ; $7129: $14
    or $01                                        ; $712a: $f6 $01
    add hl, sp                                    ; $712c: $39
    ld a, [hl]                                    ; $712d: $7e
    nop                                           ; $712e: $00
    ld d, b                                       ; $712f: $50
    rst $20                                       ; $7130: $e7
    rlca                                          ; $7131: $07
    call nc, $e766                                ; $7132: $d4 $66 $e7
    rlca                                          ; $7135: $07
    ld b, l                                       ; $7136: $45
    ld [hl], d                                    ; $7137: $72
    nop                                           ; $7138: $00
    ld a, [bc]                                    ; $7139: $0a
    rst $20                                       ; $713a: $e7
    rlca                                          ; $713b: $07
    dec h                                         ; $713c: $25
    ld l, h                                       ; $713d: $6c
    inc c                                         ; $713e: $0c
    ld c, $76                                     ; $713f: $0e $76
    ld d, a                                       ; $7141: $57
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    rst $20                                       ; $7144: $e7
    rlca                                          ; $7145: $07
    jr nc, jr_002_71af                            ; $7146: $30 $67

    daa                                           ; $7148: $27
    ld d, e                                       ; $7149: $53
    ld [hl], c                                    ; $714a: $71
    ld h, e                                       ; $714b: $63
    rst $20                                       ; $714c: $e7
    rlca                                          ; $714d: $07
    dec e                                         ; $714e: $1d
    ld l, [hl]                                    ; $714f: $6e
    inc c                                         ; $7150: $0c
    rst $18                                       ; $7151: $df
    ld [hl], l                                    ; $7152: $75
    ld d, a                                       ; $7153: $57
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    sbc a                                         ; $7156: $9f
    db $ed                                        ; $7157: $ed
    and d                                         ; $7158: $a2
    ld hl, sp+$0c                                 ; $7159: $f8 $0c
    ld l, $75                                     ; $715b: $2e $75
    inc c                                         ; $715d: $0c
    ld c, b                                       ; $715e: $48
    ld [hl], l                                    ; $715f: $75
    ld c, b                                       ; $7160: $48
    push af                                       ; $7161: $f5
    ld c, e                                       ; $7162: $4b
    nop                                           ; $7163: $00
    ld c, [hl]                                    ; $7164: $4e
    ld [de], a                                    ; $7165: $12
    or $01                                        ; $7166: $f6 $01
    add hl, sp                                    ; $7168: $39
    ld a, [hl]                                    ; $7169: $7e
    ld c, b                                       ; $716a: $48
    dec bc                                        ; $716b: $0b
    ld c, e                                       ; $716c: $4b
    nop                                           ; $716d: $00
    ld c, [hl]                                    ; $716e: $4e
    ld [de], a                                    ; $716f: $12
    or $01                                        ; $7170: $f6 $01
    add hl, sp                                    ; $7172: $39
    ld a, [hl]                                    ; $7173: $7e
    ld c, b                                       ; $7174: $48
    nop                                           ; $7175: $00
    ld c, e                                       ; $7176: $4b
    ld b, $4e                                     ; $7177: $06 $4e
    ld [de], a                                    ; $7179: $12
    or $01                                        ; $717a: $f6 $01
    add hl, sp                                    ; $717c: $39
    ld a, [hl]                                    ; $717d: $7e
    and d                                         ; $717e: $a2
    ld a, [$7d0c]                                 ; $717f: $fa $0c $7d
    ld [hl], l                                    ; $7182: $75
    ld d, a                                       ; $7183: $57
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    rst $20                                       ; $7186: $e7
    rlca                                          ; $7187: $07
    dec e                                         ; $7188: $1d
    ld l, [hl]                                    ; $7189: $6e
    inc c                                         ; $718a: $0c

jr_002_718b:
    sub e                                         ; $718b: $93
    ld [hl], l                                    ; $718c: $75
    ld d, a                                       ; $718d: $57
    nop                                           ; $718e: $00
    nop                                           ; $718f: $00
    sbc a                                         ; $7190: $9f
    db $ed                                        ; $7191: $ed
    and d                                         ; $7192: $a2
    ld hl, sp+$0c                                 ; $7193: $f8 $0c
    ld l, $75                                     ; $7195: $2e $75
    inc c                                         ; $7197: $0c
    ld a, $75                                     ; $7198: $3e $75
    inc c                                         ; $719a: $0c
    ld a, l                                       ; $719b: $7d
    ld [hl], l                                    ; $719c: $75
    ld d, a                                       ; $719d: $57
    nop                                           ; $719e: $00
    nop                                           ; $719f: $00
    rst $20                                       ; $71a0: $e7
    rlca                                          ; $71a1: $07
    db $ed                                        ; $71a2: $ed
    ld l, e                                       ; $71a3: $6b
    inc c                                         ; $71a4: $0c
    ld c, $76                                     ; $71a5: $0e $76
    nop                                           ; $71a7: $00
    inc d                                         ; $71a8: $14
    rst $20                                       ; $71a9: $e7
    rlca                                          ; $71aa: $07
    ld e, b                                       ; $71ab: $58
    ld l, c                                       ; $71ac: $69
    ld a, [hl+]                                   ; $71ad: $2a
    cp a                                          ; $71ae: $bf

jr_002_71af:
    ld [hl], c                                    ; $71af: $71
    rst $20                                       ; $71b0: $e7
    rlca                                          ; $71b1: $07
    ld b, $6e                                     ; $71b2: $06 $6e
    sbc a                                         ; $71b4: $9f
    inc de                                        ; $71b5: $13
    and d                                         ; $71b6: $a2
    ldh a, [$66]                                  ; $71b7: $f0 $66
    inc c                                         ; $71b9: $0c
    ld l, $75                                     ; $71ba: $2e $75
    jr jr_002_718b                                ; $71bc: $18 $cd

    ld [hl], c                                    ; $71be: $71
    sbc a                                         ; $71bf: $9f
    db $ed                                        ; $71c0: $ed
    and d                                         ; $71c1: $a2
    ld hl, sp+$0c                                 ; $71c2: $f8 $0c
    ld l, $75                                     ; $71c4: $2e $75
    rst $20                                       ; $71c6: $e7
    rlca                                          ; $71c7: $07
    jp c, Jump_000_2766                           ; $71c8: $da $66 $27

    rst $18                                       ; $71cb: $df
    ld [hl], c                                    ; $71cc: $71
    inc c                                         ; $71cd: $0c
    ld a, $75                                     ; $71ce: $3e $75
    inc c                                         ; $71d0: $0c
    ld a, l                                       ; $71d1: $7d
    ld [hl], l                                    ; $71d2: $75
    nop                                           ; $71d3: $00
    ld a, [bc]                                    ; $71d4: $0a
    rst $20                                       ; $71d5: $e7
    rlca                                          ; $71d6: $07
    dec h                                         ; $71d7: $25
    ld l, h                                       ; $71d8: $6c
    inc c                                         ; $71d9: $0c
    ld c, $76                                     ; $71da: $0e $76
    ld d, a                                       ; $71dc: $57
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    ld h, b                                       ; $71df: $60
    ld c, [hl]                                    ; $71e0: $4e
    dec d                                         ; $71e1: $15
    or $01                                        ; $71e2: $f6 $01
    add hl, sp                                    ; $71e4: $39
    ld a, [hl]                                    ; $71e5: $7e
    ld c, [hl]                                    ; $71e6: $4e
    dec d                                         ; $71e7: $15
    or $02                                        ; $71e8: $f6 $02
    add hl, sp                                    ; $71ea: $39
    ld a, [hl]                                    ; $71eb: $7e
    ld c, [hl]                                    ; $71ec: $4e
    dec d                                         ; $71ed: $15
    or $03                                        ; $71ee: $f6 $03
    add hl, sp                                    ; $71f0: $39
    ld a, [hl]                                    ; $71f1: $7e
    nop                                           ; $71f2: $00
    ld l, h                                       ; $71f3: $6c
    rst $20                                       ; $71f4: $e7
    rlca                                          ; $71f5: $07
    call nc, $e766                                ; $71f6: $d4 $66 $e7
    rlca                                          ; $71f9: $07
    ld b, l                                       ; $71fa: $45
    ld [hl], d                                    ; $71fb: $72
    nop                                           ; $71fc: $00
    ld a, [bc]                                    ; $71fd: $0a
    rst $20                                       ; $71fe: $e7
    rlca                                          ; $71ff: $07
    dec h                                         ; $7200: $25
    ld l, h                                       ; $7201: $6c
    inc c                                         ; $7202: $0c
    ld c, $76                                     ; $7203: $0e $76
    ld d, a                                       ; $7205: $57
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    jp nc, RST_00                                 ; $7208: $d2 $00 $00

jr_002_720b:
    ld de, $1872                                  ; $720b: $11 $72 $18
    ld [hl], d                                    ; $720e: $72
    rra                                           ; $720f: $1f
    ld [hl], d                                    ; $7210: $72
    rst $20                                       ; $7211: $e7
    rlca                                          ; $7212: $07
    jp nz, $1866                                  ; $7213: $c2 $66 $18

    inc hl                                        ; $7216: $23
    ld [hl], d                                    ; $7217: $72
    rst $20                                       ; $7218: $e7
    rlca                                          ; $7219: $07
    ret z                                         ; $721a: $c8

    ld h, [hl]                                    ; $721b: $66
    jr jr_002_7241                                ; $721c: $18 $23

    ld [hl], d                                    ; $721e: $72
    rst $20                                       ; $721f: $e7
    rlca                                          ; $7220: $07
    adc $66                                       ; $7221: $ce $66
    rst $20                                       ; $7223: $e7
    rlca                                          ; $7224: $07
    jr nc, jr_002_728e                            ; $7225: $30 $67

    daa                                           ; $7227: $27
    ccf                                           ; $7228: $3f
    ld [hl], d                                    ; $7229: $72
    sbc a                                         ; $722a: $9f
    db $ed                                        ; $722b: $ed
    and d                                         ; $722c: $a2
    ld hl, sp+$63                                 ; $722d: $f8 $63
    inc c                                         ; $722f: $0c
    ld a, $75                                     ; $7230: $3e $75
    inc bc                                        ; $7232: $03
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    ld b, $00                                     ; $7235: $06 $00
    nop                                           ; $7237: $00
    rst $20                                       ; $7238: $e7
    rlca                                          ; $7239: $07
    dec e                                         ; $723a: $1d
    ld l, [hl]                                    ; $723b: $6e
    inc c                                         ; $723c: $0c
    sub e                                         ; $723d: $93
    ld [hl], l                                    ; $723e: $75
    ld d, a                                       ; $723f: $57
    nop                                           ; $7240: $00

jr_002_7241:
    nop                                           ; $7241: $00
    rst $20                                       ; $7242: $e7
    rlca                                          ; $7243: $07
    ld e, b                                       ; $7244: $58
    ld l, c                                       ; $7245: $69
    ld a, [hl+]                                   ; $7246: $2a
    ld d, a                                       ; $7247: $57
    ld [hl], d                                    ; $7248: $72
    rst $20                                       ; $7249: $e7
    rlca                                          ; $724a: $07
    ld b, $6e                                     ; $724b: $06 $6e
    sbc a                                         ; $724d: $9f
    inc de                                        ; $724e: $13
    and d                                         ; $724f: $a2
    ldh a, [$66]                                  ; $7250: $f0 $66
    nop                                           ; $7252: $00
    rrca                                          ; $7253: $0f
    jr jr_002_72b1                                ; $7254: $18 $5b

    ld [hl], d                                    ; $7256: $72
    sbc a                                         ; $7257: $9f
    db $ed                                        ; $7258: $ed
    and d                                         ; $7259: $a2
    ld hl, sp+$0c                                 ; $725a: $f8 $0c
    ld l, $75                                     ; $725c: $2e $75
    inc c                                         ; $725e: $0c
    ld c, b                                       ; $725f: $48
    ld [hl], l                                    ; $7260: $75
    rst $20                                       ; $7261: $e7
    rlca                                          ; $7262: $07
    ld h, d                                       ; $7263: $62
    ld l, c                                       ; $7264: $69
    rst $20                                       ; $7265: $e7
    rlca                                          ; $7266: $07
    dec e                                         ; $7267: $1d
    ld l, [hl]                                    ; $7268: $6e
    rst $20                                       ; $7269: $e7
    rlca                                          ; $726a: $07
    inc [hl]                                      ; $726b: $34
    ld l, e                                       ; $726c: $6b
    jr nc, jr_002_720b                            ; $726d: $30 $9c

    ld [hl], d                                    ; $726f: $72
    rst $20                                       ; $7270: $e7
    rlca                                          ; $7271: $07
    inc bc                                        ; $7272: $03
    ld l, e                                       ; $7273: $6b
    rst $20                                       ; $7274: $e7
    rlca                                          ; $7275: $07
    dec c                                         ; $7276: $0d
    ld l, [hl]                                    ; $7277: $6e
    inc c                                         ; $7278: $0c
    sub e                                         ; $7279: $93
    ld [hl], l                                    ; $727a: $75
    nop                                           ; $727b: $00
    db $10                                        ; $727c: $10
    ld h, b                                       ; $727d: $60
    xor [hl]                                      ; $727e: $ae
    sub b                                         ; $727f: $90
    ld bc, $07e7                                  ; $7280: $01 $e7 $07
    ld d, h                                       ; $7283: $54
    ld l, e                                       ; $7284: $6b
    nop                                           ; $7285: $00
    ld a, [bc]                                    ; $7286: $0a
    rst $20                                       ; $7287: $e7
    rlca                                          ; $7288: $07
    ld l, h                                       ; $7289: $6c
    ld l, d                                       ; $728a: $6a
    rst $20                                       ; $728b: $e7
    rlca                                          ; $728c: $07
    ld h, c                                       ; $728d: $61

jr_002_728e:
    ld l, h                                       ; $728e: $6c
    nop                                           ; $728f: $00
    ld [bc], a                                    ; $7290: $02
    rst $20                                       ; $7291: $e7
    rlca                                          ; $7292: $07
    ld [hl], h                                    ; $7293: $74
    ld l, h                                       ; $7294: $6c
    rst $20                                       ; $7295: $e7
    rlca                                          ; $7296: $07
    ld b, l                                       ; $7297: $45
    ld [hl], d                                    ; $7298: $72
    ld d, a                                       ; $7299: $57
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    rst $20                                       ; $729c: $e7
    rlca                                          ; $729d: $07
    ld a, h                                       ; $729e: $7c
    ld h, a                                       ; $729f: $67
    rst $20                                       ; $72a0: $e7
    rlca                                          ; $72a1: $07
    ei                                            ; $72a2: $fb
    ld [hl], c                                    ; $72a3: $71
    rst $20                                       ; $72a4: $e7
    rlca                                          ; $72a5: $07
    dec c                                         ; $72a6: $0d
    ld l, [hl]                                    ; $72a7: $6e
    inc c                                         ; $72a8: $0c
    sub e                                         ; $72a9: $93
    ld [hl], l                                    ; $72aa: $75
    nop                                           ; $72ab: $00
    db $10                                        ; $72ac: $10
    rst $20                                       ; $72ad: $e7
    rlca                                          ; $72ae: $07
    add d                                         ; $72af: $82
    ld h, a                                       ; $72b0: $67

jr_002_72b1:
    rst $20                                       ; $72b1: $e7
    rlca                                          ; $72b2: $07
    add a                                         ; $72b3: $87
    ld h, a                                       ; $72b4: $67
    ld d, a                                       ; $72b5: $57
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    sbc a                                         ; $72b8: $9f
    db $ed                                        ; $72b9: $ed
    and d                                         ; $72ba: $a2
    ld hl, sp+$0c                                 ; $72bb: $f8 $0c
    ld l, $75                                     ; $72bd: $2e $75
    inc c                                         ; $72bf: $0c
    ld c, b                                       ; $72c0: $48
    ld [hl], l                                    ; $72c1: $75
    inc bc                                        ; $72c2: $03
    nop                                           ; $72c3: $00
    nop                                           ; $72c4: $00
    ld b, $00                                     ; $72c5: $06 $00
    nop                                           ; $72c7: $00
    rst $20                                       ; $72c8: $e7
    rlca                                          ; $72c9: $07
    ld a, h                                       ; $72ca: $7c
    ld h, a                                       ; $72cb: $67
    rst $20                                       ; $72cc: $e7
    rlca                                          ; $72cd: $07
    ei                                            ; $72ce: $fb
    ld [hl], c                                    ; $72cf: $71
    rst $20                                       ; $72d0: $e7
    rlca                                          ; $72d1: $07
    dec e                                         ; $72d2: $1d
    ld l, [hl]                                    ; $72d3: $6e
    rst $20                                       ; $72d4: $e7
    rlca                                          ; $72d5: $07
    or b                                          ; $72d6: $b0
    ld h, a                                       ; $72d7: $67
    rst $20                                       ; $72d8: $e7
    rlca                                          ; $72d9: $07
    dec c                                         ; $72da: $0d
    ld l, [hl]                                    ; $72db: $6e
    inc c                                         ; $72dc: $0c
    sub e                                         ; $72dd: $93
    ld [hl], l                                    ; $72de: $75
    rst $20                                       ; $72df: $e7
    rlca                                          ; $72e0: $07
    jp nz, $e767                                  ; $72e1: $c2 $67 $e7

    rlca                                          ; $72e4: $07
    ld c, c                                       ; $72e5: $49
    ld l, b                                       ; $72e6: $68
    rst $20                                       ; $72e7: $e7
    rlca                                          ; $72e8: $07
    add a                                         ; $72e9: $87
    ld l, b                                       ; $72ea: $68
    rst $20                                       ; $72eb: $e7
    rlca                                          ; $72ec: $07
    add d                                         ; $72ed: $82
    ld h, a                                       ; $72ee: $67
    rst $20                                       ; $72ef: $e7
    rlca                                          ; $72f0: $07
    add a                                         ; $72f1: $87
    ld h, a                                       ; $72f2: $67
    ld d, a                                       ; $72f3: $57
    nop                                           ; $72f4: $00
    nop                                           ; $72f5: $00
    sbc a                                         ; $72f6: $9f
    db $ed                                        ; $72f7: $ed
    and d                                         ; $72f8: $a2
    ld hl, sp+$0c                                 ; $72f9: $f8 $0c
    ld l, $75                                     ; $72fb: $2e $75
    inc c                                         ; $72fd: $0c
    ld c, b                                       ; $72fe: $48
    ld [hl], l                                    ; $72ff: $75
    inc bc                                        ; $7300: $03
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    ld b, $00                                     ; $7303: $06 $00
    nop                                           ; $7305: $00
    rst $20                                       ; $7306: $e7
    rlca                                          ; $7307: $07
    ld a, h                                       ; $7308: $7c
    ld h, a                                       ; $7309: $67
    rst $20                                       ; $730a: $e7
    rlca                                          ; $730b: $07
    ei                                            ; $730c: $fb
    ld [hl], c                                    ; $730d: $71
    rst $20                                       ; $730e: $e7
    rlca                                          ; $730f: $07
    dec e                                         ; $7310: $1d
    ld l, [hl]                                    ; $7311: $6e
    rst $20                                       ; $7312: $e7
    rlca                                          ; $7313: $07
    or b                                          ; $7314: $b0
    ld h, a                                       ; $7315: $67
    inc c                                         ; $7316: $0c
    sub e                                         ; $7317: $93
    ld [hl], l                                    ; $7318: $75
    rst $20                                       ; $7319: $e7
    rlca                                          ; $731a: $07
    dec c                                         ; $731b: $0d
    ld l, [hl]                                    ; $731c: $6e
    rst $20                                       ; $731d: $e7
    rlca                                          ; $731e: $07
    inc c                                         ; $731f: $0c
    ld l, b                                       ; $7320: $68
    rst $20                                       ; $7321: $e7
    rlca                                          ; $7322: $07
    ld c, c                                       ; $7323: $49
    ld l, b                                       ; $7324: $68
    rst $20                                       ; $7325: $e7
    rlca                                          ; $7326: $07
    add d                                         ; $7327: $82
    ld h, a                                       ; $7328: $67
    rst $20                                       ; $7329: $e7
    rlca                                          ; $732a: $07
    add a                                         ; $732b: $87
    ld h, a                                       ; $732c: $67
    ld d, a                                       ; $732d: $57
    nop                                           ; $732e: $00
    nop                                           ; $732f: $00
    sbc a                                         ; $7330: $9f
    db $ed                                        ; $7331: $ed
    and d                                         ; $7332: $a2
    ld hl, sp+$0c                                 ; $7333: $f8 $0c
    ld l, $75                                     ; $7335: $2e $75
    inc c                                         ; $7337: $0c
    ld c, b                                       ; $7338: $48
    ld [hl], l                                    ; $7339: $75
    inc bc                                        ; $733a: $03
    nop                                           ; $733b: $00
    nop                                           ; $733c: $00
    ld b, $00                                     ; $733d: $06 $00
    nop                                           ; $733f: $00
    rst $20                                       ; $7340: $e7
    rlca                                          ; $7341: $07
    ld a, h                                       ; $7342: $7c
    ld h, a                                       ; $7343: $67
    rst $20                                       ; $7344: $e7
    rlca                                          ; $7345: $07
    ei                                            ; $7346: $fb
    ld [hl], c                                    ; $7347: $71
    rst $20                                       ; $7348: $e7
    rlca                                          ; $7349: $07
    dec c                                         ; $734a: $0d
    ld l, [hl]                                    ; $734b: $6e
    rst $20                                       ; $734c: $e7
    rlca                                          ; $734d: $07
    jp nz, $e766                                  ; $734e: $c2 $66 $e7

    rlca                                          ; $7351: $07
    jr nc, jr_002_73bb                            ; $7352: $30 $67

    daa                                           ; $7354: $27
    ld h, c                                       ; $7355: $61
    ld [hl], e                                    ; $7356: $73
    rst $20                                       ; $7357: $e7
    dec b                                         ; $7358: $05
    ld e, [hl]                                    ; $7359: $5e
    ld d, c                                       ; $735a: $51
    ld c, [hl]                                    ; $735b: $4e
    inc de                                        ; $735c: $13
    or $01                                        ; $735d: $f6 $01
    add hl, sp                                    ; $735f: $39
    ld a, [hl]                                    ; $7360: $7e
    rst $20                                       ; $7361: $e7
    rlca                                          ; $7362: $07
    ret z                                         ; $7363: $c8

    ld h, [hl]                                    ; $7364: $66
    rst $20                                       ; $7365: $e7
    rlca                                          ; $7366: $07
    jr nc, jr_002_73d0                            ; $7367: $30 $67

    daa                                           ; $7369: $27
    halt                                          ; $736a: $76
    ld [hl], e                                    ; $736b: $73
    rst $20                                       ; $736c: $e7
    dec b                                         ; $736d: $05
    ld e, [hl]                                    ; $736e: $5e
    ld d, c                                       ; $736f: $51
    ld c, [hl]                                    ; $7370: $4e
    inc de                                        ; $7371: $13
    or $01                                        ; $7372: $f6 $01
    add hl, sp                                    ; $7374: $39
    ld a, [hl]                                    ; $7375: $7e
    rst $20                                       ; $7376: $e7
    rlca                                          ; $7377: $07
    adc $66                                       ; $7378: $ce $66
    rst $20                                       ; $737a: $e7
    rlca                                          ; $737b: $07
    jr nc, jr_002_73e5                            ; $737c: $30 $67

    daa                                           ; $737e: $27
    adc e                                         ; $737f: $8b
    ld [hl], e                                    ; $7380: $73
    rst $20                                       ; $7381: $e7
    dec b                                         ; $7382: $05
    ld e, [hl]                                    ; $7383: $5e
    ld d, c                                       ; $7384: $51
    ld c, [hl]                                    ; $7385: $4e
    inc de                                        ; $7386: $13
    or $01                                        ; $7387: $f6 $01
    add hl, sp                                    ; $7389: $39
    ld a, [hl]                                    ; $738a: $7e
    nop                                           ; $738b: $00
    inc hl                                        ; $738c: $23
    rst $20                                       ; $738d: $e7
    rlca                                          ; $738e: $07
    jp nz, $e766                                  ; $738f: $c2 $66 $e7

    rlca                                          ; $7392: $07
    jr nc, @+$69                                  ; $7393: $30 $67

    daa                                           ; $7395: $27
    and h                                         ; $7396: $a4
    ld [hl], e                                    ; $7397: $73
    rst $20                                       ; $7398: $e7
    rlca                                          ; $7399: $07
    jp nz, $e767                                  ; $739a: $c2 $67 $e7

    rlca                                          ; $739d: $07
    ld c, c                                       ; $739e: $49
    ld l, b                                       ; $739f: $68
    rst $20                                       ; $73a0: $e7
    rlca                                          ; $73a1: $07
    add a                                         ; $73a2: $87
    ld l, b                                       ; $73a3: $68
    rst $20                                       ; $73a4: $e7
    rlca                                          ; $73a5: $07
    ret z                                         ; $73a6: $c8

    ld h, [hl]                                    ; $73a7: $66
    rst $20                                       ; $73a8: $e7
    rlca                                          ; $73a9: $07
    jr nc, jr_002_7413                            ; $73aa: $30 $67

    daa                                           ; $73ac: $27
    cp e                                          ; $73ad: $bb
    ld [hl], e                                    ; $73ae: $73
    rst $20                                       ; $73af: $e7
    rlca                                          ; $73b0: $07
    jp nz, $e767                                  ; $73b1: $c2 $67 $e7

    rlca                                          ; $73b4: $07
    ld c, c                                       ; $73b5: $49
    ld l, b                                       ; $73b6: $68
    rst $20                                       ; $73b7: $e7
    rlca                                          ; $73b8: $07
    add a                                         ; $73b9: $87
    ld l, b                                       ; $73ba: $68

jr_002_73bb:
    rst $20                                       ; $73bb: $e7
    rlca                                          ; $73bc: $07
    adc $66                                       ; $73bd: $ce $66
    rst $20                                       ; $73bf: $e7
    rlca                                          ; $73c0: $07
    jr nc, @+$69                                  ; $73c1: $30 $67

    daa                                           ; $73c3: $27
    jp nc, $e773                                  ; $73c4: $d2 $73 $e7

    rlca                                          ; $73c7: $07
    jp nz, $e767                                  ; $73c8: $c2 $67 $e7

    rlca                                          ; $73cb: $07
    ld c, c                                       ; $73cc: $49
    ld l, b                                       ; $73cd: $68
    rst $20                                       ; $73ce: $e7
    rlca                                          ; $73cf: $07

jr_002_73d0:
    add a                                         ; $73d0: $87
    ld l, b                                       ; $73d1: $68
    rst $20                                       ; $73d2: $e7
    rlca                                          ; $73d3: $07
    add d                                         ; $73d4: $82
    ld h, a                                       ; $73d5: $67
    rst $20                                       ; $73d6: $e7
    rlca                                          ; $73d7: $07
    add a                                         ; $73d8: $87
    ld h, a                                       ; $73d9: $67
    ld d, a                                       ; $73da: $57
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    and d                                         ; $73dd: $a2
    ld [$07e7], sp                                ; $73de: $08 $e7 $07
    dec e                                         ; $73e1: $1d
    ld l, [hl]                                    ; $73e2: $6e
    inc c                                         ; $73e3: $0c
    sub e                                         ; $73e4: $93

jr_002_73e5:
    ld [hl], l                                    ; $73e5: $75
    ld d, a                                       ; $73e6: $57
    nop                                           ; $73e7: $00
    nop                                           ; $73e8: $00
    rst $20                                       ; $73e9: $e7
    rlca                                          ; $73ea: $07
    ld e, b                                       ; $73eb: $58
    ld l, c                                       ; $73ec: $69
    ld a, [hl+]                                   ; $73ed: $2a
    cp $73                                        ; $73ee: $fe $73
    rst $20                                       ; $73f0: $e7
    rlca                                          ; $73f1: $07
    ld b, $6e                                     ; $73f2: $06 $6e
    sbc a                                         ; $73f4: $9f
    inc de                                        ; $73f5: $13
    and d                                         ; $73f6: $a2
    ldh a, [$66]                                  ; $73f7: $f0 $66
    nop                                           ; $73f9: $00
    inc d                                         ; $73fa: $14
    jr jr_002_73ff                                ; $73fb: $18 $02

    ld [hl], h                                    ; $73fd: $74
    sbc a                                         ; $73fe: $9f

jr_002_73ff:
    db $ed                                        ; $73ff: $ed
    and d                                         ; $7400: $a2
    ld hl, sp+$0c                                 ; $7401: $f8 $0c
    ld l, $75                                     ; $7403: $2e $75
    inc c                                         ; $7405: $0c
    ld a, $75                                     ; $7406: $3e $75
    inc bc                                        ; $7408: $03
    nop                                           ; $7409: $00
    nop                                           ; $740a: $00
    ld b, $00                                     ; $740b: $06 $00
    nop                                           ; $740d: $00
    rst $20                                       ; $740e: $e7
    rlca                                          ; $740f: $07
    or b                                          ; $7410: $b0
    ld h, a                                       ; $7411: $67
    rst $20                                       ; $7412: $e7

jr_002_7413:
    rlca                                          ; $7413: $07
    dec e                                         ; $7414: $1d
    ld l, [hl]                                    ; $7415: $6e
    rst $20                                       ; $7416: $e7
    rlca                                          ; $7417: $07
    dec c                                         ; $7418: $0d
    ld l, [hl]                                    ; $7419: $6e
    rst $20                                       ; $741a: $e7
    rlca                                          ; $741b: $07
    ld [c], a                                     ; $741c: $e2
    ld h, [hl]                                    ; $741d: $66
    daa                                           ; $741e: $27
    add hl, hl                                    ; $741f: $29
    ld [hl], h                                    ; $7420: $74
    rst $20                                       ; $7421: $e7
    rlca                                          ; $7422: $07
    nop                                           ; $7423: $00
    ld l, b                                       ; $7424: $68
    rst $20                                       ; $7425: $e7
    inc bc                                        ; $7426: $03
    jr z, jr_002_7481                             ; $7427: $28 $58

    ld [$e70c], a                                 ; $7429: $ea $0c $e7
    ld [hl], h                                    ; $742c: $74
    ld d, a                                       ; $742d: $57
    nop                                           ; $742e: $00
    nop                                           ; $742f: $00
    ld h, b                                       ; $7430: $60

jr_002_7431:
    nop                                           ; $7431: $00
    ld d, $66                                     ; $7432: $16 $66
    sbc a                                         ; $7434: $9f
    inc de                                        ; $7435: $13

jr_002_7436:
    and d                                         ; $7436: $a2
    pop af                                        ; $7437: $f1
    ld h, e                                       ; $7438: $63
    inc c                                         ; $7439: $0c
    ld l, $75                                     ; $743a: $2e $75
    inc c                                         ; $743c: $0c
    ld a, $75                                     ; $743d: $3e $75
    inc bc                                        ; $743f: $03
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    ld b, $00                                     ; $7442: $06 $00
    nop                                           ; $7444: $00
    rst $20                                       ; $7445: $e7
    rlca                                          ; $7446: $07
    dec e                                         ; $7447: $1d
    ld l, [hl]                                    ; $7448: $6e
    ld [$07e7], a                                 ; $7449: $ea $e7 $07
    inc sp                                        ; $744c: $33
    ld [hl], d                                    ; $744d: $72
    ld d, a                                       ; $744e: $57
    nop                                           ; $744f: $00
    nop                                           ; $7450: $00
    ld h, b                                       ; $7451: $60
    nop                                           ; $7452: $00
    ld e, $66                                     ; $7453: $1e $66
    sbc a                                         ; $7455: $9f
    inc de                                        ; $7456: $13
    and d                                         ; $7457: $a2
    ldh a, [$63]                                  ; $7458: $f0 $63
    inc c                                         ; $745a: $0c
    ld l, $75                                     ; $745b: $2e $75

jr_002_745d:
    inc c                                         ; $745d: $0c
    ld a, $75                                     ; $745e: $3e $75
    inc bc                                        ; $7460: $03
    nop                                           ; $7461: $00

jr_002_7462:
    nop                                           ; $7462: $00
    ld b, $00                                     ; $7463: $06 $00
    nop                                           ; $7465: $00
    rst $20                                       ; $7466: $e7
    rlca                                          ; $7467: $07
    dec e                                         ; $7468: $1d
    ld l, [hl]                                    ; $7469: $6e
    ld [$07e7], a                                 ; $746a: $ea $e7 $07
    inc sp                                        ; $746d: $33
    ld [hl], d                                    ; $746e: $72
    ld d, a                                       ; $746f: $57
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    ld h, b                                       ; $7472: $60
    nop                                           ; $7473: $00
    ld [hl], $9f                                  ; $7474: $36 $9f
    inc l                                         ; $7476: $2c
    and d                                         ; $7477: $a2
    ld hl, sp+$63                                 ; $7478: $f8 $63
    inc c                                         ; $747a: $0c
    ld l, $75                                     ; $747b: $2e $75
    inc c                                         ; $747d: $0c
    ld a, $75                                     ; $747e: $3e $75
    inc bc                                        ; $7480: $03

jr_002_7481:
    nop                                           ; $7481: $00
    nop                                           ; $7482: $00
    ld b, $00                                     ; $7483: $06 $00
    nop                                           ; $7485: $00
    rst $20                                       ; $7486: $e7
    rlca                                          ; $7487: $07
    inc sp                                        ; $7488: $33
    ld [hl], d                                    ; $7489: $72
    ld d, a                                       ; $748a: $57
    nop                                           ; $748b: $00
    nop                                           ; $748c: $00
    dec d                                         ; $748d: $15
    inc d                                         ; $748e: $14
    nop                                           ; $748f: $00
    jr jr_002_7431                                ; $7490: $18 $9f

    jr jr_002_7436                                ; $7492: $18 $a2

    ld a, [$2e0c]                                 ; $7494: $fa $0c $2e
    ld [hl], l                                    ; $7497: $75
    inc c                                         ; $7498: $0c
    ld a, $75                                     ; $7499: $3e $75
    inc bc                                        ; $749b: $03
    nop                                           ; $749c: $00
    nop                                           ; $749d: $00
    ld b, $00                                     ; $749e: $06 $00
    nop                                           ; $74a0: $00
    rst $20                                       ; $74a1: $e7
    rlca                                          ; $74a2: $07
    or b                                          ; $74a3: $b0
    ld h, a                                       ; $74a4: $67
    rst $20                                       ; $74a5: $e7
    rlca                                          ; $74a6: $07
    ld [c], a                                     ; $74a7: $e2
    ld h, [hl]                                    ; $74a8: $66
    daa                                           ; $74a9: $27
    add hl, hl                                    ; $74aa: $29
    ld [hl], h                                    ; $74ab: $74
    rst $20                                       ; $74ac: $e7
    rlca                                          ; $74ad: $07
    nop                                           ; $74ae: $00
    ld l, b                                       ; $74af: $68
    rst $20                                       ; $74b0: $e7
    inc bc                                        ; $74b1: $03
    jr z, jr_002_750c                             ; $74b2: $28 $58

    inc c                                         ; $74b4: $0c
    rst $20                                       ; $74b5: $e7
    ld [hl], h                                    ; $74b6: $74
    ld d, a                                       ; $74b7: $57
    nop                                           ; $74b8: $00
    nop                                           ; $74b9: $00
    ld h, b                                       ; $74ba: $60
    nop                                           ; $74bb: $00
    jr jr_002_745d                                ; $74bc: $18 $9f

    jr jr_002_7462                                ; $74be: $18 $a2

    ld hl, sp+$63                                 ; $74c0: $f8 $63
    inc c                                         ; $74c2: $0c
    ld l, $75                                     ; $74c3: $2e $75
    inc c                                         ; $74c5: $0c
    ld a, $75                                     ; $74c6: $3e $75
    inc bc                                        ; $74c8: $03
    nop                                           ; $74c9: $00
    nop                                           ; $74ca: $00
    ld b, $00                                     ; $74cb: $06 $00
    nop                                           ; $74cd: $00
    rst $20                                       ; $74ce: $e7
    rlca                                          ; $74cf: $07
    or b                                          ; $74d0: $b0
    ld h, a                                       ; $74d1: $67
    rst $20                                       ; $74d2: $e7
    rlca                                          ; $74d3: $07
    ld [c], a                                     ; $74d4: $e2
    ld h, [hl]                                    ; $74d5: $66
    daa                                           ; $74d6: $27
    add hl, hl                                    ; $74d7: $29
    ld [hl], h                                    ; $74d8: $74
    rst $20                                       ; $74d9: $e7
    rlca                                          ; $74da: $07
    nop                                           ; $74db: $00
    ld l, b                                       ; $74dc: $68
    rst $20                                       ; $74dd: $e7
    inc bc                                        ; $74de: $03
    jr z, jr_002_7539                             ; $74df: $28 $58

    inc c                                         ; $74e1: $0c
    rst $20                                       ; $74e2: $e7
    ld [hl], h                                    ; $74e3: $74
    ld d, a                                       ; $74e4: $57
    nop                                           ; $74e5: $00
    nop                                           ; $74e6: $00
    nop                                           ; $74e7: $00
    ld bc, $07e7                                  ; $74e8: $01 $e7 $07
    xor b                                         ; $74eb: $a8
    ld h, a                                       ; $74ec: $67
    ld a, [hl+]                                   ; $74ed: $2a
    rst $20                                       ; $74ee: $e7
    ld [hl], h                                    ; $74ef: $74
    rst $20                                       ; $74f0: $e7
    rlca                                          ; $74f1: $07
    add sp, $72                                   ; $74f2: $e8 $72
    rrca                                          ; $74f4: $0f
    nop                                           ; $74f5: $00
    ld e, $e7                                     ; $74f6: $1e $e7
    rlca                                          ; $74f8: $07
    or b                                          ; $74f9: $b0
    ld h, a                                       ; $74fa: $67
    rst $20                                       ; $74fb: $e7
    rlca                                          ; $74fc: $07
    ld [c], a                                     ; $74fd: $e2
    ld h, [hl]                                    ; $74fe: $66
    daa                                           ; $74ff: $27
    ld a, [bc]                                    ; $7500: $0a
    ld [hl], l                                    ; $7501: $75
    rst $20                                       ; $7502: $e7
    rlca                                          ; $7503: $07
    nop                                           ; $7504: $00
    ld l, b                                       ; $7505: $68
    rst $20                                       ; $7506: $e7
    inc bc                                        ; $7507: $03
    jr z, @+$5a                                   ; $7508: $28 $58

    inc c                                         ; $750a: $0c
    rst $20                                       ; $750b: $e7

jr_002_750c:
    ld [hl], h                                    ; $750c: $74
    ld d, a                                       ; $750d: $57
    nop                                           ; $750e: $00
    nop                                           ; $750f: $00
    add c                                         ; $7510: $81
    jr nc, jr_002_7513                            ; $7511: $30 $00

jr_002_7513:
    add h                                         ; $7513: $84
    ld b, h                                       ; $7514: $44
    nop                                           ; $7515: $00
    ld h, b                                       ; $7516: $60
    rst $20                                       ; $7517: $e7
    rlca                                          ; $7518: $07
    ld b, $6e                                     ; $7519: $06 $6e
    ld h, e                                       ; $751b: $63
    rst $20                                       ; $751c: $e7
    rlca                                          ; $751d: $07
    or l                                          ; $751e: $b5
    ld l, l                                       ; $751f: $6d
    ld [$07e7], a                                 ; $7520: $ea $e7 $07
    and l                                         ; $7523: $a5
    ld l, h                                       ; $7524: $6c
    nop                                           ; $7525: $00
    ld [bc], a                                    ; $7526: $02
    rst $20                                       ; $7527: $e7
    rlca                                          ; $7528: $07
    add $6c                                       ; $7529: $c6 $6c
    ld d, a                                       ; $752b: $57
    nop                                           ; $752c: $00
    nop                                           ; $752d: $00

    db $e7, $07, $b5, $6d, $63, $ea, $0f

    rst $20                                       ; $7535: $e7
    rlca                                          ; $7536: $07
    or l                                          ; $7537: $b5
    ld l, l                                       ; $7538: $6d

jr_002_7539:
    ld h, e                                       ; $7539: $63
    inc c                                         ; $753a: $0c
    rst $18                                       ; $753b: $df
    ld [hl], l                                    ; $753c: $75
    rrca                                          ; $753d: $0f

    db $e7, $07, $f7, $6d, $e7, $07, $df, $6c, $ea, $0f

    ld h, b                                       ; $7548: $60
    nop                                           ; $7549: $00
    inc c                                         ; $754a: $0c
    rst $20                                       ; $754b: $e7
    rlca                                          ; $754c: $07
    dec h                                         ; $754d: $25
    ld l, l                                       ; $754e: $6d
    nop                                           ; $754f: $00
    ld bc, $0f63                                  ; $7550: $01 $63 $0f

    db $03, $00, $00, $06, $00, $00, $e7, $07, $1d, $6e, $e7, $07, $0d, $6e, $ea, $e7
    db $07, $45, $72, $0f

    inc bc                                        ; $7567: $03
    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    ld b, $00                                     ; $756a: $06 $00
    nop                                           ; $756c: $00
    rst $20                                       ; $756d: $e7
    rlca                                          ; $756e: $07
    dec e                                         ; $756f: $1d
    ld l, [hl]                                    ; $7570: $6e
    rst $20                                       ; $7571: $e7
    rlca                                          ; $7572: $07
    dec c                                         ; $7573: $0d
    ld l, [hl]                                    ; $7574: $6e
    inc c                                         ; $7575: $0c
    rst $18                                       ; $7576: $df
    ld [hl], l                                    ; $7577: $75
    rst $20                                       ; $7578: $e7
    rlca                                          ; $7579: $07
    ld b, l                                       ; $757a: $45
    ld [hl], d                                    ; $757b: $72
    rrca                                          ; $757c: $0f
    inc bc                                        ; $757d: $03
    nop                                           ; $757e: $00
    nop                                           ; $757f: $00
    ld b, $00                                     ; $7580: $06 $00
    nop                                           ; $7582: $00
    rst $20                                       ; $7583: $e7
    rlca                                          ; $7584: $07
    dec e                                         ; $7585: $1d
    ld l, [hl]                                    ; $7586: $6e
    rst $20                                       ; $7587: $e7
    rlca                                          ; $7588: $07
    dec c                                         ; $7589: $0d
    ld l, [hl]                                    ; $758a: $6e
    inc c                                         ; $758b: $0c
    sub e                                         ; $758c: $93
    ld [hl], l                                    ; $758d: $75
    rst $20                                       ; $758e: $e7
    rlca                                          ; $758f: $07
    ld b, l                                       ; $7590: $45
    ld [hl], d                                    ; $7591: $72
    rrca                                          ; $7592: $0f
    rst $20                                       ; $7593: $e7
    rlca                                          ; $7594: $07
    ld e, l                                       ; $7595: $5d
    ld h, a                                       ; $7596: $67
    ld h, b                                       ; $7597: $60
    nop                                           ; $7598: $00
    ld bc, $e763                                  ; $7599: $01 $63 $e7
    rlca                                          ; $759c: $07
    ld h, a                                       ; $759d: $67
    ld h, a                                       ; $759e: $67
    daa                                           ; $759f: $27
    xor e                                         ; $75a0: $ab
    ld [hl], l                                    ; $75a1: $75
    nop                                           ; $75a2: $00
    ld bc, $07e7                                  ; $75a3: $01 $e7 $07
    ld h, a                                       ; $75a6: $67
    ld h, a                                       ; $75a7: $67
    ld a, [hl+]                                   ; $75a8: $2a
    sub a                                         ; $75a9: $97
    ld [hl], l                                    ; $75aa: $75
    rrca                                          ; $75ab: $0f
    rst $20                                       ; $75ac: $e7
    rlca                                          ; $75ad: $07
    ld e, l                                       ; $75ae: $5d
    ld h, a                                       ; $75af: $67
    rst $20                                       ; $75b0: $e7
    rlca                                          ; $75b1: $07
    cp h                                          ; $75b2: $bc
    ld l, c                                       ; $75b3: $69
    ld h, b                                       ; $75b4: $60
    nop                                           ; $75b5: $00
    ld bc, $0063                                  ; $75b6: $01 $63 $00
    ld bc, $0060                                  ; $75b9: $01 $60 $00
    ld bc, $0063                                  ; $75bc: $01 $63 $00
    ld bc, $07e7                                  ; $75bf: $01 $e7 $07
    adc $69                                       ; $75c2: $ce $69
    rst $20                                       ; $75c4: $e7
    rlca                                          ; $75c5: $07
    ld h, a                                       ; $75c6: $67
    ld h, a                                       ; $75c7: $67
    daa                                           ; $75c8: $27
    sbc $75                                       ; $75c9: $de $75
    ld h, b                                       ; $75cb: $60
    nop                                           ; $75cc: $00
    ld bc, $0063                                  ; $75cd: $01 $63 $00
    ld bc, $0060                                  ; $75d0: $01 $60 $00
    ld bc, $0063                                  ; $75d3: $01 $63 $00
    ld bc, $07e7                                  ; $75d6: $01 $e7 $07
    ld h, a                                       ; $75d9: $67
    ld h, a                                       ; $75da: $67
    ld a, [hl+]                                   ; $75db: $2a
    or b                                          ; $75dc: $b0
    ld [hl], l                                    ; $75dd: $75
    rrca                                          ; $75de: $0f
    rst $20                                       ; $75df: $e7
    rlca                                          ; $75e0: $07
    ld e, l                                       ; $75e1: $5d
    ld h, a                                       ; $75e2: $67
    cp l                                          ; $75e3: $bd
    inc b                                         ; $75e4: $04
    nop                                           ; $75e5: $00
    ld bc, $07e7                                  ; $75e6: $01 $e7 $07
    ld h, a                                       ; $75e9: $67
    ld h, a                                       ; $75ea: $67
    daa                                           ; $75eb: $27
    dec bc                                        ; $75ec: $0b
    halt                                          ; $75ed: $76
    nop                                           ; $75ee: $00
    ld bc, $05bd                                  ; $75ef: $01 $bd $05
    rst $20                                       ; $75f2: $e7
    rlca                                          ; $75f3: $07
    ld h, a                                       ; $75f4: $67
    ld h, a                                       ; $75f5: $67
    daa                                           ; $75f6: $27
    dec bc                                        ; $75f7: $0b
    halt                                          ; $75f8: $76
    nop                                           ; $75f9: $00
    ld bc, $07e7                                  ; $75fa: $01 $e7 $07
    ld h, a                                       ; $75fd: $67
    ld h, a                                       ; $75fe: $67
    daa                                           ; $75ff: $27
    dec bc                                        ; $7600: $0b
    halt                                          ; $7601: $76
    nop                                           ; $7602: $00
    ld bc, $07e7                                  ; $7603: $01 $e7 $07
    ld h, a                                       ; $7606: $67
    ld h, a                                       ; $7607: $67
    ld a, [hl+]                                   ; $7608: $2a
    db $e3                                        ; $7609: $e3
    ld [hl], l                                    ; $760a: $75
    cp l                                          ; $760b: $bd
    inc b                                         ; $760c: $04
    rrca                                          ; $760d: $0f
    rst $20                                       ; $760e: $e7
    rlca                                          ; $760f: $07
    ld e, l                                       ; $7610: $5d
    ld h, a                                       ; $7611: $67
    rst $20                                       ; $7612: $e7
    rlca                                          ; $7613: $07
    ld c, a                                       ; $7614: $4f
    ld l, h                                       ; $7615: $6c
    nop                                           ; $7616: $00
    ld bc, $07e7                                  ; $7617: $01 $e7 $07
    ld h, a                                       ; $761a: $67
    ld h, a                                       ; $761b: $67
    daa                                           ; $761c: $27
    jr z, jr_002_7695                             ; $761d: $28 $76

    nop                                           ; $761f: $00
    ld bc, $07e7                                  ; $7620: $01 $e7 $07
    ld h, a                                       ; $7623: $67
    ld h, a                                       ; $7624: $67
    ld a, [hl+]                                   ; $7625: $2a
    ld [de], a                                    ; $7626: $12
    halt                                          ; $7627: $76
    rrca                                          ; $7628: $0f

    db $72, $7e, $12, $04, $bd, $04, $e7, $07, $ad, $74, $63, $e7, $06, $40, $6c, $09
    db $00, $e7, $07, $d1, $74, $00, $02, $18, $3a, $76

    rst $20                                       ; $7643: $e7
    ld b, $ef                                     ; $7644: $06 $ef
    ld l, c                                       ; $7646: $69
    inc h                                         ; $7647: $24
    add $79                                       ; $7648: $c6 $79
    inc bc                                        ; $764a: $03
    nop                                           ; $764b: $00
    nop                                           ; $764c: $00
    ld b, $00                                     ; $764d: $06 $00
    nop                                           ; $764f: $00
    rst $20                                       ; $7650: $e7
    ld b, $b0                                     ; $7651: $06 $b0
    ld l, c                                       ; $7653: $69
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00

    db $e7, $06, $0b, $6a, $18, $6f, $76, $e7, $06, $29, $6a, $18, $6f, $76

    rst $20                                       ; $7664: $e7
    ld b, $50                                     ; $7665: $06 $50
    ld l, d                                       ; $7667: $6a
    jr jr_002_76d9                                ; $7668: $18 $6f

    halt                                          ; $766a: $76

    db $e7, $06, $65, $6a, $e7, $06, $da, $69, $24, $c6, $79, $03, $00, $00, $06, $00
    db $00, $90, $ff, $00, $00

    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    db $e4                                        ; $7682: $e4
    ld a, [hl+]                                   ; $7683: $2a
    add b                                         ; $7684: $80
    halt                                          ; $7685: $76
    jp nc, Jump_002_7697                          ; $7686: $d2 $97 $76

    and l                                         ; $7689: $a5
    halt                                          ; $768a: $76
    or h                                          ; $768b: $b4
    halt                                          ; $768c: $76
    jp $d276                                      ; $768d: $c3 $76 $d2


    halt                                          ; $7690: $76
    ldh [rPCM12], a                               ; $7691: $e0 $76
    rst $28                                       ; $7693: $ef
    halt                                          ; $7694: $76

jr_002_7695:
    cp $76                                        ; $7695: $fe $76

Jump_002_7697:
    ld d, c                                       ; $7697: $51
    ld a, a                                       ; $7698: $7f
    ld b, e                                       ; $7699: $43
    sbc $00                                       ; $769a: $de $00
    inc bc                                        ; $769c: $03
    nop                                           ; $769d: $00
    nop                                           ; $769e: $00
    ld b, $00                                     ; $769f: $06 $00
    db $fc                                        ; $76a1: $fc
    jr jr_002_7717                                ; $76a2: $18 $73

    halt                                          ; $76a4: $76
    ld l, c                                       ; $76a5: $69
    ld d, c                                       ; $76a6: $51
    ld a, a                                       ; $76a7: $7f
    ld b, e                                       ; $76a8: $43
    sbc $01                                       ; $76a9: $de $01
    inc bc                                        ; $76ab: $03
    nop                                           ; $76ac: $00
    inc bc                                        ; $76ad: $03
    ld b, $00                                     ; $76ae: $06 $00
    db $fd                                        ; $76b0: $fd
    jr @+$75                                      ; $76b1: $18 $73

    halt                                          ; $76b3: $76
    ld l, c                                       ; $76b4: $69
    ld d, c                                       ; $76b5: $51
    sbc e                                         ; $76b6: $9b
    ld b, e                                       ; $76b7: $43
    sbc $02                                       ; $76b8: $de $02
    inc bc                                        ; $76ba: $03
    nop                                           ; $76bb: $00
    inc b                                         ; $76bc: $04
    ld b, $00                                     ; $76bd: $06 $00
    nop                                           ; $76bf: $00
    jr @+$75                                      ; $76c0: $18 $73

    halt                                          ; $76c2: $76
    ld l, c                                       ; $76c3: $69
    ld d, c                                       ; $76c4: $51
    adc l                                         ; $76c5: $8d
    ld b, e                                       ; $76c6: $43
    sbc $03                                       ; $76c7: $de $03
    inc bc                                        ; $76c9: $03
    nop                                           ; $76ca: $00
    inc bc                                        ; $76cb: $03
    ld b, $00                                     ; $76cc: $06 $00
    inc bc                                        ; $76ce: $03
    jr @+$75                                      ; $76cf: $18 $73

    halt                                          ; $76d1: $76
    ld d, c                                       ; $76d2: $51
    adc l                                         ; $76d3: $8d
    ld b, e                                       ; $76d4: $43
    sbc $04                                       ; $76d5: $de $04
    inc bc                                        ; $76d7: $03
    nop                                           ; $76d8: $00

jr_002_76d9:
    nop                                           ; $76d9: $00
    ld b, $00                                     ; $76da: $06 $00
    inc b                                         ; $76dc: $04
    jr jr_002_7752                                ; $76dd: $18 $73

    halt                                          ; $76df: $76
    ld h, [hl]                                    ; $76e0: $66
    ld d, c                                       ; $76e1: $51
    adc l                                         ; $76e2: $8d
    ld b, e                                       ; $76e3: $43
    sbc $05                                       ; $76e4: $de $05
    inc bc                                        ; $76e6: $03
    nop                                           ; $76e7: $00
    db $fd                                        ; $76e8: $fd
    ld b, $00                                     ; $76e9: $06 $00
    inc bc                                        ; $76eb: $03
    jr @+$75                                      ; $76ec: $18 $73

    halt                                          ; $76ee: $76
    ld h, [hl]                                    ; $76ef: $66
    ld d, c                                       ; $76f0: $51
    sbc e                                         ; $76f1: $9b
    ld b, e                                       ; $76f2: $43
    sbc $06                                       ; $76f3: $de $06
    inc bc                                        ; $76f5: $03
    nop                                           ; $76f6: $00
    db $fc                                        ; $76f7: $fc
    ld b, $00                                     ; $76f8: $06 $00
    nop                                           ; $76fa: $00
    jr @+$75                                      ; $76fb: $18 $73

    halt                                          ; $76fd: $76
    ld h, [hl]                                    ; $76fe: $66
    ld d, c                                       ; $76ff: $51
    ld a, a                                       ; $7700: $7f
    ld b, e                                       ; $7701: $43
    sbc $07                                       ; $7702: $de $07
    inc bc                                        ; $7704: $03
    nop                                           ; $7705: $00
    db $fd                                        ; $7706: $fd
    ld b, $00                                     ; $7707: $06 $00
    db $fd                                        ; $7709: $fd
    jr @+$75                                      ; $770a: $18 $73

    halt                                          ; $770c: $76
    db $e4                                        ; $770d: $e4
    ld a, [hl+]                                   ; $770e: $2a
    add b                                         ; $770f: $80
    halt                                          ; $7710: $76
    jp nc, Jump_002_7722                          ; $7711: $d2 $22 $77

    jr nc, jr_002_778d                            ; $7714: $30 $77

    ccf                                           ; $7716: $3f

jr_002_7717:
    ld [hl], a                                    ; $7717: $77
    ld c, [hl]                                    ; $7718: $4e
    ld [hl], a                                    ; $7719: $77
    ld e, l                                       ; $771a: $5d
    ld [hl], a                                    ; $771b: $77
    ld l, e                                       ; $771c: $6b
    ld [hl], a                                    ; $771d: $77
    ld a, d                                       ; $771e: $7a
    ld [hl], a                                    ; $771f: $77
    adc c                                         ; $7720: $89
    ld [hl], a                                    ; $7721: $77

Jump_002_7722:
    ld d, c                                       ; $7722: $51
    and l                                         ; $7723: $a5
    ld b, c                                       ; $7724: $41
    sbc $00                                       ; $7725: $de $00
    inc bc                                        ; $7727: $03
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    ld b, $00                                     ; $772a: $06 $00
    db $fc                                        ; $772c: $fc
    jr jr_002_77a2                                ; $772d: $18 $73

    halt                                          ; $772f: $76
    ld l, c                                       ; $7730: $69
    ld d, c                                       ; $7731: $51
    cp c                                          ; $7732: $b9
    ld b, c                                       ; $7733: $41
    sbc $01                                       ; $7734: $de $01
    inc bc                                        ; $7736: $03
    nop                                           ; $7737: $00
    inc bc                                        ; $7738: $03
    ld b, $00                                     ; $7739: $06 $00
    db $fd                                        ; $773b: $fd
    jr @+$75                                      ; $773c: $18 $73

    halt                                          ; $773e: $76
    ld l, c                                       ; $773f: $69
    ld d, c                                       ; $7740: $51
    cp c                                          ; $7741: $b9
    ld b, c                                       ; $7742: $41
    sbc $02                                       ; $7743: $de $02
    inc bc                                        ; $7745: $03
    nop                                           ; $7746: $00
    inc b                                         ; $7747: $04
    ld b, $00                                     ; $7748: $06 $00
    nop                                           ; $774a: $00
    jr jr_002_77c0                                ; $774b: $18 $73

    halt                                          ; $774d: $76
    ld l, c                                       ; $774e: $69
    ld d, c                                       ; $774f: $51
    cp c                                          ; $7750: $b9
    ld b, c                                       ; $7751: $41

jr_002_7752:
    sbc $03                                       ; $7752: $de $03
    inc bc                                        ; $7754: $03
    nop                                           ; $7755: $00
    inc bc                                        ; $7756: $03
    ld b, $00                                     ; $7757: $06 $00
    inc bc                                        ; $7759: $03
    jr jr_002_77cf                                ; $775a: $18 $73

    halt                                          ; $775c: $76
    ld d, c                                       ; $775d: $51
    xor a                                         ; $775e: $af
    ld b, c                                       ; $775f: $41
    sbc $04                                       ; $7760: $de $04
    inc bc                                        ; $7762: $03
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    ld b, $00                                     ; $7765: $06 $00
    inc b                                         ; $7767: $04
    jr jr_002_77dd                                ; $7768: $18 $73

    halt                                          ; $776a: $76
    ld h, [hl]                                    ; $776b: $66
    ld d, c                                       ; $776c: $51
    cp c                                          ; $776d: $b9
    ld b, c                                       ; $776e: $41
    sbc $05                                       ; $776f: $de $05
    inc bc                                        ; $7771: $03
    nop                                           ; $7772: $00
    db $fd                                        ; $7773: $fd
    ld b, $00                                     ; $7774: $06 $00
    inc bc                                        ; $7776: $03
    jr jr_002_77ec                                ; $7777: $18 $73

    halt                                          ; $7779: $76
    ld h, [hl]                                    ; $777a: $66
    ld d, c                                       ; $777b: $51
    cp c                                          ; $777c: $b9
    ld b, c                                       ; $777d: $41
    sbc $06                                       ; $777e: $de $06
    inc bc                                        ; $7780: $03
    nop                                           ; $7781: $00
    db $fc                                        ; $7782: $fc
    ld b, $00                                     ; $7783: $06 $00
    nop                                           ; $7785: $00
    jr jr_002_77fb                                ; $7786: $18 $73

    halt                                          ; $7788: $76
    ld h, [hl]                                    ; $7789: $66
    ld d, c                                       ; $778a: $51
    cp c                                          ; $778b: $b9
    ld b, c                                       ; $778c: $41

jr_002_778d:
    sbc $07                                       ; $778d: $de $07
    inc bc                                        ; $778f: $03
    nop                                           ; $7790: $00
    db $fd                                        ; $7791: $fd
    ld b, $00                                     ; $7792: $06 $00
    db $fd                                        ; $7794: $fd
    jr jr_002_780a                                ; $7795: $18 $73

    halt                                          ; $7797: $76
    db $e4                                        ; $7798: $e4
    ld a, [hl+]                                   ; $7799: $2a
    add b                                         ; $779a: $80
    halt                                          ; $779b: $76
    jp nc, $77ad                                  ; $779c: $d2 $ad $77

    or e                                          ; $779f: $b3
    ld [hl], a                                    ; $77a0: $77
    cp d                                          ; $77a1: $ba

jr_002_77a2:
    ld [hl], a                                    ; $77a2: $77
    pop bc                                        ; $77a3: $c1
    ld [hl], a                                    ; $77a4: $77
    ret z                                         ; $77a5: $c8

    ld [hl], a                                    ; $77a6: $77
    adc $77                                       ; $77a7: $ce $77
    push de                                       ; $77a9: $d5

jr_002_77aa:
    ld [hl], a                                    ; $77aa: $77
    call c, Call_002_5177                         ; $77ab: $dc $77 $51
    add hl, sp                                    ; $77ae: $39
    ld a, d                                       ; $77af: $7a
    jr jr_002_77aa                                ; $77b0: $18 $f8

    ld [hl], a                                    ; $77b2: $77
    ld l, c                                       ; $77b3: $69
    ld d, c                                       ; $77b4: $51
    cp c                                          ; $77b5: $b9
    ld b, c                                       ; $77b6: $41
    jr jr_002_77bc                                ; $77b7: $18 $03

    ld a, b                                       ; $77b9: $78
    ld l, c                                       ; $77ba: $69
    ld d, c                                       ; $77bb: $51

jr_002_77bc:
    ld c, e                                       ; $77bc: $4b
    ld a, d                                       ; $77bd: $7a
    jr jr_002_77ce                                ; $77be: $18 $0e

jr_002_77c0:
    ld a, b                                       ; $77c0: $78
    ld l, c                                       ; $77c1: $69
    ld d, c                                       ; $77c2: $51
    cp c                                          ; $77c3: $b9
    ld b, c                                       ; $77c4: $41
    jr jr_002_77e0                                ; $77c5: $18 $19

    ld a, b                                       ; $77c7: $78
    ld d, c                                       ; $77c8: $51
    add hl, sp                                    ; $77c9: $39
    ld a, d                                       ; $77ca: $7a
    jr jr_002_77f1                                ; $77cb: $18 $24

    ld a, b                                       ; $77cd: $78

jr_002_77ce:
    ld h, [hl]                                    ; $77ce: $66

jr_002_77cf:
    ld d, c                                       ; $77cf: $51
    cp c                                          ; $77d0: $b9
    ld b, c                                       ; $77d1: $41
    jr jr_002_7803                                ; $77d2: $18 $2f

    ld a, b                                       ; $77d4: $78
    ld h, [hl]                                    ; $77d5: $66
    ld d, c                                       ; $77d6: $51
    ld c, e                                       ; $77d7: $4b
    ld a, d                                       ; $77d8: $7a
    jr jr_002_7815                                ; $77d9: $18 $3a

    ld a, b                                       ; $77db: $78
    ld h, [hl]                                    ; $77dc: $66

jr_002_77dd:
    ld d, c                                       ; $77dd: $51
    cp c                                          ; $77de: $b9
    ld b, c                                       ; $77df: $41

jr_002_77e0:
    jr jr_002_7827                                ; $77e0: $18 $45

    ld a, b                                       ; $77e2: $78
    db $e4                                        ; $77e3: $e4
    ld a, [hl+]                                   ; $77e4: $2a
    add b                                         ; $77e5: $80
    halt                                          ; $77e6: $76
    jp nc, Jump_002_77f8                          ; $77e7: $d2 $f8 $77

    inc bc                                        ; $77ea: $03
    ld a, b                                       ; $77eb: $78

jr_002_77ec:
    ld c, $78                                     ; $77ec: $0e $78
    add hl, de                                    ; $77ee: $19
    ld a, b                                       ; $77ef: $78
    inc h                                         ; $77f0: $24

jr_002_77f1:
    ld a, b                                       ; $77f1: $78
    cpl                                           ; $77f2: $2f
    ld a, b                                       ; $77f3: $78
    ld a, [hl-]                                   ; $77f4: $3a
    ld a, b                                       ; $77f5: $78
    ld b, l                                       ; $77f6: $45
    ld a, b                                       ; $77f7: $78

Jump_002_77f8:
    sbc $00                                       ; $77f8: $de $00
    inc bc                                        ; $77fa: $03

jr_002_77fb:
    nop                                           ; $77fb: $00
    nop                                           ; $77fc: $00
    ld b, $00                                     ; $77fd: $06 $00
    db $fc                                        ; $77ff: $fc
    jr jr_002_7875                                ; $7800: $18 $73

    halt                                          ; $7802: $76

jr_002_7803:
    sbc $01                                       ; $7803: $de $01
    inc bc                                        ; $7805: $03
    nop                                           ; $7806: $00
    inc bc                                        ; $7807: $03
    ld b, $00                                     ; $7808: $06 $00

jr_002_780a:
    db $fd                                        ; $780a: $fd
    jr jr_002_7880                                ; $780b: $18 $73

    halt                                          ; $780d: $76
    sbc $02                                       ; $780e: $de $02
    inc bc                                        ; $7810: $03
    nop                                           ; $7811: $00
    inc b                                         ; $7812: $04
    ld b, $00                                     ; $7813: $06 $00

jr_002_7815:
    nop                                           ; $7815: $00
    jr jr_002_788b                                ; $7816: $18 $73

    halt                                          ; $7818: $76
    sbc $03                                       ; $7819: $de $03
    inc bc                                        ; $781b: $03
    nop                                           ; $781c: $00
    inc bc                                        ; $781d: $03
    ld b, $00                                     ; $781e: $06 $00
    inc bc                                        ; $7820: $03
    jr jr_002_7896                                ; $7821: $18 $73

    halt                                          ; $7823: $76
    sbc $04                                       ; $7824: $de $04
    inc bc                                        ; $7826: $03

jr_002_7827:
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    ld b, $00                                     ; $7829: $06 $00
    inc b                                         ; $782b: $04
    jr jr_002_78a1                                ; $782c: $18 $73

    halt                                          ; $782e: $76
    sbc $05                                       ; $782f: $de $05
    inc bc                                        ; $7831: $03
    nop                                           ; $7832: $00
    db $fd                                        ; $7833: $fd
    ld b, $00                                     ; $7834: $06 $00
    inc bc                                        ; $7836: $03
    jr @+$75                                      ; $7837: $18 $73

    halt                                          ; $7839: $76
    sbc $06                                       ; $783a: $de $06
    inc bc                                        ; $783c: $03
    nop                                           ; $783d: $00
    db $fc                                        ; $783e: $fc
    ld b, $00                                     ; $783f: $06 $00
    nop                                           ; $7841: $00
    jr jr_002_78b7                                ; $7842: $18 $73

    halt                                          ; $7844: $76
    sbc $07                                       ; $7845: $de $07
    inc bc                                        ; $7847: $03
    nop                                           ; $7848: $00
    db $fd                                        ; $7849: $fd
    ld b, $00                                     ; $784a: $06 $00
    db $fd                                        ; $784c: $fd
    jr jr_002_78c2                                ; $784d: $18 $73

    halt                                          ; $784f: $76
    db $e4                                        ; $7850: $e4
    ld a, [hl+]                                   ; $7851: $2a
    add b                                         ; $7852: $80
    halt                                          ; $7853: $76
    jp nc, Jump_002_7865                          ; $7854: $d2 $65 $78

    ld [hl], b                                    ; $7857: $70
    ld a, b                                       ; $7858: $78
    ld a, e                                       ; $7859: $7b
    ld a, b                                       ; $785a: $78
    add [hl]                                      ; $785b: $86
    ld a, b                                       ; $785c: $78
    sub c                                         ; $785d: $91
    ld a, b                                       ; $785e: $78
    sbc h                                         ; $785f: $9c
    ld a, b                                       ; $7860: $78
    and a                                         ; $7861: $a7
    ld a, b                                       ; $7862: $78
    or d                                          ; $7863: $b2
    ld a, b                                       ; $7864: $78

Jump_002_7865:
    sbc $00                                       ; $7865: $de $00
    inc bc                                        ; $7867: $03
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    ld b, $80                                     ; $786a: $06 $80
    ld a, [$7318]                                 ; $786c: $fa $18 $73
    halt                                          ; $786f: $76
    sbc $01                                       ; $7870: $de $01
    inc bc                                        ; $7872: $03
    jr nz, @+$06                                  ; $7873: $20 $04

jr_002_7875:
    ld b, $e0                                     ; $7875: $06 $e0
    ei                                            ; $7877: $fb
    jr jr_002_78ed                                ; $7878: $18 $73

    halt                                          ; $787a: $76
    sbc $02                                       ; $787b: $de $02
    inc bc                                        ; $787d: $03
    add b                                         ; $787e: $80
    dec b                                         ; $787f: $05

jr_002_7880:
    ld b, $00                                     ; $7880: $06 $00
    nop                                           ; $7882: $00
    jr @+$75                                      ; $7883: $18 $73

    halt                                          ; $7885: $76
    sbc $03                                       ; $7886: $de $03
    inc bc                                        ; $7888: $03
    jr nz, @+$06                                  ; $7889: $20 $04

jr_002_788b:
    ld b, $20                                     ; $788b: $06 $20
    inc b                                         ; $788d: $04
    jr @+$75                                      ; $788e: $18 $73

    halt                                          ; $7890: $76
    sbc $04                                       ; $7891: $de $04
    inc bc                                        ; $7893: $03

jr_002_7894:
    nop                                           ; $7894: $00
    nop                                           ; $7895: $00

jr_002_7896:
    ld b, $80                                     ; $7896: $06 $80
    dec b                                         ; $7898: $05
    jr @+$75                                      ; $7899: $18 $73

    halt                                          ; $789b: $76
    sbc $05                                       ; $789c: $de $05
    inc bc                                        ; $789e: $03
    ldh [$fb], a                                  ; $789f: $e0 $fb

jr_002_78a1:
    ld b, $20                                     ; $78a1: $06 $20
    inc b                                         ; $78a3: $04
    jr @+$75                                      ; $78a4: $18 $73

    halt                                          ; $78a6: $76
    sbc $06                                       ; $78a7: $de $06
    inc bc                                        ; $78a9: $03
    add b                                         ; $78aa: $80
    ld a, [$0006]                                 ; $78ab: $fa $06 $00
    nop                                           ; $78ae: $00
    jr @+$75                                      ; $78af: $18 $73

    halt                                          ; $78b1: $76
    sbc $07                                       ; $78b2: $de $07
    inc bc                                        ; $78b4: $03
    ldh [$fb], a                                  ; $78b5: $e0 $fb

jr_002_78b7:
    ld b, $e0                                     ; $78b7: $06 $e0
    ei                                            ; $78b9: $fb
    jr @+$75                                      ; $78ba: $18 $73

jr_002_78bc:
    halt                                          ; $78bc: $76

    db $e4, $2a, $80, $76, $d2

jr_002_78c2:
    jp nc, $d278                                  ; $78c2: $d2 $78 $d2

    ld a, b                                       ; $78c5: $78
    db $db                                        ; $78c6: $db
    ld a, b                                       ; $78c7: $78
    push hl                                       ; $78c8: $e5
    ld a, b                                       ; $78c9: $78
    push hl                                       ; $78ca: $e5
    ld a, b                                       ; $78cb: $78
    push hl                                       ; $78cc: $e5
    ld a, b                                       ; $78cd: $78

    db $ee, $78

    jp nc, $de78                                  ; $78d0: $d2 $78 $de

    nop                                           ; $78d3: $00
    add hl, bc                                    ; $78d4: $09
    nop                                           ; $78d5: $00
    jr @-$55                                      ; $78d6: $18 $a9

    ld a, c                                       ; $78d8: $79
    nop                                           ; $78d9: $00
    nop                                           ; $78da: $00
    sbc $02                                       ; $78db: $de $02
    ld l, c                                       ; $78dd: $69
    add hl, bc                                    ; $78de: $09
    ld a, [bc]                                    ; $78df: $0a
    jr jr_002_788b                                ; $78e0: $18 $a9

    ld a, c                                       ; $78e2: $79
    nop                                           ; $78e3: $00
    nop                                           ; $78e4: $00
    sbc $04                                       ; $78e5: $de $04
    add hl, bc                                    ; $78e7: $09
    dec b                                         ; $78e8: $05
    jr jr_002_7894                                ; $78e9: $18 $a9

    ld a, c                                       ; $78eb: $79
    nop                                           ; $78ec: $00

jr_002_78ed:
    nop                                           ; $78ed: $00

    db $de, $06, $66, $09, $0a, $18, $a9, $79

    nop                                           ; $78f6: $00

jr_002_78f7:
    nop                                           ; $78f7: $00

    db $e4, $2a, $80, $76, $d2

    dec c                                         ; $78fd: $0d
    ld a, c                                       ; $78fe: $79
    dec c                                         ; $78ff: $0d
    ld a, c                                       ; $7900: $79

    db $16, $79, $20, $79

    jr nz, @+$7b                                  ; $7905: $20 $79

    jr nz, @+$7b                                  ; $7907: $20 $79

    db $29, $79

    dec c                                         ; $790b: $0d
    ld a, c                                       ; $790c: $79
    sbc $00                                       ; $790d: $de $00
    add hl, bc                                    ; $790f: $09
    nop                                           ; $7910: $00
    jr jr_002_78bc                                ; $7911: $18 $a9

    ld a, c                                       ; $7913: $79

jr_002_7914:
    nop                                           ; $7914: $00
    nop                                           ; $7915: $00

    db $de, $02, $69, $09, $0e, $18, $a9, $79

    nop                                           ; $791e: $00
    nop                                           ; $791f: $00

    db $de, $04, $09, $07, $18, $a9, $79

    nop                                           ; $7927: $00
    nop                                           ; $7928: $00

    db $de, $06, $66, $09, $0e, $18, $a9, $79

    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    db $e4                                        ; $7933: $e4
    ld a, [hl+]                                   ; $7934: $2a
    add b                                         ; $7935: $80
    halt                                          ; $7936: $76
    jp nc, Jump_002_7948                          ; $7937: $d2 $48 $79

    ld c, b                                       ; $793a: $48
    ld a, c                                       ; $793b: $79
    ld d, c                                       ; $793c: $51
    ld a, c                                       ; $793d: $79
    ld e, e                                       ; $793e: $5b
    ld a, c                                       ; $793f: $79
    ld e, e                                       ; $7940: $5b
    ld a, c                                       ; $7941: $79
    ld e, e                                       ; $7942: $5b
    ld a, c                                       ; $7943: $79
    ld h, h                                       ; $7944: $64
    ld a, c                                       ; $7945: $79
    ld c, b                                       ; $7946: $48
    ld a, c                                       ; $7947: $79

Jump_002_7948:
    sbc $00                                       ; $7948: $de $00
    add hl, bc                                    ; $794a: $09
    nop                                           ; $794b: $00
    jr jr_002_78f7                                ; $794c: $18 $a9

    ld a, c                                       ; $794e: $79
    nop                                           ; $794f: $00
    nop                                           ; $7950: $00
    sbc $02                                       ; $7951: $de $02
    ld l, c                                       ; $7953: $69
    add hl, bc                                    ; $7954: $09
    inc e                                         ; $7955: $1c
    jr @-$55                                      ; $7956: $18 $a9

    ld a, c                                       ; $7958: $79
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    sbc $04                                       ; $795b: $de $04
    add hl, bc                                    ; $795d: $09
    ld c, $18                                     ; $795e: $0e $18
    xor c                                         ; $7960: $a9
    ld a, c                                       ; $7961: $79
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    sbc $06                                       ; $7964: $de $06
    ld h, [hl]                                    ; $7966: $66
    add hl, bc                                    ; $7967: $09
    inc e                                         ; $7968: $1c
    jr jr_002_7914                                ; $7969: $18 $a9

    ld a, c                                       ; $796b: $79
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00

    db $e4, $2a, $80, $76, $d2, $83, $79

    adc h                                         ; $7975: $8c
    ld a, c                                       ; $7976: $79

    db $8c, $79

    adc h                                         ; $7979: $8c
    ld a, c                                       ; $797a: $79

    db $96, $79

    sbc a                                         ; $797d: $9f
    ld a, c                                       ; $797e: $79

    db $9f, $79, $9f, $79, $de, $00, $09, $00, $18, $a9, $79

    nop                                           ; $798a: $00
    nop                                           ; $798b: $00

    db $de, $02, $69, $09, $24, $18, $a9, $79

    nop                                           ; $7994: $00
    nop                                           ; $7995: $00

    db $de, $04, $09, $12, $18, $a9, $79

    nop                                           ; $799d: $00
    nop                                           ; $799e: $00

    db $de, $06, $66, $09, $24, $18, $a9, $79

    nop                                           ; $79a7: $00
    nop                                           ; $79a8: $00

    db $03, $00, $00, $06, $00, $00, $90, $ff, $00, $00

    rst $20                                       ; $79b3: $e7
    ld b, $f7                                     ; $79b4: $06 $f7
    ld l, c                                       ; $79b6: $69
    jr @+$75                                      ; $79b7: $18 $73

    halt                                          ; $79b9: $76
    nop                                           ; $79ba: $00
    nop                                           ; $79bb: $00
    jr @-$1b                                      ; $79bc: $18 $e3

    ld [hl], a                                    ; $79be: $77
    nop                                           ; $79bf: $00
    nop                                           ; $79c0: $00
    jr jr_002_7a13                                ; $79c1: $18 $50

    ld a, b                                       ; $79c3: $78
    nop                                           ; $79c4: $00
    nop                                           ; $79c5: $00

    ld hl, $000f                                  ; $79c6: $21 $0f $00
    add hl, bc                                    ; $79c9: $09
    ld a, [hl+]                                   ; $79ca: $2a
    ld d, [hl]                                    ; $79cb: $56
    ld e, a                                       ; $79cc: $5f
    or d                                          ; $79cd: $b2
    jr nz, jr_002_79d7                            ; $79ce: $20 $07

    ld hl, $0011                                  ; $79d0: $21 $11 $00
    add hl, bc                                    ; $79d3: $09
    ld a, [hl+]                                   ; $79d4: $2a
    ld d, [hl]                                    ; $79d5: $56
    ld e, a                                       ; $79d6: $5f

jr_002_79d7:
    call Call_000_0095                            ; $79d7: $cd $95 $00
    call Call_000_2e8a                            ; $79da: $cd $8a $2e
    and $01                                       ; $79dd: $e6 $01
    jr z, jr_002_79ee                             ; $79df: $28 $0d

    ld l, e                                       ; $79e1: $6b
    ld h, d                                       ; $79e2: $62
    sra h                                         ; $79e3: $cb $2c
    rr l                                          ; $79e5: $cb $1d
    sra h                                         ; $79e7: $cb $2c
    rr l                                          ; $79e9: $cb $1d
    add hl, de                                    ; $79eb: $19
    ld e, l                                       ; $79ec: $5d
    ld d, h                                       ; $79ed: $54

jr_002_79ee:
    ld hl, $0004                                  ; $79ee: $21 $04 $00
    add hl, bc                                    ; $79f1: $09
    ld a, [hl-]                                   ; $79f2: $3a
    ld h, [hl]                                    ; $79f3: $66
    ld l, $00                                     ; $79f4: $2e $00
    call Call_000_31f4                            ; $79f6: $cd $f4 $31
    ld e, l                                       ; $79f9: $5d
    ld d, h                                       ; $79fa: $54
    ld hl, $001c                                  ; $79fb: $21 $1c $00
    add hl, bc                                    ; $79fe: $09
    ld [hl], e                                    ; $79ff: $73
    inc hl                                        ; $7a00: $23
    ld [hl], d                                    ; $7a01: $72
    ld hl, $ff98                                  ; $7a02: $21 $98 $ff
    ld e, [hl]                                    ; $7a05: $5e
    inc hl                                        ; $7a06: $23
    ld d, [hl]                                    ; $7a07: $56
    ld hl, $001a                                  ; $7a08: $21 $1a $00
    add hl, bc                                    ; $7a0b: $09
    ld [hl], e                                    ; $7a0c: $73
    inc hl                                        ; $7a0d: $23
    ld [hl], d                                    ; $7a0e: $72
    pop hl                                        ; $7a0f: $e1
    ret                                           ; $7a10: $c9


    db $27, $7a

jr_002_7a13:
    daa                                           ; $7a13: $27
    ld a, d                                       ; $7a14: $7a

    db $4b, $7a

    add hl, sp                                    ; $7a17: $39
    ld a, d                                       ; $7a18: $7a

    db $39, $7a, $5d, $7a

    ld e, l                                       ; $7a1d: $5d
    ld a, d                                       ; $7a1e: $7a

    db $61, $7a

    ld e, a                                       ; $7a21: $5f
    ld a, d                                       ; $7a22: $7a

    db $5f, $7a

    nop                                           ; $7a25: $00
    nop                                           ; $7a26: $00

    db $02, $02, $04, $02, $06, $02, $08, $02, $0a, $02, $0c, $02, $0e, $02, $10, $02
    db $ff, $10, $14, $02, $16, $02, $18, $02, $1a, $02, $1c, $02, $1e, $02

    jr nz, jr_002_7a49                            ; $7a45: $20 $02

    ld [hl+], a                                   ; $7a47: $22
    ld [bc], a                                    ; $7a48: $02

jr_002_7a49:
    rst $38                                       ; $7a49: $ff
    db $10                                        ; $7a4a: $10

    db $26, $02, $28, $02, $2a, $02, $2c, $02, $2e, $02, $30, $02, $32, $02, $34, $02
    db $ff, $10, $00, $00, $12, $00, $24, $00, $36, $02, $38, $02, $3a, $02, $3c, $02
    db $3e, $02, $40, $02, $42, $00, $40, $02, $3e, $02, $3c, $02, $3a, $02, $38, $02
    db $36, $00

    ld c, d                                       ; $7a7d: $4a
    ld [bc], a                                    ; $7a7e: $02
    ld c, h                                       ; $7a7f: $4c
    ld [bc], a                                    ; $7a80: $02
    ld c, [hl]                                    ; $7a81: $4e
    nop                                           ; $7a82: $00
    ld c, [hl]                                    ; $7a83: $4e
    ld [bc], a                                    ; $7a84: $02
    ld c, h                                       ; $7a85: $4c
    ld [bc], a                                    ; $7a86: $02
    ld c, d                                       ; $7a87: $4a
    nop                                           ; $7a88: $00

    db $50, $02, $52, $02, $54, $02, $56, $02, $5e, $04, $60, $02, $62, $02, $64, $02
    db $66, $02, $68, $02, $6a, $02, $6c, $02, $6e, $02, $70, $02, $72, $02, $50, $00
    db $50, $02, $52, $02, $54, $02, $56, $02, $58, $02, $5a, $02, $5c, $04, $50, $00

    ld b, d                                       ; $7ab9: $42
    ld [bc], a                                    ; $7aba: $02
    ld b, h                                       ; $7abb: $44
    ld [bc], a                                    ; $7abc: $02
    ld b, [hl]                                    ; $7abd: $46
    ld [bc], a                                    ; $7abe: $02
    ld c, b                                       ; $7abf: $48
    ld [bc], a                                    ; $7ac0: $02
    ld c, d                                       ; $7ac1: $4a
    ld [bc], a                                    ; $7ac2: $02
    ld c, h                                       ; $7ac3: $4c
    nop                                           ; $7ac4: $00
    ld [hl], $04                                  ; $7ac5: $36 $04
    scf                                           ; $7ac7: $37
    inc b                                         ; $7ac8: $04
    jr c, jr_002_7acf                             ; $7ac9: $38 $04

    add hl, sp                                    ; $7acb: $39
    inc b                                         ; $7acc: $04
    ld a, [hl-]                                   ; $7acd: $3a
    nop                                           ; $7ace: $00

jr_002_7acf:
    add hl, sp                                    ; $7acf: $39
    inc b                                         ; $7ad0: $04
    jr c, jr_002_7ad7                             ; $7ad1: $38 $04

    scf                                           ; $7ad3: $37
    inc b                                         ; $7ad4: $04
    ld [hl], $00                                  ; $7ad5: $36 $00

jr_002_7ad7:
    dec sp                                        ; $7ad7: $3b
    inc b                                         ; $7ad8: $04
    inc a                                         ; $7ad9: $3c
    inc b                                         ; $7ada: $04
    dec a                                         ; $7adb: $3d
    inc b                                         ; $7adc: $04
    ld a, $04                                     ; $7add: $3e $04
    ccf                                           ; $7adf: $3f
    inc b                                         ; $7ae0: $04
    ld b, b                                       ; $7ae1: $40
    inc b                                         ; $7ae2: $04
    ld b, c                                       ; $7ae3: $41
    inc b                                         ; $7ae4: $04
    rst $38                                       ; $7ae5: $ff
    ld c, $2a                                     ; $7ae6: $0e $2a
    inc b                                         ; $7ae8: $04
    inc l                                         ; $7ae9: $2c
    inc b                                         ; $7aea: $04
    ld l, $04                                     ; $7aeb: $2e $04
    jr nc, jr_002_7af3                            ; $7aed: $30 $04

    ld [hl-], a                                   ; $7aef: $32
    nop                                           ; $7af0: $00
    jr nc, jr_002_7af7                            ; $7af1: $30 $04

jr_002_7af3:
    ld l, $04                                     ; $7af3: $2e $04
    inc l                                         ; $7af5: $2c
    inc b                                         ; $7af6: $04

jr_002_7af7:
    ld a, [hl+]                                   ; $7af7: $2a
    nop                                           ; $7af8: $00
    inc [hl]                                      ; $7af9: $34
    inc b                                         ; $7afa: $04
    ld [hl], $04                                  ; $7afb: $36 $04
    jr c, jr_002_7b03                             ; $7afd: $38 $04

    ld a, [hl-]                                   ; $7aff: $3a
    inc b                                         ; $7b00: $04
    inc a                                         ; $7b01: $3c
    inc b                                         ; $7b02: $04

jr_002_7b03:
    ld a, $04                                     ; $7b03: $3e $04
    ld b, b                                       ; $7b05: $40
    inc b                                         ; $7b06: $04
    rst $38                                       ; $7b07: $ff
    db $0e                                        ; $7b08: $0e

    db $00, $0a, $02, $04, $04, $08, $02, $04, $00, $0c, $02, $04, $04, $04, $06, $04
    db $08, $04, $0a, $04, $0c, $04, $0e, $04, $10, $04, $12, $04, $14, $04, $16, $04
    db $18, $04, $1a, $04, $1c, $10, $1e, $04, $20, $04, $22, $04, $00, $00

    nop                                           ; $7b37: $00
    ld a, [bc]                                    ; $7b38: $0a
    ld [bc], a                                    ; $7b39: $02
    inc b                                         ; $7b3a: $04
    ld d, $04                                     ; $7b3b: $16 $04
    jr jr_002_7b43                                ; $7b3d: $18 $04

    ld a, [de]                                    ; $7b3f: $1a
    inc b                                         ; $7b40: $04
    inc e                                         ; $7b41: $1c
    db $10                                        ; $7b42: $10

jr_002_7b43:
    ld e, $04                                     ; $7b43: $1e $04
    jr nz, jr_002_7b4b                            ; $7b45: $20 $04

    ld [hl+], a                                   ; $7b47: $22
    inc b                                         ; $7b48: $04
    nop                                           ; $7b49: $00
    nop                                           ; $7b4a: $00

jr_002_7b4b:
    nop                                           ; $7b4b: $00
    inc b                                         ; $7b4c: $04
    ld [bc], a                                    ; $7b4d: $02
    inc b                                         ; $7b4e: $04
    inc b                                         ; $7b4f: $04
    inc b                                         ; $7b50: $04
    ld b, $04                                     ; $7b51: $06 $04
    ld [$0a04], sp                                ; $7b53: $08 $04 $0a
    ld [$040c], sp                                ; $7b56: $08 $0c $04
    ld c, $04                                     ; $7b59: $0e $04
    stop                                          ; $7b5b: $10 $00
    ld e, b                                       ; $7b5d: $58
    inc b                                         ; $7b5e: $04
    ld e, c                                       ; $7b5f: $59
    inc b                                         ; $7b60: $04
    ld e, d                                       ; $7b61: $5a
    inc b                                         ; $7b62: $04
    ld e, e                                       ; $7b63: $5b
    inc b                                         ; $7b64: $04
    ld e, h                                       ; $7b65: $5c
    inc b                                         ; $7b66: $04
    ld e, l                                       ; $7b67: $5d
    ld [$045e], sp                                ; $7b68: $08 $5e $04
    ld e, a                                       ; $7b6b: $5f
    inc b                                         ; $7b6c: $04
    ld h, b                                       ; $7b6d: $60
    nop                                           ; $7b6e: $00
    ld [hl], $04                                  ; $7b6f: $36 $04
    jr c, jr_002_7b77                             ; $7b71: $38 $04

    ld a, [hl-]                                   ; $7b73: $3a
    inc b                                         ; $7b74: $04
    inc a                                         ; $7b75: $3c
    inc b                                         ; $7b76: $04

jr_002_7b77:
    ld a, $00                                     ; $7b77: $3e $00
    ld b, b                                       ; $7b79: $40
    ld [bc], a                                    ; $7b7a: $02
    ld b, d                                       ; $7b7b: $42
    ld [bc], a                                    ; $7b7c: $02
    ld b, h                                       ; $7b7d: $44
    ld [bc], a                                    ; $7b7e: $02
    ld b, [hl]                                    ; $7b7f: $46
    nop                                           ; $7b80: $00
    ld c, b                                       ; $7b81: $48
    inc b                                         ; $7b82: $04
    ld c, d                                       ; $7b83: $4a
    inc b                                         ; $7b84: $04
    ld c, h                                       ; $7b85: $4c
    inc b                                         ; $7b86: $04
    rst $38                                       ; $7b87: $ff
    ld b, $4e                                     ; $7b88: $06 $4e
    inc bc                                        ; $7b8a: $03
    ld c, a                                       ; $7b8b: $4f
    inc bc                                        ; $7b8c: $03
    ld d, b                                       ; $7b8d: $50
    inc bc                                        ; $7b8e: $03
    rst $38                                       ; $7b8f: $ff
    ld b, $54                                     ; $7b90: $06 $54
    inc bc                                        ; $7b92: $03
    ld d, l                                       ; $7b93: $55
    inc bc                                        ; $7b94: $03
    ld d, [hl]                                    ; $7b95: $56
    inc bc                                        ; $7b96: $03
    rst $38                                       ; $7b97: $ff
    ld b, $51                                     ; $7b98: $06 $51
    inc bc                                        ; $7b9a: $03
    ld d, d                                       ; $7b9b: $52
    inc bc                                        ; $7b9c: $03
    ld d, e                                       ; $7b9d: $53
    inc bc                                        ; $7b9e: $03
    rst $38                                       ; $7b9f: $ff
    ld b, $57                                     ; $7ba0: $06 $57
    nop                                           ; $7ba2: $00
    ld [de], a                                    ; $7ba3: $12
    inc bc                                        ; $7ba4: $03
    inc d                                         ; $7ba5: $14
    inc bc                                        ; $7ba6: $03
    ld d, $03                                     ; $7ba7: $16 $03
    jr jr_002_7bae                                ; $7ba9: $18 $03

    ld a, [de]                                    ; $7bab: $1a
    inc bc                                        ; $7bac: $03
    inc e                                         ; $7bad: $1c

jr_002_7bae:
    inc bc                                        ; $7bae: $03
    ld e, $03                                     ; $7baf: $1e $03
    jr nz, jr_002_7bb6                            ; $7bb1: $20 $03

    ld [hl+], a                                   ; $7bb3: $22
    inc bc                                        ; $7bb4: $03
    inc h                                         ; $7bb5: $24

jr_002_7bb6:
    inc bc                                        ; $7bb6: $03
    ld h, $03                                     ; $7bb7: $26 $03
    jr z, jr_002_7bbb                             ; $7bb9: $28 $00

jr_002_7bbb:
    ld a, [hl+]                                   ; $7bbb: $2a
    inc bc                                        ; $7bbc: $03
    inc l                                         ; $7bbd: $2c
    inc bc                                        ; $7bbe: $03
    ld l, $03                                     ; $7bbf: $2e $03
    jr nc, jr_002_7bc6                            ; $7bc1: $30 $03

    ld [hl-], a                                   ; $7bc3: $32
    nop                                           ; $7bc4: $00
    ld d, d                                       ; $7bc5: $52

jr_002_7bc6:
    nop                                           ; $7bc6: $00
    ld c, [hl]                                    ; $7bc7: $4e
    nop                                           ; $7bc8: $00
    ld d, b                                       ; $7bc9: $50
    nop                                           ; $7bca: $00
    db $fc                                        ; $7bcb: $fc
    ld d, b                                       ; $7bcc: $50
    nop                                           ; $7bcd: $00
    inc [hl]                                      ; $7bce: $34
    ld [bc], a                                    ; $7bcf: $02
    ld [hl], $02                                  ; $7bd0: $36 $02
    jr c, @+$04                                   ; $7bd2: $38 $02

    rst $38                                       ; $7bd4: $ff
    ld b, $3a                                     ; $7bd5: $06 $3a
    nop                                           ; $7bd7: $00
    ld l, h                                       ; $7bd8: $6c
    nop                                           ; $7bd9: $00
    ld l, [hl]                                    ; $7bda: $6e
    nop                                           ; $7bdb: $00
    inc a                                         ; $7bdc: $3c
    ld e, $3e                                     ; $7bdd: $1e $3e
    ld b, $40                                     ; $7bdf: $06 $40
    ld b, $42                                     ; $7be1: $06 $42
    ld b, $44                                     ; $7be3: $06 $44
    ld b, $46                                     ; $7be5: $06 $46
    db $10                                        ; $7be7: $10
    ld c, b                                       ; $7be8: $48
    inc b                                         ; $7be9: $04
    ld c, d                                       ; $7bea: $4a
    inc b                                         ; $7beb: $04
    ld c, h                                       ; $7bec: $4c
    db $10                                        ; $7bed: $10
    ld c, [hl]                                    ; $7bee: $4e
    inc bc                                        ; $7bef: $03
    ld d, b                                       ; $7bf0: $50
    inc bc                                        ; $7bf1: $03
    ld d, d                                       ; $7bf2: $52
    inc bc                                        ; $7bf3: $03
    ld d, b                                       ; $7bf4: $50
    inc bc                                        ; $7bf5: $03
    rst $38                                       ; $7bf6: $ff
    ld [$0254], sp                                ; $7bf7: $08 $54 $02
    ld d, [hl]                                    ; $7bfa: $56
    ld [bc], a                                    ; $7bfb: $02
    ld e, b                                       ; $7bfc: $58
    ld [bc], a                                    ; $7bfd: $02
    ld e, d                                       ; $7bfe: $5a
    ld [bc], a                                    ; $7bff: $02
    ld e, h                                       ; $7c00: $5c
    ld [bc], a                                    ; $7c01: $02
    ld e, [hl]                                    ; $7c02: $5e
    ld [bc], a                                    ; $7c03: $02
    ld h, b                                       ; $7c04: $60
    ld [bc], a                                    ; $7c05: $02
    ld h, d                                       ; $7c06: $62
    ld [bc], a                                    ; $7c07: $02
    ld h, h                                       ; $7c08: $64
    nop                                           ; $7c09: $00
    ld h, d                                       ; $7c0a: $62
    ld [bc], a                                    ; $7c0b: $02
    ld h, e                                       ; $7c0c: $63
    ld [bc], a                                    ; $7c0d: $02
    ld h, h                                       ; $7c0e: $64
    ld [bc], a                                    ; $7c0f: $02
    ld h, l                                       ; $7c10: $65
    ld [bc], a                                    ; $7c11: $02
    ld h, [hl]                                    ; $7c12: $66
    ld [bc], a                                    ; $7c13: $02
    ld h, a                                       ; $7c14: $67
    ld [bc], a                                    ; $7c15: $02
    ld l, b                                       ; $7c16: $68
    ld [bc], a                                    ; $7c17: $02
    ld l, c                                       ; $7c18: $69
    ld [bc], a                                    ; $7c19: $02
    ld l, d                                       ; $7c1a: $6a
    ld [bc], a                                    ; $7c1b: $02
    ld l, e                                       ; $7c1c: $6b
    nop                                           ; $7c1d: $00
    ld [de], a                                    ; $7c1e: $12
    nop                                           ; $7c1f: $00
    cp l                                          ; $7c20: $bd
    nop                                           ; $7c21: $00
    inc bc                                        ; $7c22: $03
    nop                                           ; $7c23: $00
    nop                                           ; $7c24: $00
    ld b, $00                                     ; $7c25: $06 $00
    nop                                           ; $7c27: $00
    ld d, c                                       ; $7c28: $51
    ld a, [bc]                                    ; $7c29: $0a
    ld a, h                                       ; $7c2a: $7c
    nop                                           ; $7c2b: $00
    nop                                           ; $7c2c: $00
    ld d, h                                       ; $7c2d: $54
    nop                                           ; $7c2e: $00
    ld e, b                                       ; $7c2f: $58
    ld [bc], a                                    ; $7c30: $02
    ld e, d                                       ; $7c31: $5a
    ld [bc], a                                    ; $7c32: $02
    ld e, h                                       ; $7c33: $5c
    nop                                           ; $7c34: $00
    ld e, [hl]                                    ; $7c35: $5e
    ld [bc], a                                    ; $7c36: $02
    ld h, b                                       ; $7c37: $60
    ld [bc], a                                    ; $7c38: $02
    ld d, [hl]                                    ; $7c39: $56
    nop                                           ; $7c3a: $00
    rst $38                                       ; $7c3b: $ff
    ld b, $51                                     ; $7c3c: $06 $51
    cpl                                           ; $7c3e: $2f
    ld a, h                                       ; $7c3f: $7c
    ld c, [hl]                                    ; $7c40: $4e
    inc bc                                        ; $7c41: $03
    ld c, b                                       ; $7c42: $48
    ld a, [$fa4b]                                 ; $7c43: $fa $4b $fa
    add hl, sp                                    ; $7c46: $39
    ld e, d                                       ; $7c47: $5a
    nop                                           ; $7c48: $00
    ld b, $51                                     ; $7c49: $06 $51
    dec [hl]                                      ; $7c4b: $35
    ld a, h                                       ; $7c4c: $7c
    ld c, [hl]                                    ; $7c4d: $4e
    ld [bc], a                                    ; $7c4e: $02
    ld c, b                                       ; $7c4f: $48
    ld b, $4b                                     ; $7c50: $06 $4b
    ld a, [$5a39]                                 ; $7c52: $fa $39 $5a
    nop                                           ; $7c55: $00
    ld b, $18                                     ; $7c56: $06 $18
    dec a                                         ; $7c58: $3d
    ld a, h                                       ; $7c59: $7c

Call_002_7c5a:
    ldh a, [rSVBK]                                ; $7c5a: $f0 $70
    push af                                       ; $7c5c: $f5
    ld a, $06                                     ; $7c5d: $3e $06
    ldh [rSVBK], a                                ; $7c5f: $e0 $70
    ld hl, $c34b                                  ; $7c61: $21 $4b $c3
    set 3, [hl]                                   ; $7c64: $cb $de
    ld a, [$d6d4]                                 ; $7c66: $fa $d4 $d6
    or a                                          ; $7c69: $b7
    jr z, jr_002_7ceb                             ; $7c6a: $28 $7f

    cp $01                                        ; $7c6c: $fe $01
    jp z, Jump_002_7d1d                           ; $7c6e: $ca $1d $7d

    cp $02                                        ; $7c71: $fe $02
    jr z, jr_002_7cda                             ; $7c73: $28 $65

    cp $03                                        ; $7c75: $fe $03
    jr z, jr_002_7cd3                             ; $7c77: $28 $5a

    cp $04                                        ; $7c79: $fe $04
    jr z, jr_002_7cbf                             ; $7c7b: $28 $42

    cp $05                                        ; $7c7d: $fe $05
    jr z, jr_002_7cb8                             ; $7c7f: $28 $37

    cp $06                                        ; $7c81: $fe $06
    jr z, jr_002_7ca4                             ; $7c83: $28 $1f

    cp $07                                        ; $7c85: $fe $07
    jr z, jr_002_7c9d                             ; $7c87: $28 $14

    ld hl, $c34b                                  ; $7c89: $21 $4b $c3
    res 3, [hl]                                   ; $7c8c: $cb $9e
    ld e, $04                                     ; $7c8e: $1e $04
    ld hl, $c34c                                  ; $7c90: $21 $4c $c3
    ld a, [hl]                                    ; $7c93: $7e
    and $f8                                       ; $7c94: $e6 $f8
    or e                                          ; $7c96: $b3
    ld [hl], a                                    ; $7c97: $77
    ld de, $02dd                                  ; $7c98: $11 $dd $02
    jr jr_002_7d11                                ; $7c9b: $18 $74

jr_002_7c9d:
    ld de, $02a7                                  ; $7c9d: $11 $a7 $02
    ld a, $01                                     ; $7ca0: $3e $01
    jr jr_002_7d11                                ; $7ca2: $18 $6d

jr_002_7ca4:
    ld hl, $c34b                                  ; $7ca4: $21 $4b $c3
    res 3, [hl]                                   ; $7ca7: $cb $9e
    ld e, $04                                     ; $7ca9: $1e $04
    ld hl, $c34c                                  ; $7cab: $21 $4c $c3
    ld a, [hl]                                    ; $7cae: $7e
    and $f8                                       ; $7caf: $e6 $f8
    or e                                          ; $7cb1: $b3
    ld [hl], a                                    ; $7cb2: $77
    ld de, $0271                                  ; $7cb3: $11 $71 $02
    jr jr_002_7d11                                ; $7cb6: $18 $59

jr_002_7cb8:
    ld de, $023b                                  ; $7cb8: $11 $3b $02
    ld a, $01                                     ; $7cbb: $3e $01
    jr jr_002_7d11                                ; $7cbd: $18 $52

jr_002_7cbf:
    ld hl, $c34b                                  ; $7cbf: $21 $4b $c3
    res 3, [hl]                                   ; $7cc2: $cb $9e
    ld e, $04                                     ; $7cc4: $1e $04
    ld hl, $c34c                                  ; $7cc6: $21 $4c $c3
    ld a, [hl]                                    ; $7cc9: $7e
    and $f8                                       ; $7cca: $e6 $f8
    or e                                          ; $7ccc: $b3
    ld [hl], a                                    ; $7ccd: $77
    ld de, $0205                                  ; $7cce: $11 $05 $02
    jr jr_002_7d11                                ; $7cd1: $18 $3e

jr_002_7cd3:
    ld a, $01                                     ; $7cd3: $3e $01
    ld de, $01cf                                  ; $7cd5: $11 $cf $01
    jr jr_002_7d11                                ; $7cd8: $18 $37

jr_002_7cda:
    ld hl, $c34b                                  ; $7cda: $21 $4b $c3
    res 3, [hl]                                   ; $7cdd: $cb $9e
    ld de, $016e                                  ; $7cdf: $11 $6e $01
    jr jr_002_7d11                                ; $7ce2: $18 $2d

jr_002_7ce4:
    ld a, $03                                     ; $7ce4: $3e $03
    ld de, $0098                                  ; $7ce6: $11 $98 $00
    jr jr_002_7d11                                ; $7ce9: $18 $26

jr_002_7ceb:
    ldh [$bc], a                                  ; $7ceb: $e0 $bc
    ldh a, [rSVBK]                                ; $7ced: $f0 $70
    push af                                       ; $7cef: $f5
    ld a, $06                                     ; $7cf0: $3e $06
    ldh [rSVBK], a                                ; $7cf2: $e0 $70
    ldh a, [$bc]                                  ; $7cf4: $f0 $bc
    ld a, [$d5d5]                                 ; $7cf6: $fa $d5 $d5
    ldh [$bc], a                                  ; $7cf9: $e0 $bc
    pop af                                        ; $7cfb: $f1
    ldh [rSVBK], a                                ; $7cfc: $e0 $70
    ldh a, [$bc]                                  ; $7cfe: $f0 $bc
    cp $5e                                        ; $7d00: $fe $5e
    jr z, jr_002_7ce4                             ; $7d02: $28 $e0

    sub $16                                       ; $7d04: $d6 $16
    jr c, jr_002_7d0c                             ; $7d06: $38 $04

    cp $06                                        ; $7d08: $fe $06
    jr c, jr_002_7ce4                             ; $7d0a: $38 $d8

jr_002_7d0c:
    ld a, $01                                     ; $7d0c: $3e $01
    ld de, $0098                                  ; $7d0e: $11 $98 $00

jr_002_7d11:
    ld hl, $004d                                  ; $7d11: $21 $4d $00
    add hl, bc                                    ; $7d14: $09
    ld [hl], a                                    ; $7d15: $77
    ld hl, $0026                                  ; $7d16: $21 $26 $00
    add hl, bc                                    ; $7d19: $09
    ld [hl], e                                    ; $7d1a: $73
    inc hl                                        ; $7d1b: $23
    ld [hl], d                                    ; $7d1c: $72

Jump_002_7d1d:
    ldh [$bc], a                                  ; $7d1d: $e0 $bc
    pop af                                        ; $7d1f: $f1
    ldh [rSVBK], a                                ; $7d20: $e0 $70
    ldh a, [$bc]                                  ; $7d22: $f0 $bc
    ld a, [$cae5]                                 ; $7d24: $fa $e5 $ca
    swap a                                        ; $7d27: $cb $37
    ld hl, $7d5e                                  ; $7d29: $21 $5e $7d
    rst $08                                       ; $7d2c: $cf
    ld a, [$cae1]                                 ; $7d2d: $fa $e1 $ca
    call Call_000_3194                            ; $7d30: $cd $94 $31
    ld hl, $cae6                                  ; $7d33: $21 $e6 $ca
    ld [hl], e                                    ; $7d36: $73
    inc hl                                        ; $7d37: $23
    ld [hl], d                                    ; $7d38: $72
    ld a, $00                                     ; $7d39: $3e $00
    call Call_002_7d49                            ; $7d3b: $cd $49 $7d
    ld a, [$cae1]                                 ; $7d3e: $fa $e1 $ca
    or a                                          ; $7d41: $b7
    ret z                                         ; $7d42: $c8

    cp $04                                        ; $7d43: $fe $04
    ret z                                         ; $7d45: $c8

    ret c                                         ; $7d46: $d8

    ld a, $20                                     ; $7d47: $3e $20

Call_002_7d49:
    ld hl, $c34b                                  ; $7d49: $21 $4b $c3
    res 5, [hl]                                   ; $7d4c: $cb $ae
    ld hl, $c34c                                  ; $7d4e: $21 $4c $c3
    res 5, [hl]                                   ; $7d51: $cb $ae
    bit 5, a                                      ; $7d53: $cb $6f
    ret z                                         ; $7d55: $c8

    set 5, [hl]                                   ; $7d56: $cb $ee
    ld hl, $c34c                                  ; $7d58: $21 $4c $c3
    set 5, [hl]                                   ; $7d5b: $cb $ee
    ret                                           ; $7d5d: $c9


    db $00, $00, $00, $00, $04, $00

    db $08                                        ; $7d64: $08
    nop                                           ; $7d65: $00

    db $08, $00

    db $08                                        ; $7d68: $08
    nop                                           ; $7d69: $00

    db $04, $00, $00, $00, $0a, $00

    ld a, [bc]                                    ; $7d70: $0a
    nop                                           ; $7d71: $00

    db $0e, $00

    ld [de], a                                    ; $7d74: $12
    nop                                           ; $7d75: $00

    db $12, $00

    ld [de], a                                    ; $7d78: $12
    nop                                           ; $7d79: $00

    db $0e, $00

    ld a, [bc]                                    ; $7d7c: $0a
    nop                                           ; $7d7d: $00

    db $24, $85, $7d, $54, $90, $00, $00

    xor a                                         ; $7d85: $af
    ld [$c36c], a                                 ; $7d86: $ea $6c $c3
    inc a                                         ; $7d89: $3c
    ld [$cae5], a                                 ; $7d8a: $ea $e5 $ca
    ld hl, $cae8                                  ; $7d8d: $21 $e8 $ca
    ld [hl], $ff                                  ; $7d90: $36 $ff
    inc hl                                        ; $7d92: $23
    ld [hl], $ff                                  ; $7d93: $36 $ff
    ldh [$bc], a                                  ; $7d95: $e0 $bc
    ldh a, [rSVBK]                                ; $7d97: $f0 $70
    push af                                       ; $7d99: $f5
    ld a, $06                                     ; $7d9a: $3e $06
    ldh [rSVBK], a                                ; $7d9c: $e0 $70
    ldh a, [$bc]                                  ; $7d9e: $f0 $bc
    ld hl, $004d                                  ; $7da0: $21 $4d $00
    add hl, bc                                    ; $7da3: $09
    ld a, [$d6d4]                                 ; $7da4: $fa $d4 $d6
    cp $01                                        ; $7da7: $fe $01
    jr z, jr_002_7dbf                             ; $7da9: $28 $14

    cp $04                                        ; $7dab: $fe $04
    jr z, jr_002_7dbb                             ; $7dad: $28 $0c

    cp $06                                        ; $7daf: $fe $06
    jr z, jr_002_7dbb                             ; $7db1: $28 $08

    cp $08                                        ; $7db3: $fe $08
    jr z, jr_002_7dbb                             ; $7db5: $28 $04

    ld a, $01                                     ; $7db7: $3e $01
    jr jr_002_7dc1                                ; $7db9: $18 $06

jr_002_7dbb:
    ld a, $04                                     ; $7dbb: $3e $04
    jr jr_002_7dc1                                ; $7dbd: $18 $02

jr_002_7dbf:
    ld a, $03                                     ; $7dbf: $3e $03

jr_002_7dc1:
    ld hl, $004d                                  ; $7dc1: $21 $4d $00
    add hl, bc                                    ; $7dc4: $09
    ld [hl], a                                    ; $7dc5: $77
    ld a, [$d6d1]                                 ; $7dc6: $fa $d1 $d6
    ld d, a                                       ; $7dc9: $57
    ldh [$bc], a                                  ; $7dca: $e0 $bc
    pop af                                        ; $7dcc: $f1
    ldh [rSVBK], a                                ; $7dcd: $e0 $70
    ldh a, [$bc]                                  ; $7dcf: $f0 $bc
    ldh a, [$d8]                                  ; $7dd1: $f0 $d8
    cp d                                          ; $7dd3: $ba
    jr nz, jr_002_7dd6                            ; $7dd4: $20 $00

jr_002_7dd6:
    call Call_002_7c5a                            ; $7dd6: $cd $5a $7c
    ld hl, $cae6                                  ; $7dd9: $21 $e6 $ca
    ld e, [hl]                                    ; $7ddc: $5e
    inc hl                                        ; $7ddd: $23
    ld d, [hl]                                    ; $7dde: $56
    ldh [$c1], a                                  ; $7ddf: $e0 $c1
    ld a, $d2                                     ; $7de1: $3e $d2
    ldh [$bd], a                                  ; $7de3: $e0 $bd
    ld a, $45                                     ; $7de5: $3e $45
    ldh [$be], a                                  ; $7de7: $e0 $be
    call Call_000_3398                            ; $7de9: $cd $98 $33
    ld hl, $c343                                  ; $7dec: $21 $43 $c3
    ld a, [hl+]                                   ; $7def: $2a
    ld h, [hl]                                    ; $7df0: $66
    ld l, a                                       ; $7df1: $6f
    ld a, [hl]                                    ; $7df2: $7e
    call Call_000_08ec                            ; $7df3: $cd $ec $08
    ld a, $01                                     ; $7df6: $3e $01
    ldh [$de], a                                  ; $7df8: $e0 $de
    ret                                           ; $7dfa: $c9


    jp Jump_000_2a4b                              ; $7dfb: $c3 $4b $2a


    jp Jump_000_2a8f                              ; $7dfe: $c3 $8f $2a


    jp Jump_000_2a94                              ; $7e01: $c3 $94 $2a


    jp Jump_000_2a14                              ; $7e04: $c3 $14 $2a


    jp Jump_000_2a61                              ; $7e07: $c3 $61 $2a


    jp Jump_000_2a7d                              ; $7e0a: $c3 $7d $2a


    jp Jump_000_2a99                              ; $7e0d: $c3 $99 $2a


    jp Jump_000_2aa4                              ; $7e10: $c3 $a4 $2a


    jp Jump_000_2aad                              ; $7e13: $c3 $ad $2a


    jp Jump_000_2ab9                              ; $7e16: $c3 $b9 $2a


    jp Jump_000_2b26                              ; $7e19: $c3 $26 $2b


    jp Jump_000_2b2c                              ; $7e1c: $c3 $2c $2b


    jp Jump_000_2ad0                              ; $7e1f: $c3 $d0 $2a


    jp Jump_000_2aea                              ; $7e22: $c3 $ea $2a


    jp Jump_000_2af9                              ; $7e25: $c3 $f9 $2a


    jp Jump_000_2b08                              ; $7e28: $c3 $08 $2b


    jp Jump_000_2b17                              ; $7e2b: $c3 $17 $2b


    jp Jump_000_2aca                              ; $7e2e: $c3 $ca $2a


    jp Jump_000_2bb8                              ; $7e31: $c3 $b8 $2b


    jp Jump_000_2b32                              ; $7e34: $c3 $32 $2b


    jp Jump_000_2a33                              ; $7e37: $c3 $33 $2a


    jp Jump_000_2b55                              ; $7e3a: $c3 $55 $2b


    jp Jump_000_2b5e                              ; $7e3d: $c3 $5e $2b


    jp Jump_000_2b70                              ; $7e40: $c3 $70 $2b


    jp Jump_000_2b79                              ; $7e43: $c3 $79 $2b


    jp Jump_000_2b95                              ; $7e46: $c3 $95 $2b


    jp Jump_000_2ba7                              ; $7e49: $c3 $a7 $2b


    jp Jump_000_2bd4                              ; $7e4c: $c3 $d4 $2b


    jp Jump_000_2a23                              ; $7e4f: $c3 $23 $2a


    jp Jump_000_2bdd                              ; $7e52: $c3 $dd $2b


    jp Jump_000_2be3                              ; $7e55: $c3 $e3 $2b


    jp Jump_000_2be9                              ; $7e58: $c3 $e9 $2b


    jp Jump_000_2bfb                              ; $7e5b: $c3 $fb $2b


    jp Jump_000_2c04                              ; $7e5e: $c3 $04 $2c


    jp Jump_000_2c0d                              ; $7e61: $c3 $0d $2c


    jp Jump_000_2c15                              ; $7e64: $c3 $15 $2c


    jp Jump_000_2c1c                              ; $7e67: $c3 $1c $2c


    jp Jump_000_2d1c                              ; $7e6a: $c3 $1c $2d


    jp Jump_000_2b67                              ; $7e6d: $c3 $67 $2b


    jp Jump_000_2c1f                              ; $7e70: $c3 $1f $2c


    jp Jump_000_2c1f                              ; $7e73: $c3 $1f $2c


    jp Jump_000_2c2d                              ; $7e76: $c3 $2d $2c


    jp Jump_000_2b4c                              ; $7e79: $c3 $4c $2b


    jp Jump_000_2c3b                              ; $7e7c: $c3 $3b $2c


    jp Jump_000_2c57                              ; $7e7f: $c3 $57 $2c


    jp Jump_000_2c77                              ; $7e82: $c3 $77 $2c


    jp Jump_000_2ca7                              ; $7e85: $c3 $a7 $2c


    jp Jump_000_2ca7                              ; $7e88: $c3 $a7 $2c


    jp Jump_000_2cbe                              ; $7e8b: $c3 $be $2c


    jp Jump_000_2cc4                              ; $7e8e: $c3 $c4 $2c


    jp Jump_000_2cea                              ; $7e91: $c3 $ea $2c


    jp Jump_000_2cea                              ; $7e94: $c3 $ea $2c


    jp Jump_000_2cea                              ; $7e97: $c3 $ea $2c


    jp Jump_000_2c41                              ; $7e9a: $c3 $41 $2c


    jp Jump_000_2c5d                              ; $7e9d: $c3 $5d $2c


    jp Jump_000_2cea                              ; $7ea0: $c3 $ea $2c


    jp Jump_000_2ced                              ; $7ea3: $c3 $ed $2c


    jp Jump_000_2bf2                              ; $7ea6: $c3 $f2 $2b


    jp Jump_000_2ccf                              ; $7ea9: $c3 $cf $2c


    jp Jump_000_2cea                              ; $7eac: $c3 $ea $2c


    jp Jump_000_2cf3                              ; $7eaf: $c3 $f3 $2c


    jp Jump_000_2c1f                              ; $7eb2: $c3 $1f $2c


    jp Jump_000_2d01                              ; $7eb5: $c3 $01 $2d


    jp Jump_000_2d37                              ; $7eb8: $c3 $37 $2d


    jp Jump_000_2cb8                              ; $7ebb: $c3 $b8 $2c


    jp Jump_000_2cd5                              ; $7ebe: $c3 $d5 $2c


    jp Jump_000_2d52                              ; $7ec1: $c3 $52 $2d


    jp Jump_000_2d5b                              ; $7ec4: $c3 $5b $2d


    jp Jump_000_2d64                              ; $7ec7: $c3 $64 $2d


    jp Jump_000_2d6d                              ; $7eca: $c3 $6d $2d


    jp Jump_000_2c8f                              ; $7ecd: $c3 $8f $2c


    jp Jump_000_2b43                              ; $7ed0: $c3 $43 $2b


    jp Jump_000_2d79                              ; $7ed3: $c3 $79 $2d


    jp Jump_000_2d8a                              ; $7ed6: $c3 $8a $2d


    jp Jump_000_2dac                              ; $7ed9: $c3 $ac $2d


    jp Jump_000_2d0d                              ; $7edc: $c3 $0d $2d


    jp Jump_000_2d9b                              ; $7edf: $c3 $9b $2d


    jp Jump_000_2ada                              ; $7ee2: $c3 $da $2a


    jp Jump_000_2a46                              ; $7ee5: $c3 $46 $2a


    jp Jump_000_2d47                              ; $7ee8: $c3 $47 $2d


    jp Jump_000_2db7                              ; $7eeb: $c3 $b7 $2d


    jp Jump_000_2dc3                              ; $7eee: $c3 $c3 $2d


    jp Jump_000_2baf                              ; $7ef1: $c3 $af $2b


    jp Jump_000_2dcf                              ; $7ef4: $c3 $cf $2d


    jp Jump_000_2ddb                              ; $7ef7: $c3 $db $2d


    inc bc                                        ; $7efa: $03
    rlca                                          ; $7efb: $07
    inc b                                         ; $7efc: $04
    rlca                                          ; $7efd: $07
    dec b                                         ; $7efe: $05
    rlca                                          ; $7eff: $07
    ld b, $07                                     ; $7f00: $06 $07
    rlca                                          ; $7f02: $07
    rlca                                          ; $7f03: $07
    ld [$0907], sp                                ; $7f04: $08 $07 $09
    rlca                                          ; $7f07: $07
    ld a, [bc]                                    ; $7f08: $0a
    nop                                           ; $7f09: $00
    ld [hl], d                                    ; $7f0a: $72
    ld h, b                                       ; $7f0b: $60
    add a                                         ; $7f0c: $87
    dec d                                         ; $7f0d: $15
    ld a, a                                       ; $7f0e: $7f
    jr nc, jr_002_7f90                            ; $7f0f: $30 $7f

    dec [hl]                                      ; $7f11: $35
    ld a, a                                       ; $7f12: $7f
    ld b, d                                       ; $7f13: $42
    ld a, a                                       ; $7f14: $7f
    ld [de], a                                    ; $7f15: $12
    inc b                                         ; $7f16: $04
    cp l                                          ; $7f17: $bd
    ld [bc], a                                    ; $7f18: $02
    add hl, bc                                    ; $7f19: $09
    inc bc                                        ; $7f1a: $03
    inc h                                         ; $7f1b: $24
    ld e, b                                       ; $7f1c: $58
    ld a, a                                       ; $7f1d: $7f
    ld b, $c0                                     ; $7f1e: $06 $c0
    rst $38                                       ; $7f20: $ff
    inc bc                                        ; $7f21: $03
    nop                                           ; $7f22: $00
    cp $00                                        ; $7f23: $fe $00
    ld bc, $5163                                  ; $7f25: $01 $63 $51
    ld a, [$007e]                                 ; $7f28: $fa $7e $00
    jr c, jr_002_7f8d                             ; $7f2b: $38 $60

    ld d, a                                       ; $7f2d: $57
    nop                                           ; $7f2e: $00
    nop                                           ; $7f2f: $00
    add hl, bc                                    ; $7f30: $09
    nop                                           ; $7f31: $00
    jr jr_002_7f6b                                ; $7f32: $18 $37

    ld a, a                                       ; $7f34: $7f
    add hl, bc                                    ; $7f35: $09
    ld bc, $00bd                                  ; $7f36: $01 $bd $00
    add h                                         ; $7f39: $84
    add b                                         ; $7f3a: $80
    nop                                           ; $7f3b: $00
    inc bc                                        ; $7f3c: $03
    nop                                           ; $7f3d: $00
    db $fd                                        ; $7f3e: $fd
    jr jr_002_7f8d                                ; $7f3f: $18 $4c

    ld a, a                                       ; $7f41: $7f
    cp l                                          ; $7f42: $bd
    ld bc, $0209                                  ; $7f43: $01 $09 $02
    add h                                         ; $7f46: $84
    adc a                                         ; $7f47: $8f
    nop                                           ; $7f48: $00
    inc bc                                        ; $7f49: $03
    nop                                           ; $7f4a: $00
    db $fc                                        ; $7f4b: $fc
    ret                                           ; $7f4c: $c9


    add c                                         ; $7f4d: $81
    xor b                                         ; $7f4e: $a8
    nop                                           ; $7f4f: $00
    nop                                           ; $7f50: $00
    ld bc, $0063                                  ; $7f51: $01 $63 $00
    inc a                                         ; $7f54: $3c
    ld d, a                                       ; $7f55: $57
    nop                                           ; $7f56: $00
    nop                                           ; $7f57: $00
    ld a, [$cb2c]                                 ; $7f58: $fa $2c $cb
    cpl                                           ; $7f5b: $2f
    inc a                                         ; $7f5c: $3c
    add $32                                       ; $7f5d: $c6 $32
    ld e, a                                       ; $7f5f: $5f
    ld d, $30                                     ; $7f60: $16 $30
    jp Jump_000_090d                              ; $7f62: $c3 $0d $09


    rst $38                                       ; $7f65: $ff
    rst $38                                       ; $7f66: $ff
    rst $38                                       ; $7f67: $ff
    rst $38                                       ; $7f68: $ff
    rst $38                                       ; $7f69: $ff
    rst $38                                       ; $7f6a: $ff

jr_002_7f6b:
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

jr_002_7f8d:
    rst $38                                       ; $7f8d: $ff
    rst $38                                       ; $7f8e: $ff
    rst $38                                       ; $7f8f: $ff

jr_002_7f90:
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
