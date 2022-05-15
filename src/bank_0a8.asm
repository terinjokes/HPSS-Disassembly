; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0a8", ROMX[$4000], BANK[$a8]

    xor b                                         ; $4000: $a8
    ld [hl], e                                    ; $4001: $73
    nop                                           ; $4002: $00
    ld d, c                                       ; $4003: $51
    inc b                                         ; $4004: $04
    ld bc, $0080                                  ; $4005: $01 $80 $00
    ld bc, $0908                                  ; $4008: $01 $08 $09
    add hl, bc                                    ; $400b: $09
    add hl, bc                                    ; $400c: $09
    inc b                                         ; $400d: $04
    ld [$10ff], sp                                ; $400e: $08 $ff $10
    jr z, jr_0a8_4022                             ; $4011: $28 $0f

    nop                                           ; $4013: $00
    inc bc                                        ; $4014: $03
    db $10                                        ; $4015: $10
    db $10                                        ; $4016: $10

jr_0a8_4017:
    ld b, b                                       ; $4017: $40
    inc hl                                        ; $4018: $23
    db $10                                        ; $4019: $10
    ld a, [hl-]                                   ; $401a: $3a

jr_0a8_401b:
    ld [hl], b                                    ; $401b: $70
    add hl, de                                    ; $401c: $19
    jr z, @+$42                                   ; $401d: $28 $40

    ld [$36ff], sp                                ; $401f: $08 $ff $36

jr_0a8_4022:
    jr nc, jr_0a8_402c                            ; $4022: $30 $08

    ld b, b                                       ; $4024: $40
    ld e, e                                       ; $4025: $5b
    ld [$0036], sp                                ; $4026: $08 $36 $00
    inc b                                         ; $4029: $04
    jr z, @+$6c                                   ; $402a: $28 $6a

jr_0a8_402c:
    ld [$0072], sp                                ; $402c: $08 $72 $00
    inc b                                         ; $402f: $04
    jr nc, @+$01                                  ; $4030: $30 $ff

    ccf                                           ; $4032: $3f
    ld c, b                                       ; $4033: $48
    ld b, d                                       ; $4034: $42
    ld [$5898], sp                                ; $4035: $08 $98 $58
    ld b, $28                                     ; $4038: $06 $28
    inc b                                         ; $403a: $04
    db $28, $ac                                   ; $403b: $28 $ac
    ld [$1868], sp                                ; $403d: $08 $68 $18
    ld [$ff10], sp                                ; $4040: $08 $10 $ff
    ld h, b                                       ; $4043: $60
    db $10                                        ; $4044: $10
    ld e, h                                       ; $4045: $5c
    ld [$48b0], sp                                ; $4046: $08 $b0 $48
    ld l, a                                       ; $4049: $6f
    nop                                           ; $404a: $00
    adc c                                         ; $404b: $89
    ld d, b                                       ; $404c: $50
    ld [hl-], a                                   ; $404d: $32
    ld c, b                                       ; $404e: $48
    adc [hl]                                      ; $404f: $8e
    ld [$484e], sp                                ; $4050: $08 $4e $48
    rst $38                                       ; $4053: $ff

jr_0a8_4054:
    add d                                         ; $4054: $82
    jr jr_0a8_4017                                ; $4055: $18 $c0

    jr c, jr_0a8_401b                             ; $4057: $38 $c2

    ld e, b                                       ; $4059: $58
    ld [$2029], sp                                ; $405a: $08 $29 $20
    ld de, $0928                                  ; $405d: $11 $28 $09
    dec a                                         ; $4060: $3d
    ld bc, $2818                                  ; $4061: $01 $18 $28
    rst $38                                       ; $4064: $ff
    rrca                                          ; $4065: $0f
    jr nz, @+$41                                  ; $4066: $20 $3f

jr_0a8_4068:
    ld l, b                                       ; $4068: $68
    jr @+$32                                      ; $4069: $18 $30

    jr nz, jr_0a8_4095                            ; $406b: $20 $28

    ld de, $7068                                  ; $406d: $11 $68 $70
    ld sp, $2005                                  ; $4070: $31 $05 $20
    ld a, a                                       ; $4073: $7f
    add hl, de                                    ; $4074: $19
    rst $38                                       ; $4075: $ff
    inc b                                         ; $4076: $04
    ld b, b                                       ; $4077: $40
    dec a                                         ; $4078: $3d
    ld d, b                                       ; $4079: $50
    rrca                                          ; $407a: $0f
    ld [hl], b                                    ; $407b: $70
    adc b                                         ; $407c: $88
    jr nz, @+$35                                  ; $407d: $20 $33

    ld b, b                                       ; $407f: $40
    inc bc                                        ; $4080: $03
    ld [hl], b                                    ; $4081: $70
    dec e                                         ; $4082: $1d
    ld h, b                                       ; $4083: $60
    inc l                                         ; $4084: $2c
    ld l, b                                       ; $4085: $68
    rst $38                                       ; $4086: $ff
    ld [hl], c                                    ; $4087: $71
    ld e, c                                       ; $4088: $59
    and h                                         ; $4089: $a4
    ld a, c                                       ; $408a: $79
    or e                                          ; $408b: $b3
    ld hl, $31a0                                  ; $408c: $21 $a0 $31
    ret nz                                        ; $408f: $c0

    ld de, $59c4                                  ; $4090: $11 $c4 $59
    ld [hl], h                                    ; $4093: $74
    ld c, c                                       ; $4094: $49

jr_0a8_4095:
    call z, $ff29                                 ; $4095: $cc $29 $ff
    inc sp                                        ; $4098: $33
    ld [hl-], a                                   ; $4099: $32
    jr z, jr_0a8_4104                             ; $409a: $28 $68

    ld c, h                                       ; $409c: $4c
    ld b, c                                       ; $409d: $41
    ld b, b                                       ; $409e: $40
    add hl, hl                                    ; $409f: $29
    ld b, h                                       ; $40a0: $44
    ld c, c                                       ; $40a1: $49
    inc d                                         ; $40a2: $14
    ld [hl+], a                                   ; $40a3: $22
    db $10                                        ; $40a4: $10
    ld c, c                                       ; $40a5: $49
    cp $41                                        ; $40a6: $fe $41
    rst $38                                       ; $40a8: $ff
    ld a, c                                       ; $40a9: $79
    ld b, d                                       ; $40aa: $42
    add a                                         ; $40ab: $87
    jr z, jr_0a8_40eb                             ; $40ac: $28 $3d

    ld b, c                                       ; $40ae: $41
    adc [hl]                                      ; $40af: $8e
    ld a, [de]                                    ; $40b0: $1a
    adc $49                                       ; $40b1: $ce $49
    sub d                                         ; $40b3: $92

jr_0a8_40b4:
    ld a, [de]                                    ; $40b4: $1a
    ld [hl], e                                    ; $40b5: $73
    ld [de], a                                    ; $40b6: $12
    add sp, $60                                   ; $40b7: $e8 $60
    rst $38                                       ; $40b9: $ff
    inc [hl]                                      ; $40ba: $34
    jr nc, jr_0a8_4054                            ; $40bb: $30 $97

    ld d, d                                       ; $40bd: $52
    ld [hl], e                                    ; $40be: $73
    ld a, [bc]                                    ; $40bf: $0a
    ret nc                                        ; $40c0: $d0

    ld d, b                                       ; $40c1: $50
    adc e                                         ; $40c2: $8b
    add hl, bc                                    ; $40c3: $09
    jr jr_0a8_40d6                                ; $40c4: $18 $10

    ld [$4728], sp                                ; $40c6: $08 $28 $47
    and b                                         ; $40c9: $a0
    rst $38                                       ; $40ca: $ff
    ld [hl], b                                    ; $40cb: $70
    jr c, jr_0a8_40fe                             ; $40cc: $38 $30

    jr jr_0a8_40e8                                ; $40ce: $18 $18

    inc sp                                        ; $40d0: $33
    jr nz, @+$44                                  ; $40d1: $20 $42

    db $10                                        ; $40d3: $10
    jr c, jr_0a8_4146                             ; $40d4: $38 $70

jr_0a8_40d6:
    ld e, c                                       ; $40d6: $59
    ret                                           ; $40d7: $c9


    jr nc, jr_0a8_4068                            ; $40d8: $30 $8e

    ld a, [de]                                    ; $40da: $1a
    rst $38                                       ; $40db: $ff
    ld [c], a                                     ; $40dc: $e2
    ld e, d                                       ; $40dd: $5a
    xor h                                         ; $40de: $ac
    ld c, b                                       ; $40df: $48
    ld e, a                                       ; $40e0: $5f
    inc hl                                        ; $40e1: $23
    ld hl, sp+$48                                 ; $40e2: $f8 $48
    ld b, b                                       ; $40e4: $40
    ld l, c                                       ; $40e5: $69
    db $fc                                        ; $40e6: $fc
    ld a, [de]                                    ; $40e7: $1a

jr_0a8_40e8:
    inc a                                         ; $40e8: $3c
    ld b, c                                       ; $40e9: $41
    ld b, d                                       ; $40ea: $42

jr_0a8_40eb:
    ld e, e                                       ; $40eb: $5b
    ret nz                                        ; $40ec: $c0

    ld e, [hl]                                    ; $40ed: $5e
    ld [hl+], a                                   ; $40ee: $22
    rrca                                          ; $40ef: $0f
    cp b                                          ; $40f0: $b8
    inc b                                         ; $40f1: $04
    ld e, c                                       ; $40f2: $59
    nop                                           ; $40f3: $00
    ld d, c                                       ; $40f4: $51
    inc b                                         ; $40f5: $04
    ld bc, $0080                                  ; $40f6: $01 $80 $00
    ld bc, $0908                                  ; $40f9: $01 $08 $09
    add hl, bc                                    ; $40fc: $09
    add hl, bc                                    ; $40fd: $09

jr_0a8_40fe:
    inc b                                         ; $40fe: $04
    ld [$10ff], sp                                ; $40ff: $08 $ff $10
    jr z, jr_0a8_4113                             ; $4102: $28 $0f

jr_0a8_4104:
    nop                                           ; $4104: $00
    inc bc                                        ; $4105: $03
    db $10                                        ; $4106: $10
    jr nz, jr_0a8_4119                            ; $4107: $20 $10

    inc b                                         ; $4109: $04
    jr z, jr_0a8_4135                             ; $410a: $28 $29

    nop                                           ; $410c: $00
    ld a, [hl-]                                   ; $410d: $3a
    ld [hl], b                                    ; $410e: $70
    jr c, jr_0a8_4131                             ; $410f: $38 $20

    rst $38                                       ; $4111: $ff
    ld b, b                                       ; $4112: $40

jr_0a8_4113:
    db $10                                        ; $4113: $10
    ld [hl], $30                                  ; $4114: $36 $30
    ld [$2350], sp                                ; $4116: $08 $50 $23

jr_0a8_4119:
    ld d, b                                       ; $4119: $50
    ld l, [hl]                                    ; $411a: $6e
    ld [$3804], sp                                ; $411b: $08 $04 $38
    ld a, h                                       ; $411e: $7c
    ld [$1838], sp                                ; $411f: $08 $38 $18
    rst $38                                       ; $4122: $ff
    ld [$2d10], sp                                ; $4123: $08 $10 $2d
    ld l, b                                       ; $4126: $68
    ld b, b                                       ; $4127: $40
    ld h, b                                       ; $4128: $60
    xor b                                         ; $4129: $a8
    jr nc, jr_0a8_40b4                            ; $412a: $30 $88

    ld b, b                                       ; $412c: $40
    ld h, c                                       ; $412d: $61
    db $10                                        ; $412e: $10
    cp [hl]                                       ; $412f: $be
    nop                                           ; $4130: $00

jr_0a8_4131:
    add $00                                       ; $4131: $c6 $00
    rst $38                                       ; $4133: $ff
    inc b                                         ; $4134: $04

jr_0a8_4135:
    db $10                                        ; $4135: $10
    ld a, h                                       ; $4136: $7c
    add b                                         ; $4137: $80
    adc c                                         ; $4138: $89
    jr c, @-$18                                   ; $4139: $38 $e6

    nop                                           ; $413b: $00
    add c                                         ; $413c: $81
    ld h, b                                       ; $413d: $60
    add h                                         ; $413e: $84
    jr nz, jr_0a8_4143                            ; $413f: $20 $02

    jr c, jr_0a8_418b                             ; $4141: $38 $48

jr_0a8_4143:
    ld [$007f], sp                                ; $4143: $08 $7f $00

jr_0a8_4146:
    inc b                                         ; $4146: $04
    ld b, b                                       ; $4147: $40
    ld e, b                                       ; $4148: $58
    jr z, jr_0a8_41ab                             ; $4149: $28 $60

    jr z, jr_0a8_4178                             ; $414b: $28 $2b

    ld b, c                                       ; $414d: $41
    cp d                                          ; $414e: $ba

jr_0a8_414f:
    db $10                                        ; $414f: $10
    ld c, b                                       ; $4150: $48
    ld e, c                                       ; $4151: $59
    ld c, h                                       ; $4152: $4c
    ld e, b                                       ; $4153: $58
    rst $38                                       ; $4154: $ff
    ld d, c                                       ; $4155: $51
    jr jr_0a8_41a8                                ; $4156: $18 $50

    db $10                                        ; $4158: $10
    add hl, sp                                    ; $4159: $39
    ld de, $0948                                  ; $415a: $11 $48 $09
    or b                                          ; $415d: $b0
    jr nz, jr_0a8_41b3                            ; $415e: $20 $53

    ld sp, $40fe                                  ; $4160: $31 $fe $40
    add d                                         ; $4163: $82
    jr c, @+$01                                   ; $4164: $38 $ff

    ld e, $31                                     ; $4166: $1e $31
    sbc h                                         ; $4168: $9c
    ld l, b                                       ; $4169: $68
    db $10                                        ; $416a: $10
    ld [hl], b                                    ; $416b: $70
    cpl                                           ; $416c: $2f
    ld [hl], c                                    ; $416d: $71
    xor b                                         ; $416e: $a8
    ld b, b                                       ; $416f: $40
    ret nz                                        ; $4170: $c0

    add hl, hl                                    ; $4171: $29
    rst $18                                       ; $4172: $df
    add hl, hl                                    ; $4173: $29
    inc b                                         ; $4174: $04
    add hl, hl                                    ; $4175: $29
    rst $38                                       ; $4176: $ff
    sub b                                         ; $4177: $90

jr_0a8_4178:
    ld h, c                                       ; $4178: $61
    rlca                                          ; $4179: $07
    ld a, [hl-]                                   ; $417a: $3a
    db $eb                                        ; $417b: $eb
    ld hl, $5878                                  ; $417c: $21 $78 $58
    ld a, l                                       ; $417f: $7d
    ld d, c                                       ; $4180: $51
    cp b                                          ; $4181: $b8
    jr c, jr_0a8_41ac                             ; $4182: $38 $28

    ld l, b                                       ; $4184: $68
    jr c, jr_0a8_414f                             ; $4185: $38 $c8

    rst $38                                       ; $4187: $ff
    ld l, h                                       ; $4188: $6c
    ld l, d                                       ; $4189: $6a
    ld d, e                                       ; $418a: $53

jr_0a8_418b:
    ld c, d                                       ; $418b: $4a

jr_0a8_418c:
    ld a, a                                       ; $418c: $7f
    ld a, [de]                                    ; $418d: $1a
    inc b                                         ; $418e: $04
    jr c, jr_0a8_418c                             ; $418f: $38 $fb

    ld e, c                                       ; $4191: $59
    dec c                                         ; $4192: $0d
    ld h, b                                       ; $4193: $60
    ld h, h                                       ; $4194: $64
    ld [de], a                                    ; $4195: $12
    jr nc, jr_0a8_4208                            ; $4196: $30 $70

    rst $38                                       ; $4198: $ff
    ldh [rOBP1], a                                ; $4199: $e0 $49
    ldh a, [$59]                                  ; $419b: $f0 $59
    jr nc, jr_0a8_41b7                            ; $419d: $30 $18

    sbc b                                         ; $419f: $98
    ld d, c                                       ; $41a0: $51
    inc c                                         ; $41a1: $0c
    ld d, d                                       ; $41a2: $52
    ld a, d                                       ; $41a3: $7a
    ld c, b                                       ; $41a4: $48
    inc c                                         ; $41a5: $0c
    dec sp                                        ; $41a6: $3b
    rrca                                          ; $41a7: $0f

jr_0a8_41a8:
    ld c, b                                       ; $41a8: $48
    nop                                           ; $41a9: $00
    inc b                                         ; $41aa: $04

jr_0a8_41ab:
    sub [hl]                                      ; $41ab: $96

jr_0a8_41ac:
    nop                                           ; $41ac: $00
    ld c, e                                       ; $41ad: $4b
    inc b                                         ; $41ae: $04
    ld bc, $0090                                  ; $41af: $01 $90 $00
    nop                                           ; $41b2: $00

jr_0a8_41b3:
    inc b                                         ; $41b3: $04
    nop                                           ; $41b4: $00
    add hl, bc                                    ; $41b5: $09
    inc b                                         ; $41b6: $04

jr_0a8_41b7:
    jr @+$10                                      ; $41b7: $18 $0e

    ld [$001f], sp                                ; $41b9: $08 $1f $00
    nop                                           ; $41bc: $00
    add hl, bc                                    ; $41bd: $09
    ld bc, $1020                                  ; $41be: $01 $20 $10
    ld b, b                                       ; $41c1: $40
    inc b                                         ; $41c2: $04
    db $10                                        ; $41c3: $10
    dec de                                        ; $41c4: $1b
    ld [$301d], sp                                ; $41c5: $08 $1d $30
    rst $28                                       ; $41c8: $ef

jr_0a8_41c9:
    ld [$44c0], sp                                ; $41c9: $08 $c0 $44
    ld [$0055], sp                                ; $41cc: $08 $55 $00
    inc b                                         ; $41cf: $04
    db $10                                        ; $41d0: $10
    ld c, b                                       ; $41d1: $48
    ld a, h                                       ; $41d2: $7c
    ld [$3020], sp                                ; $41d3: $08 $20 $30
    ld d, c                                       ; $41d6: $51
    jr nz, @+$01                                  ; $41d7: $20 $ff

    rlca                                          ; $41d9: $07
    jr c, jr_0a8_4214                             ; $41da: $38 $38

    jr z, jr_0a8_4212                             ; $41dc: $28 $34

    nop                                           ; $41de: $00
    adc a                                         ; $41df: $8f
    nop                                           ; $41e0: $00
    ld l, a                                       ; $41e1: $6f
    nop                                           ; $41e2: $00

jr_0a8_41e3:
    inc b                                         ; $41e3: $04
    ld [$1034], sp                                ; $41e4: $08 $34 $10
    and [hl]                                      ; $41e7: $a6
    jr c, @+$01                                   ; $41e8: $38 $ff

    xor b                                         ; $41ea: $a8
    ld c, b                                       ; $41eb: $48
    adc b                                         ; $41ec: $88
    nop                                           ; $41ed: $00
    ld h, h                                       ; $41ee: $64
    jr nz, jr_0a8_41f5                            ; $41ef: $20 $04

    db $10                                        ; $41f1: $10
    ld h, c                                       ; $41f2: $61
    jr z, @+$2e                                   ; $41f3: $28 $2c

jr_0a8_41f5:
    ld d, b                                       ; $41f5: $50
    sub $08                                       ; $41f6: $d6 $08
    ld l, h                                       ; $41f8: $6c
    jr c, @+$01                                   ; $41f9: $38 $ff

    ld [hl], b                                    ; $41fb: $70
    ld b, b                                       ; $41fc: $40
    ret nc                                        ; $41fd: $d0

    ld c, b                                       ; $41fe: $48
    inc b                                         ; $41ff: $04
    jr nc, jr_0a8_4230                            ; $4200: $30 $2e

    jr jr_0a8_41c9                                ; $4202: $18 $c5

    ld h, b                                       ; $4204: $60
    ld h, b                                       ; $4205: $60
    jr z, @+$66                                   ; $4206: $28 $64

jr_0a8_4208:
    jr z, jr_0a8_4243                             ; $4208: $28 $39

    ld h, b                                       ; $420a: $60
    rst $38                                       ; $420b: $ff
    sub b                                         ; $420c: $90
    ld c, b                                       ; $420d: $48
    ld c, b                                       ; $420e: $48
    add hl, bc                                    ; $420f: $09
    inc b                                         ; $4210: $04
    ld l, c                                       ; $4211: $69

jr_0a8_4212:
    inc d                                         ; $4212: $14
    ld e, c                                       ; $4213: $59

jr_0a8_4214:
    ld b, [hl]                                    ; $4214: $46
    add hl, bc                                    ; $4215: $09
    cp c                                          ; $4216: $b9
    ld [$08e4], sp                                ; $4217: $08 $e4 $08
    inc b                                         ; $421a: $04
    jr @+$01                                      ; $421b: $18 $ff

    ld l, d                                       ; $421d: $6a
    add hl, bc                                    ; $421e: $09
    and l                                         ; $421f: $a5
    ld [$2804], sp                                ; $4220: $08 $04 $28
    adc d                                         ; $4223: $8a
    ld bc, $5073                                  ; $4224: $01 $73 $50
    sbc h                                         ; $4227: $9c
    ld hl, $3008                                  ; $4228: $21 $08 $30
    ld [bc], a                                    ; $422b: $02
    ld l, b                                       ; $422c: $68
    rst $38                                       ; $422d: $ff
    inc a                                         ; $422e: $3c
    ld c, b                                       ; $422f: $48

jr_0a8_4230:
    db $ed                                        ; $4230: $ed
    jr jr_0a8_428f                                ; $4231: $18 $5c

    jr c, jr_0a8_41e3                             ; $4233: $38 $ae

    add hl, bc                                    ; $4235: $09
    ld e, h                                       ; $4236: $5c
    ld e, b                                       ; $4237: $58
    ret nc                                        ; $4238: $d0

    ld de, $68cf                                  ; $4239: $11 $cf $68
    sbc [hl]                                      ; $423c: $9e
    jr c, @+$01                                   ; $423d: $38 $ff

    ld a, b                                       ; $423f: $78
    ld de, $3918                                  ; $4240: $11 $18 $39

jr_0a8_4243:
    or b                                          ; $4243: $b0
    ld de, $5050                                  ; $4244: $11 $50 $50
    inc [hl]                                      ; $4247: $34
    adc d                                         ; $4248: $8a
    sbc h                                         ; $4249: $9c
    add hl, sp                                    ; $424a: $39
    jr nc, jr_0a8_425f                            ; $424b: $30 $12

    ld l, h                                       ; $424d: $6c
    ld b, b                                       ; $424e: $40
    rst $38                                       ; $424f: $ff
    inc de                                        ; $4250: $13
    ld l, d                                       ; $4251: $6a
    ld b, h                                       ; $4252: $44
    ld [de], a                                    ; $4253: $12
    ld hl, sp+$30                                 ; $4254: $f8 $30
    ld [hl], h                                    ; $4256: $74
    add hl, hl                                    ; $4257: $29
    adc c                                         ; $4258: $89
    ld e, d                                       ; $4259: $5a
    ret c                                         ; $425a: $d8

    ld sp, $219a                                  ; $425b: $31 $9a $21
    or c                                          ; $425e: $b1

jr_0a8_425f:
    ld l, c                                       ; $425f: $69
    rst $38                                       ; $4260: $ff
    dec sp                                        ; $4261: $3b
    ld e, d                                       ; $4262: $5a
    pop bc                                        ; $4263: $c1
    add hl, sp                                    ; $4264: $39
    and b                                         ; $4265: $a0
    ld b, b                                       ; $4266: $40
    or e                                          ; $4267: $b3
    ld [hl], c                                    ; $4268: $71
    ld c, h                                       ; $4269: $4c
    ld b, b                                       ; $426a: $40
    ldh a, [$61]                                  ; $426b: $f0 $61
    ld d, h                                       ; $426d: $54
    add d                                         ; $426e: $82
    rst $08                                       ; $426f: $cf
    and d                                         ; $4270: $a2
    rst $38                                       ; $4271: $ff
    cp [hl]                                       ; $4272: $be
    add hl, de                                    ; $4273: $19
    cp l                                          ; $4274: $bd
    ld bc, $6a68                                  ; $4275: $01 $68 $6a
    ret c                                         ; $4278: $d8

    ld hl, $09fb                                  ; $4279: $21 $fb $09
    inc c                                         ; $427c: $0c
    ld h, d                                       ; $427d: $62
    ld d, b                                       ; $427e: $50
    inc de                                        ; $427f: $13
    ret z                                         ; $4280: $c8

    ld [hl+], a                                   ; $4281: $22
    rst $38                                       ; $4282: $ff
    ret nc                                        ; $4283: $d0

    ld b, d                                       ; $4284: $42
    jr nc, jr_0a8_42c9                            ; $4285: $30 $42

    ld d, e                                       ; $4287: $53
    db $10                                        ; $4288: $10
    inc [hl]                                      ; $4289: $34
    ld b, d                                       ; $428a: $42
    db $f4                                        ; $428b: $f4
    ld b, b                                       ; $428c: $40
    ld b, b                                       ; $428d: $40
    ld b, d                                       ; $428e: $42

jr_0a8_428f:
    xor h                                         ; $428f: $ac
    ld d, d                                       ; $4290: $52
    inc c                                         ; $4291: $0c
    ld c, e                                       ; $4292: $4b
    rst $38                                       ; $4293: $ff
    and l                                         ; $4294: $a5
    dec bc                                        ; $4295: $0b
    inc c                                         ; $4296: $0c
    ld b, e                                       ; $4297: $43
    ld a, b                                       ; $4298: $78
    dec de                                        ; $4299: $1b
    ret nz                                        ; $429a: $c0

    ld h, e                                       ; $429b: $63
    or [hl]                                       ; $429c: $b6
    db $10                                        ; $429d: $10
    sbc c                                         ; $429e: $99

jr_0a8_429f:
    ld d, e                                       ; $429f: $53
    ld a, h                                       ; $42a0: $7c
    ld c, d                                       ; $42a1: $4a
    and b                                         ; $42a2: $a0
    dec de                                        ; $42a3: $1b
    rst $38                                       ; $42a4: $ff
    ld c, b                                       ; $42a5: $48
    ld c, e                                       ; $42a6: $4b
    cp h                                          ; $42a7: $bc
    inc hl                                        ; $42a8: $23
    ld h, h                                       ; $42a9: $64
    ld b, e                                       ; $42aa: $43
    add d                                         ; $42ab: $82
    ld h, d                                       ; $42ac: $62
    ld h, c                                       ; $42ad: $61
    ld h, c                                       ; $42ae: $61
    ld hl, sp+$2a                                 ; $42af: $f8 $2a
    xor b                                         ; $42b1: $a8
    ld a, [hl+]                                   ; $42b2: $2a
    sub h                                         ; $42b3: $94
    ld c, c                                       ; $42b4: $49
    rst $38                                       ; $42b5: $ff
    ret nz                                        ; $42b6: $c0

    ld sp, $92a0                                  ; $42b7: $31 $a0 $92
    inc l                                         ; $42ba: $2c
    jr z, jr_0a8_429f                             ; $42bb: $28 $e2

    ld a, [hl-]                                   ; $42bd: $3a
    ld h, b                                       ; $42be: $60
    ld e, d                                       ; $42bf: $5a
    ld h, e                                       ; $42c0: $63
    ld b, b                                       ; $42c1: $40
    ret                                           ; $42c2: $c9


    ld b, c                                       ; $42c3: $41
    jr @-$3e                                      ; $42c4: $18 $c0

    rst $38                                       ; $42c6: $ff
    dec [hl]                                      ; $42c7: $35

jr_0a8_42c8:
    ld a, b                                       ; $42c8: $78

jr_0a8_42c9:
    call c, Call_0a8_483c                         ; $42c9: $dc $3c $48
    inc [hl]                                      ; $42cc: $34
    ld a, a                                       ; $42cd: $7f
    ld h, h                                       ; $42ce: $64
    adc h                                         ; $42cf: $8c
    inc de                                        ; $42d0: $13
    ld d, [hl]                                    ; $42d1: $56
    ld l, e                                       ; $42d2: $6b
    and b                                         ; $42d3: $a0
    ld d, e                                       ; $42d4: $53
    ld [hl], l                                    ; $42d5: $75
    ld [hl], e                                    ; $42d6: $73
    db $fc                                        ; $42d7: $fc
    ld a, [bc]                                    ; $42d8: $0a
    ld [hl+], a                                   ; $42d9: $22
    cp e                                          ; $42da: $bb
    add hl, de                                    ; $42db: $19
    jr z, jr_0a8_430b                             ; $42dc: $28 $2d

    ld c, h                                       ; $42de: $4c
    inc [hl]                                      ; $42df: $34
    ld h, c                                       ; $42e0: $61

jr_0a8_42e1:
    ld d, h                                       ; $42e1: $54
    ld c, c                                       ; $42e2: $49
    dec b                                         ; $42e3: $05
    ld l, c                                       ; $42e4: $69
    nop                                           ; $42e5: $00
    ld d, c                                       ; $42e6: $51
    inc b                                         ; $42e7: $04
    ld bc, $0080                                  ; $42e8: $01 $80 $00
    ld bc, $0908                                  ; $42eb: $01 $08 $09
    add hl, bc                                    ; $42ee: $09
    add hl, bc                                    ; $42ef: $09
    inc b                                         ; $42f0: $04
    ld [$10ff], sp                                ; $42f1: $08 $ff $10
    jr z, jr_0a8_4305                             ; $42f4: $28 $0f

    nop                                           ; $42f6: $00
    inc bc                                        ; $42f7: $03
    db $10                                        ; $42f8: $10
    db $10                                        ; $42f9: $10
    ld b, b                                       ; $42fa: $40
    inc hl                                        ; $42fb: $23

jr_0a8_42fc:
    db $10                                        ; $42fc: $10
    add hl, bc                                    ; $42fd: $09
    jr nc, @+$32                                  ; $42fe: $30 $30

    jr nz, jr_0a8_4305                            ; $4300: $20 $03

    add b                                         ; $4302: $80
    rst $38                                       ; $4303: $ff
    ld c, e                                       ; $4304: $4b

jr_0a8_4305:
    jr @+$55                                      ; $4305: $18 $53

    ld [$0059], sp                                ; $4307: $08 $59 $00
    ld h, h                                       ; $430a: $64

jr_0a8_430b:
    jr c, jr_0a8_4311                             ; $430b: $38 $04

    jr jr_0a8_4385                                ; $430d: $18 $76

    ld c, b                                       ; $430f: $48
    ld a, d                                       ; $4310: $7a

jr_0a8_4311:
    db $10                                        ; $4311: $10
    ld e, c                                       ; $4312: $59
    jr nc, jr_0a8_42fc                            ; $4313: $30 $e7

    inc sp                                        ; $4315: $33
    jr @+$44                                      ; $4316: $18 $42

    jr jr_0a8_4356                                ; $4318: $18 $3c

    ld [$0404], sp                                ; $431a: $08 $04 $04
    inc b                                         ; $431d: $04
    db $10                                        ; $431e: $10
    inc e                                         ; $431f: $1c
    jr nz, jr_0a8_42c8                            ; $4320: $20 $a6

    nop                                           ; $4322: $00
    rst $38                                       ; $4323: $ff
    inc b                                         ; $4324: $04
    db $10                                        ; $4325: $10
    add hl, hl                                    ; $4326: $29
    ld b, b                                       ; $4327: $40
    scf                                           ; $4328: $37
    jr nz, jr_0a8_4383                            ; $4329: $20 $58

    sbc b                                         ; $432b: $98
    call c, $8b40                                 ; $432c: $dc $40 $8b
    jr jr_0a8_42e1                                ; $432f: $18 $b0

    jr z, jr_0a8_438b                             ; $4331: $28 $58

    jr z, @+$01                                   ; $4333: $28 $ff

    db $e4                                        ; $4335: $e4
    jr nz, jr_0a8_4390                            ; $4336: $20 $58

    jr z, @-$0b                                   ; $4338: $28 $f3

    ld b, b                                       ; $433a: $40
    db $e3                                        ; $433b: $e3
    or b                                          ; $433c: $b0
    jr z, jr_0a8_4350                             ; $433d: $28 $11

    ccf                                           ; $433f: $3f
    add c                                         ; $4340: $81
    ld d, h                                       ; $4341: $54
    ld c, c                                       ; $4342: $49
    rra                                           ; $4343: $1f
    ld d, c                                       ; $4344: $51
    rst $38                                       ; $4345: $ff
    cpl                                           ; $4346: $2f
    ld h, b                                       ; $4347: $60
    inc b                                         ; $4348: $04
    ld de, $38f0                                  ; $4349: $11 $f0 $38
    dec e                                         ; $434c: $1d
    ld de, $385c                                  ; $434d: $11 $5c $38

jr_0a8_4350:
    ld a, h                                       ; $4350: $7c
    ld bc, $08df                                  ; $4351: $01 $df $08
    ld d, c                                       ; $4354: $51
    ld h, b                                       ; $4355: $60

jr_0a8_4356:
    rst $38                                       ; $4356: $ff
    add hl, de                                    ; $4357: $19
    ld sp, $21a3                                  ; $4358: $31 $a3 $21
    ld c, b                                       ; $435b: $48
    add hl, hl                                    ; $435c: $29
    ld e, d                                       ; $435d: $5a
    add hl, hl                                    ; $435e: $29
    jr nc, @+$2a                                  ; $435f: $30 $28

    jr c, jr_0a8_4393                             ; $4361: $38 $30

    ld c, b                                       ; $4363: $48
    jr nz, @+$0a                                  ; $4364: $20 $08

    jr z, @+$01                                   ; $4366: $28 $ff

    xor e                                         ; $4368: $ab
    ld l, c                                       ; $4369: $69
    inc [hl]                                      ; $436a: $34
    jr nc, jr_0a8_436d                            ; $436b: $30 $00

jr_0a8_436d:
    ld sp, $300f                                  ; $436d: $31 $0f $30
    rra                                           ; $4370: $1f
    add hl, de                                    ; $4371: $19
    call $fd69                                    ; $4372: $cd $69 $fd
    ld c, c                                       ; $4375: $49
    ld bc, $ff2a                                  ; $4376: $01 $2a $ff
    ld hl, sp+$41                                 ; $4379: $f8 $41
    ld c, d                                       ; $437b: $4a
    ld [hl], d                                    ; $437c: $72
    inc l                                         ; $437d: $2c
    ld d, b                                       ; $437e: $50
    cp b                                          ; $437f: $b8
    ld de, $50b2                                  ; $4380: $11 $b2 $50

jr_0a8_4383:
    rst $08                                       ; $4383: $cf
    ld c, b                                       ; $4384: $48

jr_0a8_4385:
    ld [$c849], sp                                ; $4385: $08 $49 $c8
    jr nc, @+$01                                  ; $4388: $30 $ff

    rrca                                          ; $438a: $0f

jr_0a8_438b:
    ld h, b                                       ; $438b: $60
    db $e3                                        ; $438c: $e3
    ld l, b                                       ; $438d: $68
    add e                                         ; $438e: $83

jr_0a8_438f:
    ld l, c                                       ; $438f: $69

jr_0a8_4390:
    inc a                                         ; $4390: $3c
    ret z                                         ; $4391: $c8

    ret z                                         ; $4392: $c8

jr_0a8_4393:
    ld c, d                                       ; $4393: $4a
    ld e, b                                       ; $4394: $58
    ld [hl-], a                                   ; $4395: $32
    sbc a                                         ; $4396: $9f
    ld d, b                                       ; $4397: $50
    ld l, b                                       ; $4398: $68
    ld b, d                                       ; $4399: $42
    rst $38                                       ; $439a: $ff
    ld [hl], b                                    ; $439b: $70
    ld [hl+], a                                   ; $439c: $22
    db $10                                        ; $439d: $10
    inc sp                                        ; $439e: $33
    dec b                                         ; $439f: $05
    jr nz, jr_0a8_43c1                            ; $43a0: $20 $1f

    dec de                                        ; $43a2: $1b
    inc b                                         ; $43a3: $04
    jr c, jr_0a8_438f                             ; $43a4: $38 $e9

    ld l, d                                       ; $43a6: $6a
    xor b                                         ; $43a7: $a8
    ld [bc], a                                    ; $43a8: $02
    xor h                                         ; $43a9: $ac
    ld a, [bc]                                    ; $43aa: $0a
    rst $38                                       ; $43ab: $ff
    inc b                                         ; $43ac: $04
    db $10                                        ; $43ad: $10
    jr z, jr_0a8_43c8                             ; $43ae: $28 $18

    inc bc                                        ; $43b0: $03
    ld l, b                                       ; $43b1: $68
    ld [$3f32], a                                 ; $43b2: $ea $32 $3f
    ld d, d                                       ; $43b5: $52
    ld h, c                                       ; $43b6: $61
    ld d, b                                       ; $43b7: $50
    ld [hl], h                                    ; $43b8: $74
    ld b, b                                       ; $43b9: $40
    rrca                                          ; $43ba: $0f
    ld h, b                                       ; $43bb: $60
    add b                                         ; $43bc: $80
    or c                                          ; $43bd: $b1
    ld [hl], b                                    ; $43be: $70
    ccf                                           ; $43bf: $3f
    nop                                           ; $43c0: $00

jr_0a8_43c1:
    ld d, e                                       ; $43c1: $53
    inc b                                         ; $43c2: $04
    ld bc, $0098                                  ; $43c3: $01 $98 $00
    inc b                                         ; $43c6: $04
    ld b, b                                       ; $43c7: $40

jr_0a8_43c8:
    inc b                                         ; $43c8: $04
    nop                                           ; $43c9: $00
    ld bc, $2800                                  ; $43ca: $01 $00 $28
    nop                                           ; $43cd: $00
    ld l, a                                       ; $43ce: $6f
    add hl, bc                                    ; $43cf: $09
    inc b                                         ; $43d0: $04
    jr nz, jr_0a8_43e3                            ; $43d1: $20 $10

    db $10                                        ; $43d3: $10
    add hl, bc                                    ; $43d4: $09
    ld bc, $1020                                  ; $43d5: $01 $20 $10
    ld d, b                                       ; $43d8: $50
    dec a                                         ; $43d9: $3d
    jr z, jr_0a8_43fc                             ; $43da: $28 $20

    jr nz, @+$81                                  ; $43dc: $20 $7f

    inc b                                         ; $43de: $04
    jr nz, @+$3a                                  ; $43df: $20 $38

    dec bc                                        ; $43e1: $0b
    nop                                           ; $43e2: $00

jr_0a8_43e3:
    inc b                                         ; $43e3: $04
    jr jr_0a8_4442                                ; $43e4: $18 $5c

    ld h, b                                       ; $43e6: $60
    ld e, b                                       ; $43e7: $58
    db $10                                        ; $43e8: $10
    add hl, hl                                    ; $43e9: $29
    db $10                                        ; $43ea: $10
    inc bc                                        ; $43eb: $03
    xor b                                         ; $43ec: $a8
    rst $38                                       ; $43ed: $ff
    ld a, c                                       ; $43ee: $79
    jr z, jr_0a8_4461                             ; $43ef: $28 $70

    jr z, @+$5a                                   ; $43f1: $28 $58

    jr nz, jr_0a8_4427                            ; $43f3: $20 $32

    jr c, @+$5e                                   ; $43f5: $38 $5c

    jr c, @+$66                                   ; $43f7: $38 $64

    jr jr_0a8_444c                                ; $43f9: $18 $51

    db $10                                        ; $43fb: $10

jr_0a8_43fc:
    ld [$ff30], sp                                ; $43fc: $08 $30 $ff
    ld c, $58                                     ; $43ff: $0e $58

jr_0a8_4401:
    ld d, b                                       ; $4401: $50
    ld b, b                                       ; $4402: $40
    call Call_0a8_5428                            ; $4403: $cd $28 $54
    ld b, b                                       ; $4406: $40
    add a                                         ; $4407: $87
    jr @+$6e                                      ; $4408: $18 $6c

    jr c, jr_0a8_441a                             ; $440a: $38 $0e

    ld a, b                                       ; $440c: $78
    sub b                                         ; $440d: $90
    jr nz, @+$01                                  ; $440e: $20 $ff

    sbc a                                         ; $4410: $9f
    ld c, b                                       ; $4411: $48
    xor a                                         ; $4412: $af
    ld a, b                                       ; $4413: $78
    adc $80                                       ; $4414: $ce $80
    add d                                         ; $4416: $82
    ld d, b                                       ; $4417: $50
    ld c, $60                                     ; $4418: $0e $60

jr_0a8_441a:
    sub h                                         ; $441a: $94
    ld h, b                                       ; $441b: $60
    sub b                                         ; $441c: $90
    ld [hl], b                                    ; $441d: $70
    ld d, a                                       ; $441e: $57
    ld sp, $abff                                  ; $441f: $31 $ff $ab
    ld de, $603a                                  ; $4422: $11 $3a $60
    ld c, $60                                     ; $4425: $0e $60

jr_0a8_4427:
    inc l                                         ; $4427: $2c
    jr c, jr_0a8_4449                             ; $4428: $38 $1f

    add hl, sp                                    ; $442a: $39
    xor h                                         ; $442b: $ac
    ld bc, $4004                                  ; $442c: $01 $04 $40
    ld a, l                                       ; $442f: $7d
    ld l, c                                       ; $4430: $69
    or $0b                                        ; $4431: $f6 $0b
    ld e, b                                       ; $4433: $58
    ld l, b                                       ; $4434: $68
    add hl, de                                    ; $4435: $19
    ldh a, [rNR42]                                ; $4436: $f0 $21
    ld [hl], b                                    ; $4438: $70
    jr nz, jr_0a8_443b                            ; $4439: $20 $00

jr_0a8_443b:
    ret nz                                        ; $443b: $c0

    ld de, $2a28                                  ; $443c: $11 $28 $2a
    dec l                                         ; $443f: $2d
    nop                                           ; $4440: $00
    ld e, a                                       ; $4441: $5f

jr_0a8_4442:
    inc b                                         ; $4442: $04
    ld bc, $0080                                  ; $4443: $01 $80 $00
    ld bc, $1340                                  ; $4446: $01 $40 $13

jr_0a8_4449:
    ld l, b                                       ; $4449: $68
    jr nz, @+$1a                                  ; $444a: $20 $18

jr_0a8_444c:
    inc b                                         ; $444c: $04
    ld c, b                                       ; $444d: $48
    ld [bc], a                                    ; $444e: $02
    ld d, b                                       ; $444f: $50
    rst $38                                       ; $4450: $ff
    inc a                                         ; $4451: $3c
    jr @+$25                                      ; $4452: $18 $23

    jr nz, jr_0a8_44a2                            ; $4454: $20 $4c

    ld [hl], b                                    ; $4456: $70
    dec hl                                        ; $4457: $2b
    ld e, b                                       ; $4458: $58
    ld b, b                                       ; $4459: $40
    ld d, b                                       ; $445a: $50

jr_0a8_445b:
    ld [hl], l                                    ; $445b: $75
    ld [$684d], sp                                ; $445c: $08 $4d $68
    add b                                         ; $445f: $80
    ld b, b                                       ; $4460: $40

jr_0a8_4461:
    rst $38                                       ; $4461: $ff
    sbc b                                         ; $4462: $98
    jr nz, jr_0a8_4401                            ; $4463: $20 $9c

    db $10                                        ; $4465: $10
    inc b                                         ; $4466: $04
    ld d, b                                       ; $4467: $50
    ld de, $5868                                  ; $4468: $11 $68 $58
    ld hl, sp-$40                                 ; $446b: $f8 $c0
    jr c, jr_0a8_445b                             ; $446d: $38 $ec

    ld c, b                                       ; $446f: $48
    rst $30                                       ; $4470: $f7
    ld [$fbff], sp                                ; $4471: $08 $ff $fb
    ld d, b                                       ; $4474: $50
    ld de, $1d48                                  ; $4475: $11 $48 $1d
    jr z, jr_0a8_4496                             ; $4478: $28 $1c

    ld hl, $480f                                  ; $447a: $21 $0f $48
    sbc d                                         ; $447d: $9a
    ld c, b                                       ; $447e: $48
    ld a, [de]                                    ; $447f: $1a
    ld de, $80c1                                  ; $4480: $11 $c1 $80
    rst $38                                       ; $4483: $ff
    ld e, c                                       ; $4484: $59
    ld c, b                                       ; $4485: $48
    ld l, b                                       ; $4486: $68
    ld [hl], b                                    ; $4487: $70
    rst $30                                       ; $4488: $f7
    and b                                         ; $4489: $a0
    inc de                                        ; $448a: $13
    ld c, c                                       ; $448b: $49
    dec c                                         ; $448c: $0d
    ld e, b                                       ; $448d: $58
    adc h                                         ; $448e: $8c

jr_0a8_448f:
    cp b                                          ; $448f: $b8
    jr nc, jr_0a8_4503                            ; $4490: $30 $71

    ldh [$58], a                                  ; $4492: $e0 $58
    ld hl, sp-$10                                 ; $4494: $f8 $f0

jr_0a8_4496:
    ld e, b                                       ; $4496: $58
    call z, $eb31                                 ; $4497: $cc $31 $eb
    ld e, c                                       ; $449a: $59
    push de                                       ; $449b: $d5
    ld b, b                                       ; $449c: $40
    dec de                                        ; $449d: $1b
    ld [de], a                                    ; $449e: $12
    ret nz                                        ; $449f: $c0

    nop                                           ; $44a0: $00
    ld d, d                                       ; $44a1: $52

jr_0a8_44a2:
    inc b                                         ; $44a2: $04
    ld bc, $0098                                  ; $44a3: $01 $98 $00
    inc b                                         ; $44a6: $04
    ld b, b                                       ; $44a7: $40
    inc b                                         ; $44a8: $04
    nop                                           ; $44a9: $00
    ld bc, $0900                                  ; $44aa: $01 $00 $09
    ld sp, hl                                     ; $44ad: $f9
    ld [de], a                                    ; $44ae: $12
    nop                                           ; $44af: $00
    inc b                                         ; $44b0: $04
    ld [$2810], sp                                ; $44b1: $08 $10 $28
    dec l                                         ; $44b4: $2d
    ld d, b                                       ; $44b5: $50
    db $10                                        ; $44b6: $10
    stop                                          ; $44b7: $10 $00
    add hl, bc                                    ; $44b9: $09
    inc b                                         ; $44ba: $04

jr_0a8_44bb:
    jr jr_0a8_44bb                                ; $44bb: $18 $fe

    jr nc, @+$1a                                  ; $44bd: $30 $18

    ld de, $1508                                  ; $44bf: $11 $08 $15
    ld [$1840], sp                                ; $44c2: $08 $40 $18
    inc a                                         ; $44c5: $3c
    jr @+$42                                      ; $44c6: $18 $40

    jr z, jr_0a8_452b                             ; $44c8: $28 $61

    db $10                                        ; $44ca: $10
    add hl, bc                                    ; $44cb: $09
    ccf                                           ; $44cc: $3f
    add hl, bc                                    ; $44cd: $09
    add hl, bc                                    ; $44ce: $09
    inc b                                         ; $44cf: $04

jr_0a8_44d0:
    ld [$2880], sp                                ; $44d0: $08 $80 $28
    rrca                                          ; $44d3: $0f
    jr nz, jr_0a8_4538                            ; $44d4: $20 $62

    jr nc, @+$52                                  ; $44d6: $30 $50

    ld d, b                                       ; $44d8: $50
    adc l                                         ; $44d9: $8d
    ld c, b                                       ; $44da: $48
    rst $38                                       ; $44db: $ff
    and l                                         ; $44dc: $a5
    ld h, b                                       ; $44dd: $60
    xor h                                         ; $44de: $ac
    ld d, b                                       ; $44df: $50

jr_0a8_44e0:
    ld [bc], a                                    ; $44e0: $02
    nop                                           ; $44e1: $00
    xor b                                         ; $44e2: $a8
    jr z, @-$4e                                   ; $44e3: $28 $b0

    db $10                                        ; $44e5: $10

jr_0a8_44e6:
    ld h, b                                       ; $44e6: $60
    ld b, b                                       ; $44e7: $40
    ld h, h                                       ; $44e8: $64
    jr nz, jr_0a8_448f                            ; $44e9: $20 $a4

    jr nz, @+$01                                  ; $44eb: $20 $ff

    xor h                                         ; $44ed: $ac
    jr jr_0a8_4510                                ; $44ee: $18 $20

    ld [$28a8], sp                                ; $44f0: $08 $a8 $28
    or b                                          ; $44f3: $b0
    jr z, jr_0a8_4536                             ; $44f4: $28 $40

    ld d, b                                       ; $44f6: $50
    sub $10                                       ; $44f7: $d6 $10
    sbc c                                         ; $44f9: $99
    jr nz, @-$4e                                  ; $44fa: $20 $b0

    jr nz, @+$01                                  ; $44fc: $20 $ff

    rrca                                          ; $44fe: $0f
    ld h, b                                       ; $44ff: $60
    ld hl, sp+$40                                 ; $4500: $f8 $40
    nop                                           ; $4502: $00

jr_0a8_4503:
    add hl, de                                    ; $4503: $19
    add hl, sp                                    ; $4504: $39
    ld c, c                                       ; $4505: $49
    sub c                                         ; $4506: $91
    ld [$6958], sp                                ; $4507: $08 $58 $69
    add hl, de                                    ; $450a: $19
    add hl, de                                    ; $450b: $19
    ld [bc], a                                    ; $450c: $02
    ld c, b                                       ; $450d: $48
    rst $38                                       ; $450e: $ff
    inc d                                         ; $450f: $14

jr_0a8_4510:
    db $10                                        ; $4510: $10
    ld [$6330], sp                                ; $4511: $08 $30 $63
    jr jr_0a8_44d0                                ; $4514: $18 $ba

    jr jr_0a8_451c                                ; $4516: $18 $04

    jr @+$10                                      ; $4518: $18 $0e

    jr z, jr_0a8_44e0                             ; $451a: $28 $c4

jr_0a8_451c:
    jr c, jr_0a8_44e6                             ; $451c: $38 $c8

    ld c, b                                       ; $451e: $48
    rst $38                                       ; $451f: $ff
    ccf                                           ; $4520: $3f
    ld h, b                                       ; $4521: $60
    ld e, [hl]                                    ; $4522: $5e
    ld a, b                                       ; $4523: $78
    rst $18                                       ; $4524: $df
    ld e, b                                       ; $4525: $58
    ld bc, $6870                                  ; $4526: $01 $70 $68
    jr c, jr_0a8_455b                             ; $4529: $38 $30

jr_0a8_452b:
    add hl, de                                    ; $452b: $19
    inc c                                         ; $452c: $0c
    ld d, c                                       ; $452d: $51
    db $fc                                        ; $452e: $fc
    ld a, b                                       ; $452f: $78
    rst $38                                       ; $4530: $ff
    inc de                                        ; $4531: $13
    ld [hl], b                                    ; $4532: $70
    ld b, l                                       ; $4533: $45
    jr nz, jr_0a8_455a                            ; $4534: $20 $24

jr_0a8_4536:
    add hl, sp                                    ; $4536: $39
    add h                                         ; $4537: $84

jr_0a8_4538:
    ld c, c                                       ; $4538: $49
    jr nz, jr_0a8_455b                            ; $4539: $20 $20

    add b                                         ; $453b: $80
    ld c, c                                       ; $453c: $49
    db $f4                                        ; $453d: $f4
    ld de, $2004                                  ; $453e: $11 $04 $20
    rst $38                                       ; $4541: $ff
    add b                                         ; $4542: $80
    add hl, de                                    ; $4543: $19
    sub b                                         ; $4544: $90
    ld h, c                                       ; $4545: $61
    ld c, b                                       ; $4546: $48
    jr nc, jr_0a8_45ad                            ; $4547: $30 $64

    ld a, [de]                                    ; $4549: $1a
    ld [hl], l                                    ; $454a: $75
    jr nc, jr_0a8_455d                            ; $454b: $30 $10

    ld l, b                                       ; $454d: $68
    ld a, d                                       ; $454e: $7a
    ld [$0295], sp                                ; $454f: $08 $95 $02
    rst $38                                       ; $4552: $ff
    jr nz, @+$62                                  ; $4553: $20 $60

    ld b, b                                       ; $4555: $40
    add hl, sp                                    ; $4556: $39
    or h                                          ; $4557: $b4
    ld a, [hl+]                                   ; $4558: $2a
    or l                                          ; $4559: $b5

jr_0a8_455a:
    ld [hl], b                                    ; $455a: $70

jr_0a8_455b:
    dec h                                         ; $455b: $25
    ld a, [de]                                    ; $455c: $1a

jr_0a8_455d:
    ld [$ec28], sp                                ; $455d: $08 $28 $ec
    ld h, d                                       ; $4560: $62
    call z, $ff58                                 ; $4561: $cc $58 $ff
    sbc $00                                       ; $4564: $de $00
    sub e                                         ; $4566: $93
    ld e, b                                       ; $4567: $58
    rst $28                                       ; $4568: $ef
    jr jr_0a8_4595                                ; $4569: $18 $2a

    ld e, e                                       ; $456b: $5b
    call nz, $0402                                ; $456c: $c4 $02 $04
    ld b, b                                       ; $456f: $40
    ld [bc], a                                    ; $4570: $02
    ld l, b                                       ; $4571: $68
    ld b, c                                       ; $4572: $41
    ld h, b                                       ; $4573: $60
    rst $38                                       ; $4574: $ff
    ld [hl+], a                                   ; $4575: $22
    ld d, b                                       ; $4576: $50
    add b                                         ; $4577: $80
    add hl, de                                    ; $4578: $19
    call nz, Call_000_0408                        ; $4579: $c4 $08 $04
    jr jr_0a8_45c5                                ; $457c: $18 $47

    inc hl                                        ; $457e: $23
    and c                                         ; $457f: $a1
    ld [hl], b                                    ; $4580: $70
    jr nc, jr_0a8_45b6                            ; $4581: $30 $33

    ld l, h                                       ; $4583: $6c
    ld b, c                                       ; $4584: $41
    rst $38                                       ; $4585: $ff
    adc c                                         ; $4586: $89
    ld a, [hl+]                                   ; $4587: $2a
    ld l, l                                       ; $4588: $6d
    ld e, b                                       ; $4589: $58
    ld d, b                                       ; $458a: $50
    ld h, b                                       ; $458b: $60
    jr nz, jr_0a8_4597                            ; $458c: $20 $09

    inc b                                         ; $458e: $04
    ld c, c                                       ; $458f: $49
    ld d, h                                       ; $4590: $54
    pop de                                        ; $4591: $d1
    push hl                                       ; $4592: $e5
    inc hl                                        ; $4593: $23
    xor b                                         ; $4594: $a8

jr_0a8_4595:
    add hl, hl                                    ; $4595: $29
    rst $38                                       ; $4596: $ff

jr_0a8_4597:
    ld d, b                                       ; $4597: $50
    ld hl, $0b52                                  ; $4598: $21 $52 $0b

jr_0a8_459b:
    sub a                                         ; $459b: $97
    ld e, c                                       ; $459c: $59
    ld [hl-], a                                   ; $459d: $32
    and h                                         ; $459e: $a4
    cp b                                          ; $459f: $b8
    inc sp                                        ; $45a0: $33
    db $ec                                        ; $45a1: $ec
    ld b, c                                       ; $45a2: $41
    ld e, [hl]                                    ; $45a3: $5e
    ld [de], a                                    ; $45a4: $12
    cp b                                          ; $45a5: $b8
    ld e, d                                       ; $45a6: $5a
    rst $38                                       ; $45a7: $ff
    add b                                         ; $45a8: $80
    add hl, hl                                    ; $45a9: $29
    ld hl, sp+$28                                 ; $45aa: $f8 $28
    ld b, h                                       ; $45ac: $44

jr_0a8_45ad:
    ld [hl], c                                    ; $45ad: $71
    db $e4                                        ; $45ae: $e4
    ld b, d                                       ; $45af: $42
    ret nz                                        ; $45b0: $c0

    inc hl                                        ; $45b1: $23
    and b                                         ; $45b2: $a0
    ld a, e                                       ; $45b3: $7b
    jr nz, jr_0a8_460e                            ; $45b4: $20 $58

jr_0a8_45b6:
    or b                                          ; $45b6: $b0
    and e                                         ; $45b7: $a3
    rst $38                                       ; $45b8: $ff
    ret nc                                        ; $45b9: $d0

    jr z, jr_0a8_459b                             ; $45ba: $28 $df

    ld c, e                                       ; $45bc: $4b
    pop hl                                        ; $45bd: $e1
    add hl, de                                    ; $45be: $19
    inc b                                         ; $45bf: $04
    jr nc, jr_0a8_45c4                            ; $45c0: $30 $02

    inc h                                         ; $45c2: $24
    add h                                         ; $45c3: $84

jr_0a8_45c4:
    ld c, c                                       ; $45c4: $49

jr_0a8_45c5:
    and d                                         ; $45c5: $a2
    dec de                                        ; $45c6: $1b
    call c, $ff54                                 ; $45c7: $dc $54 $ff
    ldh [$5b], a                                  ; $45ca: $e0 $5b
    add hl, de                                    ; $45cc: $19
    ld sp, $6490                                  ; $45cd: $31 $90 $64
    ret nz                                        ; $45d0: $c0

    jr nc, jr_0a8_462f                            ; $45d1: $30 $5c

    inc a                                         ; $45d3: $3c
    ld h, b                                       ; $45d4: $60
    inc h                                         ; $45d5: $24
    ld c, l                                       ; $45d6: $4d
    dec d                                         ; $45d7: $15
    ret z                                         ; $45d8: $c8

    ld [hl], e                                    ; $45d9: $73
    rst $38                                       ; $45da: $ff
    ld d, b                                       ; $45db: $50
    dec l                                         ; $45dc: $2d
    ld b, b                                       ; $45dd: $40
    ld [de], a                                    ; $45de: $12
    jr c, jr_0a8_464a                             ; $45df: $38 $69

    db $10                                        ; $45e1: $10
    sub b                                         ; $45e2: $90
    ldh [$3a], a                                  ; $45e3: $e0 $3a
    sub b                                         ; $45e5: $90
    ld b, l                                       ; $45e6: $45
    pop bc                                        ; $45e7: $c1
    inc l                                         ; $45e8: $2c
    ld b, b                                       ; $45e9: $40
    ld l, b                                       ; $45ea: $68
    rst $38                                       ; $45eb: $ff
    call nz, $e03b                                ; $45ec: $c4 $3b $e0
    ld c, b                                       ; $45ef: $48
    ld d, b                                       ; $45f0: $50
    add hl, de                                    ; $45f1: $19
    ld c, h                                       ; $45f2: $4c
    ld d, b                                       ; $45f3: $50
    ret c                                         ; $45f4: $d8

    ld a, e                                       ; $45f5: $7b
    ld e, d                                       ; $45f6: $5a
    inc de                                        ; $45f7: $13
    ret nc                                        ; $45f8: $d0

    ld b, h                                       ; $45f9: $44

jr_0a8_45fa:
    call z, $ff4d                                 ; $45fa: $cc $4d $ff
    ret nz                                        ; $45fd: $c0

    ld e, d                                       ; $45fe: $5a
    ld a, a                                       ; $45ff: $7f
    sub d                                         ; $4600: $92
    sbc h                                         ; $4601: $9c
    ld h, b                                       ; $4602: $60
    ld h, c                                       ; $4603: $61
    ld l, e                                       ; $4604: $6b
    ld e, h                                       ; $4605: $5c

jr_0a8_4606:
    ld b, h                                       ; $4606: $44
    and b                                         ; $4607: $a0
    dec l                                         ; $4608: $2d
    ldh a, [rWX]                                  ; $4609: $f0 $4b
    jr z, jr_0a8_4659                             ; $460b: $28 $4c

    rst $38                                       ; $460d: $ff

jr_0a8_460e:
    inc a                                         ; $460e: $3c
    ld l, e                                       ; $460f: $6b
    ld c, b                                       ; $4610: $48
    ld c, [hl]                                    ; $4611: $4e
    ld h, b                                       ; $4612: $60
    ld c, c                                       ; $4613: $49
    and a                                         ; $4614: $a7
    adc h                                         ; $4615: $8c
    xor c                                         ; $4616: $a9
    dec hl                                        ; $4617: $2b
    cp h                                          ; $4618: $bc
    ld c, e                                       ; $4619: $4b
    cp a                                          ; $461a: $bf
    add hl, de                                    ; $461b: $19
    ldh [$5d], a                                  ; $461c: $e0 $5d
    cp $5b                                        ; $461e: $fe $5b
    ld b, b                                       ; $4620: $40
    xor h                                         ; $4621: $ac
    ld [hl], b                                    ; $4622: $70
    db $ed                                        ; $4623: $ed
    dec [hl]                                      ; $4624: $35
    or $a2                                        ; $4625: $f6 $a2
    ret nz                                        ; $4627: $c0

    ld e, $86                                     ; $4628: $1e $86
    ld a, e                                       ; $462a: $7b
    ld a, a                                       ; $462b: $7f
    ld b, b                                       ; $462c: $40
    inc b                                         ; $462d: $04

jr_0a8_462e:
    add d                                         ; $462e: $82

jr_0a8_462f:
    nop                                           ; $462f: $00
    ld e, a                                       ; $4630: $5f
    inc b                                         ; $4631: $04
    ld bc, $0080                                  ; $4632: $01 $80 $00
    ld bc, $0710                                  ; $4635: $01 $10 $07
    nop                                           ; $4638: $00
    db $10                                        ; $4639: $10

jr_0a8_463a:
    ld d, b                                       ; $463a: $50
    ld d, $20                                     ; $463b: $16 $20
    jr nz, @+$12                                  ; $463d: $20 $10

    ld a, $09                                     ; $463f: $3e $09
    add hl, bc                                    ; $4641: $09
    inc b                                         ; $4642: $04
    jr z, @+$32                                   ; $4643: $28 $30

    db $10                                        ; $4645: $10
    inc sp                                        ; $4646: $33
    ld [$2004], sp                                ; $4647: $08 $04 $20

jr_0a8_464a:
    ld d, b                                       ; $464a: $50
    ld [$fb09], sp                                ; $464b: $08 $09 $fb
    ld bc, $1040                                  ; $464e: $01 $40 $10

jr_0a8_4651:
    ld d, b                                       ; $4651: $50
    ld b, b                                       ; $4652: $40
    jr nz, jr_0a8_4693                            ; $4653: $20 $3e

    nop                                           ; $4655: $00
    inc b                                         ; $4656: $04
    stop                                          ; $4657: $10 $00

jr_0a8_4659:
    ld [$7900], sp                                ; $4659: $08 $00 $79
    ld l, b                                       ; $465c: $68
    rst $38                                       ; $465d: $ff
    adc b                                         ; $465e: $88
    ld l, b                                       ; $465f: $68
    sub e                                         ; $4660: $93

jr_0a8_4661:
    jr z, jr_0a8_45fa                             ; $4661: $28 $97

    db $10                                        ; $4663: $10
    ld h, b                                       ; $4664: $60
    jr nz, jr_0a8_4606                            ; $4665: $20 $9f

    ld b, b                                       ; $4667: $40
    xor b                                         ; $4668: $a8
    jr jr_0a8_466d                                ; $4669: $18 $02

    ret nc                                        ; $466b: $d0

    xor h                                         ; $466c: $ac

jr_0a8_466d:
    jr c, @+$01                                   ; $466d: $38 $ff

    dec c                                         ; $466f: $0d
    ld [$48ac], sp                                ; $4670: $08 $ac $48
    cp b                                          ; $4673: $b8
    ld [$48ac], sp                                ; $4674: $08 $ac $48
    and h                                         ; $4677: $a4
    jr jr_0a8_463a                                ; $4678: $18 $c0

    nop                                           ; $467a: $00
    inc b                                         ; $467b: $04
    ld b, b                                       ; $467c: $40
    and h                                         ; $467d: $a4
    ld [$04ff], sp                                ; $467e: $08 $ff $04
    ld c, b                                       ; $4681: $48
    ld [hl-], a                                   ; $4682: $32
    ld [$4804], sp                                ; $4683: $08 $04 $48
    call c, Call_000_3c48                         ; $4686: $dc $48 $3c
    db $10                                        ; $4689: $10
    db $eb                                        ; $468a: $eb

jr_0a8_468b:
    jr z, jr_0a8_4691                             ; $468b: $28 $04

    jr z, jr_0a8_462e                             ; $468d: $28 $9f

    ret z                                         ; $468f: $c8

    rst $38                                       ; $4690: $ff

jr_0a8_4691:
    inc de                                        ; $4691: $13
    add hl, de                                    ; $4692: $19

jr_0a8_4693:
    rrca                                          ; $4693: $0f
    ld d, b                                       ; $4694: $50
    sub e                                         ; $4695: $93
    ld [$4804], sp                                ; $4696: $08 $04 $48
    ld e, h                                       ; $4699: $5c
    ld b, c                                       ; $469a: $41
    ld e, l                                       ; $469b: $5d
    ld de, $2147                                  ; $469c: $11 $47 $21
    add hl, sp                                    ; $469f: $39
    ld sp, $d1ff                                  ; $46a0: $31 $ff $d1
    jr z, jr_0a8_4661                             ; $46a3: $28 $bc

    ld sp, $50b0                                  ; $46a5: $31 $b0 $50
    xor h                                         ; $46a8: $ac
    ld a, b                                       ; $46a9: $78

jr_0a8_46aa:
    sbc b                                         ; $46aa: $98
    jr nc, jr_0a8_4651                            ; $46ab: $30 $a4

    jr nz, jr_0a8_46aa                            ; $46ad: $20 $fb

    ld d, b                                       ; $46af: $50
    ldh [rNR11], a                                ; $46b0: $e0 $11
    rst $38                                       ; $46b2: $ff
    inc b                                         ; $46b3: $04
    ld e, b                                       ; $46b4: $58
    ld b, b                                       ; $46b5: $40
    ld e, c                                       ; $46b6: $59
    ld b, e                                       ; $46b7: $43
    ld a, b                                       ; $46b8: $78
    sbc b                                         ; $46b9: $98
    jr z, @-$62                                   ; $46ba: $28 $9c

    jr z, jr_0a8_470e                             ; $46bc: $28 $50

    ld c, d                                       ; $46be: $4a
    ld [hl], b                                    ; $46bf: $70
    ld e, b                                       ; $46c0: $58
    ld [hl], $12                                  ; $46c1: $36 $12
    rst $38                                       ; $46c3: $ff
    jr nz, jr_0a8_46ff                            ; $46c4: $20 $39

    inc c                                         ; $46c6: $0c
    ld a, [hl+]                                   ; $46c7: $2a
    ld l, b                                       ; $46c8: $68
    add hl, hl                                    ; $46c9: $29
    ld l, l                                       ; $46ca: $6d
    ld [hl+], a                                   ; $46cb: $22
    ld d, b                                       ; $46cc: $50
    ld c, b                                       ; $46cd: $48
    push af                                       ; $46ce: $f5
    ld de, $68f0                                  ; $46cf: $11 $f0 $68
    inc sp                                        ; $46d2: $33
    ld hl, $f2ff                                  ; $46d3: $21 $ff $f2
    ld c, b                                       ; $46d6: $48
    ld [bc], a                                    ; $46d7: $02
    ld c, c                                       ; $46d8: $49
    ld [hl], d                                    ; $46d9: $72
    ld hl, $3acc                                  ; $46da: $21 $cc $3a
    and b                                         ; $46dd: $a0
    add d                                         ; $46de: $82
    ld a, e                                       ; $46df: $7b
    add hl, hl                                    ; $46e0: $29
    xor $19                                       ; $46e1: $ee $19
    ldh [$3a], a                                  ; $46e3: $e0 $3a
    rst $38                                       ; $46e5: $ff
    inc sp                                        ; $46e6: $33
    ld e, b                                       ; $46e7: $58
    ld a, a                                       ; $46e8: $7f
    jr nc, jr_0a8_46aa                            ; $46e9: $30 $bf

    ld a, [hl-]                                   ; $46eb: $3a
    ldh [$38], a                                  ; $46ec: $e0 $38
    rst $30                                       ; $46ee: $f7
    jr nc, jr_0a8_4732                            ; $46ef: $30 $41

    ld a, d                                       ; $46f1: $7a
    rst $38                                       ; $46f2: $ff
    ld h, c                                       ; $46f3: $61
    inc d                                         ; $46f4: $14
    inc hl                                        ; $46f5: $23
    rst $38                                       ; $46f6: $ff
    call nc, $d082                                ; $46f7: $d4 $82 $d0
    jr nc, jr_0a8_468b                            ; $46fa: $30 $8f

    ld c, c                                       ; $46fc: $49
    inc e                                         ; $46fd: $1c
    ld l, b                                       ; $46fe: $68

jr_0a8_46ff:
    sub a                                         ; $46ff: $97
    ld c, e                                       ; $4700: $4b
    ld c, h                                       ; $4701: $4c
    ld c, b                                       ; $4702: $48
    ld l, b                                       ; $4703: $68
    ld l, d                                       ; $4704: $6a
    ld [hl], b                                    ; $4705: $70
    ld b, e                                       ; $4706: $43
    rst $38                                       ; $4707: $ff
    jr z, jr_0a8_477a                             ; $4708: $28 $70

    db $f4                                        ; $470a: $f4
    ld c, c                                       ; $470b: $49
    db $eb                                        ; $470c: $eb
    ld [hl], e                                    ; $470d: $73

jr_0a8_470e:
    inc c                                         ; $470e: $0c
    ld c, d                                       ; $470f: $4a
    jr @+$43                                      ; $4710: $18 $41

    sbc e                                         ; $4712: $9b
    ld a, [hl+]                                   ; $4713: $2a
    call nc, $c052                                ; $4714: $d4 $52 $c0
    inc sp                                        ; $4717: $33
    rst $38                                       ; $4718: $ff
    db $10                                        ; $4719: $10
    and b                                         ; $471a: $a0
    ldh a, [$3b]                                  ; $471b: $f0 $3b
    jr nz, jr_0a8_4759                            ; $471d: $20 $3a

    ld h, b                                       ; $471f: $60
    ld h, d                                       ; $4720: $62
    inc h                                         ; $4721: $24
    ld c, e                                       ; $4722: $4b
    jr nc, jr_0a8_477f                            ; $4723: $30 $5a

    ld hl, sp+$2a                                 ; $4725: $f8 $2a
    jr @-$65                                      ; $4727: $18 $99

    rst $38                                       ; $4729: $ff
    ld d, b                                       ; $472a: $50
    inc a                                         ; $472b: $3c
    or e                                          ; $472c: $b3
    add e                                         ; $472d: $83
    sub c                                         ; $472e: $91

Call_0a8_472f:
    inc b                                         ; $472f: $04
    jr c, jr_0a8_475d                             ; $4730: $38 $2b

jr_0a8_4732:
    db $db                                        ; $4732: $db
    ld l, d                                       ; $4733: $6a
    ld d, e                                       ; $4734: $53
    ld h, d                                       ; $4735: $62
    ld [hl], b                                    ; $4736: $70
    ld sp, $3c5c                                  ; $4737: $31 $5c $3c
    ret nz                                        ; $473a: $c0

    ld [hl], b                                    ; $473b: $70
    inc sp                                        ; $473c: $33
    rst $28                                       ; $473d: $ef
    inc d                                         ; $473e: $14
    ld c, l                                       ; $473f: $4d
    nop                                           ; $4740: $00
    ld d, d                                       ; $4741: $52
    inc b                                         ; $4742: $04
    ld bc, $0098                                  ; $4743: $01 $98 $00
    inc b                                         ; $4746: $04
    ld b, b                                       ; $4747: $40
    inc b                                         ; $4748: $04
    nop                                           ; $4749: $00
    ld bc, $0900                                  ; $474a: $01 $00 $09
    cpl                                           ; $474d: $2f
    add hl, bc                                    ; $474e: $09
    add hl, bc                                    ; $474f: $09
    inc b                                         ; $4750: $04
    ld [$2109], sp                                ; $4751: $08 $09 $21
    jr nc, @+$16                                  ; $4754: $30 $14

    jr @+$12                                      ; $4756: $18 $10

    db $10                                        ; $4758: $10

jr_0a8_4759:
    jr nz, jr_0a8_4763                            ; $4759: $20 $08

    rst $38                                       ; $475b: $ff
    dec e                                         ; $475c: $1d

jr_0a8_475d:
    db $10                                        ; $475d: $10
    db $10                                        ; $475e: $10
    ld b, b                                       ; $475f: $40
    jr nc, jr_0a8_4782                            ; $4760: $30 $20

    ld c, b                                       ; $4762: $48

jr_0a8_4763:
    ld c, b                                       ; $4763: $48
    ld d, h                                       ; $4764: $54
    db $10                                        ; $4765: $10
    daa                                           ; $4766: $27
    jr nz, jr_0a8_47b8                            ; $4767: $20 $4f

    ld [$0054], sp                                ; $4769: $08 $54 $00
    cpl                                           ; $476c: $2f
    nop                                           ; $476d: $00
    inc b                                         ; $476e: $04
    ld c, $38                                     ; $476f: $0e $38
    nop                                           ; $4771: $00
    jr nz, jr_0a8_47d4                            ; $4772: $20 $60

    ld l, h                                       ; $4774: $6c
    ld [$1829], sp                                ; $4775: $08 $29 $18
    inc b                                         ; $4778: $04
    ld c, b                                       ; $4779: $48

jr_0a8_477a:
    rst $38                                       ; $477a: $ff
    ld c, a                                       ; $477b: $4f
    ld h, b                                       ; $477c: $60
    cp a                                          ; $477d: $bf
    nop                                           ; $477e: $00

jr_0a8_477f:
    jr z, jr_0a8_4799                             ; $477f: $28 $18

    inc l                                         ; $4781: $2c

jr_0a8_4782:
    db $10                                        ; $4782: $10
    ld sp, $4418                                  ; $4783: $31 $18 $44
    ld c, b                                       ; $4786: $48
    sbc e                                         ; $4787: $9b
    jr jr_0a8_478e                                ; $4788: $18 $04

    jr nz, @+$01                                  ; $478a: $20 $ff

    xor b                                         ; $478c: $a8
    db $10                                        ; $478d: $10

jr_0a8_478e:
    ld a, $70                                     ; $478e: $3e $70
    add h                                         ; $4790: $84
    ld [$1004], sp                                ; $4791: $08 $04 $10
    ldh [$28], a                                  ; $4794: $e0 $28
    db $fc                                        ; $4796: $fc
    db $10                                        ; $4797: $10
    db $d3                                        ; $4798: $d3

jr_0a8_4799:
    jr nc, @+$63                                  ; $4799: $30 $61

    ld d, b                                       ; $479b: $50
    rst $38                                       ; $479c: $ff
    jr nz, jr_0a8_47cf                            ; $479d: $20 $30

    add hl, hl                                    ; $479f: $29
    add hl, sp                                    ; $47a0: $39
    cp b                                          ; $47a1: $b8
    jr jr_0a8_47dd                                ; $47a2: $18 $39

    add hl, sp                                    ; $47a4: $39
    reti                                          ; $47a5: $d9


    jr nz, @+$0a                                  ; $47a6: $20 $08

    jr z, jr_0a8_47ff                             ; $47a8: $28 $55

    ld l, c                                       ; $47aa: $69
    ld h, b                                       ; $47ab: $60
    ld h, c                                       ; $47ac: $61
    rst $38                                       ; $47ad: $ff
    ld c, h                                       ; $47ae: $4c
    ld sp, $0963                                  ; $47af: $31 $63 $09
    rra                                           ; $47b2: $1f
    add hl, bc                                    ; $47b3: $09
    ld e, h                                       ; $47b4: $5c
    ld c, c                                       ; $47b5: $49
    db $fd                                        ; $47b6: $fd
    ld c, b                                       ; $47b7: $48

jr_0a8_47b8:
    ld [hl], $31                                  ; $47b8: $36 $31
    ld a, h                                       ; $47ba: $7c
    ld b, c                                       ; $47bb: $41
    ld a, h                                       ; $47bc: $7c
    jr z, @+$01                                   ; $47bd: $28 $ff

    xor l                                         ; $47bf: $ad
    ld d, c                                       ; $47c0: $51
    ld b, h                                       ; $47c1: $44
    db $10                                        ; $47c2: $10
    sub h                                         ; $47c3: $94
    jr c, jr_0a8_4830                             ; $47c4: $38 $6a

    add hl, hl                                    ; $47c6: $29
    ld a, d                                       ; $47c7: $7a
    add hl, bc                                    ; $47c8: $09
    ld e, [hl]                                    ; $47c9: $5e
    ld e, c                                       ; $47ca: $59
    or b                                          ; $47cb: $b0
    ld hl, $301c                                  ; $47cc: $21 $1c $30

jr_0a8_47cf:
    ldh a, [$c8]                                  ; $47cf: $f0 $c8
    jr jr_0a8_4763                                ; $47d1: $18 $90

    ld h, c                                       ; $47d3: $61

jr_0a8_47d4:
    dec c                                         ; $47d4: $0d
    add hl, hl                                    ; $47d5: $29
    rra                                           ; $47d6: $1f
    jr z, jr_0a8_47dd                             ; $47d7: $28 $04

    ld c, d                                       ; $47d9: $4a
    nop                                           ; $47da: $00
    ld c, b                                       ; $47db: $48
    inc b                                         ; $47dc: $04

jr_0a8_47dd:
    ld bc, $00d0                                  ; $47dd: $01 $d0 $00
    nop                                           ; $47e0: $00
    rlca                                          ; $47e1: $07
    jr nz, jr_0a8_47e4                            ; $47e2: $20 $00

jr_0a8_47e4:
    inc b                                         ; $47e4: $04
    nop                                           ; $47e5: $00
    rra                                           ; $47e6: $1f
    add hl, bc                                    ; $47e7: $09
    add hl, bc                                    ; $47e8: $09
    nop                                           ; $47e9: $00
    inc b                                         ; $47ea: $04
    nop                                           ; $47eb: $00
    rrca                                          ; $47ec: $0f
    jr nz, jr_0a8_47fd                            ; $47ed: $20 $0e

    nop                                           ; $47ef: $00
    ld [bc], a                                    ; $47f0: $02
    jr @+$12                                      ; $47f1: $18 $10

jr_0a8_47f3:
    jr z, jr_0a8_47f3                             ; $47f3: $28 $fe

    add hl, hl                                    ; $47f5: $29
    ld [$182d], sp                                ; $47f6: $08 $2d $18
    ld a, $48                                     ; $47f9: $3e $48
    ld d, $10                                     ; $47fb: $16 $10

jr_0a8_47fd:
    inc [hl]                                      ; $47fd: $34
    nop                                           ; $47fe: $00

jr_0a8_47ff:
    inc b                                         ; $47ff: $04

jr_0a8_4800:
    jr c, @+$03                                   ; $4800: $38 $01

    jr c, @+$06                                   ; $4802: $38 $04

    ld a, [hl]                                    ; $4804: $7e
    inc b                                         ; $4805: $04

jr_0a8_4806:
    ld c, [hl]                                    ; $4806: $4e
    jr @+$0c                                      ; $4807: $18 $0a

    jr c, jr_0a8_487d                             ; $4809: $38 $72

    db $10                                        ; $480b: $10
    ld h, b                                       ; $480c: $60
    ld e, b                                       ; $480d: $58
    ld [hl], e                                    ; $480e: $73
    nop                                           ; $480f: $00

jr_0a8_4810:
    ld a, e                                       ; $4810: $7b
    ld [$ff00], sp                                ; $4811: $08 $00 $ff
    inc l                                         ; $4814: $2c
    nop                                           ; $4815: $00
    add e                                         ; $4816: $83
    nop                                           ; $4817: $00
    adc a                                         ; $4818: $8f
    nop                                           ; $4819: $00
    jr c, jr_0a8_4844                             ; $481a: $38 $28

    ld b, b                                       ; $481c: $40
    jr jr_0a8_4857                                ; $481d: $18 $38

    jr c, jr_0a8_486b                             ; $481f: $38 $4a

    jr jr_0a8_4857                                ; $4821: $18 $34

    jr @+$01                                      ; $4823: $18 $ff

    inc b                                         ; $4825: $04
    ld h, b                                       ; $4826: $60
    or l                                          ; $4827: $b5
    db $10                                        ; $4828: $10

jr_0a8_4829:
    inc b                                         ; $4829: $04
    jr nc, @-$47                                  ; $482a: $30 $b7

    jr nz, jr_0a8_4832                            ; $482c: $20 $04

    ld b, b                                       ; $482e: $40
    db $e4                                        ; $482f: $e4

jr_0a8_4830:
    nop                                           ; $4830: $00
    inc b                                         ; $4831: $04

jr_0a8_4832:
    jr c, jr_0a8_4858                             ; $4832: $38 $24

    jr nc, @+$01                                  ; $4834: $30 $ff

    jr nc, jr_0a8_4870                            ; $4836: $30 $38

    inc [hl]                                      ; $4838: $34
    ld d, b                                       ; $4839: $50
    inc h                                         ; $483a: $24
    db $10                                        ; $483b: $10

Call_0a8_483c:
    inc [hl]                                      ; $483c: $34
    jr c, @-$46                                   ; $483d: $38 $b8

jr_0a8_483f:
    jr c, jr_0a8_47dd                             ; $483f: $38 $9c

    db $10                                        ; $4841: $10
    xor b                                         ; $4842: $a8
    nop                                           ; $4843: $00

jr_0a8_4844:
    ld l, b                                       ; $4844: $68
    ld c, b                                       ; $4845: $48
    rst $38                                       ; $4846: $ff
    ld b, b                                       ; $4847: $40
    jr c, @+$7a                                   ; $4848: $38 $78

    jr nc, jr_0a8_4806                            ; $484a: $30 $ba

    jr c, jr_0a8_4810                             ; $484c: $38 $c2

    jr z, jr_0a8_4888                             ; $484e: $28 $38

jr_0a8_4850:
    jr nz, @+$0a                                  ; $4850: $20 $08

    jr z, jr_0a8_4800                             ; $4852: $28 $ac

    ret c                                         ; $4854: $d8

    cp $60                                        ; $4855: $fe $60

jr_0a8_4857:
    rst $38                                       ; $4857: $ff

jr_0a8_4858:
    inc hl                                        ; $4858: $23
    ld hl, $4004                                  ; $4859: $21 $04 $40
    or d                                          ; $485c: $b2
    add hl, bc                                    ; $485d: $09
    inc b                                         ; $485e: $04
    ld c, b                                       ; $485f: $48
    add b                                         ; $4860: $80
    ld b, c                                       ; $4861: $41
    call z, Call_000_3611                         ; $4862: $cc $11 $36
    jr c, @+$12                                   ; $4865: $38 $10

    jr z, jr_0a8_4829                             ; $4867: $28 $c0

    ld e, h                                       ; $4869: $5c
    add hl, sp                                    ; $486a: $39

jr_0a8_486b:
    inc c                                         ; $486b: $0c
    ld a, [bc]                                    ; $486c: $0a
    ld c, l                                       ; $486d: $4d
    nop                                           ; $486e: $00
    ld c, b                                       ; $486f: $48

jr_0a8_4870:
    inc b                                         ; $4870: $04
    ld bc, $00d0                                  ; $4871: $01 $d0 $00
    nop                                           ; $4874: $00
    rlca                                          ; $4875: $07
    jr nz, jr_0a8_4878                            ; $4876: $20 $00

jr_0a8_4878:
    inc b                                         ; $4878: $04
    nop                                           ; $4879: $00
    rra                                           ; $487a: $1f
    add hl, bc                                    ; $487b: $09
    add hl, bc                                    ; $487c: $09

jr_0a8_487d:
    nop                                           ; $487d: $00
    inc b                                         ; $487e: $04

jr_0a8_487f:
    nop                                           ; $487f: $00
    ld d, $10                                     ; $4880: $16 $10
    inc b                                         ; $4882: $04
    jr z, jr_0a8_489d                             ; $4883: $28 $18

    ld [$2029], sp                                ; $4885: $08 $29 $20

jr_0a8_4888:
    rst $28                                       ; $4888: $ef
    rrca                                          ; $4889: $0f
    jr nz, @+$32                                  ; $488a: $20 $30

    db $10                                        ; $488c: $10
    jr jr_0a8_4897                                ; $488d: $18 $08

    add hl, bc                                    ; $488f: $09
    cpl                                           ; $4890: $2f
    nop                                           ; $4891: $00
    inc b                                         ; $4892: $04
    ld [$381e], sp                                ; $4893: $08 $1e $38
    add hl, sp                                    ; $4896: $39

jr_0a8_4897:
    jr nz, jr_0a8_4858                            ; $4897: $20 $bf

    ld d, h                                       ; $4899: $54
    stop                                          ; $489a: $10 $00
    ld c, b                                       ; $489c: $48

jr_0a8_489d:
    nop                                           ; $489d: $00
    inc b                                         ; $489e: $04
    db $10                                        ; $489f: $10
    jr z, jr_0a8_48aa                             ; $48a0: $28 $08

    inc bc                                        ; $48a2: $03
    jr nc, @+$10                                  ; $48a3: $30 $0e

    jr @+$68                                      ; $48a5: $18 $66

    ld [$04ff], sp                                ; $48a7: $08 $ff $04

jr_0a8_48aa:
    db $10                                        ; $48aa: $10
    ld [hl], a                                    ; $48ab: $77
    jr @+$7a                                      ; $48ac: $18 $78

    jr z, jr_0a8_48b4                             ; $48ae: $28 $04

    db $10                                        ; $48b0: $10
    ld e, b                                       ; $48b1: $58
    jr c, jr_0a8_4914                             ; $48b2: $38 $60

jr_0a8_48b4:
    jr nc, jr_0a8_483f                            ; $48b4: $30 $89

    jr nz, jr_0a8_4936                            ; $48b6: $20 $7e

    jr @+$01                                      ; $48b8: $18 $ff

jr_0a8_48ba:
    xor b                                         ; $48ba: $a8
    ld [$2062], sp                                ; $48bb: $08 $62 $20
    ld [$3820], sp                                ; $48be: $08 $20 $38
    jr jr_0a8_48c7                                ; $48c1: $18 $04

    jr c, jr_0a8_4850                             ; $48c3: $38 $8b

    ld c, b                                       ; $48c5: $48
    cp l                                          ; $48c6: $bd

jr_0a8_48c7:
    jr nz, @+$15                                  ; $48c7: $20 $13

    ld d, b                                       ; $48c9: $50
    rst $38                                       ; $48ca: $ff
    sub b                                         ; $48cb: $90
    ld c, b                                       ; $48cc: $48
    ld a, [c]                                     ; $48cd: $f2
    db $10                                        ; $48ce: $10
    call z, Call_000_0408                         ; $48cf: $cc $08 $04
    db $10                                        ; $48d2: $10
    ld e, b                                       ; $48d3: $58
    ld h, b                                       ; $48d4: $60
    inc hl                                        ; $48d5: $23
    ld sp, $405c                                  ; $48d6: $31 $5c $40
    inc h                                         ; $48d9: $24
    ld de, $d4f7                                  ; $48da: $11 $f7 $d4
    ld e, b                                       ; $48dd: $58
    inc bc                                        ; $48de: $03
    add hl, bc                                    ; $48df: $09
    add hl, sp                                    ; $48e0: $39
    ld bc, $0004                                  ; $48e1: $01 $04 $00
    inc b                                         ; $48e4: $04
    inc b                                         ; $48e5: $04
    db $10                                        ; $48e6: $10
    ld a, $60                                     ; $48e7: $3e $60
    db $d3                                        ; $48e9: $d3
    db $10                                        ; $48ea: $10
    rst $38                                       ; $48eb: $ff
    db $10                                        ; $48ec: $10
    ld b, c                                       ; $48ed: $41
    ld [hl-], a                                   ; $48ee: $32
    ld de, $182c                                  ; $48ef: $11 $2c $18
    ld a, h                                       ; $48f2: $7c
    jr jr_0a8_487f                                ; $48f3: $18 $8a

jr_0a8_48f5:
    ld c, c                                       ; $48f5: $49
    ld e, [hl]                                    ; $48f6: $5e
    add hl, hl                                    ; $48f7: $29
    add d                                         ; $48f8: $82
    ld c, b                                       ; $48f9: $48
    ld [hl], d                                    ; $48fa: $72
    jr jr_0a8_48f5                                ; $48fb: $18 $f8

    ld e, $48                                     ; $48fd: $1e $48
    ld [de], a                                    ; $48ff: $12
    jr c, jr_0a8_4922                             ; $4900: $38 $20

    db $10                                        ; $4902: $10
    jr @+$2b                                      ; $4903: $18 $29

    jp hl                                         ; $4905: $e9


    ld hl, $0050                                  ; $4906: $21 $50 $00
    ld d, e                                       ; $4909: $53
    inc b                                         ; $490a: $04
    ld bc, $0080                                  ; $490b: $01 $80 $00
    ld bc, $0908                                  ; $490e: $01 $08 $09
    add hl, bc                                    ; $4911: $09
    inc b                                         ; $4912: $04
    db $10                                        ; $4913: $10

jr_0a8_4914:
    db $10                                        ; $4914: $10
    jr nc, @-$17                                  ; $4915: $30 $e7

    dec b                                         ; $4917: $05
    jr nz, jr_0a8_493a                            ; $4918: $20 $20

    ld b, b                                       ; $491a: $40
    ld hl, $0000                                  ; $491b: $21 $00 $00
    add hl, bc                                    ; $491e: $09
    jr nc, jr_0a8_4949                            ; $491f: $30 $28

    rrca                                          ; $4921: $0f

jr_0a8_4922:
    nop                                           ; $4922: $00
    inc bc                                        ; $4923: $03
    ld [$30ff], sp                                ; $4924: $08 $ff $30
    jr nc, jr_0a8_4936                            ; $4927: $30 $0d

    db $10                                        ; $4929: $10
    jr nc, jr_0a8_496c                            ; $492a: $30 $40

    cpl                                           ; $492c: $2f
    jr nz, @+$52                                  ; $492d: $20 $50

    db $10                                        ; $492f: $10
    ld l, b                                       ; $4930: $68
    ld c, b                                       ; $4931: $48
    ld a, b                                       ; $4932: $78
    ld e, b                                       ; $4933: $58
    ld a, h                                       ; $4934: $7c
    nop                                           ; $4935: $00

jr_0a8_4936:
    rst $38                                       ; $4936: $ff
    ld a, b                                       ; $4937: $78
    jr nz, jr_0a8_48ba                            ; $4938: $20 $80

jr_0a8_493a:
    jr c, @+$66                                   ; $493a: $38 $64

    ld [$3804], sp                                ; $493c: $08 $04 $38
    ld [hl], a                                    ; $493f: $77

jr_0a8_4940:
    ld [$4804], sp                                ; $4940: $08 $04 $48
    ld sp, $0408                                  ; $4943: $31 $08 $04
    ld c, b                                       ; $4946: $48
    rst $38                                       ; $4947: $ff
    ld [bc], a                                    ; $4948: $02

jr_0a8_4949:
    ld [hl], b                                    ; $4949: $70
    jp nz, Jump_000_0400                          ; $494a: $c2 $00 $04

    ld c, b                                       ; $494d: $48
    ld h, b                                       ; $494e: $60
    ld b, b                                       ; $494f: $40
    ld c, c                                       ; $4950: $49
    db $10                                        ; $4951: $10
    ret nz                                        ; $4952: $c0

    ld h, b                                       ; $4953: $60

jr_0a8_4954:
    ld l, h                                       ; $4954: $6c
    db $10                                        ; $4955: $10
    sbc $28                                       ; $4956: $de $28
    cp a                                          ; $4958: $bf
    ld [bc], a                                    ; $4959: $02
    ld bc, $7004                                  ; $495a: $01 $04 $70
    jr z, jr_0a8_4970                             ; $495d: $28 $11

    add hl, bc                                    ; $495f: $09
    add hl, de                                    ; $4960: $19
    add hl, bc                                    ; $4961: $09
    db $10                                        ; $4962: $10
    ld d, c                                       ; $4963: $51
    dec hl                                        ; $4964: $2b
    ld bc, $28b1                                  ; $4965: $01 $b1 $28
    rst $38                                       ; $4968: $ff
    sbc c                                         ; $4969: $99
    jr nc, jr_0a8_4940                            ; $496a: $30 $d4

jr_0a8_496c:
    adc b                                         ; $496c: $88
    inc b                                         ; $496d: $04
    ld d, b                                       ; $496e: $50
    add hl, sp                                    ; $496f: $39

jr_0a8_4970:
    jr nz, @+$12                                  ; $4970: $20 $10

    jr c, jr_0a8_4954                             ; $4972: $38 $e0

    ld e, b                                       ; $4974: $58
    xor b                                         ; $4975: $a8
    jr z, jr_0a8_49dd                             ; $4976: $28 $65

    ld c, b                                       ; $4978: $48
    rst $38                                       ; $4979: $ff
    call nz, $8c10                                ; $497a: $c4 $10 $8c
    ld [$4130], sp                                ; $497d: $08 $30 $41
    and l                                         ; $4980: $a5
    ld hl, $31b4                                  ; $4981: $21 $b4 $31
    and a                                         ; $4984: $a7
    ld sp, $39a0                                  ; $4985: $31 $a0 $39
    ret nc                                        ; $4988: $d0

    ld e, b                                       ; $4989: $58
    rst $38                                       ; $498a: $ff
    and c                                         ; $498b: $a1
    ld hl, $21cd                                  ; $498c: $21 $cd $21
    db $10                                        ; $498f: $10
    ld b, c                                       ; $4990: $41
    ld d, c                                       ; $4991: $51
    ld d, c                                       ; $4992: $51
    add hl, sp                                    ; $4993: $39
    ld b, c                                       ; $4994: $41
    nop                                           ; $4995: $00
    add hl, hl                                    ; $4996: $29
    ld c, $28                                     ; $4997: $0e $28
    nop                                           ; $4999: $00
    ld de, $48ff                                  ; $499a: $11 $ff $48
    ld d, b                                       ; $499d: $50
    sub c                                         ; $499e: $91
    ld hl, $316b                                  ; $499f: $21 $6b $31
    inc b                                         ; $49a2: $04
    add c                                         ; $49a3: $81
    ld [$104a], sp                                ; $49a4: $08 $4a $10
    db $10                                        ; $49a7: $10
    db $10                                        ; $49a8: $10
    ld hl, $2a78                                  ; $49a9: $21 $78 $2a
    ld c, e                                       ; $49ac: $4b
    nop                                           ; $49ad: $00
    ld c, e                                       ; $49ae: $4b
    inc b                                         ; $49af: $04
    ld bc, $0090                                  ; $49b0: $01 $90 $00
    nop                                           ; $49b3: $00
    inc b                                         ; $49b4: $04
    nop                                           ; $49b5: $00

jr_0a8_49b6:
    add hl, bc                                    ; $49b6: $09
    inc b                                         ; $49b7: $04
    jr jr_0a8_49c8                                ; $49b8: $18 $0e

    jr jr_0a8_4a3b                                ; $49ba: $18 $7f

    add hl, bc                                    ; $49bc: $09
    inc b                                         ; $49bd: $04
    db $10                                        ; $49be: $10
    jr jr_0a8_49c9                                ; $49bf: $18 $08

    ld h, $48                                     ; $49c1: $26 $48
    db $10                                        ; $49c3: $10
    jr z, @+$32                                   ; $49c4: $28 $30

    jr jr_0a8_49e7                                ; $49c6: $18 $1f

jr_0a8_49c8:
    nop                                           ; $49c8: $00

jr_0a8_49c9:
    jr nc, @+$22                                  ; $49c9: $30 $20

    rst $38                                       ; $49cb: $ff
    add hl, bc                                    ; $49cc: $09

jr_0a8_49cd:
    nop                                           ; $49cd: $00
    ld bc, $1020                                  ; $49ce: $01 $20 $10
    ld b, b                                       ; $49d1: $40
    inc b                                         ; $49d2: $04
    db $10                                        ; $49d3: $10
    ld e, b                                       ; $49d4: $58
    jr nz, jr_0a8_4a1f                            ; $49d5: $20 $48

    jr nc, @+$2a                                  ; $49d7: $30 $28

    ld [$1848], sp                                ; $49d9: $08 $48 $18
    rst $08                                       ; $49dc: $cf

jr_0a8_49dd:
    inc b                                         ; $49dd: $04
    jr @+$0f                                      ; $49de: $18 $0d

    stop                                          ; $49e0: $10 $00
    inc b                                         ; $49e2: $04
    ld l, b                                       ; $49e3: $68
    ld [$1004], sp                                ; $49e4: $08 $04 $10

jr_0a8_49e7:
    ld c, b                                       ; $49e7: $48
    jr z, @+$19                                   ; $49e8: $28 $17

    jr @+$01                                      ; $49ea: $18 $ff

    jr nc, jr_0a8_4a06                            ; $49ec: $30 $18

    inc [hl]                                      ; $49ee: $34
    db $10                                        ; $49ef: $10
    ld d, c                                       ; $49f0: $51
    jr nz, @+$05                                  ; $49f1: $20 $03

    add b                                         ; $49f3: $80
    ld l, h                                       ; $49f4: $6c
    jr nc, @+$72                                  ; $49f5: $30 $70

    jr jr_0a8_49cd                                ; $49f7: $18 $d4

    ld [hl], b                                    ; $49f9: $70
    ld l, h                                       ; $49fa: $6c
    db $10                                        ; $49fb: $10
    rst $38                                       ; $49fc: $ff
    and h                                         ; $49fd: $a4
    jr z, jr_0a8_4a68                             ; $49fe: $28 $68

    jr z, jr_0a8_49b6                             ; $4a00: $28 $b4

    jr z, @+$7b                                   ; $4a02: $28 $79

    jr nc, @-$7d                                  ; $4a04: $30 $81

jr_0a8_4a06:
    ld b, b                                       ; $4a06: $40
    ld l, $18                                     ; $4a07: $2e $18
    ld a, [hl-]                                   ; $4a09: $3a
    ld b, b                                       ; $4a0a: $40
    ld a, [hl+]                                   ; $4a0b: $2a
    ld d, c                                       ; $4a0c: $51
    rst $38                                       ; $4a0d: $ff
    ld a, [de]                                    ; $4a0e: $1a
    ld bc, $10b2                                  ; $4a0f: $01 $b2 $10
    inc b                                         ; $4a12: $04
    jr nz, jr_0a8_4a53                            ; $4a13: $20 $3e

    add hl, hl                                    ; $4a15: $29
    jp nc, $ec20                                  ; $4a16: $d2 $20 $ec

    ld c, b                                       ; $4a19: $48
    ld e, d                                       ; $4a1a: $5a
    ld de, $18f0                                  ; $4a1b: $11 $f0 $18
    rst $38                                       ; $4a1e: $ff

jr_0a8_4a1f:
    inc b                                         ; $4a1f: $04
    add hl, hl                                    ; $4a20: $29
    jp $b150                                      ; $4a21: $c3 $50 $b1


    jr z, jr_0a8_4a66                             ; $4a24: $28 $40

    ld c, c                                       ; $4a26: $49
    xor [hl]                                      ; $4a27: $ae
    jr nz, jr_0a8_4a52                            ; $4a28: $20 $28

    ld bc, $30b0                                  ; $4a2a: $01 $b0 $30
    ld a, h                                       ; $4a2d: $7c
    ld sp, $60ff                                  ; $4a2e: $31 $ff $60
    ld de, $112e                                  ; $4a31: $11 $2e $11
    ld a, e                                       ; $4a34: $7b
    ld de, $20ab                                  ; $4a35: $11 $ab $20
    jp z, Jump_0a8_7961                           ; $4a38: $ca $61 $79

jr_0a8_4a3b:
    add hl, hl                                    ; $4a3b: $29
    cp h                                          ; $4a3c: $bc
    ld hl, $4950                                  ; $4a3d: $21 $50 $49
    ldh [$80], a                                  ; $4a40: $e0 $80
    ld hl, $30e3                                  ; $4a42: $21 $e3 $30
    inc c                                         ; $4a45: $0c
    ld a, [bc]                                    ; $4a46: $0a
    ld b, l                                       ; $4a47: $45
    nop                                           ; $4a48: $00
    ld b, b                                       ; $4a49: $40
    inc b                                         ; $4a4a: $04
    ld bc, $0088                                  ; $4a4b: $01 $88 $00
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    inc b                                         ; $4a50: $04
    nop                                           ; $4a51: $00

jr_0a8_4a52:
    add hl, bc                                    ; $4a52: $09

jr_0a8_4a53:
    ld a, a                                       ; $4a53: $7f
    add hl, bc                                    ; $4a54: $09
    inc b                                         ; $4a55: $04
    db $10                                        ; $4a56: $10
    rrca                                          ; $4a57: $0f
    jr jr_0a8_4a68                                ; $4a58: $18 $0e

jr_0a8_4a5a:
    nop                                           ; $4a5a: $00
    ld [bc], a                                    ; $4a5b: $02
    jr @+$21                                      ; $4a5c: $18 $1f

    db $10                                        ; $4a5e: $10
    inc d                                         ; $4a5f: $14
    ld b, b                                       ; $4a60: $40
    inc sp                                        ; $4a61: $33
    jr nc, @+$01                                  ; $4a62: $30 $ff

    jr jr_0a8_4a86                                ; $4a64: $18 $20

jr_0a8_4a66:
    jr c, jr_0a8_4a98                             ; $4a66: $38 $30

jr_0a8_4a68:
    ld b, b                                       ; $4a68: $40
    jr nz, jr_0a8_4a6d                            ; $4a69: $20 $02

    ret nc                                        ; $4a6b: $d0

    ld e, b                                       ; $4a6c: $58

jr_0a8_4a6d:
    ld b, b                                       ; $4a6d: $40
    rrca                                          ; $4a6e: $0f
    db $10                                        ; $4a6f: $10
    inc de                                        ; $4a70: $13
    ld [$404c], sp                                ; $4a71: $08 $4c $40
    rst $38                                       ; $4a74: $ff
    ld d, b                                       ; $4a75: $50
    db $10                                        ; $4a76: $10
    sub [hl]                                      ; $4a77: $96
    ld b, b                                       ; $4a78: $40
    ld a, e                                       ; $4a79: $7b
    db $10                                        ; $4a7a: $10
    sbc b                                         ; $4a7b: $98
    jr nz, @-$6b                                  ; $4a7c: $20 $93

    ld [$1097], sp                                ; $4a7e: $08 $97 $10
    adc l                                         ; $4a81: $8d
    nop                                           ; $4a82: $00
    inc b                                         ; $4a83: $04
    jr c, @+$01                                   ; $4a84: $38 $ff

jr_0a8_4a86:
    ld [de], a                                    ; $4a86: $12
    jr jr_0a8_4a8d                                ; $4a87: $18 $04

    ld d, b                                       ; $4a89: $50
    call z, $db08                                 ; $4a8a: $cc $08 $db

jr_0a8_4a8d:
    ld c, b                                       ; $4a8d: $48
    ld [hl], a                                    ; $4a8e: $77
    jr nz, @-$55                                  ; $4a8f: $20 $a9

    ld [$1804], sp                                ; $4a91: $08 $04 $18
    ld l, e                                       ; $4a94: $6b
    ld e, b                                       ; $4a95: $58
    rst $38                                       ; $4a96: $ff
    ld e, b                                       ; $4a97: $58

jr_0a8_4a98:
    jr z, jr_0a8_4a5a                             ; $4a98: $28 $c0

    ld d, b                                       ; $4a9a: $50
    ld l, l                                       ; $4a9b: $6d
    db $10                                        ; $4a9c: $10
    ld l, b                                       ; $4a9d: $68
    jr nz, jr_0a8_4b00                            ; $4a9e: $20 $60

    ld h, b                                       ; $4aa0: $60
    scf                                           ; $4aa1: $37
    ld h, c                                       ; $4aa2: $61
    dec de                                        ; $4aa3: $1b
    ld bc, $1898                                  ; $4aa4: $01 $98 $18
    rst $38                                       ; $4aa7: $ff
    call z, $e410                                 ; $4aa8: $cc $10 $e4
    db $10                                        ; $4aab: $10
    sbc b                                         ; $4aac: $98
    jr @-$1a                                      ; $4aad: $18 $e4

    ld d, b                                       ; $4aaf: $50
    dec c                                         ; $4ab0: $0d
    and c                                         ; $4ab1: $a1
    cp $08                                        ; $4ab2: $fe $08
    dec de                                        ; $4ab4: $1b
    ld b, c                                       ; $4ab5: $41
    ld h, a                                       ; $4ab6: $67
    add hl, hl                                    ; $4ab7: $29
    rst $38                                       ; $4ab8: $ff
    add hl, bc                                    ; $4ab9: $09
    jr jr_0a8_4b34                                ; $4aba: $18 $78

    add hl, sp                                    ; $4abc: $39
    xor [hl]                                      ; $4abd: $ae
    ld [hl], c                                    ; $4abe: $71

jr_0a8_4abf:
    dec c                                         ; $4abf: $0d
    or b                                          ; $4ac0: $b0
    sub b                                         ; $4ac1: $90

jr_0a8_4ac2:
    ld [hl], c                                    ; $4ac2: $71
    ld d, l                                       ; $4ac3: $55
    jr c, @+$66                                   ; $4ac4: $38 $64

    ld b, b                                       ; $4ac6: $40
    db $10                                        ; $4ac7: $10
    jr c, jr_0a8_4ac2                             ; $4ac8: $38 $f8

jr_0a8_4aca:
    ldh [rOBP1], a                                ; $4aca: $e0 $49
    add sp, $29                                   ; $4acc: $e8 $29
    or h                                          ; $4ace: $b4
    ld b, b                                       ; $4acf: $40
    ld [$a44a], sp                                ; $4ad0: $08 $4a $a4
    jr z, @+$3b                                   ; $4ad3: $28 $39

    nop                                           ; $4ad5: $00
    ld d, c                                       ; $4ad6: $51
    inc b                                         ; $4ad7: $04
    ld bc, $00c0                                  ; $4ad8: $01 $c0 $00
    ld bc, $0908                                  ; $4adb: $01 $08 $09
    add hl, bc                                    ; $4ade: $09
    add hl, bc                                    ; $4adf: $09
    ld [$9f10], sp                                ; $4ae0: $08 $10 $9f
    dec c                                         ; $4ae3: $0d
    db $10                                        ; $4ae4: $10
    inc b                                         ; $4ae5: $04

jr_0a8_4ae6:
    inc b                                         ; $4ae6: $04
    rrca                                          ; $4ae7: $0f
    nop                                           ; $4ae8: $00
    db $10                                        ; $4ae9: $10
    jr jr_0a8_4b0c                                ; $4aea: $18 $20

    ld [$003d], sp                                ; $4aec: $08 $3d $00
    db $10                                        ; $4aef: $10
    db $10                                        ; $4af0: $10
    rst $38                                       ; $4af1: $ff
    inc b                                         ; $4af2: $04
    ld c, b                                       ; $4af3: $48
    daa                                           ; $4af4: $27
    jr @+$06                                      ; $4af5: $18 $04

    jr nc, jr_0a8_4b29                            ; $4af7: $30 $30

    ld [$4804], sp                                ; $4af9: $08 $04 $48
    inc a                                         ; $4afc: $3c
    ld c, b                                       ; $4afd: $48
    ld b, h                                       ; $4afe: $44
    db $10                                        ; $4aff: $10

jr_0a8_4b00:
    ld c, e                                       ; $4b00: $4b
    jr @-$07                                      ; $4b01: $18 $f7

    ld [hl], h                                    ; $4b03: $74
    ld b, b                                       ; $4b04: $40
    dec a                                         ; $4b05: $3d
    jr z, @+$7e                                   ; $4b06: $28 $7c

    jr nz, jr_0a8_4b36                            ; $4b08: $20 $2c

    ld h, b                                       ; $4b0a: $60
    nop                                           ; $4b0b: $00

jr_0a8_4b0c:
    adc [hl]                                      ; $4b0c: $8e
    ld [$0016], sp                                ; $4b0d: $08 $16 $00
    inc b                                         ; $4b10: $04
    jr nc, @+$01                                  ; $4b11: $30 $ff

    sub [hl]                                      ; $4b13: $96
    ld [$00a5], sp                                ; $4b14: $08 $a5 $00
    inc b                                         ; $4b17: $04
    jr z, jr_0a8_4b6e                             ; $4b18: $28 $54

    jr z, jr_0a8_4b94                             ; $4b1a: $28 $78

    jr z, jr_0a8_4ae6                             ; $4b1c: $28 $c8

    jr z, jr_0a8_4abf                             ; $4b1e: $28 $9f

    jr nc, jr_0a8_4aca                            ; $4b20: $30 $a8

    ld b, b                                       ; $4b22: $40
    rst $38                                       ; $4b23: $ff
    db $fc                                        ; $4b24: $fc
    ld [$4898], sp                                ; $4b25: $08 $98 $48
    db $10                                        ; $4b28: $10

jr_0a8_4b29:
    jr jr_0a8_4b67                                ; $4b29: $18 $3c

    jr @-$66                                      ; $4b2b: $18 $98

jr_0a8_4b2d:
    jr z, @+$4c                                   ; $4b2d: $28 $4a

    jr z, jr_0a8_4b61                             ; $4b2f: $28 $30

    ld [hl], b                                    ; $4b31: $70
    ld hl, sp+$20                                 ; $4b32: $f8 $20

jr_0a8_4b34:
    cp $ff                                        ; $4b34: $fe $ff

jr_0a8_4b36:
    ld [hl], b                                    ; $4b36: $70
    db $10                                        ; $4b37: $10
    ld d, c                                       ; $4b38: $51
    rrca                                          ; $4b39: $0f
    ld e, b                                       ; $4b3a: $58
    cp l                                          ; $4b3b: $bd
    jr @+$21                                      ; $4b3c: $18 $1f

    ld c, c                                       ; $4b3e: $49
    ld h, h                                       ; $4b3f: $64
    ld hl, $300e                                  ; $4b40: $21 $0e $30
    inc b                                         ; $4b43: $04
    nop                                           ; $4b44: $00
    inc b                                         ; $4b45: $04
    ld c, b                                       ; $4b46: $48
    nop                                           ; $4b47: $00
    ld c, a                                       ; $4b48: $4f

jr_0a8_4b49:
    inc b                                         ; $4b49: $04

jr_0a8_4b4a:
    ld bc, $00d0                                  ; $4b4a: $01 $d0 $00
    nop                                           ; $4b4d: $00
    ld c, $58                                     ; $4b4e: $0e $58
    db $10                                        ; $4b50: $10
    ld l, b                                       ; $4b51: $68
    inc d                                         ; $4b52: $14
    xor b                                         ; $4b53: $a8
    inc l                                         ; $4b54: $2c
    jr jr_0a8_4b66                                ; $4b55: $18 $0f

    nop                                           ; $4b57: $00
    add hl, bc                                    ; $4b58: $09
    add hl, bc                                    ; $4b59: $09
    add hl, bc                                    ; $4b5a: $09
    ld c, d                                       ; $4b5b: $4a
    jr nc, jr_0a8_4b62                            ; $4b5c: $30 $04

    jr nz, @+$4e                                  ; $4b5e: $20 $4c

    ld c, b                                       ; $4b60: $48

jr_0a8_4b61:
    ld d, b                                       ; $4b61: $50

jr_0a8_4b62:
    jr @+$01                                      ; $4b62: $18 $ff

    ld l, $38                                     ; $4b64: $2e $38

jr_0a8_4b66:
    ld h, b                                       ; $4b66: $60

jr_0a8_4b67:
    jr z, @+$3d                                   ; $4b67: $28 $3b

jr_0a8_4b69:
    jr nz, jr_0a8_4b7e                            ; $4b69: $20 $13

    db $10                                        ; $4b6b: $10
    ld l, d                                       ; $4b6c: $6a
    ld b, b                                       ; $4b6d: $40

jr_0a8_4b6e:
    ld de, $1918                                  ; $4b6e: $11 $18 $19
    ld [$0058], sp                                ; $4b71: $08 $58 $00
    rst $38                                       ; $4b74: $ff
    inc bc                                        ; $4b75: $03
    jr z, @+$5a                                   ; $4b76: $28 $58

    jr z, jr_0a8_4be9                             ; $4b78: $28 $6f

    jr nz, jr_0a8_4bec                            ; $4b7a: $20 $70

    jr c, jr_0a8_4bc2                             ; $4b7c: $38 $44

jr_0a8_4b7e:
    jr nz, jr_0a8_4b4a                            ; $4b7e: $20 $ca

    ld [hl], b                                    ; $4b80: $70
    ld d, h                                       ; $4b81: $54
    ld [$204b], sp                                ; $4b82: $08 $4b $20
    rst $38                                       ; $4b85: $ff
    add b                                         ; $4b86: $80
    jr nz, jr_0a8_4b2d                            ; $4b87: $20 $a4

    nop                                           ; $4b89: $00
    add sp, $38                                   ; $4b8a: $e8 $38
    ld d, h                                       ; $4b8c: $54
    db $10                                        ; $4b8d: $10
    add sp, $40                                   ; $4b8e: $e8 $40
    adc b                                         ; $4b90: $88
    db $10                                        ; $4b91: $10
    inc b                                         ; $4b92: $04
    ld b, b                                       ; $4b93: $40

jr_0a8_4b94:
    and $58                                       ; $4b94: $e6 $58

jr_0a8_4b96:
    rst $38                                       ; $4b96: $ff
    ldh a, [rOBP0]                                ; $4b97: $f0 $48
    and [hl]                                      ; $4b99: $a6
    jr z, @+$32                                   ; $4b9a: $28 $30

    ld e, b                                       ; $4b9c: $58
    ld a, [hl+]                                   ; $4b9d: $2a
    ld e, b                                       ; $4b9e: $58
    jr nz, @+$73                                  ; $4b9f: $20 $71

    ld e, h                                       ; $4ba1: $5c
    ld c, b                                       ; $4ba2: $48
    call c, RST_10                                ; $4ba3: $dc $10 $00
    ld b, c                                       ; $4ba6: $41
    rst $38                                       ; $4ba7: $ff
    ldh [rNR23], a                                ; $4ba8: $e0 $18
    add b                                         ; $4baa: $80
    jr nz, @-$07                                  ; $4bab: $20 $f7

    jr z, jr_0a8_4b49                             ; $4bad: $28 $9a

    ld c, c                                       ; $4baf: $49
    ld e, [hl]                                    ; $4bb0: $5e
    jr jr_0a8_4c04                                ; $4bb1: $18 $51

    ld c, c                                       ; $4bb3: $49
    ldh a, [$38]                                  ; $4bb4: $f0 $38
    ld [hl], e                                    ; $4bb6: $73
    ld l, c                                       ; $4bb7: $69
    rst $38                                       ; $4bb8: $ff
    jr nz, @+$2b                                  ; $4bb9: $20 $29

    ld b, b                                       ; $4bbb: $40
    add hl, hl                                    ; $4bbc: $29
    ld b, h                                       ; $4bbd: $44
    ld c, c                                       ; $4bbe: $49
    dec bc                                        ; $4bbf: $0b
    ld h, b                                       ; $4bc0: $60
    ld a, h                                       ; $4bc1: $7c

jr_0a8_4bc2:
    jr c, jr_0a8_4b69                             ; $4bc2: $38 $a5

    ld hl, $4819                                  ; $4bc4: $21 $19 $48
    ld a, b                                       ; $4bc7: $78
    jr @-$02                                      ; $4bc8: $18 $fc

    inc b                                         ; $4bca: $04
    jr c, @-$27                                   ; $4bcb: $38 $d7

    ld h, c                                       ; $4bcd: $61
    ret c                                         ; $4bce: $d8

    ld sp, $49cc                                  ; $4bcf: $31 $cc $49
    db $fc                                        ; $4bd2: $fc
    ld c, c                                       ; $4bd3: $49
    ld d, d                                       ; $4bd4: $52
    ld e, d                                       ; $4bd5: $5a
    inc b                                         ; $4bd6: $04
    inc b                                         ; $4bd7: $04
    ld d, h                                       ; $4bd8: $54
    nop                                           ; $4bd9: $00

jr_0a8_4bda:
    ld c, h                                       ; $4bda: $4c
    inc b                                         ; $4bdb: $04
    ld bc, $00d0                                  ; $4bdc: $01 $d0 $00
    nop                                           ; $4bdf: $00
    add hl, bc                                    ; $4be0: $09
    jr nc, @+$04                                  ; $4be1: $30 $02

    ld [$0909], sp                                ; $4be3: $08 $09 $09
    ld a, a                                       ; $4be6: $7f
    add hl, bc                                    ; $4be7: $09
    dec c                                         ; $4be8: $0d

jr_0a8_4be9:
    jr z, @+$0d                                   ; $4be9: $28 $0b

    nop                                           ; $4beb: $00

jr_0a8_4bec:
    inc bc                                        ; $4bec: $03
    db $10                                        ; $4bed: $10
    ld h, $10                                     ; $4bee: $26 $10
    inc d                                         ; $4bf0: $14
    jr c, jr_0a8_4c23                             ; $4bf1: $38 $30

    jr z, jr_0a8_4c33                             ; $4bf3: $28 $3e

    jr c, jr_0a8_4b96                             ; $4bf5: $38 $9f

    ld a, [hl-]                                   ; $4bf7: $3a
    jr jr_0a8_4bfe                                ; $4bf8: $18 $04

    nop                                           ; $4bfa: $00
    dec de                                        ; $4bfb: $1b
    nop                                           ; $4bfc: $00
    inc b                                         ; $4bfd: $04

jr_0a8_4bfe:
    db $10                                        ; $4bfe: $10
    ld b, [hl]                                    ; $4bff: $46
    nop                                           ; $4c00: $00
    ld e, b                                       ; $4c01: $58
    nop                                           ; $4c02: $00
    inc b                                         ; $4c03: $04

jr_0a8_4c04:
    jr nc, @+$01                                  ; $4c04: $30 $ff

    ld c, b                                       ; $4c06: $48
    ld [$1822], sp                                ; $4c07: $08 $22 $18
    ld c, b                                       ; $4c0a: $48
    jr @+$12                                      ; $4c0b: $18 $10

    jr z, jr_0a8_4c66                             ; $4c0d: $28 $57

    jr z, @+$1f                                   ; $4c0f: $28 $1d

    ld [$0856], sp                                ; $4c11: $08 $56 $08
    inc b                                         ; $4c14: $04
    jr z, @+$01                                   ; $4c15: $28 $ff

    ld a, [hl+]                                   ; $4c17: $2a

Jump_0a8_4c18:
    db $10                                        ; $4c18: $10
    ld d, c                                       ; $4c19: $51
    ld b, b                                       ; $4c1a: $40
    ld e, b                                       ; $4c1b: $58
    jr nc, jr_0a8_4c47                            ; $4c1c: $30 $29

    db $10                                        ; $4c1e: $10
    and b                                         ; $4c1f: $a0
    ld [$1860], sp                                ; $4c20: $08 $60 $18

jr_0a8_4c23:
    and e                                         ; $4c23: $a3
    jr z, jr_0a8_4c6f                             ; $4c24: $28 $49

    jr nc, @+$01                                  ; $4c26: $30 $ff

    or h                                          ; $4c28: $b4
    jr nz, jr_0a8_4bda                            ; $4c29: $20 $af

    ld b, b                                       ; $4c2b: $40
    ld hl, $6030                                  ; $4c2c: $21 $30 $60
    jr @+$22                                      ; $4c2f: $18 $20

    jr nz, @+$4f                                  ; $4c31: $20 $4d

jr_0a8_4c33:
    jr c, @-$2e                                   ; $4c33: $38 $d0

    db $10                                        ; $4c35: $10
    push de                                       ; $4c36: $d5
    db $10                                        ; $4c37: $10
    ei                                            ; $4c38: $fb
    inc b                                         ; $4c39: $04
    ld b, b                                       ; $4c3a: $40
    or b                                          ; $4c3b: $b0
    jr jr_0a8_4c66                                ; $4c3c: $18 $28

    db $10                                        ; $4c3e: $10
    inc b                                         ; $4c3f: $04
    db $10                                        ; $4c40: $10
    ld [de], a                                    ; $4c41: $12
    jr c, jr_0a8_4c44                             ; $4c42: $38 $00

jr_0a8_4c44:
    cp h                                          ; $4c44: $bc
    nop                                           ; $4c45: $00
    inc b                                         ; $4c46: $04

jr_0a8_4c47:
    ld [$2fff], sp                                ; $4c47: $08 $ff $2f
    ld d, b                                       ; $4c4a: $50
    ret                                           ; $4c4b: $c9


    jr c, jr_0a8_4cb2                             ; $4c4c: $38 $64

    jr nz, jr_0a8_4c88                            ; $4c4e: $20 $38

    jr z, jr_0a8_4c84                             ; $4c50: $28 $32

    db $10                                        ; $4c52: $10
    and d                                         ; $4c53: $a2
    jr nz, jr_0a8_4c92                            ; $4c54: $20 $3c

    jr nz, jr_0a8_4c98                            ; $4c56: $20 $40

    add hl, hl                                    ; $4c58: $29
    rst $38                                       ; $4c59: $ff

jr_0a8_4c5a:
    dec bc                                        ; $4c5a: $0b
    ld hl, $30a3                                  ; $4c5b: $21 $a3 $30
    ld a, e                                       ; $4c5e: $7b
    ld c, b                                       ; $4c5f: $48
    ld [hl], b                                    ; $4c60: $70
    add hl, sp                                    ; $4c61: $39
    sub l                                         ; $4c62: $95
    ld hl, $59ae                                  ; $4c63: $21 $ae $59

jr_0a8_4c66:
    add b                                         ; $4c66: $80
    db $10                                        ; $4c67: $10
    inc bc                                        ; $4c68: $03
    ld c, b                                       ; $4c69: $48
    rst $38                                       ; $4c6a: $ff
    xor b                                         ; $4c6b: $a8
    ld sp, $2968                                  ; $4c6c: $31 $68 $29

jr_0a8_4c6f:
    db $d3                                        ; $4c6f: $d3
    ld c, b                                       ; $4c70: $48
    ld bc, $4f20                                  ; $4c71: $01 $20 $4f
    add hl, de                                    ; $4c74: $19
    ld [$1d28], sp                                ; $4c75: $08 $28 $1d
    ld b, b                                       ; $4c78: $40
    inc e                                         ; $4c79: $1c
    ld a, [bc]                                    ; $4c7a: $0a
    ldh a, [$3c]                                  ; $4c7b: $f0 $3c
    ld c, b                                       ; $4c7d: $48
    db $10                                        ; $4c7e: $10
    jr nz, @+$3e                                  ; $4c7f: $20 $3c

    jr nc, jr_0a8_4cbf                            ; $4c81: $30 $3c

    ld a, [bc]                                    ; $4c83: $0a

jr_0a8_4c84:
    ld h, [hl]                                    ; $4c84: $66
    nop                                           ; $4c85: $00
    ld c, e                                       ; $4c86: $4b
    inc b                                         ; $4c87: $04

jr_0a8_4c88:
    ld bc, $0090                                  ; $4c88: $01 $90 $00
    nop                                           ; $4c8b: $00
    inc b                                         ; $4c8c: $04
    nop                                           ; $4c8d: $00
    add hl, bc                                    ; $4c8e: $09
    inc b                                         ; $4c8f: $04
    jr jr_0a8_4ca0                                ; $4c90: $18 $0e

jr_0a8_4c92:
    ld [$000f], sp                                ; $4c92: $08 $0f $00
    nop                                           ; $4c95: $00
    add hl, bc                                    ; $4c96: $09
    add hl, bc                                    ; $4c97: $09

jr_0a8_4c98:
    inc b                                         ; $4c98: $04
    jr jr_0a8_4cab                                ; $4c99: $18 $10

    jr z, @+$15                                   ; $4c9b: $28 $13

    ld [$0817], sp                                ; $4c9d: $08 $17 $08

jr_0a8_4ca0:
    cp a                                          ; $4ca0: $bf
    jr nz, jr_0a8_4cc3                            ; $4ca1: $20 $20

    inc b                                         ; $4ca3: $04
    jr nz, jr_0a8_4ca6                            ; $4ca4: $20 $00

jr_0a8_4ca6:
    inc b                                         ; $4ca6: $04
    ld [$1020], sp                                ; $4ca7: $08 $20 $10
    ld b, [hl]                                    ; $4caa: $46

jr_0a8_4cab:
    jr c, @+$12                                   ; $4cab: $38 $10

    jr nz, jr_0a8_4cd0                            ; $4cad: $20 $21

    ld [$42df], sp                                ; $4caf: $08 $df $42

jr_0a8_4cb2:
    jr nz, jr_0a8_4d04                            ; $4cb2: $20 $50

    jr c, jr_0a8_4cbf                             ; $4cb4: $38 $09

    inc b                                         ; $4cb6: $04
    db $10                                        ; $4cb7: $10
    ld [hl], b                                    ; $4cb8: $70

jr_0a8_4cb9:
    ld c, b                                       ; $4cb9: $48
    ld d, b                                       ; $4cba: $50
    ld b, b                                       ; $4cbb: $40
    jr nz, jr_0a8_4cc6                            ; $4cbc: $20 $08

    inc bc                                        ; $4cbe: $03

jr_0a8_4cbf:
    db $10                                        ; $4cbf: $10

jr_0a8_4cc0:
    rst $38                                       ; $4cc0: $ff
    adc [hl]                                      ; $4cc1: $8e
    db $10                                        ; $4cc2: $10

jr_0a8_4cc3:
    inc b                                         ; $4cc3: $04
    jr z, jr_0a8_4d16                             ; $4cc4: $28 $50

jr_0a8_4cc6:
    jr z, jr_0a8_4cd7                             ; $4cc6: $28 $0f

    jr c, jr_0a8_4c5a                             ; $4cc8: $38 $90

    ld c, b                                       ; $4cca: $48
    db $10                                        ; $4ccb: $10
    ld e, b                                       ; $4ccc: $58
    ld h, c                                       ; $4ccd: $61
    jr nz, @-$30                                  ; $4cce: $20 $ce

jr_0a8_4cd0:
    jr z, @+$01                                   ; $4cd0: $28 $ff

    ld l, d                                       ; $4cd2: $6a
    ld [$186e], sp                                ; $4cd3: $08 $6e $18
    ret c                                         ; $4cd6: $d8

jr_0a8_4cd7:
    jr z, jr_0a8_4cb9                             ; $4cd7: $28 $e0

    jr @-$26                                      ; $4cd9: $18 $d8

    jr jr_0a8_4cdf                                ; $4cdb: $18 $02

jr_0a8_4cdd:
    jr c, @+$7d                                   ; $4cdd: $38 $7b

jr_0a8_4cdf:
    ld b, b                                       ; $4cdf: $40
    ldh [$08], a                                  ; $4ce0: $e0 $08
    rst $38                                       ; $4ce2: $ff
    inc e                                         ; $4ce3: $1c
    ld l, b                                       ; $4ce4: $68
    inc l                                         ; $4ce5: $2c
    ld h, b                                       ; $4ce6: $60
    ld a, [hl-]                                   ; $4ce7: $3a
    ld c, b                                       ; $4ce8: $48
    inc c                                         ; $4ce9: $0c
    adc b                                         ; $4cea: $88
    add hl, hl                                    ; $4ceb: $29
    ld hl, $4030                                  ; $4cec: $21 $30 $40
    inc sp                                        ; $4cef: $33
    ld [hl], b                                    ; $4cf0: $70
    sbc h                                         ; $4cf1: $9c
    ld b, b                                       ; $4cf2: $40
    rst $38                                       ; $4cf3: $ff
    and b                                         ; $4cf4: $a0
    jr nz, jr_0a8_4d73                            ; $4cf5: $20 $7c

    add hl, bc                                    ; $4cf7: $09
    or $30                                        ; $4cf8: $f6 $30
    ld b, h                                       ; $4cfa: $44
    ld hl, $3903                                  ; $4cfb: $21 $03 $39
    db $10                                        ; $4cfe: $10
    ld c, c                                       ; $4cff: $49
    rst $08                                       ; $4d00: $cf
    jr jr_0a8_4d5f                                ; $4d01: $18 $5c

    add hl, bc                                    ; $4d03: $09

jr_0a8_4d04:
    rst $38                                       ; $4d04: $ff
    inc b                                         ; $4d05: $04
    jr nc, jr_0a8_4d2c                            ; $4d06: $30 $24

    ld b, c                                       ; $4d08: $41
    jp z, Jump_000_1f19                           ; $4d09: $ca $19 $1f

    ld e, b                                       ; $4d0c: $58
    ld c, a                                       ; $4d0d: $4f
    ld d, c                                       ; $4d0e: $51
    ld a, $18                                     ; $4d0f: $3e $18
    ret                                           ; $4d11: $c9


    add hl, bc                                    ; $4d12: $09
    jr nz, jr_0a8_4d4e                            ; $4d13: $20 $39

    rst $38                                       ; $4d15: $ff

jr_0a8_4d16:
    call nc, Call_000_2419                        ; $4d16: $d4 $19 $24
    ld b, c                                       ; $4d19: $41
    or h                                          ; $4d1a: $b4
    add hl, bc                                    ; $4d1b: $09
    inc b                                         ; $4d1c: $04
    ld b, b                                       ; $4d1d: $40
    ld [hl], l                                    ; $4d1e: $75
    add hl, hl                                    ; $4d1f: $29
    sub c                                         ; $4d20: $91
    ret nz                                        ; $4d21: $c0

    ld b, b                                       ; $4d22: $40
    ld l, d                                       ; $4d23: $6a
    inc b                                         ; $4d24: $04
    ld e, c                                       ; $4d25: $59
    rst $38                                       ; $4d26: $ff
    call z, $e041                                 ; $4d27: $cc $41 $e0
    add hl, hl                                    ; $4d2a: $29
    db $f4                                        ; $4d2b: $f4

jr_0a8_4d2c:
    ld c, c                                       ; $4d2c: $49
    ret z                                         ; $4d2d: $c8

    jr c, jr_0a8_4cc0                             ; $4d2e: $38 $90

    ld hl, $20df                                  ; $4d30: $21 $df $20
    xor b                                         ; $4d33: $a8
    add hl, hl                                    ; $4d34: $29
    db $fc                                        ; $4d35: $fc
    ld c, c                                       ; $4d36: $49
    rst $38                                       ; $4d37: $ff
    ld b, b                                       ; $4d38: $40
    add hl, sp                                    ; $4d39: $39
    jr nc, jr_0a8_4d86                            ; $4d3a: $30 $4a

    dec a                                         ; $4d3c: $3d
    ld b, b                                       ; $4d3d: $40
    ld d, b                                       ; $4d3e: $50
    jr @-$46                                      ; $4d3f: $18 $b8

    jr nz, jr_0a8_4cc3                            ; $4d41: $20 $80

    ld b, b                                       ; $4d43: $40
    ld h, b                                       ; $4d44: $60
    ld c, d                                       ; $4d45: $4a
    db $f4                                        ; $4d46: $f4
    db $10                                        ; $4d47: $10
    db $fc                                        ; $4d48: $fc
    jr nz, jr_0a8_4cdd                            ; $4d49: $20 $92

    db $ec                                        ; $4d4b: $ec
    ld [de], a                                    ; $4d4c: $12
    inc c                                         ; $4d4d: $0c

jr_0a8_4d4e:
    ld c, d                                       ; $4d4e: $4a
    db $10                                        ; $4d4f: $10
    db $10                                        ; $4d50: $10
    jr z, jr_0a8_4d84                             ; $4d51: $28 $31

    ld a, [hl-]                                   ; $4d53: $3a
    dec de                                        ; $4d54: $1b
    ld d, b                                       ; $4d55: $50
    nop                                           ; $4d56: $00
    ld e, a                                       ; $4d57: $5f
    inc b                                         ; $4d58: $04
    ld bc, $00b8                                  ; $4d59: $01 $b8 $00
    inc b                                         ; $4d5c: $04
    jr nz, @+$0f                                  ; $4d5d: $20 $0d

jr_0a8_4d5f:
    jr @+$03                                      ; $4d5f: $18 $01

    jr nz, jr_0a8_4d7b                            ; $4d61: $20 $18

    ld b, b                                       ; $4d63: $40
    jr nz, jr_0a8_4d76                            ; $4d64: $20 $10

    cp [hl]                                       ; $4d66: $be
    ld bc, $0988                                  ; $4d67: $01 $88 $09
    ld bc, $3540                                  ; $4d6a: $01 $40 $35
    ld [hl], b                                    ; $4d6d: $70
    ld b, h                                       ; $4d6e: $44
    jr @+$67                                      ; $4d6f: $18 $65

    jr c, @+$56                                   ; $4d71: $38 $54

jr_0a8_4d73:
    stop                                          ; $4d73: $10 $00
    ld a, a                                       ; $4d75: $7f

jr_0a8_4d76:
    add hl, bc                                    ; $4d76: $09
    inc b                                         ; $4d77: $04
    jr z, @+$42                                   ; $4d78: $28 $40

    db $10                                        ; $4d7a: $10

jr_0a8_4d7b:
    ld a, d                                       ; $4d7b: $7a
    nop                                           ; $4d7c: $00
    inc b                                         ; $4d7d: $04
    jr z, @+$53                                   ; $4d7e: $28 $51

    jr nz, jr_0a8_4d86                            ; $4d80: $20 $04

    jr nc, jr_0a8_4de0                            ; $4d82: $30 $5c

jr_0a8_4d84:
    ld c, b                                       ; $4d84: $48
    rst $38                                       ; $4d85: $ff

jr_0a8_4d86:
    ld h, b                                       ; $4d86: $60
    db $10                                        ; $4d87: $10
    sub c                                         ; $4d88: $91
    ld h, b                                       ; $4d89: $60
    ld c, h                                       ; $4d8a: $4c
    ld c, b                                       ; $4d8b: $48
    ld e, b                                       ; $4d8c: $58
    ld [$484c], sp                                ; $4d8d: $08 $4c $48
    ld d, b                                       ; $4d90: $50
    db $10                                        ; $4d91: $10
    ld c, h                                       ; $4d92: $4c
    ld b, b                                       ; $4d93: $40
    ld e, $18                                     ; $4d94: $1e $18
    rst $38                                       ; $4d96: $ff
    ld h, h                                       ; $4d97: $64
    jr nc, jr_0a8_4df7                            ; $4d98: $30 $5d

    db $10                                        ; $4d9a: $10
    db $ec                                        ; $4d9b: $ec
    jr z, @-$3a                                   ; $4d9c: $28 $c4

    jr z, jr_0a8_4dbf                             ; $4d9e: $28 $1f

    ld b, b                                       ; $4da0: $40
    ld [hl], b                                    ; $4da1: $70
    jr c, jr_0a8_4dc4                             ; $4da2: $38 $20

    ld e, b                                       ; $4da4: $58
    jr nc, jr_0a8_4dcf                            ; $4da5: $30 $28

    rst $38                                       ; $4da7: $ff
    ld b, e                                       ; $4da8: $43
    db $10                                        ; $4da9: $10
    ld c, h                                       ; $4daa: $4c
    ld c, b                                       ; $4dab: $48
    ld de, $b120                                  ; $4dac: $11 $20 $b1
    ld h, b                                       ; $4daf: $60
    rra                                           ; $4db0: $1f
    ld h, b                                       ; $4db1: $60
    inc l                                         ; $4db2: $2c
    ld c, b                                       ; $4db3: $48
    inc sp                                        ; $4db4: $33
    ld hl, $9020                                  ; $4db5: $21 $20 $90
    rst $38                                       ; $4db8: $ff
    jr c, jr_0a8_4ddc                             ; $4db9: $38 $21

    ld e, b                                       ; $4dbb: $58
    ld c, c                                       ; $4dbc: $49
    db $10                                        ; $4dbd: $10
    ld h, b                                       ; $4dbe: $60

jr_0a8_4dbf:
    ld b, b                                       ; $4dbf: $40
    ld hl, $00c4                                  ; $4dc0: $21 $c4 $00
    inc b                                         ; $4dc3: $04

jr_0a8_4dc4:
    ret nz                                        ; $4dc4: $c0

    ld h, a                                       ; $4dc5: $67
    jr c, @-$5e                                   ; $4dc6: $38 $a0

    add hl, sp                                    ; $4dc8: $39
    rst $38                                       ; $4dc9: $ff
    add e                                         ; $4dca: $83
    ld a, b                                       ; $4dcb: $78
    adc b                                         ; $4dcc: $88

jr_0a8_4dcd:
    jr c, jr_0a8_4dcf                             ; $4dcd: $38 $00

jr_0a8_4dcf:
    ld d, d                                       ; $4dcf: $52
    jr nz, jr_0a8_4df3                            ; $4dd0: $20 $21

    inc h                                         ; $4dd2: $24
    ld c, c                                       ; $4dd3: $49
    ld l, h                                       ; $4dd4: $6c
    jr z, jr_0a8_4dcd                             ; $4dd5: $28 $f6

    add hl, hl                                    ; $4dd7: $29
    add hl, de                                    ; $4dd8: $19
    ld b, d                                       ; $4dd9: $42
    rst $38                                       ; $4dda: $ff
    xor h                                         ; $4ddb: $ac

jr_0a8_4ddc:
    nop                                           ; $4ddc: $00
    inc b                                         ; $4ddd: $04
    or b                                          ; $4dde: $b0
    ld d, b                                       ; $4ddf: $50

jr_0a8_4de0:
    add hl, sp                                    ; $4de0: $39
    sub c                                         ; $4de1: $91
    ld l, b                                       ; $4de2: $68
    sub a                                         ; $4de3: $97
    ld hl, $283c                                  ; $4de4: $21 $3c $28
    ld a, [hl+]                                   ; $4de7: $2a
    ld c, d                                       ; $4de8: $4a
    jr nz, jr_0a8_4e05                            ; $4de9: $20 $1a

    rst $38                                       ; $4deb: $ff
    ret nc                                        ; $4dec: $d0

    ld e, c                                       ; $4ded: $59

jr_0a8_4dee:
    ld c, h                                       ; $4dee: $4c
    ld c, b                                       ; $4def: $48
    ld [hl], b                                    ; $4df0: $70
    ld [hl+], a                                   ; $4df1: $22
    ld a, b                                       ; $4df2: $78

jr_0a8_4df3:
    ld d, b                                       ; $4df3: $50
    ld sp, $a07a                                  ; $4df4: $31 $7a $a0

jr_0a8_4df7:
    ld e, d                                       ; $4df7: $5a
    ld e, b                                       ; $4df8: $58
    jr nz, jr_0a8_4dff                            ; $4df9: $20 $04

    jr nc, jr_0a8_4e17                            ; $4dfb: $30 $1a

    nop                                           ; $4dfd: $00
    ld b, a                                       ; $4dfe: $47

jr_0a8_4dff:
    inc b                                         ; $4dff: $04
    ld bc, $00c0                                  ; $4e00: $01 $c0 $00
    nop                                           ; $4e03: $00
    nop                                           ; $4e04: $00

jr_0a8_4e05:
    inc b                                         ; $4e05: $04
    ld [hl], b                                    ; $4e06: $70
    dec e                                         ; $4e07: $1d

jr_0a8_4e08:
    ld [hl], b                                    ; $4e08: $70
    inc l                                         ; $4e09: $2c
    jr c, @+$01                                   ; $4e0a: $38 $ff

    inc bc                                        ; $4e0c: $03
    jr z, jr_0a8_4e47                             ; $4e0d: $28 $38

    jr z, @+$0f                                   ; $4e0f: $28 $0d

    jr @+$31                                      ; $4e11: $18 $2f

    ld l, b                                       ; $4e13: $68
    ld d, l                                       ; $4e14: $55
    ld h, b                                       ; $4e15: $60
    inc bc                                        ; $4e16: $03

jr_0a8_4e17:
    ld l, b                                       ; $4e17: $68
    ld h, l                                       ; $4e18: $65
    ld e, b                                       ; $4e19: $58
    ld e, b                                       ; $4e1a: $58
    jr @+$01                                      ; $4e1b: $18 $ff

    jr nc, @-$7e                                  ; $4e1d: $30 $80

    ld b, e                                       ; $4e1f: $43
    ld d, b                                       ; $4e20: $50
    or h                                          ; $4e21: $b4
    ld l, b                                       ; $4e22: $68
    push bc                                       ; $4e23: $c5
    add b                                         ; $4e24: $80
    call Call_0a8_5008                            ; $4e25: $cd $08 $50
    ld a, b                                       ; $4e28: $78
    cp b                                          ; $4e29: $b8
    jr c, jr_0a8_4e08                             ; $4e2a: $38 $dc

    jr nc, jr_0a8_4dee                            ; $4e2c: $30 $c0

    and h                                         ; $4e2e: $a4
    jr nz, jr_0a8_4e61                            ; $4e2f: $20 $30

    jr nc, jr_0a8_4e4b                            ; $4e31: $30 $18

    nop                                           ; $4e33: $00
    ld b, a                                       ; $4e34: $47
    inc b                                         ; $4e35: $04
    ld bc, $00c0                                  ; $4e36: $01 $c0 $00
    nop                                           ; $4e39: $00
    nop                                           ; $4e3a: $00
    ld de, $20d0                                  ; $4e3b: $11 $d0 $20
    nop                                           ; $4e3e: $00
    inc bc                                        ; $4e3f: $03
    ld [$28ff], sp                                ; $4e40: $08 $ff $28
    db $10                                        ; $4e43: $10
    ld [$0d20], sp                                ; $4e44: $08 $20 $0d

jr_0a8_4e47:
    ld d, b                                       ; $4e47: $50
    ld hl, $0728                                  ; $4e48: $21 $28 $07

jr_0a8_4e4b:
    ld h, b                                       ; $4e4b: $60
    inc hl                                        ; $4e4c: $23
    ld d, b                                       ; $4e4d: $50
    ld h, [hl]                                    ; $4e4e: $66
    ld [$304a], sp                                ; $4e4f: $08 $4a $30
    rst $38                                       ; $4e52: $ff
    inc l                                         ; $4e53: $2c
    or b                                          ; $4e54: $b0
    ld [hl+], a                                   ; $4e55: $22
    jr c, jr_0a8_4dee                             ; $4e56: $38 $96

    nop                                           ; $4e58: $00
    sbc d                                         ; $4e59: $9a
    ld [$6863], sp                                ; $4e5a: $08 $63 $68
    add h                                         ; $4e5d: $84
    or b                                          ; $4e5e: $b0
    ld e, [hl]                                    ; $4e5f: $5e
    ld l, b                                       ; $4e60: $68

jr_0a8_4e61:
    sub h                                         ; $4e61: $94
    ld l, b                                       ; $4e62: $68
    ld l, l                                       ; $4e63: $6d
    nop                                           ; $4e64: $00
    ld c, a                                       ; $4e65: $4f
    inc b                                         ; $4e66: $04

jr_0a8_4e67:
    ld bc, $0090                                  ; $4e67: $01 $90 $00
    nop                                           ; $4e6a: $00
    inc b                                         ; $4e6b: $04
    jr c, @+$10                                   ; $4e6c: $38 $0e

    ld [$3802], sp                                ; $4e6e: $08 $02 $38
    ld e, $78                                     ; $4e71: $1e $78
    adc a                                         ; $4e73: $8f
    jr nz, jr_0a8_4e96                            ; $4e74: $20 $20

    add hl, bc                                    ; $4e76: $09
    add hl, bc                                    ; $4e77: $09
    add hl, bc                                    ; $4e78: $09
    inc b                                         ; $4e79: $04
    ld [$2830], sp                                ; $4e7a: $08 $30 $28
    rrca                                          ; $4e7d: $0f
    jr nz, @+$4a                                  ; $4e7e: $20 $48

    ld b, b                                       ; $4e80: $40
    rst $38                                       ; $4e81: $ff
    ld d, h                                       ; $4e82: $54

jr_0a8_4e83:
    jr jr_0a8_4e87                                ; $4e83: $18 $02

    ld a, b                                       ; $4e85: $78
    ld [hl+], a                                   ; $4e86: $22

jr_0a8_4e87:
    ld h, b                                       ; $4e87: $60
    add hl, sp                                    ; $4e88: $39
    jr z, jr_0a8_4edb                             ; $4e89: $28 $50

    jr nz, jr_0a8_4ee3                            ; $4e8b: $20 $56

    nop                                           ; $4e8d: $00
    ld e, e                                       ; $4e8e: $5b
    nop                                           ; $4e8f: $00
    ld e, a                                       ; $4e90: $5f
    nop                                           ; $4e91: $00
    rst $38                                       ; $4e92: $ff
    sub e                                         ; $4e93: $93
    nop                                           ; $4e94: $00
    inc b                                         ; $4e95: $04

jr_0a8_4e96:
    ld [$309c], sp                                ; $4e96: $08 $9c $30
    adc h                                         ; $4e99: $8c
    ld [$1017], sp                                ; $4e9a: $08 $17 $10
    sbc [hl]                                      ; $4e9d: $9e
    jr c, jr_0a8_4ece                             ; $4e9e: $38 $2e

    jr jr_0a8_4f0c                                ; $4ea0: $18 $6a

    jr nc, jr_0a8_4e83                            ; $4ea2: $30 $df

    jr nc, jr_0a8_4eb6                            ; $4ea4: $30 $10

    ld a, $20                                     ; $4ea6: $3e $20
    add hl, bc                                    ; $4ea8: $09
    inc l                                         ; $4ea9: $2c
    ld [$100d], sp                                ; $4eaa: $08 $0d $10
    ld e, a                                       ; $4ead: $5f
    ld e, b                                       ; $4eae: $58
    jp nz, Jump_0a8_4c18                          ; $4eaf: $c2 $18 $4c

    jr @+$01                                      ; $4eb2: $18 $ff

    ld d, h                                       ; $4eb4: $54
    db $10                                        ; $4eb5: $10

jr_0a8_4eb6:
    ret z                                         ; $4eb6: $c8

    db $10                                        ; $4eb7: $10
    inc [hl]                                      ; $4eb8: $34
    jr nz, @+$0f                                  ; $4eb9: $20 $0d

jr_0a8_4ebb:
    jr nz, jr_0a8_4ecb                            ; $4ebb: $20 $0e

    ld e, c                                       ; $4ebd: $59
    adc e                                         ; $4ebe: $8b
    db $10                                        ; $4ebf: $10
    jr nz, jr_0a8_4f02                            ; $4ec0: $20 $40

    inc bc                                        ; $4ec2: $03
    ld l, b                                       ; $4ec3: $68
    rst $38                                       ; $4ec4: $ff
    xor b                                         ; $4ec5: $a8
    ld [$4042], sp                                ; $4ec6: $08 $42 $40
    ld a, b                                       ; $4ec9: $78
    db $10                                        ; $4eca: $10

jr_0a8_4ecb:
    ld d, b                                       ; $4ecb: $50
    ld b, c                                       ; $4ecc: $41
    daa                                           ; $4ecd: $27

jr_0a8_4ece:
    add hl, de                                    ; $4ece: $19
    jr nz, jr_0a8_4f21                            ; $4ecf: $20 $50

    ld b, [hl]                                    ; $4ed1: $46
    ld hl, $297a                                  ; $4ed2: $21 $7a $29
    rst $38                                       ; $4ed5: $ff
    ld a, a                                       ; $4ed6: $7f
    ld d, b                                       ; $4ed7: $50
    ld a, [c]                                     ; $4ed8: $f2
    jr jr_0a8_4f18                                ; $4ed9: $18 $3d

jr_0a8_4edb:
    ld d, c                                       ; $4edb: $51
    jr nz, jr_0a8_4e67                            ; $4edc: $20 $89

    ret nc                                        ; $4ede: $d0

    ld d, b                                       ; $4edf: $50
    ld l, l                                       ; $4ee0: $6d
    ld e, c                                       ; $4ee1: $59
    ld [hl+], a                                   ; $4ee2: $22

jr_0a8_4ee3:
    add hl, bc                                    ; $4ee3: $09
    inc b                                         ; $4ee4: $04
    ld d, b                                       ; $4ee5: $50
    rst $38                                       ; $4ee6: $ff
    ld sp, $3860                                  ; $4ee7: $31 $60 $38
    ld hl, $30bf                                  ; $4eea: $21 $bf $30
    jp nc, $2080                                  ; $4eed: $d2 $80 $20

    ld e, b                                       ; $4ef0: $58
    sbc a                                         ; $4ef1: $9f
    ld [hl], b                                    ; $4ef2: $70
    dec b                                         ; $4ef3: $05

jr_0a8_4ef4:
    ld [hl-], a                                   ; $4ef4: $32
    ld sp, hl                                     ; $4ef5: $f9
    ld d, c                                       ; $4ef6: $51
    rst $38                                       ; $4ef7: $ff
    jr nz, @+$7b                                  ; $4ef8: $20 $79

    ld l, a                                       ; $4efa: $6f
    jr z, jr_0a8_4ef4                             ; $4efb: $28 $f7

    ld sp, $10db                                  ; $4efd: $31 $db $10
    ld a, h                                       ; $4f00: $7c
    add hl, hl                                    ; $4f01: $29

jr_0a8_4f02:
    nop                                           ; $4f02: $00
    add hl, sp                                    ; $4f03: $39
    ld a, [c]                                     ; $4f04: $f2
    add hl, de                                    ; $4f05: $19
    adc h                                         ; $4f06: $8c
    jr c, @+$01                                   ; $4f07: $38 $ff

    rrca                                          ; $4f09: $0f
    ld d, d                                       ; $4f0a: $52
    rrca                                          ; $4f0b: $0f

jr_0a8_4f0c:
    add hl, hl                                    ; $4f0c: $29
    ld a, [bc]                                    ; $4f0d: $0a
    ld hl, $4038                                  ; $4f0e: $21 $38 $40
    inc de                                        ; $4f11: $13
    ld a, [de]                                    ; $4f12: $1a
    cp [hl]                                       ; $4f13: $be
    ld e, c                                       ; $4f14: $59
    or e                                          ; $4f15: $b3
    ld a, [de]                                    ; $4f16: $1a
    inc b                                         ; $4f17: $04

jr_0a8_4f18:
    ld d, b                                       ; $4f18: $50
    rst $38                                       ; $4f19: $ff
    db $fc                                        ; $4f1a: $fc
    ld hl, sp+$24                                 ; $4f1b: $f8 $24
    ld h, d                                       ; $4f1d: $62
    xor d                                         ; $4f1e: $aa
    ld e, d                                       ; $4f1f: $5a

jr_0a8_4f20:
    ld d, b                                       ; $4f20: $50

jr_0a8_4f21:
    ld c, b                                       ; $4f21: $48
    inc e                                         ; $4f22: $1c
    ld l, e                                       ; $4f23: $6b
    rrca                                          ; $4f24: $0f
    dec hl                                        ; $4f25: $2b
    ld b, c                                       ; $4f26: $41
    inc sp                                        ; $4f27: $33
    ld sp, $ff23                                  ; $4f28: $31 $23 $ff
    inc b                                         ; $4f2b: $04
    jr nc, jr_0a8_4ebb                            ; $4f2c: $30 $8d

    ld [hl], b                                    ; $4f2e: $70
    ld b, d                                       ; $4f2f: $42
    ld c, d                                       ; $4f30: $4a
    sbc a                                         ; $4f31: $9f
    add hl, hl                                    ; $4f32: $29
    ld b, a                                       ; $4f33: $47

jr_0a8_4f34:
    ld a, [hl+]                                   ; $4f34: $2a
    call nc, Call_000_063a                        ; $4f35: $d4 $3a $06
    dec sp                                        ; $4f38: $3b
    ldh a, [rNR30]                                ; $4f39: $f0 $1a
    ld hl, sp-$56                                 ; $4f3b: $f8 $aa
    ld e, e                                       ; $4f3d: $5b
    adc d                                         ; $4f3e: $8a
    ld c, e                                       ; $4f3f: $4b
    xor h                                         ; $4f40: $ac
    dec sp                                        ; $4f41: $3b
    db $10                                        ; $4f42: $10
    ld e, b                                       ; $4f43: $58
    and $3b                                       ; $4f44: $e6 $3b
    ld sp, $5f00                                  ; $4f46: $31 $00 $5f
    inc b                                         ; $4f49: $04
    ld bc, $00d8                                  ; $4f4a: $01 $d8 $00
    rlca                                          ; $4f4d: $07
    jr nz, @+$03                                  ; $4f4e: $20 $01

    jr nc, jr_0a8_4f5d                            ; $4f50: $30 $0b

    ld b, b                                       ; $4f52: $40
    db $10                                        ; $4f53: $10
    jr jr_0a8_4f7f                                ; $4f54: $18 $29

    jr z, @+$01                                   ; $4f56: $28 $ff

    ld a, [hl+]                                   ; $4f58: $2a
    nop                                           ; $4f59: $00
    ld c, $18                                     ; $4f5a: $0e $18
    ld a, [bc]                                    ; $4f5c: $0a

jr_0a8_4f5d:
    jr z, jr_0a8_4f71                             ; $4f5d: $28 $12

    jr jr_0a8_4f63                                ; $4f5f: $18 $02

    ld l, b                                       ; $4f61: $68
    inc l                                         ; $4f62: $2c

jr_0a8_4f63:
    jr c, jr_0a8_4fb0                             ; $4f63: $38 $4b

    jr jr_0a8_4fa1                                ; $4f65: $18 $3a

    db $10                                        ; $4f67: $10
    rst $38                                       ; $4f68: $ff
    ld d, d                                       ; $4f69: $52
    ld h, b                                       ; $4f6a: $60
    ld b, d                                       ; $4f6b: $42
    ld d, b                                       ; $4f6c: $50
    jr nc, jr_0a8_4fa7                            ; $4f6d: $30 $38

    ld [hl], b                                    ; $4f6f: $70
    ld d, b                                       ; $4f70: $50

jr_0a8_4f71:
    sbc l                                         ; $4f71: $9d
    jr c, jr_0a8_4fee                             ; $4f72: $38 $7a

    jr c, jr_0a8_4f20                             ; $4f74: $38 $aa

    ld c, b                                       ; $4f76: $48
    adc [hl]                                      ; $4f77: $8e
    ld e, b                                       ; $4f78: $58
    rst $38                                       ; $4f79: $ff
    ld e, [hl]                                    ; $4f7a: $5e
    ld e, b                                       ; $4f7b: $58
    ld [bc], a                                    ; $4f7c: $02
    sbc b                                         ; $4f7d: $98
    ret z                                         ; $4f7e: $c8

jr_0a8_4f7f:
    ld l, b                                       ; $4f7f: $68
    ld c, $89                                     ; $4f80: $0e $89

jr_0a8_4f82:
    add b                                         ; $4f82: $80
    ld h, b                                       ; $4f83: $60
    nop                                           ; $4f84: $00
    add hl, sp                                    ; $4f85: $39
    and a                                         ; $4f86: $a7

jr_0a8_4f87:
    db $10                                        ; $4f87: $10
    rlca                                          ; $4f88: $07
    ld hl, $0dff                                  ; $4f89: $21 $ff $0d
    jr c, @+$46                                   ; $4f8c: $38 $44

    ld d, c                                       ; $4f8e: $51
    and b                                         ; $4f8f: $a0
    ld l, b                                       ; $4f90: $68
    dec e                                         ; $4f91: $1d
    add b                                         ; $4f92: $80
    ld [hl], c                                    ; $4f93: $71
    add b                                         ; $4f94: $80
    ld c, $78                                     ; $4f95: $0e $78
    ld h, e                                       ; $4f97: $63
    jr nc, jr_0a8_4f34                            ; $4f98: $30 $9a

    ld h, c                                       ; $4f9a: $61
    rst $38                                       ; $4f9b: $ff
    sbc h                                         ; $4f9c: $9c
    ld a, c                                       ; $4f9d: $79
    xor a                                         ; $4f9e: $af
    add hl, de                                    ; $4f9f: $19
    add c                                         ; $4fa0: $81

jr_0a8_4fa1:
    ld e, b                                       ; $4fa1: $58
    ret z                                         ; $4fa2: $c8

    ld c, c                                       ; $4fa3: $49
    ccf                                           ; $4fa4: $3f
    ld [hl], b                                    ; $4fa5: $70
    db $e4                                        ; $4fa6: $e4

jr_0a8_4fa7:
    sbc b                                         ; $4fa7: $98
    inc bc                                        ; $4fa8: $03
    ld [hl], c                                    ; $4fa9: $71
    add a                                         ; $4faa: $87
    ld d, c                                       ; $4fab: $51
    add b                                         ; $4fac: $80
    ld de, $4760                                  ; $4fad: $11 $60 $47

jr_0a8_4fb0:
    nop                                           ; $4fb0: $00
    ld c, a                                       ; $4fb1: $4f
    inc b                                         ; $4fb2: $04
    ld bc, $00c8                                  ; $4fb3: $01 $c8 $00
    nop                                           ; $4fb6: $00
    ld [de], a                                    ; $4fb7: $12
    ld [hl], b                                    ; $4fb8: $70
    dec c                                         ; $4fb9: $0d
    ld [hl], b                                    ; $4fba: $70
    inc h                                         ; $4fbb: $24
    ld [$1804], sp                                ; $4fbc: $08 $04 $18
    ld a, a                                       ; $4fbf: $7f
    nop                                           ; $4fc0: $00
    inc b                                         ; $4fc1: $04
    db $10                                        ; $4fc2: $10
    inc h                                         ; $4fc3: $24
    jr jr_0a8_4fd4                                ; $4fc4: $18 $0e

    nop                                           ; $4fc6: $00
    inc bc                                        ; $4fc7: $03
    jr nz, jr_0a8_4fdb                            ; $4fc8: $20 $11

    jr z, @+$3f                                   ; $4fca: $28 $3d

    ld l, b                                       ; $4fcc: $68
    ld c, h                                       ; $4fcd: $4c
    ld [$30ff], sp                                ; $4fce: $08 $ff $30
    jr jr_0a8_5002                                ; $4fd1: $18 $2f

    ld e, b                                       ; $4fd3: $58

jr_0a8_4fd4:
    ld a, [hl-]                                   ; $4fd4: $3a
    jr c, jr_0a8_4fe1                             ; $4fd5: $38 $0a

    sbc b                                         ; $4fd7: $98
    ld e, l                                       ; $4fd8: $5d
    ld d, b                                       ; $4fd9: $50
    and c                                         ; $4fda: $a1

jr_0a8_4fdb:
    jr c, @+$3d                                   ; $4fdb: $38 $3b

    jr z, jr_0a8_4f87                             ; $4fdd: $28 $a8

    jr c, @+$01                                   ; $4fdf: $38 $ff

jr_0a8_4fe1:
    ld c, h                                       ; $4fe1: $4c
    jr z, jr_0a8_5000                             ; $4fe2: $28 $1c

    jr c, @+$22                                   ; $4fe4: $38 $20

    ld e, b                                       ; $4fe6: $58
    inc h                                         ; $4fe7: $24
    jr @+$79                                      ; $4fe8: $18 $77

    ld b, b                                       ; $4fea: $40
    ld b, h                                       ; $4feb: $44
    ld b, b                                       ; $4fec: $40
    push de                                       ; $4fed: $d5

jr_0a8_4fee:
    ld b, b                                       ; $4fee: $40
    ld a, l                                       ; $4fef: $7d
    ld h, b                                       ; $4ff0: $60
    rst $38                                       ; $4ff1: $ff
    adc e                                         ; $4ff2: $8b
    ld d, b                                       ; $4ff3: $50
    ld h, b                                       ; $4ff4: $60
    jr nc, jr_0a8_4ffe                            ; $4ff5: $30 $07

    add hl, sp                                    ; $4ff7: $39
    rst $28                                       ; $4ff8: $ef
    ld h, b                                       ; $4ff9: $60
    adc b                                         ; $4ffa: $88
    jr nc, jr_0a8_4f82                            ; $4ffb: $30 $85

    ld b, b                                       ; $4ffd: $40

jr_0a8_4ffe:
    db $e3                                        ; $4ffe: $e3
    ld c, b                                       ; $4fff: $48

jr_0a8_5000:
    dec hl                                        ; $5000: $2b
    ld h, c                                       ; $5001: $61

jr_0a8_5002:
    rst $38                                       ; $5002: $ff
    adc c                                         ; $5003: $89
    ld e, b                                       ; $5004: $58
    jr nc, jr_0a8_5047                            ; $5005: $30 $40

    sbc h                                         ; $5007: $9c

Call_0a8_5008:
    add sp, $64                                   ; $5008: $e8 $64
    add hl, sp                                    ; $500a: $39
    ld [hl], e                                    ; $500b: $73
    ld h, c                                       ; $500c: $61
    or h                                          ; $500d: $b4
    ld [hl], b                                    ; $500e: $70
    or e                                          ; $500f: $b3
    ld sp, $6140                                  ; $5010: $31 $40 $61
    rst $38                                       ; $5013: $ff
    cp c                                          ; $5014: $b9
    ld [hl], c                                    ; $5015: $71
    inc l                                         ; $5016: $2c
    jr nz, @+$5e                                  ; $5017: $20 $5c

    add hl, sp                                    ; $5019: $39
    xor a                                         ; $501a: $af
    add hl, hl                                    ; $501b: $29
    rst $08                                       ; $501c: $cf
    ld d, c                                       ; $501d: $51
    cp [hl]                                       ; $501e: $be
    ld h, b                                       ; $501f: $60
    add sp, $71                                   ; $5020: $e8 $71
    ld c, [hl]                                    ; $5022: $4e
    ld l, c                                       ; $5023: $69
    rst $38                                       ; $5024: $ff
    ld e, [hl]                                    ; $5025: $5e
    ld d, d                                       ; $5026: $52
    jr @+$5b                                      ; $5027: $18 $59

    ld h, h                                       ; $5029: $64
    add hl, sp                                    ; $502a: $39

jr_0a8_502b:
    ld l, c                                       ; $502b: $69
    ld e, d                                       ; $502c: $5a
    dec sp                                        ; $502d: $3b
    ld d, d                                       ; $502e: $52
    daa                                           ; $502f: $27
    ld a, [hl-]                                   ; $5030: $3a
    adc l                                         ; $5031: $8d
    ld a, [hl+]                                   ; $5032: $2a
    ld [hl], h                                    ; $5033: $74
    ld [hl-], a                                   ; $5034: $32
    cp $a4                                        ; $5035: $fe $a4
    sbc d                                         ; $5037: $9a
    cp c                                          ; $5038: $b9

jr_0a8_5039:
    ld b, b                                       ; $5039: $40
    ld l, d                                       ; $503a: $6a
    ld c, d                                       ; $503b: $4a
    ld a, b                                       ; $503c: $78
    ld [hl], b                                    ; $503d: $70
    db $ec                                        ; $503e: $ec

jr_0a8_503f:
    ld c, b                                       ; $503f: $48
    inc b                                         ; $5040: $04
    ld l, e                                       ; $5041: $6b
    inc de                                        ; $5042: $13

jr_0a8_5043:
    ld b, d                                       ; $5043: $42
    dec e                                         ; $5044: $1d
    nop                                           ; $5045: $00
    ld d, a                                       ; $5046: $57

jr_0a8_5047:
    inc b                                         ; $5047: $04
    ld bc, $0070                                  ; $5048: $01 $70 $00
    inc b                                         ; $504b: $04
    ld [$0809], sp                                ; $504c: $08 $09 $08
    nop                                           ; $504f: $00
    add hl, bc                                    ; $5050: $09
    ld [$100f], sp                                ; $5051: $08 $0f $10
    ld e, c                                       ; $5054: $59
    add hl, bc                                    ; $5055: $09
    ld bc, $0000                                  ; $5056: $01 $00 $00
    dec b                                         ; $5059: $05
    nop                                           ; $505a: $00
    rla                                           ; $505b: $17
    nop                                           ; $505c: $00
    add hl, bc                                    ; $505d: $09

jr_0a8_505e:
    nop                                           ; $505e: $00
    ld bc, $ff00                                  ; $505f: $01 $00 $ff
    ld b, $08                                     ; $5062: $06 $08
    inc b                                         ; $5064: $04
    jr z, jr_0a8_5099                             ; $5065: $28 $32

    db $10                                        ; $5067: $10
    inc sp                                        ; $5068: $33
    nop                                           ; $5069: $00
    inc b                                         ; $506a: $04
    jr z, @+$39                                   ; $506b: $28 $37

    nop                                           ; $506d: $00
    inc a                                         ; $506e: $3c
    nop                                           ; $506f: $00
    ld b, l                                       ; $5070: $45
    jr jr_0a8_502b                                ; $5071: $18 $b8

    ld e, h                                       ; $5073: $5c
    ld [$4009], sp                                ; $5074: $08 $09 $40
    ld [$281c], sp                                ; $5077: $08 $1c $28
    ld l, l                                       ; $507a: $6d
    nop                                           ; $507b: $00

jr_0a8_507c:
    dec sp                                        ; $507c: $3b
    nop                                           ; $507d: $00
    ld d, c                                       ; $507e: $51
    inc b                                         ; $507f: $04
    ld bc, $0060                                  ; $5080: $01 $60 $00
    ld bc, $0908                                  ; $5083: $01 $08 $09
    add hl, bc                                    ; $5086: $09
    add hl, bc                                    ; $5087: $09
    inc b                                         ; $5088: $04
    jr nc, jr_0a8_50a8                            ; $5089: $30 $1d

    nop                                           ; $508b: $00
    nop                                           ; $508c: $00
    inc b                                         ; $508d: $04
    ld c, $00                                     ; $508e: $0e $00
    inc b                                         ; $5090: $04
    ld [$0817], sp                                ; $5091: $08 $17 $08

jr_0a8_5094:
    add hl, bc                                    ; $5094: $09
    jr z, jr_0a8_50df                             ; $5095: $28 $48

    rst $38                                       ; $5097: $ff
    db $10                                        ; $5098: $10

jr_0a8_5099:
    ld d, b                                       ; $5099: $50
    inc b                                         ; $509a: $04
    jr z, jr_0a8_50d5                             ; $509b: $28 $38

    jr c, jr_0a8_50b2                             ; $509d: $38 $13

    ld [$003c], sp                                ; $509f: $08 $3c $00
    ld [bc], a                                    ; $50a2: $02
    jr @+$56                                      ; $50a3: $18 $54

    jr z, @+$05                                   ; $50a5: $28 $03

    ld l, b                                       ; $50a7: $68

jr_0a8_50a8:
    rst $38                                       ; $50a8: $ff
    jr c, jr_0a8_50db                             ; $50a9: $38 $30

    ld b, h                                       ; $50ab: $44
    jr nz, jr_0a8_5039                            ; $50ac: $20 $8b

    ld c, b                                       ; $50ae: $48
    adc a                                         ; $50af: $8f
    db $10                                        ; $50b0: $10
    inc a                                         ; $50b1: $3c

jr_0a8_50b2:
    ld h, b                                       ; $50b2: $60
    ld a, b                                       ; $50b3: $78
    jr z, jr_0a8_505e                             ; $50b4: $28 $a8

    db $10                                        ; $50b6: $10
    adc b                                         ; $50b7: $88
    ld b, b                                       ; $50b8: $40
    rst $38                                       ; $50b9: $ff

jr_0a8_50ba:
    ld [hl], b                                    ; $50ba: $70
    jr z, jr_0a8_507c                             ; $50bb: $28 $bf

    jr z, jr_0a8_503f                             ; $50bd: $28 $80

    jr z, jr_0a8_5094                             ; $50bf: $28 $d3

    jr z, jr_0a8_5043                             ; $50c1: $28 $80

    adc b                                         ; $50c3: $88
    sbc a                                         ; $50c4: $9f
    jr nc, jr_0a8_50ba                            ; $50c5: $30 $f3

    ld [$00c1], sp                                ; $50c7: $08 $c1 $00
    rst $38                                       ; $50ca: $ff
    adc l                                         ; $50cb: $8d
    ld [$6084], sp                                ; $50cc: $08 $84 $60
    ret nc                                        ; $50cf: $d0

    jr c, @+$16                                   ; $50d0: $38 $14

    ld hl, $08d3                                  ; $50d2: $21 $d3 $08

jr_0a8_50d5:
    inc b                                         ; $50d5: $04
    ld c, b                                       ; $50d6: $48
    jr c, @+$2a                                   ; $50d7: $38 $28

    ld b, h                                       ; $50d9: $44
    db $10                                        ; $50da: $10

jr_0a8_50db:
    rst $38                                       ; $50db: $ff
    ld d, h                                       ; $50dc: $54
    ld b, b                                       ; $50dd: $40
    nop                                           ; $50de: $00

jr_0a8_50df:
    sub c                                         ; $50df: $91
    ld e, d                                       ; $50e0: $5a
    ld bc, $0922                                  ; $50e1: $01 $22 $09
    inc b                                         ; $50e4: $04
    jr z, jr_0a8_50f7                             ; $50e5: $28 $10

    jr nz, @+$78                                  ; $50e7: $20 $76

    ld [$2818], sp                                ; $50e9: $08 $18 $28
    ldh [$65], a                                  ; $50ec: $e0 $65
    add hl, de                                    ; $50ee: $19
    db $ec                                        ; $50ef: $ec
    ld h, b                                       ; $50f0: $60
    db $10                                        ; $50f1: $10
    ld c, b                                       ; $50f2: $48
    inc h                                         ; $50f3: $24

jr_0a8_50f4:
    nop                                           ; $50f4: $00
    ld e, a                                       ; $50f5: $5f
    inc b                                         ; $50f6: $04

jr_0a8_50f7:
    ld bc, $00a0                                  ; $50f7: $01 $a0 $00
    ld bc, $22e0                                  ; $50fa: $01 $e0 $22
    ld [$4026], sp                                ; $50fd: $08 $26 $40
    jr nc, jr_0a8_510a                            ; $5100: $30 $08

    inc b                                         ; $5102: $04
    jr z, @+$01                                   ; $5103: $28 $ff

    dec c                                         ; $5105: $0d
    ld e, b                                       ; $5106: $58
    ld [hl-], a                                   ; $5107: $32
    ld l, b                                       ; $5108: $68
    ld e, h                                       ; $5109: $5c

jr_0a8_510a:
    ld [$4004], sp                                ; $510a: $08 $04 $40
    rrca                                          ; $510d: $0f
    ld h, b                                       ; $510e: $60
    ld e, c                                       ; $510f: $59
    ld [$400d], sp                                ; $5110: $08 $0d $40
    rrca                                          ; $5113: $0f
    db $10                                        ; $5114: $10
    rst $38                                       ; $5115: $ff
    sub h                                         ; $5116: $94
    ld d, b                                       ; $5117: $50
    rra                                           ; $5118: $1f
    ld h, b                                       ; $5119: $60
    add b                                         ; $511a: $80
    ld l, b                                       ; $511b: $68
    dec c                                         ; $511c: $0d

jr_0a8_511d:
    ld a, b                                       ; $511d: $78
    ld b, h                                       ; $511e: $44
    ld a, b                                       ; $511f: $78
    inc b                                         ; $5120: $04
    ld d, b                                       ; $5121: $50
    ld de, $cd70                                  ; $5122: $11 $70 $cd
    jr c, @+$01                                   ; $5125: $38 $ff

    adc [hl]                                      ; $5127: $8e
    jr nz, jr_0a8_5140                            ; $5128: $20 $16

    ld [hl], c                                    ; $512a: $71
    ld a, c                                       ; $512b: $79
    ld e, b                                       ; $512c: $58
    adc c                                         ; $512d: $89
    add b                                         ; $512e: $80
    sbc c                                         ; $512f: $99
    ld h, b                                       ; $5130: $60
    ld [hl], b                                    ; $5131: $70
    ld e, b                                       ; $5132: $58
    ld e, c                                       ; $5133: $59
    jr nc, jr_0a8_517a                            ; $5134: $30 $44

    ld hl, $0ff0                                  ; $5136: $21 $f0 $0f
    ld h, b                                       ; $5139: $60
    ld d, a                                       ; $513a: $57
    add hl, hl                                    ; $513b: $29
    ld b, b                                       ; $513c: $40
    ld a, c                                       ; $513d: $79
    inc c                                         ; $513e: $0c
    add hl, de                                    ; $513f: $19

jr_0a8_5140:
    ld e, h                                       ; $5140: $5c
    nop                                           ; $5141: $00
    ld d, d                                       ; $5142: $52
    inc b                                         ; $5143: $04
    ld bc, $0098                                  ; $5144: $01 $98 $00
    inc b                                         ; $5147: $04
    ld b, b                                       ; $5148: $40
    inc b                                         ; $5149: $04
    nop                                           ; $514a: $00
    ld bc, $0900                                  ; $514b: $01 $00 $09
    rst $00                                       ; $514e: $c7
    ld bc, $1020                                  ; $514f: $01 $20 $10
    jr @+$06                                      ; $5152: $18 $04

    inc b                                         ; $5154: $04
    add hl, bc                                    ; $5155: $09
    inc d                                         ; $5156: $14
    jr nz, jr_0a8_518a                            ; $5157: $20 $31

    jr nc, jr_0a8_516b                            ; $5159: $30 $10

    ld d, b                                       ; $515b: $50
    ei                                            ; $515c: $fb
    ld [hl-], a                                   ; $515d: $32
    ld [$1833], sp                                ; $515e: $08 $33 $18
    ld c, l                                       ; $5161: $4d
    ld [hl], b                                    ; $5162: $70
    dec e                                         ; $5163: $1d
    jr nz, jr_0a8_51b7                            ; $5164: $20 $51

    ld [$4500], sp                                ; $5166: $08 $00 $45
    nop                                           ; $5169: $00

jr_0a8_516a:
    ld e, b                                       ; $516a: $58

jr_0a8_516b:
    jr z, jr_0a8_516a                             ; $516b: $28 $fd

jr_0a8_516d:
    ld h, b                                       ; $516d: $60
    ld [$4868], sp                                ; $516e: $08 $68 $48
    inc d                                         ; $5171: $14
    jr nc, jr_0a8_50f4                            ; $5172: $30 $80

    jr c, jr_0a8_51a9                             ; $5174: $38 $33

    db $10                                        ; $5176: $10
    inc [hl]                                      ; $5177: $34
    nop                                           ; $5178: $00
    inc b                                         ; $5179: $04

jr_0a8_517a:
    inc b                                         ; $517a: $04
    ld c, b                                       ; $517b: $48
    rst $38                                       ; $517c: $ff
    xor h                                         ; $517d: $ac
    ld h, b                                       ; $517e: $60
    jr z, jr_0a8_51b1                             ; $517f: $28 $30

    jr nc, @+$42                                  ; $5181: $30 $40

    dec a                                         ; $5183: $3d
    jr c, @+$66                                   ; $5184: $38 $64

    and b                                         ; $5186: $a0
    ld a, a                                       ; $5187: $7f
    jr z, jr_0a8_511d                             ; $5188: $28 $93

jr_0a8_518a:
    jr nz, jr_0a8_51e3                            ; $518a: $20 $57

    db $10                                        ; $518c: $10
    rst $38                                       ; $518d: $ff
    db $e4                                        ; $518e: $e4
    ld [$28fc], sp                                ; $518f: $08 $fc $28
    add hl, de                                    ; $5192: $19
    ld d, c                                       ; $5193: $51
    ld h, c                                       ; $5194: $61
    ld l, b                                       ; $5195: $68
    cp b                                          ; $5196: $b8
    jr nz, jr_0a8_51e1                            ; $5197: $20 $48

jr_0a8_5199:
    add hl, hl                                    ; $5199: $29
    ld c, c                                       ; $519a: $49
    jr nc, jr_0a8_51a0                            ; $519b: $30 $03

    ld de, $10ff                                  ; $519d: $11 $ff $10

jr_0a8_51a0:
    db $10                                        ; $51a0: $10
    cp b                                          ; $51a1: $b8
    jr nz, @-$11                                  ; $51a2: $20 $ed

    jr jr_0a8_51d6                                ; $51a4: $18 $30

    add hl, sp                                    ; $51a6: $39
    ld b, h                                       ; $51a7: $44
    add hl, bc                                    ; $51a8: $09

jr_0a8_51a9:
    or c                                          ; $51a9: $b1
    ld b, b                                       ; $51aa: $40
    ld h, e                                       ; $51ab: $63
    ld bc, $08bf                                  ; $51ac: $01 $bf $08
    rst $38                                       ; $51af: $ff
    ld e, h                                       ; $51b0: $5c

jr_0a8_51b1:
    add hl, bc                                    ; $51b1: $09
    inc b                                         ; $51b2: $04
    jr jr_0a8_516d                                ; $51b3: $18 $b8

    ld h, b                                       ; $51b5: $60
    dec h                                         ; $51b6: $25

jr_0a8_51b7:
    add hl, sp                                    ; $51b7: $39
    ld h, h                                       ; $51b8: $64
    nop                                           ; $51b9: $00
    inc b                                         ; $51ba: $04
    db $10                                        ; $51bb: $10
    add b                                         ; $51bc: $80
    ld hl, $2838                                  ; $51bd: $21 $38 $28
    rst $38                                       ; $51c0: $ff
    ld [hl+], a                                   ; $51c1: $22
    jr c, jr_0a8_51f0                             ; $51c2: $38 $2c

    add hl, de                                    ; $51c4: $19
    ld [hl], e                                    ; $51c5: $73

jr_0a8_51c6:
    jr @+$72                                      ; $51c6: $18 $70

    ld c, b                                       ; $51c8: $48

jr_0a8_51c9:
    sub b                                         ; $51c9: $90
    jr jr_0a8_51db                                ; $51ca: $18 $0f

    ld l, c                                       ; $51cc: $69
    ld sp, hl                                     ; $51cd: $f9
    ld h, c                                       ; $51ce: $61
    dec d                                         ; $51cf: $15
    ld a, c                                       ; $51d0: $79
    rst $38                                       ; $51d1: $ff
    cp h                                          ; $51d2: $bc
    jr z, jr_0a8_5199                             ; $51d3: $28 $c4

    db $10                                        ; $51d5: $10

jr_0a8_51d6:
    inc e                                         ; $51d6: $1c
    ld a, [hl+]                                   ; $51d7: $2a
    ld [c], a                                     ; $51d8: $e2

jr_0a8_51d9:
    add hl, sp                                    ; $51d9: $39
    cp l                                          ; $51da: $bd

jr_0a8_51db:
    add hl, sp                                    ; $51db: $39
    xor l                                         ; $51dc: $ad
    add hl, bc                                    ; $51dd: $09
    call z, Call_000_1049                         ; $51de: $cc $49 $10

jr_0a8_51e1:
    add hl, hl                                    ; $51e1: $29
    rst $38                                       ; $51e2: $ff

jr_0a8_51e3:
    sub l                                         ; $51e3: $95
    ld b, b                                       ; $51e4: $40
    pop de                                        ; $51e5: $d1
    ld de, $4804                                  ; $51e6: $11 $04 $48
    ld hl, sp+$28                                 ; $51e9: $f8 $28
    ret z                                         ; $51eb: $c8

    jr z, jr_0a8_51d9                             ; $51ec: $28 $eb

    ld c, b                                       ; $51ee: $48
    add b                                         ; $51ef: $80

jr_0a8_51f0:
    jr z, jr_0a8_51c6                             ; $51f0: $28 $d4

    ld d, c                                       ; $51f2: $51
    ldh a, [rPCM34]                               ; $51f3: $f0 $77
    add b                                         ; $51f5: $80

jr_0a8_51f6:
    ld b, h                                       ; $51f6: $44
    ld l, d                                       ; $51f7: $6a
    ld de, $e152                                  ; $51f8: $11 $52 $e1
    ld h, d                                       ; $51fb: $62
    ld b, l                                       ; $51fc: $45
    nop                                           ; $51fd: $00
    ld e, a                                       ; $51fe: $5f
    inc b                                         ; $51ff: $04
    ld bc, $00d8                                  ; $5200: $01 $d8 $00
    dec c                                         ; $5203: $0d

jr_0a8_5204:
    ld d, b                                       ; $5204: $50
    ld bc, $1d00                                  ; $5205: $01 $00 $1d
    add b                                         ; $5208: $80
    inc h                                         ; $5209: $24
    ld [$3004], sp                                ; $520a: $08 $04 $30
    ld a, e                                       ; $520d: $7b
    add hl, bc                                    ; $520e: $09
    ld bc, $41c8                                  ; $520f: $01 $c8 $41
    nop                                           ; $5212: $00
    rrca                                          ; $5213: $0f
    ld h, b                                       ; $5214: $60
    db $10                                        ; $5215: $10
    ld l, b                                       ; $5216: $68
    add hl, bc                                    ; $5217: $09
    ld c, l                                       ; $5218: $4d
    ld d, b                                       ; $5219: $50
    sbc l                                         ; $521a: $9d
    nop                                           ; $521b: $00
    rst $38                                       ; $521c: $ff
    ld de, $0408                                  ; $521d: $11 $08 $04

jr_0a8_5220:
    ld c, b                                       ; $5220: $48
    ld h, e                                       ; $5221: $63
    ld [$4804], sp                                ; $5222: $08 $04 $48
    ld h, d                                       ; $5225: $62
    ld l, b                                       ; $5226: $68
    jr nc, jr_0a8_5241                            ; $5227: $30 $18

    ld l, b                                       ; $5229: $68
    jr jr_0a8_529b                                ; $522a: $18 $6f

    ld [$b8ff], sp                                ; $522c: $08 $ff $b8
    jr z, jr_0a8_51c9                             ; $522f: $28 $98

    jr z, @+$12                                   ; $5231: $28 $10

    ld d, b                                       ; $5233: $50
    ret nc                                        ; $5234: $d0

    jr nz, @-$76                                  ; $5235: $20 $88

    jr z, jr_0a8_51f6                             ; $5237: $28 $bd

    nop                                           ; $5239: $00
    db $10                                        ; $523a: $10
    ld e, b                                       ; $523b: $58
    ld b, b                                       ; $523c: $40
    db $10                                        ; $523d: $10

jr_0a8_523e:
    rst $38                                       ; $523e: $ff
    sub h                                         ; $523f: $94
    nop                                           ; $5240: $00

jr_0a8_5241:
    or a                                          ; $5241: $b7
    jr z, jr_0a8_5204                             ; $5242: $28 $c0

    ld l, b                                       ; $5244: $68
    rlca                                          ; $5245: $07
    jr c, jr_0a8_524c                             ; $5246: $38 $04

    jr nc, @-$5e                                  ; $5248: $30 $a0

    jr nz, jr_0a8_5254                            ; $524a: $20 $08

jr_0a8_524c:
    ld [$1004], sp                                ; $524c: $08 $04 $10
    rst $38                                       ; $524f: $ff
    ld c, b                                       ; $5250: $48
    ld c, b                                       ; $5251: $48
    ld c, h                                       ; $5252: $4c
    db $10                                        ; $5253: $10

jr_0a8_5254:
    ld b, $09                                     ; $5254: $06 $09
    inc b                                         ; $5256: $04
    ld b, b                                       ; $5257: $40
    ld sp, hl                                     ; $5258: $f9
    ld c, b                                       ; $5259: $48
    db $ec                                        ; $525a: $ec
    jr z, jr_0a8_529b                             ; $525b: $28 $3e

    jr c, jr_0a8_52b0                             ; $525d: $38 $51

    add hl, de                                    ; $525f: $19
    rst $38                                       ; $5260: $ff
    ld h, c                                       ; $5261: $61
    ld c, b                                       ; $5262: $48
    ld [hl], a                                    ; $5263: $77
    jr c, jr_0a8_52aa                             ; $5264: $38 $44

    ld d, c                                       ; $5266: $51
    rra                                           ; $5267: $1f
    jr nc, jr_0a8_52d2                            ; $5268: $30 $68

    jr nc, jr_0a8_5220                            ; $526a: $30 $b4

jr_0a8_526c:
    cp b                                          ; $526c: $b8
    and h                                         ; $526d: $a4
    ld sp, $09d0                                  ; $526e: $31 $d0 $09

jr_0a8_5271:
    rst $38                                       ; $5271: $ff
    sub e                                         ; $5272: $93
    ld h, c                                       ; $5273: $61
    ld [bc], a                                    ; $5274: $02
    ld de, $6144                                  ; $5275: $11 $44 $61

jr_0a8_5278:
    ld h, c                                       ; $5278: $61
    jr nc, @+$7f                                  ; $5279: $30 $7d

    ld [hl], b                                    ; $527b: $70
    ld d, b                                       ; $527c: $50
    add hl, de                                    ; $527d: $19
    nop                                           ; $527e: $00
    ld a, [hl+]                                   ; $527f: $2a
    ld c, e                                       ; $5280: $4b
    ld [de], a                                    ; $5281: $12
    ld hl, sp-$28                                 ; $5282: $f8 $d8
    add hl, hl                                    ; $5284: $29
    inc [hl]                                      ; $5285: $34
    ld c, d                                       ; $5286: $4a
    inc b                                         ; $5287: $04
    jr z, jr_0a8_52b7                             ; $5288: $28 $2d

    ld c, d                                       ; $528a: $4a
    ld a, b                                       ; $528b: $78
    ld a, [hl+]                                   ; $528c: $2a
    jr c, jr_0a8_528f                             ; $528d: $38 $00

jr_0a8_528f:
    ld d, c                                       ; $528f: $51
    inc b                                         ; $5290: $04
    ld bc, $00a0                                  ; $5291: $01 $a0 $00
    ld bc, $0908                                  ; $5294: $01 $08 $09
    add hl, bc                                    ; $5297: $09
    add hl, bc                                    ; $5298: $09
    db $10                                        ; $5299: $10
    ld c, b                                       ; $529a: $48

jr_0a8_529b:
    rst $38                                       ; $529b: $ff
    rrca                                          ; $529c: $0f
    nop                                           ; $529d: $00

jr_0a8_529e:
    db $10                                        ; $529e: $10
    ld l, b                                       ; $529f: $68
    dec b                                         ; $52a0: $05
    jr jr_0a8_52a7                                ; $52a1: $18 $04

    ld b, b                                       ; $52a3: $40
    inc bc                                        ; $52a4: $03
    add b                                         ; $52a5: $80
    inc hl                                        ; $52a6: $23

jr_0a8_52a7:
    ld l, b                                       ; $52a7: $68
    daa                                           ; $52a8: $27
    ld d, b                                       ; $52a9: $50

jr_0a8_52aa:
    ld e, b                                       ; $52aa: $58
    jr z, jr_0a8_526c                             ; $52ab: $28 $bf

    db $10                                        ; $52ad: $10
    ld b, b                                       ; $52ae: $40
    inc b                                         ; $52af: $04

jr_0a8_52b0:
    ld d, a                                       ; $52b0: $57
    jr jr_0a8_52b7                                ; $52b1: $18 $04

    jr jr_0a8_523e                                ; $52b3: $18 $89

    jr jr_0a8_52bc                                ; $52b5: $18 $05

jr_0a8_52b7:
    jr c, jr_0a8_530d                             ; $52b7: $38 $54

    add b                                         ; $52b9: $80
    ld b, h                                       ; $52ba: $44
    db $10                                        ; $52bb: $10

jr_0a8_52bc:
    rst $38                                       ; $52bc: $ff
    ret z                                         ; $52bd: $c8

    jr z, @+$54                                   ; $52be: $28 $52

    jr jr_0a8_52d2                                ; $52c0: $18 $10

    jr c, jr_0a8_5303                             ; $52c2: $38 $3f

jr_0a8_52c4:
    jr z, jr_0a8_529e                             ; $52c4: $28 $d8

    jr nc, jr_0a8_5278                            ; $52c6: $30 $b0

    jr z, jr_0a8_52fe                             ; $52c8: $28 $34

    jr nz, jr_0a8_5271                            ; $52ca: $20 $a5

    ld l, b                                       ; $52cc: $68
    rst $38                                       ; $52cd: $ff
    inc b                                         ; $52ce: $04
    ld l, c                                       ; $52cf: $69
    inc d                                         ; $52d0: $14
    ld h, c                                       ; $52d1: $61

jr_0a8_52d2:
    ld h, $71                                     ; $52d2: $26 $71
    inc bc                                        ; $52d4: $03
    ld hl, $68d0                                  ; $52d5: $21 $d0 $68
    ld h, a                                       ; $52d8: $67
    ld c, b                                       ; $52d9: $48
    inc h                                         ; $52da: $24
    pop de                                        ; $52db: $d1
    ld h, h                                       ; $52dc: $64
    ld l, b                                       ; $52dd: $68
    rst $38                                       ; $52de: $ff
    add h                                         ; $52df: $84
    ld e, c                                       ; $52e0: $59
    or d                                          ; $52e1: $b2
    jr jr_0a8_52e8                                ; $52e2: $18 $04

    ld c, b                                       ; $52e4: $48
    ld e, h                                       ; $52e5: $5c
    add c                                         ; $52e6: $81
    ld c, h                                       ; $52e7: $4c

jr_0a8_52e8:
    ld e, c                                       ; $52e8: $59
    ld a, [bc]                                    ; $52e9: $0a
    ld bc, $2804                                  ; $52ea: $01 $04 $28

jr_0a8_52ed:
    ld d, $09                                     ; $52ed: $16 $09
    rst $38                                       ; $52ef: $ff
    ccf                                           ; $52f0: $3f
    ld h, c                                       ; $52f1: $61
    ld e, b                                       ; $52f2: $58
    ld sp, $2964                                  ; $52f3: $31 $64 $29
    inc h                                         ; $52f6: $24
    jr jr_0a8_52fd                                ; $52f7: $18 $04

    jr c, @+$0c                                   ; $52f9: $38 $0a

    ld c, b                                       ; $52fb: $48
    ld b, b                                       ; $52fc: $40

jr_0a8_52fd:
    ld c, c                                       ; $52fd: $49

jr_0a8_52fe:
    jr z, @+$2a                                   ; $52fe: $28 $28

jr_0a8_5300:
    dec a                                         ; $5300: $3d
    nop                                           ; $5301: $00
    ld c, l                                       ; $5302: $4d

jr_0a8_5303:
    inc b                                         ; $5303: $04
    ld bc, $00d0                                  ; $5304: $01 $d0 $00
    nop                                           ; $5307: $00
    inc c                                         ; $5308: $0c
    ld c, b                                       ; $5309: $48
    ld [bc], a                                    ; $530a: $02

jr_0a8_530b:
    nop                                           ; $530b: $00
    add hl, bc                                    ; $530c: $09

jr_0a8_530d:
    ld c, $48                                     ; $530d: $0e $48
    ld a, a                                       ; $530f: $7f
    add hl, bc                                    ; $5310: $09
    ld bc, $1000                                  ; $5311: $01 $00 $10
    ld h, b                                       ; $5314: $60
    jr nc, jr_0a8_5357                            ; $5315: $30 $40

    ld [hl-], a                                   ; $5317: $32
    jr jr_0a8_5362                                ; $5318: $18 $48

    jr c, jr_0a8_5358                             ; $531a: $38 $3c

    ld [$1804], sp                                ; $531c: $08 $04 $18
    rst $38                                       ; $531f: $ff
    dec sp                                        ; $5320: $3b
    jr nz, @+$06                                  ; $5321: $20 $04

    xor b                                         ; $5323: $a8
    ld c, b                                       ; $5324: $48
    db $10                                        ; $5325: $10
    ld hl, $5c28                                  ; $5326: $21 $28 $5c
    ld c, b                                       ; $5329: $48
    ld h, b                                       ; $532a: $60
    jr @+$46                                      ; $532b: $18 $44

    jr c, @+$48                                   ; $532d: $38 $46

    jr nz, jr_0a8_5300                            ; $532f: $20 $cf

    inc e                                         ; $5331: $1c
    jr nc, jr_0a8_52c4                            ; $5332: $30 $90

    ld e, b                                       ; $5334: $58
    inc b                                         ; $5335: $04
    inc b                                         ; $5336: $04
    ld l, $18                                     ; $5337: $2e $18
    ld hl, $1860                                  ; $5339: $21 $60 $18
    jr nz, jr_0a8_5346                            ; $533c: $20 $08

    jr z, @+$01                                   ; $533e: $28 $ff

    db $ec                                        ; $5340: $ec
    ld e, b                                       ; $5341: $58
    ld l, c                                       ; $5342: $69
    ld b, b                                       ; $5343: $40
    sbc $00                                       ; $5344: $de $00

jr_0a8_5346:
    ld [c], a                                     ; $5346: $e2
    ld [$2818], sp                                ; $5347: $08 $18 $28
    ld [de], a                                    ; $534a: $12
    add hl, sp                                    ; $534b: $39
    inc e                                         ; $534c: $1c
    ld [$38cc], sp                                ; $534d: $08 $cc $38
    rst $38                                       ; $5350: $ff
    cp b                                          ; $5351: $b8
    ld l, b                                       ; $5352: $68
    ld [$3a10], a                                 ; $5353: $ea $10 $3a
    add hl, bc                                    ; $5356: $09

jr_0a8_5357:
    ld b, h                                       ; $5357: $44

jr_0a8_5358:
    ld e, c                                       ; $5358: $59
    ld c, b                                       ; $5359: $48
    ld sp, $3829                                  ; $535a: $31 $29 $38
    inc a                                         ; $535d: $3c
    ld bc, $7908                                  ; $535e: $01 $08 $79
    rst $38                                       ; $5361: $ff

jr_0a8_5362:
    halt                                          ; $5362: $76
    jr @+$79                                      ; $5363: $18 $77

    ld bc, $2848                                  ; $5365: $01 $48 $28
    add h                                         ; $5368: $84
    ld e, c                                       ; $5369: $59
    ret nc                                        ; $536a: $d0

    jr nz, jr_0a8_52ed                            ; $536b: $20 $80

    jr jr_0a8_530b                                ; $536d: $18 $9c

    ld de, $3135                                  ; $536f: $11 $35 $31
    ld hl, sp+$6c                                 ; $5372: $f8 $6c
    ld hl, $400f                                  ; $5374: $21 $0f $40
    jr nz, jr_0a8_5391                            ; $5377: $20 $18

    ld a, [bc]                                    ; $5379: $0a
    jr nc, @-$14                                  ; $537a: $30 $ea

    add hl, de                                    ; $537c: $19
    add hl, de                                    ; $537d: $19
    nop                                           ; $537e: $00
    ld d, a                                       ; $537f: $57
    inc b                                         ; $5380: $04
    ld bc, $0078                                  ; $5381: $01 $78 $00
    inc b                                         ; $5384: $04
    stop                                          ; $5385: $10 $00
    ld bc, $21a0                                  ; $5387: $01 $a0 $21
    ld [$0022], sp                                ; $538a: $08 $22 $00
    rst $38                                       ; $538d: $ff

jr_0a8_538e:
    inc b                                         ; $538e: $04
    jr z, jr_0a8_53c1                             ; $538f: $28 $30

jr_0a8_5391:
    jr jr_0a8_53a5                                ; $5391: $18 $12

    jr c, @+$24                                   ; $5393: $38 $22

    ld [$602f], sp                                ; $5395: $08 $2f $60
    ld d, l                                       ; $5398: $55
    jr jr_0a8_53cb                                ; $5399: $18 $30

    jr nc, jr_0a8_53d7                            ; $539b: $30 $3a

    ld b, b                                       ; $539d: $40
    rst $38                                       ; $539e: $ff
    ld c, h                                       ; $539f: $4c
    db $10                                        ; $53a0: $10
    ld e, e                                       ; $53a1: $5b
    ld c, b                                       ; $53a2: $48
    ld b, $28                                     ; $53a3: $06 $28

jr_0a8_53a5:
    add l                                         ; $53a5: $85
    jr @-$6e                                      ; $53a6: $18 $90

    ld b, b                                       ; $53a8: $40
    sbc l                                         ; $53a9: $9d
    jr c, @+$5e                                   ; $53aa: $38 $5c

    ld h, b                                       ; $53ac: $60
    ld h, e                                       ; $53ad: $63
    ld b, b                                       ; $53ae: $40
    add b                                         ; $53af: $80
    rl b                                          ; $53b0: $cb $10
    daa                                           ; $53b2: $27
    nop                                           ; $53b3: $00
    ld e, b                                       ; $53b4: $58
    inc b                                         ; $53b5: $04
    ld bc, $0078                                  ; $53b6: $01 $78 $00
    inc b                                         ; $53b9: $04
    ld c, b                                       ; $53ba: $48
    ld bc, $09a8                                  ; $53bb: $01 $a8 $09
    add hl, bc                                    ; $53be: $09
    add hl, bc                                    ; $53bf: $09
    rst $38                                       ; $53c0: $ff

jr_0a8_53c1:
    inc b                                         ; $53c1: $04
    sub b                                         ; $53c2: $90
    ld b, l                                       ; $53c3: $45
    jr nc, jr_0a8_53e7                            ; $53c4: $30 $21

    jr nz, jr_0a8_5428                            ; $53c6: $20 $60

    jr z, @+$32                                   ; $53c8: $28 $30

    nop                                           ; $53ca: $00

jr_0a8_53cb:
    inc bc                                        ; $53cb: $03
    db $10                                        ; $53cc: $10
    ld h, b                                       ; $53cd: $60
    jr z, @+$12                                   ; $53ce: $28 $10

    jr z, @+$01                                   ; $53d0: $28 $ff

    ld c, c                                       ; $53d2: $49
    ld l, b                                       ; $53d3: $68
    inc d                                         ; $53d4: $14
    db $10                                        ; $53d5: $10
    halt                                          ; $53d6: $76

jr_0a8_53d7:
    ld [$2089], sp                                ; $53d7: $08 $89 $20
    db $10                                        ; $53da: $10
    jr z, jr_0a8_5425                             ; $53db: $28 $48

    ld b, b                                       ; $53dd: $40
    rra                                           ; $53de: $1f
    jr z, jr_0a8_538e                             ; $53df: $28 $ad

    ld a, b                                       ; $53e1: $78
    rst $38                                       ; $53e2: $ff
    cp l                                          ; $53e3: $bd
    ld b, b                                       ; $53e4: $40

jr_0a8_53e5:
    ld [hl], b                                    ; $53e5: $70
    ld b, b                                       ; $53e6: $40

jr_0a8_53e7:
    jr c, jr_0a8_5419                             ; $53e7: $38 $30

    ld e, e                                       ; $53e9: $5b
    db $10                                        ; $53ea: $10

jr_0a8_53eb:
    ld d, b                                       ; $53eb: $50

jr_0a8_53ec:
    ld a, b                                       ; $53ec: $78
    ld h, b                                       ; $53ed: $60
    jr z, @-$0e                                   ; $53ee: $28 $f0

    jr jr_0a8_53cb                                ; $53f0: $18 $d9

    ld c, b                                       ; $53f2: $48
    cp $e8                                        ; $53f3: $fe $e8
    jr @+$05                                      ; $53f5: $18 $03

    jr nc, @-$06                                  ; $53f7: $30 $f8

    jr jr_0a8_53ff                                ; $53f9: $18 $04

    jr c, @+$1f                                   ; $53fb: $38 $1d

    add hl, de                                    ; $53fd: $19
    dec h                                         ; $53fe: $25

jr_0a8_53ff:
    add hl, bc                                    ; $53ff: $09
    inc b                                         ; $5400: $04
    jr c, @+$45                                   ; $5401: $38 $43

    ld bc, $044d                                  ; $5403: $01 $4d $04
    ld bc, $00c8                                  ; $5406: $01 $c8 $00
    nop                                           ; $5409: $00
    add hl, bc                                    ; $540a: $09
    jr nc, jr_0a8_540f                            ; $540b: $30 $02

    nop                                           ; $540d: $00
    inc b                                         ; $540e: $04

jr_0a8_540f:
    ld c, $00                                     ; $540f: $0e $00
    rst $38                                       ; $5411: $ff
    ld de, $0d10                                  ; $5412: $11 $10 $0d
    jr @+$03                                      ; $5415: $18 $01

    jr @+$20                                      ; $5417: $18 $1e

jr_0a8_5419:
    jr nc, @+$12                                  ; $5419: $30 $10

    ld d, b                                       ; $541b: $50
    ld sp, $0408                                  ; $541c: $31 $08 $04
    jr jr_0a8_5468                                ; $541f: $18 $47

    db $10                                        ; $5421: $10
    or $04                                        ; $5422: $f6 $04
    db $10                                        ; $5424: $10

jr_0a8_5425:
    dec [hl]                                      ; $5425: $35
    jr jr_0a8_5483                                ; $5426: $18 $5b

Call_0a8_5428:
jr_0a8_5428:
    jr c, @+$56                                   ; $5428: $38 $54

    ld [$1009], sp                                ; $542a: $08 $09 $10
    jr nc, jr_0a8_5461                            ; $542d: $30 $32

    jr @+$0b                                      ; $542f: $18 $09

    ld e, a                                       ; $5431: $5f
    add hl, bc                                    ; $5432: $09
    ld l, a                                       ; $5433: $6f
    jr c, jr_0a8_543f                             ; $5434: $38 $09

    ld bc, $7e10                                  ; $5436: $01 $10 $7e
    jr z, jr_0a8_5449                             ; $5439: $28 $0e

    jr jr_0a8_544d                                ; $543b: $18 $10

    ld d, b                                       ; $543d: $50
    inc b                                         ; $543e: $04

jr_0a8_543f:
    db $10                                        ; $543f: $10
    cp a                                          ; $5440: $bf
    ld c, h                                       ; $5441: $4c
    ld b, b                                       ; $5442: $40
    add hl, bc                                    ; $5443: $09
    ld b, b                                       ; $5444: $40
    ld [$488c], sp                                ; $5445: $08 $8c $48
    sub b                                         ; $5448: $90

jr_0a8_5449:
    ld c, b                                       ; $5449: $48
    ld l, d                                       ; $544a: $6a
    nop                                           ; $544b: $00
    inc b                                         ; $544c: $04

jr_0a8_544d:
    db $10                                        ; $544d: $10
    ld d, b                                       ; $544e: $50
    ld c, b                                       ; $544f: $48
    cp $81                                        ; $5450: $fe $81
    ld [$5060], sp                                ; $5452: $08 $60 $50
    ret nc                                        ; $5455: $d0

    jr z, jr_0a8_53e5                             ; $5456: $28 $8d

    jr nz, jr_0a8_53eb                            ; $5458: $20 $91

    ld [$3080], sp                                ; $545a: $08 $80 $30
    ld b, b                                       ; $545d: $40
    ld e, b                                       ; $545e: $58
    inc b                                         ; $545f: $04
    rst $38                                       ; $5460: $ff

jr_0a8_5461:
    ld a, e                                       ; $5461: $7b
    ld [$287f], sp                                ; $5462: $08 $7f $28
    ld a, [c]                                     ; $5465: $f2
    jr c, jr_0a8_53ec                             ; $5466: $38 $84

jr_0a8_5468:
    ld [$300f], sp                                ; $5468: $08 $0f $30
    jp nz, $f010                                  ; $546b: $c2 $10 $f0

    ld c, b                                       ; $546e: $48
    ret nc                                        ; $546f: $d0

    jr @+$01                                      ; $5470: $18 $ff

    ld hl, $4418                                  ; $5472: $21 $18 $44
    jr z, jr_0a8_54cb                             ; $5475: $28 $54

    ld hl, $2844                                  ; $5477: $21 $44 $28
    ret nz                                        ; $547a: $c0

    db $10                                        ; $547b: $10
    call c, $e028                                 ; $547c: $dc $28 $e0
    db $10                                        ; $547f: $10

jr_0a8_5480:
    cp d                                          ; $5480: $ba
    jr @+$01                                      ; $5481: $18 $ff

jr_0a8_5483:
    call c, $0420                                 ; $5483: $dc $20 $04
    db $10                                        ; $5486: $10
    jr nz, jr_0a8_54d9                            ; $5487: $20 $50

    ld hl, sp+$28                                 ; $5489: $f8 $28
    ld a, h                                       ; $548b: $7c
    jr nz, jr_0a8_54b4                            ; $548c: $20 $26

    jr z, jr_0a8_54ec                             ; $548e: $28 $5c

    jr jr_0a8_54cd                                ; $5490: $18 $3b

    jr @+$01                                      ; $5492: $18 $ff

    dec d                                         ; $5494: $15
    jr nc, jr_0a8_54ea                            ; $5495: $30 $53

    add hl, bc                                    ; $5497: $09
    ld c, h                                       ; $5498: $4c
    ld c, b                                       ; $5499: $48
    ld [bc], a                                    ; $549a: $02
    sub b                                         ; $549b: $90
    ld l, h                                       ; $549c: $6c
    ld b, c                                       ; $549d: $41
    inc h                                         ; $549e: $24
    ld de, $413b                                  ; $549f: $11 $3b $41
    ld e, a                                       ; $54a2: $5f
    jr @+$01                                      ; $54a3: $18 $ff

    dec c                                         ; $54a5: $0d
    jr z, jr_0a8_54fc                             ; $54a6: $28 $54

    add hl, bc                                    ; $54a8: $09
    sbc b                                         ; $54a9: $98
    add hl, sp                                    ; $54aa: $39
    inc hl                                        ; $54ab: $23
    ld b, c                                       ; $54ac: $41
    inc [hl]                                      ; $54ad: $34
    jr c, jr_0a8_5480                             ; $54ae: $38 $d0

    jr jr_0a8_550c                                ; $54b0: $18 $5a

    jr nc, jr_0a8_5468                            ; $54b2: $30 $b4

jr_0a8_54b4:
    ld de, $38ff                                  ; $54b4: $11 $ff $38
    jr nz, @-$4e                                  ; $54b7: $20 $b0

    add hl, hl                                    ; $54b9: $29
    ld c, b                                       ; $54ba: $48
    add hl, hl                                    ; $54bb: $29
    ld d, b                                       ; $54bc: $50
    ld sp, $28e8                                  ; $54bd: $31 $e8 $28
    rlca                                          ; $54c0: $07
    jr nc, jr_0a8_54f9                            ; $54c1: $30 $36

    add hl, hl                                    ; $54c3: $29
    jr nc, @+$32                                  ; $54c4: $30 $30

    rst $18                                       ; $54c6: $df
    and b                                         ; $54c7: $a0
    ld e, b                                       ; $54c8: $58
    ret z                                         ; $54c9: $c8

    and b                                         ; $54ca: $a0

jr_0a8_54cb:
    inc b                                         ; $54cb: $04
    and d                                         ; $54cc: $a2

jr_0a8_54cd:
    ld bc, $4148                                  ; $54cd: $01 $48 $41
    and h                                         ; $54d0: $a4
    jr c, @-$42                                   ; $54d1: $38 $bc

    ld b, c                                       ; $54d3: $41
    ld [de], a                                    ; $54d4: $12
    jr nc, @+$01                                  ; $54d5: $30 $ff

    ld [hl], c                                    ; $54d7: $71
    ld c, c                                       ; $54d8: $49

jr_0a8_54d9:
    ld c, b                                       ; $54d9: $48
    sbc b                                         ; $54da: $98
    db $10                                        ; $54db: $10
    ld a, c                                       ; $54dc: $79
    ld b, c                                       ; $54dd: $41
    sbc c                                         ; $54de: $99
    halt                                          ; $54df: $76
    ld [$3a9c], sp                                ; $54e0: $08 $9c $3a
    ld d, e                                       ; $54e3: $53
    ld [hl+], a                                   ; $54e4: $22
    ld [bc], a                                    ; $54e5: $02
    ld c, b                                       ; $54e6: $48
    rst $38                                       ; $54e7: $ff
    ld h, c                                       ; $54e8: $61
    ld l, e                                       ; $54e9: $6b

jr_0a8_54ea:
    ld b, h                                       ; $54ea: $44
    dec hl                                        ; $54eb: $2b

jr_0a8_54ec:
    inc b                                         ; $54ec: $04
    ld d, e                                       ; $54ed: $53
    call nc, Call_0a8_5d41                        ; $54ee: $d4 $41 $5d
    ld l, b                                       ; $54f1: $68
    xor e                                         ; $54f2: $ab
    ld h, b                                       ; $54f3: $60
    ld sp, $0411                                  ; $54f4: $31 $11 $04
    jr z, @-$01                                   ; $54f7: $28 $fd

jr_0a8_54f9:
    cp e                                          ; $54f9: $bb
    ld e, c                                       ; $54fa: $59
    ld [bc], a                                    ; $54fb: $02

jr_0a8_54fc:
    add hl, de                                    ; $54fc: $19
    ldh a, [$60]                                  ; $54fd: $f0 $60
    ld l, b                                       ; $54ff: $68
    dec hl                                        ; $5500: $2b
    ld [de], a                                    ; $5501: $12
    inc sp                                        ; $5502: $33
    cp l                                          ; $5503: $bd
    ld b, c                                       ; $5504: $41
    inc b                                         ; $5505: $04
    inc b                                         ; $5506: $04
    db $10                                        ; $5507: $10
    rst $38                                       ; $5508: $ff
    jr jr_0a8_553e                                ; $5509: $18 $33

    ld e, b                                       ; $550b: $58

jr_0a8_550c:
    db $10                                        ; $550c: $10
    call nz, $4c22                                ; $550d: $c4 $22 $4c
    adc c                                         ; $5510: $89
    db $ec                                        ; $5511: $ec
    ld [de], a                                    ; $5512: $12
    ld hl, $0479                                  ; $5513: $21 $79 $04
    add hl, de                                    ; $5516: $19
    inc b                                         ; $5517: $04
    jr z, @+$01                                   ; $5518: $28 $ff

    dec c                                         ; $551a: $0d
    ld e, b                                       ; $551b: $58
    ld d, d                                       ; $551c: $52
    ld a, [hl+]                                   ; $551d: $2a
    inc d                                         ; $551e: $14
    ld b, c                                       ; $551f: $41
    ld a, b                                       ; $5520: $78
    jr jr_0a8_556b                                ; $5521: $18 $48

    ld b, d                                       ; $5523: $42
    halt                                          ; $5524: $76
    inc h                                         ; $5525: $24
    ld a, e                                       ; $5526: $7b
    inc c                                         ; $5527: $0c
    call $ff03                                    ; $5528: $cd $03 $ff
    inc hl                                        ; $552b: $23
    ld [de], a                                    ; $552c: $12
    ld l, h                                       ; $552d: $6c
    jr nz, jr_0a8_5577                            ; $552e: $20 $47

    inc d                                         ; $5530: $14
    xor e                                         ; $5531: $ab
    ld l, c                                       ; $5532: $69
    db $fc                                        ; $5533: $fc
    ret z                                         ; $5534: $c8

    db $d3                                        ; $5535: $d3
    ld b, d                                       ; $5536: $42
    sub [hl]                                      ; $5537: $96
    inc hl                                        ; $5538: $23
    sbc e                                         ; $5539: $9b
    inc d                                         ; $553a: $14
    rst $38                                       ; $553b: $ff
    or b                                          ; $553c: $b0
    ld e, h                                       ; $553d: $5c

jr_0a8_553e:
    adc a                                         ; $553e: $8f
    inc hl                                        ; $553f: $23
    ld b, b                                       ; $5540: $40
    dec hl                                        ; $5541: $2b
    inc e                                         ; $5542: $1c
    ld c, e                                       ; $5543: $4b
    inc c                                         ; $5544: $0c
    sbc d                                         ; $5545: $9a
    jr c, jr_0a8_5562                             ; $5546: $38 $1a

    sub b                                         ; $5548: $90
    ld b, h                                       ; $5549: $44
    ld e, h                                       ; $554a: $5c
    jr z, @+$01                                   ; $554b: $28 $ff

    jr jr_0a8_5573                                ; $554d: $18 $24

    sbc c                                         ; $554f: $99
    dec hl                                        ; $5550: $2b
    sub b                                         ; $5551: $90
    inc c                                         ; $5552: $0c
    ld a, $3a                                     ; $5553: $3e $3a
    add h                                         ; $5555: $84
    jr z, jr_0a8_55b0                             ; $5556: $28 $58

    and d                                         ; $5558: $a2
    ld a, a                                       ; $5559: $7f
    ld d, d                                       ; $555a: $52
    add b                                         ; $555b: $80
    ld b, c                                       ; $555c: $41
    rst $38                                       ; $555d: $ff
    ld e, l                                       ; $555e: $5d
    inc e                                         ; $555f: $1c
    ld l, b                                       ; $5560: $68
    ld e, e                                       ; $5561: $5b

jr_0a8_5562:
    ld e, $25                                     ; $5562: $1e $25
    ret nc                                        ; $5564: $d0

    ld c, c                                       ; $5565: $49
    jr c, jr_0a8_55a2                             ; $5566: $38 $3a

    call nz, $0e8a                                ; $5568: $c4 $8a $0e

jr_0a8_556b:
    dec de                                        ; $556b: $1b
    inc b                                         ; $556c: $04
    jr z, @+$01                                   ; $556d: $28 $ff

    ld c, e                                       ; $556f: $4b
    ld c, d                                       ; $5570: $4a
    dec c                                         ; $5571: $0d
    add b                                         ; $5572: $80

jr_0a8_5573:
    inc e                                         ; $5573: $1c
    ld b, e                                       ; $5574: $43
    add b                                         ; $5575: $80
    inc h                                         ; $5576: $24

jr_0a8_5577:
    ld e, h                                       ; $5577: $5c
    inc [hl]                                      ; $5578: $34
    add b                                         ; $5579: $80
    ld hl, $5158                                  ; $557a: $21 $58 $51
    adc h                                         ; $557d: $8c
    ld l, e                                       ; $557e: $6b
    rst $38                                       ; $557f: $ff
    ld l, b                                       ; $5580: $68
    ld sp, $3db4                                  ; $5581: $31 $b4 $3d
    add h                                         ; $5584: $84
    ld d, e                                       ; $5585: $53
    xor b                                         ; $5586: $a8
    ld a, d                                       ; $5587: $7a
    or c                                          ; $5588: $b1
    ld e, e                                       ; $5589: $5b
    nop                                           ; $558a: $00
    ld e, e                                       ; $558b: $5b
    ld h, b                                       ; $558c: $60
    ld [hl], $65                                  ; $558d: $36 $65
    add hl, sp                                    ; $558f: $39
    rst $38                                       ; $5590: $ff
    sbc [hl]                                      ; $5591: $9e
    ld b, [hl]                                    ; $5592: $46
    ldh a, [rNR32]                                ; $5593: $f0 $1c
    or $6b                                        ; $5595: $f6 $6b
    nop                                           ; $5597: $00
    dec a                                         ; $5598: $3d
    ld l, h                                       ; $5599: $6c
    ld a, [de]                                    ; $559a: $1a
    jr nz, jr_0a8_55d2                            ; $559b: $20 $35

    cp [hl]                                       ; $559d: $be
    ld d, b                                       ; $559e: $50
    or [hl]                                       ; $559f: $b6
    ld [hl], d                                    ; $55a0: $72
    rst $38                                       ; $55a1: $ff

jr_0a8_55a2:
    dec [hl]                                      ; $55a2: $35
    inc [hl]                                      ; $55a3: $34
    sub h                                         ; $55a4: $94
    ld a, [bc]                                    ; $55a5: $0a
    sbc b                                         ; $55a6: $98
    ld a, [hl+]                                   ; $55a7: $2a
    dec b                                         ; $55a8: $05
    cpl                                           ; $55a9: $2f
    ccf                                           ; $55aa: $3f
    ld c, d                                       ; $55ab: $4a
    ld b, h                                       ; $55ac: $44
    add l                                         ; $55ad: $85
    dec h                                         ; $55ae: $25
    ld b, h                                       ; $55af: $44

jr_0a8_55b0:
    sub $2e                                       ; $55b0: $d6 $2e
    rst $38                                       ; $55b2: $ff
    ret c                                         ; $55b3: $d8

    ld a, [hl+]                                   ; $55b4: $2a
    cp b                                          ; $55b5: $b8
    ld a, [hl+]                                   ; $55b6: $2a
    add c                                         ; $55b7: $81
    ld a, [hl+]                                   ; $55b8: $2a
    add hl, bc                                    ; $55b9: $09
    dec e                                         ; $55ba: $1d
    ret                                           ; $55bb: $c9


    ld a, [hl-]                                   ; $55bc: $3a
    or d                                          ; $55bd: $b2
    ld c, $64                                     ; $55be: $0e $64
    ld c, h                                       ; $55c0: $4c
    ld a, h                                       ; $55c1: $7c
    ld b, e                                       ; $55c2: $43
    rst $38                                       ; $55c3: $ff
    or c                                          ; $55c4: $b1
    jr jr_0a8_55cf                                ; $55c5: $18 $08

    inc hl                                        ; $55c7: $23
    ld [hl], b                                    ; $55c8: $70
    ld a, $9c                                     ; $55c9: $3e $9c
    dec sp                                        ; $55cb: $3b
    sub b                                         ; $55cc: $90
    ld [hl], c                                    ; $55cd: $71
    ld b, c                                       ; $55ce: $41

jr_0a8_55cf:
    inc hl                                        ; $55cf: $23
    inc [hl]                                      ; $55d0: $34
    ld b, b                                       ; $55d1: $40

jr_0a8_55d2:
    jr @+$29                                      ; $55d2: $18 $27

    rst $38                                       ; $55d4: $ff
    call z, $ce1b                                 ; $55d5: $cc $1b $ce
    rrca                                          ; $55d8: $0f
    ret nz                                        ; $55d9: $c0

    ld h, e                                       ; $55da: $63
    ld b, $46                                     ; $55db: $06 $46
    jr c, @+$30                                   ; $55dd: $38 $2e

    ldh [rWX], a                                  ; $55df: $e0 $4b
    rlca                                          ; $55e1: $07
    ld a, e                                       ; $55e2: $7b
    ld hl, sp+$7c                                 ; $55e3: $f8 $7c
    rst $38                                       ; $55e5: $ff
    inc c                                         ; $55e6: $0c
    daa                                           ; $55e7: $27
    inc [hl]                                      ; $55e8: $34
    ld hl, $4870                                  ; $55e9: $21 $70 $48
    and b                                         ; $55ec: $a0
    add b                                         ; $55ed: $80
    db $ed                                        ; $55ee: $ed
    ld e, $40                                     ; $55ef: $1e $40
    ccf                                           ; $55f1: $3f
    db $fc                                        ; $55f2: $fc
    ld h, $17                                     ; $55f3: $26 $17
    jr nz, @+$01                                  ; $55f5: $20 $ff

jr_0a8_55f7:
    and b                                         ; $55f7: $a0
    ld c, b                                       ; $55f8: $48
    adc e                                         ; $55f9: $8b
    ld [hl], $90                                  ; $55fa: $36 $90
    ld d, d                                       ; $55fc: $52
    xor b                                         ; $55fd: $a8
    ld e, [hl]                                    ; $55fe: $5e
    ret c                                         ; $55ff: $d8

    rra                                           ; $5600: $1f
    xor h                                         ; $5601: $ac
    ld sp, $3880                                  ; $5602: $31 $80 $38
    add sp, $4e                                   ; $5605: $e8 $4e
    rst $38                                       ; $5607: $ff
    push af                                       ; $5608: $f5
    rra                                           ; $5609: $1f
    add l                                         ; $560a: $85
    ld sp, $3bab                                  ; $560b: $31 $ab $3b
    or a                                          ; $560e: $b7
    rla                                           ; $560f: $17
    ld d, c                                       ; $5610: $51
    ld d, l                                       ; $5611: $55
    inc d                                         ; $5612: $14
    ld [hl], a                                    ; $5613: $77
    push de                                       ; $5614: $d5
    ld c, [hl]                                    ; $5615: $4e
    sbc b                                         ; $5616: $98
    rra                                           ; $5617: $1f
    rst $38                                       ; $5618: $ff
    rst $18                                       ; $5619: $df
    rla                                           ; $561a: $17
    or l                                          ; $561b: $b5
    jr nz, jr_0a8_55f7                            ; $561c: $20 $d9

    daa                                           ; $561e: $27
    sub b                                         ; $561f: $90
    ld d, c                                       ; $5620: $51
    db $fc                                        ; $5621: $fc
    daa                                           ; $5622: $27
    ldh [$38], a                                  ; $5623: $e0 $38
    add b                                         ; $5625: $80
    add hl, sp                                    ; $5626: $39
    add $26                                       ; $5627: $c6 $26
    rst $38                                       ; $5629: $ff
    add b                                         ; $562a: $80
    ld e, [hl]                                    ; $562b: $5e
    db $ec                                        ; $562c: $ec
    rra                                           ; $562d: $1f
    or h                                          ; $562e: $b4
    daa                                           ; $562f: $27
    and [hl]                                      ; $5630: $a6
    inc e                                         ; $5631: $1c
    call c, $2c29                                 ; $5632: $dc $29 $2c
    ld d, $a0                                     ; $5635: $16 $a0
    ld e, b                                       ; $5637: $58
    ld d, c                                       ; $5638: $51
    daa                                           ; $5639: $27
    rst $38                                       ; $563a: $ff
    dec h                                         ; $563b: $25
    ld c, l                                       ; $563c: $4d
    ld b, b                                       ; $563d: $40
    add hl, hl                                    ; $563e: $29
    inc a                                         ; $563f: $3c
    ld h, $ee                                     ; $5640: $26 $ee
    sub e                                         ; $5642: $93
    ld c, a                                       ; $5643: $4f
    cpl                                           ; $5644: $2f
    rst $28                                       ; $5645: $ef
    inc l                                         ; $5646: $2c
    add [hl]                                      ; $5647: $86
    ld h, [hl]                                    ; $5648: $66
    dec de                                        ; $5649: $1b
    dec h                                         ; $564a: $25
    rst $38                                       ; $564b: $ff
    ld c, b                                       ; $564c: $48
    ld h, $16                                     ; $564d: $26 $16
    ld h, b                                       ; $564f: $60
    rra                                           ; $5650: $1f
    ld d, a                                       ; $5651: $57
    call c, $e04a                                 ; $5652: $dc $4a $e0
    ld [hl+], a                                   ; $5655: $22
    add b                                         ; $5656: $80
    ld b, [hl]                                    ; $5657: $46
    sbc a                                         ; $5658: $9f
    dec h                                         ; $5659: $25
    add [hl]                                      ; $565a: $86
    ld d, b                                       ; $565b: $50
    rst $38                                       ; $565c: $ff
    ret z                                         ; $565d: $c8

    dec l                                         ; $565e: $2d
    ret nz                                        ; $565f: $c0

    ld a, [hl-]                                   ; $5660: $3a
    cp l                                          ; $5661: $bd
    dec hl                                        ; $5662: $2b
    ret nc                                        ; $5663: $d0

    inc sp                                        ; $5664: $33
    inc b                                         ; $5665: $04
    ld d, d                                       ; $5666: $52
    db $e4                                        ; $5667: $e4

jr_0a8_5668:
    ld [hl+], a                                   ; $5668: $22
    jr nz, @+$7b                                  ; $5669: $20 $79

    xor e                                         ; $566b: $ab
    dec h                                         ; $566c: $25
    rst $38                                       ; $566d: $ff
    call c, $f07d                                 ; $566e: $dc $7d $f0
    ld d, d                                       ; $5671: $52
    ld c, e                                       ; $5672: $4b
    ld h, a                                       ; $5673: $67
    ld e, h                                       ; $5674: $5c
    cpl                                           ; $5675: $2f
    inc h                                         ; $5676: $24
    ld b, l                                       ; $5677: $45
    ld l, h                                       ; $5678: $6c
    ld a, [hl-]                                   ; $5679: $3a
    ld [hl-], a                                   ; $567a: $32
    ld b, c                                       ; $567b: $41
    add h                                         ; $567c: $84
    ld de, $c0ff                                  ; $567d: $11 $ff $c0
    ld a, [de]                                    ; $5680: $1a
    sbc a                                         ; $5681: $9f
    ld b, b                                       ; $5682: $40
    rst $20                                       ; $5683: $e7
    add hl, hl                                    ; $5684: $29
    sub b                                         ; $5685: $90
    ld a, $f7                                     ; $5686: $3e $f7
    ld c, c                                       ; $5688: $49
    db $db                                        ; $5689: $db
    dec sp                                        ; $568a: $3b
    call nz, $df1a                                ; $568b: $c4 $1a $df
    dec e                                         ; $568e: $1d
    rst $38                                       ; $568f: $ff
    call $df29                                    ; $5690: $cd $29 $df
    dec sp                                        ; $5693: $3b
    ld l, [hl]                                    ; $5694: $6e
    ld c, a                                       ; $5695: $4f
    ld l, b                                       ; $5696: $68
    scf                                           ; $5697: $37
    ld d, h                                       ; $5698: $54
    ld [hl-], a                                   ; $5699: $32
    ld b, h                                       ; $569a: $44
    ld l, l                                       ; $569b: $6d
    call c, $0043                                 ; $569c: $dc $43 $00

jr_0a8_569f:
    ld a, [hl-]                                   ; $569f: $3a
    ldh [$08], a                                  ; $56a0: $e0 $08
    dec h                                         ; $56a2: $25
    db $10                                        ; $56a3: $10
    ld [de], a                                    ; $56a4: $12
    ld [$1865], sp                                ; $56a5: $08 $65 $18
    ld bc, $0441                                  ; $56a8: $01 $41 $04

jr_0a8_56ab:
    ld bc, $00b8                                  ; $56ab: $01 $b8 $00
    inc b                                         ; $56ae: $04
    nop                                           ; $56af: $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    dec c                                         ; $56b2: $0d
    jr nc, jr_0a8_5668                            ; $56b3: $30 $b3

    ld bc, $0918                                  ; $56b5: $01 $18 $09
    dec e                                         ; $56b8: $1d
    ld d, b                                       ; $56b9: $50
    jr nz, @+$6a                                  ; $56ba: $20 $68

    add hl, bc                                    ; $56bc: $09
    add hl, bc                                    ; $56bd: $09
    jr nz, @+$3a                                  ; $56be: $20 $38

    rrca                                          ; $56c0: $0f
    jr @+$01                                      ; $56c1: $18 $ff

    db $10                                        ; $56c3: $10
    ld e, b                                       ; $56c4: $58
    ld d, b                                       ; $56c5: $50
    ld h, b                                       ; $56c6: $60
    cpl                                           ; $56c7: $2f
    nop                                           ; $56c8: $00
    ld h, b                                       ; $56c9: $60
    jr nc, jr_0a8_5738                            ; $56ca: $30 $6c

    db $10                                        ; $56cc: $10
    ld b, c                                       ; $56cd: $41
    nop                                           ; $56ce: $00
    ld [hl], b                                    ; $56cf: $70
    ld d, b                                       ; $56d0: $50
    ld de, $ff00                                  ; $56d1: $11 $00 $ff
    ld d, b                                       ; $56d4: $50
    ld e, b                                       ; $56d5: $58
    ld b, b                                       ; $56d6: $40
    ld h, b                                       ; $56d7: $60
    and d                                         ; $56d8: $a2
    nop                                           ; $56d9: $00
    xor l                                         ; $56da: $ad
    jr c, @+$06                                   ; $56db: $38 $04

    jr jr_0a8_5723                                ; $56dd: $18 $44

    ld [$102a], sp                                ; $56df: $08 $2a $10
    ld e, l                                       ; $56e2: $5d
    ld [$61ff], sp                                ; $56e3: $08 $ff $61
    db $10                                        ; $56e6: $10
    daa                                           ; $56e7: $27
    db $10                                        ; $56e8: $10
    ld [$7318], sp                                ; $56e9: $08 $18 $73
    jr nz, jr_0a8_56f2                            ; $56ec: $20 $04

    ld b, b                                       ; $56ee: $40
    add l                                         ; $56ef: $85
    jr @+$06                                      ; $56f0: $18 $04

jr_0a8_56f2:
    ld b, b                                       ; $56f2: $40
    or h                                          ; $56f3: $b4
    ld [$5bff], sp                                ; $56f4: $08 $ff $5b
    jr nz, jr_0a8_5735                            ; $56f7: $20 $3c

    db $10                                        ; $56f9: $10
    ld b, c                                       ; $56fa: $41
    adc b                                         ; $56fb: $88
    ld e, e                                       ; $56fc: $5b
    db $10                                        ; $56fd: $10
    add b                                         ; $56fe: $80
    jr z, jr_0a8_5771                             ; $56ff: $28 $70

    jr nz, jr_0a8_5705                            ; $5701: $20 $02

    jr z, jr_0a8_5771                             ; $5703: $28 $6c

jr_0a8_5705:
    ld b, b                                       ; $5705: $40
    cp $3d                                        ; $5706: $fe $3d
    db $10                                        ; $5708: $10
    ld [hl], b                                    ; $5709: $70
    jr z, @+$43                                   ; $570a: $28 $41

    ld a, b                                       ; $570c: $78
    and h                                         ; $570d: $a4
    db $10                                        ; $570e: $10
    sbc l                                         ; $570f: $9d
    ld d, b                                       ; $5710: $50
    ld c, b                                       ; $5711: $48
    jr nz, jr_0a8_569f                            ; $5712: $20 $8b

    ld c, b                                       ; $5714: $48
    add hl, bc                                    ; $5715: $09
    rst $38                                       ; $5716: $ff
    ret nc                                        ; $5717: $d0

    jr jr_0a8_56ab                                ; $5718: $18 $91

    ld b, b                                       ; $571a: $40
    call Call_000_0358                            ; $571b: $cd $58 $03
    adc b                                         ; $571e: $88
    sbc h                                         ; $571f: $9c
    jr nc, jr_0a8_5742                            ; $5720: $30 $20

    add hl, bc                                    ; $5722: $09

jr_0a8_5723:
    ld h, $68                                     ; $5723: $26 $68
    jr z, jr_0a8_5750                             ; $5725: $28 $29

    rst $38                                       ; $5727: $ff
    jr nc, jr_0a8_575b                            ; $5728: $30 $31

    rst $28                                       ; $572a: $ef
    ld b, c                                       ; $572b: $41
    ldh a, [rSB]                                  ; $572c: $f0 $01
    dec c                                         ; $572e: $0d
    ld e, b                                       ; $572f: $58
    or e                                          ; $5730: $b3
    add hl, bc                                    ; $5731: $09
    jr jr_0a8_575d                                ; $5732: $18 $29

    ld [hl], b                                    ; $5734: $70

jr_0a8_5735:
    ld hl, $f88b                                  ; $5735: $21 $8b $f8

jr_0a8_5738:
    rst $38                                       ; $5738: $ff
    ld e, h                                       ; $5739: $5c
    ld b, c                                       ; $573a: $41
    ld b, b                                       ; $573b: $40
    ld b, b                                       ; $573c: $40
    inc hl                                        ; $573d: $23
    ld c, c                                       ; $573e: $49
    ld [hl], e                                    ; $573f: $73
    ld c, c                                       ; $5740: $49
    db $f4                                        ; $5741: $f4

jr_0a8_5742:
    ld de, $2004                                  ; $5742: $11 $04 $20
    jp nc, Jump_0a8_6860                          ; $5745: $d2 $60 $68

    ld hl, $1cff                                  ; $5748: $21 $ff $1c
    add hl, sp                                    ; $574b: $39
    jr nz, @+$0c                                  ; $574c: $20 $0a

    sbc l                                         ; $574e: $9d
    ld d, c                                       ; $574f: $51

jr_0a8_5750:
    inc c                                         ; $5750: $0c
    xor c                                         ; $5751: $a9
    pop bc                                        ; $5752: $c1
    ld b, c                                       ; $5753: $41
    rra                                           ; $5754: $1f
    ld c, d                                       ; $5755: $4a
    jp nc, $4910                                  ; $5756: $d2 $10 $49

    ld [hl+], a                                   ; $5759: $22
    rst $38                                       ; $575a: $ff

jr_0a8_575b:
    add b                                         ; $575b: $80
    ld a, b                                       ; $575c: $78

jr_0a8_575d:
    adc $1a                                       ; $575d: $ce $1a
    jr c, jr_0a8_579a                             ; $575f: $38 $39

    and c                                         ; $5761: $a1
    ld [hl+], a                                   ; $5762: $22
    ld h, a                                       ; $5763: $67
    or c                                          ; $5764: $b1
    ld a, [hl+]                                   ; $5765: $2a
    ld a, [de]                                    ; $5766: $1a
    ld c, $80                                     ; $5767: $0e $80
    db $db                                        ; $5769: $db
    add hl, hl                                    ; $576a: $29
    rst $38                                       ; $576b: $ff
    dec a                                         ; $576c: $3d
    ld [de], a                                    ; $576d: $12
    call c, $c048                                 ; $576e: $dc $48 $c0

jr_0a8_5771:
    jr nc, jr_0a8_57b9                            ; $5771: $30 $46

    ld [hl], b                                    ; $5773: $70
    ld l, c                                       ; $5774: $69
    inc de                                        ; $5775: $13
    ld d, b                                       ; $5776: $50
    dec hl                                        ; $5777: $2b
    and e                                         ; $5778: $a3
    ld d, c                                       ; $5779: $51
    ld d, $13                                     ; $577a: $16 $13
    rst $38                                       ; $577c: $ff
    db $ec                                        ; $577d: $ec
    ld b, c                                       ; $577e: $41
    inc hl                                        ; $577f: $23
    ld [hl+], a                                   ; $5780: $22
    ld e, h                                       ; $5781: $5c
    ld b, d                                       ; $5782: $42
    ld e, h                                       ; $5783: $5c
    jr c, jr_0a8_57a6                             ; $5784: $38 $20

    ld de, $62cf                                  ; $5786: $11 $cf $62
    or h                                          ; $5789: $b4
    dec de                                        ; $578a: $1b

jr_0a8_578b:
    cpl                                           ; $578b: $2f
    and d                                         ; $578c: $a2
    rst $38                                       ; $578d: $ff
    and h                                         ; $578e: $a4
    ld a, [hl-]                                   ; $578f: $3a
    db $e3                                        ; $5790: $e3
    add hl, de                                    ; $5791: $19
    ret nz                                        ; $5792: $c0

    ld h, c                                       ; $5793: $61
    add b                                         ; $5794: $80
    ld a, [hl+]                                   ; $5795: $2a
    db $e4                                        ; $5796: $e4
    ld c, d                                       ; $5797: $4a
    dec h                                         ; $5798: $25
    ld a, [de]                                    ; $5799: $1a

jr_0a8_579a:
    ld [$0c04], sp                                ; $579a: $08 $04 $0c
    inc c                                         ; $579d: $0c
    rst $38                                       ; $579e: $ff
    add hl, de                                    ; $579f: $19
    ld a, [de]                                    ; $57a0: $1a
    ld b, b                                       ; $57a1: $40
    jr nc, @+$1a                                  ; $57a2: $30 $18

    ld e, c                                       ; $57a4: $59
    and b                                         ; $57a5: $a0

jr_0a8_57a6:
    ld b, b                                       ; $57a6: $40
    sub c                                         ; $57a7: $91
    ld d, b                                       ; $57a8: $50
    ld h, h                                       ; $57a9: $64
    add hl, bc                                    ; $57aa: $09
    ret nc                                        ; $57ab: $d0

    ld e, b                                       ; $57ac: $58
    ret                                           ; $57ad: $c9


    sub d                                         ; $57ae: $92
    rst $38                                       ; $57af: $ff
    ld h, b                                       ; $57b0: $60
    ld d, e                                       ; $57b1: $53
    ld [bc], a                                    ; $57b2: $02
    jr c, jr_0a8_57e9                             ; $57b3: $38 $34

    ld l, c                                       ; $57b5: $69
    or c                                          ; $57b6: $b1
    ld b, e                                       ; $57b7: $43
    ld e, b                                       ; $57b8: $58

jr_0a8_57b9:
    jr nz, jr_0a8_578b                            ; $57b9: $20 $d0

    jr nc, jr_0a8_57eb                            ; $57bb: $30 $2e

    ld a, [de]                                    ; $57bd: $1a
    ret nc                                        ; $57be: $d0

    ld e, e                                       ; $57bf: $5b
    rst $38                                       ; $57c0: $ff
    xor d                                         ; $57c1: $aa
    ld c, e                                       ; $57c2: $4b
    ld b, c                                       ; $57c3: $41
    inc d                                         ; $57c4: $14
    add e                                         ; $57c5: $83
    ld e, c                                       ; $57c6: $59
    nop                                           ; $57c7: $00

jr_0a8_57c8:
    ld [bc], a                                    ; $57c8: $02
    ld d, b                                       ; $57c9: $50
    ld sp, $3810                                  ; $57ca: $31 $10 $38
    sub l                                         ; $57cd: $95
    inc sp                                        ; $57ce: $33
    jp $ff1c                                      ; $57cf: $c3 $1c $ff


    adc a                                         ; $57d2: $8f
    jr nc, jr_0a8_5771                            ; $57d3: $30 $9c

    inc sp                                        ; $57d5: $33
    adc c                                         ; $57d6: $89
    ld b, e                                       ; $57d7: $43
    dec l                                         ; $57d8: $2d
    dec h                                         ; $57d9: $25
    ld l, [hl]                                    ; $57da: $6e
    ld c, d                                       ; $57db: $4a
    ld b, b                                       ; $57dc: $40
    ld c, l                                       ; $57dd: $4d
    rlca                                          ; $57de: $07
    ld [hl], b                                    ; $57df: $70
    ld h, a                                       ; $57e0: $67
    dec de                                        ; $57e1: $1b
    rst $38                                       ; $57e2: $ff
    ld d, h                                       ; $57e3: $54
    ld b, b                                       ; $57e4: $40
    or a                                          ; $57e5: $b7
    dec hl                                        ; $57e6: $2b
    inc de                                        ; $57e7: $13
    dec h                                         ; $57e8: $25

jr_0a8_57e9:
    jr nz, @+$2c                                  ; $57e9: $20 $2a

jr_0a8_57eb:
    sub b                                         ; $57eb: $90
    dec e                                         ; $57ec: $1d
    ld [c], a                                     ; $57ed: $e2
    ld hl, $520c                                  ; $57ee: $21 $0c $52
    or h                                          ; $57f1: $b4
    inc a                                         ; $57f2: $3c
    rst $38                                       ; $57f3: $ff
    sbc b                                         ; $57f4: $98
    add hl, de                                    ; $57f5: $19
    ld d, b                                       ; $57f6: $50
    dec sp                                        ; $57f7: $3b
    ld l, $50                                     ; $57f8: $2e $50
    inc h                                         ; $57fa: $24
    add hl, hl                                    ; $57fb: $29
    ld a, b                                       ; $57fc: $78
    ld a, c                                       ; $57fd: $79
    ld [hl-], a                                   ; $57fe: $32
    dec e                                         ; $57ff: $1d
    ld l, h                                       ; $5800: $6c
    ld [$20b7], sp                                ; $5801: $08 $b7 $20
    rst $38                                       ; $5804: $ff
    or c                                          ; $5805: $b1
    ld e, b                                       ; $5806: $58
    add hl, sp                                    ; $5807: $39
    inc sp                                        ; $5808: $33
    db $e4                                        ; $5809: $e4
    dec [hl]                                      ; $580a: $35
    jr nz, jr_0a8_582e                            ; $580b: $20 $21

    ld e, b                                       ; $580d: $58
    ld [de], a                                    ; $580e: $12
    ret nz                                        ; $580f: $c0

    ld d, d                                       ; $5810: $52
    daa                                           ; $5811: $27
    ld l, $0f                                     ; $5812: $2e $0f
    ld a, $ff                                     ; $5814: $3e $ff
    sub h                                         ; $5816: $94
    jr jr_0a8_57c8                                ; $5817: $18 $af

    ld b, h                                       ; $5819: $44
    ld l, h                                       ; $581a: $6c
    inc hl                                        ; $581b: $23
    jr jr_0a8_584e                                ; $581c: $18 $30

    ld d, c                                       ; $581e: $51
    db $d3                                        ; $581f: $d3
    ld d, c                                       ; $5820: $51
    ld h, l                                       ; $5821: $65
    ld b, b                                       ; $5822: $40
    ld e, $0b                                     ; $5823: $1e $0b
    ld e, l                                       ; $5825: $5d
    rst $38                                       ; $5826: $ff
    ld [hl], b                                    ; $5827: $70
    ld h, d                                       ; $5828: $62
    ld c, b                                       ; $5829: $48
    dec sp                                        ; $582a: $3b
    ld [hl], h                                    ; $582b: $74
    dec hl                                        ; $582c: $2b
    xor h                                         ; $582d: $ac

jr_0a8_582e:
    ld a, [de]                                    ; $582e: $1a
    ld l, b                                       ; $582f: $68
    ld de, $0ce0                                  ; $5830: $11 $e0 $0c
    dec a                                         ; $5833: $3d
    dec hl                                        ; $5834: $2b
    daa                                           ; $5835: $27
    ld [hl], $ff                                  ; $5836: $36 $ff
    sbc b                                         ; $5838: $98
    ld h, $e0                                     ; $5839: $26 $e0
    inc [hl]                                      ; $583b: $34
    add b                                         ; $583c: $80
    add hl, sp                                    ; $583d: $39
    sub d                                         ; $583e: $92
    ld d, $cc                                     ; $583f: $16 $cc
    ld b, c                                       ; $5841: $41
    ldh a, [rNR23]                                ; $5842: $f0 $18
    adc b                                         ; $5844: $88
    ld h, l                                       ; $5845: $65
    cp e                                          ; $5846: $bb
    ld b, e                                       ; $5847: $43
    rst $38                                       ; $5848: $ff
    jr nc, @-$75                                  ; $5849: $30 $89

    or e                                          ; $584b: $b3
    inc h                                         ; $584c: $24
    sub h                                         ; $584d: $94

jr_0a8_584e:
    ld b, c                                       ; $584e: $41
    db $10                                        ; $584f: $10
    ld hl, $3b40                                  ; $5850: $21 $40 $3b
    inc d                                         ; $5853: $14
    ld h, l                                       ; $5854: $65
    or c                                          ; $5855: $b1
    ld e, $88                                     ; $5856: $1e $88
    ld d, h                                       ; $5858: $54
    rst $38                                       ; $5859: $ff
    adc a                                         ; $585a: $8f
    ld b, b                                       ; $585b: $40
    ld l, [hl]                                    ; $585c: $6e
    ld [hl], b                                    ; $585d: $70
    ld l, h                                       ; $585e: $6c
    ld d, b                                       ; $585f: $50
    jp $c30d                                      ; $5860: $c3 $0d $c3


    ld hl, $7040                                  ; $5863: $21 $40 $70
    and e                                         ; $5866: $a3
    ld h, c                                       ; $5867: $61
    adc c                                         ; $5868: $89
    ld a, d                                       ; $5869: $7a
    rst $38                                       ; $586a: $ff
    call nc, Call_0a8_472f                        ; $586b: $d4 $2f $47
    ld b, b                                       ; $586e: $40
    ld d, a                                       ; $586f: $57

Jump_0a8_5870:
    ld a, l                                       ; $5870: $7d
    ld l, c                                       ; $5871: $69
    ld b, b                                       ; $5872: $40
    ld h, h                                       ; $5873: $64
    ld b, c                                       ; $5874: $41
    rrca                                          ; $5875: $0f
    inc hl                                        ; $5876: $23
    ldh a, [$63]                                  ; $5877: $f0 $63
    or c                                          ; $5879: $b1
    daa                                           ; $587a: $27
    rst $38                                       ; $587b: $ff
    ld b, e                                       ; $587c: $43
    ld [hl-], a                                   ; $587d: $32
    ld e, h                                       ; $587e: $5c
    dec d                                         ; $587f: $15
    or l                                          ; $5880: $b5
    ld d, b                                       ; $5881: $50
    add hl, sp                                    ; $5882: $39
    ld h, c                                       ; $5883: $61
    and c                                         ; $5884: $a1
    dec a                                         ; $5885: $3d
    add sp, $1f                                   ; $5886: $e8 $1f
    ccf                                           ; $5888: $3f
    ld c, e                                       ; $5889: $4b
    adc a                                         ; $588a: $8f
    cpl                                           ; $588b: $2f
    rst $38                                       ; $588c: $ff
    nop                                           ; $588d: $00
    ld [hl-], a                                   ; $588e: $32
    ld [hl], l                                    ; $588f: $75
    ld b, a                                       ; $5890: $47
    inc e                                         ; $5891: $1c
    ld l, $c6                                     ; $5892: $2e $c6
    ld a, [de]                                    ; $5894: $1a
    ld [$ec29], a                                 ; $5895: $ea $29 $ec
    dec a                                         ; $5898: $3d
    ldh a, [rLYC]                                 ; $5899: $f0 $45
    ld hl, $ff10                                  ; $589b: $21 $10 $ff
    rst $30                                       ; $589e: $f7
    ld c, a                                       ; $589f: $4f
    db $fc                                        ; $58a0: $fc
    ld l, $5f                                     ; $58a1: $2e $5f
    inc l                                         ; $58a3: $2c
    inc e                                         ; $58a4: $1c
    ld b, d                                       ; $58a5: $42
    add b                                         ; $58a6: $80
    cpl                                           ; $58a7: $2f
    rst $00                                       ; $58a8: $c7
    ld c, [hl]                                    ; $58a9: $4e
    inc b                                         ; $58aa: $04
    ld hl, $5b64                                  ; $58ab: $21 $64 $5b
    rst $38                                       ; $58ae: $ff
    ld b, b                                       ; $58af: $40
    ld [hl], $d1                                  ; $58b0: $36 $d1
    ld d, d                                       ; $58b2: $52
    and h                                         ; $58b3: $a4
    dec l                                         ; $58b4: $2d
    and h                                         ; $58b5: $a4
    ld e, b                                       ; $58b6: $58
    adc h                                         ; $58b7: $8c
    ld l, l                                       ; $58b8: $6d
    db $10                                        ; $58b9: $10
    ld b, e                                       ; $58ba: $43
    ld [hl], b                                    ; $58bb: $70
    inc a                                         ; $58bc: $3c
    ret nc                                        ; $58bd: $d0

    inc [hl]                                      ; $58be: $34
    rst $38                                       ; $58bf: $ff
    sub b                                         ; $58c0: $90
    ld c, h                                       ; $58c1: $4c
    ret nc                                        ; $58c2: $d0

    ld [hl-], a                                   ; $58c3: $32
    cp a                                          ; $58c4: $bf
    ld d, a                                       ; $58c5: $57
    db $fc                                        ; $58c6: $fc
    dec a                                         ; $58c7: $3d
    or b                                          ; $58c8: $b0
    ld h, h                                       ; $58c9: $64
    ret nc                                        ; $58ca: $d0

    inc [hl]                                      ; $58cb: $34
    rst $28                                       ; $58cc: $ef
    ld a, [de]                                    ; $58cd: $1a
    ld h, e                                       ; $58ce: $63
    ld a, $ff                                     ; $58cf: $3e $ff
    ld [de], a                                    ; $58d1: $12
    ld e, b                                       ; $58d2: $58
    ei                                            ; $58d3: $fb
    ld b, h                                       ; $58d4: $44
    xor b                                         ; $58d5: $a8
    inc [hl]                                      ; $58d6: $34

jr_0a8_58d7:
    dec c                                         ; $58d7: $0d
    jr nc, jr_0a8_5916                            ; $58d8: $30 $3c

    ccf                                           ; $58da: $3f
    jr nz, @+$6a                                  ; $58db: $20 $68

    ld sp, $6c30                                  ; $58dd: $31 $30 $6c
    ld c, b                                       ; $58e0: $48
    rst $38                                       ; $58e1: $ff
    ld b, b                                       ; $58e2: $40
    dec h                                         ; $58e3: $25
    ld [hl], c                                    ; $58e4: $71
    jr nc, jr_0a8_5961                            ; $58e5: $30 $7a

    rra                                           ; $58e7: $1f
    call c, $902f                                 ; $58e8: $dc $2f $90
    jr nc, jr_0a8_5961                            ; $58eb: $30 $74

    jr z, jr_0a8_5964                             ; $58ed: $28 $75

    jr nc, jr_0a8_5942                            ; $58ef: $30 $51

    ld c, b                                       ; $58f1: $48
    pop bc                                        ; $58f2: $c1
    nop                                           ; $58f3: $00
    ld c, h                                       ; $58f4: $4c
    inc b                                         ; $58f5: $04
    ld bc, $0030                                  ; $58f6: $01 $30 $00
    nop                                           ; $58f9: $00
    dec b                                         ; $58fa: $05
    ld [$380e], sp                                ; $58fb: $08 $0e $38
    nop                                           ; $58fe: $00
    nop                                           ; $58ff: $00
    dec de                                        ; $5900: $1b
    add hl, bc                                    ; $5901: $09
    add hl, bc                                    ; $5902: $09
    add hl, bc                                    ; $5903: $09
    db $10                                        ; $5904: $10
    jr nc, jr_0a8_5918                            ; $5905: $30 $11

    ld [$1204], sp                                ; $5907: $08 $04 $12
    nop                                           ; $590a: $00
    ld l, $30                                     ; $590b: $2e $30
    rst $38                                       ; $590d: $ff
    ld de, $3020                                  ; $590e: $11 $20 $30
    ld e, b                                       ; $5911: $58
    ld b, e                                       ; $5912: $43
    db $10                                        ; $5913: $10
    ld c, b                                       ; $5914: $48
    nop                                           ; $5915: $00

jr_0a8_5916:
    ld a, $08                                     ; $5916: $3e $08

jr_0a8_5918:
    ld b, c                                       ; $5918: $41
    ld [$1008], sp                                ; $5919: $08 $08 $10
    dec sp                                        ; $591c: $3b
    jr @+$01                                      ; $591d: $18 $ff

    ld [de], a                                    ; $591f: $12
    jr nz, jr_0a8_5982                            ; $5920: $20 $60

    ld c, b                                       ; $5922: $48
    db $10                                        ; $5923: $10
    ld l, b                                       ; $5924: $68
    ld [hl], b                                    ; $5925: $70
    nop                                           ; $5926: $00
    jr nz, @+$5a                                  ; $5927: $20 $58

jr_0a8_5929:
    add b                                         ; $5929: $80
    ld c, b                                       ; $592a: $48
    ld a, c                                       ; $592b: $79
    ld b, b                                       ; $592c: $40
    inc b                                         ; $592d: $04
    jr @+$01                                      ; $592e: $18 $ff

    sub b                                         ; $5930: $90
    jr jr_0a8_58d7                                ; $5931: $18 $a4

    ld [$0867], sp                                ; $5933: $08 $67 $08
    xor d                                         ; $5936: $aa
    nop                                           ; $5937: $00
    inc b                                         ; $5938: $04
    db $10                                        ; $5939: $10
    ld b, [hl]                                    ; $593a: $46
    jr jr_0a8_5941                                ; $593b: $18 $04

    jr c, jr_0a8_5956                             ; $593d: $38 $17

    db $10                                        ; $593f: $10
    rst $38                                       ; $5940: $ff

jr_0a8_5941:
    sbc h                                         ; $5941: $9c

jr_0a8_5942:
    jr nz, jr_0a8_5948                            ; $5942: $20 $04

    jr z, jr_0a8_5973                             ; $5944: $28 $2d

    jr nz, jr_0a8_5929                            ; $5946: $20 $e1

jr_0a8_5948:
    jr @+$06                                      ; $5948: $18 $04

    ld b, b                                       ; $594a: $40
    inc bc                                        ; $594b: $03
    adc b                                         ; $594c: $88

jr_0a8_594d:
    ld l, $30                                     ; $594d: $2e $30
    ld [hl-], a                                   ; $594f: $32
    jr c, @+$01                                   ; $5950: $38 $ff

    ld c, h                                       ; $5952: $4c
    ld h, b                                       ; $5953: $60
    ld b, h                                       ; $5954: $44
    ld l, b                                       ; $5955: $68

jr_0a8_5956:
    ld l, b                                       ; $5956: $68
    jr jr_0a8_59a9                                ; $5957: $18 $50

    add hl, bc                                    ; $5959: $09
    sbc l                                         ; $595a: $9d
    jr jr_0a8_598e                                ; $595b: $18 $31

    jr jr_0a8_597c                                ; $595d: $18 $1d

    add hl, bc                                    ; $595f: $09
    adc a                                         ; $5960: $8f

jr_0a8_5961:
    jr nz, jr_0a8_59e2                            ; $5961: $20 $7f

    add hl, bc                                    ; $5963: $09

jr_0a8_5964:
    inc b                                         ; $5964: $04
    ld c, b                                       ; $5965: $48
    adc e                                         ; $5966: $8b
    ld b, b                                       ; $5967: $40
    and b                                         ; $5968: $a0
    nop                                           ; $5969: $00
    inc b                                         ; $596a: $04
    db $10                                        ; $596b: $10
    push de                                       ; $596c: $d5
    db $10                                        ; $596d: $10
    dec c                                         ; $596e: $0d
    jr c, jr_0a8_5929                             ; $596f: $38 $b8

    db $10                                        ; $5971: $10
    rst $38                                       ; $5972: $ff

jr_0a8_5973:
    ld c, [hl]                                    ; $5973: $4e
    add hl, de                                    ; $5974: $19
    db $e3                                        ; $5975: $e3
    ld [$70ac], sp                                ; $5976: $08 $ac $70
    ld a, [c]                                     ; $5979: $f2
    ld e, b                                       ; $597a: $58

jr_0a8_597b:
    ret z                                         ; $597b: $c8

jr_0a8_597c:
    add b                                         ; $597c: $80
    rst $20                                       ; $597d: $e7
    ld l, b                                       ; $597e: $68
    ld h, h                                       ; $597f: $64
    jr nc, jr_0a8_59ea                            ; $5980: $30 $68

jr_0a8_5982:
    jr z, jr_0a8_597b                             ; $5982: $28 $f7

    ldh a, [$90]                                  ; $5984: $f0 $90
    ld c, c                                       ; $5986: $49
    ld d, c                                       ; $5987: $51
    ld b, b                                       ; $5988: $40
    ld c, c                                       ; $5989: $49
    inc [hl]                                      ; $598a: $34
    add c                                         ; $598b: $81
    inc b                                         ; $598c: $04
    ld b, [hl]                                    ; $598d: $46

jr_0a8_598e:
    ld l, b                                       ; $598e: $68
    rla                                           ; $598f: $17
    jr c, jr_0a8_594d                             ; $5990: $38 $bb

    ld e, c                                       ; $5992: $59
    rst $38                                       ; $5993: $ff
    ld e, b                                       ; $5994: $58
    ld [de], a                                    ; $5995: $12
    ld b, h                                       ; $5996: $44
    ld [bc], a                                    ; $5997: $02
    inc b                                         ; $5998: $04
    jr c, jr_0a8_597b                             ; $5999: $38 $e0

    jr z, jr_0a8_59e4                             ; $599b: $28 $47

    ld d, b                                       ; $599d: $50
    ret nc                                        ; $599e: $d0

    ld d, c                                       ; $599f: $51
    ld e, l                                       ; $59a0: $5d
    nop                                           ; $59a1: $00
    xor e                                         ; $59a2: $ab
    add hl, sp                                    ; $59a3: $39
    rst $38                                       ; $59a4: $ff
    ld [hl], b                                    ; $59a5: $70
    ld b, d                                       ; $59a6: $42
    jr jr_0a8_59c1                                ; $59a7: $18 $18

jr_0a8_59a9:
    dec de                                        ; $59a9: $1b
    ld d, d                                       ; $59aa: $52
    ld l, $72                                     ; $59ab: $2e $72
    or h                                          ; $59ad: $b4
    ld a, [de]                                    ; $59ae: $1a
    adc [hl]                                      ; $59af: $8e
    ld [hl+], a                                   ; $59b0: $22
    ld d, e                                       ; $59b1: $53
    ld [hl+], a                                   ; $59b2: $22
    xor l                                         ; $59b3: $ad
    ld [hl], b                                    ; $59b4: $70
    rst $38                                       ; $59b5: $ff
    ld b, b                                       ; $59b6: $40
    ld e, c                                       ; $59b7: $59
    ld b, c                                       ; $59b8: $41
    ld l, d                                       ; $59b9: $6a
    jp nc, Jump_0a8_5870                          ; $59ba: $d2 $70 $58

    ld [hl], c                                    ; $59bd: $71
    or e                                          ; $59be: $b3
    jr nc, @-$2e                                  ; $59bf: $30 $d0

jr_0a8_59c1:
    jr jr_0a8_59d4                                ; $59c1: $18 $11

    ld h, c                                       ; $59c3: $61
    ld c, l                                       ; $59c4: $4d
    ld h, c                                       ; $59c5: $61
    rst $38                                       ; $59c6: $ff
    ld h, d                                       ; $59c7: $62
    dec bc                                        ; $59c8: $0b
    ld d, [hl]                                    ; $59c9: $56
    dec bc                                        ; $59ca: $0b
    ld h, c                                       ; $59cb: $61
    add hl, hl                                    ; $59cc: $29
    add sp, $22                                   ; $59cd: $e8 $22
    add b                                         ; $59cf: $80
    ld [hl-], a                                   ; $59d0: $32
    ld [$902b], sp                                ; $59d1: $08 $2b $90

jr_0a8_59d4:
    ld b, b                                       ; $59d4: $40
    and e                                         ; $59d5: $a3
    ld d, d                                       ; $59d6: $52
    rst $38                                       ; $59d7: $ff
    inc a                                         ; $59d8: $3c
    add hl, hl                                    ; $59d9: $29
    jp hl                                         ; $59da: $e9


    ld a, [hl+]                                   ; $59db: $2a
    or l                                          ; $59dc: $b5
    dec hl                                        ; $59dd: $2b
    ld [$a830], sp                                ; $59de: $08 $30 $a8
    dec hl                                        ; $59e1: $2b

jr_0a8_59e2:
    ld h, b                                       ; $59e2: $60
    ld a, [hl+]                                   ; $59e3: $2a

jr_0a8_59e4:
    db $e3                                        ; $59e4: $e3
    ld h, d                                       ; $59e5: $62
    xor e                                         ; $59e6: $ab
    add hl, de                                    ; $59e7: $19
    rst $38                                       ; $59e8: $ff
    sbc d                                         ; $59e9: $9a

jr_0a8_59ea:
    add hl, de                                    ; $59ea: $19
    cp c                                          ; $59eb: $b9
    add hl, hl                                    ; $59ec: $29
    and [hl]                                      ; $59ed: $a6
    dec de                                        ; $59ee: $1b
    cp c                                          ; $59ef: $b9
    dec de                                        ; $59f0: $1b
    or a                                          ; $59f1: $b7
    ld a, [bc]                                    ; $59f2: $0a
    and b                                         ; $59f3: $a0
    ld d, c                                       ; $59f4: $51
    call c, $dd61                                 ; $59f5: $dc $61 $dd
    dec hl                                        ; $59f8: $2b
    rst $38                                       ; $59f9: $ff
    ld a, [hl+]                                   ; $59fa: $2a
    add e                                         ; $59fb: $83
    ld h, h                                       ; $59fc: $64
    inc hl                                        ; $59fd: $23
    sub [hl]                                      ; $59fe: $96
    ld a, [hl-]                                   ; $59ff: $3a
    rrca                                          ; $5a00: $0f
    ld sp, $c223                                  ; $5a01: $31 $23 $c2
    ld h, b                                       ; $5a04: $60
    ld c, d                                       ; $5a05: $4a
    add hl, de                                    ; $5a06: $19
    add hl, bc                                    ; $5a07: $09
    inc a                                         ; $5a08: $3c
    ld c, b                                       ; $5a09: $48
    rst $38                                       ; $5a0a: $ff
    inc l                                         ; $5a0b: $2c
    dec de                                        ; $5a0c: $1b
    ld b, c                                       ; $5a0d: $41
    inc d                                         ; $5a0e: $14
    ld d, a                                       ; $5a0f: $57
    inc l                                         ; $5a10: $2c
    cp h                                          ; $5a11: $bc
    jp nz, $2a85                                  ; $5a12: $c2 $85 $2a

    add sp, $33                                   ; $5a15: $e8 $33
    ld d, b                                       ; $5a17: $50
    inc e                                         ; $5a18: $1c
    ld [hl], b                                    ; $5a19: $70
    inc hl                                        ; $5a1a: $23
    rst $38                                       ; $5a1b: $ff
    jr jr_0a8_5a82                                ; $5a1c: $18 $64

    rst $30                                       ; $5a1e: $f7
    ld d, e                                       ; $5a1f: $53
    sub h                                         ; $5a20: $94
    ld c, d                                       ; $5a21: $4a
    sub b                                         ; $5a22: $90
    ld c, d                                       ; $5a23: $4a
    ld b, b                                       ; $5a24: $40
    jr z, jr_0a8_5a7b                             ; $5a25: $28 $54

    ld c, h                                       ; $5a27: $4c
    call $c024                                    ; $5a28: $cd $24 $c0
    ld b, d                                       ; $5a2b: $42
    rst $38                                       ; $5a2c: $ff
    dec bc                                        ; $5a2d: $0b
    ld l, e                                       ; $5a2e: $6b
    inc a                                         ; $5a2f: $3c
    ld l, e                                       ; $5a30: $6b
    ld l, h                                       ; $5a31: $6c
    jp c, Jump_000_130c                           ; $5a32: $da $0c $13

    jr jr_0a8_5a44                                ; $5a35: $18 $0d

    jr nc, jr_0a8_5a7a                            ; $5a37: $30 $41

    rst $08                                       ; $5a39: $cf
    ld b, h                                       ; $5a3a: $44
    ld a, a                                       ; $5a3b: $7f
    jp nz, $fcff                                  ; $5a3c: $c2 $ff $fc

    add e                                         ; $5a3f: $83
    ldh a, [$61]                                  ; $5a40: $f0 $61
    ld l, d                                       ; $5a42: $6a
    ld a, [de]                                    ; $5a43: $1a

jr_0a8_5a44:
    ld [hl], b                                    ; $5a44: $70
    dec sp                                        ; $5a45: $3b
    ld h, e                                       ; $5a46: $63
    dec l                                         ; $5a47: $2d
    or b                                          ; $5a48: $b0
    adc h                                         ; $5a49: $8c
    ld l, b                                       ; $5a4a: $68
    inc l                                         ; $5a4b: $2c
    and b                                         ; $5a4c: $a0
    ld c, h                                       ; $5a4d: $4c
    rst $38                                       ; $5a4e: $ff
    sub [hl]                                      ; $5a4f: $96
    inc e                                         ; $5a50: $1c
    dec hl                                        ; $5a51: $2b
    ld d, d                                       ; $5a52: $52
    inc l                                         ; $5a53: $2c
    ld d, d                                       ; $5a54: $52
    ld e, l                                       ; $5a55: $5d
    db $10                                        ; $5a56: $10
    ld h, h                                       ; $5a57: $64
    ld b, h                                       ; $5a58: $44
    ld de, $b82d                                  ; $5a59: $11 $2d $b8
    ld hl, $53e8                                  ; $5a5c: $21 $e8 $53
    rst $38                                       ; $5a5f: $ff
    ret z                                         ; $5a60: $c8

    add hl, hl                                    ; $5a61: $29
    sub l                                         ; $5a62: $95
    ld [hl], h                                    ; $5a63: $74
    db $10                                        ; $5a64: $10
    ld l, l                                       ; $5a65: $6d
    nop                                           ; $5a66: $00
    inc a                                         ; $5a67: $3c
    jr z, jr_0a8_5a7d                             ; $5a68: $28 $13

    db $fc                                        ; $5a6a: $fc
    ld b, c                                       ; $5a6b: $41
    sbc h                                         ; $5a6c: $9c
    ld [de], a                                    ; $5a6d: $12
    db $10                                        ; $5a6e: $10
    inc d                                         ; $5a6f: $14
    rst $38                                       ; $5a70: $ff
    sub c                                         ; $5a71: $91
    ld h, d                                       ; $5a72: $62
    xor l                                         ; $5a73: $ad
    ld c, h                                       ; $5a74: $4c
    db $10                                        ; $5a75: $10
    ld c, e                                       ; $5a76: $4b
    ret c                                         ; $5a77: $d8

    ld h, $84                                     ; $5a78: $26 $84

jr_0a8_5a7a:
    ld c, b                                       ; $5a7a: $48

jr_0a8_5a7b:
    ld e, b                                       ; $5a7b: $58

jr_0a8_5a7c:
    ld e, d                                       ; $5a7c: $5a

jr_0a8_5a7d:
    db $fd                                        ; $5a7d: $fd
    ld b, $68                                     ; $5a7e: $06 $68
    ld c, e                                       ; $5a80: $4b
    add b                                         ; $5a81: $80

jr_0a8_5a82:
    inc c                                         ; $5a82: $0c
    rrca                                          ; $5a83: $0f
    cpl                                           ; $5a84: $2f
    nop                                           ; $5a85: $00
    ld b, a                                       ; $5a86: $47
    inc b                                         ; $5a87: $04
    ld bc, $0028                                  ; $5a88: $01 $28 $00
    nop                                           ; $5a8b: $00
    nop                                           ; $5a8c: $00
    ld b, $08                                     ; $5a8d: $06 $08
    rrca                                          ; $5a8f: $0f

jr_0a8_5a90:
    ld b, b                                       ; $5a90: $40
    inc bc                                        ; $5a91: $03
    db $10                                        ; $5a92: $10
    rst $38                                       ; $5a93: $ff
    jr jr_0a8_5aa6                                ; $5a94: $18 $10

    rlca                                          ; $5a96: $07
    jr nc, jr_0a8_5abd                            ; $5a97: $30 $24

    db $10                                        ; $5a99: $10
    jr nz, jr_0a8_5adc                            ; $5a9a: $20 $40

    ld a, $30                                     ; $5a9c: $3e $30
    jr nz, jr_0a8_5ac8                            ; $5a9e: $20 $28

    add hl, bc                                    ; $5aa0: $09
    jr c, jr_0a8_5ad4                             ; $5aa1: $38 $31

    jr z, @+$01                                   ; $5aa3: $28 $ff

    inc b                                         ; $5aa5: $04

jr_0a8_5aa6:
    ld a, b                                       ; $5aa6: $78
    inc hl                                        ; $5aa7: $23
    ret z                                         ; $5aa8: $c8

    ld l, e                                       ; $5aa9: $6b
    ld [$3885], sp                                ; $5aaa: $08 $85 $38
    ld [$a890], sp                                ; $5aad: $08 $90 $a8
    sbc b                                         ; $5ab0: $98
    xor h                                         ; $5ab1: $ac
    jr z, jr_0a8_5af4                             ; $5ab2: $28 $40

    jr z, @+$01                                   ; $5ab4: $28 $ff

    call $d838                                    ; $5ab6: $cd $38 $d8
    jr nc, @-$1e                                  ; $5ab9: $30 $e0

    db $10                                        ; $5abb: $10
    pop hl                                        ; $5abc: $e1

jr_0a8_5abd:
    jr z, jr_0a8_5a7a                             ; $5abd: $28 $bb

    ld c, b                                       ; $5abf: $48
    inc de                                        ; $5ac0: $13
    ld c, b                                       ; $5ac1: $48
    jr nz, jr_0a8_5b0c                            ; $5ac2: $20 $48

    rst $28                                       ; $5ac4: $ef
    jr nz, @+$01                                  ; $5ac5: $20 $ff

    inc sp                                        ; $5ac7: $33

jr_0a8_5ac8:
    jr c, jr_0a8_5adf                             ; $5ac8: $38 $15

    ld sp, $38da                                  ; $5aca: $31 $da $38
    inc l                                         ; $5acd: $2c
    jr nc, @+$23                                  ; $5ace: $30 $21

    jr nz, jr_0a8_5a7c                            ; $5ad0: $20 $aa

    ld e, b                                       ; $5ad2: $58
    ld l, a                                       ; $5ad3: $6f

jr_0a8_5ad4:
    ld d, b                                       ; $5ad4: $50
    ld c, [hl]                                    ; $5ad5: $4e
    ld de, $48fe                                  ; $5ad6: $11 $fe $48
    jr z, jr_0a8_5b43                             ; $5ad9: $28 $68

    ld [hl], c                                    ; $5adb: $71

jr_0a8_5adc:
    db $10                                        ; $5adc: $10
    ld a, b                                       ; $5add: $78
    add e                                         ; $5ade: $83

jr_0a8_5adf:
    jr nz, jr_0a8_5b02                            ; $5adf: $20 $21

    ld e, b                                       ; $5ae1: $58
    ld l, b                                       ; $5ae2: $68
    ld sp, $21b9                                  ; $5ae3: $31 $b9 $21
    dec e                                         ; $5ae6: $1d
    nop                                           ; $5ae7: $00
    ld b, a                                       ; $5ae8: $47
    inc b                                         ; $5ae9: $04
    ld bc, $0088                                  ; $5aea: $01 $88 $00

jr_0a8_5aed:
    nop                                           ; $5aed: $00
    nop                                           ; $5aee: $00
    inc b                                         ; $5aef: $04
    jr nc, jr_0a8_5b01                            ; $5af0: $30 $0f

    jr jr_0a8_5af7                                ; $5af2: $18 $03

jr_0a8_5af4:
    jr nc, @+$01                                  ; $5af4: $30 $ff

    db $10                                        ; $5af6: $10

jr_0a8_5af7:
    jr c, jr_0a8_5b20                             ; $5af7: $38 $27

    ld [$202f], sp                                ; $5af9: $08 $2f $20
    inc b                                         ; $5afc: $04
    ld b, b                                       ; $5afd: $40
    inc a                                         ; $5afe: $3c
    ld d, b                                       ; $5aff: $50
    add hl, sp                                    ; $5b00: $39

jr_0a8_5b01:
    ld c, b                                       ; $5b01: $48

jr_0a8_5b02:
    ld d, e                                       ; $5b02: $53
    db $10                                        ; $5b03: $10
    ld c, h                                       ; $5b04: $4c
    jr c, @+$01                                   ; $5b05: $38 $ff

    cpl                                           ; $5b07: $2f
    ld b, b                                       ; $5b08: $40
    ld h, $60                                     ; $5b09: $26 $60
    ld d, b                                       ; $5b0b: $50

jr_0a8_5b0c:
    ld e, b                                       ; $5b0c: $58
    ld l, b                                       ; $5b0d: $68
    jr z, jr_0a8_5a90                             ; $5b0e: $28 $80

    ld c, b                                       ; $5b10: $48
    sub h                                         ; $5b11: $94
    ld d, b                                       ; $5b12: $50
    inc l                                         ; $5b13: $2c
    ld d, b                                       ; $5b14: $50
    ld a, e                                       ; $5b15: $7b
    ld d, b                                       ; $5b16: $50
    ld hl, sp-$70                                 ; $5b17: $f8 $90
    jr c, @-$5b                                   ; $5b19: $38 $a3

    ld c, b                                       ; $5b1b: $48
    call c, $cce8                                 ; $5b1c: $dc $e8 $cc
    ld c, b                                       ; $5b1f: $48

jr_0a8_5b20:
    dec e                                         ; $5b20: $1d
    ld bc, $0066                                  ; $5b21: $01 $66 $00
    ld d, c                                       ; $5b24: $51
    inc b                                         ; $5b25: $04
    ld bc, $00a0                                  ; $5b26: $01 $a0 $00
    ld bc, $0908                                  ; $5b29: $01 $08 $09
    add hl, bc                                    ; $5b2c: $09
    add hl, bc                                    ; $5b2d: $09
    db $10                                        ; $5b2e: $10
    ld c, b                                       ; $5b2f: $48
    rst $38                                       ; $5b30: $ff
    rrca                                          ; $5b31: $0f

jr_0a8_5b32:
    nop                                           ; $5b32: $00
    db $10                                        ; $5b33: $10
    ld e, b                                       ; $5b34: $58
    dec h                                         ; $5b35: $25
    nop                                           ; $5b36: $00

jr_0a8_5b37:
    jr nc, jr_0a8_5b89                            ; $5b37: $30 $50

    ld [hl-], a                                   ; $5b39: $32
    nop                                           ; $5b3a: $00

jr_0a8_5b3b:
    jr nc, jr_0a8_5b9d                            ; $5b3b: $30 $60

    dec b                                         ; $5b3d: $05
    jr jr_0a8_5b44                                ; $5b3e: $18 $04

    ld b, b                                       ; $5b40: $40
    rst $38                                       ; $5b41: $ff
    inc bc                                        ; $5b42: $03

jr_0a8_5b43:
    ld c, b                                       ; $5b43: $48

jr_0a8_5b44:
    ld d, h                                       ; $5b44: $54
    jr z, jr_0a8_5b6a                             ; $5b45: $28 $23

    jr z, jr_0a8_5bad                             ; $5b47: $28 $64

    jr z, @+$4a                                   ; $5b49: $28 $48

    jr jr_0a8_5b51                                ; $5b4b: $18 $04

    db $10                                        ; $5b4d: $10
    ld h, h                                       ; $5b4e: $64
    db $10                                        ; $5b4f: $10
    ld b, a                                       ; $5b50: $47

jr_0a8_5b51:
    nop                                           ; $5b51: $00
    ld a, a                                       ; $5b52: $7f

jr_0a8_5b53:
    inc b                                         ; $5b53: $04
    inc b                                         ; $5b54: $04
    ld [$086f], sp                                ; $5b55: $08 $6f $08
    ld h, h                                       ; $5b58: $64
    db $10                                        ; $5b59: $10
    sbc c                                         ; $5b5a: $99
    nop                                           ; $5b5b: $00
    inc b                                         ; $5b5c: $04
    jr jr_0a8_5b9f                                ; $5b5d: $18 $40

    jr nz, jr_0a8_5aed                            ; $5b5f: $20 $8c

    db $10                                        ; $5b61: $10
    cp a                                          ; $5b62: $bf
    or h                                          ; $5b63: $b4
    ld [$2804], sp                                ; $5b64: $08 $04 $28
    nop                                           ; $5b67: $00
    ld [hl], b                                    ; $5b68: $70
    ld b, b                                       ; $5b69: $40

jr_0a8_5b6a:
    add h                                         ; $5b6a: $84
    jr nz, jr_0a8_5b80                            ; $5b6b: $20 $13

    ld d, b                                       ; $5b6d: $50
    call c, Call_000_0408                         ; $5b6e: $dc $08 $04
    ld b, b                                       ; $5b71: $40
    rst $38                                       ; $5b72: $ff
    rrca                                          ; $5b73: $0f
    ld h, b                                       ; $5b74: $60
    jr nz, jr_0a8_5bcf                            ; $5b75: $20 $58

    ldh [rLCDC], a                                ; $5b77: $e0 $40
    inc d                                         ; $5b79: $14
    add hl, hl                                    ; $5b7a: $29
    rra                                           ; $5b7b: $1f
    ld h, b                                       ; $5b7c: $60
    db $d3                                        ; $5b7d: $d3
    ld l, b                                       ; $5b7e: $68
    di                                            ; $5b7f: $f3

jr_0a8_5b80:
    jr nz, jr_0a8_5b32                            ; $5b80: $20 $b0

    jr @+$01                                      ; $5b82: $18 $ff

    ld [c], a                                     ; $5b84: $e2
    jr z, jr_0a8_5b37                             ; $5b85: $28 $b0

    jr z, jr_0a8_5b53                             ; $5b87: $28 $ca

jr_0a8_5b89:
    db $10                                        ; $5b89: $10
    xor l                                         ; $5b8a: $ad
    jr nz, @+$06                                  ; $5b8b: $20 $04

    jr nc, jr_0a8_5bf3                            ; $5b8d: $30 $64

    ld [hl], b                                    ; $5b8f: $70
    jr nc, @+$3a                                  ; $5b90: $30 $38

    add sp, $08                                   ; $5b92: $e8 $08
    rst $38                                       ; $5b94: $ff
    ld d, b                                       ; $5b95: $50

jr_0a8_5b96:
    ld h, b                                       ; $5b96: $60
    ld [de], a                                    ; $5b97: $12
    ld de, $383d                                  ; $5b98: $11 $3d $38
    ld h, b                                       ; $5b9b: $60
    add hl, bc                                    ; $5b9c: $09

jr_0a8_5b9d:
    rrca                                          ; $5b9d: $0f
    ld d, b                                       ; $5b9e: $50

jr_0a8_5b9f:
    scf                                           ; $5b9f: $37
    add hl, bc                                    ; $5ba0: $09
    ld b, b                                       ; $5ba1: $40
    ld l, b                                       ; $5ba2: $68
    inc a                                         ; $5ba3: $3c
    jr nc, @+$01                                  ; $5ba4: $30 $ff

    ld c, b                                       ; $5ba6: $48
    add hl, bc                                    ; $5ba7: $09
    dec l                                         ; $5ba8: $2d
    ld d, b                                       ; $5ba9: $50
    add l                                         ; $5baa: $85
    ld b, b                                       ; $5bab: $40
    dec a                                         ; $5bac: $3d

jr_0a8_5bad:
    ld de, $58ef                                  ; $5bad: $11 $ef $58
    ld b, $1a                                     ; $5bb0: $06 $1a
    ld h, a                                       ; $5bb2: $67
    jr nz, jr_0a8_5b3b                            ; $5bb3: $20 $86

    ld de, $78ff                                  ; $5bb5: $11 $ff $78
    add hl, bc                                    ; $5bb8: $09
    inc c                                         ; $5bb9: $0c
    ld b, d                                       ; $5bba: $42
    db $10                                        ; $5bbb: $10
    ld [de], a                                    ; $5bbc: $12
    ret c                                         ; $5bbd: $d8

    jr nz, jr_0a8_5b96                            ; $5bbe: $20 $d6

    ld b, c                                       ; $5bc0: $41
    ld hl, sp+$10                                 ; $5bc1: $f8 $10
    jr nz, jr_0a8_5bfd                            ; $5bc3: $20 $38

    cp b                                          ; $5bc5: $b8
    add hl, de                                    ; $5bc6: $19
    rst $38                                       ; $5bc7: $ff
    add b                                         ; $5bc8: $80
    jr nc, jr_0a8_5c34                            ; $5bc9: $30 $69

    jr nc, jr_0a8_5c3e                            ; $5bcb: $30 $71

    jr @+$5a                                      ; $5bcd: $18 $58

jr_0a8_5bcf:
    jr z, jr_0a8_5bd9                             ; $5bcf: $28 $08

    sbc b                                         ; $5bd1: $98
    ld e, d                                       ; $5bd2: $5a
    ld h, b                                       ; $5bd3: $60
    ld l, [hl]                                    ; $5bd4: $6e
    ld [hl], c                                    ; $5bd5: $71
    inc e                                         ; $5bd6: $1c
    ld l, c                                       ; $5bd7: $69
    rst $38                                       ; $5bd8: $ff

jr_0a8_5bd9:
    inc h                                         ; $5bd9: $24
    ld [hl+], a                                   ; $5bda: $22
    db $10                                        ; $5bdb: $10
    ld d, c                                       ; $5bdc: $51
    inc b                                         ; $5bdd: $04
    sub b                                         ; $5bde: $90

jr_0a8_5bdf:
    ld b, b                                       ; $5bdf: $40
    ld c, c                                       ; $5be0: $49
    and h                                         ; $5be1: $a4
    ld e, d                                       ; $5be2: $5a
    ld [hl], h                                    ; $5be3: $74
    ld hl, sp-$6c                                 ; $5be4: $f8 $94
    ld l, b                                       ; $5be6: $68
    ld h, b                                       ; $5be7: $60
    ld e, d                                       ; $5be8: $5a
    db $fc                                        ; $5be9: $fc
    call Call_0a8_5c42                            ; $5bea: $cd $42 $5c
    dec bc                                        ; $5bed: $0b
    db $ec                                        ; $5bee: $ec
    ld c, d                                       ; $5bef: $4a
    db $10                                        ; $5bf0: $10
    jr nz, jr_0a8_5bdf                            ; $5bf1: $20 $ec

jr_0a8_5bf3:
    ld [hl-], a                                   ; $5bf3: $32
    ld a, h                                       ; $5bf4: $7c
    dec bc                                        ; $5bf5: $0b
    rra                                           ; $5bf6: $1f
    nop                                           ; $5bf7: $00
    ld b, a                                       ; $5bf8: $47
    inc b                                         ; $5bf9: $04
    ld bc, $0088                                  ; $5bfa: $01 $88 $00

jr_0a8_5bfd:
    nop                                           ; $5bfd: $00
    nop                                           ; $5bfe: $00
    inc b                                         ; $5bff: $04
    jr nc, jr_0a8_5c19                            ; $5c00: $30 $17

    ld e, b                                       ; $5c02: $58
    db $10                                        ; $5c03: $10
    jr @+$01                                      ; $5c04: $18 $ff

    jr nz, jr_0a8_5c28                            ; $5c06: $20 $20

    db $10                                        ; $5c08: $10
    jr z, jr_0a8_5c16                             ; $5c09: $28 $0b

    jr nz, @+$12                                  ; $5c0b: $20 $10

    ld c, b                                       ; $5c0d: $48
    ccf                                           ; $5c0e: $3f
    jr c, @+$4e                                   ; $5c0f: $38 $4c

    ld c, b                                       ; $5c11: $48
    add hl, hl                                    ; $5c12: $29
    ld c, b                                       ; $5c13: $48
    inc c                                         ; $5c14: $0c
    ld a, b                                       ; $5c15: $78

jr_0a8_5c16:
    rst $38                                       ; $5c16: $ff
    inc hl                                        ; $5c17: $23
    ld d, b                                       ; $5c18: $50

jr_0a8_5c19:
    ld [hl], h                                    ; $5c19: $74
    ld c, b                                       ; $5c1a: $48
    ld a, b                                       ; $5c1b: $78
    jr jr_0a8_5c6b                                ; $5c1c: $18 $4d

    jr nz, jr_0a8_5c6f                            ; $5c1e: $20 $4f

    ld e, b                                       ; $5c20: $58
    ld e, e                                       ; $5c21: $5b
    ld [hl], b                                    ; $5c22: $70
    jr c, @-$3e                                   ; $5c23: $38 $c0

    ld h, l                                       ; $5c25: $65

jr_0a8_5c26:
    jr c, jr_0a8_5c26                             ; $5c26: $38 $fe

jr_0a8_5c28:
    call nc, $be60                                ; $5c28: $d4 $60 $be
    ld c, b                                       ; $5c2b: $48
    ld l, d                                       ; $5c2c: $6a
    jr z, @-$7e                                   ; $5c2d: $28 $80

    sbc b                                         ; $5c2f: $98
    db $ec                                        ; $5c30: $ec
    adc b                                         ; $5c31: $88
    inc [hl]                                      ; $5c32: $34
    ld e, b                                       ; $5c33: $58

jr_0a8_5c34:
    dec sp                                        ; $5c34: $3b
    ld l, c                                       ; $5c35: $69
    cpl                                           ; $5c36: $2f
    nop                                           ; $5c37: $00
    ld b, a                                       ; $5c38: $47
    inc b                                         ; $5c39: $04
    ld bc, $00c8                                  ; $5c3a: $01 $c8 $00
    nop                                           ; $5c3d: $00

jr_0a8_5c3e:
    nop                                           ; $5c3e: $00
    rrca                                          ; $5c3f: $0f
    ld h, b                                       ; $5c40: $60
    db $10                                        ; $5c41: $10

Call_0a8_5c42:
    ld c, b                                       ; $5c42: $48
    rrca                                          ; $5c43: $0f
    ld [$20c1], sp                                ; $5c44: $08 $c1 $20
    jr @+$0c                                      ; $5c47: $18 $0a

    db $10                                        ; $5c49: $10
    add hl, bc                                    ; $5c4a: $09
    nop                                           ; $5c4b: $00
    add hl, bc                                    ; $5c4c: $09
    add hl, bc                                    ; $5c4d: $09
    add hl, bc                                    ; $5c4e: $09
    jr nc, jr_0a8_5c61                            ; $5c4f: $30 $10

    sbc a                                         ; $5c51: $9f
    ld h, $58                                     ; $5c52: $26 $58
    add hl, bc                                    ; $5c54: $09
    add hl, bc                                    ; $5c55: $09
    inc b                                         ; $5c56: $04
    ld c, b                                       ; $5c57: $48
    ld [bc], a                                    ; $5c58: $02
    add b                                         ; $5c59: $80
    jr c, jr_0a8_5c5c                             ; $5c5a: $38 $00

jr_0a8_5c5c:
    ld a, $00                                     ; $5c5c: $3e $00
    dec sp                                        ; $5c5e: $3b
    nop                                           ; $5c5f: $00
    rst $38                                       ; $5c60: $ff

jr_0a8_5c61:
    rlca                                          ; $5c61: $07
    nop                                           ; $5c62: $00
    ld [hl], a                                    ; $5c63: $77
    jr nz, jr_0a8_5ce2                            ; $5c64: $20 $7c

    ld [$788e], sp                                ; $5c66: $08 $8e $78
    ld d, $10                                     ; $5c69: $16 $10

jr_0a8_5c6b:
    ld d, b                                       ; $5c6b: $50
    jr nz, jr_0a8_5cdf                            ; $5c6c: $20 $71

    db $10                                        ; $5c6e: $10

jr_0a8_5c6f:
    scf                                           ; $5c6f: $37
    ld [$48ff], sp                                ; $5c70: $08 $ff $48
    ld d, b                                       ; $5c73: $50
    add h                                         ; $5c74: $84
    nop                                           ; $5c75: $00
    or d                                          ; $5c76: $b2
    nop                                           ; $5c77: $00
    add [hl]                                      ; $5c78: $86
    ld [$40ba], sp                                ; $5c79: $08 $ba $40
    ld c, [hl]                                    ; $5c7c: $4e
    ld d, b                                       ; $5c7d: $50
    jr c, jr_0a8_5ca0                             ; $5c7e: $38 $20

    ld h, d                                       ; $5c80: $62

jr_0a8_5c81:
    jr nc, jr_0a8_5c81                            ; $5c81: $30 $fe

    add h                                         ; $5c83: $84
    jr z, @-$3e                                   ; $5c84: $28 $c0

    ld [$00ac], sp                                ; $5c86: $08 $ac $00
    call nz, $e810                                ; $5c89: $c4 $10 $e8
    ld d, b                                       ; $5c8c: $50
    jr jr_0a8_5caf                                ; $5c8d: $18 $20

    inc c                                         ; $5c8f: $0c
    add hl, hl                                    ; $5c90: $29
    ld sp, $5800                                  ; $5c91: $31 $00 $58
    inc b                                         ; $5c94: $04
    ld bc, $00c0                                  ; $5c95: $01 $c0 $00
    ld bc, $0500                                  ; $5c98: $01 $00 $05
    ld [$0004], sp                                ; $5c9b: $08 $04 $00
    add hl, bc                                    ; $5c9e: $09
    cp b                                          ; $5c9f: $b8

jr_0a8_5ca0:
    inc b                                         ; $5ca0: $04
    stop                                          ; $5ca1: $10 $00
    ld [$2008], sp                                ; $5ca3: $08 $08 $20
    ld c, b                                       ; $5ca6: $48
    inc h                                         ; $5ca7: $24
    ld [$0909], sp                                ; $5ca8: $08 $09 $09

jr_0a8_5cab:
    add hl, bc                                    ; $5cab: $09
    rst $38                                       ; $5cac: $ff
    inc b                                         ; $5cad: $04
    ld c, b                                       ; $5cae: $48

jr_0a8_5caf:
    inc bc                                        ; $5caf: $03
    cp b                                          ; $5cb0: $b8
    ld a, $00                                     ; $5cb1: $3e $00
    ld b, a                                       ; $5cb3: $47

jr_0a8_5cb4:
    ld [$2838], sp                                ; $5cb4: $08 $38 $28
    ld l, d                                       ; $5cb7: $6a
    ld h, b                                       ; $5cb8: $60
    inc b                                         ; $5cb9: $04
    jr z, jr_0a8_5ce2                             ; $5cba: $28 $26

    db $10                                        ; $5cbc: $10
    rst $08                                       ; $5cbd: $cf
    inc b                                         ; $5cbe: $04
    jr nc, jr_0a8_5d13                            ; $5cbf: $30 $52

    jr z, jr_0a8_5cc7                             ; $5cc1: $28 $04

    inc b                                         ; $5cc3: $04
    inc b                                         ; $5cc4: $04
    jr c, jr_0a8_5cd5                             ; $5cc5: $38 $0e

jr_0a8_5cc7:
    ld [$38b6], sp                                ; $5cc7: $08 $b6 $38
    ld e, $78                                     ; $5cca: $1e $78
    ld a, a                                       ; $5ccc: $7f

jr_0a8_5ccd:
    nop                                           ; $5ccd: $00
    inc l                                         ; $5cce: $2c
    nop                                           ; $5ccf: $00

jr_0a8_5cd0:
    inc b                                         ; $5cd0: $04
    jr c, jr_0a8_5d2f                             ; $5cd1: $38 $5c

    jr jr_0a8_5cab                                ; $5cd3: $18 $d6

jr_0a8_5cd5:
    ld d, b                                       ; $5cd5: $50
    ld c, [hl]                                    ; $5cd6: $4e
    nop                                           ; $5cd7: $00
    inc b                                         ; $5cd8: $04
    jr c, @+$5e                                   ; $5cd9: $38 $5c

    ld hl, sp-$01                                 ; $5cdb: $f8 $ff
    ld a, d                                       ; $5cdd: $7a
    ld c, b                                       ; $5cde: $48

jr_0a8_5cdf:
    ld h, b                                       ; $5cdf: $60
    jr nc, jr_0a8_5ccd                            ; $5ce0: $30 $eb

jr_0a8_5ce2:
    jr nc, @+$0a                                  ; $5ce2: $30 $08

    ld sp, $30d4                                  ; $5ce4: $31 $d4 $30
    ld h, b                                       ; $5ce7: $60
    jr nc, @+$2e                                  ; $5ce8: $30 $2c

    ld de, $38fe                                  ; $5cea: $11 $fe $38
    add b                                         ; $5ced: $80
    adc b                                         ; $5cee: $88
    jr jr_0a8_5d54                                ; $5cef: $18 $63

    nop                                           ; $5cf1: $00
    ld d, c                                       ; $5cf2: $51
    inc b                                         ; $5cf3: $04
    ld bc, $0080                                  ; $5cf4: $01 $80 $00
    ld bc, $0908                                  ; $5cf7: $01 $08 $09
    add hl, bc                                    ; $5cfa: $09
    add hl, bc                                    ; $5cfb: $09
    ld [$e708], sp                                ; $5cfc: $08 $08 $e7
    db $10                                        ; $5cff: $10
    jr z, jr_0a8_5d11                             ; $5d00: $28 $0f

    nop                                           ; $5d02: $00
    db $10                                        ; $5d03: $10
    add b                                         ; $5d04: $80
    add hl, bc                                    ; $5d05: $09
    add hl, bc                                    ; $5d06: $09
    jr nz, jr_0a8_5d51                            ; $5d07: $20 $48

    inc h                                         ; $5d09: $24
    ld [$4030], sp                                ; $5d0a: $08 $30 $40
    ei                                            ; $5d0d: $fb
    ld b, e                                       ; $5d0e: $43
    nop                                           ; $5d0f: $00
    ld b, b                                       ; $5d10: $40

jr_0a8_5d11:
    jr c, jr_0a8_5d5f                             ; $5d11: $38 $4c

jr_0a8_5d13:
    jr z, jr_0a8_5d75                             ; $5d13: $28 $60

    jr @+$06                                      ; $5d15: $18 $04

    cp b                                          ; $5d17: $b8
    inc b                                         ; $5d18: $04
    ld d, h                                       ; $5d19: $54
    ld [$4004], sp                                ; $5d1a: $08 $04 $40
    rst $38                                       ; $5d1d: $ff
    ld [bc], a                                    ; $5d1e: $02
    jr nc, jr_0a8_5cb4                            ; $5d1f: $30 $93

    ld [$008e], sp                                ; $5d21: $08 $8e $00
    sub [hl]                                      ; $5d24: $96

jr_0a8_5d25:
    nop                                           ; $5d25: $00
    inc b                                         ; $5d26: $04
    db $10                                        ; $5d27: $10

jr_0a8_5d28:
    dec c                                         ; $5d28: $0d
    ld [$1011], sp                                ; $5d29: $08 $11 $10
    cp d                                          ; $5d2c: $ba
    ld a, b                                       ; $5d2d: $78
    rst $38                                       ; $5d2e: $ff

jr_0a8_5d2f:
    ld a, l                                       ; $5d2f: $7d
    jr z, jr_0a8_5d36                             ; $5d30: $28 $04

    jr jr_0a8_5cd0                                ; $5d32: $18 $9c

    ld b, b                                       ; $5d34: $40
    dec e                                         ; $5d35: $1d

jr_0a8_5d36:
    jr nc, @+$05                                  ; $5d36: $30 $03

    ld c, b                                       ; $5d38: $48
    ld d, h                                       ; $5d39: $54
    ld [$1004], sp                                ; $5d3a: $08 $04 $10
    db $e4                                        ; $5d3d: $e4
    jr nz, @+$01                                  ; $5d3e: $20 $ff

    ld e, h                                       ; $5d40: $5c

Call_0a8_5d41:
    jr @-$2d                                      ; $5d41: $18 $d1

jr_0a8_5d43:
    jr nc, jr_0a8_5d25                            ; $5d43: $30 $e0

    ld h, b                                       ; $5d45: $60
    add hl, de                                    ; $5d46: $19
    ld de, $300d                                  ; $5d47: $11 $0d $30
    ld b, b                                       ; $5d4a: $40
    ld d, b                                       ; $5d4b: $50
    ld c, b                                       ; $5d4c: $48
    jr @-$05                                      ; $5d4d: $18 $f9

    jr nc, @+$01                                  ; $5d4f: $30 $ff

jr_0a8_5d51:
    inc b                                         ; $5d51: $04
    jr z, jr_0a8_5d43                             ; $5d52: $28 $ef

jr_0a8_5d54:
    jr nz, jr_0a8_5db2                            ; $5d54: $20 $5c

jr_0a8_5d56:
    add hl, sp                                    ; $5d56: $39
    inc [hl]                                      ; $5d57: $34
    add hl, bc                                    ; $5d58: $09

jr_0a8_5d59:
    inc de                                        ; $5d59: $13
    jr z, jr_0a8_5d28                             ; $5d5a: $28 $cc

    ld [$2168], sp                                ; $5d5c: $08 $68 $21

jr_0a8_5d5f:
    rrca                                          ; $5d5f: $0f
    jr @+$01                                      ; $5d60: $18 $ff

    db $10                                        ; $5d62: $10
    jr nc, @+$25                                  ; $5d63: $30 $23

    ld sp, $1915                                  ; $5d65: $31 $15 $19
    sbc l                                         ; $5d68: $9d
    ld b, c                                       ; $5d69: $41
    jr nz, jr_0a8_5d8d                            ; $5d6a: $20 $21

    add hl, hl                                    ; $5d6c: $29
    ld bc, $092d                                  ; $5d6d: $01 $2d $09
    ld l, h                                       ; $5d70: $6c
    jr nz, @+$01                                  ; $5d71: $20 $ff

    ldh a, [rOBP0]                                ; $5d73: $f0 $48

jr_0a8_5d75:
    inc h                                         ; $5d75: $24
    add hl, bc                                    ; $5d76: $09
    or b                                          ; $5d77: $b0
    add hl, sp                                    ; $5d78: $39
    inc bc                                        ; $5d79: $03
    db $10                                        ; $5d7a: $10
    ld l, b                                       ; $5d7b: $68
    db $10                                        ; $5d7c: $10
    call nz, Call_0a8_6811                        ; $5d7d: $c4 $11 $68
    jr z, jr_0a8_5d56                             ; $5d80: $28 $d4

    ld sp, $68ff                                  ; $5d82: $31 $ff $68
    jr c, jr_0a8_5d97                             ; $5d85: $38 $10

    jr c, jr_0a8_5d59                             ; $5d87: $38 $d0

    add hl, hl                                    ; $5d89: $29
    ld sp, $d561                                  ; $5d8a: $31 $61 $d5

jr_0a8_5d8d:
    jr jr_0a8_5e07                                ; $5d8d: $18 $78

    db $10                                        ; $5d8f: $10
    ret nz                                        ; $5d90: $c0

    ld c, b                                       ; $5d91: $48
    db $dd                                        ; $5d92: $dd
    add hl, hl                                    ; $5d93: $29
    rst $38                                       ; $5d94: $ff
    add sp, $18                                   ; $5d95: $e8 $18

jr_0a8_5d97:
    ret nz                                        ; $5d97: $c0

    ld de, $189c                                  ; $5d98: $11 $9c $18
    and h                                         ; $5d9b: $a4
    jr nz, @-$10                                  ; $5d9c: $20 $ee

    ld d, c                                       ; $5d9e: $51
    add $09                                       ; $5d9f: $c6 $09
    dec e                                         ; $5da1: $1d
    add hl, sp                                    ; $5da2: $39
    or b                                          ; $5da3: $b0
    ld e, b                                       ; $5da4: $58
    rst $38                                       ; $5da5: $ff
    and b                                         ; $5da6: $a0
    jr jr_0a8_5d59                                ; $5da7: $18 $b0

    jr z, @-$6e                                   ; $5da9: $28 $90

    add b                                         ; $5dab: $80
    add c                                         ; $5dac: $81
    add hl, hl                                    ; $5dad: $29
    rla                                           ; $5dae: $17
    ld c, d                                       ; $5daf: $4a
    add sp, $41                                   ; $5db0: $e8 $41

jr_0a8_5db2:
    call z, $ec0a                                 ; $5db2: $cc $0a $ec
    ld c, c                                       ; $5db5: $49
    ldh [rNR10], a                                ; $5db6: $e0 $10
    db $10                                        ; $5db8: $10
    sbc b                                         ; $5db9: $98
    add hl, hl                                    ; $5dba: $29
    ld a, [hl]                                    ; $5dbb: $7e
    ld [hl+], a                                   ; $5dbc: $22
    ld d, a                                       ; $5dbd: $57
    nop                                           ; $5dbe: $00
    ld c, a                                       ; $5dbf: $4f
    inc b                                         ; $5dc0: $04
    ld bc, $0090                                  ; $5dc1: $01 $90 $00
    nop                                           ; $5dc4: $00
    inc b                                         ; $5dc5: $04
    jr c, jr_0a8_5dde                             ; $5dc6: $38 $16

    ld c, b                                       ; $5dc8: $48
    db $10                                        ; $5dc9: $10
    jr nz, jr_0a8_5dd4                            ; $5dca: $20 $08

    ld [$000d], sp                                ; $5dcc: $08 $0d $00
    add hl, bc                                    ; $5dcf: $09
    add hl, bc                                    ; $5dd0: $09
    nop                                           ; $5dd1: $00
    inc b                                         ; $5dd2: $04
    nop                                           ; $5dd3: $00

jr_0a8_5dd4:
    jr jr_0a8_5dfe                                ; $5dd4: $18 $28

    add hl, bc                                    ; $5dd6: $09
    ld bc, $ff20                                  ; $5dd7: $01 $20 $ff
    db $10                                        ; $5dda: $10
    ld b, b                                       ; $5ddb: $40
    inc b                                         ; $5ddc: $04
    db $10                                        ; $5ddd: $10

jr_0a8_5dde:
    ld c, h                                       ; $5dde: $4c
    nop                                           ; $5ddf: $00
    inc h                                         ; $5de0: $24
    nop                                           ; $5de1: $00
    inc b                                         ; $5de2: $04
    jr c, jr_0a8_5de6                             ; $5de3: $38 $01

    ld c, b                                       ; $5de5: $48

jr_0a8_5de6:
    jr c, jr_0a8_5e30                             ; $5de6: $38 $48

    db $10                                        ; $5de8: $10
    db $10                                        ; $5de9: $10

jr_0a8_5dea:
    rst $38                                       ; $5dea: $ff
    ld b, h                                       ; $5deb: $44
    ld b, b                                       ; $5dec: $40
    sbc b                                         ; $5ded: $98
    jr z, jr_0a8_5e44                             ; $5dee: $28 $54

    db $10                                        ; $5df0: $10
    inc b                                         ; $5df1: $04
    ld b, b                                       ; $5df2: $40
    ld e, b                                       ; $5df3: $58
    jr z, @+$41                                   ; $5df4: $28 $3f

    db $10                                        ; $5df6: $10
    add e                                         ; $5df7: $83
    ld [$08ae], sp                                ; $5df8: $08 $ae $08
    rst $38                                       ; $5dfb: $ff
    inc b                                         ; $5dfc: $04
    ld c, b                                       ; $5dfd: $48

jr_0a8_5dfe:
    ld hl, $4c48                                  ; $5dfe: $21 $48 $4c
    ld b, b                                       ; $5e01: $40
    and b                                         ; $5e02: $a0
    jr nc, jr_0a8_5e4d                            ; $5e03: $30 $48

    jr c, jr_0a8_5e7b                             ; $5e05: $38 $74

jr_0a8_5e07:
    jr z, jr_0a8_5e51                             ; $5e07: $28 $48

    jr @+$52                                      ; $5e09: $18 $50

    jr z, @+$01                                   ; $5e0b: $28 $ff

    sub h                                         ; $5e0d: $94
    ld l, b                                       ; $5e0e: $68
    call c, Call_000_0e08                         ; $5e0f: $dc $08 $0e
    ld bc, $2804                                  ; $5e12: $01 $04 $28
    inc b                                         ; $5e15: $04
    ld sp, $5914                                  ; $5e16: $31 $14 $59
    add a                                         ; $5e19: $87
    jr nc, jr_0a8_5e28                            ; $5e1a: $30 $0c

    ld sp, $38ff                                  ; $5e1c: $31 $ff $38
    jr nz, jr_0a8_5e48                            ; $5e1f: $20 $27

    add hl, bc                                    ; $5e21: $09
    ld c, $30                                     ; $5e22: $0e $30
    ld c, d                                       ; $5e24: $4a
    nop                                           ; $5e25: $00
    db $fc                                        ; $5e26: $fc
    ld c, b                                       ; $5e27: $48

jr_0a8_5e28:
    ld e, l                                       ; $5e28: $5d
    add hl, bc                                    ; $5e29: $09
    ld e, b                                       ; $5e2a: $58
    jr c, jr_0a8_5e9b                             ; $5e2b: $38 $6e

    ld sp, $cfff                                  ; $5e2d: $31 $ff $cf

jr_0a8_5e30:
    ld e, b                                       ; $5e30: $58
    ld a, h                                       ; $5e31: $7c
    ld b, b                                       ; $5e32: $40
    ld sp, $7c09                                  ; $5e33: $31 $09 $7c
    add hl, de                                    ; $5e36: $19
    ld [$0318], sp                                ; $5e37: $08 $18 $03
    jr jr_0a8_5dea                                ; $5e3a: $18 $ae

    ld e, c                                       ; $5e3c: $59
    adc l                                         ; $5e3d: $8d
    ld [hl], b                                    ; $5e3e: $70
    rst $38                                       ; $5e3f: $ff
    jp z, $c931                                   ; $5e40: $ca $31 $c9

    db $10                                        ; $5e43: $10

jr_0a8_5e44:
    ret nc                                        ; $5e44: $d0

    ld sp, $203f                                  ; $5e45: $31 $3f $20

jr_0a8_5e48:
    ret nz                                        ; $5e48: $c0

    add hl, bc                                    ; $5e49: $09
    cp b                                          ; $5e4a: $b8
    ld c, b                                       ; $5e4b: $48
    inc b                                         ; $5e4c: $04

jr_0a8_5e4d:
    adc b                                         ; $5e4d: $88

jr_0a8_5e4e:
    inc bc                                        ; $5e4e: $03
    ld h, b                                       ; $5e4f: $60
    ld a, a                                       ; $5e50: $7f

jr_0a8_5e51:
    nop                                           ; $5e51: $00
    sub h                                         ; $5e52: $94
    ld bc, $3804                                  ; $5e53: $01 $04 $38
    ldh [rSTAT], a                                ; $5e56: $e0 $41
    inc l                                         ; $5e58: $2c
    ld [de], a                                    ; $5e59: $12
    call c, $c049                                 ; $5e5a: $dc $49 $c0
    add hl, de                                    ; $5e5d: $19
    inc e                                         ; $5e5e: $1c
    ld a, [de]                                    ; $5e5f: $1a
    cp $3c                                        ; $5e60: $fe $3c
    ld a, [hl+]                                   ; $5e62: $2a
    rra                                           ; $5e63: $1f
    ld b, c                                       ; $5e64: $41
    jr nc, jr_0a8_5e8f                            ; $5e65: $30 $28

    jr nz, jr_0a8_5ed1                            ; $5e67: $20 $68

    jr nc, jr_0a8_5ebb                            ; $5e69: $30 $50

    db $ec                                        ; $5e6b: $ec
    ld sp, $227c                                  ; $5e6c: $31 $7c $22
    ld [hl+], a                                   ; $5e6f: $22
    nop                                           ; $5e70: $00
    ld c, e                                       ; $5e71: $4b
    inc b                                         ; $5e72: $04
    ld bc, $0070                                  ; $5e73: $01 $70 $00
    nop                                           ; $5e76: $00
    inc b                                         ; $5e77: $04
    nop                                           ; $5e78: $00
    add hl, bc                                    ; $5e79: $09
    inc b                                         ; $5e7a: $04

jr_0a8_5e7b:
    jr z, @+$0f                                   ; $5e7b: $28 $0d

    ld [$04db], sp                                ; $5e7d: $08 $db $04
    db $10                                        ; $5e80: $10
    ld [bc], a                                    ; $5e81: $02
    nop                                           ; $5e82: $00
    add hl, bc                                    ; $5e83: $09
    ld bc, $0900                                  ; $5e84: $01 $00 $09

jr_0a8_5e87:
    nop                                           ; $5e87: $00
    inc b                                         ; $5e88: $04
    ld b, $08                                     ; $5e89: $06 $08
    inc c                                         ; $5e8b: $0c
    ld [$10ff], sp                                ; $5e8c: $08 $ff $10

jr_0a8_5e8f:
    ld [$2832], sp                                ; $5e8f: $08 $32 $28
    add hl, hl                                    ; $5e92: $29
    ld [$082d], sp                                ; $5e93: $08 $2d $08
    ld b, h                                       ; $5e96: $44
    sub b                                         ; $5e97: $90
    cpl                                           ; $5e98: $2f
    jr c, @+$0a                                   ; $5e99: $38 $08

jr_0a8_5e9b:
    ld a, b                                       ; $5e9b: $78
    inc a                                         ; $5e9c: $3c
    ld b, b                                       ; $5e9d: $40
    rst $38                                       ; $5e9e: $ff
    ld b, b                                       ; $5e9f: $40
    jr jr_0a8_5f1e                                ; $5ea0: $18 $7c

    jr c, @-$76                                   ; $5ea2: $38 $88

    jr nz, jr_0a8_5efc                            ; $5ea4: $20 $56

    jr nc, @-$60                                  ; $5ea6: $30 $9e

    jr @+$12                                      ; $5ea8: $18 $10

    ld h, b                                       ; $5eaa: $60
    adc l                                         ; $5eab: $8d
    jr jr_0a8_5e4e                                ; $5eac: $18 $a0

    db $10                                        ; $5eae: $10
    ret nz                                        ; $5eaf: $c0

    cp [hl]                                       ; $5eb0: $be
    jr z, jr_0a8_5e87                             ; $5eb1: $28 $d4

    ld c, b                                       ; $5eb3: $48
    ld [hl+], a                                   ; $5eb4: $22

jr_0a8_5eb5:
    nop                                           ; $5eb5: $00
    ld d, d                                       ; $5eb6: $52
    inc b                                         ; $5eb7: $04
    ld bc, $0098                                  ; $5eb8: $01 $98 $00

jr_0a8_5ebb:
    inc b                                         ; $5ebb: $04
    ld b, b                                       ; $5ebc: $40
    inc b                                         ; $5ebd: $04
    nop                                           ; $5ebe: $00
    ld bc, $0918                                  ; $5ebf: $01 $18 $09
    rst $18                                       ; $5ec2: $df
    inc b                                         ; $5ec3: $04
    ld [$2810], sp                                ; $5ec4: $08 $10 $28
    add hl, bc                                    ; $5ec7: $09
    ld bc, $2d20                                  ; $5ec8: $01 $20 $2d
    ld [hl], b                                    ; $5ecb: $70
    rlca                                          ; $5ecc: $07
    jr nc, jr_0a8_5f18                            ; $5ecd: $30 $49

    jr nz, jr_0a8_5f0e                            ; $5ecf: $20 $3d

jr_0a8_5ed1:
    nop                                           ; $5ed1: $00
    rst $38                                       ; $5ed2: $ff
    db $10                                        ; $5ed3: $10
    ld e, b                                       ; $5ed4: $58
    inc [hl]                                      ; $5ed5: $34
    nop                                           ; $5ed6: $00
    inc b                                         ; $5ed7: $04
    ld b, b                                       ; $5ed8: $40
    ld [bc], a                                    ; $5ed9: $02
    ld l, b                                       ; $5eda: $68
    ld a, c                                       ; $5edb: $79
    ld c, b                                       ; $5edc: $48
    ld c, c                                       ; $5edd: $49
    ld d, b                                       ; $5ede: $50
    adc c                                         ; $5edf: $89
    jr nz, jr_0a8_5f3e                            ; $5ee0: $20 $5c

    ld e, b                                       ; $5ee2: $58
    rst $38                                       ; $5ee3: $ff
    xor d                                         ; $5ee4: $aa
    ld [$5850], sp                                ; $5ee5: $08 $50 $58
    cp c                                          ; $5ee8: $b9
    db $10                                        ; $5ee9: $10
    and b                                         ; $5eea: $a0
    ld c, b                                       ; $5eeb: $48
    cp l                                          ; $5eec: $bd
    ld c, b                                       ; $5eed: $48
    ld h, b                                       ; $5eee: $60
    ld [$00da], sp                                ; $5eef: $08 $da $00

jr_0a8_5ef2:
    rst $08                                       ; $5ef2: $cf
    jr z, jr_0a8_5eb5                             ; $5ef3: $28 $c0

    ld l, a                                       ; $5ef5: $6f

jr_0a8_5ef6:
    db $10                                        ; $5ef6: $10
    and b                                         ; $5ef7: $a0
    ld h, b                                       ; $5ef8: $60
    jr c, jr_0a8_5efb                             ; $5ef9: $38 $00

jr_0a8_5efb:
    ld e, a                                       ; $5efb: $5f

jr_0a8_5efc:
    inc b                                         ; $5efc: $04
    ld bc, $0090                                  ; $5efd: $01 $90 $00
    inc b                                         ; $5f00: $04
    jr z, jr_0a8_5f0c                             ; $5f01: $28 $09

    ld [$3011], sp                                ; $5f03: $08 $11 $30
    ld bc, $1e08                                  ; $5f06: $01 $08 $1e
    db $10                                        ; $5f09: $10

jr_0a8_5f0a:
    or c                                          ; $5f0a: $b1
    ld a, [bc]                                    ; $5f0b: $0a

jr_0a8_5f0c:
    nop                                           ; $5f0c: $00
    add hl, bc                                    ; $5f0d: $09

jr_0a8_5f0e:
    ld bc, $1020                                  ; $5f0e: $01 $20 $10
    jr nz, jr_0a8_5f17                            ; $5f11: $20 $04

    add hl, bc                                    ; $5f13: $09
    add hl, bc                                    ; $5f14: $09
    inc b                                         ; $5f15: $04
    db $10                                        ; $5f16: $10

jr_0a8_5f17:
    cp a                                          ; $5f17: $bf

jr_0a8_5f18:
    add hl, sp                                    ; $5f18: $39
    nop                                           ; $5f19: $00
    nop                                           ; $5f1a: $00
    inc d                                         ; $5f1b: $14
    nop                                           ; $5f1c: $00
    inc b                                         ; $5f1d: $04

jr_0a8_5f1e:
    jr c, jr_0a8_5f48                             ; $5f1e: $38 $28

    jr nc, jr_0a8_5f4d                            ; $5f20: $30 $2b

    ld [$1007], sp                                ; $5f22: $08 $07 $10
    jr c, jr_0a8_5f4f                             ; $5f25: $38 $28

    rst $38                                       ; $5f27: $ff
    ld de, $0218                                  ; $5f28: $11 $18 $02
    xor b                                         ; $5f2b: $a8
    sbc b                                         ; $5f2c: $98
    jr z, jr_0a8_5f97                             ; $5f2d: $28 $68

    nop                                           ; $5f2f: $00
    ld l, h                                       ; $5f30: $6c
    ld [$3004], sp                                ; $5f31: $08 $04 $30
    or b                                          ; $5f34: $b0
    ld c, b                                       ; $5f35: $48
    ld a, a                                       ; $5f36: $7f
    jr @+$01                                      ; $5f37: $18 $ff

    ld c, h                                       ; $5f39: $4c
    jr c, jr_0a8_5f90                             ; $5f3a: $38 $54

    jr jr_0a8_5ef2                                ; $5f3c: $18 $b4

jr_0a8_5f3e:
    jr nc, jr_0a8_5f0a                            ; $5f3e: $30 $ca

    jr jr_0a8_5ef6                                ; $5f40: $18 $b4

    jr nz, jr_0a8_5f1e                            ; $5f42: $20 $da

    jr nc, jr_0a8_5f97                            ; $5f44: $30 $51

    ld h, b                                       ; $5f46: $60
    pop af                                        ; $5f47: $f1

jr_0a8_5f48:
    ld [hl], b                                    ; $5f48: $70
    rst $38                                       ; $5f49: $ff
    ld [hl], c                                    ; $5f4a: $71
    jr nz, @-$64                                  ; $5f4b: $20 $9a

jr_0a8_5f4d:
    ld b, b                                       ; $5f4d: $40
    db $ec                                        ; $5f4e: $ec

jr_0a8_5f4f:
    nop                                           ; $5f4f: $00
    ldh a, [$08]                                  ; $5f50: $f0 $08
    inc b                                         ; $5f52: $04
    jr jr_0a8_5f55                                ; $5f53: $18 $00

jr_0a8_5f55:
    add hl, de                                    ; $5f55: $19
    inc b                                         ; $5f56: $04
    jr c, @+$10                                   ; $5f57: $38 $0e

    jr nz, @+$01                                  ; $5f59: $20 $ff

    ld a, b                                       ; $5f5b: $78
    jr nc, jr_0a8_5f7a                            ; $5f5c: $30 $1c

    add hl, hl                                    ; $5f5e: $29
    inc l                                         ; $5f5f: $2c
    add hl, hl                                    ; $5f60: $29
    ld b, l                                       ; $5f61: $45
    jr nc, jr_0a8_5f74                            ; $5f62: $30 $10

    jr nc, jr_0a8_5fc9                            ; $5f64: $30 $63

    jr @+$4e                                      ; $5f66: $18 $4c

    add hl, sp                                    ; $5f68: $39
    add d                                         ; $5f69: $82
    ld e, c                                       ; $5f6a: $59
    dec hl                                        ; $5f6b: $2b
    nop                                           ; $5f6c: $00
    ld b, b                                       ; $5f6d: $40
    inc b                                         ; $5f6e: $04
    ld bc, $0088                                  ; $5f6f: $01 $88 $00
    nop                                           ; $5f72: $00
    nop                                           ; $5f73: $00

jr_0a8_5f74:
    inc b                                         ; $5f74: $04
    nop                                           ; $5f75: $00
    add hl, bc                                    ; $5f76: $09
    ld a, a                                       ; $5f77: $7f
    add hl, bc                                    ; $5f78: $09
    inc b                                         ; $5f79: $04

jr_0a8_5f7a:
    db $10                                        ; $5f7a: $10
    rrca                                          ; $5f7b: $0f
    jr jr_0a8_5f8c                                ; $5f7c: $18 $0e

    nop                                           ; $5f7e: $00
    ld [bc], a                                    ; $5f7f: $02
    jr jr_0a8_5f92                                ; $5f80: $18 $10

    ld b, b                                       ; $5f82: $40
    inc b                                         ; $5f83: $04
    db $10                                        ; $5f84: $10
    jr z, @+$32                                   ; $5f85: $28 $30

    rst $38                                       ; $5f87: $ff
    jr nc, jr_0a8_5faa                            ; $5f88: $30 $20

    ld [bc], a                                    ; $5f8a: $02

jr_0a8_5f8b:
    ld [hl], b                                    ; $5f8b: $70

jr_0a8_5f8c:
    ld h, c                                       ; $5f8c: $61
    nop                                           ; $5f8d: $00
    inc b                                         ; $5f8e: $04
    ld c, b                                       ; $5f8f: $48

jr_0a8_5f90:
    rrca                                          ; $5f90: $0f
    ld h, b                                       ; $5f91: $60

jr_0a8_5f92:
    ld d, a                                       ; $5f92: $57
    ld [$304c], sp                                ; $5f93: $08 $4c $30
    ld d, h                                       ; $5f96: $54

jr_0a8_5f97:
    db $10                                        ; $5f97: $10
    rst $38                                       ; $5f98: $ff
    dec d                                         ; $5f99: $15
    jr nz, jr_0a8_5fdb                            ; $5f9a: $20 $3f

    ld c, b                                       ; $5f9c: $48
    ld c, a                                       ; $5f9d: $4f
    ld d, b                                       ; $5f9e: $50
    inc b                                         ; $5f9f: $04
    ld h, b                                       ; $5fa0: $60
    jr nc, jr_0a8_5ff3                            ; $5fa1: $30 $50

    ld e, [hl]                                    ; $5fa3: $5e
    db $10                                        ; $5fa4: $10
    inc l                                         ; $5fa5: $2c
    ld h, b                                       ; $5fa6: $60
    ld d, b                                       ; $5fa7: $50
    ld b, b                                       ; $5fa8: $40
    rst $38                                       ; $5fa9: $ff

jr_0a8_5faa:
    sbc $28                                       ; $5faa: $de $28
    inc b                                         ; $5fac: $04
    ld c, b                                       ; $5fad: $48
    db $db                                        ; $5fae: $db
    ld [$4804], sp                                ; $5faf: $08 $04 $48
    ret nc                                        ; $5fb2: $d0

    jr c, jr_0a8_5fb9                             ; $5fb3: $38 $04

    ld bc, $408c                                  ; $5fb5: $01 $8c $40
    inc b                                         ; $5fb8: $04

jr_0a8_5fb9:
    add hl, bc                                    ; $5fb9: $09

jr_0a8_5fba:
    ldh [$5f], a                                  ; $5fba: $e0 $5f
    jr nz, jr_0a8_5fba                            ; $5fbc: $20 $fc

    db $10                                        ; $5fbe: $10
    db $10                                        ; $5fbf: $10
    jr z, jr_0a8_5fd1                             ; $5fc0: $28 $0f

    nop                                           ; $5fc2: $00
    ld b, a                                       ; $5fc3: $47
    inc b                                         ; $5fc4: $04
    ld bc, $0008                                  ; $5fc5: $01 $08 $00
    nop                                           ; $5fc8: $00

jr_0a8_5fc9:
    nop                                           ; $5fc9: $00
    inc b                                         ; $5fca: $04
    jr nc, jr_0a8_5fdc                            ; $5fcb: $30 $0f

    jr jr_0a8_5fd2                                ; $5fcd: $18 $03

jr_0a8_5fcf:
    jr nc, jr_0a8_5fcf                            ; $5fcf: $30 $fe

jr_0a8_5fd1:
    rra                                           ; $5fd1: $1f

jr_0a8_5fd2:
    ld [hl], b                                    ; $5fd2: $70
    inc l                                         ; $5fd3: $2c
    ld c, b                                       ; $5fd4: $48
    add hl, hl                                    ; $5fd5: $29
    ld c, b                                       ; $5fd6: $48
    inc sp                                        ; $5fd7: $33
    ld b, b                                       ; $5fd8: $40
    jr nc, jr_0a8_5f8b                            ; $5fd9: $30 $b0

jr_0a8_5fdb:
    ld e, h                                       ; $5fdb: $5c

jr_0a8_5fdc:
    add sp, -$73                                  ; $5fdc: $e8 $8d
    nop                                           ; $5fde: $00
    inc de                                        ; $5fdf: $13
    nop                                           ; $5fe0: $00
    ld e, a                                       ; $5fe1: $5f
    inc b                                         ; $5fe2: $04
    ld bc, $00a0                                  ; $5fe3: $01 $a0 $00
    ld bc, $22e0                                  ; $5fe6: $01 $e0 $22
    ld [$4026], sp                                ; $5fe9: $08 $26 $40
    jr nc, jr_0a8_5ff6                            ; $5fec: $30 $08

    inc b                                         ; $5fee: $04
    jr z, @+$01                                   ; $5fef: $28 $ff

    dec c                                         ; $5ff1: $0d
    ld e, b                                       ; $5ff2: $58

jr_0a8_5ff3:
    ld [hl-], a                                   ; $5ff3: $32
    ld l, b                                       ; $5ff4: $68
    ld e, h                                       ; $5ff5: $5c

jr_0a8_5ff6:
    ld [$4004], sp                                ; $5ff6: $08 $04 $40
    rrca                                          ; $5ff9: $0f
    ld h, b                                       ; $5ffa: $60
    ld e, c                                       ; $5ffb: $59
    ld [$400d], sp                                ; $5ffc: $08 $0d $40
    rrca                                          ; $5fff: $0f
    db $10                                        ; $6000: $10
    ret nz                                        ; $6001: $c0

    sub h                                         ; $6002: $94
    ld d, b                                       ; $6003: $50
    rra                                           ; $6004: $1f
    ld h, b                                       ; $6005: $60
    nop                                           ; $6006: $00
    inc e                                         ; $6007: $1c
    inc d                                         ; $6008: $14

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02
    db $03, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $06, $06, $07, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $08, $09, $0a, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $0b, $0c, $0d, $0e, $00, $00, $00, $00, $00, $00
    db $01, $0f, $10, $11, $12, $13, $14, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $05, $07, $00, $00, $00, $00, $00, $00, $15, $16, $17, $16
    db $16, $16, $18, $00, $19, $1a, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $07, $00, $00, $00, $00, $00, $00, $00, $1b, $16, $16, $16, $16, $16, $16
    db $16, $16, $00, $00, $00, $1c, $00, $00, $00, $00, $00, $00, $1d, $07, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1e, $16, $16, $16, $16, $16, $1f, $1f
    db $1f, $20, $00, $00, $00, $21, $00, $00, $22, $07, $00, $19, $11, $23, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $24, $16, $16, $16, $16, $16, $16, $16
    db $16, $25, $11, $11, $16, $16, $26, $27, $16, $28, $29, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $2a, $2a, $2b, $16, $2c, $2d, $2e, $16, $16
    db $16, $16, $16, $16, $16, $16, $2f, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $1e, $16, $16, $16, $16, $16, $16
    db $16, $16, $2f, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $1e, $16, $16, $30, $31, $16, $16, $16, $16, $2f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $32, $33, $00, $00, $00, $00, $00
    db $00, $1e, $16, $16, $34, $35, $16, $16, $16, $16, $34, $29, $00, $00, $36, $11
    db $11, $37, $23, $00, $00, $1e, $2f, $00, $00, $00, $1c, $38, $38, $39, $16, $16
    db $16, $16, $16, $16, $16, $16, $16, $3a, $00, $00, $24, $16, $16, $16, $3a, $00
    db $00, $1e, $34, $3b, $11, $11, $3c, $16, $16, $16, $16, $16, $16, $16, $16, $16
    db $3d, $2a, $2a, $3e, $00, $00, $24, $16, $16, $16, $3f, $11, $11, $40, $16, $16
    db $16, $16, $16, $16, $16, $16, $16, $41, $41, $42, $2a, $2a, $3e, $00, $00, $00
    db $00, $00, $24, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $43
    db $2a, $2a, $2a, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1e, $16
    db $16, $16, $16, $16, $30, $41, $41, $44, $00, $00, $22, $45, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $46, $00, $00, $00, $00, $00, $47, $48, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $49, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    dec b                                         ; $6239: $05
    dec b                                         ; $623a: $05
    nop                                           ; $623b: $00
    nop                                           ; $623c: $00
    nop                                           ; $623d: $00
    nop                                           ; $623e: $00
    nop                                           ; $623f: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    ld bc, $0002                                  ; $6246: $01 $02 $00
    nop                                           ; $6249: $00
    nop                                           ; $624a: $00
    ld bc, $0101                                  ; $624b: $01 $01 $01
    ld [bc], a                                    ; $624e: $02
    nop                                           ; $624f: $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    inc bc                                        ; $6252: $03
    nop                                           ; $6253: $00
    dec b                                         ; $6254: $05
    dec b                                         ; $6255: $05
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    nop                                           ; $625a: $00
    nop                                           ; $625b: $00
    nop                                           ; $625c: $00
    nop                                           ; $625d: $00
    nop                                           ; $625e: $00
    nop                                           ; $625f: $00
    ld bc, $0202                                  ; $6260: $01 $02 $02
    ld [bc], a                                    ; $6263: $02
    inc bc                                        ; $6264: $03
    inc b                                         ; $6265: $04
    dec b                                         ; $6266: $05
    dec b                                         ; $6267: $05
    dec b                                         ; $6268: $05
    ld b, $00                                     ; $6269: $06 $00
    rlca                                          ; $626b: $07
    ld [$0000], sp                                ; $626c: $08 $00 $00
    dec b                                         ; $626f: $05
    dec b                                         ; $6270: $05
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    nop                                           ; $627a: $00
    ld bc, $0002                                  ; $627b: $01 $02 $00
    nop                                           ; $627e: $00
    nop                                           ; $627f: $00
    inc bc                                        ; $6280: $03
    inc b                                         ; $6281: $04
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    dec b                                         ; $6286: $05
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    dec b                                         ; $628a: $05
    dec b                                         ; $628b: $05

    db $00, $00, $00, $00, $00, $00, $00, $01, $00, $00, $02, $03, $04, $05, $06, $07
    db $08, $08, $08, $09, $00, $0a, $0b, $00, $00

    dec b                                         ; $62a5: $05
    dec b                                         ; $62a6: $05
    nop                                           ; $62a7: $00
    nop                                           ; $62a8: $00
    nop                                           ; $62a9: $00
    nop                                           ; $62aa: $00
    nop                                           ; $62ab: $00
    nop                                           ; $62ac: $00
    nop                                           ; $62ad: $00
    nop                                           ; $62ae: $00
    nop                                           ; $62af: $00
    nop                                           ; $62b0: $00
    ld bc, $0302                                  ; $62b1: $01 $02 $03
    inc b                                         ; $62b4: $04
    dec b                                         ; $62b5: $05
    ld b, $03                                     ; $62b6: $06 $03
    inc bc                                        ; $62b8: $03
    rlca                                          ; $62b9: $07
    nop                                           ; $62ba: $00
    nop                                           ; $62bb: $00
    nop                                           ; $62bc: $00
    ld b, $00                                     ; $62bd: $06 $00
    nop                                           ; $62bf: $00
    dec b                                         ; $62c0: $05
    dec b                                         ; $62c1: $05
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    nop                                           ; $62c5: $00
    nop                                           ; $62c6: $00
    nop                                           ; $62c7: $00
    nop                                           ; $62c8: $00
    nop                                           ; $62c9: $00
    nop                                           ; $62ca: $00
    nop                                           ; $62cb: $00
    nop                                           ; $62cc: $00
    ld bc, $0202                                  ; $62cd: $01 $02 $02
    inc bc                                        ; $62d0: $03
    nop                                           ; $62d1: $00
    inc b                                         ; $62d2: $04
    dec b                                         ; $62d3: $05
    dec b                                         ; $62d4: $05
    ld b, $00                                     ; $62d5: $06 $00
    nop                                           ; $62d7: $00
    nop                                           ; $62d8: $00
    rlca                                          ; $62d9: $07
    nop                                           ; $62da: $00
    dec b                                         ; $62db: $05
    dec b                                         ; $62dc: $05
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
    ld bc, $0202                                  ; $62e7: $01 $02 $02
    ld [bc], a                                    ; $62ea: $02
    inc bc                                        ; $62eb: $03
    inc b                                         ; $62ec: $04
    dec b                                         ; $62ed: $05
    dec b                                         ; $62ee: $05
    dec b                                         ; $62ef: $05
    ld b, $00                                     ; $62f0: $06 $00
    rlca                                          ; $62f2: $07
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    add hl, bc                                    ; $62f6: $09
    inc de                                        ; $62f7: $13

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $00, $04, $05
    db $06, $00, $07, $08, $08, $08, $08, $08, $08, $08, $09, $07, $08, $0a, $08, $08
    db $08, $0b, $08, $09, $07, $08, $0c, $08, $08, $08, $0d, $08, $09, $07, $08, $0a
    db $08, $08, $08, $0b, $08, $09, $07, $08, $0c, $08, $08, $08, $0d, $08, $09, $07
    db $08, $0a, $08, $08, $08, $0b, $08, $09, $07, $08, $0c, $08, $08, $08, $0d, $08
    db $09, $07, $08, $0a, $08, $08, $08, $0b, $08, $09, $07, $08, $0a, $08, $08, $08
    db $0d, $08, $09, $07, $08, $0e, $08, $08, $08, $0f, $08, $09, $07, $08, $10, $08
    db $08, $08, $01, $08, $09, $07, $08, $11, $08, $08, $08, $0b, $08, $09, $07, $08
    db $0c, $08, $08, $08, $0d, $08, $09, $07, $08, $0a, $08, $08, $08, $0b, $08, $09
    db $07, $08, $0c, $08, $08, $08, $0d, $08, $09, $07, $08, $12, $08, $08, $08, $13
    db $08, $09, $14, $15, $15, $15, $16, $15, $15, $15, $17

    rrca                                          ; $63a3: $0f
    add hl, de                                    ; $63a4: $19

    db $00, $01, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03
    db $05, $06, $06, $06, $06, $06, $06, $07, $08, $08, $08, $09, $00, $00, $03, $0a
    db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0c, $0d, $00, $00, $03, $0d, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $03, $0d, $00, $00, $03, $0d, $00, $00
    db $00, $0e, $0e, $0e, $0e, $0e, $0e, $0f, $0d, $00, $00, $03, $0d, $00, $00, $00
    db $10, $11, $12, $12, $12, $12, $12, $13, $00, $00, $03, $0d, $00, $00, $00, $10
    db $0d, $00, $00, $00, $00, $00, $00, $00, $00, $03, $14, $08, $08, $08, $15, $14
    db $08, $08, $09, $00, $00, $00, $00, $00, $03, $16, $17, $0b, $0b, $0b, $0b, $0b
    db $18, $0d, $00, $00, $00, $00, $00, $03, $16, $04, $00, $00, $00, $00, $00, $19
    db $0d, $00, $1a, $1b, $00, $00, $03, $16, $04, $00, $00, $00, $00, $00, $19, $0d
    db $00, $10, $1c, $00, $00, $03, $16, $1d, $1e, $1e, $1e, $1f, $00, $19, $0d, $00
    db $10, $1c, $00, $00, $20, $21, $21, $21, $21, $22, $04, $00, $19, $14, $08, $15
    db $1c, $00, $00, $00, $00, $00, $00, $00, $23, $04, $00, $19, $16, $16, $16, $1c
    db $00, $00, $24, $1e, $1e, $1e, $1e, $1e, $04, $00, $25, $21, $21, $26, $1c, $00
    db $00, $03, $04, $21, $21, $21, $21, $21, $00, $00, $00, $00, $03, $1c, $00, $00
    db $03, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $1c, $00, $00, $03
    db $27, $08, $08, $08, $08, $08, $28, $00, $00, $00, $03, $1c, $00, $00, $03, $0a
    db $0b, $0b, $0b, $0b, $0b, $29, $00, $00, $1a, $2a, $2b, $00, $00, $03, $0d, $00
    db $00, $00, $00, $00, $2c, $00, $00, $21, $26, $0d, $00, $00, $03, $2d, $0e, $0e
    db $0e, $0e, $00, $2c, $00, $00, $00, $03, $0d, $00, $00, $03, $16, $16, $16, $16
    db $2e, $2f, $02, $02, $30, $1e, $2a, $0d, $00, $00, $20, $31, $32, $33, $0b, $34
    db $02, $35, $35, $36, $0b, $0b, $37, $00, $00, $00, $00, $00, $00, $00, $01, $02
    db $00, $00, $00, $00, $00, $00, $00

    dec b                                         ; $651c: $05
    dec h                                         ; $651d: $25
    nop                                           ; $651e: $00
    ld bc, $0202                                  ; $651f: $01 $02 $02
    inc bc                                        ; $6522: $03
    nop                                           ; $6523: $00
    ld bc, $0202                                  ; $6524: $01 $02 $02
    inc bc                                        ; $6527: $03
    nop                                           ; $6528: $00
    inc b                                         ; $6529: $04
    dec b                                         ; $652a: $05
    dec b                                         ; $652b: $05
    ld b, $00                                     ; $652c: $06 $00
    inc b                                         ; $652e: $04
    dec b                                         ; $652f: $05
    dec b                                         ; $6530: $05
    rlca                                          ; $6531: $07
    nop                                           ; $6532: $00
    inc b                                         ; $6533: $04
    dec b                                         ; $6534: $05
    dec b                                         ; $6535: $05
    ld [$0900], sp                                ; $6536: $08 $00 $09
    dec b                                         ; $6539: $05
    dec b                                         ; $653a: $05
    ld [$050a], sp                                ; $653b: $08 $0a $05
    dec b                                         ; $653e: $05
    dec b                                         ; $653f: $05
    dec bc                                        ; $6540: $0b
    inc c                                         ; $6541: $0c
    dec b                                         ; $6542: $05
    dec b                                         ; $6543: $05
    dec c                                         ; $6544: $0d
    ld c, $0c                                     ; $6545: $0e $0c
    dec b                                         ; $6547: $05
    dec b                                         ; $6548: $05
    dec b                                         ; $6549: $05
    rrca                                          ; $654a: $0f
    inc c                                         ; $654b: $0c
    dec b                                         ; $654c: $05
    dec b                                         ; $654d: $05
    dec b                                         ; $654e: $05
    ld [$050c], sp                                ; $654f: $08 $0c $05
    dec b                                         ; $6552: $05
    dec b                                         ; $6553: $05
    ld [$0510], sp                                ; $6554: $08 $10 $05
    dec b                                         ; $6557: $05
    dec b                                         ; $6558: $05
    ld [$0511], sp                                ; $6559: $08 $11 $05
    dec b                                         ; $655c: $05
    dec b                                         ; $655d: $05
    ld [$0512], sp                                ; $655e: $08 $12 $05
    dec b                                         ; $6561: $05
    dec b                                         ; $6562: $05
    ld [$0513], sp                                ; $6563: $08 $13 $05
    dec b                                         ; $6566: $05
    inc d                                         ; $6567: $14
    dec d                                         ; $6568: $15
    ld d, $05                                     ; $6569: $16 $05
    dec b                                         ; $656b: $05
    rla                                           ; $656c: $17
    nop                                           ; $656d: $00
    jr jr_0a8_6589                                ; $656e: $18 $19

    dec b                                         ; $6570: $05
    ld a, [de]                                    ; $6571: $1a
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    dec de                                        ; $6574: $1b
    dec b                                         ; $6575: $05
    inc e                                         ; $6576: $1c
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    inc b                                         ; $6579: $04
    dec b                                         ; $657a: $05
    dec e                                         ; $657b: $1d
    nop                                           ; $657c: $00
    nop                                           ; $657d: $00
    ld e, $05                                     ; $657e: $1e $05
    rra                                           ; $6580: $1f
    jr nz, jr_0a8_6583                            ; $6581: $20 $00

jr_0a8_6583:
    ld hl, $0505                                  ; $6583: $21 $05 $05
    ld [$2322], sp                                ; $6586: $08 $22 $23

jr_0a8_6589:
    dec b                                         ; $6589: $05
    dec b                                         ; $658a: $05
    ld [$0524], sp                                ; $658b: $08 $24 $05
    dec b                                         ; $658e: $05
    dec b                                         ; $658f: $05
    dec h                                         ; $6590: $25
    inc c                                         ; $6591: $0c
    dec b                                         ; $6592: $05
    dec b                                         ; $6593: $05
    dec c                                         ; $6594: $0d
    ld h, $0c                                     ; $6595: $26 $0c
    dec b                                         ; $6597: $05
    dec b                                         ; $6598: $05
    dec b                                         ; $6599: $05
    ld [$050c], sp                                ; $659a: $08 $0c $05
    dec b                                         ; $659d: $05
    dec b                                         ; $659e: $05
    ld [$050c], sp                                ; $659f: $08 $0c $05
    dec b                                         ; $65a2: $05
    dec b                                         ; $65a3: $05
    ld [$050c], sp                                ; $65a4: $08 $0c $05
    dec b                                         ; $65a7: $05
    dec b                                         ; $65a8: $05
    daa                                           ; $65a9: $27
    inc c                                         ; $65aa: $0c
    dec b                                         ; $65ab: $05
    dec b                                         ; $65ac: $05
    jr z, jr_0a8_65af                             ; $65ad: $28 $00

jr_0a8_65af:
    add hl, hl                                    ; $65af: $29
    ld a, [hl+]                                   ; $65b0: $2a
    dec b                                         ; $65b1: $05
    dec hl                                        ; $65b2: $2b
    nop                                           ; $65b3: $00
    nop                                           ; $65b4: $00
    inc l                                         ; $65b5: $2c
    dec l                                         ; $65b6: $2d
    inc e                                         ; $65b7: $1c
    nop                                           ; $65b8: $00
    nop                                           ; $65b9: $00
    nop                                           ; $65ba: $00
    add hl, bc                                    ; $65bb: $09
    ld l, $00                                     ; $65bc: $2e $00
    nop                                           ; $65be: $00
    cpl                                           ; $65bf: $2f
    dec b                                         ; $65c0: $05
    rra                                           ; $65c1: $1f
    jr nc, @+$0c                                  ; $65c2: $30 $0a

    dec b                                         ; $65c4: $05
    dec b                                         ; $65c5: $05
    dec b                                         ; $65c6: $05
    rlca                                          ; $65c7: $07
    inc c                                         ; $65c8: $0c
    dec b                                         ; $65c9: $05
    dec b                                         ; $65ca: $05
    dec b                                         ; $65cb: $05
    ld [$050c], sp                                ; $65cc: $08 $0c $05
    dec b                                         ; $65cf: $05
    dec b                                         ; $65d0: $05
    ld [$3231], sp                                ; $65d1: $08 $31 $32
    ld [hl-], a                                   ; $65d4: $32
    ld [hl-], a                                   ; $65d5: $32
    inc sp                                        ; $65d6: $33
    inc de                                        ; $65d7: $13
    ld a, [bc]                                    ; $65d8: $0a
    nop                                           ; $65d9: $00
    nop                                           ; $65da: $00
    nop                                           ; $65db: $00
    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    nop                                           ; $65e0: $00
    nop                                           ; $65e1: $00
    nop                                           ; $65e2: $00
    nop                                           ; $65e3: $00
    nop                                           ; $65e4: $00
    nop                                           ; $65e5: $00
    nop                                           ; $65e6: $00
    nop                                           ; $65e7: $00
    nop                                           ; $65e8: $00
    nop                                           ; $65e9: $00
    nop                                           ; $65ea: $00
    nop                                           ; $65eb: $00
    nop                                           ; $65ec: $00
    ld bc, $0002                                  ; $65ed: $01 $02 $00
    nop                                           ; $65f0: $00
    nop                                           ; $65f1: $00
    inc bc                                        ; $65f2: $03
    inc b                                         ; $65f3: $04
    inc b                                         ; $65f4: $04
    inc b                                         ; $65f5: $04
    dec b                                         ; $65f6: $05
    nop                                           ; $65f7: $00
    nop                                           ; $65f8: $00
    ld b, $07                                     ; $65f9: $06 $07
    ld [$0009], sp                                ; $65fb: $08 $09 $00
    nop                                           ; $65fe: $00
    nop                                           ; $65ff: $00
    ld a, [bc]                                    ; $6600: $0a
    dec bc                                        ; $6601: $0b
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    inc c                                         ; $6605: $0c
    dec c                                         ; $6606: $0d
    dec c                                         ; $6607: $0d
    dec c                                         ; $6608: $0d
    ld c, $0f                                     ; $6609: $0e $0f
    nop                                           ; $660b: $00
    db $10                                        ; $660c: $10
    ld de, $1312                                  ; $660d: $11 $12 $13
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    ld a, [bc]                                    ; $6613: $0a
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    inc d                                         ; $6618: $14
    dec d                                         ; $6619: $15
    dec bc                                        ; $661a: $0b
    dec bc                                        ; $661b: $0b
    ld d, $0f                                     ; $661c: $16 $0f
    nop                                           ; $661e: $00
    ld a, [bc]                                    ; $661f: $0a
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    rla                                           ; $6622: $17
    jr jr_0a8_6625                                ; $6623: $18 $00

jr_0a8_6625:
    nop                                           ; $6625: $00
    add hl, de                                    ; $6626: $19
    ld a, [de]                                    ; $6627: $1a
    dec de                                        ; $6628: $1b
    nop                                           ; $6629: $00
    nop                                           ; $662a: $00
    inc d                                         ; $662b: $14
    inc e                                         ; $662c: $1c
    nop                                           ; $662d: $00
    nop                                           ; $662e: $00
    ld d, $0f                                     ; $662f: $16 $0f
    nop                                           ; $6631: $00
    ld a, [bc]                                    ; $6632: $0a
    nop                                           ; $6633: $00
    rla                                           ; $6634: $17
    dec e                                         ; $6635: $1d
    ld e, $00                                     ; $6636: $1e $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    rra                                           ; $663a: $1f
    inc e                                         ; $663b: $1c
    nop                                           ; $663c: $00
    nop                                           ; $663d: $00
    inc d                                         ; $663e: $14
    inc e                                         ; $663f: $1c
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    ld d, $08                                     ; $6642: $16 $08
    ld [$0820], sp                                ; $6644: $08 $20 $08
    ld hl, $1e22                                  ; $6647: $21 $22 $1e
    nop                                           ; $664a: $00
    nop                                           ; $664b: $00
    inc hl                                        ; $664c: $23
    inc h                                         ; $664d: $24
    dec h                                         ; $664e: $25
    ld h, $26                                     ; $664f: $26 $26
    daa                                           ; $6651: $27
    inc e                                         ; $6652: $1c
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    jr z, jr_0a8_6669                             ; $6655: $28 $12

    ld [de], a                                    ; $6657: $12
    add hl, hl                                    ; $6658: $29
    ld a, [hl+]                                   ; $6659: $2a
    dec hl                                        ; $665a: $2b
    inc l                                         ; $665b: $2c
    dec l                                         ; $665c: $2d
    nop                                           ; $665d: $00
    nop                                           ; $665e: $00
    ld d, $2e                                     ; $665f: $16 $2e
    cpl                                           ; $6661: $2f
    cpl                                           ; $6662: $2f
    cpl                                           ; $6663: $2f
    cpl                                           ; $6664: $2f
    jr nc, @+$33                                  ; $6665: $30 $31

    ld [hl-], a                                   ; $6667: $32
    nop                                           ; $6668: $00

jr_0a8_6669:
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    inc sp                                        ; $666b: $33
    inc [hl]                                      ; $666c: $34
    nop                                           ; $666d: $00
    nop                                           ; $666e: $00
    nop                                           ; $666f: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    ld d, $1c                                     ; $6672: $16 $1c
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    dec [hl]                                      ; $6677: $35
    ld [hl], $0d                                  ; $6678: $36 $0d
    scf                                           ; $667a: $37
    ld sp, $3231                                  ; $667b: $31 $31 $32
    jr c, @+$3b                                   ; $667e: $38 $39

    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    ld [hl+], a                                   ; $6685: $22
    ld a, [hl-]                                   ; $6686: $3a
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    dec sp                                        ; $668b: $3b
    inc a                                         ; $668c: $3c
    inc a                                         ; $668d: $3c
    inc a                                         ; $668e: $3c
    dec a                                         ; $668f: $3d
    ld a, $35                                     ; $6690: $3e $35
    ccf                                           ; $6692: $3f
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    ld e, $11                                     ; $6697: $1e $11
    nop                                           ; $6699: $00
    nop                                           ; $669a: $00
    nop                                           ; $669b: $00
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    nop                                           ; $669e: $00
    nop                                           ; $669f: $00
    nop                                           ; $66a0: $00
    nop                                           ; $66a1: $00
    nop                                           ; $66a2: $00
    nop                                           ; $66a3: $00
    nop                                           ; $66a4: $00
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    nop                                           ; $66a7: $00
    nop                                           ; $66a8: $00
    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    nop                                           ; $66ab: $00
    nop                                           ; $66ac: $00
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    nop                                           ; $66af: $00
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    nop                                           ; $66b3: $00
    nop                                           ; $66b4: $00
    nop                                           ; $66b5: $00
    nop                                           ; $66b6: $00
    nop                                           ; $66b7: $00
    ld bc, $0302                                  ; $66b8: $01 $02 $03
    inc b                                         ; $66bb: $04
    dec b                                         ; $66bc: $05
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    nop                                           ; $66bf: $00
    nop                                           ; $66c0: $00
    nop                                           ; $66c1: $00
    nop                                           ; $66c2: $00
    nop                                           ; $66c3: $00
    nop                                           ; $66c4: $00
    nop                                           ; $66c5: $00
    nop                                           ; $66c6: $00
    nop                                           ; $66c7: $00
    nop                                           ; $66c8: $00
    nop                                           ; $66c9: $00
    nop                                           ; $66ca: $00
    nop                                           ; $66cb: $00
    nop                                           ; $66cc: $00
    nop                                           ; $66cd: $00
    nop                                           ; $66ce: $00
    nop                                           ; $66cf: $00
    nop                                           ; $66d0: $00
    ld b, $07                                     ; $66d1: $06 $07
    ld [$0000], sp                                ; $66d3: $08 $00 $00
    add hl, bc                                    ; $66d6: $09
    ld a, [bc]                                    ; $66d7: $0a
    ld a, [bc]                                    ; $66d8: $0a
    ld a, [bc]                                    ; $66d9: $0a
    dec bc                                        ; $66da: $0b
    nop                                           ; $66db: $00
    inc c                                         ; $66dc: $0c
    dec c                                         ; $66dd: $0d
    ld c, $0e                                     ; $66de: $0e $0e
    ld c, $0e                                     ; $66e0: $0e $0e
    ld c, $0e                                     ; $66e2: $0e $0e
    rrca                                          ; $66e4: $0f
    db $10                                        ; $66e5: $10
    db $10                                        ; $66e6: $10
    db $10                                        ; $66e7: $10
    db $10                                        ; $66e8: $10
    db $10                                        ; $66e9: $10
    db $10                                        ; $66ea: $10
    db $10                                        ; $66eb: $10
    ld de, $0303                                  ; $66ec: $11 $03 $03
    ld [de], a                                    ; $66ef: $12
    ld [de], a                                    ; $66f0: $12
    ld [de], a                                    ; $66f1: $12
    nop                                           ; $66f2: $00
    nop                                           ; $66f3: $00
    inc de                                        ; $66f4: $13
    inc d                                         ; $66f5: $14
    dec d                                         ; $66f6: $15
    dec d                                         ; $66f7: $15
    dec bc                                        ; $66f8: $0b
    nop                                           ; $66f9: $00
    ld d, $17                                     ; $66fa: $16 $17
    jr jr_0a8_6716                                ; $66fc: $18 $18

    inc d                                         ; $66fe: $14
    rla                                           ; $66ff: $17
    jr jr_0a8_671a                                ; $6700: $18 $18

    jr jr_0a8_671c                                ; $6702: $18 $18

    jr jr_0a8_671e                                ; $6704: $18 $18

    jr jr_0a8_6720                                ; $6706: $18 $18

    jr jr_0a8_6722                                ; $6708: $18 $18

    jr jr_0a8_6724                                ; $670a: $18 $18

    inc d                                         ; $670c: $14
    add hl, de                                    ; $670d: $19
    ld [de], a                                    ; $670e: $12
    ld a, [de]                                    ; $670f: $1a
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    dec de                                        ; $6712: $1b
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00

jr_0a8_6716:
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    ld d, $1c                                     ; $6718: $16 $1c

jr_0a8_671a:
    nop                                           ; $671a: $00
    nop                                           ; $671b: $00

jr_0a8_671c:
    dec e                                         ; $671c: $1d
    inc e                                         ; $671d: $1c

jr_0a8_671e:
    nop                                           ; $671e: $00
    nop                                           ; $671f: $00

jr_0a8_6720:
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00

jr_0a8_6722:
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00

jr_0a8_6724:
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    nop                                           ; $672b: $00
    ld e, $1f                                     ; $672c: $1e $1f
    nop                                           ; $672e: $00
    nop                                           ; $672f: $00
    jr nz, jr_0a8_6735                            ; $6730: $20 $03

    ld hl, $0807                                  ; $6732: $21 $07 $08

jr_0a8_6735:
    nop                                           ; $6735: $00
    ld d, $1c                                     ; $6736: $16 $1c
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    dec e                                         ; $673a: $1d
    inc e                                         ; $673b: $1c
    nop                                           ; $673c: $00
    nop                                           ; $673d: $00
    nop                                           ; $673e: $00
    nop                                           ; $673f: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    ld [hl+], a                                   ; $6745: $22
    inc hl                                        ; $6746: $23
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    nop                                           ; $674b: $00
    nop                                           ; $674c: $00
    nop                                           ; $674d: $00
    inc h                                         ; $674e: $24
    dec h                                         ; $674f: $25
    ld h, $0a                                     ; $6750: $26 $0a
    daa                                           ; $6752: $27
    nop                                           ; $6753: $00
    ld d, $1c                                     ; $6754: $16 $1c
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    dec e                                         ; $6758: $1d
    jr z, jr_0a8_6769                             ; $6759: $28 $0e

    ld c, $0e                                     ; $675b: $0e $0e
    ld c, $29                                     ; $675d: $0e $29
    inc bc                                        ; $675f: $03
    ld a, [hl+]                                   ; $6760: $2a
    dec hl                                        ; $6761: $2b
    nop                                           ; $6762: $00
    ld d, $2c                                     ; $6763: $16 $2c
    inc bc                                        ; $6765: $03
    inc bc                                        ; $6766: $03
    inc bc                                        ; $6767: $03
    dec l                                         ; $6768: $2d

jr_0a8_6769:
    ld l, $00                                     ; $6769: $2e $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    nop                                           ; $676d: $00
    cpl                                           ; $676e: $2f
    jr nc, jr_0a8_6798                            ; $676f: $30 $27

    nop                                           ; $6771: $00
    ld d, $1c                                     ; $6772: $16 $1c
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    ld sp, $0a32                                  ; $6776: $31 $32 $0a
    inc sp                                        ; $6779: $33
    inc [hl]                                      ; $677a: $34
    jr @+$27                                      ; $677b: $18 $25

    dec d                                         ; $677d: $15
    ld h, $1c                                     ; $677e: $26 $1c
    nop                                           ; $6780: $00
    ld d, $0a                                     ; $6781: $16 $0a
    ld a, [bc]                                    ; $6783: $0a
    ld a, [bc]                                    ; $6784: $0a
    ld a, [bc]                                    ; $6785: $0a
    ld a, [bc]                                    ; $6786: $0a
    dec [hl]                                      ; $6787: $35
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678a: $00
    nop                                           ; $678b: $00
    nop                                           ; $678c: $00
    ld d, $27                                     ; $678d: $16 $27
    nop                                           ; $678f: $00
    ld d, $1c                                     ; $6790: $16 $1c
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    dec e                                         ; $6795: $1d
    ld a, [bc]                                    ; $6796: $0a
    daa                                           ; $6797: $27

jr_0a8_6798:
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    ld [hl], $37                                  ; $679c: $36 $37
    nop                                           ; $679e: $00
    ld d, $33                                     ; $679f: $16 $33
    jr c, jr_0a8_67db                             ; $67a1: $38 $38

    jr c, jr_0a8_67de                             ; $67a3: $38 $39

    ld a, [hl-]                                   ; $67a5: $3a
    nop                                           ; $67a6: $00
    nop                                           ; $67a7: $00
    nop                                           ; $67a8: $00
    nop                                           ; $67a9: $00
    nop                                           ; $67aa: $00
    ld d, $27                                     ; $67ab: $16 $27
    nop                                           ; $67ad: $00
    ld d, $1c                                     ; $67ae: $16 $1c
    rlca                                          ; $67b0: $07
    ld l, $00                                     ; $67b1: $2e $00
    dec e                                         ; $67b3: $1d
    ld a, [bc]                                    ; $67b4: $0a
    daa                                           ; $67b5: $27
    nop                                           ; $67b6: $00
    nop                                           ; $67b7: $00
    nop                                           ; $67b8: $00
    nop                                           ; $67b9: $00
    nop                                           ; $67ba: $00
    nop                                           ; $67bb: $00
    nop                                           ; $67bc: $00
    ld d, $27                                     ; $67bd: $16 $27
    nop                                           ; $67bf: $00
    nop                                           ; $67c0: $00
    nop                                           ; $67c1: $00
    nop                                           ; $67c2: $00
    nop                                           ; $67c3: $00
    nop                                           ; $67c4: $00
    nop                                           ; $67c5: $00
    add hl, bc                                    ; $67c6: $09
    ld c, $0e                                     ; $67c7: $0e $0e
    dec sp                                        ; $67c9: $3b
    inc a                                         ; $67ca: $3c
    ld c, $3b                                     ; $67cb: $0e $3b
    ld a, [bc]                                    ; $67cd: $0a
    ld a, [bc]                                    ; $67ce: $0a
    dec [hl]                                      ; $67cf: $35
    nop                                           ; $67d0: $00
    dec a                                         ; $67d1: $3d
    ld a, $3f                                     ; $67d2: $3e $3f
    nop                                           ; $67d4: $00
    ld [hl+], a                                   ; $67d5: $22
    ld b, b                                       ; $67d6: $40
    db $10                                        ; $67d7: $10
    db $10                                        ; $67d8: $10
    db $10                                        ; $67d9: $10
    db $10                                        ; $67da: $10

jr_0a8_67db:
    ld b, c                                       ; $67db: $41
    ld b, d                                       ; $67dc: $42
    rlca                                          ; $67dd: $07

jr_0a8_67de:
    rlca                                          ; $67de: $07
    rlca                                          ; $67df: $07
    rlca                                          ; $67e0: $07
    dec b                                         ; $67e1: $05
    nop                                           ; $67e2: $00
    nop                                           ; $67e3: $00
    ld [hl], $38                                  ; $67e4: $36 $38
    jr c, jr_0a8_682b                             ; $67e6: $38 $43

    ld b, h                                       ; $67e8: $44
    jr c, @+$47                                   ; $67e9: $38 $45

    cpl                                           ; $67eb: $2f
    ld b, [hl]                                    ; $67ec: $46
    dec [hl]                                      ; $67ed: $35
    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    cpl                                           ; $67f0: $2f
    ld b, a                                       ; $67f1: $47
    nop                                           ; $67f2: $00
    ld d, $17                                     ; $67f3: $16 $17
    jr jr_0a8_680f                                ; $67f5: $18 $18

    jr jr_0a8_6811                                ; $67f7: $18 $18

    ld c, b                                       ; $67f9: $48
    dec d                                         ; $67fa: $15
    dec d                                         ; $67fb: $15
    dec d                                         ; $67fc: $15
    dec d                                         ; $67fd: $15
    ld c, c                                       ; $67fe: $49
    dec bc                                        ; $67ff: $0b
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    ld d, $1c                                     ; $6805: $16 $1c
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    ld d, $35                                     ; $680a: $16 $35
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    nop                                           ; $680e: $00

jr_0a8_680f:
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00

Call_0a8_6811:
jr_0a8_6811:
    ld d, $1c                                     ; $6811: $16 $1c
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    nop                                           ; $681a: $00
    nop                                           ; $681b: $00
    ld c, d                                       ; $681c: $4a
    dec bc                                        ; $681d: $0b
    nop                                           ; $681e: $00
    nop                                           ; $681f: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    ld d, $1c                                     ; $6823: $16 $1c
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    ld d, $35                                     ; $6828: $16 $35
    nop                                           ; $682a: $00

jr_0a8_682b:
    nop                                           ; $682b: $00
    nop                                           ; $682c: $00
    nop                                           ; $682d: $00
    nop                                           ; $682e: $00
    ld d, $1c                                     ; $682f: $16 $1c
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    rlca                                          ; $6833: $07
    ld c, e                                       ; $6834: $4b
    add hl, de                                    ; $6835: $19
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    ld c, d                                       ; $683a: $4a
    dec bc                                        ; $683b: $0b
    nop                                           ; $683c: $00
    nop                                           ; $683d: $00
    ld c, h                                       ; $683e: $4c
    rlca                                          ; $683f: $07
    dec b                                         ; $6840: $05
    ld d, $4d                                     ; $6841: $16 $4d
    ld c, [hl]                                    ; $6843: $4e
    ld hl, $1600                                  ; $6844: $21 $00 $16
    ld c, a                                       ; $6847: $4f
    ld c, $0e                                     ; $6848: $0e $0e
    ld c, $0e                                     ; $684a: $0e $0e
    ld c, $3b                                     ; $684c: $0e $3b
    jr z, jr_0a8_685e                             ; $684e: $28 $0e

    ld d, b                                       ; $6850: $50
    ld [de], a                                    ; $6851: $12
    ld d, c                                       ; $6852: $51
    add hl, de                                    ; $6853: $19
    nop                                           ; $6854: $00
    ld d, d                                       ; $6855: $52
    ld d, e                                       ; $6856: $53
    ld c, $54                                     ; $6857: $0e $54
    dec bc                                        ; $6859: $0b
    nop                                           ; $685a: $00
    nop                                           ; $685b: $00
    ld c, d                                       ; $685c: $4a
    ld a, [bc]                                    ; $685d: $0a

jr_0a8_685e:
    ld c, $3b                                     ; $685e: $0e $3b

Jump_0a8_6860:
    ld d, l                                       ; $6860: $55
    ld d, [hl]                                    ; $6861: $56
    ld d, a                                       ; $6862: $57
    nop                                           ; $6863: $00
    ld e, b                                       ; $6864: $58
    jr jr_0a8_687f                                ; $6865: $18 $18

    jr jr_0a8_6881                                ; $6867: $18 $18

    ld e, c                                       ; $6869: $59
    scf                                           ; $686a: $37
    cpl                                           ; $686b: $2f
    cpl                                           ; $686c: $2f
    ld b, [hl]                                    ; $686d: $46
    ld e, d                                       ; $686e: $5a
    ld [de], a                                    ; $686f: $12
    ld [de], a                                    ; $6870: $12
    add hl, de                                    ; $6871: $19
    nop                                           ; $6872: $00
    ld e, e                                       ; $6873: $5b
    jr jr_0a8_688e                                ; $6874: $18 $18

    jr jr_0a8_68d4                                ; $6876: $18 $5c

    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    ld e, l                                       ; $687a: $5d
    jr c, jr_0a8_68c2                             ; $687b: $38 $45

    cpl                                           ; $687d: $2f
    cpl                                           ; $687e: $2f

jr_0a8_687f:
    nop                                           ; $687f: $00
    nop                                           ; $6880: $00

jr_0a8_6881:
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    ld e, [hl]                                    ; $688b: $5e
    cpl                                           ; $688c: $2f
    cpl                                           ; $688d: $2f

jr_0a8_688e:
    cpl                                           ; $688e: $2f
    ld b, a                                       ; $688f: $47
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    inc c                                         ; $6897: $0c
    inc c                                         ; $6898: $0c
    nop                                           ; $6899: $00
    nop                                           ; $689a: $00
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    nop                                           ; $689d: $00
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    nop                                           ; $68a0: $00
    nop                                           ; $68a1: $00
    nop                                           ; $68a2: $00
    nop                                           ; $68a3: $00
    nop                                           ; $68a4: $00
    nop                                           ; $68a5: $00
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    nop                                           ; $68ae: $00
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    ld bc, $0002                                  ; $68b6: $01 $02 $00
    nop                                           ; $68b9: $00
    nop                                           ; $68ba: $00
    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    nop                                           ; $68bd: $00
    nop                                           ; $68be: $00
    nop                                           ; $68bf: $00
    nop                                           ; $68c0: $00
    nop                                           ; $68c1: $00

jr_0a8_68c2:
    inc bc                                        ; $68c2: $03
    inc b                                         ; $68c3: $04
    nop                                           ; $68c4: $00
    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    nop                                           ; $68c9: $00
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    nop                                           ; $68cc: $00
    nop                                           ; $68cd: $00
    inc bc                                        ; $68ce: $03
    inc b                                         ; $68cf: $04
    nop                                           ; $68d0: $00
    nop                                           ; $68d1: $00
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00

jr_0a8_68d4:
    nop                                           ; $68d4: $00
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    nop                                           ; $68d7: $00
    nop                                           ; $68d8: $00
    nop                                           ; $68d9: $00
    inc bc                                        ; $68da: $03
    dec b                                         ; $68db: $05
    ld b, $07                                     ; $68dc: $06 $07
    ld [$0a09], sp                                ; $68de: $08 $09 $0a
    nop                                           ; $68e1: $00
    dec bc                                        ; $68e2: $0b
    add hl, bc                                    ; $68e3: $09
    inc c                                         ; $68e4: $0c
    dec c                                         ; $68e5: $0d
    ld c, $0f                                     ; $68e6: $0e $0f
    db $10                                        ; $68e8: $10
    db $10                                        ; $68e9: $10
    ld de, $1312                                  ; $68ea: $11 $12 $13
    nop                                           ; $68ed: $00
    inc d                                         ; $68ee: $14
    dec d                                         ; $68ef: $15
    dec d                                         ; $68f0: $15
    dec d                                         ; $68f1: $15
    dec d                                         ; $68f2: $15
    inc b                                         ; $68f3: $04
    nop                                           ; $68f4: $00
    nop                                           ; $68f5: $00
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    nop                                           ; $68f9: $00
    ld d, $17                                     ; $68fa: $16 $17
    rla                                           ; $68fc: $17
    rla                                           ; $68fd: $17
    jr jr_0a8_6904                                ; $68fe: $18 $04

    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00

jr_0a8_6904:
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    add hl, de                                    ; $690a: $19
    inc b                                         ; $690b: $04
    nop                                           ; $690c: $00
    ld a, [de]                                    ; $690d: $1a
    dec de                                        ; $690e: $1b
    dec de                                        ; $690f: $1b
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    inc e                                         ; $6915: $1c
    dec e                                         ; $6916: $1d
    ld e, $1f                                     ; $6917: $1e $1f
    jr nz, jr_0a8_693c                            ; $6919: $20 $21

    ld [bc], a                                    ; $691b: $02
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    nop                                           ; $691e: $00
    nop                                           ; $691f: $00
    nop                                           ; $6920: $00
    ld [hl+], a                                   ; $6921: $22
    inc hl                                        ; $6922: $23
    inc hl                                        ; $6923: $23
    inc hl                                        ; $6924: $23
    inc h                                         ; $6925: $24
    dec h                                         ; $6926: $25
    ld h, $00                                     ; $6927: $26 $00
    inc h                                         ; $6929: $24
    ld b, $00                                     ; $692a: $06 $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    nop                                           ; $692e: $00
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693a: $00
    nop                                           ; $693b: $00

jr_0a8_693c:
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    nop                                           ; $693e: $00
    nop                                           ; $693f: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    nop                                           ; $696e: $00
    nop                                           ; $696f: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    ld bc, $0000                                  ; $6974: $01 $00 $00
    nop                                           ; $6977: $00
    ld bc, $0000                                  ; $6978: $01 $00 $00
    nop                                           ; $697b: $00
    ld bc, $0000                                  ; $697c: $01 $00 $00
    nop                                           ; $697f: $00
    ld [bc], a                                    ; $6980: $02
    inc bc                                        ; $6981: $03
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    ld [bc], a                                    ; $6984: $02
    inc bc                                        ; $6985: $03
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    ld [bc], a                                    ; $6988: $02
    inc bc                                        ; $6989: $03
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    nop                                           ; $698c: $00
    ld bc, $0000                                  ; $698d: $01 $00 $00
    nop                                           ; $6990: $00
    ld bc, $0000                                  ; $6991: $01 $00 $00
    nop                                           ; $6994: $00
    ld bc, $0400                                  ; $6995: $01 $00 $04
    dec b                                         ; $6998: $05
    ld b, $00                                     ; $6999: $06 $00
    inc b                                         ; $699b: $04
    dec b                                         ; $699c: $05
    ld b, $00                                     ; $699d: $06 $00
    inc b                                         ; $699f: $04
    dec b                                         ; $69a0: $05
    ld b, $00                                     ; $69a1: $06 $00
    rlca                                          ; $69a3: $07
    ld [$0a09], sp                                ; $69a4: $08 $09 $0a
    rlca                                          ; $69a7: $07
    ld [$0a09], sp                                ; $69a8: $08 $09 $0a
    rlca                                          ; $69ab: $07
    ld [$0a09], sp                                ; $69ac: $08 $09 $0a
    nop                                           ; $69af: $00
    inc b                                         ; $69b0: $04
    dec b                                         ; $69b1: $05
    ld b, $00                                     ; $69b2: $06 $00
    inc b                                         ; $69b4: $04
    dec b                                         ; $69b5: $05
    ld b, $00                                     ; $69b6: $06 $00
    inc b                                         ; $69b8: $04
    dec b                                         ; $69b9: $05
    ld b, $0b                                     ; $69ba: $06 $0b
    dec b                                         ; $69bc: $05
    inc c                                         ; $69bd: $0c
    dec c                                         ; $69be: $0d
    ld c, $05                                     ; $69bf: $0e $05
    inc c                                         ; $69c1: $0c
    dec c                                         ; $69c2: $0d
    ld c, $05                                     ; $69c3: $0e $05
    inc c                                         ; $69c5: $0c
    dec c                                         ; $69c6: $0d
    rrca                                          ; $69c7: $0f
    dec b                                         ; $69c8: $05
    dec b                                         ; $69c9: $05
    db $10                                        ; $69ca: $10
    rrca                                          ; $69cb: $0f
    dec b                                         ; $69cc: $05
    dec b                                         ; $69cd: $05
    db $10                                        ; $69ce: $10
    rrca                                          ; $69cf: $0f
    dec b                                         ; $69d0: $05
    dec b                                         ; $69d1: $05
    db $10                                        ; $69d2: $10
    dec c                                         ; $69d3: $0d
    ld c, $05                                     ; $69d4: $0e $05
    inc c                                         ; $69d6: $0c
    dec c                                         ; $69d7: $0d
    ld c, $05                                     ; $69d8: $0e $05
    inc c                                         ; $69da: $0c
    dec c                                         ; $69db: $0d
    ld c, $05                                     ; $69dc: $0e $05
    ld de, $0000                                  ; $69de: $11 $00 $00
    nop                                           ; $69e1: $00
    nop                                           ; $69e2: $00
    nop                                           ; $69e3: $00
    nop                                           ; $69e4: $00
    nop                                           ; $69e5: $00
    nop                                           ; $69e6: $00
    nop                                           ; $69e7: $00
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    nop                                           ; $69eb: $00
    nop                                           ; $69ec: $00
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    nop                                           ; $69f3: $00
    nop                                           ; $69f4: $00
    nop                                           ; $69f5: $00
    nop                                           ; $69f6: $00
    nop                                           ; $69f7: $00
    nop                                           ; $69f8: $00
    nop                                           ; $69f9: $00
    nop                                           ; $69fa: $00
    nop                                           ; $69fb: $00
    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    ld [$0007], sp                                ; $6a03: $08 $07 $00
    nop                                           ; $6a06: $00
    nop                                           ; $6a07: $00
    nop                                           ; $6a08: $00
    nop                                           ; $6a09: $00
    nop                                           ; $6a0a: $00
    nop                                           ; $6a0b: $00
    nop                                           ; $6a0c: $00
    ld bc, $0302                                  ; $6a0d: $01 $02 $03
    inc b                                         ; $6a10: $04
    dec b                                         ; $6a11: $05
    ld b, $07                                     ; $6a12: $06 $07
    nop                                           ; $6a14: $00
    ld [$0a09], sp                                ; $6a15: $08 $09 $0a
    dec bc                                        ; $6a18: $0b
    inc c                                         ; $6a19: $0c
    dec c                                         ; $6a1a: $0d
    ld c, $00                                     ; $6a1b: $0e $00
    ld [$0f09], sp                                ; $6a1d: $08 $09 $0f
    db $10                                        ; $6a20: $10
    ld de, $120f                                  ; $6a21: $11 $0f $12
    inc de                                        ; $6a24: $13
    ld [$0d09], sp                                ; $6a25: $08 $09 $0d
    inc d                                         ; $6a28: $14
    inc c                                         ; $6a29: $0c
    dec c                                         ; $6a2a: $0d
    dec d                                         ; $6a2b: $15
    ld d, $08                                     ; $6a2c: $16 $08
    add hl, bc                                    ; $6a2e: $09
    rrca                                          ; $6a2f: $0f
    db $10                                        ; $6a30: $10
    ld de, $0e0f                                  ; $6a31: $11 $0f $0e
    nop                                           ; $6a34: $00
    rla                                           ; $6a35: $17
    jr jr_0a8_6a50                                ; $6a36: $18 $18

    jr jr_0a8_6a52                                ; $6a38: $18 $18

    jr jr_0a8_6a55                                ; $6a3a: $18 $19

    nop                                           ; $6a3c: $00
    ld a, [bc]                                    ; $6a3d: $0a
    ld a, [bc]                                    ; $6a3e: $0a
    nop                                           ; $6a3f: $00
    nop                                           ; $6a40: $00
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    nop                                           ; $6a44: $00
    nop                                           ; $6a45: $00
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    ld bc, $0302                                  ; $6a4b: $01 $02 $03
    ld [bc], a                                    ; $6a4e: $02
    ld [bc], a                                    ; $6a4f: $02

jr_0a8_6a50:
    inc b                                         ; $6a50: $04
    nop                                           ; $6a51: $00

jr_0a8_6a52:
    nop                                           ; $6a52: $00
    nop                                           ; $6a53: $00
    nop                                           ; $6a54: $00

jr_0a8_6a55:
    dec b                                         ; $6a55: $05
    ld b, $00                                     ; $6a56: $06 $00
    rlca                                          ; $6a58: $07
    ld b, $08                                     ; $6a59: $06 $08
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    dec b                                         ; $6a5f: $05
    ld b, $09                                     ; $6a60: $06 $09
    ld a, [bc]                                    ; $6a62: $0a
    ld b, $08                                     ; $6a63: $06 $08
    nop                                           ; $6a65: $00
    nop                                           ; $6a66: $00
    nop                                           ; $6a67: $00
    nop                                           ; $6a68: $00
    dec b                                         ; $6a69: $05
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00
    rlca                                          ; $6a6d: $07
    ld [$0000], sp                                ; $6a6e: $08 $00 $00
    nop                                           ; $6a71: $00
    nop                                           ; $6a72: $00
    dec b                                         ; $6a73: $05
    dec bc                                        ; $6a74: $0b
    inc c                                         ; $6a75: $0c
    dec c                                         ; $6a76: $0d
    ld c, $08                                     ; $6a77: $0e $08
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    nop                                           ; $6a7b: $00
    nop                                           ; $6a7c: $00
    dec b                                         ; $6a7d: $05
    rrca                                          ; $6a7e: $0f
    rrca                                          ; $6a7f: $0f
    rrca                                          ; $6a80: $0f
    db $10                                        ; $6a81: $10
    ld [$0000], sp                                ; $6a82: $08 $00 $00
    nop                                           ; $6a85: $00
    nop                                           ; $6a86: $00
    dec b                                         ; $6a87: $05
    ld de, $1312                                  ; $6a88: $11 $12 $13
    inc d                                         ; $6a8b: $14
    dec d                                         ; $6a8c: $15
    nop                                           ; $6a8d: $00
    nop                                           ; $6a8e: $00
    ld d, $17                                     ; $6a8f: $16 $17
    jr jr_0a8_6a99                                ; $6a91: $18 $06

    ld b, $06                                     ; $6a93: $06 $06
    ld b, $19                                     ; $6a95: $06 $19
    ld a, [de]                                    ; $6a97: $1a
    dec de                                        ; $6a98: $1b

jr_0a8_6a99:
    inc e                                         ; $6a99: $1c
    dec e                                         ; $6a9a: $1d
    ld e, $1e                                     ; $6a9b: $1e $1e
    ld e, $1e                                     ; $6a9d: $1e $1e
    ld e, $1e                                     ; $6a9f: $1e $1e
    ld e, $1f                                     ; $6aa1: $1e $1f
    add hl, bc                                    ; $6aa3: $09
    ld a, [bc]                                    ; $6aa4: $0a
    nop                                           ; $6aa5: $00
    nop                                           ; $6aa6: $00
    nop                                           ; $6aa7: $00
    nop                                           ; $6aa8: $00
    nop                                           ; $6aa9: $00
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    nop                                           ; $6aac: $00
    nop                                           ; $6aad: $00
    ld bc, $0302                                  ; $6aae: $01 $02 $03
    inc bc                                        ; $6ab1: $03
    inc b                                         ; $6ab2: $04
    dec b                                         ; $6ab3: $05
    nop                                           ; $6ab4: $00
    nop                                           ; $6ab5: $00
    nop                                           ; $6ab6: $00
    ld b, $07                                     ; $6ab7: $06 $07
    ld [$0709], sp                                ; $6ab9: $08 $09 $07
    ld a, [bc]                                    ; $6abc: $0a
    nop                                           ; $6abd: $00
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    ld b, $07                                     ; $6ac0: $06 $07
    dec bc                                        ; $6ac2: $0b
    inc c                                         ; $6ac3: $0c
    dec c                                         ; $6ac4: $0d
    ld c, $00                                     ; $6ac5: $0e $00
    nop                                           ; $6ac7: $00
    nop                                           ; $6ac8: $00
    ld b, $07                                     ; $6ac9: $06 $07
    ld [$070c], sp                                ; $6acb: $08 $0c $07
    rrca                                          ; $6ace: $0f
    db $10                                        ; $6acf: $10
    stop                                          ; $6ad0: $10 $00
    ld de, $0b0d                                  ; $6ad2: $11 $0d $0b
    inc c                                         ; $6ad5: $0c
    rlca                                          ; $6ad6: $07
    ld [de], a                                    ; $6ad7: $12
    inc de                                        ; $6ad8: $13
    inc d                                         ; $6ad9: $14
    nop                                           ; $6ada: $00
    ld b, $07                                     ; $6adb: $06 $07
    ld [$070c], sp                                ; $6add: $08 $0c $07
    ld a, [bc]                                    ; $6ae0: $0a
    nop                                           ; $6ae1: $00
    nop                                           ; $6ae2: $00
    nop                                           ; $6ae3: $00
    ld b, $07                                     ; $6ae4: $06 $07
    dec c                                         ; $6ae6: $0d
    dec c                                         ; $6ae7: $0d
    rlca                                          ; $6ae8: $07
    ld a, [bc]                                    ; $6ae9: $0a
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    ld b, $07                                     ; $6aed: $06 $07
    dec d                                         ; $6aef: $15
    ld d, $07                                     ; $6af0: $16 $07
    ld a, [bc]                                    ; $6af2: $0a
    nop                                           ; $6af3: $00
    nop                                           ; $6af4: $00
    nop                                           ; $6af5: $00
    rla                                           ; $6af6: $17
    jr jr_0a8_6b12                                ; $6af7: $18 $19

    ld a, [de]                                    ; $6af9: $1a
    jr jr_0a8_6b17                                ; $6afa: $18 $1b

    nop                                           ; $6afc: $00
    nop                                           ; $6afd: $00
    nop                                           ; $6afe: $00
    inc c                                         ; $6aff: $0c
    dec bc                                        ; $6b00: $0b
    nop                                           ; $6b01: $00
    nop                                           ; $6b02: $00
    nop                                           ; $6b03: $00
    nop                                           ; $6b04: $00
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    nop                                           ; $6b07: $00
    nop                                           ; $6b08: $00
    nop                                           ; $6b09: $00
    nop                                           ; $6b0a: $00
    nop                                           ; $6b0b: $00
    nop                                           ; $6b0c: $00
    ld bc, $0302                                  ; $6b0d: $01 $02 $03
    inc bc                                        ; $6b10: $03
    inc bc                                        ; $6b11: $03

jr_0a8_6b12:
    inc b                                         ; $6b12: $04
    dec b                                         ; $6b13: $05
    inc bc                                        ; $6b14: $03
    inc bc                                        ; $6b15: $03
    inc bc                                        ; $6b16: $03

jr_0a8_6b17:
    ld b, $07                                     ; $6b17: $06 $07
    ld [$0a09], sp                                ; $6b19: $08 $09 $0a
    ld a, [bc]                                    ; $6b1c: $0a
    ld a, [bc]                                    ; $6b1d: $0a
    dec bc                                        ; $6b1e: $0b
    inc c                                         ; $6b1f: $0c
    ld a, [bc]                                    ; $6b20: $0a
    dec c                                         ; $6b21: $0d
    ld c, $0f                                     ; $6b22: $0e $0f
    db $10                                        ; $6b24: $10
    ld [$1109], sp                                ; $6b25: $08 $09 $11
    ld de, $1111                                  ; $6b28: $11 $11 $11
    ld de, $1211                                  ; $6b2b: $11 $11 $12
    inc de                                        ; $6b2e: $13
    rrca                                          ; $6b2f: $0f
    db $10                                        ; $6b30: $10
    ld [$1109], sp                                ; $6b31: $08 $09 $11
    ld de, $1411                                  ; $6b34: $11 $11 $14
    dec d                                         ; $6b37: $15
    ld de, $1716                                  ; $6b38: $11 $16 $17
    rrca                                          ; $6b3b: $0f
    db $10                                        ; $6b3c: $10
    ld [$1111], sp                                ; $6b3d: $08 $11 $11
    ld de, $1918                                  ; $6b40: $11 $18 $19
    ld a, [de]                                    ; $6b43: $1a
    dec de                                        ; $6b44: $1b
    ld de, $1111                                  ; $6b45: $11 $11 $11
    db $10                                        ; $6b48: $10
    ld [$1c09], sp                                ; $6b49: $08 $09 $1c
    dec e                                         ; $6b4c: $1d
    ld e, $00                                     ; $6b4d: $1e $00
    nop                                           ; $6b4f: $00
    rra                                           ; $6b50: $1f
    jr nz, jr_0a8_6b74                            ; $6b51: $20 $21

    rrca                                          ; $6b53: $0f
    db $10                                        ; $6b54: $10
    ld [$0909], sp                                ; $6b55: $08 $09 $09
    ld [hl+], a                                   ; $6b58: $22
    inc hl                                        ; $6b59: $23
    inc h                                         ; $6b5a: $24
    dec h                                         ; $6b5b: $25
    ld h, $12                                     ; $6b5c: $26 $12
    daa                                           ; $6b5e: $27
    rrca                                          ; $6b5f: $0f
    db $10                                        ; $6b60: $10
    ld [$1109], sp                                ; $6b61: $08 $09 $11
    ld de, $1111                                  ; $6b64: $11 $11 $11
    ld de, $1111                                  ; $6b67: $11 $11 $11
    jr z, @+$11                                   ; $6b6a: $28 $0f

    db $10                                        ; $6b6c: $10
    add hl, hl                                    ; $6b6d: $29
    ld a, [hl+]                                   ; $6b6e: $2a
    dec hl                                        ; $6b6f: $2b
    dec hl                                        ; $6b70: $2b
    dec hl                                        ; $6b71: $2b
    inc l                                         ; $6b72: $2c
    dec l                                         ; $6b73: $2d

jr_0a8_6b74:
    dec hl                                        ; $6b74: $2b
    dec hl                                        ; $6b75: $2b
    dec hl                                        ; $6b76: $2b
    ld l, $2f                                     ; $6b77: $2e $2f
    nop                                           ; $6b79: $00
    jr nc, @+$33                                  ; $6b7a: $30 $31

    ld sp, $3131                                  ; $6b7c: $31 $31 $31
    ld sp, $3131                                  ; $6b7f: $31 $31 $31
    ld sp, $0032                                  ; $6b82: $31 $32 $00
    dec b                                         ; $6b85: $05
    dec b                                         ; $6b86: $05
    nop                                           ; $6b87: $00
    nop                                           ; $6b88: $00
    nop                                           ; $6b89: $00
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    ld bc, $0302                                  ; $6b8d: $01 $02 $03
    inc b                                         ; $6b90: $04
    nop                                           ; $6b91: $00
    dec b                                         ; $6b92: $05
    ld b, $07                                     ; $6b93: $06 $07
    nop                                           ; $6b95: $00
    ld [$0609], sp                                ; $6b96: $08 $09 $06
    rlca                                          ; $6b99: $07
    nop                                           ; $6b9a: $00
    ld a, [bc]                                    ; $6b9b: $0a
    dec bc                                        ; $6b9c: $0b
    inc c                                         ; $6b9d: $0c
    dec c                                         ; $6b9e: $0d
    nop                                           ; $6b9f: $00
    dec b                                         ; $6ba0: $05
    dec b                                         ; $6ba1: $05
    nop                                           ; $6ba2: $00
    nop                                           ; $6ba3: $00
    nop                                           ; $6ba4: $00
    nop                                           ; $6ba5: $00
    nop                                           ; $6ba6: $00
    nop                                           ; $6ba7: $00
    nop                                           ; $6ba8: $00
    ld bc, $0002                                  ; $6ba9: $01 $02 $00
    ld bc, $0403                                  ; $6bac: $01 $03 $04
    dec b                                         ; $6baf: $05
    ld b, $07                                     ; $6bb0: $06 $07
    dec b                                         ; $6bb2: $05
    dec b                                         ; $6bb3: $05
    dec b                                         ; $6bb4: $05
    ld [$0a09], sp                                ; $6bb5: $08 $09 $0a
    dec bc                                        ; $6bb8: $0b
    ld a, [bc]                                    ; $6bb9: $0a
    inc c                                         ; $6bba: $0c
    ld [$000c], sp                                ; $6bbb: $08 $0c $00
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    nop                                           ; $6bc0: $00
    nop                                           ; $6bc1: $00
    nop                                           ; $6bc2: $00
    nop                                           ; $6bc3: $00
    nop                                           ; $6bc4: $00
    nop                                           ; $6bc5: $00
    nop                                           ; $6bc6: $00
    nop                                           ; $6bc7: $00
    nop                                           ; $6bc8: $00
    nop                                           ; $6bc9: $00
    nop                                           ; $6bca: $00
    nop                                           ; $6bcb: $00
    nop                                           ; $6bcc: $00
    ld bc, $0302                                  ; $6bcd: $01 $02 $03
    inc b                                         ; $6bd0: $04
    dec b                                         ; $6bd1: $05
    inc bc                                        ; $6bd2: $03
    inc bc                                        ; $6bd3: $03
    ld b, $07                                     ; $6bd4: $06 $07
    ld [$0009], sp                                ; $6bd6: $08 $09 $00
    ld a, [bc]                                    ; $6bd9: $0a
    dec bc                                        ; $6bda: $0b
    dec bc                                        ; $6bdb: $0b
    inc c                                         ; $6bdc: $0c
    dec c                                         ; $6bdd: $0d
    ld c, $0f                                     ; $6bde: $0e $0f
    db $10                                        ; $6be0: $10
    ld de, $0e12                                  ; $6be1: $11 $12 $0e
    inc c                                         ; $6be4: $0c
    dec c                                         ; $6be5: $0d
    inc de                                        ; $6be6: $13
    inc d                                         ; $6be7: $14
    dec bc                                        ; $6be8: $0b
    dec bc                                        ; $6be9: $0b
    dec d                                         ; $6bea: $15
    ld d, $0c                                     ; $6beb: $16 $0c
    dec c                                         ; $6bed: $0d
    dec bc                                        ; $6bee: $0b
    dec bc                                        ; $6bef: $0b
    rla                                           ; $6bf0: $17
    jr jr_0a8_6bfe                                ; $6bf1: $18 $0b

    dec bc                                        ; $6bf3: $0b
    inc c                                         ; $6bf4: $0c
    dec c                                         ; $6bf5: $0d
    dec bc                                        ; $6bf6: $0b
    dec bc                                        ; $6bf7: $0b
    add hl, de                                    ; $6bf8: $19
    ld a, [de]                                    ; $6bf9: $1a
    dec bc                                        ; $6bfa: $0b
    dec bc                                        ; $6bfb: $0b
    inc c                                         ; $6bfc: $0c
    dec de                                        ; $6bfd: $1b

jr_0a8_6bfe:
    inc e                                         ; $6bfe: $1c
    inc e                                         ; $6bff: $1c
    dec e                                         ; $6c00: $1d
    ld e, $1c                                     ; $6c01: $1e $1c
    inc e                                         ; $6c03: $1c
    rra                                           ; $6c04: $1f
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    nop                                           ; $6c07: $00
    dec e                                         ; $6c08: $1d
    ld e, $00                                     ; $6c09: $1e $00
    nop                                           ; $6c0b: $00
    nop                                           ; $6c0c: $00
    nop                                           ; $6c0d: $00
    jr nz, @+$23                                  ; $6c0e: $20 $21

    ld [hl+], a                                   ; $6c10: $22
    inc hl                                        ; $6c11: $23
    inc h                                         ; $6c12: $24
    dec h                                         ; $6c13: $25
    nop                                           ; $6c14: $00
    nop                                           ; $6c15: $00
    ld h, $27                                     ; $6c16: $26 $27
    jr z, jr_0a8_6c43                             ; $6c18: $28 $29

    daa                                           ; $6c1a: $27
    ld a, [hl+]                                   ; $6c1b: $2a
    nop                                           ; $6c1c: $00
    ld a, [bc]                                    ; $6c1d: $0a
    dec bc                                        ; $6c1e: $0b
    nop                                           ; $6c1f: $00
    nop                                           ; $6c20: $00
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    nop                                           ; $6c23: $00
    nop                                           ; $6c24: $00
    nop                                           ; $6c25: $00
    nop                                           ; $6c26: $00
    nop                                           ; $6c27: $00
    nop                                           ; $6c28: $00
    ld bc, $0302                                  ; $6c29: $01 $02 $03
    inc b                                         ; $6c2c: $04
    dec b                                         ; $6c2d: $05
    dec b                                         ; $6c2e: $05
    dec b                                         ; $6c2f: $05
    ld b, $00                                     ; $6c30: $06 $00
    nop                                           ; $6c32: $00
    rlca                                          ; $6c33: $07
    ld [$0a09], sp                                ; $6c34: $08 $09 $0a
    dec bc                                        ; $6c37: $0b
    inc c                                         ; $6c38: $0c
    dec c                                         ; $6c39: $0d
    ld c, $0f                                     ; $6c3a: $0e $0f
    nop                                           ; $6c3c: $00
    db $10                                        ; $6c3d: $10
    ld de, $1312                                  ; $6c3e: $11 $12 $13
    inc d                                         ; $6c41: $14
    nop                                           ; $6c42: $00

jr_0a8_6c43:
    dec d                                         ; $6c43: $15
    ld d, $17                                     ; $6c44: $16 $17
    nop                                           ; $6c46: $00
    rlca                                          ; $6c47: $07
    jr jr_0a8_6c51                                ; $6c48: $18 $07

    add hl, de                                    ; $6c4a: $19
    ld a, [de]                                    ; $6c4b: $1a
    dec de                                        ; $6c4c: $1b
    inc e                                         ; $6c4d: $1c
    nop                                           ; $6c4e: $00
    dec e                                         ; $6c4f: $1d
    nop                                           ; $6c50: $00

jr_0a8_6c51:
    rlca                                          ; $6c51: $07
    ld e, $1f                                     ; $6c52: $1e $1f
    jr nz, jr_0a8_6c77                            ; $6c54: $20 $21

    ld [hl+], a                                   ; $6c56: $22
    inc hl                                        ; $6c57: $23
    inc h                                         ; $6c58: $24
    dec h                                         ; $6c59: $25
    nop                                           ; $6c5a: $00
    rlca                                          ; $6c5b: $07
    ld h, $27                                     ; $6c5c: $26 $27
    jr z, jr_0a8_6c74                             ; $6c5e: $28 $14

    nop                                           ; $6c60: $00
    add hl, hl                                    ; $6c61: $29
    ld a, [hl+]                                   ; $6c62: $2a
    dec hl                                        ; $6c63: $2b
    nop                                           ; $6c64: $00
    rlca                                          ; $6c65: $07
    inc l                                         ; $6c66: $2c
    dec l                                         ; $6c67: $2d
    ld l, $2f                                     ; $6c68: $2e $2f
    jr nc, jr_0a8_6c9d                            ; $6c6a: $30 $31

    nop                                           ; $6c6c: $00
    dec e                                         ; $6c6d: $1d
    nop                                           ; $6c6e: $00
    rlca                                          ; $6c6f: $07
    inc d                                         ; $6c70: $14
    nop                                           ; $6c71: $00
    rlca                                          ; $6c72: $07
    inc d                                         ; $6c73: $14

jr_0a8_6c74:
    ld [hl-], a                                   ; $6c74: $32
    inc sp                                        ; $6c75: $33
    dec de                                        ; $6c76: $1b

jr_0a8_6c77:
    inc [hl]                                      ; $6c77: $34
    nop                                           ; $6c78: $00
    rlca                                          ; $6c79: $07
    ld a, [de]                                    ; $6c7a: $1a
    dec [hl]                                      ; $6c7b: $35
    rlca                                          ; $6c7c: $07
    inc d                                         ; $6c7d: $14
    nop                                           ; $6c7e: $00
    ld [hl], $08                                  ; $6c7f: $36 $08
    scf                                           ; $6c81: $37
    jr c, @+$3b                                   ; $6c82: $38 $39

    ld d, $3a                                     ; $6c84: $16 $3a
    dec sp                                        ; $6c86: $3b
    inc a                                         ; $6c87: $3c
    ld a, [hl-]                                   ; $6c88: $3a
    dec a                                         ; $6c89: $3d
    ld d, $3e                                     ; $6c8a: $16 $3e
    ccf                                           ; $6c8c: $3f
    add hl, bc                                    ; $6c8d: $09
    dec b                                         ; $6c8e: $05
    nop                                           ; $6c8f: $00
    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    nop                                           ; $6c94: $00
    nop                                           ; $6c95: $00
    nop                                           ; $6c96: $00
    nop                                           ; $6c97: $00
    nop                                           ; $6c98: $00
    nop                                           ; $6c99: $00
    ld bc, $0302                                  ; $6c9a: $01 $02 $03

jr_0a8_6c9d:
    inc bc                                        ; $6c9d: $03
    inc bc                                        ; $6c9e: $03
    inc bc                                        ; $6c9f: $03
    inc b                                         ; $6ca0: $04
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00
    dec b                                         ; $6ca3: $05
    ld b, $07                                     ; $6ca4: $06 $07
    ld [$0908], sp                                ; $6ca6: $08 $08 $09
    ld a, [bc]                                    ; $6ca9: $0a
    dec bc                                        ; $6caa: $0b
    inc c                                         ; $6cab: $0c
    dec c                                         ; $6cac: $0d
    ld c, $0f                                     ; $6cad: $0e $0f
    db $10                                        ; $6caf: $10
    ld de, $000a                                  ; $6cb0: $11 $0a $00
    nop                                           ; $6cb3: $00
    nop                                           ; $6cb4: $00
    ld [de], a                                    ; $6cb5: $12
    ld a, [bc]                                    ; $6cb6: $0a
    inc de                                        ; $6cb7: $13
    nop                                           ; $6cb8: $00
    nop                                           ; $6cb9: $00
    nop                                           ; $6cba: $00
    nop                                           ; $6cbb: $00
    jr jr_0a8_6cc3                                ; $6cbc: $18 $05

    nop                                           ; $6cbe: $00
    nop                                           ; $6cbf: $00
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    nop                                           ; $6cc2: $00

jr_0a8_6cc3:
    nop                                           ; $6cc3: $00
    nop                                           ; $6cc4: $00
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    nop                                           ; $6cc8: $00
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    nop                                           ; $6ccb: $00
    nop                                           ; $6ccc: $00
    nop                                           ; $6ccd: $00
    nop                                           ; $6cce: $00
    nop                                           ; $6ccf: $00
    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    nop                                           ; $6cd8: $00
    nop                                           ; $6cd9: $00
    nop                                           ; $6cda: $00
    nop                                           ; $6cdb: $00
    nop                                           ; $6cdc: $00
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    nop                                           ; $6cdf: $00
    nop                                           ; $6ce0: $00
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    nop                                           ; $6ce5: $00
    nop                                           ; $6ce6: $00
    nop                                           ; $6ce7: $00
    nop                                           ; $6ce8: $00
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    nop                                           ; $6ced: $00
    ld bc, $0202                                  ; $6cee: $01 $02 $02
    ld [bc], a                                    ; $6cf1: $02
    ld [bc], a                                    ; $6cf2: $02
    ld [bc], a                                    ; $6cf3: $02
    ld [bc], a                                    ; $6cf4: $02
    ld [bc], a                                    ; $6cf5: $02
    ld [bc], a                                    ; $6cf6: $02
    ld [bc], a                                    ; $6cf7: $02
    ld [bc], a                                    ; $6cf8: $02
    ld [bc], a                                    ; $6cf9: $02
    ld [bc], a                                    ; $6cfa: $02
    ld [bc], a                                    ; $6cfb: $02
    ld [bc], a                                    ; $6cfc: $02
    ld [bc], a                                    ; $6cfd: $02
    ld [bc], a                                    ; $6cfe: $02
    ld [bc], a                                    ; $6cff: $02
    ld [bc], a                                    ; $6d00: $02
    ld [bc], a                                    ; $6d01: $02
    ld [bc], a                                    ; $6d02: $02
    ld [bc], a                                    ; $6d03: $02
    ld [bc], a                                    ; $6d04: $02
    inc bc                                        ; $6d05: $03
    inc b                                         ; $6d06: $04
    dec b                                         ; $6d07: $05
    ld b, $06                                     ; $6d08: $06 $06
    ld b, $06                                     ; $6d0a: $06 $06
    ld b, $06                                     ; $6d0c: $06 $06
    ld b, $06                                     ; $6d0e: $06 $06
    ld b, $06                                     ; $6d10: $06 $06
    ld b, $06                                     ; $6d12: $06 $06
    ld b, $06                                     ; $6d14: $06 $06
    ld b, $06                                     ; $6d16: $06 $06
    ld b, $06                                     ; $6d18: $06 $06
    ld b, $06                                     ; $6d1a: $06 $06
    rlca                                          ; $6d1c: $07
    ld [$0900], sp                                ; $6d1d: $08 $00 $09
    ld a, [bc]                                    ; $6d20: $0a
    ld a, [bc]                                    ; $6d21: $0a
    ld a, [bc]                                    ; $6d22: $0a
    ld a, [bc]                                    ; $6d23: $0a
    ld a, [bc]                                    ; $6d24: $0a
    ld a, [bc]                                    ; $6d25: $0a
    ld a, [bc]                                    ; $6d26: $0a
    ld a, [bc]                                    ; $6d27: $0a
    ld a, [bc]                                    ; $6d28: $0a
    ld a, [bc]                                    ; $6d29: $0a
    ld a, [bc]                                    ; $6d2a: $0a
    ld a, [bc]                                    ; $6d2b: $0a
    ld a, [bc]                                    ; $6d2c: $0a
    ld a, [bc]                                    ; $6d2d: $0a
    ld a, [bc]                                    ; $6d2e: $0a
    ld a, [bc]                                    ; $6d2f: $0a
    ld a, [bc]                                    ; $6d30: $0a
    ld a, [bc]                                    ; $6d31: $0a
    ld a, [bc]                                    ; $6d32: $0a
    ld a, [bc]                                    ; $6d33: $0a
    dec bc                                        ; $6d34: $0b
    nop                                           ; $6d35: $00
    ld d, $0a                                     ; $6d36: $16 $0a
    nop                                           ; $6d38: $00
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    nop                                           ; $6d3b: $00
    nop                                           ; $6d3c: $00
    nop                                           ; $6d3d: $00
    nop                                           ; $6d3e: $00
    nop                                           ; $6d3f: $00
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    nop                                           ; $6d43: $00
    nop                                           ; $6d44: $00
    nop                                           ; $6d45: $00
    nop                                           ; $6d46: $00
    nop                                           ; $6d47: $00
    nop                                           ; $6d48: $00
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    nop                                           ; $6d4b: $00
    nop                                           ; $6d4c: $00
    nop                                           ; $6d4d: $00
    nop                                           ; $6d4e: $00
    nop                                           ; $6d4f: $00
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    nop                                           ; $6d55: $00
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00
    nop                                           ; $6d58: $00
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    nop                                           ; $6d5e: $00
    nop                                           ; $6d5f: $00
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    nop                                           ; $6d67: $00
    ld bc, $0302                                  ; $6d68: $01 $02 $03
    nop                                           ; $6d6b: $00
    nop                                           ; $6d6c: $00
    nop                                           ; $6d6d: $00
    ld bc, $0202                                  ; $6d6e: $01 $02 $02
    ld [bc], a                                    ; $6d71: $02
    ld [bc], a                                    ; $6d72: $02
    ld [bc], a                                    ; $6d73: $02
    ld [bc], a                                    ; $6d74: $02
    ld [bc], a                                    ; $6d75: $02
    ld [bc], a                                    ; $6d76: $02
    ld [bc], a                                    ; $6d77: $02
    ld [bc], a                                    ; $6d78: $02
    inc b                                         ; $6d79: $04
    nop                                           ; $6d7a: $00
    nop                                           ; $6d7b: $00
    nop                                           ; $6d7c: $00
    nop                                           ; $6d7d: $00
    dec b                                         ; $6d7e: $05
    ld b, $07                                     ; $6d7f: $06 $07
    nop                                           ; $6d81: $00
    nop                                           ; $6d82: $00
    nop                                           ; $6d83: $00
    dec b                                         ; $6d84: $05
    ld b, $06                                     ; $6d85: $06 $06
    ld b, $06                                     ; $6d87: $06 $06
    ld b, $06                                     ; $6d89: $06 $06
    ld b, $06                                     ; $6d8b: $06 $06
    ld b, $06                                     ; $6d8d: $06 $06
    ld [$0a09], sp                                ; $6d8f: $08 $09 $0a
    ld a, [bc]                                    ; $6d92: $0a
    ld a, [bc]                                    ; $6d93: $0a
    dec bc                                        ; $6d94: $0b
    ld b, $0c                                     ; $6d95: $06 $0c
    ld a, [bc]                                    ; $6d97: $0a
    ld a, [bc]                                    ; $6d98: $0a
    ld a, [bc]                                    ; $6d99: $0a
    ld b, $06                                     ; $6d9a: $06 $06
    ld b, $06                                     ; $6d9c: $06 $06
    ld b, $06                                     ; $6d9e: $06 $06
    ld b, $06                                     ; $6da0: $06 $06
    ld b, $06                                     ; $6da2: $06 $06
    ld b, $08                                     ; $6da4: $06 $08
    nop                                           ; $6da6: $00
    dec c                                         ; $6da7: $0d
    ld c, $06                                     ; $6da8: $0e $06
    ld b, $06                                     ; $6daa: $06 $06
    ld b, $06                                     ; $6dac: $06 $06
    ld b, $06                                     ; $6dae: $06 $06
    ld b, $0f                                     ; $6db0: $06 $0f
    db $10                                        ; $6db2: $10
    ld de, $1111                                  ; $6db3: $11 $11 $11
    ld de, $1312                                  ; $6db6: $11 $12 $13
    ld de, $1111                                  ; $6db9: $11 $11 $11
    nop                                           ; $6dbc: $00
    nop                                           ; $6dbd: $00
    dec b                                         ; $6dbe: $05
    ld b, $06                                     ; $6dbf: $06 $06
    ld b, $06                                     ; $6dc1: $06 $06
    ld b, $06                                     ; $6dc3: $06 $06
    ld b, $06                                     ; $6dc5: $06 $06
    rlca                                          ; $6dc7: $07
    nop                                           ; $6dc8: $00
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    nop                                           ; $6dcc: $00
    inc d                                         ; $6dcd: $14
    rlca                                          ; $6dce: $07
    nop                                           ; $6dcf: $00
    nop                                           ; $6dd0: $00
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    dec d                                         ; $6dd4: $15
    ld d, $16                                     ; $6dd5: $16 $16
    rla                                           ; $6dd7: $17
    ld b, $06                                     ; $6dd8: $06 $06
    jr jr_0a8_6df2                                ; $6dda: $18 $16

    ld d, $19                                     ; $6ddc: $16 $19
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    nop                                           ; $6de0: $00
    nop                                           ; $6de1: $00
    nop                                           ; $6de2: $00
    inc d                                         ; $6de3: $14
    rlca                                          ; $6de4: $07
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    nop                                           ; $6de8: $00
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    nop                                           ; $6deb: $00
    nop                                           ; $6dec: $00
    nop                                           ; $6ded: $00
    ld a, [de]                                    ; $6dee: $1a
    dec de                                        ; $6def: $1b
    nop                                           ; $6df0: $00
    nop                                           ; $6df1: $00

jr_0a8_6df2:
    nop                                           ; $6df2: $00
    nop                                           ; $6df3: $00
    nop                                           ; $6df4: $00
    nop                                           ; $6df5: $00
    nop                                           ; $6df6: $00
    nop                                           ; $6df7: $00
    nop                                           ; $6df8: $00
    inc d                                         ; $6df9: $14
    rlca                                          ; $6dfa: $07
    nop                                           ; $6dfb: $00
    nop                                           ; $6dfc: $00
    nop                                           ; $6dfd: $00
    nop                                           ; $6dfe: $00
    nop                                           ; $6dff: $00
    nop                                           ; $6e00: $00
    nop                                           ; $6e01: $00
    nop                                           ; $6e02: $00
    nop                                           ; $6e03: $00
    nop                                           ; $6e04: $00
    nop                                           ; $6e05: $00
    nop                                           ; $6e06: $00
    nop                                           ; $6e07: $00
    nop                                           ; $6e08: $00
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    nop                                           ; $6e0b: $00
    nop                                           ; $6e0c: $00
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    inc e                                         ; $6e0f: $1c
    ld [$0000], sp                                ; $6e10: $08 $00 $00
    nop                                           ; $6e13: $00
    add hl, bc                                    ; $6e14: $09
    rla                                           ; $6e15: $17
    nop                                           ; $6e16: $00
    ld bc, $0002                                  ; $6e17: $01 $02 $00
    nop                                           ; $6e1a: $00
    nop                                           ; $6e1b: $00
    nop                                           ; $6e1c: $00
    nop                                           ; $6e1d: $00
    nop                                           ; $6e1e: $00
    nop                                           ; $6e1f: $00
    inc bc                                        ; $6e20: $03
    inc b                                         ; $6e21: $04
    nop                                           ; $6e22: $00
    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    nop                                           ; $6e25: $00
    nop                                           ; $6e26: $00
    nop                                           ; $6e27: $00
    nop                                           ; $6e28: $00
    inc bc                                        ; $6e29: $03
    dec b                                         ; $6e2a: $05
    ld b, $06                                     ; $6e2b: $06 $06
    rlca                                          ; $6e2d: $07
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    nop                                           ; $6e30: $00
    nop                                           ; $6e31: $00
    ld [$0909], sp                                ; $6e32: $08 $09 $09
    ld a, [bc]                                    ; $6e35: $0a
    inc b                                         ; $6e36: $04
    nop                                           ; $6e37: $00
    nop                                           ; $6e38: $00
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    nop                                           ; $6e3c: $00
    dec bc                                        ; $6e3d: $0b
    ld a, [bc]                                    ; $6e3e: $0a
    inc b                                         ; $6e3f: $04
    nop                                           ; $6e40: $00
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    nop                                           ; $6e43: $00
    nop                                           ; $6e44: $00
    nop                                           ; $6e45: $00
    dec bc                                        ; $6e46: $0b
    ld a, [bc]                                    ; $6e47: $0a
    inc b                                         ; $6e48: $04
    nop                                           ; $6e49: $00
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00
    nop                                           ; $6e4c: $00
    nop                                           ; $6e4d: $00
    inc c                                         ; $6e4e: $0c
    dec c                                         ; $6e4f: $0d
    ld a, [bc]                                    ; $6e50: $0a
    inc b                                         ; $6e51: $04
    nop                                           ; $6e52: $00
    nop                                           ; $6e53: $00
    nop                                           ; $6e54: $00
    nop                                           ; $6e55: $00
    nop                                           ; $6e56: $00
    ld c, $0a                                     ; $6e57: $0e $0a
    ld a, [bc]                                    ; $6e59: $0a
    inc b                                         ; $6e5a: $04
    nop                                           ; $6e5b: $00
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    rrca                                          ; $6e60: $0f
    db $10                                        ; $6e61: $10
    ld de, $0004                                  ; $6e62: $11 $04 $00
    nop                                           ; $6e65: $00
    nop                                           ; $6e66: $00
    nop                                           ; $6e67: $00
    nop                                           ; $6e68: $00
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    inc bc                                        ; $6e6b: $03
    ld [de], a                                    ; $6e6c: $12
    inc de                                        ; $6e6d: $13
    inc d                                         ; $6e6e: $14
    nop                                           ; $6e6f: $00
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    nop                                           ; $6e73: $00
    inc bc                                        ; $6e74: $03
    dec d                                         ; $6e75: $15
    add hl, bc                                    ; $6e76: $09
    ld d, $00                                     ; $6e77: $16 $00
    nop                                           ; $6e79: $00
    nop                                           ; $6e7a: $00
    nop                                           ; $6e7b: $00
    nop                                           ; $6e7c: $00
    rla                                           ; $6e7d: $17
    inc b                                         ; $6e7e: $04
    nop                                           ; $6e7f: $00
    nop                                           ; $6e80: $00
    nop                                           ; $6e81: $00
    nop                                           ; $6e82: $00
    jr jr_0a8_6e91                                ; $6e83: $18 $0c

    inc c                                         ; $6e85: $0c
    add hl, de                                    ; $6e86: $19
    inc b                                         ; $6e87: $04
    nop                                           ; $6e88: $00
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    nop                                           ; $6e8b: $00
    inc bc                                        ; $6e8c: $03
    ld a, [bc]                                    ; $6e8d: $0a
    ld a, [bc]                                    ; $6e8e: $0a
    ld a, [bc]                                    ; $6e8f: $0a
    ld a, [de]                                    ; $6e90: $1a

jr_0a8_6e91:
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    nop                                           ; $6e93: $00
    nop                                           ; $6e94: $00
    inc bc                                        ; $6e95: $03
    dec de                                        ; $6e96: $1b
    db $10                                        ; $6e97: $10
    db $10                                        ; $6e98: $10
    inc e                                         ; $6e99: $1c
    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    inc bc                                        ; $6e9e: $03
    inc b                                         ; $6e9f: $04
    nop                                           ; $6ea0: $00
    nop                                           ; $6ea1: $00
    nop                                           ; $6ea2: $00
    nop                                           ; $6ea3: $00
    nop                                           ; $6ea4: $00
    nop                                           ; $6ea5: $00
    nop                                           ; $6ea6: $00
    inc bc                                        ; $6ea7: $03
    inc b                                         ; $6ea8: $04
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    nop                                           ; $6eab: $00
    nop                                           ; $6eac: $00
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    nop                                           ; $6eaf: $00
    inc bc                                        ; $6eb0: $03
    dec b                                         ; $6eb1: $05
    ld b, $06                                     ; $6eb2: $06 $06
    ld b, $06                                     ; $6eb4: $06 $06
    ld b, $1d                                     ; $6eb6: $06 $1d
    nop                                           ; $6eb8: $00
    inc bc                                        ; $6eb9: $03
    ld a, [bc]                                    ; $6eba: $0a
    ld a, [bc]                                    ; $6ebb: $0a
    ld a, [bc]                                    ; $6ebc: $0a
    ld a, [bc]                                    ; $6ebd: $0a
    ld a, [bc]                                    ; $6ebe: $0a
    ld a, [bc]                                    ; $6ebf: $0a
    ld e, $00                                     ; $6ec0: $1e $00
    rra                                           ; $6ec2: $1f
    jr nz, jr_0a8_6ee5                            ; $6ec3: $20 $20

    jr nz, jr_0a8_6ee8                            ; $6ec5: $20 $21

    ld a, [bc]                                    ; $6ec7: $0a
    ld [hl+], a                                   ; $6ec8: $22
    jr nz, jr_0a8_6ecb                            ; $6ec9: $20 $00

jr_0a8_6ecb:
    nop                                           ; $6ecb: $00
    nop                                           ; $6ecc: $00
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    dec bc                                        ; $6ecf: $0b
    ld a, [bc]                                    ; $6ed0: $0a
    inc hl                                        ; $6ed1: $23
    nop                                           ; $6ed2: $00
    nop                                           ; $6ed3: $00
    nop                                           ; $6ed4: $00
    nop                                           ; $6ed5: $00
    nop                                           ; $6ed6: $00
    nop                                           ; $6ed7: $00
    dec bc                                        ; $6ed8: $0b
    ld a, [bc]                                    ; $6ed9: $0a
    inc hl                                        ; $6eda: $23
    nop                                           ; $6edb: $00
    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    nop                                           ; $6ede: $00
    nop                                           ; $6edf: $00
    nop                                           ; $6ee0: $00
    dec bc                                        ; $6ee1: $0b
    ld e, $23                                     ; $6ee2: $1e $23
    nop                                           ; $6ee4: $00

jr_0a8_6ee5:
    ld d, $14                                     ; $6ee5: $16 $14
    nop                                           ; $6ee7: $00

jr_0a8_6ee8:
    nop                                           ; $6ee8: $00
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    nop                                           ; $6eeb: $00
    nop                                           ; $6eec: $00
    nop                                           ; $6eed: $00
    nop                                           ; $6eee: $00
    nop                                           ; $6eef: $00
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    nop                                           ; $6ef2: $00
    nop                                           ; $6ef3: $00
    nop                                           ; $6ef4: $00
    nop                                           ; $6ef5: $00
    nop                                           ; $6ef6: $00
    nop                                           ; $6ef7: $00
    nop                                           ; $6ef8: $00
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    nop                                           ; $6efb: $00
    nop                                           ; $6efc: $00
    nop                                           ; $6efd: $00
    nop                                           ; $6efe: $00
    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    nop                                           ; $6f04: $00
    nop                                           ; $6f05: $00
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    nop                                           ; $6f0b: $00
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    nop                                           ; $6f0f: $00
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    nop                                           ; $6f13: $00
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    nop                                           ; $6f16: $00
    nop                                           ; $6f17: $00
    nop                                           ; $6f18: $00
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    nop                                           ; $6f1c: $00
    nop                                           ; $6f1d: $00
    nop                                           ; $6f1e: $00
    nop                                           ; $6f1f: $00
    nop                                           ; $6f20: $00
    nop                                           ; $6f21: $00
    nop                                           ; $6f22: $00
    nop                                           ; $6f23: $00
    nop                                           ; $6f24: $00
    nop                                           ; $6f25: $00
    nop                                           ; $6f26: $00
    nop                                           ; $6f27: $00
    nop                                           ; $6f28: $00
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    nop                                           ; $6f2c: $00
    nop                                           ; $6f2d: $00
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    nop                                           ; $6f33: $00
    nop                                           ; $6f34: $00
    nop                                           ; $6f35: $00
    nop                                           ; $6f36: $00
    ld bc, $0002                                  ; $6f37: $01 $02 $00
    nop                                           ; $6f3a: $00
    nop                                           ; $6f3b: $00
    nop                                           ; $6f3c: $00
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    nop                                           ; $6f43: $00
    nop                                           ; $6f44: $00
    nop                                           ; $6f45: $00
    nop                                           ; $6f46: $00
    nop                                           ; $6f47: $00
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    nop                                           ; $6f4b: $00
    nop                                           ; $6f4c: $00
    inc bc                                        ; $6f4d: $03
    inc b                                         ; $6f4e: $04
    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    nop                                           ; $6f58: $00
    nop                                           ; $6f59: $00
    dec b                                         ; $6f5a: $05
    ld b, $06                                     ; $6f5b: $06 $06
    ld b, $06                                     ; $6f5d: $06 $06
    ld b, $06                                     ; $6f5f: $06 $06
    ld b, $06                                     ; $6f61: $06 $06
    rlca                                          ; $6f63: $07
    ld [$0606], sp                                ; $6f64: $08 $06 $06
    ld b, $06                                     ; $6f67: $06 $06
    ld b, $09                                     ; $6f69: $06 $09
    nop                                           ; $6f6b: $00
    nop                                           ; $6f6c: $00
    nop                                           ; $6f6d: $00
    nop                                           ; $6f6e: $00
    nop                                           ; $6f6f: $00
    dec b                                         ; $6f70: $05
    ld a, [bc]                                    ; $6f71: $0a
    ld a, [bc]                                    ; $6f72: $0a
    ld a, [bc]                                    ; $6f73: $0a
    ld a, [bc]                                    ; $6f74: $0a
    ld a, [bc]                                    ; $6f75: $0a
    ld a, [bc]                                    ; $6f76: $0a
    dec bc                                        ; $6f77: $0b
    inc c                                         ; $6f78: $0c
    inc c                                         ; $6f79: $0c
    inc c                                         ; $6f7a: $0c
    inc c                                         ; $6f7b: $0c
    inc c                                         ; $6f7c: $0c
    inc c                                         ; $6f7d: $0c
    dec c                                         ; $6f7e: $0d
    ld a, [bc]                                    ; $6f7f: $0a
    add hl, bc                                    ; $6f80: $09
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    nop                                           ; $6f83: $00
    nop                                           ; $6f84: $00
    nop                                           ; $6f85: $00
    dec b                                         ; $6f86: $05
    ld a, [bc]                                    ; $6f87: $0a
    ld a, [bc]                                    ; $6f88: $0a
    ld a, [bc]                                    ; $6f89: $0a
    ld a, [bc]                                    ; $6f8a: $0a
    ld a, [bc]                                    ; $6f8b: $0a
    ld a, [bc]                                    ; $6f8c: $0a
    ld c, $00                                     ; $6f8d: $0e $00
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    nop                                           ; $6f92: $00
    nop                                           ; $6f93: $00
    rrca                                          ; $6f94: $0f
    ld a, [bc]                                    ; $6f95: $0a
    add hl, bc                                    ; $6f96: $09
    nop                                           ; $6f97: $00
    nop                                           ; $6f98: $00
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    nop                                           ; $6f9b: $00
    dec b                                         ; $6f9c: $05
    ld a, [bc]                                    ; $6f9d: $0a
    ld a, [bc]                                    ; $6f9e: $0a
    ld a, [bc]                                    ; $6f9f: $0a
    ld a, [bc]                                    ; $6fa0: $0a
    ld a, [bc]                                    ; $6fa1: $0a
    ld a, [bc]                                    ; $6fa2: $0a
    ld c, $00                                     ; $6fa3: $0e $00
    nop                                           ; $6fa5: $00
    nop                                           ; $6fa6: $00
    nop                                           ; $6fa7: $00
    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    rrca                                          ; $6faa: $0f
    ld a, [bc]                                    ; $6fab: $0a
    add hl, bc                                    ; $6fac: $09
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    nop                                           ; $6faf: $00
    nop                                           ; $6fb0: $00
    nop                                           ; $6fb1: $00
    dec b                                         ; $6fb2: $05
    ld a, [bc]                                    ; $6fb3: $0a
    ld a, [bc]                                    ; $6fb4: $0a
    ld a, [bc]                                    ; $6fb5: $0a
    ld a, [bc]                                    ; $6fb6: $0a
    ld a, [bc]                                    ; $6fb7: $0a
    ld a, [bc]                                    ; $6fb8: $0a
    ld c, $00                                     ; $6fb9: $0e $00
    nop                                           ; $6fbb: $00
    nop                                           ; $6fbc: $00
    nop                                           ; $6fbd: $00
    nop                                           ; $6fbe: $00
    nop                                           ; $6fbf: $00
    rrca                                          ; $6fc0: $0f
    ld a, [bc]                                    ; $6fc1: $0a
    add hl, bc                                    ; $6fc2: $09
    nop                                           ; $6fc3: $00
    nop                                           ; $6fc4: $00
    nop                                           ; $6fc5: $00
    nop                                           ; $6fc6: $00
    nop                                           ; $6fc7: $00
    dec b                                         ; $6fc8: $05
    ld a, [bc]                                    ; $6fc9: $0a
    ld a, [bc]                                    ; $6fca: $0a
    ld a, [bc]                                    ; $6fcb: $0a
    ld a, [bc]                                    ; $6fcc: $0a
    ld a, [bc]                                    ; $6fcd: $0a
    ld a, [bc]                                    ; $6fce: $0a
    ld c, $00                                     ; $6fcf: $0e $00
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    nop                                           ; $6fd4: $00
    nop                                           ; $6fd5: $00
    rrca                                          ; $6fd6: $0f
    ld a, [bc]                                    ; $6fd7: $0a
    add hl, bc                                    ; $6fd8: $09
    nop                                           ; $6fd9: $00
    nop                                           ; $6fda: $00
    nop                                           ; $6fdb: $00
    nop                                           ; $6fdc: $00
    nop                                           ; $6fdd: $00
    dec b                                         ; $6fde: $05
    ld a, [bc]                                    ; $6fdf: $0a
    ld a, [bc]                                    ; $6fe0: $0a
    ld a, [bc]                                    ; $6fe1: $0a
    ld a, [bc]                                    ; $6fe2: $0a
    ld a, [bc]                                    ; $6fe3: $0a
    ld a, [bc]                                    ; $6fe4: $0a
    stop                                          ; $6fe5: $10 $00
    nop                                           ; $6fe7: $00
    nop                                           ; $6fe8: $00
    nop                                           ; $6fe9: $00
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    rrca                                          ; $6fec: $0f
    ld a, [bc]                                    ; $6fed: $0a
    add hl, bc                                    ; $6fee: $09
    nop                                           ; $6fef: $00
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    nop                                           ; $6ff3: $00
    dec b                                         ; $6ff4: $05
    ld a, [bc]                                    ; $6ff5: $0a
    ld a, [bc]                                    ; $6ff6: $0a
    ld de, $1212                                  ; $6ff7: $11 $12 $12
    inc de                                        ; $6ffa: $13
    nop                                           ; $6ffb: $00
    nop                                           ; $6ffc: $00
    nop                                           ; $6ffd: $00
    nop                                           ; $6ffe: $00
    nop                                           ; $6fff: $00
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    rrca                                          ; $7002: $0f
    ld a, [bc]                                    ; $7003: $0a
    add hl, bc                                    ; $7004: $09
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    dec b                                         ; $700a: $05
    ld a, [bc]                                    ; $700b: $0a
    ld a, [bc]                                    ; $700c: $0a
    inc d                                         ; $700d: $14
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    rrca                                          ; $7018: $0f
    ld a, [bc]                                    ; $7019: $0a
    add hl, bc                                    ; $701a: $09
    dec d                                         ; $701b: $15
    dec d                                         ; $701c: $15
    dec d                                         ; $701d: $15
    dec d                                         ; $701e: $15
    dec d                                         ; $701f: $15
    ld d, $0a                                     ; $7020: $16 $0a
    ld a, [bc]                                    ; $7022: $0a
    inc d                                         ; $7023: $14
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    nop                                           ; $702b: $00
    rla                                           ; $702c: $17
    jr @+$1b                                      ; $702d: $18 $19

    ld a, [bc]                                    ; $702f: $0a
    add hl, bc                                    ; $7030: $09
    ld a, [de]                                    ; $7031: $1a
    ld a, [bc]                                    ; $7032: $0a
    ld a, [bc]                                    ; $7033: $0a
    ld a, [bc]                                    ; $7034: $0a
    ld a, [bc]                                    ; $7035: $0a
    ld a, [bc]                                    ; $7036: $0a
    ld a, [bc]                                    ; $7037: $0a
    ld a, [bc]                                    ; $7038: $0a
    inc d                                         ; $7039: $14
    nop                                           ; $703a: $00
    nop                                           ; $703b: $00
    nop                                           ; $703c: $00
    nop                                           ; $703d: $00
    nop                                           ; $703e: $00
    nop                                           ; $703f: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    dec de                                        ; $7042: $1b
    inc e                                         ; $7043: $1c
    dec e                                         ; $7044: $1d
    ld a, [bc]                                    ; $7045: $0a
    add hl, bc                                    ; $7046: $09
    ld e, $12                                     ; $7047: $1e $12
    ld [de], a                                    ; $7049: $12
    ld [de], a                                    ; $704a: $12
    rra                                           ; $704b: $1f
    ld a, [bc]                                    ; $704c: $0a
    ld a, [bc]                                    ; $704d: $0a
    ld a, [bc]                                    ; $704e: $0a
    inc d                                         ; $704f: $14
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    rrca                                          ; $705a: $0f
    ld a, [bc]                                    ; $705b: $0a
    add hl, bc                                    ; $705c: $09
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    nop                                           ; $7060: $00
    jr nz, jr_0a8_7084                            ; $7061: $20 $21

    ld a, [bc]                                    ; $7063: $0a
    ld [hl+], a                                   ; $7064: $22
    inc hl                                        ; $7065: $23
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706a: $00
    nop                                           ; $706b: $00
    nop                                           ; $706c: $00
    nop                                           ; $706d: $00
    nop                                           ; $706e: $00
    nop                                           ; $706f: $00
    rrca                                          ; $7070: $0f
    ld a, [bc]                                    ; $7071: $0a
    add hl, bc                                    ; $7072: $09
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    jr nz, jr_0a8_709e                            ; $7078: $20 $24

    inc hl                                        ; $707a: $23
    nop                                           ; $707b: $00
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00

jr_0a8_7084:
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    rrca                                          ; $7086: $0f
    ld a, [bc]                                    ; $7087: $0a
    add hl, bc                                    ; $7088: $09
    nop                                           ; $7089: $00
    nop                                           ; $708a: $00
    nop                                           ; $708b: $00
    nop                                           ; $708c: $00
    nop                                           ; $708d: $00
    nop                                           ; $708e: $00
    nop                                           ; $708f: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709a: $00
    nop                                           ; $709b: $00
    dec h                                         ; $709c: $25
    ld a, [de]                                    ; $709d: $1a

jr_0a8_709e:
    add hl, bc                                    ; $709e: $09
    inc de                                        ; $709f: $13
    inc d                                         ; $70a0: $14
    nop                                           ; $70a1: $00
    ld bc, $0002                                  ; $70a2: $01 $02 $00
    nop                                           ; $70a5: $00
    nop                                           ; $70a6: $00
    nop                                           ; $70a7: $00
    nop                                           ; $70a8: $00
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    nop                                           ; $70ab: $00
    nop                                           ; $70ac: $00
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    nop                                           ; $70af: $00
    nop                                           ; $70b0: $00
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    nop                                           ; $70b3: $00
    nop                                           ; $70b4: $00
    inc bc                                        ; $70b5: $03
    inc b                                         ; $70b6: $04
    nop                                           ; $70b7: $00
    nop                                           ; $70b8: $00
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00
    nop                                           ; $70bb: $00
    nop                                           ; $70bc: $00
    nop                                           ; $70bd: $00
    nop                                           ; $70be: $00
    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    nop                                           ; $70c2: $00
    nop                                           ; $70c3: $00
    nop                                           ; $70c4: $00
    nop                                           ; $70c5: $00
    nop                                           ; $70c6: $00
    nop                                           ; $70c7: $00
    inc bc                                        ; $70c8: $03
    dec b                                         ; $70c9: $05
    ld b, $00                                     ; $70ca: $06 $00
    nop                                           ; $70cc: $00
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    nop                                           ; $70cf: $00
    nop                                           ; $70d0: $00
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    nop                                           ; $70d3: $00
    nop                                           ; $70d4: $00
    nop                                           ; $70d5: $00
    nop                                           ; $70d6: $00
    nop                                           ; $70d7: $00
    nop                                           ; $70d8: $00
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    inc bc                                        ; $70db: $03
    rlca                                          ; $70dc: $07
    ld [$0000], sp                                ; $70dd: $08 $00 $00
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00
    nop                                           ; $70e4: $00
    nop                                           ; $70e5: $00
    nop                                           ; $70e6: $00
    nop                                           ; $70e7: $00
    nop                                           ; $70e8: $00
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    nop                                           ; $70eb: $00
    nop                                           ; $70ec: $00
    nop                                           ; $70ed: $00
    inc bc                                        ; $70ee: $03
    rlca                                          ; $70ef: $07
    add hl, bc                                    ; $70f0: $09
    ld a, [bc]                                    ; $70f1: $0a
    ld a, [bc]                                    ; $70f2: $0a
    ld a, [bc]                                    ; $70f3: $0a
    ld a, [bc]                                    ; $70f4: $0a
    ld a, [bc]                                    ; $70f5: $0a
    ld a, [bc]                                    ; $70f6: $0a
    ld a, [bc]                                    ; $70f7: $0a
    ld a, [bc]                                    ; $70f8: $0a
    ld a, [bc]                                    ; $70f9: $0a
    ld a, [bc]                                    ; $70fa: $0a
    ld a, [bc]                                    ; $70fb: $0a
    ld a, [bc]                                    ; $70fc: $0a
    ld a, [bc]                                    ; $70fd: $0a
    ld a, [bc]                                    ; $70fe: $0a
    dec bc                                        ; $70ff: $0b
    nop                                           ; $7100: $00
    inc bc                                        ; $7101: $03
    rlca                                          ; $7102: $07
    rlca                                          ; $7103: $07
    rlca                                          ; $7104: $07
    rlca                                          ; $7105: $07
    inc c                                         ; $7106: $0c
    inc c                                         ; $7107: $0c
    inc c                                         ; $7108: $0c
    inc c                                         ; $7109: $0c
    inc c                                         ; $710a: $0c
    inc c                                         ; $710b: $0c
    inc c                                         ; $710c: $0c
    inc c                                         ; $710d: $0c
    inc c                                         ; $710e: $0c
    inc c                                         ; $710f: $0c
    inc c                                         ; $7110: $0c
    inc c                                         ; $7111: $0c
    ld [bc], a                                    ; $7112: $02
    nop                                           ; $7113: $00
    dec c                                         ; $7114: $0d
    inc c                                         ; $7115: $0c
    inc c                                         ; $7116: $0c
    inc c                                         ; $7117: $0c
    ld c, $08                                     ; $7118: $0e $08
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712a: $00
    rrca                                          ; $712b: $0f
    ld [$0000], sp                                ; $712c: $08 $00 $00
    nop                                           ; $712f: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713a: $00
    nop                                           ; $713b: $00
    nop                                           ; $713c: $00
    nop                                           ; $713d: $00
    rrca                                          ; $713e: $0f
    ld [$0000], sp                                ; $713f: $08 $00 $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    nop                                           ; $714b: $00
    nop                                           ; $714c: $00
    nop                                           ; $714d: $00
    nop                                           ; $714e: $00
    nop                                           ; $714f: $00
    nop                                           ; $7150: $00
    rrca                                          ; $7151: $0f
    stop                                          ; $7152: $10 $00
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    nop                                           ; $715c: $00
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    nop                                           ; $715f: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    ld de, $0012                                  ; $7164: $11 $12 $00
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    nop                                           ; $716a: $00
    nop                                           ; $716b: $00
    nop                                           ; $716c: $00
    nop                                           ; $716d: $00
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    inc de                                        ; $7177: $13
    inc d                                         ; $7178: $14
    ld a, [bc]                                    ; $7179: $0a
    ld a, [bc]                                    ; $717a: $0a
    ld a, [bc]                                    ; $717b: $0a
    ld a, [bc]                                    ; $717c: $0a
    ld a, [bc]                                    ; $717d: $0a
    ld a, [bc]                                    ; $717e: $0a
    ld a, [bc]                                    ; $717f: $0a
    ld a, [bc]                                    ; $7180: $0a
    ld a, [bc]                                    ; $7181: $0a
    ld a, [bc]                                    ; $7182: $0a
    ld a, [bc]                                    ; $7183: $0a
    dec bc                                        ; $7184: $0b
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    inc de                                        ; $718a: $13
    rlca                                          ; $718b: $07
    rlca                                          ; $718c: $07
    rlca                                          ; $718d: $07
    rlca                                          ; $718e: $07
    rlca                                          ; $718f: $07
    rlca                                          ; $7190: $07
    rlca                                          ; $7191: $07
    rlca                                          ; $7192: $07
    rlca                                          ; $7193: $07
    rlca                                          ; $7194: $07
    dec d                                         ; $7195: $15
    inc c                                         ; $7196: $0c
    ld [bc], a                                    ; $7197: $02
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    nop                                           ; $719a: $00
    nop                                           ; $719b: $00
    nop                                           ; $719c: $00
    ld d, $17                                     ; $719d: $16 $17
    jr jr_0a8_71b9                                ; $719f: $18 $18

    jr jr_0a8_71bb                                ; $71a1: $18 $18

    jr jr_0a8_71bd                                ; $71a3: $18 $18

    jr jr_0a8_71bf                                ; $71a5: $18 $18

    jr jr_0a8_71c2                                ; $71a7: $18 $19

    nop                                           ; $71a9: $00
    nop                                           ; $71aa: $00
    nop                                           ; $71ab: $00
    nop                                           ; $71ac: $00
    nop                                           ; $71ad: $00
    nop                                           ; $71ae: $00
    nop                                           ; $71af: $00
    inc bc                                        ; $71b0: $03
    ld [$0000], sp                                ; $71b1: $08 $00 $00
    nop                                           ; $71b4: $00
    nop                                           ; $71b5: $00
    nop                                           ; $71b6: $00
    nop                                           ; $71b7: $00
    nop                                           ; $71b8: $00

jr_0a8_71b9:
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00

jr_0a8_71bb:
    nop                                           ; $71bb: $00
    nop                                           ; $71bc: $00

jr_0a8_71bd:
    nop                                           ; $71bd: $00
    ld a, [de]                                    ; $71be: $1a

jr_0a8_71bf:
    ld a, [bc]                                    ; $71bf: $0a
    ld a, [bc]                                    ; $71c0: $0a
    ld a, [bc]                                    ; $71c1: $0a

jr_0a8_71c2:
    ld a, [bc]                                    ; $71c2: $0a
    dec de                                        ; $71c3: $1b
    ld [$0000], sp                                ; $71c4: $08 $00 $00
    nop                                           ; $71c7: $00
    nop                                           ; $71c8: $00
    nop                                           ; $71c9: $00
    nop                                           ; $71ca: $00
    nop                                           ; $71cb: $00
    nop                                           ; $71cc: $00
    nop                                           ; $71cd: $00
    nop                                           ; $71ce: $00
    nop                                           ; $71cf: $00
    nop                                           ; $71d0: $00
    inc bc                                        ; $71d1: $03
    rlca                                          ; $71d2: $07
    rlca                                          ; $71d3: $07
    rlca                                          ; $71d4: $07
    rlca                                          ; $71d5: $07
    rlca                                          ; $71d6: $07
    ld [$0000], sp                                ; $71d7: $08 $00 $00
    nop                                           ; $71da: $00
    nop                                           ; $71db: $00
    nop                                           ; $71dc: $00
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    inc bc                                        ; $71e4: $03
    rlca                                          ; $71e5: $07
    rlca                                          ; $71e6: $07
    rlca                                          ; $71e7: $07
    rlca                                          ; $71e8: $07
    rlca                                          ; $71e9: $07
    ld [$0000], sp                                ; $71ea: $08 $00 $00
    nop                                           ; $71ed: $00
    nop                                           ; $71ee: $00
    nop                                           ; $71ef: $00
    nop                                           ; $71f0: $00
    nop                                           ; $71f1: $00
    nop                                           ; $71f2: $00
    nop                                           ; $71f3: $00
    nop                                           ; $71f4: $00
    nop                                           ; $71f5: $00
    nop                                           ; $71f6: $00
    dec c                                         ; $71f7: $0d
    rlca                                          ; $71f8: $07
    rlca                                          ; $71f9: $07
    rlca                                          ; $71fa: $07
    rlca                                          ; $71fb: $07
    inc e                                         ; $71fc: $1c
    dec e                                         ; $71fd: $1d
    nop                                           ; $71fe: $00
    nop                                           ; $71ff: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    ld e, $1f                                     ; $720a: $1e $1f
    rra                                           ; $720c: $1f
    rra                                           ; $720d: $1f
    rra                                           ; $720e: $1f
    jr nz, jr_0a8_7211                            ; $720f: $20 $00

jr_0a8_7211:
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    nop                                           ; $721a: $00
    nop                                           ; $721b: $00
    nop                                           ; $721c: $00
    jr jr_0a8_7236                                ; $721d: $18 $17

    nop                                           ; $721f: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    ld bc, $0002                                  ; $7223: $01 $02 $00
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    nop                                           ; $722b: $00
    nop                                           ; $722c: $00
    nop                                           ; $722d: $00
    nop                                           ; $722e: $00
    nop                                           ; $722f: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00

jr_0a8_7236:
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723a: $00
    inc bc                                        ; $723b: $03
    inc b                                         ; $723c: $04
    nop                                           ; $723d: $00
    nop                                           ; $723e: $00
    nop                                           ; $723f: $00
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    nop                                           ; $724a: $00
    nop                                           ; $724b: $00
    nop                                           ; $724c: $00
    nop                                           ; $724d: $00
    nop                                           ; $724e: $00
    nop                                           ; $724f: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    inc bc                                        ; $7253: $03
    inc b                                         ; $7254: $04
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    nop                                           ; $7260: $00
    dec b                                         ; $7261: $05
    ld b, $00                                     ; $7262: $06 $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    rlca                                          ; $7267: $07
    ld [$0808], sp                                ; $7268: $08 $08 $08
    add hl, bc                                    ; $726b: $09
    inc b                                         ; $726c: $04
    nop                                           ; $726d: $00
    nop                                           ; $726e: $00
    nop                                           ; $726f: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    inc bc                                        ; $7279: $03
    ld a, [bc]                                    ; $727a: $0a
    nop                                           ; $727b: $00
    nop                                           ; $727c: $00
    nop                                           ; $727d: $00
    nop                                           ; $727e: $00
    ld [bc], a                                    ; $727f: $02
    dec bc                                        ; $7280: $0b
    dec bc                                        ; $7281: $0b
    dec bc                                        ; $7282: $0b
    dec bc                                        ; $7283: $0b
    inc c                                         ; $7284: $0c
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    nop                                           ; $728c: $00
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
    nop                                           ; $7290: $00
    inc bc                                        ; $7291: $03
    inc b                                         ; $7292: $04
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    dec c                                         ; $7297: $0d
    ld c, $0e                                     ; $7298: $0e $0e
    ld c, $0e                                     ; $729a: $0e $0e
    rrca                                          ; $729c: $0f
    nop                                           ; $729d: $00
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    db $10                                        ; $72a5: $10
    ld de, $1111                                  ; $72a6: $11 $11 $11
    ld [de], a                                    ; $72a9: $12
    inc de                                        ; $72aa: $13
    nop                                           ; $72ab: $00
    nop                                           ; $72ac: $00
    nop                                           ; $72ad: $00
    nop                                           ; $72ae: $00
    nop                                           ; $72af: $00
    nop                                           ; $72b0: $00
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    nop                                           ; $72b3: $00
    nop                                           ; $72b4: $00
    nop                                           ; $72b5: $00
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    nop                                           ; $72b8: $00
    nop                                           ; $72b9: $00
    nop                                           ; $72ba: $00
    nop                                           ; $72bb: $00
    nop                                           ; $72bc: $00
    inc d                                         ; $72bd: $14
    nop                                           ; $72be: $00
    nop                                           ; $72bf: $00
    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    nop                                           ; $72c3: $00
    nop                                           ; $72c4: $00
    dec d                                         ; $72c5: $15
    nop                                           ; $72c6: $00
    nop                                           ; $72c7: $00
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    nop                                           ; $72cb: $00
    nop                                           ; $72cc: $00
    nop                                           ; $72cd: $00
    nop                                           ; $72ce: $00
    nop                                           ; $72cf: $00
    nop                                           ; $72d0: $00
    nop                                           ; $72d1: $00
    nop                                           ; $72d2: $00
    nop                                           ; $72d3: $00
    nop                                           ; $72d4: $00
    inc d                                         ; $72d5: $14
    nop                                           ; $72d6: $00
    nop                                           ; $72d7: $00
    nop                                           ; $72d8: $00
    nop                                           ; $72d9: $00
    nop                                           ; $72da: $00
    nop                                           ; $72db: $00
    nop                                           ; $72dc: $00
    ld d, $00                                     ; $72dd: $16 $00
    nop                                           ; $72df: $00
    nop                                           ; $72e0: $00
    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    nop                                           ; $72e3: $00
    nop                                           ; $72e4: $00
    nop                                           ; $72e5: $00
    nop                                           ; $72e6: $00
    nop                                           ; $72e7: $00
    nop                                           ; $72e8: $00
    nop                                           ; $72e9: $00
    nop                                           ; $72ea: $00
    nop                                           ; $72eb: $00
    nop                                           ; $72ec: $00
    inc d                                         ; $72ed: $14
    nop                                           ; $72ee: $00
    nop                                           ; $72ef: $00
    nop                                           ; $72f0: $00
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    nop                                           ; $72f4: $00
    rla                                           ; $72f5: $17
    nop                                           ; $72f6: $00
    nop                                           ; $72f7: $00
    nop                                           ; $72f8: $00
    nop                                           ; $72f9: $00
    nop                                           ; $72fa: $00
    nop                                           ; $72fb: $00
    nop                                           ; $72fc: $00
    nop                                           ; $72fd: $00
    nop                                           ; $72fe: $00
    nop                                           ; $72ff: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    inc d                                         ; $7305: $14
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730a: $00
    nop                                           ; $730b: $00
    nop                                           ; $730c: $00
    inc d                                         ; $730d: $14
    nop                                           ; $730e: $00
    nop                                           ; $730f: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731a: $00
    nop                                           ; $731b: $00
    nop                                           ; $731c: $00
    jr jr_0a8_731f                                ; $731d: $18 $00

jr_0a8_731f:
    nop                                           ; $731f: $00
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    inc d                                         ; $7325: $14
    nop                                           ; $7326: $00
    add hl, de                                    ; $7327: $19
    ld a, [de]                                    ; $7328: $1a
    ld a, [de]                                    ; $7329: $1a
    ld a, [de]                                    ; $732a: $1a
    ld a, [de]                                    ; $732b: $1a
    dec de                                        ; $732c: $1b
    nop                                           ; $732d: $00
    nop                                           ; $732e: $00
    nop                                           ; $732f: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    inc e                                         ; $7335: $1c
    ld a, [de]                                    ; $7336: $1a
    ld a, [de]                                    ; $7337: $1a
    ld a, [de]                                    ; $7338: $1a
    ld a, [de]                                    ; $7339: $1a
    ld a, [de]                                    ; $733a: $1a
    ld a, [de]                                    ; $733b: $1a
    ld a, [de]                                    ; $733c: $1a
    dec e                                         ; $733d: $1d
    nop                                           ; $733e: $00
    ld e, $1f                                     ; $733f: $1e $1f
    rra                                           ; $7341: $1f
    rra                                           ; $7342: $1f
    jr nz, jr_0a8_7366                            ; $7343: $20 $21

    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    ld [hl+], a                                   ; $7349: $22
    inc hl                                        ; $734a: $23
    nop                                           ; $734b: $00
    nop                                           ; $734c: $00
    inc bc                                        ; $734d: $03
    inc h                                         ; $734e: $24
    rra                                           ; $734f: $1f
    rra                                           ; $7350: $1f
    rra                                           ; $7351: $1f
    rra                                           ; $7352: $1f
    dec h                                         ; $7353: $25
    ld h, $27                                     ; $7354: $26 $27
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    jr z, jr_0a8_737e                             ; $735b: $28 $21

    nop                                           ; $735d: $00
    nop                                           ; $735e: $00
    nop                                           ; $735f: $00
    nop                                           ; $7360: $00
    ld [hl+], a                                   ; $7361: $22
    add hl, hl                                    ; $7362: $29
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    inc bc                                        ; $7365: $03

jr_0a8_7366:
    ld hl, $0000                                  ; $7366: $21 $00 $00
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    ld [hl+], a                                   ; $736b: $22
    inc b                                         ; $736c: $04
    nop                                           ; $736d: $00
    nop                                           ; $736e: $00
    nop                                           ; $736f: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    jr z, jr_0a8_7396                             ; $7373: $28 $21

    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    ld [hl+], a                                   ; $7379: $22
    add hl, hl                                    ; $737a: $29
    nop                                           ; $737b: $00
    nop                                           ; $737c: $00
    inc bc                                        ; $737d: $03

jr_0a8_737e:
    ld hl, $0000                                  ; $737e: $21 $00 $00
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
    ld [hl+], a                                   ; $7383: $22
    inc b                                         ; $7384: $04
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    jr z, jr_0a8_73ae                             ; $738b: $28 $21

    nop                                           ; $738d: $00
    nop                                           ; $738e: $00
    nop                                           ; $738f: $00
    nop                                           ; $7390: $00
    ld [hl+], a                                   ; $7391: $22
    add hl, hl                                    ; $7392: $29
    nop                                           ; $7393: $00
    nop                                           ; $7394: $00
    inc bc                                        ; $7395: $03

jr_0a8_7396:
    ld hl, $0000                                  ; $7396: $21 $00 $00
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    ld [hl+], a                                   ; $739b: $22
    inc b                                         ; $739c: $04
    nop                                           ; $739d: $00
    nop                                           ; $739e: $00
    nop                                           ; $739f: $00
    nop                                           ; $73a0: $00
    nop                                           ; $73a1: $00
    nop                                           ; $73a2: $00
    jr z, jr_0a8_73cf                             ; $73a3: $28 $2a

    ld a, [de]                                    ; $73a5: $1a
    ld a, [de]                                    ; $73a6: $1a
    ld a, [de]                                    ; $73a7: $1a
    ld a, [de]                                    ; $73a8: $1a
    dec hl                                        ; $73a9: $2b
    inc l                                         ; $73aa: $2c
    ld a, [de]                                    ; $73ab: $1a
    ld a, [de]                                    ; $73ac: $1a
    dec l                                         ; $73ad: $2d

jr_0a8_73ae:
    ld hl, $0000                                  ; $73ae: $21 $00 $00
    ld l, $08                                     ; $73b1: $2e $08
    cpl                                           ; $73b3: $2f
    inc b                                         ; $73b4: $04
    nop                                           ; $73b5: $00
    nop                                           ; $73b6: $00
    nop                                           ; $73b7: $00
    nop                                           ; $73b8: $00
    nop                                           ; $73b9: $00
    nop                                           ; $73ba: $00
    jr nc, jr_0a8_73cb                            ; $73bb: $30 $0e

    ld c, $0e                                     ; $73bd: $0e $0e
    ld sp, $0e32                                  ; $73bf: $31 $32 $0e
    ld c, $0e                                     ; $73c2: $0e $0e
    ld c, $0e                                     ; $73c4: $0e $0e
    inc sp                                        ; $73c6: $33
    nop                                           ; $73c7: $00
    inc [hl]                                      ; $73c8: $34
    dec [hl]                                      ; $73c9: $35
    dec bc                                        ; $73ca: $0b

jr_0a8_73cb:
    dec bc                                        ; $73cb: $0b
    inc b                                         ; $73cc: $04
    nop                                           ; $73cd: $00
    nop                                           ; $73ce: $00

jr_0a8_73cf:
    nop                                           ; $73cf: $00
    nop                                           ; $73d0: $00
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    nop                                           ; $73d3: $00
    nop                                           ; $73d4: $00
    nop                                           ; $73d5: $00
    nop                                           ; $73d6: $00
    ld [hl], $37                                  ; $73d7: $36 $37
    nop                                           ; $73d9: $00
    nop                                           ; $73da: $00
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    inc [hl]                                      ; $73df: $34
    dec [hl]                                      ; $73e0: $35
    dec bc                                        ; $73e1: $0b
    dec bc                                        ; $73e2: $0b
    dec bc                                        ; $73e3: $0b
    inc b                                         ; $73e4: $04
    nop                                           ; $73e5: $00
    nop                                           ; $73e6: $00
    nop                                           ; $73e7: $00
    nop                                           ; $73e8: $00
    nop                                           ; $73e9: $00
    nop                                           ; $73ea: $00
    nop                                           ; $73eb: $00
    nop                                           ; $73ec: $00
    nop                                           ; $73ed: $00
    nop                                           ; $73ee: $00
    ld [hl], $37                                  ; $73ef: $36 $37
    nop                                           ; $73f1: $00
    nop                                           ; $73f2: $00
    nop                                           ; $73f3: $00
    nop                                           ; $73f4: $00
    nop                                           ; $73f5: $00
    jr c, jr_0a8_742d                             ; $73f6: $38 $35

    dec bc                                        ; $73f8: $0b
    dec bc                                        ; $73f9: $0b
    dec bc                                        ; $73fa: $0b
    dec bc                                        ; $73fb: $0b
    inc b                                         ; $73fc: $04
    nop                                           ; $73fd: $00
    nop                                           ; $73fe: $00
    nop                                           ; $73ff: $00
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    ld [hl], $37                                  ; $7407: $36 $37
    nop                                           ; $7409: $00
    nop                                           ; $740a: $00
    nop                                           ; $740b: $00
    nop                                           ; $740c: $00
    nop                                           ; $740d: $00
    ld [hl+], a                                   ; $740e: $22
    dec bc                                        ; $740f: $0b
    dec bc                                        ; $7410: $0b
    dec bc                                        ; $7411: $0b
    dec bc                                        ; $7412: $0b
    dec bc                                        ; $7413: $0b
    inc b                                         ; $7414: $04
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    nop                                           ; $7417: $00
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    nop                                           ; $741a: $00
    nop                                           ; $741b: $00
    nop                                           ; $741c: $00
    nop                                           ; $741d: $00
    nop                                           ; $741e: $00
    add hl, sp                                    ; $741f: $39
    ld a, [hl-]                                   ; $7420: $3a
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    nop                                           ; $7424: $00
    nop                                           ; $7425: $00
    dec sp                                        ; $7426: $3b
    inc a                                         ; $7427: $3c
    dec bc                                        ; $7428: $0b
    dec bc                                        ; $7429: $0b
    dec bc                                        ; $742a: $0b
    dec bc                                        ; $742b: $0b
    inc b                                         ; $742c: $04

jr_0a8_742d:
    nop                                           ; $742d: $00
    nop                                           ; $742e: $00
    nop                                           ; $742f: $00
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    nop                                           ; $7433: $00
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    nop                                           ; $7436: $00
    nop                                           ; $7437: $00
    nop                                           ; $7438: $00
    nop                                           ; $7439: $00
    nop                                           ; $743a: $00
    nop                                           ; $743b: $00
    nop                                           ; $743c: $00
    nop                                           ; $743d: $00
    nop                                           ; $743e: $00
    dec a                                         ; $743f: $3d
    ld a, $3e                                     ; $7440: $3e $3e
    ld a, $3e                                     ; $7442: $3e $3e
    ld a, $00                                     ; $7444: $3e $00
    nop                                           ; $7446: $00
    inc c                                         ; $7447: $0c
    inc c                                         ; $7448: $0c
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    nop                                           ; $744b: $00
    nop                                           ; $744c: $00
    nop                                           ; $744d: $00
    nop                                           ; $744e: $00
    nop                                           ; $744f: $00
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    nop                                           ; $7457: $00
    nop                                           ; $7458: $00
    nop                                           ; $7459: $00
    nop                                           ; $745a: $00
    nop                                           ; $745b: $00
    nop                                           ; $745c: $00
    nop                                           ; $745d: $00
    nop                                           ; $745e: $00
    nop                                           ; $745f: $00
    nop                                           ; $7460: $00
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    nop                                           ; $7465: $00
    nop                                           ; $7466: $00
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    nop                                           ; $746a: $00
    nop                                           ; $746b: $00
    nop                                           ; $746c: $00
    ld bc, $0202                                  ; $746d: $01 $02 $02
    ld [bc], a                                    ; $7470: $02
    ld [bc], a                                    ; $7471: $02
    ld [bc], a                                    ; $7472: $02
    ld [bc], a                                    ; $7473: $02
    ld [bc], a                                    ; $7474: $02
    inc bc                                        ; $7475: $03
    inc b                                         ; $7476: $04
    dec b                                         ; $7477: $05
    nop                                           ; $7478: $00
    ld b, $07                                     ; $7479: $06 $07
    rlca                                          ; $747b: $07
    rlca                                          ; $747c: $07
    rlca                                          ; $747d: $07
    rlca                                          ; $747e: $07
    rlca                                          ; $747f: $07
    rlca                                          ; $7480: $07
    ld [$0a09], sp                                ; $7481: $08 $09 $0a
    nop                                           ; $7484: $00
    ld b, $07                                     ; $7485: $06 $07
    rlca                                          ; $7487: $07
    rlca                                          ; $7488: $07
    rlca                                          ; $7489: $07
    rlca                                          ; $748a: $07
    rlca                                          ; $748b: $07
    rlca                                          ; $748c: $07
    dec bc                                        ; $748d: $0b
    nop                                           ; $748e: $00
    nop                                           ; $748f: $00
    nop                                           ; $7490: $00
    ld b, $07                                     ; $7491: $06 $07
    rlca                                          ; $7493: $07
    rlca                                          ; $7494: $07
    rlca                                          ; $7495: $07
    rlca                                          ; $7496: $07
    rlca                                          ; $7497: $07
    rlca                                          ; $7498: $07
    dec bc                                        ; $7499: $0b
    nop                                           ; $749a: $00
    nop                                           ; $749b: $00
    nop                                           ; $749c: $00
    ld b, $07                                     ; $749d: $06 $07
    rlca                                          ; $749f: $07
    rlca                                          ; $74a0: $07
    rlca                                          ; $74a1: $07
    rlca                                          ; $74a2: $07
    rlca                                          ; $74a3: $07
    rlca                                          ; $74a4: $07
    dec bc                                        ; $74a5: $0b
    nop                                           ; $74a6: $00
    nop                                           ; $74a7: $00
    nop                                           ; $74a8: $00
    ld b, $07                                     ; $74a9: $06 $07
    rlca                                          ; $74ab: $07
    rlca                                          ; $74ac: $07
    rlca                                          ; $74ad: $07
    rlca                                          ; $74ae: $07
    rlca                                          ; $74af: $07
    rlca                                          ; $74b0: $07
    dec bc                                        ; $74b1: $0b
    nop                                           ; $74b2: $00
    nop                                           ; $74b3: $00
    nop                                           ; $74b4: $00
    inc c                                         ; $74b5: $0c
    dec c                                         ; $74b6: $0d
    rlca                                          ; $74b7: $07
    rlca                                          ; $74b8: $07
    rlca                                          ; $74b9: $07
    rlca                                          ; $74ba: $07
    rlca                                          ; $74bb: $07
    rlca                                          ; $74bc: $07
    ld c, $0f                                     ; $74bd: $0e $0f
    rrca                                          ; $74bf: $0f
    dec b                                         ; $74c0: $05
    db $10                                        ; $74c1: $10
    add hl, bc                                    ; $74c2: $09
    ld de, $1111                                  ; $74c3: $11 $11 $11
    ld [de], a                                    ; $74c6: $12
    ld [de], a                                    ; $74c7: $12
    ld [de], a                                    ; $74c8: $12
    inc de                                        ; $74c9: $13
    inc d                                         ; $74ca: $14
    inc d                                         ; $74cb: $14
    dec d                                         ; $74cc: $15
    nop                                           ; $74cd: $00
    nop                                           ; $74ce: $00
    nop                                           ; $74cf: $00
    nop                                           ; $74d0: $00
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    nop                                           ; $74d3: $00
    nop                                           ; $74d4: $00
    db $10                                        ; $74d5: $10
    add hl, bc                                    ; $74d6: $09
    add hl, bc                                    ; $74d7: $09
    ld d, $08                                     ; $74d8: $16 $08
    rlca                                          ; $74da: $07
    nop                                           ; $74db: $00
    nop                                           ; $74dc: $00
    nop                                           ; $74dd: $00
    nop                                           ; $74de: $00
    nop                                           ; $74df: $00
    nop                                           ; $74e0: $00
    nop                                           ; $74e1: $00
    nop                                           ; $74e2: $00
    nop                                           ; $74e3: $00
    nop                                           ; $74e4: $00
    nop                                           ; $74e5: $00
    nop                                           ; $74e6: $00
    ld bc, $0302                                  ; $74e7: $01 $02 $03
    inc b                                         ; $74ea: $04
    nop                                           ; $74eb: $00
    nop                                           ; $74ec: $00
    nop                                           ; $74ed: $00
    nop                                           ; $74ee: $00
    dec b                                         ; $74ef: $05
    ld b, $07                                     ; $74f0: $06 $07
    ld [$0000], sp                                ; $74f2: $08 $00 $00
    nop                                           ; $74f5: $00
    nop                                           ; $74f6: $00
    dec b                                         ; $74f7: $05
    add hl, bc                                    ; $74f8: $09
    nop                                           ; $74f9: $00
    nop                                           ; $74fa: $00
    nop                                           ; $74fb: $00
    ld b, $06                                     ; $74fc: $06 $06
    ld b, $06                                     ; $74fe: $06 $06
    add hl, bc                                    ; $7500: $09
    nop                                           ; $7501: $00
    nop                                           ; $7502: $00
    ld a, [bc]                                    ; $7503: $0a
    ld b, $06                                     ; $7504: $06 $06
    ld b, $06                                     ; $7506: $06 $06
    add hl, bc                                    ; $7508: $09
    nop                                           ; $7509: $00
    nop                                           ; $750a: $00
    dec bc                                        ; $750b: $0b
    inc c                                         ; $750c: $0c
    inc c                                         ; $750d: $0c
    inc c                                         ; $750e: $0c
    inc c                                         ; $750f: $0c
    dec c                                         ; $7510: $0d
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    add hl, bc                                    ; $7513: $09
    ld [$0000], sp                                ; $7514: $08 $00 $00
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    nop                                           ; $751a: $00
    nop                                           ; $751b: $00
    nop                                           ; $751c: $00
    nop                                           ; $751d: $00
    nop                                           ; $751e: $00
    ld bc, $0302                                  ; $751f: $01 $02 $03
    inc b                                         ; $7522: $04
    ld [bc], a                                    ; $7523: $02
    inc bc                                        ; $7524: $03
    inc b                                         ; $7525: $04
    dec b                                         ; $7526: $05
    nop                                           ; $7527: $00
    ld b, $07                                     ; $7528: $06 $07
    rlca                                          ; $752a: $07
    rlca                                          ; $752b: $07
    rlca                                          ; $752c: $07
    rlca                                          ; $752d: $07
    rlca                                          ; $752e: $07
    ld [$0600], sp                                ; $752f: $08 $00 $06
    rlca                                          ; $7532: $07
    rlca                                          ; $7533: $07
    rlca                                          ; $7534: $07
    rlca                                          ; $7535: $07
    rlca                                          ; $7536: $07
    add hl, bc                                    ; $7537: $09
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    ld b, $07                                     ; $753a: $06 $07
    rlca                                          ; $753c: $07
    rlca                                          ; $753d: $07
    rlca                                          ; $753e: $07
    rlca                                          ; $753f: $07
    add hl, bc                                    ; $7540: $09
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    ld b, $07                                     ; $7543: $06 $07
    rlca                                          ; $7545: $07
    rlca                                          ; $7546: $07
    rlca                                          ; $7547: $07
    rlca                                          ; $7548: $07
    add hl, bc                                    ; $7549: $09
    nop                                           ; $754a: $00
    ld a, [bc]                                    ; $754b: $0a
    dec bc                                        ; $754c: $0b
    rlca                                          ; $754d: $07
    rlca                                          ; $754e: $07
    rlca                                          ; $754f: $07
    rlca                                          ; $7550: $07
    rlca                                          ; $7551: $07
    add hl, bc                                    ; $7552: $09
    nop                                           ; $7553: $00
    inc c                                         ; $7554: $0c
    dec c                                         ; $7555: $0d
    ld c, $0e                                     ; $7556: $0e $0e
    ld c, $0e                                     ; $7558: $0e $0e
    ld c, $0f                                     ; $755a: $0e $0f
    nop                                           ; $755c: $00
    rlca                                          ; $755d: $07
    dec b                                         ; $755e: $05
    nop                                           ; $755f: $00
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    ld bc, $0102                                  ; $7567: $01 $02 $01
    inc bc                                        ; $756a: $03
    ld bc, $0400                                  ; $756b: $01 $00 $04
    dec b                                         ; $756e: $05
    ld b, $07                                     ; $756f: $06 $07
    ld [$0905], sp                                ; $7571: $08 $05 $09
    ld a, [bc]                                    ; $7574: $0a
    dec b                                         ; $7575: $05
    dec b                                         ; $7576: $05
    dec bc                                        ; $7577: $0b
    inc c                                         ; $7578: $0c
    dec b                                         ; $7579: $05
    dec c                                         ; $757a: $0d
    nop                                           ; $757b: $00
    ld c, $0e                                     ; $757c: $0e $0e
    ld c, $0e                                     ; $757e: $0e $0e
    ld c, $00                                     ; $7580: $0e $00
    ld [$0008], sp                                ; $7582: $08 $08 $00
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    nop                                           ; $758b: $00
    nop                                           ; $758c: $00
    nop                                           ; $758d: $00
    nop                                           ; $758e: $00
    nop                                           ; $758f: $00
    ld bc, $0302                                  ; $7590: $01 $02 $03
    inc b                                         ; $7593: $04
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    dec b                                         ; $7598: $05
    ld b, $07                                     ; $7599: $06 $07
    ld [$0000], sp                                ; $759b: $08 $00 $00
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    dec b                                         ; $75a0: $05
    add hl, bc                                    ; $75a1: $09
    nop                                           ; $75a2: $00
    nop                                           ; $75a3: $00
    nop                                           ; $75a4: $00
    ld a, [bc]                                    ; $75a5: $0a
    dec bc                                        ; $75a6: $0b
    inc c                                         ; $75a7: $0c
    ld b, $09                                     ; $75a8: $06 $09
    nop                                           ; $75aa: $00
    nop                                           ; $75ab: $00
    nop                                           ; $75ac: $00
    dec c                                         ; $75ad: $0d
    ld b, $06                                     ; $75ae: $06 $06
    ld b, $09                                     ; $75b0: $06 $09
    nop                                           ; $75b2: $00
    nop                                           ; $75b3: $00
    nop                                           ; $75b4: $00
    ld c, $06                                     ; $75b5: $0e $06
    ld b, $06                                     ; $75b7: $06 $06
    add hl, bc                                    ; $75b9: $09
    nop                                           ; $75ba: $00
    nop                                           ; $75bb: $00
    nop                                           ; $75bc: $00
    rrca                                          ; $75bd: $0f
    db $10                                        ; $75be: $10
    db $10                                        ; $75bf: $10
    db $10                                        ; $75c0: $10
    ld de, $0000                                  ; $75c1: $11 $00 $00
    ld b, $07                                     ; $75c4: $06 $07
    nop                                           ; $75c6: $00
    nop                                           ; $75c7: $00
    nop                                           ; $75c8: $00
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    nop                                           ; $75cb: $00
    nop                                           ; $75cc: $00
    ld bc, $0302                                  ; $75cd: $01 $02 $03
    inc b                                         ; $75d0: $04
    dec b                                         ; $75d1: $05
    nop                                           ; $75d2: $00
    ld b, $07                                     ; $75d3: $06 $07
    ld [$0a09], sp                                ; $75d5: $08 $09 $0a
    nop                                           ; $75d8: $00
    ld b, $0b                                     ; $75d9: $06 $0b
    nop                                           ; $75db: $00
    add hl, bc                                    ; $75dc: $09
    ld a, [bc]                                    ; $75dd: $0a
    inc c                                         ; $75de: $0c
    dec c                                         ; $75df: $0d
    add hl, bc                                    ; $75e0: $09
    add hl, bc                                    ; $75e1: $09
    add hl, bc                                    ; $75e2: $09
    ld a, [bc]                                    ; $75e3: $0a
    ld c, $0f                                     ; $75e4: $0e $0f
    add hl, bc                                    ; $75e6: $09
    add hl, bc                                    ; $75e7: $09
    add hl, bc                                    ; $75e8: $09
    ld a, [bc]                                    ; $75e9: $0a
    nop                                           ; $75ea: $00
    db $10                                        ; $75eb: $10
    ld de, $1111                                  ; $75ec: $11 $11 $11
    ld [de], a                                    ; $75ef: $12
    ld b, $08                                     ; $75f0: $06 $08
    nop                                           ; $75f2: $00
    nop                                           ; $75f3: $00
    nop                                           ; $75f4: $00
    nop                                           ; $75f5: $00
    nop                                           ; $75f6: $00
    nop                                           ; $75f7: $00
    ld bc, $0302                                  ; $75f8: $01 $02 $03
    inc b                                         ; $75fb: $04
    dec b                                         ; $75fc: $05
    nop                                           ; $75fd: $00
    ld b, $07                                     ; $75fe: $06 $07
    ld [$0a09], sp                                ; $7600: $08 $09 $0a
    dec bc                                        ; $7603: $0b
    inc c                                         ; $7604: $0c
    dec c                                         ; $7605: $0d
    ld c, $0f                                     ; $7606: $0e $0f
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    db $10                                        ; $760a: $10
    ld de, $1211                                  ; $760b: $11 $11 $12
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    inc de                                        ; $7613: $13
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    inc d                                         ; $7617: $14
    dec d                                         ; $7618: $15
    ld d, $17                                     ; $7619: $16 $17
    jr jr_0a8_761d                                ; $761b: $18 $00

jr_0a8_761d:
    add hl, de                                    ; $761d: $19
    ld a, [de]                                    ; $761e: $1a
    ld a, [de]                                    ; $761f: $1a
    dec de                                        ; $7620: $1b
    inc e                                         ; $7621: $1c
    rlca                                          ; $7622: $07
    rlca                                          ; $7623: $07
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    nop                                           ; $762a: $00
    ld bc, $0302                                  ; $762b: $01 $02 $03
    inc b                                         ; $762e: $04
    dec b                                         ; $762f: $05
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    ld b, $07                                     ; $7633: $06 $07
    ld [$0509], sp                                ; $7635: $08 $09 $05
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763a: $00
    ld a, [bc]                                    ; $763b: $0a
    ld [$0b08], sp                                ; $763c: $08 $08 $0b
    nop                                           ; $763f: $00
    nop                                           ; $7640: $00
    inc c                                         ; $7641: $0c
    dec c                                         ; $7642: $0d
    ld [$0e08], sp                                ; $7643: $08 $08 $0e
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    ld a, [bc]                                    ; $7648: $0a
    ld [$0808], sp                                ; $7649: $08 $08 $08
    rrca                                          ; $764c: $0f
    stop                                          ; $764d: $10 $00
    ld de, $1212                                  ; $764f: $11 $12 $12
    ld [de], a                                    ; $7652: $12
    inc de                                        ; $7653: $13
    nop                                           ; $7654: $00
    ld a, [bc]                                    ; $7655: $0a
    rlca                                          ; $7656: $07
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    nop                                           ; $765c: $00
    nop                                           ; $765d: $00
    nop                                           ; $765e: $00
    nop                                           ; $765f: $00
    nop                                           ; $7660: $00
    ld bc, $0302                                  ; $7661: $01 $02 $03
    ld [bc], a                                    ; $7664: $02
    inc b                                         ; $7665: $04
    dec b                                         ; $7666: $05
    ld b, $07                                     ; $7667: $06 $07
    ld [$0900], sp                                ; $7669: $08 $00 $09
    ld a, [bc]                                    ; $766c: $0a
    ld a, [bc]                                    ; $766d: $0a
    dec bc                                        ; $766e: $0b
    inc c                                         ; $766f: $0c
    dec c                                         ; $7670: $0d
    ld c, $0f                                     ; $7671: $0e $0f
    stop                                          ; $7673: $10 $00
    add hl, bc                                    ; $7675: $09
    ld de, $1312                                  ; $7676: $11 $12 $13
    inc d                                         ; $7679: $14
    dec d                                         ; $767a: $15
    ld d, $17                                     ; $767b: $16 $17
    jr jr_0a8_767f                                ; $767d: $18 $00

jr_0a8_767f:
    add hl, bc                                    ; $767f: $09
    add hl, de                                    ; $7680: $19
    ld a, [de]                                    ; $7681: $1a
    dec bc                                        ; $7682: $0b
    inc c                                         ; $7683: $0c
    dec c                                         ; $7684: $0d
    ld c, $0f                                     ; $7685: $0e $0f
    stop                                          ; $7687: $10 $00
    add hl, bc                                    ; $7689: $09
    ld a, [bc]                                    ; $768a: $0a
    ld a, [bc]                                    ; $768b: $0a
    inc de                                        ; $768c: $13
    inc d                                         ; $768d: $14
    dec d                                         ; $768e: $15
    ld d, $17                                     ; $768f: $16 $17
    dec de                                        ; $7691: $1b
    inc e                                         ; $7692: $1c
    dec e                                         ; $7693: $1d
    ld e, $1e                                     ; $7694: $1e $1e
    ld e, $1e                                     ; $7696: $1e $1e
    ld e, $1e                                     ; $7698: $1e $1e
    ld e, $1f                                     ; $769a: $1e $1f
    jr nz, jr_0a8_76a7                            ; $769c: $20 $09

    dec b                                         ; $769e: $05
    nop                                           ; $769f: $00
    nop                                           ; $76a0: $00
    nop                                           ; $76a1: $00
    nop                                           ; $76a2: $00
    nop                                           ; $76a3: $00
    nop                                           ; $76a4: $00
    nop                                           ; $76a5: $00
    nop                                           ; $76a6: $00

jr_0a8_76a7:
    nop                                           ; $76a7: $00
    nop                                           ; $76a8: $00
    ld bc, $0101                                  ; $76a9: $01 $01 $01
    ld [bc], a                                    ; $76ac: $02
    nop                                           ; $76ad: $00
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    nop                                           ; $76b0: $00
    inc bc                                        ; $76b1: $03
    inc b                                         ; $76b2: $04
    inc b                                         ; $76b3: $04
    inc b                                         ; $76b4: $04
    dec b                                         ; $76b5: $05
    nop                                           ; $76b6: $00
    nop                                           ; $76b7: $00
    nop                                           ; $76b8: $00
    nop                                           ; $76b9: $00
    nop                                           ; $76ba: $00
    inc b                                         ; $76bb: $04
    inc b                                         ; $76bc: $04
    inc b                                         ; $76bd: $04
    dec b                                         ; $76be: $05
    nop                                           ; $76bf: $00
    nop                                           ; $76c0: $00
    nop                                           ; $76c1: $00
    nop                                           ; $76c2: $00
    nop                                           ; $76c3: $00
    nop                                           ; $76c4: $00
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    nop                                           ; $76c7: $00
    nop                                           ; $76c8: $00
    nop                                           ; $76c9: $00
    nop                                           ; $76ca: $00
    nop                                           ; $76cb: $00
    dec c                                         ; $76cc: $0d
    ld a, [bc]                                    ; $76cd: $0a
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    nop                                           ; $76d3: $00
    nop                                           ; $76d4: $00
    nop                                           ; $76d5: $00
    nop                                           ; $76d6: $00
    nop                                           ; $76d7: $00
    nop                                           ; $76d8: $00
    nop                                           ; $76d9: $00
    nop                                           ; $76da: $00
    nop                                           ; $76db: $00
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    nop                                           ; $76de: $00
    nop                                           ; $76df: $00
    nop                                           ; $76e0: $00
    nop                                           ; $76e1: $00
    nop                                           ; $76e2: $00
    nop                                           ; $76e3: $00
    nop                                           ; $76e4: $00
    nop                                           ; $76e5: $00
    nop                                           ; $76e6: $00
    nop                                           ; $76e7: $00
    ld bc, $0202                                  ; $76e8: $01 $02 $02
    inc bc                                        ; $76eb: $03
    inc b                                         ; $76ec: $04
    dec b                                         ; $76ed: $05
    ld [bc], a                                    ; $76ee: $02
    dec b                                         ; $76ef: $05
    ld b, $07                                     ; $76f0: $06 $07
    ld [bc], a                                    ; $76f2: $02
    ld [$0100], sp                                ; $76f3: $08 $00 $01
    add hl, bc                                    ; $76f6: $09
    ld a, [bc]                                    ; $76f7: $0a
    dec bc                                        ; $76f8: $0b
    nop                                           ; $76f9: $00
    nop                                           ; $76fa: $00
    add hl, bc                                    ; $76fb: $09
    nop                                           ; $76fc: $00
    nop                                           ; $76fd: $00
    inc c                                         ; $76fe: $0c
    add hl, bc                                    ; $76ff: $09
    dec c                                         ; $7700: $0d
    nop                                           ; $7701: $00
    ld bc, $0909                                  ; $7702: $01 $09 $09
    ld c, $0f                                     ; $7705: $0e $0f
    db $10                                        ; $7707: $10
    add hl, bc                                    ; $7708: $09
    db $10                                        ; $7709: $10
    ld de, $0912                                  ; $770a: $11 $12 $09
    dec c                                         ; $770d: $0d
    nop                                           ; $770e: $00
    ld bc, $1413                                  ; $770f: $01 $13 $14
    dec d                                         ; $7712: $15
    inc de                                        ; $7713: $13
    inc d                                         ; $7714: $14
    dec d                                         ; $7715: $15
    inc de                                        ; $7716: $13
    inc d                                         ; $7717: $14
    ld d, $09                                     ; $7718: $16 $09
    rla                                           ; $771a: $17
    nop                                           ; $771b: $00
    nop                                           ; $771c: $00
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    nop                                           ; $771f: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    jr jr_0a8_7730                                ; $7725: $18 $09

    dec c                                         ; $7727: $0d
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    nop                                           ; $772a: $00
    nop                                           ; $772b: $00
    nop                                           ; $772c: $00
    nop                                           ; $772d: $00
    nop                                           ; $772e: $00
    nop                                           ; $772f: $00

jr_0a8_7730:
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    add hl, de                                    ; $7732: $19
    add hl, bc                                    ; $7733: $09
    ld a, [de]                                    ; $7734: $1a
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    nop                                           ; $773a: $00
    nop                                           ; $773b: $00
    nop                                           ; $773c: $00
    nop                                           ; $773d: $00
    nop                                           ; $773e: $00
    dec de                                        ; $773f: $1b
    inc e                                         ; $7740: $1c
    dec e                                         ; $7741: $1d
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    nop                                           ; $774a: $00
    nop                                           ; $774b: $00
    nop                                           ; $774c: $00
    ld e, $00                                     ; $774d: $1e $00
    nop                                           ; $774f: $00
    ld a, [bc]                                    ; $7750: $0a
    inc c                                         ; $7751: $0c
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    ld bc, $0202                                  ; $7767: $01 $02 $02
    inc bc                                        ; $776a: $03
    inc bc                                        ; $776b: $03
    inc bc                                        ; $776c: $03
    ld [bc], a                                    ; $776d: $02
    ld [bc], a                                    ; $776e: $02
    nop                                           ; $776f: $00
    nop                                           ; $7770: $00
    inc b                                         ; $7771: $04
    dec b                                         ; $7772: $05
    dec b                                         ; $7773: $05
    dec b                                         ; $7774: $05
    dec b                                         ; $7775: $05
    dec b                                         ; $7776: $05
    dec b                                         ; $7777: $05
    dec b                                         ; $7778: $05
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    ld b, $05                                     ; $777b: $06 $05
    dec b                                         ; $777d: $05
    rlca                                          ; $777e: $07
    ld [$0505], sp                                ; $777f: $08 $05 $05
    add hl, bc                                    ; $7782: $09
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    ld a, [bc]                                    ; $7785: $0a
    dec b                                         ; $7786: $05
    dec b                                         ; $7787: $05
    dec bc                                        ; $7788: $0b
    ld a, [bc]                                    ; $7789: $0a
    dec b                                         ; $778a: $05
    dec b                                         ; $778b: $05
    inc c                                         ; $778c: $0c
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    dec c                                         ; $778f: $0d
    dec b                                         ; $7790: $05
    dec b                                         ; $7791: $05
    ld c, $0f                                     ; $7792: $0e $0f
    dec b                                         ; $7794: $05
    dec b                                         ; $7795: $05
    stop                                          ; $7796: $10 $00
    nop                                           ; $7798: $00
    ld de, $0512                                  ; $7799: $11 $12 $05
    inc de                                        ; $779c: $13
    inc d                                         ; $779d: $14
    inc d                                         ; $779e: $14
    inc d                                         ; $779f: $14
    inc d                                         ; $77a0: $14
    nop                                           ; $77a1: $00
    nop                                           ; $77a2: $00
    nop                                           ; $77a3: $00
    ld a, [bc]                                    ; $77a4: $0a
    dec b                                         ; $77a5: $05
    dec bc                                        ; $77a6: $0b
    nop                                           ; $77a7: $00
    nop                                           ; $77a8: $00
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    nop                                           ; $77ab: $00
    nop                                           ; $77ac: $00
    dec d                                         ; $77ad: $15
    dec b                                         ; $77ae: $05
    dec b                                         ; $77af: $05
    dec bc                                        ; $77b0: $0b
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00
    nop                                           ; $77b3: $00
    nop                                           ; $77b4: $00
    nop                                           ; $77b5: $00
    nop                                           ; $77b6: $00
    ld a, [bc]                                    ; $77b7: $0a
    dec b                                         ; $77b8: $05
    dec b                                         ; $77b9: $05
    dec bc                                        ; $77ba: $0b
    nop                                           ; $77bb: $00
    nop                                           ; $77bc: $00
    nop                                           ; $77bd: $00
    nop                                           ; $77be: $00
    nop                                           ; $77bf: $00
    nop                                           ; $77c0: $00
    ld d, $17                                     ; $77c1: $16 $17
    rla                                           ; $77c3: $17
    jr jr_0a8_77c6                                ; $77c4: $18 $00

jr_0a8_77c6:
    nop                                           ; $77c6: $00
    nop                                           ; $77c7: $00
    nop                                           ; $77c8: $00
    nop                                           ; $77c9: $00
    add hl, de                                    ; $77ca: $19
    inc d                                         ; $77cb: $14
    nop                                           ; $77cc: $00
    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    nop                                           ; $77cf: $00
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    nop                                           ; $77d3: $00
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    ld bc, $0002                                  ; $77d6: $01 $02 $00
    nop                                           ; $77d9: $00
    inc bc                                        ; $77da: $03
    inc bc                                        ; $77db: $03
    inc bc                                        ; $77dc: $03
    inc bc                                        ; $77dd: $03
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00
    ld bc, $0504                                  ; $77e0: $01 $04 $05
    nop                                           ; $77e3: $00
    nop                                           ; $77e4: $00
    nop                                           ; $77e5: $00
    ld b, $00                                     ; $77e6: $06 $00
    nop                                           ; $77e8: $00
    rlca                                          ; $77e9: $07
    nop                                           ; $77ea: $00
    nop                                           ; $77eb: $00
    rlca                                          ; $77ec: $07
    nop                                           ; $77ed: $00
    nop                                           ; $77ee: $00
    ld [$0309], sp                                ; $77ef: $08 $09 $03
    nop                                           ; $77f2: $00
    ld a, [bc]                                    ; $77f3: $0a
    ld a, [bc]                                    ; $77f4: $0a
    ld a, [bc]                                    ; $77f5: $0a
    ld a, [bc]                                    ; $77f6: $0a
    nop                                           ; $77f7: $00
    inc bc                                        ; $77f8: $03
    ld [$0c0b], sp                                ; $77f9: $08 $0b $0c
    dec c                                         ; $77fc: $0d
    ld c, $0f                                     ; $77fd: $0e $0f
    db $10                                        ; $77ff: $10
    inc c                                         ; $7800: $0c
    inc c                                         ; $7801: $0c
    inc c                                         ; $7802: $0c
    inc c                                         ; $7803: $0c
    inc c                                         ; $7804: $0c
    inc c                                         ; $7805: $0c
    inc c                                         ; $7806: $0c
    inc c                                         ; $7807: $0c
    ld de, $1312                                  ; $7808: $11 $12 $13
    inc d                                         ; $780b: $14
    ld a, [bc]                                    ; $780c: $0a
    ld a, [bc]                                    ; $780d: $0a
    ld a, [bc]                                    ; $780e: $0a
    ld a, [bc]                                    ; $780f: $0a
    inc d                                         ; $7810: $14
    dec d                                         ; $7811: $15
    ld [de], a                                    ; $7812: $12
    ld d, $12                                     ; $7813: $16 $12
    rla                                           ; $7815: $17
    jr @+$1b                                      ; $7816: $18 $19

    ld a, [de]                                    ; $7818: $1a
    dec de                                        ; $7819: $1b
    dec de                                        ; $781a: $1b
    inc e                                         ; $781b: $1c
    dec e                                         ; $781c: $1d
    dec de                                        ; $781d: $1b
    ld e, $1f                                     ; $781e: $1e $1f
    ld [de], a                                    ; $7820: $12
    ld [de], a                                    ; $7821: $12
    jr nz, jr_0a8_7845                            ; $7822: $20 $21

    ld [de], a                                    ; $7824: $12
    ld [de], a                                    ; $7825: $12
    ld [de], a                                    ; $7826: $12
    ld [de], a                                    ; $7827: $12
    ld [de], a                                    ; $7828: $12
    ld [de], a                                    ; $7829: $12
    add hl, bc                                    ; $782a: $09
    ld [hl+], a                                   ; $782b: $22
    inc hl                                        ; $782c: $23
    ld [de], a                                    ; $782d: $12
    inc h                                         ; $782e: $24
    dec h                                         ; $782f: $25
    ld h, $27                                     ; $7830: $26 $27
    jr z, jr_0a8_785c                             ; $7832: $28 $28

    rra                                           ; $7834: $1f
    add hl, hl                                    ; $7835: $29
    jr z, jr_0a8_7862                             ; $7836: $28 $2a

    ld [de], a                                    ; $7838: $12
    dec hl                                        ; $7839: $2b
    inc l                                         ; $783a: $2c
    ld [de], a                                    ; $783b: $12
    inc c                                         ; $783c: $0c
    ld [de], a                                    ; $783d: $12
    ld [de], a                                    ; $783e: $12
    ld [de], a                                    ; $783f: $12
    ld [de], a                                    ; $7840: $12
    dec l                                         ; $7841: $2d
    ld [de], a                                    ; $7842: $12
    ld l, $2f                                     ; $7843: $2e $2f

jr_0a8_7845:
    ld [de], a                                    ; $7845: $12
    ld [de], a                                    ; $7846: $12
    jr nc, jr_0a8_787a                            ; $7847: $30 $31

    ld [hl-], a                                   ; $7849: $32
    inc sp                                        ; $784a: $33
    ld [de], a                                    ; $784b: $12
    jr nz, jr_0a8_7860                            ; $784c: $20 $12

    ld [de], a                                    ; $784e: $12
    ld [de], a                                    ; $784f: $12
    ld [de], a                                    ; $7850: $12
    ld [de], a                                    ; $7851: $12
    inc [hl]                                      ; $7852: $34
    dec [hl]                                      ; $7853: $35
    ld [de], a                                    ; $7854: $12
    ld [de], a                                    ; $7855: $12
    ld [hl], $37                                  ; $7856: $36 $37
    ld [de], a                                    ; $7858: $12
    ld [de], a                                    ; $7859: $12
    jr c, jr_0a8_786e                             ; $785a: $38 $12

jr_0a8_785c:
    ld [de], a                                    ; $785c: $12
    ld [de], a                                    ; $785d: $12
    ld [de], a                                    ; $785e: $12
    ld [de], a                                    ; $785f: $12

jr_0a8_7860:
    add hl, bc                                    ; $7860: $09
    rlca                                          ; $7861: $07

jr_0a8_7862:
    add hl, sp                                    ; $7862: $39
    ld a, [hl-]                                   ; $7863: $3a
    ld [de], a                                    ; $7864: $12
    ld [de], a                                    ; $7865: $12
    ld [de], a                                    ; $7866: $12
    ld [de], a                                    ; $7867: $12
    ld [de], a                                    ; $7868: $12
    ld [de], a                                    ; $7869: $12
    ld [de], a                                    ; $786a: $12
    ld [de], a                                    ; $786b: $12
    ld [de], a                                    ; $786c: $12
    ld [de], a                                    ; $786d: $12

jr_0a8_786e:
    ld [de], a                                    ; $786e: $12
    inc h                                         ; $786f: $24
    dec sp                                        ; $7870: $3b
    ld [de], a                                    ; $7871: $12
    ld [de], a                                    ; $7872: $12
    ld [de], a                                    ; $7873: $12
    jr nz, jr_0a8_7888                            ; $7874: $20 $12

    ld [de], a                                    ; $7876: $12
    ld [de], a                                    ; $7877: $12
    ld [de], a                                    ; $7878: $12
    inc a                                         ; $7879: $3c

jr_0a8_787a:
    dec a                                         ; $787a: $3d
    ld a, $3f                                     ; $787b: $3e $3f
    ld b, b                                       ; $787d: $40
    ld [de], a                                    ; $787e: $12
    ld [de], a                                    ; $787f: $12
    ld [de], a                                    ; $7880: $12
    ld [de], a                                    ; $7881: $12
    ld [de], a                                    ; $7882: $12
    ld [de], a                                    ; $7883: $12
    ld [de], a                                    ; $7884: $12
    ld [de], a                                    ; $7885: $12
    ld [de], a                                    ; $7886: $12
    ld [de], a                                    ; $7887: $12

jr_0a8_7888:
    ld [de], a                                    ; $7888: $12
    ld [de], a                                    ; $7889: $12
    ld [de], a                                    ; $788a: $12
    ld [de], a                                    ; $788b: $12
    ld [de], a                                    ; $788c: $12
    ld [de], a                                    ; $788d: $12
    ld [de], a                                    ; $788e: $12
    ld [de], a                                    ; $788f: $12
    ld [de], a                                    ; $7890: $12
    ld [de], a                                    ; $7891: $12
    add hl, bc                                    ; $7892: $09
    ld a, [bc]                                    ; $7893: $0a
    nop                                           ; $7894: $00
    ld b, c                                       ; $7895: $41
    ld b, d                                       ; $7896: $42
    ld [de], a                                    ; $7897: $12
    ld [de], a                                    ; $7898: $12
    ld [de], a                                    ; $7899: $12
    ld [de], a                                    ; $789a: $12
    ld b, e                                       ; $789b: $43
    ld [de], a                                    ; $789c: $12
    ld [de], a                                    ; $789d: $12
    ld [de], a                                    ; $789e: $12
    ld [de], a                                    ; $789f: $12
    ld b, h                                       ; $78a0: $44
    ld [de], a                                    ; $78a1: $12
    ld [de], a                                    ; $78a2: $12
    ld [de], a                                    ; $78a3: $12
    ld [de], a                                    ; $78a4: $12
    ld [de], a                                    ; $78a5: $12
    ld [de], a                                    ; $78a6: $12
    ld d, $12                                     ; $78a7: $16 $12
    ld [de], a                                    ; $78a9: $12
    ld [de], a                                    ; $78aa: $12
    ld [de], a                                    ; $78ab: $12
    ld b, l                                       ; $78ac: $45
    nop                                           ; $78ad: $00
    ld b, [hl]                                    ; $78ae: $46
    ld [$1212], sp                                ; $78af: $08 $12 $12
    ld [de], a                                    ; $78b2: $12
    ld [de], a                                    ; $78b3: $12
    ld b, a                                       ; $78b4: $47
    ld [de], a                                    ; $78b5: $12
    ld [de], a                                    ; $78b6: $12
    ld [de], a                                    ; $78b7: $12
    ld [de], a                                    ; $78b8: $12
    ld [de], a                                    ; $78b9: $12
    ld [de], a                                    ; $78ba: $12
    ld [de], a                                    ; $78bb: $12
    ld [de], a                                    ; $78bc: $12
    ld [de], a                                    ; $78bd: $12
    ld [de], a                                    ; $78be: $12
    ld [de], a                                    ; $78bf: $12
    ld [de], a                                    ; $78c0: $12
    ld [de], a                                    ; $78c1: $12
    ld [de], a                                    ; $78c2: $12
    ld c, b                                       ; $78c3: $48
    ld c, c                                       ; $78c4: $49
    ld c, d                                       ; $78c5: $4a
    nop                                           ; $78c6: $00
    ld c, e                                       ; $78c7: $4b
    ld [de], a                                    ; $78c8: $12
    ld [de], a                                    ; $78c9: $12
    ld [de], a                                    ; $78ca: $12
    ld [de], a                                    ; $78cb: $12
    ld [de], a                                    ; $78cc: $12
    ld [de], a                                    ; $78cd: $12
    ld [de], a                                    ; $78ce: $12
    ld [de], a                                    ; $78cf: $12
    ld [de], a                                    ; $78d0: $12
    ld [de], a                                    ; $78d1: $12
    ld [de], a                                    ; $78d2: $12
    ld [de], a                                    ; $78d3: $12
    ld [de], a                                    ; $78d4: $12
    ld [de], a                                    ; $78d5: $12
    ld [de], a                                    ; $78d6: $12
    ld [de], a                                    ; $78d7: $12
    ld [de], a                                    ; $78d8: $12
    ld c, h                                       ; $78d9: $4c
    ld c, l                                       ; $78da: $4d
    ld [de], a                                    ; $78db: $12
    ld c, [hl]                                    ; $78dc: $4e
    nop                                           ; $78dd: $00
    nop                                           ; $78de: $00
    ld c, a                                       ; $78df: $4f
    cpl                                           ; $78e0: $2f
    ld [de], a                                    ; $78e1: $12
    ld [hl], $37                                  ; $78e2: $36 $37
    ld d, b                                       ; $78e4: $50
    ld [de], a                                    ; $78e5: $12
    ld [de], a                                    ; $78e6: $12
    ld [de], a                                    ; $78e7: $12
    ld [de], a                                    ; $78e8: $12
    ld [de], a                                    ; $78e9: $12
    ld d, c                                       ; $78ea: $51
    ld [$1212], sp                                ; $78eb: $08 $12 $12
    ld [de], a                                    ; $78ee: $12
    ld [de], a                                    ; $78ef: $12
    ld [de], a                                    ; $78f0: $12
    ld [de], a                                    ; $78f1: $12
    dec bc                                        ; $78f2: $0b
    ld d, d                                       ; $78f3: $52
    ld [de], a                                    ; $78f4: $12
    ld d, e                                       ; $78f5: $53
    ld d, h                                       ; $78f6: $54
    nop                                           ; $78f7: $00
    ld d, l                                       ; $78f8: $55
    ld [$2416], sp                                ; $78f9: $08 $16 $24
    ld d, [hl]                                    ; $78fc: $56
    ld [de], a                                    ; $78fd: $12
    ld [de], a                                    ; $78fe: $12
    ld [de], a                                    ; $78ff: $12
    ld [de], a                                    ; $7900: $12
    ld d, a                                       ; $7901: $57
    ld [de], a                                    ; $7902: $12
    ld e, b                                       ; $7903: $58
    ld e, c                                       ; $7904: $59
    ld e, d                                       ; $7905: $5a
    ld [de], a                                    ; $7906: $12
    ld [de], a                                    ; $7907: $12
    ld [de], a                                    ; $7908: $12
    ld e, e                                       ; $7909: $5b
    ld [de], a                                    ; $790a: $12
    ld [de], a                                    ; $790b: $12
    ld [de], a                                    ; $790c: $12
    ld [de], a                                    ; $790d: $12
    ld [de], a                                    ; $790e: $12
    ld e, h                                       ; $790f: $5c
    nop                                           ; $7910: $00
    ld e, l                                       ; $7911: $5d
    ld de, $1212                                  ; $7912: $11 $12 $12
    ld [de], a                                    ; $7915: $12
    ld [de], a                                    ; $7916: $12
    ld [de], a                                    ; $7917: $12
    ld [de], a                                    ; $7918: $12
    ld [de], a                                    ; $7919: $12
    ld [de], a                                    ; $791a: $12
    ld [de], a                                    ; $791b: $12
    ld [de], a                                    ; $791c: $12
    ld d, e                                       ; $791d: $53
    ld e, [hl]                                    ; $791e: $5e
    ld [de], a                                    ; $791f: $12
    ld [de], a                                    ; $7920: $12
    ld [de], a                                    ; $7921: $12
    ld [de], a                                    ; $7922: $12
    ld [de], a                                    ; $7923: $12
    ld d, $12                                     ; $7924: $16 $12
    ld [de], a                                    ; $7926: $12
    ld e, a                                       ; $7927: $5f
    ld h, b                                       ; $7928: $60
    ld h, c                                       ; $7929: $61
    ld h, d                                       ; $792a: $62
    jr c, jr_0a8_793f                             ; $792b: $38 $12

    ld [de], a                                    ; $792d: $12
    ld [de], a                                    ; $792e: $12
    ld [de], a                                    ; $792f: $12
    ld [de], a                                    ; $7930: $12
    ld [de], a                                    ; $7931: $12
    ld h, e                                       ; $7932: $63
    ld h, h                                       ; $7933: $64
    ld [de], a                                    ; $7934: $12
    ld [de], a                                    ; $7935: $12
    ld [de], a                                    ; $7936: $12
    ld [hl], $37                                  ; $7937: $36 $37
    ld [de], a                                    ; $7939: $12
    ld [de], a                                    ; $793a: $12
    ld h, l                                       ; $793b: $65
    inc sp                                        ; $793c: $33
    ld [de], a                                    ; $793d: $12
    ld [de], a                                    ; $793e: $12

jr_0a8_793f:
    ld [de], a                                    ; $793f: $12
    ld [de], a                                    ; $7940: $12
    jr nc, jr_0a8_79a9                            ; $7941: $30 $66

    ld h, a                                       ; $7943: $67
    ld l, b                                       ; $7944: $68
    ld [de], a                                    ; $7945: $12
    ld [de], a                                    ; $7946: $12
    ld [de], a                                    ; $7947: $12
    ld d, $12                                     ; $7948: $16 $12
    ld [de], a                                    ; $794a: $12
    ld [de], a                                    ; $794b: $12
    ld l, c                                       ; $794c: $69
    ld [de], a                                    ; $794d: $12
    ld [de], a                                    ; $794e: $12
    ld [de], a                                    ; $794f: $12
    inc h                                         ; $7950: $24
    ld d, [hl]                                    ; $7951: $56
    ld [de], a                                    ; $7952: $12
    ld [de], a                                    ; $7953: $12
    ld l, d                                       ; $7954: $6a
    ld l, e                                       ; $7955: $6b
    ld l, h                                       ; $7956: $6c
    inc hl                                        ; $7957: $23
    ld [de], a                                    ; $7958: $12
    ld [de], a                                    ; $7959: $12
    add hl, bc                                    ; $795a: $09
    ld a, [bc]                                    ; $795b: $0a
    nop                                           ; $795c: $00
    ld l, l                                       ; $795d: $6d
    ld l, [hl]                                    ; $795e: $6e
    ld [de], a                                    ; $795f: $12
    ld [de], a                                    ; $7960: $12

Jump_0a8_7961:
    ld [de], a                                    ; $7961: $12
    ld [de], a                                    ; $7962: $12
    ld [de], a                                    ; $7963: $12
    ld [de], a                                    ; $7964: $12
    ld [de], a                                    ; $7965: $12
    ld [de], a                                    ; $7966: $12
    ld l, a                                       ; $7967: $6f
    ld [hl], b                                    ; $7968: $70
    ld [de], a                                    ; $7969: $12
    ld [de], a                                    ; $796a: $12
    ld [de], a                                    ; $796b: $12
    ld [de], a                                    ; $796c: $12
    ld [de], a                                    ; $796d: $12
    ld [de], a                                    ; $796e: $12
    ld [de], a                                    ; $796f: $12
    ld [hl], c                                    ; $7970: $71
    scf                                           ; $7971: $37
    ld [de], a                                    ; $7972: $12
    ld l, $72                                     ; $7973: $2e $72
    nop                                           ; $7975: $00
    ld [hl], e                                    ; $7976: $73
    ld [hl], h                                    ; $7977: $74
    jr nz, @+$14                                  ; $7978: $20 $12

    ld [de], a                                    ; $797a: $12
    ld [de], a                                    ; $797b: $12
    ld d, $12                                     ; $797c: $16 $12
    ld [de], a                                    ; $797e: $12
    ld [de], a                                    ; $797f: $12
    ld [de], a                                    ; $7980: $12
    ld [de], a                                    ; $7981: $12
    inc a                                         ; $7982: $3c
    inc l                                         ; $7983: $2c
    ld [de], a                                    ; $7984: $12
    ld [de], a                                    ; $7985: $12
    ld [hl], l                                    ; $7986: $75
    halt                                          ; $7987: $76
    ld [de], a                                    ; $7988: $12
    ld d, e                                       ; $7989: $53
    ld d, [hl]                                    ; $798a: $56
    jr nz, jr_0a8_799f                            ; $798b: $20 $12

    ld b, l                                       ; $798d: $45
    ld [hl], a                                    ; $798e: $77
    ld a, b                                       ; $798f: $78
    ld [de], a                                    ; $7990: $12
    ld a, c                                       ; $7991: $79
    ld b, e                                       ; $7992: $43
    ld a, d                                       ; $7993: $7a
    ld a, e                                       ; $7994: $7b
    ld b, e                                       ; $7995: $43
    ld [de], a                                    ; $7996: $12
    ld [de], a                                    ; $7997: $12
    ld [de], a                                    ; $7998: $12
    ld [de], a                                    ; $7999: $12
    ld [de], a                                    ; $799a: $12
    inc de                                        ; $799b: $13
    ld a, h                                       ; $799c: $7c
    ld [de], a                                    ; $799d: $12
    ld [de], a                                    ; $799e: $12

jr_0a8_799f:
    ld a, l                                       ; $799f: $7d
    dec d                                         ; $79a0: $15
    ld [de], a                                    ; $79a1: $12
    ld [de], a                                    ; $79a2: $12
    ld [de], a                                    ; $79a3: $12
    ld a, [hl]                                    ; $79a4: $7e
    ld a, a                                       ; $79a5: $7f
    add b                                         ; $79a6: $80
    add c                                         ; $79a7: $81
    add d                                         ; $79a8: $82

jr_0a8_79a9:
    add d                                         ; $79a9: $82
    add e                                         ; $79aa: $83
    add h                                         ; $79ab: $84
    add l                                         ; $79ac: $85
    add [hl]                                      ; $79ad: $86
    add a                                         ; $79ae: $87
    add d                                         ; $79af: $82
    adc b                                         ; $79b0: $88
    adc c                                         ; $79b1: $89
    add d                                         ; $79b2: $82
    add d                                         ; $79b3: $82
    adc d                                         ; $79b4: $8a
    adc e                                         ; $79b5: $8b
    ld a, [bc]                                    ; $79b6: $0a
    ld a, [bc]                                    ; $79b7: $0a
    add d                                         ; $79b8: $82
    adc h                                         ; $79b9: $8c
    adc l                                         ; $79ba: $8d
    adc l                                         ; $79bb: $8d
    adc l                                         ; $79bc: $8d
    add [hl]                                      ; $79bd: $86
    nop                                           ; $79be: $00
    nop                                           ; $79bf: $00
    rlca                                          ; $79c0: $07
    add hl, bc                                    ; $79c1: $09
    nop                                           ; $79c2: $00
    nop                                           ; $79c3: $00
    nop                                           ; $79c4: $00
    nop                                           ; $79c5: $00
    nop                                           ; $79c6: $00
    nop                                           ; $79c7: $00
    nop                                           ; $79c8: $00
    nop                                           ; $79c9: $00
    nop                                           ; $79ca: $00
    ld bc, $0302                                  ; $79cb: $01 $02 $03
    nop                                           ; $79ce: $00
    nop                                           ; $79cf: $00
    nop                                           ; $79d0: $00
    inc b                                         ; $79d1: $04
    dec b                                         ; $79d2: $05
    ld b, $07                                     ; $79d3: $06 $07
    ld [$0900], sp                                ; $79d5: $08 $00 $09
    ld a, [bc]                                    ; $79d8: $0a
    ld b, $06                                     ; $79d9: $06 $06
    ld b, $0b                                     ; $79db: $06 $0b
    inc c                                         ; $79dd: $0c
    dec c                                         ; $79de: $0d
    ld c, $06                                     ; $79df: $0e $06
    rrca                                          ; $79e1: $0f
    ld b, $00                                     ; $79e2: $06 $00
    nop                                           ; $79e4: $00
    db $10                                        ; $79e5: $10
    ld de, $1206                                  ; $79e6: $11 $06 $12
    ld b, $13                                     ; $79e9: $06 $13
    inc d                                         ; $79eb: $14
    dec c                                         ; $79ec: $0d
    dec d                                         ; $79ed: $15
    ld b, $06                                     ; $79ee: $06 $06
    ld b, $16                                     ; $79f0: $06 $16
    nop                                           ; $79f2: $00
    nop                                           ; $79f3: $00
    dec c                                         ; $79f4: $0d
    dec d                                         ; $79f5: $15
    ld b, $17                                     ; $79f6: $06 $17
    jr jr_0a8_79fa                                ; $79f8: $18 $00

jr_0a8_79fa:
    nop                                           ; $79fa: $00
    nop                                           ; $79fb: $00
    nop                                           ; $79fc: $00
    rrca                                          ; $79fd: $0f
    nop                                           ; $79fe: $00
    nop                                           ; $79ff: $00
    nop                                           ; $7a00: $00
    add hl, bc                                    ; $7a01: $09
    ld [de], a                                    ; $7a02: $12
    nop                                           ; $7a03: $00
    nop                                           ; $7a04: $00
    nop                                           ; $7a05: $00
    nop                                           ; $7a06: $00
    nop                                           ; $7a07: $00
    nop                                           ; $7a08: $00
    nop                                           ; $7a09: $00
    nop                                           ; $7a0a: $00
    nop                                           ; $7a0b: $00
    nop                                           ; $7a0c: $00
    ld bc, $0302                                  ; $7a0d: $01 $02 $03
    inc bc                                        ; $7a10: $03
    inc bc                                        ; $7a11: $03
    inc bc                                        ; $7a12: $03
    ld bc, $0000                                  ; $7a13: $01 $00 $00
    inc b                                         ; $7a16: $04
    dec b                                         ; $7a17: $05
    ld b, $07                                     ; $7a18: $06 $07
    ld [$0409], sp                                ; $7a1a: $08 $09 $04
    nop                                           ; $7a1d: $00
    nop                                           ; $7a1e: $00
    ld a, [bc]                                    ; $7a1f: $0a
    dec bc                                        ; $7a20: $0b
    inc c                                         ; $7a21: $0c
    rlca                                          ; $7a22: $07
    dec c                                         ; $7a23: $0d
    ld a, [bc]                                    ; $7a24: $0a
    dec bc                                        ; $7a25: $0b
    nop                                           ; $7a26: $00
    nop                                           ; $7a27: $00
    ld a, [bc]                                    ; $7a28: $0a
    dec bc                                        ; $7a29: $0b
    ld c, $00                                     ; $7a2a: $0e $00
    rrca                                          ; $7a2c: $0f
    ld a, [bc]                                    ; $7a2d: $0a
    dec bc                                        ; $7a2e: $0b
    nop                                           ; $7a2f: $00
    db $10                                        ; $7a30: $10
    ld de, $1312                                  ; $7a31: $11 $12 $13
    inc d                                         ; $7a34: $14
    dec d                                         ; $7a35: $15
    ld [de], a                                    ; $7a36: $12
    ld d, $17                                     ; $7a37: $16 $17
    jr jr_0a8_7a54                                ; $7a39: $18 $19

    ld [de], a                                    ; $7a3b: $12
    ld [de], a                                    ; $7a3c: $12
    ld [de], a                                    ; $7a3d: $12
    ld [de], a                                    ; $7a3e: $12
    ld [de], a                                    ; $7a3f: $12
    ld a, [de]                                    ; $7a40: $1a
    dec de                                        ; $7a41: $1b
    nop                                           ; $7a42: $00
    ld a, [bc]                                    ; $7a43: $0a
    ld [de], a                                    ; $7a44: $12
    dec bc                                        ; $7a45: $0b
    inc e                                         ; $7a46: $1c
    ld a, [bc]                                    ; $7a47: $0a
    ld [de], a                                    ; $7a48: $12
    dec bc                                        ; $7a49: $0b
    nop                                           ; $7a4a: $00
    dec e                                         ; $7a4b: $1d
    ld e, $12                                     ; $7a4c: $1e $12
    dec bc                                        ; $7a4e: $0b
    nop                                           ; $7a4f: $00
    ld a, [bc]                                    ; $7a50: $0a
    ld [de], a                                    ; $7a51: $12
    dec bc                                        ; $7a52: $0b
    nop                                           ; $7a53: $00

jr_0a8_7a54:
    rra                                           ; $7a54: $1f
    jr nz, jr_0a8_7a69                            ; $7a55: $20 $12

    dec bc                                        ; $7a57: $0b
    nop                                           ; $7a58: $00
    ld a, [bc]                                    ; $7a59: $0a
    ld hl, $0022                                  ; $7a5a: $21 $22 $00
    nop                                           ; $7a5d: $00
    inc hl                                        ; $7a5e: $23
    ld [de], a                                    ; $7a5f: $12
    dec bc                                        ; $7a60: $0b
    nop                                           ; $7a61: $00
    ld a, [bc]                                    ; $7a62: $0a
    inc h                                         ; $7a63: $24
    dec h                                         ; $7a64: $25
    nop                                           ; $7a65: $00
    nop                                           ; $7a66: $00
    ld a, [bc]                                    ; $7a67: $0a
    ld [de], a                                    ; $7a68: $12

jr_0a8_7a69:
    ld h, $00                                     ; $7a69: $26 $00
    daa                                           ; $7a6b: $27
    ld [de], a                                    ; $7a6c: $12
    dec bc                                        ; $7a6d: $0b
    nop                                           ; $7a6e: $00
    jr z, jr_0a8_7a9a                             ; $7a6f: $28 $29

    ld [de], a                                    ; $7a71: $12
    ld a, [hl+]                                   ; $7a72: $2a
    dec hl                                        ; $7a73: $2b
    inc l                                         ; $7a74: $2c
    ld [de], a                                    ; $7a75: $12
    dec b                                         ; $7a76: $05
    dec l                                         ; $7a77: $2d
    nop                                           ; $7a78: $00
    ld a, [bc]                                    ; $7a79: $0a
    ld [de], a                                    ; $7a7a: $12
    ld [de], a                                    ; $7a7b: $12
    ld [de], a                                    ; $7a7c: $12
    ld [de], a                                    ; $7a7d: $12
    ld [de], a                                    ; $7a7e: $12
    dec bc                                        ; $7a7f: $0b
    nop                                           ; $7a80: $00
    nop                                           ; $7a81: $00
    ld l, $2f                                     ; $7a82: $2e $2f
    dec bc                                        ; $7a84: $0b
    jr nc, jr_0a8_7a91                            ; $7a85: $30 $0a

    ld sp, $0032                                  ; $7a87: $31 $32 $00
    nop                                           ; $7a8a: $00
    inc sp                                        ; $7a8b: $33
    inc [hl]                                      ; $7a8c: $34
    inc h                                         ; $7a8d: $24
    dec [hl]                                      ; $7a8e: $35
    ld [hl], $37                                  ; $7a8f: $36 $37

jr_0a8_7a91:
    inc sp                                        ; $7a91: $33
    nop                                           ; $7a92: $00
    nop                                           ; $7a93: $00
    rlca                                          ; $7a94: $07
    jr c, jr_0a8_7ad0                             ; $7a95: $38 $39

    ld [de], a                                    ; $7a97: $12
    ld a, [hl-]                                   ; $7a98: $3a
    dec sp                                        ; $7a99: $3b

jr_0a8_7a9a:
    rlca                                          ; $7a9a: $07
    nop                                           ; $7a9b: $00
    nop                                           ; $7a9c: $00
    inc a                                         ; $7a9d: $3c
    inc a                                         ; $7a9e: $3c
    inc a                                         ; $7a9f: $3c
    dec a                                         ; $7aa0: $3d
    inc a                                         ; $7aa1: $3c
    inc a                                         ; $7aa2: $3c
    inc a                                         ; $7aa3: $3c
    nop                                           ; $7aa4: $00
    ld a, [bc]                                    ; $7aa5: $0a
    ld [de], a                                    ; $7aa6: $12
    nop                                           ; $7aa7: $00
    nop                                           ; $7aa8: $00
    nop                                           ; $7aa9: $00
    nop                                           ; $7aaa: $00
    nop                                           ; $7aab: $00
    nop                                           ; $7aac: $00
    nop                                           ; $7aad: $00
    nop                                           ; $7aae: $00
    nop                                           ; $7aaf: $00
    nop                                           ; $7ab0: $00
    nop                                           ; $7ab1: $00
    ld bc, $0302                                  ; $7ab2: $01 $02 $03
    inc b                                         ; $7ab5: $04
    ld [bc], a                                    ; $7ab6: $02
    ld [bc], a                                    ; $7ab7: $02
    ld [bc], a                                    ; $7ab8: $02
    dec b                                         ; $7ab9: $05
    nop                                           ; $7aba: $00
    ld b, $07                                     ; $7abb: $06 $07
    ld [$0808], sp                                ; $7abd: $08 $08 $08
    ld [$0808], sp                                ; $7ac0: $08 $08 $08
    add hl, bc                                    ; $7ac3: $09
    ld a, [bc]                                    ; $7ac4: $0a
    dec bc                                        ; $7ac5: $0b
    inc c                                         ; $7ac6: $0c
    ld [$0808], sp                                ; $7ac7: $08 $08 $08
    ld [$0808], sp                                ; $7aca: $08 $08 $08
    dec c                                         ; $7acd: $0d
    ld c, $00                                     ; $7ace: $0e $00

jr_0a8_7ad0:
    rrca                                          ; $7ad0: $0f
    db $10                                        ; $7ad1: $10
    ld de, $0808                                  ; $7ad2: $11 $08 $08
    ld [de], a                                    ; $7ad5: $12
    db $10                                        ; $7ad6: $10
    inc de                                        ; $7ad7: $13
    nop                                           ; $7ad8: $00
    nop                                           ; $7ad9: $00
    inc d                                         ; $7ada: $14
    inc d                                         ; $7adb: $14
    inc d                                         ; $7adc: $14
    ld [$1408], sp                                ; $7add: $08 $08 $14
    inc d                                         ; $7ae0: $14
    inc d                                         ; $7ae1: $14
    nop                                           ; $7ae2: $00
    nop                                           ; $7ae3: $00
    inc d                                         ; $7ae4: $14
    dec d                                         ; $7ae5: $15
    ld d, $08                                     ; $7ae6: $16 $08
    ld [$1817], sp                                ; $7ae8: $08 $17 $18
    inc d                                         ; $7aeb: $14
    nop                                           ; $7aec: $00
    nop                                           ; $7aed: $00
    nop                                           ; $7aee: $00
    add hl, de                                    ; $7aef: $19
    ld [$1b1a], sp                                ; $7af0: $08 $1a $1b
    ld [$001c], sp                                ; $7af3: $08 $1c $00
    nop                                           ; $7af6: $00
    nop                                           ; $7af7: $00
    nop                                           ; $7af8: $00
    add hl, de                                    ; $7af9: $19
    ld [$191c], sp                                ; $7afa: $08 $1c $19
    ld [$001c], sp                                ; $7afd: $08 $1c $00
    nop                                           ; $7b00: $00
    nop                                           ; $7b01: $00
    ld bc, $081d                                  ; $7b02: $01 $1d $08
    ld e, $1f                                     ; $7b05: $1e $1f
    ld [$0520], sp                                ; $7b07: $08 $20 $05
    nop                                           ; $7b0a: $00
    nop                                           ; $7b0b: $00
    ld hl, $0808                                  ; $7b0c: $21 $08 $08
    ld [$0808], sp                                ; $7b0f: $08 $08 $08
    ld [$0022], sp                                ; $7b12: $08 $22 $00
    inc hl                                        ; $7b15: $23
    inc h                                         ; $7b16: $24
    ld [$0808], sp                                ; $7b17: $08 $08 $08
    ld [$0808], sp                                ; $7b1a: $08 $08 $08
    dec h                                         ; $7b1d: $25
    ld h, $27                                     ; $7b1e: $26 $27
    jr z, jr_0a8_7b2a                             ; $7b20: $28 $08

    ld [$0808], sp                                ; $7b22: $08 $08 $08
    ld [$2908], sp                                ; $7b25: $08 $08 $29
    ld a, [hl+]                                   ; $7b28: $2a
    nop                                           ; $7b29: $00

jr_0a8_7b2a:
    ld hl, $0808                                  ; $7b2a: $21 $08 $08
    dec hl                                        ; $7b2d: $2b
    inc l                                         ; $7b2e: $2c
    ld [$2208], sp                                ; $7b2f: $08 $08 $22
    nop                                           ; $7b32: $00
    nop                                           ; $7b33: $00
    inc d                                         ; $7b34: $14
    dec l                                         ; $7b35: $2d
    ld [$191c], sp                                ; $7b36: $08 $1c $19
    ld [$142e], sp                                ; $7b39: $08 $2e $14
    nop                                           ; $7b3c: $00
    nop                                           ; $7b3d: $00
    inc d                                         ; $7b3e: $14
    cpl                                           ; $7b3f: $2f
    ld [$3130], sp                                ; $7b40: $08 $30 $31
    ld [$1432], sp                                ; $7b43: $08 $32 $14
    nop                                           ; $7b46: $00
    nop                                           ; $7b47: $00
    inc sp                                        ; $7b48: $33
    inc [hl]                                      ; $7b49: $34
    ld [$0808], sp                                ; $7b4a: $08 $08 $08
    ld [$3335], sp                                ; $7b4d: $08 $35 $33
    nop                                           ; $7b50: $00
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    ld [hl], $37                                  ; $7b53: $36 $37
    scf                                           ; $7b55: $37
    scf                                           ; $7b56: $37
    scf                                           ; $7b57: $37
    jr c, jr_0a8_7b5a                             ; $7b58: $38 $00

jr_0a8_7b5a:
    nop                                           ; $7b5a: $00
    ld a, [bc]                                    ; $7b5b: $0a
    inc de                                        ; $7b5c: $13
    nop                                           ; $7b5d: $00
    nop                                           ; $7b5e: $00
    nop                                           ; $7b5f: $00
    nop                                           ; $7b60: $00
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    nop                                           ; $7b63: $00
    nop                                           ; $7b64: $00
    nop                                           ; $7b65: $00
    nop                                           ; $7b66: $00
    nop                                           ; $7b67: $00
    ld bc, $0202                                  ; $7b68: $01 $02 $02
    ld [bc], a                                    ; $7b6b: $02
    ld [bc], a                                    ; $7b6c: $02
    ld [bc], a                                    ; $7b6d: $02
    ld [bc], a                                    ; $7b6e: $02
    inc bc                                        ; $7b6f: $03
    nop                                           ; $7b70: $00
    inc b                                         ; $7b71: $04
    dec b                                         ; $7b72: $05
    ld b, $06                                     ; $7b73: $06 $06
    rlca                                          ; $7b75: $07
    ld [$0606], sp                                ; $7b76: $08 $06 $06
    add hl, bc                                    ; $7b79: $09
    ld a, [bc]                                    ; $7b7a: $0a
    dec bc                                        ; $7b7b: $0b
    inc c                                         ; $7b7c: $0c
    ld b, $06                                     ; $7b7d: $06 $06
    dec c                                         ; $7b7f: $0d
    ld c, $06                                     ; $7b80: $0e $06
    ld b, $0f                                     ; $7b82: $06 $0f
    stop                                          ; $7b84: $10 $00
    ld de, $0612                                  ; $7b86: $11 $12 $06
    inc de                                        ; $7b89: $13
    inc d                                         ; $7b8a: $14
    ld b, $12                                     ; $7b8b: $06 $12
    dec d                                         ; $7b8d: $15
    nop                                           ; $7b8e: $00
    nop                                           ; $7b8f: $00
    nop                                           ; $7b90: $00
    ld d, $06                                     ; $7b91: $16 $06
    rla                                           ; $7b93: $17
    ld d, $06                                     ; $7b94: $16 $06
    rla                                           ; $7b96: $17
    nop                                           ; $7b97: $00
    nop                                           ; $7b98: $00
    nop                                           ; $7b99: $00
    jr jr_0a8_7bb5                                ; $7b9a: $18 $19

    ld b, $1a                                     ; $7b9c: $06 $1a
    dec de                                        ; $7b9e: $1b
    ld b, $1c                                     ; $7b9f: $06 $1c
    jr jr_0a8_7ba3                                ; $7ba1: $18 $00

jr_0a8_7ba3:
    nop                                           ; $7ba3: $00
    dec e                                         ; $7ba4: $1d
    ld e, $06                                     ; $7ba5: $1e $06
    ld b, $06                                     ; $7ba7: $06 $06
    ld b, $1f                                     ; $7ba9: $06 $1f
    dec e                                         ; $7bab: $1d
    nop                                           ; $7bac: $00
    nop                                           ; $7bad: $00
    jr nz, jr_0a8_7bb6                            ; $7bae: $20 $06

    ld b, $21                                     ; $7bb0: $06 $21
    ld [hl+], a                                   ; $7bb2: $22
    ld b, $06                                     ; $7bb3: $06 $06

jr_0a8_7bb5:
    inc hl                                        ; $7bb5: $23

jr_0a8_7bb6:
    nop                                           ; $7bb6: $00
    nop                                           ; $7bb7: $00
    jr nz, @+$08                                  ; $7bb8: $20 $06

    ld b, $24                                     ; $7bba: $06 $24
    dec h                                         ; $7bbc: $25
    ld b, $06                                     ; $7bbd: $06 $06
    ld h, $00                                     ; $7bbf: $26 $00
    nop                                           ; $7bc1: $00
    jr nz, jr_0a8_7bca                            ; $7bc2: $20 $06

    ld b, $27                                     ; $7bc4: $06 $27
    jr z, @+$08                                   ; $7bc6: $28 $06

    ld b, $29                                     ; $7bc8: $06 $29

jr_0a8_7bca:
    nop                                           ; $7bca: $00
    ld a, [hl+]                                   ; $7bcb: $2a
    dec hl                                        ; $7bcc: $2b
    ld b, $06                                     ; $7bcd: $06 $06
    rla                                           ; $7bcf: $17
    ld d, $06                                     ; $7bd0: $16 $06
    ld b, $2c                                     ; $7bd2: $06 $2c
    nop                                           ; $7bd4: $00
    dec l                                         ; $7bd5: $2d
    ld l, $06                                     ; $7bd6: $2e $06
    ld b, $17                                     ; $7bd8: $06 $17
    ld d, $06                                     ; $7bda: $16 $06
    ld b, $26                                     ; $7bdc: $06 $26
    nop                                           ; $7bde: $00
    nop                                           ; $7bdf: $00
    cpl                                           ; $7be0: $2f
    jr nc, @+$08                                  ; $7be1: $30 $06

    ld a, [de]                                    ; $7be3: $1a
    dec de                                        ; $7be4: $1b
    ld b, $06                                     ; $7be5: $06 $06
    ld sp, $0000                                  ; $7be7: $31 $00 $00
    dec e                                         ; $7bea: $1d
    ld [hl-], a                                   ; $7beb: $32
    ld b, $06                                     ; $7bec: $06 $06
    ld b, $06                                     ; $7bee: $06 $06
    ld b, $33                                     ; $7bf0: $06 $33
    nop                                           ; $7bf2: $00
    nop                                           ; $7bf3: $00
    dec e                                         ; $7bf4: $1d
    ld [hl-], a                                   ; $7bf5: $32
    ld b, $06                                     ; $7bf6: $06 $06
    ld b, $06                                     ; $7bf8: $06 $06
    ld b, $33                                     ; $7bfa: $06 $33
    nop                                           ; $7bfc: $00
    nop                                           ; $7bfd: $00
    inc [hl]                                      ; $7bfe: $34
    dec [hl]                                      ; $7bff: $35
    ld [hl], $37                                  ; $7c00: $36 $37
    ld b, $06                                     ; $7c02: $06 $06
    ld b, $38                                     ; $7c04: $06 $38
    add hl, sp                                    ; $7c06: $39
    nop                                           ; $7c07: $00
    nop                                           ; $7c08: $00
    nop                                           ; $7c09: $00
    nop                                           ; $7c0a: $00
    ld a, [hl-]                                   ; $7c0b: $3a
    dec sp                                        ; $7c0c: $3b
    inc a                                         ; $7c0d: $3c
    inc a                                         ; $7c0e: $3c
    dec a                                         ; $7c0f: $3d
    ld a, $00                                     ; $7c10: $3e $00
    nop                                           ; $7c12: $00
    nop                                           ; $7c13: $00
    nop                                           ; $7c14: $00
    ccf                                           ; $7c15: $3f
    ld b, b                                       ; $7c16: $40
    nop                                           ; $7c17: $00
    nop                                           ; $7c18: $00
    nop                                           ; $7c19: $00
    nop                                           ; $7c1a: $00
    dec bc                                        ; $7c1b: $0b
    inc de                                        ; $7c1c: $13
    nop                                           ; $7c1d: $00
    nop                                           ; $7c1e: $00
    nop                                           ; $7c1f: $00
    nop                                           ; $7c20: $00
    nop                                           ; $7c21: $00
    nop                                           ; $7c22: $00
    nop                                           ; $7c23: $00
    nop                                           ; $7c24: $00
    nop                                           ; $7c25: $00
    nop                                           ; $7c26: $00
    nop                                           ; $7c27: $00
    nop                                           ; $7c28: $00
    nop                                           ; $7c29: $00
    ld bc, $0202                                  ; $7c2a: $01 $02 $02
    ld [bc], a                                    ; $7c2d: $02
    ld [bc], a                                    ; $7c2e: $02
    ld [bc], a                                    ; $7c2f: $02
    ld [bc], a                                    ; $7c30: $02
    inc bc                                        ; $7c31: $03
    nop                                           ; $7c32: $00
    nop                                           ; $7c33: $00
    inc b                                         ; $7c34: $04
    dec b                                         ; $7c35: $05
    ld b, $06                                     ; $7c36: $06 $06
    ld b, $06                                     ; $7c38: $06 $06
    ld b, $06                                     ; $7c3a: $06 $06
    rlca                                          ; $7c3c: $07
    nop                                           ; $7c3d: $00
    nop                                           ; $7c3e: $00
    ld [$0609], sp                                ; $7c3f: $08 $09 $06
    ld b, $06                                     ; $7c42: $06 $06
    ld b, $06                                     ; $7c44: $06 $06
    ld b, $07                                     ; $7c46: $06 $07
    nop                                           ; $7c48: $00
    nop                                           ; $7c49: $00
    nop                                           ; $7c4a: $00
    ld a, [bc]                                    ; $7c4b: $0a
    ld b, $06                                     ; $7c4c: $06 $06
    ld b, $06                                     ; $7c4e: $06 $06
    ld b, $06                                     ; $7c50: $06 $06
    dec bc                                        ; $7c52: $0b
    nop                                           ; $7c53: $00
    nop                                           ; $7c54: $00
    nop                                           ; $7c55: $00
    inc c                                         ; $7c56: $0c
    dec c                                         ; $7c57: $0d
    ld b, $06                                     ; $7c58: $06 $06
    ld c, $0f                                     ; $7c5a: $0e $0f
    ld b, $10                                     ; $7c5c: $06 $10
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    nop                                           ; $7c60: $00
    ld de, $0612                                  ; $7c61: $11 $12 $06
    ld b, $07                                     ; $7c64: $06 $07
    inc de                                        ; $7c66: $13
    ld b, $14                                     ; $7c67: $06 $14
    dec d                                         ; $7c69: $15
    nop                                           ; $7c6a: $00
    nop                                           ; $7c6b: $00
    ld d, $17                                     ; $7c6c: $16 $17
    jr jr_0a8_7c76                                ; $7c6e: $18 $06

    rlca                                          ; $7c70: $07
    inc de                                        ; $7c71: $13
    ld b, $19                                     ; $7c72: $06 $19
    ld a, [de]                                    ; $7c74: $1a
    nop                                           ; $7c75: $00

jr_0a8_7c76:
    nop                                           ; $7c76: $00
    dec de                                        ; $7c77: $1b
    dec de                                        ; $7c78: $1b
    inc e                                         ; $7c79: $1c
    ld b, $1d                                     ; $7c7a: $06 $1d
    ld e, $06                                     ; $7c7c: $1e $06
    stop                                          ; $7c7e: $10 $00
    nop                                           ; $7c80: $00
    nop                                           ; $7c81: $00
    ld bc, $1f02                                  ; $7c82: $01 $02 $1f
    ld b, $06                                     ; $7c85: $06 $06
    ld b, $06                                     ; $7c87: $06 $06
    jr nz, jr_0a8_7c8b                            ; $7c89: $20 $00

jr_0a8_7c8b:
    nop                                           ; $7c8b: $00
    nop                                           ; $7c8c: $00
    ld a, [bc]                                    ; $7c8d: $0a
    ld b, $06                                     ; $7c8e: $06 $06
    ld b, $06                                     ; $7c90: $06 $06
    ld b, $06                                     ; $7c92: $06 $06
    rlca                                          ; $7c94: $07
    nop                                           ; $7c95: $00
    ld hl, $2322                                  ; $7c96: $21 $22 $23
    ld b, $06                                     ; $7c99: $06 $06
    ld b, $06                                     ; $7c9b: $06 $06
    ld b, $06                                     ; $7c9d: $06 $06
    rlca                                          ; $7c9f: $07
    nop                                           ; $7ca0: $00
    inc h                                         ; $7ca1: $24
    dec h                                         ; $7ca2: $25
    ld h, $06                                     ; $7ca3: $26 $06
    ld b, $06                                     ; $7ca5: $06 $06
    ld b, $06                                     ; $7ca7: $06 $06
    ld b, $07                                     ; $7ca9: $06 $07
    nop                                           ; $7cab: $00
    nop                                           ; $7cac: $00
    nop                                           ; $7cad: $00
    daa                                           ; $7cae: $27
    jr z, jr_0a8_7cb7                             ; $7caf: $28 $06

    ld b, $07                                     ; $7cb1: $06 $07
    daa                                           ; $7cb3: $27
    ld a, [bc]                                    ; $7cb4: $0a
    rlca                                          ; $7cb5: $07
    nop                                           ; $7cb6: $00

jr_0a8_7cb7:
    nop                                           ; $7cb7: $00
    nop                                           ; $7cb8: $00
    ld de, $0629                                  ; $7cb9: $11 $29 $06
    ld b, $2a                                     ; $7cbc: $06 $2a
    ld [bc], a                                    ; $7cbe: $02
    dec hl                                        ; $7cbf: $2b
    rlca                                          ; $7cc0: $07
    nop                                           ; $7cc1: $00
    nop                                           ; $7cc2: $00
    nop                                           ; $7cc3: $00
    ld d, $2c                                     ; $7cc4: $16 $2c
    dec l                                         ; $7cc6: $2d
    ld l, $06                                     ; $7cc7: $2e $06
    ld b, $06                                     ; $7cc9: $06 $06
    rlca                                          ; $7ccb: $07
    nop                                           ; $7ccc: $00
    nop                                           ; $7ccd: $00
    nop                                           ; $7cce: $00
    ld d, $2f                                     ; $7ccf: $16 $2f
    ld [hl+], a                                   ; $7cd1: $22
    ld a, [bc]                                    ; $7cd2: $0a
    ld b, $06                                     ; $7cd3: $06 $06
    ld b, $07                                     ; $7cd5: $06 $07
    nop                                           ; $7cd7: $00
    nop                                           ; $7cd8: $00
    nop                                           ; $7cd9: $00
    ld d, $16                                     ; $7cda: $16 $16
    ld d, $23                                     ; $7cdc: $16 $23
    jr nc, jr_0a8_7d0d                            ; $7cde: $30 $2d

    dec l                                         ; $7ce0: $2d
    dec bc                                        ; $7ce1: $0b
    nop                                           ; $7ce2: $00
    nop                                           ; $7ce3: $00
    nop                                           ; $7ce4: $00
    nop                                           ; $7ce5: $00
    nop                                           ; $7ce6: $00
    nop                                           ; $7ce7: $00
    ld sp, $0032                                  ; $7ce8: $31 $32 $00
    nop                                           ; $7ceb: $00
    nop                                           ; $7cec: $00
    nop                                           ; $7ced: $00
    inc de                                        ; $7cee: $13
    dec d                                         ; $7cef: $15
    nop                                           ; $7cf0: $00
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    nop                                           ; $7cf3: $00
    nop                                           ; $7cf4: $00
    nop                                           ; $7cf5: $00
    nop                                           ; $7cf6: $00
    nop                                           ; $7cf7: $00
    nop                                           ; $7cf8: $00
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00
    nop                                           ; $7cfb: $00
    nop                                           ; $7cfc: $00
    nop                                           ; $7cfd: $00
    nop                                           ; $7cfe: $00
    nop                                           ; $7cff: $00
    nop                                           ; $7d00: $00
    nop                                           ; $7d01: $00
    nop                                           ; $7d02: $00
    nop                                           ; $7d03: $00
    nop                                           ; $7d04: $00
    nop                                           ; $7d05: $00
    nop                                           ; $7d06: $00
    nop                                           ; $7d07: $00
    nop                                           ; $7d08: $00
    nop                                           ; $7d09: $00
    nop                                           ; $7d0a: $00
    nop                                           ; $7d0b: $00
    nop                                           ; $7d0c: $00

jr_0a8_7d0d:
    nop                                           ; $7d0d: $00
    nop                                           ; $7d0e: $00
    nop                                           ; $7d0f: $00
    nop                                           ; $7d10: $00
    nop                                           ; $7d11: $00
    nop                                           ; $7d12: $00
    nop                                           ; $7d13: $00
    nop                                           ; $7d14: $00
    nop                                           ; $7d15: $00
    nop                                           ; $7d16: $00
    nop                                           ; $7d17: $00
    nop                                           ; $7d18: $00
    nop                                           ; $7d19: $00
    nop                                           ; $7d1a: $00
    nop                                           ; $7d1b: $00
    ld bc, $0202                                  ; $7d1c: $01 $02 $02
    ld [bc], a                                    ; $7d1f: $02
    ld [bc], a                                    ; $7d20: $02
    inc bc                                        ; $7d21: $03
    nop                                           ; $7d22: $00
    nop                                           ; $7d23: $00
    nop                                           ; $7d24: $00
    nop                                           ; $7d25: $00
    nop                                           ; $7d26: $00
    nop                                           ; $7d27: $00
    nop                                           ; $7d28: $00
    nop                                           ; $7d29: $00
    nop                                           ; $7d2a: $00
    nop                                           ; $7d2b: $00
    nop                                           ; $7d2c: $00
    ld bc, $0402                                  ; $7d2d: $01 $02 $04
    dec b                                         ; $7d30: $05
    ld b, $07                                     ; $7d31: $06 $07
    ld [$0a09], sp                                ; $7d33: $08 $09 $0a
    dec bc                                        ; $7d36: $0b
    nop                                           ; $7d37: $00
    nop                                           ; $7d38: $00
    nop                                           ; $7d39: $00
    nop                                           ; $7d3a: $00
    nop                                           ; $7d3b: $00
    nop                                           ; $7d3c: $00
    nop                                           ; $7d3d: $00
    nop                                           ; $7d3e: $00
    nop                                           ; $7d3f: $00
    inc c                                         ; $7d40: $0c
    dec b                                         ; $7d41: $05
    dec b                                         ; $7d42: $05
    dec b                                         ; $7d43: $05
    dec c                                         ; $7d44: $0d
    ld c, $0f                                     ; $7d45: $0e $0f
    dec b                                         ; $7d47: $05
    dec b                                         ; $7d48: $05
    stop                                          ; $7d49: $10 $00
    nop                                           ; $7d4b: $00
    nop                                           ; $7d4c: $00
    nop                                           ; $7d4d: $00
    nop                                           ; $7d4e: $00
    nop                                           ; $7d4f: $00
    nop                                           ; $7d50: $00
    nop                                           ; $7d51: $00
    nop                                           ; $7d52: $00
    ld de, $0505                                  ; $7d53: $11 $05 $05
    ld [de], a                                    ; $7d56: $12
    inc de                                        ; $7d57: $13
    dec bc                                        ; $7d58: $0b
    inc d                                         ; $7d59: $14
    dec b                                         ; $7d5a: $05
    dec b                                         ; $7d5b: $05
    stop                                          ; $7d5c: $10 $00
    nop                                           ; $7d5e: $00
    nop                                           ; $7d5f: $00
    nop                                           ; $7d60: $00
    nop                                           ; $7d61: $00
    nop                                           ; $7d62: $00
    nop                                           ; $7d63: $00
    nop                                           ; $7d64: $00
    nop                                           ; $7d65: $00
    dec d                                         ; $7d66: $15
    ld d, $17                                     ; $7d67: $16 $17
    jr jr_0a8_7d84                                ; $7d69: $18 $19

    db $10                                        ; $7d6b: $10
    ld a, [de]                                    ; $7d6c: $1a
    dec b                                         ; $7d6d: $05
    dec b                                         ; $7d6e: $05
    stop                                          ; $7d6f: $10 $00
    nop                                           ; $7d71: $00
    nop                                           ; $7d72: $00
    nop                                           ; $7d73: $00
    nop                                           ; $7d74: $00
    nop                                           ; $7d75: $00
    nop                                           ; $7d76: $00
    nop                                           ; $7d77: $00
    nop                                           ; $7d78: $00
    dec de                                        ; $7d79: $1b
    inc e                                         ; $7d7a: $1c
    dec e                                         ; $7d7b: $1d
    ld e, $1f                                     ; $7d7c: $1e $1f
    db $10                                        ; $7d7e: $10
    jr nz, jr_0a8_7d86                            ; $7d7f: $20 $05

    ld hl, $0022                                  ; $7d81: $21 $22 $00

jr_0a8_7d84:
    nop                                           ; $7d84: $00
    nop                                           ; $7d85: $00

jr_0a8_7d86:
    nop                                           ; $7d86: $00
    nop                                           ; $7d87: $00
    nop                                           ; $7d88: $00
    nop                                           ; $7d89: $00
    nop                                           ; $7d8a: $00
    nop                                           ; $7d8b: $00
    dec de                                        ; $7d8c: $1b
    inc e                                         ; $7d8d: $1c
    dec e                                         ; $7d8e: $1d
    dec b                                         ; $7d8f: $05
    dec b                                         ; $7d90: $05
    dec b                                         ; $7d91: $05
    dec b                                         ; $7d92: $05
    dec b                                         ; $7d93: $05
    inc hl                                        ; $7d94: $23
    nop                                           ; $7d95: $00
    nop                                           ; $7d96: $00
    nop                                           ; $7d97: $00
    nop                                           ; $7d98: $00
    nop                                           ; $7d99: $00
    nop                                           ; $7d9a: $00
    nop                                           ; $7d9b: $00
    nop                                           ; $7d9c: $00
    nop                                           ; $7d9d: $00
    nop                                           ; $7d9e: $00
    inc h                                         ; $7d9f: $24
    dec h                                         ; $7da0: $25
    ld h, $05                                     ; $7da1: $26 $05
    dec b                                         ; $7da3: $05
    dec b                                         ; $7da4: $05
    dec b                                         ; $7da5: $05
    daa                                           ; $7da6: $27
    jr z, jr_0a8_7da9                             ; $7da7: $28 $00

jr_0a8_7da9:
    nop                                           ; $7da9: $00
    add hl, hl                                    ; $7daa: $29
    dec bc                                        ; $7dab: $0b
    dec bc                                        ; $7dac: $0b
    nop                                           ; $7dad: $00
    nop                                           ; $7dae: $00
    nop                                           ; $7daf: $00
    nop                                           ; $7db0: $00
    nop                                           ; $7db1: $00
    ld a, [hl+]                                   ; $7db2: $2a
    dec hl                                        ; $7db3: $2b
    dec b                                         ; $7db4: $05
    dec b                                         ; $7db5: $05
    dec b                                         ; $7db6: $05
    dec b                                         ; $7db7: $05
    dec b                                         ; $7db8: $05
    inc l                                         ; $7db9: $2c
    dec l                                         ; $7dba: $2d
    nop                                           ; $7dbb: $00
    nop                                           ; $7dbc: $00
    ld l, $2f                                     ; $7dbd: $2e $2f
    jr nc, jr_0a8_7dc1                            ; $7dbf: $30 $00

jr_0a8_7dc1:
    nop                                           ; $7dc1: $00
    nop                                           ; $7dc2: $00
    nop                                           ; $7dc3: $00
    nop                                           ; $7dc4: $00
    ld sp, $0532                                  ; $7dc5: $31 $32 $05
    inc sp                                        ; $7dc8: $33
    inc [hl]                                      ; $7dc9: $34
    dec [hl]                                      ; $7dca: $35
    dec b                                         ; $7dcb: $05
    dec b                                         ; $7dcc: $05
    inc hl                                        ; $7dcd: $23
    nop                                           ; $7dce: $00
    nop                                           ; $7dcf: $00
    ld l, $10                                     ; $7dd0: $2e $10
    nop                                           ; $7dd2: $00
    nop                                           ; $7dd3: $00
    nop                                           ; $7dd4: $00
    nop                                           ; $7dd5: $00
    nop                                           ; $7dd6: $00
    nop                                           ; $7dd7: $00
    ld [hl], $05                                  ; $7dd8: $36 $05
    dec b                                         ; $7dda: $05
    scf                                           ; $7ddb: $37
    nop                                           ; $7ddc: $00
    jr c, jr_0a8_7de4                             ; $7ddd: $38 $05

    dec b                                         ; $7ddf: $05
    add hl, sp                                    ; $7de0: $39
    ld a, [hl-]                                   ; $7de1: $3a
    ld a, [hl-]                                   ; $7de2: $3a
    ld a, [hl-]                                   ; $7de3: $3a

jr_0a8_7de4:
    dec sp                                        ; $7de4: $3b
    nop                                           ; $7de5: $00
    nop                                           ; $7de6: $00
    nop                                           ; $7de7: $00
    nop                                           ; $7de8: $00
    inc a                                         ; $7de9: $3c
    dec h                                         ; $7dea: $25
    dec a                                         ; $7deb: $3d
    dec b                                         ; $7dec: $05
    dec b                                         ; $7ded: $05
    add hl, bc                                    ; $7dee: $09
    ld a, $3f                                     ; $7def: $3e $3f
    dec b                                         ; $7df1: $05
    ld [de], a                                    ; $7df2: $12
    ld b, b                                       ; $7df3: $40
    nop                                           ; $7df4: $00
    nop                                           ; $7df5: $00
    nop                                           ; $7df6: $00
    nop                                           ; $7df7: $00
    nop                                           ; $7df8: $00
    nop                                           ; $7df9: $00
    nop                                           ; $7dfa: $00
    nop                                           ; $7dfb: $00
    rrca                                          ; $7dfc: $0f
    ld b, c                                       ; $7dfd: $41
    ld b, d                                       ; $7dfe: $42
    dec b                                         ; $7dff: $05
    dec b                                         ; $7e00: $05
    dec b                                         ; $7e01: $05
    dec b                                         ; $7e02: $05
    dec b                                         ; $7e03: $05
    dec b                                         ; $7e04: $05
    inc hl                                        ; $7e05: $23
    ld b, e                                       ; $7e06: $43
    nop                                           ; $7e07: $00
    nop                                           ; $7e08: $00
    nop                                           ; $7e09: $00
    nop                                           ; $7e0a: $00
    nop                                           ; $7e0b: $00
    nop                                           ; $7e0c: $00
    nop                                           ; $7e0d: $00
    nop                                           ; $7e0e: $00
    rrca                                          ; $7e0f: $0f
    ld b, h                                       ; $7e10: $44
    ld b, l                                       ; $7e11: $45
    ld b, [hl]                                    ; $7e12: $46
    ld b, a                                       ; $7e13: $47
    dec b                                         ; $7e14: $05
    dec b                                         ; $7e15: $05
    dec b                                         ; $7e16: $05
    dec b                                         ; $7e17: $05
    ld c, b                                       ; $7e18: $48
    ld c, c                                       ; $7e19: $49
    nop                                           ; $7e1a: $00
    nop                                           ; $7e1b: $00
    nop                                           ; $7e1c: $00
    nop                                           ; $7e1d: $00
    nop                                           ; $7e1e: $00
    nop                                           ; $7e1f: $00
    ld c, d                                       ; $7e20: $4a
    ld c, e                                       ; $7e21: $4b
    inc d                                         ; $7e22: $14
    ld b, h                                       ; $7e23: $44
    dec de                                        ; $7e24: $1b
    inc e                                         ; $7e25: $1c
    dec e                                         ; $7e26: $1d
    dec b                                         ; $7e27: $05
    dec b                                         ; $7e28: $05
    dec b                                         ; $7e29: $05
    dec b                                         ; $7e2a: $05
    dec b                                         ; $7e2b: $05
    inc hl                                        ; $7e2c: $23
    nop                                           ; $7e2d: $00
    nop                                           ; $7e2e: $00
    nop                                           ; $7e2f: $00
    nop                                           ; $7e30: $00
    nop                                           ; $7e31: $00
    nop                                           ; $7e32: $00
    ld c, h                                       ; $7e33: $4c
    ld c, l                                       ; $7e34: $4d
    ld c, l                                       ; $7e35: $4d
    ld c, [hl]                                    ; $7e36: $4e
    ld c, a                                       ; $7e37: $4f
    ld c, l                                       ; $7e38: $4d
    dec e                                         ; $7e39: $1d
    dec b                                         ; $7e3a: $05
    dec b                                         ; $7e3b: $05
    dec b                                         ; $7e3c: $05
    dec b                                         ; $7e3d: $05
    ld d, b                                       ; $7e3e: $50
    ld d, c                                       ; $7e3f: $51
    nop                                           ; $7e40: $00
    nop                                           ; $7e41: $00
    nop                                           ; $7e42: $00
    nop                                           ; $7e43: $00
    nop                                           ; $7e44: $00
    nop                                           ; $7e45: $00
    nop                                           ; $7e46: $00
    nop                                           ; $7e47: $00
    nop                                           ; $7e48: $00
    nop                                           ; $7e49: $00
    nop                                           ; $7e4a: $00
    nop                                           ; $7e4b: $00
    dec e                                         ; $7e4c: $1d
    dec b                                         ; $7e4d: $05
    dec b                                         ; $7e4e: $05
    dec b                                         ; $7e4f: $05
    dec b                                         ; $7e50: $05
    add hl, bc                                    ; $7e51: $09
    ld d, d                                       ; $7e52: $52
    nop                                           ; $7e53: $00
    nop                                           ; $7e54: $00
    nop                                           ; $7e55: $00
    nop                                           ; $7e56: $00
    nop                                           ; $7e57: $00
    nop                                           ; $7e58: $00
    nop                                           ; $7e59: $00
    nop                                           ; $7e5a: $00
    nop                                           ; $7e5b: $00
    nop                                           ; $7e5c: $00
    dec de                                        ; $7e5d: $1b
    ld d, e                                       ; $7e5e: $53
    ld d, h                                       ; $7e5f: $54
    ld d, l                                       ; $7e60: $55
    ld b, [hl]                                    ; $7e61: $46
    ld d, [hl]                                    ; $7e62: $56
    ld d, $16                                     ; $7e63: $16 $16
    ld b, b                                       ; $7e65: $40
    nop                                           ; $7e66: $00
    nop                                           ; $7e67: $00
    nop                                           ; $7e68: $00
    nop                                           ; $7e69: $00
    nop                                           ; $7e6a: $00
    nop                                           ; $7e6b: $00
    nop                                           ; $7e6c: $00
    nop                                           ; $7e6d: $00
    nop                                           ; $7e6e: $00
    nop                                           ; $7e6f: $00
    nop                                           ; $7e70: $00
    nop                                           ; $7e71: $00
    nop                                           ; $7e72: $00
    ld c, h                                       ; $7e73: $4c
    ld c, l                                       ; $7e74: $4d
    ld c, [hl]                                    ; $7e75: $4e
    nop                                           ; $7e76: $00
    nop                                           ; $7e77: $00
    nop                                           ; $7e78: $00
    nop                                           ; $7e79: $00
    nop                                           ; $7e7a: $00
    nop                                           ; $7e7b: $00
    nop                                           ; $7e7c: $00
    nop                                           ; $7e7d: $00
    nop                                           ; $7e7e: $00
    inc c                                         ; $7e7f: $0c
    inc de                                        ; $7e80: $13
    nop                                           ; $7e81: $00
    nop                                           ; $7e82: $00
    nop                                           ; $7e83: $00
    nop                                           ; $7e84: $00
    nop                                           ; $7e85: $00
    nop                                           ; $7e86: $00
    nop                                           ; $7e87: $00
    nop                                           ; $7e88: $00
    nop                                           ; $7e89: $00
    nop                                           ; $7e8a: $00
    nop                                           ; $7e8b: $00
    nop                                           ; $7e8c: $00
    nop                                           ; $7e8d: $00
    nop                                           ; $7e8e: $00
    ld bc, $0202                                  ; $7e8f: $01 $02 $02
    ld [bc], a                                    ; $7e92: $02
    ld [bc], a                                    ; $7e93: $02
    ld [bc], a                                    ; $7e94: $02
    ld [bc], a                                    ; $7e95: $02
    inc bc                                        ; $7e96: $03
    nop                                           ; $7e97: $00
    nop                                           ; $7e98: $00
    nop                                           ; $7e99: $00
    nop                                           ; $7e9a: $00
    inc b                                         ; $7e9b: $04
    dec b                                         ; $7e9c: $05
    dec b                                         ; $7e9d: $05
    dec b                                         ; $7e9e: $05
    dec b                                         ; $7e9f: $05
    dec b                                         ; $7ea0: $05
    dec b                                         ; $7ea1: $05
    ld b, $07                                     ; $7ea2: $06 $07
    nop                                           ; $7ea4: $00
    nop                                           ; $7ea5: $00
    ld [$0509], sp                                ; $7ea6: $08 $09 $05
    dec b                                         ; $7ea9: $05
    ld a, [bc]                                    ; $7eaa: $0a
    dec bc                                        ; $7eab: $0b
    dec b                                         ; $7eac: $05
    dec b                                         ; $7ead: $05
    inc c                                         ; $7eae: $0c
    dec c                                         ; $7eaf: $0d
    nop                                           ; $7eb0: $00
    nop                                           ; $7eb1: $00
    ld c, $0f                                     ; $7eb2: $0e $0f
    dec b                                         ; $7eb4: $05
    dec b                                         ; $7eb5: $05
    db $10                                        ; $7eb6: $10
    ld de, $0505                                  ; $7eb7: $11 $05 $05
    ld [de], a                                    ; $7eba: $12
    nop                                           ; $7ebb: $00
    nop                                           ; $7ebc: $00
    nop                                           ; $7ebd: $00
    nop                                           ; $7ebe: $00
    inc b                                         ; $7ebf: $04
    dec b                                         ; $7ec0: $05
    dec b                                         ; $7ec1: $05
    inc de                                        ; $7ec2: $13
    inc de                                        ; $7ec3: $13
    dec b                                         ; $7ec4: $05
    dec b                                         ; $7ec5: $05
    ld [de], a                                    ; $7ec6: $12
    nop                                           ; $7ec7: $00
    nop                                           ; $7ec8: $00
    nop                                           ; $7ec9: $00
    nop                                           ; $7eca: $00
    inc b                                         ; $7ecb: $04
    dec b                                         ; $7ecc: $05
    ld [de], a                                    ; $7ecd: $12
    inc d                                         ; $7ece: $14
    dec d                                         ; $7ecf: $15
    inc b                                         ; $7ed0: $04
    dec b                                         ; $7ed1: $05
    ld d, $17                                     ; $7ed2: $16 $17
    nop                                           ; $7ed4: $00
    nop                                           ; $7ed5: $00
    nop                                           ; $7ed6: $00
    jr jr_0a8_7ef2                                ; $7ed7: $18 $19

    ld [de], a                                    ; $7ed9: $12
    ld a, [de]                                    ; $7eda: $1a
    dec d                                         ; $7edb: $15
    inc b                                         ; $7edc: $04
    dec b                                         ; $7edd: $05
    dec de                                        ; $7ede: $1b
    inc e                                         ; $7edf: $1c
    nop                                           ; $7ee0: $00
    nop                                           ; $7ee1: $00
    nop                                           ; $7ee2: $00
    dec e                                         ; $7ee3: $1d
    ld e, $1f                                     ; $7ee4: $1e $1f
    jr nz, jr_0a8_7f09                            ; $7ee6: $20 $21

    ld [hl+], a                                   ; $7ee8: $22
    dec b                                         ; $7ee9: $05
    ld [de], a                                    ; $7eea: $12
    nop                                           ; $7eeb: $00
    nop                                           ; $7eec: $00
    nop                                           ; $7eed: $00
    nop                                           ; $7eee: $00
    inc hl                                        ; $7eef: $23
    inc h                                         ; $7ef0: $24
    dec b                                         ; $7ef1: $05

jr_0a8_7ef2:
    dec b                                         ; $7ef2: $05
    dec b                                         ; $7ef3: $05
    dec b                                         ; $7ef4: $05
    dec b                                         ; $7ef5: $05
    ld [de], a                                    ; $7ef6: $12
    nop                                           ; $7ef7: $00
    nop                                           ; $7ef8: $00
    nop                                           ; $7ef9: $00
    dec h                                         ; $7efa: $25
    ld h, $05                                     ; $7efb: $26 $05
    dec b                                         ; $7efd: $05
    dec b                                         ; $7efe: $05
    dec b                                         ; $7eff: $05
    dec b                                         ; $7f00: $05
    dec b                                         ; $7f01: $05
    ld b, $07                                     ; $7f02: $06 $07
    nop                                           ; $7f04: $00
    nop                                           ; $7f05: $00
    daa                                           ; $7f06: $27
    jr z, jr_0a8_7f0e                             ; $7f07: $28 $05

jr_0a8_7f09:
    dec b                                         ; $7f09: $05
    add hl, hl                                    ; $7f0a: $29
    ld a, [hl+]                                   ; $7f0b: $2a
    dec b                                         ; $7f0c: $05
    dec b                                         ; $7f0d: $05

jr_0a8_7f0e:
    inc c                                         ; $7f0e: $0c
    dec c                                         ; $7f0f: $0d
    nop                                           ; $7f10: $00
    nop                                           ; $7f11: $00
    nop                                           ; $7f12: $00
    inc b                                         ; $7f13: $04
    dec b                                         ; $7f14: $05
    dec b                                         ; $7f15: $05
    dec e                                         ; $7f16: $1d
    dec hl                                        ; $7f17: $2b
    dec b                                         ; $7f18: $05
    dec b                                         ; $7f19: $05
    ld [de], a                                    ; $7f1a: $12
    nop                                           ; $7f1b: $00
    nop                                           ; $7f1c: $00
    nop                                           ; $7f1d: $00
    nop                                           ; $7f1e: $00
    inc l                                         ; $7f1f: $2c
    ld a, [hl+]                                   ; $7f20: $2a
    dec b                                         ; $7f21: $05
    dec l                                         ; $7f22: $2d
    ld l, $05                                     ; $7f23: $2e $05
    cpl                                           ; $7f25: $2f
    jr nc, jr_0a8_7f28                            ; $7f26: $30 $00

jr_0a8_7f28:
    nop                                           ; $7f28: $00
    nop                                           ; $7f29: $00
    nop                                           ; $7f2a: $00
    nop                                           ; $7f2b: $00
    dec hl                                        ; $7f2c: $2b
    dec b                                         ; $7f2d: $05
    dec b                                         ; $7f2e: $05
    dec b                                         ; $7f2f: $05
    dec b                                         ; $7f30: $05
    ld sp, $0000                                  ; $7f31: $31 $00 $00
    nop                                           ; $7f34: $00
    nop                                           ; $7f35: $00
    nop                                           ; $7f36: $00
    ld [hl-], a                                   ; $7f37: $32
    inc sp                                        ; $7f38: $33
    inc de                                        ; $7f39: $13
    inc [hl]                                      ; $7f3a: $34
    dec b                                         ; $7f3b: $05
    inc de                                        ; $7f3c: $13
    dec [hl]                                      ; $7f3d: $35
    ld [hl], $00                                  ; $7f3e: $36 $00
    nop                                           ; $7f40: $00
    nop                                           ; $7f41: $00
    nop                                           ; $7f42: $00
    ld [hl], $37                                  ; $7f43: $36 $37
    jr c, @+$06                                   ; $7f45: $38 $04

    dec b                                         ; $7f47: $05
    add hl, sp                                    ; $7f48: $39
    ld a, [hl-]                                   ; $7f49: $3a
    ld [hl], $00                                  ; $7f4a: $36 $00
    nop                                           ; $7f4c: $00
    nop                                           ; $7f4d: $00
    nop                                           ; $7f4e: $00
    ld [hl], $36                                  ; $7f4f: $36 $36
    ld [hl], $3b                                  ; $7f51: $36 $3b
    inc de                                        ; $7f53: $13
    ld [hl], $36                                  ; $7f54: $36 $36
    ld [hl], $00                                  ; $7f56: $36 $00
    nop                                           ; $7f58: $00
    nop                                           ; $7f59: $00
    nop                                           ; $7f5a: $00
    nop                                           ; $7f5b: $00
    nop                                           ; $7f5c: $00
    nop                                           ; $7f5d: $00
    nop                                           ; $7f5e: $00
    nop                                           ; $7f5f: $00
    nop                                           ; $7f60: $00
    nop                                           ; $7f61: $00
    nop                                           ; $7f62: $00
    nop                                           ; $7f63: $00
    nop                                           ; $7f64: $00
    dec b                                         ; $7f65: $05
    dec b                                         ; $7f66: $05

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $02, $03, $04, $01
    db $02, $02, $02, $05, $06, $07, $08, $07, $09

    ld [$0009], sp                                ; $7f80: $08 $09 $00
    nop                                           ; $7f83: $00
    nop                                           ; $7f84: $00
    nop                                           ; $7f85: $00
    nop                                           ; $7f86: $00
    nop                                           ; $7f87: $00
    nop                                           ; $7f88: $00
    nop                                           ; $7f89: $00
    ld bc, $0302                                  ; $7f8a: $01 $02 $03
    inc b                                         ; $7f8d: $04
    dec b                                         ; $7f8e: $05
    inc bc                                        ; $7f8f: $03
    ld b, $00                                     ; $7f90: $06 $00
    rlca                                          ; $7f92: $07
    ld [$0a09], sp                                ; $7f93: $08 $09 $0a
    dec bc                                        ; $7f96: $0b
    add hl, bc                                    ; $7f97: $09
    inc c                                         ; $7f98: $0c
    nop                                           ; $7f99: $00
    rlca                                          ; $7f9a: $07
    add hl, bc                                    ; $7f9b: $09
    add hl, bc                                    ; $7f9c: $09
    add hl, bc                                    ; $7f9d: $09
    add hl, bc                                    ; $7f9e: $09
    add hl, bc                                    ; $7f9f: $09
    inc c                                         ; $7fa0: $0c
    nop                                           ; $7fa1: $00
    rlca                                          ; $7fa2: $07
    dec c                                         ; $7fa3: $0d
    ld c, $0f                                     ; $7fa4: $0e $0f
    stop                                          ; $7fa6: $10 $00
    inc c                                         ; $7fa8: $0c
    nop                                           ; $7fa9: $00
    rlca                                          ; $7faa: $07
    ld de, $1312                                  ; $7fab: $11 $12 $13
    inc d                                         ; $7fae: $14
    dec d                                         ; $7faf: $15
    inc c                                         ; $7fb0: $0c
    nop                                           ; $7fb1: $00
    rlca                                          ; $7fb2: $07
    ld d, $17                                     ; $7fb3: $16 $17
    jr jr_0a8_7fd0                                ; $7fb5: $18 $19

    ld a, [de]                                    ; $7fb7: $1a
    inc c                                         ; $7fb8: $0c
    nop                                           ; $7fb9: $00
    rlca                                          ; $7fba: $07
    dec de                                        ; $7fbb: $1b
    inc e                                         ; $7fbc: $1c
    ld a, [bc]                                    ; $7fbd: $0a
    dec bc                                        ; $7fbe: $0b
    dec e                                         ; $7fbf: $1d
    ld e, $1f                                     ; $7fc0: $1e $1f
    jr nz, jr_0a8_7fe5                            ; $7fc2: $20 $21

    ld hl, $2121                                  ; $7fc4: $21 $21 $21
    ld hl, $0022                                  ; $7fc7: $21 $22 $00
    rlca                                          ; $7fca: $07
    rlca                                          ; $7fcb: $07
    nop                                           ; $7fcc: $00
    nop                                           ; $7fcd: $00
    nop                                           ; $7fce: $00
    nop                                           ; $7fcf: $00

jr_0a8_7fd0:
    nop                                           ; $7fd0: $00
    nop                                           ; $7fd1: $00
    nop                                           ; $7fd2: $00
    ld bc, $0302                                  ; $7fd3: $01 $02 $03
    inc b                                         ; $7fd6: $04
    dec b                                         ; $7fd7: $05
    ld b, $06                                     ; $7fd8: $06 $06
    rlca                                          ; $7fda: $07
    ld [$0a09], sp                                ; $7fdb: $08 $09 $0a
    dec bc                                        ; $7fde: $0b
    inc c                                         ; $7fdf: $0c
    dec c                                         ; $7fe0: $0d
    nop                                           ; $7fe1: $00
    ld c, $0f                                     ; $7fe2: $0e $0f
    db $10                                        ; $7fe4: $10

jr_0a8_7fe5:
    ld de, $1312                                  ; $7fe5: $11 $12 $13
    ld bc, $1514                                  ; $7fe8: $01 $14 $15
    dec d                                         ; $7feb: $15
    ld d, $00                                     ; $7fec: $16 $00
    nop                                           ; $7fee: $00
    rla                                           ; $7fef: $17
    jr @+$13                                      ; $7ff0: $18 $11

    ld [$1a19], sp                                ; $7ff2: $08 $19 $1a
    nop                                           ; $7ff5: $00
    nop                                           ; $7ff6: $00
    dec de                                        ; $7ff7: $1b
    inc e                                         ; $7ff8: $1c
    dec e                                         ; $7ff9: $1d
    ld e, $13                                     ; $7ffa: $1e $13
    nop                                           ; $7ffc: $00
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
