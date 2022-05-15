; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $08d", ROMX[$4000], BANK[$8d]

    adc l                                         ; $4000: $8d
    inc c                                         ; $4001: $0c
    nop                                           ; $4002: $00
    ld d, $00                                     ; $4003: $16 $00
    ld h, b                                       ; $4005: $60
    ld a, [de]                                    ; $4006: $1a
    pop de                                        ; $4007: $d1
    pop de                                        ; $4008: $d1
    pop de                                        ; $4009: $d1
    jp nc, $d1d1                                  ; $400a: $d2 $d1 $d1

    pop de                                        ; $400d: $d1
    jp nc, $d1d1                                  ; $400e: $d2 $d1 $d1

    pop de                                        ; $4011: $d1
    jp nc, $d1d1                                  ; $4012: $d2 $d1 $d1

    pop de                                        ; $4015: $d1
    jp nc, $8282                                  ; $4016: $d2 $82 $82

    add d                                         ; $4019: $82
    add d                                         ; $401a: $82
    add d                                         ; $401b: $82
    add d                                         ; $401c: $82
    add d                                         ; $401d: $82
    add d                                         ; $401e: $82
    add d                                         ; $401f: $82
    add d                                         ; $4020: $82
    add d                                         ; $4021: $82
    add d                                         ; $4022: $82
    add d                                         ; $4023: $82
    add d                                         ; $4024: $82
    add d                                         ; $4025: $82
    add d                                         ; $4026: $82
    db $d3                                        ; $4027: $d3
    call nc, $d4d4                                ; $4028: $d4 $d4 $d4
    push de                                       ; $402b: $d5
    call nc, $d4d4                                ; $402c: $d4 $d4 $d4
    sub $d4                                       ; $402f: $d6 $d4
    call nc, $d7d4                                ; $4031: $d4 $d4 $d7
    call nc, $d4d4                                ; $4034: $d4 $d4 $d4
    dec b                                         ; $4037: $05
    dec b                                         ; $4038: $05
    dec b                                         ; $4039: $05
    dec b                                         ; $403a: $05
    dec b                                         ; $403b: $05
    dec b                                         ; $403c: $05
    dec b                                         ; $403d: $05
    dec b                                         ; $403e: $05
    ld h, l                                       ; $403f: $65
    dec b                                         ; $4040: $05
    dec b                                         ; $4041: $05
    dec b                                         ; $4042: $05
    dec b                                         ; $4043: $05
    dec b                                         ; $4044: $05
    dec b                                         ; $4045: $05
    dec b                                         ; $4046: $05
    call nc, $d2d6                                ; $4047: $d4 $d6 $d2
    ret c                                         ; $404a: $d8

    call nc, $d2d5                                ; $404b: $d4 $d5 $d2
    reti                                          ; $404e: $d9


    call nc, $d2d3                                ; $404f: $d4 $d3 $d2
    jp c, $d7d4                                   ; $4052: $da $d4 $d7

    jp nc, $05db                                  ; $4055: $d2 $db $05

    dec b                                         ; $4058: $05
    ld [bc], a                                    ; $4059: $02
    dec b                                         ; $405a: $05
    dec b                                         ; $405b: $05
    ld h, l                                       ; $405c: $65
    ld [bc], a                                    ; $405d: $02
    dec b                                         ; $405e: $05
    dec b                                         ; $405f: $05
    ld h, l                                       ; $4060: $65
    ld [bc], a                                    ; $4061: $02
    ld h, l                                       ; $4062: $65
    dec b                                         ; $4063: $05
    ld h, l                                       ; $4064: $65
    ld [bc], a                                    ; $4065: $02
    ld h, l                                       ; $4066: $65
    call c, $dedd                                 ; $4067: $dc $dd $de
    rst $18                                       ; $406a: $df
    ldh [$e1], a                                  ; $406b: $e0 $e1
    ld [c], a                                     ; $406d: $e2
    db $e3                                        ; $406e: $e3
    db $e4                                        ; $406f: $e4
    push hl                                       ; $4070: $e5
    and $e7                                       ; $4071: $e6 $e7
    call c, $dedd                                 ; $4073: $dc $dd $de
    rst $18                                       ; $4076: $df
    inc bc                                        ; $4077: $03
    inc bc                                        ; $4078: $03
    inc bc                                        ; $4079: $03
    inc bc                                        ; $407a: $03
    inc bc                                        ; $407b: $03
    inc bc                                        ; $407c: $03
    inc bc                                        ; $407d: $03
    inc bc                                        ; $407e: $03
    inc bc                                        ; $407f: $03
    inc bc                                        ; $4080: $03
    inc bc                                        ; $4081: $03
    inc bc                                        ; $4082: $03
    inc bc                                        ; $4083: $03
    inc bc                                        ; $4084: $03
    inc bc                                        ; $4085: $03
    inc bc                                        ; $4086: $03
    db $d3                                        ; $4087: $d3
    call nc, $d4d4                                ; $4088: $d4 $d4 $d4
    push de                                       ; $408b: $d5
    call nc, $d4d4                                ; $408c: $d4 $d4 $d4
    add sp, -$17                                  ; $408f: $e8 $e9
    ld [$eceb], a                                 ; $4091: $ea $eb $ec
    db $ed                                        ; $4094: $ed
    db $ed                                        ; $4095: $ed
    db $ed                                        ; $4096: $ed
    dec b                                         ; $4097: $05
    dec b                                         ; $4098: $05
    dec b                                         ; $4099: $05
    dec b                                         ; $409a: $05
    dec b                                         ; $409b: $05
    dec b                                         ; $409c: $05
    dec b                                         ; $409d: $05
    dec b                                         ; $409e: $05
    dec b                                         ; $409f: $05
    dec b                                         ; $40a0: $05
    dec b                                         ; $40a1: $05
    dec b                                         ; $40a2: $05
    ld [bc], a                                    ; $40a3: $02
    ld [bc], a                                    ; $40a4: $02
    ld [bc], a                                    ; $40a5: $02
    ld [bc], a                                    ; $40a6: $02
    call nc, $d2d6                                ; $40a7: $d4 $d6 $d2
    ret c                                         ; $40aa: $d8

    call nc, $d2d5                                ; $40ab: $d4 $d5 $d2
    reti                                          ; $40ae: $d9


    jp hl                                         ; $40af: $e9


    xor $d2                                       ; $40b0: $ee $d2
    rst $28                                       ; $40b2: $ef
    db $ed                                        ; $40b3: $ed
    ldh a, [$d2]                                  ; $40b4: $f0 $d2
    db $ec                                        ; $40b6: $ec
    dec b                                         ; $40b7: $05
    dec b                                         ; $40b8: $05
    ld [bc], a                                    ; $40b9: $02
    dec b                                         ; $40ba: $05
    dec b                                         ; $40bb: $05
    ld h, l                                       ; $40bc: $65
    ld [bc], a                                    ; $40bd: $02
    dec b                                         ; $40be: $05
    dec b                                         ; $40bf: $05
    dec b                                         ; $40c0: $05
    ld [bc], a                                    ; $40c1: $02
    dec b                                         ; $40c2: $05
    ld [bc], a                                    ; $40c3: $02
    ld [bc], a                                    ; $40c4: $02
    ld [bc], a                                    ; $40c5: $02
    ld [bc], a                                    ; $40c6: $02
    ldh [$e1], a                                  ; $40c7: $e0 $e1
    ld [c], a                                     ; $40c9: $e2
    db $e3                                        ; $40ca: $e3
    pop af                                        ; $40cb: $f1
    ld a, [c]                                     ; $40cc: $f2
    di                                            ; $40cd: $f3
    db $f4                                        ; $40ce: $f4
    push af                                       ; $40cf: $f5
    push af                                       ; $40d0: $f5
    push af                                       ; $40d1: $f5
    push af                                       ; $40d2: $f5
    db $ed                                        ; $40d3: $ed
    db $ed                                        ; $40d4: $ed
    db $ed                                        ; $40d5: $ed
    db $ed                                        ; $40d6: $ed
    inc bc                                        ; $40d7: $03
    inc bc                                        ; $40d8: $03
    inc bc                                        ; $40d9: $03
    inc bc                                        ; $40da: $03
    inc bc                                        ; $40db: $03
    inc bc                                        ; $40dc: $03
    inc bc                                        ; $40dd: $03
    inc bc                                        ; $40de: $03
    dec b                                         ; $40df: $05
    dec b                                         ; $40e0: $05
    dec b                                         ; $40e1: $05
    dec b                                         ; $40e2: $05
    ld [bc], a                                    ; $40e3: $02
    ld [bc], a                                    ; $40e4: $02
    ld [bc], a                                    ; $40e5: $02
    ld [bc], a                                    ; $40e6: $02
    or $f6                                        ; $40e7: $f6 $f6
    or $f6                                        ; $40e9: $f6 $f6
    rst $30                                       ; $40eb: $f7
    rst $30                                       ; $40ec: $f7
    rst $30                                       ; $40ed: $f7
    rst $30                                       ; $40ee: $f7
    ld hl, sp-$07                                 ; $40ef: $f8 $f9
    ld a, [$fcfb]                                 ; $40f1: $fa $fb $fc
    db $fd                                        ; $40f4: $fd
    cp $ff                                        ; $40f5: $fe $ff
    ld [bc], a                                    ; $40f7: $02
    ld [bc], a                                    ; $40f8: $02
    ld [bc], a                                    ; $40f9: $02
    ld [bc], a                                    ; $40fa: $02
    ld [bc], a                                    ; $40fb: $02
    ld [bc], a                                    ; $40fc: $02
    ld [bc], a                                    ; $40fd: $02
    ld [bc], a                                    ; $40fe: $02
    inc b                                         ; $40ff: $04
    inc b                                         ; $4100: $04
    inc b                                         ; $4101: $04
    inc b                                         ; $4102: $04
    inc b                                         ; $4103: $04
    ld bc, $0607                                  ; $4104: $01 $07 $06
    or $f6                                        ; $4107: $f6 $f6
    jp nc, $f7f6                                  ; $4109: $d2 $f6 $f7

    rst $30                                       ; $410c: $f7
    nop                                           ; $410d: $00
    rst $30                                       ; $410e: $f7
    ld bc, $0302                                  ; $410f: $01 $02 $03
    inc b                                         ; $4112: $04
    dec b                                         ; $4113: $05
    ld b, $07                                     ; $4114: $06 $07
    ld [$0202], sp                                ; $4116: $08 $02 $02
    ld [bc], a                                    ; $4119: $02
    ld [bc], a                                    ; $411a: $02
    ld [bc], a                                    ; $411b: $02
    ld [bc], a                                    ; $411c: $02
    ld [bc], a                                    ; $411d: $02
    ld [bc], a                                    ; $411e: $02
    inc b                                         ; $411f: $04
    inc b                                         ; $4120: $04
    inc b                                         ; $4121: $04
    inc b                                         ; $4122: $04
    ld bc, $0601                                  ; $4123: $01 $01 $06
    rlca                                          ; $4126: $07
    or $f6                                        ; $4127: $f6 $f6
    or $f6                                        ; $4129: $f6 $f6
    rst $30                                       ; $412b: $f7
    rst $30                                       ; $412c: $f7
    rst $30                                       ; $412d: $f7
    rst $30                                       ; $412e: $f7
    ld hl, sp-$07                                 ; $412f: $f8 $f9
    ld a, [$fcfb]                                 ; $4131: $fa $fb $fc
    db $fd                                        ; $4134: $fd
    cp $ff                                        ; $4135: $fe $ff
    ld [bc], a                                    ; $4137: $02
    ld [bc], a                                    ; $4138: $02
    ld [bc], a                                    ; $4139: $02
    ld [bc], a                                    ; $413a: $02
    ld [bc], a                                    ; $413b: $02
    ld [bc], a                                    ; $413c: $02
    ld [bc], a                                    ; $413d: $02
    inc b                                         ; $413e: $04
    inc b                                         ; $413f: $04
    inc b                                         ; $4140: $04
    inc b                                         ; $4141: $04
    inc b                                         ; $4142: $04
    ld bc, $0606                                  ; $4143: $01 $06 $06
    ld b, $09                                     ; $4146: $06 $09
    ld a, [bc]                                    ; $4148: $0a
    dec bc                                        ; $4149: $0b
    inc c                                         ; $414a: $0c
    dec c                                         ; $414b: $0d
    ld c, $0f                                     ; $414c: $0e $0f
    db $10                                        ; $414e: $10
    ld de, $1312                                  ; $414f: $11 $12 $13
    inc d                                         ; $4152: $14
    dec d                                         ; $4153: $15
    ld d, $17                                     ; $4154: $16 $17
    jr @+$06                                      ; $4156: $18 $04

    rlca                                          ; $4158: $07
    rlca                                          ; $4159: $07
    ld bc, HeaderLogo                             ; $415a: $01 $04 $01
    ld bc, $0401                                  ; $415d: $01 $01 $04
    rlca                                          ; $4160: $07
    rlca                                          ; $4161: $07
    rlca                                          ; $4162: $07
    inc b                                         ; $4163: $04
    ld b, $01                                     ; $4164: $06 $01
    rlca                                          ; $4166: $07
    add hl, de                                    ; $4167: $19
    ld a, [de]                                    ; $4168: $1a
    dec de                                        ; $4169: $1b
    inc e                                         ; $416a: $1c
    dec e                                         ; $416b: $1d
    ld e, $1f                                     ; $416c: $1e $1f
    jr nz, @+$23                                  ; $416e: $20 $21

    ld [hl+], a                                   ; $4170: $22
    inc hl                                        ; $4171: $23
    inc h                                         ; $4172: $24
    dec h                                         ; $4173: $25
    ld h, $27                                     ; $4174: $26 $27
    jr z, @+$03                                   ; $4176: $28 $01

    ld bc, $0107                                  ; $4178: $01 $07 $01
    ld bc, $0107                                  ; $417b: $01 $07 $01
    ld bc, $0101                                  ; $417e: $01 $01 $01
    ld bc, $0101                                  ; $4181: $01 $01 $01
    ld bc, $0701                                  ; $4184: $01 $01 $07
    add hl, bc                                    ; $4187: $09
    ld a, [bc]                                    ; $4188: $0a
    dec bc                                        ; $4189: $0b
    inc c                                         ; $418a: $0c
    dec c                                         ; $418b: $0d
    ld c, $0f                                     ; $418c: $0e $0f
    db $10                                        ; $418e: $10
    ld de, $1312                                  ; $418f: $11 $12 $13
    inc d                                         ; $4192: $14
    dec d                                         ; $4193: $15
    ld d, $17                                     ; $4194: $16 $17
    jr jr_08d_4199                                ; $4196: $18 $01

    rlca                                          ; $4198: $07

jr_08d_4199:
    ld b, $06                                     ; $4199: $06 $06
    rlca                                          ; $419b: $07
    rlca                                          ; $419c: $07
    ld bc, $0706                                  ; $419d: $01 $06 $07
    ld bc, $0101                                  ; $41a0: $01 $01 $01
    rlca                                          ; $41a3: $07
    rlca                                          ; $41a4: $07
    ld bc, $db01                                  ; $41a5: $01 $01 $db
    jp nc, $d4d3                                  ; $41a8: $d2 $d3 $d4

    jp c, $d5d2                                   ; $41ab: $da $d2 $d5

    call nc, $d2d9                                ; $41ae: $d4 $d9 $d2
    sub $d4                                       ; $41b1: $d6 $d4
    ret c                                         ; $41b3: $d8

    jp nc, $d4d7                                  ; $41b4: $d2 $d7 $d4

    dec b                                         ; $41b7: $05
    ld [bc], a                                    ; $41b8: $02
    dec b                                         ; $41b9: $05
    dec b                                         ; $41ba: $05
    dec b                                         ; $41bb: $05
    ld [bc], a                                    ; $41bc: $02
    dec b                                         ; $41bd: $05
    dec b                                         ; $41be: $05
    ld h, l                                       ; $41bf: $65
    ld [bc], a                                    ; $41c0: $02
    ld h, l                                       ; $41c1: $65
    dec b                                         ; $41c2: $05
    ld h, l                                       ; $41c3: $65
    ld [bc], a                                    ; $41c4: $02
    dec b                                         ; $41c5: $05
    dec b                                         ; $41c6: $05
    sub $d2                                       ; $41c7: $d6 $d2
    add hl, hl                                    ; $41c9: $29
    call nc, $d2d5                                ; $41ca: $d4 $d5 $d2
    ld a, [hl+]                                   ; $41cd: $2a
    call nc, $d2d3                                ; $41ce: $d4 $d3 $d2
    dec hl                                        ; $41d1: $2b
    call nc, $d2d7                                ; $41d2: $d4 $d7 $d2
    inc l                                         ; $41d5: $2c
    call nc, $0205                                ; $41d6: $d4 $05 $02
    dec b                                         ; $41d9: $05
    dec b                                         ; $41da: $05
    ld h, l                                       ; $41db: $65
    ld [bc], a                                    ; $41dc: $02
    dec b                                         ; $41dd: $05
    dec b                                         ; $41de: $05
    ld h, l                                       ; $41df: $65
    ld [bc], a                                    ; $41e0: $02
    dec b                                         ; $41e1: $05
    dec b                                         ; $41e2: $05
    ld h, l                                       ; $41e3: $65
    ld [bc], a                                    ; $41e4: $02
    dec b                                         ; $41e5: $05
    dec b                                         ; $41e6: $05
    call nc, $d22d                                ; $41e7: $d4 $2d $d2
    db $d3                                        ; $41ea: $d3
    call nc, $d22e                                ; $41eb: $d4 $2e $d2
    push de                                       ; $41ee: $d5
    call nc, $d22f                                ; $41ef: $d4 $2f $d2
    sub $d4                                       ; $41f2: $d6 $d4
    jr nc, @-$2c                                  ; $41f4: $30 $d2

    rst $10                                       ; $41f6: $d7
    dec b                                         ; $41f7: $05
    dec b                                         ; $41f8: $05
    ld [bc], a                                    ; $41f9: $02
    dec b                                         ; $41fa: $05
    dec b                                         ; $41fb: $05
    dec b                                         ; $41fc: $05
    ld [bc], a                                    ; $41fd: $02
    dec b                                         ; $41fe: $05
    dec b                                         ; $41ff: $05
    dec b                                         ; $4200: $05
    ld [bc], a                                    ; $4201: $02
    ld h, l                                       ; $4202: $65
    dec b                                         ; $4203: $05
    dec b                                         ; $4204: $05
    ld [bc], a                                    ; $4205: $02
    dec b                                         ; $4206: $05
    jp c, $d3d2                                   ; $4207: $da $d2 $d3

    call nc, $d2d9                                ; $420a: $d4 $d9 $d2
    push de                                       ; $420d: $d5
    call nc, $d231                                ; $420e: $d4 $31 $d2
    add sp, -$17                                  ; $4211: $e8 $e9
    ldh a, [$d2]                                  ; $4213: $f0 $d2
    db $ec                                        ; $4215: $ec
    db $ed                                        ; $4216: $ed
    dec b                                         ; $4217: $05
    ld [bc], a                                    ; $4218: $02
    dec b                                         ; $4219: $05
    dec b                                         ; $421a: $05
    ld h, l                                       ; $421b: $65
    ld [bc], a                                    ; $421c: $02
    dec b                                         ; $421d: $05
    dec b                                         ; $421e: $05
    dec b                                         ; $421f: $05
    ld [bc], a                                    ; $4220: $02
    dec b                                         ; $4221: $05
    dec b                                         ; $4222: $05
    ld [bc], a                                    ; $4223: $02
    ld [bc], a                                    ; $4224: $02
    ld [bc], a                                    ; $4225: $02
    ld [bc], a                                    ; $4226: $02
    sub $d2                                       ; $4227: $d6 $d2
    add hl, hl                                    ; $4229: $29
    ld [hl-], a                                   ; $422a: $32
    push de                                       ; $422b: $d5
    jp nc, Jump_000_3433                          ; $422c: $d2 $33 $34

    xor $d2                                       ; $422f: $ee $d2
    dec [hl]                                      ; $4231: $35
    ld [hl], $f0                                  ; $4232: $36 $f0
    jp nc, $3837                                  ; $4234: $d2 $37 $38

    dec b                                         ; $4237: $05
    ld [bc], a                                    ; $4238: $02
    dec b                                         ; $4239: $05
    dec b                                         ; $423a: $05
    ld h, l                                       ; $423b: $65
    ld [bc], a                                    ; $423c: $02
    ld [bc], a                                    ; $423d: $02
    ld [bc], a                                    ; $423e: $02
    dec b                                         ; $423f: $05
    ld [bc], a                                    ; $4240: $02
    ld b, $06                                     ; $4241: $06 $06
    ld [bc], a                                    ; $4243: $02
    ld [bc], a                                    ; $4244: $02
    ld b, $06                                     ; $4245: $06 $06
    add hl, sp                                    ; $4247: $39
    ld a, [hl-]                                   ; $4248: $3a
    jp nc, $34d3                                  ; $4249: $d2 $d3 $34

    dec sp                                        ; $424c: $3b
    jp nc, Jump_000_35d5                          ; $424d: $d2 $d5 $35

    ld [hl], $d2                                  ; $4250: $36 $d2
    add sp, $37                                   ; $4252: $e8 $37
    jr c, @-$2c                                   ; $4254: $38 $d2

    db $ec                                        ; $4256: $ec
    dec b                                         ; $4257: $05
    dec b                                         ; $4258: $05
    ld [bc], a                                    ; $4259: $02
    dec b                                         ; $425a: $05
    ld [bc], a                                    ; $425b: $02
    ld [bc], a                                    ; $425c: $02
    ld [bc], a                                    ; $425d: $02
    dec b                                         ; $425e: $05
    ld b, $06                                     ; $425f: $06 $06
    ld [bc], a                                    ; $4261: $02
    dec b                                         ; $4262: $05
    ld b, $06                                     ; $4263: $06 $06
    ld [bc], a                                    ; $4265: $02
    ld [bc], a                                    ; $4266: $02
    or $d2                                        ; $4267: $f6 $d2
    or $f6                                        ; $4269: $f6 $f6
    rst $30                                       ; $426b: $f7
    nop                                           ; $426c: $00
    rst $30                                       ; $426d: $f7
    rst $30                                       ; $426e: $f7
    ld bc, $0302                                  ; $426f: $01 $02 $03
    inc b                                         ; $4272: $04
    dec b                                         ; $4273: $05
    ld b, $07                                     ; $4274: $06 $07
    ld [$0202], sp                                ; $4276: $08 $02 $02
    ld [bc], a                                    ; $4279: $02
    ld [bc], a                                    ; $427a: $02
    ld [bc], a                                    ; $427b: $02
    ld [bc], a                                    ; $427c: $02
    ld [bc], a                                    ; $427d: $02
    ld [bc], a                                    ; $427e: $02
    inc b                                         ; $427f: $04
    inc b                                         ; $4280: $04
    inc b                                         ; $4281: $04
    inc b                                         ; $4282: $04
    ld bc, $0707                                  ; $4283: $01 $07 $07
    ld bc, $d2f6                                  ; $4286: $01 $f6 $d2
    inc a                                         ; $4289: $3c
    dec a                                         ; $428a: $3d
    rst $30                                       ; $428b: $f7
    nop                                           ; $428c: $00
    ld a, $3f                                     ; $428d: $3e $3f
    ld hl, sp-$07                                 ; $428f: $f8 $f9
    ld a, [$fcfb]                                 ; $4291: $fa $fb $fc
    db $fd                                        ; $4294: $fd
    cp $ff                                        ; $4295: $fe $ff
    ld [bc], a                                    ; $4297: $02
    ld [bc], a                                    ; $4298: $02
    ld b, $06                                     ; $4299: $06 $06
    ld [bc], a                                    ; $429b: $02
    ld [bc], a                                    ; $429c: $02
    ld b, $06                                     ; $429d: $06 $06
    inc b                                         ; $429f: $04
    inc b                                         ; $42a0: $04
    inc b                                         ; $42a1: $04
    inc b                                         ; $42a2: $04
    ld bc, $0607                                  ; $42a3: $01 $07 $06
    rlca                                          ; $42a6: $07
    ld b, b                                       ; $42a7: $40
    ld b, c                                       ; $42a8: $41
    jp nc, Jump_000_3ef6                          ; $42a9: $d2 $f6 $3e

    ccf                                           ; $42ac: $3f
    nop                                           ; $42ad: $00
    rst $30                                       ; $42ae: $f7
    ld bc, $0302                                  ; $42af: $01 $02 $03
    inc b                                         ; $42b2: $04
    dec b                                         ; $42b3: $05
    ld b, $07                                     ; $42b4: $06 $07
    ld [$0606], sp                                ; $42b6: $08 $06 $06
    ld [bc], a                                    ; $42b9: $02
    ld [bc], a                                    ; $42ba: $02
    ld b, $06                                     ; $42bb: $06 $06
    ld [bc], a                                    ; $42bd: $02
    ld [bc], a                                    ; $42be: $02
    inc b                                         ; $42bf: $04
    inc b                                         ; $42c0: $04
    inc b                                         ; $42c1: $04
    inc b                                         ; $42c2: $04
    rlca                                          ; $42c3: $07
    ld bc, $0601                                  ; $42c4: $01 $01 $06
    or $f6                                        ; $42c7: $f6 $f6
    jp nc, $f7f6                                  ; $42c9: $d2 $f6 $f7

    rst $30                                       ; $42cc: $f7
    nop                                           ; $42cd: $00
    rst $30                                       ; $42ce: $f7
    ld hl, sp-$07                                 ; $42cf: $f8 $f9
    ld a, [$fcfb]                                 ; $42d1: $fa $fb $fc
    db $fd                                        ; $42d4: $fd
    cp $ff                                        ; $42d5: $fe $ff
    ld [bc], a                                    ; $42d7: $02
    ld [bc], a                                    ; $42d8: $02
    ld [bc], a                                    ; $42d9: $02
    ld [bc], a                                    ; $42da: $02
    ld [bc], a                                    ; $42db: $02
    ld [bc], a                                    ; $42dc: $02
    ld [bc], a                                    ; $42dd: $02
    ld [bc], a                                    ; $42de: $02
    inc b                                         ; $42df: $04
    inc b                                         ; $42e0: $04
    inc b                                         ; $42e1: $04
    inc b                                         ; $42e2: $04
    ld bc, $0707                                  ; $42e3: $01 $07 $07
    ld bc, $1a19                                  ; $42e6: $01 $19 $1a
    dec de                                        ; $42e9: $1b
    inc e                                         ; $42ea: $1c
    dec e                                         ; $42eb: $1d
    ld e, $1f                                     ; $42ec: $1e $1f
    jr nz, jr_08d_4332                            ; $42ee: $20 $42

    ld b, d                                       ; $42f0: $42
    inc hl                                        ; $42f1: $23
    inc h                                         ; $42f2: $24
    ld b, e                                       ; $42f3: $43
    ld b, h                                       ; $42f4: $44
    daa                                           ; $42f5: $27
    jr z, @+$08                                   ; $42f6: $28 $06

    ld bc, $0706                                  ; $42f8: $01 $06 $07
    ld b, $01                                     ; $42fb: $06 $01
    ld bc, $0306                                  ; $42fd: $01 $06 $03
    inc hl                                        ; $4300: $23
    ld b, $01                                     ; $4301: $06 $01
    inc bc                                        ; $4303: $03
    inc bc                                        ; $4304: $03
    ld bc, $0907                                  ; $4305: $01 $07 $09
    ld a, [bc]                                    ; $4308: $0a
    dec bc                                        ; $4309: $0b
    inc c                                         ; $430a: $0c
    dec c                                         ; $430b: $0d
    ld c, $0f                                     ; $430c: $0e $0f
    ld b, l                                       ; $430e: $45
    ld de, $1312                                  ; $430f: $11 $12 $13
    ld b, [hl]                                    ; $4312: $46
    dec d                                         ; $4313: $15
    ld d, $17                                     ; $4314: $16 $17
    ld b, a                                       ; $4316: $47
    rlca                                          ; $4317: $07
    ld bc, $0107                                  ; $4318: $01 $07 $01
    ld bc, $0601                                  ; $431b: $01 $01 $06
    inc bc                                        ; $431e: $03
    ld bc, $0106                                  ; $431f: $01 $06 $01
    inc bc                                        ; $4322: $03
    rlca                                          ; $4323: $07
    ld bc, $0301                                  ; $4324: $01 $01 $03
    add hl, de                                    ; $4327: $19
    ld a, [de]                                    ; $4328: $1a
    dec de                                        ; $4329: $1b
    inc e                                         ; $432a: $1c
    ld b, l                                       ; $432b: $45
    ld e, $1f                                     ; $432c: $1e $1f
    jr nz, jr_08d_4376                            ; $432e: $20 $46

    ld [hl+], a                                   ; $4330: $22
    inc hl                                        ; $4331: $23

jr_08d_4332:
    inc h                                         ; $4332: $24
    ld c, b                                       ; $4333: $48
    ld h, $27                                     ; $4334: $26 $27
    jr z, @+$03                                   ; $4336: $28 $01

    ld b, $01                                     ; $4338: $06 $01
    ld bc, $0123                                  ; $433a: $01 $23 $01
    rlca                                          ; $433d: $07
    ld bc, $0623                                  ; $433e: $01 $23 $06
    ld b, $07                                     ; $4341: $06 $07
    inc bc                                        ; $4343: $03
    ld bc, $0707                                  ; $4344: $01 $07 $07
    add hl, bc                                    ; $4347: $09
    ld a, [bc]                                    ; $4348: $0a
    dec bc                                        ; $4349: $0b
    inc c                                         ; $434a: $0c
    dec c                                         ; $434b: $0d
    ld c, $0f                                     ; $434c: $0e $0f
    db $10                                        ; $434e: $10
    ld de, $4212                                  ; $434f: $11 $12 $42
    ld b, d                                       ; $4352: $42
    dec d                                         ; $4353: $15
    ld d, $43                                     ; $4354: $16 $43
    ld b, h                                       ; $4356: $44
    ld b, $01                                     ; $4357: $06 $01
    ld bc, $0101                                  ; $4359: $01 $01 $01
    ld b, $01                                     ; $435c: $06 $01
    ld bc, $0101                                  ; $435e: $01 $01 $01
    inc bc                                        ; $4361: $03
    inc hl                                        ; $4362: $23
    rlca                                          ; $4363: $07
    ld bc, $0303                                  ; $4364: $01 $03 $03
    rst $18                                       ; $4367: $df
    sbc $dd                                       ; $4368: $de $dd
    call c, $e2e3                                 ; $436a: $dc $e3 $e2
    pop hl                                        ; $436d: $e1
    ldh [$e7], a                                  ; $436e: $e0 $e7
    and $e5                                       ; $4370: $e6 $e5
    db $e4                                        ; $4372: $e4
    rst $18                                       ; $4373: $df
    sbc $dd                                       ; $4374: $de $dd

jr_08d_4376:
    call c, Call_000_2323                         ; $4376: $dc $23 $23
    inc hl                                        ; $4379: $23
    inc hl                                        ; $437a: $23
    inc hl                                        ; $437b: $23
    inc hl                                        ; $437c: $23
    inc hl                                        ; $437d: $23
    inc hl                                        ; $437e: $23
    inc hl                                        ; $437f: $23
    inc hl                                        ; $4380: $23
    inc hl                                        ; $4381: $23
    inc hl                                        ; $4382: $23
    inc hl                                        ; $4383: $23
    inc hl                                        ; $4384: $23
    inc hl                                        ; $4385: $23
    inc hl                                        ; $4386: $23
    call nc, $d4d4                                ; $4387: $d4 $d4 $d4
    sub $d4                                       ; $438a: $d6 $d4
    call nc, $d5d4                                ; $438c: $d4 $d4 $d5
    call nc, $d4d4                                ; $438f: $d4 $d4 $d4
    db $d3                                        ; $4392: $d3
    call nc, $d4d4                                ; $4393: $d4 $d4 $d4
    rst $10                                       ; $4396: $d7
    dec b                                         ; $4397: $05
    dec b                                         ; $4398: $05
    dec b                                         ; $4399: $05
    dec b                                         ; $439a: $05
    dec b                                         ; $439b: $05
    dec b                                         ; $439c: $05
    dec b                                         ; $439d: $05
    ld h, l                                       ; $439e: $65
    dec b                                         ; $439f: $05
    dec b                                         ; $43a0: $05

Call_08d_43a1:
    dec b                                         ; $43a1: $05
    ld h, l                                       ; $43a2: $65
    dec b                                         ; $43a3: $05
    dec b                                         ; $43a4: $05
    dec b                                         ; $43a5: $05
    ld h, l                                       ; $43a6: $65
    jp nc, $d1d1                                  ; $43a7: $d2 $d1 $d1

    pop de                                        ; $43aa: $d1
    jp nc, $d1d1                                  ; $43ab: $d2 $d1 $d1

    pop de                                        ; $43ae: $d1
    jp nc, $d1d1                                  ; $43af: $d2 $d1 $d1

    pop de                                        ; $43b2: $d1
    jp nc, $d1d1                                  ; $43b3: $d2 $d1 $d1

    pop de                                        ; $43b6: $d1
    add d                                         ; $43b7: $82
    add d                                         ; $43b8: $82
    ld [bc], a                                    ; $43b9: $02
    ld [bc], a                                    ; $43ba: $02
    add d                                         ; $43bb: $82
    add d                                         ; $43bc: $82
    ld [bc], a                                    ; $43bd: $02
    ld [bc], a                                    ; $43be: $02
    add d                                         ; $43bf: $82
    add d                                         ; $43c0: $82
    ld [bc], a                                    ; $43c1: $02
    ld [bc], a                                    ; $43c2: $02
    add d                                         ; $43c3: $82
    add d                                         ; $43c4: $82
    ld [bc], a                                    ; $43c5: $02
    ld [bc], a                                    ; $43c6: $02
    db $e3                                        ; $43c7: $e3
    ld [c], a                                     ; $43c8: $e2
    pop hl                                        ; $43c9: $e1
    ldh [$f4], a                                  ; $43ca: $e0 $f4
    di                                            ; $43cc: $f3
    ld a, [c]                                     ; $43cd: $f2
    pop af                                        ; $43ce: $f1
    push af                                       ; $43cf: $f5
    push af                                       ; $43d0: $f5
    push af                                       ; $43d1: $f5
    push af                                       ; $43d2: $f5
    db $ed                                        ; $43d3: $ed
    db $ed                                        ; $43d4: $ed
    db $ed                                        ; $43d5: $ed
    db $ed                                        ; $43d6: $ed
    inc hl                                        ; $43d7: $23
    inc hl                                        ; $43d8: $23
    inc hl                                        ; $43d9: $23
    inc hl                                        ; $43da: $23
    inc hl                                        ; $43db: $23
    inc hl                                        ; $43dc: $23
    inc hl                                        ; $43dd: $23
    inc hl                                        ; $43de: $23
    dec b                                         ; $43df: $05
    dec b                                         ; $43e0: $05
    dec b                                         ; $43e1: $05
    dec b                                         ; $43e2: $05
    ld [bc], a                                    ; $43e3: $02
    ld [bc], a                                    ; $43e4: $02
    ld [bc], a                                    ; $43e5: $02
    ld [bc], a                                    ; $43e6: $02
    jp c, $d3d2                                   ; $43e7: $da $d2 $d3

    call nc, $d2d9                                ; $43ea: $d4 $d9 $d2
    push de                                       ; $43ed: $d5
    call nc, $d231                                ; $43ee: $d4 $31 $d2
    add sp, -$17                                  ; $43f1: $e8 $e9
    ldh a, [$d2]                                  ; $43f3: $f0 $d2
    db $ec                                        ; $43f5: $ec
    db $ed                                        ; $43f6: $ed
    dec b                                         ; $43f7: $05
    ld [bc], a                                    ; $43f8: $02
    dec b                                         ; $43f9: $05
    dec b                                         ; $43fa: $05
    ld h, l                                       ; $43fb: $65
    ld [bc], a                                    ; $43fc: $02
    dec b                                         ; $43fd: $05
    dec b                                         ; $43fe: $05
    dec b                                         ; $43ff: $05
    ld [bc], a                                    ; $4400: $02
    dec b                                         ; $4401: $05
    dec h                                         ; $4402: $25
    ld [bc], a                                    ; $4403: $02
    ld [bc], a                                    ; $4404: $02
    ld [bc], a                                    ; $4405: $02
    ld [bc], a                                    ; $4406: $02
    call nc, $d4d4                                ; $4407: $d4 $d4 $d4
    sub $d4                                       ; $440a: $d6 $d4
    call nc, $d5d4                                ; $440c: $d4 $d4 $d5
    db $eb                                        ; $440f: $eb
    ld [$eee9], a                                 ; $4410: $ea $e9 $ee
    db $ed                                        ; $4413: $ed
    db $ed                                        ; $4414: $ed
    db $ed                                        ; $4415: $ed
    ldh a, [rTIMA]                                ; $4416: $f0 $05
    dec b                                         ; $4418: $05
    dec b                                         ; $4419: $05
    dec b                                         ; $441a: $05
    dec b                                         ; $441b: $05
    dec b                                         ; $441c: $05
    dec b                                         ; $441d: $05
    ld h, l                                       ; $441e: $65
    dec h                                         ; $441f: $25
    dec h                                         ; $4420: $25
    dec h                                         ; $4421: $25
    dec b                                         ; $4422: $05
    ld [bc], a                                    ; $4423: $02
    ld [bc], a                                    ; $4424: $02
    ld [bc], a                                    ; $4425: $02
    ld [bc], a                                    ; $4426: $02
    or $f6                                        ; $4427: $f6 $f6
    or $f6                                        ; $4429: $f6 $f6
    rst $30                                       ; $442b: $f7
    rst $30                                       ; $442c: $f7
    rst $30                                       ; $442d: $f7
    rst $30                                       ; $442e: $f7
    ld bc, $0302                                  ; $442f: $01 $02 $03
    inc b                                         ; $4432: $04
    dec b                                         ; $4433: $05
    ld b, $07                                     ; $4434: $06 $07
    ld [$0202], sp                                ; $4436: $08 $02 $02
    ld [bc], a                                    ; $4439: $02
    ld [bc], a                                    ; $443a: $02
    ld [bc], a                                    ; $443b: $02
    ld [bc], a                                    ; $443c: $02
    ld [bc], a                                    ; $443d: $02
    ld [bc], a                                    ; $443e: $02
    inc b                                         ; $443f: $04
    inc b                                         ; $4440: $04
    inc b                                         ; $4441: $04
    inc b                                         ; $4442: $04
    rlca                                          ; $4443: $07
    ld bc, $0606                                  ; $4444: $01 $06 $06
    or $d2                                        ; $4447: $f6 $d2
    or $f6                                        ; $4449: $f6 $f6
    rst $30                                       ; $444b: $f7
    nop                                           ; $444c: $00
    rst $30                                       ; $444d: $f7
    rst $30                                       ; $444e: $f7
    ld hl, sp-$07                                 ; $444f: $f8 $f9
    ld a, [$fcfb]                                 ; $4451: $fa $fb $fc
    db $fd                                        ; $4454: $fd
    cp $ff                                        ; $4455: $fe $ff
    ld [bc], a                                    ; $4457: $02
    ld [bc], a                                    ; $4458: $02

Jump_08d_4459:
    ld [bc], a                                    ; $4459: $02
    ld [bc], a                                    ; $445a: $02
    ld [bc], a                                    ; $445b: $02
    ld [bc], a                                    ; $445c: $02
    ld [bc], a                                    ; $445d: $02
    ld [bc], a                                    ; $445e: $02
    inc b                                         ; $445f: $04
    inc b                                         ; $4460: $04
    inc b                                         ; $4461: $04
    inc b                                         ; $4462: $04
    ld b, $06                                     ; $4463: $06 $06
    ld bc, $f607                                  ; $4465: $01 $07 $f6
    or $f6                                        ; $4468: $f6 $f6
    or $f7                                        ; $446a: $f6 $f7
    rst $30                                       ; $446c: $f7
    rst $30                                       ; $446d: $f7
    rst $30                                       ; $446e: $f7
    ld bc, $0302                                  ; $446f: $01 $02 $03
    inc b                                         ; $4472: $04
    dec b                                         ; $4473: $05
    ld b, $07                                     ; $4474: $06 $07
    ld [$0202], sp                                ; $4476: $08 $02 $02
    ld [bc], a                                    ; $4479: $02
    ld [bc], a                                    ; $447a: $02
    ld [bc], a                                    ; $447b: $02
    ld [bc], a                                    ; $447c: $02
    ld [bc], a                                    ; $447d: $02
    ld [bc], a                                    ; $447e: $02
    inc b                                         ; $447f: $04
    inc b                                         ; $4480: $04
    inc b                                         ; $4481: $04
    inc b                                         ; $4482: $04
    rlca                                          ; $4483: $07
    ld bc, $0401                                  ; $4484: $01 $01 $04
    add hl, de                                    ; $4487: $19
    ld a, [de]                                    ; $4488: $1a
    dec de                                        ; $4489: $1b
    inc e                                         ; $448a: $1c
    dec e                                         ; $448b: $1d
    ld e, $1f                                     ; $448c: $1e $1f
    jr nz, @+$23                                  ; $448e: $20 $21

    ld [hl+], a                                   ; $4490: $22
    inc hl                                        ; $4491: $23
    inc h                                         ; $4492: $24
    dec h                                         ; $4493: $25
    ld h, $27                                     ; $4494: $26 $27
    jr z, @+$09                                   ; $4496: $28 $07

    ld bc, $0101                                  ; $4498: $01 $01 $01
    ld bc, $0707                                  ; $449b: $01 $07 $07
    ld b, $01                                     ; $449e: $06 $01
    ld bc, $0707                                  ; $44a0: $01 $07 $07
    ld bc, $0701                                  ; $44a3: $01 $01 $07
    ld b, $09                                     ; $44a6: $06 $09
    ld a, [bc]                                    ; $44a8: $0a
    dec bc                                        ; $44a9: $0b
    inc c                                         ; $44aa: $0c
    dec c                                         ; $44ab: $0d
    ld c, $0f                                     ; $44ac: $0e $0f
    db $10                                        ; $44ae: $10
    ld de, $1312                                  ; $44af: $11 $12 $13
    inc d                                         ; $44b2: $14
    dec d                                         ; $44b3: $15
    ld d, $17                                     ; $44b4: $16 $17
    jr jr_08d_44b9                                ; $44b6: $18 $01

    rlca                                          ; $44b8: $07

jr_08d_44b9:
    ld bc, $0701                                  ; $44b9: $01 $01 $07
    ld bc, $0701                                  ; $44bc: $01 $01 $07
    ld bc, $0707                                  ; $44bf: $01 $07 $07
    ld bc, $0701                                  ; $44c2: $01 $01 $07
    ld bc, $1906                                  ; $44c5: $01 $06 $19
    ld a, [de]                                    ; $44c8: $1a
    dec de                                        ; $44c9: $1b
    inc e                                         ; $44ca: $1c
    dec e                                         ; $44cb: $1d
    ld e, $1f                                     ; $44cc: $1e $1f
    jr nz, jr_08d_44f1                            ; $44ce: $20 $21

    ld [hl+], a                                   ; $44d0: $22
    inc hl                                        ; $44d1: $23
    inc h                                         ; $44d2: $24
    dec h                                         ; $44d3: $25
    ld h, $27                                     ; $44d4: $26 $27
    jr z, jr_08d_44df                             ; $44d6: $28 $07

    ld b, $06                                     ; $44d8: $06 $06
    inc b                                         ; $44da: $04
    ld bc, $0701                                  ; $44db: $01 $01 $07
    inc b                                         ; $44de: $04

jr_08d_44df:
    ld bc, $0701                                  ; $44df: $01 $01 $07
    inc b                                         ; $44e2: $04
    rlca                                          ; $44e3: $07
    ld bc, $0407                                  ; $44e4: $01 $07 $04
    ld c, c                                       ; $44e7: $49
    ld c, d                                       ; $44e8: $4a
    ld c, e                                       ; $44e9: $4b
    ld c, h                                       ; $44ea: $4c
    ld c, l                                       ; $44eb: $4d
    ld c, [hl]                                    ; $44ec: $4e
    ld c, a                                       ; $44ed: $4f
    ld d, b                                       ; $44ee: $50
    ld hl, sp-$07                                 ; $44ef: $f8 $f9

jr_08d_44f1:
    ld a, [$fcfb]                                 ; $44f1: $fa $fb $fc
    db $fd                                        ; $44f4: $fd
    cp $ff                                        ; $44f5: $fe $ff
    inc b                                         ; $44f7: $04
    ld bc, $0106                                  ; $44f8: $01 $06 $01
    inc b                                         ; $44fb: $04
    ld bc, $0707                                  ; $44fc: $01 $07 $07
    inc b                                         ; $44ff: $04
    ld bc, $0707                                  ; $4500: $01 $07 $07
    inc b                                         ; $4503: $04
    rlca                                          ; $4504: $07
    rlca                                          ; $4505: $07
    rlca                                          ; $4506: $07
    ld d, c                                       ; $4507: $51
    ld d, d                                       ; $4508: $52
    ld d, e                                       ; $4509: $53
    ld d, e                                       ; $450a: $53
    ld d, h                                       ; $450b: $54
    ld d, l                                       ; $450c: $55
    ld d, [hl]                                    ; $450d: $56
    ld d, a                                       ; $450e: $57
    ld bc, $5958                                  ; $450f: $01 $58 $59
    ld e, d                                       ; $4512: $5a
    dec b                                         ; $4513: $05
    ld d, l                                       ; $4514: $55
    ld e, e                                       ; $4515: $5b
    ld e, h                                       ; $4516: $5c
    rlca                                          ; $4517: $07
    ld [bc], a                                    ; $4518: $02
    ld [bc], a                                    ; $4519: $02
    ld [bc], a                                    ; $451a: $02
    ld bc, $0302                                  ; $451b: $01 $02 $03
    ld [bc], a                                    ; $451e: $02
    ld bc, $0302                                  ; $451f: $01 $02 $03
    inc bc                                        ; $4522: $03
    rlca                                          ; $4523: $07
    ld [bc], a                                    ; $4524: $02
    inc bc                                        ; $4525: $03
    inc bc                                        ; $4526: $03
    ld e, l                                       ; $4527: $5d
    ld e, [hl]                                    ; $4528: $5e
    ld e, a                                       ; $4529: $5f
    ld h, b                                       ; $452a: $60
    ld h, c                                       ; $452b: $61
    ld h, d                                       ; $452c: $62
    ld h, e                                       ; $452d: $63
    call nc, $6564                                ; $452e: $d4 $64 $65
    call nc, $66d4                                ; $4531: $d4 $d4 $66
    ld h, a                                       ; $4534: $67
    ld l, b                                       ; $4535: $68
    ld l, c                                       ; $4536: $69
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    nop                                           ; $453a: $00
    nop                                           ; $453b: $00
    nop                                           ; $453c: $00
    nop                                           ; $453d: $00
    nop                                           ; $453e: $00
    nop                                           ; $453f: $00
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    nop                                           ; $4546: $00
    add hl, bc                                    ; $4547: $09
    ld a, [bc]                                    ; $4548: $0a
    dec bc                                        ; $4549: $0b
    inc c                                         ; $454a: $0c
    dec c                                         ; $454b: $0d
    ld c, $0f                                     ; $454c: $0e $0f
    db $10                                        ; $454e: $10
    ld de, $1312                                  ; $454f: $11 $12 $13
    inc d                                         ; $4552: $14
    dec d                                         ; $4553: $15
    ld d, $17                                     ; $4554: $16 $17
    jr jr_08d_455c                                ; $4556: $18 $04

    ld b, $01                                     ; $4558: $06 $01
    rlca                                          ; $455a: $07
    inc b                                         ; $455b: $04

jr_08d_455c:
    ld b, $01                                     ; $455c: $06 $01
    ld b, $04                                     ; $455e: $06 $04
    ld bc, $0101                                  ; $4560: $01 $01 $01
    inc b                                         ; $4563: $04
    rlca                                          ; $4564: $07
    rlca                                          ; $4565: $07
    ld b, $19                                     ; $4566: $06 $19
    ld e, b                                       ; $4568: $58
    ld l, d                                       ; $4569: $6a
    ld l, e                                       ; $456a: $6b
    dec e                                         ; $456b: $1d
    ld d, l                                       ; $456c: $55
    ld d, a                                       ; $456d: $57
    ld d, a                                       ; $456e: $57
    ld hl, $6d6c                                  ; $456f: $21 $6c $6d
    ld l, l                                       ; $4572: $6d
    dec h                                         ; $4573: $25
    ld h, $27                                     ; $4574: $26 $27
    jr z, jr_08d_4579                             ; $4576: $28 $01

    ld [bc], a                                    ; $4578: $02

jr_08d_4579:
    inc bc                                        ; $4579: $03
    inc bc                                        ; $457a: $03
    ld b, $02                                     ; $457b: $06 $02
    ld [bc], a                                    ; $457d: $02
    ld [bc], a                                    ; $457e: $02
    ld b, $02                                     ; $457f: $06 $02
    ld [bc], a                                    ; $4581: $02
    ld [bc], a                                    ; $4582: $02
    ld bc, $0404                                  ; $4583: $01 $04 $04
    inc b                                         ; $4586: $04
    ld l, [hl]                                    ; $4587: $6e
    ld l, a                                       ; $4588: $6f
    ld [hl], b                                    ; $4589: $70
    ld [hl], c                                    ; $458a: $71
    ld [hl], d                                    ; $458b: $72
    ld [hl], e                                    ; $458c: $73
    ld [hl], d                                    ; $458d: $72
    ld [hl], e                                    ; $458e: $73
    ld [hl], h                                    ; $458f: $74
    ld l, l                                       ; $4590: $6d
    ld [hl], h                                    ; $4591: $74
    ld l, l                                       ; $4592: $6d
    dec d                                         ; $4593: $15
    ld d, $17                                     ; $4594: $16 $17
    jr jr_08d_4598                                ; $4596: $18 $00

jr_08d_4598:
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459a: $00
    ld [bc], a                                    ; $459b: $02
    ld [bc], a                                    ; $459c: $02
    ld [bc], a                                    ; $459d: $02
    ld [bc], a                                    ; $459e: $02
    ld [bc], a                                    ; $459f: $02
    ld [bc], a                                    ; $45a0: $02
    ld [bc], a                                    ; $45a1: $02
    ld [bc], a                                    ; $45a2: $02
    ld bc, $0404                                  ; $45a3: $01 $04 $04
    inc b                                         ; $45a6: $04
    ld c, c                                       ; $45a7: $49
    ld c, d                                       ; $45a8: $4a
    ld c, e                                       ; $45a9: $4b
    ld c, h                                       ; $45aa: $4c
    ld c, l                                       ; $45ab: $4d
    ld c, [hl]                                    ; $45ac: $4e
    ld c, a                                       ; $45ad: $4f
    ld d, b                                       ; $45ae: $50
    ld hl, sp-$07                                 ; $45af: $f8 $f9
    ld a, [$fcfb]                                 ; $45b1: $fa $fb $fc
    db $fd                                        ; $45b4: $fd
    cp $ff                                        ; $45b5: $fe $ff
    inc b                                         ; $45b7: $04
    ld b, $01                                     ; $45b8: $06 $01
    rlca                                          ; $45ba: $07
    inc b                                         ; $45bb: $04
    ld bc, $0107                                  ; $45bc: $01 $07 $01
    inc b                                         ; $45bf: $04
    rlca                                          ; $45c0: $07
    ld bc, $0401                                  ; $45c1: $01 $01 $04
    ld bc, $0707                                  ; $45c4: $01 $07 $07
    ld d, c                                       ; $45c7: $51
    ld [hl], l                                    ; $45c8: $75
    halt                                          ; $45c9: $76
    ld [hl], a                                    ; $45ca: $77
    ld d, h                                       ; $45cb: $54
    ld a, b                                       ; $45cc: $78
    ld a, c                                       ; $45cd: $79
    ld a, d                                       ; $45ce: $7a
    ld bc, $0302                                  ; $45cf: $01 $02 $03
    inc b                                         ; $45d2: $04
    dec b                                         ; $45d3: $05
    ld b, $07                                     ; $45d4: $06 $07
    ld [$0101], sp                                ; $45d6: $08 $01 $01
    ld b, $01                                     ; $45d9: $06 $01
    ld b, $01                                     ; $45db: $06 $01
    ld bc, $0607                                  ; $45dd: $01 $07 $06
    ld bc, $0107                                  ; $45e0: $01 $07 $01
    ld bc, $0101                                  ; $45e3: $01 $01 $01
    rlca                                          ; $45e6: $07
    ld c, c                                       ; $45e7: $49
    ld c, d                                       ; $45e8: $4a
    ld c, e                                       ; $45e9: $4b
    ld c, h                                       ; $45ea: $4c
    ld c, l                                       ; $45eb: $4d
    ld c, [hl]                                    ; $45ec: $4e
    ld c, a                                       ; $45ed: $4f
    ld d, b                                       ; $45ee: $50
    ld hl, sp-$07                                 ; $45ef: $f8 $f9
    ld a, [$fcfb]                                 ; $45f1: $fa $fb $fc
    db $fd                                        ; $45f4: $fd
    cp $ff                                        ; $45f5: $fe $ff
    ld bc, $0107                                  ; $45f7: $01 $07 $01
    ld b, $01                                     ; $45fa: $06 $01
    ld bc, $0606                                  ; $45fc: $01 $06 $06
    ld bc, $0701                                  ; $45ff: $01 $01 $07
    ld bc, $0707                                  ; $4602: $01 $07 $07
    ld b, $01                                     ; $4605: $06 $01
    add hl, bc                                    ; $4607: $09
    ld a, [bc]                                    ; $4608: $0a
    dec bc                                        ; $4609: $0b
    inc c                                         ; $460a: $0c
    dec c                                         ; $460b: $0d
    ld c, $0f                                     ; $460c: $0e $0f
    db $10                                        ; $460e: $10
    ld de, $1312                                  ; $460f: $11 $12 $13
    ld a, e                                       ; $4612: $7b
    dec d                                         ; $4613: $15
    ld d, $17                                     ; $4614: $16 $17
    ld a, h                                       ; $4616: $7c
    inc b                                         ; $4617: $04
    ld b, $07                                     ; $4618: $06 $07
    ld bc, HeaderLogo                             ; $461a: $01 $04 $01
    rlca                                          ; $461d: $07
    ld bc, $0604                                  ; $461e: $01 $04 $06
    ld bc, $0402                                  ; $4621: $01 $02 $04
    ld bc, $0206                                  ; $4624: $01 $06 $02
    add hl, de                                    ; $4627: $19
    ld a, [de]                                    ; $4628: $1a
    dec de                                        ; $4629: $1b
    inc e                                         ; $462a: $1c
    ld e, l                                       ; $462b: $5d
    ld e, [hl]                                    ; $462c: $5e
    ld e, a                                       ; $462d: $5f
    ld a, l                                       ; $462e: $7d
    ld h, c                                       ; $462f: $61
    ld h, d                                       ; $4630: $62
    ld h, e                                       ; $4631: $63
    call nc, $6564                                ; $4632: $d4 $64 $65
    call nc, $01d4                                ; $4635: $d4 $d4 $01
    ld bc, $0101                                  ; $4638: $01 $01 $01
    nop                                           ; $463b: $00
    nop                                           ; $463c: $00
    nop                                           ; $463d: $00
    nop                                           ; $463e: $00
    nop                                           ; $463f: $00
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    nop                                           ; $4646: $00
    add hl, bc                                    ; $4647: $09
    ld a, [bc]                                    ; $4648: $0a
    dec bc                                        ; $4649: $0b
    inc c                                         ; $464a: $0c
    ld a, l                                       ; $464b: $7d
    ld e, a                                       ; $464c: $5f
    ld e, [hl]                                    ; $464d: $5e
    ld e, l                                       ; $464e: $5d
    call nc, Call_08d_6263                        ; $464f: $d4 $63 $62
    ld h, c                                       ; $4652: $61
    call nc, Call_08d_65d4                        ; $4653: $d4 $d4 $65
    ld h, h                                       ; $4656: $64
    rlca                                          ; $4657: $07
    rlca                                          ; $4658: $07
    rlca                                          ; $4659: $07
    ld bc, $2000                                  ; $465a: $01 $00 $20
    jr nz, jr_08d_467f                            ; $465d: $20 $20

    nop                                           ; $465f: $00
    jr nz, @+$22                                  ; $4660: $20 $20

    jr nz, jr_08d_4664                            ; $4662: $20 $00

jr_08d_4664:
    nop                                           ; $4664: $00
    jr nz, jr_08d_4687                            ; $4665: $20 $20

    ld a, [hl]                                    ; $4667: $7e
    ld a, a                                       ; $4668: $7f
    add b                                         ; $4669: $80
    ld a, l                                       ; $466a: $7d
    add c                                         ; $466b: $81
    add d                                         ; $466c: $82
    add e                                         ; $466d: $83
    call nc, $d4d4                                ; $466e: $d4 $d4 $d4
    add h                                         ; $4671: $84
    call nc, $6768                                ; $4672: $d4 $68 $67
    ld l, b                                       ; $4675: $68
    ld l, c                                       ; $4676: $69
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    ld [$0800], sp                                ; $4679: $08 $00 $08
    ld [$0008], sp                                ; $467c: $08 $08 $00

jr_08d_467f:
    nop                                           ; $467f: $00
    nop                                           ; $4680: $00
    ld [$2000], sp                                ; $4681: $08 $00 $20
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00

jr_08d_4687:
    ld a, l                                       ; $4687: $7d
    ld a, l                                       ; $4688: $7d
    add l                                         ; $4689: $85
    add [hl]                                      ; $468a: $86
    call nc, $87d4                                ; $468b: $d4 $d4 $87
    adc b                                         ; $468e: $88
    call nc, $d4d4                                ; $468f: $d4 $d4 $d4
    call nc, $6768                                ; $4692: $d4 $68 $67
    ld l, b                                       ; $4695: $68
    ld l, c                                       ; $4696: $69
    nop                                           ; $4697: $00
    nop                                           ; $4698: $00
    ld [$0008], sp                                ; $4699: $08 $08 $00
    nop                                           ; $469c: $00
    jr z, jr_08d_46a7                             ; $469d: $28 $08

    nop                                           ; $469f: $00
    nop                                           ; $46a0: $00
    nop                                           ; $46a1: $00
    nop                                           ; $46a2: $00
    jr nz, jr_08d_46a5                            ; $46a3: $20 $00

jr_08d_46a5:
    nop                                           ; $46a5: $00
    nop                                           ; $46a6: $00

jr_08d_46a7:
    adc c                                         ; $46a7: $89
    ld h, b                                       ; $46a8: $60
    adc d                                         ; $46a9: $8a
    ld a, l                                       ; $46aa: $7d
    adc e                                         ; $46ab: $8b
    adc h                                         ; $46ac: $8c
    call nc, $8dd4                                ; $46ad: $d4 $d4 $8d
    adc [hl]                                      ; $46b0: $8e
    call nc, Call_08d_68d4                        ; $46b1: $d4 $d4 $68
    ld h, a                                       ; $46b4: $67
    ld l, b                                       ; $46b5: $68
    ld l, c                                       ; $46b6: $69
    ld [$0800], sp                                ; $46b7: $08 $00 $08
    nop                                           ; $46ba: $00
    ld [$0008], sp                                ; $46bb: $08 $08 $00
    nop                                           ; $46be: $00
    ld [$0008], sp                                ; $46bf: $08 $08 $00
    nop                                           ; $46c2: $00
    jr nz, jr_08d_46c5                            ; $46c3: $20 $00

jr_08d_46c5:
    nop                                           ; $46c5: $00
    nop                                           ; $46c6: $00
    ld a, l                                       ; $46c7: $7d
    adc a                                         ; $46c8: $8f
    sub b                                         ; $46c9: $90
    sub c                                         ; $46ca: $91
    call nc, $9392                                ; $46cb: $d4 $92 $93
    sub h                                         ; $46ce: $94
    call nc, $d4d4                                ; $46cf: $d4 $d4 $d4
    sub l                                         ; $46d2: $95
    ld l, b                                       ; $46d3: $68
    ld h, a                                       ; $46d4: $67
    ld l, b                                       ; $46d5: $68
    ld h, a                                       ; $46d6: $67
    nop                                           ; $46d7: $00
    ld [$0808], sp                                ; $46d8: $08 $08 $08
    nop                                           ; $46db: $00
    ld [$0808], sp                                ; $46dc: $08 $08 $08
    nop                                           ; $46df: $00
    nop                                           ; $46e0: $00
    nop                                           ; $46e1: $00
    ld [$0020], sp                                ; $46e2: $08 $20 $00
    nop                                           ; $46e5: $00
    nop                                           ; $46e6: $00
    sub [hl]                                      ; $46e7: $96
    sub a                                         ; $46e8: $97
    ld l, a                                       ; $46e9: $6f
    ld [hl], b                                    ; $46ea: $70
    ld [hl], d                                    ; $46eb: $72
    ld [hl], e                                    ; $46ec: $73
    ld [hl], d                                    ; $46ed: $72
    ld [hl], e                                    ; $46ee: $73
    ld [hl], h                                    ; $46ef: $74
    ld l, l                                       ; $46f0: $6d
    ld [hl], h                                    ; $46f1: $74
    ld l, l                                       ; $46f2: $6d
    dec h                                         ; $46f3: $25
    ld h, $27                                     ; $46f4: $26 $27
    jr z, jr_08d_4700                             ; $46f6: $28 $08

    ld [$0000], sp                                ; $46f8: $08 $00 $00
    ld [bc], a                                    ; $46fb: $02
    ld [bc], a                                    ; $46fc: $02
    ld [bc], a                                    ; $46fd: $02
    ld [bc], a                                    ; $46fe: $02
    ld [bc], a                                    ; $46ff: $02

jr_08d_4700:
    ld [bc], a                                    ; $4700: $02
    ld [bc], a                                    ; $4701: $02
    ld [bc], a                                    ; $4702: $02
    inc b                                         ; $4703: $04
    inc b                                         ; $4704: $04
    inc b                                         ; $4705: $04
    inc b                                         ; $4706: $04
    ld [hl], c                                    ; $4707: $71
    sub [hl]                                      ; $4708: $96
    sub a                                         ; $4709: $97
    ld l, a                                       ; $470a: $6f
    ld [hl], d                                    ; $470b: $72
    ld [hl], e                                    ; $470c: $73
    ld [hl], d                                    ; $470d: $72
    ld [hl], e                                    ; $470e: $73
    ld [hl], h                                    ; $470f: $74
    ld l, l                                       ; $4710: $6d
    ld [hl], h                                    ; $4711: $74
    ld l, l                                       ; $4712: $6d
    dec d                                         ; $4713: $15
    ld d, $17                                     ; $4714: $16 $17
    sbc b                                         ; $4716: $98
    nop                                           ; $4717: $00
    ld [$0008], sp                                ; $4718: $08 $08 $00
    ld [bc], a                                    ; $471b: $02
    ld [bc], a                                    ; $471c: $02
    ld [bc], a                                    ; $471d: $02
    ld [bc], a                                    ; $471e: $02
    ld [bc], a                                    ; $471f: $02
    ld [bc], a                                    ; $4720: $02
    ld [bc], a                                    ; $4721: $02
    ld [bc], a                                    ; $4722: $02
    inc b                                         ; $4723: $04
    inc b                                         ; $4724: $04
    inc b                                         ; $4725: $04
    inc c                                         ; $4726: $0c
    ld [hl], b                                    ; $4727: $70
    ld [hl], c                                    ; $4728: $71
    sub [hl]                                      ; $4729: $96
    sub a                                         ; $472a: $97
    ld [hl], d                                    ; $472b: $72
    ld [hl], e                                    ; $472c: $73
    ld [hl], d                                    ; $472d: $72
    ld [hl], e                                    ; $472e: $73
    ld [hl], h                                    ; $472f: $74
    ld l, l                                       ; $4730: $6d
    ld [hl], h                                    ; $4731: $74
    ld l, l                                       ; $4732: $6d
    sbc c                                         ; $4733: $99
    ld h, $27                                     ; $4734: $26 $27
    jr z, jr_08d_4738                             ; $4736: $28 $00

jr_08d_4738:
    nop                                           ; $4738: $00
    ld [$0208], sp                                ; $4739: $08 $08 $02
    ld [bc], a                                    ; $473c: $02
    ld [bc], a                                    ; $473d: $02
    ld [bc], a                                    ; $473e: $02
    ld [bc], a                                    ; $473f: $02
    ld [bc], a                                    ; $4740: $02
    ld [bc], a                                    ; $4741: $02
    ld [bc], a                                    ; $4742: $02
    inc c                                         ; $4743: $0c
    inc b                                         ; $4744: $04
    inc b                                         ; $4745: $04
    inc b                                         ; $4746: $04
    ld l, a                                       ; $4747: $6f
    ld [hl], b                                    ; $4748: $70
    ld [hl], c                                    ; $4749: $71
    ld l, a                                       ; $474a: $6f
    ld [hl], d                                    ; $474b: $72
    ld [hl], e                                    ; $474c: $73
    ld [hl], d                                    ; $474d: $72
    ld [hl], e                                    ; $474e: $73
    ld [hl], h                                    ; $474f: $74
    ld l, l                                       ; $4750: $6d
    ld [hl], h                                    ; $4751: $74
    ld l, l                                       ; $4752: $6d
    dec d                                         ; $4753: $15
    ld d, $17                                     ; $4754: $16 $17
    jr jr_08d_4758                                ; $4756: $18 $00

jr_08d_4758:
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    nop                                           ; $475a: $00
    ld [bc], a                                    ; $475b: $02
    ld [bc], a                                    ; $475c: $02
    ld [bc], a                                    ; $475d: $02
    ld [bc], a                                    ; $475e: $02
    ld [bc], a                                    ; $475f: $02
    ld [bc], a                                    ; $4760: $02
    ld [bc], a                                    ; $4761: $02
    ld [bc], a                                    ; $4762: $02
    inc b                                         ; $4763: $04
    inc b                                         ; $4764: $04
    inc b                                         ; $4765: $04
    inc b                                         ; $4766: $04
    ld d, c                                       ; $4767: $51
    ld [hl], l                                    ; $4768: $75
    halt                                          ; $4769: $76
    ld [hl], a                                    ; $476a: $77
    ld d, h                                       ; $476b: $54
    ld a, b                                       ; $476c: $78
    ld a, c                                       ; $476d: $79
    ld a, d                                       ; $476e: $7a
    ld bc, $0302                                  ; $476f: $01 $02 $03
    inc b                                         ; $4772: $04
    dec b                                         ; $4773: $05
    ld b, $07                                     ; $4774: $06 $07
    ld [$0101], sp                                ; $4776: $08 $01 $01
    ld bc, $0106                                  ; $4779: $01 $06 $01
    ld bc, $0101                                  ; $477c: $01 $01 $01
    rlca                                          ; $477f: $07
    ld bc, $0101                                  ; $4780: $01 $01 $01
    ld bc, $0701                                  ; $4783: $01 $01 $07
    rlca                                          ; $4786: $07
    ld c, c                                       ; $4787: $49
    ld c, d                                       ; $4788: $4a
    sbc d                                         ; $4789: $9a
    sbc e                                         ; $478a: $9b
    ld c, l                                       ; $478b: $4d
    sbc h                                         ; $478c: $9c
    sbc l                                         ; $478d: $9d
    sbc [hl]                                      ; $478e: $9e
    ld hl, sp-$07                                 ; $478f: $f8 $f9
    sbc a                                         ; $4791: $9f
    and b                                         ; $4792: $a0
    db $fc                                        ; $4793: $fc
    db $fd                                        ; $4794: $fd
    and c                                         ; $4795: $a1
    and d                                         ; $4796: $a2
    ld bc, $0901                                  ; $4797: $01 $01 $09
    ld c, $06                                     ; $479a: $0e $06
    add hl, bc                                    ; $479c: $09
    ld c, $0e                                     ; $479d: $0e $0e
    rlca                                          ; $479f: $07
    ld bc, $0e0e                                  ; $47a0: $01 $0e $0e
    ld bc, $0901                                  ; $47a3: $01 $01 $09
    ld c, $a3                                     ; $47a6: $0e $a3
    and h                                         ; $47a8: $a4
    halt                                          ; $47a9: $76
    ld [hl], a                                    ; $47aa: $77
    and l                                         ; $47ab: $a5
    and [hl]                                      ; $47ac: $a6
    and a                                         ; $47ad: $a7
    ld a, d                                       ; $47ae: $7a
    xor b                                         ; $47af: $a8
    xor c                                         ; $47b0: $a9
    xor d                                         ; $47b1: $aa
    inc b                                         ; $47b2: $04
    xor e                                         ; $47b3: $ab
    xor h                                         ; $47b4: $ac
    xor l                                         ; $47b5: $ad
    ld [$0e0e], sp                                ; $47b6: $08 $0e $0e
    ld bc, $0e01                                  ; $47b9: $01 $01 $0e
    ld c, $0e                                     ; $47bc: $0e $0e
    ld bc, $0e0e                                  ; $47be: $01 $0e $0e
    add hl, bc                                    ; $47c1: $09
    rlca                                          ; $47c2: $07
    ld c, $09                                     ; $47c3: $0e $09
    add hl, bc                                    ; $47c5: $09
    rlca                                          ; $47c6: $07
    ld c, c                                       ; $47c7: $49
    ld c, d                                       ; $47c8: $4a
    ld c, e                                       ; $47c9: $4b
    ld c, h                                       ; $47ca: $4c
    ld c, l                                       ; $47cb: $4d
    ld c, [hl]                                    ; $47cc: $4e
    ld c, a                                       ; $47cd: $4f
    ld d, b                                       ; $47ce: $50
    ld hl, sp-$07                                 ; $47cf: $f8 $f9
    ld a, [$fcfb]                                 ; $47d1: $fa $fb $fc
    db $fd                                        ; $47d4: $fd
    cp $ff                                        ; $47d5: $fe $ff
    ld bc, $0601                                  ; $47d7: $01 $01 $06
    ld bc, $0107                                  ; $47da: $01 $07 $01
    ld b, $07                                     ; $47dd: $06 $07
    rlca                                          ; $47df: $07
    ld bc, $0701                                  ; $47e0: $01 $01 $07
    rlca                                          ; $47e3: $07
    rlca                                          ; $47e4: $07
    ld bc, $1901                                  ; $47e5: $01 $01 $19
    ld a, [de]                                    ; $47e8: $1a
    dec de                                        ; $47e9: $1b
    inc e                                         ; $47ea: $1c
    dec e                                         ; $47eb: $1d
    ld e, $1f                                     ; $47ec: $1e $1f
    jr nz, jr_08d_486b                            ; $47ee: $20 $7b

    ld [hl+], a                                   ; $47f0: $22
    inc hl                                        ; $47f1: $23
    inc h                                         ; $47f2: $24
    ld a, h                                       ; $47f3: $7c
    ld h, $27                                     ; $47f4: $26 $27
    jr z, jr_08d_47fe                             ; $47f6: $28 $06

    ld bc, $0607                                  ; $47f8: $01 $07 $06
    ld bc, $0701                                  ; $47fb: $01 $01 $07

jr_08d_47fe:
    ld b, $22                                     ; $47fe: $06 $22
    inc b                                         ; $4800: $04
    ld bc, $2207                                  ; $4801: $01 $07 $22
    inc b                                         ; $4804: $04
    ld bc, $0907                                  ; $4805: $01 $07 $09
    ld a, [bc]                                    ; $4808: $0a
    dec bc                                        ; $4809: $0b
    inc c                                         ; $480a: $0c
    dec c                                         ; $480b: $0d
    ld c, $0f                                     ; $480c: $0e $0f
    db $10                                        ; $480e: $10
    ld de, $1312                                  ; $480f: $11 $12 $13
    inc d                                         ; $4812: $14
    dec d                                         ; $4813: $15
    ld d, $17                                     ; $4814: $16 $17
    jr @+$08                                      ; $4816: $18 $06

    ld b, $01                                     ; $4818: $06 $01
    ld bc, $0606                                  ; $481a: $01 $06 $06
    ld bc, $0101                                  ; $481d: $01 $01 $01
    ld bc, $0706                                  ; $4820: $01 $06 $07
    ld bc, $0101                                  ; $4823: $01 $01 $01
    ld bc, $1a19                                  ; $4826: $01 $19 $1a
    dec de                                        ; $4829: $1b
    inc e                                         ; $482a: $1c
    dec e                                         ; $482b: $1d
    ld e, $1f                                     ; $482c: $1e $1f
    jr nz, @+$23                                  ; $482e: $20 $21

    ld [hl+], a                                   ; $4830: $22
    inc hl                                        ; $4831: $23
    inc h                                         ; $4832: $24
    dec h                                         ; $4833: $25
    ld h, $27                                     ; $4834: $26 $27
    jr z, @+$03                                   ; $4836: $28 $01

    ld bc, $0106                                  ; $4838: $01 $06 $01
    rlca                                          ; $483b: $07
    rlca                                          ; $483c: $07
    ld bc, $0701                                  ; $483d: $01 $01 $07
    ld bc, $0106                                  ; $4840: $01 $06 $01
    ld bc, $0601                                  ; $4843: $01 $01 $06
    ld bc, $0a09                                  ; $4846: $01 $09 $0a
    dec bc                                        ; $4849: $0b
    inc c                                         ; $484a: $0c
    dec c                                         ; $484b: $0d
    ld c, $0f                                     ; $484c: $0e $0f
    db $10                                        ; $484e: $10
    ld de, $1312                                  ; $484f: $11 $12 $13
    ld a, e                                       ; $4852: $7b
    dec d                                         ; $4853: $15
    ld d, $17                                     ; $4854: $16 $17
    ld a, h                                       ; $4856: $7c
    rlca                                          ; $4857: $07
    ld bc, $0707                                  ; $4858: $01 $07 $07
    ld b, $01                                     ; $485b: $06 $01
    ld bc, $0601                                  ; $485d: $01 $01 $06
    rlca                                          ; $4860: $07
    rlca                                          ; $4861: $07
    ld [bc], a                                    ; $4862: $02
    ld bc, $0601                                  ; $4863: $01 $01 $06
    ld [bc], a                                    ; $4866: $02
    ld a, l                                       ; $4867: $7d
    ld e, a                                       ; $4868: $5f
    ld e, [hl]                                    ; $4869: $5e
    ld e, l                                       ; $486a: $5d

jr_08d_486b:
    call nc, Call_08d_6263                        ; $486b: $d4 $63 $62
    ld h, c                                       ; $486e: $61
    call nc, Call_08d_65d4                        ; $486f: $d4 $d4 $65
    ld h, h                                       ; $4872: $64
    ld l, b                                       ; $4873: $68
    ld l, c                                       ; $4874: $69
    ld l, b                                       ; $4875: $68
    xor [hl]                                      ; $4876: $ae
    nop                                           ; $4877: $00
    jr nz, jr_08d_489a                            ; $4878: $20 $20

    jr nz, jr_08d_487c                            ; $487a: $20 $00

jr_08d_487c:
    jr nz, jr_08d_489e                            ; $487c: $20 $20

    jr nz, jr_08d_4880                            ; $487e: $20 $00

jr_08d_4880:
    nop                                           ; $4880: $00
    jr nz, jr_08d_48a3                            ; $4881: $20 $20

    nop                                           ; $4883: $00
    nop                                           ; $4884: $00
    jr nz, jr_08d_488f                            ; $4885: $20 $08

    ld d, e                                       ; $4887: $53
    ld d, e                                       ; $4888: $53
    ld d, d                                       ; $4889: $52
    ld c, h                                       ; $488a: $4c
    ld d, a                                       ; $488b: $57
    ld d, [hl]                                    ; $488c: $56
    ld d, l                                       ; $488d: $55
    ld d, b                                       ; $488e: $50

jr_08d_488f:
    ld e, d                                       ; $488f: $5a
    ld e, c                                       ; $4890: $59
    ld e, b                                       ; $4891: $58
    ei                                            ; $4892: $fb
    ld e, h                                       ; $4893: $5c
    ld e, e                                       ; $4894: $5b
    ld d, l                                       ; $4895: $55
    rst $38                                       ; $4896: $ff
    ld [hl+], a                                   ; $4897: $22
    ld [hl+], a                                   ; $4898: $22
    ld [hl+], a                                   ; $4899: $22

jr_08d_489a:
    ld bc, $2322                                  ; $489a: $01 $22 $23
    ld [hl+], a                                   ; $489d: $22

jr_08d_489e:
    inc b                                         ; $489e: $04
    inc hl                                        ; $489f: $23
    inc hl                                        ; $48a0: $23
    ld [hl+], a                                   ; $48a1: $22
    inc b                                         ; $48a2: $04

jr_08d_48a3:
    inc hl                                        ; $48a3: $23
    inc hl                                        ; $48a4: $23
    ld [hl+], a                                   ; $48a5: $22
    inc b                                         ; $48a6: $04
    ld d, c                                       ; $48a7: $51
    ld [hl], l                                    ; $48a8: $75
    halt                                          ; $48a9: $76
    ld [hl], a                                    ; $48aa: $77
    ld d, h                                       ; $48ab: $54
    ld a, b                                       ; $48ac: $78
    ld a, c                                       ; $48ad: $79
    ld a, d                                       ; $48ae: $7a
    ld bc, $0302                                  ; $48af: $01 $02 $03
    inc b                                         ; $48b2: $04
    dec b                                         ; $48b3: $05
    ld b, $07                                     ; $48b4: $06 $07
    ld [$0106], sp                                ; $48b6: $08 $06 $01
    ld bc, $0604                                  ; $48b9: $01 $04 $06
    rlca                                          ; $48bc: $07
    ld b, $04                                     ; $48bd: $06 $04
    ld bc, $0101                                  ; $48bf: $01 $01 $01
    inc b                                         ; $48c2: $04
    ld b, $01                                     ; $48c3: $06 $01
    rlca                                          ; $48c5: $07
    inc b                                         ; $48c6: $04
    ld [hl], b                                    ; $48c7: $70
    ld [hl], c                                    ; $48c8: $71
    sub [hl]                                      ; $48c9: $96
    sub a                                         ; $48ca: $97
    ld [hl], d                                    ; $48cb: $72
    ld [hl], e                                    ; $48cc: $73
    ld [hl], d                                    ; $48cd: $72
    ld [hl], e                                    ; $48ce: $73
    ld [hl], h                                    ; $48cf: $74
    ld l, l                                       ; $48d0: $6d
    ld [hl], h                                    ; $48d1: $74
    ld l, l                                       ; $48d2: $6d
    dec h                                         ; $48d3: $25
    ld h, $27                                     ; $48d4: $26 $27
    jr z, jr_08d_48d8                             ; $48d6: $28 $00

jr_08d_48d8:
    nop                                           ; $48d8: $00
    ld [$0208], sp                                ; $48d9: $08 $08 $02
    ld [bc], a                                    ; $48dc: $02
    ld [bc], a                                    ; $48dd: $02
    ld [bc], a                                    ; $48de: $02
    ld [bc], a                                    ; $48df: $02
    ld [bc], a                                    ; $48e0: $02
    ld [bc], a                                    ; $48e1: $02
    ld [bc], a                                    ; $48e2: $02
    inc b                                         ; $48e3: $04
    inc b                                         ; $48e4: $04
    inc b                                         ; $48e5: $04
    inc b                                         ; $48e6: $04
    ld l, e                                       ; $48e7: $6b
    ld l, d                                       ; $48e8: $6a
    ld e, b                                       ; $48e9: $58
    inc c                                         ; $48ea: $0c
    ld d, a                                       ; $48eb: $57
    ld d, a                                       ; $48ec: $57
    ld d, l                                       ; $48ed: $55
    db $10                                        ; $48ee: $10
    ld [hl], h                                    ; $48ef: $74
    ld [hl], h                                    ; $48f0: $74
    ld l, h                                       ; $48f1: $6c
    inc d                                         ; $48f2: $14
    dec d                                         ; $48f3: $15
    ld d, $17                                     ; $48f4: $16 $17
    jr jr_08d_491b                                ; $48f6: $18 $23

    inc hl                                        ; $48f8: $23
    ld [hl+], a                                   ; $48f9: $22
    inc b                                         ; $48fa: $04
    ld [hl+], a                                   ; $48fb: $22
    ld [hl+], a                                   ; $48fc: $22
    ld [hl+], a                                   ; $48fd: $22
    inc b                                         ; $48fe: $04
    ld [bc], a                                    ; $48ff: $02
    ld [bc], a                                    ; $4900: $02
    ld [hl+], a                                   ; $4901: $22
    inc b                                         ; $4902: $04
    inc b                                         ; $4903: $04
    inc b                                         ; $4904: $04
    inc b                                         ; $4905: $04
    inc b                                         ; $4906: $04
    add hl, de                                    ; $4907: $19
    ld a, [de]                                    ; $4908: $1a
    dec de                                        ; $4909: $1b
    inc e                                         ; $490a: $1c
    dec e                                         ; $490b: $1d
    ld e, $1f                                     ; $490c: $1e $1f
    jr nz, @+$23                                  ; $490e: $20 $21

    ld [hl+], a                                   ; $4910: $22
    inc hl                                        ; $4911: $23
    inc h                                         ; $4912: $24
    dec h                                         ; $4913: $25
    ld h, $27                                     ; $4914: $26 $27
    jr z, @+$08                                   ; $4916: $28 $06

    rlca                                          ; $4918: $07
    ld b, $04                                     ; $4919: $06 $04

jr_08d_491b:
    ld b, $07                                     ; $491b: $06 $07
    ld bc, HeaderLogo                             ; $491d: $01 $04 $01
    ld bc, $0407                                  ; $4920: $01 $07 $04
    ld b, $07                                     ; $4923: $06 $07
    rlca                                          ; $4925: $07
    inc b                                         ; $4926: $04
    ld d, c                                       ; $4927: $51
    ld [hl], l                                    ; $4928: $75
    halt                                          ; $4929: $76
    ld [hl], a                                    ; $492a: $77
    ld d, h                                       ; $492b: $54
    ld a, b                                       ; $492c: $78
    ld a, c                                       ; $492d: $79
    ld a, d                                       ; $492e: $7a
    ld bc, $0302                                  ; $492f: $01 $02 $03
    inc b                                         ; $4932: $04
    dec b                                         ; $4933: $05
    ld b, $07                                     ; $4934: $06 $07
    ld [$0106], sp                                ; $4936: $08 $06 $01
    ld b, $06                                     ; $4939: $06 $06
    ld bc, $0101                                  ; $493b: $01 $01 $01
    rlca                                          ; $493e: $07
    ld bc, $0701                                  ; $493f: $01 $01 $07
    ld bc, $0701                                  ; $4942: $01 $01 $07
    ld b, $01                                     ; $4945: $06 $01
    ld c, c                                       ; $4947: $49

Jump_08d_4948:
    ld c, d                                       ; $4948: $4a
    ld c, e                                       ; $4949: $4b
    ld c, h                                       ; $494a: $4c
    ld c, l                                       ; $494b: $4d
    ld c, [hl]                                    ; $494c: $4e
    ld c, a                                       ; $494d: $4f
    ld d, b                                       ; $494e: $50
    ld hl, sp-$07                                 ; $494f: $f8 $f9
    ld a, [$fcfb]                                 ; $4951: $fa $fb $fc
    db $fd                                        ; $4954: $fd
    cp $ff                                        ; $4955: $fe $ff
    rlca                                          ; $4957: $07
    rlca                                          ; $4958: $07
    ld bc, $0707                                  ; $4959: $01 $07 $07
    ld bc, $0601                                  ; $495c: $01 $01 $06
    ld bc, $0707                                  ; $495f: $01 $07 $07
    ld bc, $0607                                  ; $4962: $01 $07 $06
    ld bc, $5106                                  ; $4965: $01 $06 $51
    ld [hl], l                                    ; $4968: $75
    halt                                          ; $4969: $76
    ld [hl], a                                    ; $496a: $77
    ld d, h                                       ; $496b: $54
    ld a, b                                       ; $496c: $78
    ld a, c                                       ; $496d: $79
    ld a, d                                       ; $496e: $7a
    ld bc, $0302                                  ; $496f: $01 $02 $03
    inc b                                         ; $4972: $04
    dec b                                         ; $4973: $05
    ld b, $07                                     ; $4974: $06 $07
    ld [$0107], sp                                ; $4976: $08 $07 $01
    ld bc, HeaderLogo                             ; $4979: $01 $04 $01
    ld bc, $0401                                  ; $497c: $01 $01 $04
    rlca                                          ; $497f: $07
    rlca                                          ; $4980: $07
    rlca                                          ; $4981: $07
    inc b                                         ; $4982: $04
    ld bc, $0107                                  ; $4983: $01 $07 $01
    inc b                                         ; $4986: $04
    add hl, de                                    ; $4987: $19
    ld a, [de]                                    ; $4988: $1a
    dec de                                        ; $4989: $1b
    inc e                                         ; $498a: $1c
    ld e, l                                       ; $498b: $5d
    ld e, [hl]                                    ; $498c: $5e
    ld e, a                                       ; $498d: $5f
    ld a, l                                       ; $498e: $7d
    ld h, c                                       ; $498f: $61
    ld h, d                                       ; $4990: $62
    ld h, e                                       ; $4991: $63
    call nc, $6564                                ; $4992: $d4 $64 $65
    call nc, $07d4                                ; $4995: $d4 $d4 $07
    ld bc, $0606                                  ; $4998: $01 $06 $06
    nop                                           ; $499b: $00
    nop                                           ; $499c: $00
    nop                                           ; $499d: $00
    nop                                           ; $499e: $00
    nop                                           ; $499f: $00
    nop                                           ; $49a0: $00
    nop                                           ; $49a1: $00
    nop                                           ; $49a2: $00
    nop                                           ; $49a3: $00
    nop                                           ; $49a4: $00
    nop                                           ; $49a5: $00
    nop                                           ; $49a6: $00
    add hl, bc                                    ; $49a7: $09
    ld a, [bc]                                    ; $49a8: $0a
    dec bc                                        ; $49a9: $0b
    inc c                                         ; $49aa: $0c
    ld a, l                                       ; $49ab: $7d
    ld e, a                                       ; $49ac: $5f
    ld e, [hl]                                    ; $49ad: $5e
    ld e, l                                       ; $49ae: $5d
    call nc, Call_08d_6263                        ; $49af: $d4 $63 $62
    ld h, c                                       ; $49b2: $61
    call nc, Call_08d_65d4                        ; $49b3: $d4 $d4 $65
    ld h, h                                       ; $49b6: $64
    rlca                                          ; $49b7: $07
    rlca                                          ; $49b8: $07
    rlca                                          ; $49b9: $07
    rlca                                          ; $49ba: $07
    nop                                           ; $49bb: $00
    jr nz, jr_08d_49de                            ; $49bc: $20 $20

    jr nz, jr_08d_49c0                            ; $49be: $20 $00

jr_08d_49c0:
    jr nz, @+$22                                  ; $49c0: $20 $20

    jr nz, jr_08d_49c4                            ; $49c2: $20 $00

jr_08d_49c4:
    nop                                           ; $49c4: $00
    jr nz, @+$22                                  ; $49c5: $20 $20

    add hl, de                                    ; $49c7: $19
    ld a, [de]                                    ; $49c8: $1a
    dec de                                        ; $49c9: $1b
    inc e                                         ; $49ca: $1c
    dec e                                         ; $49cb: $1d
    ld e, $1f                                     ; $49cc: $1e $1f
    jr nz, jr_08d_4a4b                            ; $49ce: $20 $7b

    ld [hl+], a                                   ; $49d0: $22
    inc hl                                        ; $49d1: $23
    inc h                                         ; $49d2: $24
    ld a, h                                       ; $49d3: $7c
    ld h, $27                                     ; $49d4: $26 $27
    jr z, @+$03                                   ; $49d6: $28 $01

    ld bc, $0406                                  ; $49d8: $01 $06 $04
    ld bc, $0606                                  ; $49db: $01 $06 $06

jr_08d_49de:
    inc b                                         ; $49de: $04
    ld [hl+], a                                   ; $49df: $22
    inc b                                         ; $49e0: $04
    ld b, $04                                     ; $49e1: $06 $04
    ld [hl+], a                                   ; $49e3: $22
    inc b                                         ; $49e4: $04
    ld bc, $4904                                  ; $49e5: $01 $04 $49
    ld c, d                                       ; $49e8: $4a
    ld c, e                                       ; $49e9: $4b
    xor a                                         ; $49ea: $af
    ld c, l                                       ; $49eb: $4d
    ld c, [hl]                                    ; $49ec: $4e
    ld c, a                                       ; $49ed: $4f
    or b                                          ; $49ee: $b0
    ld hl, sp-$07                                 ; $49ef: $f8 $f9
    ld a, [$fcb1]                                 ; $49f1: $fa $b1 $fc
    db $fd                                        ; $49f4: $fd
    cp $b2                                        ; $49f5: $fe $b2
    inc b                                         ; $49f7: $04
    ld bc, $2a01                                  ; $49f8: $01 $01 $2a
    inc b                                         ; $49fb: $04
    rlca                                          ; $49fc: $07
    ld b, $2a                                     ; $49fd: $06 $2a
    inc b                                         ; $49ff: $04
    rlca                                          ; $4a00: $07
    ld bc, $042a                                  ; $4a01: $01 $2a $04
    rlca                                          ; $4a04: $07
    ld bc, $b30a                                  ; $4a05: $01 $0a $b3
    or h                                          ; $4a08: $b4
    or l                                          ; $4a09: $b5
    call nc, $b661                                ; $4a0a: $d4 $61 $b6
    or a                                          ; $4a0d: $b7
    call nc, $b9b8                                ; $4a0e: $d4 $b8 $b9
    call nc, $b3d4                                ; $4a11: $d4 $d4 $b3
    adc l                                         ; $4a14: $8d
    cp d                                          ; $4a15: $ba
    call nc, Call_000_0808                        ; $4a16: $d4 $08 $08
    ld [$0000], sp                                ; $4a19: $08 $00 $00
    ld [$0008], sp                                ; $4a1c: $08 $08 $00
    ld [$0008], sp                                ; $4a1f: $08 $08 $00
    nop                                           ; $4a22: $00
    ld [$0848], sp                                ; $4a23: $08 $48 $08
    nop                                           ; $4a26: $00
    call nc, $b4b5                                ; $4a27: $d4 $b5 $b4
    or e                                          ; $4a2a: $b3
    call nc, $b6b7                                ; $4a2b: $d4 $b7 $b6
    ld h, c                                       ; $4a2e: $61
    call nc, $b9d4                                ; $4a2f: $d4 $d4 $b9
    cp b                                          ; $4a32: $b8
    call nc, $bbba                                ; $4a33: $d4 $ba $bb
    cp h                                          ; $4a36: $bc
    nop                                           ; $4a37: $00
    jr z, @+$2a                                   ; $4a38: $28 $28

    jr z, jr_08d_4a3c                             ; $4a3a: $28 $00

jr_08d_4a3c:
    jr z, @+$2a                                   ; $4a3c: $28 $28

    jr nz, jr_08d_4a40                            ; $4a3e: $20 $00

jr_08d_4a40:
    nop                                           ; $4a40: $00
    jr z, @+$2a                                   ; $4a41: $28 $28

    nop                                           ; $4a43: $00
    jr z, jr_08d_4a4e                             ; $4a44: $28 $08

    ld [$0a09], sp                                ; $4a46: $08 $09 $0a
    dec bc                                        ; $4a49: $0b
    ld a, e                                       ; $4a4a: $7b

jr_08d_4a4b:
    dec c                                         ; $4a4b: $0d
    ld c, $0f                                     ; $4a4c: $0e $0f

jr_08d_4a4e:
    ld a, h                                       ; $4a4e: $7c
    ld de, $1312                                  ; $4a4f: $11 $12 $13
    xor a                                         ; $4a52: $af
    dec d                                         ; $4a53: $15
    ld d, $17                                     ; $4a54: $16 $17
    or b                                          ; $4a56: $b0
    inc b                                         ; $4a57: $04
    ld b, $07                                     ; $4a58: $06 $07
    ld [bc], a                                    ; $4a5a: $02
    inc b                                         ; $4a5b: $04
    ld bc, $0201                                  ; $4a5c: $01 $01 $02
    inc b                                         ; $4a5f: $04
    rlca                                          ; $4a60: $07
    ld b, $2a                                     ; $4a61: $06 $2a
    inc b                                         ; $4a63: $04
    rlca                                          ; $4a64: $07
    ld bc, $612a                                  ; $4a65: $01 $2a $61
    ld h, d                                       ; $4a68: $62
    ld h, e                                       ; $4a69: $63
    call nc, $6564                                ; $4a6a: $d4 $64 $65
    call nc, $bdd4                                ; $4a6d: $d4 $d4 $bd
    call nc, $d4d4                                ; $4a70: $d4 $d4 $d4
    ld h, c                                       ; $4a73: $61
    cp [hl]                                       ; $4a74: $be
    call nc, Call_000_00d4                        ; $4a75: $d4 $d4 $00
    nop                                           ; $4a78: $00
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    nop                                           ; $4a7b: $00
    nop                                           ; $4a7c: $00
    nop                                           ; $4a7d: $00
    nop                                           ; $4a7e: $00
    ld [$0000], sp                                ; $4a7f: $08 $00 $00
    nop                                           ; $4a82: $00
    nop                                           ; $4a83: $00
    ld [$0000], sp                                ; $4a84: $08 $00 $00
    call nc, Call_08d_6263                        ; $4a87: $d4 $63 $62
    ld h, c                                       ; $4a8a: $61
    call nc, Call_08d_65d4                        ; $4a8b: $d4 $d4 $65
    ld h, h                                       ; $4a8e: $64
    call nc, $d4d4                                ; $4a8f: $d4 $d4 $d4
    or e                                          ; $4a92: $b3
    call nc, $bed4                                ; $4a93: $d4 $d4 $be
    ld h, c                                       ; $4a96: $61
    nop                                           ; $4a97: $00
    jr nz, @+$22                                  ; $4a98: $20 $20

    jr nz, jr_08d_4a9c                            ; $4a9a: $20 $00

jr_08d_4a9c:
    nop                                           ; $4a9c: $00
    jr nz, jr_08d_4abf                            ; $4a9d: $20 $20

    nop                                           ; $4a9f: $00
    nop                                           ; $4aa0: $00
    nop                                           ; $4aa1: $00
    jr z, jr_08d_4aa4                             ; $4aa2: $28 $00

jr_08d_4aa4:
    nop                                           ; $4aa4: $00
    jr z, jr_08d_4ac7                             ; $4aa5: $28 $20

    ld c, c                                       ; $4aa7: $49
    ld c, d                                       ; $4aa8: $4a
    ld c, e                                       ; $4aa9: $4b
    or c                                          ; $4aaa: $b1
    ld c, l                                       ; $4aab: $4d
    ld c, [hl]                                    ; $4aac: $4e
    ld c, a                                       ; $4aad: $4f
    or d                                          ; $4aae: $b2
    ld hl, sp-$07                                 ; $4aaf: $f8 $f9
    ld a, [$fc7b]                                 ; $4ab1: $fa $7b $fc
    db $fd                                        ; $4ab4: $fd
    cp $7c                                        ; $4ab5: $fe $7c
    inc b                                         ; $4ab7: $04
    rlca                                          ; $4ab8: $07
    ld bc, $042a                                  ; $4ab9: $01 $2a $04
    rlca                                          ; $4abc: $07
    rlca                                          ; $4abd: $07
    ld a, [bc]                                    ; $4abe: $0a

jr_08d_4abf:
    inc b                                         ; $4abf: $04
    ld bc, $0201                                  ; $4ac0: $01 $01 $02
    inc b                                         ; $4ac3: $04
    ld b, $01                                     ; $4ac4: $06 $01
    ld [bc], a                                    ; $4ac6: $02

jr_08d_4ac7:
    cp a                                          ; $4ac7: $bf
    ret nz                                        ; $4ac8: $c0

    call nc, $c1d4                                ; $4ac9: $d4 $d4 $c1
    jp nz, $d4ba                                  ; $4acc: $c2 $ba $d4

    ld h, c                                       ; $4acf: $61
    ld h, d                                       ; $4ad0: $62
    ld h, e                                       ; $4ad1: $63
    call nc, $6564                                ; $4ad2: $d4 $64 $65
    call nc, $28d4                                ; $4ad5: $d4 $d4 $28
    ld [$0000], sp                                ; $4ad8: $08 $00 $00
    ld [$0808], sp                                ; $4adb: $08 $08 $08
    nop                                           ; $4ade: $00
    nop                                           ; $4adf: $00
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00
    call nc, $c0d4                                ; $4ae7: $d4 $d4 $c0
    cp a                                          ; $4aea: $bf
    call nc, $c2ba                                ; $4aeb: $d4 $ba $c2
    pop bc                                        ; $4aee: $c1
    call nc, Call_08d_6263                        ; $4aef: $d4 $63 $62
    ld h, c                                       ; $4af2: $61
    call nc, Call_08d_65d4                        ; $4af3: $d4 $d4 $65
    ld h, h                                       ; $4af6: $64
    nop                                           ; $4af7: $00
    nop                                           ; $4af8: $00
    jr z, @+$0a                                   ; $4af9: $28 $08

    nop                                           ; $4afb: $00
    jr z, jr_08d_4b26                             ; $4afc: $28 $28

    jr z, jr_08d_4b00                             ; $4afe: $28 $00

jr_08d_4b00:
    jr nz, jr_08d_4b22                            ; $4b00: $20 $20

    jr nz, jr_08d_4b04                            ; $4b02: $20 $00

jr_08d_4b04:
    nop                                           ; $4b04: $00
    jr nz, jr_08d_4b27                            ; $4b05: $20 $20

    pop de                                        ; $4b07: $d1
    pop de                                        ; $4b08: $d1
    pop de                                        ; $4b09: $d1
    jp nc, $c3d1                                  ; $4b0a: $d2 $d1 $c3

    call nz, $d1c5                                ; $4b0d: $c4 $c5 $d1
    jp nc, $d22a                                  ; $4b10: $d2 $2a $d2

    pop de                                        ; $4b13: $d1
    add $c7                                       ; $4b14: $c6 $c7
    jp nc, $0202                                  ; $4b16: $d2 $02 $02

    add d                                         ; $4b19: $82
    add d                                         ; $4b1a: $82
    ld [bc], a                                    ; $4b1b: $02
    ld a, [bc]                                    ; $4b1c: $0a
    adc d                                         ; $4b1d: $8a
    adc d                                         ; $4b1e: $8a
    ld [bc], a                                    ; $4b1f: $02
    ld [bc], a                                    ; $4b20: $02
    ld h, l                                       ; $4b21: $65

jr_08d_4b22:
    ld b, d                                       ; $4b22: $42
    ld [bc], a                                    ; $4b23: $02
    ld a, [bc]                                    ; $4b24: $0a
    dec c                                         ; $4b25: $0d

jr_08d_4b26:
    ld b, d                                       ; $4b26: $42

jr_08d_4b27:
    add hl, bc                                    ; $4b27: $09
    ld a, [bc]                                    ; $4b28: $0a
    dec bc                                        ; $4b29: $0b
    xor a                                         ; $4b2a: $af
    dec c                                         ; $4b2b: $0d
    ld c, $0f                                     ; $4b2c: $0e $0f
    or b                                          ; $4b2e: $b0
    ld de, $1312                                  ; $4b2f: $11 $12 $13
    or c                                          ; $4b32: $b1
    dec d                                         ; $4b33: $15
    ld d, $17                                     ; $4b34: $16 $17
    xor a                                         ; $4b36: $af
    inc b                                         ; $4b37: $04
    ld bc, $2a07                                  ; $4b38: $01 $07 $2a
    inc b                                         ; $4b3b: $04
    ld bc, $2a06                                  ; $4b3c: $01 $06 $2a
    inc b                                         ; $4b3f: $04
    ld b, $06                                     ; $4b40: $06 $06
    ld a, [hl+]                                   ; $4b42: $2a
    inc b                                         ; $4b43: $04
    rlca                                          ; $4b44: $07
    ld bc, $b32a                                  ; $4b45: $01 $2a $b3
    ret z                                         ; $4b48: $c8

    call nc, $61d4                                ; $4b49: $d4 $d4 $61
    ret                                           ; $4b4c: $c9


    call nc, $cad4                                ; $4b4d: $d4 $d4 $ca
    set 2, h                                      ; $4b50: $cb $d4
    call nc, Call_08d_6766                        ; $4b52: $d4 $66 $67
    ld l, b                                       ; $4b55: $68
    ld l, b                                       ; $4b56: $68
    ld [$0008], sp                                ; $4b57: $08 $08 $00
    nop                                           ; $4b5a: $00
    nop                                           ; $4b5b: $00
    ld [$0000], sp                                ; $4b5c: $08 $00 $00
    ld [$0008], sp                                ; $4b5f: $08 $08 $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    nop                                           ; $4b66: $00
    call nc, $c8d4                                ; $4b67: $d4 $d4 $c8
    call z, $d4d4                                 ; $4b6a: $cc $d4 $d4
    ret                                           ; $4b6d: $c9


    ld h, c                                       ; $4b6e: $61
    call nc, $cbd4                                ; $4b6f: $d4 $d4 $cb
    jp z, $d469                                   ; $4b72: $ca $69 $d4

    ld l, b                                       ; $4b75: $68
    xor [hl]                                      ; $4b76: $ae
    nop                                           ; $4b77: $00
    nop                                           ; $4b78: $00
    jr z, jr_08d_4b83                             ; $4b79: $28 $08

    nop                                           ; $4b7b: $00
    nop                                           ; $4b7c: $00
    jr z, @+$22                                   ; $4b7d: $28 $20

    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    jr z, jr_08d_4bab                             ; $4b81: $28 $28

jr_08d_4b83:
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    jr nz, jr_08d_4b8f                            ; $4b85: $20 $08

    xor a                                         ; $4b87: $af
    ld [hl], l                                    ; $4b88: $75
    halt                                          ; $4b89: $76
    ld [hl], a                                    ; $4b8a: $77
    or b                                          ; $4b8b: $b0
    ld a, b                                       ; $4b8c: $78
    ld a, c                                       ; $4b8d: $79
    ld a, d                                       ; $4b8e: $7a

jr_08d_4b8f:
    or c                                          ; $4b8f: $b1
    ld [bc], a                                    ; $4b90: $02
    inc bc                                        ; $4b91: $03
    inc b                                         ; $4b92: $04
    or d                                          ; $4b93: $b2
    ld b, $07                                     ; $4b94: $06 $07
    ld [$040a], sp                                ; $4b96: $08 $0a $04
    ld b, $01                                     ; $4b99: $06 $01
    ld a, [bc]                                    ; $4b9b: $0a
    inc b                                         ; $4b9c: $04
    ld bc, $0a01                                  ; $4b9d: $01 $01 $0a
    inc b                                         ; $4ba0: $04
    rlca                                          ; $4ba1: $07
    ld b, $2a                                     ; $4ba2: $06 $2a
    inc b                                         ; $4ba4: $04
    ld bc, $4906                                  ; $4ba5: $01 $06 $49
    ld c, d                                       ; $4ba8: $4a
    ld c, e                                       ; $4ba9: $4b
    ld c, h                                       ; $4baa: $4c

jr_08d_4bab:
    ld c, l                                       ; $4bab: $4d
    ld c, [hl]                                    ; $4bac: $4e
    ld c, a                                       ; $4bad: $4f
    ld d, b                                       ; $4bae: $50
    ld hl, sp-$07                                 ; $4baf: $f8 $f9
    ld a, [$fcfb]                                 ; $4bb1: $fa $fb $fc
    db $fd                                        ; $4bb4: $fd
    cp $ff                                        ; $4bb5: $fe $ff
    rlca                                          ; $4bb7: $07
    ld bc, $0101                                  ; $4bb8: $01 $01 $01
    ld bc, $0601                                  ; $4bbb: $01 $01 $06
    ld bc, $0101                                  ; $4bbe: $01 $01 $01
    rlca                                          ; $4bc1: $07
    ld bc, $0701                                  ; $4bc2: $01 $01 $07
    ld bc, $5106                                  ; $4bc5: $01 $06 $51
    ld [hl], l                                    ; $4bc8: $75
    halt                                          ; $4bc9: $76
    ld [hl], a                                    ; $4bca: $77
    ld d, h                                       ; $4bcb: $54
    ld a, b                                       ; $4bcc: $78
    ld a, c                                       ; $4bcd: $79
    ld a, d                                       ; $4bce: $7a
    ld bc, $0302                                  ; $4bcf: $01 $02 $03
    inc b                                         ; $4bd2: $04
    dec b                                         ; $4bd3: $05
    ld b, $07                                     ; $4bd4: $06 $07
    ld [$0107], sp                                ; $4bd6: $08 $07 $01
    ld bc, $0106                                  ; $4bd9: $01 $06 $01
    ld b, $01                                     ; $4bdc: $06 $01
    ld bc, $0601                                  ; $4bde: $01 $01 $06
    ld bc, $0706                                  ; $4be1: $01 $06 $07
    ld bc, $0701                                  ; $4be4: $01 $01 $07
    ld c, c                                       ; $4be7: $49
    ld c, d                                       ; $4be8: $4a
    ld c, e                                       ; $4be9: $4b
    xor a                                         ; $4bea: $af
    ld c, l                                       ; $4beb: $4d
    ld c, [hl]                                    ; $4bec: $4e
    ld c, a                                       ; $4bed: $4f
    or b                                          ; $4bee: $b0
    ld hl, sp-$07                                 ; $4bef: $f8 $f9
    ld a, [$fcb1]                                 ; $4bf1: $fa $b1 $fc
    db $fd                                        ; $4bf4: $fd
    cp $b2                                        ; $4bf5: $fe $b2
    rlca                                          ; $4bf7: $07
    ld bc, $2a01                                  ; $4bf8: $01 $01 $2a
    ld bc, $0601                                  ; $4bfb: $01 $01 $06
    ld a, [hl+]                                   ; $4bfe: $2a
    ld bc, $0101                                  ; $4bff: $01 $01 $01
    ld a, [hl+]                                   ; $4c02: $2a
    rlca                                          ; $4c03: $07
    ld bc, $0a07                                  ; $4c04: $01 $07 $0a
    ld a, e                                       ; $4c07: $7b
    ld a, [de]                                    ; $4c08: $1a
    dec de                                        ; $4c09: $1b
    inc e                                         ; $4c0a: $1c
    ld a, h                                       ; $4c0b: $7c
    ld e, $1f                                     ; $4c0c: $1e $1f
    jr nz, @-$4f                                  ; $4c0e: $20 $af

    ld [hl+], a                                   ; $4c10: $22
    inc hl                                        ; $4c11: $23
    inc h                                         ; $4c12: $24
    or b                                          ; $4c13: $b0
    ld h, $27                                     ; $4c14: $26 $27
    jr z, @+$24                                   ; $4c16: $28 $22

    inc b                                         ; $4c18: $04
    ld bc, $2206                                  ; $4c19: $01 $06 $22
    inc b                                         ; $4c1c: $04
    ld b, $01                                     ; $4c1d: $06 $01
    ld a, [bc]                                    ; $4c1f: $0a
    inc b                                         ; $4c20: $04
    ld b, $01                                     ; $4c21: $06 $01
    ld a, [bc]                                    ; $4c23: $0a
    inc b                                         ; $4c24: $04
    rlca                                          ; $4c25: $07
    ld bc, $0a09                                  ; $4c26: $01 $09 $0a
    dec bc                                        ; $4c29: $0b
    inc c                                         ; $4c2a: $0c
    dec c                                         ; $4c2b: $0d
    ld c, $0f                                     ; $4c2c: $0e $0f
    db $10                                        ; $4c2e: $10
    ld de, $1312                                  ; $4c2f: $11 $12 $13
    inc d                                         ; $4c32: $14
    dec d                                         ; $4c33: $15
    ld d, $17                                     ; $4c34: $16 $17
    jr jr_08d_4c3f                                ; $4c36: $18 $07

    ld bc, $0606                                  ; $4c38: $01 $06 $06
    ld bc, $0701                                  ; $4c3b: $01 $01 $07
    rlca                                          ; $4c3e: $07

jr_08d_4c3f:
    ld bc, $0701                                  ; $4c3f: $01 $01 $07
    ld bc, $0101                                  ; $4c42: $01 $01 $01
    ld b, $06                                     ; $4c45: $06 $06
    add hl, de                                    ; $4c47: $19
    ld a, [de]                                    ; $4c48: $1a
    dec de                                        ; $4c49: $1b
    inc e                                         ; $4c4a: $1c
    dec e                                         ; $4c4b: $1d
    ld e, $1f                                     ; $4c4c: $1e $1f
    jr nz, @+$23                                  ; $4c4e: $20 $21

    ld [hl+], a                                   ; $4c50: $22
    inc hl                                        ; $4c51: $23
    inc h                                         ; $4c52: $24
    dec h                                         ; $4c53: $25
    ld h, $27                                     ; $4c54: $26 $27
    jr z, @+$08                                   ; $4c56: $28 $06

    ld bc, $0107                                  ; $4c58: $01 $07 $01
    rlca                                          ; $4c5b: $07
    rlca                                          ; $4c5c: $07
    ld b, $07                                     ; $4c5d: $06 $07
    rlca                                          ; $4c5f: $07
    rlca                                          ; $4c60: $07
    ld b, $01                                     ; $4c61: $06 $01
    ld bc, $0107                                  ; $4c63: $01 $07 $01
    ld b, $09                                     ; $4c66: $06 $09
    ld a, [bc]                                    ; $4c68: $0a
    dec bc                                        ; $4c69: $0b
    ld a, e                                       ; $4c6a: $7b
    dec c                                         ; $4c6b: $0d
    ld c, $0f                                     ; $4c6c: $0e $0f
    ld a, h                                       ; $4c6e: $7c
    ld de, $1312                                  ; $4c6f: $11 $12 $13
    xor a                                         ; $4c72: $af
    dec d                                         ; $4c73: $15
    ld d, $17                                     ; $4c74: $16 $17
    or b                                          ; $4c76: $b0
    ld bc, $0107                                  ; $4c77: $01 $07 $01
    ld [bc], a                                    ; $4c7a: $02
    ld b, $01                                     ; $4c7b: $06 $01
    ld bc, $0102                                  ; $4c7d: $01 $02 $01
    ld bc, $2a01                                  ; $4c80: $01 $01 $2a
    ld bc, $0701                                  ; $4c83: $01 $01 $07
    ld a, [hl+]                                   ; $4c86: $2a
    or c                                          ; $4c87: $b1
    ld [hl], l                                    ; $4c88: $75
    halt                                          ; $4c89: $76
    ld [hl], a                                    ; $4c8a: $77
    or d                                          ; $4c8b: $b2
    ld a, b                                       ; $4c8c: $78
    ld a, c                                       ; $4c8d: $79
    ld a, d                                       ; $4c8e: $7a
    ld a, e                                       ; $4c8f: $7b
    ld [bc], a                                    ; $4c90: $02
    inc bc                                        ; $4c91: $03
    inc b                                         ; $4c92: $04
    ld a, h                                       ; $4c93: $7c
    ld b, $07                                     ; $4c94: $06 $07
    ld [$040a], sp                                ; $4c96: $08 $0a $04
    rlca                                          ; $4c99: $07
    rlca                                          ; $4c9a: $07
    ld a, [hl+]                                   ; $4c9b: $2a
    inc b                                         ; $4c9c: $04
    ld bc, $2201                                  ; $4c9d: $01 $01 $22
    inc b                                         ; $4ca0: $04
    ld bc, $2207                                  ; $4ca1: $01 $07 $22
    inc b                                         ; $4ca4: $04
    rlca                                          ; $4ca5: $07
    ld bc, $4a49                                  ; $4ca6: $01 $49 $4a
    ld c, e                                       ; $4ca9: $4b
    ld c, h                                       ; $4caa: $4c
    ld c, l                                       ; $4cab: $4d
    ld c, [hl]                                    ; $4cac: $4e
    ld c, a                                       ; $4cad: $4f
    ld d, b                                       ; $4cae: $50
    ld hl, sp-$07                                 ; $4caf: $f8 $f9
    ld a, [$fcfb]                                 ; $4cb1: $fa $fb $fc
    db $fd                                        ; $4cb4: $fd
    cp $ff                                        ; $4cb5: $fe $ff
    ld bc, $0107                                  ; $4cb7: $01 $07 $01
    ld bc, $0107                                  ; $4cba: $01 $07 $01
    ld bc, $0101                                  ; $4cbd: $01 $01 $01
    ld bc, $0107                                  ; $4cc0: $01 $07 $01
    ld bc, $0707                                  ; $4cc3: $01 $07 $07
    rlca                                          ; $4cc6: $07
    ld d, c                                       ; $4cc7: $51
    ld [hl], l                                    ; $4cc8: $75
    halt                                          ; $4cc9: $76
    ld [hl], a                                    ; $4cca: $77
    ld d, h                                       ; $4ccb: $54
    ld a, b                                       ; $4ccc: $78
    ld a, c                                       ; $4ccd: $79
    ld a, d                                       ; $4cce: $7a
    ld bc, $0302                                  ; $4ccf: $01 $02 $03
    inc b                                         ; $4cd2: $04
    dec b                                         ; $4cd3: $05
    ld b, $07                                     ; $4cd4: $06 $07
    ld [$0106], sp                                ; $4cd6: $08 $06 $01
    ld bc, $0607                                  ; $4cd9: $01 $07 $06
    ld b, $01                                     ; $4cdc: $06 $01
    ld bc, $0701                                  ; $4cde: $01 $01 $07
    ld bc, $0101                                  ; $4ce1: $01 $01 $01
    ld bc, $0601                                  ; $4ce4: $01 $01 $06
    ld c, c                                       ; $4ce7: $49
    ld c, d                                       ; $4ce8: $4a
    ld c, e                                       ; $4ce9: $4b
    or c                                          ; $4cea: $b1
    ld c, l                                       ; $4ceb: $4d
    ld c, [hl]                                    ; $4cec: $4e
    ld c, a                                       ; $4ced: $4f
    or d                                          ; $4cee: $b2
    ld hl, sp-$07                                 ; $4cef: $f8 $f9
    ld a, [$fc7b]                                 ; $4cf1: $fa $7b $fc
    db $fd                                        ; $4cf4: $fd
    cp $7c                                        ; $4cf5: $fe $7c
    ld bc, $0107                                  ; $4cf7: $01 $07 $01
    ld a, [hl+]                                   ; $4cfa: $2a
    ld bc, $0601                                  ; $4cfb: $01 $01 $06
    ld a, [bc]                                    ; $4cfe: $0a
    ld bc, $0701                                  ; $4cff: $01 $01 $07
    ld [bc], a                                    ; $4d02: $02
    ld bc, $0107                                  ; $4d03: $01 $07 $01
    ld [bc], a                                    ; $4d06: $02
    xor a                                         ; $4d07: $af
    ld a, [de]                                    ; $4d08: $1a
    dec de                                        ; $4d09: $1b
    inc e                                         ; $4d0a: $1c
    or b                                          ; $4d0b: $b0
    ld e, $1f                                     ; $4d0c: $1e $1f
    jr nz, @-$4d                                  ; $4d0e: $20 $b1

    ld [hl+], a                                   ; $4d10: $22
    inc hl                                        ; $4d11: $23
    inc h                                         ; $4d12: $24
    or d                                          ; $4d13: $b2
    ld h, $27                                     ; $4d14: $26 $27
    jr z, @+$0c                                   ; $4d16: $28 $0a

    inc b                                         ; $4d18: $04
    rlca                                          ; $4d19: $07
    rlca                                          ; $4d1a: $07
    ld a, [bc]                                    ; $4d1b: $0a
    inc b                                         ; $4d1c: $04
    rlca                                          ; $4d1d: $07
    rlca                                          ; $4d1e: $07
    ld a, [bc]                                    ; $4d1f: $0a
    inc b                                         ; $4d20: $04
    ld bc, $2a01                                  ; $4d21: $01 $01 $2a
    inc b                                         ; $4d24: $04
    ld b, $07                                     ; $4d25: $06 $07
    add hl, bc                                    ; $4d27: $09
    ld a, [bc]                                    ; $4d28: $0a
    dec bc                                        ; $4d29: $0b
    inc c                                         ; $4d2a: $0c
    dec c                                         ; $4d2b: $0d
    ld c, $0f                                     ; $4d2c: $0e $0f
    db $10                                        ; $4d2e: $10
    ld de, $1312                                  ; $4d2f: $11 $12 $13
    inc d                                         ; $4d32: $14
    dec d                                         ; $4d33: $15
    ld d, $17                                     ; $4d34: $16 $17
    jr @+$09                                      ; $4d36: $18 $07

    rlca                                          ; $4d38: $07
    ld bc, $0101                                  ; $4d39: $01 $01 $01
    rlca                                          ; $4d3c: $07
    rlca                                          ; $4d3d: $07
    ld bc, $0107                                  ; $4d3e: $01 $07 $01
    ld b, $01                                     ; $4d41: $06 $01
    rlca                                          ; $4d43: $07
    ld bc, $0601                                  ; $4d44: $01 $01 $06
    add hl, de                                    ; $4d47: $19
    ld a, [de]                                    ; $4d48: $1a
    dec de                                        ; $4d49: $1b
    inc e                                         ; $4d4a: $1c
    dec e                                         ; $4d4b: $1d
    ld e, $1f                                     ; $4d4c: $1e $1f
    jr nz, @+$23                                  ; $4d4e: $20 $21

    ld [hl+], a                                   ; $4d50: $22
    inc hl                                        ; $4d51: $23
    inc h                                         ; $4d52: $24
    dec h                                         ; $4d53: $25
    ld h, $27                                     ; $4d54: $26 $27
    jr z, @+$03                                   ; $4d56: $28 $01

    ld bc, $0707                                  ; $4d58: $01 $07 $07
    ld bc, $0701                                  ; $4d5b: $01 $01 $07
    ld bc, $0701                                  ; $4d5e: $01 $01 $07
    ld bc, $0701                                  ; $4d61: $01 $01 $07
    ld bc, $0106                                  ; $4d64: $01 $06 $01
    add hl, bc                                    ; $4d67: $09
    ld a, [bc]                                    ; $4d68: $0a
    dec bc                                        ; $4d69: $0b
    xor a                                         ; $4d6a: $af
    dec c                                         ; $4d6b: $0d
    ld c, $0f                                     ; $4d6c: $0e $0f
    or b                                          ; $4d6e: $b0
    ld de, $1312                                  ; $4d6f: $11 $12 $13
    or c                                          ; $4d72: $b1
    dec d                                         ; $4d73: $15
    ld d, $17                                     ; $4d74: $16 $17
    xor a                                         ; $4d76: $af
    ld bc, $0101                                  ; $4d77: $01 $01 $01
    ld a, [hl+]                                   ; $4d7a: $2a
    rlca                                          ; $4d7b: $07
    ld b, $01                                     ; $4d7c: $06 $01
    ld a, [hl+]                                   ; $4d7e: $2a
    rlca                                          ; $4d7f: $07
    rlca                                          ; $4d80: $07
    ld bc, $012a                                  ; $4d81: $01 $2a $01
    rlca                                          ; $4d84: $07
    ld bc, $af2a                                  ; $4d85: $01 $2a $af
    ld [hl], l                                    ; $4d88: $75
    halt                                          ; $4d89: $76
    ld [hl], a                                    ; $4d8a: $77
    or b                                          ; $4d8b: $b0
    ld a, b                                       ; $4d8c: $78
    ld a, c                                       ; $4d8d: $79
    ld a, d                                       ; $4d8e: $7a
    or c                                          ; $4d8f: $b1
    ld [bc], a                                    ; $4d90: $02
    inc bc                                        ; $4d91: $03
    inc b                                         ; $4d92: $04
    or d                                          ; $4d93: $b2
    ld b, $07                                     ; $4d94: $06 $07
    ld [$040a], sp                                ; $4d96: $08 $0a $04
    ld bc, $0a04                                  ; $4d99: $01 $04 $0a
    inc b                                         ; $4d9c: $04
    rlca                                          ; $4d9d: $07
    inc b                                         ; $4d9e: $04
    ld a, [bc]                                    ; $4d9f: $0a
    inc b                                         ; $4da0: $04

jr_08d_4da1:
    ld b, $04                                     ; $4da1: $06 $04
    ld a, [hl+]                                   ; $4da3: $2a
    inc b                                         ; $4da4: $04
    ld b, $04                                     ; $4da5: $06 $04
    ld a, e                                       ; $4da7: $7b
    ld a, [de]                                    ; $4da8: $1a
    dec de                                        ; $4da9: $1b
    inc e                                         ; $4daa: $1c
    ld a, h                                       ; $4dab: $7c
    ld e, $1f                                     ; $4dac: $1e $1f
    jr nz, @-$4f                                  ; $4dae: $20 $af

    ld [hl+], a                                   ; $4db0: $22
    inc hl                                        ; $4db1: $23
    inc h                                         ; $4db2: $24
    or b                                          ; $4db3: $b0
    ld h, $27                                     ; $4db4: $26 $27
    jr z, @+$24                                   ; $4db6: $28 $22

    inc b                                         ; $4db8: $04
    ld bc, $2204                                  ; $4db9: $01 $04 $22
    inc b                                         ; $4dbc: $04
    ld b, $04                                     ; $4dbd: $06 $04
    ld a, [bc]                                    ; $4dbf: $0a
    inc b                                         ; $4dc0: $04
    ld b, $04                                     ; $4dc1: $06 $04
    ld a, [bc]                                    ; $4dc3: $0a
    inc b                                         ; $4dc4: $04
    rlca                                          ; $4dc5: $07
    inc b                                         ; $4dc6: $04
    or c                                          ; $4dc7: $b1
    ld [hl], l                                    ; $4dc8: $75
    halt                                          ; $4dc9: $76
    ld [hl], a                                    ; $4dca: $77
    or d                                          ; $4dcb: $b2
    ld a, b                                       ; $4dcc: $78
    ld a, c                                       ; $4dcd: $79
    ld a, d                                       ; $4dce: $7a
    ld a, e                                       ; $4dcf: $7b
    ld [bc], a                                    ; $4dd0: $02
    inc bc                                        ; $4dd1: $03
    inc b                                         ; $4dd2: $04
    ld a, h                                       ; $4dd3: $7c
    ld b, $07                                     ; $4dd4: $06 $07
    ld [$040a], sp                                ; $4dd6: $08 $0a $04
    ld b, $04                                     ; $4dd9: $06 $04
    ld a, [hl+]                                   ; $4ddb: $2a
    inc b                                         ; $4ddc: $04
    rlca                                          ; $4ddd: $07
    inc b                                         ; $4dde: $04
    ld [hl+], a                                   ; $4ddf: $22
    inc b                                         ; $4de0: $04
    rlca                                          ; $4de1: $07
    inc b                                         ; $4de2: $04
    ld [hl+], a                                   ; $4de3: $22
    inc b                                         ; $4de4: $04
    ld bc, $af04                                  ; $4de5: $01 $04 $af
    ld a, [de]                                    ; $4de8: $1a
    dec de                                        ; $4de9: $1b
    inc e                                         ; $4dea: $1c
    or b                                          ; $4deb: $b0
    ld e, $1f                                     ; $4dec: $1e $1f
    jr nz, jr_08d_4da1                            ; $4dee: $20 $b1

    ld [hl+], a                                   ; $4df0: $22
    inc hl                                        ; $4df1: $23
    call $26b2                                    ; $4df2: $cd $b2 $26
    daa                                           ; $4df5: $27
    adc $0a                                       ; $4df6: $ce $0a
    inc b                                         ; $4df8: $04
    ld b, $04                                     ; $4df9: $06 $04
    ld a, [bc]                                    ; $4dfb: $0a
    inc b                                         ; $4dfc: $04
    rlca                                          ; $4dfd: $07
    inc b                                         ; $4dfe: $04
    ld a, [bc]                                    ; $4dff: $0a
    inc b                                         ; $4e00: $04
    rlca                                          ; $4e01: $07
    ld c, $2a                                     ; $4e02: $0e $2a
    inc b                                         ; $4e04: $04
    ld b, $0e                                     ; $4e05: $06 $0e
    jp nc, $d1d1                                  ; $4e07: $d2 $d1 $d1

    pop de                                        ; $4e0a: $d1
    rst $08                                       ; $4e0b: $cf
    ret nc                                        ; $4e0c: $d0

    pop de                                        ; $4e0d: $d1
    pop de                                        ; $4e0e: $d1
    pop de                                        ; $4e0f: $d1
    jp nc, $d1d1                                  ; $4e10: $d2 $d1 $d1

    jp nc, $d1d2                                  ; $4e13: $d2 $d2 $d1

    pop de                                        ; $4e16: $d1
    add d                                         ; $4e17: $82
    add d                                         ; $4e18: $82
    ld [bc], a                                    ; $4e19: $02
    ld [bc], a                                    ; $4e1a: $02
    adc d                                         ; $4e1b: $8a
    adc d                                         ; $4e1c: $8a
    add d                                         ; $4e1d: $82
    ld [bc], a                                    ; $4e1e: $02
    ld c, $82                                     ; $4e1f: $0e $82
    add d                                         ; $4e21: $82
    ld [bc], a                                    ; $4e22: $02
    ld c, $82                                     ; $4e23: $0e $82
    add d                                         ; $4e25: $82
    ld [bc], a                                    ; $4e26: $02
    pop de                                        ; $4e27: $d1
    add $d3                                       ; $4e28: $c6 $d3
    jp nc, $c6d1                                  ; $4e2a: $d2 $d1 $c6

    call nc, $d1d2                                ; $4e2d: $d4 $d2 $d1
    add $d5                                       ; $4e30: $c6 $d5
    sub $d7                                       ; $4e32: $d6 $d7
    add $d8                                       ; $4e34: $c6 $d8
    reti                                          ; $4e36: $d9


    add d                                         ; $4e37: $82
    adc d                                         ; $4e38: $8a
    ld a, [bc]                                    ; $4e39: $0a
    ld b, d                                       ; $4e3a: $42
    add d                                         ; $4e3b: $82
    adc d                                         ; $4e3c: $8a
    ld a, [bc]                                    ; $4e3d: $0a
    ld b, d                                       ; $4e3e: $42
    add d                                         ; $4e3f: $82
    adc d                                         ; $4e40: $8a
    ld a, [bc]                                    ; $4e41: $0a
    ld a, [bc]                                    ; $4e42: $0a
    adc d                                         ; $4e43: $8a
    adc d                                         ; $4e44: $8a
    inc c                                         ; $4e45: $0c
    inc c                                         ; $4e46: $0c
    ld c, c                                       ; $4e47: $49
    ld c, d                                       ; $4e48: $4a
    ld c, e                                       ; $4e49: $4b
    ld c, h                                       ; $4e4a: $4c
    ld c, l                                       ; $4e4b: $4d
    ld c, [hl]                                    ; $4e4c: $4e
    ld c, a                                       ; $4e4d: $4f
    ld d, b                                       ; $4e4e: $50
    ld hl, sp-$07                                 ; $4e4f: $f8 $f9
    ld a, [$fcfb]                                 ; $4e51: $fa $fb $fc
    db $fd                                        ; $4e54: $fd
    cp $ff                                        ; $4e55: $fe $ff
    inc b                                         ; $4e57: $04
    ld bc, $0101                                  ; $4e58: $01 $01 $01
    inc b                                         ; $4e5b: $04
    ld bc, $0607                                  ; $4e5c: $01 $07 $06
    inc b                                         ; $4e5f: $04
    rlca                                          ; $4e60: $07
    ld bc, $0407                                  ; $4e61: $01 $07 $04
    rlca                                          ; $4e64: $07
    ld bc, $6e01                                  ; $4e65: $01 $01 $6e
    ld l, a                                       ; $4e68: $6f
    sub [hl]                                      ; $4e69: $96
    ld [hl], b                                    ; $4e6a: $70
    ld d, h                                       ; $4e6b: $54
    ld a, b                                       ; $4e6c: $78
    ld a, c                                       ; $4e6d: $79
    ld a, d                                       ; $4e6e: $7a
    ld bc, $0302                                  ; $4e6f: $01 $02 $03
    inc b                                         ; $4e72: $04
    dec b                                         ; $4e73: $05
    ld b, $07                                     ; $4e74: $06 $07
    ld [$0000], sp                                ; $4e76: $08 $00 $00
    ld [$0400], sp                                ; $4e79: $08 $00 $04
    inc b                                         ; $4e7c: $04
    inc b                                         ; $4e7d: $04
    inc b                                         ; $4e7e: $04
    ld bc, $0606                                  ; $4e7f: $01 $06 $06
    ld b, $07                                     ; $4e82: $06 $07
    ld bc, $0606                                  ; $4e84: $01 $06 $06
    ld [hl], c                                    ; $4e87: $71
    ld [hl], b                                    ; $4e88: $70
    sub [hl]                                      ; $4e89: $96
    sub a                                         ; $4e8a: $97
    ld c, l                                       ; $4e8b: $4d
    ld c, [hl]                                    ; $4e8c: $4e
    ld c, a                                       ; $4e8d: $4f
    ld d, b                                       ; $4e8e: $50
    ld hl, sp-$07                                 ; $4e8f: $f8 $f9
    ld a, [$fcfb]                                 ; $4e91: $fa $fb $fc
    db $fd                                        ; $4e94: $fd
    cp $ff                                        ; $4e95: $fe $ff
    nop                                           ; $4e97: $00
    nop                                           ; $4e98: $00
    ld [$0408], sp                                ; $4e99: $08 $08 $04
    inc b                                         ; $4e9c: $04
    inc b                                         ; $4e9d: $04
    inc b                                         ; $4e9e: $04
    rlca                                          ; $4e9f: $07
    ld b, $01                                     ; $4ea0: $06 $01
    rlca                                          ; $4ea2: $07
    rlca                                          ; $4ea3: $07
    ld bc, $0701                                  ; $4ea4: $01 $01 $07
    rst $10                                       ; $4ea7: $d7
    add $da                                       ; $4ea8: $c6 $da
    db $db                                        ; $4eaa: $db
    rst $10                                       ; $4eab: $d7
    add $dc                                       ; $4eac: $c6 $dc
    db $dd                                        ; $4eae: $dd
    rst $10                                       ; $4eaf: $d7
    add $de                                       ; $4eb0: $c6 $de
    rst $18                                       ; $4eb2: $df
    rst $10                                       ; $4eb3: $d7
    add $e0                                       ; $4eb4: $c6 $e0
    pop hl                                        ; $4eb6: $e1
    adc d                                         ; $4eb7: $8a
    adc d                                         ; $4eb8: $8a
    inc c                                         ; $4eb9: $0c
    ld c, $8a                                     ; $4eba: $0e $8a
    adc d                                         ; $4ebc: $8a
    inc c                                         ; $4ebd: $0c
    add hl, bc                                    ; $4ebe: $09
    adc d                                         ; $4ebf: $8a
    adc d                                         ; $4ec0: $8a
    inc c                                         ; $4ec1: $0c
    rrca                                          ; $4ec2: $0f
    adc d                                         ; $4ec3: $8a
    adc d                                         ; $4ec4: $8a
    inc c                                         ; $4ec5: $0c
    rrca                                          ; $4ec6: $0f
    add hl, bc                                    ; $4ec7: $09
    ld a, [bc]                                    ; $4ec8: $0a
    dec bc                                        ; $4ec9: $0b
    inc c                                         ; $4eca: $0c
    dec c                                         ; $4ecb: $0d
    ld c, $0f                                     ; $4ecc: $0e $0f
    db $10                                        ; $4ece: $10
    ld de, $1312                                  ; $4ecf: $11 $12 $13
    inc d                                         ; $4ed2: $14
    dec d                                         ; $4ed3: $15
    ld d, $17                                     ; $4ed4: $16 $17
    jr jr_08d_4ed9                                ; $4ed6: $18 $01

    rlca                                          ; $4ed8: $07

jr_08d_4ed9:
    rlca                                          ; $4ed9: $07
    ld bc, $0106                                  ; $4eda: $01 $06 $01
    rlca                                          ; $4edd: $07
    rlca                                          ; $4ede: $07
    ld bc, $0607                                  ; $4edf: $01 $07 $06
    ld bc, $0707                                  ; $4ee2: $01 $07 $07
    ld bc, $1906                                  ; $4ee5: $01 $06 $19
    ld a, [de]                                    ; $4ee8: $1a
    dec de                                        ; $4ee9: $1b
    inc e                                         ; $4eea: $1c
    dec e                                         ; $4eeb: $1d
    ld e, $1f                                     ; $4eec: $1e $1f
    jr nz, @+$23                                  ; $4eee: $20 $21

    ld [hl+], a                                   ; $4ef0: $22
    inc hl                                        ; $4ef1: $23
    inc h                                         ; $4ef2: $24
    dec h                                         ; $4ef3: $25
    ld h, $27                                     ; $4ef4: $26 $27
    jr z, jr_08d_4ef9                             ; $4ef6: $28 $01

    rlca                                          ; $4ef8: $07

jr_08d_4ef9:
    rlca                                          ; $4ef9: $07
    rlca                                          ; $4efa: $07
    ld bc, $0601                                  ; $4efb: $01 $01 $06
    ld b, $01                                     ; $4efe: $06 $01
    ld bc, $0606                                  ; $4f00: $01 $06 $06
    ld bc, $0701                                  ; $4f03: $01 $01 $07
    rlca                                          ; $4f06: $07
    add hl, bc                                    ; $4f07: $09
    ld a, [bc]                                    ; $4f08: $0a
    dec bc                                        ; $4f09: $0b
    inc c                                         ; $4f0a: $0c
    dec c                                         ; $4f0b: $0d
    ld c, $0f                                     ; $4f0c: $0e $0f
    db $10                                        ; $4f0e: $10
    ld de, $1312                                  ; $4f0f: $11 $12 $13
    inc d                                         ; $4f12: $14
    dec d                                         ; $4f13: $15
    ld d, $17                                     ; $4f14: $16 $17
    jr jr_08d_4f1f                                ; $4f16: $18 $07

    rlca                                          ; $4f18: $07
    ld bc, $0701                                  ; $4f19: $01 $01 $07
    ld bc, $0106                                  ; $4f1c: $01 $06 $01

jr_08d_4f1f:
    ld bc, $0601                                  ; $4f1f: $01 $01 $06
    ld b, $07                                     ; $4f22: $06 $07
    rlca                                          ; $4f24: $07
    rlca                                          ; $4f25: $07
    ld b, $d7                                     ; $4f26: $06 $d7
    add $e2                                       ; $4f28: $c6 $e2
    db $e3                                        ; $4f2a: $e3
    rst $10                                       ; $4f2b: $d7
    jp nc, $e5e4                                  ; $4f2c: $d2 $e4 $e5

    rst $10                                       ; $4f2f: $d7
    rst $08                                       ; $4f30: $cf
    call nz, $d1d0                                ; $4f31: $c4 $d0 $d1
    pop de                                        ; $4f34: $d1
    pop de                                        ; $4f35: $d1
    jp nc, $8a8a                                  ; $4f36: $d2 $8a $8a

    inc c                                         ; $4f39: $0c
    add hl, bc                                    ; $4f3a: $09
    adc d                                         ; $4f3b: $8a
    add d                                         ; $4f3c: $82
    inc c                                         ; $4f3d: $0c
    add hl, bc                                    ; $4f3e: $09
    adc d                                         ; $4f3f: $8a
    adc d                                         ; $4f40: $8a
    adc d                                         ; $4f41: $8a
    adc d                                         ; $4f42: $8a
    ld [bc], a                                    ; $4f43: $02
    ld [bc], a                                    ; $4f44: $02
    add d                                         ; $4f45: $82
    add d                                         ; $4f46: $82
    ld c, c                                       ; $4f47: $49
    ld c, d                                       ; $4f48: $4a
    ld c, e                                       ; $4f49: $4b
    ld c, h                                       ; $4f4a: $4c
    ld c, l                                       ; $4f4b: $4d
    ld c, [hl]                                    ; $4f4c: $4e
    ld c, a                                       ; $4f4d: $4f
    ld d, b                                       ; $4f4e: $50
    ld hl, sp-$07                                 ; $4f4f: $f8 $f9
    ld a, [$fcfb]                                 ; $4f51: $fa $fb $fc
    db $fd                                        ; $4f54: $fd
    cp $ff                                        ; $4f55: $fe $ff
    rlca                                          ; $4f57: $07
    rlca                                          ; $4f58: $07
    ld bc, $0607                                  ; $4f59: $01 $07 $06
    ld bc, $0707                                  ; $4f5c: $01 $07 $07
    ld b, $07                                     ; $4f5f: $06 $07
    rlca                                          ; $4f61: $07
    ld b, $01                                     ; $4f62: $06 $01
    rlca                                          ; $4f64: $07
    ld bc, $5101                                  ; $4f65: $01 $01 $51
    ld [hl], l                                    ; $4f68: $75
    halt                                          ; $4f69: $76
    ld [hl], a                                    ; $4f6a: $77
    ld d, h                                       ; $4f6b: $54
    ld a, b                                       ; $4f6c: $78
    ld a, c                                       ; $4f6d: $79
    ld a, d                                       ; $4f6e: $7a
    ld bc, $0302                                  ; $4f6f: $01 $02 $03
    inc b                                         ; $4f72: $04
    dec b                                         ; $4f73: $05
    ld b, $07                                     ; $4f74: $06 $07
    ld [$0107], sp                                ; $4f76: $08 $07 $01
    ld bc, $0101                                  ; $4f79: $01 $01 $01
    ld bc, $0701                                  ; $4f7c: $01 $01 $07
    ld bc, $0107                                  ; $4f7f: $01 $07 $01
    ld b, $07                                     ; $4f82: $06 $07
    ld bc, $0701                                  ; $4f84: $01 $01 $07
    ld c, c                                       ; $4f87: $49
    ld c, d                                       ; $4f88: $4a
    ld c, e                                       ; $4f89: $4b
    ld c, h                                       ; $4f8a: $4c
    ld c, l                                       ; $4f8b: $4d
    ld c, [hl]                                    ; $4f8c: $4e
    ld c, a                                       ; $4f8d: $4f
    ld d, b                                       ; $4f8e: $50
    ld hl, sp-$07                                 ; $4f8f: $f8 $f9
    ld a, [$fcfb]                                 ; $4f91: $fa $fb $fc
    db $fd                                        ; $4f94: $fd
    cp $ff                                        ; $4f95: $fe $ff
    rlca                                          ; $4f97: $07
    rlca                                          ; $4f98: $07
    rlca                                          ; $4f99: $07
    ld b, $07                                     ; $4f9a: $06 $07
    rlca                                          ; $4f9c: $07
    ld bc, $0106                                  ; $4f9d: $01 $06 $01
    ld bc, $0607                                  ; $4fa0: $01 $07 $06
    rlca                                          ; $4fa3: $07
    rlca                                          ; $4fa4: $07
    ld bc, $0901                                  ; $4fa5: $01 $01 $09
    ld a, [bc]                                    ; $4fa8: $0a
    dec bc                                        ; $4fa9: $0b
    inc c                                         ; $4faa: $0c
    dec c                                         ; $4fab: $0d
    ld c, $0f                                     ; $4fac: $0e $0f
    ld a, e                                       ; $4fae: $7b
    ld de, $1312                                  ; $4faf: $11 $12 $13
    ld a, h                                       ; $4fb2: $7c
    dec d                                         ; $4fb3: $15
    ld d, $17                                     ; $4fb4: $16 $17
    xor a                                         ; $4fb6: $af
    inc b                                         ; $4fb7: $04
    ld bc, $0107                                  ; $4fb8: $01 $07 $01
    inc b                                         ; $4fbb: $04
    ld b, $07                                     ; $4fbc: $06 $07
    ld [bc], a                                    ; $4fbe: $02
    inc b                                         ; $4fbf: $04
    ld bc, $0207                                  ; $4fc0: $01 $07 $02
    inc b                                         ; $4fc3: $04
    ld b, $01                                     ; $4fc4: $06 $01
    ld a, [hl+]                                   ; $4fc6: $2a
    ld e, l                                       ; $4fc7: $5d
    ld e, [hl]                                    ; $4fc8: $5e
    ld e, a                                       ; $4fc9: $5f
    ld a, l                                       ; $4fca: $7d
    ld h, c                                       ; $4fcb: $61
    ld h, d                                       ; $4fcc: $62
    ld h, e                                       ; $4fcd: $63
    call nc, $6564                                ; $4fce: $d4 $64 $65
    call nc, $b3d4                                ; $4fd1: $d4 $d4 $b3
    or h                                          ; $4fd4: $b4
    or l                                          ; $4fd5: $b5
    call nc, RST_00                               ; $4fd6: $d4 $00 $00
    nop                                           ; $4fd9: $00
    nop                                           ; $4fda: $00
    nop                                           ; $4fdb: $00
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    nop                                           ; $4fde: $00
    nop                                           ; $4fdf: $00
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    ld [$0808], sp                                ; $4fe3: $08 $08 $08
    nop                                           ; $4fe6: $00
    ld a, l                                       ; $4fe7: $7d
    ld e, a                                       ; $4fe8: $5f
    ld e, [hl]                                    ; $4fe9: $5e
    ld e, l                                       ; $4fea: $5d
    call nc, Call_08d_6263                        ; $4feb: $d4 $63 $62
    ld h, c                                       ; $4fee: $61
    call nc, Call_08d_65d4                        ; $4fef: $d4 $d4 $65
    ld h, h                                       ; $4ff2: $64
    call nc, $b4b5                                ; $4ff3: $d4 $b5 $b4
    or e                                          ; $4ff6: $b3
    nop                                           ; $4ff7: $00
    jr nz, jr_08d_501a                            ; $4ff8: $20 $20

    jr nz, jr_08d_4ffc                            ; $4ffa: $20 $00

jr_08d_4ffc:
    jr nz, @+$22                                  ; $4ffc: $20 $20

    jr nz, jr_08d_5000                            ; $4ffe: $20 $00

jr_08d_5000:
    nop                                           ; $5000: $00
    jr nz, jr_08d_5023                            ; $5001: $20 $20

    nop                                           ; $5003: $00
    jr z, jr_08d_502e                             ; $5004: $28 $28

    jr z, jr_08d_5059                             ; $5006: $28 $51

    ld [hl], l                                    ; $5008: $75
    halt                                          ; $5009: $76
    ld [hl], a                                    ; $500a: $77
    ld d, h                                       ; $500b: $54
    ld a, b                                       ; $500c: $78
    ld a, c                                       ; $500d: $79
    ld a, d                                       ; $500e: $7a
    ld bc, $0302                                  ; $500f: $01 $02 $03
    inc b                                         ; $5012: $04
    dec b                                         ; $5013: $05
    ld b, $07                                     ; $5014: $06 $07
    ld [$0404], sp                                ; $5016: $08 $04 $04
    rlca                                          ; $5019: $07

jr_08d_501a:
    rlca                                          ; $501a: $07
    inc b                                         ; $501b: $04
    inc b                                         ; $501c: $04
    ld bc, $0701                                  ; $501d: $01 $01 $07
    ld bc, $0107                                  ; $5020: $01 $07 $01

jr_08d_5023:
    ld bc, $0107                                  ; $5023: $01 $07 $01
    ld b, $49                                     ; $5026: $06 $49
    ld c, d                                       ; $5028: $4a
    ld c, e                                       ; $5029: $4b
    ld c, h                                       ; $502a: $4c
    ld c, l                                       ; $502b: $4d
    ld c, [hl]                                    ; $502c: $4e
    ld c, a                                       ; $502d: $4f

jr_08d_502e:
    ld d, b                                       ; $502e: $50
    ld hl, sp-$07                                 ; $502f: $f8 $f9
    ld a, [$fcfb]                                 ; $5031: $fa $fb $fc
    db $fd                                        ; $5034: $fd
    cp $ff                                        ; $5035: $fe $ff
    ld bc, $0701                                  ; $5037: $01 $01 $07
    ld bc, $0701                                  ; $503a: $01 $01 $07
    ld bc, $0106                                  ; $503d: $01 $06 $01
    rlca                                          ; $5040: $07
    ld b, $01                                     ; $5041: $06 $01
    ld b, $06                                     ; $5043: $06 $06
    ld bc, $5101                                  ; $5045: $01 $01 $51
    ld [hl], l                                    ; $5048: $75
    halt                                          ; $5049: $76
    ld [hl], a                                    ; $504a: $77
    ld d, h                                       ; $504b: $54
    ld a, b                                       ; $504c: $78
    ld a, c                                       ; $504d: $79
    ld a, d                                       ; $504e: $7a
    ld bc, $0302                                  ; $504f: $01 $02 $03
    inc b                                         ; $5052: $04
    dec b                                         ; $5053: $05
    ld b, $07                                     ; $5054: $06 $07
    ld [$0101], sp                                ; $5056: $08 $01 $01

jr_08d_5059:
    ld bc, $0107                                  ; $5059: $01 $07 $01
    ld bc, $0101                                  ; $505c: $01 $01 $01
    ld b, $01                                     ; $505f: $06 $01
    rlca                                          ; $5061: $07
    ld bc, $0107                                  ; $5062: $01 $07 $01
    rlca                                          ; $5065: $07
    ld bc, $4a49                                  ; $5066: $01 $49 $4a
    ld c, e                                       ; $5069: $4b
    ld c, h                                       ; $506a: $4c
    ld c, l                                       ; $506b: $4d
    ld c, [hl]                                    ; $506c: $4e
    ld c, a                                       ; $506d: $4f
    ld d, b                                       ; $506e: $50
    ld hl, sp-$07                                 ; $506f: $f8 $f9
    ld a, [$fcfb]                                 ; $5071: $fa $fb $fc
    db $fd                                        ; $5074: $fd
    cp $ff                                        ; $5075: $fe $ff
    ld bc, $0701                                  ; $5077: $01 $01 $07
    ld bc, $0701                                  ; $507a: $01 $01 $07
    ld bc, $0706                                  ; $507d: $01 $06 $07
    ld bc, $0101                                  ; $5080: $01 $01 $01
    ld b, $06                                     ; $5083: $06 $06
    ld bc, $1901                                  ; $5085: $01 $01 $19
    ld a, [de]                                    ; $5088: $1a
    dec de                                        ; $5089: $1b
    inc e                                         ; $508a: $1c
    dec e                                         ; $508b: $1d
    ld e, $1f                                     ; $508c: $1e $1f
    jr nz, @+$23                                  ; $508e: $20 $21

    ld [hl+], a                                   ; $5090: $22
    inc hl                                        ; $5091: $23
    inc h                                         ; $5092: $24
    dec h                                         ; $5093: $25
    ld h, $27                                     ; $5094: $26 $27
    jr z, @+$09                                   ; $5096: $28 $07

    rlca                                          ; $5098: $07
    ld bc, $0701                                  ; $5099: $01 $01 $07
    ld b, $06                                     ; $509c: $06 $06
    ld b, $01                                     ; $509e: $06 $01
    ld bc, $0606                                  ; $50a0: $01 $06 $06
    ld bc, $0101                                  ; $50a3: $01 $01 $01
    rlca                                          ; $50a6: $07
    add hl, bc                                    ; $50a7: $09
    ld a, [bc]                                    ; $50a8: $0a
    dec bc                                        ; $50a9: $0b
    inc c                                         ; $50aa: $0c
    dec c                                         ; $50ab: $0d
    ld c, $0f                                     ; $50ac: $0e $0f
    db $10                                        ; $50ae: $10
    ld de, $1312                                  ; $50af: $11 $12 $13
    inc d                                         ; $50b2: $14
    dec d                                         ; $50b3: $15
    ld d, $17                                     ; $50b4: $16 $17
    jr @+$03                                      ; $50b6: $18 $01

    ld b, $01                                     ; $50b8: $06 $01
    ld bc, $0101                                  ; $50ba: $01 $01 $01
    ld b, $01                                     ; $50bd: $06 $01
    rlca                                          ; $50bf: $07
    ld bc, $0606                                  ; $50c0: $01 $06 $06
    ld bc, $0701                                  ; $50c3: $01 $01 $07
    ld bc, $1a19                                  ; $50c6: $01 $19 $1a
    dec de                                        ; $50c9: $1b
    inc e                                         ; $50ca: $1c

Jump_08d_50cb:
    dec e                                         ; $50cb: $1d
    ld e, $1f                                     ; $50cc: $1e $1f
    jr nz, @+$23                                  ; $50ce: $20 $21

    ld [hl+], a                                   ; $50d0: $22
    inc hl                                        ; $50d1: $23
    inc h                                         ; $50d2: $24
    dec h                                         ; $50d3: $25
    ld h, $27                                     ; $50d4: $26 $27
    jr z, @+$08                                   ; $50d6: $28 $06

    ld b, $01                                     ; $50d8: $06 $01
    ld bc, $0101                                  ; $50da: $01 $01 $01
    ld b, $06                                     ; $50dd: $06 $06
    ld bc, $0106                                  ; $50df: $01 $06 $01
    rlca                                          ; $50e2: $07
    ld b, $06                                     ; $50e3: $06 $06
    rlca                                          ; $50e5: $07
    rlca                                          ; $50e6: $07
    add hl, bc                                    ; $50e7: $09
    ld a, [bc]                                    ; $50e8: $0a
    dec bc                                        ; $50e9: $0b
    inc c                                         ; $50ea: $0c
    dec c                                         ; $50eb: $0d
    ld c, $0f                                     ; $50ec: $0e $0f
    db $10                                        ; $50ee: $10
    ld de, $1312                                  ; $50ef: $11 $12 $13
    inc d                                         ; $50f2: $14
    dec d                                         ; $50f3: $15
    ld d, $17                                     ; $50f4: $16 $17
    jr jr_08d_50f9                                ; $50f6: $18 $01

    rlca                                          ; $50f8: $07

jr_08d_50f9:
    ld bc, $0701                                  ; $50f9: $01 $01 $07
    ld bc, $0101                                  ; $50fc: $01 $01 $01
    rlca                                          ; $50ff: $07
    ld bc, $0607                                  ; $5100: $01 $07 $06
    ld bc, $0601                                  ; $5103: $01 $01 $06
    ld b, $51                                     ; $5106: $06 $51
    ld [hl], l                                    ; $5108: $75
    halt                                          ; $5109: $76
    ld [hl], a                                    ; $510a: $77
    ld d, h                                       ; $510b: $54
    ld a, b                                       ; $510c: $78
    ld a, c                                       ; $510d: $79
    ld a, d                                       ; $510e: $7a
    ld bc, $0302                                  ; $510f: $01 $02 $03
    inc b                                         ; $5112: $04
    dec b                                         ; $5113: $05
    ld b, $07                                     ; $5114: $06 $07
    ld [$0707], sp                                ; $5116: $08 $07 $07
    rlca                                          ; $5119: $07
    ld bc, $0101                                  ; $511a: $01 $01 $01
    ld bc, $0607                                  ; $511d: $01 $07 $06
    ld bc, $0707                                  ; $5120: $01 $07 $07
    ld bc, $0701                                  ; $5123: $01 $01 $07
    ld bc, $4a49                                  ; $5126: $01 $49 $4a
    ld c, e                                       ; $5129: $4b
    ld c, h                                       ; $512a: $4c
    ld c, l                                       ; $512b: $4d
    ld c, [hl]                                    ; $512c: $4e
    ld c, a                                       ; $512d: $4f
    ld d, b                                       ; $512e: $50
    ld hl, sp-$07                                 ; $512f: $f8 $f9
    ld a, [$fcfb]                                 ; $5131: $fa $fb $fc
    db $fd                                        ; $5134: $fd
    cp $ff                                        ; $5135: $fe $ff
    ld bc, $0707                                  ; $5137: $01 $07 $07
    ld bc, $0701                                  ; $513a: $01 $01 $07
    rlca                                          ; $513d: $07
    ld b, $07                                     ; $513e: $06 $07
    rlca                                          ; $5140: $07
    rlca                                          ; $5141: $07
    ld bc, $0707                                  ; $5142: $01 $07 $07
    ld bc, $5101                                  ; $5145: $01 $01 $51
    ld [hl], l                                    ; $5148: $75
    halt                                          ; $5149: $76
    ld [hl], a                                    ; $514a: $77
    ld d, h                                       ; $514b: $54
    ld a, b                                       ; $514c: $78
    ld a, c                                       ; $514d: $79
    ld a, d                                       ; $514e: $7a
    ld bc, $0302                                  ; $514f: $01 $02 $03
    inc b                                         ; $5152: $04
    dec b                                         ; $5153: $05
    ld b, $07                                     ; $5154: $06 $07
    ld [$0607], sp                                ; $5156: $08 $07 $06
    ld b, $07                                     ; $5159: $06 $07
    ld bc, $0101                                  ; $515b: $01 $01 $01
    ld b, $01                                     ; $515e: $06 $01
    ld bc, $0601                                  ; $5160: $01 $01 $06
    ld bc, $0701                                  ; $5163: $01 $01 $07
    rlca                                          ; $5166: $07
    ld c, c                                       ; $5167: $49
    ld c, d                                       ; $5168: $4a
    ld c, e                                       ; $5169: $4b
    ld c, h                                       ; $516a: $4c
    ld c, l                                       ; $516b: $4d
    ld c, [hl]                                    ; $516c: $4e
    ld c, a                                       ; $516d: $4f
    ld d, b                                       ; $516e: $50
    ld hl, sp-$07                                 ; $516f: $f8 $f9
    ld a, [$fcfb]                                 ; $5171: $fa $fb $fc
    db $fd                                        ; $5174: $fd
    cp $ff                                        ; $5175: $fe $ff
    ld bc, $0101                                  ; $5177: $01 $01 $01
    ld b, $01                                     ; $517a: $06 $01
    ld bc, $0606                                  ; $517c: $01 $06 $06
    ld b, $06                                     ; $517f: $06 $06
    rlca                                          ; $5181: $07
    ld bc, $0601                                  ; $5182: $01 $01 $06
    ld bc, $1901                                  ; $5185: $01 $01 $19
    ld a, [de]                                    ; $5188: $1a
    dec de                                        ; $5189: $1b
    inc e                                         ; $518a: $1c
    ld a, e                                       ; $518b: $7b
    ld e, $1f                                     ; $518c: $1e $1f
    jr nz, jr_08d_520c                            ; $518e: $20 $7c

    ld [hl+], a                                   ; $5190: $22
    inc hl                                        ; $5191: $23
    inc h                                         ; $5192: $24
    xor a                                         ; $5193: $af
    ld h, $27                                     ; $5194: $26 $27
    jr z, @+$03                                   ; $5196: $28 $01

    ld bc, $0601                                  ; $5198: $01 $01 $06
    ld [hl+], a                                   ; $519b: $22
    inc b                                         ; $519c: $04
    ld bc, $2206                                  ; $519d: $01 $06 $22
    inc b                                         ; $51a0: $04
    rlca                                          ; $51a1: $07
    rlca                                          ; $51a2: $07
    ld a, [bc]                                    ; $51a3: $0a
    inc b                                         ; $51a4: $04
    rlca                                          ; $51a5: $07
    ld b, $09                                     ; $51a6: $06 $09
    ld a, [bc]                                    ; $51a8: $0a
    dec bc                                        ; $51a9: $0b
    inc c                                         ; $51aa: $0c
    dec c                                         ; $51ab: $0d
    ld c, $0f                                     ; $51ac: $0e $0f
    db $10                                        ; $51ae: $10
    ld de, $1312                                  ; $51af: $11 $12 $13
    inc d                                         ; $51b2: $14
    dec d                                         ; $51b3: $15
    ld d, $17                                     ; $51b4: $16 $17
    jr @+$09                                      ; $51b6: $18 $07

    ld bc, $0107                                  ; $51b8: $01 $07 $01
    ld bc, $0101                                  ; $51bb: $01 $01 $01
    ld bc, $0601                                  ; $51be: $01 $01 $06
    ld b, $01                                     ; $51c1: $06 $01
    rlca                                          ; $51c3: $07
    ld bc, $0607                                  ; $51c4: $01 $07 $06
    add hl, de                                    ; $51c7: $19
    ld a, [de]                                    ; $51c8: $1a
    dec de                                        ; $51c9: $1b
    inc e                                         ; $51ca: $1c
    dec e                                         ; $51cb: $1d
    ld e, $1f                                     ; $51cc: $1e $1f
    jr nz, @+$23                                  ; $51ce: $20 $21

    ld [hl+], a                                   ; $51d0: $22
    inc hl                                        ; $51d1: $23
    inc h                                         ; $51d2: $24
    dec h                                         ; $51d3: $25
    ld h, $27                                     ; $51d4: $26 $27
    jr z, @+$09                                   ; $51d6: $28 $07

    rlca                                          ; $51d8: $07
    ld bc, $0701                                  ; $51d9: $01 $01 $07
    ld b, $06                                     ; $51dc: $06 $06
    ld b, $06                                     ; $51de: $06 $06
    ld bc, $0707                                  ; $51e0: $01 $07 $07
    ld b, $01                                     ; $51e3: $06 $01
    rlca                                          ; $51e5: $07
    rlca                                          ; $51e6: $07
    add hl, bc                                    ; $51e7: $09
    ld a, [bc]                                    ; $51e8: $0a
    dec bc                                        ; $51e9: $0b
    inc c                                         ; $51ea: $0c
    dec c                                         ; $51eb: $0d
    ld c, $0f                                     ; $51ec: $0e $0f
    ld a, e                                       ; $51ee: $7b
    ld de, $1312                                  ; $51ef: $11 $12 $13
    ld a, h                                       ; $51f2: $7c
    dec d                                         ; $51f3: $15
    ld d, $17                                     ; $51f4: $16 $17
    xor a                                         ; $51f6: $af
    ld bc, $0107                                  ; $51f7: $01 $07 $01
    ld bc, $0107                                  ; $51fa: $01 $07 $01
    ld bc, $0102                                  ; $51fd: $01 $02 $01
    rlca                                          ; $5200: $07
    ld bc, $0102                                  ; $5201: $01 $02 $01
    ld b, $01                                     ; $5204: $06 $01
    ld a, [hl+]                                   ; $5206: $2a
    ld l, [hl]                                    ; $5207: $6e
    ld l, a                                       ; $5208: $6f
    sub [hl]                                      ; $5209: $96
    ld [hl], b                                    ; $520a: $70
    ld d, h                                       ; $520b: $54

jr_08d_520c:
    ld a, b                                       ; $520c: $78
    ld a, c                                       ; $520d: $79
    ld a, d                                       ; $520e: $7a
    ld bc, $0302                                  ; $520f: $01 $02 $03
    inc b                                         ; $5212: $04
    dec b                                         ; $5213: $05
    ld b, $07                                     ; $5214: $06 $07
    ld [$0000], sp                                ; $5216: $08 $00 $00
    ld [$0400], sp                                ; $5219: $08 $00 $04
    inc b                                         ; $521c: $04
    inc b                                         ; $521d: $04
    inc b                                         ; $521e: $04
    ld bc, $0606                                  ; $521f: $01 $06 $06
    ld bc, $0106                                  ; $5222: $01 $06 $01
    ld bc, $7107                                  ; $5225: $01 $07 $71
    ld [hl], b                                    ; $5228: $70
    sub [hl]                                      ; $5229: $96
    sub a                                         ; $522a: $97
    ld c, l                                       ; $522b: $4d
    ld c, [hl]                                    ; $522c: $4e
    ld c, a                                       ; $522d: $4f
    ld d, b                                       ; $522e: $50
    ld hl, sp-$07                                 ; $522f: $f8 $f9
    ld a, [$fcfb]                                 ; $5231: $fa $fb $fc
    db $fd                                        ; $5234: $fd
    cp $ff                                        ; $5235: $fe $ff
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    ld [$0408], sp                                ; $5239: $08 $08 $04
    inc b                                         ; $523c: $04
    inc b                                         ; $523d: $04
    inc b                                         ; $523e: $04
    ld b, $01                                     ; $523f: $06 $01
    ld bc, $0601                                  ; $5241: $01 $01 $06
    ld bc, $0101                                  ; $5244: $01 $01 $01
    ld d, c                                       ; $5247: $51
    ld [hl], l                                    ; $5248: $75
    halt                                          ; $5249: $76
    and $54                                       ; $524a: $e6 $54
    ld a, b                                       ; $524c: $78
    ld a, c                                       ; $524d: $79
    rst $20                                       ; $524e: $e7
    ld bc, $0302                                  ; $524f: $01 $02 $03
    add sp, $05                                   ; $5252: $e8 $05
    ld b, $07                                     ; $5254: $06 $07
    jp hl                                         ; $5256: $e9


    inc b                                         ; $5257: $04
    inc b                                         ; $5258: $04
    inc b                                         ; $5259: $04
    ld c, $04                                     ; $525a: $0e $04
    inc b                                         ; $525c: $04
    inc b                                         ; $525d: $04
    ld c, $01                                     ; $525e: $0e $01
    ld bc, $0e04                                  ; $5260: $01 $04 $0e
    rlca                                          ; $5263: $07
    rlca                                          ; $5264: $07
    inc b                                         ; $5265: $04
    ld c, $ea                                     ; $5266: $0e $ea
    jp nc, $d1d1                                  ; $5268: $d2 $d1 $d1

    ld [$d1d2], a                                 ; $526b: $ea $d2 $d1
    pop de                                        ; $526e: $d1
    db $eb                                        ; $526f: $eb
    jp nc, $d1d1                                  ; $5270: $d2 $d1 $d1

    db $eb                                        ; $5273: $eb
    jp nc, $d1d1                                  ; $5274: $d2 $d1 $d1

    ld c, $82                                     ; $5277: $0e $82
    add d                                         ; $5279: $82
    ld [bc], a                                    ; $527a: $02
    ld c, $82                                     ; $527b: $0e $82
    add d                                         ; $527d: $82
    ld [bc], a                                    ; $527e: $02
    ld c, $82                                     ; $527f: $0e $82
    add d                                         ; $5281: $82
    ld [bc], a                                    ; $5282: $02
    ld c, $82                                     ; $5283: $0e $82
    add d                                         ; $5285: $82
    ld [bc], a                                    ; $5286: $02
    add hl, de                                    ; $5287: $19
    ld a, [de]                                    ; $5288: $1a
    dec de                                        ; $5289: $1b
    inc e                                         ; $528a: $1c
    dec e                                         ; $528b: $1d
    ld e, $1f                                     ; $528c: $1e $1f
    jr nz, @+$23                                  ; $528e: $20 $21

    ld [hl+], a                                   ; $5290: $22
    inc hl                                        ; $5291: $23
    inc h                                         ; $5292: $24
    dec h                                         ; $5293: $25
    ld h, $27                                     ; $5294: $26 $27
    jr z, @+$03                                   ; $5296: $28 $01

    ld bc, $0107                                  ; $5298: $01 $07 $01
    rlca                                          ; $529b: $07
    ld b, $01                                     ; $529c: $06 $01
    ld b, $01                                     ; $529e: $06 $01
    ld b, $06                                     ; $52a0: $06 $06
    ld b, $01                                     ; $52a2: $06 $01
    ld bc, $0606                                  ; $52a4: $01 $06 $06
    add hl, bc                                    ; $52a7: $09
    ld a, [bc]                                    ; $52a8: $0a
    dec bc                                        ; $52a9: $0b
    inc c                                         ; $52aa: $0c
    dec c                                         ; $52ab: $0d
    ld c, $0f                                     ; $52ac: $0e $0f
    db $10                                        ; $52ae: $10
    ld de, $1312                                  ; $52af: $11 $12 $13
    inc d                                         ; $52b2: $14
    dec d                                         ; $52b3: $15
    ld d, $17                                     ; $52b4: $16 $17
    jr @+$08                                      ; $52b6: $18 $06

    ld b, $01                                     ; $52b8: $06 $01
    rlca                                          ; $52ba: $07
    ld b, $01                                     ; $52bb: $06 $01
    ld bc, $0601                                  ; $52bd: $01 $01 $06
    rlca                                          ; $52c0: $07
    ld b, $01                                     ; $52c1: $06 $01
    ld b, $01                                     ; $52c3: $06 $01
    ld bc, $1907                                  ; $52c5: $01 $07 $19
    ld a, [de]                                    ; $52c8: $1a
    dec de                                        ; $52c9: $1b
    db $ec                                        ; $52ca: $ec
    dec e                                         ; $52cb: $1d
    ld e, $1f                                     ; $52cc: $1e $1f
    db $ed                                        ; $52ce: $ed
    ld hl, $2322                                  ; $52cf: $21 $22 $23
    xor $25                                       ; $52d2: $ee $25
    ld h, $27                                     ; $52d4: $26 $27
    rst $28                                       ; $52d6: $ef
    ld b, $06                                     ; $52d7: $06 $06
    inc b                                         ; $52d9: $04
    ld c, $01                                     ; $52da: $0e $01
    ld b, $04                                     ; $52dc: $06 $04
    ld c, $01                                     ; $52de: $0e $01
    rlca                                          ; $52e0: $07
    inc b                                         ; $52e1: $04
    ld c, $01                                     ; $52e2: $0e $01
    ld bc, $0e04                                  ; $52e4: $01 $04 $0e
    ldh a, [$d2]                                  ; $52e7: $f0 $d2
    pop de                                        ; $52e9: $d1
    pop de                                        ; $52ea: $d1
    ldh a, [$d2]                                  ; $52eb: $f0 $d2
    pop de                                        ; $52ed: $d1
    pop de                                        ; $52ee: $d1
    pop af                                        ; $52ef: $f1
    jp nc, $d1d1                                  ; $52f0: $d2 $d1 $d1

    ld a, [c]                                     ; $52f3: $f2
    jp nc, $d1d1                                  ; $52f4: $d2 $d1 $d1

    ld c, $82                                     ; $52f7: $0e $82
    add d                                         ; $52f9: $82
    ld [bc], a                                    ; $52fa: $02
    ld c, $82                                     ; $52fb: $0e $82
    add d                                         ; $52fd: $82
    ld [bc], a                                    ; $52fe: $02
    ld c, $82                                     ; $52ff: $0e $82
    add d                                         ; $5301: $82
    ld [bc], a                                    ; $5302: $02
    ld c, $82                                     ; $5303: $0e $82
    add d                                         ; $5305: $82
    ld [bc], a                                    ; $5306: $02
    ld d, c                                       ; $5307: $51
    ld [hl], l                                    ; $5308: $75
    halt                                          ; $5309: $76
    ld [hl], a                                    ; $530a: $77
    ld d, h                                       ; $530b: $54
    ld a, b                                       ; $530c: $78
    ld a, c                                       ; $530d: $79
    ld a, d                                       ; $530e: $7a
    ld bc, $0302                                  ; $530f: $01 $02 $03
    inc b                                         ; $5312: $04
    dec b                                         ; $5313: $05
    ld b, $07                                     ; $5314: $06 $07
    ld [$0606], sp                                ; $5316: $08 $06 $06
    ld b, $06                                     ; $5319: $06 $06
    ld bc, $0701                                  ; $531b: $01 $01 $07
    ld bc, $0101                                  ; $531e: $01 $01 $01
    rlca                                          ; $5321: $07
    ld b, $01                                     ; $5322: $06 $01
    rlca                                          ; $5324: $07
    ld bc, $4906                                  ; $5325: $01 $06 $49
    ld c, d                                       ; $5328: $4a
    ld c, e                                       ; $5329: $4b
    ld c, h                                       ; $532a: $4c
    ld c, l                                       ; $532b: $4d
    ld c, [hl]                                    ; $532c: $4e
    ld c, a                                       ; $532d: $4f
    ld d, b                                       ; $532e: $50
    ld hl, sp-$07                                 ; $532f: $f8 $f9
    ld a, [$fcfb]                                 ; $5331: $fa $fb $fc
    db $fd                                        ; $5334: $fd
    cp $ff                                        ; $5335: $fe $ff
    ld bc, $0107                                  ; $5337: $01 $07 $01
    ld bc, $0107                                  ; $533a: $01 $07 $01
    ld b, $07                                     ; $533d: $06 $07
    ld bc, $0707                                  ; $533f: $01 $07 $07
    ld bc, $0106                                  ; $5342: $01 $06 $01
    ld bc, $5101                                  ; $5345: $01 $01 $51
    ld [hl], l                                    ; $5348: $75
    halt                                          ; $5349: $76
    di                                            ; $534a: $f3
    ld d, h                                       ; $534b: $54
    ld a, b                                       ; $534c: $78
    ld a, c                                       ; $534d: $79
    db $f4                                        ; $534e: $f4
    ld bc, $0302                                  ; $534f: $01 $02 $03
    push af                                       ; $5352: $f5
    dec b                                         ; $5353: $05
    ld b, $07                                     ; $5354: $06 $07
    or $07                                        ; $5356: $f6 $07
    ld bc, $0e04                                  ; $5358: $01 $04 $0e
    rlca                                          ; $535b: $07
    ld bc, $0e04                                  ; $535c: $01 $04 $0e
    ld bc, $0401                                  ; $535f: $01 $01 $04
    ld c, $01                                     ; $5362: $0e $01
    rlca                                          ; $5364: $07
    inc b                                         ; $5365: $04
    ld c, $f7                                     ; $5366: $0e $f7
    jp nc, $d1d1                                  ; $5368: $d2 $d1 $d1

    ld hl, sp-$2e                                 ; $536b: $f8 $d2
    pop de                                        ; $536d: $d1
    pop de                                        ; $536e: $d1
    jp $d1c5                                      ; $536f: $c3 $c5 $d1


    pop de                                        ; $5372: $d1
    jp nc, $d1d1                                  ; $5373: $d2 $d1 $d1

    pop de                                        ; $5376: $d1
    ld c, $82                                     ; $5377: $0e $82
    add d                                         ; $5379: $82
    ld [bc], a                                    ; $537a: $02
    ld c, $82                                     ; $537b: $0e $82
    add d                                         ; $537d: $82
    ld [bc], a                                    ; $537e: $02
    adc d                                         ; $537f: $8a
    adc d                                         ; $5380: $8a
    ld [bc], a                                    ; $5381: $02
    ld [bc], a                                    ; $5382: $02
    add d                                         ; $5383: $82
    add d                                         ; $5384: $82
    ld [bc], a                                    ; $5385: $02
    ld [bc], a                                    ; $5386: $02
    add hl, de                                    ; $5387: $19
    ld a, [de]                                    ; $5388: $1a
    dec de                                        ; $5389: $1b
    ld sp, hl                                     ; $538a: $f9
    ld a, e                                       ; $538b: $7b
    ld e, $1f                                     ; $538c: $1e $1f
    ld a, [$227c]                                 ; $538e: $fa $7c $22
    inc hl                                        ; $5391: $23
    ei                                            ; $5392: $fb
    xor a                                         ; $5393: $af
    ld h, $27                                     ; $5394: $26 $27
    db $fc                                        ; $5396: $fc
    rlca                                          ; $5397: $07
    ld bc, $0e04                                  ; $5398: $01 $04 $0e
    ld [hl+], a                                   ; $539b: $22
    inc b                                         ; $539c: $04
    inc b                                         ; $539d: $04
    ld c, $22                                     ; $539e: $0e $22
    inc b                                         ; $53a0: $04
    inc b                                         ; $53a1: $04
    ld c, $0a                                     ; $53a2: $0e $0a
    inc b                                         ; $53a4: $04
    inc b                                         ; $53a5: $04
    ld c, $49                                     ; $53a6: $0e $49
    ld c, d                                       ; $53a8: $4a
    ld c, e                                       ; $53a9: $4b
    or b                                          ; $53aa: $b0
    ld c, l                                       ; $53ab: $4d
    ld c, [hl]                                    ; $53ac: $4e
    ld c, a                                       ; $53ad: $4f
    or c                                          ; $53ae: $b1
    ld hl, sp-$07                                 ; $53af: $f8 $f9
    ld a, [$fcb2]                                 ; $53b1: $fa $b2 $fc
    db $fd                                        ; $53b4: $fd
    cp $7b                                        ; $53b5: $fe $7b
    inc b                                         ; $53b7: $04
    rlca                                          ; $53b8: $07
    rlca                                          ; $53b9: $07
    ld a, [hl+]                                   ; $53ba: $2a
    inc b                                         ; $53bb: $04
    rlca                                          ; $53bc: $07
    rlca                                          ; $53bd: $07
    ld a, [hl+]                                   ; $53be: $2a
    inc b                                         ; $53bf: $04
    ld bc, $0a07                                  ; $53c0: $01 $07 $0a
    inc b                                         ; $53c3: $04
    rlca                                          ; $53c4: $07
    ld bc, $6102                                  ; $53c5: $01 $02 $61
    or [hl]                                       ; $53c8: $b6
    or a                                          ; $53c9: $b7
    call nc, $b9b8                                ; $53ca: $d4 $b8 $b9
    call nc, $b3d4                                ; $53cd: $d4 $d4 $b3
    adc l                                         ; $53d0: $8d
    cp d                                          ; $53d1: $ba
    call nc, Call_08d_6261                        ; $53d2: $d4 $61 $62
    ld h, e                                       ; $53d5: $63
    call nc, $0800                                ; $53d6: $d4 $00 $08
    ld [$0800], sp                                ; $53d9: $08 $00 $08
    ld [$0000], sp                                ; $53dc: $08 $00 $00
    ld [$0848], sp                                ; $53df: $08 $48 $08
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    nop                                           ; $53e4: $00
    nop                                           ; $53e5: $00
    nop                                           ; $53e6: $00
    call nc, $b6b7                                ; $53e7: $d4 $b7 $b6
    ld h, c                                       ; $53ea: $61
    call nc, $b9d4                                ; $53eb: $d4 $d4 $b9
    cp b                                          ; $53ee: $b8
    call nc, $bbba                                ; $53ef: $d4 $ba $bb
    cp h                                          ; $53f2: $bc
    call nc, Call_08d_6263                        ; $53f3: $d4 $63 $62
    ld h, c                                       ; $53f6: $61
    nop                                           ; $53f7: $00
    jr z, @+$2a                                   ; $53f8: $28 $28

    jr nz, jr_08d_53fc                            ; $53fa: $20 $00

jr_08d_53fc:
    nop                                           ; $53fc: $00
    jr z, jr_08d_5427                             ; $53fd: $28 $28

    nop                                           ; $53ff: $00
    jr z, jr_08d_540a                             ; $5400: $28 $08

    ld [$2000], sp                                ; $5402: $08 $00 $20
    jr nz, jr_08d_5427                            ; $5405: $20 $20

    add hl, bc                                    ; $5407: $09
    ld a, [bc]                                    ; $5408: $0a
    dec bc                                        ; $5409: $0b

jr_08d_540a:
    ld a, h                                       ; $540a: $7c
    dec c                                         ; $540b: $0d
    ld c, $0f                                     ; $540c: $0e $0f
    xor a                                         ; $540e: $af
    ld de, $1312                                  ; $540f: $11 $12 $13
    or b                                          ; $5412: $b0
    dec d                                         ; $5413: $15
    ld d, $17                                     ; $5414: $16 $17
    or c                                          ; $5416: $b1
    inc b                                         ; $5417: $04
    rlca                                          ; $5418: $07
    ld b, $02                                     ; $5419: $06 $02
    inc b                                         ; $541b: $04
    rlca                                          ; $541c: $07
    rlca                                          ; $541d: $07
    ld a, [hl+]                                   ; $541e: $2a
    inc b                                         ; $541f: $04
    rlca                                          ; $5420: $07
    ld b, $2a                                     ; $5421: $06 $2a
    inc b                                         ; $5423: $04
    ld b, $01                                     ; $5424: $06 $01
    ld a, [hl+]                                   ; $5426: $2a

jr_08d_5427:
    ld h, h                                       ; $5427: $64
    ld h, l                                       ; $5428: $65
    call nc, $bdd4                                ; $5429: $d4 $d4 $bd
    call nc, $d4d4                                ; $542c: $d4 $d4 $d4
    ld h, c                                       ; $542f: $61
    cp [hl]                                       ; $5430: $be
    call nc, $bfd4                                ; $5431: $d4 $d4 $bf
    ret nz                                        ; $5434: $c0

    call nc, Call_000_00d4                        ; $5435: $d4 $d4 $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543a: $00
    ld [$0000], sp                                ; $543b: $08 $00 $00
    nop                                           ; $543e: $00
    nop                                           ; $543f: $00
    ld [$0000], sp                                ; $5440: $08 $00 $00
    jr z, @+$0a                                   ; $5443: $28 $08

    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    call nc, Call_08d_65d4                        ; $5447: $d4 $d4 $65
    ld h, h                                       ; $544a: $64
    call nc, $d4d4                                ; $544b: $d4 $d4 $d4
    or e                                          ; $544e: $b3
    call nc, $bed4                                ; $544f: $d4 $d4 $be
    ld h, c                                       ; $5452: $61
    call nc, $c0d4                                ; $5453: $d4 $d4 $c0
    cp a                                          ; $5456: $bf
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    jr nz, jr_08d_547b                            ; $5459: $20 $20

    nop                                           ; $545b: $00
    nop                                           ; $545c: $00
    nop                                           ; $545d: $00
    jr z, jr_08d_5460                             ; $545e: $28 $00

jr_08d_5460:
    nop                                           ; $5460: $00
    jr z, @+$22                                   ; $5461: $28 $20

    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    jr z, jr_08d_546f                             ; $5465: $28 $08

    ld c, c                                       ; $5467: $49
    ld c, d                                       ; $5468: $4a
    ld c, e                                       ; $5469: $4b
    or d                                          ; $546a: $b2
    ld c, l                                       ; $546b: $4d
    ld c, [hl]                                    ; $546c: $4e
    ld c, a                                       ; $546d: $4f
    ld a, e                                       ; $546e: $7b

jr_08d_546f:
    ld hl, sp-$07                                 ; $546f: $f8 $f9
    ld a, [$fc7c]                                 ; $5471: $fa $7c $fc
    db $fd                                        ; $5474: $fd
    cp $af                                        ; $5475: $fe $af
    inc b                                         ; $5477: $04
    ld bc, $0a07                                  ; $5478: $01 $07 $0a

jr_08d_547b:
    inc b                                         ; $547b: $04
    rlca                                          ; $547c: $07
    ld bc, $0402                                  ; $547d: $01 $02 $04
    rlca                                          ; $5480: $07
    ld bc, $0402                                  ; $5481: $01 $02 $04
    ld bc, $2a07                                  ; $5484: $01 $07 $2a
    pop bc                                        ; $5487: $c1
    jp nz, $d4ba                                  ; $5488: $c2 $ba $d4

    ld h, c                                       ; $548b: $61
    ld h, d                                       ; $548c: $62
    ld h, e                                       ; $548d: $63
    call nc, $6564                                ; $548e: $d4 $64 $65
    call nc, $b3d4                                ; $5491: $d4 $d4 $b3
    ret z                                         ; $5494: $c8

    call nc, $08d4                                ; $5495: $d4 $d4 $08
    ld [$0008], sp                                ; $5498: $08 $08 $00
    nop                                           ; $549b: $00
    nop                                           ; $549c: $00
    nop                                           ; $549d: $00
    nop                                           ; $549e: $00
    nop                                           ; $549f: $00
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    nop                                           ; $54a2: $00
    ld [$0008], sp                                ; $54a3: $08 $08 $00
    nop                                           ; $54a6: $00
    call nc, $c2ba                                ; $54a7: $d4 $ba $c2
    pop bc                                        ; $54aa: $c1
    call nc, Call_08d_6263                        ; $54ab: $d4 $63 $62
    ld h, c                                       ; $54ae: $61
    call nc, Call_08d_65d4                        ; $54af: $d4 $d4 $65
    ld h, h                                       ; $54b2: $64
    call nc, $c8d4                                ; $54b3: $d4 $d4 $c8
    call z, Call_000_2800                         ; $54b6: $cc $00 $28
    jr z, jr_08d_54e3                             ; $54b9: $28 $28

    nop                                           ; $54bb: $00
    jr nz, @+$22                                  ; $54bc: $20 $20

    jr nz, jr_08d_54c0                            ; $54be: $20 $00

jr_08d_54c0:
    nop                                           ; $54c0: $00
    jr nz, jr_08d_54e3                            ; $54c1: $20 $20

    nop                                           ; $54c3: $00
    nop                                           ; $54c4: $00
    jr z, jr_08d_54cf                             ; $54c5: $28 $08

    add hl, bc                                    ; $54c7: $09
    ld a, [bc]                                    ; $54c8: $0a
    dec bc                                        ; $54c9: $0b
    or b                                          ; $54ca: $b0
    dec c                                         ; $54cb: $0d
    ld c, $0f                                     ; $54cc: $0e $0f
    or c                                          ; $54ce: $b1

jr_08d_54cf:
    ld de, $1312                                  ; $54cf: $11 $12 $13
    xor a                                         ; $54d2: $af
    dec d                                         ; $54d3: $15
    ld d, $17                                     ; $54d4: $16 $17
    jr jr_08d_54dc                                ; $54d6: $18 $04

    ld b, $01                                     ; $54d8: $06 $01
    ld a, [hl+]                                   ; $54da: $2a
    inc b                                         ; $54db: $04

jr_08d_54dc:
    rlca                                          ; $54dc: $07
    ld bc, $042a                                  ; $54dd: $01 $2a $04
    ld bc, $2a06                                  ; $54e0: $01 $06 $2a

jr_08d_54e3:
    inc b                                         ; $54e3: $04
    rlca                                          ; $54e4: $07
    rlca                                          ; $54e5: $07
    ld bc, $c961                                  ; $54e6: $01 $61 $c9
    call nc, $cad4                                ; $54e9: $d4 $d4 $ca
    set 2, h                                      ; $54ec: $cb $d4
    call nc, Call_08d_6766                        ; $54ee: $d4 $66 $67
    ld l, b                                       ; $54f1: $68
    ld l, b                                       ; $54f2: $68
    ld l, [hl]                                    ; $54f3: $6e
    ld l, a                                       ; $54f4: $6f
    sub [hl]                                      ; $54f5: $96
    ld [hl], b                                    ; $54f6: $70
    nop                                           ; $54f7: $00
    ld [$0000], sp                                ; $54f8: $08 $00 $00
    ld [$0008], sp                                ; $54fb: $08 $08 $00
    nop                                           ; $54fe: $00
    nop                                           ; $54ff: $00
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    ld [$d400], sp                                ; $5505: $08 $00 $d4
    call nc, $61c9                                ; $5508: $d4 $c9 $61
    call nc, $cbd4                                ; $550b: $d4 $d4 $cb
    jp z, $d469                                   ; $550e: $ca $69 $d4

    ld l, b                                       ; $5511: $68
    xor [hl]                                      ; $5512: $ae
    ld [hl], c                                    ; $5513: $71
    ld [hl], b                                    ; $5514: $70
    sub [hl]                                      ; $5515: $96
    sub a                                         ; $5516: $97
    nop                                           ; $5517: $00
    nop                                           ; $5518: $00
    jr z, @+$22                                   ; $5519: $28 $20

    nop                                           ; $551b: $00
    nop                                           ; $551c: $00
    jr z, @+$2a                                   ; $551d: $28 $28

    nop                                           ; $551f: $00
    nop                                           ; $5520: $00
    jr nz, jr_08d_552b                            ; $5521: $20 $08

    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    ld [$b008], sp                                ; $5525: $08 $08 $b0
    ld [hl], l                                    ; $5528: $75
    halt                                          ; $5529: $76
    ld [hl], a                                    ; $552a: $77

jr_08d_552b:
    or c                                          ; $552b: $b1
    ld a, b                                       ; $552c: $78
    ld a, c                                       ; $552d: $79
    ld a, d                                       ; $552e: $7a
    or d                                          ; $552f: $b2
    ld [bc], a                                    ; $5530: $02
    inc bc                                        ; $5531: $03
    inc b                                         ; $5532: $04
    ld a, e                                       ; $5533: $7b
    ld b, $07                                     ; $5534: $06 $07
    ld [$040a], sp                                ; $5536: $08 $0a $04
    ld bc, $0a06                                  ; $5539: $01 $06 $0a
    inc b                                         ; $553c: $04
    rlca                                          ; $553d: $07
    ld bc, $042a                                  ; $553e: $01 $2a $04
    rlca                                          ; $5541: $07
    ld b, $22                                     ; $5542: $06 $22
    inc b                                         ; $5544: $04
    ld bc, $4906                                  ; $5545: $01 $06 $49
    ld c, d                                       ; $5548: $4a
    ld c, e                                       ; $5549: $4b
    ld c, h                                       ; $554a: $4c
    ld c, l                                       ; $554b: $4d
    ld c, [hl]                                    ; $554c: $4e
    ld c, a                                       ; $554d: $4f
    ld d, b                                       ; $554e: $50
    ld hl, sp-$07                                 ; $554f: $f8 $f9
    ld a, [$fcfb]                                 ; $5551: $fa $fb $fc
    db $fd                                        ; $5554: $fd
    cp $ff                                        ; $5555: $fe $ff
    ld bc, $0101                                  ; $5557: $01 $01 $01
    rlca                                          ; $555a: $07
    ld bc, $0107                                  ; $555b: $01 $07 $01
    rlca                                          ; $555e: $07
    ld bc, $0701                                  ; $555f: $01 $01 $07
    ld bc, $0707                                  ; $5562: $01 $07 $07
    rlca                                          ; $5565: $07
    rlca                                          ; $5566: $07
    ld d, c                                       ; $5567: $51
    ld [hl], l                                    ; $5568: $75
    halt                                          ; $5569: $76
    ld [hl], a                                    ; $556a: $77
    ld d, h                                       ; $556b: $54
    ld a, b                                       ; $556c: $78
    ld a, c                                       ; $556d: $79
    ld a, d                                       ; $556e: $7a
    ld bc, $0302                                  ; $556f: $01 $02 $03
    inc b                                         ; $5572: $04
    dec b                                         ; $5573: $05
    ld b, $07                                     ; $5574: $06 $07
    ld [$0106], sp                                ; $5576: $08 $06 $01
    ld bc, $0701                                  ; $5579: $01 $01 $07
    ld bc, $0601                                  ; $557c: $01 $01 $06
    ld bc, $0601                                  ; $557f: $01 $01 $06
    ld b, $06                                     ; $5582: $06 $06
    ld b, $01                                     ; $5584: $06 $01
    rlca                                          ; $5586: $07
    ld c, c                                       ; $5587: $49
    ld c, d                                       ; $5588: $4a
    ld c, e                                       ; $5589: $4b
    or b                                          ; $558a: $b0
    ld c, l                                       ; $558b: $4d
    ld c, [hl]                                    ; $558c: $4e
    ld c, a                                       ; $558d: $4f
    or c                                          ; $558e: $b1
    ld hl, sp-$07                                 ; $558f: $f8 $f9
    ld a, [$fcb2]                                 ; $5591: $fa $b2 $fc
    db $fd                                        ; $5594: $fd
    cp $7b                                        ; $5595: $fe $7b
    ld b, $06                                     ; $5597: $06 $06
    ld bc, $012a                                  ; $5599: $01 $2a $01
    ld bc, $2a07                                  ; $559c: $01 $07 $2a
    ld b, $07                                     ; $559f: $06 $07
    rlca                                          ; $55a1: $07
    ld a, [bc]                                    ; $55a2: $0a
    ld bc, $0701                                  ; $55a3: $01 $01 $07
    ld [bc], a                                    ; $55a6: $02
    ld a, h                                       ; $55a7: $7c
    ld a, [de]                                    ; $55a8: $1a
    dec de                                        ; $55a9: $1b
    inc e                                         ; $55aa: $1c
    xor a                                         ; $55ab: $af
    ld e, $1f                                     ; $55ac: $1e $1f
    jr nz, @-$4e                                  ; $55ae: $20 $b0

    ld [hl+], a                                   ; $55b0: $22
    inc hl                                        ; $55b1: $23
    inc h                                         ; $55b2: $24
    or c                                          ; $55b3: $b1
    ld h, $27                                     ; $55b4: $26 $27
    jr z, jr_08d_55da                             ; $55b6: $28 $22

    inc b                                         ; $55b8: $04
    rlca                                          ; $55b9: $07
    ld b, $0a                                     ; $55ba: $06 $0a
    inc b                                         ; $55bc: $04
    ld bc, $0a01                                  ; $55bd: $01 $01 $0a
    inc b                                         ; $55c0: $04
    rlca                                          ; $55c1: $07
    ld bc, $040a                                  ; $55c2: $01 $0a $04
    rlca                                          ; $55c5: $07
    ld b, $09                                     ; $55c6: $06 $09
    ld a, [bc]                                    ; $55c8: $0a
    dec bc                                        ; $55c9: $0b
    inc c                                         ; $55ca: $0c
    dec c                                         ; $55cb: $0d
    ld c, $0f                                     ; $55cc: $0e $0f
    db $10                                        ; $55ce: $10
    ld de, $1312                                  ; $55cf: $11 $12 $13
    inc d                                         ; $55d2: $14
    dec d                                         ; $55d3: $15
    ld d, $17                                     ; $55d4: $16 $17
    jr @+$03                                      ; $55d6: $18 $01

    ld b, $07                                     ; $55d8: $06 $07

jr_08d_55da:
    rlca                                          ; $55da: $07
    ld bc, $0707                                  ; $55db: $01 $07 $07
    ld bc, $0107                                  ; $55de: $01 $07 $01
    ld b, $07                                     ; $55e1: $06 $07
    ld b, $01                                     ; $55e3: $06 $01
    ld b, $01                                     ; $55e5: $06 $01
    add hl, de                                    ; $55e7: $19
    ld a, [de]                                    ; $55e8: $1a
    dec de                                        ; $55e9: $1b
    inc e                                         ; $55ea: $1c
    dec e                                         ; $55eb: $1d
    ld e, $1f                                     ; $55ec: $1e $1f
    jr nz, @+$23                                  ; $55ee: $20 $21

    ld [hl+], a                                   ; $55f0: $22
    inc hl                                        ; $55f1: $23
    inc h                                         ; $55f2: $24
    dec h                                         ; $55f3: $25
    ld h, $27                                     ; $55f4: $26 $27
    jr z, jr_08d_55f9                             ; $55f6: $28 $01

    rlca                                          ; $55f8: $07

jr_08d_55f9:
    ld bc, $0106                                  ; $55f9: $01 $06 $01
    ld bc, $0606                                  ; $55fc: $01 $06 $06
    rlca                                          ; $55ff: $07
    ld b, $06                                     ; $5600: $06 $06
    rlca                                          ; $5602: $07
    ld bc, $0701                                  ; $5603: $01 $01 $07
    ld b, $09                                     ; $5606: $06 $09
    ld a, [bc]                                    ; $5608: $0a
    dec bc                                        ; $5609: $0b
    ld a, h                                       ; $560a: $7c
    dec c                                         ; $560b: $0d
    ld c, $0f                                     ; $560c: $0e $0f
    xor a                                         ; $560e: $af
    ld de, $1312                                  ; $560f: $11 $12 $13
    or b                                          ; $5612: $b0
    dec d                                         ; $5613: $15
    ld d, $17                                     ; $5614: $16 $17
    or c                                          ; $5616: $b1
    ld b, $07                                     ; $5617: $06 $07
    ld bc, $0102                                  ; $5619: $01 $02 $01
    rlca                                          ; $561c: $07
    ld bc, $012a                                  ; $561d: $01 $2a $01
    ld bc, $2a07                                  ; $5620: $01 $07 $2a
    ld b, $07                                     ; $5623: $06 $07
    rlca                                          ; $5625: $07
    ld a, [hl+]                                   ; $5626: $2a
    or d                                          ; $5627: $b2
    ld [hl], l                                    ; $5628: $75
    halt                                          ; $5629: $76
    ld [hl], a                                    ; $562a: $77
    ld a, e                                       ; $562b: $7b
    ld a, b                                       ; $562c: $78
    ld a, c                                       ; $562d: $79
    ld a, d                                       ; $562e: $7a
    ld a, h                                       ; $562f: $7c
    ld [bc], a                                    ; $5630: $02
    inc bc                                        ; $5631: $03
    inc b                                         ; $5632: $04
    xor a                                         ; $5633: $af
    ld b, $07                                     ; $5634: $06 $07
    ld [$042a], sp                                ; $5636: $08 $2a $04
    rlca                                          ; $5639: $07
    ld bc, $0422                                  ; $563a: $01 $22 $04
    rlca                                          ; $563d: $07
    ld b, $22                                     ; $563e: $06 $22
    inc b                                         ; $5640: $04
    rlca                                          ; $5641: $07
    ld bc, $040a                                  ; $5642: $01 $0a $04
    ld bc, $4906                                  ; $5645: $01 $06 $49
    ld c, d                                       ; $5648: $4a
    ld c, e                                       ; $5649: $4b
    ld c, h                                       ; $564a: $4c
    ld c, l                                       ; $564b: $4d
    ld c, [hl]                                    ; $564c: $4e
    ld c, a                                       ; $564d: $4f
    ld d, b                                       ; $564e: $50
    ld hl, sp-$07                                 ; $564f: $f8 $f9
    ld a, [$fcfb]                                 ; $5651: $fa $fb $fc
    db $fd                                        ; $5654: $fd
    cp $ff                                        ; $5655: $fe $ff
    ld bc, $0607                                  ; $5657: $01 $07 $06
    ld bc, $0601                                  ; $565a: $01 $01 $06
    ld bc, $0106                                  ; $565d: $01 $06 $01
    ld b, $07                                     ; $5660: $06 $07

jr_08d_5662:
    ld b, $07                                     ; $5662: $06 $07
    ld bc, $0607                                  ; $5664: $01 $07 $06
    ld d, c                                       ; $5667: $51
    ld [hl], l                                    ; $5668: $75
    halt                                          ; $5669: $76
    ld [hl], a                                    ; $566a: $77
    ld d, h                                       ; $566b: $54
    ld a, b                                       ; $566c: $78
    ld a, c                                       ; $566d: $79
    ld a, d                                       ; $566e: $7a
    ld bc, $0302                                  ; $566f: $01 $02 $03
    inc b                                         ; $5672: $04
    dec b                                         ; $5673: $05
    ld b, $07                                     ; $5674: $06 $07
    ld [$0601], sp                                ; $5676: $08 $01 $06
    ld b, $01                                     ; $5679: $06 $01
    ld b, $01                                     ; $567b: $06 $01
    ld b, $07                                     ; $567d: $06 $07
    ld bc, $0707                                  ; $567f: $01 $07 $07
    ld bc, $0101                                  ; $5682: $01 $01 $01
    rlca                                          ; $5685: $07
    ld b, $49                                     ; $5686: $06 $49
    ld c, d                                       ; $5688: $4a
    ld c, e                                       ; $5689: $4b
    or d                                          ; $568a: $b2
    ld c, l                                       ; $568b: $4d
    ld c, [hl]                                    ; $568c: $4e
    ld c, a                                       ; $568d: $4f
    ld a, e                                       ; $568e: $7b
    ld hl, sp-$07                                 ; $568f: $f8 $f9
    ld a, [$fc7c]                                 ; $5691: $fa $7c $fc
    db $fd                                        ; $5694: $fd
    cp $af                                        ; $5695: $fe $af
    rlca                                          ; $5697: $07
    ld bc, $0a01                                  ; $5698: $01 $01 $0a
    ld bc, $0706                                  ; $569b: $01 $06 $07
    ld [bc], a                                    ; $569e: $02
    ld bc, $0601                                  ; $569f: $01 $01 $06
    ld [bc], a                                    ; $56a2: $02
    rlca                                          ; $56a3: $07
    ld bc, $2a01                                  ; $56a4: $01 $01 $2a
    or b                                          ; $56a7: $b0
    ld a, [de]                                    ; $56a8: $1a
    dec de                                        ; $56a9: $1b
    inc e                                         ; $56aa: $1c
    or c                                          ; $56ab: $b1
    ld e, $1f                                     ; $56ac: $1e $1f
    jr nz, jr_08d_5662                            ; $56ae: $20 $b2

    ld [hl+], a                                   ; $56b0: $22
    inc hl                                        ; $56b1: $23
    inc h                                         ; $56b2: $24
    dec h                                         ; $56b3: $25
    ld h, $27                                     ; $56b4: $26 $27
    jr z, jr_08d_56c2                             ; $56b6: $28 $0a

    inc b                                         ; $56b8: $04
    ld bc, $0a01                                  ; $56b9: $01 $01 $0a
    inc b                                         ; $56bc: $04
    ld b, $06                                     ; $56bd: $06 $06
    ld a, [hl+]                                   ; $56bf: $2a
    inc b                                         ; $56c0: $04
    rlca                                          ; $56c1: $07

jr_08d_56c2:
    ld b, $04                                     ; $56c2: $06 $04
    inc b                                         ; $56c4: $04
    ld b, $06                                     ; $56c5: $06 $06
    add hl, bc                                    ; $56c7: $09
    ld a, [bc]                                    ; $56c8: $0a
    dec bc                                        ; $56c9: $0b
    inc c                                         ; $56ca: $0c
    dec c                                         ; $56cb: $0d
    ld c, $0f                                     ; $56cc: $0e $0f
    db $10                                        ; $56ce: $10
    ld de, $1312                                  ; $56cf: $11 $12 $13
    inc d                                         ; $56d2: $14
    dec d                                         ; $56d3: $15
    ld d, $17                                     ; $56d4: $16 $17
    jr jr_08d_56df                                ; $56d6: $18 $07

    ld bc, $0707                                  ; $56d8: $01 $07 $07
    ld bc, $0106                                  ; $56db: $01 $06 $01
    rlca                                          ; $56de: $07

jr_08d_56df:
    ld b, $06                                     ; $56df: $06 $06
    ld bc, $0707                                  ; $56e1: $01 $07 $07
    rlca                                          ; $56e4: $07
    rlca                                          ; $56e5: $07
    ld bc, $1a19                                  ; $56e6: $01 $19 $1a
    dec de                                        ; $56e9: $1b
    inc e                                         ; $56ea: $1c
    dec e                                         ; $56eb: $1d
    ld e, $1f                                     ; $56ec: $1e $1f
    jr nz, @+$23                                  ; $56ee: $20 $21

    ld [hl+], a                                   ; $56f0: $22
    inc hl                                        ; $56f1: $23
    inc h                                         ; $56f2: $24
    dec h                                         ; $56f3: $25
    ld h, $27                                     ; $56f4: $26 $27
    jr z, @+$03                                   ; $56f6: $28 $01

    ld bc, $0601                                  ; $56f8: $01 $01 $06
    ld b, $06                                     ; $56fb: $06 $06
    ld bc, $0101                                  ; $56fd: $01 $01 $01

jr_08d_5700:
    ld bc, $0706                                  ; $5700: $01 $06 $07
    ld bc, $0107                                  ; $5703: $01 $07 $01
    ld b, $09                                     ; $5706: $06 $09
    ld a, [bc]                                    ; $5708: $0a
    dec bc                                        ; $5709: $0b
    or b                                          ; $570a: $b0
    dec c                                         ; $570b: $0d
    ld c, $0f                                     ; $570c: $0e $0f
    or c                                          ; $570e: $b1
    ld de, $1312                                  ; $570f: $11 $12 $13
    xor a                                         ; $5712: $af
    dec d                                         ; $5713: $15
    ld d, $17                                     ; $5714: $16 $17
    jr jr_08d_571f                                ; $5716: $18 $07

    rlca                                          ; $5718: $07
    ld bc, $012a                                  ; $5719: $01 $2a $01
    ld bc, $2a07                                  ; $571c: $01 $07 $2a

jr_08d_571f:
    ld bc, $0606                                  ; $571f: $01 $06 $06
    ld a, [hl+]                                   ; $5722: $2a
    ld b, $01                                     ; $5723: $06 $01
    ld b, $07                                     ; $5725: $06 $07
    or b                                          ; $5727: $b0
    ld [hl], l                                    ; $5728: $75
    halt                                          ; $5729: $76
    db $fd                                        ; $572a: $fd
    or c                                          ; $572b: $b1
    ld a, b                                       ; $572c: $78
    ld a, c                                       ; $572d: $79
    ld a, d                                       ; $572e: $7a
    or d                                          ; $572f: $b2
    ld [bc], a                                    ; $5730: $02
    inc bc                                        ; $5731: $03
    inc b                                         ; $5732: $04
    ld a, e                                       ; $5733: $7b
    ld b, $07                                     ; $5734: $06 $07
    ld [$040a], sp                                ; $5736: $08 $0a $04
    inc b                                         ; $5739: $04
    ld c, $0a                                     ; $573a: $0e $0a
    inc b                                         ; $573c: $04
    inc b                                         ; $573d: $04
    inc b                                         ; $573e: $04
    ld a, [hl+]                                   ; $573f: $2a
    inc b                                         ; $5740: $04
    rlca                                          ; $5741: $07

jr_08d_5742:
    inc b                                         ; $5742: $04
    ld [hl+], a                                   ; $5743: $22
    inc b                                         ; $5744: $04
    ld b, $04                                     ; $5745: $06 $04
    ld a, h                                       ; $5747: $7c
    ld a, [de]                                    ; $5748: $1a
    dec de                                        ; $5749: $1b
    inc e                                         ; $574a: $1c
    xor a                                         ; $574b: $af
    ld e, $1f                                     ; $574c: $1e $1f
    jr nz, jr_08d_5700                            ; $574e: $20 $b0

    ld [hl+], a                                   ; $5750: $22
    inc hl                                        ; $5751: $23
    inc h                                         ; $5752: $24
    or c                                          ; $5753: $b1
    ld h, $27                                     ; $5754: $26 $27
    jr z, @+$24                                   ; $5756: $28 $22

    inc b                                         ; $5758: $04
    rlca                                          ; $5759: $07
    inc b                                         ; $575a: $04
    ld a, [bc]                                    ; $575b: $0a
    inc b                                         ; $575c: $04
    ld b, $04                                     ; $575d: $06 $04
    ld a, [bc]                                    ; $575f: $0a
    inc b                                         ; $5760: $04
    ld b, $04                                     ; $5761: $06 $04
    ld a, [bc]                                    ; $5763: $0a
    inc b                                         ; $5764: $04
    rlca                                          ; $5765: $07
    inc b                                         ; $5766: $04
    or d                                          ; $5767: $b2
    ld [hl], l                                    ; $5768: $75
    halt                                          ; $5769: $76
    ld [hl], a                                    ; $576a: $77
    ld a, e                                       ; $576b: $7b
    ld a, b                                       ; $576c: $78
    ld a, c                                       ; $576d: $79
    ld a, d                                       ; $576e: $7a
    ld a, h                                       ; $576f: $7c
    ld [bc], a                                    ; $5770: $02
    inc bc                                        ; $5771: $03
    inc b                                         ; $5772: $04
    xor a                                         ; $5773: $af
    ld b, $07                                     ; $5774: $06 $07
    ld [$042a], sp                                ; $5776: $08 $2a $04
    ld bc, $2204                                  ; $5779: $01 $04 $22
    inc b                                         ; $577c: $04
    ld b, $04                                     ; $577d: $06 $04
    ld [hl+], a                                   ; $577f: $22
    inc b                                         ; $5780: $04
    rlca                                          ; $5781: $07
    inc b                                         ; $5782: $04
    ld a, [bc]                                    ; $5783: $0a
    inc b                                         ; $5784: $04
    rlca                                          ; $5785: $07
    inc b                                         ; $5786: $04
    or b                                          ; $5787: $b0
    ld a, [de]                                    ; $5788: $1a
    dec de                                        ; $5789: $1b
    inc e                                         ; $578a: $1c
    or c                                          ; $578b: $b1
    ld e, $1f                                     ; $578c: $1e $1f
    jr nz, jr_08d_5742                            ; $578e: $20 $b2

    ld [hl+], a                                   ; $5790: $22
    inc hl                                        ; $5791: $23
    inc h                                         ; $5792: $24
    dec h                                         ; $5793: $25
    ld h, $27                                     ; $5794: $26 $27
    jr z, jr_08d_57a2                             ; $5796: $28 $0a

    inc b                                         ; $5798: $04
    ld bc, $0a04                                  ; $5799: $01 $04 $0a
    inc b                                         ; $579c: $04
    ld b, $04                                     ; $579d: $06 $04
    ld a, [hl+]                                   ; $579f: $2a
    inc b                                         ; $57a0: $04
    rlca                                          ; $57a1: $07

jr_08d_57a2:
    inc b                                         ; $57a2: $04
    inc b                                         ; $57a3: $04
    inc b                                         ; $57a4: $04
    ld b, $04                                     ; $57a5: $06 $04
    ld c, c                                       ; $57a7: $49
    ld c, d                                       ; $57a8: $4a
    ld c, e                                       ; $57a9: $4b
    ld c, h                                       ; $57aa: $4c
    ld c, l                                       ; $57ab: $4d
    ld c, [hl]                                    ; $57ac: $4e
    ld c, a                                       ; $57ad: $4f
    ld d, b                                       ; $57ae: $50
    ld hl, sp-$07                                 ; $57af: $f8 $f9
    ld a, [$fcfb]                                 ; $57b1: $fa $fb $fc
    db $fd                                        ; $57b4: $fd
    cp $ff                                        ; $57b5: $fe $ff
    inc b                                         ; $57b7: $04
    ld bc, $0607                                  ; $57b8: $01 $07 $06
    inc b                                         ; $57bb: $04
    ld bc, $0607                                  ; $57bc: $01 $07 $06
    inc b                                         ; $57bf: $04
    ld b, $06                                     ; $57c0: $06 $06
    rlca                                          ; $57c2: $07
    inc b                                         ; $57c3: $04
    ld bc, $0707                                  ; $57c4: $01 $07 $07
    ld d, c                                       ; $57c7: $51
    ld [hl], l                                    ; $57c8: $75
    halt                                          ; $57c9: $76
    ld [hl], a                                    ; $57ca: $77
    ld d, h                                       ; $57cb: $54
    ld a, b                                       ; $57cc: $78
    ld a, c                                       ; $57cd: $79
    ld a, d                                       ; $57ce: $7a
    ld bc, $0302                                  ; $57cf: $01 $02 $03
    inc b                                         ; $57d2: $04
    dec b                                         ; $57d3: $05
    ld b, $07                                     ; $57d4: $06 $07
    ld [$0404], sp                                ; $57d6: $08 $04 $04
    inc b                                         ; $57d9: $04
    inc b                                         ; $57da: $04
    rlca                                          ; $57db: $07
    rlca                                          ; $57dc: $07
    rlca                                          ; $57dd: $07
    ld bc, $0707                                  ; $57de: $01 $07 $07
    ld b, $01                                     ; $57e1: $06 $01
    rlca                                          ; $57e3: $07
    rlca                                          ; $57e4: $07
    ld bc, $4907                                  ; $57e5: $01 $07 $49
    ld c, d                                       ; $57e8: $4a
    ld c, e                                       ; $57e9: $4b
    ld c, h                                       ; $57ea: $4c
    ld c, l                                       ; $57eb: $4d
    ld c, [hl]                                    ; $57ec: $4e
    ld c, a                                       ; $57ed: $4f
    ld d, b                                       ; $57ee: $50
    ld hl, sp-$07                                 ; $57ef: $f8 $f9
    ld a, [$fcfb]                                 ; $57f1: $fa $fb $fc
    db $fd                                        ; $57f4: $fd
    cp $ff                                        ; $57f5: $fe $ff
    inc b                                         ; $57f7: $04
    inc b                                         ; $57f8: $04
    inc b                                         ; $57f9: $04
    inc b                                         ; $57fa: $04
    ld b, $01                                     ; $57fb: $06 $01
    rlca                                          ; $57fd: $07
    ld b, $01                                     ; $57fe: $06 $01
    rlca                                          ; $5800: $07
    ld bc, $0701                                  ; $5801: $01 $01 $07
    ld bc, $0701                                  ; $5804: $01 $01 $07
    pop de                                        ; $5807: $d1
    pop de                                        ; $5808: $d1
    pop de                                        ; $5809: $d1
    jp nc, $d1d1                                  ; $580a: $d2 $d1 $d1

    pop de                                        ; $580d: $d1
    jp nc, $d1d1                                  ; $580e: $d2 $d1 $d1

    pop de                                        ; $5811: $d1
    rst $08                                       ; $5812: $cf
    pop de                                        ; $5813: $d1

jr_08d_5814:
    pop de                                        ; $5814: $d1
    pop de                                        ; $5815: $d1
    pop de                                        ; $5816: $d1
    ld [bc], a                                    ; $5817: $02
    ld [bc], a                                    ; $5818: $02
    add d                                         ; $5819: $82
    add d                                         ; $581a: $82
    ld [bc], a                                    ; $581b: $02
    ld [bc], a                                    ; $581c: $02
    add d                                         ; $581d: $82
    add d                                         ; $581e: $82
    ld [bc], a                                    ; $581f: $02
    ld [bc], a                                    ; $5820: $02
    add d                                         ; $5821: $82
    adc d                                         ; $5822: $8a
    ld [bc], a                                    ; $5823: $02
    ld [bc], a                                    ; $5824: $02
    add d                                         ; $5825: $82
    add d                                         ; $5826: $82
    add hl, bc                                    ; $5827: $09
    ld a, [bc]                                    ; $5828: $0a
    dec bc                                        ; $5829: $0b
    inc c                                         ; $582a: $0c
    dec c                                         ; $582b: $0d
    ld c, $0f                                     ; $582c: $0e $0f
    db $10                                        ; $582e: $10
    call nz, $c4c4                                ; $582f: $c4 $c4 $c4
    call nz, $d1d1                                ; $5832: $c4 $d1 $d1
    pop de                                        ; $5835: $d1
    pop de                                        ; $5836: $d1
    inc b                                         ; $5837: $04
    rlca                                          ; $5838: $07
    rlca                                          ; $5839: $07
    rlca                                          ; $583a: $07
    inc b                                         ; $583b: $04
    ld bc, $0707                                  ; $583c: $01 $07 $07
    adc d                                         ; $583f: $8a
    adc d                                         ; $5840: $8a
    adc d                                         ; $5841: $8a
    adc d                                         ; $5842: $8a
    add d                                         ; $5843: $82
    add d                                         ; $5844: $82
    add d                                         ; $5845: $82
    add d                                         ; $5846: $82
    add hl, de                                    ; $5847: $19
    ld a, [de]                                    ; $5848: $1a
    dec de                                        ; $5849: $1b
    inc e                                         ; $584a: $1c
    dec e                                         ; $584b: $1d
    ld e, $1f                                     ; $584c: $1e $1f
    jr nz, jr_08d_5814                            ; $584e: $20 $c4

    call nz, $c4c4                                ; $5850: $c4 $c4 $c4
    pop de                                        ; $5853: $d1
    pop de                                        ; $5854: $d1
    pop de                                        ; $5855: $d1
    pop de                                        ; $5856: $d1
    rlca                                          ; $5857: $07
    ld bc, $0707                                  ; $5858: $01 $07 $07
    rlca                                          ; $585b: $07
    ld bc, $0706                                  ; $585c: $01 $06 $07
    adc d                                         ; $585f: $8a
    adc d                                         ; $5860: $8a
    adc d                                         ; $5861: $8a
    adc d                                         ; $5862: $8a
    add d                                         ; $5863: $82
    add d                                         ; $5864: $82
    add d                                         ; $5865: $82
    add d                                         ; $5866: $82
    add hl, bc                                    ; $5867: $09
    ld a, [bc]                                    ; $5868: $0a
    dec bc                                        ; $5869: $0b
    inc c                                         ; $586a: $0c
    dec c                                         ; $586b: $0d
    ld c, $0f                                     ; $586c: $0e $0f
    db $10                                        ; $586e: $10
    call nz, $c4c4                                ; $586f: $c4 $c4 $c4
    call nz, $d1d1                                ; $5872: $c4 $d1 $d1
    pop de                                        ; $5875: $d1
    pop de                                        ; $5876: $d1
    ld bc, $0606                                  ; $5877: $01 $06 $06
    rlca                                          ; $587a: $07
    ld bc, $0606                                  ; $587b: $01 $06 $06
    rlca                                          ; $587e: $07
    adc d                                         ; $587f: $8a
    adc d                                         ; $5880: $8a
    adc d                                         ; $5881: $8a
    adc d                                         ; $5882: $8a
    add d                                         ; $5883: $82
    add d                                         ; $5884: $82
    add d                                         ; $5885: $82
    add d                                         ; $5886: $82
    ld d, c                                       ; $5887: $51
    ld [hl], l                                    ; $5888: $75
    halt                                          ; $5889: $76
    ld [hl], a                                    ; $588a: $77
    ld d, h                                       ; $588b: $54
    ld a, b                                       ; $588c: $78
    ld a, c                                       ; $588d: $79
    ld a, d                                       ; $588e: $7a
    ld bc, $0302                                  ; $588f: $01 $02 $03
    inc b                                         ; $5892: $04
    dec b                                         ; $5893: $05
    ld b, $07                                     ; $5894: $06 $07
    ld [$0404], sp                                ; $5896: $08 $04 $04
    ld b, $06                                     ; $5899: $06 $06
    ld bc, $0701                                  ; $589b: $01 $01 $07
    ld bc, $0701                                  ; $589e: $01 $01 $07
    ld b, $07                                     ; $58a1: $06 $07
    rlca                                          ; $58a3: $07
    ld bc, $0707                                  ; $58a4: $01 $07 $07
    ld c, c                                       ; $58a7: $49
    ld c, d                                       ; $58a8: $4a
    ld c, e                                       ; $58a9: $4b
    ld c, h                                       ; $58aa: $4c
    ld c, l                                       ; $58ab: $4d
    ld c, [hl]                                    ; $58ac: $4e
    ld c, a                                       ; $58ad: $4f
    ld d, b                                       ; $58ae: $50
    ld hl, sp-$07                                 ; $58af: $f8 $f9
    ld a, [$fcfb]                                 ; $58b1: $fa $fb $fc
    db $fd                                        ; $58b4: $fd
    cp $ff                                        ; $58b5: $fe $ff
    rlca                                          ; $58b7: $07
    rlca                                          ; $58b8: $07
    rlca                                          ; $58b9: $07
    ld bc, $0607                                  ; $58ba: $01 $07 $06
    ld bc, $0106                                  ; $58bd: $01 $06 $01
    ld b, $01                                     ; $58c0: $06 $01
    rlca                                          ; $58c2: $07
    ld b, $07                                     ; $58c3: $06 $07
    ld bc, $5101                                  ; $58c5: $01 $01 $51
    ld [hl], l                                    ; $58c8: $75
    halt                                          ; $58c9: $76
    ld [hl], a                                    ; $58ca: $77
    ld d, h                                       ; $58cb: $54
    ld a, b                                       ; $58cc: $78
    ld a, c                                       ; $58cd: $79
    ld a, d                                       ; $58ce: $7a
    ld bc, $0302                                  ; $58cf: $01 $02 $03
    inc b                                         ; $58d2: $04
    dec b                                         ; $58d3: $05

jr_08d_58d4:
    ld b, $07                                     ; $58d4: $06 $07
    ld [$0107], sp                                ; $58d6: $08 $07 $01
    ld bc, $0607                                  ; $58d9: $01 $07 $06
    ld bc, $0707                                  ; $58dc: $01 $07 $07
    ld bc, $0707                                  ; $58df: $01 $07 $07
    ld bc, $0101                                  ; $58e2: $01 $01 $01
    ld bc, $4901                                  ; $58e5: $01 $01 $49
    ld c, d                                       ; $58e8: $4a
    ld c, e                                       ; $58e9: $4b
    ld c, h                                       ; $58ea: $4c
    ld c, l                                       ; $58eb: $4d
    ld c, [hl]                                    ; $58ec: $4e
    ld c, a                                       ; $58ed: $4f
    ld d, b                                       ; $58ee: $50
    ld hl, sp-$07                                 ; $58ef: $f8 $f9
    ld a, [$fcfb]                                 ; $58f1: $fa $fb $fc
    db $fd                                        ; $58f4: $fd
    cp $ff                                        ; $58f5: $fe $ff
    ld bc, $0607                                  ; $58f7: $01 $07 $06
    ld b, $01                                     ; $58fa: $06 $01
    ld bc, $0106                                  ; $58fc: $01 $06 $01
    ld bc, $0101                                  ; $58ff: $01 $01 $01
    ld bc, $0106                                  ; $5902: $01 $06 $01
    rlca                                          ; $5905: $07
    ld b, $19                                     ; $5906: $06 $19
    ld a, [de]                                    ; $5908: $1a
    dec de                                        ; $5909: $1b
    inc e                                         ; $590a: $1c
    dec e                                         ; $590b: $1d
    ld e, $1f                                     ; $590c: $1e $1f
    jr nz, jr_08d_58d4                            ; $590e: $20 $c4

    call nz, $c4c4                                ; $5910: $c4 $c4 $c4
    pop de                                        ; $5913: $d1

jr_08d_5914:
    pop de                                        ; $5914: $d1
    pop de                                        ; $5915: $d1
    pop de                                        ; $5916: $d1
    rlca                                          ; $5917: $07
    rlca                                          ; $5918: $07
    rlca                                          ; $5919: $07
    ld bc, $0107                                  ; $591a: $01 $07 $01
    ld b, $01                                     ; $591d: $06 $01
    adc d                                         ; $591f: $8a
    adc d                                         ; $5920: $8a
    adc d                                         ; $5921: $8a
    adc d                                         ; $5922: $8a
    add d                                         ; $5923: $82
    add d                                         ; $5924: $82
    add d                                         ; $5925: $82
    add d                                         ; $5926: $82
    add hl, bc                                    ; $5927: $09
    ld a, [bc]                                    ; $5928: $0a
    dec bc                                        ; $5929: $0b
    inc c                                         ; $592a: $0c
    dec c                                         ; $592b: $0d
    ld c, $0f                                     ; $592c: $0e $0f
    db $10                                        ; $592e: $10
    call nz, $c4c4                                ; $592f: $c4 $c4 $c4
    call nz, $d1d1                                ; $5932: $c4 $d1 $d1
    pop de                                        ; $5935: $d1
    pop de                                        ; $5936: $d1
    rlca                                          ; $5937: $07
    ld bc, $0706                                  ; $5938: $01 $06 $07
    ld bc, $0707                                  ; $593b: $01 $07 $07
    ld bc, $8a8a                                  ; $593e: $01 $8a $8a
    adc d                                         ; $5941: $8a
    adc d                                         ; $5942: $8a
    add d                                         ; $5943: $82
    add d                                         ; $5944: $82
    add d                                         ; $5945: $82
    add d                                         ; $5946: $82
    add hl, de                                    ; $5947: $19
    ld a, [de]                                    ; $5948: $1a
    dec de                                        ; $5949: $1b
    inc e                                         ; $594a: $1c
    dec e                                         ; $594b: $1d
    ld e, $1f                                     ; $594c: $1e $1f
    jr nz, jr_08d_5914                            ; $594e: $20 $c4

    call nz, $c4c4                                ; $5950: $c4 $c4 $c4
    pop de                                        ; $5953: $d1
    pop de                                        ; $5954: $d1
    pop de                                        ; $5955: $d1
    pop de                                        ; $5956: $d1
    ld bc, $0707                                  ; $5957: $01 $07 $07
    rlca                                          ; $595a: $07
    ld bc, $0601                                  ; $595b: $01 $01 $06
    ld b, $8a                                     ; $595e: $06 $8a
    adc d                                         ; $5960: $8a
    adc d                                         ; $5961: $8a
    adc d                                         ; $5962: $8a
    add d                                         ; $5963: $82
    add d                                         ; $5964: $82
    add d                                         ; $5965: $82
    add d                                         ; $5966: $82
    add hl, bc                                    ; $5967: $09
    ld a, [bc]                                    ; $5968: $0a
    dec bc                                        ; $5969: $0b
    inc c                                         ; $596a: $0c
    dec c                                         ; $596b: $0d
    ld c, $0f                                     ; $596c: $0e $0f
    db $10                                        ; $596e: $10
    call nz, $c4c4                                ; $596f: $c4 $c4 $c4
    call nz, $d1d1                                ; $5972: $c4 $d1 $d1
    pop de                                        ; $5975: $d1
    pop de                                        ; $5976: $d1
    rlca                                          ; $5977: $07
    rlca                                          ; $5978: $07
    ld bc, $0107                                  ; $5979: $01 $07 $01
    rlca                                          ; $597c: $07
    ld b, $01                                     ; $597d: $06 $01
    adc d                                         ; $597f: $8a
    adc d                                         ; $5980: $8a
    adc d                                         ; $5981: $8a
    adc d                                         ; $5982: $8a
    add d                                         ; $5983: $82
    add d                                         ; $5984: $82
    add d                                         ; $5985: $82
    add d                                         ; $5986: $82
    ld d, c                                       ; $5987: $51
    ld [hl], l                                    ; $5988: $75
    halt                                          ; $5989: $76
    ld [hl], a                                    ; $598a: $77
    ld d, h                                       ; $598b: $54
    ld a, b                                       ; $598c: $78
    ld a, c                                       ; $598d: $79
    ld a, d                                       ; $598e: $7a
    ld bc, $0302                                  ; $598f: $01 $02 $03
    inc b                                         ; $5992: $04
    dec b                                         ; $5993: $05
    ld b, $07                                     ; $5994: $06 $07
    ld [$0404], sp                                ; $5996: $08 $04 $04
    inc b                                         ; $5999: $04
    inc b                                         ; $599a: $04
    ld bc, $0107                                  ; $599b: $01 $07 $01
    ld bc, $0107                                  ; $599e: $01 $07 $01
    ld b, $07                                     ; $59a1: $06 $07
    ld bc, $0701                                  ; $59a3: $01 $01 $07
    ld bc, $4a49                                  ; $59a6: $01 $49 $4a
    ld c, e                                       ; $59a9: $4b
    ld c, h                                       ; $59aa: $4c
    ld c, l                                       ; $59ab: $4d
    ld c, [hl]                                    ; $59ac: $4e
    ld c, a                                       ; $59ad: $4f
    ld d, b                                       ; $59ae: $50
    ld hl, sp-$07                                 ; $59af: $f8 $f9
    ld a, [$fcfb]                                 ; $59b1: $fa $fb $fc

jr_08d_59b4:
    db $fd                                        ; $59b4: $fd
    cp $ff                                        ; $59b5: $fe $ff
    inc b                                         ; $59b7: $04
    inc b                                         ; $59b8: $04
    inc b                                         ; $59b9: $04
    inc b                                         ; $59ba: $04
    rlca                                          ; $59bb: $07
    rlca                                          ; $59bc: $07
    ld b, $01                                     ; $59bd: $06 $01
    rlca                                          ; $59bf: $07
    ld bc, $0701                                  ; $59c0: $01 $01 $07
    ld b, $01                                     ; $59c3: $06 $01
    rlca                                          ; $59c5: $07
    ld bc, $7551                                  ; $59c6: $01 $51 $75
    halt                                          ; $59c9: $76
    ld [hl], a                                    ; $59ca: $77
    ld d, h                                       ; $59cb: $54
    ld a, b                                       ; $59cc: $78
    ld a, c                                       ; $59cd: $79
    ld a, d                                       ; $59ce: $7a
    ld bc, $0302                                  ; $59cf: $01 $02 $03
    inc b                                         ; $59d2: $04
    dec b                                         ; $59d3: $05
    ld b, $07                                     ; $59d4: $06 $07
    ld [$0404], sp                                ; $59d6: $08 $04 $04
    ld b, $04                                     ; $59d9: $06 $04
    ld bc, $0101                                  ; $59db: $01 $01 $01
    inc b                                         ; $59de: $04
    rlca                                          ; $59df: $07
    ld bc, $0407                                  ; $59e0: $01 $07 $04
    ld bc, $0701                                  ; $59e3: $01 $01 $07
    inc b                                         ; $59e6: $04
    add hl, de                                    ; $59e7: $19
    ld a, [de]                                    ; $59e8: $1a
    dec de                                        ; $59e9: $1b
    inc e                                         ; $59ea: $1c
    dec e                                         ; $59eb: $1d
    ld e, $1f                                     ; $59ec: $1e $1f
    jr nz, jr_08d_59b4                            ; $59ee: $20 $c4

    call nz, $c4c4                                ; $59f0: $c4 $c4 $c4
    pop de                                        ; $59f3: $d1

jr_08d_59f4:
    pop de                                        ; $59f4: $d1
    pop de                                        ; $59f5: $d1
    pop de                                        ; $59f6: $d1
    ld bc, $0106                                  ; $59f7: $01 $06 $01
    rlca                                          ; $59fa: $07
    rlca                                          ; $59fb: $07
    rlca                                          ; $59fc: $07
    rlca                                          ; $59fd: $07
    rlca                                          ; $59fe: $07
    adc d                                         ; $59ff: $8a
    adc d                                         ; $5a00: $8a
    adc d                                         ; $5a01: $8a
    adc d                                         ; $5a02: $8a
    add d                                         ; $5a03: $82
    add d                                         ; $5a04: $82
    add d                                         ; $5a05: $82
    add d                                         ; $5a06: $82
    add hl, bc                                    ; $5a07: $09
    ld a, [bc]                                    ; $5a08: $0a
    dec bc                                        ; $5a09: $0b
    inc c                                         ; $5a0a: $0c
    dec c                                         ; $5a0b: $0d
    ld c, $0f                                     ; $5a0c: $0e $0f
    db $10                                        ; $5a0e: $10
    call nz, $c4c4                                ; $5a0f: $c4 $c4 $c4
    call nz, $d1d1                                ; $5a12: $c4 $d1 $d1
    pop de                                        ; $5a15: $d1
    pop de                                        ; $5a16: $d1
    ld bc, $0101                                  ; $5a17: $01 $01 $01
    rlca                                          ; $5a1a: $07
    ld bc, $0707                                  ; $5a1b: $01 $07 $07
    ld bc, $8a8a                                  ; $5a1e: $01 $8a $8a
    adc d                                         ; $5a21: $8a
    adc d                                         ; $5a22: $8a
    add d                                         ; $5a23: $82
    add d                                         ; $5a24: $82
    add d                                         ; $5a25: $82
    add d                                         ; $5a26: $82
    add hl, de                                    ; $5a27: $19
    ld a, [de]                                    ; $5a28: $1a
    dec de                                        ; $5a29: $1b
    inc e                                         ; $5a2a: $1c
    dec e                                         ; $5a2b: $1d
    ld e, $1f                                     ; $5a2c: $1e $1f
    jr nz, jr_08d_59f4                            ; $5a2e: $20 $c4

    call nz, $c4c4                                ; $5a30: $c4 $c4 $c4
    pop de                                        ; $5a33: $d1
    pop de                                        ; $5a34: $d1
    pop de                                        ; $5a35: $d1
    pop de                                        ; $5a36: $d1
    ld bc, $0706                                  ; $5a37: $01 $06 $07
    inc b                                         ; $5a3a: $04
    rlca                                          ; $5a3b: $07
    rlca                                          ; $5a3c: $07
    ld bc, $8a04                                  ; $5a3d: $01 $04 $8a
    adc d                                         ; $5a40: $8a
    adc d                                         ; $5a41: $8a
    adc d                                         ; $5a42: $8a
    add d                                         ; $5a43: $82
    add d                                         ; $5a44: $82
    add d                                         ; $5a45: $82
    add d                                         ; $5a46: $82
    jp nc, $d1d1                                  ; $5a47: $d2 $d1 $d1

    pop de                                        ; $5a4a: $d1
    jp nc, $d1d1                                  ; $5a4b: $d2 $d1 $d1

    pop de                                        ; $5a4e: $d1
    push bc                                       ; $5a4f: $c5
    pop de                                        ; $5a50: $d1
    pop de                                        ; $5a51: $d1
    pop de                                        ; $5a52: $d1
    pop de                                        ; $5a53: $d1
    pop de                                        ; $5a54: $d1
    pop de                                        ; $5a55: $d1
    pop de                                        ; $5a56: $d1
    add d                                         ; $5a57: $82
    add d                                         ; $5a58: $82
    ld [bc], a                                    ; $5a59: $02
    ld [bc], a                                    ; $5a5a: $02
    add d                                         ; $5a5b: $82
    add d                                         ; $5a5c: $82
    ld [bc], a                                    ; $5a5d: $02
    ld [bc], a                                    ; $5a5e: $02
    adc d                                         ; $5a5f: $8a
    add d                                         ; $5a60: $82
    ld [bc], a                                    ; $5a61: $02
    ld [bc], a                                    ; $5a62: $02
    add d                                         ; $5a63: $82
    add d                                         ; $5a64: $82
    ld [bc], a                                    ; $5a65: $02
    ld [bc], a                                    ; $5a66: $02
    add hl, bc                                    ; $5a67: $09
    nop                                           ; $5a68: $00
    add hl, bc                                    ; $5a69: $09
    nop                                           ; $5a6a: $00
    add b                                         ; $5a6b: $80
    add hl, bc                                    ; $5a6c: $09
    pop de                                        ; $5a6d: $d1
    pop de                                        ; $5a6e: $d1
    pop de                                        ; $5a6f: $d1
    jp nc, $d1d1                                  ; $5a70: $d2 $d1 $d1

    pop de                                        ; $5a73: $d1
    jp nc, $d1d1                                  ; $5a74: $d2 $d1 $d1

    pop de                                        ; $5a77: $d1
    jp nc, $d1d1                                  ; $5a78: $d2 $d1 $d1

    pop de                                        ; $5a7b: $d1
    jp nc, $8080                                  ; $5a7c: $d2 $80 $80

    add b                                         ; $5a7f: $80
    add b                                         ; $5a80: $80
    add b                                         ; $5a81: $80
    add b                                         ; $5a82: $80
    add b                                         ; $5a83: $80
    add b                                         ; $5a84: $80
    add b                                         ; $5a85: $80
    add b                                         ; $5a86: $80
    add b                                         ; $5a87: $80
    add b                                         ; $5a88: $80
    add b                                         ; $5a89: $80
    add b                                         ; $5a8a: $80
    add b                                         ; $5a8b: $80
    add b                                         ; $5a8c: $80
    db $d3                                        ; $5a8d: $d3
    call nc, $d6d5                                ; $5a8e: $d4 $d5 $d6
    rst $10                                       ; $5a91: $d7
    ret c                                         ; $5a92: $d8

    reti                                          ; $5a93: $d9


    jp c, $dcdb                                   ; $5a94: $da $db $dc

    db $dd                                        ; $5a97: $dd
    sbc $df                                       ; $5a98: $de $df
    ldh [$e1], a                                  ; $5a9a: $e0 $e1
    ld [c], a                                     ; $5a9c: $e2
    ld b, $06                                     ; $5a9d: $06 $06
    ld b, $06                                     ; $5a9f: $06 $06
    ld b, $06                                     ; $5aa1: $06 $06
    ld b, $06                                     ; $5aa3: $06 $06
    ld b, $06                                     ; $5aa5: $06 $06
    ld b, $06                                     ; $5aa7: $06 $06
    ld b, $06                                     ; $5aa9: $06 $06
    ld b, $06                                     ; $5aab: $06 $06
    db $e3                                        ; $5aad: $e3
    db $e4                                        ; $5aae: $e4
    db $d3                                        ; $5aaf: $d3
    push hl                                       ; $5ab0: $e5
    and $e7                                       ; $5ab1: $e6 $e7
    add sp, -$17                                  ; $5ab3: $e8 $e9
    ld [$eceb], a                                 ; $5ab5: $ea $eb $ec
    db $ed                                        ; $5ab8: $ed
    xor $ef                                       ; $5ab9: $ee $ef
    rst $18                                       ; $5abb: $df
    ldh a, [rTMA]                                 ; $5abc: $f0 $06
    ld b, $06                                     ; $5abe: $06 $06
    ld b, $06                                     ; $5ac0: $06 $06
    ld b, $06                                     ; $5ac2: $06 $06
    ld b, $06                                     ; $5ac4: $06 $06
    ld b, $06                                     ; $5ac6: $06 $06
    ld b, $06                                     ; $5ac8: $06 $06
    ld b, $06                                     ; $5aca: $06 $06
    ld b, $f1                                     ; $5acc: $06 $f1
    ld a, [c]                                     ; $5ace: $f2
    di                                            ; $5acf: $f3
    db $f4                                        ; $5ad0: $f4
    push af                                       ; $5ad1: $f5
    or $f7                                        ; $5ad2: $f6 $f7
    ld hl, sp-$07                                 ; $5ad4: $f8 $f9
    ld a, [$fcfb]                                 ; $5ad6: $fa $fb $fc
    db $fd                                        ; $5ad9: $fd
    cp $ff                                        ; $5ada: $fe $ff
    nop                                           ; $5adc: $00
    ld b, $06                                     ; $5add: $06 $06
    ld b, $00                                     ; $5adf: $06 $00
    ld b, $06                                     ; $5ae1: $06 $06
    ld b, $00                                     ; $5ae3: $06 $00
    ld b, $06                                     ; $5ae5: $06 $06
    ld b, $00                                     ; $5ae7: $06 $00
    ld b, $06                                     ; $5ae9: $06 $06
    ld b, $00                                     ; $5aeb: $06 $00
    ld bc, $0302                                  ; $5aed: $01 $02 $03
    inc b                                         ; $5af0: $04
    dec b                                         ; $5af1: $05
    ld b, $07                                     ; $5af2: $06 $07
    ld [$0a09], sp                                ; $5af4: $08 $09 $0a
    dec bc                                        ; $5af7: $0b
    inc c                                         ; $5af8: $0c
    dec c                                         ; $5af9: $0d
    ld c, $0f                                     ; $5afa: $0e $0f
    db $10                                        ; $5afc: $10
    ld b, $06                                     ; $5afd: $06 $06
    ld b, $06                                     ; $5aff: $06 $06
    rlca                                          ; $5b01: $07
    rlca                                          ; $5b02: $07
    rlca                                          ; $5b03: $07
    rlca                                          ; $5b04: $07
    rlca                                          ; $5b05: $07
    dec b                                         ; $5b06: $05
    dec b                                         ; $5b07: $05
    dec b                                         ; $5b08: $05
    rlca                                          ; $5b09: $07
    ld bc, $a484                                  ; $5b0a: $01 $84 $a4
    ld de, $0112                                  ; $5b0d: $11 $12 $01
    inc de                                        ; $5b10: $13
    inc d                                         ; $5b11: $14
    dec d                                         ; $5b12: $15
    dec b                                         ; $5b13: $05
    ld b, $16                                     ; $5b14: $06 $16
    rla                                           ; $5b16: $17
    jr jr_08d_5b32                                ; $5b17: $18 $19

    ld a, [de]                                    ; $5b19: $1a
    db $10                                        ; $5b1a: $10
    dec de                                        ; $5b1b: $1b
    inc e                                         ; $5b1c: $1c
    ld b, $06                                     ; $5b1d: $06 $06
    ld b, $06                                     ; $5b1f: $06 $06
    rlca                                          ; $5b21: $07
    rlca                                          ; $5b22: $07
    rlca                                          ; $5b23: $07
    rlca                                          ; $5b24: $07
    ld bc, $0505                                  ; $5b25: $01 $05 $05
    dec b                                         ; $5b28: $05
    ld bc, $8484                                  ; $5b29: $01 $84 $84
    add h                                         ; $5b2c: $84
    dec e                                         ; $5b2d: $1d
    ld e, $1f                                     ; $5b2e: $1e $1f
    jr nz, jr_08d_5b39                            ; $5b30: $20 $07

jr_08d_5b32:
    ld [$1514], sp                                ; $5b32: $08 $14 $15
    ld hl, $220c                                  ; $5b35: $21 $0c $22
    rla                                           ; $5b38: $17

jr_08d_5b39:
    inc hl                                        ; $5b39: $23
    inc h                                         ; $5b3a: $24
    dec h                                         ; $5b3b: $25
    ld a, [de]                                    ; $5b3c: $1a
    ld b, $06                                     ; $5b3d: $06 $06
    ld b, $06                                     ; $5b3f: $06 $06
    rlca                                          ; $5b41: $07
    rlca                                          ; $5b42: $07
    rlca                                          ; $5b43: $07
    rlca                                          ; $5b44: $07
    ld bc, $0505                                  ; $5b45: $01 $05 $05
    dec b                                         ; $5b48: $05
    add h                                         ; $5b49: $84
    ld bc, $0101                                  ; $5b4a: $01 $01 $01
    ld h, $27                                     ; $5b4d: $26 $27
    jr z, jr_08d_5b7a                             ; $5b4f: $28 $29

    daa                                           ; $5b51: $27
    ld h, $2a                                     ; $5b52: $26 $2a
    dec hl                                        ; $5b54: $2b
    inc l                                         ; $5b55: $2c
    dec l                                         ; $5b56: $2d
    ld l, $2f                                     ; $5b57: $2e $2f
    dec b                                         ; $5b59: $05
    jr nc, jr_08d_5b8d                            ; $5b5a: $30 $31

    ld [hl-], a                                   ; $5b5c: $32
    rlca                                          ; $5b5d: $07
    ld bc, $8484                                  ; $5b5e: $01 $84 $84
    rlca                                          ; $5b61: $07
    ld bc, $0404                                  ; $5b62: $01 $04 $04
    rlca                                          ; $5b65: $07
    ld bc, $0404                                  ; $5b66: $01 $04 $04
    rlca                                          ; $5b69: $07
    ld bc, $0404                                  ; $5b6a: $01 $04 $04
    inc sp                                        ; $5b6d: $33
    inc [hl]                                      ; $5b6e: $34
    dec [hl]                                      ; $5b6f: $35
    ld [hl], $37                                  ; $5b70: $36 $37
    jr c, jr_08d_5bad                             ; $5b72: $38 $39

    ld l, $1a                                     ; $5b74: $2e $1a
    ld a, [hl-]                                   ; $5b76: $3a
    dec sp                                        ; $5b77: $3b
    inc a                                         ; $5b78: $3c
    dec a                                         ; $5b79: $3d

jr_08d_5b7a:
    ld a, $3f                                     ; $5b7a: $3e $3f
    ld b, b                                       ; $5b7c: $40
    add h                                         ; $5b7d: $84
    add h                                         ; $5b7e: $84
    add h                                         ; $5b7f: $84
    add h                                         ; $5b80: $84
    inc b                                         ; $5b81: $04
    inc b                                         ; $5b82: $04
    inc b                                         ; $5b83: $04
    inc b                                         ; $5b84: $04
    inc b                                         ; $5b85: $04
    inc b                                         ; $5b86: $04
    inc b                                         ; $5b87: $04
    inc b                                         ; $5b88: $04
    inc b                                         ; $5b89: $04
    inc b                                         ; $5b8a: $04
    inc b                                         ; $5b8b: $04
    inc b                                         ; $5b8c: $04

jr_08d_5b8d:
    ld b, c                                       ; $5b8d: $41
    ld a, [de]                                    ; $5b8e: $1a
    ld a, [de]                                    ; $5b8f: $1a
    ld a, [de]                                    ; $5b90: $1a
    ld a, [de]                                    ; $5b91: $1a
    ld a, [de]                                    ; $5b92: $1a
    ld a, [de]                                    ; $5b93: $1a
    ld b, d                                       ; $5b94: $42
    ld b, e                                       ; $5b95: $43
    ld b, h                                       ; $5b96: $44
    ld b, l                                       ; $5b97: $45
    ld b, [hl]                                    ; $5b98: $46
    ld a, [de]                                    ; $5b99: $1a
    ld a, [de]                                    ; $5b9a: $1a
    ld b, a                                       ; $5b9b: $47
    dec d                                         ; $5b9c: $15
    add h                                         ; $5b9d: $84
    ld bc, $0101                                  ; $5b9e: $01 $01 $01
    ld bc, $0101                                  ; $5ba1: $01 $01 $01
    ld bc, HeaderLogo                             ; $5ba4: $01 $04 $01
    ld bc, $0101                                  ; $5ba7: $01 $01 $01
    ld bc, $0501                                  ; $5baa: $01 $01 $05

jr_08d_5bad:
    add hl, bc                                    ; $5bad: $09
    ld a, [bc]                                    ; $5bae: $0a
    dec bc                                        ; $5baf: $0b
    ld c, b                                       ; $5bb0: $48
    dec c                                         ; $5bb1: $0d
    ld c, c                                       ; $5bb2: $49
    ld c, d                                       ; $5bb3: $4a
    ld c, e                                       ; $5bb4: $4b
    ld c, h                                       ; $5bb5: $4c
    ld c, l                                       ; $5bb6: $4d
    ld c, [hl]                                    ; $5bb7: $4e
    ld c, a                                       ; $5bb8: $4f
    ld d, b                                       ; $5bb9: $50
    ld d, c                                       ; $5bba: $51
    ld d, d                                       ; $5bbb: $52
    ld d, e                                       ; $5bbc: $53
    rlca                                          ; $5bbd: $07
    ld bc, $0101                                  ; $5bbe: $01 $01 $01
    rlca                                          ; $5bc1: $07
    ld bc, $0505                                  ; $5bc2: $01 $05 $05
    rlca                                          ; $5bc5: $07
    dec b                                         ; $5bc6: $05
    ld bc, $0701                                  ; $5bc7: $01 $01 $07
    dec b                                         ; $5bca: $05
    ld bc, $5405                                  ; $5bcb: $01 $05 $54
    ld d, l                                       ; $5bce: $55
    ld d, [hl]                                    ; $5bcf: $56
    ld d, a                                       ; $5bd0: $57
    ld e, b                                       ; $5bd1: $58
    ld e, c                                       ; $5bd2: $59
    ld e, d                                       ; $5bd3: $5a
    ld e, e                                       ; $5bd4: $5b
    ld e, h                                       ; $5bd5: $5c
    ld e, l                                       ; $5bd6: $5d
    db $10                                        ; $5bd7: $10
    ld c, l                                       ; $5bd8: $4d
    ld e, [hl]                                    ; $5bd9: $5e
    ld e, a                                       ; $5bda: $5f
    ld h, b                                       ; $5bdb: $60
    ld a, [de]                                    ; $5bdc: $1a
    dec b                                         ; $5bdd: $05
    dec b                                         ; $5bde: $05
    ld bc, $0101                                  ; $5bdf: $01 $01 $01
    ld bc, $0101                                  ; $5be2: $01 $01 $01
    ld bc, $a282                                  ; $5be5: $01 $82 $a2
    ld bc, $8205                                  ; $5be8: $01 $05 $82
    add d                                         ; $5beb: $82
    ld bc, $1a26                                  ; $5bec: $01 $26 $1a
    ld a, [de]                                    ; $5bef: $1a
    ld h, c                                       ; $5bf0: $61
    ld h, d                                       ; $5bf1: $62
    ld h, $1a                                     ; $5bf2: $26 $1a
    ld h, e                                       ; $5bf4: $63
    ld c, [hl]                                    ; $5bf5: $4e
    ld h, h                                       ; $5bf6: $64
    ld h, $65                                     ; $5bf7: $26 $65
    ld h, [hl]                                    ; $5bf9: $66
    ld h, a                                       ; $5bfa: $67
    ld h, $26                                     ; $5bfb: $26 $26
    ld bc, $0101                                  ; $5bfd: $01 $01 $01
    ld bc, $0101                                  ; $5c00: $01 $01 $01
    ld bc, $0101                                  ; $5c03: $01 $01 $01
    ld bc, $0101                                  ; $5c06: $01 $01 $01
    and d                                         ; $5c09: $a2
    ld bc, $0101                                  ; $5c0a: $01 $01 $01
    ld l, b                                       ; $5c0d: $68
    ld l, c                                       ; $5c0e: $69
    ld l, d                                       ; $5c0f: $6a
    ld l, e                                       ; $5c10: $6b
    ld l, h                                       ; $5c11: $6c
    ld l, l                                       ; $5c12: $6d
    ld l, [hl]                                    ; $5c13: $6e

Jump_08d_5c14:
    ld l, a                                       ; $5c14: $6f
    ld [hl], b                                    ; $5c15: $70
    ld [hl], c                                    ; $5c16: $71
    ld [hl], d                                    ; $5c17: $72
    ld [hl], e                                    ; $5c18: $73
    ld [hl], h                                    ; $5c19: $74
    ld [hl], l                                    ; $5c1a: $75
    halt                                          ; $5c1b: $76
    ld [hl], a                                    ; $5c1c: $77
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    nop                                           ; $5c20: $00
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    nop                                           ; $5c23: $00
    nop                                           ; $5c24: $00
    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00
    nop                                           ; $5c28: $00
    nop                                           ; $5c29: $00
    nop                                           ; $5c2a: $00
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    ld a, b                                       ; $5c2d: $78
    ld a, c                                       ; $5c2e: $79
    ld a, d                                       ; $5c2f: $7a
    ld a, e                                       ; $5c30: $7b
    ld a, h                                       ; $5c31: $7c
    ld a, l                                       ; $5c32: $7d
    ld a, [hl]                                    ; $5c33: $7e
    ld a, a                                       ; $5c34: $7f
    add b                                         ; $5c35: $80
    add c                                         ; $5c36: $81
    ld b, b                                       ; $5c37: $40
    add d                                         ; $5c38: $82
    add e                                         ; $5c39: $83
    add h                                         ; $5c3a: $84
    add l                                         ; $5c3b: $85
    add [hl]                                      ; $5c3c: $86
    nop                                           ; $5c3d: $00
    nop                                           ; $5c3e: $00
    nop                                           ; $5c3f: $00
    ld b, $00                                     ; $5c40: $06 $00
    nop                                           ; $5c42: $00
    nop                                           ; $5c43: $00
    ld b, $08                                     ; $5c44: $06 $08
    ld [$0e00], sp                                ; $5c46: $08 $00 $0e
    ld [$0808], sp                                ; $5c49: $08 $08 $08
    ld c, $f1                                     ; $5c4c: $0e $f1
    add a                                         ; $5c4e: $87
    adc b                                         ; $5c4f: $88
    adc c                                         ; $5c50: $89
    push af                                       ; $5c51: $f5
    or $8a                                        ; $5c52: $f6 $8a
    adc e                                         ; $5c54: $8b
    adc h                                         ; $5c55: $8c
    adc l                                         ; $5c56: $8d
    adc [hl]                                      ; $5c57: $8e
    adc a                                         ; $5c58: $8f
    sub b                                         ; $5c59: $90
    sub c                                         ; $5c5a: $91
    sub d                                         ; $5c5b: $92
    sub e                                         ; $5c5c: $93
    ld b, $0e                                     ; $5c5d: $06 $0e
    ld c, $0e                                     ; $5c5f: $0e $0e
    ld b, $06                                     ; $5c61: $06 $06
    ld c, $0e                                     ; $5c63: $0e $0e
    ld c, $0e                                     ; $5c65: $0e $0e
    ld c, $0e                                     ; $5c67: $0e $0e
    ld c, $0e                                     ; $5c69: $0e $0e
    ld c, $0e                                     ; $5c6b: $0e $0e
    sub h                                         ; $5c6d: $94
    sub l                                         ; $5c6e: $95
    pop af                                        ; $5c6f: $f1
    ld a, [c]                                     ; $5c70: $f2
    sub [hl]                                      ; $5c71: $96
    sub a                                         ; $5c72: $97
    push af                                       ; $5c73: $f5
    sbc b                                         ; $5c74: $98
    sbc c                                         ; $5c75: $99
    sbc d                                         ; $5c76: $9a
    sbc e                                         ; $5c77: $9b
    sbc h                                         ; $5c78: $9c
    sbc l                                         ; $5c79: $9d
    ldh [$9e], a                                  ; $5c7a: $e0 $9e
    sbc a                                         ; $5c7c: $9f
    ld c, $0e                                     ; $5c7d: $0e $0e
    ld b, $06                                     ; $5c7f: $06 $06
    ld c, $0e                                     ; $5c81: $0e $0e
    ld b, $0e                                     ; $5c83: $06 $0e
    ld c, $0e                                     ; $5c85: $0e $0e
    ld c, $0e                                     ; $5c87: $0e $0e
    ld c, $06                                     ; $5c89: $0e $06
    ld c, $0e                                     ; $5c8b: $0e $0e
    and b                                         ; $5c8d: $a0
    and c                                         ; $5c8e: $a1
    and d                                         ; $5c8f: $a2
    and e                                         ; $5c90: $a3
    dec b                                         ; $5c91: $05
    and h                                         ; $5c92: $a4
    ld h, $27                                     ; $5c93: $26 $27
    and l                                         ; $5c95: $a5
    ld h, $27                                     ; $5c96: $26 $27
    inc c                                         ; $5c98: $0c
    ld a, [de]                                    ; $5c99: $1a
    and [hl]                                      ; $5c9a: $a6
    and a                                         ; $5c9b: $a7
    ld c, e                                       ; $5c9c: $4b
    ld c, $0e                                     ; $5c9d: $0e $0e
    ld c, $0e                                     ; $5c9f: $0e $0e
    rlca                                          ; $5ca1: $07
    rrca                                          ; $5ca2: $0f
    rlca                                          ; $5ca3: $07
    ld h, a                                       ; $5ca4: $67
    add hl, bc                                    ; $5ca5: $09
    ld bc, $0561                                  ; $5ca6: $01 $61 $05
    ld bc, $0909                                  ; $5ca9: $01 $09 $09
    ld bc, $20a8                                  ; $5cac: $01 $a8 $20
    and b                                         ; $5caf: $a0
    xor c                                         ; $5cb0: $a9
    xor d                                         ; $5cb1: $aa
    dec d                                         ; $5cb2: $15
    dec b                                         ; $5cb3: $05
    ld b, $22                                     ; $5cb4: $06 $22
    rla                                           ; $5cb6: $17
    add hl, bc                                    ; $5cb7: $09
    xor e                                         ; $5cb8: $ab
    ld e, b                                       ; $5cb9: $58
    xor h                                         ; $5cba: $ac
    dec c                                         ; $5cbb: $0d
    xor l                                         ; $5cbc: $ad
    ld c, $06                                     ; $5cbd: $0e $06
    ld c, $0e                                     ; $5cbf: $0e $0e
    rrca                                          ; $5cc1: $0f
    rlca                                          ; $5cc2: $07
    rlca                                          ; $5cc3: $07
    rlca                                          ; $5cc4: $07
    ld bc, $0101                                  ; $5cc5: $01 $01 $01
    add hl, bc                                    ; $5cc8: $09
    dec b                                         ; $5cc9: $05
    add hl, bc                                    ; $5cca: $09
    ld bc, $0309                                  ; $5ccb: $01 $09 $03
    inc b                                         ; $5cce: $04
    ld de, $ae12                                  ; $5ccf: $11 $12 $ae
    ld [$15af], sp                                ; $5cd2: $08 $af $15
    or b                                          ; $5cd5: $b0
    or c                                          ; $5cd6: $b1
    or d                                          ; $5cd7: $b2
    or e                                          ; $5cd8: $b3
    or h                                          ; $5cd9: $b4
    or l                                          ; $5cda: $b5
    or [hl]                                       ; $5cdb: $b6
    or a                                          ; $5cdc: $b7
    ld b, $06                                     ; $5cdd: $06 $06
    ld b, $06                                     ; $5cdf: $06 $06
    rrca                                          ; $5ce1: $0f
    rlca                                          ; $5ce2: $07
    rrca                                          ; $5ce3: $0f
    rlca                                          ; $5ce4: $07
    adc d                                         ; $5ce5: $8a
    adc d                                         ; $5ce6: $8a
    adc d                                         ; $5ce7: $8a
    adc d                                         ; $5ce8: $8a
    adc d                                         ; $5ce9: $8a
    adc d                                         ; $5cea: $8a
    adc d                                         ; $5ceb: $8a
    adc d                                         ; $5cec: $8a
    ld bc, $0302                                  ; $5ced: $01 $02 $03
    inc b                                         ; $5cf0: $04
    dec b                                         ; $5cf1: $05
    ld b, $07                                     ; $5cf2: $06 $07
    ld [$b9b8], sp                                ; $5cf4: $08 $b8 $b9
    cp d                                          ; $5cf7: $ba
    cp e                                          ; $5cf8: $bb
    cp h                                          ; $5cf9: $bc
    cp l                                          ; $5cfa: $bd
    cp [hl]                                       ; $5cfb: $be
    cp a                                          ; $5cfc: $bf
    ld b, $06                                     ; $5cfd: $06 $06
    ld b, $06                                     ; $5cff: $06 $06
    rlca                                          ; $5d01: $07
    rlca                                          ; $5d02: $07
    rlca                                          ; $5d03: $07
    rlca                                          ; $5d04: $07
    adc d                                         ; $5d05: $8a
    adc d                                         ; $5d06: $8a
    adc d                                         ; $5d07: $8a
    adc d                                         ; $5d08: $8a
    adc d                                         ; $5d09: $8a
    adc d                                         ; $5d0a: $8a
    adc d                                         ; $5d0b: $8a
    adc d                                         ; $5d0c: $8a
    ret nz                                        ; $5d0d: $c0

    ld c, l                                       ; $5d0e: $4d
    ld c, [hl]                                    ; $5d0f: $4e
    ld c, a                                       ; $5d10: $4f
    pop bc                                        ; $5d11: $c1
    ld d, c                                       ; $5d12: $51
    ld d, d                                       ; $5d13: $52
    ld d, e                                       ; $5d14: $53
    inc l                                         ; $5d15: $2c
    jp nz, $c4c3                                  ; $5d16: $c2 $c3 $c4

    dec b                                         ; $5d19: $05
    ld b, $c5                                     ; $5d1a: $06 $c5
    add $09                                       ; $5d1c: $c6 $09
    dec b                                         ; $5d1e: $05
    dec b                                         ; $5d1f: $05
    dec b                                         ; $5d20: $05
    add hl, bc                                    ; $5d21: $09
    dec b                                         ; $5d22: $05
    dec b                                         ; $5d23: $05
    dec b                                         ; $5d24: $05
    dec b                                         ; $5d25: $05
    add hl, bc                                    ; $5d26: $09
    add hl, bc                                    ; $5d27: $09
    add hl, bc                                    ; $5d28: $09
    ld bc, $0a01                                  ; $5d29: $01 $01 $0a
    ld a, [bc]                                    ; $5d2c: $0a
    rst $00                                       ; $5d2d: $c7
    ret z                                         ; $5d2e: $c8

    ld c, h                                       ; $5d2f: $4c
    ret                                           ; $5d30: $c9


    jp z, Jump_08d_50cb                           ; $5d31: $ca $cb $50

    call z, $cecd                                 ; $5d34: $cc $cd $ce
    ld h, $cf                                     ; $5d37: $26 $cf
    xor a                                         ; $5d39: $af
    ret nc                                        ; $5d3a: $d0

    ld a, [de]                                    ; $5d3b: $1a
    pop de                                        ; $5d3c: $d1
    add hl, bc                                    ; $5d3d: $09
    add hl, bc                                    ; $5d3e: $09
    ld bc, $0d0a                                  ; $5d3f: $01 $0a $0d
    add hl, bc                                    ; $5d42: $09
    ld bc, $0d0a                                  ; $5d43: $01 $0a $0d
    add hl, bc                                    ; $5d46: $09
    ld bc, $0d0a                                  ; $5d47: $01 $0a $0d
    add hl, bc                                    ; $5d4a: $09
    ld bc, $b40a                                  ; $5d4b: $01 $0a $b4
    jp nc, $d4d3                                  ; $5d4e: $d2 $d3 $d4

    push de                                       ; $5d51: $d5
    sub $d7                                       ; $5d52: $d6 $d7
    ret c                                         ; $5d54: $d8

    reti                                          ; $5d55: $d9


    jp c, $dcdb                                   ; $5d56: $da $db $dc

    db $dd                                        ; $5d59: $dd
    sbc $df                                       ; $5d5a: $de $df
    ldh [$0a], a                                  ; $5d5c: $e0 $0a
    ld a, [bc]                                    ; $5d5e: $0a
    ld a, [bc]                                    ; $5d5f: $0a
    ld a, [bc]                                    ; $5d60: $0a
    ld a, [bc]                                    ; $5d61: $0a
    ld a, [bc]                                    ; $5d62: $0a
    ld a, [bc]                                    ; $5d63: $0a
    ld a, [bc]                                    ; $5d64: $0a
    ld a, [bc]                                    ; $5d65: $0a
    ld a, [bc]                                    ; $5d66: $0a
    ld a, [bc]                                    ; $5d67: $0a
    ld a, [bc]                                    ; $5d68: $0a
    ld a, [bc]                                    ; $5d69: $0a
    ld a, [bc]                                    ; $5d6a: $0a
    ld a, [bc]                                    ; $5d6b: $0a
    ld a, [bc]                                    ; $5d6c: $0a
    pop hl                                        ; $5d6d: $e1
    ld [c], a                                     ; $5d6e: $e2
    db $e3                                        ; $5d6f: $e3
    db $e4                                        ; $5d70: $e4
    push hl                                       ; $5d71: $e5
    and $e7                                       ; $5d72: $e6 $e7
    ld a, [de]                                    ; $5d74: $1a
    add sp, $1a                                   ; $5d75: $e8 $1a
    jp hl                                         ; $5d77: $e9


    ld b, h                                       ; $5d78: $44
    ld [$eb1a], a                                 ; $5d79: $ea $1a $eb
    ld [$0a0a], sp                                ; $5d7c: $08 $0a $0a
    ld a, [bc]                                    ; $5d7f: $0a
    ld a, [bc]                                    ; $5d80: $0a
    ld a, [bc]                                    ; $5d81: $0a
    ld a, [bc]                                    ; $5d82: $0a
    ld a, [bc]                                    ; $5d83: $0a
    ld bc, $010a                                  ; $5d84: $01 $0a $01
    ld a, [bc]                                    ; $5d87: $0a
    ld bc, $010a                                  ; $5d88: $01 $0a $01
    add hl, bc                                    ; $5d8b: $09
    ld bc, $ab09                                  ; $5d8c: $01 $09 $ab
    db $ec                                        ; $5d8f: $ec
    db $ed                                        ; $5d90: $ed
    dec c                                         ; $5d91: $0d
    xor $ef                                       ; $5d92: $ee $ef
    ldh a, [$f1]                                  ; $5d94: $f0 $f1
    ld a, [c]                                     ; $5d96: $f2
    di                                            ; $5d97: $f3
    db $f4                                        ; $5d98: $f4
    push af                                       ; $5d99: $f5
    ld d, c                                       ; $5d9a: $51
    ld d, d                                       ; $5d9b: $52
    ld d, e                                       ; $5d9c: $53
    ld bc, $0a09                                  ; $5d9d: $01 $09 $0a
    ld a, [bc]                                    ; $5da0: $0a
    dec b                                         ; $5da1: $05
    add hl, bc                                    ; $5da2: $09
    ld a, [bc]                                    ; $5da3: $0a
    ld a, [bc]                                    ; $5da4: $0a
    add hl, bc                                    ; $5da5: $09
    dec c                                         ; $5da6: $0d
    add hl, bc                                    ; $5da7: $09
    add hl, bc                                    ; $5da8: $09
    add hl, bc                                    ; $5da9: $09
    ld bc, $0501                                  ; $5daa: $01 $01 $05
    or $f7                                        ; $5dad: $f6 $f7
    ld a, [de]                                    ; $5daf: $1a
    ld hl, sp+$1a                                 ; $5db0: $f8 $1a
    ld sp, hl                                     ; $5db2: $f9
    ld a, [$fcfb]                                 ; $5db3: $fa $fb $fc
    db $fd                                        ; $5db6: $fd
    ld c, h                                       ; $5db7: $4c
    ld c, l                                       ; $5db8: $4d
    jp z, Jump_08d_50cb                           ; $5db9: $ca $cb $50

    cp $09                                        ; $5dbc: $fe $09
    dec c                                         ; $5dbe: $0d
    ld bc, $010a                                  ; $5dbf: $01 $0a $01
    dec c                                         ; $5dc2: $0d
    add hl, bc                                    ; $5dc3: $09
    add hl, bc                                    ; $5dc4: $09
    add hl, bc                                    ; $5dc5: $09
    dec c                                         ; $5dc6: $0d
    dec b                                         ; $5dc7: $05
    ld bc, $0d0d                                  ; $5dc8: $01 $0d $0d
    ld bc, $1a09                                  ; $5dcb: $01 $09 $1a
    rst $38                                       ; $5dce: $ff
    ld a, [de]                                    ; $5dcf: $1a
    ld a, [de]                                    ; $5dd0: $1a
    and a                                         ; $5dd1: $a7
    ld c, e                                       ; $5dd2: $4b
    nop                                           ; $5dd3: $00
    ld bc, $024e                                  ; $5dd4: $01 $4e $02
    inc bc                                        ; $5dd7: $03
    db $10                                        ; $5dd8: $10
    inc b                                         ; $5dd9: $04
    ld h, [hl]                                    ; $5dda: $66
    dec b                                         ; $5ddb: $05
    ld b, $01                                     ; $5ddc: $06 $01
    ld a, [bc]                                    ; $5dde: $0a
    ld bc, $0d01                                  ; $5ddf: $01 $01 $0d
    dec b                                         ; $5de2: $05
    dec c                                         ; $5de3: $0d
    dec c                                         ; $5de4: $0d
    ld bc, $0909                                  ; $5de5: $01 $09 $09
    add d                                         ; $5de8: $82
    add hl, bc                                    ; $5de9: $09
    add d                                         ; $5dea: $82
    add hl, bc                                    ; $5deb: $09
    adc d                                         ; $5dec: $8a
    rlca                                          ; $5ded: $07
    ld a, [bc]                                    ; $5dee: $0a
    ld [$5a26], sp                                ; $5def: $08 $26 $5a
    ld c, $1a                                     ; $5df2: $0e $1a
    ld a, [de]                                    ; $5df4: $1a
    ld e, l                                       ; $5df5: $5d
    ld a, [de]                                    ; $5df6: $1a
    ld a, [de]                                    ; $5df7: $1a
    add hl, bc                                    ; $5df8: $09
    ld e, a                                       ; $5df9: $5f
    ld a, [de]                                    ; $5dfa: $1a
    ld h, $53                                     ; $5dfb: $26 $53
    dec c                                         ; $5dfd: $0d
    ld bc, $0109                                  ; $5dfe: $01 $09 $01
    dec b                                         ; $5e01: $05
    ld bc, $0101                                  ; $5e02: $01 $01 $01
    and d                                         ; $5e05: $a2
    ld bc, $0d01                                  ; $5e06: $01 $01 $0d
    and d                                         ; $5e09: $a2
    ld bc, $0505                                  ; $5e0a: $01 $05 $05
    db $e3                                        ; $5e0d: $e3
    db $e4                                        ; $5e0e: $e4
    jp nc, Jump_000_0ad1                          ; $5e0f: $d2 $d1 $0a

    dec bc                                        ; $5e12: $0b
    jp nc, Jump_000_0cd1                          ; $5e13: $d2 $d1 $0c

    dec c                                         ; $5e16: $0d
    jp nc, Jump_000_0ed1                          ; $5e17: $d2 $d1 $0e

    rrca                                          ; $5e1a: $0f
    jp nc, Jump_000_06d1                          ; $5e1b: $d2 $d1 $06

    ld b, $80                                     ; $5e1e: $06 $80
    add b                                         ; $5e20: $80
    ld c, $0e                                     ; $5e21: $0e $0e
    add b                                         ; $5e23: $80
    add b                                         ; $5e24: $80
    ld c, $0e                                     ; $5e25: $0e $0e
    add b                                         ; $5e27: $80
    add b                                         ; $5e28: $80
    ld c, $0e                                     ; $5e29: $0e $0e
    add b                                         ; $5e2b: $80
    add b                                         ; $5e2c: $80
    db $10                                        ; $5e2d: $10
    ld de, $d1d2                                  ; $5e2e: $11 $d2 $d1
    xor a                                         ; $5e31: $af
    dec d                                         ; $5e32: $15
    jp nc, Jump_000_12d1                          ; $5e33: $d2 $d1 $12

    inc de                                        ; $5e36: $13
    jp nc, $14d1                                  ; $5e37: $d2 $d1 $14

    xor h                                         ; $5e3a: $ac
    jp nc, Jump_000_0ed1                          ; $5e3b: $d2 $d1 $0e

    ld c, $80                                     ; $5e3e: $0e $80
    add b                                         ; $5e40: $80
    rrca                                          ; $5e41: $0f
    rlca                                          ; $5e42: $07
    add b                                         ; $5e43: $80
    add b                                         ; $5e44: $80
    add hl, bc                                    ; $5e45: $09

jr_08d_5e46:
    rrca                                          ; $5e46: $0f
    add b                                         ; $5e47: $80
    add b                                         ; $5e48: $80
    dec c                                         ; $5e49: $0d
    rrca                                          ; $5e4a: $0f
    add b                                         ; $5e4b: $80
    add b                                         ; $5e4c: $80
    dec d                                         ; $5e4d: $15
    ret z                                         ; $5e4e: $c8

    jp nc, Jump_000_16d1                          ; $5e4f: $d2 $d1 $16

    set 2, d                                      ; $5e52: $cb $d2
    pop de                                        ; $5e54: $d1
    ld b, l                                       ; $5e55: $45
    adc $d2                                       ; $5e56: $ce $d2
    pop de                                        ; $5e58: $d1
    xor a                                         ; $5e59: $af
    ld a, [de]                                    ; $5e5a: $1a
    jp nc, $0dd1                                  ; $5e5b: $d2 $d1 $0d

    rrca                                          ; $5e5e: $0f
    add b                                         ; $5e5f: $80
    add b                                         ; $5e60: $80
    add hl, bc                                    ; $5e61: $09
    rrca                                          ; $5e62: $0f
    add b                                         ; $5e63: $80
    add b                                         ; $5e64: $80
    ld bc, $800f                                  ; $5e65: $01 $0f $80
    add b                                         ; $5e68: $80
    add hl, bc                                    ; $5e69: $09
    rlca                                          ; $5e6a: $07
    add b                                         ; $5e6b: $80
    add b                                         ; $5e6c: $80
    ld h, $1a                                     ; $5e6d: $26 $1a
    jp nc, Jump_000_17d1                          ; $5e6f: $d2 $d1 $17

    jr jr_08d_5e46                                ; $5e72: $18 $d2

    pop de                                        ; $5e74: $d1
    rst $00                                       ; $5e75: $c7
    ret z                                         ; $5e76: $c8

    jp nc, $cad1                                  ; $5e77: $d2 $d1 $ca

    set 2, d                                      ; $5e7a: $cb $d2
    pop de                                        ; $5e7c: $d1
    ld h, c                                       ; $5e7d: $61
    rlca                                          ; $5e7e: $07
    add b                                         ; $5e7f: $80
    add b                                         ; $5e80: $80
    dec c                                         ; $5e81: $0d
    rrca                                          ; $5e82: $0f
    add b                                         ; $5e83: $80
    add b                                         ; $5e84: $80
    dec c                                         ; $5e85: $0d
    rrca                                          ; $5e86: $0f
    add b                                         ; $5e87: $80
    add b                                         ; $5e88: $80
    add hl, bc                                    ; $5e89: $09
    rrca                                          ; $5e8a: $0f
    add b                                         ; $5e8b: $80
    add b                                         ; $5e8c: $80
    inc l                                         ; $5e8d: $2c
    jp nz, $c4c3                                  ; $5e8e: $c2 $c3 $c4

    dec b                                         ; $5e91: $05
    ld b, $ae                                     ; $5e92: $06 $ae
    ld a, [de]                                    ; $5e94: $1a
    jr jr_08d_5eb0                                ; $5e95: $18 $19

    daa                                           ; $5e97: $27
    ld a, [de]                                    ; $5e98: $1a
    ld h, $26                                     ; $5e99: $26 $26
    ld a, [de]                                    ; $5e9b: $1a
    ld a, [de]                                    ; $5e9c: $1a
    rlca                                          ; $5e9d: $07
    add hl, bc                                    ; $5e9e: $09
    dec c                                         ; $5e9f: $0d
    add hl, bc                                    ; $5ea0: $09
    rlca                                          ; $5ea1: $07
    dec b                                         ; $5ea2: $05
    add hl, bc                                    ; $5ea3: $09
    ld bc, $0907                                  ; $5ea4: $01 $07 $09
    ld bc, $0701                                  ; $5ea7: $01 $01 $07
    ld bc, $0101                                  ; $5eaa: $01 $01 $01
    ld a, [de]                                    ; $5ead: $1a
    dec de                                        ; $5eae: $1b
    inc e                                         ; $5eaf: $1c

jr_08d_5eb0:
    ld a, [de]                                    ; $5eb0: $1a
    ld a, [de]                                    ; $5eb1: $1a
    ldh a, [$ef]                                  ; $5eb2: $f0 $ef
    ld a, [de]                                    ; $5eb4: $1a
    dec e                                         ; $5eb5: $1d
    dec e                                         ; $5eb6: $1d
    ld a, [de]                                    ; $5eb7: $1a
    ld a, [de]                                    ; $5eb8: $1a
    ld e, $1f                                     ; $5eb9: $1e $1f
    ld a, [de]                                    ; $5ebb: $1a
    jr nz, jr_08d_5ec7                            ; $5ebc: $20 $09

    ld a, [bc]                                    ; $5ebe: $0a
    adc d                                         ; $5ebf: $8a
    ld bc, $2a01                                  ; $5ec0: $01 $01 $2a
    ld a, [hl+]                                   ; $5ec3: $2a
    ld bc, $2b0b                                  ; $5ec4: $01 $0b $2b

jr_08d_5ec7:
    ld bc, $0b01                                  ; $5ec7: $01 $01 $0b
    dec bc                                        ; $5eca: $0b
    ld bc, $210b                                  ; $5ecb: $01 $0b $21
    ld [hl+], a                                   ; $5ece: $22
    inc hl                                        ; $5ecf: $23
    ld h, [hl]                                    ; $5ed0: $66
    inc h                                         ; $5ed1: $24
    dec h                                         ; $5ed2: $25
    ld a, [de]                                    ; $5ed3: $1a
    ld h, $f0                                     ; $5ed4: $26 $f0
    rst $28                                       ; $5ed6: $ef
    ld a, [de]                                    ; $5ed7: $1a
    daa                                           ; $5ed8: $27
    jr z, @+$1c                                   ; $5ed9: $28 $1a

    ld h, $f0                                     ; $5edb: $26 $f0
    adc d                                         ; $5edd: $8a
    adc d                                         ; $5ede: $8a
    add hl, bc                                    ; $5edf: $09
    add d                                         ; $5ee0: $82
    adc d                                         ; $5ee1: $8a
    adc d                                         ; $5ee2: $8a
    ld bc, $2a8a                                  ; $5ee3: $01 $8a $2a
    ld a, [hl+]                                   ; $5ee6: $2a
    ld bc, $0b8a                                  ; $5ee7: $01 $8a $0b
    ld bc, $2a61                                  ; $5eea: $01 $61 $2a
    pop de                                        ; $5eed: $d1
    pop de                                        ; $5eee: $d1
    pop de                                        ; $5eef: $d1
    jp nc, $d1d1                                  ; $5ef0: $d2 $d1 $d1

    pop de                                        ; $5ef3: $d1
    jp nc, Jump_000_29d1                          ; $5ef4: $d2 $d1 $29

    ld a, [hl+]                                   ; $5ef7: $2a
    dec hl                                        ; $5ef8: $2b
    pop de                                        ; $5ef9: $d1
    jp nc, $2cd3                                  ; $5efa: $d2 $d3 $2c

    add b                                         ; $5efd: $80
    add b                                         ; $5efe: $80
    add b                                         ; $5eff: $80
    add b                                         ; $5f00: $80
    add b                                         ; $5f01: $80
    add b                                         ; $5f02: $80
    add b                                         ; $5f03: $80
    add b                                         ; $5f04: $80
    add b                                         ; $5f05: $80
    adc b                                         ; $5f06: $88
    adc b                                         ; $5f07: $88
    adc b                                         ; $5f08: $88
    add b                                         ; $5f09: $80
    add b                                         ; $5f0a: $80
    ld b, $0e                                     ; $5f0b: $06 $0e
    daa                                           ; $5f0d: $27
    ld a, [de]                                    ; $5f0e: $1a
    ld a, [de]                                    ; $5f0f: $1a
    db $f4                                        ; $5f10: $f4
    ld a, [de]                                    ; $5f11: $1a
    ld a, [de]                                    ; $5f12: $1a
    dec l                                         ; $5f13: $2d
    ld d, e                                       ; $5f14: $53
    ld h, $2e                                     ; $5f15: $26 $2e
    jp Jump_000_2fc4                              ; $5f17: $c3 $c4 $2f


    ld b, $07                                     ; $5f1a: $06 $07
    ld [$0107], sp                                ; $5f1c: $08 $07 $01
    ld bc, $0709                                  ; $5f1f: $01 $09 $07
    ld bc, $0509                                  ; $5f22: $01 $09 $05
    ld b, a                                       ; $5f25: $47
    add hl, bc                                    ; $5f26: $09
    dec c                                         ; $5f27: $0d
    add hl, bc                                    ; $5f28: $09
    rrca                                          ; $5f29: $0f
    dec b                                         ; $5f2a: $05
    dec b                                         ; $5f2b: $05
    ld bc, $1afc                                  ; $5f2c: $01 $fc $1a
    ld h, $30                                     ; $5f2f: $26 $30
    jp z, $f531                                   ; $5f31: $ca $31 $f5

    ld d, c                                       ; $5f34: $51
    ld [hl-], a                                   ; $5f35: $32
    ld e, l                                       ; $5f36: $5d
    db $10                                        ; $5f37: $10
    inc sp                                        ; $5f38: $33
    inc d                                         ; $5f39: $14
    ld e, a                                       ; $5f3a: $5f
    ld h, b                                       ; $5f3b: $60
    ld a, [de]                                    ; $5f3c: $1a
    add hl, bc                                    ; $5f3d: $09
    ld bc, $2b61                                  ; $5f3e: $01 $61 $2b
    dec c                                         ; $5f41: $0d
    add hl, bc                                    ; $5f42: $09
    dec c                                         ; $5f43: $0d
    dec b                                         ; $5f44: $05
    dec c                                         ; $5f45: $0d
    add d                                         ; $5f46: $82
    and d                                         ; $5f47: $a2
    add hl, bc                                    ; $5f48: $09
    dec b                                         ; $5f49: $05
    add d                                         ; $5f4a: $82

jr_08d_5f4b:
    add d                                         ; $5f4b: $82
    ld bc, $2630                                  ; $5f4c: $01 $30 $26
    ld h, $1d                                     ; $5f4f: $26 $1d
    ld d, d                                       ; $5f51: $52
    ld h, $1a                                     ; $5f52: $26 $1a
    ld e, $34                                     ; $5f54: $1e $34
    ld h, $1a                                     ; $5f56: $26 $1a
    ld a, [de]                                    ; $5f58: $1a
    ld h, [hl]                                    ; $5f59: $66
    ld a, [de]                                    ; $5f5a: $1a
    ld a, [de]                                    ; $5f5b: $1a
    ld a, [de]                                    ; $5f5c: $1a
    dec bc                                        ; $5f5d: $0b
    ld bc, $0b61                                  ; $5f5e: $01 $61 $0b
    dec b                                         ; $5f61: $05
    ld h, c                                       ; $5f62: $61
    ld bc, $090b                                  ; $5f63: $01 $0b $09
    ld h, c                                       ; $5f66: $61
    ld bc, $a201                                  ; $5f67: $01 $01 $a2
    ld bc, $0101                                  ; $5f6a: $01 $01 $01
    pop de                                        ; $5f6d: $d1
    dec [hl]                                      ; $5f6e: $35
    add sp, $36                                   ; $5f6f: $e8 $36
    pop de                                        ; $5f71: $d1
    dec [hl]                                      ; $5f72: $35
    db $ec                                        ; $5f73: $ec
    scf                                           ; $5f74: $37
    pop de                                        ; $5f75: $d1
    dec [hl]                                      ; $5f76: $35
    rst $18                                       ; $5f77: $df
    jr c, jr_08d_5f4b                             ; $5f78: $38 $d1

    dec [hl]                                      ; $5f7a: $35
    ld bc, $8039                                  ; $5f7b: $01 $39 $80
    adc b                                         ; $5f7e: $88
    ld b, $0e                                     ; $5f7f: $06 $0e
    add b                                         ; $5f81: $80
    adc b                                         ; $5f82: $88
    ld b, $0e                                     ; $5f83: $06 $0e
    add b                                         ; $5f85: $80
    adc b                                         ; $5f86: $88
    ld b, $0e                                     ; $5f87: $06 $0e
    add b                                         ; $5f89: $80
    adc b                                         ; $5f8a: $88
    ld b, $0e                                     ; $5f8b: $06 $0e
    add hl, bc                                    ; $5f8d: $09
    ld a, [bc]                                    ; $5f8e: $0a
    dec bc                                        ; $5f8f: $0b
    inc c                                         ; $5f90: $0c
    dec c                                         ; $5f91: $0d
    ld c, c                                       ; $5f92: $49
    ld a, [hl-]                                   ; $5f93: $3a
    dec sp                                        ; $5f94: $3b
    ld c, h                                       ; $5f95: $4c
    ld c, l                                       ; $5f96: $4d
    inc a                                         ; $5f97: $3c
    ld h, $50                                     ; $5f98: $26 $50
    ld d, c                                       ; $5f9a: $51
    ld d, d                                       ; $5f9b: $52
    dec a                                         ; $5f9c: $3d
    rlca                                          ; $5f9d: $07
    ld bc, $0101                                  ; $5f9e: $01 $01 $01
    rlca                                          ; $5fa1: $07
    ld bc, $0909                                  ; $5fa2: $01 $09 $09
    rlca                                          ; $5fa5: $07
    ld bc, $0109                                  ; $5fa6: $01 $09 $01
    rlca                                          ; $5fa9: $07
    ld bc, $0901                                  ; $5faa: $01 $01 $09
    ld a, $1b                                     ; $5fad: $3e $1b
    inc e                                         ; $5faf: $1c
    ld a, [de]                                    ; $5fb0: $1a
    ld a, [de]                                    ; $5fb1: $1a
    ldh a, [$ef]                                  ; $5fb2: $f0 $ef
    ld a, [de]                                    ; $5fb4: $1a
    jr z, jr_08d_5fd7                             ; $5fb5: $28 $20

    ld a, [de]                                    ; $5fb7: $1a
    ld a, [de]                                    ; $5fb8: $1a
    jr nc, @+$32                                  ; $5fb9: $30 $30

    push af                                       ; $5fbb: $f5
    jr nz, jr_08d_5fc7                            ; $5fbc: $20 $09

    ld a, [bc]                                    ; $5fbe: $0a
    adc d                                         ; $5fbf: $8a
    ld bc, $2a01                                  ; $5fc0: $01 $01 $2a
    ld a, [hl+]                                   ; $5fc3: $2a
    ld bc, $2b2b                                  ; $5fc4: $01 $2b $2b

jr_08d_5fc7:
    ld bc, $2b01                                  ; $5fc7: $01 $01 $2b
    dec bc                                        ; $5fca: $0b
    add hl, bc                                    ; $5fcb: $09
    dec bc                                        ; $5fcc: $0b
    ld hl, $1a22                                  ; $5fcd: $21 $22 $1a
    ld h, [hl]                                    ; $5fd0: $66
    inc h                                         ; $5fd1: $24
    dec h                                         ; $5fd2: $25
    ld a, [de]                                    ; $5fd3: $1a
    ld h, $f0                                     ; $5fd4: $26 $f0
    rst $28                                       ; $5fd6: $ef

jr_08d_5fd7:
    ld a, [de]                                    ; $5fd7: $1a
    daa                                           ; $5fd8: $27
    jr z, jr_08d_5ff5                             ; $5fd9: $28 $1a

    ld a, [de]                                    ; $5fdb: $1a
    ldh a, [$8a]                                  ; $5fdc: $f0 $8a
    adc d                                         ; $5fde: $8a
    ld bc, $8a82                                  ; $5fdf: $01 $82 $8a
    adc d                                         ; $5fe2: $8a
    ld bc, $2a8a                                  ; $5fe3: $01 $8a $2a
    ld a, [hl+]                                   ; $5fe6: $2a
    ld bc, $0b8a                                  ; $5fe7: $01 $8a $0b
    ld bc, $2a01                                  ; $5fea: $01 $01 $2a
    ccf                                           ; $5fed: $3f
    dec [hl]                                      ; $5fee: $35
    call Call_000_3f46                            ; $5fef: $cd $46 $3f
    jp nc, $1514                                  ; $5ff2: $d2 $14 $15

jr_08d_5ff5:
    ccf                                           ; $5ff5: $3f
    ld b, b                                       ; $5ff6: $40
    ld a, [hl+]                                   ; $5ff7: $2a
    ld b, c                                       ; $5ff8: $41
    pop de                                        ; $5ff9: $d1
    pop de                                        ; $5ffa: $d1
    pop de                                        ; $5ffb: $d1
    jp nc, $8888                                  ; $5ffc: $d2 $88 $88

    rrca                                          ; $5fff: $0f
    rlca                                          ; $6000: $07
    adc b                                         ; $6001: $88
    add b                                         ; $6002: $80
    rlca                                          ; $6003: $07
    dec b                                         ; $6004: $05
    adc b                                         ; $6005: $88
    adc b                                         ; $6006: $88
    adc b                                         ; $6007: $88
    adc b                                         ; $6008: $88
    add b                                         ; $6009: $80
    add b                                         ; $600a: $80
    add b                                         ; $600b: $80
    add b                                         ; $600c: $80
    inc l                                         ; $600d: $2c
    jp nz, $c4c3                                  ; $600e: $c2 $c3 $c4

    dec b                                         ; $6011: $05
    ld b, $07                                     ; $6012: $06 $07
    ld [$0a09], sp                                ; $6014: $08 $09 $0a
    dec bc                                        ; $6017: $0b
    inc c                                         ; $6018: $0c
    dec c                                         ; $6019: $0d
    ld c, c                                       ; $601a: $49
    ld c, d                                       ; $601b: $4a
    ld c, e                                       ; $601c: $4b
    rlca                                          ; $601d: $07
    add hl, bc                                    ; $601e: $09
    add hl, bc                                    ; $601f: $09
    add hl, bc                                    ; $6020: $09
    ld bc, $0105                                  ; $6021: $01 $05 $01
    dec b                                         ; $6024: $05
    dec b                                         ; $6025: $05
    ld bc, $0105                                  ; $6026: $01 $05 $01
    dec b                                         ; $6029: $05
    ld bc, $0501                                  ; $602a: $01 $01 $05
    call $4246                                    ; $602d: $cd $46 $42
    rra                                           ; $6030: $1f
    inc d                                         ; $6031: $14
    dec d                                         ; $6032: $15
    dec b                                         ; $6033: $05
    and h                                         ; $6034: $a4
    ld [hl+], a                                   ; $6035: $22
    rla                                           ; $6036: $17
    add hl, bc                                    ; $6037: $09
    ld a, [bc]                                    ; $6038: $0a
    ld e, b                                       ; $6039: $58
    xor h                                         ; $603a: $ac
    dec c                                         ; $603b: $0d
    ld c, c                                       ; $603c: $49
    add hl, bc                                    ; $603d: $09
    ld bc, $2b09                                  ; $603e: $01 $09 $2b
    ld bc, $0101                                  ; $6041: $01 $01 $01
    add hl, bc                                    ; $6044: $09
    ld bc, $0105                                  ; $6045: $01 $05 $01
    ld bc, $0901                                  ; $6048: $01 $01 $09
    dec b                                         ; $604b: $05
    ld bc, $4443                                  ; $604c: $01 $43 $44
    ld b, l                                       ; $604f: $45
    ld b, [hl]                                    ; $6050: $46
    db $eb                                        ; $6051: $eb
    ld [$3014], sp                                ; $6052: $08 $14 $30
    dec bc                                        ; $6055: $0b
    inc c                                         ; $6056: $0c
    ld [hl+], a                                   ; $6057: $22
    rla                                           ; $6058: $17
    ld c, d                                       ; $6059: $4a
    ld c, e                                       ; $605a: $4b
    dec h                                         ; $605b: $25
    ld a, [de]                                    ; $605c: $1a
    dec hl                                        ; $605d: $2b
    add hl, bc                                    ; $605e: $09
    add hl, bc                                    ; $605f: $09
    dec hl                                        ; $6060: $2b
    add hl, bc                                    ; $6061: $09
    ld bc, $2b05                                  ; $6062: $01 $05 $2b
    ld bc, $0505                                  ; $6065: $01 $05 $05
    ld bc, $0505                                  ; $6068: $01 $05 $05
    ld bc, $1a01                                  ; $606b: $01 $01 $1a
    ld b, a                                       ; $606e: $47
    jp $48c4                                      ; $606f: $c3 $c4 $48


    ld a, [de]                                    ; $6072: $1a
    ld c, c                                       ; $6073: $49
    ld c, d                                       ; $6074: $4a
    ld c, e                                       ; $6075: $4b
    ld a, [de]                                    ; $6076: $1a
    ld c, h                                       ; $6077: $4c
    ld c, l                                       ; $6078: $4d
    rst $28                                       ; $6079: $ef
    ld a, [de]                                    ; $607a: $1a
    rst $28                                       ; $607b: $ef
    ldh a, [rSB]                                  ; $607c: $f0 $01
    add hl, bc                                    ; $607e: $09
    dec c                                         ; $607f: $0d
    dec c                                         ; $6080: $0d
    adc d                                         ; $6081: $8a
    ld bc, $8a8a                                  ; $6082: $01 $8a $8a
    adc d                                         ; $6085: $8a
    ld bc, $8a8a                                  ; $6086: $01 $8a $8a
    ld a, [hl+]                                   ; $6089: $2a
    ld bc, $0a0a                                  ; $608a: $01 $0a $0a
    call $66ce                                    ; $608d: $cd $ce $66
    ld a, [de]                                    ; $6090: $1a
    ld a, [de]                                    ; $6091: $1a
    ld c, [hl]                                    ; $6092: $4e
    ld h, $1a                                     ; $6093: $26 $1a
    ld a, [de]                                    ; $6095: $1a
    ld c, a                                       ; $6096: $4f
    daa                                           ; $6097: $27
    ld a, [de]                                    ; $6098: $1a
    ld a, [de]                                    ; $6099: $1a
    rst $28                                       ; $609a: $ef
    ldh a, [rNR30]                                ; $609b: $f0 $1a
    dec c                                         ; $609d: $0d
    add hl, bc                                    ; $609e: $09
    and d                                         ; $609f: $a2
    ld bc, $8a01                                  ; $60a0: $01 $01 $8a
    xor d                                         ; $60a3: $aa
    ld bc, $8a01                                  ; $60a4: $01 $01 $8a
    xor d                                         ; $60a7: $aa
    ld bc, $0a01                                  ; $60a8: $01 $01 $0a
    ld a, [bc]                                    ; $60ab: $0a
    ld bc, $2150                                  ; $60ac: $01 $50 $21
    ld a, [de]                                    ; $60af: $1a
    ld d, c                                       ; $60b0: $51
    ld d, d                                       ; $60b1: $52
    inc h                                         ; $60b2: $24
    ld a, [de]                                    ; $60b3: $1a
    rst $28                                       ; $60b4: $ef
    rst $28                                       ; $60b5: $ef
    ldh a, [rNR30]                                ; $60b6: $f0 $1a
    ld a, [de]                                    ; $60b8: $1a
    ld a, [de]                                    ; $60b9: $1a
    jr z, jr_08d_60dc                             ; $60ba: $28 $20

    ld a, [de]                                    ; $60bc: $1a
    adc d                                         ; $60bd: $8a
    xor d                                         ; $60be: $aa
    ld bc, $8a8a                                  ; $60bf: $01 $8a $8a
    xor d                                         ; $60c2: $aa
    ld bc, $0a0a                                  ; $60c3: $01 $0a $0a
    ld a, [bc]                                    ; $60c6: $0a
    ld bc, $0101                                  ; $60c7: $01 $01 $01
    dec hl                                        ; $60ca: $2b
    dec hl                                        ; $60cb: $2b
    ld bc, $531b                                  ; $60cc: $01 $1b $53
    ld d, h                                       ; $60cf: $54
    call nz, $1af0                                ; $60d0: $c4 $f0 $1a
    ld d, l                                       ; $60d3: $55
    ld [$2820], sp                                ; $60d4: $08 $20 $28
    ld a, [de]                                    ; $60d7: $1a
    inc c                                         ; $60d8: $0c
    jr nc, jr_08d_610b                            ; $60d9: $30 $30

    ld d, [hl]                                    ; $60db: $56

jr_08d_60dc:
    ld d, a                                       ; $60dc: $57
    ld a, [hl+]                                   ; $60dd: $2a
    add hl, bc                                    ; $60de: $09
    add hl, bc                                    ; $60df: $09
    dec c                                         ; $60e0: $0d
    ld a, [bc]                                    ; $60e1: $0a
    ld bc, $0109                                  ; $60e2: $01 $09 $01
    dec bc                                        ; $60e5: $0b
    dec bc                                        ; $60e6: $0b
    ld bc, $2b05                                  ; $60e7: $01 $05 $2b
    dec bc                                        ; $60ea: $0b
    add hl, hl                                    ; $60eb: $29
    add hl, bc                                    ; $60ec: $09
    dec e                                         ; $60ed: $1d
    ld a, [de]                                    ; $60ee: $1a
    jr nz, @+$2a                                  ; $60ef: $20 $28

    rra                                           ; $60f1: $1f
    ld a, [de]                                    ; $60f2: $1a
    jr nc, jr_08d_6125                            ; $60f3: $30 $30

    ld e, b                                       ; $60f5: $58
    jp nz, Jump_08d_4459                          ; $60f6: $c2 $59 $44

    ld e, d                                       ; $60f9: $5a
    ld b, $07                                     ; $60fa: $06 $07
    ld [$012b], sp                                ; $60fc: $08 $2b $01
    dec bc                                        ; $60ff: $0b
    dec bc                                        ; $6100: $0b
    dec bc                                        ; $6101: $0b
    ld bc, $0b2b                                  ; $6102: $01 $2b $0b
    add hl, bc                                    ; $6105: $09
    dec c                                         ; $6106: $0d
    add hl, bc                                    ; $6107: $09
    ld bc, $0509                                  ; $6108: $01 $09 $05

jr_08d_610b:
    dec b                                         ; $610b: $05
    dec b                                         ; $610c: $05
    ld a, [de]                                    ; $610d: $1a
    ld e, e                                       ; $610e: $5b
    ld b, [hl]                                    ; $610f: $46
    ld a, [de]                                    ; $6110: $1a
    ld a, [de]                                    ; $6111: $1a
    jr nc, jr_08d_6144                            ; $6112: $30 $30

    ld d, c                                       ; $6114: $51
    ld b, l                                       ; $6115: $45
    ld b, [hl]                                    ; $6116: $46
    inc l                                         ; $6117: $2c
    jp nz, Jump_08d_5c14                          ; $6118: $c2 $14 $5c

    ld e, l                                       ; $611b: $5d
    ld b, $01                                     ; $611c: $06 $01
    dec bc                                        ; $611e: $0b
    dec bc                                        ; $611f: $0b
    ld bc, $2b01                                  ; $6120: $01 $01 $2b
    dec bc                                        ; $6123: $0b
    dec b                                         ; $6124: $05

jr_08d_6125:
    ld bc, $0101                                  ; $6125: $01 $01 $01
    dec c                                         ; $6128: $0d
    ld bc, $0909                                  ; $6129: $01 $09 $09
    ld bc, $431a                                  ; $612c: $01 $1a $43
    rra                                           ; $612f: $1f
    ld a, [de]                                    ; $6130: $1a
    ld d, d                                       ; $6131: $52
    ld e, [hl]                                    ; $6132: $5e
    ld e, a                                       ; $6133: $5f
    ld h, b                                       ; $6134: $60
    jp Jump_000_32c4                              ; $6135: $c3 $c4 $32


    db $10                                        ; $6138: $10
    rlca                                          ; $6139: $07
    ld h, [hl]                                    ; $613a: $66
    ld b, a                                       ; $613b: $47
    ld b, $01                                     ; $613c: $06 $01
    dec bc                                        ; $613e: $0b
    dec bc                                        ; $613f: $0b
    ld bc, $0905                                  ; $6140: $01 $05 $09
    dec c                                         ; $6143: $0d

jr_08d_6144:
    add hl, bc                                    ; $6144: $09
    dec c                                         ; $6145: $0d
    dec c                                         ; $6146: $0d
    dec c                                         ; $6147: $0d
    add d                                         ; $6148: $82
    ld bc, $0182                                  ; $6149: $01 $82 $01
    adc d                                         ; $614c: $8a
    ld a, [de]                                    ; $614d: $1a
    ld a, [de]                                    ; $614e: $1a
    ld h, c                                       ; $614f: $61
    ld h, d                                       ; $6150: $62
    pop bc                                        ; $6151: $c1
    ld a, [de]                                    ; $6152: $1a
    ld a, [de]                                    ; $6153: $1a
    ld a, [de]                                    ; $6154: $1a
    ld e, l                                       ; $6155: $5d
    ld h, e                                       ; $6156: $63
    ld a, [de]                                    ; $6157: $1a
    ld a, [de]                                    ; $6158: $1a
    ld e, a                                       ; $6159: $5f
    ld a, [de]                                    ; $615a: $1a
    db $eb                                        ; $615b: $eb
    ld h, h                                       ; $615c: $64
    ld bc, $0d01                                  ; $615d: $01 $01 $0d
    dec c                                         ; $6160: $0d
    add hl, bc                                    ; $6161: $09
    ld bc, $0101                                  ; $6162: $01 $01 $01
    and d                                         ; $6165: $a2
    add hl, bc                                    ; $6166: $09
    ld bc, $a201                                  ; $6167: $01 $01 $a2
    ld bc, $0909                                  ; $616a: $01 $09 $09
    ld h, l                                       ; $616d: $65
    ld h, [hl]                                    ; $616e: $66
    ld hl, $480c                                  ; $616f: $21 $0c $48
    ld a, [de]                                    ; $6172: $1a
    ld c, c                                       ; $6173: $49
    ld c, d                                       ; $6174: $4a
    ld c, e                                       ; $6175: $4b
    ld a, [de]                                    ; $6176: $1a
    ld c, h                                       ; $6177: $4c
    ld c, l                                       ; $6178: $4d
    rst $28                                       ; $6179: $ef
    ld a, [de]                                    ; $617a: $1a
    rst $28                                       ; $617b: $ef
    ldh a, [$09]                                  ; $617c: $f0 $09
    add hl, bc                                    ; $617e: $09
    ld bc, $8a01                                  ; $617f: $01 $01 $8a
    ld bc, $8a8a                                  ; $6182: $01 $8a $8a
    adc d                                         ; $6185: $8a
    ld bc, $8a8a                                  ; $6186: $01 $8a $8a
    ld a, [hl+]                                   ; $6189: $2a
    ld bc, $0a0a                                  ; $618a: $01 $0a $0a
    ld [hl+], a                                   ; $618d: $22
    ld h, a                                       ; $618e: $67
    ld h, [hl]                                    ; $618f: $66
    ld l, b                                       ; $6190: $68
    ld a, [de]                                    ; $6191: $1a
    ld c, [hl]                                    ; $6192: $4e
    ld h, $1a                                     ; $6193: $26 $1a
    ld a, [de]                                    ; $6195: $1a
    ld c, a                                       ; $6196: $4f
    daa                                           ; $6197: $27
    ld a, [de]                                    ; $6198: $1a
    ld a, [de]                                    ; $6199: $1a
    rst $28                                       ; $619a: $ef
    ldh a, [rNR30]                                ; $619b: $f0 $1a
    ld bc, $a209                                  ; $619d: $01 $09 $a2
    add hl, bc                                    ; $61a0: $09
    ld bc, $aa8a                                  ; $61a1: $01 $8a $aa
    ld bc, $8a01                                  ; $61a4: $01 $01 $8a
    xor d                                         ; $61a7: $aa
    ld bc, $0a01                                  ; $61a8: $01 $01 $0a
    ld a, [bc]                                    ; $61ab: $0a
    ld bc, $261b                                  ; $61ac: $01 $1b $26
    ld hl, $f00c                                  ; $61af: $21 $0c $f0
    ld a, [de]                                    ; $61b2: $1a
    ld l, c                                       ; $61b3: $69
    ld l, d                                       ; $61b4: $6a
    dec e                                         ; $61b5: $1d
    dec e                                         ; $61b6: $1d
    ld h, $6b                                     ; $61b7: $26 $6b
    rra                                           ; $61b9: $1f
    ld e, $6c                                     ; $61ba: $1e $6c
    ld d, e                                       ; $61bc: $53
    ld a, [hl+]                                   ; $61bd: $2a
    ld bc, $0105                                  ; $61be: $01 $05 $01
    ld a, [bc]                                    ; $61c1: $0a
    ld bc, $0909                                  ; $61c2: $01 $09 $09
    dec bc                                        ; $61c5: $0b
    dec hl                                        ; $61c6: $2b
    ld bc, $2b09                                  ; $61c7: $01 $09 $2b
    dec hl                                        ; $61ca: $2b
    add hl, bc                                    ; $61cb: $09
    ld bc, $1a5b                                  ; $61cc: $01 $5b $1a
    jr z, jr_08d_61f1                             ; $61cf: $28 $20

    jr nc, jr_08d_61ed                            ; $61d1: $30 $1a

    jr nc, jr_08d_6205                            ; $61d3: $30 $30

    ld h, $1a                                     ; $61d5: $26 $1a
    ld a, [de]                                    ; $61d7: $1a
    ld l, l                                       ; $61d8: $6d
    ld a, [de]                                    ; $61d9: $1a
    and [hl]                                      ; $61da: $a6
    and a                                         ; $61db: $a7
    ld c, e                                       ; $61dc: $4b
    dec hl                                        ; $61dd: $2b
    ld bc, $2b2b                                  ; $61de: $01 $2b $2b
    dec bc                                        ; $61e1: $0b
    ld bc, $0b2b                                  ; $61e2: $01 $2b $0b
    ld bc, $0101                                  ; $61e5: $01 $01 $01
    add hl, bc                                    ; $61e8: $09
    ld bc, $0909                                  ; $61e9: $01 $09 $09
    dec b                                         ; $61ec: $05

jr_08d_61ed:
    ld a, [de]                                    ; $61ed: $1a
    dec e                                         ; $61ee: $1d
    dec e                                         ; $61ef: $1d
    ld a, [de]                                    ; $61f0: $1a

jr_08d_61f1:
    ld a, [de]                                    ; $61f1: $1a
    rra                                           ; $61f2: $1f
    ld e, $6e                                     ; $61f3: $1e $6e
    ld l, a                                       ; $61f5: $6f
    ld d, l                                       ; $61f6: $55
    ld d, [hl]                                    ; $61f7: $56
    ld a, [bc]                                    ; $61f8: $0a
    ld e, b                                       ; $61f9: $58
    xor h                                         ; $61fa: $ac
    dec c                                         ; $61fb: $0d
    ld c, c                                       ; $61fc: $49
    ld bc, $2b0b                                  ; $61fd: $01 $0b $2b
    ld bc, $2b01                                  ; $6200: $01 $01 $2b
    dec hl                                        ; $6203: $2b
    add hl, bc                                    ; $6204: $09

jr_08d_6205:
    add hl, bc                                    ; $6205: $09
    ld bc, $0101                                  ; $6206: $01 $01 $01
    dec b                                         ; $6209: $05
    add hl, bc                                    ; $620a: $09
    ld bc, $2605                                  ; $620b: $01 $05 $26
    jr nc, jr_08d_6240                            ; $620e: $30 $30

    ld [hl], b                                    ; $6210: $70
    db $eb                                        ; $6211: $eb
    ld [$1514], sp                                ; $6212: $08 $14 $15
    dec bc                                        ; $6215: $0b
    inc c                                         ; $6216: $0c
    ld [hl+], a                                   ; $6217: $22
    rla                                           ; $6218: $17
    ld c, d                                       ; $6219: $4a
    ld c, e                                       ; $621a: $4b
    ld e, b                                       ; $621b: $58
    xor h                                         ; $621c: $ac
    ld bc, $0b2b                                  ; $621d: $01 $2b $0b
    add hl, bc                                    ; $6220: $09
    add hl, bc                                    ; $6221: $09
    ld bc, $0505                                  ; $6222: $01 $05 $05
    ld bc, $0505                                  ; $6225: $01 $05 $05
    ld bc, $0505                                  ; $6228: $01 $05 $05
    ld bc, $2c0d                                  ; $622b: $01 $0d $2c
    jp nz, $c4c3                                  ; $622e: $c2 $c3 $c4

    dec b                                         ; $6231: $05
    ld b, $07                                     ; $6232: $06 $07
    ld [$0a09], sp                                ; $6234: $08 $09 $0a
    dec bc                                        ; $6237: $0b
    inc c                                         ; $6238: $0c
    dec c                                         ; $6239: $0d
    ld c, c                                       ; $623a: $49
    ld c, d                                       ; $623b: $4a
    ld c, e                                       ; $623c: $4b
    ld bc, $0d09                                  ; $623d: $01 $09 $0d

jr_08d_6240:
    dec c                                         ; $6240: $0d
    ld bc, $0505                                  ; $6241: $01 $05 $05
    ld bc, $0505                                  ; $6244: $01 $05 $05
    ld bc, $0501                                  ; $6247: $01 $01 $05
    ld bc, $0101                                  ; $624a: $01 $01 $01
    call $d246                                    ; $624d: $cd $46 $d2
    pop de                                        ; $6250: $d1
    inc d                                         ; $6251: $14
    dec d                                         ; $6252: $15
    jp nc, Jump_000_22d1                          ; $6253: $d2 $d1 $22

    rla                                           ; $6256: $17
    jp nc, $58d1                                  ; $6257: $d2 $d1 $58

    xor h                                         ; $625a: $ac
    jp nc, Jump_000_09d1                          ; $625b: $d2 $d1 $09

    rlca                                          ; $625e: $07
    add b                                         ; $625f: $80
    add b                                         ; $6260: $80

Call_08d_6261:
    dec b                                         ; $6261: $05
    rlca                                          ; $6262: $07

Call_08d_6263:
    add b                                         ; $6263: $80
    add b                                         ; $6264: $80
    dec b                                         ; $6265: $05
    rlca                                          ; $6266: $07
    add b                                         ; $6267: $80
    add b                                         ; $6268: $80
    dec b                                         ; $6269: $05
    rrca                                          ; $626a: $0f
    add b                                         ; $626b: $80
    add b                                         ; $626c: $80
    ld [hl], c                                    ; $626d: $71
    ret z                                         ; $626e: $c8

    jp nc, $26d1                                  ; $626f: $d2 $d1 $26

    set 2, d                                      ; $6272: $cb $d2
    pop de                                        ; $6274: $d1
    ld a, [de]                                    ; $6275: $1a
    ld h, $d2                                     ; $6276: $26 $d2
    pop de                                        ; $6278: $d1
    ld d, [hl]                                    ; $6279: $56
    ld a, [de]                                    ; $627a: $1a
    jp nc, $0dd1                                  ; $627b: $d2 $d1 $0d

    rrca                                          ; $627e: $0f
    add b                                         ; $627f: $80
    add b                                         ; $6280: $80
    ld h, c                                       ; $6281: $61
    rrca                                          ; $6282: $0f
    add b                                         ; $6283: $80
    add b                                         ; $6284: $80
    ld bc, $8007                                  ; $6285: $01 $07 $80
    add b                                         ; $6288: $80
    add hl, bc                                    ; $6289: $09
    rlca                                          ; $628a: $07
    add b                                         ; $628b: $80
    add b                                         ; $628c: $80
    ld [hl], d                                    ; $628d: $72
    ld [hl], e                                    ; $628e: $73
    jp nc, $58d1                                  ; $628f: $d2 $d1 $58

    ld [hl], h                                    ; $6292: $74
    jp nc, $c7d1                                  ; $6293: $d2 $d1 $c7

    ret z                                         ; $6296: $c8

    jp nc, $cad1                                  ; $6297: $d2 $d1 $ca

    set 2, d                                      ; $629a: $cb $d2
    pop de                                        ; $629c: $d1
    dec c                                         ; $629d: $0d
    rrca                                          ; $629e: $0f
    add b                                         ; $629f: $80
    add b                                         ; $62a0: $80
    dec b                                         ; $62a1: $05
    rrca                                          ; $62a2: $0f
    add b                                         ; $62a3: $80
    add b                                         ; $62a4: $80
    add hl, bc                                    ; $62a5: $09
    rrca                                          ; $62a6: $0f
    add b                                         ; $62a7: $80
    add b                                         ; $62a8: $80
    add hl, bc                                    ; $62a9: $09
    rrca                                          ; $62aa: $0f
    add b                                         ; $62ab: $80
    add b                                         ; $62ac: $80
    call $d246                                    ; $62ad: $cd $46 $d2
    pop de                                        ; $62b0: $d1
    inc d                                         ; $62b1: $14
    dec d                                         ; $62b2: $15
    jp nc, Jump_000_22d1                          ; $62b3: $d2 $d1 $22

    rla                                           ; $62b6: $17
    jp nc, $58d1                                  ; $62b7: $d2 $d1 $58

    xor h                                         ; $62ba: $ac
    jp nc, Jump_000_09d1                          ; $62bb: $d2 $d1 $09

    rlca                                          ; $62be: $07
    add b                                         ; $62bf: $80
    add b                                         ; $62c0: $80
    ld bc, $8007                                  ; $62c1: $01 $07 $80
    add b                                         ; $62c4: $80
    dec b                                         ; $62c5: $05
    rlca                                          ; $62c6: $07
    add b                                         ; $62c7: $80
    add b                                         ; $62c8: $80
    ld bc, $800f                                  ; $62c9: $01 $0f $80
    add b                                         ; $62cc: $80
    pop de                                        ; $62cd: $d1
    pop de                                        ; $62ce: $d1
    pop de                                        ; $62cf: $d1
    jp nc, $d1d1                                  ; $62d0: $d2 $d1 $d1

    pop de                                        ; $62d3: $d1
    ld b, b                                       ; $62d4: $40
    pop de                                        ; $62d5: $d1
    pop de                                        ; $62d6: $d1
    pop de                                        ; $62d7: $d1
    pop de                                        ; $62d8: $d1
    pop de                                        ; $62d9: $d1
    pop de                                        ; $62da: $d1
    pop de                                        ; $62db: $d1
    pop de                                        ; $62dc: $d1
    add b                                         ; $62dd: $80
    add b                                         ; $62de: $80
    add b                                         ; $62df: $80
    add b                                         ; $62e0: $80
    add b                                         ; $62e1: $80
    add b                                         ; $62e2: $80
    add b                                         ; $62e3: $80
    adc b                                         ; $62e4: $88
    add b                                         ; $62e5: $80
    add b                                         ; $62e6: $80
    add b                                         ; $62e7: $80
    add b                                         ; $62e8: $80
    add b                                         ; $62e9: $80
    add b                                         ; $62ea: $80
    add b                                         ; $62eb: $80
    add b                                         ; $62ec: $80
    ld c, h                                       ; $62ed: $4c
    ld c, l                                       ; $62ee: $4d
    ld c, [hl]                                    ; $62ef: $4e
    ld c, a                                       ; $62f0: $4f
    ld a, [hl+]                                   ; $62f1: $2a
    ld a, [hl+]                                   ; $62f2: $2a
    ld a, [hl+]                                   ; $62f3: $2a
    ld a, [hl+]                                   ; $62f4: $2a
    pop de                                        ; $62f5: $d1
    pop de                                        ; $62f6: $d1
    pop de                                        ; $62f7: $d1
    pop de                                        ; $62f8: $d1
    pop de                                        ; $62f9: $d1
    pop de                                        ; $62fa: $d1
    pop de                                        ; $62fb: $d1
    pop de                                        ; $62fc: $d1
    rlca                                          ; $62fd: $07
    ld bc, $0505                                  ; $62fe: $01 $05 $05
    adc b                                         ; $6301: $88
    adc b                                         ; $6302: $88
    adc b                                         ; $6303: $88
    adc b                                         ; $6304: $88
    add b                                         ; $6305: $80
    add b                                         ; $6306: $80
    add b                                         ; $6307: $80
    add b                                         ; $6308: $80
    add b                                         ; $6309: $80
    add b                                         ; $630a: $80
    add b                                         ; $630b: $80
    add b                                         ; $630c: $80
    rst $00                                       ; $630d: $c7
    ret z                                         ; $630e: $c8

    ld c, h                                       ; $630f: $4c
    ld c, l                                       ; $6310: $4d
    ld a, [hl+]                                   ; $6311: $2a
    ld a, [hl+]                                   ; $6312: $2a
    ld a, [hl+]                                   ; $6313: $2a
    ld a, [hl+]                                   ; $6314: $2a
    pop de                                        ; $6315: $d1
    pop de                                        ; $6316: $d1
    pop de                                        ; $6317: $d1
    pop de                                        ; $6318: $d1
    pop de                                        ; $6319: $d1
    pop de                                        ; $631a: $d1
    pop de                                        ; $631b: $d1
    pop de                                        ; $631c: $d1
    add hl, bc                                    ; $631d: $09
    add hl, bc                                    ; $631e: $09
    ld bc, $8805                                  ; $631f: $01 $05 $88
    adc b                                         ; $6322: $88
    adc b                                         ; $6323: $88
    adc b                                         ; $6324: $88
    add b                                         ; $6325: $80
    add b                                         ; $6326: $80
    add b                                         ; $6327: $80
    add b                                         ; $6328: $80
    add b                                         ; $6329: $80
    add b                                         ; $632a: $80
    add b                                         ; $632b: $80
    add b                                         ; $632c: $80
    ld c, [hl]                                    ; $632d: $4e
    ld [hl], l                                    ; $632e: $75
    ld h, $1a                                     ; $632f: $26 $1a
    ld a, [hl+]                                   ; $6331: $2a
    ld a, [hl+]                                   ; $6332: $2a
    ld a, [hl+]                                   ; $6333: $2a
    ld a, [hl+]                                   ; $6334: $2a
    pop de                                        ; $6335: $d1
    pop de                                        ; $6336: $d1
    pop de                                        ; $6337: $d1
    pop de                                        ; $6338: $d1
    pop de                                        ; $6339: $d1
    pop de                                        ; $633a: $d1
    pop de                                        ; $633b: $d1
    pop de                                        ; $633c: $d1
    dec b                                         ; $633d: $05
    add hl, bc                                    ; $633e: $09
    ld bc, $8801                                  ; $633f: $01 $01 $88
    adc b                                         ; $6342: $88
    adc b                                         ; $6343: $88
    adc b                                         ; $6344: $88
    add b                                         ; $6345: $80
    add b                                         ; $6346: $80
    add b                                         ; $6347: $80
    add b                                         ; $6348: $80
    add b                                         ; $6349: $80
    add b                                         ; $634a: $80
    add b                                         ; $634b: $80
    add b                                         ; $634c: $80
    halt                                          ; $634d: $76
    ld c, l                                       ; $634e: $4d
    ld c, [hl]                                    ; $634f: $4e
    ld c, a                                       ; $6350: $4f
    ld a, [hl+]                                   ; $6351: $2a
    ld a, [hl+]                                   ; $6352: $2a
    ld a, [hl+]                                   ; $6353: $2a
    ld a, [hl+]                                   ; $6354: $2a
    pop de                                        ; $6355: $d1
    pop de                                        ; $6356: $d1
    pop de                                        ; $6357: $d1
    pop de                                        ; $6358: $d1
    pop de                                        ; $6359: $d1
    pop de                                        ; $635a: $d1
    pop de                                        ; $635b: $d1
    pop de                                        ; $635c: $d1
    add hl, bc                                    ; $635d: $09
    ld bc, $0501                                  ; $635e: $01 $01 $05
    adc b                                         ; $6361: $88
    adc b                                         ; $6362: $88
    adc b                                         ; $6363: $88
    adc b                                         ; $6364: $88
    add b                                         ; $6365: $80
    add b                                         ; $6366: $80
    add b                                         ; $6367: $80
    add b                                         ; $6368: $80
    add b                                         ; $6369: $80
    add b                                         ; $636a: $80
    add b                                         ; $636b: $80
    add b                                         ; $636c: $80
    rst $00                                       ; $636d: $c7
    ret z                                         ; $636e: $c8

    ld c, h                                       ; $636f: $4c
    ld c, l                                       ; $6370: $4d
    ld a, [hl+]                                   ; $6371: $2a
    ld a, [hl+]                                   ; $6372: $2a
    ld a, [hl+]                                   ; $6373: $2a
    ld a, [hl+]                                   ; $6374: $2a
    pop de                                        ; $6375: $d1
    pop de                                        ; $6376: $d1
    pop de                                        ; $6377: $d1
    pop de                                        ; $6378: $d1
    pop de                                        ; $6379: $d1
    pop de                                        ; $637a: $d1
    pop de                                        ; $637b: $d1
    pop de                                        ; $637c: $d1
    add hl, bc                                    ; $637d: $09
    add hl, bc                                    ; $637e: $09
    dec b                                         ; $637f: $05
    dec b                                         ; $6380: $05
    adc b                                         ; $6381: $88
    adc b                                         ; $6382: $88
    adc b                                         ; $6383: $88
    adc b                                         ; $6384: $88
    add b                                         ; $6385: $80
    add b                                         ; $6386: $80
    add b                                         ; $6387: $80
    add b                                         ; $6388: $80
    add b                                         ; $6389: $80
    add b                                         ; $638a: $80
    add b                                         ; $638b: $80
    add b                                         ; $638c: $80
    ld c, [hl]                                    ; $638d: $4e
    ld c, a                                       ; $638e: $4f
    rst $00                                       ; $638f: $c7
    ret z                                         ; $6390: $c8

    ld a, [hl+]                                   ; $6391: $2a
    ld a, [hl+]                                   ; $6392: $2a
    ld a, [hl+]                                   ; $6393: $2a
    ld a, [hl+]                                   ; $6394: $2a
    pop de                                        ; $6395: $d1
    pop de                                        ; $6396: $d1
    pop de                                        ; $6397: $d1
    pop de                                        ; $6398: $d1
    pop de                                        ; $6399: $d1
    pop de                                        ; $639a: $d1
    pop de                                        ; $639b: $d1
    pop de                                        ; $639c: $d1
    ld bc, $0901                                  ; $639d: $01 $01 $09
    dec c                                         ; $63a0: $0d
    adc b                                         ; $63a1: $88
    adc b                                         ; $63a2: $88
    adc b                                         ; $63a3: $88
    adc b                                         ; $63a4: $88
    add b                                         ; $63a5: $80
    add b                                         ; $63a6: $80
    add b                                         ; $63a7: $80
    add b                                         ; $63a8: $80
    add b                                         ; $63a9: $80
    add b                                         ; $63aa: $80
    add b                                         ; $63ab: $80
    add b                                         ; $63ac: $80
    ld c, h                                       ; $63ad: $4c
    ld c, l                                       ; $63ae: $4d
    ld c, [hl]                                    ; $63af: $4e
    ld c, a                                       ; $63b0: $4f
    ld a, [hl+]                                   ; $63b1: $2a
    ld a, [hl+]                                   ; $63b2: $2a
    ld a, [hl+]                                   ; $63b3: $2a
    ld a, [hl+]                                   ; $63b4: $2a
    pop de                                        ; $63b5: $d1
    pop de                                        ; $63b6: $d1
    pop de                                        ; $63b7: $d1
    pop de                                        ; $63b8: $d1
    pop de                                        ; $63b9: $d1
    pop de                                        ; $63ba: $d1
    pop de                                        ; $63bb: $d1
    pop de                                        ; $63bc: $d1
    dec b                                         ; $63bd: $05
    dec b                                         ; $63be: $05
    dec b                                         ; $63bf: $05
    ld bc, $8888                                  ; $63c0: $01 $88 $88
    adc b                                         ; $63c3: $88
    adc b                                         ; $63c4: $88
    add b                                         ; $63c5: $80
    add b                                         ; $63c6: $80
    add b                                         ; $63c7: $80
    add b                                         ; $63c8: $80
    add b                                         ; $63c9: $80
    add b                                         ; $63ca: $80
    add b                                         ; $63cb: $80
    add b                                         ; $63cc: $80
    rst $00                                       ; $63cd: $c7
    ret z                                         ; $63ce: $c8

    jp nc, $2ad1                                  ; $63cf: $d2 $d1 $2a

    ld a, [hl+]                                   ; $63d2: $2a
    dec hl                                        ; $63d3: $2b
    pop de                                        ; $63d4: $d1
    pop de                                        ; $63d5: $d1
    pop de                                        ; $63d6: $d1
    pop de                                        ; $63d7: $d1
    pop de                                        ; $63d8: $d1
    pop de                                        ; $63d9: $d1
    pop de                                        ; $63da: $d1
    pop de                                        ; $63db: $d1
    pop de                                        ; $63dc: $d1
    add hl, bc                                    ; $63dd: $09
    rrca                                          ; $63de: $0f
    add b                                         ; $63df: $80
    add b                                         ; $63e0: $80
    adc b                                         ; $63e1: $88
    adc b                                         ; $63e2: $88
    adc b                                         ; $63e3: $88
    add b                                         ; $63e4: $80
    add b                                         ; $63e5: $80
    add b                                         ; $63e6: $80
    add b                                         ; $63e7: $80
    add b                                         ; $63e8: $80
    add b                                         ; $63e9: $80
    add b                                         ; $63ea: $80
    add b                                         ; $63eb: $80
    add b                                         ; $63ec: $80
    ld [$0900], sp                                ; $63ed: $08 $00 $09
    nop                                           ; $63f0: $00
    add b                                         ; $63f1: $80
    ld [$d2d1], sp                                ; $63f2: $08 $d1 $d2
    db $d3                                        ; $63f5: $d3
    call nc, $d2d1                                ; $63f6: $d4 $d1 $d2
    push de                                       ; $63f9: $d5
    sub $d1                                       ; $63fa: $d6 $d1
    jp nc, $d8d7                                  ; $63fc: $d2 $d7 $d8

    pop de                                        ; $63ff: $d1
    jp nc, $dad9                                  ; $6400: $d2 $d9 $da

    add b                                         ; $6403: $80
    add b                                         ; $6404: $80
    inc b                                         ; $6405: $04
    inc b                                         ; $6406: $04
    add b                                         ; $6407: $80
    add b                                         ; $6408: $80
    inc b                                         ; $6409: $04
    inc b                                         ; $640a: $04
    add b                                         ; $640b: $80
    add b                                         ; $640c: $80
    inc b                                         ; $640d: $04
    inc b                                         ; $640e: $04
    add b                                         ; $640f: $80
    add b                                         ; $6410: $80
    inc b                                         ; $6411: $04
    inc b                                         ; $6412: $04
    db $d3                                        ; $6413: $d3
    db $db                                        ; $6414: $db
    call c, $ddd4                                 ; $6415: $dc $d4 $dd
    sbc $df                                       ; $6418: $de $df
    ldh [$e1], a                                  ; $641a: $e0 $e1
    ld [c], a                                     ; $641c: $e2
    db $e3                                        ; $641d: $e3
    db $e4                                        ; $641e: $e4
    push hl                                       ; $641f: $e5
    and $e7                                       ; $6420: $e6 $e7
    add sp, $04                                   ; $6422: $e8 $04
    inc b                                         ; $6424: $04
    inc b                                         ; $6425: $04
    inc b                                         ; $6426: $04
    ld bc, $0101                                  ; $6427: $01 $01 $01
    ld bc, $0101                                  ; $642a: $01 $01 $01
    ld bc, $0101                                  ; $642d: $01 $01 $01
    ld bc, $0101                                  ; $6430: $01 $01 $01
    db $d3                                        ; $6433: $d3
    jp hl                                         ; $6434: $e9


    db $db                                        ; $6435: $db
    call c, $ebea                                 ; $6436: $dc $ea $eb
    db $ec                                        ; $6439: $ec
    db $ed                                        ; $643a: $ed
    xor $ef                                       ; $643b: $ee $ef
    ldh a, [$f1]                                  ; $643d: $f0 $f1
    ld a, [c]                                     ; $643f: $f2
    di                                            ; $6440: $f3
    db $f4                                        ; $6441: $f4
    push af                                       ; $6442: $f5
    inc b                                         ; $6443: $04
    inc b                                         ; $6444: $04
    inc b                                         ; $6445: $04
    inc b                                         ; $6446: $04
    ld bc, $0304                                  ; $6447: $01 $04 $03
    inc bc                                        ; $644a: $03
    ld bc, $0304                                  ; $644b: $01 $04 $03
    inc bc                                        ; $644e: $03
    ld bc, $0304                                  ; $644f: $01 $04 $03
    inc bc                                        ; $6452: $03
    call nc, $dbd3                                ; $6453: $d4 $d3 $db
    call c, $f7f6                                 ; $6456: $dc $f6 $f7
    ld hl, sp-$07                                 ; $6459: $f8 $f9
    ld a, [$fcfb]                                 ; $645b: $fa $fb $fc
    db $fd                                        ; $645e: $fd
    cp $ff                                        ; $645f: $fe $ff
    nop                                           ; $6461: $00
    reti                                          ; $6462: $d9


    inc b                                         ; $6463: $04
    inc b                                         ; $6464: $04
    inc b                                         ; $6465: $04
    inc b                                         ; $6466: $04
    inc bc                                        ; $6467: $03
    inc bc                                        ; $6468: $03
    inc b                                         ; $6469: $04
    inc b                                         ; $646a: $04
    inc bc                                        ; $646b: $03
    inc bc                                        ; $646c: $03
    inc b                                         ; $646d: $04
    inc b                                         ; $646e: $04
    inc bc                                        ; $646f: $03
    inc bc                                        ; $6470: $03
    inc b                                         ; $6471: $04
    inc b                                         ; $6472: $04
    pop de                                        ; $6473: $d1
    jp nc, $0201                                  ; $6474: $d2 $01 $02

    pop de                                        ; $6477: $d1
    jp nc, $0403                                  ; $6478: $d2 $03 $04

    pop de                                        ; $647b: $d1
    jp nc, $0605                                  ; $647c: $d2 $05 $06

    pop de                                        ; $647f: $d1
    jp nc, Jump_000_0807                          ; $6480: $d2 $07 $08

    add b                                         ; $6483: $80
    add b                                         ; $6484: $80
    inc b                                         ; $6485: $04
    inc b                                         ; $6486: $04
    add b                                         ; $6487: $80
    add b                                         ; $6488: $80
    rlca                                          ; $6489: $07
    rlca                                          ; $648a: $07
    add b                                         ; $648b: $80
    add b                                         ; $648c: $80
    rlca                                          ; $648d: $07
    ld b, $80                                     ; $648e: $06 $80
    add b                                         ; $6490: $80
    rlca                                          ; $6491: $07
    dec b                                         ; $6492: $05
    add hl, bc                                    ; $6493: $09
    ld a, [bc]                                    ; $6494: $0a
    dec bc                                        ; $6495: $0b
    ld a, [bc]                                    ; $6496: $0a
    add hl, bc                                    ; $6497: $09
    inc c                                         ; $6498: $0c
    dec c                                         ; $6499: $0d
    ld c, $0f                                     ; $649a: $0e $0f
    db $10                                        ; $649c: $10
    ld de, $1312                                  ; $649d: $11 $12 $13
    inc d                                         ; $64a0: $14
    dec d                                         ; $64a1: $15
    ld d, $01                                     ; $64a2: $16 $01
    ld bc, $2101                                  ; $64a4: $01 $01 $21
    ld bc, $0101                                  ; $64a7: $01 $01 $01
    ld bc, $0101                                  ; $64aa: $01 $01 $01
    ld bc, $0701                                  ; $64ad: $01 $01 $07
    rlca                                          ; $64b0: $07
    rlca                                          ; $64b1: $07
    rlca                                          ; $64b2: $07
    rla                                           ; $64b3: $17
    jr jr_08d_64cf                                ; $64b4: $18 $19

    ld a, [de]                                    ; $64b6: $1a
    rla                                           ; $64b7: $17
    dec de                                        ; $64b8: $1b
    inc e                                         ; $64b9: $1c
    dec e                                         ; $64ba: $1d
    ld e, $1f                                     ; $64bb: $1e $1f
    jr nz, jr_08d_64e0                            ; $64bd: $20 $21

    ld [hl+], a                                   ; $64bf: $22
    inc hl                                        ; $64c0: $23
    inc h                                         ; $64c1: $24
    dec h                                         ; $64c2: $25
    ld bc, $0404                                  ; $64c3: $01 $04 $04
    inc b                                         ; $64c6: $04
    ld bc, $0707                                  ; $64c7: $01 $07 $07
    rlca                                          ; $64ca: $07
    ld bc, $0607                                  ; $64cb: $01 $07 $06
    dec b                                         ; $64ce: $05

jr_08d_64cf:
    rlca                                          ; $64cf: $07
    rlca                                          ; $64d0: $07
    dec b                                         ; $64d1: $05
    dec b                                         ; $64d2: $05
    ld h, $27                                     ; $64d3: $26 $27
    jr z, jr_08d_6500                             ; $64d5: $28 $29

    ld a, [hl+]                                   ; $64d7: $2a
    dec hl                                        ; $64d8: $2b
    inc bc                                        ; $64d9: $03
    inc b                                         ; $64da: $04
    inc l                                         ; $64db: $2c
    dec l                                         ; $64dc: $2d
    dec b                                         ; $64dd: $05
    ld b, $2e                                     ; $64de: $06 $2e

jr_08d_64e0:
    cpl                                           ; $64e0: $2f
    rlca                                          ; $64e1: $07
    ld [$0404], sp                                ; $64e2: $08 $04 $04
    inc b                                         ; $64e5: $04
    inc b                                         ; $64e6: $04
    rlca                                          ; $64e7: $07
    rlca                                          ; $64e8: $07
    rlca                                          ; $64e9: $07
    rlca                                          ; $64ea: $07
    dec b                                         ; $64eb: $05
    ld b, $06                                     ; $64ec: $06 $06
    ld b, $06                                     ; $64ee: $06 $06
    dec b                                         ; $64f0: $05
    dec b                                         ; $64f1: $05
    dec b                                         ; $64f2: $05
    pop de                                        ; $64f3: $d1
    jp nc, Jump_000_3130                          ; $64f4: $d2 $30 $31

    pop de                                        ; $64f7: $d1
    jp nc, $2c32                                  ; $64f8: $d2 $32 $2c

    pop de                                        ; $64fb: $d1
    jp nc, $2e33                                  ; $64fc: $d2 $33 $2e

    pop de                                        ; $64ff: $d1

jr_08d_6500:
    jp nc, Jump_000_3534                          ; $6500: $d2 $34 $35

    add b                                         ; $6503: $80
    add b                                         ; $6504: $80
    rlca                                          ; $6505: $07
    ld b, $80                                     ; $6506: $06 $80
    add b                                         ; $6508: $80
    rlca                                          ; $6509: $07
    ld b, $80                                     ; $650a: $06 $80
    add b                                         ; $650c: $80
    rlca                                          ; $650d: $07
    dec b                                         ; $650e: $05
    add b                                         ; $650f: $80
    add b                                         ; $6510: $80
    rlca                                          ; $6511: $07
    ld b, $36                                     ; $6512: $06 $36
    scf                                           ; $6514: $37
    jr c, jr_08d_6550                             ; $6515: $38 $39

    dec l                                         ; $6517: $2d
    ld a, [hl-]                                   ; $6518: $3a
    rra                                           ; $6519: $1f
    jr nz, @+$31                                  ; $651a: $20 $2f

    dec sp                                        ; $651c: $3b
    inc a                                         ; $651d: $3c
    dec a                                         ; $651e: $3d
    ld a, $3f                                     ; $651f: $3e $3f
    ld b, b                                       ; $6521: $40

Jump_08d_6522:
    ld b, c                                       ; $6522: $41
    ld b, $05                                     ; $6523: $06 $05
    dec b                                         ; $6525: $05
    ld b, $05                                     ; $6526: $06 $05
    dec b                                         ; $6528: $05
    ld b, $05                                     ; $6529: $06 $05
    dec b                                         ; $652b: $05
    ld b, $06                                     ; $652c: $06 $06
    ld b, $06                                     ; $652e: $06 $06
    add h                                         ; $6530: $84
    add h                                         ; $6531: $84
    add h                                         ; $6532: $84
    ld b, d                                       ; $6533: $42
    ld b, e                                       ; $6534: $43
    ld b, h                                       ; $6535: $44
    ld b, l                                       ; $6536: $45
    ld b, [hl]                                    ; $6537: $46
    ld b, a                                       ; $6538: $47
    ld c, b                                       ; $6539: $48
    ld c, c                                       ; $653a: $49
    ld c, d                                       ; $653b: $4a
    dec d                                         ; $653c: $15
    ld d, $4b                                     ; $653d: $16 $4b
    ld c, h                                       ; $653f: $4c
    ld c, l                                       ; $6540: $4d
    ld c, [hl]                                    ; $6541: $4e
    ld c, a                                       ; $6542: $4f
    ld b, $06                                     ; $6543: $06 $06
    dec b                                         ; $6545: $05
    ld b, $06                                     ; $6546: $06 $06
    ld b, $05                                     ; $6548: $06 $05
    ld b, $05                                     ; $654a: $06 $05
    ld b, $05                                     ; $654c: $06 $05
    ld b, $05                                     ; $654e: $06 $05

jr_08d_6550:
    ld b, $05                                     ; $6550: $06 $05
    ld b, $50                                     ; $6552: $06 $50
    ld d, c                                       ; $6554: $51
    jr nc, jr_08d_6588                            ; $6555: $30 $31

    ld d, d                                       ; $6557: $52
    ld d, e                                       ; $6558: $53
    ld d, h                                       ; $6559: $54
    ld d, l                                       ; $655a: $55
    ld d, [hl]                                    ; $655b: $56
    ld d, a                                       ; $655c: $57
    ld e, b                                       ; $655d: $58
    ld e, c                                       ; $655e: $59
    ld e, d                                       ; $655f: $5a
    ld e, e                                       ; $6560: $5b
    ld e, e                                       ; $6561: $5b
    ld e, e                                       ; $6562: $5b
    ld b, $06                                     ; $6563: $06 $06
    dec b                                         ; $6565: $05
    ld b, $01                                     ; $6566: $06 $01
    inc bc                                        ; $6568: $03
    inc bc                                        ; $6569: $03
    inc bc                                        ; $656a: $03
    ld bc, $0303                                  ; $656b: $01 $03 $03
    inc bc                                        ; $656e: $03
    ld bc, $0101                                  ; $656f: $01 $01 $01
    ld bc, $d2d1                                  ; $6572: $01 $d1 $d2
    ld e, h                                       ; $6575: $5c
    rra                                           ; $6576: $1f
    pop de                                        ; $6577: $d1
    jp nc, Jump_000_2322                          ; $6578: $d2 $22 $23

    pop de                                        ; $657b: $d1
    jp nc, $0403                                  ; $657c: $d2 $03 $04

    pop de                                        ; $657f: $d1
    jp nc, $0605                                  ; $6580: $d2 $05 $06

    add b                                         ; $6583: $80
    add b                                         ; $6584: $80
    rlca                                          ; $6585: $07
    dec b                                         ; $6586: $05
    add b                                         ; $6587: $80

jr_08d_6588:
    add b                                         ; $6588: $80
    rlca                                          ; $6589: $07
    dec b                                         ; $658a: $05
    add b                                         ; $658b: $80
    add b                                         ; $658c: $80
    rlca                                          ; $658d: $07
    ld b, $80                                     ; $658e: $06 $80
    add b                                         ; $6590: $80
    rlca                                          ; $6591: $07
    ld b, $5d                                     ; $6592: $06 $5d
    ld e, [hl]                                    ; $6594: $5e
    ld e, a                                       ; $6595: $5f
    ld e, [hl]                                    ; $6596: $5e
    ld h, b                                       ; $6597: $60
    ld h, c                                       ; $6598: $61
    ld h, d                                       ; $6599: $62
    ld h, c                                       ; $659a: $61
    ld h, e                                       ; $659b: $63
    ld h, h                                       ; $659c: $64
    ld h, l                                       ; $659d: $65
    ld h, h                                       ; $659e: $64
    ld h, [hl]                                    ; $659f: $66
    ld h, a                                       ; $65a0: $67
    ld l, b                                       ; $65a1: $68
    ld l, c                                       ; $65a2: $69
    dec b                                         ; $65a3: $05
    add h                                         ; $65a4: $84
    add h                                         ; $65a5: $84
    and h                                         ; $65a6: $a4
    ld b, $04                                     ; $65a7: $06 $04
    inc b                                         ; $65a9: $04
    inc h                                         ; $65aa: $24
    ld b, $04                                     ; $65ab: $06 $04
    inc b                                         ; $65ad: $04
    inc h                                         ; $65ae: $24
    ld b, $04                                     ; $65af: $06 $04
    inc b                                         ; $65b1: $04
    inc b                                         ; $65b2: $04
    ld l, d                                       ; $65b3: $6a
    ld b, $6b                                     ; $65b4: $06 $6b
    ld l, h                                       ; $65b6: $6c
    ld l, l                                       ; $65b7: $6d
    ld [$1413], sp                                ; $65b8: $08 $13 $14
    ld l, [hl]                                    ; $65bb: $6e
    dec de                                        ; $65bc: $1b
    inc e                                         ; $65bd: $1c
    dec e                                         ; $65be: $1d
    ld l, a                                       ; $65bf: $6f
    rra                                           ; $65c0: $1f
    jr nz, jr_08d_65e4                            ; $65c1: $20 $21

    dec b                                         ; $65c3: $05
    ld b, $06                                     ; $65c4: $06 $06
    ld b, $06                                     ; $65c6: $06 $06
    dec b                                         ; $65c8: $05
    dec b                                         ; $65c9: $05
    ld b, $06                                     ; $65ca: $06 $06
    ld b, $05                                     ; $65cc: $06 $05
    ld b, $06                                     ; $65ce: $06 $06
    ld b, $05                                     ; $65d0: $06 $05
    ld b, $70                                     ; $65d2: $06 $70

Call_08d_65d4:
    ld [hl], c                                    ; $65d4: $71
    ld [hl], d                                    ; $65d5: $72
    ld [hl], e                                    ; $65d6: $73
    ld [hl], h                                    ; $65d7: $74
    ld [hl], l                                    ; $65d8: $75
    halt                                          ; $65d9: $76
    ld [hl], a                                    ; $65da: $77
    ld a, [hl+]                                   ; $65db: $2a
    dec hl                                        ; $65dc: $2b
    inc bc                                        ; $65dd: $03
    inc b                                         ; $65de: $04
    inc l                                         ; $65df: $2c
    dec l                                         ; $65e0: $2d
    dec b                                         ; $65e1: $05
    ld b, $01                                     ; $65e2: $06 $01

jr_08d_65e4:
    ld bc, $0101                                  ; $65e4: $01 $01 $01
    ld bc, $0101                                  ; $65e7: $01 $01 $01
    ld bc, $0707                                  ; $65ea: $01 $07 $07
    rlca                                          ; $65ed: $07
    rlca                                          ; $65ee: $07
    dec b                                         ; $65ef: $05
    dec b                                         ; $65f0: $05
    ld b, $06                                     ; $65f1: $06 $06
    call nc, $dbd3                                ; $65f3: $d4 $d3 $db
    call c, $7978                                 ; $65f6: $dc $78 $79
    ld a, d                                       ; $65f9: $7a
    ld a, e                                       ; $65fa: $7b
    ld a, h                                       ; $65fb: $7c
    ld a, l                                       ; $65fc: $7d
    ld a, [hl]                                    ; $65fd: $7e
    ld a, a                                       ; $65fe: $7f
    add b                                         ; $65ff: $80
    add c                                         ; $6600: $81
    add d                                         ; $6601: $82
    add e                                         ; $6602: $83
    inc b                                         ; $6603: $04
    inc b                                         ; $6604: $04
    inc b                                         ; $6605: $04
    inc b                                         ; $6606: $04
    ld [bc], a                                    ; $6607: $02
    ld [bc], a                                    ; $6608: $02
    ld [bc], a                                    ; $6609: $02
    ld [bc], a                                    ; $660a: $02
    ld [bc], a                                    ; $660b: $02
    ld [bc], a                                    ; $660c: $02
    ld [bc], a                                    ; $660d: $02
    ld [bc], a                                    ; $660e: $02
    ld a, [bc]                                    ; $660f: $0a
    ld a, [bc]                                    ; $6610: $0a
    ld a, [bc]                                    ; $6611: $0a
    ld a, [bc]                                    ; $6612: $0a
    call nc, $84d3                                ; $6613: $d4 $d3 $84
    add l                                         ; $6616: $85
    add [hl]                                      ; $6617: $86
    push de                                       ; $6618: $d5
    add a                                         ; $6619: $87
    adc b                                         ; $661a: $88
    adc c                                         ; $661b: $89
    rst $10                                       ; $661c: $d7
    adc d                                         ; $661d: $8a
    adc e                                         ; $661e: $8b
    nop                                           ; $661f: $00
    reti                                          ; $6620: $d9


    adc h                                         ; $6621: $8c
    adc l                                         ; $6622: $8d
    inc b                                         ; $6623: $04
    inc b                                         ; $6624: $04
    dec bc                                        ; $6625: $0b
    dec bc                                        ; $6626: $0b
    inc c                                         ; $6627: $0c
    inc b                                         ; $6628: $04
    dec bc                                        ; $6629: $0b
    dec bc                                        ; $662a: $0b
    inc c                                         ; $662b: $0c
    inc b                                         ; $662c: $04
    dec bc                                        ; $662d: $0b
    dec bc                                        ; $662e: $0b
    inc b                                         ; $662f: $04
    inc b                                         ; $6630: $04
    dec bc                                        ; $6631: $0b
    dec bc                                        ; $6632: $0b
    adc [hl]                                      ; $6633: $8e
    adc a                                         ; $6634: $8f
    db $db                                        ; $6635: $db
    call c, $9190                                 ; $6636: $dc $90 $91
    sub d                                         ; $6639: $92
    ld sp, hl                                     ; $663a: $f9
    sub e                                         ; $663b: $93
    sub h                                         ; $663c: $94
    sub l                                         ; $663d: $95
    db $fd                                        ; $663e: $fd
    sub [hl]                                      ; $663f: $96
    nop                                           ; $6640: $00
    reti                                          ; $6641: $d9


    reti                                          ; $6642: $d9


    dec bc                                        ; $6643: $0b
    inc c                                         ; $6644: $0c
    inc b                                         ; $6645: $04
    inc b                                         ; $6646: $04
    dec bc                                        ; $6647: $0b
    inc c                                         ; $6648: $0c
    inc c                                         ; $6649: $0c
    inc b                                         ; $664a: $04
    dec bc                                        ; $664b: $0b
    inc c                                         ; $664c: $0c
    inc c                                         ; $664d: $0c
    inc b                                         ; $664e: $04
    dec bc                                        ; $664f: $0b
    ld b, h                                       ; $6650: $44
    inc b                                         ; $6651: $04

jr_08d_6652:
    inc b                                         ; $6652: $04
    jp nc, $d1d1                                  ; $6653: $d2 $d1 $d1

    pop de                                        ; $6656: $d1
    jp nc, $d1d1                                  ; $6657: $d2 $d1 $d1

    pop de                                        ; $665a: $d1
    jp nc, $d1d1                                  ; $665b: $d2 $d1 $d1

    pop de                                        ; $665e: $d1
    jp nc, $d1d1                                  ; $665f: $d2 $d1 $d1

    pop de                                        ; $6662: $d1
    add b                                         ; $6663: $80
    add b                                         ; $6664: $80
    add b                                         ; $6665: $80
    add b                                         ; $6666: $80
    add b                                         ; $6667: $80
    add b                                         ; $6668: $80
    add b                                         ; $6669: $80
    add b                                         ; $666a: $80
    add b                                         ; $666b: $80
    add b                                         ; $666c: $80
    add b                                         ; $666d: $80
    add b                                         ; $666e: $80
    add b                                         ; $666f: $80
    add b                                         ; $6670: $80
    add b                                         ; $6671: $80
    add b                                         ; $6672: $80
    add hl, de                                    ; $6673: $19
    ld a, [de]                                    ; $6674: $1a
    ld h, $27                                     ; $6675: $26 $27
    sub a                                         ; $6677: $97
    sbc b                                         ; $6678: $98
    sbc c                                         ; $6679: $99

jr_08d_667a:
    sbc d                                         ; $667a: $9a
    ld l, e                                       ; $667b: $6b
    ld l, h                                       ; $667c: $6c
    ld b, a                                       ; $667d: $47
    ld c, b                                       ; $667e: $48
    inc de                                        ; $667f: $13
    inc d                                         ; $6680: $14
    dec d                                         ; $6681: $15
    ld d, $04                                     ; $6682: $16 $04
    inc b                                         ; $6684: $04
    inc b                                         ; $6685: $04
    inc b                                         ; $6686: $04
    rrca                                          ; $6687: $0f
    rrca                                          ; $6688: $0f
    rrca                                          ; $6689: $0f
    rrca                                          ; $668a: $0f
    dec b                                         ; $668b: $05
    ld b, $05                                     ; $668c: $06 $05
    ld b, $06                                     ; $668e: $06 $06
    ld b, $05                                     ; $6690: $06 $05
    ld b, $28                                     ; $6692: $06 $28
    ld bc, $261a                                  ; $6694: $01 $1a $26
    sbc e                                         ; $6697: $9b
    dec de                                        ; $6698: $1b
    inc e                                         ; $6699: $1c
    dec e                                         ; $669a: $1d
    ld e, h                                       ; $669b: $5c
    rra                                           ; $669c: $1f
    jr nz, jr_08d_66c0                            ; $669d: $20 $21

    ld [hl+], a                                   ; $669f: $22
    inc hl                                        ; $66a0: $23
    inc h                                         ; $66a1: $24
    dec h                                         ; $66a2: $25
    inc b                                         ; $66a3: $04
    inc b                                         ; $66a4: $04
    inc b                                         ; $66a5: $04
    inc b                                         ; $66a6: $04
    rrca                                          ; $66a7: $0f
    rlca                                          ; $66a8: $07
    rlca                                          ; $66a9: $07
    rlca                                          ; $66aa: $07
    ld b, $06                                     ; $66ab: $06 $06
    dec b                                         ; $66ad: $05
    ld b, $05                                     ; $66ae: $06 $05
    dec b                                         ; $66b0: $05
    dec b                                         ; $66b1: $05
    dec b                                         ; $66b2: $05
    daa                                           ; $66b3: $27
    jr z, jr_08d_6652                             ; $66b4: $28 $9c

    add hl, hl                                    ; $66b6: $29
    ld a, [hl+]                                   ; $66b7: $2a
    dec hl                                        ; $66b8: $2b
    inc bc                                        ; $66b9: $03
    inc b                                         ; $66ba: $04
    inc l                                         ; $66bb: $2c
    dec l                                         ; $66bc: $2d
    dec b                                         ; $66bd: $05
    ld b, $2e                                     ; $66be: $06 $2e

jr_08d_66c0:
    cpl                                           ; $66c0: $2f
    rlca                                          ; $66c1: $07
    ld [$0404], sp                                ; $66c2: $08 $04 $04
    inc c                                         ; $66c5: $0c
    inc b                                         ; $66c6: $04
    rlca                                          ; $66c7: $07
    rlca                                          ; $66c8: $07
    rlca                                          ; $66c9: $07
    rlca                                          ; $66ca: $07

Jump_08d_66cb:
    ld b, $05                                     ; $66cb: $06 $05
    ld b, $07                                     ; $66cd: $06 $07
    ld b, $05                                     ; $66cf: $06 $05
    ld b, $07                                     ; $66d1: $06 $07
    ld [hl], $37                                  ; $66d3: $36 $37
    jr c, @+$3b                                   ; $66d5: $38 $39

    sbc l                                         ; $66d7: $9d
    ld a, [hl-]                                   ; $66d8: $3a
    rra                                           ; $66d9: $1f
    jr nz, jr_08d_667a                            ; $66da: $20 $9e

    sbc a                                         ; $66dc: $9f
    inc hl                                        ; $66dd: $23
    inc h                                         ; $66de: $24
    and b                                         ; $66df: $a0
    and c                                         ; $66e0: $a1
    ld b, e                                       ; $66e1: $43
    ld b, h                                       ; $66e2: $44
    ld b, $06                                     ; $66e3: $06 $06
    dec b                                         ; $66e5: $05
    dec b                                         ; $66e6: $05
    add hl, bc                                    ; $66e7: $09
    ld b, $05                                     ; $66e8: $06 $05
    dec b                                         ; $66ea: $05
    add hl, bc                                    ; $66eb: $09
    ld c, $05                                     ; $66ec: $0e $05
    ld b, $09                                     ; $66ee: $06 $09
    rrca                                          ; $66f0: $0f
    dec b                                         ; $66f1: $05
    ld b, $42                                     ; $66f2: $06 $42
    ld b, e                                       ; $66f4: $43
    ld b, h                                       ; $66f5: $44
    ld b, l                                       ; $66f6: $45
    ld b, [hl]                                    ; $66f7: $46
    ld b, a                                       ; $66f8: $47
    ld c, b                                       ; $66f9: $48
    ld c, c                                       ; $66fa: $49
    and d                                         ; $66fb: $a2
    and e                                         ; $66fc: $a3
    and h                                         ; $66fd: $a4
    and l                                         ; $66fe: $a5
    and [hl]                                      ; $66ff: $a6
    ld b, c                                       ; $6700: $41
    ld b, b                                       ; $6701: $40
    ccf                                           ; $6702: $3f
    dec b                                         ; $6703: $05
    ld b, $06                                     ; $6704: $06 $06
    ld b, $05                                     ; $6706: $06 $05
    dec b                                         ; $6708: $05
    dec b                                         ; $6709: $05
    dec b                                         ; $670a: $05
    ld c, $0e                                     ; $670b: $0e $0e
    ld c, $0e                                     ; $670d: $0e $0e
    ld c, $a4                                     ; $670f: $0e $a4
    add h                                         ; $6711: $84
    and h                                         ; $6712: $a4
    ld d, b                                       ; $6713: $50
    ld d, c                                       ; $6714: $51
    jr nc, jr_08d_6748                            ; $6715: $30 $31

    ld b, $6b                                     ; $6717: $06 $6b
    ld [hl-], a                                   ; $6719: $32
    inc l                                         ; $671a: $2c
    ld [$3313], sp                                ; $671b: $08 $13 $33
    ld l, $a7                                     ; $671e: $2e $a7
    xor b                                         ; $6720: $a8
    inc [hl]                                      ; $6721: $34
    dec [hl]                                      ; $6722: $35
    dec b                                         ; $6723: $05
    ld b, $05                                     ; $6724: $06 $05
    rlca                                          ; $6726: $07
    ld b, $05                                     ; $6727: $06 $05
    dec b                                         ; $6729: $05
    rlca                                          ; $672a: $07
    dec b                                         ; $672b: $05
    dec b                                         ; $672c: $05
    dec b                                         ; $672d: $05
    rlca                                          ; $672e: $07
    dec c                                         ; $672f: $0d
    ld c, $06                                     ; $6730: $0e $06
    rlca                                          ; $6732: $07
    xor c                                         ; $6733: $a9
    ld b, [hl]                                    ; $6734: $46
    ld b, a                                       ; $6735: $47
    ld c, b                                       ; $6736: $48
    xor d                                         ; $6737: $aa
    xor e                                         ; $6738: $ab
    dec d                                         ; $6739: $15
    ld d, $97                                     ; $673a: $16 $97
    sbc b                                         ; $673c: $98
    sbc c                                         ; $673d: $99
    sbc d                                         ; $673e: $9a
    ld l, e                                       ; $673f: $6b
    ld l, h                                       ; $6740: $6c
    ld b, a                                       ; $6741: $47
    ld c, b                                       ; $6742: $48
    add hl, bc                                    ; $6743: $09
    rlca                                          ; $6744: $07
    ld b, $05                                     ; $6745: $06 $05
    add hl, bc                                    ; $6747: $09

jr_08d_6748:
    rrca                                          ; $6748: $0f
    ld b, $05                                     ; $6749: $06 $05
    rrca                                          ; $674b: $0f
    rrca                                          ; $674c: $0f
    ld c, $0e                                     ; $674d: $0e $0e
    ld b, $05                                     ; $674f: $06 $05
    ld b, $06                                     ; $6751: $06 $06
    xor h                                         ; $6753: $ac
    ld e, [hl]                                    ; $6754: $5e
    ld e, a                                       ; $6755: $5f
    ld e, [hl]                                    ; $6756: $5e
    xor l                                         ; $6757: $ad
    ld h, c                                       ; $6758: $61
    ld h, d                                       ; $6759: $62
    ld h, c                                       ; $675a: $61
    xor [hl]                                      ; $675b: $ae
    ld h, h                                       ; $675c: $64
    ld h, l                                       ; $675d: $65
    ld h, h                                       ; $675e: $64
    xor a                                         ; $675f: $af
    ld l, c                                       ; $6760: $69
    ld l, b                                       ; $6761: $68
    ld h, a                                       ; $6762: $67
    ld c, $84                                     ; $6763: $0e $84
    and h                                         ; $6765: $a4

Call_08d_6766:
Jump_08d_6766:
    and h                                         ; $6766: $a4
    ld c, $04                                     ; $6767: $0e $04
    inc h                                         ; $6769: $24
    inc h                                         ; $676a: $24
    ld c, $04                                     ; $676b: $0e $04
    inc h                                         ; $676d: $24
    inc h                                         ; $676e: $24
    ld c, $24                                     ; $676f: $0e $24
    inc b                                         ; $6771: $04
    inc h                                         ; $6772: $24
    or b                                          ; $6773: $b0
    ld c, b                                       ; $6774: $48
    ld e, h                                       ; $6775: $5c
    rra                                           ; $6776: $1f
    or c                                          ; $6777: $b1
    ld d, $22                                     ; $6778: $16 $22
    inc hl                                        ; $677a: $23
    or d                                          ; $677b: $b2
    dec hl                                        ; $677c: $2b
    inc bc                                        ; $677d: $03
    inc b                                         ; $677e: $04
    or e                                          ; $677f: $b3
    dec l                                         ; $6780: $2d
    dec b                                         ; $6781: $05
    ld b, $0d                                     ; $6782: $06 $0d
    ld b, $06                                     ; $6784: $06 $06
    rlca                                          ; $6786: $07
    dec c                                         ; $6787: $0d
    ld b, $06                                     ; $6788: $06 $06
    rlca                                          ; $678a: $07
    ld c, $05                                     ; $678b: $0e $05
    dec b                                         ; $678d: $05
    rlca                                          ; $678e: $07
    ld c, $05                                     ; $678f: $0e $05
    dec b                                         ; $6791: $05
    rlca                                          ; $6792: $07
    jp nc, $d1d1                                  ; $6793: $d2 $d1 $d1

    pop de                                        ; $6796: $d1
    jp nc, $d1d1                                  ; $6797: $d2 $d1 $d1

    pop de                                        ; $679a: $d1
    or h                                          ; $679b: $b4
    or l                                          ; $679c: $b5
    or [hl]                                       ; $679d: $b6
    pop de                                        ; $679e: $d1
    call nc, $d2b7                                ; $679f: $d4 $b7 $d2
    pop de                                        ; $67a2: $d1
    add b                                         ; $67a3: $80
    add b                                         ; $67a4: $80
    add b                                         ; $67a5: $80
    add b                                         ; $67a6: $80
    add b                                         ; $67a7: $80
    add b                                         ; $67a8: $80
    add b                                         ; $67a9: $80
    add b                                         ; $67aa: $80
    adc b                                         ; $67ab: $88
    adc b                                         ; $67ac: $88
    adc b                                         ; $67ad: $88
    add b                                         ; $67ae: $80
    inc b                                         ; $67af: $04
    inc c                                         ; $67b0: $0c
    add b                                         ; $67b1: $80
    add b                                         ; $67b2: $80
    pop de                                        ; $67b3: $d1
    jp nc, Jump_000_0807                          ; $67b4: $d2 $07 $08

    pop de                                        ; $67b7: $d1
    jp nc, Jump_000_3130                          ; $67b8: $d2 $30 $31

    pop de                                        ; $67bb: $d1
    jp nc, $2c32                                  ; $67bc: $d2 $32 $2c

    pop de                                        ; $67bf: $d1
    jp nc, $2e33                                  ; $67c0: $d2 $33 $2e

    add b                                         ; $67c3: $80
    add b                                         ; $67c4: $80
    rlca                                          ; $67c5: $07
    dec b                                         ; $67c6: $05
    add b                                         ; $67c7: $80
    add b                                         ; $67c8: $80
    rlca                                          ; $67c9: $07
    ld b, $80                                     ; $67ca: $06 $80
    add b                                         ; $67cc: $80
    rlca                                          ; $67cd: $07
    ld b, $80                                     ; $67ce: $06 $80
    add b                                         ; $67d0: $80
    rlca                                          ; $67d1: $07
    ld b, $13                                     ; $67d2: $06 $13
    cp b                                          ; $67d4: $b8
    cp c                                          ; $67d5: $b9
    cp d                                          ; $67d6: $ba
    ld [hl], $37                                  ; $67d7: $36 $37
    jr c, @+$3b                                   ; $67d9: $38 $39

    dec l                                         ; $67db: $2d
    ld a, [hl-]                                   ; $67dc: $3a
    rra                                           ; $67dd: $1f
    jr nz, jr_08d_680f                            ; $67de: $20 $2f

    sbc a                                         ; $67e0: $9f
    inc hl                                        ; $67e1: $23
    inc h                                         ; $67e2: $24
    ld b, $0e                                     ; $67e3: $06 $0e
    dec c                                         ; $67e5: $0d
    ld c, $05                                     ; $67e6: $0e $05
    ld b, $05                                     ; $67e8: $06 $05
    ld b, $05                                     ; $67ea: $06 $05
    ld b, $06                                     ; $67ec: $06 $06
    dec b                                         ; $67ee: $05
    ld b, $0d                                     ; $67ef: $06 $0d
    dec b                                         ; $67f1: $05
    ld b, $22                                     ; $67f2: $06 $22
    inc hl                                        ; $67f4: $23
    inc h                                         ; $67f5: $24
    dec h                                         ; $67f6: $25
    ld b, d                                       ; $67f7: $42
    ld b, e                                       ; $67f8: $43
    cp e                                          ; $67f9: $bb
    cp h                                          ; $67fa: $bc
    ld b, [hl]                                    ; $67fb: $46
    ld b, a                                       ; $67fc: $47
    cp l                                          ; $67fd: $bd
    cp [hl]                                       ; $67fe: $be
    xor e                                         ; $67ff: $ab
    dec d                                         ; $6800: $15
    cp a                                          ; $6801: $bf
    ret nz                                        ; $6802: $c0

    dec b                                         ; $6803: $05
    ld b, $06                                     ; $6804: $06 $06
    dec b                                         ; $6806: $05
    dec b                                         ; $6807: $05
    dec b                                         ; $6808: $05
    add hl, bc                                    ; $6809: $09
    add hl, bc                                    ; $680a: $09
    ld b, $06                                     ; $680b: $06 $06
    add hl, bc                                    ; $680d: $09
    add hl, bc                                    ; $680e: $09

jr_08d_680f:
    dec c                                         ; $680f: $0d
    ld b, $09                                     ; $6810: $06 $09
    add hl, bc                                    ; $6812: $09
    ld l, $2f                                     ; $6813: $2e $2f
    rlca                                          ; $6815: $07
    ld [$c2c1], sp                                ; $6816: $08 $c1 $c2
    jp $c5c4                                      ; $6819: $c3 $c4 $c5


    add $c7                                       ; $681c: $c6 $c7
    ret z                                         ; $681e: $c8

    ret                                           ; $681f: $c9


    jp z, $cccb                                   ; $6820: $ca $cb $cc

    dec b                                         ; $6823: $05
    ld b, $05                                     ; $6824: $06 $05
    dec b                                         ; $6826: $05

jr_08d_6827:
    add hl, bc                                    ; $6827: $09
    add hl, bc                                    ; $6828: $09
    add hl, bc                                    ; $6829: $09
    add hl, bc                                    ; $682a: $09
    add hl, bc                                    ; $682b: $09
    add hl, bc                                    ; $682c: $09
    add hl, bc                                    ; $682d: $09
    add hl, bc                                    ; $682e: $09
    add hl, bc                                    ; $682f: $09
    add hl, bc                                    ; $6830: $09
    add hl, bc                                    ; $6831: $09
    dec bc                                        ; $6832: $0b
    pop de                                        ; $6833: $d1
    jp nc, Jump_000_3534                          ; $6834: $d2 $34 $35

    pop de                                        ; $6837: $d1
    jp nc, $1f5c                                  ; $6838: $d2 $5c $1f

    pop de                                        ; $683b: $d1
    jp nc, Jump_000_2322                          ; $683c: $d2 $22 $23

    pop de                                        ; $683f: $d1
    jp nc, $0403                                  ; $6840: $d2 $03 $04

    add b                                         ; $6843: $80
    add b                                         ; $6844: $80
    rlca                                          ; $6845: $07
    dec b                                         ; $6846: $05
    add b                                         ; $6847: $80
    add b                                         ; $6848: $80
    rlca                                          ; $6849: $07
    dec b                                         ; $684a: $05
    add b                                         ; $684b: $80
    add b                                         ; $684c: $80
    rlca                                          ; $684d: $07
    dec b                                         ; $684e: $05
    add b                                         ; $684f: $80
    add b                                         ; $6850: $80
    rlca                                          ; $6851: $07
    ld b, $cd                                     ; $6852: $06 $cd
    and c                                         ; $6854: $a1
    ld b, e                                       ; $6855: $43
    ld b, h                                       ; $6856: $44
    jr nz, jr_08d_6827                            ; $6857: $20 $ce

    rst $08                                       ; $6859: $cf
    ret nc                                        ; $685a: $d0

    pop de                                        ; $685b: $d1
    ccf                                           ; $685c: $3f
    ld b, b                                       ; $685d: $40
    ld b, c                                       ; $685e: $41
    jp nc, $d4d3                                  ; $685f: $d2 $d3 $d4

    push de                                       ; $6862: $d5
    ld c, $0e                                     ; $6863: $0e $0e
    ld b, $05                                     ; $6865: $06 $05
    ld b, $0e                                     ; $6867: $06 $0e
    ld c, $0e                                     ; $6869: $0e $0e
    ld c, $84                                     ; $686b: $0e $84
    add h                                         ; $686d: $84
    add h                                         ; $686e: $84
    ld c, $8a                                     ; $686f: $0e $8a
    adc d                                         ; $6871: $8a
    adc d                                         ; $6872: $8a
    sub $4d                                       ; $6873: $d6 $4d
    rst $10                                       ; $6875: $d7
    ret c                                         ; $6876: $d8

    ld c, c                                       ; $6877: $49
    ld b, $d9                                     ; $6878: $06 $d9
    jp c, Jump_000_08db                           ; $687a: $da $db $08

    call c, $dedd                                 ; $687d: $dc $dd $de
    dec de                                        ; $6880: $1b
    rst $18                                       ; $6881: $df
    ldh [$0d], a                                  ; $6882: $e0 $0d
    ld b, $09                                     ; $6884: $06 $09
    add hl, bc                                    ; $6886: $09
    ld b, $06                                     ; $6887: $06 $06
    add hl, bc                                    ; $6889: $09
    add hl, bc                                    ; $688a: $09
    dec c                                         ; $688b: $0d
    dec b                                         ; $688c: $05
    add hl, bc                                    ; $688d: $09
    add hl, bc                                    ; $688e: $09
    dec c                                         ; $688f: $0d
    dec b                                         ; $6890: $05
    add hl, bc                                    ; $6891: $09
    add hl, bc                                    ; $6892: $09
    pop hl                                        ; $6893: $e1
    ld [c], a                                     ; $6894: $e2
    db $e3                                        ; $6895: $e3
    db $e4                                        ; $6896: $e4
    push hl                                       ; $6897: $e5
    and $e7                                       ; $6898: $e6 $e7
    add sp, -$17                                  ; $689a: $e8 $e9
    ld [$eceb], a                                 ; $689c: $ea $eb $ec
    db $ed                                        ; $689f: $ed
    xor $ef                                       ; $68a0: $ee $ef
    ldh a, [$09]                                  ; $68a2: $f0 $09
    add hl, bc                                    ; $68a4: $09
    add hl, bc                                    ; $68a5: $09
    dec bc                                        ; $68a6: $0b
    add hl, bc                                    ; $68a7: $09
    add hl, bc                                    ; $68a8: $09
    dec bc                                        ; $68a9: $0b
    dec bc                                        ; $68aa: $0b
    add hl, bc                                    ; $68ab: $09
    add hl, bc                                    ; $68ac: $09
    dec bc                                        ; $68ad: $0b
    dec bc                                        ; $68ae: $0b
    add hl, bc                                    ; $68af: $09
    add hl, bc                                    ; $68b0: $09
    add hl, bc                                    ; $68b1: $09
    dec bc                                        ; $68b2: $0b
    pop de                                        ; $68b3: $d1
    jp nc, $0605                                  ; $68b4: $d2 $05 $06

    pop de                                        ; $68b7: $d1
    jp nc, Jump_000_0807                          ; $68b8: $d2 $07 $08

    pop de                                        ; $68bb: $d1
    jp nc, Jump_000_3130                          ; $68bc: $d2 $30 $31

    pop de                                        ; $68bf: $d1
    jp nc, $2c32                                  ; $68c0: $d2 $32 $2c

    add b                                         ; $68c3: $80
    add b                                         ; $68c4: $80
    rlca                                          ; $68c5: $07
    ld b, $80                                     ; $68c6: $06 $80
    add b                                         ; $68c8: $80
    rlca                                          ; $68c9: $07
    ld b, $80                                     ; $68ca: $06 $80
    add b                                         ; $68cc: $80
    rlca                                          ; $68cd: $07
    dec b                                         ; $68ce: $05
    add b                                         ; $68cf: $80
    add b                                         ; $68d0: $80
    rlca                                          ; $68d1: $07
    ld b, $f1                                     ; $68d2: $06 $f1

Call_08d_68d4:
    ld a, [c]                                     ; $68d4: $f2
    di                                            ; $68d5: $f3
    db $f4                                        ; $68d6: $f4
    push af                                       ; $68d7: $f5
    or $f7                                        ; $68d8: $f6 $f7
    ld hl, sp-$07                                 ; $68da: $f8 $f9
    ld h, a                                       ; $68dc: $67
    ld l, b                                       ; $68dd: $68
    ld l, c                                       ; $68de: $69
    dec l                                         ; $68df: $2d
    ld a, [$fcfb]                                 ; $68e0: $fa $fb $fc
    dec c                                         ; $68e3: $0d
    ld a, [bc]                                    ; $68e4: $0a
    ld a, [bc]                                    ; $68e5: $0a
    ld a, [bc]                                    ; $68e6: $0a
    ld c, $0a                                     ; $68e7: $0e $0a
    ld a, [bc]                                    ; $68e9: $0a
    ld a, [bc]                                    ; $68ea: $0a
    dec c                                         ; $68eb: $0d
    inc b                                         ; $68ec: $04
    inc b                                         ; $68ed: $04
    inc b                                         ; $68ee: $04
    ld b, $0d                                     ; $68ef: $06 $0d
    dec c                                         ; $68f1: $0d
    ld c, $fd                                     ; $68f2: $0e $fd
    rra                                           ; $68f4: $1f
    cp $be                                        ; $68f5: $fe $be
    rst $38                                       ; $68f7: $ff
    inc hl                                        ; $68f8: $23
    nop                                           ; $68f9: $00
    ld bc, $4342                                  ; $68fa: $01 $42 $43
    ld b, h                                       ; $68fd: $44
    ld [bc], a                                    ; $68fe: $02
    ld b, [hl]                                    ; $68ff: $46
    ld b, a                                       ; $6900: $47
    inc bc                                        ; $6901: $03
    ld b, c                                       ; $6902: $41
    ld c, $05                                     ; $6903: $0e $05
    add hl, bc                                    ; $6905: $09
    add hl, bc                                    ; $6906: $09
    ld c, $06                                     ; $6907: $0e $06
    add hl, bc                                    ; $6909: $09
    add hl, bc                                    ; $690a: $09
    dec b                                         ; $690b: $05
    ld b, $07                                     ; $690c: $06 $07
    rrca                                          ; $690e: $0f
    ld b, $05                                     ; $690f: $06 $05
    ld c, $a4                                     ; $6911: $0e $a4
    push bc                                       ; $6913: $c5
    inc b                                         ; $6914: $04
    dec b                                         ; $6915: $05
    ld b, $07                                     ; $6916: $06 $07
    ld [$0a09], sp                                ; $6918: $08 $09 $0a
    dec bc                                        ; $691b: $0b
    inc c                                         ; $691c: $0c
    jr nc, jr_08d_6950                            ; $691d: $30 $31

    ld b, b                                       ; $691f: $40
    ccf                                           ; $6920: $3f
    ld [hl-], a                                   ; $6921: $32
    inc l                                         ; $6922: $2c
    add hl, bc                                    ; $6923: $09
    add hl, bc                                    ; $6924: $09
    add hl, bc                                    ; $6925: $09
    add hl, bc                                    ; $6926: $09
    add hl, bc                                    ; $6927: $09
    add hl, bc                                    ; $6928: $09
    add hl, bc                                    ; $6929: $09
    add hl, bc                                    ; $692a: $09
    rrca                                          ; $692b: $0f
    rrca                                          ; $692c: $0f
    rlca                                          ; $692d: $07
    rlca                                          ; $692e: $07
    add h                                         ; $692f: $84
    and h                                         ; $6930: $a4
    ld b, $06                                     ; $6931: $06 $06
    pop de                                        ; $6933: $d1
    jp nc, $2e33                                  ; $6934: $d2 $33 $2e

    pop de                                        ; $6937: $d1

Jump_08d_6938:
    jp nc, Jump_000_3534                          ; $6938: $d2 $34 $35

    pop de                                        ; $693b: $d1
    jp nc, $1f5c                                  ; $693c: $d2 $5c $1f

    pop de                                        ; $693f: $d1
    jp nc, Jump_000_2322                          ; $6940: $d2 $22 $23

    add b                                         ; $6943: $80
    add b                                         ; $6944: $80
    rlca                                          ; $6945: $07
    dec b                                         ; $6946: $05
    add b                                         ; $6947: $80
    add b                                         ; $6948: $80
    rlca                                          ; $6949: $07
    ld b, $80                                     ; $694a: $06 $80
    add b                                         ; $694c: $80
    rlca                                          ; $694d: $07
    ld b, $80                                     ; $694e: $06 $80

jr_08d_6950:
    add b                                         ; $6950: $80
    rlca                                          ; $6951: $07
    ld b, $2f                                     ; $6952: $06 $2f
    sbc a                                         ; $6954: $9f
    inc hl                                        ; $6955: $23
    inc h                                         ; $6956: $24
    call Call_08d_43a1                            ; $6957: $cd $a1 $43
    ld b, h                                       ; $695a: $44
    jr nz, jr_08d_69a3                            ; $695b: $20 $46

    ld b, a                                       ; $695d: $47
    ld c, b                                       ; $695e: $48
    inc h                                         ; $695f: $24
    xor e                                         ; $6960: $ab
    dec d                                         ; $6961: $15
    ld d, $06                                     ; $6962: $16 $06
    ld c, $06                                     ; $6964: $0e $06
    ld b, $0d                                     ; $6966: $06 $0d
    ld c, $06                                     ; $6968: $0e $06
    dec b                                         ; $696a: $05
    dec b                                         ; $696b: $05
    dec b                                         ; $696c: $05
    dec b                                         ; $696d: $05
    ld b, $06                                     ; $696e: $06 $06
    dec c                                         ; $6970: $0d
    ld b, $05                                     ; $6971: $06 $05
    xor e                                         ; $6973: $ab
    dec d                                         ; $6974: $15
    dec c                                         ; $6975: $0d
    ld e, [hl]                                    ; $6976: $5e
    sub $4d                                       ; $6977: $d6 $4d
    ld c, $61                                     ; $6979: $0e $61
    ld c, c                                       ; $697b: $49
    ld b, $0f                                     ; $697c: $06 $0f
    ld h, h                                       ; $697e: $64
    ld c, e                                       ; $697f: $4b
    ld [$6913], sp                                ; $6980: $08 $13 $69
    ld c, $06                                     ; $6983: $0e $06
    ld c, $84                                     ; $6985: $0e $84
    ld c, $06                                     ; $6987: $0e $06
    ld c, $04                                     ; $6989: $0e $04
    dec b                                         ; $698b: $05
    dec b                                         ; $698c: $05
    ld c, $04                                     ; $698d: $0e $04
    dec b                                         ; $698f: $05
    ld b, $06                                     ; $6990: $06 $06
    inc h                                         ; $6992: $24
    ld e, a                                       ; $6993: $5f
    ld e, [hl]                                    ; $6994: $5e
    db $10                                        ; $6995: $10
    ld l, $62                                     ; $6996: $2e $62
    ld h, c                                       ; $6998: $61
    ld de, $6535                                  ; $6999: $11 $35 $65
    ld h, h                                       ; $699c: $64
    ld e, h                                       ; $699d: $5c
    rra                                           ; $699e: $1f
    ld l, b                                       ; $699f: $68
    ld h, a                                       ; $69a0: $67
    ld [hl+], a                                   ; $69a1: $22
    inc hl                                        ; $69a2: $23

jr_08d_69a3:
    and h                                         ; $69a3: $a4
    and h                                         ; $69a4: $a4
    ld c, $05                                     ; $69a5: $0e $05
    inc h                                         ; $69a7: $24
    inc h                                         ; $69a8: $24
    ld c, $06                                     ; $69a9: $0e $06
    inc h                                         ; $69ab: $24
    inc h                                         ; $69ac: $24
    ld b, $06                                     ; $69ad: $06 $06
    inc b                                         ; $69af: $04
    inc h                                         ; $69b0: $24
    ld b, $05                                     ; $69b1: $06 $05
    inc de                                        ; $69b3: $13
    inc d                                         ; $69b4: $14
    dec d                                         ; $69b5: $15
    ld d, $12                                     ; $69b6: $16 $12
    cp h                                          ; $69b8: $bc
    inc de                                        ; $69b9: $13
    add hl, sp                                    ; $69ba: $39
    inc d                                         ; $69bb: $14
    cp [hl]                                       ; $69bc: $be
    dec d                                         ; $69bd: $15
    jr nz, jr_08d_69d6                            ; $69be: $20 $16

    rla                                           ; $69c0: $17
    jr jr_08d_69e7                                ; $69c1: $18 $24

    dec b                                         ; $69c3: $05
    dec b                                         ; $69c4: $05
    ld b, $05                                     ; $69c5: $06 $05
    add hl, bc                                    ; $69c7: $09
    add hl, bc                                    ; $69c8: $09
    add hl, bc                                    ; $69c9: $09
    ld b, $09                                     ; $69ca: $06 $09
    add hl, bc                                    ; $69cc: $09
    add hl, bc                                    ; $69cd: $09
    rlca                                          ; $69ce: $07
    dec bc                                        ; $69cf: $0b
    add hl, bc                                    ; $69d0: $09
    add hl, bc                                    ; $69d1: $09
    rlca                                          ; $69d2: $07
    ld [hl+], a                                   ; $69d3: $22
    add hl, de                                    ; $69d4: $19
    ld a, [de]                                    ; $69d5: $1a

jr_08d_69d6:
    dec de                                        ; $69d6: $1b
    ld b, d                                       ; $69d7: $42
    ld b, e                                       ; $69d8: $43
    inc e                                         ; $69d9: $1c
    dec e                                         ; $69da: $1d
    ld b, [hl]                                    ; $69db: $46
    ld e, $3f                                     ; $69dc: $1e $3f
    ld b, b                                       ; $69de: $40
    xor e                                         ; $69df: $ab
    rra                                           ; $69e0: $1f
    jr nz, jr_08d_6a04                            ; $69e1: $20 $21

    dec b                                         ; $69e3: $05
    ld c, $0e                                     ; $69e4: $0e $0e
    dec c                                         ; $69e6: $0d

jr_08d_69e7:
    ld b, $05                                     ; $69e7: $06 $05
    ld c, $0e                                     ; $69e9: $0e $0e
    ld b, $0e                                     ; $69eb: $06 $0e
    add h                                         ; $69ed: $84
    add h                                         ; $69ee: $84
    ld c, $0e                                     ; $69ef: $0e $0e
    adc d                                         ; $69f1: $8a
    adc d                                         ; $69f2: $8a
    ld l, $2f                                     ; $69f3: $2e $2f
    rlca                                          ; $69f5: $07
    ld [$5122], sp                                ; $69f6: $08 $22 $51
    jr nc, jr_08d_6a2c                            ; $69f9: $30 $31

    ld b, c                                       ; $69fb: $41
    inc hl                                        ; $69fc: $23
    ld [hl-], a                                   ; $69fd: $32
    inc l                                         ; $69fe: $2c
    inc h                                         ; $69ff: $24
    dec h                                         ; $6a00: $25
    inc sp                                        ; $6a01: $33
    ld l, $05                                     ; $6a02: $2e $05

jr_08d_6a04:
    ld b, $06                                     ; $6a04: $06 $06
    rlca                                          ; $6a06: $07
    ld c, $06                                     ; $6a07: $0e $06
    ld b, $07                                     ; $6a09: $06 $07
    add h                                         ; $6a0b: $84
    ld c, $06                                     ; $6a0c: $0e $06
    rlca                                          ; $6a0e: $07
    adc d                                         ; $6a0f: $8a
    ld c, $06                                     ; $6a10: $0e $06
    rlca                                          ; $6a12: $07
    ld h, $27                                     ; $6a13: $26 $27
    jr z, @-$2d                                   ; $6a15: $28 $d1

    add hl, hl                                    ; $6a17: $29
    add hl, hl                                    ; $6a18: $29
    jr z, @-$2d                                   ; $6a19: $28 $d1

    add hl, hl                                    ; $6a1b: $29
    ld a, [hl+]                                   ; $6a1c: $2a
    jr z, @-$2d                                   ; $6a1d: $28 $d1

    dec hl                                        ; $6a1f: $2b
    inc l                                         ; $6a20: $2c
    jr z, @-$2d                                   ; $6a21: $28 $d1

    inc c                                         ; $6a23: $0c
    inc c                                         ; $6a24: $0c
    adc b                                         ; $6a25: $88
    add b                                         ; $6a26: $80
    inc l                                         ; $6a27: $2c
    inc c                                         ; $6a28: $0c
    adc b                                         ; $6a29: $88
    add b                                         ; $6a2a: $80
    inc l                                         ; $6a2b: $2c

jr_08d_6a2c:
    inc c                                         ; $6a2c: $0c
    adc b                                         ; $6a2d: $88
    add b                                         ; $6a2e: $80
    inc c                                         ; $6a2f: $0c
    inc c                                         ; $6a30: $0c
    adc b                                         ; $6a31: $88
    add b                                         ; $6a32: $80
    dec l                                         ; $6a33: $2d
    ld l, $2f                                     ; $6a34: $2e $2f
    ld b, h                                       ; $6a36: $44
    jr nc, jr_08d_6a6a                            ; $6a37: $30 $31

    ld [hl-], a                                   ; $6a39: $32
    ld c, b                                       ; $6a3a: $48
    inc sp                                        ; $6a3b: $33
    inc [hl]                                      ; $6a3c: $34
    dec [hl]                                      ; $6a3d: $35
    ld d, $36                                     ; $6a3e: $16 $36
    scf                                           ; $6a40: $37
    jr c, @-$64                                   ; $6a41: $38 $9a

    dec bc                                        ; $6a43: $0b
    add hl, bc                                    ; $6a44: $09
    add hl, bc                                    ; $6a45: $09
    rlca                                          ; $6a46: $07
    dec bc                                        ; $6a47: $0b
    add hl, bc                                    ; $6a48: $09
    add hl, bc                                    ; $6a49: $09
    rlca                                          ; $6a4a: $07
    dec bc                                        ; $6a4b: $0b
    add hl, bc                                    ; $6a4c: $09
    add hl, bc                                    ; $6a4d: $09
    rlca                                          ; $6a4e: $07
    dec bc                                        ; $6a4f: $0b
    add hl, bc                                    ; $6a50: $09
    add hl, bc                                    ; $6a51: $09
    rrca                                          ; $6a52: $0f
    sub $39                                       ; $6a53: $d6 $39
    ld a, [hl-]                                   ; $6a55: $3a
    dec sp                                        ; $6a56: $3b
    ld c, c                                       ; $6a57: $49
    inc a                                         ; $6a58: $3c
    dec a                                         ; $6a59: $3d
    ld a, $4b                                     ; $6a5a: $3e $4b
    ld [$6867], sp                                ; $6a5c: $08 $67 $68
    sbc e                                         ; $6a5f: $9b
    dec de                                        ; $6a60: $1b
    ccf                                           ; $6a61: $3f
    ld b, b                                       ; $6a62: $40
    ld c, $0e                                     ; $6a63: $0e $0e
    ld a, [bc]                                    ; $6a65: $0a
    ld a, [bc]                                    ; $6a66: $0a
    ld b, $0e                                     ; $6a67: $06 $0e
    ld a, [bc]                                    ; $6a69: $0a

jr_08d_6a6a:
    ld a, [bc]                                    ; $6a6a: $0a
    dec b                                         ; $6a6b: $05
    ld b, $04                                     ; $6a6c: $06 $04
    inc b                                         ; $6a6e: $04
    ld c, $05                                     ; $6a6f: $0e $05
    ld c, $0e                                     ; $6a71: $0e $0e
    ld b, c                                       ; $6a73: $41
    ld b, d                                       ; $6a74: $42
    inc [hl]                                      ; $6a75: $34
    dec [hl]                                      ; $6a76: $35
    ld b, e                                       ; $6a77: $43
    ld b, h                                       ; $6a78: $44
    ld e, h                                       ; $6a79: $5c
    rra                                           ; $6a7a: $1f
    ld l, c                                       ; $6a7b: $69
    ld b, l                                       ; $6a7c: $45
    ld [hl+], a                                   ; $6a7d: $22
    inc hl                                        ; $6a7e: $23
    ld b, [hl]                                    ; $6a7f: $46
    dec hl                                        ; $6a80: $2b
    inc bc                                        ; $6a81: $03
    inc b                                         ; $6a82: $04
    ld a, [bc]                                    ; $6a83: $0a
    ld c, $06                                     ; $6a84: $0e $06
    rlca                                          ; $6a86: $07
    ld a, [bc]                                    ; $6a87: $0a
    ld c, $06                                     ; $6a88: $0e $06
    ld b, $04                                     ; $6a8a: $06 $04
    ld c, $06                                     ; $6a8c: $0e $06
    ld b, $0e                                     ; $6a8e: $06 $0e
    ld b, $05                                     ; $6a90: $06 $05
    ld b, $47                                     ; $6a92: $06 $47
    xor b                                         ; $6a94: $a8
    jr z, jr_08d_6adf                             ; $6a95: $28 $48

    ld b, a                                       ; $6a97: $47
    ld c, b                                       ; $6a98: $48
    jp nc, Jump_08d_4948                          ; $6a99: $d2 $48 $49

    or l                                          ; $6a9c: $b5
    ld c, d                                       ; $6a9d: $4a
    ld c, b                                       ; $6a9e: $48
    jp nc, $d1d1                                  ; $6a9f: $d2 $d1 $d1

    pop de                                        ; $6aa2: $d1
    rrca                                          ; $6aa3: $0f
    rrca                                          ; $6aa4: $0f
    adc b                                         ; $6aa5: $88
    adc b                                         ; $6aa6: $88
    ld b, $07                                     ; $6aa7: $06 $07
    add b                                         ; $6aa9: $80
    adc b                                         ; $6aaa: $88
    adc b                                         ; $6aab: $88
    adc b                                         ; $6aac: $88
    adc b                                         ; $6aad: $88
    adc b                                         ; $6aae: $88
    add b                                         ; $6aaf: $80
    add b                                         ; $6ab0: $80
    add b                                         ; $6ab1: $80
    add b                                         ; $6ab2: $80
    ld c, e                                       ; $6ab3: $4b
    ld c, h                                       ; $6ab4: $4c
    dec d                                         ; $6ab5: $15
    ld c, b                                       ; $6ab6: $48
    rlca                                          ; $6ab7: $07
    ld c, l                                       ; $6ab8: $4d
    ld c, [hl]                                    ; $6ab9: $4e
    ld d, $36                                     ; $6aba: $16 $36
    scf                                           ; $6abc: $37
    jr c, jr_08d_6af8                             ; $6abd: $38 $39

    dec l                                         ; $6abf: $2d
    ld a, [hl-]                                   ; $6ac0: $3a
    rra                                           ; $6ac1: $1f
    ld c, a                                       ; $6ac2: $4f
    add hl, bc                                    ; $6ac3: $09
    add hl, bc                                    ; $6ac4: $09
    add hl, bc                                    ; $6ac5: $09
    rlca                                          ; $6ac6: $07
    add hl, bc                                    ; $6ac7: $09
    add hl, bc                                    ; $6ac8: $09
    add hl, bc                                    ; $6ac9: $09
    rlca                                          ; $6aca: $07
    rlca                                          ; $6acb: $07
    rlca                                          ; $6acc: $07
    rlca                                          ; $6acd: $07
    rlca                                          ; $6ace: $07
    dec b                                         ; $6acf: $05
    ld b, $05                                     ; $6ad0: $06 $05
    ld c, $5c                                     ; $6ad2: $0e $5c
    rra                                           ; $6ad4: $1f
    jr nz, jr_08d_6af8                            ; $6ad5: $20 $21

    ld [hl+], a                                   ; $6ad7: $22
    inc hl                                        ; $6ad8: $23
    inc h                                         ; $6ad9: $24
    dec h                                         ; $6ada: $25
    ld d, b                                       ; $6adb: $50
    ld d, c                                       ; $6adc: $51
    ld d, d                                       ; $6add: $52
    ld b, l                                       ; $6ade: $45

jr_08d_6adf:
    ccf                                           ; $6adf: $3f
    ld b, b                                       ; $6ae0: $40
    ld b, c                                       ; $6ae1: $41
    ld d, e                                       ; $6ae2: $53
    ld b, $05                                     ; $6ae3: $06 $05
    dec b                                         ; $6ae5: $05
    ld b, $06                                     ; $6ae6: $06 $06
    ld b, $06                                     ; $6ae8: $06 $06
    dec b                                         ; $6aea: $05
    ld c, $0e                                     ; $6aeb: $0e $0e
    ld c, $06                                     ; $6aed: $0e $06
    add h                                         ; $6aef: $84
    add h                                         ; $6af0: $84
    add h                                         ; $6af1: $84
    ld c, $2c                                     ; $6af2: $0e $2c
    dec l                                         ; $6af4: $2d
    dec b                                         ; $6af5: $05
    ld b, $2e                                     ; $6af6: $06 $2e

jr_08d_6af8:
    cpl                                           ; $6af8: $2f
    rlca                                          ; $6af9: $07
    ld [$5150], sp                                ; $6afa: $08 $50 $51
    jr nc, jr_08d_6b30                            ; $6afd: $30 $31

    ld b, $6b                                     ; $6aff: $06 $6b
    ld [hl-], a                                   ; $6b01: $32
    inc l                                         ; $6b02: $2c
    ld b, $06                                     ; $6b03: $06 $06
    dec b                                         ; $6b05: $05
    rlca                                          ; $6b06: $07
    dec b                                         ; $6b07: $05
    dec b                                         ; $6b08: $05
    ld b, $07                                     ; $6b09: $06 $07
    ld b, $06                                     ; $6b0b: $06 $06
    dec b                                         ; $6b0d: $05
    rlca                                          ; $6b0e: $07
    dec b                                         ; $6b0f: $05
    ld b, $05                                     ; $6b10: $06 $05
    rlca                                          ; $6b12: $07
    cpl                                           ; $6b13: $2f
    sbc a                                         ; $6b14: $9f
    inc hl                                        ; $6b15: $23
    ld d, h                                       ; $6b16: $54
    call Call_08d_43a1                            ; $6b17: $cd $a1 $43
    ld d, l                                       ; $6b1a: $55
    jr nz, jr_08d_6b63                            ; $6b1b: $20 $46

    ld b, a                                       ; $6b1d: $47
    ld d, [hl]                                    ; $6b1e: $56
    inc h                                         ; $6b1f: $24
    xor e                                         ; $6b20: $ab
    dec d                                         ; $6b21: $15
    ld d, a                                       ; $6b22: $57
    ld b, $0e                                     ; $6b23: $06 $0e
    ld b, $0e                                     ; $6b25: $06 $0e
    dec c                                         ; $6b27: $0d
    ld c, $05                                     ; $6b28: $0e $05
    ld c, $06                                     ; $6b2a: $0e $06
    ld b, $05                                     ; $6b2c: $06 $05
    ld c, $06                                     ; $6b2e: $0e $06

jr_08d_6b30:
    dec c                                         ; $6b30: $0d
    ld b, $0e                                     ; $6b31: $06 $0e
    ld e, [hl]                                    ; $6b33: $5e
    ld e, a                                       ; $6b34: $5f
    ld e, [hl]                                    ; $6b35: $5e
    ld e, b                                       ; $6b36: $58
    ld h, c                                       ; $6b37: $61
    ld h, d                                       ; $6b38: $62
    ld h, c                                       ; $6b39: $61
    ld e, c                                       ; $6b3a: $59
    ld h, h                                       ; $6b3b: $64
    ld h, l                                       ; $6b3c: $65
    ld h, h                                       ; $6b3d: $64
    ld l, h                                       ; $6b3e: $6c
    ld h, a                                       ; $6b3f: $67
    ld l, b                                       ; $6b40: $68
    ld l, c                                       ; $6b41: $69
    inc d                                         ; $6b42: $14
    add h                                         ; $6b43: $84
    add h                                         ; $6b44: $84
    and h                                         ; $6b45: $a4
    ld c, $04                                     ; $6b46: $0e $04
    inc b                                         ; $6b48: $04
    inc h                                         ; $6b49: $24
    ld c, $04                                     ; $6b4a: $0e $04
    inc b                                         ; $6b4c: $04
    inc h                                         ; $6b4d: $24
    ld b, $04                                     ; $6b4e: $06 $04
    inc b                                         ; $6b50: $04
    inc b                                         ; $6b51: $04
    ld b, $08                                     ; $6b52: $06 $08
    inc de                                        ; $6b54: $13
    inc sp                                        ; $6b55: $33
    ld l, $47                                     ; $6b56: $2e $47
    xor b                                         ; $6b58: $a8
    inc [hl]                                      ; $6b59: $34
    dec [hl]                                      ; $6b5a: $35
    ld b, a                                       ; $6b5b: $47
    ld c, b                                       ; $6b5c: $48
    ld e, h                                       ; $6b5d: $5c
    rra                                           ; $6b5e: $1f
    dec d                                         ; $6b5f: $15
    ld d, $22                                     ; $6b60: $16 $22
    inc hl                                        ; $6b62: $23

jr_08d_6b63:
    ld b, $06                                     ; $6b63: $06 $06
    ld b, $07                                     ; $6b65: $06 $07
    ld c, $0d                                     ; $6b67: $0e $0d
    ld b, $07                                     ; $6b69: $06 $07
    ld b, $06                                     ; $6b6b: $06 $06
    dec b                                         ; $6b6d: $05
    rlca                                          ; $6b6e: $07
    ld b, $06                                     ; $6b6f: $06 $06
    ld b, $07                                     ; $6b71: $06 $07
    pop de                                        ; $6b73: $d1
    jp nc, $0403                                  ; $6b74: $d2 $03 $04

    pop de                                        ; $6b77: $d1
    or h                                          ; $6b78: $b4
    or l                                          ; $6b79: $b5
    or l                                          ; $6b7a: $b5
    pop de                                        ; $6b7b: $d1
    pop de                                        ; $6b7c: $d1
    pop de                                        ; $6b7d: $d1
    pop de                                        ; $6b7e: $d1
    pop de                                        ; $6b7f: $d1
    pop de                                        ; $6b80: $d1
    pop de                                        ; $6b81: $d1
    pop de                                        ; $6b82: $d1
    add b                                         ; $6b83: $80
    add b                                         ; $6b84: $80
    rlca                                          ; $6b85: $07
    ld b, $80                                     ; $6b86: $06 $80
    adc b                                         ; $6b88: $88
    adc b                                         ; $6b89: $88
    adc b                                         ; $6b8a: $88
    add b                                         ; $6b8b: $80
    add b                                         ; $6b8c: $80
    add b                                         ; $6b8d: $80
    add b                                         ; $6b8e: $80
    add b                                         ; $6b8f: $80
    add b                                         ; $6b90: $80
    add b                                         ; $6b91: $80
    add b                                         ; $6b92: $80
    sub a                                         ; $6b93: $97
    sbc b                                         ; $6b94: $98
    sbc c                                         ; $6b95: $99
    sbc d                                         ; $6b96: $9a
    or l                                          ; $6b97: $b5
    or l                                          ; $6b98: $b5
    or l                                          ; $6b99: $b5
    or l                                          ; $6b9a: $b5
    pop de                                        ; $6b9b: $d1
    pop de                                        ; $6b9c: $d1
    pop de                                        ; $6b9d: $d1
    pop de                                        ; $6b9e: $d1
    pop de                                        ; $6b9f: $d1
    pop de                                        ; $6ba0: $d1
    pop de                                        ; $6ba1: $d1
    pop de                                        ; $6ba2: $d1
    dec c                                         ; $6ba3: $0d
    ld c, $0e                                     ; $6ba4: $0e $0e
    ld c, $88                                     ; $6ba6: $0e $88
    adc b                                         ; $6ba8: $88
    adc b                                         ; $6ba9: $88
    adc b                                         ; $6baa: $88
    add b                                         ; $6bab: $80
    add b                                         ; $6bac: $80
    add b                                         ; $6bad: $80
    add b                                         ; $6bae: $80
    add b                                         ; $6baf: $80
    add b                                         ; $6bb0: $80
    add b                                         ; $6bb1: $80
    add b                                         ; $6bb2: $80
    sbc e                                         ; $6bb3: $9b
    dec de                                        ; $6bb4: $1b
    inc e                                         ; $6bb5: $1c
    ld e, d                                       ; $6bb6: $5a
    or l                                          ; $6bb7: $b5
    or l                                          ; $6bb8: $b5
    or l                                          ; $6bb9: $b5
    or l                                          ; $6bba: $b5
    pop de                                        ; $6bbb: $d1
    pop de                                        ; $6bbc: $d1
    pop de                                        ; $6bbd: $d1
    pop de                                        ; $6bbe: $d1
    pop de                                        ; $6bbf: $d1
    pop de                                        ; $6bc0: $d1
    pop de                                        ; $6bc1: $d1
    pop de                                        ; $6bc2: $d1
    ld c, $06                                     ; $6bc3: $0e $06
    dec b                                         ; $6bc5: $05
    ld c, $88                                     ; $6bc6: $0e $88
    adc b                                         ; $6bc8: $88
    adc b                                         ; $6bc9: $88
    adc b                                         ; $6bca: $88
    add b                                         ; $6bcb: $80
    add b                                         ; $6bcc: $80
    add b                                         ; $6bcd: $80
    add b                                         ; $6bce: $80
    add b                                         ; $6bcf: $80
    add b                                         ; $6bd0: $80
    add b                                         ; $6bd1: $80
    add b                                         ; $6bd2: $80
    ld e, e                                       ; $6bd3: $5b
    dec hl                                        ; $6bd4: $2b
    inc bc                                        ; $6bd5: $03
    inc b                                         ; $6bd6: $04
    or l                                          ; $6bd7: $b5
    or l                                          ; $6bd8: $b5
    or l                                          ; $6bd9: $b5
    or l                                          ; $6bda: $b5
    pop de                                        ; $6bdb: $d1
    pop de                                        ; $6bdc: $d1
    pop de                                        ; $6bdd: $d1
    pop de                                        ; $6bde: $d1
    pop de                                        ; $6bdf: $d1
    pop de                                        ; $6be0: $d1
    pop de                                        ; $6be1: $d1
    pop de                                        ; $6be2: $d1
    ld c, $06                                     ; $6be3: $0e $06
    dec b                                         ; $6be5: $05
    ld b, $88                                     ; $6be6: $06 $88
    adc b                                         ; $6be8: $88
    adc b                                         ; $6be9: $88
    adc b                                         ; $6bea: $88
    add b                                         ; $6beb: $80
    add b                                         ; $6bec: $80
    add b                                         ; $6bed: $80
    add b                                         ; $6bee: $80
    add b                                         ; $6bef: $80
    add b                                         ; $6bf0: $80
    add b                                         ; $6bf1: $80
    add b                                         ; $6bf2: $80
    sub a                                         ; $6bf3: $97
    sbc b                                         ; $6bf4: $98
    sbc c                                         ; $6bf5: $99
    sbc d                                         ; $6bf6: $9a
    or l                                          ; $6bf7: $b5
    or l                                          ; $6bf8: $b5
    or l                                          ; $6bf9: $b5
    or l                                          ; $6bfa: $b5
    pop de                                        ; $6bfb: $d1
    pop de                                        ; $6bfc: $d1
    pop de                                        ; $6bfd: $d1
    pop de                                        ; $6bfe: $d1
    pop de                                        ; $6bff: $d1
    pop de                                        ; $6c00: $d1
    pop de                                        ; $6c01: $d1
    pop de                                        ; $6c02: $d1
    ld c, $0d                                     ; $6c03: $0e $0d
    ld c, $0e                                     ; $6c05: $0e $0e
    adc b                                         ; $6c07: $88
    adc b                                         ; $6c08: $88
    adc b                                         ; $6c09: $88
    adc b                                         ; $6c0a: $88
    add b                                         ; $6c0b: $80
    add b                                         ; $6c0c: $80
    add b                                         ; $6c0d: $80
    add b                                         ; $6c0e: $80
    add b                                         ; $6c0f: $80
    add b                                         ; $6c10: $80
    add b                                         ; $6c11: $80
    add b                                         ; $6c12: $80
    sbc e                                         ; $6c13: $9b
    ld e, h                                       ; $6c14: $5c
    ld e, l                                       ; $6c15: $5d
    dec e                                         ; $6c16: $1d
    or l                                          ; $6c17: $b5
    or l                                          ; $6c18: $b5
    or l                                          ; $6c19: $b5
    or l                                          ; $6c1a: $b5
    pop de                                        ; $6c1b: $d1
    pop de                                        ; $6c1c: $d1
    pop de                                        ; $6c1d: $d1
    pop de                                        ; $6c1e: $d1
    pop de                                        ; $6c1f: $d1
    pop de                                        ; $6c20: $d1
    pop de                                        ; $6c21: $d1
    pop de                                        ; $6c22: $d1
    ld c, $0e                                     ; $6c23: $0e $0e
    ld c, $06                                     ; $6c25: $0e $06
    adc b                                         ; $6c27: $88
    adc b                                         ; $6c28: $88
    adc b                                         ; $6c29: $88
    adc b                                         ; $6c2a: $88
    add b                                         ; $6c2b: $80
    add b                                         ; $6c2c: $80
    add b                                         ; $6c2d: $80
    add b                                         ; $6c2e: $80
    add b                                         ; $6c2f: $80
    add b                                         ; $6c30: $80
    add b                                         ; $6c31: $80
    add b                                         ; $6c32: $80
    ld a, [hl+]                                   ; $6c33: $2a
    dec hl                                        ; $6c34: $2b
    inc bc                                        ; $6c35: $03
    inc b                                         ; $6c36: $04
    or l                                          ; $6c37: $b5
    or l                                          ; $6c38: $b5
    or l                                          ; $6c39: $b5
    or l                                          ; $6c3a: $b5
    pop de                                        ; $6c3b: $d1
    pop de                                        ; $6c3c: $d1
    pop de                                        ; $6c3d: $d1
    pop de                                        ; $6c3e: $d1
    pop de                                        ; $6c3f: $d1
    pop de                                        ; $6c40: $d1
    pop de                                        ; $6c41: $d1
    pop de                                        ; $6c42: $d1
    dec b                                         ; $6c43: $05
    ld b, $06                                     ; $6c44: $06 $06
    rlca                                          ; $6c46: $07
    adc b                                         ; $6c47: $88
    adc b                                         ; $6c48: $88
    adc b                                         ; $6c49: $88
    adc b                                         ; $6c4a: $88
    add b                                         ; $6c4b: $80
    add b                                         ; $6c4c: $80
    add b                                         ; $6c4d: $80
    add b                                         ; $6c4e: $80
    add b                                         ; $6c4f: $80
    add b                                         ; $6c50: $80
    add b                                         ; $6c51: $80
    add b                                         ; $6c52: $80
    jp nc, $d1d1                                  ; $6c53: $d2 $d1 $d1

    pop de                                        ; $6c56: $d1
    ld c, d                                       ; $6c57: $4a
    pop de                                        ; $6c58: $d1
    pop de                                        ; $6c59: $d1
    pop de                                        ; $6c5a: $d1
    pop de                                        ; $6c5b: $d1
    pop de                                        ; $6c5c: $d1
    pop de                                        ; $6c5d: $d1
    pop de                                        ; $6c5e: $d1
    pop de                                        ; $6c5f: $d1
    pop de                                        ; $6c60: $d1
    pop de                                        ; $6c61: $d1
    pop de                                        ; $6c62: $d1
    add b                                         ; $6c63: $80
    add b                                         ; $6c64: $80
    add b                                         ; $6c65: $80
    add b                                         ; $6c66: $80
    adc b                                         ; $6c67: $88
    add b                                         ; $6c68: $80
    add b                                         ; $6c69: $80
    add b                                         ; $6c6a: $80
    add b                                         ; $6c6b: $80
    add b                                         ; $6c6c: $80
    add b                                         ; $6c6d: $80
    add b                                         ; $6c6e: $80
    add b                                         ; $6c6f: $80
    add b                                         ; $6c70: $80
    add b                                         ; $6c71: $80
    add b                                         ; $6c72: $80
    ld c, $00                                     ; $6c73: $0e $00
    ld b, $00                                     ; $6c75: $06 $00
    jr nz, jr_08d_6c7e                            ; $6c77: $20 $05

    pop de                                        ; $6c79: $d1
    pop de                                        ; $6c7a: $d1
    pop de                                        ; $6c7b: $d1
    pop de                                        ; $6c7c: $d1
    pop de                                        ; $6c7d: $d1

jr_08d_6c7e:
    pop de                                        ; $6c7e: $d1
    pop de                                        ; $6c7f: $d1
    pop de                                        ; $6c80: $d1
    pop de                                        ; $6c81: $d1
    pop de                                        ; $6c82: $d1
    pop de                                        ; $6c83: $d1
    pop de                                        ; $6c84: $d1
    pop de                                        ; $6c85: $d1
    pop de                                        ; $6c86: $d1
    jp nc, $80d3                                  ; $6c87: $d2 $d3 $80

    add b                                         ; $6c8a: $80
    add b                                         ; $6c8b: $80
    add b                                         ; $6c8c: $80
    add b                                         ; $6c8d: $80
    add b                                         ; $6c8e: $80
    add b                                         ; $6c8f: $80
    add b                                         ; $6c90: $80
    add b                                         ; $6c91: $80
    add b                                         ; $6c92: $80
    add b                                         ; $6c93: $80
    add b                                         ; $6c94: $80
    add b                                         ; $6c95: $80
    add b                                         ; $6c96: $80
    add b                                         ; $6c97: $80
    add b                                         ; $6c98: $80
    pop de                                        ; $6c99: $d1
    pop de                                        ; $6c9a: $d1
    pop de                                        ; $6c9b: $d1
    pop de                                        ; $6c9c: $d1
    pop de                                        ; $6c9d: $d1
    pop de                                        ; $6c9e: $d1
    pop de                                        ; $6c9f: $d1
    pop de                                        ; $6ca0: $d1
    pop de                                        ; $6ca1: $d1
    pop de                                        ; $6ca2: $d1
    pop de                                        ; $6ca3: $d1
    pop de                                        ; $6ca4: $d1
    db $d3                                        ; $6ca5: $d3
    db $d3                                        ; $6ca6: $d3
    db $d3                                        ; $6ca7: $d3
    db $d3                                        ; $6ca8: $d3
    add b                                         ; $6ca9: $80
    add b                                         ; $6caa: $80
    add b                                         ; $6cab: $80
    add b                                         ; $6cac: $80
    add b                                         ; $6cad: $80
    add b                                         ; $6cae: $80
    add b                                         ; $6caf: $80
    add b                                         ; $6cb0: $80
    add b                                         ; $6cb1: $80
    add b                                         ; $6cb2: $80
    add b                                         ; $6cb3: $80
    add b                                         ; $6cb4: $80
    add b                                         ; $6cb5: $80
    add b                                         ; $6cb6: $80
    add b                                         ; $6cb7: $80
    add b                                         ; $6cb8: $80
    pop de                                        ; $6cb9: $d1
    pop de                                        ; $6cba: $d1
    call nc, $d1d5                                ; $6cbb: $d4 $d5 $d1
    pop de                                        ; $6cbe: $d1
    sub $d7                                       ; $6cbf: $d6 $d7
    pop de                                        ; $6cc1: $d1
    pop de                                        ; $6cc2: $d1
    sub $d8                                       ; $6cc3: $d6 $d8
    pop de                                        ; $6cc5: $d1
    pop de                                        ; $6cc6: $d1
    sub $d9                                       ; $6cc7: $d6 $d9
    add b                                         ; $6cc9: $80
    add b                                         ; $6cca: $80
    add b                                         ; $6ccb: $80
    rlca                                          ; $6ccc: $07
    add b                                         ; $6ccd: $80
    add b                                         ; $6cce: $80
    add b                                         ; $6ccf: $80
    rlca                                          ; $6cd0: $07
    add b                                         ; $6cd1: $80
    add b                                         ; $6cd2: $80
    add b                                         ; $6cd3: $80
    rlca                                          ; $6cd4: $07
    add b                                         ; $6cd5: $80
    add b                                         ; $6cd6: $80
    add b                                         ; $6cd7: $80
    dec b                                         ; $6cd8: $05
    jp c, $dcdb                                   ; $6cd9: $da $db $dc

    db $dd                                        ; $6cdc: $dd
    sbc $df                                       ; $6cdd: $de $df
    ldh [$e1], a                                  ; $6cdf: $e0 $e1
    ld [c], a                                     ; $6ce1: $e2
    db $e3                                        ; $6ce2: $e3
    db $e4                                        ; $6ce3: $e4
    push hl                                       ; $6ce4: $e5
    and $e7                                       ; $6ce5: $e6 $e7
    add sp, -$17                                  ; $6ce7: $e8 $e9
    rlca                                          ; $6ce9: $07
    dec b                                         ; $6cea: $05
    ld b, $05                                     ; $6ceb: $06 $05
    dec b                                         ; $6ced: $05
    dec b                                         ; $6cee: $05
    ld b, $06                                     ; $6cef: $06 $06
    ld b, $06                                     ; $6cf1: $06 $06
    ld b, $06                                     ; $6cf3: $06 $06
    ld b, $06                                     ; $6cf5: $06 $06
    dec b                                         ; $6cf7: $05
    dec b                                         ; $6cf8: $05
    ld [$eceb], a                                 ; $6cf9: $ea $eb $ec
    db $ed                                        ; $6cfc: $ed
    xor $ef                                       ; $6cfd: $ee $ef
    ldh a, [$f1]                                  ; $6cff: $f0 $f1
    ld a, [c]                                     ; $6d01: $f2
    di                                            ; $6d02: $f3
    db $f4                                        ; $6d03: $f4
    push af                                       ; $6d04: $f5
    or $f7                                        ; $6d05: $f6 $f7
    ld hl, sp-$07                                 ; $6d07: $f8 $f9
    ld b, $05                                     ; $6d09: $06 $05
    rlca                                          ; $6d0b: $07
    dec b                                         ; $6d0c: $05
    dec b                                         ; $6d0d: $05
    dec b                                         ; $6d0e: $05
    rlca                                          ; $6d0f: $07
    rlca                                          ; $6d10: $07
    ld b, $06                                     ; $6d11: $06 $06
    dec b                                         ; $6d13: $05
    ld b, $06                                     ; $6d14: $06 $06
    ld b, $06                                     ; $6d16: $06 $06
    ld b, $fa                                     ; $6d18: $06 $fa
    ei                                            ; $6d1a: $fb
    db $fc                                        ; $6d1b: $fc
    db $fd                                        ; $6d1c: $fd
    cp $ff                                        ; $6d1d: $fe $ff
    nop                                           ; $6d1f: $00
    ld bc, $0302                                  ; $6d20: $01 $02 $03
    inc b                                         ; $6d23: $04
    dec b                                         ; $6d24: $05
    ld b, $07                                     ; $6d25: $06 $07
    ld [$0609], sp                                ; $6d27: $08 $09 $06
    dec b                                         ; $6d2a: $05
    rlca                                          ; $6d2b: $07
    ld b, $05                                     ; $6d2c: $06 $05
    ld b, $05                                     ; $6d2e: $06 $05
    ld b, $05                                     ; $6d30: $06 $05
    rlca                                          ; $6d32: $07
    ld b, $06                                     ; $6d33: $06 $06
    ld b, $07                                     ; $6d35: $06 $07
    dec b                                         ; $6d37: $05
    rlca                                          ; $6d38: $07
    pop de                                        ; $6d39: $d1
    pop de                                        ; $6d3a: $d1
    sub $0a                                       ; $6d3b: $d6 $0a
    pop de                                        ; $6d3d: $d1
    dec bc                                        ; $6d3e: $0b
    sub $0c                                       ; $6d3f: $d6 $0c
    pop de                                        ; $6d41: $d1
    dec bc                                        ; $6d42: $0b
    call nc, $d10d                                ; $6d43: $d4 $0d $d1
    dec bc                                        ; $6d46: $0b
    ld c, $d3                                     ; $6d47: $0e $d3
    add b                                         ; $6d49: $80
    add b                                         ; $6d4a: $80
    add b                                         ; $6d4b: $80
    rlca                                          ; $6d4c: $07
    add b                                         ; $6d4d: $80
    add b                                         ; $6d4e: $80
    add b                                         ; $6d4f: $80
    inc bc                                        ; $6d50: $03
    add b                                         ; $6d51: $80
    add b                                         ; $6d52: $80
    add b                                         ; $6d53: $80
    inc bc                                        ; $6d54: $03
    add b                                         ; $6d55: $80
    add b                                         ; $6d56: $80
    add b                                         ; $6d57: $80
    add b                                         ; $6d58: $80
    rrca                                          ; $6d59: $0f
    db $10                                        ; $6d5a: $10
    ld de, $1312                                  ; $6d5b: $11 $12 $13
    inc d                                         ; $6d5e: $14
    dec d                                         ; $6d5f: $15
    ld d, $17                                     ; $6d60: $16 $17
    jr @+$1b                                      ; $6d62: $18 $19

    ld a, [de]                                    ; $6d64: $1a
    db $d3                                        ; $6d65: $d3
    db $d3                                        ; $6d66: $d3
    db $d3                                        ; $6d67: $d3
    db $d3                                        ; $6d68: $d3
    rlca                                          ; $6d69: $07
    rlca                                          ; $6d6a: $07
    dec b                                         ; $6d6b: $05
    ld b, $03                                     ; $6d6c: $06 $03
    inc bc                                        ; $6d6e: $03
    inc bc                                        ; $6d6f: $03
    inc bc                                        ; $6d70: $03
    ld [bc], a                                    ; $6d71: $02
    ld [bc], a                                    ; $6d72: $02
    ld [bc], a                                    ; $6d73: $02
    ld [bc], a                                    ; $6d74: $02
    add b                                         ; $6d75: $80
    add b                                         ; $6d76: $80
    add b                                         ; $6d77: $80
    add b                                         ; $6d78: $80

jr_08d_6d79:
    dec de                                        ; $6d79: $1b
    inc e                                         ; $6d7a: $1c
    dec e                                         ; $6d7b: $1d
    ld e, $13                                     ; $6d7c: $1e $13
    inc d                                         ; $6d7e: $14
    dec d                                         ; $6d7f: $15
    ld d, $17                                     ; $6d80: $16 $17
    jr jr_08d_6d9d                                ; $6d82: $18 $19

    ld a, [de]                                    ; $6d84: $1a
    db $d3                                        ; $6d85: $d3
    db $d3                                        ; $6d86: $d3
    db $d3                                        ; $6d87: $d3
    db $d3                                        ; $6d88: $d3
    ld b, $06                                     ; $6d89: $06 $06
    ld b, $06                                     ; $6d8b: $06 $06
    inc bc                                        ; $6d8d: $03
    inc bc                                        ; $6d8e: $03
    inc bc                                        ; $6d8f: $03
    inc bc                                        ; $6d90: $03
    ld [bc], a                                    ; $6d91: $02
    ld [bc], a                                    ; $6d92: $02
    ld [bc], a                                    ; $6d93: $02
    ld [bc], a                                    ; $6d94: $02
    add b                                         ; $6d95: $80
    add b                                         ; $6d96: $80
    add b                                         ; $6d97: $80
    add b                                         ; $6d98: $80
    rra                                           ; $6d99: $1f
    jr nz, jr_08d_6dbd                            ; $6d9a: $20 $21

    ld [hl+], a                                   ; $6d9c: $22

jr_08d_6d9d:
    inc hl                                        ; $6d9d: $23
    ld d, $24                                     ; $6d9e: $16 $24
    dec h                                         ; $6da0: $25
    ld h, $1a                                     ; $6da1: $26 $1a
    daa                                           ; $6da3: $27
    jr z, jr_08d_6d79                             ; $6da4: $28 $d3

    db $d3                                        ; $6da6: $d3
    db $d3                                        ; $6da7: $d3
    db $d3                                        ; $6da8: $d3
    dec b                                         ; $6da9: $05
    dec b                                         ; $6daa: $05
    ld b, $06                                     ; $6dab: $06 $06
    inc bc                                        ; $6dad: $03
    inc bc                                        ; $6dae: $03
    inc bc                                        ; $6daf: $03
    inc bc                                        ; $6db0: $03
    ld [bc], a                                    ; $6db1: $02
    ld [bc], a                                    ; $6db2: $02
    ld [bc], a                                    ; $6db3: $02
    ld [bc], a                                    ; $6db4: $02
    add b                                         ; $6db5: $80
    add b                                         ; $6db6: $80
    add b                                         ; $6db7: $80
    add b                                         ; $6db8: $80
    pop de                                        ; $6db9: $d1
    pop de                                        ; $6dba: $d1
    pop de                                        ; $6dbb: $d1
    pop de                                        ; $6dbc: $d1

jr_08d_6dbd:
    pop de                                        ; $6dbd: $d1
    pop de                                        ; $6dbe: $d1
    pop de                                        ; $6dbf: $d1
    pop de                                        ; $6dc0: $d1
    pop de                                        ; $6dc1: $d1
    pop de                                        ; $6dc2: $d1
    pop de                                        ; $6dc3: $d1
    pop de                                        ; $6dc4: $d1
    pop de                                        ; $6dc5: $d1
    pop de                                        ; $6dc6: $d1
    pop de                                        ; $6dc7: $d1
    pop de                                        ; $6dc8: $d1
    add b                                         ; $6dc9: $80
    add b                                         ; $6dca: $80
    add b                                         ; $6dcb: $80
    add b                                         ; $6dcc: $80
    add b                                         ; $6dcd: $80
    add b                                         ; $6dce: $80
    add b                                         ; $6dcf: $80
    add b                                         ; $6dd0: $80
    add b                                         ; $6dd1: $80
    add b                                         ; $6dd2: $80
    add b                                         ; $6dd3: $80
    add b                                         ; $6dd4: $80
    add b                                         ; $6dd5: $80
    add b                                         ; $6dd6: $80
    add b                                         ; $6dd7: $80
    add b                                         ; $6dd8: $80
    pop de                                        ; $6dd9: $d1
    pop de                                        ; $6dda: $d1
    pop de                                        ; $6ddb: $d1
    pop de                                        ; $6ddc: $d1
    pop de                                        ; $6ddd: $d1
    pop de                                        ; $6dde: $d1
    pop de                                        ; $6ddf: $d1
    pop de                                        ; $6de0: $d1
    pop de                                        ; $6de1: $d1
    pop de                                        ; $6de2: $d1
    pop de                                        ; $6de3: $d1
    pop de                                        ; $6de4: $d1
    db $d3                                        ; $6de5: $d3
    add hl, hl                                    ; $6de6: $29
    pop de                                        ; $6de7: $d1
    pop de                                        ; $6de8: $d1
    add b                                         ; $6de9: $80
    add b                                         ; $6dea: $80
    add b                                         ; $6deb: $80
    add b                                         ; $6dec: $80
    add b                                         ; $6ded: $80
    add b                                         ; $6dee: $80
    add b                                         ; $6def: $80
    add b                                         ; $6df0: $80
    add b                                         ; $6df1: $80
    add b                                         ; $6df2: $80
    add b                                         ; $6df3: $80
    add b                                         ; $6df4: $80
    add b                                         ; $6df5: $80
    add b                                         ; $6df6: $80
    add b                                         ; $6df7: $80
    add b                                         ; $6df8: $80
    jp c, $dcdb                                   ; $6df9: $da $db $dc

    db $dd                                        ; $6dfc: $dd
    ld a, [hl+]                                   ; $6dfd: $2a
    rst $18                                       ; $6dfe: $df
    ldh [$e1], a                                  ; $6dff: $e0 $e1
    dec hl                                        ; $6e01: $2b
    db $e3                                        ; $6e02: $e3
    db $e4                                        ; $6e03: $e4
    push hl                                       ; $6e04: $e5
    inc l                                         ; $6e05: $2c
    rst $20                                       ; $6e06: $e7
    add sp, -$17                                  ; $6e07: $e8 $e9
    dec b                                         ; $6e09: $05
    dec b                                         ; $6e0a: $05
    ld b, $06                                     ; $6e0b: $06 $06
    ld b, $06                                     ; $6e0d: $06 $06
    ld b, $06                                     ; $6e0f: $06 $06
    ld b, $06                                     ; $6e11: $06 $06
    ld b, $06                                     ; $6e13: $06 $06
    dec b                                         ; $6e15: $05
    ld b, $06                                     ; $6e16: $06 $06
    ld b, $ea                                     ; $6e18: $06 $ea
    db $eb                                        ; $6e1a: $eb
    db $ec                                        ; $6e1b: $ec
    db $ed                                        ; $6e1c: $ed
    xor $ef                                       ; $6e1d: $ee $ef
    ldh a, [$f1]                                  ; $6e1f: $f0 $f1
    ld a, [c]                                     ; $6e21: $f2
    di                                            ; $6e22: $f3
    db $f4                                        ; $6e23: $f4
    push af                                       ; $6e24: $f5
    or $f7                                        ; $6e25: $f6 $f7
    ld hl, sp-$07                                 ; $6e27: $f8 $f9
    ld b, $06                                     ; $6e29: $06 $06
    ld b, $06                                     ; $6e2b: $06 $06
    ld b, $06                                     ; $6e2d: $06 $06
    dec b                                         ; $6e2f: $05
    ld b, $06                                     ; $6e30: $06 $06
    dec b                                         ; $6e32: $05
    rlca                                          ; $6e33: $07
    ld b, $05                                     ; $6e34: $06 $05
    rlca                                          ; $6e36: $07
    rlca                                          ; $6e37: $07
    dec b                                         ; $6e38: $05
    ld a, [$fcfb]                                 ; $6e39: $fa $fb $fc
    db $fd                                        ; $6e3c: $fd
    cp $ff                                        ; $6e3d: $fe $ff
    nop                                           ; $6e3f: $00
    ld bc, $0302                                  ; $6e40: $01 $02 $03
    inc b                                         ; $6e43: $04
    dec b                                         ; $6e44: $05
    ld b, $07                                     ; $6e45: $06 $07
    ld [$0509], sp                                ; $6e47: $08 $09 $05
    rlca                                          ; $6e4a: $07
    ld b, $06                                     ; $6e4b: $06 $06
    ld b, $05                                     ; $6e4d: $06 $05
    rlca                                          ; $6e4f: $07
    dec b                                         ; $6e50: $05
    ld b, $06                                     ; $6e51: $06 $06
    ld b, $07                                     ; $6e53: $06 $07
    ld b, $06                                     ; $6e55: $06 $06
    dec b                                         ; $6e57: $05
    dec b                                         ; $6e58: $05
    jp c, $d1d4                                   ; $6e59: $da $d4 $d1

    pop de                                        ; $6e5c: $d1
    ld a, [hl+]                                   ; $6e5d: $2a
    call nc, $d1d1                                ; $6e5e: $d4 $d1 $d1
    dec hl                                        ; $6e61: $2b
    call nc, $d1d1                                ; $6e62: $d4 $d1 $d1
    inc l                                         ; $6e65: $2c
    call nc, $d1d1                                ; $6e66: $d4 $d1 $d1
    ld b, $80                                     ; $6e69: $06 $80
    add b                                         ; $6e6b: $80
    add b                                         ; $6e6c: $80
    ld b, $80                                     ; $6e6d: $06 $80
    add b                                         ; $6e6f: $80
    add b                                         ; $6e70: $80
    rlca                                          ; $6e71: $07
    add b                                         ; $6e72: $80
    add b                                         ; $6e73: $80
    add b                                         ; $6e74: $80
    rlca                                          ; $6e75: $07
    add b                                         ; $6e76: $80
    add b                                         ; $6e77: $80
    add b                                         ; $6e78: $80
    dec l                                         ; $6e79: $2d
    db $10                                        ; $6e7a: $10
    ld de, $0c12                                  ; $6e7b: $11 $12 $0c
    inc de                                        ; $6e7e: $13
    inc d                                         ; $6e7f: $14
    dec d                                         ; $6e80: $15
    dec c                                         ; $6e81: $0d
    rla                                           ; $6e82: $17
    jr jr_08d_6e9e                                ; $6e83: $18 $19

    db $d3                                        ; $6e85: $d3
    db $d3                                        ; $6e86: $d3
    db $d3                                        ; $6e87: $d3
    db $d3                                        ; $6e88: $d3
    dec b                                         ; $6e89: $05
    ld b, $06                                     ; $6e8a: $06 $06
    rlca                                          ; $6e8c: $07
    inc bc                                        ; $6e8d: $03
    inc bc                                        ; $6e8e: $03
    inc bc                                        ; $6e8f: $03
    inc bc                                        ; $6e90: $03
    ld [bc], a                                    ; $6e91: $02
    ld [bc], a                                    ; $6e92: $02
    ld [bc], a                                    ; $6e93: $02
    ld [bc], a                                    ; $6e94: $02
    add b                                         ; $6e95: $80
    add b                                         ; $6e96: $80
    add b                                         ; $6e97: $80
    add b                                         ; $6e98: $80
    dec de                                        ; $6e99: $1b
    inc e                                         ; $6e9a: $1c
    dec e                                         ; $6e9b: $1d
    ld e, $16                                     ; $6e9c: $1e $16

jr_08d_6e9e:
    inc h                                         ; $6e9e: $24
    dec h                                         ; $6e9f: $25
    ld l, $1a                                     ; $6ea0: $2e $1a
    daa                                           ; $6ea2: $27
    jr z, jr_08d_6ed4                             ; $6ea3: $28 $2f

    add hl, hl                                    ; $6ea5: $29
    jr nc, jr_08d_6ed9                            ; $6ea6: $30 $31

    ld [hl-], a                                   ; $6ea8: $32
    dec b                                         ; $6ea9: $05
    dec b                                         ; $6eaa: $05
    ld b, $06                                     ; $6eab: $06 $06
    inc bc                                        ; $6ead: $03
    inc bc                                        ; $6eae: $03
    inc bc                                        ; $6eaf: $03
    inc bc                                        ; $6eb0: $03
    ld [bc], a                                    ; $6eb1: $02
    ld [bc], a                                    ; $6eb2: $02
    ld [bc], a                                    ; $6eb3: $02
    ld [bc], a                                    ; $6eb4: $02
    add b                                         ; $6eb5: $80
    ld [bc], a                                    ; $6eb6: $02
    ld [bc], a                                    ; $6eb7: $02
    ld [bc], a                                    ; $6eb8: $02
    rra                                           ; $6eb9: $1f
    jr nz, jr_08d_6edd                            ; $6eba: $20 $21

    ld [hl+], a                                   ; $6ebc: $22
    inc de                                        ; $6ebd: $13
    inc d                                         ; $6ebe: $14
    inc hl                                        ; $6ebf: $23
    ld d, $17                                     ; $6ec0: $16 $17
    jr @+$28                                      ; $6ec2: $18 $26

    ld a, [de]                                    ; $6ec4: $1a
    inc sp                                        ; $6ec5: $33
    inc [hl]                                      ; $6ec6: $34
    dec [hl]                                      ; $6ec7: $35
    ld [hl], $06                                  ; $6ec8: $36 $06
    dec b                                         ; $6eca: $05
    rlca                                          ; $6ecb: $07
    ld b, $03                                     ; $6ecc: $06 $03
    inc bc                                        ; $6ece: $03
    inc bc                                        ; $6ecf: $03
    inc bc                                        ; $6ed0: $03
    ld [bc], a                                    ; $6ed1: $02
    ld [bc], a                                    ; $6ed2: $02
    ld [bc], a                                    ; $6ed3: $02

jr_08d_6ed4:
    ld [bc], a                                    ; $6ed4: $02
    ld [bc], a                                    ; $6ed5: $02
    ld [bc], a                                    ; $6ed6: $02
    ld [bc], a                                    ; $6ed7: $02
    ld [bc], a                                    ; $6ed8: $02

jr_08d_6ed9:
    dec l                                         ; $6ed9: $2d
    call nc, $d1d1                                ; $6eda: $d4 $d1 $d1

jr_08d_6edd:
    inc h                                         ; $6edd: $24
    call nc, $d1d1                                ; $6ede: $d4 $d1 $d1
    daa                                           ; $6ee1: $27
    call nc, $d1d1                                ; $6ee2: $d4 $d1 $d1
    jr nc, jr_08d_6ef5                            ; $6ee5: $30 $0e

    db $d3                                        ; $6ee7: $d3
    db $d3                                        ; $6ee8: $d3
    ld b, $80                                     ; $6ee9: $06 $80
    add b                                         ; $6eeb: $80
    add b                                         ; $6eec: $80
    inc bc                                        ; $6eed: $03
    add b                                         ; $6eee: $80
    add b                                         ; $6eef: $80
    add b                                         ; $6ef0: $80
    inc bc                                        ; $6ef1: $03
    add b                                         ; $6ef2: $80
    add b                                         ; $6ef3: $80
    add b                                         ; $6ef4: $80

jr_08d_6ef5:
    inc bc                                        ; $6ef5: $03
    add b                                         ; $6ef6: $80
    add b                                         ; $6ef7: $80
    add b                                         ; $6ef8: $80
    call nc, $3837                                ; $6ef9: $d4 $37 $38
    inc c                                         ; $6efc: $0c
    call nc, Call_000_3a39                        ; $6efd: $d4 $39 $3a
    dec sp                                        ; $6f00: $3b
    call nc, $2524                                ; $6f01: $d4 $24 $25
    ld l, $d4                                     ; $6f04: $2e $d4
    daa                                           ; $6f06: $27
    jr z, jr_08d_6f38                             ; $6f07: $28 $2f

    add b                                         ; $6f09: $80
    ld [bc], a                                    ; $6f0a: $02
    ld [bc], a                                    ; $6f0b: $02
    ld [bc], a                                    ; $6f0c: $02
    add b                                         ; $6f0d: $80
    inc bc                                        ; $6f0e: $03
    ld [bc], a                                    ; $6f0f: $02
    ld [bc], a                                    ; $6f10: $02
    add b                                         ; $6f11: $80
    inc bc                                        ; $6f12: $03
    ld [bc], a                                    ; $6f13: $02
    ld [bc], a                                    ; $6f14: $02
    add b                                         ; $6f15: $80
    inc bc                                        ; $6f16: $03
    ld [bc], a                                    ; $6f17: $02
    ld [bc], a                                    ; $6f18: $02
    inc a                                         ; $6f19: $3c
    dec sp                                        ; $6f1a: $3b
    dec d                                         ; $6f1b: $15
    dec a                                         ; $6f1c: $3d
    dec d                                         ; $6f1d: $15
    ld a, $19                                     ; $6f1e: $3e $19
    ccf                                           ; $6f20: $3f
    inc de                                        ; $6f21: $13
    inc d                                         ; $6f22: $14
    inc hl                                        ; $6f23: $23
    ld d, $17                                     ; $6f24: $16 $17
    jr jr_08d_6f4e                                ; $6f26: $18 $26

    ld a, [de]                                    ; $6f28: $1a
    ld [bc], a                                    ; $6f29: $02
    ld [bc], a                                    ; $6f2a: $02
    ld [bc], a                                    ; $6f2b: $02
    ld [bc], a                                    ; $6f2c: $02
    ld [bc], a                                    ; $6f2d: $02
    ld [bc], a                                    ; $6f2e: $02
    ld [bc], a                                    ; $6f2f: $02
    ld [bc], a                                    ; $6f30: $02
    ld [bc], a                                    ; $6f31: $02
    ld [bc], a                                    ; $6f32: $02
    ld [bc], a                                    ; $6f33: $02
    ld [bc], a                                    ; $6f34: $02
    ld [bc], a                                    ; $6f35: $02
    ld [bc], a                                    ; $6f36: $02
    ld [bc], a                                    ; $6f37: $02

jr_08d_6f38:
    ld [bc], a                                    ; $6f38: $02
    scf                                           ; $6f39: $37
    push de                                       ; $6f3a: $d5
    ld b, b                                       ; $6f3b: $40
    db $db                                        ; $6f3c: $db
    add hl, sp                                    ; $6f3d: $39
    rst $10                                       ; $6f3e: $d7
    sbc $df                                       ; $6f3f: $de $df
    inc h                                         ; $6f41: $24
    ret c                                         ; $6f42: $d8

    ld b, c                                       ; $6f43: $41
    db $e3                                        ; $6f44: $e3
    daa                                           ; $6f45: $27
    reti                                          ; $6f46: $d9


    and $e7                                       ; $6f47: $e6 $e7
    inc bc                                        ; $6f49: $03
    rlca                                          ; $6f4a: $07
    dec b                                         ; $6f4b: $05
    ld b, $03                                     ; $6f4c: $06 $03

jr_08d_6f4e:
    rlca                                          ; $6f4e: $07
    dec b                                         ; $6f4f: $05
    dec b                                         ; $6f50: $05
    inc bc                                        ; $6f51: $03
    dec b                                         ; $6f52: $05
    ld b, $06                                     ; $6f53: $06 $06
    inc bc                                        ; $6f55: $03
    dec b                                         ; $6f56: $05
    ld b, $06                                     ; $6f57: $06 $06
    pop de                                        ; $6f59: $d1
    pop de                                        ; $6f5a: $d1
    pop de                                        ; $6f5b: $d1
    pop de                                        ; $6f5c: $d1
    jp nc, $d3d3                                  ; $6f5d: $d2 $d3 $d3

    db $d3                                        ; $6f60: $d3
    call nc, $4342                                ; $6f61: $d4 $42 $43
    ld b, h                                       ; $6f64: $44
    ld b, l                                       ; $6f65: $45
    ld b, [hl]                                    ; $6f66: $46
    ld b, a                                       ; $6f67: $47
    ld c, b                                       ; $6f68: $48
    add b                                         ; $6f69: $80
    add b                                         ; $6f6a: $80
    add b                                         ; $6f6b: $80
    add b                                         ; $6f6c: $80
    add b                                         ; $6f6d: $80
    add b                                         ; $6f6e: $80
    add b                                         ; $6f6f: $80
    add b                                         ; $6f70: $80
    add b                                         ; $6f71: $80
    rlca                                          ; $6f72: $07
    ld b, $06                                     ; $6f73: $06 $06
    add b                                         ; $6f75: $80
    rlca                                          ; $6f76: $07
    inc b                                         ; $6f77: $04
    inc b                                         ; $6f78: $04
    call c, $eadd                                 ; $6f79: $dc $dd $ea
    db $eb                                        ; $6f7c: $eb
    ldh [$e1], a                                  ; $6f7d: $e0 $e1
    xor $ef                                       ; $6f7f: $ee $ef
    db $e4                                        ; $6f81: $e4
    push hl                                       ; $6f82: $e5
    ld a, [c]                                     ; $6f83: $f2
    di                                            ; $6f84: $f3
    add sp, -$17                                  ; $6f85: $e8 $e9
    or $f7                                        ; $6f87: $f6 $f7
    dec b                                         ; $6f89: $05
    rlca                                          ; $6f8a: $07
    dec b                                         ; $6f8b: $05
    ld b, $06                                     ; $6f8c: $06 $06
    ld b, $06                                     ; $6f8e: $06 $06
    dec b                                         ; $6f90: $05
    ld b, $05                                     ; $6f91: $06 $05
    dec b                                         ; $6f93: $05
    dec b                                         ; $6f94: $05
    ld b, $07                                     ; $6f95: $06 $07
    ld b, $06                                     ; $6f97: $06 $06
    db $ec                                        ; $6f99: $ec
    db $ed                                        ; $6f9a: $ed
    ld a, [$f0fb]                                 ; $6f9b: $fa $fb $f0
    pop af                                        ; $6f9e: $f1
    cp $ff                                        ; $6f9f: $fe $ff
    db $f4                                        ; $6fa1: $f4
    push af                                       ; $6fa2: $f5
    ld [bc], a                                    ; $6fa3: $02
    inc bc                                        ; $6fa4: $03
    ld hl, sp-$07                                 ; $6fa5: $f8 $f9
    ld b, $07                                     ; $6fa7: $06 $07
    ld b, $06                                     ; $6fa9: $06 $06
    ld b, $06                                     ; $6fab: $06 $06
    dec b                                         ; $6fad: $05
    dec b                                         ; $6fae: $05
    ld b, $06                                     ; $6faf: $06 $06
    ld b, $05                                     ; $6fb1: $06 $05
    dec b                                         ; $6fb3: $05
    ld b, $06                                     ; $6fb4: $06 $06
    ld b, $06                                     ; $6fb6: $06 $06
    ld b, $fc                                     ; $6fb8: $06 $fc
    db $fd                                        ; $6fba: $fd
    jp c, Jump_000_00db                           ; $6fbb: $da $db $00

    ld bc, $df2a                                  ; $6fbe: $01 $2a $df
    inc b                                         ; $6fc1: $04
    dec b                                         ; $6fc2: $05
    dec hl                                        ; $6fc3: $2b
    db $e3                                        ; $6fc4: $e3
    ld [$2c09], sp                                ; $6fc5: $08 $09 $2c
    rst $20                                       ; $6fc8: $e7
    ld b, $06                                     ; $6fc9: $06 $06
    ld b, $05                                     ; $6fcb: $06 $05
    ld b, $05                                     ; $6fcd: $06 $05
    ld b, $07                                     ; $6fcf: $06 $07
    dec b                                         ; $6fd1: $05
    rlca                                          ; $6fd2: $07
    ld b, $05                                     ; $6fd3: $06 $05
    ld b, $05                                     ; $6fd5: $06 $05
    dec b                                         ; $6fd7: $05
    ld b, $49                                     ; $6fd8: $06 $49
    ld c, d                                       ; $6fda: $4a
    ld c, e                                       ; $6fdb: $4b
    ld c, h                                       ; $6fdc: $4c
    ld c, l                                       ; $6fdd: $4d
    ld c, [hl]                                    ; $6fde: $4e
    ld c, a                                       ; $6fdf: $4f
    ld d, b                                       ; $6fe0: $50
    ld d, c                                       ; $6fe1: $51
    ld d, d                                       ; $6fe2: $52
    ld d, e                                       ; $6fe3: $53
    ld d, h                                       ; $6fe4: $54
    ld d, l                                       ; $6fe5: $55
    ld l, $13                                     ; $6fe6: $2e $13
    inc d                                         ; $6fe8: $14
    ld b, $05                                     ; $6fe9: $06 $05
    inc b                                         ; $6feb: $04
    inc b                                         ; $6fec: $04
    ld b, $06                                     ; $6fed: $06 $06
    inc b                                         ; $6fef: $04
    inc b                                         ; $6ff0: $04
    ld b, $06                                     ; $6ff1: $06 $06
    inc b                                         ; $6ff3: $04
    inc b                                         ; $6ff4: $04
    ld b, $03                                     ; $6ff5: $06 $03
    inc bc                                        ; $6ff7: $03
    inc bc                                        ; $6ff8: $03
    pop de                                        ; $6ff9: $d1
    pop de                                        ; $6ffa: $d1
    pop de                                        ; $6ffb: $d1
    pop de                                        ; $6ffc: $d1
    db $d3                                        ; $6ffd: $d3
    db $d3                                        ; $6ffe: $d3
    add hl, hl                                    ; $6fff: $29
    pop de                                        ; $7000: $d1
    ld d, [hl]                                    ; $7001: $56
    ld d, a                                       ; $7002: $57
    call nc, $58d1                                ; $7003: $d4 $d1 $58
    ld e, c                                       ; $7006: $59
    ld c, $d3                                     ; $7007: $0e $d3
    add b                                         ; $7009: $80
    add b                                         ; $700a: $80
    add b                                         ; $700b: $80
    add b                                         ; $700c: $80
    add b                                         ; $700d: $80
    add b                                         ; $700e: $80
    add b                                         ; $700f: $80
    add b                                         ; $7010: $80
    ld b, $06                                     ; $7011: $06 $06
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    inc b                                         ; $7015: $04
    ld b, $00                                     ; $7016: $06 $00
    nop                                           ; $7018: $00
    pop de                                        ; $7019: $d1
    pop de                                        ; $701a: $d1
    pop de                                        ; $701b: $d1
    pop de                                        ; $701c: $d1
    pop de                                        ; $701d: $d1
    pop de                                        ; $701e: $d1
    pop de                                        ; $701f: $d1
    pop de                                        ; $7020: $d1
    pop de                                        ; $7021: $d1
    pop de                                        ; $7022: $d1
    pop de                                        ; $7023: $d1
    pop de                                        ; $7024: $d1
    add hl, hl                                    ; $7025: $29
    pop de                                        ; $7026: $d1
    pop de                                        ; $7027: $d1
    pop de                                        ; $7028: $d1
    add b                                         ; $7029: $80
    add b                                         ; $702a: $80
    add b                                         ; $702b: $80
    add b                                         ; $702c: $80
    add b                                         ; $702d: $80
    add b                                         ; $702e: $80
    add b                                         ; $702f: $80
    add b                                         ; $7030: $80
    add b                                         ; $7031: $80
    add b                                         ; $7032: $80
    add b                                         ; $7033: $80
    add b                                         ; $7034: $80
    add b                                         ; $7035: $80
    add b                                         ; $7036: $80
    add b                                         ; $7037: $80
    add b                                         ; $7038: $80
    ld e, d                                       ; $7039: $5a
    ld e, e                                       ; $703a: $5b
    push de                                       ; $703b: $d5
    ld b, b                                       ; $703c: $40
    ld e, h                                       ; $703d: $5c
    ld e, l                                       ; $703e: $5d
    rst $10                                       ; $703f: $d7
    sbc $5e                                       ; $7040: $de $5e
    ld e, a                                       ; $7042: $5f
    ret c                                         ; $7043: $d8

    ld b, c                                       ; $7044: $41
    ld a, [de]                                    ; $7045: $1a
    daa                                           ; $7046: $27
    reti                                          ; $7047: $d9


    and $04                                       ; $7048: $e6 $04
    dec b                                         ; $704a: $05
    ld b, $07                                     ; $704b: $06 $07
    inc b                                         ; $704d: $04
    rlca                                          ; $704e: $07
    ld b, $05                                     ; $704f: $06 $05
    inc b                                         ; $7051: $04
    dec b                                         ; $7052: $05
    ld b, $05                                     ; $7053: $06 $05
    inc bc                                        ; $7055: $03
    inc bc                                        ; $7056: $03
    ld b, $06                                     ; $7057: $06 $06
    call nc, $d1d1                                ; $7059: $d4 $d1 $d1
    pop de                                        ; $705c: $d1
    call nc, $d1d1                                ; $705d: $d4 $d1 $d1
    pop de                                        ; $7060: $d1
    call nc, $d1d1                                ; $7061: $d4 $d1 $d1
    pop de                                        ; $7064: $d1
    call nc, $d1d1                                ; $7065: $d4 $d1 $d1
    pop de                                        ; $7068: $d1
    add b                                         ; $7069: $80
    add b                                         ; $706a: $80
    add b                                         ; $706b: $80
    add b                                         ; $706c: $80
    add b                                         ; $706d: $80
    add b                                         ; $706e: $80
    add b                                         ; $706f: $80
    add b                                         ; $7070: $80
    add b                                         ; $7071: $80
    add b                                         ; $7072: $80
    add b                                         ; $7073: $80
    add b                                         ; $7074: $80
    add b                                         ; $7075: $80
    add b                                         ; $7076: $80
    add b                                         ; $7077: $80
    add b                                         ; $7078: $80
    call nc, Call_000_3130                        ; $7079: $d4 $30 $31
    ld [hl-], a                                   ; $707c: $32
    call nc, $3837                                ; $707d: $d4 $37 $38
    inc c                                         ; $7080: $0c
    call nc, Call_000_3a39                        ; $7081: $d4 $39 $3a
    dec sp                                        ; $7084: $3b
    ld c, $d3                                     ; $7085: $0e $d3
    db $d3                                        ; $7087: $d3
    db $d3                                        ; $7088: $d3
    add b                                         ; $7089: $80
    inc bc                                        ; $708a: $03
    ld [bc], a                                    ; $708b: $02
    ld [bc], a                                    ; $708c: $02
    add b                                         ; $708d: $80
    inc bc                                        ; $708e: $03
    ld [bc], a                                    ; $708f: $02
    ld [bc], a                                    ; $7090: $02
    add b                                         ; $7091: $80
    inc bc                                        ; $7092: $03
    ld [bc], a                                    ; $7093: $02
    ld [bc], a                                    ; $7094: $02
    add b                                         ; $7095: $80
    add b                                         ; $7096: $80
    add b                                         ; $7097: $80
    add b                                         ; $7098: $80
    inc sp                                        ; $7099: $33
    inc [hl]                                      ; $709a: $34
    dec [hl]                                      ; $709b: $35
    ld [hl], $3c                                  ; $709c: $36 $3c
    dec sp                                        ; $709e: $3b
    dec d                                         ; $709f: $15
    dec a                                         ; $70a0: $3d
    dec d                                         ; $70a1: $15
    ld a, $19                                     ; $70a2: $3e $19
    ccf                                           ; $70a4: $3f
    db $d3                                        ; $70a5: $d3
    db $d3                                        ; $70a6: $d3
    db $d3                                        ; $70a7: $d3
    db $d3                                        ; $70a8: $d3
    ld [bc], a                                    ; $70a9: $02
    ld [bc], a                                    ; $70aa: $02
    ld [bc], a                                    ; $70ab: $02
    ld [bc], a                                    ; $70ac: $02
    ld [bc], a                                    ; $70ad: $02
    ld [bc], a                                    ; $70ae: $02
    ld [bc], a                                    ; $70af: $02
    ld [bc], a                                    ; $70b0: $02
    ld [bc], a                                    ; $70b1: $02
    ld [bc], a                                    ; $70b2: $02
    ld [bc], a                                    ; $70b3: $02
    ld [bc], a                                    ; $70b4: $02
    add b                                         ; $70b5: $80
    add b                                         ; $70b6: $80
    add b                                         ; $70b7: $80
    add b                                         ; $70b8: $80
    jr nc, jr_08d_70c5                            ; $70b9: $30 $0a

    rrca                                          ; $70bb: $0f
    db $10                                        ; $70bc: $10
    scf                                           ; $70bd: $37
    jr c, jr_08d_70ef                             ; $70be: $38 $2f

    inc a                                         ; $70c0: $3c
    dec sp                                        ; $70c1: $3b
    dec d                                         ; $70c2: $15
    ld [hl-], a                                   ; $70c3: $32
    ld h, b                                       ; $70c4: $60

jr_08d_70c5:
    db $d3                                        ; $70c5: $d3
    db $d3                                        ; $70c6: $d3
    db $d3                                        ; $70c7: $d3
    db $d3                                        ; $70c8: $d3
    inc bc                                        ; $70c9: $03
    rlca                                          ; $70ca: $07
    dec b                                         ; $70cb: $05
    rlca                                          ; $70cc: $07
    inc bc                                        ; $70cd: $03
    inc bc                                        ; $70ce: $03
    inc bc                                        ; $70cf: $03
    inc bc                                        ; $70d0: $03
    ld [bc], a                                    ; $70d1: $02
    ld [bc], a                                    ; $70d2: $02
    ld [bc], a                                    ; $70d3: $02
    ld [bc], a                                    ; $70d4: $02
    add b                                         ; $70d5: $80
    add b                                         ; $70d6: $80
    add b                                         ; $70d7: $80
    add b                                         ; $70d8: $80
    ld de, $1b12                                  ; $70d9: $11 $12 $1b
    inc e                                         ; $70dc: $1c
    dec sp                                        ; $70dd: $3b
    ld h, $3d                                     ; $70de: $26 $3d
    scf                                           ; $70e0: $37
    ld a, $35                                     ; $70e1: $3e $35
    ccf                                           ; $70e3: $3f
    add hl, sp                                    ; $70e4: $39
    db $d3                                        ; $70e5: $d3
    db $d3                                        ; $70e6: $d3
    db $d3                                        ; $70e7: $d3
    db $d3                                        ; $70e8: $d3
    dec b                                         ; $70e9: $05
    rlca                                          ; $70ea: $07
    dec b                                         ; $70eb: $05
    dec b                                         ; $70ec: $05
    inc bc                                        ; $70ed: $03
    inc bc                                        ; $70ee: $03

jr_08d_70ef:
    inc bc                                        ; $70ef: $03
    inc bc                                        ; $70f0: $03
    ld [bc], a                                    ; $70f1: $02
    ld [bc], a                                    ; $70f2: $02
    ld [bc], a                                    ; $70f3: $02
    ld [bc], a                                    ; $70f4: $02
    add b                                         ; $70f5: $80
    add b                                         ; $70f6: $80
    add b                                         ; $70f7: $80
    add b                                         ; $70f8: $80
    dec e                                         ; $70f9: $1d
    ld e, $1f                                     ; $70fa: $1e $1f
    jr nz, jr_08d_7136                            ; $70fc: $20 $38

    inc c                                         ; $70fe: $0c
    inc a                                         ; $70ff: $3c
    dec sp                                        ; $7100: $3b
    ld a, [hl-]                                   ; $7101: $3a
    dec c                                         ; $7102: $0d
    ld h, b                                       ; $7103: $60
    ld a, $d3                                     ; $7104: $3e $d3
    db $d3                                        ; $7106: $d3
    db $d3                                        ; $7107: $d3
    db $d3                                        ; $7108: $d3
    dec b                                         ; $7109: $05
    dec b                                         ; $710a: $05
    dec b                                         ; $710b: $05
    ld b, $03                                     ; $710c: $06 $03
    inc bc                                        ; $710e: $03
    inc bc                                        ; $710f: $03
    inc bc                                        ; $7110: $03
    ld [bc], a                                    ; $7111: $02
    ld [bc], a                                    ; $7112: $02
    ld [bc], a                                    ; $7113: $02
    ld [bc], a                                    ; $7114: $02
    add b                                         ; $7115: $80
    add b                                         ; $7116: $80
    add b                                         ; $7117: $80
    add b                                         ; $7118: $80
    ld hl, $2d22                                  ; $7119: $21 $22 $2d
    db $10                                        ; $711c: $10
    ld h, $3d                                     ; $711d: $26 $3d
    scf                                           ; $711f: $37
    jr c, jr_08d_7157                             ; $7120: $38 $35

    ccf                                           ; $7122: $3f
    add hl, sp                                    ; $7123: $39
    ld a, [hl-]                                   ; $7124: $3a
    db $d3                                        ; $7125: $d3
    db $d3                                        ; $7126: $d3
    db $d3                                        ; $7127: $d3
    db $d3                                        ; $7128: $d3
    ld b, $06                                     ; $7129: $06 $06
    ld b, $06                                     ; $712b: $06 $06
    inc bc                                        ; $712d: $03
    inc bc                                        ; $712e: $03
    inc bc                                        ; $712f: $03
    inc bc                                        ; $7130: $03
    ld [bc], a                                    ; $7131: $02
    ld [bc], a                                    ; $7132: $02
    ld [bc], a                                    ; $7133: $02
    ld [bc], a                                    ; $7134: $02
    add b                                         ; $7135: $80

jr_08d_7136:
    add b                                         ; $7136: $80
    add b                                         ; $7137: $80
    add b                                         ; $7138: $80
    ld h, c                                       ; $7139: $61
    cpl                                           ; $713a: $2f
    rla                                           ; $713b: $17
    jr @+$0e                                      ; $713c: $18 $0c

    ld [hl-], a                                   ; $713e: $32
    inc sp                                        ; $713f: $33
    inc [hl]                                      ; $7140: $34
    dec c                                         ; $7141: $0d
    ld h, b                                       ; $7142: $60
    ld a, $35                                     ; $7143: $3e $35
    db $d3                                        ; $7145: $d3
    db $d3                                        ; $7146: $d3
    db $d3                                        ; $7147: $d3
    db $d3                                        ; $7148: $d3
    ld b, $03                                     ; $7149: $06 $03
    ld [bc], a                                    ; $714b: $02
    ld [bc], a                                    ; $714c: $02
    inc bc                                        ; $714d: $03
    inc bc                                        ; $714e: $03
    ld [bc], a                                    ; $714f: $02
    ld [bc], a                                    ; $7150: $02
    ld [bc], a                                    ; $7151: $02
    ld [bc], a                                    ; $7152: $02
    ld [bc], a                                    ; $7153: $02
    ld [bc], a                                    ; $7154: $02
    add b                                         ; $7155: $80
    add b                                         ; $7156: $80

jr_08d_7157:
    add b                                         ; $7157: $80
    add b                                         ; $7158: $80
    ld [hl], $30                                  ; $7159: $36 $30
    ld a, [bc]                                    ; $715b: $0a
    rrca                                          ; $715c: $0f
    dec a                                         ; $715d: $3d
    scf                                           ; $715e: $37
    inc c                                         ; $715f: $0c
    inc a                                         ; $7160: $3c
    ccf                                           ; $7161: $3f
    add hl, sp                                    ; $7162: $39
    dec c                                         ; $7163: $0d
    ld h, b                                       ; $7164: $60
    db $d3                                        ; $7165: $d3
    db $d3                                        ; $7166: $d3
    db $d3                                        ; $7167: $d3
    db $d3                                        ; $7168: $d3
    ld [bc], a                                    ; $7169: $02
    inc bc                                        ; $716a: $03
    dec b                                         ; $716b: $05
    ld b, $02                                     ; $716c: $06 $02
    inc bc                                        ; $716e: $03
    inc bc                                        ; $716f: $03
    inc bc                                        ; $7170: $03
    ld [bc], a                                    ; $7171: $02
    ld [bc], a                                    ; $7172: $02
    ld [bc], a                                    ; $7173: $02
    inc bc                                        ; $7174: $03
    add b                                         ; $7175: $80
    add b                                         ; $7176: $80
    add b                                         ; $7177: $80
    add b                                         ; $7178: $80
    call nc, $d1d1                                ; $7179: $d4 $d1 $d1
    pop de                                        ; $717c: $d1
    call nc, $d1d1                                ; $717d: $d4 $d1 $d1
    pop de                                        ; $7180: $d1
    call nc, $d1d1                                ; $7181: $d4 $d1 $d1
    pop de                                        ; $7184: $d1
    ld b, l                                       ; $7185: $45
    pop de                                        ; $7186: $d1
    pop de                                        ; $7187: $d1
    pop de                                        ; $7188: $d1
    add b                                         ; $7189: $80
    add b                                         ; $718a: $80
    add b                                         ; $718b: $80
    add b                                         ; $718c: $80
    add b                                         ; $718d: $80
    add b                                         ; $718e: $80
    add b                                         ; $718f: $80
    add b                                         ; $7190: $80
    add b                                         ; $7191: $80
    add b                                         ; $7192: $80
    add b                                         ; $7193: $80
    add b                                         ; $7194: $80
    add b                                         ; $7195: $80
    add b                                         ; $7196: $80
    add b                                         ; $7197: $80
    add b                                         ; $7198: $80
    rlca                                          ; $7199: $07
    nop                                           ; $719a: $00
    ld [$a000], sp                                ; $719b: $08 $00 $a0
    ld b, $d1                                     ; $719e: $06 $d1
    jp nc, $d4d3                                  ; $71a0: $d2 $d3 $d4

    pop de                                        ; $71a3: $d1
    jp nc, $d6d5                                  ; $71a4: $d2 $d5 $d6

    pop de                                        ; $71a7: $d1
    jp nc, $d8d7                                  ; $71a8: $d2 $d7 $d8

    pop de                                        ; $71ab: $d1
    jp nc, $dad9                                  ; $71ac: $d2 $d9 $da

    add b                                         ; $71af: $80
    add b                                         ; $71b0: $80
    inc bc                                        ; $71b1: $03
    inc bc                                        ; $71b2: $03
    add b                                         ; $71b3: $80
    add b                                         ; $71b4: $80
    inc bc                                        ; $71b5: $03
    inc bc                                        ; $71b6: $03
    add b                                         ; $71b7: $80
    add b                                         ; $71b8: $80
    inc bc                                        ; $71b9: $03
    ld bc, $8080                                  ; $71ba: $01 $80 $80
    inc bc                                        ; $71bd: $03
    ld bc, $dcdb                                  ; $71be: $01 $db $dc
    db $dd                                        ; $71c1: $dd
    db $d3                                        ; $71c2: $d3
    sbc $df                                       ; $71c3: $de $df
    ldh [$e1], a                                  ; $71c5: $e0 $e1
    ld [c], a                                     ; $71c7: $e2
    db $e3                                        ; $71c8: $e3
    db $e4                                        ; $71c9: $e4
    rst $10                                       ; $71ca: $d7
    push hl                                       ; $71cb: $e5
    and $e7                                       ; $71cc: $e6 $e7
    reti                                          ; $71ce: $d9


    inc bc                                        ; $71cf: $03
    inc bc                                        ; $71d0: $03
    inc bc                                        ; $71d1: $03
    inc hl                                        ; $71d2: $23
    inc bc                                        ; $71d3: $03
    inc bc                                        ; $71d4: $03
    inc bc                                        ; $71d5: $03
    inc bc                                        ; $71d6: $03
    ld bc, $0101                                  ; $71d7: $01 $01 $01
    inc hl                                        ; $71da: $23
    ld bc, $0101                                  ; $71db: $01 $01 $01
    inc hl                                        ; $71de: $23
    add sp, -$17                                  ; $71df: $e8 $e9
    ld [$eceb], a                                 ; $71e1: $ea $eb $ec
    db $ed                                        ; $71e4: $ed
    xor $ef                                       ; $71e5: $ee $ef
    ldh a, [$f1]                                  ; $71e7: $f0 $f1
    ld a, [c]                                     ; $71e9: $f2
    di                                            ; $71ea: $f3
    db $f4                                        ; $71eb: $f4
    push af                                       ; $71ec: $f5
    or $f7                                        ; $71ed: $f6 $f7
    inc bc                                        ; $71ef: $03
    ld [bc], a                                    ; $71f0: $02
    ld [bc], a                                    ; $71f1: $02
    ld [bc], a                                    ; $71f2: $02
    inc bc                                        ; $71f3: $03
    ld [bc], a                                    ; $71f4: $02
    ld [bc], a                                    ; $71f5: $02
    ld [bc], a                                    ; $71f6: $02
    inc bc                                        ; $71f7: $03
    ld [bc], a                                    ; $71f8: $02
    ld [bc], a                                    ; $71f9: $02
    ld bc, $0203                                  ; $71fa: $01 $03 $02
    ld [bc], a                                    ; $71fd: $02
    ld bc, $f8f8                                  ; $71fe: $01 $f8 $f8
    ld sp, hl                                     ; $7201: $f9
    ld [$fafa], a                                 ; $7202: $ea $fa $fa
    ei                                            ; $7205: $fb
    xor $fc                                       ; $7206: $ee $fc
    db $fc                                        ; $7208: $fc
    db $fd                                        ; $7209: $fd
    ld a, [c]                                     ; $720a: $f2
    cp $ff                                        ; $720b: $fe $ff
    nop                                           ; $720d: $00
    or $02                                        ; $720e: $f6 $02
    ld [bc], a                                    ; $7210: $02
    ld [bc], a                                    ; $7211: $02
    ld [hl+], a                                   ; $7212: $22
    ld [bc], a                                    ; $7213: $02
    ld [bc], a                                    ; $7214: $02
    ld [bc], a                                    ; $7215: $02
    ld [hl+], a                                   ; $7216: $22
    ld bc, $0101                                  ; $7217: $01 $01 $01
    ld [hl+], a                                   ; $721a: $22
    ld bc, $0101                                  ; $721b: $01 $01 $01
    ld [hl+], a                                   ; $721e: $22
    pop de                                        ; $721f: $d1
    jp nc, $0201                                  ; $7220: $d2 $01 $02

    pop de                                        ; $7223: $d1
    jp nc, $0403                                  ; $7224: $d2 $03 $04

    pop de                                        ; $7227: $d1
    jp nc, $0605                                  ; $7228: $d2 $05 $06

    pop de                                        ; $722b: $d1
    jp nc, Jump_000_0807                          ; $722c: $d2 $07 $08

    add b                                         ; $722f: $80
    add b                                         ; $7230: $80
    inc bc                                        ; $7231: $03
    ld bc, $8080                                  ; $7232: $01 $80 $80
    rlca                                          ; $7235: $07
    ld bc, $8080                                  ; $7236: $01 $80 $80
    rlca                                          ; $7239: $07
    ld bc, $8080                                  ; $723a: $01 $80 $80
    rlca                                          ; $723d: $07
    rlca                                          ; $723e: $07
    add hl, bc                                    ; $723f: $09
    ld a, [bc]                                    ; $7240: $0a
    dec bc                                        ; $7241: $0b
    ld bc, $0d0c                                  ; $7242: $01 $0c $0d
    ld c, $0f                                     ; $7245: $0e $0f
    db $10                                        ; $7247: $10
    ld de, $1312                                  ; $7248: $11 $12 $13
    inc d                                         ; $724b: $14
    dec d                                         ; $724c: $15
    ld d, $17                                     ; $724d: $16 $17
    ld bc, $0101                                  ; $724f: $01 $01 $01
    inc hl                                        ; $7252: $23
    ld bc, $0101                                  ; $7253: $01 $01 $01
    rlca                                          ; $7256: $07
    ld bc, $0101                                  ; $7257: $01 $01 $01
    rlca                                          ; $725a: $07
    rlca                                          ; $725b: $07
    rlca                                          ; $725c: $07
    rlca                                          ; $725d: $07
    rlca                                          ; $725e: $07
    jr jr_08d_727a                                ; $725f: $18 $19

    ld a, [de]                                    ; $7261: $1a
    dec de                                        ; $7262: $1b
    inc e                                         ; $7263: $1c
    dec e                                         ; $7264: $1d
    ld e, $1f                                     ; $7265: $1e $1f
    jr nz, jr_08d_728a                            ; $7267: $20 $21

    ld [hl+], a                                   ; $7269: $22
    inc hl                                        ; $726a: $23
    inc h                                         ; $726b: $24
    dec h                                         ; $726c: $25
    ld h, $27                                     ; $726d: $26 $27
    inc bc                                        ; $726f: $03
    ld [bc], a                                    ; $7270: $02
    ld [bc], a                                    ; $7271: $02
    ld bc, $0707                                  ; $7272: $01 $07 $07
    rlca                                          ; $7275: $07
    rlca                                          ; $7276: $07
    ld b, $06                                     ; $7277: $06 $06
    dec b                                         ; $7279: $05

jr_08d_727a:
    dec b                                         ; $727a: $05
    dec b                                         ; $727b: $05
    ld b, $05                                     ; $727c: $06 $05
    ld b, $28                                     ; $727e: $06 $28
    add hl, hl                                    ; $7280: $29
    ld a, [hl+]                                   ; $7281: $2a
    ld a, [de]                                    ; $7282: $1a
    dec hl                                        ; $7283: $2b
    inc l                                         ; $7284: $2c
    dec l                                         ; $7285: $2d
    ld l, $2f                                     ; $7286: $2e $2f
    jr nc, @+$33                                  ; $7288: $30 $31

jr_08d_728a:
    ld [hl-], a                                   ; $728a: $32
    inc sp                                        ; $728b: $33
    inc [hl]                                      ; $728c: $34
    ld d, $35                                     ; $728d: $16 $35
    ld bc, $0101                                  ; $728f: $01 $01 $01
    ld [hl+], a                                   ; $7292: $22
    rlca                                          ; $7293: $07
    rlca                                          ; $7294: $07
    rlca                                          ; $7295: $07
    rlca                                          ; $7296: $07
    ld b, $06                                     ; $7297: $06 $06
    ld b, $05                                     ; $7299: $06 $05
    ld b, $06                                     ; $729b: $06 $06
    dec b                                         ; $729d: $05
    ld b, $d1                                     ; $729e: $06 $d1
    jp nc, Jump_000_3736                          ; $72a0: $d2 $36 $37

    pop de                                        ; $72a3: $d1
    jp nc, $3938                                  ; $72a4: $d2 $38 $39

    pop de                                        ; $72a7: $d1
    jp nc, Jump_000_3b3a                          ; $72a8: $d2 $3a $3b

    pop de                                        ; $72ab: $d1
    jp nc, Jump_000_3d3c                          ; $72ac: $d2 $3c $3d

    add b                                         ; $72af: $80
    add b                                         ; $72b0: $80
    rlca                                          ; $72b1: $07
    ld b, $80                                     ; $72b2: $06 $80
    add b                                         ; $72b4: $80
    rlca                                          ; $72b5: $07
    dec b                                         ; $72b6: $05
    add b                                         ; $72b7: $80
    add b                                         ; $72b8: $80
    rlca                                          ; $72b9: $07
    ld b, $80                                     ; $72ba: $06 $80
    add b                                         ; $72bc: $80
    rlca                                          ; $72bd: $07
    ld b, $3e                                     ; $72be: $06 $3e
    ccf                                           ; $72c0: $3f
    ld b, b                                       ; $72c1: $40
    ld b, c                                       ; $72c2: $41
    ld b, d                                       ; $72c3: $42
    ld b, e                                       ; $72c4: $43
    ld b, h                                       ; $72c5: $44
    ld b, l                                       ; $72c6: $45
    ld b, [hl]                                    ; $72c7: $46
    ld b, a                                       ; $72c8: $47
    ld c, b                                       ; $72c9: $48
    ld c, c                                       ; $72ca: $49
    ld c, d                                       ; $72cb: $4a
    ld c, e                                       ; $72cc: $4b
    ld c, h                                       ; $72cd: $4c
    ld c, l                                       ; $72ce: $4d
    dec b                                         ; $72cf: $05
    dec b                                         ; $72d0: $05
    ld b, $06                                     ; $72d1: $06 $06
    ld b, $06                                     ; $72d3: $06 $06
    ld b, $05                                     ; $72d5: $06 $05
    inc b                                         ; $72d7: $04
    ld b, $05                                     ; $72d8: $06 $05
    inc bc                                        ; $72da: $03
    inc b                                         ; $72db: $04
    ld b, $06                                     ; $72dc: $06 $06
    inc bc                                        ; $72de: $03
    ld c, [hl]                                    ; $72df: $4e
    ld c, a                                       ; $72e0: $4f
    ld d, b                                       ; $72e1: $50
    ld d, c                                       ; $72e2: $51
    ld d, d                                       ; $72e3: $52
    ld d, e                                       ; $72e4: $53
    ld d, h                                       ; $72e5: $54
    ld d, l                                       ; $72e6: $55
    ld d, [hl]                                    ; $72e7: $56
    ld c, c                                       ; $72e8: $49
    ld a, [hl-]                                   ; $72e9: $3a
    dec sp                                        ; $72ea: $3b
    ld d, a                                       ; $72eb: $57
    ld c, l                                       ; $72ec: $4d
    inc a                                         ; $72ed: $3c
    dec a                                         ; $72ee: $3d
    dec b                                         ; $72ef: $05
    dec b                                         ; $72f0: $05
    ld b, $06                                     ; $72f1: $06 $06
    dec b                                         ; $72f3: $05
    ld b, $06                                     ; $72f4: $06 $06
    dec b                                         ; $72f6: $05
    inc bc                                        ; $72f7: $03
    inc hl                                        ; $72f8: $23
    dec b                                         ; $72f9: $05
    ld b, $03                                     ; $72fa: $06 $03
    inc hl                                        ; $72fc: $23
    ld b, $05                                     ; $72fd: $06 $05
    ld e, b                                       ; $72ff: $58
    ld e, c                                       ; $7300: $59
    ld b, b                                       ; $7301: $40
    ld e, d                                       ; $7302: $5a
    ld e, e                                       ; $7303: $5b
    ld e, h                                       ; $7304: $5c
    ld b, h                                       ; $7305: $44
    ld e, l                                       ; $7306: $5d
    ld e, [hl]                                    ; $7307: $5e
    ld e, a                                       ; $7308: $5f
    ld c, b                                       ; $7309: $48
    ld h, b                                       ; $730a: $60
    ld h, c                                       ; $730b: $61
    ld h, d                                       ; $730c: $62
    ld h, e                                       ; $730d: $63
    ld h, h                                       ; $730e: $64
    dec b                                         ; $730f: $05
    ld b, $06                                     ; $7310: $06 $06
    ld b, $06                                     ; $7312: $06 $06
    ld b, $05                                     ; $7314: $06 $05
    ld b, $05                                     ; $7316: $06 $05
    ld b, $05                                     ; $7318: $06 $05
    ld b, $06                                     ; $731a: $06 $06
    dec b                                         ; $731c: $05
    ld b, $06                                     ; $731d: $06 $06
    pop de                                        ; $731f: $d1
    jp nc, Jump_08d_6522                          ; $7320: $d2 $22 $65

    pop de                                        ; $7323: $d1
    jp nc, Jump_08d_6766                          ; $7324: $d2 $66 $67

    pop de                                        ; $7327: $d1
    jp nc, $6836                                  ; $7328: $d2 $36 $68

    pop de                                        ; $732b: $d1
    jp nc, Jump_08d_6938                          ; $732c: $d2 $38 $69

    add b                                         ; $732f: $80
    add b                                         ; $7330: $80
    rlca                                          ; $7331: $07
    ld b, $80                                     ; $7332: $06 $80
    add b                                         ; $7334: $80
    rlca                                          ; $7335: $07
    dec b                                         ; $7336: $05
    add b                                         ; $7337: $80
    add b                                         ; $7338: $80
    rlca                                          ; $7339: $07
    ld b, $80                                     ; $733a: $06 $80
    add b                                         ; $733c: $80
    rlca                                          ; $733d: $07
    ld b, $6a                                     ; $733e: $06 $6a
    ld l, e                                       ; $7340: $6b
    ld sp, $6c4d                                  ; $7341: $31 $4d $6c
    ld l, l                                       ; $7344: $6d
    ld d, $6e                                     ; $7345: $16 $6e
    ld l, a                                       ; $7347: $6f
    ld [hl], b                                    ; $7348: $70
    ld b, b                                       ; $7349: $40
    ld [hl], c                                    ; $734a: $71
    ld e, e                                       ; $734b: $5b
    ld e, h                                       ; $734c: $5c
    ld b, h                                       ; $734d: $44
    ld [hl], d                                    ; $734e: $72
    inc b                                         ; $734f: $04
    inc b                                         ; $7350: $04
    dec b                                         ; $7351: $05
    inc bc                                        ; $7352: $03
    inc b                                         ; $7353: $04
    inc b                                         ; $7354: $04
    ld b, $03                                     ; $7355: $06 $03
    rlca                                          ; $7357: $07
    rlca                                          ; $7358: $07
    rlca                                          ; $7359: $07
    inc bc                                        ; $735a: $03
    rlca                                          ; $735b: $07
    rlca                                          ; $735c: $07
    rlca                                          ; $735d: $07
    inc bc                                        ; $735e: $03
    ld d, a                                       ; $735f: $57
    ld c, l                                       ; $7360: $4d
    ld [hl+], a                                   ; $7361: $22
    ld h, l                                       ; $7362: $65
    ld [hl], e                                    ; $7363: $73
    ld l, [hl]                                    ; $7364: $6e
    ld h, $74                                     ; $7365: $26 $74
    ld [hl], l                                    ; $7367: $75
    halt                                          ; $7368: $76
    ld d, b                                       ; $7369: $50
    ld d, c                                       ; $736a: $51
    ld [hl], a                                    ; $736b: $77
    ld a, b                                       ; $736c: $78
    ld a, c                                       ; $736d: $79
    ld a, d                                       ; $736e: $7a
    inc bc                                        ; $736f: $03
    inc hl                                        ; $7370: $23
    rlca                                          ; $7371: $07
    ld b, $03                                     ; $7372: $06 $03
    inc hl                                        ; $7374: $23
    rlca                                          ; $7375: $07
    ld b, $03                                     ; $7376: $06 $03
    inc bc                                        ; $7378: $03
    rlca                                          ; $7379: $07
    dec b                                         ; $737a: $05
    inc bc                                        ; $737b: $03
    inc bc                                        ; $737c: $03
    rlca                                          ; $737d: $07
    ld b, $7b                                     ; $737e: $06 $7b
    ld a, h                                       ; $7380: $7c
    ld a, l                                       ; $7381: $7d
    ld a, [hl]                                    ; $7382: $7e
    ld a, a                                       ; $7383: $7f
    add b                                         ; $7384: $80
    add c                                         ; $7385: $81
    add d                                         ; $7386: $82
    ld e, b                                       ; $7387: $58
    ld e, c                                       ; $7388: $59
    ld b, b                                       ; $7389: $40
    ld b, c                                       ; $738a: $41
    add e                                         ; $738b: $83
    add h                                         ; $738c: $84
    ld b, h                                       ; $738d: $44
    ld b, l                                       ; $738e: $45
    dec b                                         ; $738f: $05
    ld b, $06                                     ; $7390: $06 $06
    ld b, $06                                     ; $7392: $06 $06
    ld c, $0d                                     ; $7394: $0e $0d
    ld c, $05                                     ; $7396: $0e $05
    ld b, $06                                     ; $7398: $06 $06
    dec b                                         ; $739a: $05
    ld c, $0d                                     ; $739b: $0e $0d
    dec b                                         ; $739d: $05
    dec b                                         ; $739e: $05
    jp hl                                         ; $739f: $e9


    add l                                         ; $73a0: $85
    db $d3                                        ; $73a1: $d3
    call nc, $86ed                                ; $73a2: $d4 $ed $86
    push de                                       ; $73a5: $d5
    sub $f1                                       ; $73a6: $d6 $f1
    ldh a, [$87]                                  ; $73a8: $f0 $87
    ret c                                         ; $73aa: $d8

    push af                                       ; $73ab: $f5
    adc b                                         ; $73ac: $88
    adc c                                         ; $73ad: $89
    jp c, $0b22                                   ; $73ae: $da $22 $0b

    inc bc                                        ; $73b1: $03
    inc bc                                        ; $73b2: $03
    ld [hl+], a                                   ; $73b3: $22
    dec bc                                        ; $73b4: $0b
    inc bc                                        ; $73b5: $03
    inc bc                                        ; $73b6: $03
    ld [hl+], a                                   ; $73b7: $22
    inc hl                                        ; $73b8: $23
    dec bc                                        ; $73b9: $0b
    ld bc, $0b22                                  ; $73ba: $01 $22 $0b
    dec bc                                        ; $73bd: $0b
    ld bc, $dcdb                                  ; $73be: $01 $db $dc
    db $dd                                        ; $73c1: $dd
    db $d3                                        ; $73c2: $d3
    sbc $df                                       ; $73c3: $de $df
    ldh [$d5], a                                  ; $73c5: $e0 $d5
    ld [c], a                                     ; $73c7: $e2
    db $e3                                        ; $73c8: $e3
    db $e4                                        ; $73c9: $e4
    rst $10                                       ; $73ca: $d7
    push hl                                       ; $73cb: $e5
    and $e7                                       ; $73cc: $e6 $e7
    reti                                          ; $73ce: $d9


    inc bc                                        ; $73cf: $03
    inc bc                                        ; $73d0: $03
    inc bc                                        ; $73d1: $03
    inc hl                                        ; $73d2: $23
    inc bc                                        ; $73d3: $03
    inc bc                                        ; $73d4: $03
    inc bc                                        ; $73d5: $03
    inc hl                                        ; $73d6: $23
    ld bc, $0101                                  ; $73d7: $01 $01 $01
    inc hl                                        ; $73da: $23
    ld bc, $0101                                  ; $73db: $01 $01 $01
    inc hl                                        ; $73de: $23
    jp nc, $d1d1                                  ; $73df: $d2 $d1 $d1

    pop de                                        ; $73e2: $d1
    jp nc, $d1d1                                  ; $73e3: $d2 $d1 $d1

    pop de                                        ; $73e6: $d1
    jp nc, $d1d1                                  ; $73e7: $d2 $d1 $d1

    pop de                                        ; $73ea: $d1
    jp nc, $d1d1                                  ; $73eb: $d2 $d1 $d1

    pop de                                        ; $73ee: $d1
    add b                                         ; $73ef: $80
    add b                                         ; $73f0: $80
    add b                                         ; $73f1: $80
    add b                                         ; $73f2: $80
    add b                                         ; $73f3: $80
    add b                                         ; $73f4: $80
    add b                                         ; $73f5: $80
    add b                                         ; $73f6: $80
    add b                                         ; $73f7: $80
    add b                                         ; $73f8: $80
    add b                                         ; $73f9: $80
    add b                                         ; $73fa: $80
    add b                                         ; $73fb: $80
    add b                                         ; $73fc: $80
    add b                                         ; $73fd: $80
    add b                                         ; $73fe: $80
    add hl, de                                    ; $73ff: $19
    jr jr_08d_7403                                ; $7400: $18 $01

    ld [bc], a                                    ; $7402: $02

jr_08d_7403:
    adc d                                         ; $7403: $8a
    adc e                                         ; $7404: $8b
    adc h                                         ; $7405: $8c
    inc b                                         ; $7406: $04
    adc l                                         ; $7407: $8d
    adc [hl]                                      ; $7408: $8e
    ld [hl+], a                                   ; $7409: $22
    ld b, $8f                                     ; $740a: $06 $8f
    sub b                                         ; $740c: $90
    ld h, [hl]                                    ; $740d: $66
    ld h, a                                       ; $740e: $67
    ld [hl+], a                                   ; $740f: $22
    inc hl                                        ; $7410: $23
    inc bc                                        ; $7411: $03
    ld bc, $0f0f                                  ; $7412: $01 $0f $0f
    rrca                                          ; $7415: $0f
    ld bc, $0e0e                                  ; $7416: $01 $0e $0e
    ld b, $01                                     ; $7419: $06 $01
    ld c, $0d                                     ; $741b: $0e $0d
    ld b, $07                                     ; $741d: $06 $07
    add hl, bc                                    ; $741f: $09
    ld a, [bc]                                    ; $7420: $0a
    dec bc                                        ; $7421: $0b
    ld bc, $0d0c                                  ; $7422: $01 $0c $0d
    ld c, $91                                     ; $7425: $0e $91
    db $10                                        ; $7427: $10
    ld de, $3212                                  ; $7428: $11 $12 $32
    ld a, a                                       ; $742b: $7f
    sub d                                         ; $742c: $92
    sub e                                         ; $742d: $93
    sub h                                         ; $742e: $94
    ld bc, $0101                                  ; $742f: $01 $01 $01
    inc hl                                        ; $7432: $23
    ld bc, $0101                                  ; $7433: $01 $01 $01
    rrca                                          ; $7436: $0f
    ld bc, $0101                                  ; $7437: $01 $01 $01
    rlca                                          ; $743a: $07
    rlca                                          ; $743b: $07
    rrca                                          ; $743c: $0f
    rrca                                          ; $743d: $0f
    rrca                                          ; $743e: $0f
    sub l                                         ; $743f: $95
    sub [hl]                                      ; $7440: $96
    ld [hl], $68                                  ; $7441: $36 $68
    sub a                                         ; $7443: $97
    sbc b                                         ; $7444: $98
    sbc c                                         ; $7445: $99
    sbc d                                         ; $7446: $9a
    sbc e                                         ; $7447: $9b
    sbc h                                         ; $7448: $9c
    sbc l                                         ; $7449: $9d
    sbc [hl]                                      ; $744a: $9e
    sbc a                                         ; $744b: $9f
    and b                                         ; $744c: $a0
    and c                                         ; $744d: $a1
    and d                                         ; $744e: $a2
    dec c                                         ; $744f: $0d
    dec c                                         ; $7450: $0d
    ld b, $05                                     ; $7451: $06 $05
    ld c, $0e                                     ; $7453: $0e $0e
    dec c                                         ; $7455: $0d
    ld c, $0b                                     ; $7456: $0e $0b
    dec bc                                        ; $7458: $0b
    dec bc                                        ; $7459: $0b
    dec bc                                        ; $745a: $0b
    dec bc                                        ; $745b: $0b
    dec bc                                        ; $745c: $0b
    dec bc                                        ; $745d: $0b
    dec bc                                        ; $745e: $0b
    ld e, b                                       ; $745f: $58
    and e                                         ; $7460: $a3
    and h                                         ; $7461: $a4
    and l                                         ; $7462: $a5
    add e                                         ; $7463: $83
    and [hl]                                      ; $7464: $a6
    and a                                         ; $7465: $a7
    xor b                                         ; $7466: $a8
    xor c                                         ; $7467: $a9
    xor d                                         ; $7468: $aa
    ld c, b                                       ; $7469: $48
    ld h, b                                       ; $746a: $60
    xor e                                         ; $746b: $ab
    xor h                                         ; $746c: $ac
    ld c, h                                       ; $746d: $4c
    sub c                                         ; $746e: $91
    ld b, $0e                                     ; $746f: $06 $0e
    ld c, $0f                                     ; $7471: $0e $0f
    ld c, $0d                                     ; $7473: $0e $0d
    ld c, $0f                                     ; $7475: $0e $0f
    dec c                                         ; $7477: $0d
    ld c, $05                                     ; $7478: $0e $05
    rlca                                          ; $747a: $07
    ld c, $0e                                     ; $747b: $0e $0e
    ld b, $0f                                     ; $747d: $06 $0f
    xor l                                         ; $747f: $ad
    xor [hl]                                      ; $7480: $ae
    xor a                                         ; $7481: $af
    or b                                          ; $7482: $b0
    or c                                          ; $7483: $b1
    or d                                          ; $7484: $b2
    or e                                          ; $7485: $b3
    or h                                          ; $7486: $b4
    or l                                          ; $7487: $b5
    or [hl]                                       ; $7488: $b6
    or a                                          ; $7489: $b7
    cp b                                          ; $748a: $b8
    ld d, d                                       ; $748b: $52
    cp c                                          ; $748c: $b9
    cp d                                          ; $748d: $ba
    cp e                                          ; $748e: $bb
    dec bc                                        ; $748f: $0b
    dec bc                                        ; $7490: $0b
    dec bc                                        ; $7491: $0b
    dec bc                                        ; $7492: $0b
    dec bc                                        ; $7493: $0b
    dec bc                                        ; $7494: $0b
    dec bc                                        ; $7495: $0b
    dec bc                                        ; $7496: $0b
    dec bc                                        ; $7497: $0b
    dec bc                                        ; $7498: $0b
    dec bc                                        ; $7499: $0b
    dec bc                                        ; $749a: $0b
    rlca                                          ; $749b: $07
    dec bc                                        ; $749c: $0b
    dec bc                                        ; $749d: $0b
    rrca                                          ; $749e: $0f
    ld a, e                                       ; $749f: $7b
    cp h                                          ; $74a0: $bc
    ld sp, $1432                                  ; $74a1: $31 $32 $14
    dec d                                         ; $74a4: $15
    ld d, $bd                                     ; $74a5: $16 $bd
    ld a, $3f                                     ; $74a7: $3e $3f
    ld b, b                                       ; $74a9: $40
    ld b, c                                       ; $74aa: $41
    cp [hl]                                       ; $74ab: $be
    cp a                                          ; $74ac: $bf
    ret nz                                        ; $74ad: $c0

    pop bc                                        ; $74ae: $c1
    rlca                                          ; $74af: $07
    ld c, $05                                     ; $74b0: $0e $05
    rlca                                          ; $74b2: $07
    rlca                                          ; $74b3: $07
    ld b, $06                                     ; $74b4: $06 $06
    rrca                                          ; $74b6: $0f
    rlca                                          ; $74b7: $07
    ld b, $06                                     ; $74b8: $06 $06
    rlca                                          ; $74ba: $07
    rrca                                          ; $74bb: $0f
    ld c, $0d                                     ; $74bc: $0e $0d
    rrca                                          ; $74be: $0f
    pop de                                        ; $74bf: $d1
    jp nc, Jump_000_3b3a                          ; $74c0: $d2 $3a $3b

    pop de                                        ; $74c3: $d1
    jp nc, Jump_000_3d3c                          ; $74c4: $d2 $3c $3d

    pop de                                        ; $74c7: $d1
    jp nc, Jump_08d_6522                          ; $74c8: $d2 $22 $65

    pop de                                        ; $74cb: $d1
    jp nc, $c266                                  ; $74cc: $d2 $66 $c2

    add b                                         ; $74cf: $80
    add b                                         ; $74d0: $80
    rlca                                          ; $74d1: $07
    dec b                                         ; $74d2: $05
    add b                                         ; $74d3: $80
    add b                                         ; $74d4: $80
    rlca                                          ; $74d5: $07
    ld b, $80                                     ; $74d6: $06 $80
    add b                                         ; $74d8: $80
    rlca                                          ; $74d9: $07
    ld b, $80                                     ; $74da: $06 $80
    add b                                         ; $74dc: $80
    rlca                                          ; $74dd: $07
    dec c                                         ; $74de: $0d
    ld e, [hl]                                    ; $74df: $5e
    ld e, a                                       ; $74e0: $5f
    ld c, b                                       ; $74e1: $48
    ld h, b                                       ; $74e2: $60
    ld h, c                                       ; $74e3: $61
    ld h, d                                       ; $74e4: $62
    ld h, e                                       ; $74e5: $63
    ld h, h                                       ; $74e6: $64
    ld a, e                                       ; $74e7: $7b
    ld a, h                                       ; $74e8: $7c
    ld a, l                                       ; $74e9: $7d
    ld a, [hl]                                    ; $74ea: $7e
    inc d                                         ; $74eb: $14
    jp $8281                                      ; $74ec: $c3 $81 $82


    ld b, $06                                     ; $74ef: $06 $06
    ld b, $07                                     ; $74f1: $06 $07
    dec b                                         ; $74f3: $05
    dec b                                         ; $74f4: $05
    ld b, $06                                     ; $74f5: $06 $06
    ld b, $06                                     ; $74f7: $06 $06
    dec b                                         ; $74f9: $05
    ld b, $06                                     ; $74fa: $06 $06
    ld c, $0e                                     ; $74fc: $0e $0e
    ld c, $c4                                     ; $74fe: $0e $c4
    push bc                                       ; $7500: $c5
    add $c7                                       ; $7501: $c6 $c7
    ret z                                         ; $7503: $c8

    adc e                                         ; $7504: $8b
    adc h                                         ; $7505: $8c
    ret                                           ; $7506: $c9


    adc l                                         ; $7507: $8d
    adc [hl]                                      ; $7508: $8e
    ld [hl+], a                                   ; $7509: $22
    ld h, l                                       ; $750a: $65
    jp z, Jump_08d_66cb                           ; $750b: $ca $cb $66

    jp nz, Jump_000_0f0f                          ; $750e: $c2 $0f $0f

    rrca                                          ; $7511: $0f
    dec c                                         ; $7512: $0d
    ld c, $0e                                     ; $7513: $0e $0e
    dec c                                         ; $7515: $0d
    ld c, $0e                                     ; $7516: $0e $0e
    dec c                                         ; $7518: $0d
    dec b                                         ; $7519: $05
    dec b                                         ; $751a: $05
    dec c                                         ; $751b: $0d
    ld c, $05                                     ; $751c: $0e $05
    ld c, $a9                                     ; $751e: $0e $a9
    xor d                                         ; $7520: $aa
    ld c, b                                       ; $7521: $48
    ld h, b                                       ; $7522: $60
    xor e                                         ; $7523: $ab
    xor h                                         ; $7524: $ac
    ld c, h                                       ; $7525: $4c
    rrca                                          ; $7526: $0f
    ld a, e                                       ; $7527: $7b
    cp h                                          ; $7528: $bc
    ld sp, $1413                                  ; $7529: $31 $13 $14
    dec d                                         ; $752c: $15
    ld d, $17                                     ; $752d: $16 $17
    ld c, $0e                                     ; $752f: $0e $0e
    dec b                                         ; $7531: $05
    ld b, $0d                                     ; $7532: $06 $0d
    dec c                                         ; $7534: $0d
    ld b, $06                                     ; $7535: $06 $06
    ld b, $0e                                     ; $7537: $06 $0e
    dec b                                         ; $7539: $05
    ld b, $05                                     ; $753a: $06 $05
    ld b, $06                                     ; $753c: $06 $06
    dec b                                         ; $753e: $05
    pop de                                        ; $753f: $d1
    jp nc, $cdcc                                  ; $7540: $d2 $cc $cd

    pop de                                        ; $7543: $d1
    jp nc, $cfce                                  ; $7544: $d2 $ce $cf

    pop de                                        ; $7547: $d1
    jp nc, $d1d0                                  ; $7548: $d2 $d0 $d1

    pop de                                        ; $754b: $d1
    jp nc, $d3d2                                  ; $754c: $d2 $d2 $d3

    add b                                         ; $754f: $80
    add b                                         ; $7550: $80
    adc c                                         ; $7551: $89
    adc c                                         ; $7552: $89
    add b                                         ; $7553: $80
    add b                                         ; $7554: $80
    adc c                                         ; $7555: $89
    adc c                                         ; $7556: $89
    add b                                         ; $7557: $80
    add b                                         ; $7558: $80
    add hl, bc                                    ; $7559: $09
    add hl, bc                                    ; $755a: $09
    add b                                         ; $755b: $80
    add b                                         ; $755c: $80
    add hl, bc                                    ; $755d: $09
    add hl, bc                                    ; $755e: $09
    call nc, $d6d5                                ; $755f: $d4 $d5 $d6
    rst $10                                       ; $7562: $d7
    ret c                                         ; $7563: $d8

    reti                                          ; $7564: $d9


    jp c, $dcdb                                   ; $7565: $da $db $dc

    db $dd                                        ; $7568: $dd
    sbc $df                                       ; $7569: $de $df
    ldh [$e1], a                                  ; $756b: $e0 $e1
    ld [c], a                                     ; $756d: $e2
    db $e3                                        ; $756e: $e3
    adc c                                         ; $756f: $89
    adc c                                         ; $7570: $89
    adc c                                         ; $7571: $89
    adc c                                         ; $7572: $89
    adc c                                         ; $7573: $89
    adc c                                         ; $7574: $89
    adc c                                         ; $7575: $89
    adc c                                         ; $7576: $89
    add hl, bc                                    ; $7577: $09
    add hl, bc                                    ; $7578: $09
    add hl, bc                                    ; $7579: $09
    add hl, bc                                    ; $757a: $09
    add hl, bc                                    ; $757b: $09
    add hl, bc                                    ; $757c: $09
    add hl, bc                                    ; $757d: $09
    add hl, bc                                    ; $757e: $09
    db $e4                                        ; $757f: $e4
    push hl                                       ; $7580: $e5
    and $e7                                       ; $7581: $e6 $e7
    add sp, -$17                                  ; $7583: $e8 $e9
    ld [$eceb], a                                 ; $7585: $ea $eb $ec
    db $ed                                        ; $7588: $ed
    xor $ef                                       ; $7589: $ee $ef
    ldh a, [$f1]                                  ; $758b: $f0 $f1
    ld a, [c]                                     ; $758d: $f2
    di                                            ; $758e: $f3
    adc c                                         ; $758f: $89
    adc c                                         ; $7590: $89
    adc c                                         ; $7591: $89
    adc c                                         ; $7592: $89
    adc c                                         ; $7593: $89
    adc c                                         ; $7594: $89
    adc c                                         ; $7595: $89
    adc c                                         ; $7596: $89
    add hl, bc                                    ; $7597: $09
    add hl, bc                                    ; $7598: $09
    add hl, bc                                    ; $7599: $09
    add hl, bc                                    ; $759a: $09
    add hl, bc                                    ; $759b: $09
    add hl, bc                                    ; $759c: $09
    add hl, bc                                    ; $759d: $09
    add hl, bc                                    ; $759e: $09
    ld a, $3f                                     ; $759f: $3e $3f
    ld b, b                                       ; $75a1: $40
    ld b, c                                       ; $75a2: $41
    cp [hl]                                       ; $75a3: $be
    ld b, e                                       ; $75a4: $43
    ld b, h                                       ; $75a5: $44
    ld b, l                                       ; $75a6: $45
    ld e, [hl]                                    ; $75a7: $5e
    ld e, a                                       ; $75a8: $5f
    ld c, b                                       ; $75a9: $48
    ld h, b                                       ; $75aa: $60
    ld h, c                                       ; $75ab: $61
    ld c, e                                       ; $75ac: $4b
    ld c, h                                       ; $75ad: $4c
    rrca                                          ; $75ae: $0f
    ld b, $06                                     ; $75af: $06 $06
    dec b                                         ; $75b1: $05
    ld b, $0d                                     ; $75b2: $06 $0d
    ld b, $06                                     ; $75b4: $06 $06
    ld b, $06                                     ; $75b6: $06 $06
    dec b                                         ; $75b8: $05
    ld b, $05                                     ; $75b9: $06 $05
    dec b                                         ; $75bb: $05
    ld b, $05                                     ; $75bc: $06 $05
    dec b                                         ; $75be: $05
    pop de                                        ; $75bf: $d1
    jp nc, $f5f4                                  ; $75c0: $d2 $f4 $f5

    pop de                                        ; $75c3: $d1
    jp nc, $f7f6                                  ; $75c4: $d2 $f6 $f7

    pop de                                        ; $75c7: $d1
    jp nc, $f9f8                                  ; $75c8: $d2 $f8 $f9

    pop de                                        ; $75cb: $d1
    jp nc, $fbfa                                  ; $75cc: $d2 $fa $fb

    add b                                         ; $75cf: $80
    add b                                         ; $75d0: $80
    ld [$800a], sp                                ; $75d1: $08 $0a $80
    add b                                         ; $75d4: $80
    ld [$800a], sp                                ; $75d5: $08 $0a $80
    add b                                         ; $75d8: $80
    ld [$800a], sp                                ; $75d9: $08 $0a $80
    add b                                         ; $75dc: $80
    ld a, [bc]                                    ; $75dd: $0a
    ld a, [bc]                                    ; $75de: $0a
    db $fc                                        ; $75df: $fc
    db $fd                                        ; $75e0: $fd
    cp $ff                                        ; $75e1: $fe $ff
    nop                                           ; $75e3: $00
    ld bc, $bd02                                  ; $75e4: $01 $02 $bd
    inc bc                                        ; $75e7: $03
    inc b                                         ; $75e8: $04
    dec b                                         ; $75e9: $05
    ld b, c                                       ; $75ea: $41
    ld b, $07                                     ; $75eb: $06 $07
    ld [$0a45], sp                                ; $75ed: $08 $45 $0a
    ld a, [bc]                                    ; $75f0: $0a
    ld a, [bc]                                    ; $75f1: $0a
    add hl, bc                                    ; $75f2: $09
    ld a, [bc]                                    ; $75f3: $0a
    ld a, [bc]                                    ; $75f4: $0a
    ld a, [bc]                                    ; $75f5: $0a
    rrca                                          ; $75f6: $0f
    ld a, [bc]                                    ; $75f7: $0a
    ld a, [bc]                                    ; $75f8: $0a
    ld a, [bc]                                    ; $75f9: $0a
    rlca                                          ; $75fa: $07
    ld a, [bc]                                    ; $75fb: $0a
    ld a, [bc]                                    ; $75fc: $0a
    ld a, [bc]                                    ; $75fd: $0a
    rlca                                          ; $75fe: $07
    add hl, bc                                    ; $75ff: $09
    ld a, [bc]                                    ; $7600: $0a
    dec bc                                        ; $7601: $0b
    inc c                                         ; $7602: $0c
    jp z, Jump_08d_66cb                           ; $7603: $ca $cb $66

    ld h, a                                       ; $7606: $67
    ld c, [hl]                                    ; $7607: $4e
    dec c                                         ; $7608: $0d
    ld [hl], $68                                  ; $7609: $36 $68
    ld d, d                                       ; $760b: $52
    ld c, $99                                     ; $760c: $0e $99
    sbc d                                         ; $760e: $9a
    add hl, bc                                    ; $760f: $09
    add hl, bc                                    ; $7610: $09
    add hl, bc                                    ; $7611: $09
    add hl, bc                                    ; $7612: $09
    rrca                                          ; $7613: $0f
    rrca                                          ; $7614: $0f
    rlca                                          ; $7615: $07
    rlca                                          ; $7616: $07
    ld b, $0d                                     ; $7617: $06 $0d
    ld b, $05                                     ; $7619: $06 $05
    dec b                                         ; $761b: $05
    ld c, $0e                                     ; $761c: $0e $0e
    ld c, $7b                                     ; $761e: $0e $7b
    cp h                                          ; $7620: $bc
    ld sp, $7f13                                  ; $7621: $31 $13 $7f
    sub d                                         ; $7624: $92
    sub e                                         ; $7625: $93
    rrca                                          ; $7626: $0f
    ld e, b                                       ; $7627: $58
    and e                                         ; $7628: $a3
    and h                                         ; $7629: $a4
    and l                                         ; $762a: $a5
    add e                                         ; $762b: $83
    and [hl]                                      ; $762c: $a6
    and a                                         ; $762d: $a7
    xor b                                         ; $762e: $a8
    rlca                                          ; $762f: $07
    ld c, $06                                     ; $7630: $0e $06
    dec b                                         ; $7632: $05
    rlca                                          ; $7633: $07
    dec c                                         ; $7634: $0d
    ld c, $0e                                     ; $7635: $0e $0e
    ld b, $0e                                     ; $7637: $06 $0e
    dec c                                         ; $7639: $0d
    ld c, $0e                                     ; $763a: $0e $0e
    dec c                                         ; $763c: $0d
    ld c, $0e                                     ; $763d: $0e $0e
    pop de                                        ; $763f: $d1
    jp nc, Jump_000_10c6                          ; $7640: $d2 $c6 $10

    pop de                                        ; $7643: $d1
    ld de, $1212                                  ; $7644: $11 $12 $12
    pop de                                        ; $7647: $d1
    pop de                                        ; $7648: $d1
    pop de                                        ; $7649: $d1
    pop de                                        ; $764a: $d1
    pop de                                        ; $764b: $d1
    pop de                                        ; $764c: $d1
    pop de                                        ; $764d: $d1
    pop de                                        ; $764e: $d1
    add b                                         ; $764f: $80
    add b                                         ; $7650: $80
    rrca                                          ; $7651: $0f
    rrca                                          ; $7652: $0f
    add b                                         ; $7653: $80
    adc b                                         ; $7654: $88
    adc b                                         ; $7655: $88
    adc b                                         ; $7656: $88
    add b                                         ; $7657: $80
    add b                                         ; $7658: $80
    add b                                         ; $7659: $80
    add b                                         ; $765a: $80
    add b                                         ; $765b: $80
    add b                                         ; $765c: $80
    add b                                         ; $765d: $80
    add b                                         ; $765e: $80
    ld e, [hl]                                    ; $765f: $5e
    ld e, a                                       ; $7660: $5f
    ld c, b                                       ; $7661: $48
    ld h, b                                       ; $7662: $60
    ld [de], a                                    ; $7663: $12
    ld [de], a                                    ; $7664: $12
    ld [de], a                                    ; $7665: $12
    ld [de], a                                    ; $7666: $12
    pop de                                        ; $7667: $d1
    pop de                                        ; $7668: $d1
    pop de                                        ; $7669: $d1
    pop de                                        ; $766a: $d1
    pop de                                        ; $766b: $d1
    pop de                                        ; $766c: $d1
    pop de                                        ; $766d: $d1
    pop de                                        ; $766e: $d1
    rlca                                          ; $766f: $07
    rlca                                          ; $7670: $07
    rlca                                          ; $7671: $07
    rlca                                          ; $7672: $07
    adc b                                         ; $7673: $88
    adc b                                         ; $7674: $88
    adc b                                         ; $7675: $88
    adc b                                         ; $7676: $88
    add b                                         ; $7677: $80
    add b                                         ; $7678: $80
    add b                                         ; $7679: $80
    add b                                         ; $767a: $80
    add b                                         ; $767b: $80
    add b                                         ; $767c: $80
    add b                                         ; $767d: $80
    add b                                         ; $767e: $80
    call nz, $c6c5                                ; $767f: $c4 $c5 $c6
    rst $00                                       ; $7682: $c7
    ld [de], a                                    ; $7683: $12
    ld [de], a                                    ; $7684: $12
    ld [de], a                                    ; $7685: $12
    ld [de], a                                    ; $7686: $12
    pop de                                        ; $7687: $d1
    pop de                                        ; $7688: $d1
    pop de                                        ; $7689: $d1
    pop de                                        ; $768a: $d1
    pop de                                        ; $768b: $d1
    pop de                                        ; $768c: $d1
    pop de                                        ; $768d: $d1
    pop de                                        ; $768e: $d1
    ld c, $0e                                     ; $768f: $0e $0e
    dec c                                         ; $7691: $0d
    ld c, $88                                     ; $7692: $0e $88
    adc b                                         ; $7694: $88
    adc b                                         ; $7695: $88
    adc b                                         ; $7696: $88
    add b                                         ; $7697: $80
    add b                                         ; $7698: $80
    add b                                         ; $7699: $80
    add b                                         ; $769a: $80
    add b                                         ; $769b: $80
    add b                                         ; $769c: $80
    add b                                         ; $769d: $80
    add b                                         ; $769e: $80
    xor c                                         ; $769f: $a9
    xor d                                         ; $76a0: $aa
    ld c, b                                       ; $76a1: $48
    ld h, b                                       ; $76a2: $60
    ld [de], a                                    ; $76a3: $12
    ld [de], a                                    ; $76a4: $12
    ld [de], a                                    ; $76a5: $12
    ld [de], a                                    ; $76a6: $12
    pop de                                        ; $76a7: $d1
    pop de                                        ; $76a8: $d1
    pop de                                        ; $76a9: $d1
    pop de                                        ; $76aa: $d1
    pop de                                        ; $76ab: $d1
    pop de                                        ; $76ac: $d1
    pop de                                        ; $76ad: $d1
    pop de                                        ; $76ae: $d1
    dec c                                         ; $76af: $0d
    ld c, $06                                     ; $76b0: $0e $06
    dec b                                         ; $76b2: $05
    adc b                                         ; $76b3: $88
    adc b                                         ; $76b4: $88
    adc b                                         ; $76b5: $88
    adc b                                         ; $76b6: $88
    add b                                         ; $76b7: $80
    add b                                         ; $76b8: $80
    add b                                         ; $76b9: $80
    add b                                         ; $76ba: $80
    add b                                         ; $76bb: $80
    add b                                         ; $76bc: $80
    add b                                         ; $76bd: $80
    add b                                         ; $76be: $80
    call nz, $c6c5                                ; $76bf: $c4 $c5 $c6
    db $10                                        ; $76c2: $10
    inc e                                         ; $76c3: $1c
    inc de                                        ; $76c4: $13
    adc h                                         ; $76c5: $8c
    inc d                                         ; $76c6: $14
    jr nz, jr_08d_76ea                            ; $76c7: $20 $21

    ld [hl+], a                                   ; $76c9: $22
    ld h, l                                       ; $76ca: $65
    inc h                                         ; $76cb: $24
    dec d                                         ; $76cc: $15
    ld h, [hl]                                    ; $76cd: $66
    jp nz, Jump_000_0f0f                          ; $76ce: $c2 $0f $0f

    rrca                                          ; $76d1: $0f
    rrca                                          ; $76d2: $0f
    dec b                                         ; $76d3: $05
    ld c, $0e                                     ; $76d4: $0e $0e
    dec c                                         ; $76d6: $0d
    ld b, $05                                     ; $76d7: $06 $05
    dec b                                         ; $76d9: $05
    ld b, $06                                     ; $76da: $06 $06
    ld c, $06                                     ; $76dc: $0e $06
    ld c, $5e                                     ; $76de: $0e $5e
    ld d, $17                                     ; $76e0: $16 $17
    jr jr_08d_7745                                ; $76e2: $18 $61

    add hl, de                                    ; $76e4: $19
    ld a, [de]                                    ; $76e5: $1a
    dec de                                        ; $76e6: $1b
    ld a, e                                       ; $76e7: $7b
    ld a, h                                       ; $76e8: $7c
    ld a, l                                       ; $76e9: $7d

jr_08d_76ea:
    ld a, [hl]                                    ; $76ea: $7e
    inc d                                         ; $76eb: $14
    jp $8281                                      ; $76ec: $c3 $81 $82


    rlca                                          ; $76ef: $07
    ld c, $0d                                     ; $76f0: $0e $0d
    rrca                                          ; $76f2: $0f
    dec b                                         ; $76f3: $05
    dec c                                         ; $76f4: $0d
    dec c                                         ; $76f5: $0d
    rrca                                          ; $76f6: $0f
    ld b, $05                                     ; $76f7: $06 $05
    ld b, $07                                     ; $76f9: $06 $07
    ld b, $0e                                     ; $76fb: $06 $0e
    dec c                                         ; $76fd: $0d
    rrca                                          ; $76fe: $0f
    jp nc, $d1d1                                  ; $76ff: $d2 $d1 $d1

    pop de                                        ; $7702: $d1
    jp nc, $d1d1                                  ; $7703: $d2 $d1 $d1

    pop de                                        ; $7706: $d1
    jp nc, $d1d1                                  ; $7707: $d2 $d1 $d1

    pop de                                        ; $770a: $d1
    ld de, $1c12                                  ; $770b: $11 $12 $1c
    pop de                                        ; $770e: $d1
    add b                                         ; $770f: $80
    add b                                         ; $7710: $80
    add b                                         ; $7711: $80
    add b                                         ; $7712: $80
    add b                                         ; $7713: $80
    add b                                         ; $7714: $80
    add b                                         ; $7715: $80
    add b                                         ; $7716: $80
    add b                                         ; $7717: $80
    add b                                         ; $7718: $80
    add b                                         ; $7719: $80
    add b                                         ; $771a: $80
    adc b                                         ; $771b: $88
    adc b                                         ; $771c: $88
    adc b                                         ; $771d: $88
    add b                                         ; $771e: $80
    ld c, [hl]                                    ; $771f: $4e
    dec c                                         ; $7720: $0d
    ld [hl], $37                                  ; $7721: $36 $37
    ld d, d                                       ; $7723: $52
    dec e                                         ; $7724: $1d
    jr c, jr_08d_7760                             ; $7725: $38 $39

    call nz, $3a1e                                ; $7727: $c4 $1e $3a
    dec sp                                        ; $772a: $3b
    inc e                                         ; $772b: $1c
    rra                                           ; $772c: $1f
    inc a                                         ; $772d: $3c
    dec a                                         ; $772e: $3d
    dec b                                         ; $772f: $05
    ld c, $05                                     ; $7730: $0e $05
    ld b, $06                                     ; $7732: $06 $06

jr_08d_7734:
    dec c                                         ; $7734: $0d
    dec b                                         ; $7735: $05
    ld b, $0e                                     ; $7736: $06 $0e
    dec c                                         ; $7738: $0d
    ld b, $06                                     ; $7739: $06 $06
    ld b, $0e                                     ; $773b: $06 $0e
    ld b, $06                                     ; $773d: $06 $06
    ld a, $3f                                     ; $773f: $3e $3f
    ld b, b                                       ; $7741: $40
    ld b, c                                       ; $7742: $41
    cp [hl]                                       ; $7743: $be
    ld b, e                                       ; $7744: $43

jr_08d_7745:
    ld b, h                                       ; $7745: $44
    ld b, l                                       ; $7746: $45
    ld e, [hl]                                    ; $7747: $5e
    ld e, a                                       ; $7748: $5f
    ld c, b                                       ; $7749: $48
    ld h, b                                       ; $774a: $60
    ld h, c                                       ; $774b: $61
    ld c, e                                       ; $774c: $4b
    ld c, h                                       ; $774d: $4c
    sub c                                         ; $774e: $91
    dec b                                         ; $774f: $05
    ld b, $06                                     ; $7750: $06 $06
    rlca                                          ; $7752: $07
    ld c, $05                                     ; $7753: $0e $05
    ld b, $07                                     ; $7755: $06 $07
    dec b                                         ; $7757: $05
    ld b, $05                                     ; $7758: $06 $05
    rlca                                          ; $775a: $07
    ld b, $05                                     ; $775b: $06 $05
    ld b, $0f                                     ; $775d: $06 $0f
    db $d3                                        ; $775f: $d3

jr_08d_7760:
    jr nz, jr_08d_7734                            ; $7760: $20 $d2

    pop de                                        ; $7762: $d1
    push de                                       ; $7763: $d5
    ld hl, $d122                                  ; $7764: $21 $22 $d1
    rst $10                                       ; $7767: $d7
    inc hl                                        ; $7768: $23
    ld [hl+], a                                   ; $7769: $22
    pop de                                        ; $776a: $d1
    reti                                          ; $776b: $d9


    inc h                                         ; $776c: $24
    ld [hl+], a                                   ; $776d: $22
    pop de                                        ; $776e: $d1
    inc hl                                        ; $776f: $23
    dec bc                                        ; $7770: $0b
    add b                                         ; $7771: $80
    add b                                         ; $7772: $80
    inc hl                                        ; $7773: $23
    dec bc                                        ; $7774: $0b
    adc b                                         ; $7775: $88
    add b                                         ; $7776: $80
    inc hl                                        ; $7777: $23
    dec bc                                        ; $7778: $0b
    adc b                                         ; $7779: $88
    add b                                         ; $777a: $80
    inc hl                                        ; $777b: $23
    dec bc                                        ; $777c: $0b
    adc b                                         ; $777d: $88
    add b                                         ; $777e: $80
    jr nz, @+$23                                  ; $777f: $20 $21

    ld [hl+], a                                   ; $7781: $22
    ld h, l                                       ; $7782: $65
    inc h                                         ; $7783: $24
    dec d                                         ; $7784: $15
    ld h, [hl]                                    ; $7785: $66
    jp nz, Jump_000_0d4e                          ; $7786: $c2 $4e $0d

    ld [hl], $37                                  ; $7789: $36 $37
    ld d, d                                       ; $778b: $52
    ld c, $99                                     ; $778c: $0e $99
    cp e                                          ; $778e: $bb
    ld b, $05                                     ; $778f: $06 $05
    ld b, $05                                     ; $7791: $06 $05
    ld b, $0e                                     ; $7793: $06 $0e
    dec b                                         ; $7795: $05
    ld c, $05                                     ; $7796: $0e $05
    ld c, $06                                     ; $7798: $0e $06
    ld b, $06                                     ; $779a: $06 $06
    ld c, $0d                                     ; $779c: $0e $0d
    ld c, $7b                                     ; $779e: $0e $7b
    cp h                                          ; $77a0: $bc
    ld sp, $1432                                  ; $77a1: $31 $32 $14
    dec d                                         ; $77a4: $15
    ld d, $bd                                     ; $77a5: $16 $bd
    ld a, $3f                                     ; $77a7: $3e $3f
    ld b, b                                       ; $77a9: $40
    ld b, c                                       ; $77aa: $41
    cp [hl]                                       ; $77ab: $be
    ld b, e                                       ; $77ac: $43
    ld b, h                                       ; $77ad: $44
    ld b, l                                       ; $77ae: $45
    ld b, $0e                                     ; $77af: $06 $0e
    ld b, $07                                     ; $77b1: $06 $07
    ld b, $06                                     ; $77b3: $06 $06
    dec b                                         ; $77b5: $05
    rrca                                          ; $77b6: $0f
    ld b, $05                                     ; $77b7: $06 $05
    ld b, $06                                     ; $77b9: $06 $06
    dec c                                         ; $77bb: $0d
    ld b, $06                                     ; $77bc: $06 $06
    dec b                                         ; $77be: $05
    ld bc, $2225                                  ; $77bf: $01 $25 $22
    pop de                                        ; $77c2: $d1
    jp z, Jump_000_22cb                           ; $77c3: $ca $cb $22

    ld h, $4e                                     ; $77c6: $26 $4e
    dec c                                         ; $77c8: $0d
    jp nc, Jump_000_2726                          ; $77c9: $d2 $26 $27

    ld [de], a                                    ; $77cc: $12
    jr z, jr_08d_77f5                             ; $77cd: $28 $26

    inc hl                                        ; $77cf: $23
    dec bc                                        ; $77d0: $0b
    adc b                                         ; $77d1: $88
    add b                                         ; $77d2: $80
    rrca                                          ; $77d3: $0f
    rrca                                          ; $77d4: $0f
    adc b                                         ; $77d5: $88
    adc b                                         ; $77d6: $88
    ld b, $0f                                     ; $77d7: $06 $0f
    add b                                         ; $77d9: $80
    adc b                                         ; $77da: $88
    adc b                                         ; $77db: $88
    adc b                                         ; $77dc: $88
    adc b                                         ; $77dd: $88
    adc b                                         ; $77de: $88
    call nz, $c6c5                                ; $77df: $c4 $c5 $c6
    db $10                                        ; $77e2: $10
    ld [de], a                                    ; $77e3: $12
    ld [de], a                                    ; $77e4: $12
    ld [de], a                                    ; $77e5: $12
    ld [de], a                                    ; $77e6: $12
    pop de                                        ; $77e7: $d1
    pop de                                        ; $77e8: $d1
    pop de                                        ; $77e9: $d1
    pop de                                        ; $77ea: $d1
    pop de                                        ; $77eb: $d1
    pop de                                        ; $77ec: $d1
    pop de                                        ; $77ed: $d1
    pop de                                        ; $77ee: $d1
    ld c, $0e                                     ; $77ef: $0e $0e
    ld c, $0d                                     ; $77f1: $0e $0d
    adc b                                         ; $77f3: $88
    adc b                                         ; $77f4: $88

jr_08d_77f5:
    adc b                                         ; $77f5: $88

jr_08d_77f6:
    adc b                                         ; $77f6: $88
    add b                                         ; $77f7: $80
    add b                                         ; $77f8: $80
    add b                                         ; $77f9: $80
    add b                                         ; $77fa: $80
    add b                                         ; $77fb: $80
    add b                                         ; $77fc: $80
    add b                                         ; $77fd: $80
    add b                                         ; $77fe: $80
    ld e, [hl]                                    ; $77ff: $5e
    ld e, a                                       ; $7800: $5f
    ld c, b                                       ; $7801: $48
    ld h, b                                       ; $7802: $60
    ld [de], a                                    ; $7803: $12
    ld [de], a                                    ; $7804: $12
    ld [de], a                                    ; $7805: $12
    ld [de], a                                    ; $7806: $12
    pop de                                        ; $7807: $d1
    pop de                                        ; $7808: $d1
    pop de                                        ; $7809: $d1
    pop de                                        ; $780a: $d1
    pop de                                        ; $780b: $d1
    pop de                                        ; $780c: $d1
    pop de                                        ; $780d: $d1
    pop de                                        ; $780e: $d1
    ld b, $06                                     ; $780f: $06 $06
    dec b                                         ; $7811: $05
    ld b, $88                                     ; $7812: $06 $88
    adc b                                         ; $7814: $88
    adc b                                         ; $7815: $88
    adc b                                         ; $7816: $88
    add b                                         ; $7817: $80
    add b                                         ; $7818: $80
    add b                                         ; $7819: $80
    add b                                         ; $781a: $80
    add b                                         ; $781b: $80
    add b                                         ; $781c: $80
    add b                                         ; $781d: $80
    add b                                         ; $781e: $80
    jp nc, $d1d1                                  ; $781f: $d2 $d1 $d1

    pop de                                        ; $7822: $d1
    jr z, jr_08d_77f6                             ; $7823: $28 $d1

    pop de                                        ; $7825: $d1
    pop de                                        ; $7826: $d1
    pop de                                        ; $7827: $d1
    pop de                                        ; $7828: $d1
    pop de                                        ; $7829: $d1
    pop de                                        ; $782a: $d1
    pop de                                        ; $782b: $d1
    pop de                                        ; $782c: $d1
    pop de                                        ; $782d: $d1
    pop de                                        ; $782e: $d1
    add b                                         ; $782f: $80
    add b                                         ; $7830: $80
    add b                                         ; $7831: $80
    add b                                         ; $7832: $80
    adc b                                         ; $7833: $88
    add b                                         ; $7834: $80
    add b                                         ; $7835: $80
    add b                                         ; $7836: $80
    add b                                         ; $7837: $80
    add b                                         ; $7838: $80
    add b                                         ; $7839: $80
    add b                                         ; $783a: $80
    add b                                         ; $783b: $80
    add b                                         ; $783c: $80
    add b                                         ; $783d: $80
    add b                                         ; $783e: $80
    rlca                                          ; $783f: $07
    nop                                           ; $7840: $00
    ld [$c000], sp                                ; $7841: $08 $00 $c0
    dec b                                         ; $7844: $05
    pop de                                        ; $7845: $d1
    pop de                                        ; $7846: $d1
    pop de                                        ; $7847: $d1
    pop de                                        ; $7848: $d1
    pop de                                        ; $7849: $d1
    pop de                                        ; $784a: $d1
    pop de                                        ; $784b: $d1
    pop de                                        ; $784c: $d1
    pop de                                        ; $784d: $d1
    pop de                                        ; $784e: $d1
    pop de                                        ; $784f: $d1
    pop de                                        ; $7850: $d1
    pop de                                        ; $7851: $d1
    pop de                                        ; $7852: $d1
    pop de                                        ; $7853: $d1
    pop de                                        ; $7854: $d1
    add b                                         ; $7855: $80
    add b                                         ; $7856: $80
    add b                                         ; $7857: $80
    add b                                         ; $7858: $80
    add b                                         ; $7859: $80
    add b                                         ; $785a: $80
    add b                                         ; $785b: $80
    add b                                         ; $785c: $80
    add b                                         ; $785d: $80
    add b                                         ; $785e: $80
    add b                                         ; $785f: $80
    add b                                         ; $7860: $80
    add b                                         ; $7861: $80
    add b                                         ; $7862: $80
    add b                                         ; $7863: $80
    add b                                         ; $7864: $80
    jp nc, $d4d3                                  ; $7865: $d2 $d3 $d4

    push de                                       ; $7868: $d5
    jp nc, $d7d6                                  ; $7869: $d2 $d6 $d7

    ret c                                         ; $786c: $d8

    jp nc, $dad9                                  ; $786d: $d2 $d9 $da

    db $db                                        ; $7870: $db
    jp nc, $dddc                                  ; $7871: $d2 $dc $dd

    sbc $80                                       ; $7874: $de $80
    ld bc, $0000                                  ; $7876: $01 $00 $00
    add b                                         ; $7879: $80
    ld bc, $0000                                  ; $787a: $01 $00 $00
    add b                                         ; $787d: $80
    ld bc, $0000                                  ; $787e: $01 $00 $00
    add b                                         ; $7881: $80
    ld bc, $0000                                  ; $7882: $01 $00 $00
    rst $18                                       ; $7885: $df
    ldh [$e1], a                                  ; $7886: $e0 $e1
    ld [c], a                                     ; $7888: $e2
    db $e3                                        ; $7889: $e3
    db $e4                                        ; $788a: $e4
    push hl                                       ; $788b: $e5
    and $e7                                       ; $788c: $e6 $e7
    add sp, -$17                                  ; $788e: $e8 $e9
    ld [$eceb], a                                 ; $7890: $ea $eb $ec
    db $ed                                        ; $7893: $ed
    xor $00                                       ; $7894: $ee $00
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    ld bc, $0000                                  ; $7898: $01 $00 $00
    nop                                           ; $789b: $00
    ld bc, $0000                                  ; $789c: $01 $00 $00
    nop                                           ; $789f: $00
    ld bc, $0000                                  ; $78a0: $01 $00 $00
    nop                                           ; $78a3: $00
    ld bc, $f0ef                                  ; $78a4: $01 $ef $f0
    pop af                                        ; $78a7: $f1
    ld a, [c]                                     ; $78a8: $f2
    di                                            ; $78a9: $f3
    db $f4                                        ; $78aa: $f4
    db $f4                                        ; $78ab: $f4
    push af                                       ; $78ac: $f5
    or $f7                                        ; $78ad: $f6 $f7
    ld hl, sp-$07                                 ; $78af: $f8 $f9
    ld a, [$fcfb]                                 ; $78b1: $fa $fb $fc
    db $fd                                        ; $78b4: $fd
    ld [bc], a                                    ; $78b5: $02
    ld [bc], a                                    ; $78b6: $02
    ld [bc], a                                    ; $78b7: $02
    ld [bc], a                                    ; $78b8: $02
    ld [bc], a                                    ; $78b9: $02
    ld [bc], a                                    ; $78ba: $02
    ld [bc], a                                    ; $78bb: $02
    ld [bc], a                                    ; $78bc: $02
    ld [bc], a                                    ; $78bd: $02
    ld [bc], a                                    ; $78be: $02
    ld [bc], a                                    ; $78bf: $02
    ld [bc], a                                    ; $78c0: $02
    ld [bc], a                                    ; $78c1: $02
    ld [bc], a                                    ; $78c2: $02
    ld [bc], a                                    ; $78c3: $02
    ld [bc], a                                    ; $78c4: $02
    jp nc, $fffe                                  ; $78c5: $d2 $fe $ff

    nop                                           ; $78c8: $00
    jp nc, $0201                                  ; $78c9: $d2 $01 $02

    inc bc                                        ; $78cc: $03
    jp nc, $0504                                  ; $78cd: $d2 $04 $05

    ld b, $d2                                     ; $78d0: $06 $d2
    rlca                                          ; $78d2: $07
    ld [$8009], sp                                ; $78d3: $08 $09 $80
    ld bc, $0101                                  ; $78d6: $01 $01 $01
    add b                                         ; $78d9: $80
    rlca                                          ; $78da: $07
    rlca                                          ; $78db: $07
    rlca                                          ; $78dc: $07
    add b                                         ; $78dd: $80
    rlca                                          ; $78de: $07
    dec b                                         ; $78df: $05
    ld b, $80                                     ; $78e0: $06 $80
    rlca                                          ; $78e2: $07
    ld b, $05                                     ; $78e3: $06 $05
    ld a, [bc]                                    ; $78e5: $0a
    dec bc                                        ; $78e6: $0b
    rst $38                                       ; $78e7: $ff
    inc c                                         ; $78e8: $0c
    dec c                                         ; $78e9: $0d
    ld c, $0f                                     ; $78ea: $0e $0f
    ld bc, $1110                                  ; $78ec: $01 $10 $11
    ld [de], a                                    ; $78ef: $12
    inc b                                         ; $78f0: $04
    inc de                                        ; $78f1: $13
    inc d                                         ; $78f2: $14
    dec d                                         ; $78f3: $15
    rlca                                          ; $78f4: $07
    ld bc, $0101                                  ; $78f5: $01 $01 $01
    ld bc, $0707                                  ; $78f8: $01 $07 $07
    rlca                                          ; $78fb: $07

jr_08d_78fc:
    rlca                                          ; $78fc: $07
    ld b, $04                                     ; $78fd: $06 $04
    ld b, $06                                     ; $78ff: $06 $06
    ld b, $04                                     ; $7901: $06 $04
    ld b, $05                                     ; $7903: $06 $05
    ld a, [bc]                                    ; $7905: $0a
    dec bc                                        ; $7906: $0b
    rst $38                                       ; $7907: $ff
    nop                                           ; $7908: $00
    ld [bc], a                                    ; $7909: $02
    inc bc                                        ; $790a: $03
    dec c                                         ; $790b: $0d
    ld c, $05                                     ; $790c: $0e $05
    ld b, $10                                     ; $790e: $06 $10
    ld de, $0908                                  ; $7910: $11 $08 $09
    inc de                                        ; $7913: $13
    inc d                                         ; $7914: $14
    ld bc, $0101                                  ; $7915: $01 $01 $01
    ld bc, $0707                                  ; $7918: $01 $07 $07
    rlca                                          ; $791b: $07
    rlca                                          ; $791c: $07
    dec b                                         ; $791d: $05
    ld b, $04                                     ; $791e: $06 $04
    ld b, $06                                     ; $7920: $06 $06
    ld b, $05                                     ; $7922: $06 $05
    dec b                                         ; $7924: $05
    jp nc, $1716                                  ; $7925: $d2 $16 $17

    jr jr_08d_78fc                                ; $7928: $18 $d2

    add hl, de                                    ; $792a: $19
    ld a, [de]                                    ; $792b: $1a
    dec de                                        ; $792c: $1b
    jp nc, Jump_000_1d1c                          ; $792d: $d2 $1c $1d

    ld e, $d2                                     ; $7930: $1e $d2
    ld bc, $0302                                  ; $7932: $01 $02 $03
    add b                                         ; $7935: $80
    rlca                                          ; $7936: $07
    inc b                                         ; $7937: $04
    ld b, $80                                     ; $7938: $06 $80
    rlca                                          ; $793a: $07
    dec b                                         ; $793b: $05
    ld b, $80                                     ; $793c: $06 $80
    rlca                                          ; $793e: $07
    dec b                                         ; $793f: $05
    inc b                                         ; $7940: $04
    add b                                         ; $7941: $80
    rlca                                          ; $7942: $07
    dec b                                         ; $7943: $05
    ld b, $1f                                     ; $7944: $06 $1f
    jr nz, jr_08d_7969                            ; $7946: $20 $21

    ld d, $22                                     ; $7948: $16 $22
    inc hl                                        ; $794a: $23
    inc h                                         ; $794b: $24
    add hl, de                                    ; $794c: $19
    dec h                                         ; $794d: $25
    ld h, $27                                     ; $794e: $26 $27
    inc e                                         ; $7950: $1c
    dec c                                         ; $7951: $0d
    ld c, $0f                                     ; $7952: $0e $0f
    ld bc, $0506                                  ; $7954: $01 $06 $05
    ld b, $06                                     ; $7957: $06 $06
    inc b                                         ; $7959: $04
    ld b, $05                                     ; $795a: $06 $05
    ld b, $05                                     ; $795c: $06 $05
    ld b, $04                                     ; $795e: $06 $04
    inc b                                         ; $7960: $04
    inc b                                         ; $7961: $04
    ld b, $05                                     ; $7962: $06 $05

jr_08d_7964:
    ld b, $17                                     ; $7964: $06 $17
    jr z, @+$2b                                   ; $7966: $28 $29

    ld a, [hl+]                                   ; $7968: $2a

jr_08d_7969:
    ld a, [de]                                    ; $7969: $1a
    dec hl                                        ; $796a: $2b
    inc l                                         ; $796b: $2c
    dec l                                         ; $796c: $2d
    dec e                                         ; $796d: $1d
    ld l, $2f                                     ; $796e: $2e $2f
    jr nc, @+$04                                  ; $7970: $30 $02

    ld sp, $3332                                  ; $7972: $31 $32 $33
    inc b                                         ; $7975: $04
    ld bc, $0101                                  ; $7976: $01 $01 $01
    ld b, $01                                     ; $7979: $06 $01
    ld bc, $0501                                  ; $797b: $01 $01 $05
    ld bc, $0101                                  ; $797e: $01 $01 $01
    ld b, $01                                     ; $7981: $06 $01
    ld bc, $d201                                  ; $7983: $01 $01 $d2
    inc b                                         ; $7986: $04
    dec b                                         ; $7987: $05
    ld b, $d2                                     ; $7988: $06 $d2
    rlca                                          ; $798a: $07
    ld [$d209], sp                                ; $798b: $08 $09 $d2
    ld d, $17                                     ; $798e: $16 $17
    jr jr_08d_7964                                ; $7990: $18 $d2

    add hl, de                                    ; $7992: $19
    ld a, [de]                                    ; $7993: $1a
    dec de                                        ; $7994: $1b
    add b                                         ; $7995: $80
    rlca                                          ; $7996: $07
    ld b, $04                                     ; $7997: $06 $04
    add b                                         ; $7999: $80
    rlca                                          ; $799a: $07
    inc b                                         ; $799b: $04
    ld b, $80                                     ; $799c: $06 $80
    rlca                                          ; $799e: $07
    dec b                                         ; $799f: $05
    ld b, $80                                     ; $79a0: $06 $80
    rlca                                          ; $79a2: $07
    ld b, $05                                     ; $79a3: $06 $05
    db $10                                        ; $79a5: $10
    ld de, $0412                                  ; $79a6: $11 $12 $04
    inc de                                        ; $79a9: $13
    inc d                                         ; $79aa: $14
    dec d                                         ; $79ab: $15
    rlca                                          ; $79ac: $07
    rra                                           ; $79ad: $1f
    jr nz, @+$23                                  ; $79ae: $20 $21

    ld d, $22                                     ; $79b0: $16 $22
    inc hl                                        ; $79b2: $23
    inc h                                         ; $79b3: $24
    add hl, de                                    ; $79b4: $19
    dec b                                         ; $79b5: $05
    dec b                                         ; $79b6: $05
    dec b                                         ; $79b7: $05
    dec b                                         ; $79b8: $05
    ld b, $05                                     ; $79b9: $06 $05
    dec b                                         ; $79bb: $05
    ld b, $05                                     ; $79bc: $06 $05
    ld b, $04                                     ; $79be: $06 $04
    dec b                                         ; $79c0: $05
    ld b, $05                                     ; $79c1: $06 $05
    ld b, $04                                     ; $79c3: $06 $04
    dec b                                         ; $79c5: $05
    inc [hl]                                      ; $79c6: $34
    pop de                                        ; $79c7: $d1
    pop de                                        ; $79c8: $d1
    ld [$1309], sp                                ; $79c9: $08 $09 $13
    inc d                                         ; $79cc: $14
    rla                                           ; $79cd: $17
    jr @+$21                                      ; $79ce: $18 $1f

    jr nz, jr_08d_79ec                            ; $79d0: $20 $1a

    dec de                                        ; $79d2: $1b
    ld [hl+], a                                   ; $79d3: $22
    inc hl                                        ; $79d4: $23
    ld b, $01                                     ; $79d5: $06 $01
    ld bc, $0401                                  ; $79d7: $01 $01 $04
    rlca                                          ; $79da: $07
    rlca                                          ; $79db: $07
    rlca                                          ; $79dc: $07
    dec b                                         ; $79dd: $05
    ld b, $06                                     ; $79de: $06 $06
    inc b                                         ; $79e0: $04
    ld b, $05                                     ; $79e1: $06 $05
    ld b, $06                                     ; $79e3: $06 $06
    dec [hl]                                      ; $79e5: $35
    ld [hl], $37                                  ; $79e6: $36 $37
    jr c, jr_08d_7a23                             ; $79e8: $38 $39

    ld a, [hl-]                                   ; $79ea: $3a
    dec sp                                        ; $79eb: $3b

jr_08d_79ec:
    inc a                                         ; $79ec: $3c
    dec a                                         ; $79ed: $3d
    ld a, $3f                                     ; $79ee: $3e $3f
    ld b, b                                       ; $79f0: $40
    ld b, c                                       ; $79f1: $41
    ld b, d                                       ; $79f2: $42
    ld b, e                                       ; $79f3: $43
    ld b, h                                       ; $79f4: $44
    ld [bc], a                                    ; $79f5: $02
    ld bc, $0000                                  ; $79f6: $01 $00 $00
    ld [bc], a                                    ; $79f9: $02
    ld bc, $0000                                  ; $79fa: $01 $00 $00
    ld [bc], a                                    ; $79fd: $02
    ld bc, $0000                                  ; $79fe: $01 $00 $00
    ld [bc], a                                    ; $7a01: $02
    ld bc, $0000                                  ; $7a02: $01 $00 $00
    ld b, l                                       ; $7a05: $45
    ld b, [hl]                                    ; $7a06: $46
    ld b, a                                       ; $7a07: $47
    ld [c], a                                     ; $7a08: $e2
    ld c, b                                       ; $7a09: $48
    ld c, c                                       ; $7a0a: $49
    ld c, d                                       ; $7a0b: $4a
    and $4b                                       ; $7a0c: $e6 $4b
    ld c, h                                       ; $7a0e: $4c
    ld c, l                                       ; $7a0f: $4d
    ld [$4eeb], a                                 ; $7a10: $ea $eb $4e
    ld c, a                                       ; $7a13: $4f
    xor $00                                       ; $7a14: $ee $00
    nop                                           ; $7a16: $00
    nop                                           ; $7a17: $00
    ld bc, $0000                                  ; $7a18: $01 $00 $00
    nop                                           ; $7a1b: $00
    ld bc, $0000                                  ; $7a1c: $01 $00 $00
    nop                                           ; $7a1f: $00
    ld bc, $0000                                  ; $7a20: $01 $00 $00

jr_08d_7a23:
    nop                                           ; $7a23: $00
    ld bc, $d1d2                                  ; $7a24: $01 $d2 $d1
    pop de                                        ; $7a27: $d1
    pop de                                        ; $7a28: $d1
    jp nc, $d1d1                                  ; $7a29: $d2 $d1 $d1

    pop de                                        ; $7a2c: $d1
    jp nc, $d1d1                                  ; $7a2d: $d2 $d1 $d1

    pop de                                        ; $7a30: $d1
    jp nc, $d1d1                                  ; $7a31: $d2 $d1 $d1

    pop de                                        ; $7a34: $d1
    add b                                         ; $7a35: $80
    add b                                         ; $7a36: $80
    add b                                         ; $7a37: $80
    add b                                         ; $7a38: $80
    add b                                         ; $7a39: $80
    add b                                         ; $7a3a: $80
    add b                                         ; $7a3b: $80
    add b                                         ; $7a3c: $80
    add b                                         ; $7a3d: $80
    add b                                         ; $7a3e: $80
    add b                                         ; $7a3f: $80
    add b                                         ; $7a40: $80
    add b                                         ; $7a41: $80
    add b                                         ; $7a42: $80
    add b                                         ; $7a43: $80
    add b                                         ; $7a44: $80
    ld a, [bc]                                    ; $7a45: $0a
    ld d, b                                       ; $7a46: $50
    rst $38                                       ; $7a47: $ff
    nop                                           ; $7a48: $00
    rrca                                          ; $7a49: $0f
    ld bc, $0302                                  ; $7a4a: $01 $02 $03
    ld [de], a                                    ; $7a4d: $12
    inc b                                         ; $7a4e: $04
    dec b                                         ; $7a4f: $05
    ld b, $15                                     ; $7a50: $06 $15
    rlca                                          ; $7a52: $07
    ld [$0109], sp                                ; $7a53: $08 $09 $01
    ld bc, $0101                                  ; $7a56: $01 $01 $01
    rlca                                          ; $7a59: $07
    rlca                                          ; $7a5a: $07
    rlca                                          ; $7a5b: $07
    rlca                                          ; $7a5c: $07
    dec b                                         ; $7a5d: $05
    dec b                                         ; $7a5e: $05
    ld b, $05                                     ; $7a5f: $06 $05
    dec b                                         ; $7a61: $05
    ld b, $04                                     ; $7a62: $06 $04
    ld b, $0a                                     ; $7a64: $06 $0a
    dec bc                                        ; $7a66: $0b
    rst $38                                       ; $7a67: $ff
    inc c                                         ; $7a68: $0c
    dec c                                         ; $7a69: $0d
    ld c, $0f                                     ; $7a6a: $0e $0f
    ld bc, $1110                                  ; $7a6c: $01 $10 $11
    ld [de], a                                    ; $7a6f: $12
    inc b                                         ; $7a70: $04
    inc de                                        ; $7a71: $13
    inc d                                         ; $7a72: $14
    dec d                                         ; $7a73: $15
    rlca                                          ; $7a74: $07
    ld bc, $0101                                  ; $7a75: $01 $01 $01
    ld bc, $0707                                  ; $7a78: $01 $07 $07
    rlca                                          ; $7a7b: $07
    rlca                                          ; $7a7c: $07
    dec b                                         ; $7a7d: $05
    ld b, $04                                     ; $7a7e: $06 $04
    rlca                                          ; $7a80: $07
    dec b                                         ; $7a81: $05
    ld b, $06                                     ; $7a82: $06 $06
    rlca                                          ; $7a84: $07
    ld d, c                                       ; $7a85: $51
    ld d, d                                       ; $7a86: $52
    ld d, e                                       ; $7a87: $53
    jr jr_08d_7ade                                ; $7a88: $18 $54

    ld d, l                                       ; $7a8a: $55
    ld d, [hl]                                    ; $7a8b: $56
    dec de                                        ; $7a8c: $1b
    ld d, a                                       ; $7a8d: $57
    ld e, b                                       ; $7a8e: $58
    ld e, c                                       ; $7a8f: $59
    ld e, $33                                     ; $7a90: $1e $33
    ld e, d                                       ; $7a92: $5a
    ld e, e                                       ; $7a93: $5b
    inc bc                                        ; $7a94: $03
    ld bc, $0101                                  ; $7a95: $01 $01 $01
    inc b                                         ; $7a98: $04
    ld bc, $0101                                  ; $7a99: $01 $01 $01
    ld b, $01                                     ; $7a9c: $06 $01
    ld bc, $0701                                  ; $7a9e: $01 $01 $07
    ld bc, $0101                                  ; $7aa1: $01 $01 $01
    rlca                                          ; $7aa4: $07
    rra                                           ; $7aa5: $1f
    jr nz, @+$23                                  ; $7aa6: $20 $21

    ld d, $22                                     ; $7aa8: $16 $22
    inc hl                                        ; $7aaa: $23
    inc h                                         ; $7aab: $24
    add hl, de                                    ; $7aac: $19
    dec h                                         ; $7aad: $25
    ld h, $27                                     ; $7aae: $26 $27
    inc e                                         ; $7ab0: $1c
    dec c                                         ; $7ab1: $0d
    ld c, $0f                                     ; $7ab2: $0e $0f
    ld bc, $0406                                  ; $7ab4: $01 $06 $04
    dec b                                         ; $7ab7: $05
    rlca                                          ; $7ab8: $07
    dec b                                         ; $7ab9: $05
    ld b, $04                                     ; $7aba: $06 $04
    rlca                                          ; $7abc: $07
    ld b, $05                                     ; $7abd: $06 $05
    ld b, $07                                     ; $7abf: $06 $07
    ld b, $05                                     ; $7ac1: $06 $05
    dec b                                         ; $7ac3: $05
    rlca                                          ; $7ac4: $07
    pop de                                        ; $7ac5: $d1
    pop de                                        ; $7ac6: $d1
    ld e, h                                       ; $7ac7: $5c
    ld b, $15                                     ; $7ac8: $06 $15
    rlca                                          ; $7aca: $07
    ld [$2109], sp                                ; $7acb: $08 $09 $21
    ld d, $17                                     ; $7ace: $16 $17
    jr jr_08d_7af6                                ; $7ad0: $18 $24

    add hl, de                                    ; $7ad2: $19
    ld a, [de]                                    ; $7ad3: $1a
    dec de                                        ; $7ad4: $1b
    ld bc, $0101                                  ; $7ad5: $01 $01 $01
    rlca                                          ; $7ad8: $07
    rlca                                          ; $7ad9: $07
    rlca                                          ; $7ada: $07
    rlca                                          ; $7adb: $07
    rlca                                          ; $7adc: $07
    inc b                                         ; $7add: $04

jr_08d_7ade:
    ld b, $05                                     ; $7ade: $06 $05
    ld b, $05                                     ; $7ae0: $06 $05
    ld b, $04                                     ; $7ae2: $06 $04
    dec b                                         ; $7ae4: $05
    db $10                                        ; $7ae5: $10
    ld de, $0412                                  ; $7ae6: $11 $12 $04
    inc de                                        ; $7ae9: $13
    inc d                                         ; $7aea: $14
    dec d                                         ; $7aeb: $15
    rlca                                          ; $7aec: $07
    rra                                           ; $7aed: $1f
    jr nz, jr_08d_7b11                            ; $7aee: $20 $21

    ld d, $22                                     ; $7af0: $16 $22
    inc hl                                        ; $7af2: $23
    inc h                                         ; $7af3: $24
    add hl, de                                    ; $7af4: $19
    dec b                                         ; $7af5: $05

jr_08d_7af6:
    inc b                                         ; $7af6: $04
    inc b                                         ; $7af7: $04
    rlca                                          ; $7af8: $07
    ld b, $06                                     ; $7af9: $06 $06
    inc b                                         ; $7afb: $04
    rlca                                          ; $7afc: $07
    inc b                                         ; $7afd: $04
    dec b                                         ; $7afe: $05
    ld b, $07                                     ; $7aff: $06 $07
    ld b, $06                                     ; $7b01: $06 $06
    dec b                                         ; $7b03: $05
    rlca                                          ; $7b04: $07
    pop de                                        ; $7b05: $d1
    pop de                                        ; $7b06: $d1
    pop de                                        ; $7b07: $d1
    pop de                                        ; $7b08: $d1
    pop de                                        ; $7b09: $d1
    pop de                                        ; $7b0a: $d1
    pop de                                        ; $7b0b: $d1
    pop de                                        ; $7b0c: $d1
    pop de                                        ; $7b0d: $d1
    pop de                                        ; $7b0e: $d1
    ld e, l                                       ; $7b0f: $5d
    ld e, [hl]                                    ; $7b10: $5e

jr_08d_7b11:
    pop de                                        ; $7b11: $d1
    pop de                                        ; $7b12: $d1
    jp nc, $805f                                  ; $7b13: $d2 $5f $80

    add b                                         ; $7b16: $80
    add b                                         ; $7b17: $80
    add b                                         ; $7b18: $80
    add b                                         ; $7b19: $80
    add b                                         ; $7b1a: $80
    add b                                         ; $7b1b: $80
    add b                                         ; $7b1c: $80
    add b                                         ; $7b1d: $80
    add b                                         ; $7b1e: $80
    add b                                         ; $7b1f: $80
    add b                                         ; $7b20: $80
    add b                                         ; $7b21: $80
    add b                                         ; $7b22: $80
    add b                                         ; $7b23: $80
    ld bc, $1cd2                                  ; $7b24: $01 $d2 $1c
    dec e                                         ; $7b27: $1d
    ld e, $d2                                     ; $7b28: $1e $d2
    ld bc, $0302                                  ; $7b2a: $01 $02 $03
    ld h, b                                       ; $7b2d: $60
    inc b                                         ; $7b2e: $04
    dec b                                         ; $7b2f: $05
    ld b, $61                                     ; $7b30: $06 $61
    rlca                                          ; $7b32: $07
    ld [$8009], sp                                ; $7b33: $08 $09 $80
    rlca                                          ; $7b36: $07
    dec b                                         ; $7b37: $05
    ld b, $80                                     ; $7b38: $06 $80
    rlca                                          ; $7b3a: $07
    ld b, $04                                     ; $7b3b: $06 $04
    add b                                         ; $7b3d: $80
    rlca                                          ; $7b3e: $07
    ld b, $05                                     ; $7b3f: $06 $05
    ld bc, $0607                                  ; $7b41: $01 $07 $06
    ld b, $25                                     ; $7b44: $06 $25
    ld h, d                                       ; $7b46: $62
    ld h, e                                       ; $7b47: $63
    ld h, h                                       ; $7b48: $64
    dec c                                         ; $7b49: $0d
    ld h, l                                       ; $7b4a: $65
    ld h, [hl]                                    ; $7b4b: $66
    ld h, a                                       ; $7b4c: $67
    db $10                                        ; $7b4d: $10
    ld l, b                                       ; $7b4e: $68
    ld l, c                                       ; $7b4f: $69
    ld l, c                                       ; $7b50: $69
    inc de                                        ; $7b51: $13
    ld l, d                                       ; $7b52: $6a
    ld l, e                                       ; $7b53: $6b
    ld l, e                                       ; $7b54: $6b
    inc b                                         ; $7b55: $04
    inc bc                                        ; $7b56: $03
    inc bc                                        ; $7b57: $03
    inc bc                                        ; $7b58: $03
    ld b, $03                                     ; $7b59: $06 $03
    inc bc                                        ; $7b5b: $03
    inc bc                                        ; $7b5c: $03
    ld b, $03                                     ; $7b5d: $06 $03
    inc bc                                        ; $7b5f: $03
    inc bc                                        ; $7b60: $03
    ld b, $03                                     ; $7b61: $06 $03
    inc bc                                        ; $7b63: $03
    inc bc                                        ; $7b64: $03
    ld l, h                                       ; $7b65: $6c
    ld e, $25                                     ; $7b66: $1e $25
    ld h, $6d                                     ; $7b68: $26 $6d
    inc bc                                        ; $7b6a: $03
    dec c                                         ; $7b6b: $0d
    ld c, $68                                     ; $7b6c: $0e $68
    ld b, $10                                     ; $7b6e: $06 $10
    ld de, $096e                                  ; $7b70: $11 $6e $09
    inc de                                        ; $7b73: $13
    inc d                                         ; $7b74: $14
    inc bc                                        ; $7b75: $03
    dec b                                         ; $7b76: $05
    ld b, $05                                     ; $7b77: $06 $05
    inc bc                                        ; $7b79: $03
    ld b, $05                                     ; $7b7a: $06 $05
    ld b, $23                                     ; $7b7c: $06 $23
    rlca                                          ; $7b7e: $07
    ld b, $05                                     ; $7b7f: $06 $05
    inc bc                                        ; $7b81: $03
    rlca                                          ; $7b82: $07
    ld b, $04                                     ; $7b83: $06 $04
    pop de                                        ; $7b85: $d1
    pop de                                        ; $7b86: $d1
    ld l, a                                       ; $7b87: $6f
    ld [hl], b                                    ; $7b88: $70
    pop de                                        ; $7b89: $d1
    pop de                                        ; $7b8a: $d1
    ld l, a                                       ; $7b8b: $6f
    ld [hl], c                                    ; $7b8c: $71
    pop de                                        ; $7b8d: $d1
    pop de                                        ; $7b8e: $d1
    ld l, a                                       ; $7b8f: $6f
    ld [hl], d                                    ; $7b90: $72
    pop de                                        ; $7b91: $d1
    pop de                                        ; $7b92: $d1
    ld l, a                                       ; $7b93: $6f
    ld [hl], e                                    ; $7b94: $73
    add b                                         ; $7b95: $80
    add b                                         ; $7b96: $80
    add b                                         ; $7b97: $80
    ld bc, $8080                                  ; $7b98: $01 $80 $80
    add b                                         ; $7b9b: $80
    ld bc, $8080                                  ; $7b9c: $01 $80 $80
    add b                                         ; $7b9f: $80
    ld bc, $8080                                  ; $7ba0: $01 $80 $80
    add b                                         ; $7ba3: $80
    ld bc, $1674                                  ; $7ba4: $01 $74 $16
    rla                                           ; $7ba7: $17
    jr jr_08d_7c1f                                ; $7ba8: $18 $75

    add hl, de                                    ; $7baa: $19
    ld a, [de]                                    ; $7bab: $1a
    dec de                                        ; $7bac: $1b
    halt                                          ; $7bad: $76
    inc e                                         ; $7bae: $1c
    dec e                                         ; $7baf: $1d
    ld e, $77                                     ; $7bb0: $1e $77
    ld bc, $0302                                  ; $7bb2: $01 $02 $03
    ld bc, $0407                                  ; $7bb5: $01 $07 $04
    ld b, $01                                     ; $7bb8: $06 $01
    rlca                                          ; $7bba: $07
    inc b                                         ; $7bbb: $04
    inc b                                         ; $7bbc: $04
    ld bc, $0407                                  ; $7bbd: $01 $07 $04
    ld b, $01                                     ; $7bc0: $06 $01
    rlca                                          ; $7bc2: $07
    ld b, $05                                     ; $7bc3: $06 $05
    rra                                           ; $7bc5: $1f
    ld a, b                                       ; $7bc6: $78
    ld a, c                                       ; $7bc7: $79
    ld a, d                                       ; $7bc8: $7a
    ld [hl+], a                                   ; $7bc9: $22
    inc hl                                        ; $7bca: $23
    inc h                                         ; $7bcb: $24
    add hl, de                                    ; $7bcc: $19
    dec h                                         ; $7bcd: $25
    ld h, $27                                     ; $7bce: $26 $27
    inc e                                         ; $7bd0: $1c
    dec c                                         ; $7bd1: $0d
    ld h, d                                       ; $7bd2: $62
    ld h, e                                       ; $7bd3: $63
    ld h, h                                       ; $7bd4: $64
    dec b                                         ; $7bd5: $05
    inc bc                                        ; $7bd6: $03
    inc bc                                        ; $7bd7: $03
    inc bc                                        ; $7bd8: $03
    ld b, $07                                     ; $7bd9: $06 $07
    rlca                                          ; $7bdb: $07
    rlca                                          ; $7bdc: $07
    inc b                                         ; $7bdd: $04
    ld b, $05                                     ; $7bde: $06 $05
    ld b, $04                                     ; $7be0: $06 $04
    inc bc                                        ; $7be2: $03
    inc bc                                        ; $7be3: $03
    inc bc                                        ; $7be4: $03
    ld a, e                                       ; $7be5: $7b
    jr jr_08d_7c07                                ; $7be6: $18 $1f

    jr nz, jr_08d_7c04                            ; $7be8: $20 $1a

    dec de                                        ; $7bea: $1b
    ld [hl+], a                                   ; $7beb: $22
    inc hl                                        ; $7bec: $23
    dec e                                         ; $7bed: $1d
    ld e, $25                                     ; $7bee: $1e $25
    ld h, $6c                                     ; $7bf0: $26 $6c
    inc bc                                        ; $7bf2: $03
    dec c                                         ; $7bf3: $0d
    ld c, $03                                     ; $7bf4: $0e $03
    rlca                                          ; $7bf6: $07
    ld b, $04                                     ; $7bf7: $06 $04
    rlca                                          ; $7bf9: $07
    rlca                                          ; $7bfa: $07
    inc b                                         ; $7bfb: $04
    ld b, $05                                     ; $7bfc: $06 $05
    ld b, $06                                     ; $7bfe: $06 $06
    dec b                                         ; $7c00: $05
    inc bc                                        ; $7c01: $03
    ld b, $05                                     ; $7c02: $06 $05

jr_08d_7c04:
    ld b, $d1                                     ; $7c04: $06 $d1
    ld a, h                                       ; $7c06: $7c

jr_08d_7c07:
    ld l, a                                       ; $7c07: $6f
    ld de, $7cd1                                  ; $7c08: $11 $d1 $7c
    jp nc, $d114                                  ; $7c0b: $d2 $14 $d1

    ld a, h                                       ; $7c0e: $7c
    ld a, l                                       ; $7c0f: $7d
    ld e, [hl]                                    ; $7c10: $5e
    pop de                                        ; $7c11: $d1
    pop de                                        ; $7c12: $d1
    pop de                                        ; $7c13: $d1
    pop de                                        ; $7c14: $d1
    add b                                         ; $7c15: $80
    add b                                         ; $7c16: $80
    add b                                         ; $7c17: $80
    rlca                                          ; $7c18: $07
    add b                                         ; $7c19: $80
    add b                                         ; $7c1a: $80
    add b                                         ; $7c1b: $80
    rlca                                          ; $7c1c: $07
    add b                                         ; $7c1d: $80
    add b                                         ; $7c1e: $80

jr_08d_7c1f:
    add b                                         ; $7c1f: $80
    add b                                         ; $7c20: $80
    add b                                         ; $7c21: $80
    add b                                         ; $7c22: $80
    add b                                         ; $7c23: $80
    add b                                         ; $7c24: $80
    ld [de], a                                    ; $7c25: $12
    inc b                                         ; $7c26: $04
    dec b                                         ; $7c27: $05
    ld b, $15                                     ; $7c28: $06 $15
    rlca                                          ; $7c2a: $07
    ld [$7e09], sp                                ; $7c2b: $08 $09 $7e
    ld d, $17                                     ; $7c2e: $16 $17
    jr jr_08d_7c04                                ; $7c30: $18 $d2

    add hl, de                                    ; $7c32: $19
    ld a, [de]                                    ; $7c33: $1a
    dec de                                        ; $7c34: $1b
    rlca                                          ; $7c35: $07
    rlca                                          ; $7c36: $07
    dec b                                         ; $7c37: $05
    dec b                                         ; $7c38: $05
    inc b                                         ; $7c39: $04
    ld b, $05                                     ; $7c3a: $06 $05
    ld b, $80                                     ; $7c3c: $06 $80
    inc b                                         ; $7c3e: $04
    ld b, $05                                     ; $7c3f: $06 $05
    add b                                         ; $7c41: $80
    inc b                                         ; $7c42: $04
    dec b                                         ; $7c43: $05
    ld b, $10                                     ; $7c44: $06 $10
    ld h, l                                       ; $7c46: $65
    ld h, [hl]                                    ; $7c47: $66
    ld a, a                                       ; $7c48: $7f
    inc de                                        ; $7c49: $13
    ld l, b                                       ; $7c4a: $68
    ld l, c                                       ; $7c4b: $69
    add b                                         ; $7c4c: $80
    rra                                           ; $7c4d: $1f
    ld l, d                                       ; $7c4e: $6a
    ld l, e                                       ; $7c4f: $6b
    ld l, e                                       ; $7c50: $6b
    ld [hl+], a                                   ; $7c51: $22
    ld a, b                                       ; $7c52: $78
    ld a, c                                       ; $7c53: $79
    ld a, d                                       ; $7c54: $7a
    ld b, $03                                     ; $7c55: $06 $03
    inc bc                                        ; $7c57: $03
    inc bc                                        ; $7c58: $03
    ld b, $03                                     ; $7c59: $06 $03
    inc bc                                        ; $7c5b: $03
    dec bc                                        ; $7c5c: $0b
    ld b, $03                                     ; $7c5d: $06 $03
    inc bc                                        ; $7c5f: $03
    inc bc                                        ; $7c60: $03
    inc b                                         ; $7c61: $04
    inc bc                                        ; $7c62: $03
    inc bc                                        ; $7c63: $03
    inc bc                                        ; $7c64: $03
    add c                                         ; $7c65: $81
    ld b, $10                                     ; $7c66: $06 $10
    ld de, $0968                                  ; $7c68: $11 $68 $09
    inc de                                        ; $7c6b: $13
    inc d                                         ; $7c6c: $14
    ld l, [hl]                                    ; $7c6d: $6e
    jr jr_08d_7c8f                                ; $7c6e: $18 $1f

    jr nz, jr_08d_7ced                            ; $7c70: $20 $7b

    dec de                                        ; $7c72: $1b
    ld [hl+], a                                   ; $7c73: $22
    inc hl                                        ; $7c74: $23
    dec bc                                        ; $7c75: $0b
    inc b                                         ; $7c76: $04
    ld b, $05                                     ; $7c77: $06 $05
    inc hl                                        ; $7c79: $23
    rlca                                          ; $7c7a: $07
    dec b                                         ; $7c7b: $05
    dec b                                         ; $7c7c: $05
    inc bc                                        ; $7c7d: $03
    rlca                                          ; $7c7e: $07
    ld b, $05                                     ; $7c7f: $06 $05
    inc bc                                        ; $7c81: $03
    rlca                                          ; $7c82: $07
    ld b, $04                                     ; $7c83: $06 $04
    jp nc, Jump_000_1d1c                          ; $7c85: $d2 $1c $1d

    ld e, $7d                                     ; $7c88: $1e $7d
    ld e, [hl]                                    ; $7c8a: $5e
    ld e, [hl]                                    ; $7c8b: $5e
    ld e, [hl]                                    ; $7c8c: $5e
    pop de                                        ; $7c8d: $d1
    pop de                                        ; $7c8e: $d1

jr_08d_7c8f:
    pop de                                        ; $7c8f: $d1
    pop de                                        ; $7c90: $d1
    pop de                                        ; $7c91: $d1
    pop de                                        ; $7c92: $d1
    pop de                                        ; $7c93: $d1
    pop de                                        ; $7c94: $d1
    add b                                         ; $7c95: $80
    rlca                                          ; $7c96: $07
    dec b                                         ; $7c97: $05
    inc b                                         ; $7c98: $04
    add b                                         ; $7c99: $80
    add b                                         ; $7c9a: $80
    add b                                         ; $7c9b: $80
    add b                                         ; $7c9c: $80
    add b                                         ; $7c9d: $80
    add b                                         ; $7c9e: $80
    add b                                         ; $7c9f: $80
    add b                                         ; $7ca0: $80
    add b                                         ; $7ca1: $80
    add b                                         ; $7ca2: $80
    add b                                         ; $7ca3: $80
    add b                                         ; $7ca4: $80
    dec h                                         ; $7ca5: $25
    ld h, $27                                     ; $7ca6: $26 $27
    inc e                                         ; $7ca8: $1c
    ld e, [hl]                                    ; $7ca9: $5e
    ld e, [hl]                                    ; $7caa: $5e
    ld e, [hl]                                    ; $7cab: $5e
    ld e, [hl]                                    ; $7cac: $5e
    pop de                                        ; $7cad: $d1
    pop de                                        ; $7cae: $d1
    pop de                                        ; $7caf: $d1
    pop de                                        ; $7cb0: $d1
    pop de                                        ; $7cb1: $d1
    pop de                                        ; $7cb2: $d1
    pop de                                        ; $7cb3: $d1
    pop de                                        ; $7cb4: $d1
    inc b                                         ; $7cb5: $04
    rlca                                          ; $7cb6: $07
    rlca                                          ; $7cb7: $07
    rlca                                          ; $7cb8: $07
    add b                                         ; $7cb9: $80
    add b                                         ; $7cba: $80
    add b                                         ; $7cbb: $80
    add b                                         ; $7cbc: $80
    add b                                         ; $7cbd: $80
    add b                                         ; $7cbe: $80
    add b                                         ; $7cbf: $80
    add b                                         ; $7cc0: $80
    add b                                         ; $7cc1: $80
    add b                                         ; $7cc2: $80
    add b                                         ; $7cc3: $80
    add b                                         ; $7cc4: $80
    dec e                                         ; $7cc5: $1d
    ld e, $25                                     ; $7cc6: $1e $25
    ld h, $5e                                     ; $7cc8: $26 $5e
    ld e, [hl]                                    ; $7cca: $5e
    ld e, [hl]                                    ; $7ccb: $5e
    ld e, [hl]                                    ; $7ccc: $5e
    pop de                                        ; $7ccd: $d1
    pop de                                        ; $7cce: $d1
    pop de                                        ; $7ccf: $d1
    pop de                                        ; $7cd0: $d1
    pop de                                        ; $7cd1: $d1
    pop de                                        ; $7cd2: $d1
    pop de                                        ; $7cd3: $d1
    pop de                                        ; $7cd4: $d1
    rlca                                          ; $7cd5: $07
    rlca                                          ; $7cd6: $07
    dec b                                         ; $7cd7: $05
    ld b, $80                                     ; $7cd8: $06 $80
    add b                                         ; $7cda: $80
    add b                                         ; $7cdb: $80
    add b                                         ; $7cdc: $80
    add b                                         ; $7cdd: $80
    add b                                         ; $7cde: $80
    add b                                         ; $7cdf: $80
    add b                                         ; $7ce0: $80
    add b                                         ; $7ce1: $80
    add b                                         ; $7ce2: $80
    add b                                         ; $7ce3: $80
    add b                                         ; $7ce4: $80
    ld h, d                                       ; $7ce5: $62
    ld h, e                                       ; $7ce6: $63
    ld h, h                                       ; $7ce7: $64
    ld l, h                                       ; $7ce8: $6c
    add d                                         ; $7ce9: $82
    ld h, [hl]                                    ; $7cea: $66
    ld h, a                                       ; $7ceb: $67
    ld l, l                                       ; $7cec: $6d

jr_08d_7ced:
    add e                                         ; $7ced: $83
    add h                                         ; $7cee: $84
    add l                                         ; $7cef: $85
    ld l, b                                       ; $7cf0: $68
    ld l, d                                       ; $7cf1: $6a
    ld l, e                                       ; $7cf2: $6b
    ld l, e                                       ; $7cf3: $6b
    ld l, [hl]                                    ; $7cf4: $6e
    inc bc                                        ; $7cf5: $03
    inc bc                                        ; $7cf6: $03
    inc bc                                        ; $7cf7: $03
    inc bc                                        ; $7cf8: $03
    dec bc                                        ; $7cf9: $0b
    inc bc                                        ; $7cfa: $03
    inc bc                                        ; $7cfb: $03
    inc bc                                        ; $7cfc: $03
    dec bc                                        ; $7cfd: $0b
    dec bc                                        ; $7cfe: $0b
    dec bc                                        ; $7cff: $0b
    inc hl                                        ; $7d00: $23
    inc bc                                        ; $7d01: $03
    inc bc                                        ; $7d02: $03
    inc bc                                        ; $7d03: $03
    inc bc                                        ; $7d04: $03
    dec h                                         ; $7d05: $25
    ld h, $27                                     ; $7d06: $26 $27
    inc e                                         ; $7d08: $1c
    dec c                                         ; $7d09: $0d
    ld c, $0f                                     ; $7d0a: $0e $0f
    ld bc, $1110                                  ; $7d0c: $01 $10 $11
    ld [de], a                                    ; $7d0f: $12
    inc b                                         ; $7d10: $04
    inc de                                        ; $7d11: $13
    inc d                                         ; $7d12: $14
    dec d                                         ; $7d13: $15
    rlca                                          ; $7d14: $07
    ld b, $04                                     ; $7d15: $06 $04
    inc b                                         ; $7d17: $04
    rlca                                          ; $7d18: $07
    ld b, $04                                     ; $7d19: $06 $04
    ld b, $07                                     ; $7d1b: $06 $07
    rlca                                          ; $7d1d: $07
    ld b, $05                                     ; $7d1e: $06 $05
    rlca                                          ; $7d20: $07
    rlca                                          ; $7d21: $07
    dec b                                         ; $7d22: $05
    ld b, $07                                     ; $7d23: $06 $07
    ld a, b                                       ; $7d25: $78
    ld a, c                                       ; $7d26: $79
    ld a, d                                       ; $7d27: $7a
    ld a, e                                       ; $7d28: $7b
    inc h                                         ; $7d29: $24
    add hl, de                                    ; $7d2a: $19
    ld a, [de]                                    ; $7d2b: $1a
    dec de                                        ; $7d2c: $1b
    daa                                           ; $7d2d: $27
    inc e                                         ; $7d2e: $1c
    dec e                                         ; $7d2f: $1d
    ld e, $62                                     ; $7d30: $1e $62
    ld h, e                                       ; $7d32: $63
    ld h, h                                       ; $7d33: $64
    ld l, h                                       ; $7d34: $6c
    inc bc                                        ; $7d35: $03
    inc bc                                        ; $7d36: $03
    inc bc                                        ; $7d37: $03
    inc bc                                        ; $7d38: $03
    rlca                                          ; $7d39: $07
    rlca                                          ; $7d3a: $07
    rlca                                          ; $7d3b: $07
    rlca                                          ; $7d3c: $07
    ld b, $04                                     ; $7d3d: $06 $04
    ld b, $04                                     ; $7d3f: $06 $04
    inc bc                                        ; $7d41: $03
    inc bc                                        ; $7d42: $03
    inc bc                                        ; $7d43: $03
    inc bc                                        ; $7d44: $03
    rra                                           ; $7d45: $1f
    jr nz, jr_08d_7d69                            ; $7d46: $20 $21

    ld d, $22                                     ; $7d48: $16 $22
    inc hl                                        ; $7d4a: $23
    inc h                                         ; $7d4b: $24
    add hl, de                                    ; $7d4c: $19
    dec h                                         ; $7d4d: $25
    ld h, $27                                     ; $7d4e: $26 $27
    inc e                                         ; $7d50: $1c
    dec c                                         ; $7d51: $0d
    ld c, $0f                                     ; $7d52: $0e $0f
    ld bc, $0607                                  ; $7d54: $01 $07 $06
    dec b                                         ; $7d57: $05
    rlca                                          ; $7d58: $07
    rlca                                          ; $7d59: $07
    ld b, $04                                     ; $7d5a: $06 $04
    rlca                                          ; $7d5c: $07
    ld b, $05                                     ; $7d5d: $06 $05
    inc b                                         ; $7d5f: $04
    rlca                                          ; $7d60: $07
    ld b, $06                                     ; $7d61: $06 $06
    ld b, $07                                     ; $7d63: $06 $07
    ld h, l                                       ; $7d65: $65
    ld h, [hl]                                    ; $7d66: $66
    ld h, a                                       ; $7d67: $67
    ld l, l                                       ; $7d68: $6d

jr_08d_7d69:
    ld l, b                                       ; $7d69: $68
    ld l, c                                       ; $7d6a: $69
    ld l, c                                       ; $7d6b: $69
    ld l, b                                       ; $7d6c: $68
    ld l, d                                       ; $7d6d: $6a
    ld l, e                                       ; $7d6e: $6b
    ld l, e                                       ; $7d6f: $6b
    ld l, [hl]                                    ; $7d70: $6e
    ld a, b                                       ; $7d71: $78
    ld a, c                                       ; $7d72: $79
    ld a, d                                       ; $7d73: $7a
    ld a, e                                       ; $7d74: $7b
    inc bc                                        ; $7d75: $03
    inc bc                                        ; $7d76: $03
    inc bc                                        ; $7d77: $03
    inc bc                                        ; $7d78: $03
    inc bc                                        ; $7d79: $03
    inc bc                                        ; $7d7a: $03
    inc bc                                        ; $7d7b: $03
    inc hl                                        ; $7d7c: $23
    inc bc                                        ; $7d7d: $03
    inc bc                                        ; $7d7e: $03
    inc bc                                        ; $7d7f: $03
    inc bc                                        ; $7d80: $03
    inc bc                                        ; $7d81: $03
    inc bc                                        ; $7d82: $03
    inc bc                                        ; $7d83: $03
    inc bc                                        ; $7d84: $03
    db $10                                        ; $7d85: $10
    ld de, $0412                                  ; $7d86: $11 $12 $04
    inc de                                        ; $7d89: $13
    inc d                                         ; $7d8a: $14
    dec d                                         ; $7d8b: $15
    rlca                                          ; $7d8c: $07
    rra                                           ; $7d8d: $1f
    jr nz, jr_08d_7db1                            ; $7d8e: $20 $21

    ld d, $22                                     ; $7d90: $16 $22
    inc hl                                        ; $7d92: $23
    inc h                                         ; $7d93: $24
    add hl, de                                    ; $7d94: $19
    ld b, $04                                     ; $7d95: $06 $04
    ld b, $07                                     ; $7d97: $06 $07
    rlca                                          ; $7d99: $07
    ld b, $05                                     ; $7d9a: $06 $05
    rlca                                          ; $7d9c: $07
    rlca                                          ; $7d9d: $07
    dec b                                         ; $7d9e: $05
    ld b, $07                                     ; $7d9f: $06 $07
    rlca                                          ; $7da1: $07
    ld b, $04                                     ; $7da2: $06 $04
    rlca                                          ; $7da4: $07
    daa                                           ; $7da5: $27
    inc e                                         ; $7da6: $1c
    dec e                                         ; $7da7: $1d
    ld e, $5e                                     ; $7da8: $1e $5e
    ld e, [hl]                                    ; $7daa: $5e
    ld e, [hl]                                    ; $7dab: $5e
    ld e, [hl]                                    ; $7dac: $5e
    pop de                                        ; $7dad: $d1
    pop de                                        ; $7dae: $d1
    pop de                                        ; $7daf: $d1
    pop de                                        ; $7db0: $d1

jr_08d_7db1:
    pop de                                        ; $7db1: $d1
    pop de                                        ; $7db2: $d1
    pop de                                        ; $7db3: $d1
    pop de                                        ; $7db4: $d1
    rlca                                          ; $7db5: $07
    rlca                                          ; $7db6: $07
    rlca                                          ; $7db7: $07
    rlca                                          ; $7db8: $07
    add b                                         ; $7db9: $80
    add b                                         ; $7dba: $80
    add b                                         ; $7dbb: $80
    add b                                         ; $7dbc: $80
    add b                                         ; $7dbd: $80
    add b                                         ; $7dbe: $80
    add b                                         ; $7dbf: $80
    add b                                         ; $7dc0: $80
    add b                                         ; $7dc1: $80
    add b                                         ; $7dc2: $80
    add b                                         ; $7dc3: $80
    add b                                         ; $7dc4: $80
    dec h                                         ; $7dc5: $25
    ld h, $27                                     ; $7dc6: $26 $27
    inc e                                         ; $7dc8: $1c
    ld e, [hl]                                    ; $7dc9: $5e
    ld e, [hl]                                    ; $7dca: $5e
    ld e, [hl]                                    ; $7dcb: $5e
    ld e, [hl]                                    ; $7dcc: $5e
    pop de                                        ; $7dcd: $d1
    pop de                                        ; $7dce: $d1
    pop de                                        ; $7dcf: $d1
    pop de                                        ; $7dd0: $d1
    pop de                                        ; $7dd1: $d1
    pop de                                        ; $7dd2: $d1
    pop de                                        ; $7dd3: $d1
    pop de                                        ; $7dd4: $d1
    rlca                                          ; $7dd5: $07
    dec b                                         ; $7dd6: $05
    dec b                                         ; $7dd7: $05
    rlca                                          ; $7dd8: $07
    add b                                         ; $7dd9: $80
    add b                                         ; $7dda: $80
    add b                                         ; $7ddb: $80
    add b                                         ; $7ddc: $80
    add b                                         ; $7ddd: $80
    add b                                         ; $7dde: $80
    add b                                         ; $7ddf: $80
    add b                                         ; $7de0: $80
    add b                                         ; $7de1: $80
    add b                                         ; $7de2: $80
    add b                                         ; $7de3: $80
    add b                                         ; $7de4: $80
    jp nc, $d1d1                                  ; $7de5: $d2 $d1 $d1

    pop de                                        ; $7de8: $d1
    ld h, b                                       ; $7de9: $60
    pop de                                        ; $7dea: $d1
    pop de                                        ; $7deb: $d1
    pop de                                        ; $7dec: $d1
    pop de                                        ; $7ded: $d1
    pop de                                        ; $7dee: $d1
    pop de                                        ; $7def: $d1
    pop de                                        ; $7df0: $d1
    pop de                                        ; $7df1: $d1
    pop de                                        ; $7df2: $d1
    pop de                                        ; $7df3: $d1
    pop de                                        ; $7df4: $d1
    add b                                         ; $7df5: $80
    add b                                         ; $7df6: $80
    add b                                         ; $7df7: $80
    add b                                         ; $7df8: $80
    add b                                         ; $7df9: $80
    add b                                         ; $7dfa: $80
    add b                                         ; $7dfb: $80
    add b                                         ; $7dfc: $80
    add b                                         ; $7dfd: $80
    add b                                         ; $7dfe: $80
    add b                                         ; $7dff: $80
    add b                                         ; $7e00: $80
    add b                                         ; $7e01: $80
    add b                                         ; $7e02: $80
    add b                                         ; $7e03: $80
    add b                                         ; $7e04: $80
    xor e                                         ; $7e05: $ab
    nop                                           ; $7e06: $00
    nop                                           ; $7e07: $00
    nop                                           ; $7e08: $00
    nop                                           ; $7e09: $00
    ld bc, $0200                                  ; $7e0a: $01 $00 $02
    nop                                           ; $7e0d: $00
    inc bc                                        ; $7e0e: $03
    nop                                           ; $7e0f: $00
    ld bc, $0010                                  ; $7e10: $01 $10 $00
    ld de, $1200                                  ; $7e13: $11 $00 $12
    nop                                           ; $7e16: $00
    inc de                                        ; $7e17: $13
    inc c                                         ; $7e18: $0c
    db $10                                        ; $7e19: $10
    add b                                         ; $7e1a: $80
    ld [de], a                                    ; $7e1b: $12
    ld [$002c], sp                                ; $7e1c: $08 $2c $00
    inc b                                         ; $7e1f: $04
    nop                                           ; $7e20: $00
    dec b                                         ; $7e21: $05
    nop                                           ; $7e22: $00
    ld b, $00                                     ; $7e23: $06 $00
    nop                                           ; $7e25: $00
    rlca                                          ; $7e26: $07
    nop                                           ; $7e27: $00
    inc d                                         ; $7e28: $14
    nop                                           ; $7e29: $00
    dec d                                         ; $7e2a: $15
    nop                                           ; $7e2b: $00
    ld d, $00                                     ; $7e2c: $16 $00
    nop                                           ; $7e2e: $00
    rla                                           ; $7e2f: $17
    nop                                           ; $7e30: $00
    jr nz, jr_08d_7e33                            ; $7e31: $20 $00

jr_08d_7e33:
    ld hl, $2200                                  ; $7e33: $21 $00 $22
    jr nz, jr_08d_7e38                            ; $7e36: $20 $00

jr_08d_7e38:
    inc hl                                        ; $7e38: $23
    ld a, [de]                                    ; $7e39: $1a
    nop                                           ; $7e3a: $00
    ld [$0900], sp                                ; $7e3b: $08 $00 $09
    nop                                           ; $7e3e: $00
    ld a, [bc]                                    ; $7e3f: $0a
    nop                                           ; $7e40: $00
    nop                                           ; $7e41: $00
    dec bc                                        ; $7e42: $0b
    nop                                           ; $7e43: $00
    jr jr_08d_7e46                                ; $7e44: $18 $00

jr_08d_7e46:
    add hl, de                                    ; $7e46: $19
    nop                                           ; $7e47: $00
    ld a, [de]                                    ; $7e48: $1a
    nop                                           ; $7e49: $00
    nop                                           ; $7e4a: $00
    dec de                                        ; $7e4b: $1b
    nop                                           ; $7e4c: $00
    inc h                                         ; $7e4d: $24
    nop                                           ; $7e4e: $00
    dec h                                         ; $7e4f: $25
    nop                                           ; $7e50: $00
    ld h, $20                                     ; $7e51: $26 $20
    nop                                           ; $7e53: $00
    daa                                           ; $7e54: $27
    inc [hl]                                      ; $7e55: $34
    nop                                           ; $7e56: $00
    inc c                                         ; $7e57: $0c
    nop                                           ; $7e58: $00
    dec c                                         ; $7e59: $0d
    nop                                           ; $7e5a: $00
    ld c, $00                                     ; $7e5b: $0e $00
    nop                                           ; $7e5d: $00
    rrca                                          ; $7e5e: $0f
    nop                                           ; $7e5f: $00
    inc e                                         ; $7e60: $1c
    nop                                           ; $7e61: $00
    dec e                                         ; $7e62: $1d
    nop                                           ; $7e63: $00
    ld e, $00                                     ; $7e64: $1e $00
    nop                                           ; $7e66: $00
    rra                                           ; $7e67: $1f
    nop                                           ; $7e68: $00
    jr z, jr_08d_7e6b                             ; $7e69: $28 $00

jr_08d_7e6b:
    add hl, hl                                    ; $7e6b: $29
    nop                                           ; $7e6c: $00
    ld a, [hl+]                                   ; $7e6d: $2a
    jr nz, jr_08d_7e70                            ; $7e6e: $20 $00

jr_08d_7e70:
    dec hl                                        ; $7e70: $2b
    inc [hl]                                      ; $7e71: $34
    db $10                                        ; $7e72: $10
    dec l                                         ; $7e73: $2d
    nop                                           ; $7e74: $00
    ld l, $00                                     ; $7e75: $2e $00
    cpl                                           ; $7e77: $2f
    nop                                           ; $7e78: $00
    nop                                           ; $7e79: $00
    dec [hl]                                      ; $7e7a: $35
    nop                                           ; $7e7b: $00
    ld [hl], $00                                  ; $7e7c: $36 $00
    scf                                           ; $7e7e: $37
    nop                                           ; $7e7f: $00
    jr c, jr_08d_7e82                             ; $7e80: $38 $00

jr_08d_7e82:
    nop                                           ; $7e82: $00
    dec a                                         ; $7e83: $3d
    nop                                           ; $7e84: $00
    ld a, $00                                     ; $7e85: $3e $00
    ccf                                           ; $7e87: $3f
    nop                                           ; $7e88: $00
    ld b, b                                       ; $7e89: $40
    add b                                         ; $7e8a: $80
    ld l, b                                       ; $7e8b: $68
    nop                                           ; $7e8c: $00
    jr nc, jr_08d_7e8f                            ; $7e8d: $30 $00

jr_08d_7e8f:
    ld sp, $3200                                  ; $7e8f: $31 $00 $32
    nop                                           ; $7e92: $00
    inc sp                                        ; $7e93: $33
    nop                                           ; $7e94: $00
    nop                                           ; $7e95: $00
    add hl, sp                                    ; $7e96: $39
    nop                                           ; $7e97: $00
    ld a, [hl-]                                   ; $7e98: $3a
    nop                                           ; $7e99: $00
    dec sp                                        ; $7e9a: $3b
    nop                                           ; $7e9b: $00
    inc a                                         ; $7e9c: $3c
    nop                                           ; $7e9d: $00
    nop                                           ; $7e9e: $00
    ld b, c                                       ; $7e9f: $41
    nop                                           ; $7ea0: $00
    ld b, d                                       ; $7ea1: $42
    nop                                           ; $7ea2: $00
    ld b, e                                       ; $7ea3: $43
    nop                                           ; $7ea4: $00
    ld b, h                                       ; $7ea5: $44
    and b                                         ; $7ea6: $a0
    add d                                         ; $7ea7: $82
    nop                                           ; $7ea8: $00
    inc [hl]                                      ; $7ea9: $34
    ld [bc], a                                    ; $7eaa: $02
    ld h, b                                       ; $7eab: $60
    ld b, l                                       ; $7eac: $45
    nop                                           ; $7ead: $00
    ld b, [hl]                                    ; $7eae: $46
    nop                                           ; $7eaf: $00
    ld b, a                                       ; $7eb0: $47
    jr nz, jr_08d_7eb3                            ; $7eb1: $20 $00

jr_08d_7eb3:
    ld c, b                                       ; $7eb3: $48
    ld a, [de]                                    ; $7eb4: $1a
    sub b                                         ; $7eb5: $90
    ld c, c                                       ; $7eb6: $49
    nop                                           ; $7eb7: $00
    ld c, d                                       ; $7eb8: $4a
    nop                                           ; $7eb9: $00
    ld c, e                                       ; $7eba: $4b
    add b                                         ; $7ebb: $80
    inc [hl]                                      ; $7ebc: $34
    add b                                         ; $7ebd: $80
    ld c, h                                       ; $7ebe: $4c
    nop                                           ; $7ebf: $00
    ld c, l                                       ; $7ec0: $4d
    nop                                           ; $7ec1: $00
    ld c, [hl]                                    ; $7ec2: $4e
    nop                                           ; $7ec3: $00
    ld c, a                                       ; $7ec4: $4f
    jr nz, jr_08d_7ec7                            ; $7ec5: $20 $00

jr_08d_7ec7:
    ld d, e                                       ; $7ec7: $53
    ld c, [hl]                                    ; $7ec8: $4e
    ld [hl], b                                    ; $7ec9: $70
    inc [hl]                                      ; $7eca: $34
    nop                                           ; $7ecb: $00
    ld d, b                                       ; $7ecc: $50
    nop                                           ; $7ecd: $00
    ld d, c                                       ; $7ece: $51
    jr nz, jr_08d_7ed1                            ; $7ecf: $20 $00

jr_08d_7ed1:
    ld d, d                                       ; $7ed1: $52
    ld h, [hl]                                    ; $7ed2: $66
    nop                                           ; $7ed3: $00
    sub e                                         ; $7ed4: $93
    nop                                           ; $7ed5: $00
    nop                                           ; $7ed6: $00
    nop                                           ; $7ed7: $00
    nop                                           ; $7ed8: $00
    ld bc, $0200                                  ; $7ed9: $01 $00 $02
    nop                                           ; $7edc: $00
    inc bc                                        ; $7edd: $03
    nop                                           ; $7ede: $00
    inc b                                         ; $7edf: $04
    inc c                                         ; $7ee0: $0c
    nop                                           ; $7ee1: $00
    dec c                                         ; $7ee2: $0d
    nop                                           ; $7ee3: $00
    ld c, $0a                                     ; $7ee4: $0e $0a
    db $10                                        ; $7ee6: $10
    jr jr_08d_7ee9                                ; $7ee7: $18 $00

jr_08d_7ee9:
    dec b                                         ; $7ee9: $05
    nop                                           ; $7eea: $00
    nop                                           ; $7eeb: $00
    inc b                                         ; $7eec: $04
    nop                                           ; $7eed: $00
    dec b                                         ; $7eee: $05
    ld [bc], a                                    ; $7eef: $02
    nop                                           ; $7ef0: $00
    rrca                                          ; $7ef1: $0f
    ld [bc], a                                    ; $7ef2: $02
    db $10                                        ; $7ef3: $10
    db $10                                        ; $7ef4: $10
    dec b                                         ; $7ef5: $05
    nop                                           ; $7ef6: $00
    add hl, de                                    ; $7ef7: $19
    inc d                                         ; $7ef8: $14
    db $10                                        ; $7ef9: $10
    ld b, $00                                     ; $7efa: $06 $00
    rlca                                          ; $7efc: $07
    nop                                           ; $7efd: $00
    nop                                           ; $7efe: $00
    ld [$1000], sp                                ; $7eff: $08 $00 $10
    nop                                           ; $7f02: $00
    ld de, $1200                                  ; $7f03: $11 $00 $12
    nop                                           ; $7f06: $00
    ld h, b                                       ; $7f07: $60
    inc de                                        ; $7f08: $13
    inc c                                         ; $7f09: $0c
    nop                                           ; $7f0a: $00
    jr z, jr_08d_7f15                             ; $7f0b: $28 $08

    add hl, bc                                    ; $7f0d: $09
    nop                                           ; $7f0e: $00
    ld a, [bc]                                    ; $7f0f: $0a
    nop                                           ; $7f10: $00
    dec bc                                        ; $7f11: $0b
    nop                                           ; $7f12: $00
    nop                                           ; $7f13: $00
    inc d                                         ; $7f14: $14

jr_08d_7f15:
    nop                                           ; $7f15: $00
    dec d                                         ; $7f16: $15
    nop                                           ; $7f17: $00
    ld d, $00                                     ; $7f18: $16 $00
    rla                                           ; $7f1a: $17
    jr nz, jr_08d_7f1d                            ; $7f1b: $20 $00

jr_08d_7f1d:
    ld a, [de]                                    ; $7f1d: $1a
    inc a                                         ; $7f1e: $3c
    db $10                                        ; $7f1f: $10
    dec de                                        ; $7f20: $1b
    nop                                           ; $7f21: $00
    inc e                                         ; $7f22: $1c
    nop                                           ; $7f23: $00
    dec e                                         ; $7f24: $1d
    nop                                           ; $7f25: $00
    nop                                           ; $7f26: $00
    daa                                           ; $7f27: $27
    nop                                           ; $7f28: $00
    jr z, jr_08d_7f2b                             ; $7f29: $28 $00

jr_08d_7f2b:
    add hl, hl                                    ; $7f2b: $29
    nop                                           ; $7f2c: $00
    ld a, [hl+]                                   ; $7f2d: $2a
    jr nz, jr_08d_7f30                            ; $7f2e: $20 $00

jr_08d_7f30:
    dec [hl]                                      ; $7f30: $35
    ld d, b                                       ; $7f31: $50
    db $10                                        ; $7f32: $10
    ld e, $00                                     ; $7f33: $1e $00
    rra                                           ; $7f35: $1f
    nop                                           ; $7f36: $00
    jr nz, jr_08d_7f39                            ; $7f37: $20 $00

jr_08d_7f39:
    nop                                           ; $7f39: $00
    dec hl                                        ; $7f3a: $2b
    nop                                           ; $7f3b: $00
    inc l                                         ; $7f3c: $2c
    nop                                           ; $7f3d: $00
    dec l                                         ; $7f3e: $2d
    nop                                           ; $7f3f: $00
    ld l, $20                                     ; $7f40: $2e $20
    nop                                           ; $7f42: $00
    ld [hl], $64                                  ; $7f43: $36 $64
    db $10                                        ; $7f45: $10
    ld hl, $2200                                  ; $7f46: $21 $00 $22
    nop                                           ; $7f49: $00
    inc hl                                        ; $7f4a: $23
    nop                                           ; $7f4b: $00
    nop                                           ; $7f4c: $00
    cpl                                           ; $7f4d: $2f
    nop                                           ; $7f4e: $00
    jr nc, jr_08d_7f51                            ; $7f4f: $30 $00

jr_08d_7f51:
    ld sp, $3200                                  ; $7f51: $31 $00 $32
    jr nz, jr_08d_7f56                            ; $7f54: $20 $00

jr_08d_7f56:
    scf                                           ; $7f56: $37
    ld a, b                                       ; $7f57: $78
    db $10                                        ; $7f58: $10
    inc h                                         ; $7f59: $24
    nop                                           ; $7f5a: $00
    dec h                                         ; $7f5b: $25
    nop                                           ; $7f5c: $00
    ld h, $0a                                     ; $7f5d: $26 $0a
    nop                                           ; $7f5f: $00
    inc sp                                        ; $7f60: $33
    nop                                           ; $7f61: $00
    inc [hl]                                      ; $7f62: $34
    ld [bc], a                                    ; $7f63: $02
    jr nz, jr_08d_7f9e                            ; $7f64: $20 $38

    adc h                                         ; $7f66: $8c
    nop                                           ; $7f67: $00
    add hl, sp                                    ; $7f68: $39
    inc bc                                        ; $7f69: $03
    nop                                           ; $7f6a: $00
    ld a, [hl-]                                   ; $7f6b: $3a
    nop                                           ; $7f6c: $00
    dec sp                                        ; $7f6d: $3b
    nop                                           ; $7f6e: $00
    ld b, e                                       ; $7f6f: $43
    sub [hl]                                      ; $7f70: $96
    nop                                           ; $7f71: $00
    inc bc                                        ; $7f72: $03
    jr z, jr_08d_7f76                             ; $7f73: $28 $01

    inc a                                         ; $7f75: $3c

jr_08d_7f76:
    nop                                           ; $7f76: $00
    dec a                                         ; $7f77: $3d
    nop                                           ; $7f78: $00
    ld a, $00                                     ; $7f79: $3e $00
    ccf                                           ; $7f7b: $3f
    inc d                                         ; $7f7c: $14
    ld d, b                                       ; $7f7d: $50
    nop                                           ; $7f7e: $00
    nop                                           ; $7f7f: $00
    nop                                           ; $7f80: $00
    ld b, b                                       ; $7f81: $40
    nop                                           ; $7f82: $00
    ld b, c                                       ; $7f83: $41
    nop                                           ; $7f84: $00
    ld b, d                                       ; $7f85: $42
    nop                                           ; $7f86: $00
    ld h, b                                       ; $7f87: $60
    ld b, h                                       ; $7f88: $44
    inc d                                         ; $7f89: $14
    ld d, b                                       ; $7f8a: $50
    dec c                                         ; $7f8b: $0d
    ld a, b                                       ; $7f8c: $78
    ld d, h                                       ; $7f8d: $54
    nop                                           ; $7f8e: $00
    nop                                           ; $7f8f: $00
    nop                                           ; $7f90: $00
    nop                                           ; $7f91: $00
    ld bc, $0200                                  ; $7f92: $01 $00 $02
    nop                                           ; $7f95: $00
    inc bc                                        ; $7f96: $03
    nop                                           ; $7f97: $00
    nop                                           ; $7f98: $00
    rrca                                          ; $7f99: $0f
    nop                                           ; $7f9a: $00
    stop                                          ; $7f9b: $10 $00
    inc b                                         ; $7f9d: $04

jr_08d_7f9e:
    nop                                           ; $7f9e: $00
    dec b                                         ; $7f9f: $05
    nop                                           ; $7fa0: $00
    inc b                                         ; $7fa1: $04
    ld b, $00                                     ; $7fa2: $06 $00
    rlca                                          ; $7fa4: $07
    nop                                           ; $7fa5: $00
    ld de, $000c                                  ; $7fa6: $11 $0c $00
    ld [$0100], sp                                ; $7fa9: $08 $00 $01
    add hl, bc                                    ; $7fac: $09
    nop                                           ; $7fad: $00
    ld a, [bc]                                    ; $7fae: $0a
    nop                                           ; $7faf: $00
    dec bc                                        ; $7fb0: $0b
    nop                                           ; $7fb1: $00
    ld [de], a                                    ; $7fb2: $12
    inc c                                         ; $7fb3: $0c
    db $10                                        ; $7fb4: $10
    ld bc, $000c                                  ; $7fb5: $01 $0c $00
    dec c                                         ; $7fb8: $0d
    nop                                           ; $7fb9: $00
    ld c, $00                                     ; $7fba: $0e $00
    inc de                                        ; $7fbc: $13
    jr jr_08d_7fcf                                ; $7fbd: $18 $10

    ld bc, $0014                                  ; $7fbf: $01 $14 $00
    dec d                                         ; $7fc2: $15
    nop                                           ; $7fc3: $00
    ld d, $00                                     ; $7fc4: $16 $00
    jr nz, @+$26                                  ; $7fc6: $20 $24

    stop                                          ; $7fc8: $10 $00
    rla                                           ; $7fca: $17
    nop                                           ; $7fcb: $00
    jr jr_08d_7fce                                ; $7fcc: $18 $00

jr_08d_7fce:
    add hl, de                                    ; $7fce: $19

jr_08d_7fcf:
    nop                                           ; $7fcf: $00
    ld hl, $4000                                  ; $7fd0: $21 $00 $40
    ld [hl+], a                                   ; $7fd3: $22

jr_08d_7fd4:
    jr nc, jr_08d_7fd6                            ; $7fd4: $30 $00

jr_08d_7fd6:
    ld a, [de]                                    ; $7fd6: $1a
    nop                                           ; $7fd7: $00
    dec de                                        ; $7fd8: $1b
    nop                                           ; $7fd9: $00
    inc e                                         ; $7fda: $1c
    nop                                           ; $7fdb: $00
    db $10                                        ; $7fdc: $10
    inc hl                                        ; $7fdd: $23
    nop                                           ; $7fde: $00
    inc h                                         ; $7fdf: $24
    inc a                                         ; $7fe0: $3c
    nop                                           ; $7fe1: $00
    dec e                                         ; $7fe2: $1d
    nop                                           ; $7fe3: $00
    ld e, $00                                     ; $7fe4: $1e $00
    nop                                           ; $7fe6: $00
    rra                                           ; $7fe7: $1f
    nop                                           ; $7fe8: $00
    dec h                                         ; $7fe9: $25
    nop                                           ; $7fea: $00
    ld h, $00                                     ; $7feb: $26 $00
    daa                                           ; $7fed: $27
    nop                                           ; $7fee: $00
    ld d, b                                       ; $7fef: $50
    jr z, jr_08d_7ff4                             ; $7ff0: $28 $02

    db $10                                        ; $7ff2: $10
    add hl, hl                                    ; $7ff3: $29

jr_08d_7ff4:
    ld h, b                                       ; $7ff4: $60
    nop                                           ; $7ff5: $00
    add e                                         ; $7ff6: $83
    jr z, jr_08d_7fd4                             ; $7ff7: $28 $db

    add hl, bc                                    ; $7ff9: $09
    or b                                          ; $7ffa: $b0
    inc d                                         ; $7ffb: $14
    nop                                           ; $7ffc: $00
    nop                                           ; $7ffd: $00
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
