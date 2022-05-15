; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $089", ROMX[$4000], BANK[$89]

    adc c                                         ; $4000: $89
    inc c                                         ; $4001: $0c
    nop                                           ; $4002: $00
    ld d, $00                                     ; $4003: $16 $00
    ld b, b                                       ; $4005: $40
    inc e                                         ; $4006: $1c
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
    ld bc, $0104                                  ; $415a: $01 $04 $01
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
    jr jr_089_4199                                ; $4196: $18 $01

    rlca                                          ; $4198: $07

jr_089_4199:
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
    jr nz, jr_089_4332                            ; $42ee: $20 $42

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
    jr nz, jr_089_4376                            ; $432e: $20 $46

    ld [hl+], a                                   ; $4330: $22
    inc hl                                        ; $4331: $23

jr_089_4332:
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

jr_089_4376:
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
    jr jr_089_44b9                                ; $44b6: $18 $01

    rlca                                          ; $44b8: $07

jr_089_44b9:
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
    jr nz, jr_089_44f1                            ; $44ce: $20 $21

    ld [hl+], a                                   ; $44d0: $22
    inc hl                                        ; $44d1: $23
    inc h                                         ; $44d2: $24
    dec h                                         ; $44d3: $25
    ld h, $27                                     ; $44d4: $26 $27
    jr z, jr_089_44df                             ; $44d6: $28 $07

    ld b, $06                                     ; $44d8: $06 $06
    inc b                                         ; $44da: $04
    ld bc, $0701                                  ; $44db: $01 $01 $07
    inc b                                         ; $44de: $04

jr_089_44df:
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

jr_089_44f1:
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
    call nc, Call_089_6564                        ; $452e: $d4 $64 $65
    call nc, Call_089_6766                        ; $4531: $d4 $66 $67
    ld l, b                                       ; $4534: $68
    ld l, c                                       ; $4535: $69
    ld l, d                                       ; $4536: $6a
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
    jr jr_089_455c                                ; $4556: $18 $04

    ld b, $01                                     ; $4558: $06 $01
    rlca                                          ; $455a: $07
    inc b                                         ; $455b: $04

jr_089_455c:
    ld b, $01                                     ; $455c: $06 $01
    ld b, $04                                     ; $455e: $06 $04
    ld bc, $0101                                  ; $4560: $01 $01 $01
    inc b                                         ; $4563: $04
    rlca                                          ; $4564: $07
    rlca                                          ; $4565: $07
    ld b, $19                                     ; $4566: $06 $19
    ld e, b                                       ; $4568: $58
    ld l, e                                       ; $4569: $6b
    ld l, h                                       ; $456a: $6c
    dec e                                         ; $456b: $1d
    ld d, l                                       ; $456c: $55
    ld d, a                                       ; $456d: $57
    ld d, a                                       ; $456e: $57
    ld hl, $6e6d                                  ; $456f: $21 $6d $6e
    ld l, [hl]                                    ; $4572: $6e
    dec h                                         ; $4573: $25
    ld h, $27                                     ; $4574: $26 $27
    jr z, jr_089_4579                             ; $4576: $28 $01

    ld [bc], a                                    ; $4578: $02

jr_089_4579:
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
    ld l, a                                       ; $4587: $6f
    ld [hl], b                                    ; $4588: $70
    ld [hl], c                                    ; $4589: $71
    ld [hl], d                                    ; $458a: $72
    ld [hl], e                                    ; $458b: $73
    ld [hl], h                                    ; $458c: $74
    ld [hl], e                                    ; $458d: $73
    ld [hl], h                                    ; $458e: $74
    ld [hl], l                                    ; $458f: $75
    ld l, [hl]                                    ; $4590: $6e
    ld [hl], l                                    ; $4591: $75
    ld l, [hl]                                    ; $4592: $6e
    dec d                                         ; $4593: $15
    ld d, $17                                     ; $4594: $16 $17
    jr jr_089_4598                                ; $4596: $18 $00

jr_089_4598:
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
    halt                                          ; $45c8: $76
    ld [hl], a                                    ; $45c9: $77
    ld a, b                                       ; $45ca: $78
    ld d, h                                       ; $45cb: $54
    ld a, c                                       ; $45cc: $79
    ld a, d                                       ; $45cd: $7a
    ld a, e                                       ; $45ce: $7b
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
    ld a, h                                       ; $4612: $7c
    dec d                                         ; $4613: $15
    ld d, $17                                     ; $4614: $16 $17
    ld a, l                                       ; $4616: $7d
    inc b                                         ; $4617: $04
    ld b, $07                                     ; $4618: $06 $07
    ld bc, $0104                                  ; $461a: $01 $04 $01
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
    ld a, [hl]                                    ; $462e: $7e
    ld h, c                                       ; $462f: $61
    ld h, d                                       ; $4630: $62
    ld h, e                                       ; $4631: $63
    ld a, a                                       ; $4632: $7f
    ld h, h                                       ; $4633: $64
    ld h, l                                       ; $4634: $65
    call nc, $0180                                ; $4635: $d4 $80 $01
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
    ld [$0a09], sp                                ; $4646: $08 $09 $0a
    dec bc                                        ; $4649: $0b
    inc c                                         ; $464a: $0c
    ld a, [hl]                                    ; $464b: $7e
    ld e, a                                       ; $464c: $5f
    ld e, [hl]                                    ; $464d: $5e
    ld e, l                                       ; $464e: $5d
    add c                                         ; $464f: $81
    ld h, e                                       ; $4650: $63
    ld h, d                                       ; $4651: $62
    ld h, c                                       ; $4652: $61
    add d                                         ; $4653: $82
    call nc, Call_089_6465                        ; $4654: $d4 $65 $64
    rlca                                          ; $4657: $07
    rlca                                          ; $4658: $07
    rlca                                          ; $4659: $07
    ld bc, $2000                                  ; $465a: $01 $00 $20
    jr nz, jr_089_467f                            ; $465d: $20 $20

    ld [$2020], sp                                ; $465f: $08 $20 $20
    jr nz, jr_089_466c                            ; $4662: $20 $08

    nop                                           ; $4664: $00
    jr nz, @+$22                                  ; $4665: $20 $20

    add e                                         ; $4667: $83
    add h                                         ; $4668: $84
    add l                                         ; $4669: $85
    ld a, [hl]                                    ; $466a: $7e
    add [hl]                                      ; $466b: $86

jr_089_466c:
    add a                                         ; $466c: $87
    adc b                                         ; $466d: $88
    call nc, $8a89                                ; $466e: $d4 $89 $8a
    adc e                                         ; $4671: $8b
    call nc, $8d8c                                ; $4672: $d4 $8c $8d
    ld l, c                                       ; $4675: $69
    adc [hl]                                      ; $4676: $8e
    ld [$0808], sp                                ; $4677: $08 $08 $08
    nop                                           ; $467a: $00
    ld [$0808], sp                                ; $467b: $08 $08 $08
    nop                                           ; $467e: $00

jr_089_467f:
    ld [$0808], sp                                ; $467f: $08 $08 $08
    nop                                           ; $4682: $00
    ld [$0008], sp                                ; $4683: $08 $08 $00
    ld [$8f7e], sp                                ; $4686: $08 $7e $8f
    sub b                                         ; $4689: $90
    sub c                                         ; $468a: $91
    sub d                                         ; $468b: $92
    sub e                                         ; $468c: $93
    sub h                                         ; $468d: $94
    sub l                                         ; $468e: $95
    sub [hl]                                      ; $468f: $96
    sub a                                         ; $4690: $97
    sbc b                                         ; $4691: $98
    call nc, $9a99                                ; $4692: $d4 $99 $9a
    sbc e                                         ; $4695: $9b
    adc [hl]                                      ; $4696: $8e
    nop                                           ; $4697: $00
    ld [$0808], sp                                ; $4698: $08 $08 $08
    jr z, @+$0a                                   ; $469b: $28 $08

    ld [$0808], sp                                ; $469d: $08 $08 $08
    ld [$0008], sp                                ; $46a0: $08 $08 $00
    ld [$0808], sp                                ; $46a3: $08 $08 $08
    ld [$609c], sp                                ; $46a6: $08 $9c $60
    sbc l                                         ; $46a9: $9d
    ld a, [hl]                                    ; $46aa: $7e
    sbc [hl]                                      ; $46ab: $9e
    sbc a                                         ; $46ac: $9f
    and b                                         ; $46ad: $a0
    and c                                         ; $46ae: $a1
    and d                                         ; $46af: $a2
    and e                                         ; $46b0: $a3
    and h                                         ; $46b1: $a4
    and l                                         ; $46b2: $a5
    ld l, c                                       ; $46b3: $69
    and [hl]                                      ; $46b4: $a6
    and a                                         ; $46b5: $a7
    xor b                                         ; $46b6: $a8
    ld [$0800], sp                                ; $46b7: $08 $00 $08
    nop                                           ; $46ba: $00
    ld [$0808], sp                                ; $46bb: $08 $08 $08
    ld [$0808], sp                                ; $46be: $08 $08 $08
    ld [$2008], sp                                ; $46c1: $08 $08 $20
    ld [$0808], sp                                ; $46c4: $08 $08 $08
    ld a, [hl]                                    ; $46c7: $7e
    xor c                                         ; $46c8: $a9
    xor d                                         ; $46c9: $aa
    xor e                                         ; $46ca: $ab
    call nc, $adac                                ; $46cb: $d4 $ac $ad
    xor [hl]                                      ; $46ce: $ae
    call nc, $d4d4                                ; $46cf: $d4 $d4 $d4
    xor a                                         ; $46d2: $af
    ld l, c                                       ; $46d3: $69
    ld l, b                                       ; $46d4: $68
    ld l, c                                       ; $46d5: $69
    or b                                          ; $46d6: $b0
    nop                                           ; $46d7: $00
    ld [$0808], sp                                ; $46d8: $08 $08 $08
    nop                                           ; $46db: $00
    ld [$0808], sp                                ; $46dc: $08 $08 $08
    nop                                           ; $46df: $00
    nop                                           ; $46e0: $00
    nop                                           ; $46e1: $00
    ld [$0020], sp                                ; $46e2: $08 $20 $00
    nop                                           ; $46e5: $00
    ld [$b2b1], sp                                ; $46e6: $08 $b1 $b2
    ld [hl], b                                    ; $46e9: $70
    ld [hl], c                                    ; $46ea: $71
    ld [hl], e                                    ; $46eb: $73
    ld [hl], h                                    ; $46ec: $74
    ld [hl], e                                    ; $46ed: $73
    ld [hl], h                                    ; $46ee: $74
    ld [hl], l                                    ; $46ef: $75
    ld l, [hl]                                    ; $46f0: $6e
    ld [hl], l                                    ; $46f1: $75
    ld l, [hl]                                    ; $46f2: $6e
    dec h                                         ; $46f3: $25
    ld h, $27                                     ; $46f4: $26 $27
    jr z, jr_089_4700                             ; $46f6: $28 $08

    ld [$0000], sp                                ; $46f8: $08 $00 $00
    ld [bc], a                                    ; $46fb: $02
    ld [bc], a                                    ; $46fc: $02
    ld [bc], a                                    ; $46fd: $02
    ld [bc], a                                    ; $46fe: $02
    ld [bc], a                                    ; $46ff: $02

jr_089_4700:
    ld [bc], a                                    ; $4700: $02
    ld [bc], a                                    ; $4701: $02
    ld [bc], a                                    ; $4702: $02
    inc b                                         ; $4703: $04
    inc b                                         ; $4704: $04
    inc b                                         ; $4705: $04
    inc b                                         ; $4706: $04
    ld [hl], d                                    ; $4707: $72
    or c                                          ; $4708: $b1
    or d                                          ; $4709: $b2
    ld [hl], b                                    ; $470a: $70
    ld [hl], e                                    ; $470b: $73
    ld [hl], h                                    ; $470c: $74
    ld [hl], e                                    ; $470d: $73
    ld [hl], h                                    ; $470e: $74
    ld [hl], l                                    ; $470f: $75
    ld l, [hl]                                    ; $4710: $6e
    ld [hl], l                                    ; $4711: $75
    ld l, [hl]                                    ; $4712: $6e
    dec d                                         ; $4713: $15
    ld d, $17                                     ; $4714: $16 $17
    or e                                          ; $4716: $b3
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
    ld [hl], c                                    ; $4727: $71
    ld [hl], d                                    ; $4728: $72
    or c                                          ; $4729: $b1
    or d                                          ; $472a: $b2
    ld [hl], e                                    ; $472b: $73
    ld [hl], h                                    ; $472c: $74
    ld [hl], e                                    ; $472d: $73
    ld [hl], h                                    ; $472e: $74
    ld [hl], l                                    ; $472f: $75
    ld l, [hl]                                    ; $4730: $6e
    ld [hl], l                                    ; $4731: $75
    ld l, [hl]                                    ; $4732: $6e
    or h                                          ; $4733: $b4
    ld h, $27                                     ; $4734: $26 $27
    jr z, jr_089_4738                             ; $4736: $28 $00

jr_089_4738:
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
    ld [hl], b                                    ; $4747: $70
    ld [hl], c                                    ; $4748: $71
    ld [hl], d                                    ; $4749: $72
    ld [hl], b                                    ; $474a: $70
    ld [hl], e                                    ; $474b: $73
    ld [hl], h                                    ; $474c: $74
    ld [hl], e                                    ; $474d: $73
    ld [hl], h                                    ; $474e: $74
    ld [hl], l                                    ; $474f: $75
    ld l, [hl]                                    ; $4750: $6e
    ld [hl], l                                    ; $4751: $75
    ld l, [hl]                                    ; $4752: $6e
    dec d                                         ; $4753: $15
    ld d, $17                                     ; $4754: $16 $17
    jr jr_089_4758                                ; $4756: $18 $00

jr_089_4758:
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
    halt                                          ; $4768: $76
    ld [hl], a                                    ; $4769: $77
    ld a, b                                       ; $476a: $78
    ld d, h                                       ; $476b: $54
    ld a, c                                       ; $476c: $79
    ld a, d                                       ; $476d: $7a
    ld a, e                                       ; $476e: $7b
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
    or l                                          ; $4789: $b5
    or [hl]                                       ; $478a: $b6
    ld c, l                                       ; $478b: $4d
    or a                                          ; $478c: $b7
    cp b                                          ; $478d: $b8
    cp c                                          ; $478e: $b9
    ld hl, sp-$07                                 ; $478f: $f8 $f9
    cp d                                          ; $4791: $ba
    cp e                                          ; $4792: $bb
    db $fc                                        ; $4793: $fc
    db $fd                                        ; $4794: $fd
    cp h                                          ; $4795: $bc
    cp l                                          ; $4796: $bd
    ld bc, $0901                                  ; $4797: $01 $01 $09
    ld c, $06                                     ; $479a: $0e $06
    ld c, $0e                                     ; $479c: $0e $0e
    ld c, $07                                     ; $479e: $0e $07
    ld b, $0e                                     ; $47a0: $06 $0e
    ld c, $01                                     ; $47a2: $0e $01
    ld bc, $0e09                                  ; $47a4: $01 $09 $0e
    cp [hl]                                       ; $47a7: $be
    cp a                                          ; $47a8: $bf
    ld [hl], a                                    ; $47a9: $77
    ld a, b                                       ; $47aa: $78
    ret nz                                        ; $47ab: $c0

    pop bc                                        ; $47ac: $c1
    jp nz, $c37b                                  ; $47ad: $c2 $7b $c3

    call nz, Call_000_04c5                        ; $47b0: $c4 $c5 $04
    add $c7                                       ; $47b3: $c6 $c7
    ret z                                         ; $47b5: $c8

    ld [$0e0e], sp                                ; $47b6: $08 $0e $0e
    ld b, $01                                     ; $47b9: $06 $01
    ld c, $0e                                     ; $47bb: $0e $0e
    ld c, $06                                     ; $47bd: $0e $06
    ld c, $0e                                     ; $47bf: $0e $0e
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
    jr nz, jr_089_486c                            ; $47ee: $20 $7c

    ld [hl+], a                                   ; $47f0: $22
    inc hl                                        ; $47f1: $23
    inc h                                         ; $47f2: $24
    ld a, l                                       ; $47f3: $7d
    ld h, $27                                     ; $47f4: $26 $27
    jr z, jr_089_47fe                             ; $47f6: $28 $06

    ld bc, $0607                                  ; $47f8: $01 $07 $06
    ld bc, $0701                                  ; $47fb: $01 $01 $07

jr_089_47fe:
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
    ld a, h                                       ; $4852: $7c
    dec d                                         ; $4853: $15
    ld d, $17                                     ; $4854: $16 $17
    ld a, l                                       ; $4856: $7d
    rlca                                          ; $4857: $07
    ld bc, $0707                                  ; $4858: $01 $07 $07
    ld b, $01                                     ; $485b: $06 $01
    ld bc, $0601                                  ; $485d: $01 $01 $06
    rlca                                          ; $4860: $07
    rlca                                          ; $4861: $07
    ld [bc], a                                    ; $4862: $02
    ld bc, $0601                                  ; $4863: $01 $01 $06
    ld [bc], a                                    ; $4866: $02
    ld a, [hl]                                    ; $4867: $7e
    ld e, a                                       ; $4868: $5f
    ld e, [hl]                                    ; $4869: $5e
    ld e, l                                       ; $486a: $5d
    ret                                           ; $486b: $c9


jr_089_486c:
    jp z, Jump_089_6162                           ; $486c: $ca $62 $61

    set 1, h                                      ; $486f: $cb $cc
    ld h, l                                       ; $4871: $65
    ld h, h                                       ; $4872: $64
    call Call_089_69ce                            ; $4873: $cd $ce $69
    rst $08                                       ; $4876: $cf
    nop                                           ; $4877: $00
    jr nz, jr_089_489a                            ; $4878: $20 $20

    jr nz, jr_089_4884                            ; $487a: $20 $08

    ld [$2020], sp                                ; $487c: $08 $20 $20
    ld [$2008], sp                                ; $487f: $08 $08 $20
    jr nz, jr_089_488c                            ; $4882: $20 $08

jr_089_4884:
    ld [$0820], sp                                ; $4884: $08 $20 $08
    ld d, e                                       ; $4887: $53
    ld d, e                                       ; $4888: $53
    ld d, d                                       ; $4889: $52
    ld c, h                                       ; $488a: $4c
    ld d, a                                       ; $488b: $57

jr_089_488c:
    ld d, [hl]                                    ; $488c: $56
    ld d, l                                       ; $488d: $55
    ld d, b                                       ; $488e: $50
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

jr_089_489a:
    ld bc, $2322                                  ; $489a: $01 $22 $23
    ld [hl+], a                                   ; $489d: $22
    inc b                                         ; $489e: $04
    inc hl                                        ; $489f: $23
    inc hl                                        ; $48a0: $23
    ld [hl+], a                                   ; $48a1: $22
    inc b                                         ; $48a2: $04
    inc hl                                        ; $48a3: $23
    inc hl                                        ; $48a4: $23
    ld [hl+], a                                   ; $48a5: $22
    inc b                                         ; $48a6: $04
    ld d, c                                       ; $48a7: $51
    halt                                          ; $48a8: $76
    ld [hl], a                                    ; $48a9: $77
    ld a, b                                       ; $48aa: $78
    ld d, h                                       ; $48ab: $54
    ld a, c                                       ; $48ac: $79
    ld a, d                                       ; $48ad: $7a
    ld a, e                                       ; $48ae: $7b
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
    ld [hl], c                                    ; $48c7: $71
    ld [hl], d                                    ; $48c8: $72
    or c                                          ; $48c9: $b1
    or d                                          ; $48ca: $b2
    ld [hl], e                                    ; $48cb: $73
    ld [hl], h                                    ; $48cc: $74
    ld [hl], e                                    ; $48cd: $73
    ld [hl], h                                    ; $48ce: $74
    ld [hl], l                                    ; $48cf: $75
    ld l, [hl]                                    ; $48d0: $6e
    ld [hl], l                                    ; $48d1: $75
    ld l, [hl]                                    ; $48d2: $6e
    dec h                                         ; $48d3: $25
    ld h, $27                                     ; $48d4: $26 $27
    jr z, jr_089_48d8                             ; $48d6: $28 $00

jr_089_48d8:
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
    ld l, h                                       ; $48e7: $6c
    ld l, e                                       ; $48e8: $6b
    ld e, b                                       ; $48e9: $58
    inc c                                         ; $48ea: $0c
    ld d, a                                       ; $48eb: $57
    ld d, a                                       ; $48ec: $57
    ld d, l                                       ; $48ed: $55
    db $10                                        ; $48ee: $10
    ld [hl], l                                    ; $48ef: $75
    ld [hl], l                                    ; $48f0: $75
    ld l, l                                       ; $48f1: $6d
    inc d                                         ; $48f2: $14
    dec d                                         ; $48f3: $15
    ld d, $17                                     ; $48f4: $16 $17
    jr jr_089_491b                                ; $48f6: $18 $23

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

jr_089_491b:
    ld b, $07                                     ; $491b: $06 $07
    ld bc, $0104                                  ; $491d: $01 $04 $01
    ld bc, $0407                                  ; $4920: $01 $07 $04
    ld b, $07                                     ; $4923: $06 $07
    rlca                                          ; $4925: $07
    inc b                                         ; $4926: $04
    ld d, c                                       ; $4927: $51
    halt                                          ; $4928: $76
    ld [hl], a                                    ; $4929: $77
    ld a, b                                       ; $492a: $78
    ld d, h                                       ; $492b: $54
    ld a, c                                       ; $492c: $79
    ld a, d                                       ; $492d: $7a
    ld a, e                                       ; $492e: $7b
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
    halt                                          ; $4968: $76
    ld [hl], a                                    ; $4969: $77
    ld a, b                                       ; $496a: $78
    ld d, h                                       ; $496b: $54
    ld a, c                                       ; $496c: $79
    ld a, d                                       ; $496d: $7a
    ld a, e                                       ; $496e: $7b
    ld bc, $0302                                  ; $496f: $01 $02 $03
    inc b                                         ; $4972: $04
    dec b                                         ; $4973: $05
    ld b, $07                                     ; $4974: $06 $07
    ld [$0107], sp                                ; $4976: $08 $07 $01
    ld bc, $0104                                  ; $4979: $01 $04 $01
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
    ld a, [hl]                                    ; $498e: $7e
    ld h, c                                       ; $498f: $61
    ld h, d                                       ; $4990: $62
    ld h, e                                       ; $4991: $63
    ld a, a                                       ; $4992: $7f
    ld h, h                                       ; $4993: $64
    ld h, l                                       ; $4994: $65
    call nc, Call_000_0780                        ; $4995: $d4 $80 $07
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
    ld [$0a09], sp                                ; $49a6: $08 $09 $0a
    dec bc                                        ; $49a9: $0b
    inc c                                         ; $49aa: $0c
    ld a, [hl]                                    ; $49ab: $7e
    ld e, a                                       ; $49ac: $5f
    ld e, [hl]                                    ; $49ad: $5e
    ld e, l                                       ; $49ae: $5d
    add c                                         ; $49af: $81
    ld h, e                                       ; $49b0: $63
    ld h, d                                       ; $49b1: $62
    ld h, c                                       ; $49b2: $61
    add d                                         ; $49b3: $82
    call nc, Call_089_6465                        ; $49b4: $d4 $65 $64
    rlca                                          ; $49b7: $07
    rlca                                          ; $49b8: $07
    rlca                                          ; $49b9: $07
    rlca                                          ; $49ba: $07
    nop                                           ; $49bb: $00
    jr nz, jr_089_49de                            ; $49bc: $20 $20

    jr nz, jr_089_49c8                            ; $49be: $20 $08

    jr nz, @+$22                                  ; $49c0: $20 $20

    jr nz, jr_089_49cc                            ; $49c2: $20 $08

    nop                                           ; $49c4: $00
    jr nz, @+$22                                  ; $49c5: $20 $20

    add hl, de                                    ; $49c7: $19

jr_089_49c8:
    ld a, [de]                                    ; $49c8: $1a
    dec de                                        ; $49c9: $1b
    inc e                                         ; $49ca: $1c
    dec e                                         ; $49cb: $1d

jr_089_49cc:
    ld e, $1f                                     ; $49cc: $1e $1f
    jr nz, jr_089_4a4c                            ; $49ce: $20 $7c

    ld [hl+], a                                   ; $49d0: $22
    inc hl                                        ; $49d1: $23
    inc h                                         ; $49d2: $24
    ld a, l                                       ; $49d3: $7d
    ld h, $27                                     ; $49d4: $26 $27
    jr z, @+$03                                   ; $49d6: $28 $01

    ld bc, $0406                                  ; $49d8: $01 $06 $04
    ld bc, $0606                                  ; $49db: $01 $06 $06

jr_089_49de:
    inc b                                         ; $49de: $04
    ld [hl+], a                                   ; $49df: $22
    inc b                                         ; $49e0: $04
    ld b, $04                                     ; $49e1: $06 $04
    ld [hl+], a                                   ; $49e3: $22
    inc b                                         ; $49e4: $04
    ld bc, $4904                                  ; $49e5: $01 $04 $49
    ld c, d                                       ; $49e8: $4a
    ld c, e                                       ; $49e9: $4b
    ret nc                                        ; $49ea: $d0

    ld c, l                                       ; $49eb: $4d
    ld c, [hl]                                    ; $49ec: $4e
    ld c, a                                       ; $49ed: $4f
    ld a, h                                       ; $49ee: $7c
    ld hl, sp-$07                                 ; $49ef: $f8 $f9
    ld a, [$fc7d]                                 ; $49f1: $fa $7d $fc
    db $fd                                        ; $49f4: $fd
    cp $d1                                        ; $49f5: $fe $d1
    inc b                                         ; $49f7: $04
    ld bc, $0a01                                  ; $49f8: $01 $01 $0a
    inc b                                         ; $49fb: $04
    rlca                                          ; $49fc: $07
    ld b, $02                                     ; $49fd: $06 $02
    inc b                                         ; $49ff: $04
    rlca                                          ; $4a00: $07
    ld bc, $0402                                  ; $4a01: $01 $02 $04
    rlca                                          ; $4a04: $07
    ld bc, $d22a                                  ; $4a05: $01 $2a $d2
    db $d3                                        ; $4a08: $d3
    call nc, Call_089_61d5                        ; $4a09: $d4 $d5 $61
    sub $d7                                       ; $4a0c: $d6 $d7
    ret c                                         ; $4a0e: $d8

    reti                                          ; $4a0f: $d9


    jp c, $dbd4                                   ; $4a10: $da $d4 $db

    jp nc, $92a2                                  ; $4a13: $d2 $a2 $92

    call c, Call_000_0808                         ; $4a16: $dc $08 $08
    ld [$0008], sp                                ; $4a19: $08 $08 $00
    ld [$0808], sp                                ; $4a1c: $08 $08 $08
    ld [$0008], sp                                ; $4a1f: $08 $08 $00
    ld [$4808], sp                                ; $4a22: $08 $08 $48
    ld [$dd08], sp                                ; $4a25: $08 $08 $dd
    call nc, $d2d3                                ; $4a28: $d4 $d3 $d2
    sbc $d7                                       ; $4a2b: $de $d7
    sub $df                                       ; $4a2d: $d6 $df
    ldh [$d4], a                                  ; $4a2f: $e0 $d4
    jp c, $e2e1                                   ; $4a31: $da $e1 $e2

    sub d                                         ; $4a34: $92
    db $e3                                        ; $4a35: $e3
    db $e4                                        ; $4a36: $e4
    ld [$2828], sp                                ; $4a37: $08 $28 $28
    jr z, @+$0a                                   ; $4a3a: $28 $08

    jr z, @+$2a                                   ; $4a3c: $28 $28

    ld [$0008], sp                                ; $4a3e: $08 $08 $00
    jr z, jr_089_4a4b                             ; $4a41: $28 $08

    ld [$0828], sp                                ; $4a43: $08 $28 $08
    ld [$0a09], sp                                ; $4a46: $08 $09 $0a
    dec bc                                        ; $4a49: $0b
    push hl                                       ; $4a4a: $e5

jr_089_4a4b:
    dec c                                         ; $4a4b: $0d

jr_089_4a4c:
    ld c, $0f                                     ; $4a4c: $0e $0f
    and $11                                       ; $4a4e: $e6 $11
    ld [de], a                                    ; $4a50: $12
    inc de                                        ; $4a51: $13
    ret nc                                        ; $4a52: $d0

    dec d                                         ; $4a53: $15
    ld d, $17                                     ; $4a54: $16 $17
    push hl                                       ; $4a56: $e5
    inc b                                         ; $4a57: $04
    ld b, $07                                     ; $4a58: $06 $07
    ld a, [hl+]                                   ; $4a5a: $2a
    inc b                                         ; $4a5b: $04
    ld bc, $2a01                                  ; $4a5c: $01 $01 $2a
    inc b                                         ; $4a5f: $04
    rlca                                          ; $4a60: $07
    ld b, $0a                                     ; $4a61: $06 $0a
    inc b                                         ; $4a63: $04
    rlca                                          ; $4a64: $07
    ld bc, $df2a                                  ; $4a65: $01 $2a $df
    ld h, d                                       ; $4a68: $62
    ld h, e                                       ; $4a69: $63
    call nc, Call_089_65e7                        ; $4a6a: $d4 $e7 $65
    db $d3                                        ; $4a6d: $d3
    add sp, -$17                                  ; $4a6e: $e8 $e9
    call nc, $ebea                                ; $4a70: $d4 $ea $eb
    db $ec                                        ; $4a73: $ec
    db $ed                                        ; $4a74: $ed
    call nc, $28ee                                ; $4a75: $d4 $ee $28
    nop                                           ; $4a78: $00
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    ld [$0800], sp                                ; $4a7b: $08 $00 $08
    ld [$0008], sp                                ; $4a7e: $08 $08 $00
    ld [$0808], sp                                ; $4a81: $08 $08 $08
    ld [$0800], sp                                ; $4a84: $08 $00 $08
    call nc, Call_089_6263                        ; $4a87: $d4 $63 $62
    ld h, c                                       ; $4a8a: $61
    rst $28                                       ; $4a8b: $ef
    ldh a, [$65]                                  ; $4a8c: $f0 $65
    ld h, h                                       ; $4a8e: $64
    pop af                                        ; $4a8f: $f1
    ld [$d2d4], a                                 ; $4a90: $ea $d4 $d2
    xor $d4                                       ; $4a93: $ee $d4
    db $ed                                        ; $4a95: $ed
    ld a, [c]                                     ; $4a96: $f2
    nop                                           ; $4a97: $00
    jr nz, @+$22                                  ; $4a98: $20 $20

    jr nz, jr_089_4aa4                            ; $4a9a: $20 $08

    ld [$2020], sp                                ; $4a9c: $08 $20 $20
    ld [$0028], sp                                ; $4a9f: $08 $28 $00
    jr z, jr_089_4acc                             ; $4aa2: $28 $28

jr_089_4aa4:
    nop                                           ; $4aa4: $00
    jr z, jr_089_4aaf                             ; $4aa5: $28 $08

    ld c, c                                       ; $4aa7: $49
    ld c, d                                       ; $4aa8: $4a
    ld c, e                                       ; $4aa9: $4b
    and $4d                                       ; $4aaa: $e6 $4d
    ld c, [hl]                                    ; $4aac: $4e
    ld c, a                                       ; $4aad: $4f
    pop de                                        ; $4aae: $d1

jr_089_4aaf:
    ld hl, sp-$07                                 ; $4aaf: $f8 $f9
    ld a, [$fce5]                                 ; $4ab1: $fa $e5 $fc
    db $fd                                        ; $4ab4: $fd
    cp $e6                                        ; $4ab5: $fe $e6
    inc b                                         ; $4ab7: $04
    rlca                                          ; $4ab8: $07
    ld bc, $042a                                  ; $4ab9: $01 $2a $04
    rlca                                          ; $4abc: $07
    rlca                                          ; $4abd: $07
    ld a, [hl+]                                   ; $4abe: $2a
    inc b                                         ; $4abf: $04
    ld bc, $2a01                                  ; $4ac0: $01 $01 $2a
    inc b                                         ; $4ac3: $04
    ld b, $01                                     ; $4ac4: $06 $01
    ld a, [hl+]                                   ; $4ac6: $2a
    di                                            ; $4ac7: $f3
    db $f4                                        ; $4ac8: $f4
    call nc, $f6f5                                ; $4ac9: $d4 $f5 $f6

jr_089_4acc:
    rst $30                                       ; $4acc: $f7
    sub d                                         ; $4acd: $92
    ld hl, sp-$21                                 ; $4ace: $f8 $df
    ld h, d                                       ; $4ad0: $62
    ld h, e                                       ; $4ad1: $63
    call nc, Call_089_65e7                        ; $4ad2: $d4 $e7 $65
    call nc, Call_000_08f9                        ; $4ad5: $d4 $f9 $08
    ld [$0800], sp                                ; $4ad8: $08 $00 $08
    ld [$0808], sp                                ; $4adb: $08 $08 $08
    ld [$0028], sp                                ; $4ade: $08 $28 $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    ld [$0000], sp                                ; $4ae3: $08 $00 $00
    ld [$fbfa], sp                                ; $4ae6: $08 $fa $fb
    db $f4                                        ; $4ae9: $f4
    di                                            ; $4aea: $f3
    db $fc                                        ; $4aeb: $fc
    db $fd                                        ; $4aec: $fd
    rst $30                                       ; $4aed: $f7
    or $d4                                        ; $4aee: $f6 $d4
    ld h, e                                       ; $4af0: $63
    ld h, d                                       ; $4af1: $62
    ld h, c                                       ; $4af2: $61
    cp $d4                                        ; $4af3: $fe $d4
    ld h, l                                       ; $4af5: $65
    ld h, h                                       ; $4af6: $64
    ld [$2808], sp                                ; $4af7: $08 $08 $28
    jr z, jr_089_4b04                             ; $4afa: $28 $08

    ld [$2828], sp                                ; $4afc: $08 $28 $28
    nop                                           ; $4aff: $00
    jr nz, jr_089_4b22                            ; $4b00: $20 $20

    jr nz, @+$0a                                  ; $4b02: $20 $08

jr_089_4b04:
    nop                                           ; $4b04: $00
    jr nz, jr_089_4b27                            ; $4b05: $20 $20

    pop de                                        ; $4b07: $d1
    pop de                                        ; $4b08: $d1
    pop de                                        ; $4b09: $d1
    jp nc, $ffd1                                  ; $4b0a: $d2 $d1 $ff

    nop                                           ; $4b0d: $00
    ld bc, $d2d1                                  ; $4b0e: $01 $d1 $d2
    ld a, [hl+]                                   ; $4b11: $2a
    jp nc, Jump_000_02d1                          ; $4b12: $d2 $d1 $02

    inc bc                                        ; $4b15: $03
    jp nc, $8282                                  ; $4b16: $d2 $82 $82

    add d                                         ; $4b19: $82
    add d                                         ; $4b1a: $82
    add d                                         ; $4b1b: $82
    adc d                                         ; $4b1c: $8a
    adc d                                         ; $4b1d: $8a
    adc d                                         ; $4b1e: $8a
    ld [bc], a                                    ; $4b1f: $02
    ld [bc], a                                    ; $4b20: $02
    ld h, l                                       ; $4b21: $65

jr_089_4b22:
    ld b, d                                       ; $4b22: $42
    ld [bc], a                                    ; $4b23: $02
    ld a, [bc]                                    ; $4b24: $0a
    dec c                                         ; $4b25: $0d
    ld b, d                                       ; $4b26: $42

jr_089_4b27:
    add hl, bc                                    ; $4b27: $09
    ld a, [bc]                                    ; $4b28: $0a
    dec bc                                        ; $4b29: $0b
    ret nc                                        ; $4b2a: $d0

    dec c                                         ; $4b2b: $0d
    ld c, $0f                                     ; $4b2c: $0e $0f
    ld a, h                                       ; $4b2e: $7c
    ld de, $1312                                  ; $4b2f: $11 $12 $13
    ld a, l                                       ; $4b32: $7d
    dec d                                         ; $4b33: $15
    ld d, $17                                     ; $4b34: $16 $17
    pop de                                        ; $4b36: $d1
    inc b                                         ; $4b37: $04
    ld bc, $0a07                                  ; $4b38: $01 $07 $0a
    inc b                                         ; $4b3b: $04
    ld bc, $0206                                  ; $4b3c: $01 $06 $02
    inc b                                         ; $4b3f: $04
    ld b, $06                                     ; $4b40: $06 $06
    ld [bc], a                                    ; $4b42: $02
    inc b                                         ; $4b43: $04
    rlca                                          ; $4b44: $07
    ld bc, $d22a                                  ; $4b45: $01 $2a $d2
    inc b                                         ; $4b48: $04
    call nc, Call_089_6105                        ; $4b49: $d4 $05 $61
    ld b, $d4                                     ; $4b4c: $06 $d4
    call nc, Call_000_0807                        ; $4b4e: $d4 $07 $08
    call nc, Call_089_67d4                        ; $4b51: $d4 $d4 $67
    ld l, b                                       ; $4b54: $68
    ld l, c                                       ; $4b55: $69
    ld l, c                                       ; $4b56: $69
    ld [$0008], sp                                ; $4b57: $08 $08 $00
    ld [$0800], sp                                ; $4b5a: $08 $00 $08
    nop                                           ; $4b5d: $00
    nop                                           ; $4b5e: $00
    ld [$0008], sp                                ; $4b5f: $08 $08 $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    nop                                           ; $4b66: $00
    add hl, bc                                    ; $4b67: $09
    call nc, Call_000_0a04                        ; $4b68: $d4 $04 $0a
    call nc, Call_000_06d4                        ; $4b6b: $d4 $d4 $06
    ld a, [c]                                     ; $4b6e: $f2
    call nc, $08d4                                ; $4b6f: $d4 $d4 $08
    dec bc                                        ; $4b72: $0b
    adc [hl]                                      ; $4b73: $8e
    call nc, $cf69                                ; $4b74: $d4 $69 $cf
    ld [$2800], sp                                ; $4b77: $08 $00 $28
    ld [$0000], sp                                ; $4b7a: $08 $00 $00
    jr z, @+$0a                                   ; $4b7d: $28 $08

    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    jr z, jr_089_4b8b                             ; $4b81: $28 $08

    ld [$2000], sp                                ; $4b83: $08 $00 $20
    ld [$76d1], sp                                ; $4b86: $08 $d1 $76
    ld [hl], a                                    ; $4b89: $77
    ld a, b                                       ; $4b8a: $78

jr_089_4b8b:
    push hl                                       ; $4b8b: $e5
    ld a, c                                       ; $4b8c: $79
    ld a, d                                       ; $4b8d: $7a
    ld a, e                                       ; $4b8e: $7b
    and $02                                       ; $4b8f: $e6 $02
    inc bc                                        ; $4b91: $03
    inc b                                         ; $4b92: $04
    ret nc                                        ; $4b93: $d0

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
    halt                                          ; $4bc8: $76
    ld [hl], a                                    ; $4bc9: $77
    ld a, b                                       ; $4bca: $78
    ld d, h                                       ; $4bcb: $54
    ld a, c                                       ; $4bcc: $79
    ld a, d                                       ; $4bcd: $7a
    ld a, e                                       ; $4bce: $7b
    ld bc, $0302                                  ; $4bcf: $01 $02 $03
    inc b                                         ; $4bd2: $04
    dec b                                         ; $4bd3: $05
    ld b, $07                                     ; $4bd4: $06 $07
    ld [$0107], sp                                ; $4bd6: $08 $07 $01
    ld bc, $0106                                  ; $4bd9: $01 $06 $01
    ld b, $01                                     ; $4bdc: $06 $01
    ld bc, $0601                                  ; $4bde: $01 $01 $06

jr_089_4be1:
    ld bc, $0706                                  ; $4be1: $01 $06 $07
    ld bc, $0701                                  ; $4be4: $01 $01 $07
    ld c, c                                       ; $4be7: $49
    ld c, d                                       ; $4be8: $4a
    ld c, e                                       ; $4be9: $4b
    pop de                                        ; $4bea: $d1
    ld c, l                                       ; $4beb: $4d
    ld c, [hl]                                    ; $4bec: $4e
    ld c, a                                       ; $4bed: $4f
    inc c                                         ; $4bee: $0c
    ld hl, sp-$07                                 ; $4bef: $f8 $f9
    ld a, [$fc0d]                                 ; $4bf1: $fa $0d $fc
    db $fd                                        ; $4bf4: $fd
    cp $d0                                        ; $4bf5: $fe $d0
    rlca                                          ; $4bf7: $07
    ld bc, $2a01                                  ; $4bf8: $01 $01 $2a
    ld bc, $0601                                  ; $4bfb: $01 $01 $06
    ld a, [bc]                                    ; $4bfe: $0a
    ld bc, $0101                                  ; $4bff: $01 $01 $01
    ld a, [bc]                                    ; $4c02: $0a
    rlca                                          ; $4c03: $07
    ld bc, $0a07                                  ; $4c04: $01 $07 $0a
    ld a, h                                       ; $4c07: $7c
    ld a, [de]                                    ; $4c08: $1a
    dec de                                        ; $4c09: $1b
    inc e                                         ; $4c0a: $1c
    ld a, l                                       ; $4c0b: $7d
    ld e, $1f                                     ; $4c0c: $1e $1f
    jr nz, jr_089_4be1                            ; $4c0e: $20 $d1

    ld [hl+], a                                   ; $4c10: $22
    inc hl                                        ; $4c11: $23
    inc h                                         ; $4c12: $24
    ld c, $26                                     ; $4c13: $0e $26
    daa                                           ; $4c15: $27
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
    jr jr_089_4c3f                                ; $4c36: $18 $07

    ld bc, $0606                                  ; $4c38: $01 $06 $06
    ld bc, $0701                                  ; $4c3b: $01 $01 $07
    rlca                                          ; $4c3e: $07

jr_089_4c3f:
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
    ld a, h                                       ; $4c6a: $7c
    dec c                                         ; $4c6b: $0d
    ld c, $0f                                     ; $4c6c: $0e $0f
    ld a, l                                       ; $4c6e: $7d
    ld de, $1312                                  ; $4c6f: $11 $12 $13
    pop de                                        ; $4c72: $d1
    dec d                                         ; $4c73: $15
    ld d, $17                                     ; $4c74: $16 $17
    rrca                                          ; $4c76: $0f
    ld bc, $0107                                  ; $4c77: $01 $07 $01
    ld [bc], a                                    ; $4c7a: $02
    ld b, $01                                     ; $4c7b: $06 $01
    ld bc, $0102                                  ; $4c7d: $01 $02 $01
    ld bc, $2a01                                  ; $4c80: $01 $01 $2a
    ld bc, $0701                                  ; $4c83: $01 $01 $07
    ld a, [bc]                                    ; $4c86: $0a
    db $10                                        ; $4c87: $10
    halt                                          ; $4c88: $76
    ld [hl], a                                    ; $4c89: $77
    ld a, b                                       ; $4c8a: $78
    ret nc                                        ; $4c8b: $d0

    ld a, c                                       ; $4c8c: $79
    ld a, d                                       ; $4c8d: $7a
    ld a, e                                       ; $4c8e: $7b
    ld a, h                                       ; $4c8f: $7c
    ld [bc], a                                    ; $4c90: $02
    inc bc                                        ; $4c91: $03
    inc b                                         ; $4c92: $04
    ld a, l                                       ; $4c93: $7d
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
    halt                                          ; $4cc8: $76
    ld [hl], a                                    ; $4cc9: $77
    ld a, b                                       ; $4cca: $78
    ld d, h                                       ; $4ccb: $54
    ld a, c                                       ; $4ccc: $79
    ld a, d                                       ; $4ccd: $7a
    ld a, e                                       ; $4cce: $7b
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
    ld de, $4e4d                                  ; $4cea: $11 $4d $4e
    ld c, a                                       ; $4ced: $4f
    ret nc                                        ; $4cee: $d0

    ld hl, sp-$07                                 ; $4cef: $f8 $f9
    ld a, [$fc0c]                                 ; $4cf1: $fa $0c $fc
    db $fd                                        ; $4cf4: $fd
    cp $0d                                        ; $4cf5: $fe $0d
    ld bc, $0107                                  ; $4cf7: $01 $07 $01
    ld a, [bc]                                    ; $4cfa: $0a
    ld bc, $0601                                  ; $4cfb: $01 $01 $06
    ld a, [bc]                                    ; $4cfe: $0a
    ld bc, $0701                                  ; $4cff: $01 $01 $07
    ld a, [bc]                                    ; $4d02: $0a
    ld bc, $0107                                  ; $4d03: $01 $07 $01
    ld a, [bc]                                    ; $4d06: $0a
    pop de                                        ; $4d07: $d1
    ld a, [de]                                    ; $4d08: $1a
    dec de                                        ; $4d09: $1b
    inc e                                         ; $4d0a: $1c
    ld c, $1e                                     ; $4d0b: $0e $1e
    rra                                           ; $4d0d: $1f
    jr nz, jr_089_4d20                            ; $4d0e: $20 $10

    ld [hl+], a                                   ; $4d10: $22
    inc hl                                        ; $4d11: $23
    inc h                                         ; $4d12: $24
    ret nc                                        ; $4d13: $d0

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

jr_089_4d20:
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
    pop de                                        ; $4d6a: $d1
    dec c                                         ; $4d6b: $0d
    ld c, $0f                                     ; $4d6c: $0e $0f
    push hl                                       ; $4d6e: $e5
    ld de, $1312                                  ; $4d6f: $11 $12 $13
    and $15                                       ; $4d72: $e6 $15
    ld d, $17                                     ; $4d74: $16 $17
    pop de                                        ; $4d76: $d1
    ld bc, $0101                                  ; $4d77: $01 $01 $01
    ld a, [hl+]                                   ; $4d7a: $2a
    rlca                                          ; $4d7b: $07
    ld b, $01                                     ; $4d7c: $06 $01
    ld a, [hl+]                                   ; $4d7e: $2a
    rlca                                          ; $4d7f: $07
    rlca                                          ; $4d80: $07
    ld bc, $012a                                  ; $4d81: $01 $2a $01
    rlca                                          ; $4d84: $07
    ld bc, $d22a                                  ; $4d85: $01 $2a $d2
    db $d3                                        ; $4d88: $d3
    call nc, Call_000_12d5                        ; $4d89: $d4 $d5 $12
    sub $d7                                       ; $4d8c: $d6 $d7
    ret c                                         ; $4d8e: $d8

    inc de                                        ; $4d8f: $13
    jp c, $dbd4                                   ; $4d90: $da $d4 $db

    db $e4                                        ; $4d93: $e4
    and d                                         ; $4d94: $a2
    sub d                                         ; $4d95: $92
    call c, Call_000_0808                         ; $4d96: $dc $08 $08
    ld [$0808], sp                                ; $4d99: $08 $08 $08
    ld [$0808], sp                                ; $4d9c: $08 $08 $08
    ld [$0008], sp                                ; $4d9f: $08 $08 $00
    ld [$4828], sp                                ; $4da2: $08 $28 $48
    ld [$dd08], sp                                ; $4da5: $08 $08 $dd
    call nc, $d2d3                                ; $4da8: $d4 $d3 $d2
    sbc $d7                                       ; $4dab: $de $d7
    sub $61                                       ; $4dad: $d6 $61
    ldh [$d4], a                                  ; $4daf: $e0 $d4
    jp c, $e2d9                                   ; $4db1: $da $d9 $e2

    sub d                                         ; $4db4: $92
    db $e3                                        ; $4db5: $e3
    jp hl                                         ; $4db6: $e9


    ld [$2828], sp                                ; $4db7: $08 $28 $28
    jr z, @+$0a                                   ; $4dba: $28 $08

    jr z, @+$2a                                   ; $4dbc: $28 $28

    jr nz, jr_089_4dc8                            ; $4dbe: $20 $08

    nop                                           ; $4dc0: $00
    jr z, @+$2a                                   ; $4dc1: $28 $28

    ld [$0828], sp                                ; $4dc3: $08 $28 $08
    jr z, @-$2e                                   ; $4dc6: $28 $d0

jr_089_4dc8:
    halt                                          ; $4dc8: $76
    ld [hl], a                                    ; $4dc9: $77
    ld a, b                                       ; $4dca: $78
    ld a, h                                       ; $4dcb: $7c
    ld a, c                                       ; $4dcc: $79
    ld a, d                                       ; $4dcd: $7a
    ld a, e                                       ; $4dce: $7b
    ld a, l                                       ; $4dcf: $7d
    ld [bc], a                                    ; $4dd0: $02
    inc bc                                        ; $4dd1: $03
    inc b                                         ; $4dd2: $04
    pop de                                        ; $4dd3: $d1
    ld b, $07                                     ; $4dd4: $06 $07
    ld [$042a], sp                                ; $4dd6: $08 $2a $04
    ld bc, $2204                                  ; $4dd9: $01 $04 $22
    inc b                                         ; $4ddc: $04
    rlca                                          ; $4ddd: $07
    inc b                                         ; $4dde: $04
    ld [hl+], a                                   ; $4ddf: $22
    inc b                                         ; $4de0: $04
    ld b, $04                                     ; $4de1: $06 $04
    ld a, [bc]                                    ; $4de3: $0a
    inc b                                         ; $4de4: $04
    ld b, $04                                     ; $4de5: $06 $04
    ld h, c                                       ; $4de7: $61
    ld h, d                                       ; $4de8: $62
    ld h, e                                       ; $4de9: $63
    call nc, Call_089_6564                        ; $4dea: $d4 $64 $65
    db $d3                                        ; $4ded: $d3
    add sp, -$17                                  ; $4dee: $e8 $e9
    call nc, $ebea                                ; $4df0: $d4 $ea $eb
    db $ec                                        ; $4df3: $ec
    db $ed                                        ; $4df4: $ed
    call nc, $00ee                                ; $4df5: $d4 $ee $00
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    nop                                           ; $4dfc: $00
    ld [$0808], sp                                ; $4dfd: $08 $08 $08

jr_089_4e00:
    nop                                           ; $4e00: $00
    ld [$0808], sp                                ; $4e01: $08 $08 $08
    ld [$0800], sp                                ; $4e04: $08 $00 $08
    call nc, Call_089_6263                        ; $4e07: $d4 $63 $62
    inc d                                         ; $4e0a: $14
    rst $28                                       ; $4e0b: $ef
    ldh a, [$65]                                  ; $4e0c: $f0 $65
    dec d                                         ; $4e0e: $15
    pop af                                        ; $4e0f: $f1
    ld [$e9d4], a                                 ; $4e10: $ea $d4 $e9
    xor $d4                                       ; $4e13: $ee $d4
    db $ed                                        ; $4e15: $ed
    ld h, c                                       ; $4e16: $61
    nop                                           ; $4e17: $00
    jr nz, @+$22                                  ; $4e18: $20 $20

    ld [$0808], sp                                ; $4e1a: $08 $08 $08
    jr nz, jr_089_4e27                            ; $4e1d: $20 $08

    ld [$0028], sp                                ; $4e1f: $08 $28 $00
    jr z, jr_089_4e4c                             ; $4e22: $28 $28

    nop                                           ; $4e24: $00
    jr z, jr_089_4e47                             ; $4e25: $28 $20

jr_089_4e27:
    push hl                                       ; $4e27: $e5
    ld a, [de]                                    ; $4e28: $1a
    dec de                                        ; $4e29: $1b
    inc e                                         ; $4e2a: $1c
    and $1e                                       ; $4e2b: $e6 $1e
    rra                                           ; $4e2d: $1f
    jr nz, jr_089_4e00                            ; $4e2e: $20 $d0

    ld [hl+], a                                   ; $4e30: $22
    inc hl                                        ; $4e31: $23
    inc h                                         ; $4e32: $24
    ld a, h                                       ; $4e33: $7c
    ld h, $27                                     ; $4e34: $26 $27
    jr z, @+$0c                                   ; $4e36: $28 $0a

    inc b                                         ; $4e38: $04
    ld bc, $0a04                                  ; $4e39: $01 $04 $0a
    inc b                                         ; $4e3c: $04
    ld b, $04                                     ; $4e3d: $06 $04
    ld a, [hl+]                                   ; $4e3f: $2a
    inc b                                         ; $4e40: $04
    ld b, $04                                     ; $4e41: $06 $04
    ld [hl+], a                                   ; $4e43: $22
    inc b                                         ; $4e44: $04
    rlca                                          ; $4e45: $07
    inc b                                         ; $4e46: $04

jr_089_4e47:
    di                                            ; $4e47: $f3
    db $f4                                        ; $4e48: $f4
    call nc, $f6f5                                ; $4e49: $d4 $f5 $f6

jr_089_4e4c:
    rst $30                                       ; $4e4c: $f7
    sub d                                         ; $4e4d: $92
    ld hl, sp+$12                                 ; $4e4e: $f8 $12
    ld h, d                                       ; $4e50: $62
    ld h, e                                       ; $4e51: $63
    call nc, $6516                                ; $4e52: $d4 $16 $65
    call nc, Call_000_08f9                        ; $4e55: $d4 $f9 $08
    ld [$0800], sp                                ; $4e58: $08 $00 $08
    ld [$0808], sp                                ; $4e5b: $08 $08 $08
    ld [$0008], sp                                ; $4e5e: $08 $08 $00
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    ld [$0000], sp                                ; $4e63: $08 $00 $00
    ld [$fbfa], sp                                ; $4e66: $08 $fa $fb
    db $f4                                        ; $4e69: $f4
    rla                                           ; $4e6a: $17
    db $fc                                        ; $4e6b: $fc
    db $fd                                        ; $4e6c: $fd
    rst $30                                       ; $4e6d: $f7
    or $d4                                        ; $4e6e: $f6 $d4
    ld h, e                                       ; $4e70: $63
    ld h, d                                       ; $4e71: $62
    ld [de], a                                    ; $4e72: $12
    cp $d4                                        ; $4e73: $fe $d4
    ld h, l                                       ; $4e75: $65
    ld d, $08                                     ; $4e76: $16 $08
    ld [$0828], sp                                ; $4e78: $08 $28 $08
    ld [$2808], sp                                ; $4e7b: $08 $08 $28
    jr z, jr_089_4e80                             ; $4e7e: $28 $00

jr_089_4e80:
    jr nz, jr_089_4ea2                            ; $4e80: $20 $20

    jr z, jr_089_4e8c                             ; $4e82: $28 $08

    nop                                           ; $4e84: $00
    jr nz, @+$2a                                  ; $4e85: $20 $28

    ld a, l                                       ; $4e87: $7d
    halt                                          ; $4e88: $76
    ld [hl], a                                    ; $4e89: $77
    ld a, b                                       ; $4e8a: $78
    pop de                                        ; $4e8b: $d1

jr_089_4e8c:
    ld a, c                                       ; $4e8c: $79
    ld a, d                                       ; $4e8d: $7a
    ld a, e                                       ; $4e8e: $7b
    inc c                                         ; $4e8f: $0c
    ld [bc], a                                    ; $4e90: $02
    inc bc                                        ; $4e91: $03
    inc b                                         ; $4e92: $04
    dec c                                         ; $4e93: $0d
    ld b, $07                                     ; $4e94: $06 $07
    ld [$0422], sp                                ; $4e96: $08 $22 $04
    ld b, $04                                     ; $4e99: $06 $04
    ld a, [bc]                                    ; $4e9b: $0a
    inc b                                         ; $4e9c: $04
    rlca                                          ; $4e9d: $07
    inc b                                         ; $4e9e: $04
    ld a, [hl+]                                   ; $4e9f: $2a
    inc b                                         ; $4ea0: $04
    rlca                                          ; $4ea1: $07

jr_089_4ea2:
    inc b                                         ; $4ea2: $04
    ld a, [hl+]                                   ; $4ea3: $2a
    inc b                                         ; $4ea4: $04
    ld bc, $0a04                                  ; $4ea5: $01 $04 $0a
    inc b                                         ; $4ea8: $04
    call nc, $f205                                ; $4ea9: $d4 $05 $f2
    ld b, $d4                                     ; $4eac: $06 $d4
    call nc, $080b                                ; $4eae: $d4 $0b $08
    call nc, Call_089_67d4                        ; $4eb1: $d4 $d4 $67
    ld l, b                                       ; $4eb4: $68
    ld l, c                                       ; $4eb5: $69
    ld l, c                                       ; $4eb6: $69
    jr z, jr_089_4ec1                             ; $4eb7: $28 $08

    nop                                           ; $4eb9: $00
    ld [$0828], sp                                ; $4eba: $08 $28 $08
    nop                                           ; $4ebd: $00
    nop                                           ; $4ebe: $00
    jr z, @+$0a                                   ; $4ebf: $28 $08

jr_089_4ec1:
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00

jr_089_4ec4:
    nop                                           ; $4ec4: $00
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    add hl, bc                                    ; $4ec7: $09
    call nc, $d204                                ; $4ec8: $d4 $04 $d2
    call nc, Call_000_06d4                        ; $4ecb: $d4 $d4 $06
    ld a, [c]                                     ; $4ece: $f2
    call nc, $08d4                                ; $4ecf: $d4 $d4 $08
    dec bc                                        ; $4ed2: $0b
    adc [hl]                                      ; $4ed3: $8e
    call nc, $cf69                                ; $4ed4: $d4 $69 $cf
    ld [$2800], sp                                ; $4ed7: $08 $00 $28
    jr z, jr_089_4edc                             ; $4eda: $28 $00

jr_089_4edc:
    nop                                           ; $4edc: $00
    jr z, @+$0a                                   ; $4edd: $28 $08

    nop                                           ; $4edf: $00
    nop                                           ; $4ee0: $00
    jr z, jr_089_4eeb                             ; $4ee1: $28 $08

    ld [$2000], sp                                ; $4ee3: $08 $00 $20
    ld [$1ad0], sp                                ; $4ee6: $08 $d0 $1a
    dec de                                        ; $4ee9: $1b
    inc e                                         ; $4eea: $1c

jr_089_4eeb:
    push hl                                       ; $4eeb: $e5
    ld e, $1f                                     ; $4eec: $1e $1f
    jr nz, @-$18                                  ; $4eee: $20 $e6

    ld [hl+], a                                   ; $4ef0: $22
    inc hl                                        ; $4ef1: $23
    jr jr_089_4ec4                                ; $4ef2: $18 $d0

    ld h, $27                                     ; $4ef4: $26 $27
    add hl, de                                    ; $4ef6: $19
    ld a, [hl+]                                   ; $4ef7: $2a
    inc b                                         ; $4ef8: $04
    ld b, $04                                     ; $4ef9: $06 $04
    ld a, [bc]                                    ; $4efb: $0a
    inc b                                         ; $4efc: $04
    rlca                                          ; $4efd: $07
    inc b                                         ; $4efe: $04
    ld a, [bc]                                    ; $4eff: $0a
    inc b                                         ; $4f00: $04
    rlca                                          ; $4f01: $07
    ld c, $2a                                     ; $4f02: $0e $2a
    inc b                                         ; $4f04: $04
    ld b, $0e                                     ; $4f05: $06 $0e
    jp nc, $d1d1                                  ; $4f07: $d2 $d1 $d1

    pop de                                        ; $4f0a: $d1
    ld a, [de]                                    ; $4f0b: $1a
    dec de                                        ; $4f0c: $1b
    pop de                                        ; $4f0d: $d1
    pop de                                        ; $4f0e: $d1
    inc e                                         ; $4f0f: $1c
    jp nc, $d1d1                                  ; $4f10: $d2 $d1 $d1

    dec e                                         ; $4f13: $1d
    jp nc, $d1d1                                  ; $4f14: $d2 $d1 $d1

    add d                                         ; $4f17: $82
    add d                                         ; $4f18: $82
    ld [bc], a                                    ; $4f19: $02

Jump_089_4f1a:
    ld [bc], a                                    ; $4f1a: $02
    adc d                                         ; $4f1b: $8a
    adc d                                         ; $4f1c: $8a
    add d                                         ; $4f1d: $82
    ld [bc], a                                    ; $4f1e: $02
    ld c, $82                                     ; $4f1f: $0e $82
    add d                                         ; $4f21: $82
    ld [bc], a                                    ; $4f22: $02
    ld c, $82                                     ; $4f23: $0e $82
    add d                                         ; $4f25: $82
    ld [bc], a                                    ; $4f26: $02
    pop de                                        ; $4f27: $d1
    ld [bc], a                                    ; $4f28: $02
    ld e, $d2                                     ; $4f29: $1e $d2
    pop de                                        ; $4f2b: $d1
    ld [bc], a                                    ; $4f2c: $02
    rra                                           ; $4f2d: $1f
    jp nc, Jump_000_02d1                          ; $4f2e: $d2 $d1 $02

    jr nz, jr_089_4f54                            ; $4f31: $20 $21

    ld [hl+], a                                   ; $4f33: $22
    ld [bc], a                                    ; $4f34: $02
    inc hl                                        ; $4f35: $23
    inc h                                         ; $4f36: $24
    add d                                         ; $4f37: $82
    adc d                                         ; $4f38: $8a
    ld a, [bc]                                    ; $4f39: $0a
    ld b, d                                       ; $4f3a: $42
    add d                                         ; $4f3b: $82
    adc d                                         ; $4f3c: $8a
    ld a, [bc]                                    ; $4f3d: $0a
    ld b, d                                       ; $4f3e: $42
    add d                                         ; $4f3f: $82
    adc d                                         ; $4f40: $8a
    ld a, [bc]                                    ; $4f41: $0a
    ld a, [bc]                                    ; $4f42: $0a
    adc d                                         ; $4f43: $8a
    adc d                                         ; $4f44: $8a
    inc c                                         ; $4f45: $0c
    inc c                                         ; $4f46: $0c
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

jr_089_4f54:
    db $fd                                        ; $4f54: $fd
    cp $ff                                        ; $4f55: $fe $ff
    inc b                                         ; $4f57: $04
    ld bc, $0101                                  ; $4f58: $01 $01 $01
    inc b                                         ; $4f5b: $04
    ld bc, $0607                                  ; $4f5c: $01 $07 $06
    inc b                                         ; $4f5f: $04
    rlca                                          ; $4f60: $07
    ld bc, $0407                                  ; $4f61: $01 $07 $04
    rlca                                          ; $4f64: $07
    ld bc, $6f01                                  ; $4f65: $01 $01 $6f
    ld [hl], b                                    ; $4f68: $70
    or c                                          ; $4f69: $b1
    ld [hl], c                                    ; $4f6a: $71
    ld d, h                                       ; $4f6b: $54
    ld a, c                                       ; $4f6c: $79
    ld a, d                                       ; $4f6d: $7a
    ld a, e                                       ; $4f6e: $7b
    ld bc, $0302                                  ; $4f6f: $01 $02 $03
    inc b                                         ; $4f72: $04
    dec b                                         ; $4f73: $05
    ld b, $07                                     ; $4f74: $06 $07
    ld [$0000], sp                                ; $4f76: $08 $00 $00
    ld [$0400], sp                                ; $4f79: $08 $00 $04
    inc b                                         ; $4f7c: $04
    inc b                                         ; $4f7d: $04
    inc b                                         ; $4f7e: $04
    ld bc, $0606                                  ; $4f7f: $01 $06 $06
    ld b, $07                                     ; $4f82: $06 $07
    ld bc, $0606                                  ; $4f84: $01 $06 $06
    ld [hl], d                                    ; $4f87: $72
    ld [hl], c                                    ; $4f88: $71
    or c                                          ; $4f89: $b1
    or d                                          ; $4f8a: $b2
    ld c, l                                       ; $4f8b: $4d
    ld c, [hl]                                    ; $4f8c: $4e
    ld c, a                                       ; $4f8d: $4f
    ld d, b                                       ; $4f8e: $50
    ld hl, sp-$07                                 ; $4f8f: $f8 $f9
    ld a, [$fcfb]                                 ; $4f91: $fa $fb $fc
    db $fd                                        ; $4f94: $fd
    cp $ff                                        ; $4f95: $fe $ff
    nop                                           ; $4f97: $00
    nop                                           ; $4f98: $00
    ld [$0408], sp                                ; $4f99: $08 $08 $04
    inc b                                         ; $4f9c: $04
    inc b                                         ; $4f9d: $04
    inc b                                         ; $4f9e: $04
    rlca                                          ; $4f9f: $07
    ld b, $01                                     ; $4fa0: $06 $01
    rlca                                          ; $4fa2: $07
    rlca                                          ; $4fa3: $07
    ld bc, $0701                                  ; $4fa4: $01 $01 $07
    ld [hl+], a                                   ; $4fa7: $22
    ld [bc], a                                    ; $4fa8: $02
    dec h                                         ; $4fa9: $25
    ld h, $22                                     ; $4faa: $26 $22
    ld [bc], a                                    ; $4fac: $02
    daa                                           ; $4fad: $27
    jr z, jr_089_4fd2                             ; $4fae: $28 $22

    ld [bc], a                                    ; $4fb0: $02
    add hl, hl                                    ; $4fb1: $29
    ld a, [hl+]                                   ; $4fb2: $2a
    ld [hl+], a                                   ; $4fb3: $22
    ld [bc], a                                    ; $4fb4: $02
    dec hl                                        ; $4fb5: $2b
    inc l                                         ; $4fb6: $2c
    adc d                                         ; $4fb7: $8a
    adc d                                         ; $4fb8: $8a
    inc c                                         ; $4fb9: $0c
    ld c, $8a                                     ; $4fba: $0e $8a
    adc d                                         ; $4fbc: $8a
    inc c                                         ; $4fbd: $0c
    add hl, bc                                    ; $4fbe: $09
    adc d                                         ; $4fbf: $8a
    adc d                                         ; $4fc0: $8a
    inc c                                         ; $4fc1: $0c
    rrca                                          ; $4fc2: $0f
    adc d                                         ; $4fc3: $8a
    adc d                                         ; $4fc4: $8a
    inc c                                         ; $4fc5: $0c
    rrca                                          ; $4fc6: $0f
    add hl, bc                                    ; $4fc7: $09
    ld a, [bc]                                    ; $4fc8: $0a
    dec bc                                        ; $4fc9: $0b
    inc c                                         ; $4fca: $0c
    dec c                                         ; $4fcb: $0d
    ld c, $0f                                     ; $4fcc: $0e $0f
    db $10                                        ; $4fce: $10
    ld de, $1312                                  ; $4fcf: $11 $12 $13

jr_089_4fd2:
    inc d                                         ; $4fd2: $14
    dec d                                         ; $4fd3: $15
    ld d, $17                                     ; $4fd4: $16 $17
    jr jr_089_4fd9                                ; $4fd6: $18 $01

    rlca                                          ; $4fd8: $07

jr_089_4fd9:
    rlca                                          ; $4fd9: $07
    ld bc, $0106                                  ; $4fda: $01 $06 $01
    rlca                                          ; $4fdd: $07
    rlca                                          ; $4fde: $07
    ld bc, $0607                                  ; $4fdf: $01 $07 $06
    ld bc, $0707                                  ; $4fe2: $01 $07 $07
    ld bc, $1906                                  ; $4fe5: $01 $06 $19
    ld a, [de]                                    ; $4fe8: $1a
    dec de                                        ; $4fe9: $1b
    inc e                                         ; $4fea: $1c
    dec e                                         ; $4feb: $1d
    ld e, $1f                                     ; $4fec: $1e $1f
    jr nz, @+$23                                  ; $4fee: $20 $21

    ld [hl+], a                                   ; $4ff0: $22
    inc hl                                        ; $4ff1: $23
    inc h                                         ; $4ff2: $24
    dec h                                         ; $4ff3: $25
    ld h, $27                                     ; $4ff4: $26 $27
    jr z, jr_089_4ff9                             ; $4ff6: $28 $01

    rlca                                          ; $4ff8: $07

jr_089_4ff9:
    rlca                                          ; $4ff9: $07
    rlca                                          ; $4ffa: $07
    ld bc, $0601                                  ; $4ffb: $01 $01 $06
    ld b, $01                                     ; $4ffe: $06 $01
    ld bc, $0606                                  ; $5000: $01 $06 $06
    ld bc, $0701                                  ; $5003: $01 $01 $07
    rlca                                          ; $5006: $07
    add hl, bc                                    ; $5007: $09
    ld a, [bc]                                    ; $5008: $0a
    dec bc                                        ; $5009: $0b
    inc c                                         ; $500a: $0c
    dec c                                         ; $500b: $0d
    ld c, $0f                                     ; $500c: $0e $0f
    db $10                                        ; $500e: $10
    ld de, $1312                                  ; $500f: $11 $12 $13
    inc d                                         ; $5012: $14
    dec d                                         ; $5013: $15
    ld d, $17                                     ; $5014: $16 $17
    jr jr_089_501f                                ; $5016: $18 $07

    rlca                                          ; $5018: $07
    ld bc, $0701                                  ; $5019: $01 $01 $07
    ld bc, $0106                                  ; $501c: $01 $06 $01

jr_089_501f:
    ld bc, $0601                                  ; $501f: $01 $01 $06
    ld b, $07                                     ; $5022: $06 $07
    rlca                                          ; $5024: $07
    rlca                                          ; $5025: $07
    ld b, $22                                     ; $5026: $06 $22
    ld [bc], a                                    ; $5028: $02
    dec l                                         ; $5029: $2d
    ld l, $22                                     ; $502a: $2e $22
    jp nc, Jump_000_302f                          ; $502c: $d2 $2f $30

    ld [hl+], a                                   ; $502f: $22
    ld a, [de]                                    ; $5030: $1a
    nop                                           ; $5031: $00
    dec de                                        ; $5032: $1b
    pop de                                        ; $5033: $d1
    pop de                                        ; $5034: $d1
    pop de                                        ; $5035: $d1
    jp nc, $8a8a                                  ; $5036: $d2 $8a $8a

    inc c                                         ; $5039: $0c
    add hl, bc                                    ; $503a: $09
    adc d                                         ; $503b: $8a
    add d                                         ; $503c: $82
    inc c                                         ; $503d: $0c
    add hl, bc                                    ; $503e: $09
    adc d                                         ; $503f: $8a
    adc d                                         ; $5040: $8a
    adc d                                         ; $5041: $8a
    adc d                                         ; $5042: $8a
    add d                                         ; $5043: $82
    add d                                         ; $5044: $82
    add d                                         ; $5045: $82
    add d                                         ; $5046: $82
    ld c, c                                       ; $5047: $49
    ld c, d                                       ; $5048: $4a
    ld c, e                                       ; $5049: $4b
    ld c, h                                       ; $504a: $4c
    ld c, l                                       ; $504b: $4d
    ld c, [hl]                                    ; $504c: $4e
    ld c, a                                       ; $504d: $4f
    ld d, b                                       ; $504e: $50
    ld hl, sp-$07                                 ; $504f: $f8 $f9
    ld a, [$fcfb]                                 ; $5051: $fa $fb $fc
    db $fd                                        ; $5054: $fd
    cp $ff                                        ; $5055: $fe $ff
    rlca                                          ; $5057: $07
    rlca                                          ; $5058: $07
    ld bc, $0607                                  ; $5059: $01 $07 $06
    ld bc, $0707                                  ; $505c: $01 $07 $07
    ld b, $07                                     ; $505f: $06 $07
    rlca                                          ; $5061: $07
    ld b, $01                                     ; $5062: $06 $01
    rlca                                          ; $5064: $07
    ld bc, $5101                                  ; $5065: $01 $01 $51
    halt                                          ; $5068: $76
    ld [hl], a                                    ; $5069: $77
    ld a, b                                       ; $506a: $78
    ld d, h                                       ; $506b: $54
    ld a, c                                       ; $506c: $79
    ld a, d                                       ; $506d: $7a
    ld a, e                                       ; $506e: $7b
    ld bc, $0302                                  ; $506f: $01 $02 $03
    inc b                                         ; $5072: $04
    dec b                                         ; $5073: $05
    ld b, $07                                     ; $5074: $06 $07
    ld [$0107], sp                                ; $5076: $08 $07 $01
    ld bc, $0101                                  ; $5079: $01 $01 $01
    ld bc, $0701                                  ; $507c: $01 $01 $07
    ld bc, $0107                                  ; $507f: $01 $07 $01
    ld b, $07                                     ; $5082: $06 $07
    ld bc, $0701                                  ; $5084: $01 $01 $07
    ld c, c                                       ; $5087: $49
    ld c, d                                       ; $5088: $4a
    ld c, e                                       ; $5089: $4b
    ld c, h                                       ; $508a: $4c
    ld c, l                                       ; $508b: $4d
    ld c, [hl]                                    ; $508c: $4e
    ld c, a                                       ; $508d: $4f
    ld d, b                                       ; $508e: $50
    ld hl, sp-$07                                 ; $508f: $f8 $f9
    ld a, [$fcfb]                                 ; $5091: $fa $fb $fc
    db $fd                                        ; $5094: $fd
    cp $ff                                        ; $5095: $fe $ff
    rlca                                          ; $5097: $07
    rlca                                          ; $5098: $07
    rlca                                          ; $5099: $07
    ld b, $07                                     ; $509a: $06 $07
    rlca                                          ; $509c: $07
    ld bc, $0106                                  ; $509d: $01 $06 $01
    ld bc, $0607                                  ; $50a0: $01 $07 $06
    rlca                                          ; $50a3: $07
    rlca                                          ; $50a4: $07
    ld bc, $0901                                  ; $50a5: $01 $01 $09
    ld a, [bc]                                    ; $50a8: $0a
    dec bc                                        ; $50a9: $0b
    inc c                                         ; $50aa: $0c
    dec c                                         ; $50ab: $0d
    ld c, $0f                                     ; $50ac: $0e $0f
    ld c, $11                                     ; $50ae: $0e $11
    ld [de], a                                    ; $50b0: $12
    inc de                                        ; $50b1: $13
    db $10                                        ; $50b2: $10
    dec d                                         ; $50b3: $15
    ld d, $17                                     ; $50b4: $16 $17
    pop de                                        ; $50b6: $d1
    inc b                                         ; $50b7: $04
    ld bc, $0107                                  ; $50b8: $01 $07 $01
    inc b                                         ; $50bb: $04
    ld b, $07                                     ; $50bc: $06 $07
    ld a, [hl+]                                   ; $50be: $2a
    inc b                                         ; $50bf: $04
    ld bc, $2a07                                  ; $50c0: $01 $07 $2a
    inc b                                         ; $50c3: $04
    ld b, $01                                     ; $50c4: $06 $01
    ld a, [hl+]                                   ; $50c6: $2a
    ld e, l                                       ; $50c7: $5d
    ld e, [hl]                                    ; $50c8: $5e
    ld e, a                                       ; $50c9: $5f
    ld a, [hl]                                    ; $50ca: $7e
    rst $18                                       ; $50cb: $df
    ld h, d                                       ; $50cc: $62
    ld h, e                                       ; $50cd: $63
    ld a, a                                       ; $50ce: $7f
    rst $20                                       ; $50cf: $e7
    ld h, l                                       ; $50d0: $65
    call nc, $d280                                ; $50d1: $d4 $80 $d2
    db $d3                                        ; $50d4: $d3
    call nc, $00d5                                ; $50d5: $d4 $d5 $00
    nop                                           ; $50d8: $00
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    jr z, jr_089_50dd                             ; $50db: $28 $00

jr_089_50dd:
    nop                                           ; $50dd: $00
    nop                                           ; $50de: $00
    ld [$0000], sp                                ; $50df: $08 $00 $00
    ld [$0808], sp                                ; $50e2: $08 $08 $08
    ld [$7e08], sp                                ; $50e5: $08 $08 $7e
    ld e, a                                       ; $50e8: $5f
    ld e, [hl]                                    ; $50e9: $5e
    ld e, l                                       ; $50ea: $5d
    add c                                         ; $50eb: $81
    ld h, e                                       ; $50ec: $63
    ld h, d                                       ; $50ed: $62
    rst $18                                       ; $50ee: $df
    add d                                         ; $50ef: $82
    call nc, $e765                                ; $50f0: $d4 $65 $e7
    db $dd                                        ; $50f3: $dd
    call nc, $d2d3                                ; $50f4: $d4 $d3 $d2
    nop                                           ; $50f7: $00
    jr nz, jr_089_511a                            ; $50f8: $20 $20

    jr nz, @+$0a                                  ; $50fa: $20 $08

    jr nz, @+$22                                  ; $50fc: $20 $20

    ld [$0008], sp                                ; $50fe: $08 $08 $00
    jr nz, jr_089_512b                            ; $5101: $20 $28

    ld [$2828], sp                                ; $5103: $08 $28 $28
    jr z, jr_089_5159                             ; $5106: $28 $51

    halt                                          ; $5108: $76
    ld [hl], a                                    ; $5109: $77
    ld a, b                                       ; $510a: $78
    ld d, h                                       ; $510b: $54
    ld a, c                                       ; $510c: $79
    ld a, d                                       ; $510d: $7a
    ld a, e                                       ; $510e: $7b
    ld bc, $0302                                  ; $510f: $01 $02 $03
    inc b                                         ; $5112: $04
    dec b                                         ; $5113: $05
    ld b, $07                                     ; $5114: $06 $07
    ld [$0404], sp                                ; $5116: $08 $04 $04
    rlca                                          ; $5119: $07

jr_089_511a:
    rlca                                          ; $511a: $07
    inc b                                         ; $511b: $04
    inc b                                         ; $511c: $04
    ld bc, $0701                                  ; $511d: $01 $01 $07
    ld bc, $0107                                  ; $5120: $01 $07 $01
    ld bc, $0107                                  ; $5123: $01 $07 $01
    ld b, $49                                     ; $5126: $06 $49
    ld c, d                                       ; $5128: $4a
    ld c, e                                       ; $5129: $4b
    ld c, h                                       ; $512a: $4c

jr_089_512b:
    ld c, l                                       ; $512b: $4d
    ld c, [hl]                                    ; $512c: $4e
    ld c, a                                       ; $512d: $4f
    ld d, b                                       ; $512e: $50
    ld hl, sp-$07                                 ; $512f: $f8 $f9
    ld a, [$fcfb]                                 ; $5131: $fa $fb $fc
    db $fd                                        ; $5134: $fd
    cp $ff                                        ; $5135: $fe $ff
    ld bc, $0701                                  ; $5137: $01 $01 $07
    ld bc, $0701                                  ; $513a: $01 $01 $07
    ld bc, $0106                                  ; $513d: $01 $06 $01
    rlca                                          ; $5140: $07
    ld b, $01                                     ; $5141: $06 $01
    ld b, $06                                     ; $5143: $06 $06
    ld bc, $5101                                  ; $5145: $01 $01 $51
    halt                                          ; $5148: $76
    ld [hl], a                                    ; $5149: $77
    ld a, b                                       ; $514a: $78
    ld d, h                                       ; $514b: $54
    ld a, c                                       ; $514c: $79
    ld a, d                                       ; $514d: $7a
    ld a, e                                       ; $514e: $7b
    ld bc, $0302                                  ; $514f: $01 $02 $03
    inc b                                         ; $5152: $04
    dec b                                         ; $5153: $05
    ld b, $07                                     ; $5154: $06 $07
    ld [$0101], sp                                ; $5156: $08 $01 $01

jr_089_5159:
    ld bc, $0107                                  ; $5159: $01 $07 $01
    ld bc, $0101                                  ; $515c: $01 $01 $01
    ld b, $01                                     ; $515f: $06 $01
    rlca                                          ; $5161: $07
    ld bc, $0107                                  ; $5162: $01 $07 $01
    rlca                                          ; $5165: $07
    ld bc, $4a49                                  ; $5166: $01 $49 $4a
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
    ld bc, $0701                                  ; $5177: $01 $01 $07
    ld bc, $0701                                  ; $517a: $01 $01 $07
    ld bc, $0706                                  ; $517d: $01 $06 $07
    ld bc, $0101                                  ; $5180: $01 $01 $01
    ld b, $06                                     ; $5183: $06 $06
    ld bc, $1901                                  ; $5185: $01 $01 $19
    ld a, [de]                                    ; $5188: $1a
    dec de                                        ; $5189: $1b
    inc e                                         ; $518a: $1c
    dec e                                         ; $518b: $1d
    ld e, $1f                                     ; $518c: $1e $1f
    jr nz, @+$23                                  ; $518e: $20 $21

    ld [hl+], a                                   ; $5190: $22
    inc hl                                        ; $5191: $23
    inc h                                         ; $5192: $24
    dec h                                         ; $5193: $25
    ld h, $27                                     ; $5194: $26 $27
    jr z, @+$09                                   ; $5196: $28 $07

    rlca                                          ; $5198: $07
    ld bc, $0701                                  ; $5199: $01 $01 $07
    ld b, $06                                     ; $519c: $06 $06
    ld b, $01                                     ; $519e: $06 $01
    ld bc, $0606                                  ; $51a0: $01 $06 $06
    ld bc, $0101                                  ; $51a3: $01 $01 $01
    rlca                                          ; $51a6: $07
    add hl, bc                                    ; $51a7: $09
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
    jr @+$03                                      ; $51b6: $18 $01

    ld b, $01                                     ; $51b8: $06 $01
    ld bc, $0101                                  ; $51ba: $01 $01 $01
    ld b, $01                                     ; $51bd: $06 $01
    rlca                                          ; $51bf: $07
    ld bc, $0606                                  ; $51c0: $01 $06 $06
    ld bc, $0701                                  ; $51c3: $01 $01 $07
    ld bc, $1a19                                  ; $51c6: $01 $19 $1a
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
    jr z, @+$08                                   ; $51d6: $28 $06

    ld b, $01                                     ; $51d8: $06 $01
    ld bc, $0101                                  ; $51da: $01 $01 $01
    ld b, $06                                     ; $51dd: $06 $06
    ld bc, $0106                                  ; $51df: $01 $06 $01
    rlca                                          ; $51e2: $07
    ld b, $06                                     ; $51e3: $06 $06
    rlca                                          ; $51e5: $07
    rlca                                          ; $51e6: $07
    add hl, bc                                    ; $51e7: $09
    ld a, [bc]                                    ; $51e8: $0a
    dec bc                                        ; $51e9: $0b
    inc c                                         ; $51ea: $0c
    dec c                                         ; $51eb: $0d
    ld c, $0f                                     ; $51ec: $0e $0f
    db $10                                        ; $51ee: $10
    ld de, $1312                                  ; $51ef: $11 $12 $13
    inc d                                         ; $51f2: $14
    dec d                                         ; $51f3: $15
    ld d, $17                                     ; $51f4: $16 $17
    jr jr_089_51f9                                ; $51f6: $18 $01

    rlca                                          ; $51f8: $07

jr_089_51f9:
    ld bc, $0701                                  ; $51f9: $01 $01 $07
    ld bc, $0101                                  ; $51fc: $01 $01 $01
    rlca                                          ; $51ff: $07
    ld bc, $0607                                  ; $5200: $01 $07 $06
    ld bc, $0601                                  ; $5203: $01 $01 $06
    ld b, $51                                     ; $5206: $06 $51
    halt                                          ; $5208: $76
    ld [hl], a                                    ; $5209: $77
    ld a, b                                       ; $520a: $78
    ld d, h                                       ; $520b: $54
    ld a, c                                       ; $520c: $79
    ld a, d                                       ; $520d: $7a
    ld a, e                                       ; $520e: $7b
    ld bc, $0302                                  ; $520f: $01 $02 $03
    inc b                                         ; $5212: $04
    dec b                                         ; $5213: $05
    ld b, $07                                     ; $5214: $06 $07
    ld [$0707], sp                                ; $5216: $08 $07 $07
    rlca                                          ; $5219: $07
    ld bc, $0101                                  ; $521a: $01 $01 $01
    ld bc, $0607                                  ; $521d: $01 $07 $06
    ld bc, $0707                                  ; $5220: $01 $07 $07
    ld bc, $0701                                  ; $5223: $01 $01 $07
    ld bc, $4a49                                  ; $5226: $01 $49 $4a
    ld c, e                                       ; $5229: $4b
    ld c, h                                       ; $522a: $4c
    ld c, l                                       ; $522b: $4d
    ld c, [hl]                                    ; $522c: $4e
    ld c, a                                       ; $522d: $4f
    ld d, b                                       ; $522e: $50
    ld hl, sp-$07                                 ; $522f: $f8 $f9
    ld a, [$fcfb]                                 ; $5231: $fa $fb $fc
    db $fd                                        ; $5234: $fd
    cp $ff                                        ; $5235: $fe $ff
    ld bc, $0707                                  ; $5237: $01 $07 $07
    ld bc, $0701                                  ; $523a: $01 $01 $07
    rlca                                          ; $523d: $07
    ld b, $07                                     ; $523e: $06 $07
    rlca                                          ; $5240: $07
    rlca                                          ; $5241: $07
    ld bc, $0707                                  ; $5242: $01 $07 $07
    ld bc, $5101                                  ; $5245: $01 $01 $51
    halt                                          ; $5248: $76
    ld [hl], a                                    ; $5249: $77
    ld a, b                                       ; $524a: $78
    ld d, h                                       ; $524b: $54
    ld a, c                                       ; $524c: $79
    ld a, d                                       ; $524d: $7a
    ld a, e                                       ; $524e: $7b
    ld bc, $0302                                  ; $524f: $01 $02 $03
    inc b                                         ; $5252: $04
    dec b                                         ; $5253: $05
    ld b, $07                                     ; $5254: $06 $07
    ld [$0607], sp                                ; $5256: $08 $07 $06
    ld b, $07                                     ; $5259: $06 $07
    ld bc, $0101                                  ; $525b: $01 $01 $01
    ld b, $01                                     ; $525e: $06 $01
    ld bc, $0601                                  ; $5260: $01 $01 $06
    ld bc, $0701                                  ; $5263: $01 $01 $07
    rlca                                          ; $5266: $07
    ld c, c                                       ; $5267: $49
    ld c, d                                       ; $5268: $4a
    ld c, e                                       ; $5269: $4b
    ld c, h                                       ; $526a: $4c
    ld c, l                                       ; $526b: $4d
    ld c, [hl]                                    ; $526c: $4e
    ld c, a                                       ; $526d: $4f
    ld d, b                                       ; $526e: $50
    ld hl, sp-$07                                 ; $526f: $f8 $f9
    ld a, [$fcfb]                                 ; $5271: $fa $fb $fc
    db $fd                                        ; $5274: $fd
    cp $ff                                        ; $5275: $fe $ff
    ld bc, $0101                                  ; $5277: $01 $01 $01
    ld b, $01                                     ; $527a: $06 $01
    ld bc, $0606                                  ; $527c: $01 $06 $06
    ld b, $06                                     ; $527f: $06 $06
    rlca                                          ; $5281: $07
    ld bc, $0601                                  ; $5282: $01 $01 $06
    ld bc, $1901                                  ; $5285: $01 $01 $19
    ld a, [de]                                    ; $5288: $1a
    dec de                                        ; $5289: $1b
    inc e                                         ; $528a: $1c
    push hl                                       ; $528b: $e5
    ld e, $1f                                     ; $528c: $1e $1f
    jr nz, @-$18                                  ; $528e: $20 $e6

    ld [hl+], a                                   ; $5290: $22
    inc hl                                        ; $5291: $23
    inc h                                         ; $5292: $24
    pop de                                        ; $5293: $d1
    ld h, $27                                     ; $5294: $26 $27
    jr z, @+$03                                   ; $5296: $28 $01

    ld bc, $0601                                  ; $5298: $01 $01 $06
    ld a, [bc]                                    ; $529b: $0a
    inc b                                         ; $529c: $04
    ld bc, $0a06                                  ; $529d: $01 $06 $0a
    inc b                                         ; $52a0: $04
    rlca                                          ; $52a1: $07
    rlca                                          ; $52a2: $07
    ld a, [bc]                                    ; $52a3: $0a
    inc b                                         ; $52a4: $04
    rlca                                          ; $52a5: $07
    ld b, $09                                     ; $52a6: $06 $09
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
    jr @+$09                                      ; $52b6: $18 $07

    ld bc, $0107                                  ; $52b8: $01 $07 $01
    ld bc, $0101                                  ; $52bb: $01 $01 $01
    ld bc, $0601                                  ; $52be: $01 $01 $06
    ld b, $01                                     ; $52c1: $06 $01
    rlca                                          ; $52c3: $07
    ld bc, $0607                                  ; $52c4: $01 $07 $06
    add hl, de                                    ; $52c7: $19
    ld a, [de]                                    ; $52c8: $1a
    dec de                                        ; $52c9: $1b
    inc e                                         ; $52ca: $1c
    dec e                                         ; $52cb: $1d
    ld e, $1f                                     ; $52cc: $1e $1f
    jr nz, @+$23                                  ; $52ce: $20 $21

    ld [hl+], a                                   ; $52d0: $22
    inc hl                                        ; $52d1: $23
    inc h                                         ; $52d2: $24
    dec h                                         ; $52d3: $25
    ld h, $27                                     ; $52d4: $26 $27
    jr z, @+$09                                   ; $52d6: $28 $07

    rlca                                          ; $52d8: $07
    ld bc, $0701                                  ; $52d9: $01 $01 $07
    ld b, $06                                     ; $52dc: $06 $06
    ld b, $06                                     ; $52de: $06 $06
    ld bc, $0707                                  ; $52e0: $01 $07 $07
    ld b, $01                                     ; $52e3: $06 $01
    rlca                                          ; $52e5: $07
    rlca                                          ; $52e6: $07
    add hl, bc                                    ; $52e7: $09
    ld a, [bc]                                    ; $52e8: $0a
    dec bc                                        ; $52e9: $0b
    inc c                                         ; $52ea: $0c
    dec c                                         ; $52eb: $0d
    ld c, $0f                                     ; $52ec: $0e $0f
    push hl                                       ; $52ee: $e5
    ld de, $1312                                  ; $52ef: $11 $12 $13
    and $15                                       ; $52f2: $e6 $15
    ld d, $17                                     ; $52f4: $16 $17
    pop de                                        ; $52f6: $d1
    ld bc, $0107                                  ; $52f7: $01 $07 $01
    ld bc, $0107                                  ; $52fa: $01 $07 $01
    ld bc, $012a                                  ; $52fd: $01 $2a $01
    rlca                                          ; $5300: $07
    ld bc, $012a                                  ; $5301: $01 $2a $01
    ld b, $01                                     ; $5304: $06 $01
    ld a, [hl+]                                   ; $5306: $2a
    ld l, a                                       ; $5307: $6f
    ld [hl], b                                    ; $5308: $70
    or c                                          ; $5309: $b1
    ld [hl], c                                    ; $530a: $71
    ld d, h                                       ; $530b: $54
    ld a, c                                       ; $530c: $79
    ld a, d                                       ; $530d: $7a
    ld a, e                                       ; $530e: $7b
    ld bc, $0302                                  ; $530f: $01 $02 $03
    inc b                                         ; $5312: $04
    dec b                                         ; $5313: $05
    ld b, $07                                     ; $5314: $06 $07
    ld [$0000], sp                                ; $5316: $08 $00 $00
    ld [$0400], sp                                ; $5319: $08 $00 $04
    inc b                                         ; $531c: $04
    inc b                                         ; $531d: $04
    inc b                                         ; $531e: $04
    ld bc, $0606                                  ; $531f: $01 $06 $06
    ld bc, $0106                                  ; $5322: $01 $06 $01
    ld bc, $7207                                  ; $5325: $01 $07 $72
    ld [hl], c                                    ; $5328: $71
    or c                                          ; $5329: $b1
    or d                                          ; $532a: $b2
    ld c, l                                       ; $532b: $4d
    ld c, [hl]                                    ; $532c: $4e
    ld c, a                                       ; $532d: $4f
    ld d, b                                       ; $532e: $50
    ld hl, sp-$07                                 ; $532f: $f8 $f9
    ld a, [$fcfb]                                 ; $5331: $fa $fb $fc
    db $fd                                        ; $5334: $fd
    cp $ff                                        ; $5335: $fe $ff
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    ld [$0408], sp                                ; $5339: $08 $08 $04
    inc b                                         ; $533c: $04
    inc b                                         ; $533d: $04
    inc b                                         ; $533e: $04
    ld b, $01                                     ; $533f: $06 $01
    ld bc, $0601                                  ; $5341: $01 $01 $06
    ld bc, $0101                                  ; $5344: $01 $01 $01
    ld d, c                                       ; $5347: $51
    halt                                          ; $5348: $76
    ld [hl], a                                    ; $5349: $77
    ld sp, $7954                                  ; $534a: $31 $54 $79
    ld a, d                                       ; $534d: $7a
    ld [hl-], a                                   ; $534e: $32
    ld bc, $0302                                  ; $534f: $01 $02 $03
    inc sp                                        ; $5352: $33
    dec b                                         ; $5353: $05
    ld b, $07                                     ; $5354: $06 $07
    inc [hl]                                      ; $5356: $34
    inc b                                         ; $5357: $04
    inc b                                         ; $5358: $04
    inc b                                         ; $5359: $04
    ld c, $04                                     ; $535a: $0e $04
    inc b                                         ; $535c: $04
    inc b                                         ; $535d: $04
    ld c, $01                                     ; $535e: $0e $01
    ld bc, $0e04                                  ; $5360: $01 $04 $0e
    rlca                                          ; $5363: $07
    rlca                                          ; $5364: $07
    inc b                                         ; $5365: $04
    ld c, $35                                     ; $5366: $0e $35
    jp nc, $d1d1                                  ; $5368: $d2 $d1 $d1

    dec [hl]                                      ; $536b: $35
    jp nc, $d1d1                                  ; $536c: $d2 $d1 $d1

    ld [hl], $d2                                  ; $536f: $36 $d2
    pop de                                        ; $5371: $d1
    pop de                                        ; $5372: $d1
    ld [hl], $d2                                  ; $5373: $36 $d2
    pop de                                        ; $5375: $d1
    pop de                                        ; $5376: $d1
    ld c, $82                                     ; $5377: $0e $82
    add d                                         ; $5379: $82
    ld [bc], a                                    ; $537a: $02
    ld c, $82                                     ; $537b: $0e $82
    add d                                         ; $537d: $82
    ld [bc], a                                    ; $537e: $02
    ld c, $82                                     ; $537f: $0e $82
    add d                                         ; $5381: $82
    ld [bc], a                                    ; $5382: $02
    ld c, $82                                     ; $5383: $0e $82
    add d                                         ; $5385: $82
    ld [bc], a                                    ; $5386: $02
    add hl, de                                    ; $5387: $19
    ld a, [de]                                    ; $5388: $1a
    dec de                                        ; $5389: $1b
    inc e                                         ; $538a: $1c
    dec e                                         ; $538b: $1d
    ld e, $1f                                     ; $538c: $1e $1f
    jr nz, @+$23                                  ; $538e: $20 $21

    ld [hl+], a                                   ; $5390: $22
    inc hl                                        ; $5391: $23
    inc h                                         ; $5392: $24
    dec h                                         ; $5393: $25
    ld h, $27                                     ; $5394: $26 $27
    jr z, @+$03                                   ; $5396: $28 $01

    ld bc, $0107                                  ; $5398: $01 $07 $01
    rlca                                          ; $539b: $07
    ld b, $01                                     ; $539c: $06 $01
    ld b, $01                                     ; $539e: $06 $01
    ld b, $06                                     ; $53a0: $06 $06
    ld b, $01                                     ; $53a2: $06 $01
    ld bc, $0606                                  ; $53a4: $01 $06 $06
    add hl, bc                                    ; $53a7: $09
    ld a, [bc]                                    ; $53a8: $0a
    dec bc                                        ; $53a9: $0b
    inc c                                         ; $53aa: $0c
    dec c                                         ; $53ab: $0d
    ld c, $0f                                     ; $53ac: $0e $0f
    db $10                                        ; $53ae: $10
    ld de, $1312                                  ; $53af: $11 $12 $13
    inc d                                         ; $53b2: $14
    dec d                                         ; $53b3: $15
    ld d, $17                                     ; $53b4: $16 $17
    jr @+$08                                      ; $53b6: $18 $06

    ld b, $01                                     ; $53b8: $06 $01
    rlca                                          ; $53ba: $07
    ld b, $01                                     ; $53bb: $06 $01
    ld bc, $0601                                  ; $53bd: $01 $01 $06
    rlca                                          ; $53c0: $07
    ld b, $01                                     ; $53c1: $06 $01
    ld b, $01                                     ; $53c3: $06 $01
    ld bc, $1907                                  ; $53c5: $01 $07 $19
    ld a, [de]                                    ; $53c8: $1a
    dec de                                        ; $53c9: $1b
    scf                                           ; $53ca: $37
    dec e                                         ; $53cb: $1d
    ld e, $1f                                     ; $53cc: $1e $1f
    jr c, @+$23                                   ; $53ce: $38 $21

    ld [hl+], a                                   ; $53d0: $22
    inc hl                                        ; $53d1: $23
    add hl, sp                                    ; $53d2: $39
    dec h                                         ; $53d3: $25
    ld h, $27                                     ; $53d4: $26 $27
    ld a, [hl-]                                   ; $53d6: $3a
    ld b, $06                                     ; $53d7: $06 $06
    inc b                                         ; $53d9: $04
    ld c, $01                                     ; $53da: $0e $01
    ld b, $04                                     ; $53dc: $06 $04
    ld c, $01                                     ; $53de: $0e $01
    rlca                                          ; $53e0: $07
    inc b                                         ; $53e1: $04
    ld c, $01                                     ; $53e2: $0e $01
    ld bc, $0e04                                  ; $53e4: $01 $04 $0e
    dec sp                                        ; $53e7: $3b
    jp nc, $d1d1                                  ; $53e8: $d2 $d1 $d1

    dec sp                                        ; $53eb: $3b
    jp nc, $d1d1                                  ; $53ec: $d2 $d1 $d1

    inc a                                         ; $53ef: $3c
    jp nc, $d1d1                                  ; $53f0: $d2 $d1 $d1

    dec a                                         ; $53f3: $3d
    jp nc, $d1d1                                  ; $53f4: $d2 $d1 $d1

    ld c, $82                                     ; $53f7: $0e $82
    add d                                         ; $53f9: $82
    ld [bc], a                                    ; $53fa: $02
    ld c, $82                                     ; $53fb: $0e $82
    add d                                         ; $53fd: $82
    ld [bc], a                                    ; $53fe: $02
    ld c, $82                                     ; $53ff: $0e $82
    add d                                         ; $5401: $82
    ld [bc], a                                    ; $5402: $02
    ld c, $82                                     ; $5403: $0e $82
    add d                                         ; $5405: $82
    ld [bc], a                                    ; $5406: $02
    ld d, c                                       ; $5407: $51
    halt                                          ; $5408: $76
    ld [hl], a                                    ; $5409: $77
    ld a, b                                       ; $540a: $78
    ld d, h                                       ; $540b: $54
    ld a, c                                       ; $540c: $79
    ld a, d                                       ; $540d: $7a
    ld a, e                                       ; $540e: $7b
    ld bc, $0302                                  ; $540f: $01 $02 $03
    inc b                                         ; $5412: $04
    dec b                                         ; $5413: $05
    ld b, $07                                     ; $5414: $06 $07
    ld [$0606], sp                                ; $5416: $08 $06 $06
    ld b, $06                                     ; $5419: $06 $06
    ld bc, $0701                                  ; $541b: $01 $01 $07
    ld bc, $0101                                  ; $541e: $01 $01 $01
    rlca                                          ; $5421: $07
    ld b, $01                                     ; $5422: $06 $01
    rlca                                          ; $5424: $07
    ld bc, $4906                                  ; $5425: $01 $06 $49
    ld c, d                                       ; $5428: $4a
    ld c, e                                       ; $5429: $4b
    ld c, h                                       ; $542a: $4c
    ld c, l                                       ; $542b: $4d
    ld c, [hl]                                    ; $542c: $4e
    ld c, a                                       ; $542d: $4f
    ld d, b                                       ; $542e: $50
    ld hl, sp-$07                                 ; $542f: $f8 $f9
    ld a, [$fcfb]                                 ; $5431: $fa $fb $fc
    db $fd                                        ; $5434: $fd
    cp $ff                                        ; $5435: $fe $ff
    ld bc, $0107                                  ; $5437: $01 $07 $01
    ld bc, $0107                                  ; $543a: $01 $07 $01
    ld b, $07                                     ; $543d: $06 $07
    ld bc, $0707                                  ; $543f: $01 $07 $07
    ld bc, $0106                                  ; $5442: $01 $06 $01
    ld bc, $5101                                  ; $5445: $01 $01 $51
    halt                                          ; $5448: $76
    ld [hl], a                                    ; $5449: $77
    ld a, $54                                     ; $544a: $3e $54
    ld a, c                                       ; $544c: $79
    ld a, d                                       ; $544d: $7a
    ccf                                           ; $544e: $3f
    ld bc, $0302                                  ; $544f: $01 $02 $03
    ld b, b                                       ; $5452: $40
    dec b                                         ; $5453: $05
    ld b, $07                                     ; $5454: $06 $07
    ld b, c                                       ; $5456: $41
    rlca                                          ; $5457: $07
    ld bc, $0e04                                  ; $5458: $01 $04 $0e
    rlca                                          ; $545b: $07
    ld bc, $0e04                                  ; $545c: $01 $04 $0e
    ld bc, $0401                                  ; $545f: $01 $01 $04
    ld c, $01                                     ; $5462: $0e $01
    rlca                                          ; $5464: $07
    inc b                                         ; $5465: $04
    ld c, $42                                     ; $5466: $0e $42
    jp nc, $d1d1                                  ; $5468: $d2 $d1 $d1

    ld b, e                                       ; $546b: $43
    jp nc, $d1d1                                  ; $546c: $d2 $d1 $d1

    rst $38                                       ; $546f: $ff
    ld bc, $d1d1                                  ; $5470: $01 $d1 $d1
    jp nc, $d1d1                                  ; $5473: $d2 $d1 $d1

    pop de                                        ; $5476: $d1
    ld c, $82                                     ; $5477: $0e $82
    add d                                         ; $5479: $82
    ld [bc], a                                    ; $547a: $02
    ld c, $82                                     ; $547b: $0e $82
    add d                                         ; $547d: $82
    ld [bc], a                                    ; $547e: $02
    adc d                                         ; $547f: $8a
    adc d                                         ; $5480: $8a
    ld [bc], a                                    ; $5481: $02
    ld [bc], a                                    ; $5482: $02
    add d                                         ; $5483: $82
    add d                                         ; $5484: $82
    ld [bc], a                                    ; $5485: $02
    ld [bc], a                                    ; $5486: $02
    ld a, [hl]                                    ; $5487: $7e
    ld e, a                                       ; $5488: $5f
    ld e, [hl]                                    ; $5489: $5e
    ld e, l                                       ; $548a: $5d
    add c                                         ; $548b: $81
    ld h, e                                       ; $548c: $63
    ld h, d                                       ; $548d: $62
    inc d                                         ; $548e: $14
    add d                                         ; $548f: $82
    call nc, Call_000_1565                        ; $5490: $d4 $65 $15
    db $dd                                        ; $5493: $dd
    call nc, $d2d3                                ; $5494: $d4 $d3 $d2
    nop                                           ; $5497: $00
    jr nz, @+$22                                  ; $5498: $20 $20

    jr nz, @+$0a                                  ; $549a: $20 $08

    jr nz, jr_089_54be                            ; $549c: $20 $20

    ld [$0008], sp                                ; $549e: $08 $08 $00
    jr nz, jr_089_54ab                            ; $54a1: $20 $08

    ld [$2828], sp                                ; $54a3: $08 $28 $28
    jr z, jr_089_54c1                             ; $54a6: $28 $19

    ld a, [de]                                    ; $54a8: $1a
    dec de                                        ; $54a9: $1b
    ld b, h                                       ; $54aa: $44

jr_089_54ab:
    rrca                                          ; $54ab: $0f
    ld e, $1f                                     ; $54ac: $1e $1f
    ld b, l                                       ; $54ae: $45
    ld de, $2322                                  ; $54af: $11 $22 $23
    ld b, [hl]                                    ; $54b2: $46
    pop de                                        ; $54b3: $d1
    ld h, $27                                     ; $54b4: $26 $27
    ld b, a                                       ; $54b6: $47
    rlca                                          ; $54b7: $07
    ld bc, $0e04                                  ; $54b8: $01 $04 $0e
    ld a, [hl+]                                   ; $54bb: $2a
    inc b                                         ; $54bc: $04
    inc b                                         ; $54bd: $04

jr_089_54be:
    ld c, $2a                                     ; $54be: $0e $2a
    inc b                                         ; $54c0: $04

jr_089_54c1:
    inc b                                         ; $54c1: $04
    ld c, $0a                                     ; $54c2: $0e $0a
    inc b                                         ; $54c4: $04
    inc b                                         ; $54c5: $04
    ld c, $49                                     ; $54c6: $0e $49
    ld c, d                                       ; $54c8: $4a
    ld c, e                                       ; $54c9: $4b
    inc c                                         ; $54ca: $0c
    ld c, l                                       ; $54cb: $4d
    ld c, [hl]                                    ; $54cc: $4e
    ld c, a                                       ; $54cd: $4f
    dec c                                         ; $54ce: $0d
    ld hl, sp-$07                                 ; $54cf: $f8 $f9
    ld a, [$fcd0]                                 ; $54d1: $fa $d0 $fc
    db $fd                                        ; $54d4: $fd
    cp $7c                                        ; $54d5: $fe $7c
    inc b                                         ; $54d7: $04
    rlca                                          ; $54d8: $07
    rlca                                          ; $54d9: $07
    ld a, [bc]                                    ; $54da: $0a
    inc b                                         ; $54db: $04
    rlca                                          ; $54dc: $07
    rlca                                          ; $54dd: $07
    ld a, [bc]                                    ; $54de: $0a
    inc b                                         ; $54df: $04
    ld bc, $0a07                                  ; $54e0: $01 $07 $0a
    inc b                                         ; $54e3: $04
    rlca                                          ; $54e4: $07
    ld bc, $1202                                  ; $54e5: $01 $02 $12
    sub $d7                                       ; $54e8: $d6 $d7
    ret c                                         ; $54ea: $d8

    inc de                                        ; $54eb: $13
    jp c, $dbd4                                   ; $54ec: $da $d4 $db

    db $e4                                        ; $54ef: $e4
    and d                                         ; $54f0: $a2
    sub d                                         ; $54f1: $92
    call c, Call_089_6261                         ; $54f2: $dc $61 $62
    ld h, e                                       ; $54f5: $63
    call nc, Call_000_0808                        ; $54f6: $d4 $08 $08
    ld [$0808], sp                                ; $54f9: $08 $08 $08
    ld [$0800], sp                                ; $54fc: $08 $00 $08
    jr z, jr_089_5549                             ; $54ff: $28 $48

    ld [$0008], sp                                ; $5501: $08 $08 $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    sbc $d7                                       ; $5507: $de $d7
    sub $61                                       ; $5509: $d6 $61
    ldh [$d4], a                                  ; $550b: $e0 $d4
    jp c, $e2d9                                   ; $550d: $da $d9 $e2

    sub d                                         ; $5510: $92
    db $e3                                        ; $5511: $e3
    jp nc, Jump_089_63d4                          ; $5512: $d2 $d4 $63

    ld h, d                                       ; $5515: $62
    rst $18                                       ; $5516: $df
    ld [$2828], sp                                ; $5517: $08 $28 $28
    jr nz, jr_089_5524                            ; $551a: $20 $08

    nop                                           ; $551c: $00
    jr z, jr_089_5547                             ; $551d: $28 $28

    ld [$0828], sp                                ; $551f: $08 $28 $08
    jr z, jr_089_5524                             ; $5522: $28 $00

jr_089_5524:
    jr nz, jr_089_5546                            ; $5524: $20 $20

    ld [$0a09], sp                                ; $5526: $08 $09 $0a
    dec bc                                        ; $5529: $0b
    ld a, l                                       ; $552a: $7d
    dec c                                         ; $552b: $0d
    ld c, $0f                                     ; $552c: $0e $0f
    pop de                                        ; $552e: $d1
    ld de, $1312                                  ; $552f: $11 $12 $13
    ld c, b                                       ; $5532: $48
    dec d                                         ; $5533: $15
    ld d, $17                                     ; $5534: $16 $17
    ld c, c                                       ; $5536: $49
    inc b                                         ; $5537: $04
    rlca                                          ; $5538: $07
    ld b, $02                                     ; $5539: $06 $02
    inc b                                         ; $553b: $04
    rlca                                          ; $553c: $07
    rlca                                          ; $553d: $07
    ld a, [hl+]                                   ; $553e: $2a
    inc b                                         ; $553f: $04
    rlca                                          ; $5540: $07
    ld b, $0a                                     ; $5541: $06 $0a
    inc b                                         ; $5543: $04
    ld b, $01                                     ; $5544: $06 $01

jr_089_5546:
    ld a, [bc]                                    ; $5546: $0a

jr_089_5547:
    ld h, h                                       ; $5547: $64
    ld h, l                                       ; $5548: $65

jr_089_5549:
    db $d3                                        ; $5549: $d3
    add sp, -$2e                                  ; $554a: $e8 $d2
    call nc, $ebea                                ; $554c: $d4 $ea $eb
    ld h, c                                       ; $554f: $61
    db $ed                                        ; $5550: $ed
    call nc, $17ee                                ; $5551: $d4 $ee $17
    db $f4                                        ; $5554: $f4
    call nc, Call_000_00f5                        ; $5555: $d4 $f5 $00
    nop                                           ; $5558: $00
    ld [$0808], sp                                ; $5559: $08 $08 $08
    nop                                           ; $555c: $00
    ld [$0008], sp                                ; $555d: $08 $08 $00
    ld [$0800], sp                                ; $5560: $08 $00 $08
    jr z, @+$0a                                   ; $5563: $28 $08

    nop                                           ; $5565: $00
    ld [$f0ef], sp                                ; $5566: $08 $ef $f0
    ld h, l                                       ; $5569: $65
    rst $20                                       ; $556a: $e7
    pop af                                        ; $556b: $f1
    ld [$e9d4], a                                 ; $556c: $ea $d4 $e9
    xor $d4                                       ; $556f: $ee $d4
    db $ed                                        ; $5571: $ed
    ld c, d                                       ; $5572: $4a
    ld a, [$f4fb]                                 ; $5573: $fa $fb $f4
    rla                                           ; $5576: $17
    ld [$2008], sp                                ; $5577: $08 $08 $20
    jr z, @+$0a                                   ; $557a: $28 $08

    jr z, jr_089_557e                             ; $557c: $28 $00

jr_089_557e:
    jr z, @+$2a                                   ; $557e: $28 $28

    nop                                           ; $5580: $00
    jr z, jr_089_558b                             ; $5581: $28 $08

    ld [$2808], sp                                ; $5583: $08 $08 $28
    ld [$4a49], sp                                ; $5586: $08 $49 $4a
    ld c, e                                       ; $5589: $4b
    ret nc                                        ; $558a: $d0

jr_089_558b:
    ld c, l                                       ; $558b: $4d
    ld c, [hl]                                    ; $558c: $4e
    ld c, a                                       ; $558d: $4f
    push hl                                       ; $558e: $e5
    ld hl, sp-$07                                 ; $558f: $f8 $f9
    ld a, [$fce6]                                 ; $5591: $fa $e6 $fc
    db $fd                                        ; $5594: $fd
    cp $d1                                        ; $5595: $fe $d1
    inc b                                         ; $5597: $04
    ld bc, $0a07                                  ; $5598: $01 $07 $0a
    inc b                                         ; $559b: $04
    rlca                                          ; $559c: $07
    ld bc, $042a                                  ; $559d: $01 $2a $04
    rlca                                          ; $55a0: $07
    ld bc, $042a                                  ; $55a1: $01 $2a $04
    ld bc, $2a07                                  ; $55a4: $01 $07 $2a
    or $f7                                        ; $55a7: $f6 $f7
    sub d                                         ; $55a9: $92
    ld hl, sp-$21                                 ; $55aa: $f8 $df
    ld h, d                                       ; $55ac: $62
    ld h, e                                       ; $55ad: $63
    call nc, Call_089_65e7                        ; $55ae: $d4 $e7 $65
    call nc, Call_000_0af9                        ; $55b1: $d4 $f9 $0a
    inc b                                         ; $55b4: $04
    call nc, Call_000_0805                        ; $55b5: $d4 $05 $08
    ld [$0808], sp                                ; $55b8: $08 $08 $08
    jr z, jr_089_55bd                             ; $55bb: $28 $00

jr_089_55bd:
    nop                                           ; $55bd: $00
    nop                                           ; $55be: $00
    ld [$0000], sp                                ; $55bf: $08 $00 $00
    ld [$0828], sp                                ; $55c2: $08 $28 $08
    nop                                           ; $55c5: $00
    ld [$fdfc], sp                                ; $55c6: $08 $fc $fd
    rst $30                                       ; $55c9: $f7
    or $d4                                        ; $55ca: $f6 $d4
    ld h, e                                       ; $55cc: $63
    ld h, d                                       ; $55cd: $62
    rst $18                                       ; $55ce: $df
    cp $d4                                        ; $55cf: $fe $d4
    ld h, l                                       ; $55d1: $65
    rst $20                                       ; $55d2: $e7
    add hl, bc                                    ; $55d3: $09
    call nc, $d204                                ; $55d4: $d4 $04 $d2
    ld [$2808], sp                                ; $55d7: $08 $08 $28
    jr z, jr_089_55dc                             ; $55da: $28 $00

jr_089_55dc:
    jr nz, @+$22                                  ; $55dc: $20 $20

    ld [$0008], sp                                ; $55de: $08 $08 $00
    jr nz, @+$2a                                  ; $55e1: $20 $28

    ld [$2800], sp                                ; $55e3: $08 $00 $28
    jr z, jr_089_55f1                             ; $55e6: $28 $09

    ld a, [bc]                                    ; $55e8: $0a
    dec bc                                        ; $55e9: $0b
    push hl                                       ; $55ea: $e5
    dec c                                         ; $55eb: $0d
    ld c, $0f                                     ; $55ec: $0e $0f
    and $11                                       ; $55ee: $e6 $11
    ld [de], a                                    ; $55f0: $12

jr_089_55f1:
    inc de                                        ; $55f1: $13
    pop de                                        ; $55f2: $d1
    dec d                                         ; $55f3: $15
    ld d, $17                                     ; $55f4: $16 $17
    jr jr_089_55fc                                ; $55f6: $18 $04

    ld b, $01                                     ; $55f8: $06 $01
    ld a, [hl+]                                   ; $55fa: $2a
    inc b                                         ; $55fb: $04

jr_089_55fc:
    rlca                                          ; $55fc: $07
    ld bc, $042a                                  ; $55fd: $01 $2a $04
    ld bc, $2a06                                  ; $5600: $01 $06 $2a
    inc b                                         ; $5603: $04
    rlca                                          ; $5604: $07
    rlca                                          ; $5605: $07
    ld bc, $06f2                                  ; $5606: $01 $f2 $06
    call nc, $0bd4                                ; $5609: $d4 $d4 $0b
    ld [$d4d4], sp                                ; $560c: $08 $d4 $d4
    ld h, a                                       ; $560f: $67
    ld l, b                                       ; $5610: $68
    ld l, c                                       ; $5611: $69
    ld l, c                                       ; $5612: $69
    ld l, a                                       ; $5613: $6f
    ld [hl], b                                    ; $5614: $70
    or c                                          ; $5615: $b1
    ld [hl], c                                    ; $5616: $71
    jr z, jr_089_5621                             ; $5617: $28 $08

    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    jr z, jr_089_5625                             ; $561b: $28 $08

    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    nop                                           ; $561f: $00
    nop                                           ; $5620: $00

jr_089_5621:
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00

jr_089_5625:
    ld [$d400], sp                                ; $5625: $08 $00 $d4
    call nc, $f206                                ; $5628: $d4 $06 $f2
    call nc, $08d4                                ; $562b: $d4 $d4 $08
    dec bc                                        ; $562e: $0b
    adc [hl]                                      ; $562f: $8e
    call nc, $cf69                                ; $5630: $d4 $69 $cf
    ld [hl], d                                    ; $5633: $72
    ld [hl], c                                    ; $5634: $71
    or c                                          ; $5635: $b1
    or d                                          ; $5636: $b2
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    jr z, @+$0a                                   ; $5639: $28 $08

    nop                                           ; $563b: $00
    nop                                           ; $563c: $00
    jr z, @+$0a                                   ; $563d: $28 $08

    ld [$2000], sp                                ; $563f: $08 $00 $20
    ld [$0000], sp                                ; $5642: $08 $00 $00
    ld [$7c08], sp                                ; $5645: $08 $08 $7c
    halt                                          ; $5648: $76
    ld [hl], a                                    ; $5649: $77
    ld a, b                                       ; $564a: $78
    ld a, l                                       ; $564b: $7d
    ld a, c                                       ; $564c: $79
    ld a, d                                       ; $564d: $7a
    ld a, e                                       ; $564e: $7b
    ret nc                                        ; $564f: $d0

    ld [bc], a                                    ; $5650: $02
    inc bc                                        ; $5651: $03
    inc b                                         ; $5652: $04
    push hl                                       ; $5653: $e5
    ld b, $07                                     ; $5654: $06 $07
    ld [$0422], sp                                ; $5656: $08 $22 $04
    ld bc, $2206                                  ; $5659: $01 $06 $22
    inc b                                         ; $565c: $04
    rlca                                          ; $565d: $07
    ld bc, $042a                                  ; $565e: $01 $2a $04
    rlca                                          ; $5661: $07
    ld b, $0a                                     ; $5662: $06 $0a
    inc b                                         ; $5664: $04
    ld bc, $4906                                  ; $5665: $01 $06 $49
    ld c, d                                       ; $5668: $4a
    ld c, e                                       ; $5669: $4b
    ld c, h                                       ; $566a: $4c
    ld c, l                                       ; $566b: $4d
    ld c, [hl]                                    ; $566c: $4e
    ld c, a                                       ; $566d: $4f
    ld d, b                                       ; $566e: $50
    ld hl, sp-$07                                 ; $566f: $f8 $f9
    ld a, [$fcfb]                                 ; $5671: $fa $fb $fc
    db $fd                                        ; $5674: $fd
    cp $ff                                        ; $5675: $fe $ff
    ld bc, $0101                                  ; $5677: $01 $01 $01
    rlca                                          ; $567a: $07
    ld bc, $0107                                  ; $567b: $01 $07 $01
    rlca                                          ; $567e: $07
    ld bc, $0701                                  ; $567f: $01 $01 $07
    ld bc, $0707                                  ; $5682: $01 $07 $07
    rlca                                          ; $5685: $07
    rlca                                          ; $5686: $07
    ld d, c                                       ; $5687: $51
    halt                                          ; $5688: $76
    ld [hl], a                                    ; $5689: $77
    ld a, b                                       ; $568a: $78
    ld d, h                                       ; $568b: $54
    ld a, c                                       ; $568c: $79
    ld a, d                                       ; $568d: $7a
    ld a, e                                       ; $568e: $7b
    ld bc, $0302                                  ; $568f: $01 $02 $03
    inc b                                         ; $5692: $04
    dec b                                         ; $5693: $05
    ld b, $07                                     ; $5694: $06 $07
    ld [$0106], sp                                ; $5696: $08 $06 $01
    ld bc, $0701                                  ; $5699: $01 $01 $07
    ld bc, $0601                                  ; $569c: $01 $01 $06
    ld bc, $0601                                  ; $569f: $01 $01 $06
    ld b, $06                                     ; $56a2: $06 $06
    ld b, $01                                     ; $56a4: $06 $01
    rlca                                          ; $56a6: $07
    ld c, c                                       ; $56a7: $49
    ld c, d                                       ; $56a8: $4a
    ld c, e                                       ; $56a9: $4b
    ld c, b                                       ; $56aa: $48
    ld c, l                                       ; $56ab: $4d
    ld c, [hl]                                    ; $56ac: $4e
    ld c, a                                       ; $56ad: $4f
    ld c, c                                       ; $56ae: $49
    ld hl, sp-$07                                 ; $56af: $f8 $f9
    ld a, [$fcd0]                                 ; $56b1: $fa $d0 $fc
    db $fd                                        ; $56b4: $fd
    cp $0c                                        ; $56b5: $fe $0c
    ld b, $06                                     ; $56b7: $06 $06
    ld bc, $010a                                  ; $56b9: $01 $0a $01
    ld bc, $0a07                                  ; $56bc: $01 $07 $0a
    ld b, $07                                     ; $56bf: $06 $07
    rlca                                          ; $56c1: $07
    ld a, [bc]                                    ; $56c2: $0a
    ld bc, $0701                                  ; $56c3: $01 $01 $07
    ld a, [bc]                                    ; $56c6: $0a
    and $1a                                       ; $56c7: $e6 $1a
    dec de                                        ; $56c9: $1b
    inc e                                         ; $56ca: $1c
    pop de                                        ; $56cb: $d1
    ld e, $1f                                     ; $56cc: $1e $1f
    jr nz, jr_089_574c                            ; $56ce: $20 $7c

    ld [hl+], a                                   ; $56d0: $22
    inc hl                                        ; $56d1: $23
    inc h                                         ; $56d2: $24
    ld a, l                                       ; $56d3: $7d
    ld h, $27                                     ; $56d4: $26 $27
    jr z, jr_089_56e2                             ; $56d6: $28 $0a

    inc b                                         ; $56d8: $04
    rlca                                          ; $56d9: $07
    ld b, $0a                                     ; $56da: $06 $0a
    inc b                                         ; $56dc: $04
    ld bc, $2201                                  ; $56dd: $01 $01 $22
    inc b                                         ; $56e0: $04
    rlca                                          ; $56e1: $07

jr_089_56e2:
    ld bc, $0422                                  ; $56e2: $01 $22 $04
    rlca                                          ; $56e5: $07
    ld b, $09                                     ; $56e6: $06 $09
    ld a, [bc]                                    ; $56e8: $0a
    dec bc                                        ; $56e9: $0b
    inc c                                         ; $56ea: $0c
    dec c                                         ; $56eb: $0d
    ld c, $0f                                     ; $56ec: $0e $0f
    db $10                                        ; $56ee: $10
    ld de, $1312                                  ; $56ef: $11 $12 $13
    inc d                                         ; $56f2: $14
    dec d                                         ; $56f3: $15
    ld d, $17                                     ; $56f4: $16 $17
    jr @+$03                                      ; $56f6: $18 $01

    ld b, $07                                     ; $56f8: $06 $07
    rlca                                          ; $56fa: $07
    ld bc, $0707                                  ; $56fb: $01 $07 $07
    ld bc, $0107                                  ; $56fe: $01 $07 $01
    ld b, $07                                     ; $5701: $06 $07
    ld b, $01                                     ; $5703: $06 $01
    ld b, $01                                     ; $5705: $06 $01
    add hl, de                                    ; $5707: $19
    ld a, [de]                                    ; $5708: $1a
    dec de                                        ; $5709: $1b
    inc e                                         ; $570a: $1c
    dec e                                         ; $570b: $1d
    ld e, $1f                                     ; $570c: $1e $1f
    jr nz, @+$23                                  ; $570e: $20 $21

    ld [hl+], a                                   ; $5710: $22
    inc hl                                        ; $5711: $23
    inc h                                         ; $5712: $24
    dec h                                         ; $5713: $25
    ld h, $27                                     ; $5714: $26 $27
    jr z, jr_089_5719                             ; $5716: $28 $01

    rlca                                          ; $5718: $07

jr_089_5719:
    ld bc, $0106                                  ; $5719: $01 $06 $01
    ld bc, $0606                                  ; $571c: $01 $06 $06
    rlca                                          ; $571f: $07
    ld b, $06                                     ; $5720: $06 $06
    rlca                                          ; $5722: $07
    ld bc, $0701                                  ; $5723: $01 $01 $07
    ld b, $09                                     ; $5726: $06 $09
    ld a, [bc]                                    ; $5728: $0a
    dec bc                                        ; $5729: $0b
    dec c                                         ; $572a: $0d
    dec c                                         ; $572b: $0d
    ld c, $0f                                     ; $572c: $0e $0f
    pop de                                        ; $572e: $d1
    ld de, $1312                                  ; $572f: $11 $12 $13
    ld c, b                                       ; $5732: $48
    dec d                                         ; $5733: $15
    ld d, $17                                     ; $5734: $16 $17
    ld c, c                                       ; $5736: $49
    ld b, $07                                     ; $5737: $06 $07
    ld bc, $010a                                  ; $5739: $01 $0a $01
    rlca                                          ; $573c: $07
    ld bc, $012a                                  ; $573d: $01 $2a $01
    ld bc, $0a07                                  ; $5740: $01 $07 $0a
    ld b, $07                                     ; $5743: $06 $07
    rlca                                          ; $5745: $07
    ld a, [bc]                                    ; $5746: $0a
    ret nc                                        ; $5747: $d0

    halt                                          ; $5748: $76
    ld [hl], a                                    ; $5749: $77
    ld a, b                                       ; $574a: $78
    push hl                                       ; $574b: $e5

jr_089_574c:
    ld a, c                                       ; $574c: $79
    ld a, d                                       ; $574d: $7a
    ld a, e                                       ; $574e: $7b
    and $02                                       ; $574f: $e6 $02
    inc bc                                        ; $5751: $03
    inc b                                         ; $5752: $04
    pop de                                        ; $5753: $d1
    ld b, $07                                     ; $5754: $06 $07
    ld [$042a], sp                                ; $5756: $08 $2a $04
    rlca                                          ; $5759: $07
    ld bc, $040a                                  ; $575a: $01 $0a $04
    rlca                                          ; $575d: $07
    ld b, $0a                                     ; $575e: $06 $0a
    inc b                                         ; $5760: $04
    rlca                                          ; $5761: $07
    ld bc, $040a                                  ; $5762: $01 $0a $04
    ld bc, $4906                                  ; $5765: $01 $06 $49
    ld c, d                                       ; $5768: $4a
    ld c, e                                       ; $5769: $4b
    ld c, h                                       ; $576a: $4c
    ld c, l                                       ; $576b: $4d
    ld c, [hl]                                    ; $576c: $4e
    ld c, a                                       ; $576d: $4f
    ld d, b                                       ; $576e: $50
    ld hl, sp-$07                                 ; $576f: $f8 $f9
    ld a, [$fcfb]                                 ; $5771: $fa $fb $fc
    db $fd                                        ; $5774: $fd
    cp $ff                                        ; $5775: $fe $ff
    ld bc, $0607                                  ; $5777: $01 $07 $06
    ld bc, $0601                                  ; $577a: $01 $01 $06
    ld bc, $0106                                  ; $577d: $01 $06 $01
    ld b, $07                                     ; $5780: $06 $07
    ld b, $07                                     ; $5782: $06 $07
    ld bc, $0607                                  ; $5784: $01 $07 $06
    ld d, c                                       ; $5787: $51
    halt                                          ; $5788: $76
    ld [hl], a                                    ; $5789: $77
    ld a, b                                       ; $578a: $78
    ld d, h                                       ; $578b: $54
    ld a, c                                       ; $578c: $79
    ld a, d                                       ; $578d: $7a
    ld a, e                                       ; $578e: $7b
    ld bc, $0302                                  ; $578f: $01 $02 $03
    inc b                                         ; $5792: $04
    dec b                                         ; $5793: $05
    ld b, $07                                     ; $5794: $06 $07
    ld [$0601], sp                                ; $5796: $08 $01 $06
    ld b, $01                                     ; $5799: $06 $01
    ld b, $01                                     ; $579b: $06 $01
    ld b, $07                                     ; $579d: $06 $07
    ld bc, $0707                                  ; $579f: $01 $07 $07
    ld bc, $0101                                  ; $57a2: $01 $01 $01
    rlca                                          ; $57a5: $07
    ld b, $49                                     ; $57a6: $06 $49
    ld c, d                                       ; $57a8: $4a
    ld c, e                                       ; $57a9: $4b
    ret nc                                        ; $57aa: $d0

    ld c, l                                       ; $57ab: $4d
    ld c, [hl]                                    ; $57ac: $4e
    ld c, a                                       ; $57ad: $4f
    rrca                                          ; $57ae: $0f
    ld hl, sp-$07                                 ; $57af: $f8 $f9
    ld a, [$fc11]                                 ; $57b1: $fa $11 $fc
    db $fd                                        ; $57b4: $fd
    cp $d1                                        ; $57b5: $fe $d1
    rlca                                          ; $57b7: $07
    ld bc, $0a01                                  ; $57b8: $01 $01 $0a
    ld bc, $0706                                  ; $57bb: $01 $06 $07
    ld a, [bc]                                    ; $57be: $0a
    ld bc, $0601                                  ; $57bf: $01 $01 $06
    ld a, [bc]                                    ; $57c2: $0a
    rlca                                          ; $57c3: $07
    ld bc, $2a01                                  ; $57c4: $01 $01 $2a
    ld c, $1a                                     ; $57c7: $0e $1a
    dec de                                        ; $57c9: $1b
    inc e                                         ; $57ca: $1c
    db $10                                        ; $57cb: $10
    ld e, $1f                                     ; $57cc: $1e $1f
    jr nz, @-$2e                                  ; $57ce: $20 $d0

    ld [hl+], a                                   ; $57d0: $22
    inc hl                                        ; $57d1: $23
    inc h                                         ; $57d2: $24
    dec h                                         ; $57d3: $25
    ld h, $27                                     ; $57d4: $26 $27
    jr z, jr_089_57e2                             ; $57d6: $28 $0a

    inc b                                         ; $57d8: $04
    ld bc, $0a01                                  ; $57d9: $01 $01 $0a
    inc b                                         ; $57dc: $04
    ld b, $06                                     ; $57dd: $06 $06
    ld a, [hl+]                                   ; $57df: $2a
    inc b                                         ; $57e0: $04
    rlca                                          ; $57e1: $07

jr_089_57e2:
    ld b, $04                                     ; $57e2: $06 $04
    inc b                                         ; $57e4: $04
    ld b, $06                                     ; $57e5: $06 $06
    add hl, bc                                    ; $57e7: $09
    ld a, [bc]                                    ; $57e8: $0a
    dec bc                                        ; $57e9: $0b
    inc c                                         ; $57ea: $0c
    dec c                                         ; $57eb: $0d
    ld c, $0f                                     ; $57ec: $0e $0f
    db $10                                        ; $57ee: $10
    ld de, $1312                                  ; $57ef: $11 $12 $13
    inc d                                         ; $57f2: $14
    dec d                                         ; $57f3: $15
    ld d, $17                                     ; $57f4: $16 $17
    jr jr_089_57ff                                ; $57f6: $18 $07

    ld bc, $0707                                  ; $57f8: $01 $07 $07
    ld bc, $0106                                  ; $57fb: $01 $06 $01
    rlca                                          ; $57fe: $07

jr_089_57ff:
    ld b, $06                                     ; $57ff: $06 $06
    ld bc, $0707                                  ; $5801: $01 $07 $07
    rlca                                          ; $5804: $07
    rlca                                          ; $5805: $07
    ld bc, $1a19                                  ; $5806: $01 $19 $1a
    dec de                                        ; $5809: $1b
    inc e                                         ; $580a: $1c
    dec e                                         ; $580b: $1d
    ld e, $1f                                     ; $580c: $1e $1f
    jr nz, jr_089_5831                            ; $580e: $20 $21

    ld [hl+], a                                   ; $5810: $22
    inc hl                                        ; $5811: $23
    inc h                                         ; $5812: $24
    dec h                                         ; $5813: $25
    ld h, $27                                     ; $5814: $26 $27
    jr z, @+$03                                   ; $5816: $28 $01

    ld bc, $0601                                  ; $5818: $01 $01 $06
    ld b, $06                                     ; $581b: $06 $06
    ld bc, $0101                                  ; $581d: $01 $01 $01
    ld bc, $0706                                  ; $5820: $01 $06 $07
    ld bc, $0107                                  ; $5823: $01 $07 $01
    ld b, $09                                     ; $5826: $06 $09
    ld a, [bc]                                    ; $5828: $0a
    dec bc                                        ; $5829: $0b
    rrca                                          ; $582a: $0f
    dec c                                         ; $582b: $0d
    ld c, $0f                                     ; $582c: $0e $0f
    ld de, $1211                                  ; $582e: $11 $11 $12

jr_089_5831:
    inc de                                        ; $5831: $13
    pop de                                        ; $5832: $d1
    dec d                                         ; $5833: $15
    ld d, $17                                     ; $5834: $16 $17
    jr jr_089_583f                                ; $5836: $18 $07

    rlca                                          ; $5838: $07
    ld bc, $010a                                  ; $5839: $01 $0a $01
    ld bc, $0a07                                  ; $583c: $01 $07 $0a

jr_089_583f:
    ld bc, $0606                                  ; $583f: $01 $06 $06
    ld a, [hl+]                                   ; $5842: $2a
    ld b, $01                                     ; $5843: $06 $01
    ld b, $07                                     ; $5845: $06 $07
    ld h, c                                       ; $5847: $61
    sub $d7                                       ; $5848: $d6 $d7
    ret c                                         ; $584a: $d8

    reti                                          ; $584b: $d9


    jp c, $dbd4                                   ; $584c: $da $d4 $db

    jp nc, $92a2                                  ; $584f: $d2 $a2 $92

    call c, Call_089_62df                         ; $5852: $dc $df $62
    ld h, e                                       ; $5855: $63
    call nc, $0800                                ; $5856: $d4 $00 $08
    ld [$0808], sp                                ; $5859: $08 $08 $08
    ld [$0800], sp                                ; $585c: $08 $00 $08
    ld [$0848], sp                                ; $585f: $08 $48 $08
    ld [$0028], sp                                ; $5862: $08 $28 $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    sbc $d7                                       ; $5867: $de $d7
    sub $61                                       ; $5869: $d6 $61
    ldh [$d4], a                                  ; $586b: $e0 $d4
    jp c, $e2d9                                   ; $586d: $da $d9 $e2

    sub d                                         ; $5870: $92
    db $e3                                        ; $5871: $e3
    db $e4                                        ; $5872: $e4
    call nc, Call_089_6263                        ; $5873: $d4 $63 $62
    ld h, c                                       ; $5876: $61
    ld [$2828], sp                                ; $5877: $08 $28 $28
    jr nz, @+$0a                                  ; $587a: $20 $08

    nop                                           ; $587c: $00
    jr z, jr_089_58a7                             ; $587d: $28 $28

    ld [$0828], sp                                ; $587f: $08 $28 $08
    ld [$2000], sp                                ; $5882: $08 $00 $20
    jr nz, jr_089_58a7                            ; $5885: $20 $20

    ld a, h                                       ; $5887: $7c
    halt                                          ; $5888: $76
    ld [hl], a                                    ; $5889: $77
    ld c, e                                       ; $588a: $4b
    ld a, l                                       ; $588b: $7d
    ld a, c                                       ; $588c: $79
    ld a, d                                       ; $588d: $7a
    ld a, e                                       ; $588e: $7b
    ret nc                                        ; $588f: $d0

    ld [bc], a                                    ; $5890: $02
    inc bc                                        ; $5891: $03
    inc b                                         ; $5892: $04
    ld a, h                                       ; $5893: $7c
    ld b, $07                                     ; $5894: $06 $07
    ld [$0422], sp                                ; $5896: $08 $22 $04
    inc b                                         ; $5899: $04
    ld c, $22                                     ; $589a: $0e $22
    inc b                                         ; $589c: $04
    inc b                                         ; $589d: $04
    inc b                                         ; $589e: $04
    ld a, [hl+]                                   ; $589f: $2a
    inc b                                         ; $58a0: $04
    rlca                                          ; $58a1: $07
    inc b                                         ; $58a2: $04
    ld [hl+], a                                   ; $58a3: $22
    inc b                                         ; $58a4: $04
    ld b, $04                                     ; $58a5: $06 $04

jr_089_58a7:
    rst $20                                       ; $58a7: $e7
    ld h, l                                       ; $58a8: $65
    db $d3                                        ; $58a9: $d3
    add sp, -$17                                  ; $58aa: $e8 $e9
    call nc, $ebea                                ; $58ac: $d4 $ea $eb
    ld h, c                                       ; $58af: $61
    db $ed                                        ; $58b0: $ed
    call nc, $17ee                                ; $58b1: $d4 $ee $17
    db $f4                                        ; $58b4: $f4
    call nc, $08f5                                ; $58b5: $d4 $f5 $08
    nop                                           ; $58b8: $00
    ld [$0808], sp                                ; $58b9: $08 $08 $08
    nop                                           ; $58bc: $00
    ld [$0008], sp                                ; $58bd: $08 $08 $00
    ld [$0800], sp                                ; $58c0: $08 $00 $08
    jr z, @+$0a                                   ; $58c3: $28 $08

    nop                                           ; $58c5: $00
    ld [$f0ef], sp                                ; $58c6: $08 $ef $f0
    ld h, l                                       ; $58c9: $65
    reti                                          ; $58ca: $d9


    pop af                                        ; $58cb: $f1
    ld [$d2d4], a                                 ; $58cc: $ea $d4 $d2
    xor $d4                                       ; $58cf: $ee $d4
    db $ed                                        ; $58d1: $ed
    ld a, [c]                                     ; $58d2: $f2
    ld a, [$f4fb]                                 ; $58d3: $fa $fb $f4
    di                                            ; $58d6: $f3
    ld [$2008], sp                                ; $58d7: $08 $08 $20
    jr z, @+$0a                                   ; $58da: $28 $08

    jr z, jr_089_58de                             ; $58dc: $28 $00

jr_089_58de:
    jr z, @+$2a                                   ; $58de: $28 $28

    nop                                           ; $58e0: $00
    jr z, jr_089_58eb                             ; $58e1: $28 $08

    ld [$2808], sp                                ; $58e3: $08 $08 $28
    jr z, jr_089_5965                             ; $58e6: $28 $7d

    ld a, [de]                                    ; $58e8: $1a
    dec de                                        ; $58e9: $1b
    inc e                                         ; $58ea: $1c

jr_089_58eb:
    pop de                                        ; $58eb: $d1
    ld e, $1f                                     ; $58ec: $1e $1f
    jr nz, @-$19                                  ; $58ee: $20 $e5

    ld [hl+], a                                   ; $58f0: $22
    inc hl                                        ; $58f1: $23
    inc h                                         ; $58f2: $24
    and $26                                       ; $58f3: $e6 $26
    daa                                           ; $58f5: $27
    jr z, @+$24                                   ; $58f6: $28 $22

    inc b                                         ; $58f8: $04
    rlca                                          ; $58f9: $07
    inc b                                         ; $58fa: $04
    ld a, [bc]                                    ; $58fb: $0a
    inc b                                         ; $58fc: $04
    ld b, $04                                     ; $58fd: $06 $04
    ld a, [bc]                                    ; $58ff: $0a
    inc b                                         ; $5900: $04
    ld b, $04                                     ; $5901: $06 $04
    ld a, [bc]                                    ; $5903: $0a
    inc b                                         ; $5904: $04
    rlca                                          ; $5905: $07
    inc b                                         ; $5906: $04
    or $f7                                        ; $5907: $f6 $f7
    sub d                                         ; $5909: $92
    ld hl, sp-$21                                 ; $590a: $f8 $df
    ld h, d                                       ; $590c: $62
    ld h, e                                       ; $590d: $63
    call nc, Call_089_65e7                        ; $590e: $d4 $e7 $65
    call nc, $d2f9                                ; $5911: $d4 $f9 $d2
    inc b                                         ; $5914: $04
    call nc, Call_000_0805                        ; $5915: $d4 $05 $08
    ld [$0808], sp                                ; $5918: $08 $08 $08
    jr z, jr_089_591d                             ; $591b: $28 $00

jr_089_591d:
    nop                                           ; $591d: $00
    nop                                           ; $591e: $00
    ld [$0000], sp                                ; $591f: $08 $00 $00
    ld [$0808], sp                                ; $5922: $08 $08 $08
    nop                                           ; $5925: $00
    ld [$fdfc], sp                                ; $5926: $08 $fc $fd
    rst $30                                       ; $5929: $f7
    or $d4                                        ; $592a: $f6 $d4
    ld h, e                                       ; $592c: $63
    ld h, d                                       ; $592d: $62
    ld h, c                                       ; $592e: $61
    cp $d4                                        ; $592f: $fe $d4
    ld h, l                                       ; $5931: $65
    ld h, h                                       ; $5932: $64
    add hl, bc                                    ; $5933: $09
    call nc, Call_000_0a04                        ; $5934: $d4 $04 $0a
    ld [$2808], sp                                ; $5937: $08 $08 $28
    jr z, jr_089_593c                             ; $593a: $28 $00

jr_089_593c:
    jr nz, @+$22                                  ; $593c: $20 $20

    jr nz, @+$0a                                  ; $593e: $20 $08

jr_089_5940:
    nop                                           ; $5940: $00
    jr nz, jr_089_5963                            ; $5941: $20 $20

    ld [$2800], sp                                ; $5943: $08 $00 $28
    ld [$76d0], sp                                ; $5946: $08 $d0 $76
    ld [hl], a                                    ; $5949: $77
    ld a, b                                       ; $594a: $78
    ld a, h                                       ; $594b: $7c
    ld a, c                                       ; $594c: $79
    ld a, d                                       ; $594d: $7a
    ld a, e                                       ; $594e: $7b
    ld a, l                                       ; $594f: $7d
    ld [bc], a                                    ; $5950: $02
    inc bc                                        ; $5951: $03
    inc b                                         ; $5952: $04
    pop de                                        ; $5953: $d1
    ld b, $07                                     ; $5954: $06 $07
    ld [$042a], sp                                ; $5956: $08 $2a $04
    ld bc, $2204                                  ; $5959: $01 $04 $22
    inc b                                         ; $595c: $04
    ld b, $04                                     ; $595d: $06 $04
    ld [hl+], a                                   ; $595f: $22
    inc b                                         ; $5960: $04
    rlca                                          ; $5961: $07
    inc b                                         ; $5962: $04

jr_089_5963:
    ld a, [bc]                                    ; $5963: $0a
    inc b                                         ; $5964: $04

jr_089_5965:
    rlca                                          ; $5965: $07
    inc b                                         ; $5966: $04
    ld c, $1a                                     ; $5967: $0e $1a
    dec de                                        ; $5969: $1b
    inc e                                         ; $596a: $1c
    db $10                                        ; $596b: $10
    ld e, $1f                                     ; $596c: $1e $1f
    jr nz, jr_089_5940                            ; $596e: $20 $d0

    ld [hl+], a                                   ; $5970: $22
    inc hl                                        ; $5971: $23
    inc h                                         ; $5972: $24
    dec h                                         ; $5973: $25
    ld h, $27                                     ; $5974: $26 $27
    jr z, jr_089_5982                             ; $5976: $28 $0a

    inc b                                         ; $5978: $04
    ld bc, $0a04                                  ; $5979: $01 $04 $0a
    inc b                                         ; $597c: $04
    ld b, $04                                     ; $597d: $06 $04
    ld a, [hl+]                                   ; $597f: $2a
    inc b                                         ; $5980: $04
    rlca                                          ; $5981: $07

jr_089_5982:
    inc b                                         ; $5982: $04
    inc b                                         ; $5983: $04
    inc b                                         ; $5984: $04
    ld b, $04                                     ; $5985: $06 $04
    ld c, c                                       ; $5987: $49
    ld c, d                                       ; $5988: $4a
    ld c, e                                       ; $5989: $4b
    ld c, h                                       ; $598a: $4c
    ld c, l                                       ; $598b: $4d
    ld c, [hl]                                    ; $598c: $4e
    ld c, a                                       ; $598d: $4f
    ld d, b                                       ; $598e: $50
    ld hl, sp-$07                                 ; $598f: $f8 $f9
    ld a, [$fcfb]                                 ; $5991: $fa $fb $fc
    db $fd                                        ; $5994: $fd
    cp $ff                                        ; $5995: $fe $ff
    inc b                                         ; $5997: $04
    ld bc, $0607                                  ; $5998: $01 $07 $06
    inc b                                         ; $599b: $04
    ld bc, $0607                                  ; $599c: $01 $07 $06
    inc b                                         ; $599f: $04
    ld b, $06                                     ; $59a0: $06 $06
    rlca                                          ; $59a2: $07
    inc b                                         ; $59a3: $04
    ld bc, $0707                                  ; $59a4: $01 $07 $07
    ld d, c                                       ; $59a7: $51
    halt                                          ; $59a8: $76
    ld [hl], a                                    ; $59a9: $77
    ld a, b                                       ; $59aa: $78
    ld d, h                                       ; $59ab: $54
    ld a, c                                       ; $59ac: $79
    ld a, d                                       ; $59ad: $7a
    ld a, e                                       ; $59ae: $7b
    ld bc, $0302                                  ; $59af: $01 $02 $03
    inc b                                         ; $59b2: $04
    dec b                                         ; $59b3: $05
    ld b, $07                                     ; $59b4: $06 $07
    ld [$0404], sp                                ; $59b6: $08 $04 $04
    inc b                                         ; $59b9: $04
    inc b                                         ; $59ba: $04
    rlca                                          ; $59bb: $07
    rlca                                          ; $59bc: $07
    rlca                                          ; $59bd: $07
    ld bc, $0707                                  ; $59be: $01 $07 $07
    ld b, $01                                     ; $59c1: $06 $01
    rlca                                          ; $59c3: $07
    rlca                                          ; $59c4: $07
    ld bc, $4907                                  ; $59c5: $01 $07 $49
    ld c, d                                       ; $59c8: $4a
    ld c, e                                       ; $59c9: $4b
    ld c, h                                       ; $59ca: $4c
    ld c, l                                       ; $59cb: $4d
    ld c, [hl]                                    ; $59cc: $4e
    ld c, a                                       ; $59cd: $4f
    ld d, b                                       ; $59ce: $50
    ld hl, sp-$07                                 ; $59cf: $f8 $f9
    ld a, [$fcfb]                                 ; $59d1: $fa $fb $fc
    db $fd                                        ; $59d4: $fd
    cp $ff                                        ; $59d5: $fe $ff
    inc b                                         ; $59d7: $04
    inc b                                         ; $59d8: $04
    inc b                                         ; $59d9: $04
    inc b                                         ; $59da: $04
    ld b, $01                                     ; $59db: $06 $01
    rlca                                          ; $59dd: $07
    ld b, $01                                     ; $59de: $06 $01
    rlca                                          ; $59e0: $07
    ld bc, $0701                                  ; $59e1: $01 $01 $07
    ld bc, $0701                                  ; $59e4: $01 $01 $07
    pop de                                        ; $59e7: $d1
    pop de                                        ; $59e8: $d1
    pop de                                        ; $59e9: $d1
    jp nc, $d1d1                                  ; $59ea: $d2 $d1 $d1

    pop de                                        ; $59ed: $d1
    jp nc, $d1d1                                  ; $59ee: $d2 $d1 $d1

    pop de                                        ; $59f1: $d1
    ld a, [de]                                    ; $59f2: $1a
    pop de                                        ; $59f3: $d1
    pop de                                        ; $59f4: $d1
    pop de                                        ; $59f5: $d1
    pop de                                        ; $59f6: $d1
    add d                                         ; $59f7: $82
    add d                                         ; $59f8: $82
    add d                                         ; $59f9: $82
    add d                                         ; $59fa: $82
    add d                                         ; $59fb: $82
    add d                                         ; $59fc: $82
    add d                                         ; $59fd: $82
    add d                                         ; $59fe: $82
    add d                                         ; $59ff: $82
    add d                                         ; $5a00: $82
    add d                                         ; $5a01: $82
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
    stop                                          ; $5a0e: $10 $00
    nop                                           ; $5a10: $00
    nop                                           ; $5a11: $00
    nop                                           ; $5a12: $00
    pop de                                        ; $5a13: $d1
    pop de                                        ; $5a14: $d1
    pop de                                        ; $5a15: $d1
    pop de                                        ; $5a16: $d1
    inc b                                         ; $5a17: $04
    rlca                                          ; $5a18: $07
    rlca                                          ; $5a19: $07
    rlca                                          ; $5a1a: $07
    inc b                                         ; $5a1b: $04
    ld bc, $0707                                  ; $5a1c: $01 $07 $07
    adc d                                         ; $5a1f: $8a
    adc d                                         ; $5a20: $8a
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
    jr nz, jr_089_5a30                            ; $5a2e: $20 $00

jr_089_5a30:
    nop                                           ; $5a30: $00
    nop                                           ; $5a31: $00
    nop                                           ; $5a32: $00
    pop de                                        ; $5a33: $d1
    pop de                                        ; $5a34: $d1
    pop de                                        ; $5a35: $d1
    pop de                                        ; $5a36: $d1
    rlca                                          ; $5a37: $07
    ld bc, $0707                                  ; $5a38: $01 $07 $07
    rlca                                          ; $5a3b: $07
    ld bc, $0706                                  ; $5a3c: $01 $06 $07
    adc d                                         ; $5a3f: $8a
    adc d                                         ; $5a40: $8a
    adc d                                         ; $5a41: $8a
    adc d                                         ; $5a42: $8a
    add d                                         ; $5a43: $82
    add d                                         ; $5a44: $82
    add d                                         ; $5a45: $82
    add d                                         ; $5a46: $82
    add hl, bc                                    ; $5a47: $09
    ld a, [bc]                                    ; $5a48: $0a
    dec bc                                        ; $5a49: $0b
    inc c                                         ; $5a4a: $0c
    dec c                                         ; $5a4b: $0d
    ld c, $0f                                     ; $5a4c: $0e $0f
    stop                                          ; $5a4e: $10 $00
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    pop de                                        ; $5a53: $d1
    pop de                                        ; $5a54: $d1
    pop de                                        ; $5a55: $d1
    pop de                                        ; $5a56: $d1
    ld bc, $0606                                  ; $5a57: $01 $06 $06
    rlca                                          ; $5a5a: $07
    ld bc, $0606                                  ; $5a5b: $01 $06 $06
    rlca                                          ; $5a5e: $07
    adc d                                         ; $5a5f: $8a
    adc d                                         ; $5a60: $8a
    adc d                                         ; $5a61: $8a
    adc d                                         ; $5a62: $8a
    add d                                         ; $5a63: $82
    add d                                         ; $5a64: $82
    add d                                         ; $5a65: $82
    add d                                         ; $5a66: $82
    ld d, c                                       ; $5a67: $51
    halt                                          ; $5a68: $76
    ld [hl], a                                    ; $5a69: $77
    ld a, b                                       ; $5a6a: $78
    ld d, h                                       ; $5a6b: $54
    ld a, c                                       ; $5a6c: $79
    ld a, d                                       ; $5a6d: $7a
    ld a, e                                       ; $5a6e: $7b
    ld bc, $0302                                  ; $5a6f: $01 $02 $03
    inc b                                         ; $5a72: $04
    dec b                                         ; $5a73: $05
    ld b, $07                                     ; $5a74: $06 $07
    ld [$0404], sp                                ; $5a76: $08 $04 $04
    ld b, $06                                     ; $5a79: $06 $06
    ld bc, $0701                                  ; $5a7b: $01 $01 $07
    ld bc, $0701                                  ; $5a7e: $01 $01 $07
    ld b, $07                                     ; $5a81: $06 $07
    rlca                                          ; $5a83: $07
    ld bc, $0707                                  ; $5a84: $01 $07 $07
    ld c, c                                       ; $5a87: $49
    ld c, d                                       ; $5a88: $4a
    ld c, e                                       ; $5a89: $4b
    ld c, h                                       ; $5a8a: $4c
    ld c, l                                       ; $5a8b: $4d
    ld c, [hl]                                    ; $5a8c: $4e
    ld c, a                                       ; $5a8d: $4f
    ld d, b                                       ; $5a8e: $50
    ld hl, sp-$07                                 ; $5a8f: $f8 $f9
    ld a, [$fcfb]                                 ; $5a91: $fa $fb $fc
    db $fd                                        ; $5a94: $fd
    cp $ff                                        ; $5a95: $fe $ff
    rlca                                          ; $5a97: $07
    rlca                                          ; $5a98: $07
    rlca                                          ; $5a99: $07
    ld bc, $0607                                  ; $5a9a: $01 $07 $06
    ld bc, $0106                                  ; $5a9d: $01 $06 $01
    ld b, $01                                     ; $5aa0: $06 $01
    rlca                                          ; $5aa2: $07
    ld b, $07                                     ; $5aa3: $06 $07
    ld bc, $5101                                  ; $5aa5: $01 $01 $51
    halt                                          ; $5aa8: $76
    ld [hl], a                                    ; $5aa9: $77
    ld a, b                                       ; $5aaa: $78
    ld d, h                                       ; $5aab: $54
    ld a, c                                       ; $5aac: $79
    ld a, d                                       ; $5aad: $7a
    ld a, e                                       ; $5aae: $7b
    ld bc, $0302                                  ; $5aaf: $01 $02 $03
    inc b                                         ; $5ab2: $04
    dec b                                         ; $5ab3: $05
    ld b, $07                                     ; $5ab4: $06 $07
    ld [$0107], sp                                ; $5ab6: $08 $07 $01
    ld bc, $0607                                  ; $5ab9: $01 $07 $06
    ld bc, $0707                                  ; $5abc: $01 $07 $07
    ld bc, $0707                                  ; $5abf: $01 $07 $07
    ld bc, $0101                                  ; $5ac2: $01 $01 $01
    ld bc, $4901                                  ; $5ac5: $01 $01 $49
    ld c, d                                       ; $5ac8: $4a
    ld c, e                                       ; $5ac9: $4b
    ld c, h                                       ; $5aca: $4c
    ld c, l                                       ; $5acb: $4d
    ld c, [hl]                                    ; $5acc: $4e
    ld c, a                                       ; $5acd: $4f
    ld d, b                                       ; $5ace: $50
    ld hl, sp-$07                                 ; $5acf: $f8 $f9
    ld a, [$fcfb]                                 ; $5ad1: $fa $fb $fc
    db $fd                                        ; $5ad4: $fd
    cp $ff                                        ; $5ad5: $fe $ff
    ld bc, $0607                                  ; $5ad7: $01 $07 $06
    ld b, $01                                     ; $5ada: $06 $01
    ld bc, $0106                                  ; $5adc: $01 $06 $01
    ld bc, $0101                                  ; $5adf: $01 $01 $01
    ld bc, $0106                                  ; $5ae2: $01 $06 $01
    rlca                                          ; $5ae5: $07
    ld b, $19                                     ; $5ae6: $06 $19
    ld a, [de]                                    ; $5ae8: $1a
    dec de                                        ; $5ae9: $1b
    inc e                                         ; $5aea: $1c
    dec e                                         ; $5aeb: $1d
    ld e, $1f                                     ; $5aec: $1e $1f
    jr nz, jr_089_5af0                            ; $5aee: $20 $00

jr_089_5af0:
    nop                                           ; $5af0: $00
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    pop de                                        ; $5af3: $d1
    pop de                                        ; $5af4: $d1
    pop de                                        ; $5af5: $d1
    pop de                                        ; $5af6: $d1
    rlca                                          ; $5af7: $07
    rlca                                          ; $5af8: $07
    rlca                                          ; $5af9: $07
    ld bc, $0107                                  ; $5afa: $01 $07 $01
    ld b, $01                                     ; $5afd: $06 $01
    adc d                                         ; $5aff: $8a
    adc d                                         ; $5b00: $8a
    adc d                                         ; $5b01: $8a
    adc d                                         ; $5b02: $8a
    add d                                         ; $5b03: $82
    add d                                         ; $5b04: $82
    add d                                         ; $5b05: $82
    add d                                         ; $5b06: $82
    add hl, bc                                    ; $5b07: $09
    ld a, [bc]                                    ; $5b08: $0a
    dec bc                                        ; $5b09: $0b
    inc c                                         ; $5b0a: $0c
    dec c                                         ; $5b0b: $0d
    ld c, $0f                                     ; $5b0c: $0e $0f
    stop                                          ; $5b0e: $10 $00
    nop                                           ; $5b10: $00
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    pop de                                        ; $5b13: $d1
    pop de                                        ; $5b14: $d1
    pop de                                        ; $5b15: $d1
    pop de                                        ; $5b16: $d1
    rlca                                          ; $5b17: $07
    ld bc, $0706                                  ; $5b18: $01 $06 $07
    ld bc, $0707                                  ; $5b1b: $01 $07 $07
    ld bc, $8a8a                                  ; $5b1e: $01 $8a $8a
    adc d                                         ; $5b21: $8a
    adc d                                         ; $5b22: $8a
    add d                                         ; $5b23: $82
    add d                                         ; $5b24: $82
    add d                                         ; $5b25: $82
    add d                                         ; $5b26: $82
    add hl, de                                    ; $5b27: $19
    ld a, [de]                                    ; $5b28: $1a
    dec de                                        ; $5b29: $1b
    inc e                                         ; $5b2a: $1c
    dec e                                         ; $5b2b: $1d
    ld e, $1f                                     ; $5b2c: $1e $1f
    jr nz, jr_089_5b30                            ; $5b2e: $20 $00

jr_089_5b30:
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    pop de                                        ; $5b33: $d1
    pop de                                        ; $5b34: $d1
    pop de                                        ; $5b35: $d1
    pop de                                        ; $5b36: $d1
    ld bc, $0707                                  ; $5b37: $01 $07 $07
    rlca                                          ; $5b3a: $07
    ld bc, $0601                                  ; $5b3b: $01 $01 $06
    ld b, $8a                                     ; $5b3e: $06 $8a
    adc d                                         ; $5b40: $8a
    adc d                                         ; $5b41: $8a
    adc d                                         ; $5b42: $8a
    add d                                         ; $5b43: $82
    add d                                         ; $5b44: $82
    add d                                         ; $5b45: $82
    add d                                         ; $5b46: $82
    add hl, bc                                    ; $5b47: $09
    ld a, [bc]                                    ; $5b48: $0a
    dec bc                                        ; $5b49: $0b
    inc c                                         ; $5b4a: $0c
    dec c                                         ; $5b4b: $0d
    ld c, $0f                                     ; $5b4c: $0e $0f
    stop                                          ; $5b4e: $10 $00
    nop                                           ; $5b50: $00
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    pop de                                        ; $5b53: $d1
    pop de                                        ; $5b54: $d1
    pop de                                        ; $5b55: $d1
    pop de                                        ; $5b56: $d1
    rlca                                          ; $5b57: $07
    rlca                                          ; $5b58: $07
    ld bc, $0107                                  ; $5b59: $01 $07 $01
    rlca                                          ; $5b5c: $07
    ld b, $01                                     ; $5b5d: $06 $01
    adc d                                         ; $5b5f: $8a
    adc d                                         ; $5b60: $8a
    adc d                                         ; $5b61: $8a
    adc d                                         ; $5b62: $8a
    add d                                         ; $5b63: $82
    add d                                         ; $5b64: $82
    add d                                         ; $5b65: $82
    add d                                         ; $5b66: $82
    ld d, c                                       ; $5b67: $51
    halt                                          ; $5b68: $76
    ld [hl], a                                    ; $5b69: $77
    ld a, b                                       ; $5b6a: $78
    ld d, h                                       ; $5b6b: $54
    ld a, c                                       ; $5b6c: $79
    ld a, d                                       ; $5b6d: $7a
    ld a, e                                       ; $5b6e: $7b
    ld bc, $0302                                  ; $5b6f: $01 $02 $03
    inc b                                         ; $5b72: $04
    dec b                                         ; $5b73: $05
    ld b, $07                                     ; $5b74: $06 $07
    ld [$0404], sp                                ; $5b76: $08 $04 $04
    inc b                                         ; $5b79: $04
    inc b                                         ; $5b7a: $04
    ld bc, $0107                                  ; $5b7b: $01 $07 $01
    ld bc, $0107                                  ; $5b7e: $01 $07 $01
    ld b, $07                                     ; $5b81: $06 $07
    ld bc, $0701                                  ; $5b83: $01 $01 $07
    ld bc, $4a49                                  ; $5b86: $01 $49 $4a
    ld c, e                                       ; $5b89: $4b
    ld c, h                                       ; $5b8a: $4c
    ld c, l                                       ; $5b8b: $4d
    ld c, [hl]                                    ; $5b8c: $4e
    ld c, a                                       ; $5b8d: $4f
    ld d, b                                       ; $5b8e: $50
    ld hl, sp-$07                                 ; $5b8f: $f8 $f9
    ld a, [$fcfb]                                 ; $5b91: $fa $fb $fc
    db $fd                                        ; $5b94: $fd
    cp $ff                                        ; $5b95: $fe $ff
    inc b                                         ; $5b97: $04
    inc b                                         ; $5b98: $04
    inc b                                         ; $5b99: $04
    inc b                                         ; $5b9a: $04
    rlca                                          ; $5b9b: $07
    rlca                                          ; $5b9c: $07
    ld b, $01                                     ; $5b9d: $06 $01
    rlca                                          ; $5b9f: $07
    ld bc, $0701                                  ; $5ba0: $01 $01 $07
    ld b, $01                                     ; $5ba3: $06 $01
    rlca                                          ; $5ba5: $07
    ld bc, $7651                                  ; $5ba6: $01 $51 $76
    ld [hl], a                                    ; $5ba9: $77
    ld a, b                                       ; $5baa: $78
    ld d, h                                       ; $5bab: $54
    ld a, c                                       ; $5bac: $79
    ld a, d                                       ; $5bad: $7a
    ld a, e                                       ; $5bae: $7b
    ld bc, $0302                                  ; $5baf: $01 $02 $03
    inc b                                         ; $5bb2: $04
    dec b                                         ; $5bb3: $05
    ld b, $07                                     ; $5bb4: $06 $07
    ld [$0404], sp                                ; $5bb6: $08 $04 $04
    ld b, $04                                     ; $5bb9: $06 $04
    ld bc, $0101                                  ; $5bbb: $01 $01 $01
    inc b                                         ; $5bbe: $04
    rlca                                          ; $5bbf: $07
    ld bc, $0407                                  ; $5bc0: $01 $07 $04
    ld bc, $0701                                  ; $5bc3: $01 $01 $07
    inc b                                         ; $5bc6: $04
    add hl, de                                    ; $5bc7: $19
    ld a, [de]                                    ; $5bc8: $1a
    dec de                                        ; $5bc9: $1b
    inc e                                         ; $5bca: $1c
    dec e                                         ; $5bcb: $1d
    ld e, $1f                                     ; $5bcc: $1e $1f
    jr nz, jr_089_5bd0                            ; $5bce: $20 $00

jr_089_5bd0:
    nop                                           ; $5bd0: $00
    nop                                           ; $5bd1: $00
    nop                                           ; $5bd2: $00
    pop de                                        ; $5bd3: $d1
    pop de                                        ; $5bd4: $d1
    pop de                                        ; $5bd5: $d1
    pop de                                        ; $5bd6: $d1
    ld bc, $0106                                  ; $5bd7: $01 $06 $01
    rlca                                          ; $5bda: $07
    rlca                                          ; $5bdb: $07
    rlca                                          ; $5bdc: $07
    rlca                                          ; $5bdd: $07
    rlca                                          ; $5bde: $07
    adc d                                         ; $5bdf: $8a
    adc d                                         ; $5be0: $8a
    adc d                                         ; $5be1: $8a
    adc d                                         ; $5be2: $8a
    add d                                         ; $5be3: $82
    add d                                         ; $5be4: $82
    add d                                         ; $5be5: $82
    add d                                         ; $5be6: $82
    add hl, bc                                    ; $5be7: $09
    ld a, [bc]                                    ; $5be8: $0a
    dec bc                                        ; $5be9: $0b
    inc c                                         ; $5bea: $0c
    dec c                                         ; $5beb: $0d
    ld c, $0f                                     ; $5bec: $0e $0f
    stop                                          ; $5bee: $10 $00
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    nop                                           ; $5bf2: $00
    pop de                                        ; $5bf3: $d1
    pop de                                        ; $5bf4: $d1
    pop de                                        ; $5bf5: $d1
    pop de                                        ; $5bf6: $d1
    ld bc, $0101                                  ; $5bf7: $01 $01 $01
    rlca                                          ; $5bfa: $07
    ld bc, $0707                                  ; $5bfb: $01 $07 $07
    ld bc, $8a8a                                  ; $5bfe: $01 $8a $8a
    adc d                                         ; $5c01: $8a
    adc d                                         ; $5c02: $8a
    add d                                         ; $5c03: $82
    add d                                         ; $5c04: $82
    add d                                         ; $5c05: $82
    add d                                         ; $5c06: $82
    add hl, de                                    ; $5c07: $19
    ld a, [de]                                    ; $5c08: $1a
    dec de                                        ; $5c09: $1b
    inc e                                         ; $5c0a: $1c
    dec e                                         ; $5c0b: $1d
    ld e, $1f                                     ; $5c0c: $1e $1f
    jr nz, jr_089_5c10                            ; $5c0e: $20 $00

jr_089_5c10:
    nop                                           ; $5c10: $00
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00
    pop de                                        ; $5c13: $d1
    pop de                                        ; $5c14: $d1
    pop de                                        ; $5c15: $d1
    pop de                                        ; $5c16: $d1
    ld bc, $0706                                  ; $5c17: $01 $06 $07
    inc b                                         ; $5c1a: $04
    rlca                                          ; $5c1b: $07
    rlca                                          ; $5c1c: $07
    ld bc, $8a04                                  ; $5c1d: $01 $04 $8a
    adc d                                         ; $5c20: $8a
    adc d                                         ; $5c21: $8a
    adc d                                         ; $5c22: $8a
    add d                                         ; $5c23: $82
    add d                                         ; $5c24: $82
    add d                                         ; $5c25: $82
    add d                                         ; $5c26: $82
    jp nc, $d1d1                                  ; $5c27: $d2 $d1 $d1

    pop de                                        ; $5c2a: $d1
    jp nc, $d1d1                                  ; $5c2b: $d2 $d1 $d1

    pop de                                        ; $5c2e: $d1
    ld bc, $d1d1                                  ; $5c2f: $01 $d1 $d1
    pop de                                        ; $5c32: $d1
    pop de                                        ; $5c33: $d1
    pop de                                        ; $5c34: $d1
    pop de                                        ; $5c35: $d1
    pop de                                        ; $5c36: $d1
    add d                                         ; $5c37: $82
    add d                                         ; $5c38: $82
    ld [bc], a                                    ; $5c39: $02
    ld [bc], a                                    ; $5c3a: $02
    add d                                         ; $5c3b: $82
    add d                                         ; $5c3c: $82
    ld [bc], a                                    ; $5c3d: $02
    ld [bc], a                                    ; $5c3e: $02
    adc d                                         ; $5c3f: $8a
    add d                                         ; $5c40: $82
    ld [bc], a                                    ; $5c41: $02
    ld [bc], a                                    ; $5c42: $02
    add d                                         ; $5c43: $82
    add d                                         ; $5c44: $82
    ld [bc], a                                    ; $5c45: $02
    ld [bc], a                                    ; $5c46: $02
    ld de, $1200                                  ; $5c47: $11 $00 $12
    nop                                           ; $5c4a: $00
    and b                                         ; $5c4b: $a0
    rrca                                          ; $5c4c: $0f
    pop de                                        ; $5c4d: $d1
    pop de                                        ; $5c4e: $d1
    pop de                                        ; $5c4f: $d1
    pop de                                        ; $5c50: $d1
    pop de                                        ; $5c51: $d1
    pop de                                        ; $5c52: $d1
    pop de                                        ; $5c53: $d1
    pop de                                        ; $5c54: $d1
    pop de                                        ; $5c55: $d1
    pop de                                        ; $5c56: $d1
    pop de                                        ; $5c57: $d1
    pop de                                        ; $5c58: $d1
    pop de                                        ; $5c59: $d1
    pop de                                        ; $5c5a: $d1
    pop de                                        ; $5c5b: $d1
    pop de                                        ; $5c5c: $d1
    add b                                         ; $5c5d: $80
    add b                                         ; $5c5e: $80
    add b                                         ; $5c5f: $80
    add b                                         ; $5c60: $80
    add b                                         ; $5c61: $80
    add b                                         ; $5c62: $80
    add b                                         ; $5c63: $80
    add b                                         ; $5c64: $80
    add b                                         ; $5c65: $80
    nop                                           ; $5c66: $00
    nop                                           ; $5c67: $00
    nop                                           ; $5c68: $00
    add b                                         ; $5c69: $80
    nop                                           ; $5c6a: $00
    nop                                           ; $5c6b: $00
    nop                                           ; $5c6c: $00
    pop de                                        ; $5c6d: $d1
    pop de                                        ; $5c6e: $d1
    pop de                                        ; $5c6f: $d1
    jp nc, $d1d1                                  ; $5c70: $d2 $d1 $d1

    pop de                                        ; $5c73: $d1
    db $d3                                        ; $5c74: $d3
    pop de                                        ; $5c75: $d1
    pop de                                        ; $5c76: $d1
    pop de                                        ; $5c77: $d1
    db $d3                                        ; $5c78: $d3
    pop de                                        ; $5c79: $d1
    pop de                                        ; $5c7a: $d1
    pop de                                        ; $5c7b: $d1
    db $d3                                        ; $5c7c: $d3
    nop                                           ; $5c7d: $00
    nop                                           ; $5c7e: $00
    nop                                           ; $5c7f: $00
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    add b                                         ; $5c83: $80
    add b                                         ; $5c84: $80
    nop                                           ; $5c85: $00
    nop                                           ; $5c86: $00
    add b                                         ; $5c87: $80
    add b                                         ; $5c88: $80
    nop                                           ; $5c89: $00
    nop                                           ; $5c8a: $00
    add b                                         ; $5c8b: $80
    add b                                         ; $5c8c: $80
    call nc, $d4d4                                ; $5c8d: $d4 $d4 $d4
    call nc, $d6d5                                ; $5c90: $d4 $d5 $d6
    rst $10                                       ; $5c93: $d7
    ret c                                         ; $5c94: $d8

    reti                                          ; $5c95: $d9


    jp c, $dcdb                                   ; $5c96: $da $db $dc

    db $dd                                        ; $5c99: $dd
    sbc $df                                       ; $5c9a: $de $df
    ldh [rP1], a                                  ; $5c9c: $e0 $00
    nop                                           ; $5c9e: $00
    nop                                           ; $5c9f: $00
    nop                                           ; $5ca0: $00
    inc b                                         ; $5ca1: $04
    inc b                                         ; $5ca2: $04
    inc b                                         ; $5ca3: $04
    inc b                                         ; $5ca4: $04
    inc b                                         ; $5ca5: $04
    inc b                                         ; $5ca6: $04
    inc b                                         ; $5ca7: $04
    inc b                                         ; $5ca8: $04
    inc b                                         ; $5ca9: $04
    inc b                                         ; $5caa: $04
    inc b                                         ; $5cab: $04
    inc b                                         ; $5cac: $04
    call nc, $d4d4                                ; $5cad: $d4 $d4 $d4
    call nc, $e2e1                                ; $5cb0: $d4 $e1 $e2
    db $e3                                        ; $5cb3: $e3
    db $e4                                        ; $5cb4: $e4
    push hl                                       ; $5cb5: $e5
    and $e7                                       ; $5cb6: $e6 $e7
    add sp, -$17                                  ; $5cb8: $e8 $e9
    ld [$eceb], a                                 ; $5cba: $ea $eb $ec
    nop                                           ; $5cbd: $00
    nop                                           ; $5cbe: $00
    nop                                           ; $5cbf: $00
    nop                                           ; $5cc0: $00
    inc b                                         ; $5cc1: $04
    inc b                                         ; $5cc2: $04
    inc b                                         ; $5cc3: $04
    inc b                                         ; $5cc4: $04
    inc b                                         ; $5cc5: $04
    inc b                                         ; $5cc6: $04
    inc b                                         ; $5cc7: $04
    inc b                                         ; $5cc8: $04
    inc b                                         ; $5cc9: $04
    inc b                                         ; $5cca: $04
    inc b                                         ; $5ccb: $04
    inc b                                         ; $5ccc: $04
    pop de                                        ; $5ccd: $d1
    pop de                                        ; $5cce: $d1
    pop de                                        ; $5ccf: $d1
    db $d3                                        ; $5cd0: $d3
    pop de                                        ; $5cd1: $d1
    pop de                                        ; $5cd2: $d1
    pop de                                        ; $5cd3: $d1
    db $d3                                        ; $5cd4: $d3
    pop de                                        ; $5cd5: $d1
    pop de                                        ; $5cd6: $d1
    pop de                                        ; $5cd7: $d1
    db $d3                                        ; $5cd8: $d3
    pop de                                        ; $5cd9: $d1
    pop de                                        ; $5cda: $d1
    pop de                                        ; $5cdb: $d1
    db $d3                                        ; $5cdc: $d3
    nop                                           ; $5cdd: $00
    nop                                           ; $5cde: $00
    add b                                         ; $5cdf: $80
    add b                                         ; $5ce0: $80
    nop                                           ; $5ce1: $00
    nop                                           ; $5ce2: $00
    add b                                         ; $5ce3: $80
    add b                                         ; $5ce4: $80
    nop                                           ; $5ce5: $00
    nop                                           ; $5ce6: $00
    add b                                         ; $5ce7: $80
    add b                                         ; $5ce8: $80
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00
    add b                                         ; $5ceb: $80
    add b                                         ; $5cec: $80
    db $ed                                        ; $5ced: $ed
    xor $ef                                       ; $5cee: $ee $ef
    ldh a, [$f1]                                  ; $5cf0: $f0 $f1
    ld a, [c]                                     ; $5cf2: $f2
    di                                            ; $5cf3: $f3
    db $f4                                        ; $5cf4: $f4
    push af                                       ; $5cf5: $f5
    or $f7                                        ; $5cf6: $f6 $f7
    ld hl, sp-$07                                 ; $5cf8: $f8 $f9
    ld a, [$fcfb]                                 ; $5cfa: $fa $fb $fc
    inc b                                         ; $5cfd: $04
    inc b                                         ; $5cfe: $04
    inc b                                         ; $5cff: $04
    inc b                                         ; $5d00: $04
    inc b                                         ; $5d01: $04
    inc b                                         ; $5d02: $04
    inc b                                         ; $5d03: $04
    inc b                                         ; $5d04: $04
    inc bc                                        ; $5d05: $03
    inc bc                                        ; $5d06: $03
    inc bc                                        ; $5d07: $03
    inc bc                                        ; $5d08: $03
    inc bc                                        ; $5d09: $03
    inc bc                                        ; $5d0a: $03
    inc bc                                        ; $5d0b: $03
    inc bc                                        ; $5d0c: $03
    db $fd                                        ; $5d0d: $fd
    cp $ff                                        ; $5d0e: $fe $ff
    nop                                           ; $5d10: $00
    pop af                                        ; $5d11: $f1
    ld bc, $f402                                  ; $5d12: $01 $02 $f4
    inc bc                                        ; $5d15: $03
    inc b                                         ; $5d16: $04
    dec b                                         ; $5d17: $05
    ld b, $07                                     ; $5d18: $06 $07
    ld [$0a09], sp                                ; $5d1a: $08 $09 $0a
    inc b                                         ; $5d1d: $04
    inc b                                         ; $5d1e: $04
    inc b                                         ; $5d1f: $04
    inc b                                         ; $5d20: $04
    inc b                                         ; $5d21: $04
    inc b                                         ; $5d22: $04
    inc b                                         ; $5d23: $04
    inc b                                         ; $5d24: $04
    dec b                                         ; $5d25: $05
    ld [bc], a                                    ; $5d26: $02
    rlca                                          ; $5d27: $07
    dec b                                         ; $5d28: $05
    inc bc                                        ; $5d29: $03
    rlca                                          ; $5d2a: $07
    ld [bc], a                                    ; $5d2b: $02
    inc bc                                        ; $5d2c: $03
    dec bc                                        ; $5d2d: $0b
    inc c                                         ; $5d2e: $0c
    dec c                                         ; $5d2f: $0d
    ld c, $0f                                     ; $5d30: $0e $0f
    db $10                                        ; $5d32: $10
    ld de, $1312                                  ; $5d33: $11 $12 $13
    inc d                                         ; $5d36: $14
    dec d                                         ; $5d37: $15
    ld d, $17                                     ; $5d38: $16 $17
    jr jr_089_5d55                                ; $5d3a: $18 $19

    ld a, [de]                                    ; $5d3c: $1a
    inc bc                                        ; $5d3d: $03
    inc bc                                        ; $5d3e: $03
    inc bc                                        ; $5d3f: $03
    inc bc                                        ; $5d40: $03
    dec b                                         ; $5d41: $05
    dec b                                         ; $5d42: $05
    dec b                                         ; $5d43: $05
    dec b                                         ; $5d44: $05
    ld [bc], a                                    ; $5d45: $02
    ld [bc], a                                    ; $5d46: $02
    rlca                                          ; $5d47: $07
    rlca                                          ; $5d48: $07
    ld [bc], a                                    ; $5d49: $02
    ld [bc], a                                    ; $5d4a: $02
    dec b                                         ; $5d4b: $05
    ld [bc], a                                    ; $5d4c: $02
    dec de                                        ; $5d4d: $1b
    inc e                                         ; $5d4e: $1c
    dec e                                         ; $5d4f: $1d
    ld e, $1f                                     ; $5d50: $1e $1f
    jr nz, @+$23                                  ; $5d52: $20 $21

    ld [hl+], a                                   ; $5d54: $22

jr_089_5d55:
    inc hl                                        ; $5d55: $23
    inc h                                         ; $5d56: $24
    dec h                                         ; $5d57: $25
    ld h, $27                                     ; $5d58: $26 $27
    jr z, jr_089_5d85                             ; $5d5a: $28 $29

    ld a, [hl+]                                   ; $5d5c: $2a
    dec b                                         ; $5d5d: $05
    ld [bc], a                                    ; $5d5e: $02
    ld [bc], a                                    ; $5d5f: $02
    dec b                                         ; $5d60: $05
    ld [bc], a                                    ; $5d61: $02
    rlca                                          ; $5d62: $07
    ld [bc], a                                    ; $5d63: $02
    ld [bc], a                                    ; $5d64: $02
    ld [bc], a                                    ; $5d65: $02
    ld [bc], a                                    ; $5d66: $02
    rlca                                          ; $5d67: $07
    ld [bc], a                                    ; $5d68: $02
    dec b                                         ; $5d69: $05
    dec b                                         ; $5d6a: $05
    ld [bc], a                                    ; $5d6b: $02
    rlca                                          ; $5d6c: $07
    dec bc                                        ; $5d6d: $0b
    inc c                                         ; $5d6e: $0c
    dec c                                         ; $5d6f: $0d
    ld c, $0f                                     ; $5d70: $0e $0f
    db $10                                        ; $5d72: $10
    ld de, $1312                                  ; $5d73: $11 $12 $13
    inc d                                         ; $5d76: $14
    dec d                                         ; $5d77: $15
    ld d, $17                                     ; $5d78: $16 $17
    jr jr_089_5d95                                ; $5d7a: $18 $19

    ld a, [de]                                    ; $5d7c: $1a
    inc bc                                        ; $5d7d: $03
    inc bc                                        ; $5d7e: $03
    inc bc                                        ; $5d7f: $03
    inc bc                                        ; $5d80: $03
    dec b                                         ; $5d81: $05
    dec b                                         ; $5d82: $05
    dec b                                         ; $5d83: $05
    dec b                                         ; $5d84: $05

jr_089_5d85:
    ld [bc], a                                    ; $5d85: $02
    rlca                                          ; $5d86: $07
    ld [bc], a                                    ; $5d87: $02
    ld [bc], a                                    ; $5d88: $02
    rlca                                          ; $5d89: $07
    ld [bc], a                                    ; $5d8a: $02
    dec b                                         ; $5d8b: $05
    ld [bc], a                                    ; $5d8c: $02
    push af                                       ; $5d8d: $f5
    or $f7                                        ; $5d8e: $f6 $f7
    ld hl, sp-$07                                 ; $5d90: $f8 $f9
    ld a, [$fcfb]                                 ; $5d92: $fa $fb $fc

jr_089_5d95:
    dec bc                                        ; $5d95: $0b
    inc c                                         ; $5d96: $0c
    dec c                                         ; $5d97: $0d
    ld c, $0f                                     ; $5d98: $0e $0f
    db $10                                        ; $5d9a: $10
    ld de, $0512                                  ; $5d9b: $11 $12 $05
    dec b                                         ; $5d9e: $05
    dec b                                         ; $5d9f: $05
    ld [bc], a                                    ; $5da0: $02
    rlca                                          ; $5da1: $07
    ld [bc], a                                    ; $5da2: $02
    ld [bc], a                                    ; $5da3: $02
    dec b                                         ; $5da4: $05
    ld [bc], a                                    ; $5da5: $02
    dec b                                         ; $5da6: $05
    dec b                                         ; $5da7: $05
    ld [bc], a                                    ; $5da8: $02
    rlca                                          ; $5da9: $07
    dec b                                         ; $5daa: $05
    ld [bc], a                                    ; $5dab: $02
    rlca                                          ; $5dac: $07
    inc bc                                        ; $5dad: $03
    inc b                                         ; $5dae: $04
    dec b                                         ; $5daf: $05
    ld b, $07                                     ; $5db0: $06 $07
    ld [$0a09], sp                                ; $5db2: $08 $09 $0a
    dec de                                        ; $5db5: $1b
    inc e                                         ; $5db6: $1c
    dec e                                         ; $5db7: $1d
    ld e, $1f                                     ; $5db8: $1e $1f
    jr nz, @+$23                                  ; $5dba: $20 $21

    ld [hl+], a                                   ; $5dbc: $22
    rlca                                          ; $5dbd: $07
    ld [bc], a                                    ; $5dbe: $02
    rlca                                          ; $5dbf: $07
    ld [bc], a                                    ; $5dc0: $02
    dec b                                         ; $5dc1: $05
    ld [bc], a                                    ; $5dc2: $02
    rlca                                          ; $5dc3: $07
    dec b                                         ; $5dc4: $05
    rlca                                          ; $5dc5: $07
    ld [bc], a                                    ; $5dc6: $02
    dec b                                         ; $5dc7: $05
    ld [bc], a                                    ; $5dc8: $02
    dec b                                         ; $5dc9: $05
    dec b                                         ; $5dca: $05
    ld [bc], a                                    ; $5dcb: $02
    rlca                                          ; $5dcc: $07
    push af                                       ; $5dcd: $f5
    or $f7                                        ; $5dce: $f6 $f7
    ld hl, sp-$07                                 ; $5dd0: $f8 $f9
    ld a, [$fcfb]                                 ; $5dd2: $fa $fb $fc
    dec bc                                        ; $5dd5: $0b
    inc c                                         ; $5dd6: $0c
    dec c                                         ; $5dd7: $0d
    ld c, $0f                                     ; $5dd8: $0e $0f
    db $10                                        ; $5dda: $10
    ld de, $0212                                  ; $5ddb: $11 $12 $02
    dec b                                         ; $5dde: $05
    ld [bc], a                                    ; $5ddf: $02
    ld [bc], a                                    ; $5de0: $02
    dec b                                         ; $5de1: $05
    ld [bc], a                                    ; $5de2: $02
    ld [bc], a                                    ; $5de3: $02
    rlca                                          ; $5de4: $07
    ld [bc], a                                    ; $5de5: $02
    dec b                                         ; $5de6: $05
    ld [bc], a                                    ; $5de7: $02
    dec b                                         ; $5de8: $05
    ld [bc], a                                    ; $5de9: $02
    dec b                                         ; $5dea: $05
    dec b                                         ; $5deb: $05
    ld [bc], a                                    ; $5dec: $02
    dec hl                                        ; $5ded: $2b
    pop de                                        ; $5dee: $d1
    pop de                                        ; $5def: $d1
    pop de                                        ; $5df0: $d1
    db $d3                                        ; $5df1: $d3
    pop de                                        ; $5df2: $d1
    pop de                                        ; $5df3: $d1
    pop de                                        ; $5df4: $d1
    db $d3                                        ; $5df5: $d3
    pop de                                        ; $5df6: $d1
    pop de                                        ; $5df7: $d1
    pop de                                        ; $5df8: $d1
    db $d3                                        ; $5df9: $d3
    pop de                                        ; $5dfa: $d1
    pop de                                        ; $5dfb: $d1
    pop de                                        ; $5dfc: $d1
    nop                                           ; $5dfd: $00
    nop                                           ; $5dfe: $00
    nop                                           ; $5dff: $00
    nop                                           ; $5e00: $00
    add b                                         ; $5e01: $80
    add b                                         ; $5e02: $80
    nop                                           ; $5e03: $00
    nop                                           ; $5e04: $00
    add b                                         ; $5e05: $80
    add b                                         ; $5e06: $80
    nop                                           ; $5e07: $00
    nop                                           ; $5e08: $00
    add b                                         ; $5e09: $80
    add b                                         ; $5e0a: $80
    nop                                           ; $5e0b: $00
    nop                                           ; $5e0c: $00
    db $d3                                        ; $5e0d: $d3
    pop de                                        ; $5e0e: $d1
    pop de                                        ; $5e0f: $d1
    pop de                                        ; $5e10: $d1
    db $d3                                        ; $5e11: $d3
    pop de                                        ; $5e12: $d1
    pop de                                        ; $5e13: $d1
    pop de                                        ; $5e14: $d1
    inc l                                         ; $5e15: $2c
    call nc, $d4d4                                ; $5e16: $d4 $d4 $d4
    dec l                                         ; $5e19: $2d
    push de                                       ; $5e1a: $d5
    sub $d7                                       ; $5e1b: $d6 $d7
    add b                                         ; $5e1d: $80
    add b                                         ; $5e1e: $80
    nop                                           ; $5e1f: $00
    nop                                           ; $5e20: $00
    add b                                         ; $5e21: $80
    add b                                         ; $5e22: $80
    nop                                           ; $5e23: $00
    nop                                           ; $5e24: $00
    add b                                         ; $5e25: $80
    add b                                         ; $5e26: $80
    add b                                         ; $5e27: $80
    add b                                         ; $5e28: $80
    inc b                                         ; $5e29: $04
    inc b                                         ; $5e2a: $04
    inc b                                         ; $5e2b: $04
    inc b                                         ; $5e2c: $04
    pop de                                        ; $5e2d: $d1
    pop de                                        ; $5e2e: $d1
    pop de                                        ; $5e2f: $d1
    pop de                                        ; $5e30: $d1
    pop de                                        ; $5e31: $d1
    pop de                                        ; $5e32: $d1
    pop de                                        ; $5e33: $d1
    pop de                                        ; $5e34: $d1
    call nc, $d4d4                                ; $5e35: $d4 $d4 $d4
    call nc, Call_000_2ed8                        ; $5e38: $d4 $d8 $2e
    cpl                                           ; $5e3b: $2f
    jr nc, jr_089_5e3e                            ; $5e3c: $30 $00

jr_089_5e3e:
    nop                                           ; $5e3e: $00
    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00
    nop                                           ; $5e41: $00
    nop                                           ; $5e42: $00
    nop                                           ; $5e43: $00
    nop                                           ; $5e44: $00
    add b                                         ; $5e45: $80
    add b                                         ; $5e46: $80
    add b                                         ; $5e47: $80
    add b                                         ; $5e48: $80
    inc b                                         ; $5e49: $04
    inc b                                         ; $5e4a: $04
    inc b                                         ; $5e4b: $04
    ld b, $d1                                     ; $5e4c: $06 $d1
    pop de                                        ; $5e4e: $d1
    pop de                                        ; $5e4f: $d1
    pop de                                        ; $5e50: $d1
    pop de                                        ; $5e51: $d1
    pop de                                        ; $5e52: $d1
    pop de                                        ; $5e53: $d1
    pop de                                        ; $5e54: $d1
    call nc, $d4d4                                ; $5e55: $d4 $d4 $d4
    call nc, $e231                                ; $5e58: $d4 $31 $e2
    db $e3                                        ; $5e5b: $e3
    db $e4                                        ; $5e5c: $e4
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    nop                                           ; $5e5f: $00
    nop                                           ; $5e60: $00
    nop                                           ; $5e61: $00
    nop                                           ; $5e62: $00
    nop                                           ; $5e63: $00
    nop                                           ; $5e64: $00
    add b                                         ; $5e65: $80
    add b                                         ; $5e66: $80
    add b                                         ; $5e67: $80
    add b                                         ; $5e68: $80
    ld b, $04                                     ; $5e69: $06 $04
    inc b                                         ; $5e6b: $04
    inc b                                         ; $5e6c: $04
    pop de                                        ; $5e6d: $d1
    pop de                                        ; $5e6e: $d1
    pop de                                        ; $5e6f: $d1
    pop de                                        ; $5e70: $d1
    pop de                                        ; $5e71: $d1
    pop de                                        ; $5e72: $d1
    pop de                                        ; $5e73: $d1
    pop de                                        ; $5e74: $d1
    dec hl                                        ; $5e75: $2b
    pop de                                        ; $5e76: $d1
    pop de                                        ; $5e77: $d1
    pop de                                        ; $5e78: $d1
    db $d3                                        ; $5e79: $d3
    pop de                                        ; $5e7a: $d1
    pop de                                        ; $5e7b: $d1
    pop de                                        ; $5e7c: $d1
    nop                                           ; $5e7d: $00
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    nop                                           ; $5e84: $00
    add b                                         ; $5e85: $80
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    nop                                           ; $5e88: $00
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    nop                                           ; $5e8c: $00
    ld [hl-], a                                   ; $5e8d: $32
    reti                                          ; $5e8e: $d9


    jp c, Jump_000_33db                           ; $5e8f: $da $db $33

jr_089_5e92:
    db $dd                                        ; $5e92: $dd
    sbc $df                                       ; $5e93: $de $df
    inc [hl]                                      ; $5e95: $34
    db $ed                                        ; $5e96: $ed
    xor $ef                                       ; $5e97: $ee $ef
    dec [hl]                                      ; $5e99: $35
    pop af                                        ; $5e9a: $f1
    ld a, [c]                                     ; $5e9b: $f2
    di                                            ; $5e9c: $f3
    inc b                                         ; $5e9d: $04
    inc b                                         ; $5e9e: $04
    inc b                                         ; $5e9f: $04
    inc b                                         ; $5ea0: $04
    inc b                                         ; $5ea1: $04
    inc b                                         ; $5ea2: $04
    inc b                                         ; $5ea3: $04
    inc b                                         ; $5ea4: $04
    inc b                                         ; $5ea5: $04
    inc b                                         ; $5ea6: $04
    inc b                                         ; $5ea7: $04
    inc b                                         ; $5ea8: $04
    inc b                                         ; $5ea9: $04
    inc b                                         ; $5eaa: $04
    inc b                                         ; $5eab: $04
    inc b                                         ; $5eac: $04
    call c, Call_000_3736                         ; $5ead: $dc $36 $37
    jr c, jr_089_5e92                             ; $5eb0: $38 $e0

    add hl, sp                                    ; $5eb2: $39
    ld a, [hl-]                                   ; $5eb3: $3a
    dec sp                                        ; $5eb4: $3b
    ldh a, [$3c]                                  ; $5eb5: $f0 $3c
    dec a                                         ; $5eb7: $3d
    ld a, $f4                                     ; $5eb8: $3e $f4
    ccf                                           ; $5eba: $3f
    ld b, b                                       ; $5ebb: $40
    ld b, c                                       ; $5ebc: $41
    inc b                                         ; $5ebd: $04
    inc b                                         ; $5ebe: $04
    inc b                                         ; $5ebf: $04
    ld b, $04                                     ; $5ec0: $06 $04
    inc b                                         ; $5ec2: $04
    inc b                                         ; $5ec3: $04
    ld b, $04                                     ; $5ec4: $06 $04
    inc b                                         ; $5ec6: $04
    inc b                                         ; $5ec7: $04
    ld b, $04                                     ; $5ec8: $06 $04
    inc b                                         ; $5eca: $04
    inc b                                         ; $5ecb: $04
    ld b, $42                                     ; $5ecc: $06 $42
    and $e7                                       ; $5ece: $e6 $e7
    add sp, $43                                   ; $5ed0: $e8 $43
    ld [$eceb], a                                 ; $5ed2: $ea $eb $ec
    ld b, h                                       ; $5ed5: $44
    cp $ff                                        ; $5ed6: $fe $ff
    nop                                           ; $5ed8: $00
    ld b, l                                       ; $5ed9: $45
    ld bc, $f402                                  ; $5eda: $01 $02 $f4
    ld b, $04                                     ; $5edd: $06 $04
    inc b                                         ; $5edf: $04
    inc b                                         ; $5ee0: $04
    ld b, $04                                     ; $5ee1: $06 $04
    inc b                                         ; $5ee3: $04
    inc b                                         ; $5ee4: $04
    ld b, $04                                     ; $5ee5: $06 $04
    inc b                                         ; $5ee7: $04
    inc b                                         ; $5ee8: $04
    ld b, $04                                     ; $5ee9: $06 $04
    inc b                                         ; $5eeb: $04
    inc b                                         ; $5eec: $04
    db $d3                                        ; $5eed: $d3
    pop de                                        ; $5eee: $d1
    pop de                                        ; $5eef: $d1
    pop de                                        ; $5ef0: $d1
    db $d3                                        ; $5ef1: $d3
    pop de                                        ; $5ef2: $d1
    pop de                                        ; $5ef3: $d1
    pop de                                        ; $5ef4: $d1
    db $d3                                        ; $5ef5: $d3
    pop de                                        ; $5ef6: $d1
    pop de                                        ; $5ef7: $d1
    pop de                                        ; $5ef8: $d1
    db $d3                                        ; $5ef9: $d3
    pop de                                        ; $5efa: $d1
    pop de                                        ; $5efb: $d1
    pop de                                        ; $5efc: $d1
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
    nop                                           ; $5f07: $00
    nop                                           ; $5f08: $00
    add b                                         ; $5f09: $80
    add b                                         ; $5f0a: $80
    nop                                           ; $5f0b: $00
    nop                                           ; $5f0c: $00
    inc bc                                        ; $5f0d: $03
    inc b                                         ; $5f0e: $04
    dec b                                         ; $5f0f: $05
    ld b, $07                                     ; $5f10: $06 $07
    ld [$0a09], sp                                ; $5f12: $08 $09 $0a
    dec de                                        ; $5f15: $1b
    inc e                                         ; $5f16: $1c
    dec e                                         ; $5f17: $1d
    ld e, $1f                                     ; $5f18: $1e $1f
    jr nz, @+$23                                  ; $5f1a: $20 $21

    ld [hl+], a                                   ; $5f1c: $22
    dec b                                         ; $5f1d: $05
    inc bc                                        ; $5f1e: $03
    inc bc                                        ; $5f1f: $03
    inc bc                                        ; $5f20: $03
    inc bc                                        ; $5f21: $03
    inc bc                                        ; $5f22: $03
    inc bc                                        ; $5f23: $03
    inc bc                                        ; $5f24: $03
    dec b                                         ; $5f25: $05
    inc bc                                        ; $5f26: $03
    inc bc                                        ; $5f27: $03
    inc bc                                        ; $5f28: $03
    ld [bc], a                                    ; $5f29: $02
    dec b                                         ; $5f2a: $05
    dec b                                         ; $5f2b: $05
    dec b                                         ; $5f2c: $05
    push af                                       ; $5f2d: $f5
    or $f7                                        ; $5f2e: $f6 $f7
    ld b, [hl]                                    ; $5f30: $46
    ld sp, hl                                     ; $5f31: $f9
    ld a, [$fcfb]                                 ; $5f32: $fa $fb $fc
    dec bc                                        ; $5f35: $0b
    inc c                                         ; $5f36: $0c
    dec c                                         ; $5f37: $0d
    ld c, $0f                                     ; $5f38: $0e $0f
    db $10                                        ; $5f3a: $10
    ld de, $0312                                  ; $5f3b: $11 $12 $03
    dec b                                         ; $5f3e: $05
    ld [bc], a                                    ; $5f3f: $02
    ld b, $03                                     ; $5f40: $06 $03
    dec b                                         ; $5f42: $05
    rlca                                          ; $5f43: $07
    ld [bc], a                                    ; $5f44: $02
    inc bc                                        ; $5f45: $03
    dec b                                         ; $5f46: $05
    ld [bc], a                                    ; $5f47: $02
    rlca                                          ; $5f48: $07
    dec b                                         ; $5f49: $05
    ld [bc], a                                    ; $5f4a: $02
    rlca                                          ; $5f4b: $07
    ld [bc], a                                    ; $5f4c: $02
    ld b, a                                       ; $5f4d: $47
    inc b                                         ; $5f4e: $04
    dec b                                         ; $5f4f: $05
    ld b, $07                                     ; $5f50: $06 $07
    ld [$0a09], sp                                ; $5f52: $08 $09 $0a
    dec de                                        ; $5f55: $1b
    inc e                                         ; $5f56: $1c
    dec e                                         ; $5f57: $1d
    ld e, $1f                                     ; $5f58: $1e $1f
    jr nz, jr_089_5f7d                            ; $5f5a: $20 $21

    ld [hl+], a                                   ; $5f5c: $22
    ld b, $05                                     ; $5f5d: $06 $05
    ld [bc], a                                    ; $5f5f: $02
    ld [bc], a                                    ; $5f60: $02
    dec b                                         ; $5f61: $05
    ld [bc], a                                    ; $5f62: $02
    rlca                                          ; $5f63: $07
    ld [bc], a                                    ; $5f64: $02
    ld [bc], a                                    ; $5f65: $02
    ld [bc], a                                    ; $5f66: $02
    ld [bc], a                                    ; $5f67: $02
    dec b                                         ; $5f68: $05
    ld [bc], a                                    ; $5f69: $02
    dec b                                         ; $5f6a: $05
    dec b                                         ; $5f6b: $05
    dec b                                         ; $5f6c: $05
    inc de                                        ; $5f6d: $13
    inc d                                         ; $5f6e: $14
    dec d                                         ; $5f6f: $15
    ld d, $17                                     ; $5f70: $16 $17
    jr jr_089_5f8d                                ; $5f72: $18 $19

    ld a, [de]                                    ; $5f74: $1a
    push af                                       ; $5f75: $f5
    or $f7                                        ; $5f76: $f6 $f7
    ld hl, sp-$07                                 ; $5f78: $f8 $f9
    ld a, [$fcfb]                                 ; $5f7a: $fa $fb $fc

jr_089_5f7d:
    ld [bc], a                                    ; $5f7d: $02
    ld [bc], a                                    ; $5f7e: $02
    dec b                                         ; $5f7f: $05
    ld [bc], a                                    ; $5f80: $02
    rlca                                          ; $5f81: $07
    ld [bc], a                                    ; $5f82: $02
    dec b                                         ; $5f83: $05
    ld [bc], a                                    ; $5f84: $02
    ld [bc], a                                    ; $5f85: $02
    ld [bc], a                                    ; $5f86: $02
    rlca                                          ; $5f87: $07
    rlca                                          ; $5f88: $07
    ld [bc], a                                    ; $5f89: $02
    dec b                                         ; $5f8a: $05
    dec b                                         ; $5f8b: $05
    ld [bc], a                                    ; $5f8c: $02

jr_089_5f8d:
    inc hl                                        ; $5f8d: $23
    inc h                                         ; $5f8e: $24
    dec h                                         ; $5f8f: $25
    ld h, $27                                     ; $5f90: $26 $27
    jr z, jr_089_5fbd                             ; $5f92: $28 $29

    ld a, [hl+]                                   ; $5f94: $2a
    inc bc                                        ; $5f95: $03
    inc b                                         ; $5f96: $04
    dec b                                         ; $5f97: $05
    ld b, $07                                     ; $5f98: $06 $07
    ld [$0a09], sp                                ; $5f9a: $08 $09 $0a
    dec b                                         ; $5f9d: $05
    ld [bc], a                                    ; $5f9e: $02
    rlca                                          ; $5f9f: $07
    ld [bc], a                                    ; $5fa0: $02
    rlca                                          ; $5fa1: $07
    rlca                                          ; $5fa2: $07
    rlca                                          ; $5fa3: $07
    ld [bc], a                                    ; $5fa4: $02
    ld [bc], a                                    ; $5fa5: $02
    ld [bc], a                                    ; $5fa6: $02
    ld [bc], a                                    ; $5fa7: $02
    dec b                                         ; $5fa8: $05
    dec b                                         ; $5fa9: $05
    dec b                                         ; $5faa: $05
    dec b                                         ; $5fab: $05
    ld [bc], a                                    ; $5fac: $02
    inc de                                        ; $5fad: $13
    inc d                                         ; $5fae: $14
    dec d                                         ; $5faf: $15
    ld d, $17                                     ; $5fb0: $16 $17
    jr jr_089_5fcd                                ; $5fb2: $18 $19

    ld a, [de]                                    ; $5fb4: $1a
    push af                                       ; $5fb5: $f5
    or $f7                                        ; $5fb6: $f6 $f7
    ld hl, sp-$07                                 ; $5fb8: $f8 $f9
    ld a, [$fcfb]                                 ; $5fba: $fa $fb $fc

jr_089_5fbd:
    rlca                                          ; $5fbd: $07
    ld [bc], a                                    ; $5fbe: $02
    dec b                                         ; $5fbf: $05
    ld [bc], a                                    ; $5fc0: $02
    dec b                                         ; $5fc1: $05
    ld [bc], a                                    ; $5fc2: $02
    dec b                                         ; $5fc3: $05
    dec b                                         ; $5fc4: $05
    ld [bc], a                                    ; $5fc5: $02
    rlca                                          ; $5fc6: $07
    ld [bc], a                                    ; $5fc7: $02
    ld [bc], a                                    ; $5fc8: $02
    dec b                                         ; $5fc9: $05
    dec b                                         ; $5fca: $05
    ld [bc], a                                    ; $5fcb: $02
    rlca                                          ; $5fcc: $07

jr_089_5fcd:
    dec bc                                        ; $5fcd: $0b
    inc c                                         ; $5fce: $0c
    dec c                                         ; $5fcf: $0d
    ld c, $0f                                     ; $5fd0: $0e $0f
    db $10                                        ; $5fd2: $10
    ld de, $1312                                  ; $5fd3: $11 $12 $13
    inc d                                         ; $5fd6: $14
    dec d                                         ; $5fd7: $15
    ld d, $48                                     ; $5fd8: $16 $48
    ld c, c                                       ; $5fda: $49
    ld c, d                                       ; $5fdb: $4a
    ld c, e                                       ; $5fdc: $4b
    rlca                                          ; $5fdd: $07
    ld [bc], a                                    ; $5fde: $02
    ld [bc], a                                    ; $5fdf: $02
    ld [bc], a                                    ; $5fe0: $02
    ld [bc], a                                    ; $5fe1: $02
    ld [bc], a                                    ; $5fe2: $02
    rlca                                          ; $5fe3: $07
    rlca                                          ; $5fe4: $07
    dec b                                         ; $5fe5: $05
    dec b                                         ; $5fe6: $05
    ld [bc], a                                    ; $5fe7: $02
    ld [bc], a                                    ; $5fe8: $02
    ld b, $06                                     ; $5fe9: $06 $06
    ld b, $06                                     ; $5feb: $06 $06
    dec de                                        ; $5fed: $1b
    inc e                                         ; $5fee: $1c
    dec e                                         ; $5fef: $1d
    ld e, $1f                                     ; $5ff0: $1e $1f
    jr nz, @+$23                                  ; $5ff2: $20 $21

    ld [hl+], a                                   ; $5ff4: $22
    inc hl                                        ; $5ff5: $23
    inc h                                         ; $5ff6: $24
    dec h                                         ; $5ff7: $25
    ld h, $27                                     ; $5ff8: $26 $27
    jr z, jr_089_6025                             ; $5ffa: $28 $29

    ld a, [hl+]                                   ; $5ffc: $2a
    rlca                                          ; $5ffd: $07
    ld [bc], a                                    ; $5ffe: $02
    ld [bc], a                                    ; $5fff: $02
    dec b                                         ; $6000: $05
    ld [bc], a                                    ; $6001: $02
    ld [bc], a                                    ; $6002: $02
    rlca                                          ; $6003: $07
    ld [bc], a                                    ; $6004: $02
    rlca                                          ; $6005: $07
    ld [bc], a                                    ; $6006: $02
    dec b                                         ; $6007: $05
    ld [bc], a                                    ; $6008: $02
    ld [bc], a                                    ; $6009: $02
    dec b                                         ; $600a: $05
    ld [bc], a                                    ; $600b: $02
    ld [bc], a                                    ; $600c: $02
    dec bc                                        ; $600d: $0b
    inc c                                         ; $600e: $0c
    dec c                                         ; $600f: $0d
    ld c, $0f                                     ; $6010: $0e $0f
    db $10                                        ; $6012: $10
    ld de, $1312                                  ; $6013: $11 $12 $13
    inc d                                         ; $6016: $14
    dec d                                         ; $6017: $15
    ld d, $17                                     ; $6018: $16 $17
    jr jr_089_6035                                ; $601a: $18 $19

    ld a, [de]                                    ; $601c: $1a
    dec b                                         ; $601d: $05
    dec b                                         ; $601e: $05
    ld [bc], a                                    ; $601f: $02
    dec b                                         ; $6020: $05
    dec b                                         ; $6021: $05
    dec b                                         ; $6022: $05
    dec b                                         ; $6023: $05
    ld [bc], a                                    ; $6024: $02

jr_089_6025:
    rlca                                          ; $6025: $07
    ld [bc], a                                    ; $6026: $02
    dec b                                         ; $6027: $05
    ld [bc], a                                    ; $6028: $02
    dec b                                         ; $6029: $05
    ld [bc], a                                    ; $602a: $02
    dec b                                         ; $602b: $05
    dec b                                         ; $602c: $05
    ld c, h                                       ; $602d: $4c
    ld c, l                                       ; $602e: $4d
    ld c, [hl]                                    ; $602f: $4e
    ld c, a                                       ; $6030: $4f
    ld d, b                                       ; $6031: $50
    ld d, c                                       ; $6032: $51
    ld d, d                                       ; $6033: $52
    ld d, e                                       ; $6034: $53

jr_089_6035:
    ld d, h                                       ; $6035: $54
    ld d, l                                       ; $6036: $55
    ld d, [hl]                                    ; $6037: $56
    ld d, a                                       ; $6038: $57
    ld e, b                                       ; $6039: $58
    ld e, c                                       ; $603a: $59
    ld e, d                                       ; $603b: $5a
    ld e, e                                       ; $603c: $5b
    ld b, $06                                     ; $603d: $06 $06
    ld b, $06                                     ; $603f: $06 $06
    ld b, $06                                     ; $6041: $06 $06
    ld b, $06                                     ; $6043: $06 $06
    ld b, $06                                     ; $6045: $06 $06
    ld b, $06                                     ; $6047: $06 $06
    ld b, $06                                     ; $6049: $06 $06
    ld b, $06                                     ; $604b: $06 $06
    inc bc                                        ; $604d: $03
    inc b                                         ; $604e: $04
    dec b                                         ; $604f: $05
    ld b, $07                                     ; $6050: $06 $07
    ld [$0a09], sp                                ; $6052: $08 $09 $0a
    dec de                                        ; $6055: $1b
    inc e                                         ; $6056: $1c
    dec e                                         ; $6057: $1d
    ld e, $1f                                     ; $6058: $1e $1f
    jr nz, @+$23                                  ; $605a: $20 $21

    ld [hl+], a                                   ; $605c: $22
    dec b                                         ; $605d: $05
    ld [bc], a                                    ; $605e: $02
    dec b                                         ; $605f: $05
    ld [bc], a                                    ; $6060: $02
    dec b                                         ; $6061: $05
    dec b                                         ; $6062: $05
    ld [bc], a                                    ; $6063: $02
    rlca                                          ; $6064: $07
    ld [bc], a                                    ; $6065: $02
    dec b                                         ; $6066: $05
    dec b                                         ; $6067: $05
    dec b                                         ; $6068: $05
    rlca                                          ; $6069: $07
    dec b                                         ; $606a: $05
    dec b                                         ; $606b: $05
    ld [bc], a                                    ; $606c: $02
    push af                                       ; $606d: $f5
    or $f7                                        ; $606e: $f6 $f7
    ld hl, sp-$07                                 ; $6070: $f8 $f9
    ld a, [$fcfb]                                 ; $6072: $fa $fb $fc
    dec bc                                        ; $6075: $0b
    inc c                                         ; $6076: $0c
    dec c                                         ; $6077: $0d
    ld c, $0f                                     ; $6078: $0e $0f
    db $10                                        ; $607a: $10
    ld de, $0512                                  ; $607b: $11 $12 $05
    dec b                                         ; $607e: $05
    ld [bc], a                                    ; $607f: $02
    ld [bc], a                                    ; $6080: $02
    rlca                                          ; $6081: $07
    dec b                                         ; $6082: $05
    dec b                                         ; $6083: $05
    rlca                                          ; $6084: $07
    dec b                                         ; $6085: $05
    ld [bc], a                                    ; $6086: $02
    rlca                                          ; $6087: $07
    ld [bc], a                                    ; $6088: $02
    dec b                                         ; $6089: $05
    rlca                                          ; $608a: $07
    ld [bc], a                                    ; $608b: $02
    rlca                                          ; $608c: $07
    ld e, h                                       ; $608d: $5c
    ld e, l                                       ; $608e: $5d
    ld e, [hl]                                    ; $608f: $5e
    ld e, a                                       ; $6090: $5f
    ld h, b                                       ; $6091: $60
    ld h, c                                       ; $6092: $61
    ld h, d                                       ; $6093: $62
    ld h, e                                       ; $6094: $63
    ld h, h                                       ; $6095: $64
    ld h, l                                       ; $6096: $65
    ld h, [hl]                                    ; $6097: $66
    ld h, a                                       ; $6098: $67
    ld l, b                                       ; $6099: $68
    ld l, c                                       ; $609a: $69
    ld l, d                                       ; $609b: $6a
    ld l, e                                       ; $609c: $6b
    ld b, $06                                     ; $609d: $06 $06
    ld b, $06                                     ; $609f: $06 $06
    ld b, $06                                     ; $60a1: $06 $06
    ld b, $06                                     ; $60a3: $06 $06
    ld b, $06                                     ; $60a5: $06 $06
    ld b, $06                                     ; $60a7: $06 $06
    ld b, $06                                     ; $60a9: $06 $06
    ld b, $06                                     ; $60ab: $06 $06
    inc hl                                        ; $60ad: $23
    inc h                                         ; $60ae: $24
    dec h                                         ; $60af: $25
    ld h, $27                                     ; $60b0: $26 $27
    jr z, jr_089_60dd                             ; $60b2: $28 $29

    ld a, [hl+]                                   ; $60b4: $2a
    inc bc                                        ; $60b5: $03
    inc b                                         ; $60b6: $04
    dec b                                         ; $60b7: $05
    ld b, $07                                     ; $60b8: $06 $07
    ld [$0a09], sp                                ; $60ba: $08 $09 $0a
    dec b                                         ; $60bd: $05
    ld [bc], a                                    ; $60be: $02
    ld [bc], a                                    ; $60bf: $02
    ld [bc], a                                    ; $60c0: $02
    ld [bc], a                                    ; $60c1: $02
    ld [bc], a                                    ; $60c2: $02
    rlca                                          ; $60c3: $07
    ld [bc], a                                    ; $60c4: $02
    rlca                                          ; $60c5: $07
    rlca                                          ; $60c6: $07
    ld [bc], a                                    ; $60c7: $02
    ld [bc], a                                    ; $60c8: $02
    rlca                                          ; $60c9: $07
    ld [bc], a                                    ; $60ca: $02
    dec b                                         ; $60cb: $05
    rlca                                          ; $60cc: $07
    inc de                                        ; $60cd: $13
    inc d                                         ; $60ce: $14
    dec d                                         ; $60cf: $15
    ld d, $17                                     ; $60d0: $16 $17
    jr jr_089_60ed                                ; $60d2: $18 $19

    ld a, [de]                                    ; $60d4: $1a
    push af                                       ; $60d5: $f5
    or $f7                                        ; $60d6: $f6 $f7
    ld hl, sp-$07                                 ; $60d8: $f8 $f9
    ld a, [$fcfb]                                 ; $60da: $fa $fb $fc

jr_089_60dd:
    ld [bc], a                                    ; $60dd: $02
    ld [bc], a                                    ; $60de: $02
    dec b                                         ; $60df: $05
    ld [bc], a                                    ; $60e0: $02
    dec b                                         ; $60e1: $05
    dec b                                         ; $60e2: $05
    ld [bc], a                                    ; $60e3: $02
    rlca                                          ; $60e4: $07
    ld [bc], a                                    ; $60e5: $02
    rlca                                          ; $60e6: $07
    rlca                                          ; $60e7: $07
    ld [bc], a                                    ; $60e8: $02
    ld [bc], a                                    ; $60e9: $02
    rlca                                          ; $60ea: $07
    ld [bc], a                                    ; $60eb: $02
    rlca                                          ; $60ec: $07

jr_089_60ed:
    jp nc, $d4d4                                  ; $60ed: $d2 $d4 $d4

    call nc, $d1d3                                ; $60f0: $d4 $d3 $d1
    pop de                                        ; $60f3: $d1
    pop de                                        ; $60f4: $d1
    db $d3                                        ; $60f5: $d3
    pop de                                        ; $60f6: $d1
    pop de                                        ; $60f7: $d1
    pop de                                        ; $60f8: $d1
    db $d3                                        ; $60f9: $d3
    pop de                                        ; $60fa: $d1
    pop de                                        ; $60fb: $d1
    pop de                                        ; $60fc: $d1
    add b                                         ; $60fd: $80
    add b                                         ; $60fe: $80
    add b                                         ; $60ff: $80
    add b                                         ; $6100: $80
    add b                                         ; $6101: $80
    add b                                         ; $6102: $80
    add b                                         ; $6103: $80
    add b                                         ; $6104: $80

Call_089_6105:
    add b                                         ; $6105: $80
    add b                                         ; $6106: $80
    add b                                         ; $6107: $80
    add b                                         ; $6108: $80
    add b                                         ; $6109: $80
    add b                                         ; $610a: $80
    add b                                         ; $610b: $80
    add b                                         ; $610c: $80
    call nc, $d4d4                                ; $610d: $d4 $d4 $d4
    call nc, $d1d1                                ; $6110: $d4 $d1 $d1
    pop de                                        ; $6113: $d1
    pop de                                        ; $6114: $d1
    pop de                                        ; $6115: $d1
    pop de                                        ; $6116: $d1
    pop de                                        ; $6117: $d1
    pop de                                        ; $6118: $d1
    pop de                                        ; $6119: $d1
    pop de                                        ; $611a: $d1
    pop de                                        ; $611b: $d1
    pop de                                        ; $611c: $d1
    add b                                         ; $611d: $80
    add b                                         ; $611e: $80
    add b                                         ; $611f: $80
    add b                                         ; $6120: $80
    add b                                         ; $6121: $80
    add b                                         ; $6122: $80
    add b                                         ; $6123: $80
    add b                                         ; $6124: $80
    add b                                         ; $6125: $80
    add b                                         ; $6126: $80
    add b                                         ; $6127: $80
    add b                                         ; $6128: $80
    add b                                         ; $6129: $80
    add b                                         ; $612a: $80
    add b                                         ; $612b: $80
    add b                                         ; $612c: $80
    ld l, h                                       ; $612d: $6c
    pop de                                        ; $612e: $d1
    pop de                                        ; $612f: $d1
    pop de                                        ; $6130: $d1
    pop de                                        ; $6131: $d1
    pop de                                        ; $6132: $d1
    pop de                                        ; $6133: $d1
    pop de                                        ; $6134: $d1
    pop de                                        ; $6135: $d1
    pop de                                        ; $6136: $d1
    pop de                                        ; $6137: $d1
    pop de                                        ; $6138: $d1
    pop de                                        ; $6139: $d1
    pop de                                        ; $613a: $d1
    pop de                                        ; $613b: $d1
    pop de                                        ; $613c: $d1
    add b                                         ; $613d: $80
    add b                                         ; $613e: $80
    add b                                         ; $613f: $80
    nop                                           ; $6140: $00
    add b                                         ; $6141: $80
    add b                                         ; $6142: $80
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    add b                                         ; $6145: $80
    add b                                         ; $6146: $80
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    add b                                         ; $6149: $80
    nop                                           ; $614a: $00
    nop                                           ; $614b: $00
    nop                                           ; $614c: $00
    db $d3                                        ; $614d: $d3
    pop de                                        ; $614e: $d1
    pop de                                        ; $614f: $d1
    pop de                                        ; $6150: $d1
    inc l                                         ; $6151: $2c
    call nc, $d4d4                                ; $6152: $d4 $d4 $d4
    dec l                                         ; $6155: $2d
    push de                                       ; $6156: $d5
    sub $d7                                       ; $6157: $d6 $d7
    ld [hl-], a                                   ; $6159: $32
    reti                                          ; $615a: $d9


    jp c, $80db                                   ; $615b: $da $db $80

    add b                                         ; $615e: $80
    add b                                         ; $615f: $80
    add b                                         ; $6160: $80
    add b                                         ; $6161: $80

Jump_089_6162:
    add b                                         ; $6162: $80
    add b                                         ; $6163: $80
    add b                                         ; $6164: $80
    inc b                                         ; $6165: $04
    inc b                                         ; $6166: $04
    inc b                                         ; $6167: $04
    inc b                                         ; $6168: $04
    inc b                                         ; $6169: $04
    inc b                                         ; $616a: $04
    inc b                                         ; $616b: $04
    inc b                                         ; $616c: $04
    pop de                                        ; $616d: $d1
    pop de                                        ; $616e: $d1
    pop de                                        ; $616f: $d1
    pop de                                        ; $6170: $d1
    call nc, $d4d4                                ; $6171: $d4 $d4 $d4
    call nc, $e1d8                                ; $6174: $d4 $d8 $e1
    ld [c], a                                     ; $6177: $e2
    db $e3                                        ; $6178: $e3
    call c, $e6e5                                 ; $6179: $dc $e5 $e6
    rst $20                                       ; $617c: $e7
    add b                                         ; $617d: $80
    add b                                         ; $617e: $80
    add b                                         ; $617f: $80
    add b                                         ; $6180: $80
    add b                                         ; $6181: $80
    add b                                         ; $6182: $80
    add b                                         ; $6183: $80
    add b                                         ; $6184: $80
    inc b                                         ; $6185: $04
    inc b                                         ; $6186: $04
    inc b                                         ; $6187: $04
    inc b                                         ; $6188: $04
    inc b                                         ; $6189: $04
    inc b                                         ; $618a: $04
    inc b                                         ; $618b: $04
    inc b                                         ; $618c: $04
    pop de                                        ; $618d: $d1
    pop de                                        ; $618e: $d1
    pop de                                        ; $618f: $d1
    pop de                                        ; $6190: $d1
    call nc, $d4d4                                ; $6191: $d4 $d4 $d4
    call nc, Call_089_6de4                        ; $6194: $d4 $e4 $6d
    ld l, [hl]                                    ; $6197: $6e
    ld l, a                                       ; $6198: $6f
    add sp, $70                                   ; $6199: $e8 $70
    ld [hl], c                                    ; $619b: $71
    ld [hl], d                                    ; $619c: $72
    add b                                         ; $619d: $80
    add b                                         ; $619e: $80
    add b                                         ; $619f: $80
    add b                                         ; $61a0: $80
    add b                                         ; $61a1: $80
    add b                                         ; $61a2: $80
    add b                                         ; $61a3: $80
    add b                                         ; $61a4: $80
    inc b                                         ; $61a5: $04
    inc b                                         ; $61a6: $04
    inc b                                         ; $61a7: $04
    inc b                                         ; $61a8: $04
    inc b                                         ; $61a9: $04
    inc b                                         ; $61aa: $04
    inc b                                         ; $61ab: $04
    inc b                                         ; $61ac: $04
    pop de                                        ; $61ad: $d1
    pop de                                        ; $61ae: $d1
    pop de                                        ; $61af: $d1
    pop de                                        ; $61b0: $d1
    dec hl                                        ; $61b1: $2b
    pop de                                        ; $61b2: $d1
    pop de                                        ; $61b3: $d1
    pop de                                        ; $61b4: $d1
    db $d3                                        ; $61b5: $d3
    pop de                                        ; $61b6: $d1
    pop de                                        ; $61b7: $d1
    pop de                                        ; $61b8: $d1
    db $d3                                        ; $61b9: $d3
    pop de                                        ; $61ba: $d1
    pop de                                        ; $61bb: $d1
    pop de                                        ; $61bc: $d1
    add b                                         ; $61bd: $80
    nop                                           ; $61be: $00
    nop                                           ; $61bf: $00
    nop                                           ; $61c0: $00
    add b                                         ; $61c1: $80
    nop                                           ; $61c2: $00
    nop                                           ; $61c3: $00
    nop                                           ; $61c4: $00
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    nop                                           ; $61c7: $00
    nop                                           ; $61c8: $00
    add b                                         ; $61c9: $80
    add b                                         ; $61ca: $80
    nop                                           ; $61cb: $00
    nop                                           ; $61cc: $00
    inc sp                                        ; $61cd: $33
    db $dd                                        ; $61ce: $dd
    sbc $df                                       ; $61cf: $de $df
    inc [hl]                                      ; $61d1: $34
    db $ed                                        ; $61d2: $ed
    xor $ef                                       ; $61d3: $ee $ef

Call_089_61d5:
    dec [hl]                                      ; $61d5: $35
    pop af                                        ; $61d6: $f1
    ld a, [c]                                     ; $61d7: $f2
    di                                            ; $61d8: $f3
    rra                                           ; $61d9: $1f
    jr nz, @+$23                                  ; $61da: $20 $21

    ld [hl+], a                                   ; $61dc: $22
    inc b                                         ; $61dd: $04
    inc b                                         ; $61de: $04
    inc b                                         ; $61df: $04
    inc b                                         ; $61e0: $04
    inc b                                         ; $61e1: $04
    inc b                                         ; $61e2: $04
    inc b                                         ; $61e3: $04
    inc b                                         ; $61e4: $04
    inc b                                         ; $61e5: $04
    inc b                                         ; $61e6: $04
    inc b                                         ; $61e7: $04
    inc b                                         ; $61e8: $04
    dec b                                         ; $61e9: $05
    inc bc                                        ; $61ea: $03
    inc bc                                        ; $61eb: $03
    inc bc                                        ; $61ec: $03
    ldh [$e9], a                                  ; $61ed: $e0 $e9
    ld [$f073], a                                 ; $61ef: $ea $73 $f0
    db $fd                                        ; $61f2: $fd
    cp $74                                        ; $61f3: $fe $74
    db $f4                                        ; $61f5: $f4
    pop af                                        ; $61f6: $f1
    ld bc, $0f75                                  ; $61f7: $01 $75 $0f
    db $10                                        ; $61fa: $10
    ld de, $0476                                  ; $61fb: $11 $76 $04
    inc b                                         ; $61fe: $04
    inc b                                         ; $61ff: $04
    ld b, $04                                     ; $6200: $06 $04
    inc b                                         ; $6202: $04
    inc b                                         ; $6203: $04
    ld b, $04                                     ; $6204: $06 $04
    inc b                                         ; $6206: $04
    inc b                                         ; $6207: $04
    ld b, $03                                     ; $6208: $06 $03
    dec b                                         ; $620a: $05
    ld [bc], a                                    ; $620b: $02
    ld b, $77                                     ; $620c: $06 $77
    ld a, b                                       ; $620e: $78
    ld a, c                                       ; $620f: $79
    ld a, d                                       ; $6210: $7a
    ld a, e                                       ; $6211: $7b
    ld a, h                                       ; $6212: $7c
    ld a, l                                       ; $6213: $7d
    ld a, [hl]                                    ; $6214: $7e
    ld a, a                                       ; $6215: $7f
    add b                                         ; $6216: $80
    add c                                         ; $6217: $81
    add d                                         ; $6218: $82
    add e                                         ; $6219: $83
    add h                                         ; $621a: $84
    ld hl, $0622                                  ; $621b: $21 $22 $06
    ld b, $04                                     ; $621e: $06 $04
    inc b                                         ; $6220: $04
    ld b, $06                                     ; $6221: $06 $06
    inc b                                         ; $6223: $04
    inc b                                         ; $6224: $04
    ld b, $0e                                     ; $6225: $06 $0e
    inc c                                         ; $6227: $0c
    inc c                                         ; $6228: $0c
    ld c, $0e                                     ; $6229: $0e $0e
    rlca                                          ; $622b: $07
    ld [bc], a                                    ; $622c: $02
    inc hl                                        ; $622d: $23
    inc h                                         ; $622e: $24
    dec h                                         ; $622f: $25
    ld h, $27                                     ; $6230: $26 $27
    jr z, jr_089_625d                             ; $6232: $28 $29

    ld a, [hl+]                                   ; $6234: $2a
    inc bc                                        ; $6235: $03
    inc b                                         ; $6236: $04
    dec b                                         ; $6237: $05
    ld b, $d2                                     ; $6238: $06 $d2
    call nc, $d4d4                                ; $623a: $d4 $d4 $d4
    inc bc                                        ; $623d: $03
    inc bc                                        ; $623e: $03
    inc bc                                        ; $623f: $03
    inc bc                                        ; $6240: $03
    dec b                                         ; $6241: $05
    inc bc                                        ; $6242: $03
    inc bc                                        ; $6243: $03
    inc bc                                        ; $6244: $03
    ld [bc], a                                    ; $6245: $02
    dec b                                         ; $6246: $05
    dec b                                         ; $6247: $05
    dec b                                         ; $6248: $05
    add b                                         ; $6249: $80
    add b                                         ; $624a: $80
    add b                                         ; $624b: $80
    add b                                         ; $624c: $80
    inc de                                        ; $624d: $13
    inc d                                         ; $624e: $14
    dec d                                         ; $624f: $15
    ld d, $17                                     ; $6250: $16 $17
    jr jr_089_626d                                ; $6252: $18 $19

    ld a, [de]                                    ; $6254: $1a
    push af                                       ; $6255: $f5
    or $f7                                        ; $6256: $f6 $f7
    ld hl, sp-$2c                                 ; $6258: $f8 $d4
    call nc, $d4d4                                ; $625a: $d4 $d4 $d4

jr_089_625d:
    inc bc                                        ; $625d: $03
    inc bc                                        ; $625e: $03
    rlca                                          ; $625f: $07
    ld [bc], a                                    ; $6260: $02

Call_089_6261:
    inc bc                                        ; $6261: $03
    dec b                                         ; $6262: $05

Call_089_6263:
    ld [bc], a                                    ; $6263: $02
    rlca                                          ; $6264: $07
    dec b                                         ; $6265: $05
    ld [bc], a                                    ; $6266: $02
    rlca                                          ; $6267: $07
    dec b                                         ; $6268: $05
    add b                                         ; $6269: $80
    add b                                         ; $626a: $80
    add b                                         ; $626b: $80
    add b                                         ; $626c: $80

jr_089_626d:
    inc hl                                        ; $626d: $23
    inc h                                         ; $626e: $24
    dec h                                         ; $626f: $25
    ld h, $27                                     ; $6270: $26 $27
    jr z, jr_089_629d                             ; $6272: $28 $29

    ld a, [hl+]                                   ; $6274: $2a
    inc bc                                        ; $6275: $03
    inc b                                         ; $6276: $04
    dec b                                         ; $6277: $05
    ld b, $d4                                     ; $6278: $06 $d4
    call nc, $d4d4                                ; $627a: $d4 $d4 $d4
    dec b                                         ; $627d: $05
    ld [bc], a                                    ; $627e: $02
    ld [bc], a                                    ; $627f: $02
    dec b                                         ; $6280: $05
    ld [bc], a                                    ; $6281: $02
    rlca                                          ; $6282: $07
    ld [bc], a                                    ; $6283: $02
    ld [bc], a                                    ; $6284: $02
    ld [bc], a                                    ; $6285: $02
    ld [bc], a                                    ; $6286: $02
    dec b                                         ; $6287: $05
    rlca                                          ; $6288: $07
    add b                                         ; $6289: $80
    add b                                         ; $628a: $80
    add b                                         ; $628b: $80
    add b                                         ; $628c: $80
    db $d3                                        ; $628d: $d3
    pop de                                        ; $628e: $d1
    pop de                                        ; $628f: $d1
    pop de                                        ; $6290: $d1
    db $d3                                        ; $6291: $d3
    pop de                                        ; $6292: $d1
    pop de                                        ; $6293: $d1
    pop de                                        ; $6294: $d1
    db $d3                                        ; $6295: $d3
    pop de                                        ; $6296: $d1
    pop de                                        ; $6297: $d1
    pop de                                        ; $6298: $d1
    ld l, h                                       ; $6299: $6c
    pop de                                        ; $629a: $d1
    pop de                                        ; $629b: $d1
    pop de                                        ; $629c: $d1

jr_089_629d:
    add b                                         ; $629d: $80
    add b                                         ; $629e: $80
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    add b                                         ; $62a1: $80
    add b                                         ; $62a2: $80
    nop                                           ; $62a3: $00
    nop                                           ; $62a4: $00
    add b                                         ; $62a5: $80
    add b                                         ; $62a6: $80
    nop                                           ; $62a7: $00
    nop                                           ; $62a8: $00
    add b                                         ; $62a9: $80
    add b                                         ; $62aa: $80
    nop                                           ; $62ab: $00
    nop                                           ; $62ac: $00
    pop de                                        ; $62ad: $d1
    pop de                                        ; $62ae: $d1
    pop de                                        ; $62af: $d1
    pop de                                        ; $62b0: $d1
    pop de                                        ; $62b1: $d1
    jp nc, $d4d4                                  ; $62b2: $d2 $d4 $d4

    pop de                                        ; $62b5: $d1
    db $d3                                        ; $62b6: $d3
    ld l, $2f                                     ; $62b7: $2e $2f
    pop de                                        ; $62b9: $d1
    db $d3                                        ; $62ba: $d3
    ld [hl], $37                                  ; $62bb: $36 $37
    nop                                           ; $62bd: $00
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    add b                                         ; $62c5: $80
    add b                                         ; $62c6: $80
    inc b                                         ; $62c7: $04
    inc b                                         ; $62c8: $04
    add b                                         ; $62c9: $80
    add b                                         ; $62ca: $80
    inc b                                         ; $62cb: $04
    inc b                                         ; $62cc: $04
    pop de                                        ; $62cd: $d1
    pop de                                        ; $62ce: $d1
    pop de                                        ; $62cf: $d1
    pop de                                        ; $62d0: $d1
    call nc, $d4d4                                ; $62d1: $d4 $d4 $d4
    call nc, $d585                                ; $62d4: $d4 $85 $d5
    sub $d7                                       ; $62d7: $d6 $d7
    add [hl]                                      ; $62d9: $86
    reti                                          ; $62da: $d9


    jp c, Jump_000_00db                           ; $62db: $da $db $00

    nop                                           ; $62de: $00

Call_089_62df:
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    inc c                                         ; $62e5: $0c
    inc b                                         ; $62e6: $04
    inc b                                         ; $62e7: $04
    inc b                                         ; $62e8: $04
    inc c                                         ; $62e9: $0c
    inc b                                         ; $62ea: $04
    inc b                                         ; $62eb: $04
    inc b                                         ; $62ec: $04
    pop de                                        ; $62ed: $d1
    db $d3                                        ; $62ee: $d3
    add hl, sp                                    ; $62ef: $39
    ld a, [hl-]                                   ; $62f0: $3a
    pop de                                        ; $62f1: $d1
    db $d3                                        ; $62f2: $d3
    inc a                                         ; $62f3: $3c
    dec a                                         ; $62f4: $3d
    pop de                                        ; $62f5: $d1
    db $d3                                        ; $62f6: $d3
    ccf                                           ; $62f7: $3f
    ld b, b                                       ; $62f8: $40
    pop de                                        ; $62f9: $d1
    db $d3                                        ; $62fa: $d3
    add hl, de                                    ; $62fb: $19
    ld a, [de]                                    ; $62fc: $1a
    add b                                         ; $62fd: $80
    add b                                         ; $62fe: $80
    inc b                                         ; $62ff: $04
    inc b                                         ; $6300: $04
    add b                                         ; $6301: $80
    add b                                         ; $6302: $80
    inc b                                         ; $6303: $04
    inc b                                         ; $6304: $04
    add b                                         ; $6305: $80
    add b                                         ; $6306: $80
    inc b                                         ; $6307: $04
    inc b                                         ; $6308: $04
    add b                                         ; $6309: $80
    add b                                         ; $630a: $80
    ld [bc], a                                    ; $630b: $02
    rlca                                          ; $630c: $07
    add a                                         ; $630d: $87
    db $dd                                        ; $630e: $dd
    sbc $df                                       ; $630f: $de $df
    adc b                                         ; $6311: $88
    db $ed                                        ; $6312: $ed
    xor $ef                                       ; $6313: $ee $ef
    adc c                                         ; $6315: $89
    pop af                                        ; $6316: $f1
    ld a, [c]                                     ; $6317: $f2
    di                                            ; $6318: $f3
    daa                                           ; $6319: $27
    jr z, jr_089_6345                             ; $631a: $28 $29

    ld a, [hl+]                                   ; $631c: $2a
    inc c                                         ; $631d: $0c
    inc b                                         ; $631e: $04
    inc b                                         ; $631f: $04
    inc b                                         ; $6320: $04
    inc c                                         ; $6321: $0c
    inc b                                         ; $6322: $04
    inc b                                         ; $6323: $04
    inc b                                         ; $6324: $04
    inc c                                         ; $6325: $0c
    inc b                                         ; $6326: $04
    inc b                                         ; $6327: $04
    inc b                                         ; $6328: $04
    dec b                                         ; $6329: $05
    inc bc                                        ; $632a: $03
    inc bc                                        ; $632b: $03
    inc bc                                        ; $632c: $03
    ldh [$e9], a                                  ; $632d: $e0 $e9
    ld [$f0eb], a                                 ; $632f: $ea $eb $f0
    db $fd                                        ; $6332: $fd
    cp $ff                                        ; $6333: $fe $ff
    db $f4                                        ; $6335: $f4
    pop af                                        ; $6336: $f1
    ld bc, $1702                                  ; $6337: $01 $02 $17
    jr @+$1b                                      ; $633a: $18 $19

    ld a, [de]                                    ; $633c: $1a
    inc b                                         ; $633d: $04
    inc b                                         ; $633e: $04
    inc b                                         ; $633f: $04
    inc b                                         ; $6340: $04
    inc b                                         ; $6341: $04
    inc b                                         ; $6342: $04
    inc b                                         ; $6343: $04
    inc b                                         ; $6344: $04

jr_089_6345:
    inc b                                         ; $6345: $04
    inc b                                         ; $6346: $04
    inc b                                         ; $6347: $04
    inc b                                         ; $6348: $04
    inc bc                                        ; $6349: $03
    dec b                                         ; $634a: $05
    ld [bc], a                                    ; $634b: $02
    rlca                                          ; $634c: $07
    pop de                                        ; $634d: $d1
    pop de                                        ; $634e: $d1
    pop de                                        ; $634f: $d1
    pop de                                        ; $6350: $d1
    call nc, $d4d4                                ; $6351: $d4 $d4 $d4
    call nc, $8ae4                                ; $6354: $d4 $e4 $8a
    adc e                                         ; $6357: $8b
    adc h                                         ; $6358: $8c
    add sp, -$73                                  ; $6359: $e8 $8d
    adc [hl]                                      ; $635b: $8e
    adc a                                         ; $635c: $8f
    nop                                           ; $635d: $00
    nop                                           ; $635e: $00
    nop                                           ; $635f: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    inc b                                         ; $6365: $04
    inc c                                         ; $6366: $0c
    ld c, $0e                                     ; $6367: $0e $0e
    inc b                                         ; $6369: $04
    inc c                                         ; $636a: $0c
    ld c, $0e                                     ; $636b: $0e $0e
    pop de                                        ; $636d: $d1
    pop de                                        ; $636e: $d1
    pop de                                        ; $636f: $d1
    pop de                                        ; $6370: $d1
    call nc, $d4d4                                ; $6371: $d4 $d4 $d4
    call nc, $9190                                ; $6374: $d4 $90 $91
    sub d                                         ; $6377: $92
    sub e                                         ; $6378: $93
    sub h                                         ; $6379: $94
    sub l                                         ; $637a: $95
    sub [hl]                                      ; $637b: $96
    sub a                                         ; $637c: $97
    nop                                           ; $637d: $00
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    ld c, $0e                                     ; $6385: $0e $0e
    ld c, $0e                                     ; $6387: $0e $0e
    ld c, $0e                                     ; $6389: $0e $0e
    ld c, $0e                                     ; $638b: $0e $0e
    pop de                                        ; $638d: $d1
    pop de                                        ; $638e: $d1
    pop de                                        ; $638f: $d1
    pop de                                        ; $6390: $d1
    call nc, $d4d4                                ; $6391: $d4 $d4 $d4
    call nc, $e298                                ; $6394: $d4 $98 $e2
    db $e3                                        ; $6397: $e3
    db $e4                                        ; $6398: $e4
    sbc c                                         ; $6399: $99
    and $e7                                       ; $639a: $e6 $e7
    add sp, $00                                   ; $639c: $e8 $00
    nop                                           ; $639e: $00
    nop                                           ; $639f: $00
    nop                                           ; $63a0: $00
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    nop                                           ; $63a4: $00
    inc c                                         ; $63a5: $0c
    inc b                                         ; $63a6: $04
    inc b                                         ; $63a7: $04
    inc b                                         ; $63a8: $04
    inc c                                         ; $63a9: $0c
    inc b                                         ; $63aa: $04
    inc b                                         ; $63ab: $04
    inc b                                         ; $63ac: $04
    pop de                                        ; $63ad: $d1
    pop de                                        ; $63ae: $d1
    pop de                                        ; $63af: $d1
    pop de                                        ; $63b0: $d1
    call nc, $d4d4                                ; $63b1: $d4 $d4 $d4
    call nc, Call_089_6e6d                        ; $63b4: $d4 $6d $6e
    ld l, a                                       ; $63b7: $6f
    push de                                       ; $63b8: $d5
    ld [hl], b                                    ; $63b9: $70
    ld [hl], c                                    ; $63ba: $71
    ld [hl], d                                    ; $63bb: $72
    reti                                          ; $63bc: $d9


    nop                                           ; $63bd: $00
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    nop                                           ; $63c3: $00
    nop                                           ; $63c4: $00
    inc b                                         ; $63c5: $04
    inc b                                         ; $63c6: $04
    inc b                                         ; $63c7: $04
    inc b                                         ; $63c8: $04
    inc b                                         ; $63c9: $04
    inc b                                         ; $63ca: $04
    inc b                                         ; $63cb: $04
    inc b                                         ; $63cc: $04
    db $ec                                        ; $63cd: $ec
    sbc d                                         ; $63ce: $9a
    sbc e                                         ; $63cf: $9b
    sbc h                                         ; $63d0: $9c
    nop                                           ; $63d1: $00
    sbc l                                         ; $63d2: $9d
    sbc [hl]                                      ; $63d3: $9e

Jump_089_63d4:
    sbc a                                         ; $63d4: $9f
    db $f4                                        ; $63d5: $f4
    and b                                         ; $63d6: $a0
    and c                                         ; $63d7: $a1
    and d                                         ; $63d8: $a2
    daa                                           ; $63d9: $27
    jr z, jr_089_6405                             ; $63da: $28 $29

    ld a, [hl+]                                   ; $63dc: $2a
    inc b                                         ; $63dd: $04
    inc c                                         ; $63de: $0c
    ld c, $0e                                     ; $63df: $0e $0e
    inc b                                         ; $63e1: $04
    inc c                                         ; $63e2: $0c
    ld c, $0e                                     ; $63e3: $0e $0e
    inc b                                         ; $63e5: $04
    inc c                                         ; $63e6: $0c
    inc c                                         ; $63e7: $0c
    inc c                                         ; $63e8: $0c
    ld [bc], a                                    ; $63e9: $02
    dec b                                         ; $63ea: $05
    ld [bc], a                                    ; $63eb: $02
    rlca                                          ; $63ec: $07
    and e                                         ; $63ed: $a3
    and h                                         ; $63ee: $a4
    and l                                         ; $63ef: $a5
    and [hl]                                      ; $63f0: $a6
    and a                                         ; $63f1: $a7
    xor b                                         ; $63f2: $a8
    xor c                                         ; $63f3: $a9
    xor d                                         ; $63f4: $aa
    xor e                                         ; $63f5: $ab
    xor h                                         ; $63f6: $ac
    xor l                                         ; $63f7: $ad
    xor [hl]                                      ; $63f8: $ae
    rla                                           ; $63f9: $17
    jr jr_089_6415                                ; $63fa: $18 $19

    ld a, [de]                                    ; $63fc: $1a
    ld c, $0e                                     ; $63fd: $0e $0e
    ld c, $0e                                     ; $63ff: $0e $0e
    ld c, $0e                                     ; $6401: $0e $0e
    ld c, $0e                                     ; $6403: $0e $0e

jr_089_6405:
    inc c                                         ; $6405: $0c
    inc c                                         ; $6406: $0c
    inc c                                         ; $6407: $0c
    inc c                                         ; $6408: $0c
    ld [bc], a                                    ; $6409: $02
    dec b                                         ; $640a: $05
    ld [bc], a                                    ; $640b: $02
    ld [bc], a                                    ; $640c: $02
    xor a                                         ; $640d: $af
    ld [$eceb], a                                 ; $640e: $ea $eb $ec
    or b                                          ; $6411: $b0
    cp $ff                                        ; $6412: $fe $ff
    nop                                           ; $6414: $00

jr_089_6415:
    or c                                          ; $6415: $b1
    ld bc, $f402                                  ; $6416: $01 $02 $f4
    daa                                           ; $6419: $27
    jr z, jr_089_6445                             ; $641a: $28 $29

    ld a, [hl+]                                   ; $641c: $2a
    inc c                                         ; $641d: $0c
    inc b                                         ; $641e: $04
    inc b                                         ; $641f: $04
    inc b                                         ; $6420: $04
    inc c                                         ; $6421: $0c
    inc b                                         ; $6422: $04
    inc b                                         ; $6423: $04
    inc b                                         ; $6424: $04
    inc c                                         ; $6425: $0c
    inc b                                         ; $6426: $04
    inc b                                         ; $6427: $04
    inc b                                         ; $6428: $04
    rlca                                          ; $6429: $07
    ld [bc], a                                    ; $642a: $02
    rlca                                          ; $642b: $07
    ld [bc], a                                    ; $642c: $02
    or d                                          ; $642d: $b2
    ld a, c                                       ; $642e: $79
    ld a, d                                       ; $642f: $7a
    db $dd                                        ; $6430: $dd
    or e                                          ; $6431: $b3
    ld a, l                                       ; $6432: $7d
    ld a, [hl]                                    ; $6433: $7e
    db $ed                                        ; $6434: $ed
    or h                                          ; $6435: $b4
    add c                                         ; $6436: $81
    add d                                         ; $6437: $82
    pop af                                        ; $6438: $f1
    rla                                           ; $6439: $17
    jr @+$1b                                      ; $643a: $18 $19

    ld a, [de]                                    ; $643c: $1a
    inc c                                         ; $643d: $0c
    inc b                                         ; $643e: $04
    inc b                                         ; $643f: $04
    inc b                                         ; $6440: $04
    inc c                                         ; $6441: $0c
    inc b                                         ; $6442: $04
    inc b                                         ; $6443: $04
    inc b                                         ; $6444: $04

jr_089_6445:
    inc c                                         ; $6445: $0c
    inc c                                         ; $6446: $0c
    inc c                                         ; $6447: $0c
    inc b                                         ; $6448: $04
    dec b                                         ; $6449: $05
    ld [bc], a                                    ; $644a: $02
    dec b                                         ; $644b: $05
    inc bc                                        ; $644c: $03
    dec bc                                        ; $644d: $0b
    inc c                                         ; $644e: $0c
    dec c                                         ; $644f: $0d
    ld c, $0f                                     ; $6450: $0e $0f
    db $10                                        ; $6452: $10
    ld de, $1312                                  ; $6453: $11 $12 $13
    inc d                                         ; $6456: $14
    dec d                                         ; $6457: $15
    ld d, $17                                     ; $6458: $16 $17
    jr jr_089_6475                                ; $645a: $18 $19

    ld a, [de]                                    ; $645c: $1a
    ld [bc], a                                    ; $645d: $02
    ld [bc], a                                    ; $645e: $02
    dec b                                         ; $645f: $05
    ld [bc], a                                    ; $6460: $02
    rlca                                          ; $6461: $07
    dec b                                         ; $6462: $05
    ld [bc], a                                    ; $6463: $02
    ld [bc], a                                    ; $6464: $02

Call_089_6465:
    ld [bc], a                                    ; $6465: $02
    ld [bc], a                                    ; $6466: $02
    dec b                                         ; $6467: $05
    ld [bc], a                                    ; $6468: $02
    rlca                                          ; $6469: $07
    rlca                                          ; $646a: $07
    ld [bc], a                                    ; $646b: $02
    dec b                                         ; $646c: $05
    dec de                                        ; $646d: $1b
    inc e                                         ; $646e: $1c
    dec e                                         ; $646f: $1d
    ld e, $1f                                     ; $6470: $1e $1f
    jr nz, @+$23                                  ; $6472: $20 $21

    ld [hl+], a                                   ; $6474: $22

jr_089_6475:
    inc hl                                        ; $6475: $23
    inc h                                         ; $6476: $24
    dec h                                         ; $6477: $25
    ld h, $27                                     ; $6478: $26 $27
    jr z, jr_089_64a5                             ; $647a: $28 $29

    ld a, [hl+]                                   ; $647c: $2a
    ld [bc], a                                    ; $647d: $02
    dec b                                         ; $647e: $05
    ld [bc], a                                    ; $647f: $02
    ld [bc], a                                    ; $6480: $02
    rlca                                          ; $6481: $07
    ld [bc], a                                    ; $6482: $02
    rlca                                          ; $6483: $07
    ld [bc], a                                    ; $6484: $02
    ld [bc], a                                    ; $6485: $02
    ld [bc], a                                    ; $6486: $02
    ld [bc], a                                    ; $6487: $02
    dec b                                         ; $6488: $05
    ld [bc], a                                    ; $6489: $02
    dec b                                         ; $648a: $05
    ld [bc], a                                    ; $648b: $02
    ld [bc], a                                    ; $648c: $02
    dec bc                                        ; $648d: $0b
    inc c                                         ; $648e: $0c
    dec c                                         ; $648f: $0d
    ld c, $0f                                     ; $6490: $0e $0f
    db $10                                        ; $6492: $10
    ld de, $1312                                  ; $6493: $11 $12 $13
    inc d                                         ; $6496: $14
    dec d                                         ; $6497: $15
    ld d, $17                                     ; $6498: $16 $17
    jr jr_089_64b5                                ; $649a: $18 $19

    ld a, [de]                                    ; $649c: $1a
    rlca                                          ; $649d: $07
    dec b                                         ; $649e: $05
    ld [bc], a                                    ; $649f: $02
    ld [bc], a                                    ; $64a0: $02
    dec b                                         ; $64a1: $05
    rlca                                          ; $64a2: $07
    ld [bc], a                                    ; $64a3: $02
    rlca                                          ; $64a4: $07

jr_089_64a5:
    ld [bc], a                                    ; $64a5: $02
    ld [bc], a                                    ; $64a6: $02
    ld [bc], a                                    ; $64a7: $02
    ld [bc], a                                    ; $64a8: $02
    rlca                                          ; $64a9: $07
    rlca                                          ; $64aa: $07
    ld [bc], a                                    ; $64ab: $02
    dec b                                         ; $64ac: $05
    push af                                       ; $64ad: $f5
    or $f7                                        ; $64ae: $f6 $f7
    ld hl, sp-$07                                 ; $64b0: $f8 $f9
    ld a, [$fcfb]                                 ; $64b2: $fa $fb $fc

jr_089_64b5:
    dec bc                                        ; $64b5: $0b
    inc c                                         ; $64b6: $0c
    dec c                                         ; $64b7: $0d
    ld c, $0f                                     ; $64b8: $0e $0f
    db $10                                        ; $64ba: $10
    ld de, $0212                                  ; $64bb: $11 $12 $02
    ld [bc], a                                    ; $64be: $02
    ld [bc], a                                    ; $64bf: $02
    dec b                                         ; $64c0: $05
    dec b                                         ; $64c1: $05
    dec b                                         ; $64c2: $05
    rlca                                          ; $64c3: $07
    ld [bc], a                                    ; $64c4: $02
    rlca                                          ; $64c5: $07
    ld [bc], a                                    ; $64c6: $02
    ld [bc], a                                    ; $64c7: $02
    dec b                                         ; $64c8: $05
    rlca                                          ; $64c9: $07
    ld [bc], a                                    ; $64ca: $02
    ld [bc], a                                    ; $64cb: $02
    rlca                                          ; $64cc: $07
    inc bc                                        ; $64cd: $03
    inc b                                         ; $64ce: $04
    dec b                                         ; $64cf: $05
    ld b, $07                                     ; $64d0: $06 $07
    ld [$0a09], sp                                ; $64d2: $08 $09 $0a
    dec de                                        ; $64d5: $1b
    inc e                                         ; $64d6: $1c
    dec e                                         ; $64d7: $1d
    ld e, $1f                                     ; $64d8: $1e $1f
    jr nz, @+$23                                  ; $64da: $20 $21

    ld [hl+], a                                   ; $64dc: $22
    dec b                                         ; $64dd: $05
    ld [bc], a                                    ; $64de: $02
    ld [bc], a                                    ; $64df: $02
    dec b                                         ; $64e0: $05
    rlca                                          ; $64e1: $07
    ld [bc], a                                    ; $64e2: $02
    rlca                                          ; $64e3: $07
    dec b                                         ; $64e4: $05
    dec b                                         ; $64e5: $05
    dec b                                         ; $64e6: $05
    dec b                                         ; $64e7: $05
    dec b                                         ; $64e8: $05
    ld [bc], a                                    ; $64e9: $02
    ld [bc], a                                    ; $64ea: $02
    ld [bc], a                                    ; $64eb: $02
    ld [bc], a                                    ; $64ec: $02
    push af                                       ; $64ed: $f5
    or $f7                                        ; $64ee: $f6 $f7
    ld hl, sp-$07                                 ; $64f0: $f8 $f9
    ld a, [$fcfb]                                 ; $64f2: $fa $fb $fc
    dec bc                                        ; $64f5: $0b
    inc c                                         ; $64f6: $0c
    dec c                                         ; $64f7: $0d
    ld c, $0f                                     ; $64f8: $0e $0f
    db $10                                        ; $64fa: $10
    ld de, $0512                                  ; $64fb: $11 $12 $05
    ld [bc], a                                    ; $64fe: $02
    ld [bc], a                                    ; $64ff: $02
    dec b                                         ; $6500: $05
    ld [bc], a                                    ; $6501: $02
    dec b                                         ; $6502: $05
    rlca                                          ; $6503: $07
    ld [bc], a                                    ; $6504: $02
    dec b                                         ; $6505: $05
    ld [bc], a                                    ; $6506: $02
    ld [bc], a                                    ; $6507: $02
    ld [bc], a                                    ; $6508: $02
    ld [bc], a                                    ; $6509: $02
    dec b                                         ; $650a: $05
    ld [bc], a                                    ; $650b: $02
    ld [bc], a                                    ; $650c: $02
    pop de                                        ; $650d: $d1
    pop de                                        ; $650e: $d1
    pop de                                        ; $650f: $d1
    db $d3                                        ; $6510: $d3
    call nc, $d4d4                                ; $6511: $d4 $d4 $d4
    ld l, h                                       ; $6514: $6c
    sub $d7                                       ; $6515: $d6 $d7
    ret c                                         ; $6517: $d8

    or l                                          ; $6518: $b5
    jp c, $dcdb                                   ; $6519: $da $db $dc

    or [hl]                                       ; $651c: $b6
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    add b                                         ; $651f: $80
    add b                                         ; $6520: $80
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    add b                                         ; $6523: $80
    add b                                         ; $6524: $80
    inc b                                         ; $6525: $04
    inc b                                         ; $6526: $04
    inc b                                         ; $6527: $04
    inc c                                         ; $6528: $0c
    inc b                                         ; $6529: $04
    inc b                                         ; $652a: $04
    inc b                                         ; $652b: $04
    inc c                                         ; $652c: $0c
    inc de                                        ; $652d: $13
    inc d                                         ; $652e: $14
    dec d                                         ; $652f: $15
    ld d, $17                                     ; $6530: $16 $17
    jr jr_089_654d                                ; $6532: $18 $19

    ld a, [de]                                    ; $6534: $1a
    push af                                       ; $6535: $f5
    or $f7                                        ; $6536: $f6 $f7
    ld hl, sp-$07                                 ; $6538: $f8 $f9
    ld a, [$fcfb]                                 ; $653a: $fa $fb $fc
    ld [bc], a                                    ; $653d: $02
    ld [bc], a                                    ; $653e: $02
    dec b                                         ; $653f: $05
    dec b                                         ; $6540: $05
    ld [bc], a                                    ; $6541: $02
    dec b                                         ; $6542: $05
    dec b                                         ; $6543: $05
    ld [bc], a                                    ; $6544: $02
    dec b                                         ; $6545: $05
    ld [bc], a                                    ; $6546: $02
    ld [bc], a                                    ; $6547: $02
    ld [bc], a                                    ; $6548: $02
    ld [bc], a                                    ; $6549: $02
    rlca                                          ; $654a: $07
    rlca                                          ; $654b: $07
    dec b                                         ; $654c: $05

jr_089_654d:
    inc hl                                        ; $654d: $23
    inc h                                         ; $654e: $24
    dec h                                         ; $654f: $25
    ld h, $27                                     ; $6550: $26 $27
    jr z, jr_089_657d                             ; $6552: $28 $29

    ld a, [hl+]                                   ; $6554: $2a
    inc bc                                        ; $6555: $03
    inc b                                         ; $6556: $04
    dec b                                         ; $6557: $05
    ld b, $07                                     ; $6558: $06 $07
    ld [$0a09], sp                                ; $655a: $08 $09 $0a
    ld [bc], a                                    ; $655d: $02
    rlca                                          ; $655e: $07
    ld [bc], a                                    ; $655f: $02
    ld [bc], a                                    ; $6560: $02
    ld [bc], a                                    ; $6561: $02
    ld [bc], a                                    ; $6562: $02
    rlca                                          ; $6563: $07

Call_089_6564:
    ld [bc], a                                    ; $6564: $02
    dec b                                         ; $6565: $05
    rlca                                          ; $6566: $07
    ld [bc], a                                    ; $6567: $02
    dec b                                         ; $6568: $05
    ld [bc], a                                    ; $6569: $02
    rlca                                          ; $656a: $07
    ld [bc], a                                    ; $656b: $02
    dec b                                         ; $656c: $05
    inc de                                        ; $656d: $13
    inc d                                         ; $656e: $14
    dec d                                         ; $656f: $15
    ld d, $17                                     ; $6570: $16 $17
    jr jr_089_658d                                ; $6572: $18 $19

    ld a, [de]                                    ; $6574: $1a
    push af                                       ; $6575: $f5
    or $f7                                        ; $6576: $f6 $f7
    ld hl, sp-$07                                 ; $6578: $f8 $f9
    ld a, [$fcfb]                                 ; $657a: $fa $fb $fc

jr_089_657d:
    dec b                                         ; $657d: $05
    ld [bc], a                                    ; $657e: $02
    ld [bc], a                                    ; $657f: $02
    rlca                                          ; $6580: $07
    dec b                                         ; $6581: $05
    rlca                                          ; $6582: $07
    ld [bc], a                                    ; $6583: $02
    dec b                                         ; $6584: $05
    ld [bc], a                                    ; $6585: $02
    dec b                                         ; $6586: $05
    ld [bc], a                                    ; $6587: $02
    dec b                                         ; $6588: $05
    ld [bc], a                                    ; $6589: $02
    ld [bc], a                                    ; $658a: $02
    rlca                                          ; $658b: $07
    ld [bc], a                                    ; $658c: $02

jr_089_658d:
    sbc $df                                       ; $658d: $de $df
    ldh [$b7], a                                  ; $658f: $e0 $b7
    xor $ef                                       ; $6591: $ee $ef
    ldh a, [$b8]                                  ; $6593: $f0 $b8
    ld a, [c]                                     ; $6595: $f2
    di                                            ; $6596: $f3
    db $f4                                        ; $6597: $f4
    cp c                                          ; $6598: $b9
    daa                                           ; $6599: $27
    jr z, jr_089_65c5                             ; $659a: $28 $29

    ld a, [hl+]                                   ; $659c: $2a
    inc b                                         ; $659d: $04
    inc b                                         ; $659e: $04
    inc b                                         ; $659f: $04
    inc c                                         ; $65a0: $0c
    inc b                                         ; $65a1: $04
    inc b                                         ; $65a2: $04
    inc b                                         ; $65a3: $04
    inc c                                         ; $65a4: $0c
    inc b                                         ; $65a5: $04
    inc b                                         ; $65a6: $04
    inc b                                         ; $65a7: $04
    inc c                                         ; $65a8: $0c
    inc bc                                        ; $65a9: $03
    inc bc                                        ; $65aa: $03
    inc bc                                        ; $65ab: $03
    dec b                                         ; $65ac: $05
    dec bc                                        ; $65ad: $0b
    inc c                                         ; $65ae: $0c
    dec c                                         ; $65af: $0d
    ld c, $0f                                     ; $65b0: $0e $0f
    db $10                                        ; $65b2: $10
    ld de, $1312                                  ; $65b3: $11 $12 $13
    inc d                                         ; $65b6: $14
    dec d                                         ; $65b7: $15
    ld d, $17                                     ; $65b8: $16 $17
    jr jr_089_65d5                                ; $65ba: $18 $19

    ld a, [de]                                    ; $65bc: $1a
    dec b                                         ; $65bd: $05
    dec b                                         ; $65be: $05
    ld [bc], a                                    ; $65bf: $02
    rlca                                          ; $65c0: $07
    ld [bc], a                                    ; $65c1: $02
    rlca                                          ; $65c2: $07
    ld [bc], a                                    ; $65c3: $02
    ld [bc], a                                    ; $65c4: $02

jr_089_65c5:
    ld [bc], a                                    ; $65c5: $02
    ld [bc], a                                    ; $65c6: $02
    rlca                                          ; $65c7: $07
    rlca                                          ; $65c8: $07
    ld [bc], a                                    ; $65c9: $02
    rlca                                          ; $65ca: $07
    ld [bc], a                                    ; $65cb: $02
    dec b                                         ; $65cc: $05
    dec de                                        ; $65cd: $1b
    inc e                                         ; $65ce: $1c
    dec e                                         ; $65cf: $1d
    ld e, $1f                                     ; $65d0: $1e $1f
    jr nz, @+$23                                  ; $65d2: $20 $21

    ld [hl+], a                                   ; $65d4: $22

jr_089_65d5:
    inc hl                                        ; $65d5: $23
    inc h                                         ; $65d6: $24
    dec h                                         ; $65d7: $25
    ld h, $27                                     ; $65d8: $26 $27
    jr z, jr_089_6605                             ; $65da: $28 $29

    ld a, [hl+]                                   ; $65dc: $2a
    ld [bc], a                                    ; $65dd: $02
    dec b                                         ; $65de: $05
    dec b                                         ; $65df: $05
    rlca                                          ; $65e0: $07
    ld [bc], a                                    ; $65e1: $02
    rlca                                          ; $65e2: $07
    ld [bc], a                                    ; $65e3: $02
    ld [bc], a                                    ; $65e4: $02
    ld [bc], a                                    ; $65e5: $02
    dec b                                         ; $65e6: $05

Call_089_65e7:
    ld [bc], a                                    ; $65e7: $02
    ld [bc], a                                    ; $65e8: $02
    dec b                                         ; $65e9: $05
    ld [bc], a                                    ; $65ea: $02
    dec b                                         ; $65eb: $05
    ld [bc], a                                    ; $65ec: $02
    dec bc                                        ; $65ed: $0b
    inc c                                         ; $65ee: $0c
    dec c                                         ; $65ef: $0d
    ld c, $0f                                     ; $65f0: $0e $0f
    db $10                                        ; $65f2: $10
    ld de, $1312                                  ; $65f3: $11 $12 $13
    inc d                                         ; $65f6: $14
    dec d                                         ; $65f7: $15
    ld d, $17                                     ; $65f8: $16 $17
    jr jr_089_6615                                ; $65fa: $18 $19

    ld a, [de]                                    ; $65fc: $1a
    rlca                                          ; $65fd: $07
    dec b                                         ; $65fe: $05
    dec b                                         ; $65ff: $05
    ld [bc], a                                    ; $6600: $02
    dec b                                         ; $6601: $05
    ld [bc], a                                    ; $6602: $02
    ld [bc], a                                    ; $6603: $02
    rlca                                          ; $6604: $07

jr_089_6605:
    ld [bc], a                                    ; $6605: $02
    dec b                                         ; $6606: $05
    rlca                                          ; $6607: $07
    ld [bc], a                                    ; $6608: $02
    dec b                                         ; $6609: $05
    ld [bc], a                                    ; $660a: $02
    ld [bc], a                                    ; $660b: $02
    ld [bc], a                                    ; $660c: $02
    db $d3                                        ; $660d: $d3
    pop de                                        ; $660e: $d1
    pop de                                        ; $660f: $d1
    pop de                                        ; $6610: $d1
    inc l                                         ; $6611: $2c
    call nc, $d4d4                                ; $6612: $d4 $d4 $d4

jr_089_6615:
    dec l                                         ; $6615: $2d
    ld l, a                                       ; $6616: $6f
    push de                                       ; $6617: $d5
    sub $32                                       ; $6618: $d6 $32
    ld [hl], d                                    ; $661a: $72
    reti                                          ; $661b: $d9


    jp c, $8080                                   ; $661c: $da $80 $80

    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    add b                                         ; $6621: $80
    add b                                         ; $6622: $80
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    inc b                                         ; $6625: $04
    inc b                                         ; $6626: $04
    inc b                                         ; $6627: $04
    inc b                                         ; $6628: $04
    inc b                                         ; $6629: $04
    inc b                                         ; $662a: $04
    inc b                                         ; $662b: $04
    inc b                                         ; $662c: $04
    pop de                                        ; $662d: $d1
    pop de                                        ; $662e: $d1
    pop de                                        ; $662f: $d1
    pop de                                        ; $6630: $d1
    call nc, $d4d4                                ; $6631: $d4 $d4 $d4
    call nc, $d8d7                                ; $6634: $d4 $d7 $d8
    pop hl                                        ; $6637: $e1
    cp d                                          ; $6638: $ba
    db $db                                        ; $6639: $db
    call c, $bbe5                                 ; $663a: $dc $e5 $bb
    nop                                           ; $663d: $00
    nop                                           ; $663e: $00
    nop                                           ; $663f: $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    inc b                                         ; $6645: $04
    inc b                                         ; $6646: $04
    inc b                                         ; $6647: $04
    inc c                                         ; $6648: $0c
    inc b                                         ; $6649: $04
    inc b                                         ; $664a: $04
    inc b                                         ; $664b: $04
    inc c                                         ; $664c: $0c
    pop de                                        ; $664d: $d1
    pop de                                        ; $664e: $d1
    pop de                                        ; $664f: $d1
    pop de                                        ; $6650: $d1
    call nc, $d4d4                                ; $6651: $d4 $d4 $d4
    call nc, $bdbc                                ; $6654: $d4 $bc $bd
    cp [hl]                                       ; $6657: $be
    cp a                                          ; $6658: $bf
    ret nz                                        ; $6659: $c0

    pop bc                                        ; $665a: $c1
    jp nz, $00c3                                  ; $665b: $c2 $c3 $00

    nop                                           ; $665e: $00
    nop                                           ; $665f: $00
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    add hl, bc                                    ; $6665: $09
    add hl, bc                                    ; $6666: $09
    add hl, bc                                    ; $6667: $09
    add hl, bc                                    ; $6668: $09
    add hl, bc                                    ; $6669: $09
    add hl, bc                                    ; $666a: $09
    add hl, bc                                    ; $666b: $09
    add hl, bc                                    ; $666c: $09
    pop de                                        ; $666d: $d1
    pop de                                        ; $666e: $d1
    pop de                                        ; $666f: $d1
    pop de                                        ; $6670: $d1
    call nc, Call_000_2bd4                        ; $6671: $d4 $d4 $2b
    pop de                                        ; $6674: $d1
    call nz, $d3e4                                ; $6675: $c4 $e4 $d3
    pop de                                        ; $6678: $d1
    push bc                                       ; $6679: $c5
    add sp, -$2d                                  ; $667a: $e8 $d3
    pop de                                        ; $667c: $d1
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    nop                                           ; $667f: $00
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    inc c                                         ; $6685: $0c
    inc b                                         ; $6686: $04
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    inc c                                         ; $6689: $0c
    inc b                                         ; $668a: $04
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    inc sp                                        ; $668d: $33
    ld a, d                                       ; $668e: $7a
    db $dd                                        ; $668f: $dd
    sbc $34                                       ; $6690: $de $34
    ld a, [hl]                                    ; $6692: $7e
    db $ed                                        ; $6693: $ed
    xor $35                                       ; $6694: $ee $35
    add d                                         ; $6696: $82
    pop af                                        ; $6697: $f1
    ld a, [c]                                     ; $6698: $f2
    daa                                           ; $6699: $27
    jr z, jr_089_66c5                             ; $669a: $28 $29

    ld a, [hl+]                                   ; $669c: $2a
    inc b                                         ; $669d: $04
    inc b                                         ; $669e: $04
    inc b                                         ; $669f: $04
    inc b                                         ; $66a0: $04
    inc b                                         ; $66a1: $04
    inc b                                         ; $66a2: $04
    inc b                                         ; $66a3: $04
    inc b                                         ; $66a4: $04
    inc b                                         ; $66a5: $04
    inc c                                         ; $66a6: $0c
    inc b                                         ; $66a7: $04
    inc b                                         ; $66a8: $04
    ld [bc], a                                    ; $66a9: $02
    dec b                                         ; $66aa: $05
    inc bc                                        ; $66ab: $03
    inc bc                                        ; $66ac: $03
    rst $18                                       ; $66ad: $df
    ldh [$e9], a                                  ; $66ae: $e0 $e9
    add $ef                                       ; $66b0: $c6 $ef
    ldh a, [$fd]                                  ; $66b2: $f0 $fd
    rst $00                                       ; $66b4: $c7
    di                                            ; $66b5: $f3
    db $f4                                        ; $66b6: $f4
    pop af                                        ; $66b7: $f1
    ret z                                         ; $66b8: $c8

    rla                                           ; $66b9: $17
    jr jr_089_66d5                                ; $66ba: $18 $19

    ld a, [de]                                    ; $66bc: $1a
    inc b                                         ; $66bd: $04
    inc b                                         ; $66be: $04
    inc b                                         ; $66bf: $04
    inc c                                         ; $66c0: $0c
    inc b                                         ; $66c1: $04
    inc b                                         ; $66c2: $04
    inc b                                         ; $66c3: $04
    inc c                                         ; $66c4: $0c

jr_089_66c5:
    inc b                                         ; $66c5: $04
    inc b                                         ; $66c6: $04
    inc b                                         ; $66c7: $04
    inc c                                         ; $66c8: $0c
    inc bc                                        ; $66c9: $03
    inc bc                                        ; $66ca: $03
    dec b                                         ; $66cb: $05
    ld [bc], a                                    ; $66cc: $02
    ret                                           ; $66cd: $c9


    jp z, $cccb                                   ; $66ce: $ca $cb $cc

    call $cfce                                    ; $66d1: $cd $ce $cf
    ret nc                                        ; $66d4: $d0

jr_089_66d5:
    pop de                                        ; $66d5: $d1
    jp nc, $d4d3                                  ; $66d6: $d2 $d3 $d4

    daa                                           ; $66d9: $27
    jr z, jr_089_6705                             ; $66da: $28 $29

    ld a, [hl+]                                   ; $66dc: $2a
    add hl, bc                                    ; $66dd: $09
    add hl, bc                                    ; $66de: $09
    add hl, bc                                    ; $66df: $09
    add hl, bc                                    ; $66e0: $09
    add hl, bc                                    ; $66e1: $09
    add hl, bc                                    ; $66e2: $09
    add hl, bc                                    ; $66e3: $09
    add hl, bc                                    ; $66e4: $09
    inc c                                         ; $66e5: $0c
    inc c                                         ; $66e6: $0c
    inc c                                         ; $66e7: $0c
    inc c                                         ; $66e8: $0c
    ld [bc], a                                    ; $66e9: $02
    rlca                                          ; $66ea: $07
    ld [bc], a                                    ; $66eb: $02
    dec b                                         ; $66ec: $05
    push de                                       ; $66ed: $d5
    db $ec                                        ; $66ee: $ec
    db $d3                                        ; $66ef: $d3
    pop de                                        ; $66f0: $d1
    sub $00                                       ; $66f1: $d6 $00
    db $d3                                        ; $66f3: $d3
    pop de                                        ; $66f4: $d1
    rst $10                                       ; $66f5: $d7
    db $f4                                        ; $66f6: $f4
    db $d3                                        ; $66f7: $d3
    pop de                                        ; $66f8: $d1
    rla                                           ; $66f9: $17
    jr @-$2b                                      ; $66fa: $18 $d3

    pop de                                        ; $66fc: $d1
    inc c                                         ; $66fd: $0c
    inc b                                         ; $66fe: $04
    add b                                         ; $66ff: $80
    add b                                         ; $6700: $80
    inc c                                         ; $6701: $0c
    inc b                                         ; $6702: $04
    add b                                         ; $6703: $80
    add b                                         ; $6704: $80

jr_089_6705:
    inc c                                         ; $6705: $0c
    inc b                                         ; $6706: $04
    add b                                         ; $6707: $80
    add b                                         ; $6708: $80
    dec b                                         ; $6709: $05
    ld [bc], a                                    ; $670a: $02
    add b                                         ; $670b: $80
    add b                                         ; $670c: $80
    pop de                                        ; $670d: $d1
    db $d3                                        ; $670e: $d3
    rst $30                                       ; $670f: $f7
    ld hl, sp-$2f                                 ; $6710: $f8 $d1
    db $d3                                        ; $6712: $d3
    ei                                            ; $6713: $fb
    db $fc                                        ; $6714: $fc
    pop de                                        ; $6715: $d1
    db $d3                                        ; $6716: $d3
    dec c                                         ; $6717: $0d
    ld c, $d1                                     ; $6718: $0e $d1
    db $d3                                        ; $671a: $d3
    ld de, $8012                                  ; $671b: $11 $12 $80
    add b                                         ; $671e: $80
    dec b                                         ; $671f: $05
    ld [bc], a                                    ; $6720: $02
    add b                                         ; $6721: $80
    add b                                         ; $6722: $80
    rlca                                          ; $6723: $07
    rlca                                          ; $6724: $07
    add b                                         ; $6725: $80
    add b                                         ; $6726: $80
    ld [bc], a                                    ; $6727: $02
    rlca                                          ; $6728: $07
    add b                                         ; $6729: $80
    add b                                         ; $672a: $80
    dec b                                         ; $672b: $05
    ld [bc], a                                    ; $672c: $02
    inc bc                                        ; $672d: $03
    inc b                                         ; $672e: $04
    dec b                                         ; $672f: $05
    ld b, $07                                     ; $6730: $06 $07
    ld [$0a09], sp                                ; $6732: $08 $09 $0a
    dec de                                        ; $6735: $1b
    inc e                                         ; $6736: $1c
    dec e                                         ; $6737: $1d
    ld e, $1f                                     ; $6738: $1e $1f
    jr nz, @+$23                                  ; $673a: $20 $21

    ld [hl+], a                                   ; $673c: $22
    dec b                                         ; $673d: $05
    inc bc                                        ; $673e: $03
    inc bc                                        ; $673f: $03
    inc bc                                        ; $6740: $03
    dec b                                         ; $6741: $05
    inc bc                                        ; $6742: $03
    inc bc                                        ; $6743: $03
    inc bc                                        ; $6744: $03
    ld [bc], a                                    ; $6745: $02
    ld [bc], a                                    ; $6746: $02
    ld [bc], a                                    ; $6747: $02
    dec b                                         ; $6748: $05
    dec b                                         ; $6749: $05
    ld [bc], a                                    ; $674a: $02
    ld [bc], a                                    ; $674b: $02
    ld [bc], a                                    ; $674c: $02
    push af                                       ; $674d: $f5
    or $f7                                        ; $674e: $f6 $f7
    ld hl, sp-$07                                 ; $6750: $f8 $f9
    ld a, [$fcfb]                                 ; $6752: $fa $fb $fc
    dec bc                                        ; $6755: $0b
    inc c                                         ; $6756: $0c
    dec c                                         ; $6757: $0d
    ld c, $0f                                     ; $6758: $0e $0f
    db $10                                        ; $675a: $10
    ld de, $0312                                  ; $675b: $11 $12 $03
    inc bc                                        ; $675e: $03
    ld [bc], a                                    ; $675f: $02
    ld [bc], a                                    ; $6760: $02
    inc bc                                        ; $6761: $03
    dec b                                         ; $6762: $05
    ld [bc], a                                    ; $6763: $02
    ld [bc], a                                    ; $6764: $02
    rlca                                          ; $6765: $07

Call_089_6766:
    ld [bc], a                                    ; $6766: $02
    rlca                                          ; $6767: $07
    ld [bc], a                                    ; $6768: $02
    dec b                                         ; $6769: $05
    dec b                                         ; $676a: $05
    ld [bc], a                                    ; $676b: $02
    ld [bc], a                                    ; $676c: $02
    pop de                                        ; $676d: $d1
    pop de                                        ; $676e: $d1
    pop de                                        ; $676f: $d1
    pop de                                        ; $6770: $d1
    pop de                                        ; $6771: $d1
    pop de                                        ; $6772: $d1
    pop de                                        ; $6773: $d1
    pop de                                        ; $6774: $d1
    pop de                                        ; $6775: $d1
    pop de                                        ; $6776: $d1
    pop de                                        ; $6777: $d1
    jp nc, $d1d1                                  ; $6778: $d2 $d1 $d1

    pop de                                        ; $677b: $d1
    db $d3                                        ; $677c: $d3
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    add b                                         ; $6784: $80
    nop                                           ; $6785: $00
    add b                                         ; $6786: $80
    add b                                         ; $6787: $80
    add b                                         ; $6788: $80
    nop                                           ; $6789: $00
    add b                                         ; $678a: $80
    add b                                         ; $678b: $80
    add b                                         ; $678c: $80
    pop de                                        ; $678d: $d1
    db $d3                                        ; $678e: $d3
    dec d                                         ; $678f: $15
    ld d, $d1                                     ; $6790: $16 $d1
    db $d3                                        ; $6792: $d3
    add hl, de                                    ; $6793: $19
    ld a, [de]                                    ; $6794: $1a
    call nc, $f76c                                ; $6795: $d4 $6c $f7
    ld hl, sp+$6f                                 ; $6798: $f8 $6f
    or l                                          ; $679a: $b5
    ei                                            ; $679b: $fb
    db $fc                                        ; $679c: $fc
    add b                                         ; $679d: $80
    add b                                         ; $679e: $80
    ld [bc], a                                    ; $679f: $02
    ld [bc], a                                    ; $67a0: $02
    add b                                         ; $67a1: $80
    add b                                         ; $67a2: $80
    rlca                                          ; $67a3: $07
    rlca                                          ; $67a4: $07
    add b                                         ; $67a5: $80
    add b                                         ; $67a6: $80
    ld [bc], a                                    ; $67a7: $02
    ld [bc], a                                    ; $67a8: $02
    inc b                                         ; $67a9: $04
    inc c                                         ; $67aa: $0c
    rlca                                          ; $67ab: $07
    dec b                                         ; $67ac: $05
    inc hl                                        ; $67ad: $23
    inc h                                         ; $67ae: $24
    dec h                                         ; $67af: $25
    ld h, $27                                     ; $67b0: $26 $27
    jr z, jr_089_67dd                             ; $67b2: $28 $29

    ld a, [hl+]                                   ; $67b4: $2a
    inc bc                                        ; $67b5: $03
    inc b                                         ; $67b6: $04
    dec b                                         ; $67b7: $05
    ld b, $07                                     ; $67b8: $06 $07
    ld [$0a09], sp                                ; $67ba: $08 $09 $0a
    ld [bc], a                                    ; $67bd: $02
    ld [bc], a                                    ; $67be: $02
    dec b                                         ; $67bf: $05
    dec b                                         ; $67c0: $05
    dec b                                         ; $67c1: $05
    ld [bc], a                                    ; $67c2: $02
    rlca                                          ; $67c3: $07
    ld [bc], a                                    ; $67c4: $02
    rlca                                          ; $67c5: $07
    ld [bc], a                                    ; $67c6: $02
    ld [bc], a                                    ; $67c7: $02
    rlca                                          ; $67c8: $07
    ld [bc], a                                    ; $67c9: $02
    ld [bc], a                                    ; $67ca: $02
    dec b                                         ; $67cb: $05
    ld [bc], a                                    ; $67cc: $02
    inc de                                        ; $67cd: $13
    inc d                                         ; $67ce: $14
    dec d                                         ; $67cf: $15
    ld d, $17                                     ; $67d0: $16 $17
    jr jr_089_67ed                                ; $67d2: $18 $19

Call_089_67d4:
    ld a, [de]                                    ; $67d4: $1a
    push af                                       ; $67d5: $f5
    or $f7                                        ; $67d6: $f6 $f7
    ld hl, sp-$07                                 ; $67d8: $f8 $f9
    ld a, [$fcfb]                                 ; $67da: $fa $fb $fc

jr_089_67dd:
    ld [bc], a                                    ; $67dd: $02
    ld [bc], a                                    ; $67de: $02
    ld [bc], a                                    ; $67df: $02
    dec b                                         ; $67e0: $05
    dec b                                         ; $67e1: $05
    ld [bc], a                                    ; $67e2: $02
    rlca                                          ; $67e3: $07
    ld [bc], a                                    ; $67e4: $02
    ld [bc], a                                    ; $67e5: $02
    ld [bc], a                                    ; $67e6: $02
    rlca                                          ; $67e7: $07
    dec b                                         ; $67e8: $05
    ld [bc], a                                    ; $67e9: $02
    dec b                                         ; $67ea: $05
    dec b                                         ; $67eb: $05
    ld [bc], a                                    ; $67ec: $02

jr_089_67ed:
    pop de                                        ; $67ed: $d1
    pop de                                        ; $67ee: $d1
    pop de                                        ; $67ef: $d1
    ret c                                         ; $67f0: $d8

    pop de                                        ; $67f1: $d1
    pop de                                        ; $67f2: $d1
    pop de                                        ; $67f3: $d1
    ret c                                         ; $67f4: $d8

    pop de                                        ; $67f5: $d1
    pop de                                        ; $67f6: $d1
    pop de                                        ; $67f7: $d1
    ret c                                         ; $67f8: $d8

    pop de                                        ; $67f9: $d1
    pop de                                        ; $67fa: $d1
    pop de                                        ; $67fb: $d1
    ret c                                         ; $67fc: $d8

    nop                                           ; $67fd: $00
    add b                                         ; $67fe: $80
    add b                                         ; $67ff: $80
    adc b                                         ; $6800: $88
    nop                                           ; $6801: $00
    add b                                         ; $6802: $80
    add b                                         ; $6803: $80
    adc b                                         ; $6804: $88
    nop                                           ; $6805: $00
    add b                                         ; $6806: $80
    add b                                         ; $6807: $80
    adc b                                         ; $6808: $88
    nop                                           ; $6809: $00
    add b                                         ; $680a: $80
    add b                                         ; $680b: $80
    adc b                                         ; $680c: $88
    ld [hl], d                                    ; $680d: $72
    or [hl]                                       ; $680e: $b6
    dec c                                         ; $680f: $0d
    ld c, $7a                                     ; $6810: $0e $7a
    or a                                          ; $6812: $b7
    ld de, $7e12                                  ; $6813: $11 $12 $7e
    cp b                                          ; $6816: $b8
    dec d                                         ; $6817: $15
    ld d, $82                                     ; $6818: $16 $82
    cp c                                          ; $681a: $b9
    add hl, de                                    ; $681b: $19
    ld a, [de]                                    ; $681c: $1a
    inc b                                         ; $681d: $04
    inc c                                         ; $681e: $0c
    ld [bc], a                                    ; $681f: $02
    ld [bc], a                                    ; $6820: $02
    inc b                                         ; $6821: $04
    inc c                                         ; $6822: $0c
    dec b                                         ; $6823: $05
    ld [bc], a                                    ; $6824: $02
    inc b                                         ; $6825: $04
    inc c                                         ; $6826: $0c
    rlca                                          ; $6827: $07
    ld [bc], a                                    ; $6828: $02
    inc c                                         ; $6829: $0c
    inc c                                         ; $682a: $0c
    ld [bc], a                                    ; $682b: $02
    dec b                                         ; $682c: $05
    dec de                                        ; $682d: $1b
    inc e                                         ; $682e: $1c
    dec e                                         ; $682f: $1d
    ld e, $1f                                     ; $6830: $1e $1f
    jr nz, @+$23                                  ; $6832: $20 $21

    ld [hl+], a                                   ; $6834: $22
    inc hl                                        ; $6835: $23
    inc h                                         ; $6836: $24
    dec h                                         ; $6837: $25
    ld h, $27                                     ; $6838: $26 $27
    jr z, jr_089_6865                             ; $683a: $28 $29

    ld a, [hl+]                                   ; $683c: $2a
    dec b                                         ; $683d: $05
    dec b                                         ; $683e: $05
    dec b                                         ; $683f: $05
    ld [bc], a                                    ; $6840: $02
    rlca                                          ; $6841: $07
    rlca                                          ; $6842: $07
    ld [bc], a                                    ; $6843: $02
    rlca                                          ; $6844: $07
    dec b                                         ; $6845: $05
    dec b                                         ; $6846: $05
    dec b                                         ; $6847: $05
    dec b                                         ; $6848: $05
    dec b                                         ; $6849: $05
    ld [bc], a                                    ; $684a: $02
    rlca                                          ; $684b: $07
    ld [bc], a                                    ; $684c: $02
    dec bc                                        ; $684d: $0b
    inc c                                         ; $684e: $0c
    dec c                                         ; $684f: $0d
    ld c, $0f                                     ; $6850: $0e $0f
    db $10                                        ; $6852: $10
    ld de, $1312                                  ; $6853: $11 $12 $13
    inc d                                         ; $6856: $14
    dec d                                         ; $6857: $15
    ld d, $17                                     ; $6858: $16 $17
    jr jr_089_6875                                ; $685a: $18 $19

    ld a, [de]                                    ; $685c: $1a
    dec b                                         ; $685d: $05
    dec b                                         ; $685e: $05
    ld [bc], a                                    ; $685f: $02
    ld [bc], a                                    ; $6860: $02
    rlca                                          ; $6861: $07
    ld [bc], a                                    ; $6862: $02
    dec b                                         ; $6863: $05
    dec b                                         ; $6864: $05

jr_089_6865:
    ld [bc], a                                    ; $6865: $02
    dec b                                         ; $6866: $05
    ld [bc], a                                    ; $6867: $02
    ld [bc], a                                    ; $6868: $02
    rlca                                          ; $6869: $07
    dec b                                         ; $686a: $05
    rlca                                          ; $686b: $07
    rlca                                          ; $686c: $07
    pop de                                        ; $686d: $d1
    pop de                                        ; $686e: $d1
    reti                                          ; $686f: $d9


    ret c                                         ; $6870: $d8

    pop de                                        ; $6871: $d1
    pop de                                        ; $6872: $d1
    reti                                          ; $6873: $d9


    db $d3                                        ; $6874: $d3

jr_089_6875:
    pop de                                        ; $6875: $d1
    pop de                                        ; $6876: $d1
    reti                                          ; $6877: $d9


    inc l                                         ; $6878: $2c
    pop de                                        ; $6879: $d1
    pop de                                        ; $687a: $d1
    pop de                                        ; $687b: $d1
    pop de                                        ; $687c: $d1
    nop                                           ; $687d: $00
    add b                                         ; $687e: $80
    adc b                                         ; $687f: $88
    adc b                                         ; $6880: $88
    nop                                           ; $6881: $00
    add b                                         ; $6882: $80
    adc b                                         ; $6883: $88
    add b                                         ; $6884: $80
    nop                                           ; $6885: $00
    add b                                         ; $6886: $80
    adc b                                         ; $6887: $88
    add b                                         ; $6888: $80
    nop                                           ; $6889: $00
    add b                                         ; $688a: $80
    add b                                         ; $688b: $80
    add b                                         ; $688c: $80
    push af                                       ; $688d: $f5
    or $f7                                        ; $688e: $f6 $f7
    ld hl, sp-$07                                 ; $6890: $f8 $f9
    ld a, [$fcfb]                                 ; $6892: $fa $fb $fc
    call nc, $0dda                                ; $6895: $d4 $da $0d
    ld c, $d1                                     ; $6898: $0e $d1
    db $d3                                        ; $689a: $d3
    ld de, $0312                                  ; $689b: $11 $12 $03
    inc bc                                        ; $689e: $03
    dec b                                         ; $689f: $05
    dec b                                         ; $68a0: $05
    inc bc                                        ; $68a1: $03
    inc bc                                        ; $68a2: $03
    inc bc                                        ; $68a3: $03
    ld [bc], a                                    ; $68a4: $02
    add b                                         ; $68a5: $80
    adc b                                         ; $68a6: $88
    inc bc                                        ; $68a7: $03
    dec b                                         ; $68a8: $05
    add b                                         ; $68a9: $80
    add b                                         ; $68aa: $80
    dec b                                         ; $68ab: $05
    rlca                                          ; $68ac: $07
    inc bc                                        ; $68ad: $03
    inc b                                         ; $68ae: $04
    dec b                                         ; $68af: $05
    ld b, $07                                     ; $68b0: $06 $07
    ld [$0a09], sp                                ; $68b2: $08 $09 $0a
    dec de                                        ; $68b5: $1b
    inc e                                         ; $68b6: $1c
    dec e                                         ; $68b7: $1d
    ld e, $1f                                     ; $68b8: $1e $1f
    jr nz, @+$23                                  ; $68ba: $20 $21

    ld [hl+], a                                   ; $68bc: $22
    ld [bc], a                                    ; $68bd: $02
    rlca                                          ; $68be: $07
    ld [bc], a                                    ; $68bf: $02
    dec b                                         ; $68c0: $05
    rlca                                          ; $68c1: $07
    ld [bc], a                                    ; $68c2: $02
    dec b                                         ; $68c3: $05
    ld [bc], a                                    ; $68c4: $02
    ld [bc], a                                    ; $68c5: $02
    dec b                                         ; $68c6: $05
    ld [bc], a                                    ; $68c7: $02
    rlca                                          ; $68c8: $07
    ld [bc], a                                    ; $68c9: $02
    rlca                                          ; $68ca: $07
    ld [bc], a                                    ; $68cb: $02
    dec b                                         ; $68cc: $05
    push af                                       ; $68cd: $f5
    or $f7                                        ; $68ce: $f6 $f7
    ld hl, sp-$07                                 ; $68d0: $f8 $f9
    ld a, [$fcfb]                                 ; $68d2: $fa $fb $fc
    dec bc                                        ; $68d5: $0b
    inc c                                         ; $68d6: $0c
    dec c                                         ; $68d7: $0d
    ld c, $0f                                     ; $68d8: $0e $0f
    db $10                                        ; $68da: $10
    ld de, $0212                                  ; $68db: $11 $12 $02
    ld [bc], a                                    ; $68de: $02
    rlca                                          ; $68df: $07
    dec b                                         ; $68e0: $05
    rlca                                          ; $68e1: $07
    rlca                                          ; $68e2: $07
    dec b                                         ; $68e3: $05
    inc bc                                        ; $68e4: $03
    ld [bc], a                                    ; $68e5: $02
    dec b                                         ; $68e6: $05
    ld [bc], a                                    ; $68e7: $02
    inc bc                                        ; $68e8: $03
    dec b                                         ; $68e9: $05
    ld [bc], a                                    ; $68ea: $02
    rlca                                          ; $68eb: $07
    dec b                                         ; $68ec: $05
    inc bc                                        ; $68ed: $03
    inc b                                         ; $68ee: $04
    dec b                                         ; $68ef: $05
    ld b, $07                                     ; $68f0: $06 $07
    ld [$0a09], sp                                ; $68f2: $08 $09 $0a
    jp nc, $d4d4                                  ; $68f5: $d2 $d4 $d4

    call nc, $d1d3                                ; $68f8: $d4 $d3 $d1
    pop de                                        ; $68fb: $d1
    pop de                                        ; $68fc: $d1
    dec b                                         ; $68fd: $05
    rlca                                          ; $68fe: $07
    ld [bc], a                                    ; $68ff: $02
    dec b                                         ; $6900: $05
    rlca                                          ; $6901: $07
    ld [bc], a                                    ; $6902: $02
    dec b                                         ; $6903: $05
    ld [bc], a                                    ; $6904: $02
    add b                                         ; $6905: $80
    add b                                         ; $6906: $80
    add b                                         ; $6907: $80
    add b                                         ; $6908: $80
    add b                                         ; $6909: $80
    add b                                         ; $690a: $80
    add b                                         ; $690b: $80
    add b                                         ; $690c: $80
    push af                                       ; $690d: $f5
    or $f7                                        ; $690e: $f6 $f7
    ld hl, sp-$07                                 ; $6910: $f8 $f9
    ld a, [$fcfb]                                 ; $6912: $fa $fb $fc
    call nc, $d4d4                                ; $6915: $d4 $d4 $d4
    call nc, $d1d1                                ; $6918: $d4 $d1 $d1
    pop de                                        ; $691b: $d1
    pop de                                        ; $691c: $d1
    ld [bc], a                                    ; $691d: $02
    rlca                                          ; $691e: $07
    ld [bc], a                                    ; $691f: $02
    dec b                                         ; $6920: $05
    rlca                                          ; $6921: $07
    ld [bc], a                                    ; $6922: $02
    dec b                                         ; $6923: $05
    ld [bc], a                                    ; $6924: $02
    add b                                         ; $6925: $80
    add b                                         ; $6926: $80
    add b                                         ; $6927: $80
    add b                                         ; $6928: $80
    add b                                         ; $6929: $80
    add b                                         ; $692a: $80
    add b                                         ; $692b: $80
    add b                                         ; $692c: $80
    inc bc                                        ; $692d: $03
    inc b                                         ; $692e: $04
    dec b                                         ; $692f: $05
    ld b, $07                                     ; $6930: $06 $07
    ld [$0a09], sp                                ; $6932: $08 $09 $0a
    call nc, $d4d4                                ; $6935: $d4 $d4 $d4
    call nc, $d1d1                                ; $6938: $d4 $d1 $d1
    pop de                                        ; $693b: $d1
    pop de                                        ; $693c: $d1
    dec b                                         ; $693d: $05
    ld [bc], a                                    ; $693e: $02
    dec b                                         ; $693f: $05
    ld [bc], a                                    ; $6940: $02
    rlca                                          ; $6941: $07
    dec b                                         ; $6942: $05
    ld [bc], a                                    ; $6943: $02
    dec b                                         ; $6944: $05
    add b                                         ; $6945: $80
    add b                                         ; $6946: $80
    add b                                         ; $6947: $80
    add b                                         ; $6948: $80
    add b                                         ; $6949: $80
    add b                                         ; $694a: $80
    add b                                         ; $694b: $80
    add b                                         ; $694c: $80
    push af                                       ; $694d: $f5
    or $f7                                        ; $694e: $f6 $f7
    ld hl, sp-$07                                 ; $6950: $f8 $f9
    ld a, [$fcfb]                                 ; $6952: $fa $fb $fc
    call nc, $d4d4                                ; $6955: $d4 $d4 $d4
    call nc, $d1d1                                ; $6958: $d4 $d1 $d1
    pop de                                        ; $695b: $d1
    pop de                                        ; $695c: $d1
    rlca                                          ; $695d: $07
    rlca                                          ; $695e: $07
    inc bc                                        ; $695f: $03
    inc bc                                        ; $6960: $03
    ld [bc], a                                    ; $6961: $02
    ld [bc], a                                    ; $6962: $02
    dec b                                         ; $6963: $05
    inc bc                                        ; $6964: $03
    add b                                         ; $6965: $80
    add b                                         ; $6966: $80
    add b                                         ; $6967: $80
    add b                                         ; $6968: $80
    add b                                         ; $6969: $80
    add b                                         ; $696a: $80
    add b                                         ; $696b: $80
    add b                                         ; $696c: $80
    db $d3                                        ; $696d: $d3
    pop de                                        ; $696e: $d1
    pop de                                        ; $696f: $d1
    pop de                                        ; $6970: $d1
    db $d3                                        ; $6971: $d3
    pop de                                        ; $6972: $d1
    pop de                                        ; $6973: $d1
    pop de                                        ; $6974: $d1
    inc l                                         ; $6975: $2c
    call nc, $d12b                                ; $6976: $d4 $2b $d1
    dec l                                         ; $6979: $2d
    ld l, a                                       ; $697a: $6f
    db $d3                                        ; $697b: $d3
    pop de                                        ; $697c: $d1
    add b                                         ; $697d: $80
    add b                                         ; $697e: $80
    add b                                         ; $697f: $80
    add b                                         ; $6980: $80
    add b                                         ; $6981: $80
    add b                                         ; $6982: $80
    add b                                         ; $6983: $80
    add b                                         ; $6984: $80
    add b                                         ; $6985: $80
    add b                                         ; $6986: $80
    add b                                         ; $6987: $80
    add b                                         ; $6988: $80
    inc b                                         ; $6989: $04
    inc b                                         ; $698a: $04
    add b                                         ; $698b: $80
    add b                                         ; $698c: $80
    ld [hl-], a                                   ; $698d: $32
    ld [hl], d                                    ; $698e: $72
    ret c                                         ; $698f: $d8

    pop de                                        ; $6990: $d1
    inc sp                                        ; $6991: $33
    ld a, d                                       ; $6992: $7a
    ret c                                         ; $6993: $d8

    pop de                                        ; $6994: $d1
    inc [hl]                                      ; $6995: $34
    ld a, [hl]                                    ; $6996: $7e
    ret c                                         ; $6997: $d8

    pop de                                        ; $6998: $d1
    dec [hl]                                      ; $6999: $35
    add d                                         ; $699a: $82
    ret c                                         ; $699b: $d8

    pop de                                        ; $699c: $d1
    inc b                                         ; $699d: $04
    inc b                                         ; $699e: $04
    adc b                                         ; $699f: $88
    add b                                         ; $69a0: $80
    inc b                                         ; $69a1: $04
    inc b                                         ; $69a2: $04
    adc b                                         ; $69a3: $88
    add b                                         ; $69a4: $80
    inc b                                         ; $69a5: $04
    inc b                                         ; $69a6: $04
    adc b                                         ; $69a7: $88
    add b                                         ; $69a8: $80
    inc b                                         ; $69a9: $04
    inc c                                         ; $69aa: $0c
    adc b                                         ; $69ab: $88
    add b                                         ; $69ac: $80
    inc bc                                        ; $69ad: $03
    inc b                                         ; $69ae: $04
    ret c                                         ; $69af: $d8

    reti                                          ; $69b0: $d9


    rlca                                          ; $69b1: $07
    ld [$d9d3], sp                                ; $69b2: $08 $d3 $d9
    jp nc, Jump_089_6cd4                          ; $69b5: $d2 $d4 $6c

    reti                                          ; $69b8: $d9


    db $d3                                        ; $69b9: $d3
    pop de                                        ; $69ba: $d1
    pop de                                        ; $69bb: $d1
    pop de                                        ; $69bc: $d1
    inc bc                                        ; $69bd: $03
    inc bc                                        ; $69be: $03
    adc b                                         ; $69bf: $88
    xor b                                         ; $69c0: $a8
    inc bc                                        ; $69c1: $03
    inc bc                                        ; $69c2: $03
    add b                                         ; $69c3: $80
    xor b                                         ; $69c4: $a8
    add b                                         ; $69c5: $80
    add b                                         ; $69c6: $80
    add b                                         ; $69c7: $80
    xor b                                         ; $69c8: $a8
    add b                                         ; $69c9: $80
    add b                                         ; $69ca: $80
    add b                                         ; $69cb: $80
    add b                                         ; $69cc: $80
    inc bc                                        ; $69cd: $03

Call_089_69ce:
    inc b                                         ; $69ce: $04
    dec b                                         ; $69cf: $05
    ld b, $07                                     ; $69d0: $06 $07
    ld [$0a09], sp                                ; $69d2: $08 $09 $0a
    call nc, $d4d4                                ; $69d5: $d4 $d4 $d4
    call nc, $d1d1                                ; $69d8: $d4 $d1 $d1
    pop de                                        ; $69db: $d1
    pop de                                        ; $69dc: $d1
    inc bc                                        ; $69dd: $03
    inc bc                                        ; $69de: $03
    inc bc                                        ; $69df: $03
    inc bc                                        ; $69e0: $03
    inc bc                                        ; $69e1: $03
    inc bc                                        ; $69e2: $03
    inc bc                                        ; $69e3: $03
    dec b                                         ; $69e4: $05
    add b                                         ; $69e5: $80
    add b                                         ; $69e6: $80
    add b                                         ; $69e7: $80
    add b                                         ; $69e8: $80
    add b                                         ; $69e9: $80
    add b                                         ; $69ea: $80
    add b                                         ; $69eb: $80
    add b                                         ; $69ec: $80
    push af                                       ; $69ed: $f5
    or $f7                                        ; $69ee: $f6 $f7
    ld hl, sp-$07                                 ; $69f0: $f8 $f9
    ld a, [$fcfb]                                 ; $69f2: $fa $fb $fc
    call nc, $d4d4                                ; $69f5: $d4 $d4 $d4
    call nc, $d1d1                                ; $69f8: $d4 $d1 $d1
    pop de                                        ; $69fb: $d1
    pop de                                        ; $69fc: $d1
    ld [bc], a                                    ; $69fd: $02
    ld [bc], a                                    ; $69fe: $02
    ld [bc], a                                    ; $69ff: $02
    ld [bc], a                                    ; $6a00: $02
    ld [bc], a                                    ; $6a01: $02
    dec b                                         ; $6a02: $05
    dec b                                         ; $6a03: $05
    ld [bc], a                                    ; $6a04: $02
    add b                                         ; $6a05: $80
    add b                                         ; $6a06: $80
    add b                                         ; $6a07: $80
    add b                                         ; $6a08: $80
    add b                                         ; $6a09: $80
    add b                                         ; $6a0a: $80
    add b                                         ; $6a0b: $80
    add b                                         ; $6a0c: $80
    inc bc                                        ; $6a0d: $03
    inc b                                         ; $6a0e: $04
    dec b                                         ; $6a0f: $05
    ld b, $07                                     ; $6a10: $06 $07
    ld [$0a09], sp                                ; $6a12: $08 $09 $0a
    call nc, $d4d4                                ; $6a15: $d4 $d4 $d4
    call nc, $d1d1                                ; $6a18: $d4 $d1 $d1
    pop de                                        ; $6a1b: $d1
    pop de                                        ; $6a1c: $d1
    dec b                                         ; $6a1d: $05
    dec b                                         ; $6a1e: $05
    ld [bc], a                                    ; $6a1f: $02
    rlca                                          ; $6a20: $07
    ld [bc], a                                    ; $6a21: $02
    rlca                                          ; $6a22: $07
    ld [bc], a                                    ; $6a23: $02
    ld [bc], a                                    ; $6a24: $02
    add b                                         ; $6a25: $80
    add b                                         ; $6a26: $80
    add b                                         ; $6a27: $80
    add b                                         ; $6a28: $80
    add b                                         ; $6a29: $80
    add b                                         ; $6a2a: $80
    add b                                         ; $6a2b: $80
    add b                                         ; $6a2c: $80
    push af                                       ; $6a2d: $f5
    or $f7                                        ; $6a2e: $f6 $f7
    ld hl, sp-$07                                 ; $6a30: $f8 $f9
    ld a, [$fcfb]                                 ; $6a32: $fa $fb $fc
    call nc, $d4d4                                ; $6a35: $d4 $d4 $d4
    call nc, $d1d1                                ; $6a38: $d4 $d1 $d1
    pop de                                        ; $6a3b: $d1
    pop de                                        ; $6a3c: $d1
    rlca                                          ; $6a3d: $07
    ld [bc], a                                    ; $6a3e: $02
    dec b                                         ; $6a3f: $05
    dec b                                         ; $6a40: $05
    dec b                                         ; $6a41: $05
    dec b                                         ; $6a42: $05
    ld [bc], a                                    ; $6a43: $02
    rlca                                          ; $6a44: $07
    add b                                         ; $6a45: $80
    add b                                         ; $6a46: $80
    add b                                         ; $6a47: $80
    add b                                         ; $6a48: $80
    add b                                         ; $6a49: $80
    add b                                         ; $6a4a: $80
    add b                                         ; $6a4b: $80
    add b                                         ; $6a4c: $80
    inc bc                                        ; $6a4d: $03
    inc b                                         ; $6a4e: $04
    dec b                                         ; $6a4f: $05
    ld b, $07                                     ; $6a50: $06 $07
    ld [$0a09], sp                                ; $6a52: $08 $09 $0a
    call nc, $d4d4                                ; $6a55: $d4 $d4 $d4
    call nc, $d1d1                                ; $6a58: $d4 $d1 $d1
    pop de                                        ; $6a5b: $d1
    pop de                                        ; $6a5c: $d1
    ld [bc], a                                    ; $6a5d: $02
    inc bc                                        ; $6a5e: $03
    inc bc                                        ; $6a5f: $03
    inc bc                                        ; $6a60: $03
    ld [bc], a                                    ; $6a61: $02
    dec b                                         ; $6a62: $05
    inc bc                                        ; $6a63: $03
    inc bc                                        ; $6a64: $03
    add b                                         ; $6a65: $80
    add b                                         ; $6a66: $80
    add b                                         ; $6a67: $80
    add b                                         ; $6a68: $80
    add b                                         ; $6a69: $80
    add b                                         ; $6a6a: $80
    add b                                         ; $6a6b: $80
    add b                                         ; $6a6c: $80
    push af                                       ; $6a6d: $f5
    or $f7                                        ; $6a6e: $f6 $f7
    ld hl, sp-$07                                 ; $6a70: $f8 $f9
    ld a, [$fcfb]                                 ; $6a72: $fa $fb $fc
    call nc, $d4d4                                ; $6a75: $d4 $d4 $d4
    call nc, $d1d1                                ; $6a78: $d4 $d1 $d1
    pop de                                        ; $6a7b: $d1
    pop de                                        ; $6a7c: $d1
    inc bc                                        ; $6a7d: $03
    inc bc                                        ; $6a7e: $03
    inc bc                                        ; $6a7f: $03
    rlca                                          ; $6a80: $07
    inc bc                                        ; $6a81: $03
    inc bc                                        ; $6a82: $03
    dec b                                         ; $6a83: $05
    ld [bc], a                                    ; $6a84: $02
    add b                                         ; $6a85: $80
    add b                                         ; $6a86: $80
    add b                                         ; $6a87: $80
    add b                                         ; $6a88: $80
    add b                                         ; $6a89: $80
    add b                                         ; $6a8a: $80
    add b                                         ; $6a8b: $80
    add b                                         ; $6a8c: $80
    inc bc                                        ; $6a8d: $03
    inc b                                         ; $6a8e: $04
    dec b                                         ; $6a8f: $05
    ld b, $07                                     ; $6a90: $06 $07
    ld [$0a09], sp                                ; $6a92: $08 $09 $0a
    call nc, $d4d4                                ; $6a95: $d4 $d4 $d4
    call nc, $d1d1                                ; $6a98: $d4 $d1 $d1
    pop de                                        ; $6a9b: $d1
    pop de                                        ; $6a9c: $d1
    rlca                                          ; $6a9d: $07
    ld [bc], a                                    ; $6a9e: $02
    dec b                                         ; $6a9f: $05
    dec b                                         ; $6aa0: $05
    ld [bc], a                                    ; $6aa1: $02
    rlca                                          ; $6aa2: $07
    ld [bc], a                                    ; $6aa3: $02
    dec b                                         ; $6aa4: $05
    add b                                         ; $6aa5: $80
    add b                                         ; $6aa6: $80
    add b                                         ; $6aa7: $80
    add b                                         ; $6aa8: $80
    add b                                         ; $6aa9: $80
    add b                                         ; $6aaa: $80
    add b                                         ; $6aab: $80
    add b                                         ; $6aac: $80
    push af                                       ; $6aad: $f5
    or $d3                                        ; $6aae: $f6 $d3
    pop de                                        ; $6ab0: $d1
    ld sp, hl                                     ; $6ab1: $f9
    ld a, [$d1d3]                                 ; $6ab2: $fa $d3 $d1
    call nc, Call_089_6cd4                        ; $6ab5: $d4 $d4 $6c
    pop de                                        ; $6ab8: $d1
    pop de                                        ; $6ab9: $d1
    pop de                                        ; $6aba: $d1
    pop de                                        ; $6abb: $d1
    pop de                                        ; $6abc: $d1
    ld [bc], a                                    ; $6abd: $02
    rlca                                          ; $6abe: $07
    add b                                         ; $6abf: $80
    add b                                         ; $6ac0: $80
    dec b                                         ; $6ac1: $05
    ld [bc], a                                    ; $6ac2: $02
    add b                                         ; $6ac3: $80
    add b                                         ; $6ac4: $80
    add b                                         ; $6ac5: $80
    add b                                         ; $6ac6: $80
    add b                                         ; $6ac7: $80
    add b                                         ; $6ac8: $80
    add b                                         ; $6ac9: $80
    add b                                         ; $6aca: $80
    add b                                         ; $6acb: $80
    add b                                         ; $6acc: $80
    pop de                                        ; $6acd: $d1
    inc l                                         ; $6ace: $2c
    call nc, $d12b                                ; $6acf: $d4 $2b $d1

Jump_089_6ad2:
    pop de                                        ; $6ad2: $d1
    pop de                                        ; $6ad3: $d1
    db $d3                                        ; $6ad4: $d3
    pop de                                        ; $6ad5: $d1
    pop de                                        ; $6ad6: $d1
    pop de                                        ; $6ad7: $d1
    inc l                                         ; $6ad8: $2c
    pop de                                        ; $6ad9: $d1
    pop de                                        ; $6ada: $d1
    pop de                                        ; $6adb: $d1
    pop de                                        ; $6adc: $d1
    add b                                         ; $6add: $80
    add b                                         ; $6ade: $80
    add b                                         ; $6adf: $80
    add b                                         ; $6ae0: $80
    add b                                         ; $6ae1: $80
    add b                                         ; $6ae2: $80
    add b                                         ; $6ae3: $80
    add b                                         ; $6ae4: $80
    add b                                         ; $6ae5: $80
    add b                                         ; $6ae6: $80

jr_089_6ae7:
    add b                                         ; $6ae7: $80
    add b                                         ; $6ae8: $80
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    add b                                         ; $6aeb: $80
    add b                                         ; $6aec: $80
    inc hl                                        ; $6aed: $23
    inc h                                         ; $6aee: $24
    dec h                                         ; $6aef: $25
    ld h, $27                                     ; $6af0: $26 $27
    jr z, jr_089_6b1d                             ; $6af2: $28 $29

    ld a, [hl+]                                   ; $6af4: $2a
    call nc, $dbdb                                ; $6af5: $d4 $db $db
    db $db                                        ; $6af8: $db
    pop de                                        ; $6af9: $d1
    call c, $dcdc                                 ; $6afa: $dc $dc $dc
    rlca                                          ; $6afd: $07
    dec b                                         ; $6afe: $05
    dec b                                         ; $6aff: $05
    ld [bc], a                                    ; $6b00: $02
    ld [bc], a                                    ; $6b01: $02
    dec b                                         ; $6b02: $05
    rlca                                          ; $6b03: $07
    ld [bc], a                                    ; $6b04: $02
    add b                                         ; $6b05: $80
    adc b                                         ; $6b06: $88
    adc b                                         ; $6b07: $88
    adc b                                         ; $6b08: $88
    add b                                         ; $6b09: $80
    adc b                                         ; $6b0a: $88
    adc b                                         ; $6b0b: $88
    adc b                                         ; $6b0c: $88
    inc de                                        ; $6b0d: $13
    inc d                                         ; $6b0e: $14
    jp nc, Jump_000_17d4                          ; $6b0f: $d2 $d4 $17

    jr jr_089_6ae7                                ; $6b12: $18 $d3

    pop de                                        ; $6b14: $d1
    db $db                                        ; $6b15: $db
    call nc, $d16c                                ; $6b16: $d4 $6c $d1
    call c, $d1d1                                 ; $6b19: $dc $d1 $d1
    pop de                                        ; $6b1c: $d1

jr_089_6b1d:
    rlca                                          ; $6b1d: $07
    ld [bc], a                                    ; $6b1e: $02
    add b                                         ; $6b1f: $80
    add b                                         ; $6b20: $80
    dec b                                         ; $6b21: $05
    rlca                                          ; $6b22: $07
    add b                                         ; $6b23: $80
    add b                                         ; $6b24: $80
    adc b                                         ; $6b25: $88
    add b                                         ; $6b26: $80
    add b                                         ; $6b27: $80
    add b                                         ; $6b28: $80
    adc b                                         ; $6b29: $88
    add b                                         ; $6b2a: $80
    add b                                         ; $6b2b: $80
    add b                                         ; $6b2c: $80
    call nc, $d4d4                                ; $6b2d: $d4 $d4 $d4
    call nc, $dedd                                ; $6b30: $d4 $dd $de
    rst $18                                       ; $6b33: $df
    ldh [$e1], a                                  ; $6b34: $e0 $e1
    ld [c], a                                     ; $6b36: $e2
    db $e3                                        ; $6b37: $e3
    db $e4                                        ; $6b38: $e4
    push hl                                       ; $6b39: $e5
    and $e7                                       ; $6b3a: $e6 $e7
    add sp, $00                                   ; $6b3c: $e8 $00
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    nop                                           ; $6b40: $00
    inc c                                         ; $6b41: $0c
    inc c                                         ; $6b42: $0c
    inc c                                         ; $6b43: $0c
    inc c                                         ; $6b44: $0c
    inc c                                         ; $6b45: $0c
    inc c                                         ; $6b46: $0c
    inc c                                         ; $6b47: $0c
    inc c                                         ; $6b48: $0c
    inc c                                         ; $6b49: $0c
    inc c                                         ; $6b4a: $0c
    inc c                                         ; $6b4b: $0c
    inc c                                         ; $6b4c: $0c
    call nc, $d4d4                                ; $6b4d: $d4 $d4 $d4
    call nc, $eae9                                ; $6b50: $d4 $e9 $ea
    db $eb                                        ; $6b53: $eb
    db $ec                                        ; $6b54: $ec
    db $ed                                        ; $6b55: $ed
    xor $ef                                       ; $6b56: $ee $ef
    ldh a, [$f1]                                  ; $6b58: $f0 $f1
    ld a, [c]                                     ; $6b5a: $f2
    di                                            ; $6b5b: $f3
    db $f4                                        ; $6b5c: $f4
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    nop                                           ; $6b60: $00
    inc c                                         ; $6b61: $0c
    inc c                                         ; $6b62: $0c
    inc c                                         ; $6b63: $0c
    inc c                                         ; $6b64: $0c
    inc c                                         ; $6b65: $0c
    inc c                                         ; $6b66: $0c
    inc c                                         ; $6b67: $0c
    inc c                                         ; $6b68: $0c
    inc c                                         ; $6b69: $0c
    inc c                                         ; $6b6a: $0c
    inc c                                         ; $6b6b: $0c
    inc c                                         ; $6b6c: $0c
    push af                                       ; $6b6d: $f5
    or $f7                                        ; $6b6e: $f6 $f7
    ld hl, sp-$07                                 ; $6b70: $f8 $f9
    ld a, [$fcfb]                                 ; $6b72: $fa $fb $fc
    inc bc                                        ; $6b75: $03
    inc b                                         ; $6b76: $04
    dec b                                         ; $6b77: $05
    ld b, $07                                     ; $6b78: $06 $07
    ld [$0a09], sp                                ; $6b7a: $08 $09 $0a
    inc c                                         ; $6b7d: $0c
    inc c                                         ; $6b7e: $0c
    inc c                                         ; $6b7f: $0c
    inc c                                         ; $6b80: $0c
    inc c                                         ; $6b81: $0c
    inc c                                         ; $6b82: $0c
    inc c                                         ; $6b83: $0c
    inc c                                         ; $6b84: $0c
    dec b                                         ; $6b85: $05
    ld [bc], a                                    ; $6b86: $02
    rlca                                          ; $6b87: $07
    dec b                                         ; $6b88: $05
    inc bc                                        ; $6b89: $03
    rlca                                          ; $6b8a: $07
    ld [bc], a                                    ; $6b8b: $02
    inc bc                                        ; $6b8c: $03
    db $fd                                        ; $6b8d: $fd
    cp $ff                                        ; $6b8e: $fe $ff
    nop                                           ; $6b90: $00
    ld bc, $0302                                  ; $6b91: $01 $02 $03
    inc b                                         ; $6b94: $04
    inc bc                                        ; $6b95: $03
    inc b                                         ; $6b96: $04
    dec b                                         ; $6b97: $05
    ld b, $07                                     ; $6b98: $06 $07
    ld [$0a09], sp                                ; $6b9a: $08 $09 $0a
    inc c                                         ; $6b9d: $0c
    inc c                                         ; $6b9e: $0c
    inc c                                         ; $6b9f: $0c
    inc c                                         ; $6ba0: $0c
    inc c                                         ; $6ba1: $0c
    inc c                                         ; $6ba2: $0c
    inc c                                         ; $6ba3: $0c
    inc c                                         ; $6ba4: $0c
    dec b                                         ; $6ba5: $05
    ld [bc], a                                    ; $6ba6: $02
    rlca                                          ; $6ba7: $07
    dec b                                         ; $6ba8: $05
    inc bc                                        ; $6ba9: $03
    rlca                                          ; $6baa: $07
    ld [bc], a                                    ; $6bab: $02
    inc bc                                        ; $6bac: $03
    call nc, $d4d4                                ; $6bad: $d4 $d4 $d4
    call nc, $0605                                ; $6bb0: $d4 $05 $06
    rlca                                          ; $6bb3: $07
    ld [$0a09], sp                                ; $6bb4: $08 $09 $0a
    dec bc                                        ; $6bb7: $0b
    inc c                                         ; $6bb8: $0c
    dec c                                         ; $6bb9: $0d
    ld c, $0f                                     ; $6bba: $0e $0f
    stop                                          ; $6bbc: $10 $00
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    nop                                           ; $6bc0: $00
    inc c                                         ; $6bc1: $0c
    inc c                                         ; $6bc2: $0c
    inc c                                         ; $6bc3: $0c
    inc c                                         ; $6bc4: $0c
    inc c                                         ; $6bc5: $0c
    inc c                                         ; $6bc6: $0c
    inc c                                         ; $6bc7: $0c
    inc c                                         ; $6bc8: $0c
    inc c                                         ; $6bc9: $0c
    inc c                                         ; $6bca: $0c
    inc c                                         ; $6bcb: $0c
    inc c                                         ; $6bcc: $0c
    ld de, $1312                                  ; $6bcd: $11 $12 $13
    inc d                                         ; $6bd0: $14
    dec d                                         ; $6bd1: $15
    ld d, $17                                     ; $6bd2: $16 $17
    jr @+$05                                      ; $6bd4: $18 $03

    inc b                                         ; $6bd6: $04
    dec b                                         ; $6bd7: $05
    ld b, $07                                     ; $6bd8: $06 $07
    ld [$0a09], sp                                ; $6bda: $08 $09 $0a
    inc c                                         ; $6bdd: $0c
    inc c                                         ; $6bde: $0c
    inc c                                         ; $6bdf: $0c
    inc c                                         ; $6be0: $0c
    inc c                                         ; $6be1: $0c
    inc c                                         ; $6be2: $0c
    inc c                                         ; $6be3: $0c
    inc c                                         ; $6be4: $0c
    dec b                                         ; $6be5: $05
    ld [bc], a                                    ; $6be6: $02
    rlca                                          ; $6be7: $07
    dec b                                         ; $6be8: $05
    inc bc                                        ; $6be9: $03
    rlca                                          ; $6bea: $07
    ld [bc], a                                    ; $6beb: $02
    inc bc                                        ; $6bec: $03
    ld a, [bc]                                    ; $6bed: $0a
    nop                                           ; $6bee: $00
    ld de, $e000                                  ; $6bef: $11 $00 $e0
    ld a, [bc]                                    ; $6bf2: $0a
    pop de                                        ; $6bf3: $d1
    pop de                                        ; $6bf4: $d1
    pop de                                        ; $6bf5: $d1
    pop de                                        ; $6bf6: $d1
    pop de                                        ; $6bf7: $d1
    pop de                                        ; $6bf8: $d1
    pop de                                        ; $6bf9: $d1
    pop de                                        ; $6bfa: $d1
    pop de                                        ; $6bfb: $d1
    pop de                                        ; $6bfc: $d1
    pop de                                        ; $6bfd: $d1
    pop de                                        ; $6bfe: $d1
    pop de                                        ; $6bff: $d1
    pop de                                        ; $6c00: $d1
    pop de                                        ; $6c01: $d1
    pop de                                        ; $6c02: $d1
    add b                                         ; $6c03: $80
    add b                                         ; $6c04: $80
    add b                                         ; $6c05: $80
    add b                                         ; $6c06: $80
    add b                                         ; $6c07: $80
    add b                                         ; $6c08: $80
    add b                                         ; $6c09: $80
    add b                                         ; $6c0a: $80
    add b                                         ; $6c0b: $80
    add b                                         ; $6c0c: $80
    add b                                         ; $6c0d: $80
    add b                                         ; $6c0e: $80
    add b                                         ; $6c0f: $80
    add b                                         ; $6c10: $80
    add b                                         ; $6c11: $80
    add b                                         ; $6c12: $80
    pop de                                        ; $6c13: $d1
    pop de                                        ; $6c14: $d1
    pop de                                        ; $6c15: $d1
    jp nc, $d1d1                                  ; $6c16: $d2 $d1 $d1

    pop de                                        ; $6c19: $d1
    db $d3                                        ; $6c1a: $d3
    pop de                                        ; $6c1b: $d1
    pop de                                        ; $6c1c: $d1
    pop de                                        ; $6c1d: $d1
    db $d3                                        ; $6c1e: $d3
    pop de                                        ; $6c1f: $d1
    pop de                                        ; $6c20: $d1
    pop de                                        ; $6c21: $d1
    db $d3                                        ; $6c22: $d3
    add b                                         ; $6c23: $80
    add b                                         ; $6c24: $80
    add b                                         ; $6c25: $80
    add b                                         ; $6c26: $80
    add b                                         ; $6c27: $80
    add b                                         ; $6c28: $80
    add b                                         ; $6c29: $80
    add b                                         ; $6c2a: $80
    add b                                         ; $6c2b: $80
    add b                                         ; $6c2c: $80
    add b                                         ; $6c2d: $80
    add b                                         ; $6c2e: $80
    add b                                         ; $6c2f: $80
    add b                                         ; $6c30: $80
    add b                                         ; $6c31: $80
    add b                                         ; $6c32: $80
    call nc, $d4d4                                ; $6c33: $d4 $d4 $d4
    call nc, $d6d5                                ; $6c36: $d4 $d5 $d6
    rst $10                                       ; $6c39: $d7
    ret c                                         ; $6c3a: $d8

    reti                                          ; $6c3b: $d9


    jp c, $dcdb                                   ; $6c3c: $da $db $dc

    db $dd                                        ; $6c3f: $dd
    sbc $df                                       ; $6c40: $de $df
    ldh [$80], a                                  ; $6c42: $e0 $80
    add b                                         ; $6c44: $80
    add b                                         ; $6c45: $80
    add b                                         ; $6c46: $80
    ld [bc], a                                    ; $6c47: $02
    ld [bc], a                                    ; $6c48: $02
    ld [bc], a                                    ; $6c49: $02
    ld [bc], a                                    ; $6c4a: $02
    ld [bc], a                                    ; $6c4b: $02
    ld [bc], a                                    ; $6c4c: $02
    ld [bc], a                                    ; $6c4d: $02
    ld [bc], a                                    ; $6c4e: $02
    ld [bc], a                                    ; $6c4f: $02
    ld [bc], a                                    ; $6c50: $02
    ld [bc], a                                    ; $6c51: $02
    ld [bc], a                                    ; $6c52: $02
    call nc, $d4d4                                ; $6c53: $d4 $d4 $d4
    call nc, $e2e1                                ; $6c56: $d4 $e1 $e2
    db $e3                                        ; $6c59: $e3
    db $e4                                        ; $6c5a: $e4
    push hl                                       ; $6c5b: $e5
    reti                                          ; $6c5c: $d9


    and $e7                                       ; $6c5d: $e6 $e7
    add sp, -$17                                  ; $6c5f: $e8 $e9
    ld [$80eb], a                                 ; $6c61: $ea $eb $80
    add b                                         ; $6c64: $80
    add b                                         ; $6c65: $80
    add b                                         ; $6c66: $80
    ld [bc], a                                    ; $6c67: $02
    ld [bc], a                                    ; $6c68: $02
    ld [bc], a                                    ; $6c69: $02
    ld [bc], a                                    ; $6c6a: $02
    ld [bc], a                                    ; $6c6b: $02
    ld [bc], a                                    ; $6c6c: $02
    ld [bc], a                                    ; $6c6d: $02
    ld [bc], a                                    ; $6c6e: $02
    ld [bc], a                                    ; $6c6f: $02
    ld [bc], a                                    ; $6c70: $02
    ld [bc], a                                    ; $6c71: $02
    ld [bc], a                                    ; $6c72: $02
    call nc, $d4d4                                ; $6c73: $d4 $d4 $d4
    call nc, $d6d5                                ; $6c76: $d4 $d5 $d6
    rst $10                                       ; $6c79: $d7
    ret c                                         ; $6c7a: $d8

    reti                                          ; $6c7b: $d9


    reti                                          ; $6c7c: $d9


    reti                                          ; $6c7d: $d9


    reti                                          ; $6c7e: $d9


    db $dd                                        ; $6c7f: $dd
    sbc $df                                       ; $6c80: $de $df
    db $ec                                        ; $6c82: $ec
    add b                                         ; $6c83: $80
    add b                                         ; $6c84: $80
    add b                                         ; $6c85: $80
    add b                                         ; $6c86: $80
    ld [bc], a                                    ; $6c87: $02
    ld [bc], a                                    ; $6c88: $02
    ld [bc], a                                    ; $6c89: $02
    ld [bc], a                                    ; $6c8a: $02
    ld [bc], a                                    ; $6c8b: $02
    ld [bc], a                                    ; $6c8c: $02
    ld [bc], a                                    ; $6c8d: $02
    ld [bc], a                                    ; $6c8e: $02
    ld [bc], a                                    ; $6c8f: $02
    ld [bc], a                                    ; $6c90: $02
    ld [bc], a                                    ; $6c91: $02
    ld [bc], a                                    ; $6c92: $02
    pop de                                        ; $6c93: $d1
    pop de                                        ; $6c94: $d1
    pop de                                        ; $6c95: $d1
    db $d3                                        ; $6c96: $d3
    pop de                                        ; $6c97: $d1
    pop de                                        ; $6c98: $d1
    pop de                                        ; $6c99: $d1
    db $d3                                        ; $6c9a: $d3
    pop de                                        ; $6c9b: $d1
    pop de                                        ; $6c9c: $d1
    pop de                                        ; $6c9d: $d1
    db $d3                                        ; $6c9e: $d3
    pop de                                        ; $6c9f: $d1
    pop de                                        ; $6ca0: $d1
    pop de                                        ; $6ca1: $d1
    db $d3                                        ; $6ca2: $d3
    add b                                         ; $6ca3: $80
    add b                                         ; $6ca4: $80
    add b                                         ; $6ca5: $80
    add b                                         ; $6ca6: $80
    add b                                         ; $6ca7: $80
    add b                                         ; $6ca8: $80
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
    db $ed                                        ; $6cb3: $ed
    xor $ef                                       ; $6cb4: $ee $ef
    ldh a, [$f1]                                  ; $6cb6: $f0 $f1
    ld a, [c]                                     ; $6cb8: $f2
    di                                            ; $6cb9: $f3
    db $f4                                        ; $6cba: $f4
    push af                                       ; $6cbb: $f5
    or $f7                                        ; $6cbc: $f6 $f7
    ld hl, sp-$07                                 ; $6cbe: $f8 $f9
    ld a, [$fcfb]                                 ; $6cc0: $fa $fb $fc
    ld [bc], a                                    ; $6cc3: $02
    ld [bc], a                                    ; $6cc4: $02
    ld [bc], a                                    ; $6cc5: $02
    ld [bc], a                                    ; $6cc6: $02
    ld [bc], a                                    ; $6cc7: $02
    ld [bc], a                                    ; $6cc8: $02
    ld [bc], a                                    ; $6cc9: $02
    ld [bc], a                                    ; $6cca: $02
    inc bc                                        ; $6ccb: $03
    inc bc                                        ; $6ccc: $03
    inc bc                                        ; $6ccd: $03
    inc bc                                        ; $6cce: $03
    inc bc                                        ; $6ccf: $03
    dec b                                         ; $6cd0: $05
    ld bc, $fd01                                  ; $6cd1: $01 $01 $fd

Call_089_6cd4:
Jump_089_6cd4:
    cp $ff                                        ; $6cd4: $fe $ff
    nop                                           ; $6cd6: $00
    ld bc, $0302                                  ; $6cd7: $01 $02 $03
    inc b                                         ; $6cda: $04
    dec b                                         ; $6cdb: $05
    ld b, $f5                                     ; $6cdc: $06 $f5
    or $07                                        ; $6cde: $f6 $07
    ld [$faf9], sp                                ; $6ce0: $08 $f9 $fa
    ld [bc], a                                    ; $6ce3: $02
    ld [bc], a                                    ; $6ce4: $02
    ld [bc], a                                    ; $6ce5: $02
    ld [bc], a                                    ; $6ce6: $02
    ld [bc], a                                    ; $6ce7: $02
    ld [bc], a                                    ; $6ce8: $02
    ld [bc], a                                    ; $6ce9: $02
    ld [bc], a                                    ; $6cea: $02
    inc bc                                        ; $6ceb: $03
    inc bc                                        ; $6cec: $03
    inc bc                                        ; $6ced: $03
    inc bc                                        ; $6cee: $03
    inc b                                         ; $6cef: $04
    dec b                                         ; $6cf0: $05
    ld bc, $0904                                  ; $6cf1: $01 $04 $09
    xor $0a                                       ; $6cf4: $ee $0a
    dec bc                                        ; $6cf6: $0b
    inc c                                         ; $6cf7: $0c
    ld a, [c]                                     ; $6cf8: $f2
    di                                            ; $6cf9: $f3
    dec c                                         ; $6cfa: $0d
    rst $30                                       ; $6cfb: $f7
    ld hl, sp+$05                                 ; $6cfc: $f8 $05
    ld b, $0e                                     ; $6cfe: $06 $0e
    db $fc                                        ; $6d00: $fc
    rrca                                          ; $6d01: $0f
    ld [$0202], sp                                ; $6d02: $08 $02 $02
    ld [bc], a                                    ; $6d05: $02
    ld [bc], a                                    ; $6d06: $02
    ld [bc], a                                    ; $6d07: $02
    ld [bc], a                                    ; $6d08: $02
    ld [bc], a                                    ; $6d09: $02
    ld [bc], a                                    ; $6d0a: $02
    inc bc                                        ; $6d0b: $03
    inc bc                                        ; $6d0c: $03
    inc bc                                        ; $6d0d: $03
    inc bc                                        ; $6d0e: $03
    ld bc, $0401                                  ; $6d0f: $01 $01 $04
    ld bc, $d1d1                                  ; $6d12: $01 $d1 $d1
    db $d3                                        ; $6d15: $d3
    db $10                                        ; $6d16: $10
    pop de                                        ; $6d17: $d1
    pop de                                        ; $6d18: $d1
    db $d3                                        ; $6d19: $d3
    ld de, $d1d1                                  ; $6d1a: $11 $d1 $d1
    db $d3                                        ; $6d1d: $d3
    ld [de], a                                    ; $6d1e: $12
    pop de                                        ; $6d1f: $d1
    pop de                                        ; $6d20: $d1
    db $d3                                        ; $6d21: $d3
    inc de                                        ; $6d22: $13
    add b                                         ; $6d23: $80
    add b                                         ; $6d24: $80
    add b                                         ; $6d25: $80
    inc bc                                        ; $6d26: $03
    add b                                         ; $6d27: $80
    add b                                         ; $6d28: $80
    add b                                         ; $6d29: $80
    inc bc                                        ; $6d2a: $03
    add b                                         ; $6d2b: $80
    add b                                         ; $6d2c: $80
    add b                                         ; $6d2d: $80
    inc bc                                        ; $6d2e: $03
    add b                                         ; $6d2f: $80
    add b                                         ; $6d30: $80
    add b                                         ; $6d31: $80
    inc hl                                        ; $6d32: $23
    inc d                                         ; $6d33: $14
    dec d                                         ; $6d34: $15
    ld d, $13                                     ; $6d35: $16 $13
    rla                                           ; $6d37: $17
    jr jr_089_6d53                                ; $6d38: $18 $19

    ld a, [de]                                    ; $6d3a: $1a
    dec de                                        ; $6d3b: $1b
    inc e                                         ; $6d3c: $1c
    dec e                                         ; $6d3d: $1d
    ld e, $16                                     ; $6d3e: $1e $16
    rra                                           ; $6d40: $1f
    inc d                                         ; $6d41: $14
    db $10                                        ; $6d42: $10
    inc b                                         ; $6d43: $04
    dec b                                         ; $6d44: $05
    ld bc, $0103                                  ; $6d45: $01 $03 $01
    ld bc, $0304                                  ; $6d48: $01 $04 $03
    dec b                                         ; $6d4b: $05
    inc b                                         ; $6d4c: $04
    ld bc, $2403                                  ; $6d4d: $01 $03 $24
    ld bc, $2325                                  ; $6d50: $01 $25 $23

jr_089_6d53:
    pop de                                        ; $6d53: $d1
    pop de                                        ; $6d54: $d1
    db $d3                                        ; $6d55: $d3
    ld a, [de]                                    ; $6d56: $1a
    pop de                                        ; $6d57: $d1
    pop de                                        ; $6d58: $d1
    db $d3                                        ; $6d59: $d3
    ld e, $d1                                     ; $6d5a: $1e $d1
    pop de                                        ; $6d5c: $d1
    db $d3                                        ; $6d5d: $d3
    db $10                                        ; $6d5e: $10
    pop de                                        ; $6d5f: $d1
    pop de                                        ; $6d60: $d1
    db $d3                                        ; $6d61: $d3
    ld de, $8080                                  ; $6d62: $11 $80 $80
    add b                                         ; $6d65: $80
    inc hl                                        ; $6d66: $23
    add b                                         ; $6d67: $80
    add b                                         ; $6d68: $80
    add b                                         ; $6d69: $80
    inc hl                                        ; $6d6a: $23
    add b                                         ; $6d6b: $80
    add b                                         ; $6d6c: $80
    add b                                         ; $6d6d: $80
    inc bc                                        ; $6d6e: $03
    add b                                         ; $6d6f: $80
    add b                                         ; $6d70: $80
    add b                                         ; $6d71: $80
    inc bc                                        ; $6d72: $03
    add hl, de                                    ; $6d73: $19
    jr nz, @+$23                                  ; $6d74: $20 $21

    ld de, $1c22                                  ; $6d76: $11 $22 $1c
    dec de                                        ; $6d79: $1b
    ld [de], a                                    ; $6d7a: $12
    inc d                                         ; $6d7b: $14
    dec d                                         ; $6d7c: $15
    inc hl                                        ; $6d7d: $23
    inc de                                        ; $6d7e: $13
    rla                                           ; $6d7f: $17
    jr nz, jr_089_6d9b                            ; $6d80: $20 $19

    ld a, [de]                                    ; $6d82: $1a
    ld hl, $0421                                  ; $6d83: $21 $21 $04
    inc hl                                        ; $6d86: $23
    inc h                                         ; $6d87: $24
    ld hl, $2321                                  ; $6d88: $21 $21 $23
    dec b                                         ; $6d8b: $05
    inc b                                         ; $6d8c: $04
    ld bc, $0103                                  ; $6d8d: $01 $03 $01
    ld bc, $0304                                  ; $6d90: $01 $04 $03
    call nc, $d4d4                                ; $6d93: $d4 $d4 $d4
    call nc, $e2e1                                ; $6d96: $d4 $e1 $e2
    inc h                                         ; $6d99: $24
    dec h                                         ; $6d9a: $25

jr_089_6d9b:
    reti                                          ; $6d9b: $d9


    reti                                          ; $6d9c: $d9


    ld h, $27                                     ; $6d9d: $26 $27
    jr z, jr_089_6dca                             ; $6d9f: $28 $29

    ld a, [hl+]                                   ; $6da1: $2a
    dec hl                                        ; $6da2: $2b
    add b                                         ; $6da3: $80
    add b                                         ; $6da4: $80
    add b                                         ; $6da5: $80
    add b                                         ; $6da6: $80
    ld [bc], a                                    ; $6da7: $02
    ld [bc], a                                    ; $6da8: $02
    ld [bc], a                                    ; $6da9: $02
    ld [bc], a                                    ; $6daa: $02
    ld [bc], a                                    ; $6dab: $02
    ld [bc], a                                    ; $6dac: $02
    ld [bc], a                                    ; $6dad: $02
    ld [bc], a                                    ; $6dae: $02
    ld [bc], a                                    ; $6daf: $02
    ld [bc], a                                    ; $6db0: $02
    ld [bc], a                                    ; $6db1: $02
    ld [bc], a                                    ; $6db2: $02
    call nc, $d4d4                                ; $6db3: $d4 $d4 $d4
    call nc, Call_000_2cd5                        ; $6db6: $d4 $d5 $2c
    dec l                                         ; $6db9: $2d
    ld l, $2f                                     ; $6dba: $2e $2f
    jr nc, @-$25                                  ; $6dbc: $30 $d9

    reti                                          ; $6dbe: $d9


    ld sp, $df32                                  ; $6dbf: $31 $32 $df
    db $ec                                        ; $6dc2: $ec
    add b                                         ; $6dc3: $80
    add b                                         ; $6dc4: $80
    add b                                         ; $6dc5: $80
    add b                                         ; $6dc6: $80
    ld [bc], a                                    ; $6dc7: $02
    ld [bc], a                                    ; $6dc8: $02
    ld [bc], a                                    ; $6dc9: $02

jr_089_6dca:
    ld [bc], a                                    ; $6dca: $02
    ld [bc], a                                    ; $6dcb: $02
    ld [bc], a                                    ; $6dcc: $02
    ld [bc], a                                    ; $6dcd: $02
    ld [bc], a                                    ; $6dce: $02
    ld [bc], a                                    ; $6dcf: $02
    ld [bc], a                                    ; $6dd0: $02
    ld [bc], a                                    ; $6dd1: $02
    ld [bc], a                                    ; $6dd2: $02
    call nc, Call_000_33d4                        ; $6dd3: $d4 $d4 $33
    ld [de], a                                    ; $6dd6: $12

Call_089_6dd7:
    pop hl                                        ; $6dd7: $e1
    ld [c], a                                     ; $6dd8: $e2
    inc [hl]                                      ; $6dd9: $34
    db $10                                        ; $6dda: $10
    reti                                          ; $6ddb: $d9


    reti                                          ; $6ddc: $d9


    dec [hl]                                      ; $6ddd: $35
    ld [hl], $28                                  ; $6dde: $36 $28
    sbc $37                                       ; $6de0: $de $37
    jr c, @-$7e                                   ; $6de2: $38 $80

Call_089_6de4:
    add b                                         ; $6de4: $80
    add b                                         ; $6de5: $80
    inc bc                                        ; $6de6: $03
    ld [bc], a                                    ; $6de7: $02
    ld [bc], a                                    ; $6de8: $02
    ld [bc], a                                    ; $6de9: $02
    inc bc                                        ; $6dea: $03
    ld [bc], a                                    ; $6deb: $02
    ld [bc], a                                    ; $6dec: $02
    ld [bc], a                                    ; $6ded: $02
    inc bc                                        ; $6dee: $03
    ld [bc], a                                    ; $6def: $02
    ld [bc], a                                    ; $6df0: $02
    ld [bc], a                                    ; $6df1: $02
    inc bc                                        ; $6df2: $03
    dec de                                        ; $6df3: $1b
    inc e                                         ; $6df4: $1c
    dec e                                         ; $6df5: $1d
    ld e, $14                                     ; $6df6: $1e $14
    dec d                                         ; $6df8: $15
    ld d, $13                                     ; $6df9: $16 $13
    add hl, sp                                    ; $6dfb: $39
    ld a, [hl-]                                   ; $6dfc: $3a
    dec sp                                        ; $6dfd: $3b
    inc a                                         ; $6dfe: $3c
    dec a                                         ; $6dff: $3d
    ld a, $3f                                     ; $6e00: $3e $3f
    ld b, b                                       ; $6e02: $40
    ld bc, $0505                                  ; $6e03: $01 $05 $05
    inc bc                                        ; $6e06: $03
    inc b                                         ; $6e07: $04
    ld bc, $0305                                  ; $6e08: $01 $05 $03
    ld bc, $0104                                  ; $6e0b: $01 $04 $01
    inc bc                                        ; $6e0e: $03
    ld bc, $0104                                  ; $6e0f: $01 $04 $01
    inc bc                                        ; $6e12: $03
    ld b, c                                       ; $6e13: $41
    ld b, d                                       ; $6e14: $42
    ld b, e                                       ; $6e15: $43
    ld b, h                                       ; $6e16: $44
    ld bc, $4502                                  ; $6e17: $01 $02 $45
    ld b, [hl]                                    ; $6e1a: $46
    push af                                       ; $6e1b: $f5
    or $f7                                        ; $6e1c: $f6 $f7
    ld hl, sp-$07                                 ; $6e1e: $f8 $f9
    ld a, [$fcfb]                                 ; $6e20: $fa $fb $fc
    ld [bc], a                                    ; $6e23: $02
    ld [bc], a                                    ; $6e24: $02
    ld [bc], a                                    ; $6e25: $02
    ld [bc], a                                    ; $6e26: $02
    ld [bc], a                                    ; $6e27: $02
    ld [bc], a                                    ; $6e28: $02
    ld [bc], a                                    ; $6e29: $02
    ld [bc], a                                    ; $6e2a: $02
    inc bc                                        ; $6e2b: $03
    inc bc                                        ; $6e2c: $03
    inc bc                                        ; $6e2d: $03
    inc bc                                        ; $6e2e: $03
    inc b                                         ; $6e2f: $04
    inc b                                         ; $6e30: $04
    dec b                                         ; $6e31: $05
    ld bc, $4847                                  ; $6e32: $01 $47 $48
    ld c, c                                       ; $6e35: $49
    ld c, d                                       ; $6e36: $4a
    ld c, e                                       ; $6e37: $4b
    ld c, h                                       ; $6e38: $4c
    ld c, l                                       ; $6e39: $4d
    ld c, [hl]                                    ; $6e3a: $4e
    dec b                                         ; $6e3b: $05
    ld b, $f5                                     ; $6e3c: $06 $f5
    or $0f                                        ; $6e3e: $f6 $0f
    ld [$faf9], sp                                ; $6e40: $08 $f9 $fa
    ld [bc], a                                    ; $6e43: $02
    ld [bc], a                                    ; $6e44: $02
    ld [bc], a                                    ; $6e45: $02
    ld [bc], a                                    ; $6e46: $02
    ld [bc], a                                    ; $6e47: $02
    ld [bc], a                                    ; $6e48: $02
    ld [bc], a                                    ; $6e49: $02
    ld [bc], a                                    ; $6e4a: $02
    inc bc                                        ; $6e4b: $03
    inc bc                                        ; $6e4c: $03
    inc bc                                        ; $6e4d: $03
    inc bc                                        ; $6e4e: $03
    inc b                                         ; $6e4f: $04
    inc b                                         ; $6e50: $04
    inc b                                         ; $6e51: $04
    ld bc, $4241                                  ; $6e52: $01 $41 $42
    ld c, a                                       ; $6e55: $4f
    ld d, b                                       ; $6e56: $50
    ld bc, $5102                                  ; $6e57: $01 $02 $51
    ld d, d                                       ; $6e5a: $52
    rst $30                                       ; $6e5b: $f7
    ld hl, sp+$05                                 ; $6e5c: $f8 $05
    ld b, $fb                                     ; $6e5e: $06 $fb
    db $fc                                        ; $6e60: $fc
    rlca                                          ; $6e61: $07
    ld [$0202], sp                                ; $6e62: $08 $02 $02
    ld [bc], a                                    ; $6e65: $02
    inc bc                                        ; $6e66: $03
    ld [bc], a                                    ; $6e67: $02
    ld [bc], a                                    ; $6e68: $02
    ld [bc], a                                    ; $6e69: $02
    inc bc                                        ; $6e6a: $03
    inc bc                                        ; $6e6b: $03
    inc bc                                        ; $6e6c: $03

Call_089_6e6d:
    inc bc                                        ; $6e6d: $03
    inc bc                                        ; $6e6e: $03
    dec b                                         ; $6e6f: $05
    ld bc, $0404                                  ; $6e70: $01 $04 $04
    ld d, e                                       ; $6e73: $53
    ld d, h                                       ; $6e74: $54
    ld d, l                                       ; $6e75: $55
    ld d, [hl]                                    ; $6e76: $56
    ld d, a                                       ; $6e77: $57
    ld e, b                                       ; $6e78: $58
    ld e, c                                       ; $6e79: $59
    ld e, d                                       ; $6e7a: $5a
    push af                                       ; $6e7b: $f5
    or $5b                                        ; $6e7c: $f6 $5b
    ld hl, sp-$07                                 ; $6e7e: $f8 $f9
    ld a, [$fc0e]                                 ; $6e80: $fa $0e $fc
    dec b                                         ; $6e83: $05
    ld bc, $0304                                  ; $6e84: $01 $04 $03
    ld bc, $0405                                  ; $6e87: $01 $05 $04
    inc bc                                        ; $6e8a: $03
    inc b                                         ; $6e8b: $04
    ld bc, $0301                                  ; $6e8c: $01 $01 $03
    dec b                                         ; $6e8f: $05
    ld bc, $0304                                  ; $6e90: $01 $04 $03
    db $d3                                        ; $6e93: $d3
    pop de                                        ; $6e94: $d1
    pop de                                        ; $6e95: $d1
    pop de                                        ; $6e96: $d1
    db $d3                                        ; $6e97: $d3
    pop de                                        ; $6e98: $d1
    pop de                                        ; $6e99: $d1
    pop de                                        ; $6e9a: $d1
    db $d3                                        ; $6e9b: $d3
    pop de                                        ; $6e9c: $d1
    pop de                                        ; $6e9d: $d1
    pop de                                        ; $6e9e: $d1
    db $d3                                        ; $6e9f: $d3
    pop de                                        ; $6ea0: $d1
    pop de                                        ; $6ea1: $d1
    pop de                                        ; $6ea2: $d1
    add b                                         ; $6ea3: $80
    add b                                         ; $6ea4: $80
    add b                                         ; $6ea5: $80
    add b                                         ; $6ea6: $80
    add b                                         ; $6ea7: $80
    add b                                         ; $6ea8: $80
    add b                                         ; $6ea9: $80
    add b                                         ; $6eaa: $80
    add b                                         ; $6eab: $80
    add b                                         ; $6eac: $80
    add b                                         ; $6ead: $80
    add b                                         ; $6eae: $80
    add b                                         ; $6eaf: $80
    add b                                         ; $6eb0: $80
    add b                                         ; $6eb1: $80
    add b                                         ; $6eb2: $80
    add hl, sp                                    ; $6eb3: $39
    ld e, h                                       ; $6eb4: $5c
    dec sp                                        ; $6eb5: $3b
    ld e, l                                       ; $6eb6: $5d
    dec a                                         ; $6eb7: $3d
    ld e, [hl]                                    ; $6eb8: $5e
    ld e, a                                       ; $6eb9: $5f
    ld b, b                                       ; $6eba: $40
    ld d, e                                       ; $6ebb: $53
    ld h, b                                       ; $6ebc: $60
    ld h, c                                       ; $6ebd: $61
    ld h, d                                       ; $6ebe: $62
    db $10                                        ; $6ebf: $10
    inc d                                         ; $6ec0: $14
    dec d                                         ; $6ec1: $15
    inc hl                                        ; $6ec2: $23
    inc bc                                        ; $6ec3: $03
    ld bc, $0504                                  ; $6ec4: $01 $04 $05
    inc bc                                        ; $6ec7: $03
    inc b                                         ; $6ec8: $04
    ld bc, $0305                                  ; $6ec9: $01 $05 $03
    ld bc, $0104                                  ; $6ecc: $01 $04 $01
    inc bc                                        ; $6ecf: $03
    dec b                                         ; $6ed0: $05
    ld bc, $6304                                  ; $6ed1: $01 $04 $63
    jp nc, $d4d4                                  ; $6ed4: $d2 $d4 $d4

    ld h, h                                       ; $6ed7: $64
    db $d3                                        ; $6ed8: $d3
    pop de                                        ; $6ed9: $d1
    pop de                                        ; $6eda: $d1
    ld h, l                                       ; $6edb: $65
    db $d3                                        ; $6edc: $d3
    pop de                                        ; $6edd: $d1
    pop de                                        ; $6ede: $d1
    inc de                                        ; $6edf: $13
    db $d3                                        ; $6ee0: $d3
    pop de                                        ; $6ee1: $d1
    pop de                                        ; $6ee2: $d1
    ld bc, $8080                                  ; $6ee3: $01 $80 $80
    add b                                         ; $6ee6: $80
    ld bc, $8080                                  ; $6ee7: $01 $80 $80
    add b                                         ; $6eea: $80
    inc bc                                        ; $6eeb: $03
    add b                                         ; $6eec: $80
    add b                                         ; $6eed: $80
    add b                                         ; $6eee: $80
    inc bc                                        ; $6eef: $03
    add b                                         ; $6ef0: $80
    add b                                         ; $6ef1: $80
    add b                                         ; $6ef2: $80
    call nc, $d4d4                                ; $6ef3: $d4 $d4 $d4
    call nc, $d1d1                                ; $6ef6: $d4 $d1 $d1
    pop de                                        ; $6ef9: $d1
    pop de                                        ; $6efa: $d1
    pop de                                        ; $6efb: $d1
    pop de                                        ; $6efc: $d1
    pop de                                        ; $6efd: $d1
    pop de                                        ; $6efe: $d1
    pop de                                        ; $6eff: $d1
    pop de                                        ; $6f00: $d1
    pop de                                        ; $6f01: $d1
    pop de                                        ; $6f02: $d1
    add b                                         ; $6f03: $80
    add b                                         ; $6f04: $80
    add b                                         ; $6f05: $80
    add b                                         ; $6f06: $80
    add b                                         ; $6f07: $80
    add b                                         ; $6f08: $80
    add b                                         ; $6f09: $80
    add b                                         ; $6f0a: $80
    add b                                         ; $6f0b: $80
    add b                                         ; $6f0c: $80
    add b                                         ; $6f0d: $80
    add b                                         ; $6f0e: $80
    add b                                         ; $6f0f: $80
    add b                                         ; $6f10: $80
    add b                                         ; $6f11: $80
    add b                                         ; $6f12: $80
    ld de, $2017                                  ; $6f13: $11 $17 $20
    add hl, de                                    ; $6f16: $19
    ld [de], a                                    ; $6f17: $12
    ld h, [hl]                                    ; $6f18: $66
    inc e                                         ; $6f19: $1c
    ld [hl+], a                                   ; $6f1a: $22
    inc de                                        ; $6f1b: $13
    ld d, $1f                                     ; $6f1c: $16 $1f
    inc d                                         ; $6f1e: $14
    ld a, [de]                                    ; $6f1f: $1a
    add hl, de                                    ; $6f20: $19
    ld h, a                                       ; $6f21: $67
    rla                                           ; $6f22: $17
    inc bc                                        ; $6f23: $03
    ld bc, $0105                                  ; $6f24: $01 $05 $01
    inc bc                                        ; $6f27: $03
    inc b                                         ; $6f28: $04
    ld bc, $2304                                  ; $6f29: $01 $04 $23
    inc h                                         ; $6f2c: $24
    inc b                                         ; $6f2d: $04
    ld hl, $2523                                  ; $6f2e: $21 $23 $25
    dec b                                         ; $6f31: $05
    ld hl, $d31a                                  ; $6f32: $21 $1a $d3
    pop de                                        ; $6f35: $d1
    pop de                                        ; $6f36: $d1
    ld e, $d3                                     ; $6f37: $1e $d3
    pop de                                        ; $6f39: $d1
    pop de                                        ; $6f3a: $d1
    ld l, b                                       ; $6f3b: $68
    db $d3                                        ; $6f3c: $d3
    pop de                                        ; $6f3d: $d1
    pop de                                        ; $6f3e: $d1
    ld de, $d1d3                                  ; $6f3f: $11 $d3 $d1
    pop de                                        ; $6f42: $d1
    inc bc                                        ; $6f43: $03
    add b                                         ; $6f44: $80
    add b                                         ; $6f45: $80
    add b                                         ; $6f46: $80
    inc bc                                        ; $6f47: $03
    add b                                         ; $6f48: $80
    add b                                         ; $6f49: $80
    add b                                         ; $6f4a: $80
    inc bc                                        ; $6f4b: $03
    add b                                         ; $6f4c: $80
    add b                                         ; $6f4d: $80
    add b                                         ; $6f4e: $80
    inc hl                                        ; $6f4f: $23
    add b                                         ; $6f50: $80
    add b                                         ; $6f51: $80
    add b                                         ; $6f52: $80
    ld e, $22                                     ; $6f53: $1e $22
    ld l, c                                       ; $6f55: $69
    ld l, d                                       ; $6f56: $6a
    db $10                                        ; $6f57: $10
    inc d                                         ; $6f58: $14
    dec d                                         ; $6f59: $15
    ld d, $11                                     ; $6f5a: $16 $11
    rla                                           ; $6f5c: $17
    jr nz, jr_089_6f78                            ; $6f5d: $20 $19

    ld [de], a                                    ; $6f5f: $12
    dec de                                        ; $6f60: $1b
    inc e                                         ; $6f61: $1c
    dec e                                         ; $6f62: $1d
    inc hl                                        ; $6f63: $23
    ld hl, $0404                                  ; $6f64: $21 $04 $04
    inc bc                                        ; $6f67: $03
    dec b                                         ; $6f68: $05
    ld bc, $0301                                  ; $6f69: $01 $01 $03
    ld bc, $0401                                  ; $6f6c: $01 $01 $04
    inc bc                                        ; $6f6f: $03
    ld bc, $0404                                  ; $6f70: $01 $04 $04
    ld [de], a                                    ; $6f73: $12
    ld l, e                                       ; $6f74: $6b
    call nc, Call_000_13d4                        ; $6f75: $d4 $d4 $13

jr_089_6f78:
    inc [hl]                                      ; $6f78: $34
    push de                                       ; $6f79: $d5
    sub $1a                                       ; $6f7a: $d6 $1a
    dec [hl]                                      ; $6f7c: $35
    reti                                          ; $6f7d: $d9


    reti                                          ; $6f7e: $d9


    ld e, $37                                     ; $6f7f: $1e $37
    db $dd                                        ; $6f81: $dd
    ld l, h                                       ; $6f82: $6c
    inc hl                                        ; $6f83: $23
    add b                                         ; $6f84: $80
    add b                                         ; $6f85: $80
    add b                                         ; $6f86: $80
    inc bc                                        ; $6f87: $03
    ld [hl+], a                                   ; $6f88: $22
    ld [bc], a                                    ; $6f89: $02
    ld [bc], a                                    ; $6f8a: $02
    inc bc                                        ; $6f8b: $03
    ld [hl+], a                                   ; $6f8c: $22
    ld [bc], a                                    ; $6f8d: $02
    ld [bc], a                                    ; $6f8e: $02
    inc bc                                        ; $6f8f: $03
    ld [hl+], a                                   ; $6f90: $22
    ld [bc], a                                    ; $6f91: $02
    ld [bc], a                                    ; $6f92: $02
    call nc, $d4d4                                ; $6f93: $d4 $d4 $d4
    call nc, Call_089_6dd7                        ; $6f96: $d4 $d7 $6d
    ld l, [hl]                                    ; $6f99: $6e
    ld l, a                                       ; $6f9a: $6f
    ld [hl], b                                    ; $6f9b: $70
    ld [hl], c                                    ; $6f9c: $71
    ld [hl], d                                    ; $6f9d: $72
    ld [hl], e                                    ; $6f9e: $73
    ld [hl], h                                    ; $6f9f: $74
    db $ec                                        ; $6fa0: $ec
    ld [hl], l                                    ; $6fa1: $75
    sbc $80                                       ; $6fa2: $de $80
    add b                                         ; $6fa4: $80
    add b                                         ; $6fa5: $80
    add b                                         ; $6fa6: $80
    ld [bc], a                                    ; $6fa7: $02
    ld [bc], a                                    ; $6fa8: $02
    ld [bc], a                                    ; $6fa9: $02
    ld [bc], a                                    ; $6faa: $02
    ld [bc], a                                    ; $6fab: $02
    ld [bc], a                                    ; $6fac: $02
    ld [bc], a                                    ; $6fad: $02
    ld [bc], a                                    ; $6fae: $02
    ld [bc], a                                    ; $6faf: $02
    ld [bc], a                                    ; $6fb0: $02
    ld [bc], a                                    ; $6fb1: $02
    ld [bc], a                                    ; $6fb2: $02
    db $10                                        ; $6fb3: $10
    inc d                                         ; $6fb4: $14
    dec d                                         ; $6fb5: $15
    inc hl                                        ; $6fb6: $23
    dec a                                         ; $6fb7: $3d
    ld e, [hl]                                    ; $6fb8: $5e
    ccf                                           ; $6fb9: $3f
    ld b, b                                       ; $6fba: $40
    ld d, e                                       ; $6fbb: $53
    ld h, b                                       ; $6fbc: $60
    ld d, l                                       ; $6fbd: $55
    ld d, [hl]                                    ; $6fbe: $56
    ld d, a                                       ; $6fbf: $57
    ld e, b                                       ; $6fc0: $58
    halt                                          ; $6fc1: $76
    ld e, d                                       ; $6fc2: $5a
    inc bc                                        ; $6fc3: $03
    ld bc, $0104                                  ; $6fc4: $01 $04 $01
    inc bc                                        ; $6fc7: $03
    dec b                                         ; $6fc8: $05
    ld bc, $0305                                  ; $6fc9: $01 $05 $03
    ld bc, $0104                                  ; $6fcc: $01 $04 $01
    inc bc                                        ; $6fcf: $03
    ld bc, $0505                                  ; $6fd0: $01 $05 $05
    inc de                                        ; $6fd3: $13
    ld c, a                                       ; $6fd4: $4f
    ld [hl], a                                    ; $6fd5: $77
    ld a, b                                       ; $6fd6: $78
    ld h, h                                       ; $6fd7: $64
    ld d, c                                       ; $6fd8: $51
    ld a, c                                       ; $6fd9: $79
    ld a, [c]                                     ; $6fda: $f2
    ld h, l                                       ; $6fdb: $65
    ld d, b                                       ; $6fdc: $50
    ld d, e                                       ; $6fdd: $53
    ld h, b                                       ; $6fde: $60
    ld a, d                                       ; $6fdf: $7a
    ld d, d                                       ; $6fe0: $52
    ld d, a                                       ; $6fe1: $57
    ld e, b                                       ; $6fe2: $58
    inc bc                                        ; $6fe3: $03
    ld [hl+], a                                   ; $6fe4: $22
    ld [bc], a                                    ; $6fe5: $02
    ld [bc], a                                    ; $6fe6: $02
    inc bc                                        ; $6fe7: $03
    ld [hl+], a                                   ; $6fe8: $22
    ld [bc], a                                    ; $6fe9: $02
    ld [bc], a                                    ; $6fea: $02
    inc bc                                        ; $6feb: $03
    inc bc                                        ; $6fec: $03
    inc bc                                        ; $6fed: $03
    inc bc                                        ; $6fee: $03
    inc b                                         ; $6fef: $04
    dec b                                         ; $6ff0: $05
    ld bc, $7b04                                  ; $6ff1: $01 $04 $7b
    ld a, h                                       ; $6ff4: $7c
    ld a, l                                       ; $6ff5: $7d
    ld a, [hl]                                    ; $6ff6: $7e
    ld a, a                                       ; $6ff7: $7f
    add b                                         ; $6ff8: $80
    ld bc, $6181                                  ; $6ff9: $01 $81 $61
    ld d, [hl]                                    ; $6ffc: $56
    ld h, l                                       ; $6ffd: $65
    ld d, b                                       ; $6ffe: $50
    ld e, c                                       ; $6fff: $59
    ld e, d                                       ; $7000: $5a
    ld a, d                                       ; $7001: $7a
    ld d, d                                       ; $7002: $52
    ld [bc], a                                    ; $7003: $02
    ld [bc], a                                    ; $7004: $02
    ld [bc], a                                    ; $7005: $02
    ld [bc], a                                    ; $7006: $02
    ld [bc], a                                    ; $7007: $02
    ld a, [bc]                                    ; $7008: $0a
    ld [bc], a                                    ; $7009: $02
    ld a, [bc]                                    ; $700a: $0a
    inc bc                                        ; $700b: $03
    inc bc                                        ; $700c: $03
    inc bc                                        ; $700d: $03
    inc bc                                        ; $700e: $03
    ld bc, $0505                                  ; $700f: $01 $05 $05
    inc b                                         ; $7012: $04
    call nc, $d4d4                                ; $7013: $d4 $d4 $d4
    call nc, $2524                                ; $7016: $d4 $24 $25
    push de                                       ; $7019: $d5
    sub $82                                       ; $701a: $d6 $82
    add e                                         ; $701c: $83
    reti                                          ; $701d: $d9


    reti                                          ; $701e: $d9


    add h                                         ; $701f: $84
    add l                                         ; $7020: $85

jr_089_7021:
    add [hl]                                      ; $7021: $86
    sbc $80                                       ; $7022: $de $80
    add b                                         ; $7024: $80
    add b                                         ; $7025: $80
    add b                                         ; $7026: $80
    ld [bc], a                                    ; $7027: $02
    ld [bc], a                                    ; $7028: $02
    ld [bc], a                                    ; $7029: $02
    ld [bc], a                                    ; $702a: $02
    ld a, [bc]                                    ; $702b: $0a
    ld a, [bc]                                    ; $702c: $0a
    ld [bc], a                                    ; $702d: $02
    ld [bc], a                                    ; $702e: $02
    ld a, [bc]                                    ; $702f: $0a
    ld a, [bc]                                    ; $7030: $0a
    ld a, [bc]                                    ; $7031: $0a
    ld [bc], a                                    ; $7032: $02
    call nc, $d4d4                                ; $7033: $d4 $d4 $d4
    call nc, $d8d7                                ; $7036: $d4 $d7 $d8
    pop hl                                        ; $7039: $e1
    ld [c], a                                     ; $703a: $e2
    reti                                          ; $703b: $d9


    reti                                          ; $703c: $d9


    reti                                          ; $703d: $d9


    reti                                          ; $703e: $d9


    rst $18                                       ; $703f: $df
    db $ec                                        ; $7040: $ec
    jr z, jr_089_7021                             ; $7041: $28 $de

    add b                                         ; $7043: $80
    add b                                         ; $7044: $80
    add b                                         ; $7045: $80
    add b                                         ; $7046: $80
    ld [bc], a                                    ; $7047: $02
    ld [bc], a                                    ; $7048: $02
    ld [bc], a                                    ; $7049: $02
    ld [bc], a                                    ; $704a: $02
    ld [bc], a                                    ; $704b: $02
    ld [bc], a                                    ; $704c: $02
    ld [bc], a                                    ; $704d: $02
    ld [bc], a                                    ; $704e: $02
    ld [bc], a                                    ; $704f: $02
    ld [bc], a                                    ; $7050: $02
    ld [bc], a                                    ; $7051: $02
    ld [bc], a                                    ; $7052: $02
    call nc, $d4d4                                ; $7053: $d4 $d4 $d4
    call nc, $2524                                ; $7056: $d4 $24 $25
    push de                                       ; $7059: $d5
    sub $d9                                       ; $705a: $d6 $d9
    add a                                         ; $705c: $87
    adc b                                         ; $705d: $88
    adc c                                         ; $705e: $89
    adc d                                         ; $705f: $8a
    adc e                                         ; $7060: $8b

jr_089_7061:
    adc h                                         ; $7061: $8c
    adc l                                         ; $7062: $8d
    add b                                         ; $7063: $80
    add b                                         ; $7064: $80
    add b                                         ; $7065: $80
    add b                                         ; $7066: $80
    ld [bc], a                                    ; $7067: $02
    ld [bc], a                                    ; $7068: $02
    ld [bc], a                                    ; $7069: $02
    ld [bc], a                                    ; $706a: $02
    ld [bc], a                                    ; $706b: $02
    ld a, [bc]                                    ; $706c: $0a
    ld a, [bc]                                    ; $706d: $0a
    ld a, [bc]                                    ; $706e: $0a
    ld a, [bc]                                    ; $706f: $0a
    ld a, [bc]                                    ; $7070: $0a
    ld a, [bc]                                    ; $7071: $0a
    ld a, [bc]                                    ; $7072: $0a
    call nc, $d4d4                                ; $7073: $d4 $d4 $d4
    call nc, $8f8e                                ; $7076: $d4 $8e $8f
    pop hl                                        ; $7079: $e1
    ld [c], a                                     ; $707a: $e2
    sub b                                         ; $707b: $90
    reti                                          ; $707c: $d9


    reti                                          ; $707d: $d9


    reti                                          ; $707e: $d9


    sub c                                         ; $707f: $91
    db $ec                                        ; $7080: $ec
    jr z, jr_089_7061                             ; $7081: $28 $de

    add b                                         ; $7083: $80
    add b                                         ; $7084: $80
    add b                                         ; $7085: $80
    add b                                         ; $7086: $80
    ld a, [bc]                                    ; $7087: $0a
    ld a, [bc]                                    ; $7088: $0a
    ld [bc], a                                    ; $7089: $02
    ld [bc], a                                    ; $708a: $02
    ld a, [bc]                                    ; $708b: $0a
    ld [bc], a                                    ; $708c: $02
    ld [bc], a                                    ; $708d: $02
    ld [bc], a                                    ; $708e: $02
    ld a, [bc]                                    ; $708f: $0a
    ld [bc], a                                    ; $7090: $02
    ld [bc], a                                    ; $7091: $02
    ld [bc], a                                    ; $7092: $02
    sub d                                         ; $7093: $92
    ld b, h                                       ; $7094: $44
    sub e                                         ; $7095: $93
    sub h                                         ; $7096: $94
    sub l                                         ; $7097: $95
    sub [hl]                                      ; $7098: $96
    pop af                                        ; $7099: $f1
    ld a, [c]                                     ; $709a: $f2
    ld d, e                                       ; $709b: $53
    ld h, b                                       ; $709c: $60
    ld h, c                                       ; $709d: $61
    ld d, [hl]                                    ; $709e: $56
    sub a                                         ; $709f: $97
    sbc b                                         ; $70a0: $98
    ld e, c                                       ; $70a1: $59
    ld e, d                                       ; $70a2: $5a
    ld a, [bc]                                    ; $70a3: $0a
    ld [bc], a                                    ; $70a4: $02
    ld a, [bc]                                    ; $70a5: $0a
    ld a, [bc]                                    ; $70a6: $0a
    ld a, [bc]                                    ; $70a7: $0a
    ld a, [bc]                                    ; $70a8: $0a
    ld [bc], a                                    ; $70a9: $02
    ld [bc], a                                    ; $70aa: $02
    inc bc                                        ; $70ab: $03
    inc bc                                        ; $70ac: $03
    inc bc                                        ; $70ad: $03
    inc bc                                        ; $70ae: $03
    inc c                                         ; $70af: $0c
    inc c                                         ; $70b0: $0c
    ld bc, $0a05                                  ; $70b1: $01 $05 $0a
    dec bc                                        ; $70b4: $0b
    ld b, c                                       ; $70b5: $41
    ld b, d                                       ; $70b6: $42
    di                                            ; $70b7: $f3
    dec c                                         ; $70b8: $0d
    ld bc, $6502                                  ; $70b9: $01 $02 $65
    ld d, b                                       ; $70bc: $50
    ld d, e                                       ; $70bd: $53
    ld h, b                                       ; $70be: $60
    ld a, d                                       ; $70bf: $7a
    sbc c                                         ; $70c0: $99
    sub a                                         ; $70c1: $97
    sbc b                                         ; $70c2: $98
    ld [bc], a                                    ; $70c3: $02
    ld [bc], a                                    ; $70c4: $02
    ld [bc], a                                    ; $70c5: $02
    ld [bc], a                                    ; $70c6: $02
    ld [bc], a                                    ; $70c7: $02
    ld [bc], a                                    ; $70c8: $02
    ld [bc], a                                    ; $70c9: $02
    ld [bc], a                                    ; $70ca: $02
    inc bc                                        ; $70cb: $03
    inc bc                                        ; $70cc: $03
    inc bc                                        ; $70cd: $03
    inc bc                                        ; $70ce: $03
    inc b                                         ; $70cf: $04
    inc c                                         ; $70d0: $0c
    inc c                                         ; $70d1: $0c
    inc c                                         ; $70d2: $0c
    sub d                                         ; $70d3: $92
    sbc d                                         ; $70d4: $9a
    sbc e                                         ; $70d5: $9b
    sbc h                                         ; $70d6: $9c
    sbc l                                         ; $70d7: $9d
    sbc [hl]                                      ; $70d8: $9e
    sbc a                                         ; $70d9: $9f
    ld a, [c]                                     ; $70da: $f2
    ld h, c                                       ; $70db: $61
    ld d, [hl]                                    ; $70dc: $56
    ld h, l                                       ; $70dd: $65
    ld d, b                                       ; $70de: $50
    halt                                          ; $70df: $76
    ld e, d                                       ; $70e0: $5a
    ld a, d                                       ; $70e1: $7a
    ld d, d                                       ; $70e2: $52
    ld a, [bc]                                    ; $70e3: $0a
    ld a, [bc]                                    ; $70e4: $0a
    ld a, [bc]                                    ; $70e5: $0a
    ld a, [bc]                                    ; $70e6: $0a
    ld a, [bc]                                    ; $70e7: $0a
    ld a, [bc]                                    ; $70e8: $0a
    ld a, [bc]                                    ; $70e9: $0a
    ld [bc], a                                    ; $70ea: $02
    inc bc                                        ; $70eb: $03
    inc bc                                        ; $70ec: $03
    inc bc                                        ; $70ed: $03
    inc bc                                        ; $70ee: $03
    ld bc, $0105                                  ; $70ef: $01 $05 $01
    inc b                                         ; $70f2: $04
    and b                                         ; $70f3: $a0
    dec bc                                        ; $70f4: $0b
    ld b, c                                       ; $70f5: $41
    ld b, d                                       ; $70f6: $42
    and c                                         ; $70f7: $a1
    and d                                         ; $70f8: $a2
    ld bc, $5302                                  ; $70f9: $01 $02 $53
    ld h, b                                       ; $70fc: $60
    ld h, c                                       ; $70fd: $61
    ld d, [hl]                                    ; $70fe: $56
    ld d, a                                       ; $70ff: $57
    ld e, b                                       ; $7100: $58
    halt                                          ; $7101: $76
    ld e, d                                       ; $7102: $5a
    ld a, [bc]                                    ; $7103: $0a
    ld [bc], a                                    ; $7104: $02
    ld [bc], a                                    ; $7105: $02
    ld [bc], a                                    ; $7106: $02
    ld a, [bc]                                    ; $7107: $0a
    ld a, [bc]                                    ; $7108: $0a
    ld [bc], a                                    ; $7109: $02
    ld [bc], a                                    ; $710a: $02
    inc bc                                        ; $710b: $03
    inc bc                                        ; $710c: $03
    inc bc                                        ; $710d: $03
    inc bc                                        ; $710e: $03
    ld bc, $0504                                  ; $710f: $01 $04 $05
    inc bc                                        ; $7112: $03
    inc sp                                        ; $7113: $33
    pop de                                        ; $7114: $d1
    pop de                                        ; $7115: $d1
    pop de                                        ; $7116: $d1
    pop de                                        ; $7117: $d1
    pop de                                        ; $7118: $d1
    pop de                                        ; $7119: $d1
    pop de                                        ; $711a: $d1
    pop de                                        ; $711b: $d1
    pop de                                        ; $711c: $d1
    pop de                                        ; $711d: $d1
    pop de                                        ; $711e: $d1
    pop de                                        ; $711f: $d1
    pop de                                        ; $7120: $d1
    pop de                                        ; $7121: $d1
    pop de                                        ; $7122: $d1
    add b                                         ; $7123: $80
    add b                                         ; $7124: $80
    add b                                         ; $7125: $80
    add b                                         ; $7126: $80
    add b                                         ; $7127: $80
    add b                                         ; $7128: $80
    add b                                         ; $7129: $80
    add b                                         ; $712a: $80
    add b                                         ; $712b: $80
    add b                                         ; $712c: $80
    add b                                         ; $712d: $80
    add b                                         ; $712e: $80
    add b                                         ; $712f: $80
    add b                                         ; $7130: $80
    add b                                         ; $7131: $80
    add b                                         ; $7132: $80
    and e                                         ; $7133: $a3
    pop de                                        ; $7134: $d1
    pop de                                        ; $7135: $d1
    pop de                                        ; $7136: $d1
    db $d3                                        ; $7137: $d3
    pop de                                        ; $7138: $d1
    pop de                                        ; $7139: $d1
    pop de                                        ; $713a: $d1
    db $d3                                        ; $713b: $d3
    pop de                                        ; $713c: $d1
    pop de                                        ; $713d: $d1
    pop de                                        ; $713e: $d1
    db $d3                                        ; $713f: $d3
    pop de                                        ; $7140: $d1
    pop de                                        ; $7141: $d1
    pop de                                        ; $7142: $d1
    adc b                                         ; $7143: $88
    add b                                         ; $7144: $80
    add b                                         ; $7145: $80
    add b                                         ; $7146: $80
    add b                                         ; $7147: $80
    add b                                         ; $7148: $80
    add b                                         ; $7149: $80
    add b                                         ; $714a: $80
    add b                                         ; $714b: $80
    add b                                         ; $714c: $80
    add b                                         ; $714d: $80
    add b                                         ; $714e: $80
    add b                                         ; $714f: $80
    add b                                         ; $7150: $80
    add b                                         ; $7151: $80
    add b                                         ; $7152: $80
    pop de                                        ; $7153: $d1
    pop de                                        ; $7154: $d1
    pop de                                        ; $7155: $d1
    ld l, e                                       ; $7156: $6b
    pop de                                        ; $7157: $d1
    pop de                                        ; $7158: $d1
    pop de                                        ; $7159: $d1
    pop de                                        ; $715a: $d1
    pop de                                        ; $715b: $d1
    pop de                                        ; $715c: $d1
    pop de                                        ; $715d: $d1
    pop de                                        ; $715e: $d1
    pop de                                        ; $715f: $d1
    pop de                                        ; $7160: $d1
    pop de                                        ; $7161: $d1
    pop de                                        ; $7162: $d1
    add b                                         ; $7163: $80
    add b                                         ; $7164: $80
    add b                                         ; $7165: $80
    add b                                         ; $7166: $80
    add b                                         ; $7167: $80
    add b                                         ; $7168: $80
    add b                                         ; $7169: $80
    add b                                         ; $716a: $80
    add b                                         ; $716b: $80
    add b                                         ; $716c: $80
    add b                                         ; $716d: $80
    add b                                         ; $716e: $80
    add b                                         ; $716f: $80
    add b                                         ; $7170: $80
    add b                                         ; $7171: $80
    add b                                         ; $7172: $80
    call nc, $d4d4                                ; $7173: $d4 $d4 $d4
    call nc, $d6d5                                ; $7176: $d4 $d5 $d6
    and h                                         ; $7179: $a4
    and l                                         ; $717a: $a5
    reti                                          ; $717b: $d9


    reti                                          ; $717c: $d9


    and [hl]                                      ; $717d: $a6
    reti                                          ; $717e: $d9


    db $dd                                        ; $717f: $dd
    sbc $a7                                       ; $7180: $de $a7
    db $ec                                        ; $7182: $ec
    add b                                         ; $7183: $80
    add b                                         ; $7184: $80
    add b                                         ; $7185: $80
    add b                                         ; $7186: $80
    ld [bc], a                                    ; $7187: $02
    ld [bc], a                                    ; $7188: $02
    ld a, [bc]                                    ; $7189: $0a
    ld a, [bc]                                    ; $718a: $0a
    ld [bc], a                                    ; $718b: $02
    ld [bc], a                                    ; $718c: $02
    ld a, [bc]                                    ; $718d: $0a
    ld [bc], a                                    ; $718e: $02
    ld [bc], a                                    ; $718f: $02
    ld [bc], a                                    ; $7190: $02
    ld a, [bc]                                    ; $7191: $0a
    ld [bc], a                                    ; $7192: $02
    call nc, $d4d4                                ; $7193: $d4 $d4 $d4
    call nc, $a9a8                                ; $7196: $d4 $a8 $a9
    xor d                                         ; $7199: $aa
    dec h                                         ; $719a: $25
    xor e                                         ; $719b: $ab
    xor h                                         ; $719c: $ac
    xor l                                         ; $719d: $ad
    xor [hl]                                      ; $719e: $ae
    xor a                                         ; $719f: $af
    sbc $b0                                       ; $71a0: $de $b0
    or c                                          ; $71a2: $b1
    add b                                         ; $71a3: $80
    add b                                         ; $71a4: $80
    add b                                         ; $71a5: $80
    add b                                         ; $71a6: $80
    ld a, [bc]                                    ; $71a7: $0a
    ld a, [bc]                                    ; $71a8: $0a
    ld a, [bc]                                    ; $71a9: $0a
    ld [bc], a                                    ; $71aa: $02
    ld a, [bc]                                    ; $71ab: $0a
    ld a, [bc]                                    ; $71ac: $0a
    ld a, [bc]                                    ; $71ad: $0a
    ld a, [bc]                                    ; $71ae: $0a
    ld a, [bc]                                    ; $71af: $0a
    ld [bc], a                                    ; $71b0: $02
    ld a, [bc]                                    ; $71b1: $0a
    ld a, [bc]                                    ; $71b2: $0a
    db $ed                                        ; $71b3: $ed
    xor $b2                                       ; $71b4: $ee $b2
    or e                                          ; $71b6: $b3
    pop af                                        ; $71b7: $f1
    ld a, [c]                                     ; $71b8: $f2
    di                                            ; $71b9: $f3
    dec c                                         ; $71ba: $0d
    ld d, a                                       ; $71bb: $57
    ld e, b                                       ; $71bc: $58
    halt                                          ; $71bd: $76
    ld e, d                                       ; $71be: $5a
    push af                                       ; $71bf: $f5
    or $f7                                        ; $71c0: $f6 $f7
    ld hl, sp+$02                                 ; $71c2: $f8 $02
    ld [bc], a                                    ; $71c4: $02
    ld a, [bc]                                    ; $71c5: $0a
    ld a, [bc]                                    ; $71c6: $0a
    ld [bc], a                                    ; $71c7: $02
    ld [bc], a                                    ; $71c8: $02
    ld [bc], a                                    ; $71c9: $02
    ld [bc], a                                    ; $71ca: $02
    inc bc                                        ; $71cb: $03
    inc bc                                        ; $71cc: $03
    inc bc                                        ; $71cd: $03
    inc bc                                        ; $71ce: $03
    inc bc                                        ; $71cf: $03
    ld bc, $0404                                  ; $71d0: $01 $04 $04
    or h                                          ; $71d3: $b4
    or l                                          ; $71d4: $b5
    or [hl]                                       ; $71d5: $b6
    ld b, h                                       ; $71d6: $44
    ld bc, $b8b7                                  ; $71d7: $01 $b7 $b8
    sub [hl]                                      ; $71da: $96
    ld a, d                                       ; $71db: $7a
    ld d, d                                       ; $71dc: $52
    ld d, a                                       ; $71dd: $57
    ld e, b                                       ; $71de: $58
    dec b                                         ; $71df: $05
    ld b, $f5                                     ; $71e0: $06 $f5
    or $0a                                        ; $71e2: $f6 $0a
    ld a, [bc]                                    ; $71e4: $0a
    ld a, [bc]                                    ; $71e5: $0a
    ld [bc], a                                    ; $71e6: $02
    ld [bc], a                                    ; $71e7: $02
    ld a, [bc]                                    ; $71e8: $0a
    ld a, [bc]                                    ; $71e9: $0a
    ld a, [bc]                                    ; $71ea: $0a
    inc bc                                        ; $71eb: $03
    inc bc                                        ; $71ec: $03
    inc bc                                        ; $71ed: $03
    inc bc                                        ; $71ee: $03
    inc b                                         ; $71ef: $04
    ld bc, $0105                                  ; $71f0: $01 $05 $01
    db $ed                                        ; $71f3: $ed
    xor $0a                                       ; $71f4: $ee $0a
    dec bc                                        ; $71f6: $0b
    pop af                                        ; $71f7: $f1
    ld a, [c]                                     ; $71f8: $f2
    di                                            ; $71f9: $f3
    dec c                                         ; $71fa: $0d
    halt                                          ; $71fb: $76
    ld e, d                                       ; $71fc: $5a
    ld a, d                                       ; $71fd: $7a
    ld d, d                                       ; $71fe: $52
    rst $30                                       ; $71ff: $f7
    ld hl, sp+$05                                 ; $7200: $f8 $05
    ld b, $02                                     ; $7202: $06 $02
    ld [bc], a                                    ; $7204: $02
    ld [bc], a                                    ; $7205: $02
    ld [bc], a                                    ; $7206: $02
    ld [bc], a                                    ; $7207: $02
    ld [bc], a                                    ; $7208: $02
    ld [bc], a                                    ; $7209: $02
    ld [bc], a                                    ; $720a: $02
    inc bc                                        ; $720b: $03
    inc bc                                        ; $720c: $03
    inc bc                                        ; $720d: $03
    inc bc                                        ; $720e: $03
    inc b                                         ; $720f: $04
    inc b                                         ; $7210: $04
    ld bc, $d405                                  ; $7211: $01 $05 $d4
    call nc, $b9a3                                ; $7214: $d4 $a3 $b9
    pop de                                        ; $7217: $d1
    pop de                                        ; $7218: $d1
    db $d3                                        ; $7219: $d3
    ld [$d1d1], sp                                ; $721a: $08 $d1 $d1
    db $d3                                        ; $721d: $d3
    ld [hl], $d1                                  ; $721e: $36 $d1
    pop de                                        ; $7220: $d1
    db $d3                                        ; $7221: $d3
    db $10                                        ; $7222: $10
    add b                                         ; $7223: $80
    add b                                         ; $7224: $80
    adc b                                         ; $7225: $88
    add hl, bc                                    ; $7226: $09
    add b                                         ; $7227: $80
    add b                                         ; $7228: $80
    add b                                         ; $7229: $80
    ld bc, $8080                                  ; $722a: $01 $80 $80
    add b                                         ; $722d: $80
    inc bc                                        ; $722e: $03
    add b                                         ; $722f: $80
    add b                                         ; $7230: $80
    add b                                         ; $7231: $80
    inc bc                                        ; $7232: $03
    push af                                       ; $7233: $f5
    or $f7                                        ; $7234: $f6 $f7
    ld hl, sp-$07                                 ; $7236: $f8 $f9
    ld a, [$fcfb]                                 ; $7238: $fa $fb $fc
    add hl, sp                                    ; $723b: $39
    ld a, [hl-]                                   ; $723c: $3a
    dec sp                                        ; $723d: $3b
    inc a                                         ; $723e: $3c
    inc d                                         ; $723f: $14
    dec d                                         ; $7240: $15
    ld d, $13                                     ; $7241: $16 $13
    dec b                                         ; $7243: $05
    dec b                                         ; $7244: $05
    ld bc, $0103                                  ; $7245: $01 $03 $01
    inc b                                         ; $7248: $04
    ld bc, $0103                                  ; $7249: $01 $03 $01
    inc b                                         ; $724c: $04
    inc b                                         ; $724d: $04
    inc bc                                        ; $724e: $03
    dec b                                         ; $724f: $05
    ld bc, $0301                                  ; $7250: $01 $01 $03
    pop de                                        ; $7253: $d1
    pop de                                        ; $7254: $d1
    db $d3                                        ; $7255: $d3
    ld de, $d1d1                                  ; $7256: $11 $d1 $d1
    db $d3                                        ; $7259: $d3
    ld [de], a                                    ; $725a: $12
    pop de                                        ; $725b: $d1
    pop de                                        ; $725c: $d1
    db $d3                                        ; $725d: $d3
    inc de                                        ; $725e: $13
    pop de                                        ; $725f: $d1

jr_089_7260:
    pop de                                        ; $7260: $d1
    db $d3                                        ; $7261: $d3
    ld a, [de]                                    ; $7262: $1a
    add b                                         ; $7263: $80
    add b                                         ; $7264: $80
    add b                                         ; $7265: $80
    inc bc                                        ; $7266: $03
    add b                                         ; $7267: $80
    add b                                         ; $7268: $80
    add b                                         ; $7269: $80
    inc bc                                        ; $726a: $03
    add b                                         ; $726b: $80
    add b                                         ; $726c: $80
    add b                                         ; $726d: $80
    inc hl                                        ; $726e: $23
    add b                                         ; $726f: $80
    add b                                         ; $7270: $80
    add b                                         ; $7271: $80
    inc hl                                        ; $7272: $23
    rla                                           ; $7273: $17
    jr nz, jr_089_728f                            ; $7274: $20 $19

    ld a, [de]                                    ; $7276: $1a
    dec de                                        ; $7277: $1b
    inc e                                         ; $7278: $1c
    dec e                                         ; $7279: $1d
    ld e, $16                                     ; $727a: $1e $16
    dec d                                         ; $727c: $15
    inc d                                         ; $727d: $14
    db $10                                        ; $727e: $10
    add hl, de                                    ; $727f: $19
    ld h, a                                       ; $7280: $67
    rla                                           ; $7281: $17
    ld de, $0105                                  ; $7282: $11 $05 $01
    dec b                                         ; $7285: $05
    inc bc                                        ; $7286: $03
    ld bc, $0104                                  ; $7287: $01 $04 $01
    inc bc                                        ; $728a: $03
    dec h                                         ; $728b: $25
    ld hl, $2325                                  ; $728c: $21 $25 $23

jr_089_728f:
    inc h                                         ; $728f: $24
    ld bc, $2325                                  ; $7290: $01 $25 $23
    call nc, $d4d4                                ; $7293: $d4 $d4 $d4
    call nc, $bbba                                ; $7296: $d4 $ba $bb
    inc h                                         ; $7299: $24
    dec h                                         ; $729a: $25
    reti                                          ; $729b: $d9


    cp h                                          ; $729c: $bc
    cp l                                          ; $729d: $bd
    cp [hl]                                       ; $729e: $be
    jr z, jr_089_7260                             ; $729f: $28 $bf

    ret nz                                        ; $72a1: $c0

    pop bc                                        ; $72a2: $c1
    add b                                         ; $72a3: $80
    add b                                         ; $72a4: $80
    add b                                         ; $72a5: $80
    add b                                         ; $72a6: $80
    ld a, [bc]                                    ; $72a7: $0a
    ld a, [bc]                                    ; $72a8: $0a
    ld [bc], a                                    ; $72a9: $02
    ld [bc], a                                    ; $72aa: $02
    ld [bc], a                                    ; $72ab: $02
    ld a, [bc]                                    ; $72ac: $0a
    ld a, [bc]                                    ; $72ad: $0a
    ld a, [bc]                                    ; $72ae: $0a
    ld [bc], a                                    ; $72af: $02
    ld a, [bc]                                    ; $72b0: $0a
    ld a, [bc]                                    ; $72b1: $0a
    ld a, [bc]                                    ; $72b2: $0a
    call nc, $d4d4                                ; $72b3: $d4 $d4 $d4
    call nc, $d6d5                                ; $72b6: $d4 $d5 $d6
    rst $10                                       ; $72b9: $d7
    jp nz, $c4c3                                  ; $72ba: $c2 $c3 $c4

    push bc                                       ; $72bd: $c5
    add $c7                                       ; $72be: $c6 $c7
    ret z                                         ; $72c0: $c8

    ret                                           ; $72c1: $c9


    jp z, $8080                                   ; $72c2: $ca $80 $80

    add b                                         ; $72c5: $80
    add b                                         ; $72c6: $80
    ld [bc], a                                    ; $72c7: $02
    ld [bc], a                                    ; $72c8: $02
    ld [bc], a                                    ; $72c9: $02
    ld a, [bc]                                    ; $72ca: $0a
    ld a, [bc]                                    ; $72cb: $0a
    ld a, [bc]                                    ; $72cc: $0a
    ld a, [bc]                                    ; $72cd: $0a
    ld a, [bc]                                    ; $72ce: $0a
    ld a, [bc]                                    ; $72cf: $0a
    ld a, [bc]                                    ; $72d0: $0a
    ld a, [bc]                                    ; $72d1: $0a
    ld a, [bc]                                    ; $72d2: $0a
    call nc, Call_000_33d4                        ; $72d3: $d4 $d4 $33
    ld e, $e1                                     ; $72d6: $1e $e1
    ld [c], a                                     ; $72d8: $e2
    inc [hl]                                      ; $72d9: $34
    db $10                                        ; $72da: $10
    reti                                          ; $72db: $d9


    reti                                          ; $72dc: $d9


    dec [hl]                                      ; $72dd: $35
    ld de, $de28                                  ; $72de: $11 $28 $de
    scf                                           ; $72e1: $37
    ld [de], a                                    ; $72e2: $12
    add b                                         ; $72e3: $80
    add b                                         ; $72e4: $80
    add b                                         ; $72e5: $80
    inc hl                                        ; $72e6: $23
    ld [bc], a                                    ; $72e7: $02
    ld [bc], a                                    ; $72e8: $02
    ld [bc], a                                    ; $72e9: $02
    inc bc                                        ; $72ea: $03
    ld [bc], a                                    ; $72eb: $02
    ld [bc], a                                    ; $72ec: $02
    ld [bc], a                                    ; $72ed: $02
    inc bc                                        ; $72ee: $03
    ld [bc], a                                    ; $72ef: $02
    ld [bc], a                                    ; $72f0: $02
    ld [bc], a                                    ; $72f1: $02
    inc bc                                        ; $72f2: $03
    ld [hl+], a                                   ; $72f3: $22
    ld l, c                                       ; $72f4: $69
    dec de                                        ; $72f5: $1b
    rl h                                          ; $72f6: $cb $14
    dec d                                         ; $72f8: $15
    ld d, $13                                     ; $72f9: $16 $13
    rla                                           ; $72fb: $17
    jr @+$1b                                      ; $72fc: $18 $19

    call z, $1c1b                                 ; $72fe: $cc $1b $1c
    ld [hl+], a                                   ; $7301: $22
    ld e, $24                                     ; $7302: $1e $24
    ld bc, $0b24                                  ; $7304: $01 $24 $0b
    ld bc, $0405                                  ; $7307: $01 $05 $04
    inc bc                                        ; $730a: $03
    inc b                                         ; $730b: $04
    ld bc, $0b01                                  ; $730c: $01 $01 $0b
    dec b                                         ; $730f: $05
    ld bc, $0305                                  ; $7310: $01 $05 $03
    ld b, c                                       ; $7313: $41
    ld b, d                                       ; $7314: $42
    call $01ce                                    ; $7315: $cd $ce $01
    ld [bc], a                                    ; $7318: $02
    sub l                                         ; $7319: $95
    rst $08                                       ; $731a: $cf
    ld d, a                                       ; $731b: $57
    ld e, b                                       ; $731c: $58
    halt                                          ; $731d: $76
    ld e, d                                       ; $731e: $5a
    push af                                       ; $731f: $f5
    or $f7                                        ; $7320: $f6 $f7
    ld hl, sp+$02                                 ; $7322: $f8 $02
    ld [bc], a                                    ; $7324: $02
    ld a, [bc]                                    ; $7325: $0a
    ld a, [bc]                                    ; $7326: $0a
    ld [bc], a                                    ; $7327: $02
    ld [bc], a                                    ; $7328: $02
    ld a, [bc]                                    ; $7329: $0a
    ld a, [bc]                                    ; $732a: $0a
    inc bc                                        ; $732b: $03
    inc bc                                        ; $732c: $03
    inc bc                                        ; $732d: $03
    inc bc                                        ; $732e: $03
    dec b                                         ; $732f: $05
    ld bc, $0404                                  ; $7330: $01 $04 $04
    db $ed                                        ; $7333: $ed
    ret nc                                        ; $7334: $d0

    pop de                                        ; $7335: $d1
    dec bc                                        ; $7336: $0b
    jp nc, $f3d3                                  ; $7337: $d2 $d3 $f3

    dec c                                         ; $733a: $0d
    ld a, d                                       ; $733b: $7a
    ld d, d                                       ; $733c: $52
    ld d, a                                       ; $733d: $57
    ld e, b                                       ; $733e: $58
    dec b                                         ; $733f: $05
    ld b, $f5                                     ; $7340: $06 $f5
    or $02                                        ; $7342: $f6 $02
    ld a, [bc]                                    ; $7344: $0a
    ld a, [bc]                                    ; $7345: $0a
    ld [bc], a                                    ; $7346: $02
    ld a, [bc]                                    ; $7347: $0a
    ld a, [bc]                                    ; $7348: $0a
    ld [bc], a                                    ; $7349: $02
    ld [bc], a                                    ; $734a: $02
    inc bc                                        ; $734b: $03
    inc bc                                        ; $734c: $03
    inc bc                                        ; $734d: $03
    inc bc                                        ; $734e: $03
    ld bc, $0405                                  ; $734f: $01 $05 $04
    inc b                                         ; $7352: $04
    ld b, c                                       ; $7353: $41
    ld b, d                                       ; $7354: $42
    ld c, a                                       ; $7355: $4f
    db $10                                        ; $7356: $10
    ld bc, $5102                                  ; $7357: $01 $02 $51
    ld d, b                                       ; $735a: $50
    halt                                          ; $735b: $76
    ld e, d                                       ; $735c: $5a
    ld a, d                                       ; $735d: $7a
    ld d, d                                       ; $735e: $52
    rst $30                                       ; $735f: $f7
    ld hl, sp+$05                                 ; $7360: $f8 $05
    ld b, $02                                     ; $7362: $06 $02
    ld [bc], a                                    ; $7364: $02
    ld [bc], a                                    ; $7365: $02
    inc bc                                        ; $7366: $03
    ld [bc], a                                    ; $7367: $02
    ld [bc], a                                    ; $7368: $02
    ld [bc], a                                    ; $7369: $02
    inc bc                                        ; $736a: $03
    inc bc                                        ; $736b: $03
    inc bc                                        ; $736c: $03
    inc bc                                        ; $736d: $03
    inc bc                                        ; $736e: $03
    ld bc, $0405                                  ; $736f: $01 $05 $04
    inc b                                         ; $7372: $04
    call nc, $1615                                ; $7373: $d4 $15 $16
    inc de                                        ; $7376: $13
    push de                                       ; $7377: $d5
    ld d, h                                       ; $7378: $54
    ld h, c                                       ; $7379: $61
    ld d, [hl]                                    ; $737a: $56
    ld d, a                                       ; $737b: $57
    ld e, b                                       ; $737c: $58
    halt                                          ; $737d: $76
    ld e, d                                       ; $737e: $5a
    push af                                       ; $737f: $f5
    or $f7                                        ; $7380: $f6 $f7
    ld hl, sp+$0c                                 ; $7382: $f8 $0c
    inc b                                         ; $7384: $04
    ld bc, $0d03                                  ; $7385: $01 $03 $0d
    ld bc, $0301                                  ; $7388: $01 $01 $03
    ld bc, $0104                                  ; $738b: $01 $04 $01
    inc bc                                        ; $738e: $03
    dec b                                         ; $738f: $05
    ld bc, $0304                                  ; $7390: $01 $04 $03
    ld sp, hl                                     ; $7393: $f9
    ld a, [$fcfb]                                 ; $7394: $fa $fb $fc
    add hl, sp                                    ; $7397: $39
    ld e, h                                       ; $7398: $5c
    dec sp                                        ; $7399: $3b
    inc a                                         ; $739a: $3c
    dec a                                         ; $739b: $3d
    ld e, [hl]                                    ; $739c: $5e
    ccf                                           ; $739d: $3f
    ld b, b                                       ; $739e: $40
    db $10                                        ; $739f: $10
    inc d                                         ; $73a0: $14
    dec d                                         ; $73a1: $15
    ld d, $03                                     ; $73a2: $16 $03
    dec b                                         ; $73a4: $05
    ld bc, $0304                                  ; $73a5: $01 $04 $03
    inc b                                         ; $73a8: $04
    inc b                                         ; $73a9: $04
    ld bc, $0403                                  ; $73aa: $01 $03 $04
    inc b                                         ; $73ad: $04
    dec b                                         ; $73ae: $05
    inc bc                                        ; $73af: $03
    ld bc, $0505                                  ; $73b0: $01 $05 $05
    rlca                                          ; $73b3: $07
    jp nc, $d4d4                                  ; $73b4: $d2 $d4 $d4

    ld h, e                                       ; $73b7: $63
    db $d3                                        ; $73b8: $d3
    pop de                                        ; $73b9: $d1
    pop de                                        ; $73ba: $d1
    ld h, h                                       ; $73bb: $64
    db $d3                                        ; $73bc: $d3
    pop de                                        ; $73bd: $d1
    pop de                                        ; $73be: $d1
    inc de                                        ; $73bf: $13
    db $d3                                        ; $73c0: $d3
    pop de                                        ; $73c1: $d1
    pop de                                        ; $73c2: $d1
    ld bc, $8080                                  ; $73c3: $01 $80 $80
    add b                                         ; $73c6: $80
    dec b                                         ; $73c7: $05
    add b                                         ; $73c8: $80
    add b                                         ; $73c9: $80
    add b                                         ; $73ca: $80
    inc bc                                        ; $73cb: $03
    add b                                         ; $73cc: $80
    add b                                         ; $73cd: $80
    add b                                         ; $73ce: $80
    inc bc                                        ; $73cf: $03
    add b                                         ; $73d0: $80
    add b                                         ; $73d1: $80
    add b                                         ; $73d2: $80
    ld de, $2017                                  ; $73d3: $11 $17 $20
    add hl, de                                    ; $73d6: $19
    ld [de], a                                    ; $73d7: $12
    dec de                                        ; $73d8: $1b
    inc e                                         ; $73d9: $1c
    ld [hl+], a                                   ; $73da: $22
    inc de                                        ; $73db: $13
    ld d, $15                                     ; $73dc: $16 $15
    inc d                                         ; $73de: $14
    ld a, [de]                                    ; $73df: $1a
    add hl, de                                    ; $73e0: $19
    jr nz, jr_089_73fa                            ; $73e1: $20 $17

    inc bc                                        ; $73e3: $03
    ld bc, $0104                                  ; $73e4: $01 $04 $01
    inc bc                                        ; $73e7: $03
    dec b                                         ; $73e8: $05
    ld bc, $2304                                  ; $73e9: $01 $04 $23
    inc h                                         ; $73ec: $24
    dec h                                         ; $73ed: $25
    inc h                                         ; $73ee: $24
    inc hl                                        ; $73ef: $23
    inc h                                         ; $73f0: $24
    dec h                                         ; $73f1: $25
    inc h                                         ; $73f2: $24
    ld a, [de]                                    ; $73f3: $1a
    db $d3                                        ; $73f4: $d3
    pop de                                        ; $73f5: $d1
    pop de                                        ; $73f6: $d1
    ld e, $d3                                     ; $73f7: $1e $d3
    pop de                                        ; $73f9: $d1

jr_089_73fa:
    pop de                                        ; $73fa: $d1
    db $10                                        ; $73fb: $10
    ld l, e                                       ; $73fc: $6b
    call nc, Call_000_11d4                        ; $73fd: $d4 $d4 $11
    inc [hl]                                      ; $7400: $34
    push de                                       ; $7401: $d5
    sub $03                                       ; $7402: $d6 $03
    add b                                         ; $7404: $80
    add b                                         ; $7405: $80
    add b                                         ; $7406: $80
    inc bc                                        ; $7407: $03
    add b                                         ; $7408: $80
    add b                                         ; $7409: $80
    add b                                         ; $740a: $80
    inc hl                                        ; $740b: $23
    add b                                         ; $740c: $80
    add b                                         ; $740d: $80
    add b                                         ; $740e: $80
    inc hl                                        ; $740f: $23
    ld [hl+], a                                   ; $7410: $22
    ld [bc], a                                    ; $7411: $02
    ld [bc], a                                    ; $7412: $02
    pop de                                        ; $7413: $d1
    pop de                                        ; $7414: $d1
    pop de                                        ; $7415: $d1
    pop de                                        ; $7416: $d1
    pop de                                        ; $7417: $d1
    pop de                                        ; $7418: $d1
    pop de                                        ; $7419: $d1
    pop de                                        ; $741a: $d1
    call nc, $d4d4                                ; $741b: $d4 $d4 $d4
    call nc, $d8d6                                ; $741e: $d4 $d6 $d8
    rst $10                                       ; $7421: $d7
    ret c                                         ; $7422: $d8

    add b                                         ; $7423: $80
    add b                                         ; $7424: $80
    add b                                         ; $7425: $80
    add b                                         ; $7426: $80
    add b                                         ; $7427: $80
    add b                                         ; $7428: $80
    add b                                         ; $7429: $80
    add b                                         ; $742a: $80
    add b                                         ; $742b: $80
    add b                                         ; $742c: $80
    add b                                         ; $742d: $80
    add b                                         ; $742e: $80
    ld a, [bc]                                    ; $742f: $0a
    ld [bc], a                                    ; $7430: $02
    ld a, [bc]                                    ; $7431: $0a
    ld a, [bc]                                    ; $7432: $0a
    ld e, $22                                     ; $7433: $1e $22
    inc e                                         ; $7435: $1c
    dec de                                        ; $7436: $1b
    db $10                                        ; $7437: $10
    inc d                                         ; $7438: $14
    dec d                                         ; $7439: $15
    ld d, $11                                     ; $743a: $16 $11
    rla                                           ; $743c: $17
    jr nz, jr_089_7458                            ; $743d: $20 $19

    push af                                       ; $743f: $f5
    or $f7                                        ; $7440: $f6 $f7
    ld hl, sp+$23                                 ; $7442: $f8 $23
    inc h                                         ; $7444: $24
    ld hl, $0321                                  ; $7445: $21 $21 $03
    dec b                                         ; $7448: $05
    inc b                                         ; $7449: $04
    dec b                                         ; $744a: $05
    inc bc                                        ; $744b: $03
    dec b                                         ; $744c: $05
    ld bc, $0304                                  ; $744d: $01 $04 $03
    dec b                                         ; $7450: $05
    ld bc, $1204                                  ; $7451: $01 $04 $12
    dec [hl]                                      ; $7454: $35
    reti                                          ; $7455: $d9


    reti                                          ; $7456: $d9


    inc de                                        ; $7457: $13

jr_089_7458:
    scf                                           ; $7458: $37
    reti                                          ; $7459: $d9


    jp c, Jump_089_4f1a                           ; $745a: $da $1a $4f

    db $ed                                        ; $745d: $ed
    db $db                                        ; $745e: $db
    dec b                                         ; $745f: $05
    ld d, c                                       ; $7460: $51
    pop af                                        ; $7461: $f1
    ld a, [c]                                     ; $7462: $f2
    inc hl                                        ; $7463: $23
    ld [hl+], a                                   ; $7464: $22
    ld [bc], a                                    ; $7465: $02
    ld [bc], a                                    ; $7466: $02
    inc bc                                        ; $7467: $03
    ld [hl+], a                                   ; $7468: $22
    ld a, [bc]                                    ; $7469: $0a
    ld a, [bc]                                    ; $746a: $0a
    inc bc                                        ; $746b: $03
    ld [hl+], a                                   ; $746c: $22
    ld [bc], a                                    ; $746d: $02
    ld a, [bc]                                    ; $746e: $0a
    inc bc                                        ; $746f: $03
    ld [hl+], a                                   ; $7470: $22
    ld [bc], a                                    ; $7471: $02
    ld [bc], a                                    ; $7472: $02
    reti                                          ; $7473: $d9


    reti                                          ; $7474: $d9


    reti                                          ; $7475: $d9


    call c, $dedd                                 ; $7476: $dc $dd $de
    rst $18                                       ; $7479: $df
    ldh [$e1], a                                  ; $747a: $e0 $e1
    ld [c], a                                     ; $747c: $e2
    ld b, c                                       ; $747d: $41
    ld b, d                                       ; $747e: $42
    di                                            ; $747f: $f3
    dec c                                         ; $7480: $0d
    db $e3                                        ; $7481: $e3
    ld [bc], a                                    ; $7482: $02
    ld [bc], a                                    ; $7483: $02
    ld [bc], a                                    ; $7484: $02
    ld [bc], a                                    ; $7485: $02
    ld a, [bc]                                    ; $7486: $0a
    ld a, [bc]                                    ; $7487: $0a
    ld a, [bc]                                    ; $7488: $0a
    ld a, [bc]                                    ; $7489: $0a
    ld a, [bc]                                    ; $748a: $0a
    ld a, [bc]                                    ; $748b: $0a
    ld a, [bc]                                    ; $748c: $0a
    ld [bc], a                                    ; $748d: $02
    ld [bc], a                                    ; $748e: $02
    ld [bc], a                                    ; $748f: $02
    ld [bc], a                                    ; $7490: $02
    ld a, [bc]                                    ; $7491: $0a
    ld [bc], a                                    ; $7492: $02
    pop de                                        ; $7493: $d1
    pop de                                        ; $7494: $d1
    pop de                                        ; $7495: $d1
    db $d3                                        ; $7496: $d3
    pop de                                        ; $7497: $d1
    pop de                                        ; $7498: $d1
    pop de                                        ; $7499: $d1
    db $d3                                        ; $749a: $d3
    pop de                                        ; $749b: $d1
    pop de                                        ; $749c: $d1
    pop de                                        ; $749d: $d1
    ld l, e                                       ; $749e: $6b
    pop de                                        ; $749f: $d1
    pop de                                        ; $74a0: $d1
    pop de                                        ; $74a1: $d1
    pop de                                        ; $74a2: $d1
    add b                                         ; $74a3: $80
    add b                                         ; $74a4: $80
    add b                                         ; $74a5: $80
    add b                                         ; $74a6: $80
    add b                                         ; $74a7: $80
    add b                                         ; $74a8: $80
    add b                                         ; $74a9: $80
    add b                                         ; $74aa: $80
    add b                                         ; $74ab: $80
    add b                                         ; $74ac: $80
    add b                                         ; $74ad: $80
    add b                                         ; $74ae: $80
    add b                                         ; $74af: $80
    add b                                         ; $74b0: $80
    add b                                         ; $74b1: $80
    add b                                         ; $74b2: $80
    ld sp, hl                                     ; $74b3: $f9
    ld a, [$fcfb]                                 ; $74b4: $fa $fb $fc
    add hl, sp                                    ; $74b7: $39
    ld e, h                                       ; $74b8: $5c
    dec sp                                        ; $74b9: $3b
    inc a                                         ; $74ba: $3c
    call nc, $d4d4                                ; $74bb: $d4 $d4 $d4
    call nc, $d1d1                                ; $74be: $d4 $d1 $d1
    pop de                                        ; $74c1: $d1
    pop de                                        ; $74c2: $d1
    inc bc                                        ; $74c3: $03
    ld bc, $0105                                  ; $74c4: $01 $05 $01
    inc bc                                        ; $74c7: $03
    dec b                                         ; $74c8: $05
    inc b                                         ; $74c9: $04
    ld bc, $8080                                  ; $74ca: $01 $80 $80
    add b                                         ; $74cd: $80
    add b                                         ; $74ce: $80
    add b                                         ; $74cf: $80
    add b                                         ; $74d0: $80
    add b                                         ; $74d1: $80
    add b                                         ; $74d2: $80
    rlca                                          ; $74d3: $07
    ld [$faf9], sp                                ; $74d4: $08 $f9 $fa
    ld h, e                                       ; $74d7: $63
    ld [hl], $39                                  ; $74d8: $36 $39
    ld e, h                                       ; $74da: $5c
    call nc, $d4d4                                ; $74db: $d4 $d4 $d4
    call nc, $d1d1                                ; $74de: $d4 $d1 $d1
    pop de                                        ; $74e1: $d1
    pop de                                        ; $74e2: $d1
    inc bc                                        ; $74e3: $03
    inc bc                                        ; $74e4: $03
    inc bc                                        ; $74e5: $03
    inc bc                                        ; $74e6: $03
    dec b                                         ; $74e7: $05
    dec b                                         ; $74e8: $05
    ld bc, $8001                                  ; $74e9: $01 $01 $80
    add b                                         ; $74ec: $80
    add b                                         ; $74ed: $80
    add b                                         ; $74ee: $80
    add b                                         ; $74ef: $80
    add b                                         ; $74f0: $80
    add b                                         ; $74f1: $80
    add b                                         ; $74f2: $80
    ei                                            ; $74f3: $fb
    db $fc                                        ; $74f4: $fc
    rlca                                          ; $74f5: $07
    ld [$3c3b], sp                                ; $74f6: $08 $3b $3c
    ld h, e                                       ; $74f9: $63
    ld [hl], $d4                                  ; $74fa: $36 $d4
    call nc, $d4d4                                ; $74fc: $d4 $d4 $d4
    pop de                                        ; $74ff: $d1
    pop de                                        ; $7500: $d1
    pop de                                        ; $7501: $d1
    pop de                                        ; $7502: $d1
    inc bc                                        ; $7503: $03
    inc bc                                        ; $7504: $03
    inc bc                                        ; $7505: $03
    inc bc                                        ; $7506: $03
    inc b                                         ; $7507: $04
    inc b                                         ; $7508: $04
    ld bc, $8005                                  ; $7509: $01 $05 $80
    add b                                         ; $750c: $80
    add b                                         ; $750d: $80
    add b                                         ; $750e: $80
    add b                                         ; $750f: $80
    add b                                         ; $7510: $80
    add b                                         ; $7511: $80
    add b                                         ; $7512: $80
    pop de                                        ; $7513: $d1
    pop de                                        ; $7514: $d1
    pop de                                        ; $7515: $d1
    pop de                                        ; $7516: $d1
    pop de                                        ; $7517: $d1
    pop de                                        ; $7518: $d1
    pop de                                        ; $7519: $d1
    pop de                                        ; $751a: $d1
    call nc, $d4d4                                ; $751b: $d4 $d4 $d4
    call nc, $2524                                ; $751e: $d4 $24 $25
    push de                                       ; $7521: $d5
    sub $80                                       ; $7522: $d6 $80
    add b                                         ; $7524: $80
    add b                                         ; $7525: $80
    add b                                         ; $7526: $80
    add b                                         ; $7527: $80
    add b                                         ; $7528: $80
    add b                                         ; $7529: $80
    add b                                         ; $752a: $80
    add b                                         ; $752b: $80
    add b                                         ; $752c: $80
    add b                                         ; $752d: $80
    add b                                         ; $752e: $80
    ld [bc], a                                    ; $752f: $02
    ld [bc], a                                    ; $7530: $02
    ld [bc], a                                    ; $7531: $02
    ld [bc], a                                    ; $7532: $02
    pop de                                        ; $7533: $d1
    pop de                                        ; $7534: $d1
    pop de                                        ; $7535: $d1
    pop de                                        ; $7536: $d1
    pop de                                        ; $7537: $d1
    pop de                                        ; $7538: $d1
    pop de                                        ; $7539: $d1
    pop de                                        ; $753a: $d1
    call nc, $d4d4                                ; $753b: $d4 $d4 $d4
    call nc, $d8d7                                ; $753e: $d4 $d7 $d8
    pop hl                                        ; $7541: $e1
    ld [c], a                                     ; $7542: $e2
    add b                                         ; $7543: $80
    add b                                         ; $7544: $80
    add b                                         ; $7545: $80
    add b                                         ; $7546: $80
    add b                                         ; $7547: $80
    add b                                         ; $7548: $80
    add b                                         ; $7549: $80
    add b                                         ; $754a: $80
    add b                                         ; $754b: $80
    add b                                         ; $754c: $80
    add b                                         ; $754d: $80
    add b                                         ; $754e: $80
    ld [bc], a                                    ; $754f: $02
    ld [bc], a                                    ; $7550: $02
    ld [bc], a                                    ; $7551: $02
    ld [bc], a                                    ; $7552: $02
    pop de                                        ; $7553: $d1
    pop de                                        ; $7554: $d1
    pop de                                        ; $7555: $d1
    pop de                                        ; $7556: $d1
    pop de                                        ; $7557: $d1
    pop de                                        ; $7558: $d1
    pop de                                        ; $7559: $d1
    pop de                                        ; $755a: $d1
    call nc, $d4d4                                ; $755b: $d4 $d4 $d4
    call nc, $e4d7                                ; $755e: $d4 $d7 $e4
    push hl                                       ; $7561: $e5
    and $80                                       ; $7562: $e6 $80
    add b                                         ; $7564: $80
    add b                                         ; $7565: $80
    add b                                         ; $7566: $80
    add b                                         ; $7567: $80
    add b                                         ; $7568: $80
    add b                                         ; $7569: $80
    add b                                         ; $756a: $80
    add b                                         ; $756b: $80
    add b                                         ; $756c: $80
    add b                                         ; $756d: $80
    add b                                         ; $756e: $80
    ld [bc], a                                    ; $756f: $02
    ld a, [bc]                                    ; $7570: $0a
    ld a, [bc]                                    ; $7571: $0a
    ld a, [bc]                                    ; $7572: $0a
    rst $20                                       ; $7573: $e7
    add sp, -$17                                  ; $7574: $e8 $e9
    ld [$eceb], a                                 ; $7576: $ea $eb $ec

jr_089_7579:
    db $ed                                        ; $7579: $ed
    xor $92                                       ; $757a: $ee $92
    rst $28                                       ; $757c: $ef
    db $ed                                        ; $757d: $ed
    ldh a, [$95]                                  ; $757e: $f0 $95
    sub [hl]                                      ; $7580: $96
    pop af                                        ; $7581: $f1
    ld a, [c]                                     ; $7582: $f2
    ld a, [bc]                                    ; $7583: $0a
    ld a, [bc]                                    ; $7584: $0a
    ld a, [bc]                                    ; $7585: $0a
    ld a, [bc]                                    ; $7586: $0a
    ld a, [bc]                                    ; $7587: $0a
    ld a, [bc]                                    ; $7588: $0a
    ld a, [bc]                                    ; $7589: $0a
    ld a, [bc]                                    ; $758a: $0a
    ld a, [bc]                                    ; $758b: $0a
    ld a, [bc]                                    ; $758c: $0a
    ld [bc], a                                    ; $758d: $02
    ld a, [bc]                                    ; $758e: $0a
    ld a, [bc]                                    ; $758f: $0a
    ld a, [bc]                                    ; $7590: $0a
    ld [bc], a                                    ; $7591: $02
    ld [bc], a                                    ; $7592: $02
    reti                                          ; $7593: $d9


    reti                                          ; $7594: $d9


    reti                                          ; $7595: $d9


    reti                                          ; $7596: $d9


    rst $18                                       ; $7597: $df
    db $ec                                        ; $7598: $ec
    jr z, jr_089_7579                             ; $7599: $28 $de

    ld a, [bc]                                    ; $759b: $0a
    dec bc                                        ; $759c: $0b
    ld b, c                                       ; $759d: $41
    ld b, d                                       ; $759e: $42
    di                                            ; $759f: $f3
    dec c                                         ; $75a0: $0d
    ld bc, $0202                                  ; $75a1: $01 $02 $02
    ld [bc], a                                    ; $75a4: $02
    ld [bc], a                                    ; $75a5: $02
    ld [bc], a                                    ; $75a6: $02
    ld [bc], a                                    ; $75a7: $02
    ld [bc], a                                    ; $75a8: $02
    ld [bc], a                                    ; $75a9: $02
    ld [bc], a                                    ; $75aa: $02
    ld [bc], a                                    ; $75ab: $02
    ld [bc], a                                    ; $75ac: $02
    ld [bc], a                                    ; $75ad: $02
    ld [bc], a                                    ; $75ae: $02
    ld [bc], a                                    ; $75af: $02
    ld [bc], a                                    ; $75b0: $02
    ld [bc], a                                    ; $75b1: $02
    ld [bc], a                                    ; $75b2: $02
    reti                                          ; $75b3: $d9


    reti                                          ; $75b4: $d9


    reti                                          ; $75b5: $d9


    reti                                          ; $75b6: $d9


    adc d                                         ; $75b7: $8a
    pop bc                                        ; $75b8: $c1

jr_089_75b9:
    db $dd                                        ; $75b9: $dd
    pop af                                        ; $75ba: $f1
    sub d                                         ; $75bb: $92
    ld b, h                                       ; $75bc: $44
    ld a, [c]                                     ; $75bd: $f2
    di                                            ; $75be: $f3
    sub l                                         ; $75bf: $95
    sub [hl]                                      ; $75c0: $96
    pop af                                        ; $75c1: $f1
    db $f4                                        ; $75c2: $f4
    ld [bc], a                                    ; $75c3: $02
    ld [bc], a                                    ; $75c4: $02
    ld [bc], a                                    ; $75c5: $02
    ld [bc], a                                    ; $75c6: $02
    ld a, [bc]                                    ; $75c7: $0a
    ld a, [bc]                                    ; $75c8: $0a
    ld [bc], a                                    ; $75c9: $02
    ld a, [bc]                                    ; $75ca: $0a
    ld a, [bc]                                    ; $75cb: $0a
    ld [bc], a                                    ; $75cc: $02
    ld a, [bc]                                    ; $75cd: $0a
    ld a, [bc]                                    ; $75ce: $0a
    ld a, [bc]                                    ; $75cf: $0a
    ld a, [bc]                                    ; $75d0: $0a
    ld [bc], a                                    ; $75d1: $02
    ld a, [bc]                                    ; $75d2: $0a
    push af                                       ; $75d3: $f5
    or $d9                                        ; $75d4: $f6 $d9
    reti                                          ; $75d6: $d9


    rst $30                                       ; $75d7: $f7
    db $ec                                        ; $75d8: $ec
    jr z, jr_089_75b9                             ; $75d9: $28 $de

    ld hl, sp+$0b                                 ; $75db: $f8 $0b
    ld b, c                                       ; $75dd: $41
    ld b, d                                       ; $75de: $42
    ld sp, hl                                     ; $75df: $f9
    dec c                                         ; $75e0: $0d
    ld bc, $0a02                                  ; $75e1: $01 $02 $0a
    ld a, [bc]                                    ; $75e4: $0a
    ld [bc], a                                    ; $75e5: $02
    ld [bc], a                                    ; $75e6: $02
    ld a, [bc]                                    ; $75e7: $0a
    ld [bc], a                                    ; $75e8: $02
    ld [bc], a                                    ; $75e9: $02
    ld [bc], a                                    ; $75ea: $02
    ld a, [bc]                                    ; $75eb: $0a
    ld [bc], a                                    ; $75ec: $02
    ld [bc], a                                    ; $75ed: $02
    ld [bc], a                                    ; $75ee: $02
    ld a, [bc]                                    ; $75ef: $0a
    ld [bc], a                                    ; $75f0: $02
    ld [bc], a                                    ; $75f1: $02
    ld [bc], a                                    ; $75f2: $02
    ld sp, hl                                     ; $75f3: $f9
    ld a, [$fcfb]                                 ; $75f4: $fa $fb $fc
    add hl, sp                                    ; $75f7: $39
    ld e, h                                       ; $75f8: $5c
    dec sp                                        ; $75f9: $3b
    inc a                                         ; $75fa: $3c
    call nc, $d4d4                                ; $75fb: $d4 $d4 $d4
    call nc, $d1d1                                ; $75fe: $d4 $d1 $d1
    pop de                                        ; $7601: $d1
    pop de                                        ; $7602: $d1
    inc bc                                        ; $7603: $03
    inc bc                                        ; $7604: $03
    inc bc                                        ; $7605: $03
    inc bc                                        ; $7606: $03
    ld bc, $0404                                  ; $7607: $01 $04 $04
    dec b                                         ; $760a: $05
    add b                                         ; $760b: $80
    add b                                         ; $760c: $80
    add b                                         ; $760d: $80
    add b                                         ; $760e: $80
    add b                                         ; $760f: $80
    add b                                         ; $7610: $80
    add b                                         ; $7611: $80
    add b                                         ; $7612: $80
    rlca                                          ; $7613: $07
    ld [$faf9], sp                                ; $7614: $08 $f9 $fa
    ld h, e                                       ; $7617: $63
    ld [hl], $39                                  ; $7618: $36 $39
    ld e, h                                       ; $761a: $5c
    call nc, $d4d4                                ; $761b: $d4 $d4 $d4
    call nc, $d1d1                                ; $761e: $d4 $d1 $d1
    pop de                                        ; $7621: $d1
    pop de                                        ; $7622: $d1
    inc bc                                        ; $7623: $03
    inc bc                                        ; $7624: $03
    inc bc                                        ; $7625: $03
    inc bc                                        ; $7626: $03
    ld bc, $0105                                  ; $7627: $01 $05 $01
    inc b                                         ; $762a: $04
    add b                                         ; $762b: $80
    add b                                         ; $762c: $80
    add b                                         ; $762d: $80
    add b                                         ; $762e: $80
    add b                                         ; $762f: $80
    add b                                         ; $7630: $80
    add b                                         ; $7631: $80
    add b                                         ; $7632: $80
    ei                                            ; $7633: $fb
    db $fc                                        ; $7634: $fc
    rlca                                          ; $7635: $07
    ld [$3c3b], sp                                ; $7636: $08 $3b $3c
    ld h, e                                       ; $7639: $63
    ld [hl], $d4                                  ; $763a: $36 $d4
    call nc, $d4d4                                ; $763c: $d4 $d4 $d4
    pop de                                        ; $763f: $d1
    pop de                                        ; $7640: $d1
    pop de                                        ; $7641: $d1
    pop de                                        ; $7642: $d1
    inc bc                                        ; $7643: $03
    inc bc                                        ; $7644: $03
    inc bc                                        ; $7645: $03
    inc bc                                        ; $7646: $03
    ld bc, $0505                                  ; $7647: $01 $05 $05
    ld bc, $8080                                  ; $764a: $01 $80 $80
    add b                                         ; $764d: $80
    add b                                         ; $764e: $80
    add b                                         ; $764f: $80
    add b                                         ; $7650: $80
    add b                                         ; $7651: $80
    add b                                         ; $7652: $80
    ld sp, hl                                     ; $7653: $f9
    ld a, [$fcfb]                                 ; $7654: $fa $fb $fc
    add hl, sp                                    ; $7657: $39
    ld e, h                                       ; $7658: $5c
    dec sp                                        ; $7659: $3b
    inc a                                         ; $765a: $3c
    call nc, $d4d4                                ; $765b: $d4 $d4 $d4
    call nc, $d1d1                                ; $765e: $d4 $d1 $d1
    pop de                                        ; $7661: $d1
    pop de                                        ; $7662: $d1
    inc bc                                        ; $7663: $03
    inc bc                                        ; $7664: $03
    inc bc                                        ; $7665: $03
    inc bc                                        ; $7666: $03
    inc b                                         ; $7667: $04
    ld bc, $0104                                  ; $7668: $01 $04 $01
    add b                                         ; $766b: $80
    add b                                         ; $766c: $80
    add b                                         ; $766d: $80
    add b                                         ; $766e: $80
    add b                                         ; $766f: $80
    add b                                         ; $7670: $80
    add b                                         ; $7671: $80
    add b                                         ; $7672: $80
    pop de                                        ; $7673: $d1
    pop de                                        ; $7674: $d1
    pop de                                        ; $7675: $d1
    pop de                                        ; $7676: $d1
    pop de                                        ; $7677: $d1
    pop de                                        ; $7678: $d1
    pop de                                        ; $7679: $d1
    pop de                                        ; $767a: $d1
    call nc, $a3d4                                ; $767b: $d4 $d4 $a3
    pop de                                        ; $767e: $d1
    inc h                                         ; $767f: $24
    dec h                                         ; $7680: $25
    db $d3                                        ; $7681: $d3
    pop de                                        ; $7682: $d1
    add b                                         ; $7683: $80
    add b                                         ; $7684: $80
    add b                                         ; $7685: $80
    add b                                         ; $7686: $80
    add b                                         ; $7687: $80
    add b                                         ; $7688: $80
    add b                                         ; $7689: $80
    add b                                         ; $768a: $80
    add b                                         ; $768b: $80
    add b                                         ; $768c: $80
    adc b                                         ; $768d: $88
    add b                                         ; $768e: $80
    ld [bc], a                                    ; $768f: $02
    ld [bc], a                                    ; $7690: $02
    add b                                         ; $7691: $80
    add b                                         ; $7692: $80
    reti                                          ; $7693: $d9


    reti                                          ; $7694: $d9


    ld a, [$8ad1]                                 ; $7695: $fa $d1 $8a
    pop bc                                        ; $7698: $c1
    ld a, [$92d1]                                 ; $7699: $fa $d1 $92
    ld b, h                                       ; $769c: $44
    ld a, [$95d1]                                 ; $769d: $fa $d1 $95
    sub [hl]                                      ; $76a0: $96
    ld a, [$02d1]                                 ; $76a1: $fa $d1 $02
    ld [bc], a                                    ; $76a4: $02
    adc b                                         ; $76a5: $88
    add b                                         ; $76a6: $80
    ld a, [bc]                                    ; $76a7: $0a
    ld a, [bc]                                    ; $76a8: $0a
    adc b                                         ; $76a9: $88
    add b                                         ; $76aa: $80
    ld a, [bc]                                    ; $76ab: $0a
    ld [bc], a                                    ; $76ac: $02
    adc b                                         ; $76ad: $88
    add b                                         ; $76ae: $80
    ld a, [bc]                                    ; $76af: $0a
    ld a, [bc]                                    ; $76b0: $0a
    adc b                                         ; $76b1: $88
    add b                                         ; $76b2: $80
    rlca                                          ; $76b3: $07
    ld [$fbfa], sp                                ; $76b4: $08 $fa $fb
    ld h, e                                       ; $76b7: $63
    ld [hl], $d3                                  ; $76b8: $36 $d3
    ei                                            ; $76ba: $fb
    call nc, Call_000_33d4                        ; $76bb: $d4 $d4 $33
    ei                                            ; $76be: $fb
    pop de                                        ; $76bf: $d1
    pop de                                        ; $76c0: $d1
    pop de                                        ; $76c1: $d1
    pop de                                        ; $76c2: $d1
    inc bc                                        ; $76c3: $03
    inc bc                                        ; $76c4: $03
    adc b                                         ; $76c5: $88
    adc b                                         ; $76c6: $88
    dec b                                         ; $76c7: $05
    inc bc                                        ; $76c8: $03
    add b                                         ; $76c9: $80
    adc b                                         ; $76ca: $88
    add b                                         ; $76cb: $80
    add b                                         ; $76cc: $80
    add b                                         ; $76cd: $80
    adc b                                         ; $76ce: $88
    add b                                         ; $76cf: $80
    add b                                         ; $76d0: $80
    add b                                         ; $76d1: $80
    add b                                         ; $76d2: $80
    rlca                                          ; $76d3: $07
    nop                                           ; $76d4: $00
    add hl, bc                                    ; $76d5: $09
    nop                                           ; $76d6: $00
    ldh [rTAC], a                                 ; $76d7: $e0 $07
    pop de                                        ; $76d9: $d1
    jp nc, $d2d2                                  ; $76da: $d2 $d2 $d2

    db $d3                                        ; $76dd: $d3
    call nc, $d4d4                                ; $76de: $d4 $d4 $d4
    push de                                       ; $76e1: $d5
    sub $d7                                       ; $76e2: $d6 $d7
    ret c                                         ; $76e4: $d8

    push de                                       ; $76e5: $d5
    reti                                          ; $76e6: $d9


    jp c, $07db                                   ; $76e7: $da $db $07

    rlca                                          ; $76ea: $07
    rlca                                          ; $76eb: $07
    rlca                                          ; $76ec: $07
    rlca                                          ; $76ed: $07
    rlca                                          ; $76ee: $07
    rlca                                          ; $76ef: $07
    rlca                                          ; $76f0: $07
    rlca                                          ; $76f1: $07
    ld bc, $0101                                  ; $76f2: $01 $01 $01
    rlca                                          ; $76f5: $07
    ld bc, $0101                                  ; $76f6: $01 $01 $01
    jp nc, $d2d2                                  ; $76f9: $d2 $d2 $d2

    jp nc, $d4d4                                  ; $76fc: $d2 $d4 $d4

    call nc, $dcd4                                ; $76ff: $d4 $d4 $dc
    db $dd                                        ; $7702: $dd
    ret c                                         ; $7703: $d8

    ret c                                         ; $7704: $d8

    sbc $df                                       ; $7705: $de $df
    call c, Call_000_07d8                         ; $7707: $dc $d8 $07
    rlca                                          ; $770a: $07
    rlca                                          ; $770b: $07
    rlca                                          ; $770c: $07
    rlca                                          ; $770d: $07
    rlca                                          ; $770e: $07
    rlca                                          ; $770f: $07
    rlca                                          ; $7710: $07
    ld bc, $0101                                  ; $7711: $01 $01 $01
    ld bc, $0101                                  ; $7714: $01 $01 $01
    ld bc, $d201                                  ; $7717: $01 $01 $d2
    jp nc, $d2d2                                  ; $771a: $d2 $d2 $d2

    call nc, $d4d4                                ; $771d: $d4 $d4 $d4
    call nc, $d8d8                                ; $7720: $d4 $d8 $d8
    ldh [$e1], a                                  ; $7723: $e0 $e1
    ret c                                         ; $7725: $d8

    ret c                                         ; $7726: $d8

    ret c                                         ; $7727: $d8

    ld [c], a                                     ; $7728: $e2
    rlca                                          ; $7729: $07
    rlca                                          ; $772a: $07
    rlca                                          ; $772b: $07
    rlca                                          ; $772c: $07
    rlca                                          ; $772d: $07
    rlca                                          ; $772e: $07
    rlca                                          ; $772f: $07
    rlca                                          ; $7730: $07
    ld bc, $0101                                  ; $7731: $01 $01 $01
    ld bc, $0101                                  ; $7734: $01 $01 $01
    ld bc, $e303                                  ; $7737: $01 $03 $e3
    db $e4                                        ; $773a: $e4
    push hl                                       ; $773b: $e5
    and $e7                                       ; $773c: $e6 $e7
    add sp, -$17                                  ; $773e: $e8 $e9
    ld [$ebe5], a                                 ; $7740: $ea $e5 $eb
    db $ec                                        ; $7743: $ec
    db $ed                                        ; $7744: $ed
    xor $ef                                       ; $7745: $ee $ef
    ldh a, [$f1]                                  ; $7747: $f0 $f1
    rlca                                          ; $7749: $07
    inc bc                                        ; $774a: $03
    inc bc                                        ; $774b: $03
    rlca                                          ; $774c: $07
    rlca                                          ; $774d: $07
    inc bc                                        ; $774e: $03
    rlca                                          ; $774f: $07
    rlca                                          ; $7750: $07
    ld h, e                                       ; $7751: $63
    inc bc                                        ; $7752: $03
    rlca                                          ; $7753: $07
    rlca                                          ; $7754: $07
    inc bc                                        ; $7755: $03
    inc bc                                        ; $7756: $03
    inc bc                                        ; $7757: $03
    rlca                                          ; $7758: $07
    push de                                       ; $7759: $d5
    ret c                                         ; $775a: $d8

    call c, $d5f2                                 ; $775b: $dc $f2 $d5
    db $db                                        ; $775e: $db
    sbc $f3                                       ; $775f: $de $f3
    push de                                       ; $7761: $d5
    ld a, [c]                                     ; $7762: $f2
    db $f4                                        ; $7763: $f4
    ret c                                         ; $7764: $d8

    push de                                       ; $7765: $d5
    di                                            ; $7766: $f3
    ret c                                         ; $7767: $d8

    push af                                       ; $7768: $f5
    rlca                                          ; $7769: $07
    ld bc, $0101                                  ; $776a: $01 $01 $01
    rlca                                          ; $776d: $07
    ld bc, $0101                                  ; $776e: $01 $01 $01
    rlca                                          ; $7771: $07
    ld bc, $0101                                  ; $7772: $01 $01 $01
    rlca                                          ; $7775: $07
    ld bc, $0101                                  ; $7776: $01 $01 $01
    db $f4                                        ; $7779: $f4
    ret c                                         ; $777a: $d8

    or $f7                                        ; $777b: $f6 $f7
    ret c                                         ; $777d: $d8

    push af                                       ; $777e: $f5
    ld hl, sp-$07                                 ; $777f: $f8 $f9
    ld a, [$fcfb]                                 ; $7781: $fa $fb $fc
    db $fd                                        ; $7784: $fd
    ld hl, sp-$07                                 ; $7785: $f8 $f9
    or $f7                                        ; $7787: $f6 $f7
    ld bc, $0101                                  ; $7789: $01 $01 $01
    ld bc, $0101                                  ; $778c: $01 $01 $01
    ld bc, $0101                                  ; $778f: $01 $01 $01
    ld bc, $0101                                  ; $7792: $01 $01 $01
    ld bc, $0101                                  ; $7795: $01 $01 $01
    ld bc, $fefa                                  ; $7798: $01 $fa $fe
    ret c                                         ; $779b: $d8

    ret c                                         ; $779c: $d8

    or $d8                                        ; $779d: $f6 $d8
    ret c                                         ; $779f: $d8

    ret c                                         ; $77a0: $d8

    rst $38                                       ; $77a1: $ff
    nop                                           ; $77a2: $00
    ld bc, $0302                                  ; $77a3: $01 $02 $03
    inc b                                         ; $77a6: $04
    dec b                                         ; $77a7: $05
    ld b, $01                                     ; $77a8: $06 $01
    ld bc, $0101                                  ; $77aa: $01 $01 $01
    ld bc, $0101                                  ; $77ad: $01 $01 $01
    ld bc, $8601                                  ; $77b0: $01 $01 $86
    add l                                         ; $77b3: $85
    add l                                         ; $77b4: $85
    add [hl]                                      ; $77b5: $86
    add [hl]                                      ; $77b6: $86
    add l                                         ; $77b7: $85
    add l                                         ; $77b8: $85
    ret c                                         ; $77b9: $d8

    rlca                                          ; $77ba: $07
    ld [$09d8], sp                                ; $77bb: $08 $d8 $09
    ld a, [bc]                                    ; $77be: $0a
    dec bc                                        ; $77bf: $0b
    add hl, bc                                    ; $77c0: $09
    inc c                                         ; $77c1: $0c
    dec c                                         ; $77c2: $0d
    ld c, $0c                                     ; $77c3: $0e $0c
    rrca                                          ; $77c5: $0f
    db $10                                        ; $77c6: $10
    ld de, $010f                                  ; $77c7: $11 $0f $01
    add l                                         ; $77ca: $85
    add l                                         ; $77cb: $85
    ld bc, $8585                                  ; $77cc: $01 $85 $85
    add l                                         ; $77cf: $85
    and l                                         ; $77d0: $a5
    add l                                         ; $77d1: $85
    add l                                         ; $77d2: $85
    add l                                         ; $77d3: $85
    and l                                         ; $77d4: $a5
    add l                                         ; $77d5: $85
    add l                                         ; $77d6: $85
    add l                                         ; $77d7: $85
    and l                                         ; $77d8: $a5
    push de                                       ; $77d9: $d5
    ret c                                         ; $77da: $d8

    ret c                                         ; $77db: $d8

    cp $d5                                        ; $77dc: $fe $d5
    ret c                                         ; $77de: $d8

    or $f7                                        ; $77df: $f6 $f7
    push de                                       ; $77e1: $d5
    ret c                                         ; $77e2: $d8

    rst $38                                       ; $77e3: $ff
    push af                                       ; $77e4: $f5
    push de                                       ; $77e5: $d5
    ret c                                         ; $77e6: $d8

    ld a, [$07d8]                                 ; $77e7: $fa $d8 $07
    ld bc, $0101                                  ; $77ea: $01 $01 $01
    rlca                                          ; $77ed: $07
    ld bc, $0101                                  ; $77ee: $01 $01 $01
    rlca                                          ; $77f1: $07
    ld bc, $0101                                  ; $77f2: $01 $01 $01
    rlca                                          ; $77f5: $07
    ld bc, $0101                                  ; $77f6: $01 $01 $01
    db $fc                                        ; $77f9: $fc
    push af                                       ; $77fa: $f5
    nop                                           ; $77fb: $00
    ld [de], a                                    ; $77fc: $12
    ld a, [$1413]                                 ; $77fd: $fa $13 $14
    dec d                                         ; $7800: $15
    ld d, $17                                     ; $7801: $16 $17
    jr jr_089_781e                                ; $7803: $18 $19

    ld a, [de]                                    ; $7805: $1a
    dec de                                        ; $7806: $1b
    inc e                                         ; $7807: $1c
    dec e                                         ; $7808: $1d
    ld bc, $8601                                  ; $7809: $01 $01 $86
    add [hl]                                      ; $780c: $86
    ld bc, $8686                                  ; $780d: $01 $86 $86
    add [hl]                                      ; $7810: $86
    add [hl]                                      ; $7811: $86
    add [hl]                                      ; $7812: $86
    add [hl]                                      ; $7813: $86
    add [hl]                                      ; $7814: $86
    add [hl]                                      ; $7815: $86
    add [hl]                                      ; $7816: $86
    add [hl]                                      ; $7817: $86
    add [hl]                                      ; $7818: $86
    ld e, $1f                                     ; $7819: $1e $1f
    jr nz, @+$23                                  ; $781b: $20 $21

    ld [hl+], a                                   ; $781d: $22

jr_089_781e:
    inc hl                                        ; $781e: $23
    inc h                                         ; $781f: $24
    dec h                                         ; $7820: $25
    ld h, $27                                     ; $7821: $26 $27
    jr z, jr_089_784e                             ; $7823: $28 $29

    ld a, [hl+]                                   ; $7825: $2a
    dec hl                                        ; $7826: $2b
    inc l                                         ; $7827: $2c
    dec l                                         ; $7828: $2d
    add [hl]                                      ; $7829: $86
    add [hl]                                      ; $782a: $86
    add l                                         ; $782b: $85
    add l                                         ; $782c: $85
    add [hl]                                      ; $782d: $86
    add [hl]                                      ; $782e: $86
    add l                                         ; $782f: $85
    add l                                         ; $7830: $85
    add [hl]                                      ; $7831: $86
    add [hl]                                      ; $7832: $86
    add l                                         ; $7833: $85
    add l                                         ; $7834: $85
    add [hl]                                      ; $7835: $86
    add [hl]                                      ; $7836: $86
    add [hl]                                      ; $7837: $86
    add l                                         ; $7838: $85
    ld l, $2f                                     ; $7839: $2e $2f
    jr nc, @+$30                                  ; $783b: $30 $2e

    ld sp, $3332                                  ; $783d: $31 $32 $33
    ld sp, $3534                                  ; $7840: $31 $34 $35
    ld [hl], $34                                  ; $7843: $36 $34
    scf                                           ; $7845: $37
    jr c, jr_089_7881                             ; $7846: $38 $39

    ld a, [hl-]                                   ; $7848: $3a
    add l                                         ; $7849: $85
    add l                                         ; $784a: $85
    add l                                         ; $784b: $85
    and l                                         ; $784c: $a5
    add l                                         ; $784d: $85

jr_089_784e:
    add l                                         ; $784e: $85
    add l                                         ; $784f: $85
    and l                                         ; $7850: $a5
    add l                                         ; $7851: $85
    add l                                         ; $7852: $85
    add l                                         ; $7853: $85
    and l                                         ; $7854: $a5
    add l                                         ; $7855: $85
    add l                                         ; $7856: $85
    add l                                         ; $7857: $85
    add l                                         ; $7858: $85
    push de                                       ; $7859: $d5
    ret c                                         ; $785a: $d8

    ret c                                         ; $785b: $d8

    ret c                                         ; $785c: $d8

    push de                                       ; $785d: $d5
    ldh [$e1], a                                  ; $785e: $e0 $e1
    ret c                                         ; $7860: $d8

    push de                                       ; $7861: $d5
    ret c                                         ; $7862: $d8

    ret c                                         ; $7863: $d8

    ret c                                         ; $7864: $d8

    push de                                       ; $7865: $d5
    ret c                                         ; $7866: $d8

    ret c                                         ; $7867: $d8

    ret c                                         ; $7868: $d8

    rlca                                          ; $7869: $07
    ld bc, $0101                                  ; $786a: $01 $01 $01
    rlca                                          ; $786d: $07
    ld bc, $0101                                  ; $786e: $01 $01 $01
    rlca                                          ; $7871: $07
    ld bc, $0101                                  ; $7872: $01 $01 $01
    rlca                                          ; $7875: $07
    ld bc, $0101                                  ; $7876: $01 $01 $01
    ld a, [de]                                    ; $7879: $1a
    dec sp                                        ; $787a: $3b
    inc a                                         ; $787b: $3c
    dec a                                         ; $787c: $3d
    ld a, [de]                                    ; $787d: $1a
    ld a, $3f                                     ; $787e: $3e $3f
    ld b, b                                       ; $7880: $40

jr_089_7881:
    ld a, [de]                                    ; $7881: $1a
    ld b, c                                       ; $7882: $41
    ld b, d                                       ; $7883: $42
    ld b, e                                       ; $7884: $43
    ld b, h                                       ; $7885: $44
    ld b, l                                       ; $7886: $45
    ld b, [hl]                                    ; $7887: $46
    ld b, a                                       ; $7888: $47
    add [hl]                                      ; $7889: $86
    add [hl]                                      ; $788a: $86
    add [hl]                                      ; $788b: $86
    add [hl]                                      ; $788c: $86
    add [hl]                                      ; $788d: $86
    add [hl]                                      ; $788e: $86
    add [hl]                                      ; $788f: $86
    add [hl]                                      ; $7890: $86
    add [hl]                                      ; $7891: $86
    add [hl]                                      ; $7892: $86
    add [hl]                                      ; $7893: $86
    add [hl]                                      ; $7894: $86
    add [hl]                                      ; $7895: $86
    add [hl]                                      ; $7896: $86
    add [hl]                                      ; $7897: $86
    add [hl]                                      ; $7898: $86
    ld c, b                                       ; $7899: $48
    ld c, c                                       ; $789a: $49
    ld c, d                                       ; $789b: $4a
    ld c, e                                       ; $789c: $4b
    ld c, h                                       ; $789d: $4c
    ld c, l                                       ; $789e: $4d
    ld c, [hl]                                    ; $789f: $4e
    ld c, a                                       ; $78a0: $4f
    ld d, b                                       ; $78a1: $50
    ld d, c                                       ; $78a2: $51
    ld d, d                                       ; $78a3: $52
    ld d, e                                       ; $78a4: $53
    ld d, h                                       ; $78a5: $54
    ld d, l                                       ; $78a6: $55
    ld d, [hl]                                    ; $78a7: $56
    ld d, a                                       ; $78a8: $57
    add [hl]                                      ; $78a9: $86
    add [hl]                                      ; $78aa: $86
    add [hl]                                      ; $78ab: $86
    add [hl]                                      ; $78ac: $86
    add [hl]                                      ; $78ad: $86
    add [hl]                                      ; $78ae: $86
    add [hl]                                      ; $78af: $86
    add [hl]                                      ; $78b0: $86
    add [hl]                                      ; $78b1: $86
    add [hl]                                      ; $78b2: $86
    add [hl]                                      ; $78b3: $86
    add [hl]                                      ; $78b4: $86
    add [hl]                                      ; $78b5: $86
    add [hl]                                      ; $78b6: $86
    add [hl]                                      ; $78b7: $86
    add [hl]                                      ; $78b8: $86
    ld e, b                                       ; $78b9: $58
    ld e, c                                       ; $78ba: $59
    ld e, d                                       ; $78bb: $5a
    ld e, e                                       ; $78bc: $5b
    ld e, h                                       ; $78bd: $5c
    ld e, l                                       ; $78be: $5d
    ld e, [hl]                                    ; $78bf: $5e
    ld e, a                                       ; $78c0: $5f
    ld h, b                                       ; $78c1: $60
    ld h, c                                       ; $78c2: $61
    ld h, d                                       ; $78c3: $62
    ld h, e                                       ; $78c4: $63
    ld h, h                                       ; $78c5: $64
    ld h, l                                       ; $78c6: $65
    ld h, [hl]                                    ; $78c7: $66
    ld h, a                                       ; $78c8: $67
    add l                                         ; $78c9: $85
    add l                                         ; $78ca: $85
    add l                                         ; $78cb: $85
    add l                                         ; $78cc: $85
    add [hl]                                      ; $78cd: $86
    add [hl]                                      ; $78ce: $86
    add [hl]                                      ; $78cf: $86
    add [hl]                                      ; $78d0: $86
    add [hl]                                      ; $78d1: $86
    add [hl]                                      ; $78d2: $86
    add [hl]                                      ; $78d3: $86
    add [hl]                                      ; $78d4: $86
    add [hl]                                      ; $78d5: $86
    add [hl]                                      ; $78d6: $86
    add [hl]                                      ; $78d7: $86
    add [hl]                                      ; $78d8: $86
    ld l, b                                       ; $78d9: $68
    jp nc, $d2d2                                  ; $78da: $d2 $d2 $d2

    ld l, c                                       ; $78dd: $69
    call nc, $d4d4                                ; $78de: $d4 $d4 $d4
    ldh [$e1], a                                  ; $78e1: $e0 $e1
    sub $d7                                       ; $78e3: $d6 $d7
    pop af                                        ; $78e5: $f1
    ret c                                         ; $78e6: $d8

    reti                                          ; $78e7: $d9


    jp c, $0707                                   ; $78e8: $da $07 $07

    rlca                                          ; $78eb: $07
    rlca                                          ; $78ec: $07
    rlca                                          ; $78ed: $07
    rlca                                          ; $78ee: $07
    rlca                                          ; $78ef: $07
    rlca                                          ; $78f0: $07
    ld bc, $0101                                  ; $78f1: $01 $01 $01
    ld bc, $0107                                  ; $78f4: $01 $07 $01
    ld bc, $d201                                  ; $78f7: $01 $01 $d2
    jp nc, $d2d2                                  ; $78fa: $d2 $d2 $d2

    call nc, $d4d4                                ; $78fd: $d4 $d4 $d4
    call nc, $d8d8                                ; $7900: $d4 $d8 $d8
    ret c                                         ; $7903: $d8

    db $db                                        ; $7904: $db
    ret c                                         ; $7905: $d8

    ret c                                         ; $7906: $d8

    call c, $07de                                 ; $7907: $dc $de $07
    rlca                                          ; $790a: $07
    rlca                                          ; $790b: $07
    rlca                                          ; $790c: $07
    rlca                                          ; $790d: $07
    rlca                                          ; $790e: $07
    rlca                                          ; $790f: $07
    rlca                                          ; $7910: $07
    ld bc, $0101                                  ; $7911: $01 $01 $01
    ld bc, $0101                                  ; $7914: $01 $01 $01
    ld bc, $d201                                  ; $7917: $01 $01 $d2
    jp nc, Jump_089_6ad2                          ; $791a: $d2 $d2 $6a

    call nc, $d4d4                                ; $791d: $d4 $d4 $d4
    ld l, e                                       ; $7920: $6b
    ld l, h                                       ; $7921: $6c
    di                                            ; $7922: $f3
    ret c                                         ; $7923: $d8

    push de                                       ; $7924: $d5
    rst $18                                       ; $7925: $df
    ld l, l                                       ; $7926: $6d
    ld l, h                                       ; $7927: $6c
    push de                                       ; $7928: $d5
    rlca                                          ; $7929: $07
    rlca                                          ; $792a: $07
    rlca                                          ; $792b: $07
    rlca                                          ; $792c: $07
    rlca                                          ; $792d: $07
    rlca                                          ; $792e: $07
    rlca                                          ; $792f: $07
    rlca                                          ; $7930: $07
    ld bc, $0101                                  ; $7931: $01 $01 $01
    daa                                           ; $7934: $27
    ld bc, $0101                                  ; $7935: $01 $01 $01
    daa                                           ; $7938: $27
    ret c                                         ; $7939: $d8

    ret c                                         ; $793a: $d8

    ret c                                         ; $793b: $d8

    ret c                                         ; $793c: $d8

    ret c                                         ; $793d: $d8

    ret c                                         ; $793e: $d8

    db $db                                        ; $793f: $db
    ld l, h                                       ; $7940: $6c
    ld [bc], a                                    ; $7941: $02
    ld bc, $d800                                  ; $7942: $01 $00 $d8
    ld b, $05                                     ; $7945: $06 $05
    inc b                                         ; $7947: $04
    inc bc                                        ; $7948: $03
    ld bc, $0101                                  ; $7949: $01 $01 $01
    ld bc, $0101                                  ; $794c: $01 $01 $01
    ld bc, $a501                                  ; $794f: $01 $01 $a5
    and l                                         ; $7952: $a5
    and [hl]                                      ; $7953: $a6
    ld bc, $a5a5                                  ; $7954: $01 $a5 $a5
    and [hl]                                      ; $7957: $a6
    and [hl]                                      ; $7958: $a6
    ret c                                         ; $7959: $d8

    db $f4                                        ; $795a: $f4
    ld a, [c]                                     ; $795b: $f2
    ld l, [hl]                                    ; $795c: $6e
    di                                            ; $795d: $f3
    sbc $6f                                       ; $795e: $de $6f
    ld l, l                                       ; $7960: $6d
    db $db                                        ; $7961: $db
    ld l, h                                       ; $7962: $6c
    di                                            ; $7963: $f3
    sbc $d8                                       ; $7964: $de $d8
    ret c                                         ; $7966: $d8

    ret c                                         ; $7967: $d8

    ld l, h                                       ; $7968: $6c
    ld bc, $0101                                  ; $7969: $01 $01 $01
    ld bc, $0101                                  ; $796c: $01 $01 $01
    ld bc, $0101                                  ; $796f: $01 $01 $01
    ld bc, $0101                                  ; $7972: $01 $01 $01
    ld bc, $0101                                  ; $7975: $01 $01 $01
    ld bc, $de70                                  ; $7978: $01 $70 $de
    db $dd                                        ; $797b: $dd
    push de                                       ; $797c: $d5
    ld a, [c]                                     ; $797d: $f2
    ldh [$e1], a                                  ; $797e: $e0 $e1
    push de                                       ; $7980: $d5
    rst $18                                       ; $7981: $df
    db $f4                                        ; $7982: $f4
    ret c                                         ; $7983: $d8

    push de                                       ; $7984: $d5
    ld [hl], b                                    ; $7985: $70
    call c, $d5d8                                 ; $7986: $dc $d8 $d5
    ld bc, $0101                                  ; $7989: $01 $01 $01
    daa                                           ; $798c: $27
    ld bc, $0101                                  ; $798d: $01 $01 $01
    daa                                           ; $7990: $27
    ld bc, $0101                                  ; $7991: $01 $01 $01
    daa                                           ; $7994: $27
    ld bc, $0101                                  ; $7995: $01 $01 $01
    daa                                           ; $7998: $27
    ld hl, $1f20                                  ; $7999: $21 $20 $1f
    ld e, $25                                     ; $799c: $1e $25
    inc h                                         ; $799e: $24
    inc hl                                        ; $799f: $23
    ld [hl+], a                                   ; $79a0: $22
    add hl, hl                                    ; $79a1: $29
    jr z, jr_089_79cb                             ; $79a2: $28 $27

    ld h, $2d                                     ; $79a4: $26 $2d
    inc l                                         ; $79a6: $2c
    dec hl                                        ; $79a7: $2b
    ld a, [hl+]                                   ; $79a8: $2a
    and l                                         ; $79a9: $a5
    and l                                         ; $79aa: $a5
    and [hl]                                      ; $79ab: $a6
    and [hl]                                      ; $79ac: $a6
    and l                                         ; $79ad: $a5
    and l                                         ; $79ae: $a5
    and [hl]                                      ; $79af: $a6
    and [hl]                                      ; $79b0: $a6
    and l                                         ; $79b1: $a5
    and l                                         ; $79b2: $a5
    and [hl]                                      ; $79b3: $a6
    and [hl]                                      ; $79b4: $a6
    and l                                         ; $79b5: $a5
    and [hl]                                      ; $79b6: $a6
    and [hl]                                      ; $79b7: $a6
    and [hl]                                      ; $79b8: $a6
    ld [de], a                                    ; $79b9: $12
    nop                                           ; $79ba: $00
    ret c                                         ; $79bb: $d8

    ret c                                         ; $79bc: $d8

    dec d                                         ; $79bd: $15
    inc d                                         ; $79be: $14
    inc de                                        ; $79bf: $13
    ret c                                         ; $79c0: $d8

    add hl, de                                    ; $79c1: $19
    jr jr_089_79db                                ; $79c2: $18 $17

    ld d, $1d                                     ; $79c4: $16 $1d
    inc e                                         ; $79c6: $1c
    dec de                                        ; $79c7: $1b
    ld a, [de]                                    ; $79c8: $1a
    and [hl]                                      ; $79c9: $a6
    and [hl]                                      ; $79ca: $a6

jr_089_79cb:
    ld bc, $a601                                  ; $79cb: $01 $01 $a6
    and [hl]                                      ; $79ce: $a6
    and [hl]                                      ; $79cf: $a6
    ld bc, $a6a6                                  ; $79d0: $01 $a6 $a6
    and [hl]                                      ; $79d3: $a6
    and [hl]                                      ; $79d4: $a6
    and [hl]                                      ; $79d5: $a6
    and [hl]                                      ; $79d6: $a6
    and [hl]                                      ; $79d7: $a6
    and [hl]                                      ; $79d8: $a6
    db $db                                        ; $79d9: $db
    ret c                                         ; $79da: $d8

jr_089_79db:
    ret c                                         ; $79db: $d8

    push de                                       ; $79dc: $d5
    ret c                                         ; $79dd: $d8

    ret c                                         ; $79de: $d8

    ld a, [$ffd5]                                 ; $79df: $fa $d5 $ff
    push af                                       ; $79e2: $f5
    or $d5                                        ; $79e3: $f6 $d5
    ld a, [$d8fe]                                 ; $79e5: $fa $fe $d8
    push de                                       ; $79e8: $d5
    ld bc, $0101                                  ; $79e9: $01 $01 $01
    daa                                           ; $79ec: $27
    ld bc, $0101                                  ; $79ed: $01 $01 $01
    daa                                           ; $79f0: $27
    ld bc, $0101                                  ; $79f1: $01 $01 $01
    daa                                           ; $79f4: $27
    ld bc, $0101                                  ; $79f5: $01 $01 $01
    daa                                           ; $79f8: $27
    ld c, e                                       ; $79f9: $4b
    ld c, d                                       ; $79fa: $4a
    ld c, c                                       ; $79fb: $49
    ld c, b                                       ; $79fc: $48
    ld c, a                                       ; $79fd: $4f
    ld c, [hl]                                    ; $79fe: $4e
    ld c, l                                       ; $79ff: $4d
    ld c, h                                       ; $7a00: $4c
    ld d, e                                       ; $7a01: $53
    ld d, d                                       ; $7a02: $52
    ld d, c                                       ; $7a03: $51
    ld d, b                                       ; $7a04: $50
    ld d, a                                       ; $7a05: $57
    ld d, [hl]                                    ; $7a06: $56
    ld d, l                                       ; $7a07: $55
    ld d, h                                       ; $7a08: $54
    and [hl]                                      ; $7a09: $a6
    and [hl]                                      ; $7a0a: $a6
    and [hl]                                      ; $7a0b: $a6
    and [hl]                                      ; $7a0c: $a6
    and [hl]                                      ; $7a0d: $a6
    and [hl]                                      ; $7a0e: $a6
    and [hl]                                      ; $7a0f: $a6
    and [hl]                                      ; $7a10: $a6
    and [hl]                                      ; $7a11: $a6
    and [hl]                                      ; $7a12: $a6
    and [hl]                                      ; $7a13: $a6
    and [hl]                                      ; $7a14: $a6
    and [hl]                                      ; $7a15: $a6
    and [hl]                                      ; $7a16: $a6
    and [hl]                                      ; $7a17: $a6
    and [hl]                                      ; $7a18: $a6
    dec a                                         ; $7a19: $3d
    inc a                                         ; $7a1a: $3c
    dec sp                                        ; $7a1b: $3b
    ld a, [de]                                    ; $7a1c: $1a
    ld b, b                                       ; $7a1d: $40
    ccf                                           ; $7a1e: $3f
    ld a, $1a                                     ; $7a1f: $3e $1a
    ld b, e                                       ; $7a21: $43
    ld b, d                                       ; $7a22: $42
    ld b, c                                       ; $7a23: $41
    ld a, [de]                                    ; $7a24: $1a
    ld b, a                                       ; $7a25: $47
    ld b, [hl]                                    ; $7a26: $46
    ld b, l                                       ; $7a27: $45
    ld b, h                                       ; $7a28: $44
    and [hl]                                      ; $7a29: $a6
    and [hl]                                      ; $7a2a: $a6
    and [hl]                                      ; $7a2b: $a6
    and [hl]                                      ; $7a2c: $a6
    and [hl]                                      ; $7a2d: $a6
    and [hl]                                      ; $7a2e: $a6
    and [hl]                                      ; $7a2f: $a6
    and [hl]                                      ; $7a30: $a6
    and [hl]                                      ; $7a31: $a6
    and [hl]                                      ; $7a32: $a6
    and [hl]                                      ; $7a33: $a6
    and [hl]                                      ; $7a34: $a6
    and [hl]                                      ; $7a35: $a6
    and [hl]                                      ; $7a36: $a6
    and [hl]                                      ; $7a37: $a6
    and [hl]                                      ; $7a38: $a6
    or $d8                                        ; $7a39: $f6 $d8
    ret c                                         ; $7a3b: $d8

    push de                                       ; $7a3c: $d5
    ret c                                         ; $7a3d: $d8

    ret c                                         ; $7a3e: $d8

    di                                            ; $7a3f: $f3
    push de                                       ; $7a40: $d5
    ret c                                         ; $7a41: $d8

    db $f4                                        ; $7a42: $f4
    sbc $d5                                       ; $7a43: $de $d5
    di                                            ; $7a45: $f3
    ld a, [c]                                     ; $7a46: $f2
    db $dd                                        ; $7a47: $dd
    push de                                       ; $7a48: $d5
    ld bc, $0101                                  ; $7a49: $01 $01 $01
    daa                                           ; $7a4c: $27
    ld bc, $0101                                  ; $7a4d: $01 $01 $01
    daa                                           ; $7a50: $27
    ld bc, $0101                                  ; $7a51: $01 $01 $01
    daa                                           ; $7a54: $27
    ld bc, $0101                                  ; $7a55: $01 $01 $01
    daa                                           ; $7a58: $27
    push de                                       ; $7a59: $d5
    ret c                                         ; $7a5a: $d8

    db $f4                                        ; $7a5b: $f4
    db $db                                        ; $7a5c: $db
    push de                                       ; $7a5d: $d5
    di                                            ; $7a5e: $f3
    ld [hl], b                                    ; $7a5f: $70
    sbc $d5                                       ; $7a60: $de $d5
    ld l, l                                       ; $7a62: $6d
    ld a, [c]                                     ; $7a63: $f2
    di                                            ; $7a64: $f3
    push de                                       ; $7a65: $d5
    sbc $f4                                       ; $7a66: $de $f4
    ld [hl], c                                    ; $7a68: $71
    rlca                                          ; $7a69: $07
    ld bc, $0101                                  ; $7a6a: $01 $01 $01
    rlca                                          ; $7a6d: $07
    ld bc, $0101                                  ; $7a6e: $01 $01 $01
    rlca                                          ; $7a71: $07
    ld bc, $0101                                  ; $7a72: $01 $01 $01
    rlca                                          ; $7a75: $07
    ld bc, $0101                                  ; $7a76: $01 $01 $01
    nop                                           ; $7a79: $00
    ld [hl], d                                    ; $7a7a: $72
    ld [hl], e                                    ; $7a7b: $73
    ld [hl], h                                    ; $7a7c: $74
    ld [hl], l                                    ; $7a7d: $75
    halt                                          ; $7a7e: $76
    ld [hl], a                                    ; $7a7f: $77
    ld a, b                                       ; $7a80: $78
    ld a, c                                       ; $7a81: $79
    ld a, d                                       ; $7a82: $7a
    ld a, e                                       ; $7a83: $7b
    ld a, h                                       ; $7a84: $7c
    ld a, l                                       ; $7a85: $7d
    ld a, [hl]                                    ; $7a86: $7e
    ld a, a                                       ; $7a87: $7f
    add b                                         ; $7a88: $80
    add $86                                       ; $7a89: $c6 $86
    add [hl]                                      ; $7a8b: $86
    add [hl]                                      ; $7a8c: $86
    inc bc                                        ; $7a8d: $03
    inc b                                         ; $7a8e: $04
    ld b, $06                                     ; $7a8f: $06 $06
    ld bc, $0404                                  ; $7a91: $01 $04 $04
    ld b, $04                                     ; $7a94: $06 $04
    inc b                                         ; $7a96: $04
    inc b                                         ; $7a97: $04
    inc c                                         ; $7a98: $0c
    add c                                         ; $7a99: $81
    add d                                         ; $7a9a: $82
    add e                                         ; $7a9b: $83
    add h                                         ; $7a9c: $84
    add l                                         ; $7a9d: $85
    add [hl]                                      ; $7a9e: $86
    add a                                         ; $7a9f: $87
    adc b                                         ; $7aa0: $88
    adc c                                         ; $7aa1: $89
    adc d                                         ; $7aa2: $8a
    adc e                                         ; $7aa3: $8b
    adc h                                         ; $7aa4: $8c
    adc l                                         ; $7aa5: $8d
    adc [hl]                                      ; $7aa6: $8e
    adc a                                         ; $7aa7: $8f
    sub b                                         ; $7aa8: $90
    adc [hl]                                      ; $7aa9: $8e
    adc [hl]                                      ; $7aaa: $8e
    adc [hl]                                      ; $7aab: $8e
    adc [hl]                                      ; $7aac: $8e
    ld c, $0e                                     ; $7aad: $0e $0e
    ld c, $0e                                     ; $7aaf: $0e $0e
    ld c, $0e                                     ; $7ab1: $0e $0e
    ld c, $0e                                     ; $7ab3: $0e $0e
    ld c, $0e                                     ; $7ab5: $0e $0e
    ld c, $0e                                     ; $7ab7: $0e $0e
    sub c                                         ; $7ab9: $91
    sub d                                         ; $7aba: $92
    sub e                                         ; $7abb: $93
    sub h                                         ; $7abc: $94
    sub l                                         ; $7abd: $95
    sub [hl]                                      ; $7abe: $96
    sub a                                         ; $7abf: $97
    sbc b                                         ; $7ac0: $98
    sbc c                                         ; $7ac1: $99
    sbc d                                         ; $7ac2: $9a
    sbc e                                         ; $7ac3: $9b
    sbc h                                         ; $7ac4: $9c
    sbc l                                         ; $7ac5: $9d
    sbc [hl]                                      ; $7ac6: $9e
    sbc a                                         ; $7ac7: $9f
    and b                                         ; $7ac8: $a0
    adc [hl]                                      ; $7ac9: $8e
    adc [hl]                                      ; $7aca: $8e
    adc [hl]                                      ; $7acb: $8e
    adc [hl]                                      ; $7acc: $8e
    ld c, $0e                                     ; $7acd: $0e $0e
    ld c, $0e                                     ; $7acf: $0e $0e
    ld c, $0e                                     ; $7ad1: $0e $0e
    ld c, $0e                                     ; $7ad3: $0e $0e
    ld c, $0e                                     ; $7ad5: $0e $0e
    ld c, $0e                                     ; $7ad7: $0e $0e
    push de                                       ; $7ad9: $d5
    di                                            ; $7ada: $f3
    ret c                                         ; $7adb: $d8

    ret c                                         ; $7adc: $d8

    push de                                       ; $7add: $d5
    ret c                                         ; $7ade: $d8

    ret c                                         ; $7adf: $d8

    and c                                         ; $7ae0: $a1
    push de                                       ; $7ae1: $d5
    ret c                                         ; $7ae2: $d8

    ld a, [$d5d8]                                 ; $7ae3: $fa $d8 $d5
    ret c                                         ; $7ae6: $d8

    or $d8                                        ; $7ae7: $f6 $d8
    rlca                                          ; $7ae9: $07
    ld bc, $0101                                  ; $7aea: $01 $01 $01
    rlca                                          ; $7aed: $07
    ld bc, $0901                                  ; $7aee: $01 $01 $09
    rlca                                          ; $7af1: $07
    ld bc, $0101                                  ; $7af2: $01 $01 $01
    rlca                                          ; $7af5: $07
    ld bc, $0101                                  ; $7af6: $01 $01 $01
    and d                                         ; $7af9: $a2
    and e                                         ; $7afa: $a3
    and h                                         ; $7afb: $a4
    and l                                         ; $7afc: $a5
    and [hl]                                      ; $7afd: $a6
    and a                                         ; $7afe: $a7
    xor b                                         ; $7aff: $a8
    xor c                                         ; $7b00: $a9
    xor d                                         ; $7b01: $aa
    xor e                                         ; $7b02: $ab
    xor h                                         ; $7b03: $ac
    xor l                                         ; $7b04: $ad
    xor [hl]                                      ; $7b05: $ae
    xor a                                         ; $7b06: $af
    or b                                          ; $7b07: $b0
    or c                                          ; $7b08: $b1
    add hl, bc                                    ; $7b09: $09
    inc c                                         ; $7b0a: $0c
    inc c                                         ; $7b0b: $0c
    inc c                                         ; $7b0c: $0c
    inc c                                         ; $7b0d: $0c
    inc c                                         ; $7b0e: $0c
    inc c                                         ; $7b0f: $0c
    inc c                                         ; $7b10: $0c
    add hl, bc                                    ; $7b11: $09
    inc c                                         ; $7b12: $0c
    inc c                                         ; $7b13: $0c
    inc c                                         ; $7b14: $0c
    add hl, bc                                    ; $7b15: $09
    add hl, bc                                    ; $7b16: $09
    add hl, bc                                    ; $7b17: $09
    inc c                                         ; $7b18: $0c
    or d                                          ; $7b19: $b2
    or e                                          ; $7b1a: $b3
    or h                                          ; $7b1b: $b4
    or l                                          ; $7b1c: $b5
    or [hl]                                       ; $7b1d: $b6
    or a                                          ; $7b1e: $b7
    cp b                                          ; $7b1f: $b8
    cp c                                          ; $7b20: $b9
    cp d                                          ; $7b21: $ba
    cp e                                          ; $7b22: $bb
    cp h                                          ; $7b23: $bc
    cp l                                          ; $7b24: $bd
    cp [hl]                                       ; $7b25: $be
    cp a                                          ; $7b26: $bf
    ret nz                                        ; $7b27: $c0

    pop bc                                        ; $7b28: $c1
    inc c                                         ; $7b29: $0c
    ld c, $0e                                     ; $7b2a: $0e $0e
    ld c, $0c                                     ; $7b2c: $0e $0c
    inc c                                         ; $7b2e: $0c
    ld c, $0e                                     ; $7b2f: $0e $0e
    inc c                                         ; $7b31: $0c
    inc c                                         ; $7b32: $0c
    inc c                                         ; $7b33: $0c
    inc c                                         ; $7b34: $0c
    inc c                                         ; $7b35: $0c
    inc c                                         ; $7b36: $0c
    inc c                                         ; $7b37: $0c
    inc c                                         ; $7b38: $0c
    jp nz, $c4c3                                  ; $7b39: $c2 $c3 $c4

    push bc                                       ; $7b3c: $c5
    add $c7                                       ; $7b3d: $c6 $c7
    ret z                                         ; $7b3f: $c8

    ret                                           ; $7b40: $c9


    jp z, $cccb                                   ; $7b41: $ca $cb $cc

    jp z, $cecd                                   ; $7b44: $ca $cd $ce

    rst $08                                       ; $7b47: $cf
    call Call_000_0e0e                            ; $7b48: $cd $0e $0e
    ld c, $0e                                     ; $7b4b: $0e $0e
    ld c, $0e                                     ; $7b4d: $0e $0e
    ld c, $0e                                     ; $7b4f: $0e $0e
    inc c                                         ; $7b51: $0c
    ld [$2c08], sp                                ; $7b52: $08 $08 $2c
    inc c                                         ; $7b55: $0c
    ld [$2c08], sp                                ; $7b56: $08 $08 $2c
    push de                                       ; $7b59: $d5
    ret c                                         ; $7b5a: $d8

    db $fc                                        ; $7b5b: $fc
    ret c                                         ; $7b5c: $d8

    push de                                       ; $7b5d: $d5
    rst $30                                       ; $7b5e: $f7
    ret nc                                        ; $7b5f: $d0

    cp $d5                                        ; $7b60: $fe $d5
    push af                                       ; $7b62: $f5
    ld hl, sp-$07                                 ; $7b63: $f8 $f9
    push de                                       ; $7b65: $d5
    cp $fc                                        ; $7b66: $fe $fc
    db $fd                                        ; $7b68: $fd
    rlca                                          ; $7b69: $07
    ld bc, $0101                                  ; $7b6a: $01 $01 $01
    rlca                                          ; $7b6d: $07
    ld bc, $0109                                  ; $7b6e: $01 $09 $01
    rlca                                          ; $7b71: $07
    ld bc, $0101                                  ; $7b72: $01 $01 $01
    rlca                                          ; $7b75: $07
    ld bc, $0101                                  ; $7b76: $01 $01 $01
    ret c                                         ; $7b79: $d8

    sub $d7                                       ; $7b7a: $d6 $d7
    pop de                                        ; $7b7c: $d1
    ret c                                         ; $7b7d: $d8

    reti                                          ; $7b7e: $d9


    jp c, $faae                                   ; $7b7f: $da $ae $fa

    ret c                                         ; $7b82: $d8

    ret c                                         ; $7b83: $d8

    ret c                                         ; $7b84: $d8

    or $f7                                        ; $7b85: $f6 $f7
    ret c                                         ; $7b87: $d8

    ret c                                         ; $7b88: $d8

    ld bc, $0101                                  ; $7b89: $01 $01 $01
    add hl, bc                                    ; $7b8c: $09
    ld bc, $0101                                  ; $7b8d: $01 $01 $01
    add hl, bc                                    ; $7b90: $09
    ld bc, $0101                                  ; $7b91: $01 $01 $01
    ld bc, $0101                                  ; $7b94: $01 $01 $01
    ld bc, $d201                                  ; $7b97: $01 $01 $d2
    db $d3                                        ; $7b9a: $d3
    call nc, $d6d5                                ; $7b9b: $d4 $d5 $d6
    rst $10                                       ; $7b9e: $d7
    ret c                                         ; $7b9f: $d8

    reti                                          ; $7ba0: $d9


    xor [hl]                                      ; $7ba1: $ae
    jp c, $dcdb                                   ; $7ba2: $da $db $dc

    ret c                                         ; $7ba5: $d8

    ret c                                         ; $7ba6: $d8

    db $dd                                        ; $7ba7: $dd
    sbc $0c                                       ; $7ba8: $de $0c
    inc c                                         ; $7baa: $0c
    inc c                                         ; $7bab: $0c
    inc c                                         ; $7bac: $0c
    add hl, bc                                    ; $7bad: $09
    inc c                                         ; $7bae: $0c
    inc c                                         ; $7baf: $0c
    inc c                                         ; $7bb0: $0c
    add hl, bc                                    ; $7bb1: $09
    add hl, bc                                    ; $7bb2: $09
    inc c                                         ; $7bb3: $0c
    inc c                                         ; $7bb4: $0c
    ld bc, $0f01                                  ; $7bb5: $01 $01 $0f
    rrca                                          ; $7bb8: $0f
    rst $18                                       ; $7bb9: $df
    ldh [$e1], a                                  ; $7bba: $e0 $e1
    rst $18                                       ; $7bbc: $df
    ld [c], a                                     ; $7bbd: $e2
    adc $cf                                       ; $7bbe: $ce $cf
    ld [c], a                                     ; $7bc0: $e2
    db $e3                                        ; $7bc1: $e3
    db $e4                                        ; $7bc2: $e4
    push hl                                       ; $7bc3: $e5
    and $e7                                       ; $7bc4: $e6 $e7
    add sp, -$17                                  ; $7bc6: $e8 $e9
    ld [$080c], a                                 ; $7bc8: $ea $0c $08
    ld [$0c2c], sp                                ; $7bcb: $08 $2c $0c
    ld [$2c08], sp                                ; $7bce: $08 $08 $2c
    inc c                                         ; $7bd1: $0c
    ld [$0c08], sp                                ; $7bd2: $08 $08 $0c
    rrca                                          ; $7bd5: $0f
    rrca                                          ; $7bd6: $0f
    rrca                                          ; $7bd7: $0f
    rrca                                          ; $7bd8: $0f
    push de                                       ; $7bd9: $d5
    pop af                                        ; $7bda: $f1
    or $fb                                        ; $7bdb: $f6 $fb
    push de                                       ; $7bdd: $d5
    ret c                                         ; $7bde: $d8

    rst $38                                       ; $7bdf: $ff
    ld sp, hl                                     ; $7be0: $f9
    push de                                       ; $7be1: $d5
    ret c                                         ; $7be2: $d8

    ld a, [$d5fe]                                 ; $7be3: $fa $fe $d5
    sub $d7                                       ; $7be6: $d6 $d7
    rst $30                                       ; $7be8: $f7
    rlca                                          ; $7be9: $07
    rlca                                          ; $7bea: $07
    ld bc, $0701                                  ; $7beb: $01 $01 $07
    ld bc, $0101                                  ; $7bee: $01 $01 $01
    rlca                                          ; $7bf1: $07
    ld bc, $0101                                  ; $7bf2: $01 $01 $01
    rlca                                          ; $7bf5: $07
    ld bc, $0101                                  ; $7bf6: $01 $01 $01
    db $fc                                        ; $7bf9: $fc
    db $fd                                        ; $7bfa: $fd
    rst $38                                       ; $7bfb: $ff
    ret c                                         ; $7bfc: $d8

    ret nc                                        ; $7bfd: $d0

    ld l, a                                       ; $7bfe: $6f
    db $fc                                        ; $7bff: $fc
    cp $f8                                        ; $7c00: $fe $f8
    ld sp, hl                                     ; $7c02: $f9
    ret nc                                        ; $7c03: $d0

    ei                                            ; $7c04: $fb
    ld a, [$f8fd]                                 ; $7c05: $fa $fd $f8
    ld sp, hl                                     ; $7c08: $f9
    ld bc, $0101                                  ; $7c09: $01 $01 $01
    ld bc, $0109                                  ; $7c0c: $01 $09 $01
    ld bc, $0101                                  ; $7c0f: $01 $01 $01
    ld bc, $0109                                  ; $7c12: $01 $09 $01
    ld bc, $0101                                  ; $7c15: $01 $01 $01
    ld bc, $ebd8                                  ; $7c18: $01 $d8 $eb
    db $ec                                        ; $7c1b: $ec
    ld [$edff], a                                 ; $7c1c: $ea $ff $ed
    xor $ef                                       ; $7c1f: $ee $ef
    ld a, [$d8fe]                                 ; $7c21: $fa $fe $d8
    ret c                                         ; $7c24: $d8

    ret nc                                        ; $7c25: $d0

    rst $30                                       ; $7c26: $f7
    ld a, [$01d8]                                 ; $7c27: $fa $d8 $01
    cpl                                           ; $7c2a: $2f
    cpl                                           ; $7c2b: $2f
    cpl                                           ; $7c2c: $2f
    ld bc, $0909                                  ; $7c2d: $01 $09 $09
    add hl, bc                                    ; $7c30: $09
    ld bc, $0101                                  ; $7c31: $01 $01 $01
    ld bc, $0109                                  ; $7c34: $01 $09 $01
    ld bc, $f001                                  ; $7c37: $01 $01 $f0
    pop af                                        ; $7c3a: $f1
    ld a, [c]                                     ; $7c3b: $f2
    add sp, -$0d                                  ; $7c3c: $e8 $f3
    db $f4                                        ; $7c3e: $f4
    push af                                       ; $7c3f: $f5
    or $f7                                        ; $7c40: $f6 $f7
    ld hl, sp-$07                                 ; $7c42: $f8 $f9
    ld a, [$fcfb]                                 ; $7c44: $fa $fb $fc
    db $fd                                        ; $7c47: $fd
    cp $0f                                        ; $7c48: $fe $0f
    rrca                                          ; $7c4a: $0f
    rrca                                          ; $7c4b: $0f
    cpl                                           ; $7c4c: $2f
    dec bc                                        ; $7c4d: $0b
    dec bc                                        ; $7c4e: $0b
    dec bc                                        ; $7c4f: $0b
    dec bc                                        ; $7c50: $0b
    dec bc                                        ; $7c51: $0b
    dec bc                                        ; $7c52: $0b
    dec bc                                        ; $7c53: $0b
    dec bc                                        ; $7c54: $0b
    dec bc                                        ; $7c55: $0b
    dec bc                                        ; $7c56: $0b
    dec bc                                        ; $7c57: $0b
    dec bc                                        ; $7c58: $0b
    rst $38                                       ; $7c59: $ff
    add e                                         ; $7c5a: $83
    add d                                         ; $7c5b: $82
    add c                                         ; $7c5c: $81
    nop                                           ; $7c5d: $00
    add a                                         ; $7c5e: $87
    add [hl]                                      ; $7c5f: $86
    add l                                         ; $7c60: $85
    ld bc, $8a02                                  ; $7c61: $01 $02 $8a
    adc c                                         ; $7c64: $89
    inc bc                                        ; $7c65: $03
    inc b                                         ; $7c66: $04
    adc [hl]                                      ; $7c67: $8e
    adc l                                         ; $7c68: $8d
    adc [hl]                                      ; $7c69: $8e
    xor [hl]                                      ; $7c6a: $ae
    xor [hl]                                      ; $7c6b: $ae
    xor [hl]                                      ; $7c6c: $ae
    ld c, $2e                                     ; $7c6d: $0e $2e
    ld l, $2e                                     ; $7c6f: $2e $2e
    ld c, $0e                                     ; $7c71: $0e $0e
    ld l, $2e                                     ; $7c73: $2e $2e
    ld c, $0e                                     ; $7c75: $0e $0e
    ld l, $2e                                     ; $7c77: $2e $2e
    ld [hl], h                                    ; $7c79: $74
    ld [hl], e                                    ; $7c7a: $73
    ld [hl], d                                    ; $7c7b: $72
    nop                                           ; $7c7c: $00
    ld a, b                                       ; $7c7d: $78
    ld [hl], a                                    ; $7c7e: $77
    halt                                          ; $7c7f: $76
    ld [hl], l                                    ; $7c80: $75
    ld a, h                                       ; $7c81: $7c
    ld a, e                                       ; $7c82: $7b
    ld a, d                                       ; $7c83: $7a
    ld a, c                                       ; $7c84: $79
    dec b                                         ; $7c85: $05
    ld a, a                                       ; $7c86: $7f
    ld a, [hl]                                    ; $7c87: $7e
    ld a, l                                       ; $7c88: $7d
    and [hl]                                      ; $7c89: $a6
    and [hl]                                      ; $7c8a: $a6
    and [hl]                                      ; $7c8b: $a6
    and $26                                       ; $7c8c: $e6 $26
    ld h, $24                                     ; $7c8e: $26 $24
    inc hl                                        ; $7c90: $23
    ld h, $24                                     ; $7c91: $26 $24
    inc h                                         ; $7c93: $24
    ld hl, $240c                                  ; $7c94: $21 $0c $24
    inc h                                         ; $7c97: $24
    inc h                                         ; $7c98: $24
    db $db                                        ; $7c99: $db
    ld l, h                                       ; $7c9a: $6c
    ret c                                         ; $7c9b: $d8

    push de                                       ; $7c9c: $d5
    db $dd                                        ; $7c9d: $dd
    ret c                                         ; $7c9e: $d8

    ret c                                         ; $7c9f: $d8

    push de                                       ; $7ca0: $d5
    ret c                                         ; $7ca1: $d8

    ret c                                         ; $7ca2: $d8

    ld l, a                                       ; $7ca3: $6f
    push de                                       ; $7ca4: $d5
    ld [hl], c                                    ; $7ca5: $71
    ret c                                         ; $7ca6: $d8

    ret c                                         ; $7ca7: $d8

    push de                                       ; $7ca8: $d5
    ld bc, $0101                                  ; $7ca9: $01 $01 $01
    daa                                           ; $7cac: $27
    ld bc, $0101                                  ; $7cad: $01 $01 $01
    daa                                           ; $7cb0: $27
    ld bc, $0101                                  ; $7cb1: $01 $01 $01
    daa                                           ; $7cb4: $27
    ld hl, $0101                                  ; $7cb5: $21 $01 $01
    daa                                           ; $7cb8: $27
    ld b, $07                                     ; $7cb9: $06 $07
    or e                                          ; $7cbb: $b3
    ld [$0a09], sp                                ; $7cbc: $08 $09 $0a
    or a                                          ; $7cbf: $b7
    dec bc                                        ; $7cc0: $0b
    cp l                                          ; $7cc1: $bd
    cp h                                          ; $7cc2: $bc
    cp e                                          ; $7cc3: $bb
    cp d                                          ; $7cc4: $ba
    pop bc                                        ; $7cc5: $c1
    ret nz                                        ; $7cc6: $c0

    cp a                                          ; $7cc7: $bf
    cp [hl]                                       ; $7cc8: $be
    ld c, $0e                                     ; $7cc9: $0e $0e
    ld l, $0c                                     ; $7ccb: $2e $0c
    ld c, $0e                                     ; $7ccd: $0e $0e
    inc l                                         ; $7ccf: $2c
    inc c                                         ; $7cd0: $0c
    inc l                                         ; $7cd1: $2c
    inc l                                         ; $7cd2: $2c
    inc l                                         ; $7cd3: $2c
    inc l                                         ; $7cd4: $2c
    inc l                                         ; $7cd5: $2c
    inc l                                         ; $7cd6: $2c
    inc l                                         ; $7cd7: $2c
    inc l                                         ; $7cd8: $2c
    inc c                                         ; $7cd9: $0c
    and h                                         ; $7cda: $a4
    and e                                         ; $7cdb: $a3
    and d                                         ; $7cdc: $a2
    dec c                                         ; $7cdd: $0d
    xor b                                         ; $7cde: $a8
    and a                                         ; $7cdf: $a7
    and [hl]                                      ; $7ce0: $a6
    xor l                                         ; $7ce1: $ad
    xor h                                         ; $7ce2: $ac
    xor e                                         ; $7ce3: $ab
    xor d                                         ; $7ce4: $aa
    or c                                          ; $7ce5: $b1
    or b                                          ; $7ce6: $b0
    xor a                                         ; $7ce7: $af
    xor [hl]                                      ; $7ce8: $ae
    inc c                                         ; $7ce9: $0c
    inc l                                         ; $7cea: $2c
    inc l                                         ; $7ceb: $2c
    add hl, hl                                    ; $7cec: $29
    inc c                                         ; $7ced: $0c
    inc l                                         ; $7cee: $2c
    inc l                                         ; $7cef: $2c
    inc l                                         ; $7cf0: $2c
    inc l                                         ; $7cf1: $2c
    inc l                                         ; $7cf2: $2c
    inc l                                         ; $7cf3: $2c
    add hl, hl                                    ; $7cf4: $29
    inc l                                         ; $7cf5: $2c
    add hl, hl                                    ; $7cf6: $29
    add hl, hl                                    ; $7cf7: $29
    add hl, hl                                    ; $7cf8: $29
    ret c                                         ; $7cf9: $d8

    ret c                                         ; $7cfa: $d8

    ret c                                         ; $7cfb: $d8

    push de                                       ; $7cfc: $d5
    and c                                         ; $7cfd: $a1
    ldh [$e1], a                                  ; $7cfe: $e0 $e1
    push de                                       ; $7d00: $d5
    ret c                                         ; $7d01: $d8

    ret c                                         ; $7d02: $d8

    ret c                                         ; $7d03: $d8

    push de                                       ; $7d04: $d5
    ret c                                         ; $7d05: $d8

    ret c                                         ; $7d06: $d8

    db $dd                                        ; $7d07: $dd
    push de                                       ; $7d08: $d5
    ld bc, $0101                                  ; $7d09: $01 $01 $01
    daa                                           ; $7d0c: $27
    add hl, hl                                    ; $7d0d: $29
    ld bc, $2701                                  ; $7d0e: $01 $01 $27
    ld bc, $0101                                  ; $7d11: $01 $01 $01
    daa                                           ; $7d14: $27
    ld bc, $0101                                  ; $7d15: $01 $01 $01
    daa                                           ; $7d18: $27
    push de                                       ; $7d19: $d5
    call nc, $d2d3                                ; $7d1a: $d4 $d3 $d2
    reti                                          ; $7d1d: $d9


    ret c                                         ; $7d1e: $d8

    rst $10                                       ; $7d1f: $d7
    sub $0e                                       ; $7d20: $d6 $0e
    db $db                                        ; $7d22: $db
    jp c, $ecae                                   ; $7d23: $da $ae $ec

    db $eb                                        ; $7d26: $eb
    ret c                                         ; $7d27: $d8

    ret c                                         ; $7d28: $d8

    inc l                                         ; $7d29: $2c
    inc l                                         ; $7d2a: $2c
    inc l                                         ; $7d2b: $2c
    inc l                                         ; $7d2c: $2c
    inc l                                         ; $7d2d: $2c
    inc l                                         ; $7d2e: $2c
    inc l                                         ; $7d2f: $2c
    add hl, hl                                    ; $7d30: $29
    inc c                                         ; $7d31: $0c
    inc l                                         ; $7d32: $2c
    add hl, hl                                    ; $7d33: $29
    add hl, hl                                    ; $7d34: $29
    rrca                                          ; $7d35: $0f
    rrca                                          ; $7d36: $0f
    ld bc, $d101                                  ; $7d37: $01 $01 $d1
    rrca                                          ; $7d3a: $0f
    ret c                                         ; $7d3b: $d8

    ret c                                         ; $7d3c: $d8

    xor [hl]                                      ; $7d3d: $ae
    ret c                                         ; $7d3e: $d8

    ret c                                         ; $7d3f: $d8

    call c, $f4d8                                 ; $7d40: $dc $d8 $f4
    db $db                                        ; $7d43: $db
    sbc $f3                                       ; $7d44: $de $f3
    ld l, l                                       ; $7d46: $6d
    ld a, [c]                                     ; $7d47: $f2
    ld l, [hl]                                    ; $7d48: $6e
    add hl, hl                                    ; $7d49: $29
    add hl, bc                                    ; $7d4a: $09
    ld bc, $2901                                  ; $7d4b: $01 $01 $29
    ld bc, $0101                                  ; $7d4e: $01 $01 $01
    ld bc, $0101                                  ; $7d51: $01 $01 $01
    ld bc, $0101                                  ; $7d54: $01 $01 $01
    ld bc, $db01                                  ; $7d57: $01 $01 $db
    ld l, h                                       ; $7d5a: $6c
    di                                            ; $7d5b: $f3
    push de                                       ; $7d5c: $d5
    db $dd                                        ; $7d5d: $dd
    db $f4                                        ; $7d5e: $f4
    db $db                                        ; $7d5f: $db
    push de                                       ; $7d60: $d5
    rst $18                                       ; $7d61: $df
    ld l, l                                       ; $7d62: $6d
    db $dd                                        ; $7d63: $dd
    push de                                       ; $7d64: $d5
    ldh [$e1], a                                  ; $7d65: $e0 $e1
    di                                            ; $7d67: $f3
    push de                                       ; $7d68: $d5
    ld bc, $0101                                  ; $7d69: $01 $01 $01
    daa                                           ; $7d6c: $27
    ld bc, $0101                                  ; $7d6d: $01 $01 $01
    daa                                           ; $7d70: $27
    ld bc, $0101                                  ; $7d71: $01 $01 $01
    daa                                           ; $7d74: $27
    ld bc, $0101                                  ; $7d75: $01 $01 $01
    daa                                           ; $7d78: $27
    rst $20                                       ; $7d79: $e7
    sbc $dd                                       ; $7d7a: $de $dd
    db $f4                                        ; $7d7c: $f4
    db $10                                        ; $7d7d: $10
    xor $11                                       ; $7d7e: $ee $11
    ret c                                         ; $7d80: $d8

    ret c                                         ; $7d81: $d8

    ret c                                         ; $7d82: $d8

    ld a, [$12fb]                                 ; $7d83: $fa $fb $12
    ret c                                         ; $7d86: $d8

    ret c                                         ; $7d87: $d8

    rst $30                                       ; $7d88: $f7
    cpl                                           ; $7d89: $2f
    cpl                                           ; $7d8a: $2f
    cpl                                           ; $7d8b: $2f
    ld bc, $290b                                  ; $7d8c: $01 $0b $29
    add hl, bc                                    ; $7d8f: $09
    ld bc, $0101                                  ; $7d90: $01 $01 $01
    ld bc, $0b01                                  ; $7d93: $01 $01 $0b
    ld bc, $0101                                  ; $7d96: $01 $01 $01
    db $db                                        ; $7d99: $db
    ld l, h                                       ; $7d9a: $6c
    rst $18                                       ; $7d9b: $df
    ld l, l                                       ; $7d9c: $6d
    ret c                                         ; $7d9d: $d8

    ret c                                         ; $7d9e: $d8

    db $db                                        ; $7d9f: $db
    ld l, h                                       ; $7da0: $6c
    db $fc                                        ; $7da1: $fc
    push af                                       ; $7da2: $f5
    ret c                                         ; $7da3: $d8

    ret c                                         ; $7da4: $d8

    ret nc                                        ; $7da5: $d0

    ei                                            ; $7da6: $fb
    ld l, a                                       ; $7da7: $6f
    push af                                       ; $7da8: $f5
    ld bc, $0101                                  ; $7da9: $01 $01 $01
    ld bc, $0101                                  ; $7dac: $01 $01 $01
    ld bc, $0101                                  ; $7daf: $01 $01 $01
    ld bc, $0101                                  ; $7db2: $01 $01 $01
    add hl, bc                                    ; $7db5: $09
    ld bc, $0101                                  ; $7db6: $01 $01 $01
    ld a, [c]                                     ; $7db9: $f2
    db $f4                                        ; $7dba: $f4
    ret c                                         ; $7dbb: $d8

    push de                                       ; $7dbc: $d5
    rst $18                                       ; $7dbd: $df
    call c, $d5d8                                 ; $7dbe: $dc $d8 $d5
    db $db                                        ; $7dc1: $db
    ret c                                         ; $7dc2: $d8

    ret c                                         ; $7dc3: $d8

    push de                                       ; $7dc4: $d5
    ret c                                         ; $7dc5: $d8

    ret c                                         ; $7dc6: $d8

    ret c                                         ; $7dc7: $d8

    push de                                       ; $7dc8: $d5
    ld bc, $0101                                  ; $7dc9: $01 $01 $01
    daa                                           ; $7dcc: $27
    ld bc, $0101                                  ; $7dcd: $01 $01 $01
    daa                                           ; $7dd0: $27
    ld bc, $0101                                  ; $7dd1: $01 $01 $01
    daa                                           ; $7dd4: $27
    ld bc, $0101                                  ; $7dd5: $01 $01 $01
    daa                                           ; $7dd8: $27
    push de                                       ; $7dd9: $d5
    reti                                          ; $7dda: $d9


    jp c, Jump_000_13d8                           ; $7ddb: $da $d8 $13

    jp nc, $d2d2                                  ; $7dde: $d2 $d2 $d2

    inc d                                         ; $7de1: $14
    call nc, $d4d4                                ; $7de2: $d4 $d4 $d4
    ret c                                         ; $7de5: $d8

    ret c                                         ; $7de6: $d8

    ret c                                         ; $7de7: $d8

    ret c                                         ; $7de8: $d8

    rlca                                          ; $7de9: $07
    ld bc, $0101                                  ; $7dea: $01 $01 $01
    adc a                                         ; $7ded: $8f
    add a                                         ; $7dee: $87
    add a                                         ; $7def: $87
    add a                                         ; $7df0: $87
    adc a                                         ; $7df1: $8f
    add a                                         ; $7df2: $87
    add a                                         ; $7df3: $87
    add a                                         ; $7df4: $87
    add c                                         ; $7df5: $81
    add c                                         ; $7df6: $81
    add c                                         ; $7df7: $81
    add c                                         ; $7df8: $81
    or $f7                                        ; $7df9: $f6 $f7
    ld a, [$d2fe]                                 ; $7dfb: $fa $fe $d2
    jp nc, $d2d2                                  ; $7dfe: $d2 $d2 $d2

    call nc, $d4d4                                ; $7e01: $d4 $d4 $d4
    call nc, $d8d8                                ; $7e04: $d4 $d8 $d8
    ret c                                         ; $7e07: $d8

    ret c                                         ; $7e08: $d8

    ld bc, $0101                                  ; $7e09: $01 $01 $01
    ld bc, $8787                                  ; $7e0c: $01 $87 $87
    add a                                         ; $7e0f: $87
    add a                                         ; $7e10: $87
    add a                                         ; $7e11: $87
    add a                                         ; $7e12: $87
    add a                                         ; $7e13: $87
    add a                                         ; $7e14: $87
    add c                                         ; $7e15: $81
    add c                                         ; $7e16: $81
    add c                                         ; $7e17: $81
    add c                                         ; $7e18: $81
    ld hl, sp-$07                                 ; $7e19: $f8 $f9
    or $d8                                        ; $7e1b: $f6 $d8
    jp nc, $d2d2                                  ; $7e1d: $d2 $d2 $d2

    jp nc, $d4d4                                  ; $7e20: $d2 $d4 $d4

    call nc, $d8d4                                ; $7e23: $d4 $d4 $d8
    ret c                                         ; $7e26: $d8

    ret c                                         ; $7e27: $d8

    ret c                                         ; $7e28: $d8

    ld bc, $0101                                  ; $7e29: $01 $01 $01
    ld bc, $8787                                  ; $7e2c: $01 $87 $87
    add a                                         ; $7e2f: $87
    add a                                         ; $7e30: $87
    add a                                         ; $7e31: $87
    add a                                         ; $7e32: $87
    add a                                         ; $7e33: $87
    add a                                         ; $7e34: $87
    add c                                         ; $7e35: $81
    add c                                         ; $7e36: $81
    add c                                         ; $7e37: $81
    add c                                         ; $7e38: $81
    ret c                                         ; $7e39: $d8

    dec d                                         ; $7e3a: $15
    ld d, $17                                     ; $7e3b: $16 $17
    jp nc, Jump_000_18d2                          ; $7e3d: $d2 $d2 $18

    db $e4                                        ; $7e40: $e4
    call nc, Call_000_19d4                        ; $7e41: $d4 $d4 $19
    add sp, -$28                                  ; $7e44: $e8 $d8
    ret c                                         ; $7e46: $d8

    ld a, [de]                                    ; $7e47: $1a
    db $eb                                        ; $7e48: $eb
    ld bc, $0b0b                                  ; $7e49: $01 $0b $0b
    dec bc                                        ; $7e4c: $0b
    add a                                         ; $7e4d: $87
    add a                                         ; $7e4e: $87
    adc a                                         ; $7e4f: $8f
    inc bc                                        ; $7e50: $03
    add a                                         ; $7e51: $87
    add a                                         ; $7e52: $87
    adc a                                         ; $7e53: $8f
    inc bc                                        ; $7e54: $03
    add c                                         ; $7e55: $81
    add c                                         ; $7e56: $81
    adc e                                         ; $7e57: $8b
    inc bc                                        ; $7e58: $03
    dec de                                        ; $7e59: $1b
    ret c                                         ; $7e5a: $d8

    ret c                                         ; $7e5b: $d8

    ret c                                         ; $7e5c: $d8

    push hl                                       ; $7e5d: $e5
    and $d2                                       ; $7e5e: $e6 $d2
    jp nc, $eae9                                  ; $7e60: $d2 $e9 $ea

    call nc, $ecd4                                ; $7e63: $d4 $d4 $ec
    db $ed                                        ; $7e66: $ed
    ret c                                         ; $7e67: $d8

    ret c                                         ; $7e68: $d8

    dec bc                                        ; $7e69: $0b
    ld bc, $0101                                  ; $7e6a: $01 $01 $01
    inc bc                                        ; $7e6d: $03
    add a                                         ; $7e6e: $87
    add a                                         ; $7e6f: $87
    add a                                         ; $7e70: $87
    add a                                         ; $7e71: $87
    add a                                         ; $7e72: $87
    add a                                         ; $7e73: $87
    add a                                         ; $7e74: $87
    add a                                         ; $7e75: $87
    add a                                         ; $7e76: $87
    add c                                         ; $7e77: $81
    add c                                         ; $7e78: $81
    or $f9                                        ; $7e79: $f6 $f9
    ret nc                                        ; $7e7b: $d0

    ei                                            ; $7e7c: $fb
    jp nc, $d2d2                                  ; $7e7d: $d2 $d2 $d2

    jp nc, $d4d4                                  ; $7e80: $d2 $d4 $d4

    call nc, $d8d4                                ; $7e83: $d4 $d4 $d8
    ret c                                         ; $7e86: $d8

    ret c                                         ; $7e87: $d8

    ret c                                         ; $7e88: $d8

    ld bc, $0901                                  ; $7e89: $01 $01 $09
    ld bc, $8787                                  ; $7e8c: $01 $87 $87
    add a                                         ; $7e8f: $87
    add a                                         ; $7e90: $87
    add a                                         ; $7e91: $87
    add a                                         ; $7e92: $87
    add a                                         ; $7e93: $87
    add a                                         ; $7e94: $87
    add c                                         ; $7e95: $81
    add c                                         ; $7e96: $81
    add c                                         ; $7e97: $81
    add c                                         ; $7e98: $81
    db $fc                                        ; $7e99: $fc
    rst $38                                       ; $7e9a: $ff
    ret c                                         ; $7e9b: $d8

    push de                                       ; $7e9c: $d5
    jp nc, $d2d2                                  ; $7e9d: $d2 $d2 $d2

    inc e                                         ; $7ea0: $1c
    call nc, $d4d4                                ; $7ea1: $d4 $d4 $d4
    add hl, de                                    ; $7ea4: $19
    ret c                                         ; $7ea5: $d8

    ret c                                         ; $7ea6: $d8

    ret c                                         ; $7ea7: $d8

    ret c                                         ; $7ea8: $d8

    ld bc, $0101                                  ; $7ea9: $01 $01 $01
    daa                                           ; $7eac: $27
    add a                                         ; $7ead: $87
    add a                                         ; $7eae: $87
    add a                                         ; $7eaf: $87
    adc a                                         ; $7eb0: $8f
    add a                                         ; $7eb1: $87
    add a                                         ; $7eb2: $87
    add a                                         ; $7eb3: $87
    adc a                                         ; $7eb4: $8f
    add c                                         ; $7eb5: $81
    add c                                         ; $7eb6: $81
    add c                                         ; $7eb7: $81
    add c                                         ; $7eb8: $81
    or d                                          ; $7eb9: $b2
    nop                                           ; $7eba: $00
    nop                                           ; $7ebb: $00
    nop                                           ; $7ebc: $00
    nop                                           ; $7ebd: $00
    ld bc, $0200                                  ; $7ebe: $01 $00 $02
    nop                                           ; $7ec1: $00
    inc bc                                        ; $7ec2: $03
    nop                                           ; $7ec3: $00
    nop                                           ; $7ec4: $00
    stop                                          ; $7ec5: $10 $00
    ld de, $1200                                  ; $7ec7: $11 $00 $12
    nop                                           ; $7eca: $00
    inc de                                        ; $7ecb: $13
    nop                                           ; $7ecc: $00
    nop                                           ; $7ecd: $00
    inc b                                         ; $7ece: $04
    nop                                           ; $7ecf: $00
    dec b                                         ; $7ed0: $05
    nop                                           ; $7ed1: $00
    ld b, $00                                     ; $7ed2: $06 $00
    rlca                                          ; $7ed4: $07
    nop                                           ; $7ed5: $00
    nop                                           ; $7ed6: $00
    inc d                                         ; $7ed7: $14
    nop                                           ; $7ed8: $00
    dec d                                         ; $7ed9: $15
    nop                                           ; $7eda: $00
    ld d, $00                                     ; $7edb: $16 $00
    rla                                           ; $7edd: $17
    nop                                           ; $7ede: $00
    nop                                           ; $7edf: $00
    ld [$0900], sp                                ; $7ee0: $08 $00 $09
    nop                                           ; $7ee3: $00
    ld a, [bc]                                    ; $7ee4: $0a
    nop                                           ; $7ee5: $00
    dec bc                                        ; $7ee6: $0b
    nop                                           ; $7ee7: $00
    nop                                           ; $7ee8: $00
    jr jr_089_7eeb                                ; $7ee9: $18 $00

jr_089_7eeb:
    add hl, de                                    ; $7eeb: $19
    nop                                           ; $7eec: $00
    ld a, [de]                                    ; $7eed: $1a
    nop                                           ; $7eee: $00
    dec de                                        ; $7eef: $1b
    nop                                           ; $7ef0: $00
    nop                                           ; $7ef1: $00
    inc c                                         ; $7ef2: $0c
    nop                                           ; $7ef3: $00
    dec c                                         ; $7ef4: $0d
    nop                                           ; $7ef5: $00
    ld c, $00                                     ; $7ef6: $0e $00
    rrca                                          ; $7ef8: $0f
    nop                                           ; $7ef9: $00
    nop                                           ; $7efa: $00
    inc e                                         ; $7efb: $1c
    nop                                           ; $7efc: $00
    dec e                                         ; $7efd: $1d
    nop                                           ; $7efe: $00
    ld e, $00                                     ; $7eff: $1e $00
    rra                                           ; $7f01: $1f
    nop                                           ; $7f02: $00
    nop                                           ; $7f03: $00
    jr nz, jr_089_7f06                            ; $7f04: $20 $00

jr_089_7f06:
    ld hl, $2200                                  ; $7f06: $21 $00 $22
    nop                                           ; $7f09: $00
    inc hl                                        ; $7f0a: $23
    nop                                           ; $7f0b: $00
    nop                                           ; $7f0c: $00
    jr nc, jr_089_7f0f                            ; $7f0d: $30 $00

jr_089_7f0f:
    ld sp, $3200                                  ; $7f0f: $31 $00 $32
    nop                                           ; $7f12: $00
    inc sp                                        ; $7f13: $33
    nop                                           ; $7f14: $00
    nop                                           ; $7f15: $00
    inc h                                         ; $7f16: $24
    nop                                           ; $7f17: $00
    dec h                                         ; $7f18: $25
    nop                                           ; $7f19: $00
    ld h, $00                                     ; $7f1a: $26 $00
    daa                                           ; $7f1c: $27
    nop                                           ; $7f1d: $00
    nop                                           ; $7f1e: $00
    inc [hl]                                      ; $7f1f: $34
    nop                                           ; $7f20: $00
    dec [hl]                                      ; $7f21: $35
    nop                                           ; $7f22: $00
    ld [hl], $00                                  ; $7f23: $36 $00
    scf                                           ; $7f25: $37
    nop                                           ; $7f26: $00
    nop                                           ; $7f27: $00
    jr z, jr_089_7f2a                             ; $7f28: $28 $00

jr_089_7f2a:
    add hl, hl                                    ; $7f2a: $29
    nop                                           ; $7f2b: $00
    ld a, [hl+]                                   ; $7f2c: $2a
    nop                                           ; $7f2d: $00
    dec hl                                        ; $7f2e: $2b
    nop                                           ; $7f2f: $00
    nop                                           ; $7f30: $00
    jr c, jr_089_7f33                             ; $7f31: $38 $00

jr_089_7f33:
    add hl, sp                                    ; $7f33: $39
    nop                                           ; $7f34: $00
    ld a, [hl-]                                   ; $7f35: $3a
    nop                                           ; $7f36: $00
    dec sp                                        ; $7f37: $3b
    nop                                           ; $7f38: $00
    nop                                           ; $7f39: $00
    inc l                                         ; $7f3a: $2c
    nop                                           ; $7f3b: $00
    dec l                                         ; $7f3c: $2d
    nop                                           ; $7f3d: $00
    ld l, $00                                     ; $7f3e: $2e $00
    cpl                                           ; $7f40: $2f
    nop                                           ; $7f41: $00
    nop                                           ; $7f42: $00
    inc a                                         ; $7f43: $3c
    nop                                           ; $7f44: $00
    dec a                                         ; $7f45: $3d
    nop                                           ; $7f46: $00
    ld a, $00                                     ; $7f47: $3e $00
    ccf                                           ; $7f49: $3f
    nop                                           ; $7f4a: $00
    nop                                           ; $7f4b: $00
    ld b, b                                       ; $7f4c: $40
    nop                                           ; $7f4d: $00
    ld b, c                                       ; $7f4e: $41
    nop                                           ; $7f4f: $00
    ld b, d                                       ; $7f50: $42
    nop                                           ; $7f51: $00
    ld b, e                                       ; $7f52: $43
    nop                                           ; $7f53: $00
    inc b                                         ; $7f54: $04
    ld c, l                                       ; $7f55: $4d
    nop                                           ; $7f56: $00
    ld c, [hl]                                    ; $7f57: $4e
    nop                                           ; $7f58: $00
    ld c, a                                       ; $7f59: $4f
    ld c, $00                                     ; $7f5a: $0e $00
    ld b, b                                       ; $7f5c: $40
    nop                                           ; $7f5d: $00
    nop                                           ; $7f5e: $00
    ld b, h                                       ; $7f5f: $44
    nop                                           ; $7f60: $00
    ld b, l                                       ; $7f61: $45
    nop                                           ; $7f62: $00
    ld b, [hl]                                    ; $7f63: $46
    nop                                           ; $7f64: $00
    ld d, b                                       ; $7f65: $50
    nop                                           ; $7f66: $00
    db $10                                        ; $7f67: $10
    ld d, c                                       ; $7f68: $51
    nop                                           ; $7f69: $00
    ld d, d                                       ; $7f6a: $52
    db $10                                        ; $7f6b: $10
    db $10                                        ; $7f6c: $10
    ld b, a                                       ; $7f6d: $47
    nop                                           ; $7f6e: $00
    ld c, b                                       ; $7f6f: $48
    nop                                           ; $7f70: $00
    ld bc, $0049                                  ; $7f71: $01 $49 $00
    ld d, e                                       ; $7f74: $53
    nop                                           ; $7f75: $00
    ld d, h                                       ; $7f76: $54
    nop                                           ; $7f77: $00
    ld d, l                                       ; $7f78: $55
    jr nz, jr_089_7f8b                            ; $7f79: $20 $10

    ld bc, $004a                                  ; $7f7b: $01 $4a $00
    ld c, e                                       ; $7f7e: $4b
    nop                                           ; $7f7f: $00
    ld c, h                                       ; $7f80: $4c
    nop                                           ; $7f81: $00
    ld d, [hl]                                    ; $7f82: $56
    ld b, $00                                     ; $7f83: $06 $00
    ld b, b                                       ; $7f85: $40
    ld d, a                                       ; $7f86: $57
    ld a, $00                                     ; $7f87: $3e $00
    ld e, [hl]                                    ; $7f89: $5e
    nop                                           ; $7f8a: $00

jr_089_7f8b:
    nop                                           ; $7f8b: $00
    nop                                           ; $7f8c: $00
    nop                                           ; $7f8d: $00
    ld bc, $0200                                  ; $7f8e: $01 $00 $02
    nop                                           ; $7f91: $00
    inc bc                                        ; $7f92: $03
    nop                                           ; $7f93: $00
    nop                                           ; $7f94: $00
    stop                                          ; $7f95: $10 $00
    ld de, $1200                                  ; $7f97: $11 $00 $12
    nop                                           ; $7f9a: $00
    inc b                                         ; $7f9b: $04
    nop                                           ; $7f9c: $00
    nop                                           ; $7f9d: $00
    dec b                                         ; $7f9e: $05
    nop                                           ; $7f9f: $00
    ld b, $00                                     ; $7fa0: $06 $00
    rlca                                          ; $7fa2: $07
    nop                                           ; $7fa3: $00
    inc de                                        ; $7fa4: $13
    nop                                           ; $7fa5: $00
    ld b, b                                       ; $7fa6: $40
    inc d                                         ; $7fa7: $14
    ld c, $00                                     ; $7fa8: $0e $00
    ld [$0900], sp                                ; $7faa: $08 $00 $09
    nop                                           ; $7fad: $00
    ld a, [bc]                                    ; $7fae: $0a
    nop                                           ; $7faf: $00
    inc b                                         ; $7fb0: $04
    dec bc                                        ; $7fb1: $0b
    nop                                           ; $7fb2: $00
    dec d                                         ; $7fb3: $15
    nop                                           ; $7fb4: $00
    ld d, $1c                                     ; $7fb5: $16 $1c
    nop                                           ; $7fb7: $00
    inc c                                         ; $7fb8: $0c
    nop                                           ; $7fb9: $00
    nop                                           ; $7fba: $00
    dec c                                         ; $7fbb: $0d
    nop                                           ; $7fbc: $00
    ld c, $00                                     ; $7fbd: $0e $00
    rrca                                          ; $7fbf: $0f
    nop                                           ; $7fc0: $00
    rla                                           ; $7fc1: $17
    nop                                           ; $7fc2: $00
    nop                                           ; $7fc3: $00
    jr jr_089_7fc6                                ; $7fc4: $18 $00

jr_089_7fc6:
    add hl, de                                    ; $7fc6: $19
    nop                                           ; $7fc7: $00
    ld a, [de]                                    ; $7fc8: $1a
    nop                                           ; $7fc9: $00
    dec de                                        ; $7fca: $1b
    nop                                           ; $7fcb: $00
    nop                                           ; $7fcc: $00
    inc e                                         ; $7fcd: $1c
    nop                                           ; $7fce: $00
    dec e                                         ; $7fcf: $1d
    nop                                           ; $7fd0: $00
    ld h, $00                                     ; $7fd1: $26 $00
    daa                                           ; $7fd3: $27
    nop                                           ; $7fd4: $00
    nop                                           ; $7fd5: $00
    jr z, jr_089_7fd8                             ; $7fd6: $28 $00

jr_089_7fd8:
    ld e, $00                                     ; $7fd8: $1e $00
    rra                                           ; $7fda: $1f
    nop                                           ; $7fdb: $00
    jr nz, jr_089_7fde                            ; $7fdc: $20 $00

jr_089_7fde:
    nop                                           ; $7fde: $00
    ld hl, $2900                                  ; $7fdf: $21 $00 $29
    nop                                           ; $7fe2: $00
    ld a, [hl+]                                   ; $7fe3: $2a
    nop                                           ; $7fe4: $00
    dec hl                                        ; $7fe5: $2b
    nop                                           ; $7fe6: $00
    nop                                           ; $7fe7: $00
    ld [hl+], a                                   ; $7fe8: $22
    nop                                           ; $7fe9: $00
    inc hl                                        ; $7fea: $23
    nop                                           ; $7feb: $00
    inc h                                         ; $7fec: $24
    nop                                           ; $7fed: $00
    dec h                                         ; $7fee: $25
    nop                                           ; $7fef: $00
    nop                                           ; $7ff0: $00
    inc l                                         ; $7ff1: $2c
    nop                                           ; $7ff2: $00
    dec l                                         ; $7ff3: $2d
    nop                                           ; $7ff4: $00
    ld l, $00                                     ; $7ff5: $2e $00
    nop                                           ; $7ff7: $00
    jr c, @+$12                                   ; $7ff8: $38 $10

    ld [bc], a                                    ; $7ffa: $02
    ld a, a                                       ; $7ffb: $7f
    ld b, e                                       ; $7ffc: $43
    nop                                           ; $7ffd: $00
    nop                                           ; $7ffe: $00
    rst $38                                       ; $7fff: $ff
