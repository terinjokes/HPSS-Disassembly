; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0ee", ROMX[$4000], BANK[$ee]

    db $ee

    inc de                                        ; $4001: $13
    rlca                                          ; $4002: $07
    ldh a, [rNR33]                                ; $4003: $f0 $1d
    add sp, $01                                   ; $4005: $e8 $01
    db $f4                                        ; $4007: $f4
    di                                            ; $4008: $f3
    db $eb                                        ; $4009: $eb
    ei                                            ; $400a: $fb
    ei                                            ; $400b: $fb
    ei                                            ; $400c: $fb
    db $ec                                        ; $400d: $ec
    inc bc                                        ; $400e: $03
    db $fc                                        ; $400f: $fc
    inc bc                                        ; $4010: $03
    xor $0b                                       ; $4011: $ee $0b
    cp $0b                                        ; $4013: $fe $0b
    ld [bc], a                                    ; $4015: $02
    ld bc, $0282                                  ; $4016: $01 $82 $02
    inc bc                                        ; $4019: $03
    ld [bc], a                                    ; $401a: $02
    ld bc, $0292                                  ; $401b: $01 $92 $02
    inc bc                                        ; $401e: $03
    ld [bc], a                                    ; $401f: $02
    inc bc                                        ; $4020: $03
    inc b                                         ; $4021: $04
    rlca                                          ; $4022: $07
    inc a                                         ; $4023: $3c
    ccf                                           ; $4024: $3f
    ld a, h                                       ; $4025: $7c
    ld c, a                                       ; $4026: $4f
    cp $b7                                        ; $4027: $fe $b7
    db $fd                                        ; $4029: $fd
    sbc a                                         ; $402a: $9f
    db $fc                                        ; $402b: $fc
    add a                                         ; $402c: $87
    ld a, a                                       ; $402d: $7f
    ld l, e                                       ; $402e: $6b
    ld [bc], a                                    ; $402f: $02
    ccf                                           ; $4030: $3f
    ld b, $00                                     ; $4031: $06 $00
    ld [bc], a                                    ; $4033: $02
    inc bc                                        ; $4034: $03
    and l                                         ; $4035: $a5
    rlca                                          ; $4036: $07
    inc b                                         ; $4037: $04
    rlca                                          ; $4038: $07
    inc b                                         ; $4039: $04
    inc de                                        ; $403a: $13
    ld [de], a                                    ; $403b: $12
    dec c                                         ; $403c: $0d
    rrca                                          ; $403d: $0f
    ld [hl-], a                                   ; $403e: $32
    ccf                                           ; $403f: $3f
    pop bc                                        ; $4040: $c1
    rst $38                                       ; $4041: $ff
    ld b, d                                       ; $4042: $42
    ld a, a                                       ; $4043: $7f
    and e                                         ; $4044: $a3
    rst $38                                       ; $4045: $ff
    and e                                         ; $4046: $a3
    rst $38                                       ; $4047: $ff
    ld b, c                                       ; $4048: $41
    rst $38                                       ; $4049: $ff
    jr nz, @+$01                                  ; $404a: $20 $ff

    ld e, d                                       ; $404c: $5a
    rst $38                                       ; $404d: $ff
    dec b                                         ; $404e: $05
    rst $38                                       ; $404f: $ff
    ld [hl], d                                    ; $4050: $72
    rst $38                                       ; $4051: $ff
    ret                                           ; $4052: $c9


    rst $38                                       ; $4053: $ff
    ld b, $ff                                     ; $4054: $06 $ff
    dec b                                         ; $4056: $05
    rst $38                                       ; $4057: $ff
    rlca                                          ; $4058: $07
    rst $38                                       ; $4059: $ff
    sbc a                                         ; $405a: $9f
    ld [bc], a                                    ; $405b: $02
    rst $38                                       ; $405c: $ff

jr_0ee_405d:
    add e                                         ; $405d: $83
    ldh [rIE], a                                  ; $405e: $e0 $ff
    db $fd                                        ; $4060: $fd
    ld [bc], a                                    ; $4061: $02
    ld [bc], a                                    ; $4062: $02
    ld [de], a                                    ; $4063: $12
    nop                                           ; $4064: $00
    ld [bc], a                                    ; $4065: $02
    or d                                          ; $4066: $b2
    adc h                                         ; $4067: $8c
    rst $08                                       ; $4068: $cf
    ld a, l                                       ; $4069: $7d
    or e                                          ; $406a: $b3
    rst $38                                       ; $406b: $ff
    jr c, jr_0ee_405d                             ; $406c: $38 $ef

    nop                                           ; $406e: $00
    rst $38                                       ; $406f: $ff
    ld a, a                                       ; $4070: $7f
    db $dd                                        ; $4071: $dd
    and $e4                                       ; $4072: $e6 $e4
    ld [bc], a                                    ; $4074: $02
    ret nz                                        ; $4075: $c0

    ld [bc], a                                    ; $4076: $02
    ldh [rSC], a                                  ; $4077: $e0 $02
    ldh a, [$96]                                  ; $4079: $f0 $96
    ld hl, sp-$78                                 ; $407b: $f8 $88
    db $fc                                        ; $407d: $fc
    sub h                                         ; $407e: $94
    cp $de                                        ; $407f: $fe $de
    rst $38                                       ; $4081: $ff
    ld sp, hl                                     ; $4082: $f9
    ld h, a                                       ; $4083: $67
    push hl                                       ; $4084: $e5
    jp nc, $dcf2                                  ; $4085: $d2 $f2 $dc

    db $fc                                        ; $4088: $fc
    rst $38                                       ; $4089: $ff
    ei                                            ; $408a: $fb
    rst $38                                       ; $408b: $ff
    adc l                                         ; $408c: $8d
    rst $38                                       ; $408d: $ff
    rst $30                                       ; $408e: $f7
    ret c                                         ; $408f: $d8

    ld e, b                                       ; $4090: $58
    ld [bc], a                                    ; $4091: $02
    add b                                         ; $4092: $80
    inc d                                         ; $4093: $14
    nop                                           ; $4094: $00
    ld [bc], a                                    ; $4095: $02
    ld b, b                                       ; $4096: $40
    add h                                         ; $4097: $84
    ldh [$a0], a                                  ; $4098: $e0 $a0
    ld b, b                                       ; $409a: $40
    ret nz                                        ; $409b: $c0

    ld [bc], a                                    ; $409c: $02
    add b                                         ; $409d: $80
    inc c                                         ; $409e: $0c
    nop                                           ; $409f: $00
    ld [bc], a                                    ; $40a0: $02
    jr nc, jr_0ee_40a5                            ; $40a1: $30 $02

    jr jr_0ee_40a9                                ; $40a3: $18 $04

jr_0ee_40a5:
    inc c                                         ; $40a5: $0c
    add [hl]                                      ; $40a6: $86
    inc e                                         ; $40a7: $1c
    inc d                                         ; $40a8: $14

jr_0ee_40a9:
    ld hl, sp-$18                                 ; $40a9: $f8 $e8
    ldh a, [$50]                                  ; $40ab: $f0 $50
    ld [bc], a                                    ; $40ad: $02
    ldh [rNR32], a                                ; $40ae: $e0 $1c
    nop                                           ; $40b0: $00
    rst $38                                       ; $40b1: $ff
    inc de                                        ; $40b2: $13
    rlca                                          ; $40b3: $07
    ldh a, [rNR33]                                ; $40b4: $f0 $1d
    add sp, $01                                   ; $40b6: $e8 $01
    di                                            ; $40b8: $f3
    di                                            ; $40b9: $f3
    db $eb                                        ; $40ba: $eb
    ei                                            ; $40bb: $fb
    ei                                            ; $40bc: $fb
    ei                                            ; $40bd: $fb
    db $eb                                        ; $40be: $eb
    inc bc                                        ; $40bf: $03

Call_0ee_40c0:
    ei                                            ; $40c0: $fb
    inc bc                                        ; $40c1: $03
    db $ed                                        ; $40c2: $ed
    dec bc                                        ; $40c3: $0b
    db $fd                                        ; $40c4: $fd
    dec bc                                        ; $40c5: $0b
    ld [bc], a                                    ; $40c6: $02
    ld bc, $0302                                  ; $40c7: $01 $02 $03
    ld [bc], a                                    ; $40ca: $02
    ld bc, $0294                                  ; $40cb: $01 $94 $02
    inc bc                                        ; $40ce: $03
    ld [bc], a                                    ; $40cf: $02
    inc bc                                        ; $40d0: $03
    inc b                                         ; $40d1: $04
    rlca                                          ; $40d2: $07
    inc b                                         ; $40d3: $04
    rlca                                          ; $40d4: $07
    inc a                                         ; $40d5: $3c
    ccf                                           ; $40d6: $3f
    ld a, h                                       ; $40d7: $7c
    ld c, a                                       ; $40d8: $4f
    cp $b7                                        ; $40d9: $fe $b7
    db $fd                                        ; $40db: $fd
    sbc a                                         ; $40dc: $9f
    db $fc                                        ; $40dd: $fc
    add a                                         ; $40de: $87
    ld a, a                                       ; $40df: $7f
    ld l, e                                       ; $40e0: $6b
    ld [bc], a                                    ; $40e1: $02
    ccf                                           ; $40e2: $3f
    inc b                                         ; $40e3: $04
    nop                                           ; $40e4: $00
    ld [bc], a                                    ; $40e5: $02
    ld bc, $0384                                  ; $40e6: $01 $84 $03
    ld [bc], a                                    ; $40e9: $02
    inc bc                                        ; $40ea: $03
    ld [bc], a                                    ; $40eb: $02
    ld [bc], a                                    ; $40ec: $02
    dec bc                                        ; $40ed: $0b
    sbc a                                         ; $40ee: $9f
    inc e                                         ; $40ef: $1c
    rra                                           ; $40f0: $1f
    and c                                         ; $40f1: $a1
    cp a                                          ; $40f2: $bf
    ld b, c                                       ; $40f3: $41
    ld a, a                                       ; $40f4: $7f
    jp nc, Jump_000_27ff                          ; $40f5: $d2 $ff $27

    rst $38                                       ; $40f8: $ff
    ld b, a                                       ; $40f9: $47
    rst $38                                       ; $40fa: $ff
    add e                                         ; $40fb: $83
    rst $38                                       ; $40fc: $ff
    ld b, c                                       ; $40fd: $41
    rst $38                                       ; $40fe: $ff
    or l                                          ; $40ff: $b5
    rst $38                                       ; $4100: $ff
    dec bc                                        ; $4101: $0b
    rst $38                                       ; $4102: $ff
    ld [hl], d                                    ; $4103: $72
    rst $38                                       ; $4104: $ff
    ret                                           ; $4105: $c9


    rst $38                                       ; $4106: $ff
    ld b, $ff                                     ; $4107: $06 $ff
    dec b                                         ; $4109: $05
    rst $38                                       ; $410a: $ff
    rlca                                          ; $410b: $07
    rst $38                                       ; $410c: $ff
    sbc a                                         ; $410d: $9f
    ld [bc], a                                    ; $410e: $02
    rst $38                                       ; $410f: $ff
    add e                                         ; $4110: $83
    ldh [rIE], a                                  ; $4111: $e0 $ff
    db $fd                                        ; $4113: $fd
    ld [bc], a                                    ; $4114: $02
    ld [bc], a                                    ; $4115: $02
    ld [de], a                                    ; $4116: $12
    nop                                           ; $4117: $00
    ld [bc], a                                    ; $4118: $02
    add b                                         ; $4119: $80
    adc [hl]                                      ; $411a: $8e
    reti                                          ; $411b: $d9


    ld e, c                                       ; $411c: $59
    rst $20                                       ; $411d: $e7
    ld a, $d9                                     ; $411e: $3e $d9
    ld a, a                                       ; $4120: $7f
    sbc h                                         ; $4121: $9c
    rst $30                                       ; $4122: $f7
    nop                                           ; $4123: $00
    rst $38                                       ; $4124: $ff
    cp a                                          ; $4125: $bf
    xor $f3                                       ; $4126: $ee $f3
    ld a, [c]                                     ; $4128: $f2
    ld [bc], a                                    ; $4129: $02
    ret nz                                        ; $412a: $c0

    inc b                                         ; $412b: $04
    ldh [$96], a                                  ; $412c: $e0 $96
    db $fc                                        ; $412e: $fc
    inc e                                         ; $412f: $1c
    cp $2e                                        ; $4130: $fe $2e
    rst $38                                       ; $4132: $ff
    cp c                                          ; $4133: $b9
    rst $20                                       ; $4134: $e7
    push hl                                       ; $4135: $e5
    ld h, d                                       ; $4136: $62
    ld [c], a                                     ; $4137: $e2
    ret nc                                        ; $4138: $d0

    ldh a, [$dc]                                  ; $4139: $f0 $dc
    db $fc                                        ; $413b: $fc
    rst $38                                       ; $413c: $ff
    ei                                            ; $413d: $fb
    rst $38                                       ; $413e: $ff
    adc l                                         ; $413f: $8d
    rst $38                                       ; $4140: $ff
    rst $30                                       ; $4141: $f7
    ret c                                         ; $4142: $d8

    ld e, b                                       ; $4143: $58
    ld [bc], a                                    ; $4144: $02
    add b                                         ; $4145: $80
    ld [de], a                                    ; $4146: $12
    nop                                           ; $4147: $00
    ld [bc], a                                    ; $4148: $02
    add b                                         ; $4149: $80
    ld [bc], a                                    ; $414a: $02
    and b                                         ; $414b: $a0
    add h                                         ; $414c: $84
    ld [hl], b                                    ; $414d: $70
    ret nc                                        ; $414e: $d0

    jr nz, @-$1e                                  ; $414f: $20 $e0

    ld [bc], a                                    ; $4151: $02
    ret nz                                        ; $4152: $c0

    inc c                                         ; $4153: $0c
    nop                                           ; $4154: $00
    ld [bc], a                                    ; $4155: $02
    jr nc, jr_0ee_415a                            ; $4156: $30 $02

    jr jr_0ee_415e                                ; $4158: $18 $04

jr_0ee_415a:
    inc c                                         ; $415a: $0c
    add [hl]                                      ; $415b: $86
    inc e                                         ; $415c: $1c
    inc d                                         ; $415d: $14

jr_0ee_415e:
    ld hl, sp-$18                                 ; $415e: $f8 $e8
    ldh a, [$50]                                  ; $4160: $f0 $50
    ld [bc], a                                    ; $4162: $02
    ldh [rNR30], a                                ; $4163: $e0 $1a
    nop                                           ; $4165: $00
    rst $38                                       ; $4166: $ff
    inc de                                        ; $4167: $13
    rlca                                          ; $4168: $07
    ldh a, [rNR33]                                ; $4169: $f0 $1d
    add sp, $01                                   ; $416b: $e8 $01
    di                                            ; $416d: $f3
    di                                            ; $416e: $f3
    db $eb                                        ; $416f: $eb
    ei                                            ; $4170: $fb
    ei                                            ; $4171: $fb
    ei                                            ; $4172: $fb
    db $eb                                        ; $4173: $eb
    inc bc                                        ; $4174: $03
    ei                                            ; $4175: $fb
    inc bc                                        ; $4176: $03
    db $ed                                        ; $4177: $ed
    dec bc                                        ; $4178: $0b
    db $fd                                        ; $4179: $fd
    dec bc                                        ; $417a: $0b
    ld [bc], a                                    ; $417b: $02
    ld bc, $0302                                  ; $417c: $01 $02 $03
    ld [bc], a                                    ; $417f: $02
    ld bc, $0294                                  ; $4180: $01 $94 $02
    inc bc                                        ; $4183: $03
    ld [bc], a                                    ; $4184: $02
    inc bc                                        ; $4185: $03
    inc b                                         ; $4186: $04
    rlca                                          ; $4187: $07
    inc c                                         ; $4188: $0c
    rrca                                          ; $4189: $0f
    inc a                                         ; $418a: $3c
    ccf                                           ; $418b: $3f
    ld a, h                                       ; $418c: $7c
    ld l, a                                       ; $418d: $6f
    cp $b7                                        ; $418e: $fe $b7
    db $fd                                        ; $4190: $fd
    sbc a                                         ; $4191: $9f
    db $fc                                        ; $4192: $fc
    add a                                         ; $4193: $87
    ld a, a                                       ; $4194: $7f
    ld l, e                                       ; $4195: $6b
    ld [bc], a                                    ; $4196: $02
    ccf                                           ; $4197: $3f
    inc b                                         ; $4198: $04
    nop                                           ; $4199: $00
    ld [bc], a                                    ; $419a: $02
    ld bc, $0384                                  ; $419b: $01 $84 $03
    ld [bc], a                                    ; $419e: $02
    inc bc                                        ; $419f: $03
    ld [bc], a                                    ; $41a0: $02
    ld [bc], a                                    ; $41a1: $02
    dec bc                                        ; $41a2: $0b
    sbc a                                         ; $41a3: $9f
    inc c                                         ; $41a4: $0c
    rrca                                          ; $41a5: $0f
    or c                                          ; $41a6: $b1
    cp a                                          ; $41a7: $bf
    ld c, c                                       ; $41a8: $49
    ld a, a                                       ; $41a9: $7f
    jp nc, Jump_000_27ff                          ; $41aa: $d2 $ff $27

    rst $38                                       ; $41ad: $ff
    ld c, a                                       ; $41ae: $4f
    rst $38                                       ; $41af: $ff
    add e                                         ; $41b0: $83
    rst $38                                       ; $41b1: $ff
    ld b, c                                       ; $41b2: $41
    rst $38                                       ; $41b3: $ff
    or l                                          ; $41b4: $b5
    rst $38                                       ; $41b5: $ff
    rrca                                          ; $41b6: $0f
    rst $38                                       ; $41b7: $ff
    ld [hl], d                                    ; $41b8: $72
    rst $38                                       ; $41b9: $ff
    adc c                                         ; $41ba: $89
    rst $38                                       ; $41bb: $ff
    ld b, $ff                                     ; $41bc: $06 $ff
    dec b                                         ; $41be: $05
    rst $38                                       ; $41bf: $ff
    rrca                                          ; $41c0: $0f
    rst $38                                       ; $41c1: $ff
    sbc a                                         ; $41c2: $9f
    ld [bc], a                                    ; $41c3: $02
    rst $38                                       ; $41c4: $ff
    add e                                         ; $41c5: $83
    ldh [rIE], a                                  ; $41c6: $e0 $ff
    db $fd                                        ; $41c8: $fd
    ld [bc], a                                    ; $41c9: $02
    ld [bc], a                                    ; $41ca: $02
    ld [de], a                                    ; $41cb: $12
    nop                                           ; $41cc: $00
    ld [bc], a                                    ; $41cd: $02
    ret nz                                        ; $41ce: $c0

    adc [hl]                                      ; $41cf: $8e
    ld sp, hl                                     ; $41d0: $f9
    add hl, sp                                    ; $41d1: $39
    rst $20                                       ; $41d2: $e7
    ld a, $d9                                     ; $41d3: $3e $d9
    ld a, a                                       ; $41d5: $7f
    sbc h                                         ; $41d6: $9c
    rst $30                                       ; $41d7: $f7
    nop                                           ; $41d8: $00
    rst $38                                       ; $41d9: $ff
    cp a                                          ; $41da: $bf
    xor $f7                                       ; $41db: $ee $f7
    push af                                       ; $41dd: $f5
    inc b                                         ; $41de: $04
    ldh [rSC], a                                  ; $41df: $e0 $02
    ldh a, [$86]                                  ; $41e1: $f0 $86
    db $fc                                        ; $41e3: $fc
    inc e                                         ; $41e4: $1c
    cp $1a                                        ; $41e5: $fe $1a
    rst $38                                       ; $41e7: $ff
    cp c                                          ; $41e8: $b9
    ld [bc], a                                    ; $41e9: $02
    and $8e                                       ; $41ea: $e6 $8e
    ld h, b                                       ; $41ec: $60
    ldh [$d8], a                                  ; $41ed: $e0 $d8
    ld hl, sp-$24                                 ; $41ef: $f8 $dc
    db $fc                                        ; $41f1: $fc
    rst $38                                       ; $41f2: $ff
    ei                                            ; $41f3: $fb
    rst $38                                       ; $41f4: $ff

jr_0ee_41f5:
    adc l                                         ; $41f5: $8d
    rst $38                                       ; $41f6: $ff
    rst $30                                       ; $41f7: $f7
    ret c                                         ; $41f8: $d8

    ld e, b                                       ; $41f9: $58
    ld [bc], a                                    ; $41fa: $02
    add b                                         ; $41fb: $80
    ld [de], a                                    ; $41fc: $12
    nop                                           ; $41fd: $00

Call_0ee_41fe:
    ld [bc], a                                    ; $41fe: $02
    add b                                         ; $41ff: $80
    ld [bc], a                                    ; $4200: $02
    ret nz                                        ; $4201: $c0

    add h                                         ; $4202: $84
    jr nc, jr_0ee_41f5                            ; $4203: $30 $f0

    ld [hl], b                                    ; $4205: $70
    ret nc                                        ; $4206: $d0

    ld [bc], a                                    ; $4207: $02
    ldh [$0c], a                                  ; $4208: $e0 $0c
    nop                                           ; $420a: $00
    ld [bc], a                                    ; $420b: $02
    jr nc, jr_0ee_4210                            ; $420c: $30 $02

    jr jr_0ee_4214                                ; $420e: $18 $04

jr_0ee_4210:
    inc c                                         ; $4210: $0c
    add [hl]                                      ; $4211: $86
    inc e                                         ; $4212: $1c
    inc d                                         ; $4213: $14

jr_0ee_4214:
    ld hl, sp-$18                                 ; $4214: $f8 $e8
    ldh a, [$50]                                  ; $4216: $f0 $50
    ld [bc], a                                    ; $4218: $02
    ldh [rNR30], a                                ; $4219: $e0 $1a
    nop                                           ; $421b: $00
    rst $38                                       ; $421c: $ff
    inc de                                        ; $421d: $13
    rlca                                          ; $421e: $07
    ldh a, [rNR33]                                ; $421f: $f0 $1d
    add sp, $01                                   ; $4221: $e8 $01
    di                                            ; $4223: $f3
    di                                            ; $4224: $f3
    db $ec                                        ; $4225: $ec
    ei                                            ; $4226: $fb
    db $fc                                        ; $4227: $fc
    ei                                            ; $4228: $fb
    db $ec                                        ; $4229: $ec
    inc bc                                        ; $422a: $03
    db $fc                                        ; $422b: $fc
    inc bc                                        ; $422c: $03
    xor $0b                                       ; $422d: $ee $0b
    cp $0b                                        ; $422f: $fe $0b
    ld [bc], a                                    ; $4231: $02
    inc bc                                        ; $4232: $03
    ld [bc], a                                    ; $4233: $02
    ld bc, $0302                                  ; $4234: $01 $02 $03
    add c                                         ; $4237: $81
    ld [bc], a                                    ; $4238: $02
    inc bc                                        ; $4239: $03
    inc bc                                        ; $423a: $03
    sub b                                         ; $423b: $90
    inc b                                         ; $423c: $04
    rlca                                          ; $423d: $07
    ld [$3d0f], sp                                ; $423e: $08 $0f $3d
    ccf                                           ; $4241: $3f
    ld a, h                                       ; $4242: $7c
    ld l, a                                       ; $4243: $6f
    cp $b7                                        ; $4244: $fe $b7
    rst $38                                       ; $4246: $ff
    adc a                                         ; $4247: $8f
    db $fd                                        ; $4248: $fd
    add a                                         ; $4249: $87
    ld a, a                                       ; $424a: $7f

jr_0ee_424b:
    ld d, a                                       ; $424b: $57
    ld [bc], a                                    ; $424c: $02
    ccf                                           ; $424d: $3f
    inc b                                         ; $424e: $04
    nop                                           ; $424f: $00
    ld [bc], a                                    ; $4250: $02
    ld bc, $0382                                  ; $4251: $01 $82 $03
    ld [bc], a                                    ; $4254: $02
    ld [bc], a                                    ; $4255: $02
    dec b                                         ; $4256: $05
    ld [bc], a                                    ; $4257: $02
    dec bc                                        ; $4258: $0b
    sbc l                                         ; $4259: $9d
    ld d, h                                       ; $425a: $54
    ld e, a                                       ; $425b: $5f
    ld l, c                                       ; $425c: $69
    ld a, a                                       ; $425d: $7f
    sub e                                         ; $425e: $93
    rst $38                                       ; $425f: $ff
    daa                                           ; $4260: $27
    rst $38                                       ; $4261: $ff
    ld c, a                                       ; $4262: $4f
    rst $38                                       ; $4263: $ff
    add a                                         ; $4264: $87
    rst $38                                       ; $4265: $ff
    add e                                         ; $4266: $83
    cp $6b                                        ; $4267: $fe $6b
    cp $1f                                        ; $4269: $fe $1f
    rst $38                                       ; $426b: $ff
    ld [hl], e                                    ; $426c: $73
    rst $38                                       ; $426d: $ff
    adc d                                         ; $426e: $8a
    rst $38                                       ; $426f: $ff
    dec b                                         ; $4270: $05
    rst $38                                       ; $4271: $ff
    ld b, $ff                                     ; $4272: $06 $ff
    rrca                                          ; $4274: $0f
    rst $38                                       ; $4275: $ff
    ccf                                           ; $4276: $3f
    ld [bc], a                                    ; $4277: $02
    rst $38                                       ; $4278: $ff
    add e                                         ; $4279: $83
    ldh [rIE], a                                  ; $427a: $e0 $ff
    db $fd                                        ; $427c: $fd
    ld [bc], a                                    ; $427d: $02
    ld [bc], a                                    ; $427e: $02
    inc d                                         ; $427f: $14
    nop                                           ; $4280: $00
    ld [bc], a                                    ; $4281: $02
    ret nz                                        ; $4282: $c0

    adc c                                         ; $4283: $89
    ld sp, hl                                     ; $4284: $f9
    add hl, sp                                    ; $4285: $39
    rst $20                                       ; $4286: $e7
    ld a, $f9                                     ; $4287: $3e $f9
    ld a, a                                       ; $4289: $7f
    sbc h                                         ; $428a: $9c
    rst $30                                       ; $428b: $f7
    ld h, b                                       ; $428c: $60
    ld [bc], a                                    ; $428d: $02
    rst $38                                       ; $428e: $ff
    add e                                         ; $428f: $83
    adc $f7                                       ; $4290: $ce $f7
    push af                                       ; $4292: $f5
    ld [bc], a                                    ; $4293: $02
    ldh [rSC], a                                  ; $4294: $e0 $02
    ldh a, [$86]                                  ; $4296: $f0 $86
    cp $7e                                        ; $4298: $fe $7e
    rst $38                                       ; $429a: $ff
    add hl, sp                                    ; $429b: $39
    rst $38                                       ; $429c: $ff
    ld a, l                                       ; $429d: $7d
    ld [bc], a                                    ; $429e: $02
    ld [c], a                                     ; $429f: $e2
    ld [bc], a                                    ; $42a0: $02
    ldh [$8c], a                                  ; $42a1: $e0 $8c
    ld e, b                                       ; $42a3: $58
    ld hl, sp-$22                                 ; $42a4: $f8 $de
    or $ff                                        ; $42a6: $f6 $ff
    ei                                            ; $42a8: $fb
    rst $38                                       ; $42a9: $ff

jr_0ee_42aa:
    adc [hl]                                      ; $42aa: $8e
    rst $38                                       ; $42ab: $ff
    rst $30                                       ; $42ac: $f7
    ret c                                         ; $42ad: $d8

    ld e, b                                       ; $42ae: $58
    ld [bc], a                                    ; $42af: $02
    add b                                         ; $42b0: $80
    inc d                                         ; $42b1: $14
    nop                                           ; $42b2: $00
    ld [bc], a                                    ; $42b3: $02
    add b                                         ; $42b4: $80
    ld [bc], a                                    ; $42b5: $02
    ret nz                                        ; $42b6: $c0

    add h                                         ; $42b7: $84
    jr nc, jr_0ee_42aa                            ; $42b8: $30 $f0

    ld [hl], b                                    ; $42ba: $70
    ret nc                                        ; $42bb: $d0

    ld [bc], a                                    ; $42bc: $02
    ldh [$08], a                                  ; $42bd: $e0 $08
    nop                                           ; $42bf: $00
    ld [bc], a                                    ; $42c0: $02
    jr nc, jr_0ee_42cb                            ; $42c1: $30 $08

    jr jr_0ee_424b                                ; $42c3: $18 $86

    jr c, jr_0ee_42ef                             ; $42c5: $38 $28

    ldh a, [$d0]                                  ; $42c7: $f0 $d0
    ldh [$a0], a                                  ; $42c9: $e0 $a0

jr_0ee_42cb:
    ld [bc], a                                    ; $42cb: $02
    ret nz                                        ; $42cc: $c0

    inc e                                         ; $42cd: $1c
    nop                                           ; $42ce: $00
    rst $38                                       ; $42cf: $ff
    inc de                                        ; $42d0: $13
    rlca                                          ; $42d1: $07
    ldh a, [rNR33]                                ; $42d2: $f0 $1d
    add sp, $01                                   ; $42d4: $e8 $01
    di                                            ; $42d6: $f3
    di                                            ; $42d7: $f3
    db $ec                                        ; $42d8: $ec
    ei                                            ; $42d9: $fb
    db $fc                                        ; $42da: $fc
    ei                                            ; $42db: $fb
    db $ec                                        ; $42dc: $ec
    inc bc                                        ; $42dd: $03
    db $fc                                        ; $42de: $fc
    inc bc                                        ; $42df: $03
    xor $0b                                       ; $42e0: $ee $0b
    cp $0b                                        ; $42e2: $fe $0b
    ld [bc], a                                    ; $42e4: $02
    inc bc                                        ; $42e5: $03
    ld [bc], a                                    ; $42e6: $02
    ld bc, $0302                                  ; $42e7: $01 $02 $03
    add c                                         ; $42ea: $81
    ld [bc], a                                    ; $42eb: $02
    inc bc                                        ; $42ec: $03
    inc bc                                        ; $42ed: $03
    sub b                                         ; $42ee: $90

jr_0ee_42ef:
    inc b                                         ; $42ef: $04
    rlca                                          ; $42f0: $07
    ld [$3d0f], sp                                ; $42f1: $08 $0f $3d
    ccf                                           ; $42f4: $3f
    ld a, h                                       ; $42f5: $7c
    ld l, a                                       ; $42f6: $6f
    cp $b7                                        ; $42f7: $fe $b7
    rst $38                                       ; $42f9: $ff
    adc a                                         ; $42fa: $8f
    db $fd                                        ; $42fb: $fd
    add a                                         ; $42fc: $87
    ld a, a                                       ; $42fd: $7f
    ld d, a                                       ; $42fe: $57
    ld [bc], a                                    ; $42ff: $02
    ccf                                           ; $4300: $3f
    inc b                                         ; $4301: $04
    nop                                           ; $4302: $00
    ld [bc], a                                    ; $4303: $02
    ld bc, $0382                                  ; $4304: $01 $82 $03
    ld [bc], a                                    ; $4307: $02
    ld [bc], a                                    ; $4308: $02
    dec b                                         ; $4309: $05
    ld [bc], a                                    ; $430a: $02
    dec bc                                        ; $430b: $0b
    sbc l                                         ; $430c: $9d
    sub l                                         ; $430d: $95
    sbc a                                         ; $430e: $9f
    ld l, d                                       ; $430f: $6a
    ld a, a                                       ; $4310: $7f
    sub e                                         ; $4311: $93
    rst $38                                       ; $4312: $ff
    daa                                           ; $4313: $27
    rst $38                                       ; $4314: $ff
    ld c, a                                       ; $4315: $4f
    rst $38                                       ; $4316: $ff
    add e                                         ; $4317: $83
    cp $93                                        ; $4318: $fe $93
    cp $6b                                        ; $431a: $fe $6b
    rst $38                                       ; $431c: $ff
    rra                                           ; $431d: $1f
    rst $38                                       ; $431e: $ff
    ld [hl], e                                    ; $431f: $73
    rst $38                                       ; $4320: $ff
    adc d                                         ; $4321: $8a
    rst $38                                       ; $4322: $ff
    dec b                                         ; $4323: $05
    rst $38                                       ; $4324: $ff
    ld b, $ff                                     ; $4325: $06 $ff
    rrca                                          ; $4327: $0f
    rst $38                                       ; $4328: $ff
    ccf                                           ; $4329: $3f
    ld [bc], a                                    ; $432a: $02
    rst $38                                       ; $432b: $ff
    add e                                         ; $432c: $83
    ldh [rIE], a                                  ; $432d: $e0 $ff
    db $fd                                        ; $432f: $fd
    ld [bc], a                                    ; $4330: $02
    ld [bc], a                                    ; $4331: $02
    inc d                                         ; $4332: $14
    nop                                           ; $4333: $00
    ld [bc], a                                    ; $4334: $02
    ret nz                                        ; $4335: $c0

    adc [hl]                                      ; $4336: $8e
    pop af                                        ; $4337: $f1
    ld sp, $3eef                                  ; $4338: $31 $ef $3e
    ei                                            ; $433b: $fb
    ld a, a                                       ; $433c: $7f
    inc e                                         ; $433d: $1c
    rst $30                                       ; $433e: $f7
    ld h, b                                       ; $433f: $60
    rst $38                                       ; $4340: $ff
    ld a, a                                       ; $4341: $7f
    adc $f7                                       ; $4342: $ce $f7
    push af                                       ; $4344: $f5
    ld [bc], a                                    ; $4345: $02
    ldh [$8a], a                                  ; $4346: $e0 $8a
    ldh a, [$30]                                  ; $4348: $f0 $30
    ld hl, sp+$38                                 ; $434a: $f8 $38

jr_0ee_434c:
    cp $7e                                        ; $434c: $fe $7e
    rst $38                                       ; $434e: $ff
    db $fd                                        ; $434f: $fd
    rst $20                                       ; $4350: $e7
    push hl                                       ; $4351: $e5
    ld [bc], a                                    ; $4352: $02
    ld [c], a                                     ; $4353: $e2
    adc h                                         ; $4354: $8c
    ld d, b                                       ; $4355: $50
    ldh a, [$dc]                                  ; $4356: $f0 $dc
    db $fc                                        ; $4358: $fc
    rst $38                                       ; $4359: $ff
    ei                                            ; $435a: $fb
    rst $38                                       ; $435b: $ff
    adc l                                         ; $435c: $8d
    rst $38                                       ; $435d: $ff
    rst $30                                       ; $435e: $f7
    ret c                                         ; $435f: $d8

    ld e, b                                       ; $4360: $58
    ld [bc], a                                    ; $4361: $02
    add b                                         ; $4362: $80
    inc d                                         ; $4363: $14
    nop                                           ; $4364: $00
    ld [bc], a                                    ; $4365: $02
    add b                                         ; $4366: $80
    ld [bc], a                                    ; $4367: $02
    ret nz                                        ; $4368: $c0

    add h                                         ; $4369: $84
    jr nz, jr_0ee_434c                            ; $436a: $20 $e0

    ld [hl], b                                    ; $436c: $70
    ret nc                                        ; $436d: $d0

    ld [bc], a                                    ; $436e: $02
    ldh [$08], a                                  ; $436f: $e0 $08
    nop                                           ; $4371: $00
    ld [bc], a                                    ; $4372: $02
    db $10                                        ; $4373: $10
    ld [bc], a                                    ; $4374: $02
    jr jr_0ee_437d                                ; $4375: $18 $06

    inc c                                         ; $4377: $0c
    add [hl]                                      ; $4378: $86
    inc e                                         ; $4379: $1c
    inc d                                         ; $437a: $14
    ld hl, sp-$18                                 ; $437b: $f8 $e8

jr_0ee_437d:
    ldh a, [$50]                                  ; $437d: $f0 $50
    ld [bc], a                                    ; $437f: $02
    ldh [rNR32], a                                ; $4380: $e0 $1c
    nop                                           ; $4382: $00
    rst $38                                       ; $4383: $ff
    inc de                                        ; $4384: $13
    rlca                                          ; $4385: $07
    ldh a, [rNR33]                                ; $4386: $f0 $1d
    add sp, $01                                   ; $4388: $e8 $01
    ldh a, [$f4]                                  ; $438a: $f0 $f4
    db $ec                                        ; $438c: $ec
    db $fc                                        ; $438d: $fc
    db $ed                                        ; $438e: $ed
    inc b                                         ; $438f: $04
    ldh a, [$09]                                  ; $4390: $f0 $09
    db $fc                                        ; $4392: $fc
    di                                            ; $4393: $f3
    db $fc                                        ; $4394: $fc
    ei                                            ; $4395: $fb
    db $fc                                        ; $4396: $fc
    ld bc, $0102                                  ; $4397: $01 $02 $01
    ld [bc], a                                    ; $439a: $02
    nop                                           ; $439b: $00
    ld [bc], a                                    ; $439c: $02
    ld bc, $0284                                  ; $439d: $01 $84 $02
    inc bc                                        ; $43a0: $03
    ld b, $07                                     ; $43a1: $06 $07
    ld [bc], a                                    ; $43a3: $02
    inc bc                                        ; $43a4: $03
    sub h                                         ; $43a5: $94
    inc b                                         ; $43a6: $04
    rlca                                          ; $43a7: $07
    dec b                                         ; $43a8: $05
    rlca                                          ; $43a9: $07
    ld [$100f], sp                                ; $43aa: $08 $0f $10
    rra                                           ; $43ad: $1f
    ld a, c                                       ; $43ae: $79
    ld a, a                                       ; $43af: $7f
    ld hl, sp-$61                                 ; $43b0: $f8 $9f
    db $fc                                        ; $43b2: $fc
    ld l, a                                       ; $43b3: $6f
    cp $3f                                        ; $43b4: $fe $3f
    ld a, [$ff0f]                                 ; $43b6: $fa $0f $ff
    rst $10                                       ; $43b9: $d7

jr_0ee_43ba:
    ld [bc], a                                    ; $43ba: $02
    rlca                                          ; $43bb: $07
    sbc [hl]                                      ; $43bc: $9e
    rrca                                          ; $43bd: $0f
    ld [$1417], sp                                ; $43be: $08 $17 $14
    scf                                           ; $43c1: $37
    dec [hl]                                      ; $43c2: $35
    ld c, d                                       ; $43c3: $4a
    ld a, a                                       ; $43c4: $7f
    add h                                         ; $43c5: $84
    rst $38                                       ; $43c6: $ff
    and [hl]                                      ; $43c7: $a6
    rst $38                                       ; $43c8: $ff
    ld c, a                                       ; $43c9: $4f
    rst $38                                       ; $43ca: $ff
    adc a                                         ; $43cb: $8f
    rst $38                                       ; $43cc: $ff
    rlca                                          ; $43cd: $07
    cp $93                                        ; $43ce: $fe $93
    cp $6b                                        ; $43d0: $fe $6b
    rst $38                                       ; $43d2: $ff
    rla                                           ; $43d3: $17
    rst $38                                       ; $43d4: $ff
    ld [c], a                                     ; $43d5: $e2
    rst $38                                       ; $43d6: $ff
    dec d                                         ; $43d7: $15
    rst $38                                       ; $43d8: $ff
    ld a, [bc]                                    ; $43d9: $0a
    rst $38                                       ; $43da: $ff
    ld [bc], a                                    ; $43db: $02
    db $e4                                        ; $43dc: $e4
    add a                                         ; $43dd: $87
    sbc [hl]                                      ; $43de: $9e
    ld a, [$ff67]                                 ; $43df: $fa $67 $ff
    ld [hl], b                                    ; $43e2: $70
    rst $18                                       ; $43e3: $df
    ld bc, $ff02                                  ; $43e4: $01 $02 $ff
    add e                                         ; $43e7: $83
    cp e                                          ; $43e8: $bb
    call c, $02d4                                 ; $43e9: $dc $d4 $02
    ret nz                                        ; $43ec: $c0

    adc d                                         ; $43ed: $8a
    ldh [rNR41], a                                ; $43ee: $e0 $20
    ldh a, [$50]                                  ; $43f0: $f0 $50
    db $fc                                        ; $43f2: $fc
    ld a, h                                       ; $43f3: $7c
    cp $fa                                        ; $43f4: $fe $fa
    sbc $da                                       ; $43f6: $de $da
    ld [bc], a                                    ; $43f8: $02
    call nz, $a084                                ; $43f9: $c4 $84 $a0
    ldh [$b8], a                                  ; $43fc: $e0 $b8
    ld hl, sp+$02                                 ; $43fe: $f8 $02
    db $10                                        ; $4400: $10
    add d                                         ; $4401: $82
    jr @+$0a                                      ; $4402: $18 $08

    ld [bc], a                                    ; $4404: $02
    db $10                                        ; $4405: $10
    ld a, [bc]                                    ; $4406: $0a
    nop                                           ; $4407: $00
    ld [bc], a                                    ; $4408: $02
    inc c                                         ; $4409: $0c
    ld [bc], a                                    ; $440a: $02
    ld b, $04                                     ; $440b: $06 $04
    inc bc                                        ; $440d: $03
    add [hl]                                      ; $440e: $86
    rlca                                          ; $440f: $07
    dec b                                         ; $4410: $05
    cp $fa                                        ; $4411: $fe $fa
    db $fc                                        ; $4413: $fc
    ld d, h                                       ; $4414: $54
    ld [bc], a                                    ; $4415: $02
    ld hl, sp+$06                                 ; $4416: $f8 $06
    add b                                         ; $4418: $80
    ld [bc], a                                    ; $4419: $02
    nop                                           ; $441a: $00
    ld [bc], a                                    ; $441b: $02
    ccf                                           ; $441c: $3f
    ld d, $00                                     ; $441d: $16 $00
    add l                                         ; $441f: $85
    ld b, $7f                                     ; $4420: $06 $7f
    rrca                                          ; $4422: $0f
    ld a, a                                       ; $4423: $7f
    rra                                           ; $4424: $1f
    ld [bc], a                                    ; $4425: $02
    ld a, a                                       ; $4426: $7f
    add e                                         ; $4427: $83
    ld h, b                                       ; $4428: $60
    rst $38                                       ; $4429: $ff
    db $fd                                        ; $442a: $fd
    ld [bc], a                                    ; $442b: $02
    ld [bc], a                                    ; $442c: $02
    inc d                                         ; $442d: $14
    nop                                           ; $442e: $00
    ld [bc], a                                    ; $442f: $02
    jr nz, jr_0ee_43ba                            ; $4430: $20 $88

    ccf                                           ; $4432: $3f
    ld a, $3f                                     ; $4433: $3e $3f
    inc hl                                        ; $4435: $23
    ccf                                           ; $4436: $3f
    dec a                                         ; $4437: $3d
    ld [hl], $16                                  ; $4438: $36 $16
    ld [bc], a                                    ; $443a: $02
    jr nz, jr_0ee_4451                            ; $443b: $20 $14

    nop                                           ; $443d: $00
    rst $38                                       ; $443e: $ff
    inc de                                        ; $443f: $13
    rlca                                          ; $4440: $07
    ldh a, [rNR33]                                ; $4441: $f0 $1d
    add sp, $01                                   ; $4443: $e8 $01
    di                                            ; $4445: $f3
    di                                            ; $4446: $f3
    db $ec                                        ; $4447: $ec
    ei                                            ; $4448: $fb
    db $fc                                        ; $4449: $fc
    ei                                            ; $444a: $fb
    db $ec                                        ; $444b: $ec
    inc bc                                        ; $444c: $03
    db $fc                                        ; $444d: $fc
    inc bc                                        ; $444e: $03
    xor $0b                                       ; $444f: $ee $0b

jr_0ee_4451:
    cp $0b                                        ; $4451: $fe $0b
    ld [bc], a                                    ; $4453: $02
    ld bc, $0302                                  ; $4454: $01 $02 $03
    sub [hl]                                      ; $4457: $96
    ld [bc], a                                    ; $4458: $02
    inc bc                                        ; $4459: $03
    ld [bc], a                                    ; $445a: $02
    inc bc                                        ; $445b: $03
    dec b                                         ; $445c: $05
    rlca                                          ; $445d: $07
    inc b                                         ; $445e: $04
    rlca                                          ; $445f: $07
    ld [$3d0f], sp                                ; $4460: $08 $0f $3d
    ccf                                           ; $4463: $3f
    ld a, h                                       ; $4464: $7c
    ld l, a                                       ; $4465: $6f
    cp $b7                                        ; $4466: $fe $b7
    rst $38                                       ; $4468: $ff
    adc a                                         ; $4469: $8f
    db $fd                                        ; $446a: $fd

jr_0ee_446b:
    add a                                         ; $446b: $87
    ld a, a                                       ; $446c: $7f
    ld d, a                                       ; $446d: $57
    ld [bc], a                                    ; $446e: $02
    ccf                                           ; $446f: $3f
    inc b                                         ; $4470: $04
    nop                                           ; $4471: $00
    ld [bc], a                                    ; $4472: $02
    ld bc, $0382                                  ; $4473: $01 $82 $03
    ld [bc], a                                    ; $4476: $02
    ld [bc], a                                    ; $4477: $02
    ld bc, $0b02                                  ; $4478: $01 $02 $0b
    sbc l                                         ; $447b: $9d
    sub h                                         ; $447c: $94
    sbc a                                         ; $447d: $9f
    ld h, c                                       ; $447e: $61
    ld a, a                                       ; $447f: $7f
    sub e                                         ; $4480: $93
    rst $38                                       ; $4481: $ff
    inc hl                                        ; $4482: $23
    rst $38                                       ; $4483: $ff
    ld c, a                                       ; $4484: $4f
    rst $38                                       ; $4485: $ff
    add a                                         ; $4486: $87
    rst $38                                       ; $4487: $ff
    add e                                         ; $4488: $83
    cp $6b                                        ; $4489: $fe $6b
    rst $38                                       ; $448b: $ff
    rra                                           ; $448c: $1f
    rst $38                                       ; $448d: $ff
    ld [hl], e                                    ; $448e: $73
    rst $38                                       ; $448f: $ff
    adc d                                         ; $4490: $8a
    rst $38                                       ; $4491: $ff
    dec b                                         ; $4492: $05
    rst $38                                       ; $4493: $ff
    ld b, $ff                                     ; $4494: $06 $ff
    rrca                                          ; $4496: $0f
    rst $38                                       ; $4497: $ff
    ccf                                           ; $4498: $3f
    ld [bc], a                                    ; $4499: $02
    rst $38                                       ; $449a: $ff
    add e                                         ; $449b: $83
    pop hl                                        ; $449c: $e1
    rst $38                                       ; $449d: $ff
    ld a, [$0502]                                 ; $449e: $fa $02 $05
    inc d                                         ; $44a1: $14
    nop                                           ; $44a2: $00
    ld [bc], a                                    ; $44a3: $02
    ret nz                                        ; $44a4: $c0

    adc c                                         ; $44a5: $89
    ld sp, hl                                     ; $44a6: $f9
    add hl, sp                                    ; $44a7: $39
    rst $20                                       ; $44a8: $e7
    ld a, $f9                                     ; $44a9: $3e $f9
    ld a, a                                       ; $44ab: $7f
    sbc h                                         ; $44ac: $9c
    rst $30                                       ; $44ad: $f7
    ld h, b                                       ; $44ae: $60
    ld [bc], a                                    ; $44af: $02
    rst $38                                       ; $44b0: $ff
    add e                                         ; $44b1: $83
    adc $f7                                       ; $44b2: $ce $f7
    push af                                       ; $44b4: $f5
    ld [bc], a                                    ; $44b5: $02
    ldh [rSC], a                                  ; $44b6: $e0 $02
    ldh a, [$86]                                  ; $44b8: $f0 $86
    cp $3e                                        ; $44ba: $fe $3e
    rst $38                                       ; $44bc: $ff
    ld e, c                                       ; $44bd: $59
    rst $38                                       ; $44be: $ff
    ld a, l                                       ; $44bf: $7d
    ld [bc], a                                    ; $44c0: $02
    ld [c], a                                     ; $44c1: $e2
    ld [bc], a                                    ; $44c2: $02
    ldh a, [$8a]                                  ; $44c3: $f0 $8a
    ld e, b                                       ; $44c5: $58
    ld hl, sp-$02                                 ; $44c6: $f8 $fe
    or $ff                                        ; $44c8: $f6 $ff

jr_0ee_44ca:
    ei                                            ; $44ca: $fb
    rst $38                                       ; $44cb: $ff
    add $ff                                       ; $44cc: $c6 $ff
    ei                                            ; $44ce: $fb
    ld [bc], a                                    ; $44cf: $02
    sbc h                                         ; $44d0: $9c
    ld d, $00                                     ; $44d1: $16 $00
    ld [bc], a                                    ; $44d3: $02
    add b                                         ; $44d4: $80
    ld [bc], a                                    ; $44d5: $02
    ret nz                                        ; $44d6: $c0

    add h                                         ; $44d7: $84
    jr nc, jr_0ee_44ca                            ; $44d8: $30 $f0

    ld [hl], b                                    ; $44da: $70
    ret nc                                        ; $44db: $d0

    ld [bc], a                                    ; $44dc: $02
    ldh [$08], a                                  ; $44dd: $e0 $08
    nop                                           ; $44df: $00
    ld [bc], a                                    ; $44e0: $02
    jr nc, jr_0ee_44eb                            ; $44e1: $30 $08

    jr jr_0ee_446b                                ; $44e3: $18 $86

    jr c, jr_0ee_450f                             ; $44e5: $38 $28

    ldh a, [$d0]                                  ; $44e7: $f0 $d0
    ldh [$a0], a                                  ; $44e9: $e0 $a0

jr_0ee_44eb:
    ld [bc], a                                    ; $44eb: $02
    ret nz                                        ; $44ec: $c0

    inc e                                         ; $44ed: $1c
    nop                                           ; $44ee: $00
    rst $38                                       ; $44ef: $ff
    dec d                                         ; $44f0: $15
    ld [$1df0], sp                                ; $44f1: $08 $f0 $1d
    add sp, $01                                   ; $44f4: $e8 $01
    ld hl, sp-$0e                                 ; $44f6: $f8 $f2
    ld a, [c]                                     ; $44f8: $f2
    ld a, [$02ea]                                 ; $44f9: $fa $ea $02
    ld a, [$e902]                                 ; $44fc: $fa $02 $e9
    ld a, [bc]                                    ; $44ff: $0a
    ld sp, hl                                     ; $4500: $f9
    ld a, [bc]                                    ; $4501: $0a
    add sp, $12                                   ; $4502: $e8 $12
    ld hl, sp+$12                                 ; $4504: $f8 $12
    ld [bc], a                                    ; $4506: $02
    ld e, $8e                                     ; $4507: $1e $8e
    ld a, a                                       ; $4509: $7f
    ld h, c                                       ; $450a: $61
    rst $38                                       ; $450b: $ff
    sub h                                         ; $450c: $94
    rst $38                                       ; $450d: $ff
    cp a                                          ; $450e: $bf

jr_0ee_450f:
    ld sp, hl                                     ; $450f: $f9
    sbc c                                         ; $4510: $99
    rst $38                                       ; $4511: $ff
    add a                                         ; $4512: $87
    ld a, a                                       ; $4513: $7f
    ld b, c                                       ; $4514: $41
    ccf                                           ; $4515: $3f
    dec [hl]                                      ; $4516: $35
    ld [bc], a                                    ; $4517: $02
    rrca                                          ; $4518: $0f
    ld c, $00                                     ; $4519: $0e $00
    ld [bc], a                                    ; $451b: $02
    ld bc, $0297                                  ; $451c: $01 $97 $02
    inc bc                                        ; $451f: $03
    dec c                                         ; $4520: $0d
    rrca                                          ; $4521: $0f
    ld [$100f], sp                                ; $4522: $08 $0f $10
    rra                                           ; $4525: $1f
    jr nz, jr_0ee_4567                            ; $4526: $20 $3f

    ld b, b                                       ; $4528: $40
    ld a, a                                       ; $4529: $7f
    adc $ff                                       ; $452a: $ce $ff
    add c                                         ; $452c: $81
    rst $38                                       ; $452d: $ff
    add b                                         ; $452e: $80
    rst $38                                       ; $452f: $ff
    and b                                         ; $4530: $a0
    rst $38                                       ; $4531: $ff
    ld hl, $b7ff                                  ; $4532: $21 $ff $b7
    ld [bc], a                                    ; $4535: $02
    rst $38                                       ; $4536: $ff
    add e                                         ; $4537: $83
    ldh a, [$cf]                                  ; $4538: $f0 $cf
    jp z, Jump_000_0502                           ; $453a: $ca $02 $05

    ld [bc], a                                    ; $453d: $02
    inc bc                                        ; $453e: $03
    add h                                         ; $453f: $84
    rlca                                          ; $4540: $07
    inc b                                         ; $4541: $04
    rlca                                          ; $4542: $07
    ld b, $02                                     ; $4543: $06 $02
    ld bc, $0b02                                  ; $4545: $01 $02 $0b
    sbc l                                         ; $4548: $9d
    dec c                                         ; $4549: $0d
    rrca                                          ; $454a: $0f
    or b                                          ; $454b: $b0
    cp a                                          ; $454c: $bf
    ld b, b                                       ; $454d: $40
    ld a, a                                       ; $454e: $7f
    and d                                         ; $454f: $a2
    rst $38                                       ; $4550: $ff
    ld b, l                                       ; $4551: $45
    rst $38                                       ; $4552: $ff
    ld b, a                                       ; $4553: $47
    rst $38                                       ; $4554: $ff
    add a                                         ; $4555: $87
    rst $38                                       ; $4556: $ff
    rst $10                                       ; $4557: $d7
    rst $38                                       ; $4558: $ff
    ld a, a                                       ; $4559: $7f
    rst $20                                       ; $455a: $e7
    cp a                                          ; $455b: $bf
    rst $20                                       ; $455c: $e7
    ld a, a                                       ; $455d: $7f
    rst $10                                       ; $455e: $d7
    dec hl                                        ; $455f: $2b
    rst $38                                       ; $4560: $ff
    rst $10                                       ; $4561: $d7
    rst $38                                       ; $4562: $ff
    xor [hl]                                      ; $4563: $ae
    cp $df                                        ; $4564: $fe $df
    ld [bc], a                                    ; $4566: $02

jr_0ee_4567:
    rst $38                                       ; $4567: $ff
    add e                                         ; $4568: $83
    ld hl, sp-$19                                 ; $4569: $f8 $e7
    and $02                                       ; $456b: $e6 $02
    add c                                         ; $456d: $81
    ld [de], a                                    ; $456e: $12
    nop                                           ; $456f: $00
    ld [bc], a                                    ; $4570: $02
    inc de                                        ; $4571: $13
    sub b                                         ; $4572: $90
    db $fd                                        ; $4573: $fd
    rst $38                                       ; $4574: $ff
    sbc $7b                                       ; $4575: $de $7b
    ret nz                                        ; $4577: $c0

    ld a, a                                       ; $4578: $7f
    adc a                                         ; $4579: $8f
    ei                                            ; $457a: $fb
    rra                                           ; $457b: $1f
    rst $38                                       ; $457c: $ff
    ld c, [hl]                                    ; $457d: $4e
    ld a, [c]                                     ; $457e: $f2
    xor h                                         ; $457f: $ac
    db $fc                                        ; $4580: $fc
    ld a, b                                       ; $4581: $78
    ld hl, sp+$02                                 ; $4582: $f8 $02
    ldh a, [rDIV]                                 ; $4584: $f0 $04
    ldh [rSC], a                                  ; $4586: $e0 $02
    ret nz                                        ; $4588: $c0

    inc b                                         ; $4589: $04
    ldh [$86], a                                  ; $458a: $e0 $86
    ldh a, [$d0]                                  ; $458c: $f0 $d0
    ld a, b                                       ; $458e: $78
    ld c, b                                       ; $458f: $48
    ld hl, sp-$58                                 ; $4590: $f8 $a8
    ld [bc], a                                    ; $4592: $02
    ld d, b                                       ; $4593: $50
    ld [bc], a                                    ; $4594: $02
    inc bc                                        ; $4595: $03
    ld [bc], a                                    ; $4596: $02
    cp $82                                        ; $4597: $fe $82
    ld hl, sp-$48                                 ; $4599: $f8 $b8
    ld [bc], a                                    ; $459b: $02
    ret nz                                        ; $459c: $c0

    ld [de], a                                    ; $459d: $12
    nop                                           ; $459e: $00
    ld [bc], a                                    ; $459f: $02
    db $10                                        ; $45a0: $10
    adc d                                         ; $45a1: $8a
    ld hl, sp-$18                                 ; $45a2: $f8 $e8
    db $10                                        ; $45a4: $10
    ldh a, [rNR41]                                ; $45a5: $f0 $20
    ldh [$c0], a                                  ; $45a7: $e0 $c0
    ld b, b                                       ; $45a9: $40
    ret nz                                        ; $45aa: $c0

    ld b, b                                       ; $45ab: $40
    ld a, [de]                                    ; $45ac: $1a
    nop                                           ; $45ad: $00
    ld [bc], a                                    ; $45ae: $02
    add b                                         ; $45af: $80
    jr jr_0ee_45b2                                ; $45b0: $18 $00

jr_0ee_45b2:
    rst $38                                       ; $45b2: $ff
    inc de                                        ; $45b3: $13
    rlca                                          ; $45b4: $07
    ldh a, [rNR33]                                ; $45b5: $f0 $1d
    add sp, $01                                   ; $45b7: $e8 $01
    ld hl, sp-$12                                 ; $45b9: $f8 $ee
    ld hl, sp-$0a                                 ; $45bb: $f8 $f6
    db $f4                                        ; $45bd: $f4
    cp $f1                                        ; $45be: $fe $f1
    ld b, $ee                                     ; $45c0: $06 $ee
    ld c, $fe                                     ; $45c2: $0e $fe
    ld c, $ee                                     ; $45c4: $0e $ee
    ld d, $02                                     ; $45c6: $16 $02
    rlca                                          ; $45c8: $07
    adc [hl]                                      ; $45c9: $8e
    rrca                                          ; $45ca: $0f
    ld [$121f], sp                                ; $45cb: $08 $1f $12
    rra                                           ; $45ce: $1f
    inc de                                        ; $45cf: $13
    rra                                           ; $45d0: $1f
    inc de                                        ; $45d1: $13
    rra                                           ; $45d2: $1f
    db $10                                        ; $45d3: $10
    rrca                                          ; $45d4: $0f
    ld [$0607], sp                                ; $45d5: $08 $07 $06
    ld [bc], a                                    ; $45d8: $02
    ld bc, $000e                                  ; $45d9: $01 $0e $00
    ld [bc], a                                    ; $45dc: $02
    pop bc                                        ; $45dd: $c1
    adc [hl]                                      ; $45de: $8e
    pop af                                        ; $45df: $f1
    ld sp, $8ffe                                  ; $45e0: $31 $fe $8f
    db $fd                                        ; $45e3: $fd
    rst $20                                       ; $45e4: $e7
    dec de                                        ; $45e5: $1b
    rra                                           ; $45e6: $1f
    pop af                                        ; $45e7: $f1
    rst $38                                       ; $45e8: $ff
    ei                                            ; $45e9: $fb
    rra                                           ; $45ea: $1f
    rst $38                                       ; $45eb: $ff
    xor a                                         ; $45ec: $af
    ld [bc], a                                    ; $45ed: $02
    cp $0e                                        ; $45ee: $fe $0e
    nop                                           ; $45f0: $00
    ld [bc], a                                    ; $45f1: $02
    inc bc                                        ; $45f2: $03
    sub e                                         ; $45f3: $93
    inc c                                         ; $45f4: $0c
    rrca                                          ; $45f5: $0f
    jr nc, jr_0ee_4637                            ; $45f6: $30 $3f

    ld b, b                                       ; $45f8: $40
    ld a, a                                       ; $45f9: $7f
    add c                                         ; $45fa: $81
    rst $38                                       ; $45fb: $ff
    db $10                                        ; $45fc: $10
    rst $38                                       ; $45fd: $ff
    adc b                                         ; $45fe: $88

Jump_0ee_45ff:
    rst $38                                       ; $45ff: $ff
    ld a, [bc]                                    ; $4600: $0a
    rst $38                                       ; $4601: $ff
    dec c                                         ; $4602: $0d
    rst $38                                       ; $4603: $ff
    ld a, [de]                                    ; $4604: $1a
    rst $38                                       ; $4605: $ff
    ld a, a                                       ; $4606: $7f
    ld [bc], a                                    ; $4607: $02
    rst $38                                       ; $4608: $ff
    add e                                         ; $4609: $83
    adc a                                         ; $460a: $8f
    db $fc                                        ; $460b: $fc
    xor h                                         ; $460c: $ac
    ld [bc], a                                    ; $460d: $02
    ld d, b                                       ; $460e: $50

jr_0ee_460f:
    inc b                                         ; $460f: $04
    nop                                           ; $4610: $00
    ld [bc], a                                    ; $4611: $02
    inc b                                         ; $4612: $04
    sub c                                         ; $4613: $91
    adc e                                         ; $4614: $8b
    adc a                                         ; $4615: $8f
    pop af                                        ; $4616: $f1
    rst $38                                       ; $4617: $ff
    jr nz, @+$01                                  ; $4618: $20 $ff

    nop                                           ; $461a: $00
    rst $38                                       ; $461b: $ff
    and b                                         ; $461c: $a0
    rst $38                                       ; $461d: $ff
    ld b, d                                       ; $461e: $42
    rst $38                                       ; $461f: $ff
    add a                                         ; $4620: $87
    rst $38                                       ; $4621: $ff
    ld c, a                                       ; $4622: $4f
    rst $38                                       ; $4623: $ff
    add a                                         ; $4624: $87
    ld [bc], a                                    ; $4625: $02
    rst $38                                       ; $4626: $ff
    add l                                         ; $4627: $85
    db $e3                                        ; $4628: $e3
    rst $18                                       ; $4629: $df
    push af                                       ; $462a: $f5
    rst $38                                       ; $462b: $ff
    rst $30                                       ; $462c: $f7
    ld [bc], a                                    ; $462d: $02
    cp $82                                        ; $462e: $fe $82
    ldh a, [$d0]                                  ; $4630: $f0 $d0
    inc b                                         ; $4632: $04
    jr nz, @-$6e                                  ; $4633: $20 $90

    ld [hl], c                                    ; $4635: $71
    ld d, c                                       ; $4636: $51

jr_0ee_4637:
    rst $38                                       ; $4637: $ff
    adc a                                         ; $4638: $8f
    ld a, e                                       ; $4639: $7b
    ld c, [hl]                                    ; $463a: $4e
    ldh a, [rIE]                                  ; $463b: $f0 $ff
    ld hl, $43ff                                  ; $463d: $21 $ff $43
    rst $38                                       ; $4640: $ff
    rla                                           ; $4641: $17
    db $fc                                        ; $4642: $fc
    dec sp                                        ; $4643: $3b
    rst $38                                       ; $4644: $ff
    ld [bc], a                                    ; $4645: $02
    db $fc                                        ; $4646: $fc
    ld [bc], a                                    ; $4647: $02
    ldh a, [rSC]                                  ; $4648: $f0 $02
    ret nz                                        ; $464a: $c0

    inc b                                         ; $464b: $04
    add b                                         ; $464c: $80
    ld [bc], a                                    ; $464d: $02
    ret nz                                        ; $464e: $c0

    add h                                         ; $464f: $84
    ldh [rNR41], a                                ; $4650: $e0 $20
    ldh a, [$d0]                                  ; $4652: $f0 $d0
    ld [bc], a                                    ; $4654: $02
    jr nz, jr_0ee_4673                            ; $4655: $20 $1c

    nop                                           ; $4657: $00
    ld [bc], a                                    ; $4658: $02
    add b                                         ; $4659: $80
    adc h                                         ; $465a: $8c
    call nz, $fe44                                ; $465b: $c4 $44 $fe
    ld a, [$fc84]                                 ; $465e: $fa $84 $fc
    ld [$f0f8], sp                                ; $4661: $08 $f8 $f0
    ld d, b                                       ; $4664: $50
    or b                                          ; $4665: $b0
    sub b                                         ; $4666: $90
    ld [bc], a                                    ; $4667: $02
    add b                                         ; $4668: $80
    stop                                          ; $4669: $10 $00
    rst $38                                       ; $466b: $ff
    ld de, $f006                                  ; $466c: $11 $06 $f0
    dec e                                         ; $466f: $1d
    add sp, $01                                   ; $4670: $e8 $01
    ld a, [c]                                     ; $4672: $f2

jr_0ee_4673:
    ldh a, [$f2]                                  ; $4673: $f0 $f2
    ld hl, sp-$0e                                 ; $4675: $f8 $f2
    nop                                           ; $4677: $00
    ld a, [c]                                     ; $4678: $f2
    ld [$10f2], sp                                ; $4679: $08 $f2 $10
    ld a, [c]                                     ; $467c: $f2
    ld d, $0e                                     ; $467d: $16 $0e
    nop                                           ; $467f: $00
    ld [bc], a                                    ; $4680: $02
    jr c, jr_0ee_460f                             ; $4681: $38 $8c

    ld a, a                                       ; $4683: $7f
    ld b, a                                       ; $4684: $47
    rst $38                                       ; $4685: $ff
    or b                                          ; $4686: $b0
    rst $38                                       ; $4687: $ff
    sbc [hl]                                      ; $4688: $9e
    rst $38                                       ; $4689: $ff
    add a                                         ; $468a: $87
    ld a, a                                       ; $468b: $7f
    ld b, b                                       ; $468c: $40
    ccf                                           ; $468d: $3f
    dec [hl]                                      ; $468e: $35
    ld [bc], a                                    ; $468f: $02
    rrca                                          ; $4690: $0f
    inc c                                         ; $4691: $0c
    nop                                           ; $4692: $00
    ld [bc], a                                    ; $4693: $02
    ld bc, $0692                                  ; $4694: $01 $92 $06
    rlca                                          ; $4697: $07
    inc b                                         ; $4698: $04
    rlca                                          ; $4699: $07
    ld a, [bc]                                    ; $469a: $0a
    rrca                                          ; $469b: $0f
    db $f4                                        ; $469c: $f4
    rst $38                                       ; $469d: $ff
    db $ec                                        ; $469e: $ec
    ld a, a                                       ; $469f: $7f
    call nz, $edff                                ; $46a0: $c4 $ff $ed
    ld a, a                                       ; $46a3: $7f
    rst $38                                       ; $46a4: $ff
    ld e, [hl]                                    ; $46a5: $5e
    ei                                            ; $46a6: $fb
    ld a, [$0102]                                 ; $46a7: $fa $02 $01
    ld [bc], a                                    ; $46aa: $02
    nop                                           ; $46ab: $00
    ld [bc], a                                    ; $46ac: $02
    ld [bc], a                                    ; $46ad: $02
    sub e                                         ; $46ae: $93
    dec b                                         ; $46af: $05
    rlca                                          ; $46b0: $07
    add hl, sp                                    ; $46b1: $39
    ccf                                           ; $46b2: $3f
    ldh [rIE], a                                  ; $46b3: $e0 $ff
    nop                                           ; $46b5: $00
    rst $38                                       ; $46b6: $ff
    ld [bc], a                                    ; $46b7: $02
    rst $38                                       ; $46b8: $ff
    ld h, c                                       ; $46b9: $61
    rst $38                                       ; $46ba: $ff
    ld [hl+], a                                   ; $46bb: $22
    rst $38                                       ; $46bc: $ff
    ld [hl], $ff                                  ; $46bd: $36 $ff
    inc l                                         ; $46bf: $2c
    rst $38                                       ; $46c0: $ff
    or $04                                        ; $46c1: $f6 $04
    rst $38                                       ; $46c3: $ff
    add e                                         ; $46c4: $83
    ccf                                           ; $46c5: $3f
    ldh a, [$b0]                                  ; $46c6: $f0 $b0
    ld [bc], a                                    ; $46c8: $02
    ld b, b                                       ; $46c9: $40
    ld [bc], a                                    ; $46ca: $02
    nop                                           ; $46cb: $00
    ld [bc], a                                    ; $46cc: $02
    ld h, h                                       ; $46cd: $64
    sbc b                                         ; $46ce: $98
    sbc a                                         ; $46cf: $9f
    rst $38                                       ; $46d0: $ff
    inc b                                         ; $46d1: $04
    rst $38                                       ; $46d2: $ff
    ld bc, $c0ff                                  ; $46d3: $01 $ff $c0
    rst $38                                       ; $46d6: $ff
    add c                                         ; $46d7: $81
    rst $38                                       ; $46d8: $ff
    rlca                                          ; $46d9: $07
    rst $38                                       ; $46da: $ff
    adc a                                         ; $46db: $8f
    rst $38                                       ; $46dc: $ff
    ccf                                           ; $46dd: $3f
    rst $38                                       ; $46de: $ff
    inc a                                         ; $46df: $3c
    db $fc                                        ; $46e0: $fc
    sbc $fe                                       ; $46e1: $de $fe
    rst $38                                       ; $46e3: $ff
    add hl, de                                    ; $46e4: $19
    rst $38                                       ; $46e5: $ff
    ld l, [hl]                                    ; $46e6: $6e
    ld [bc], a                                    ; $46e7: $02
    sub c                                         ; $46e8: $91
    ld [bc], a                                    ; $46e9: $02
    nop                                           ; $46ea: $00
    ld [bc], a                                    ; $46eb: $02
    ld h, b                                       ; $46ec: $60
    adc h                                         ; $46ed: $8c
    db $fc                                        ; $46ee: $fc
    sbc h                                         ; $46ef: $9c
    ei                                            ; $46f0: $fb
    adc a                                         ; $46f1: $8f
    db $f4                                        ; $46f2: $f4
    rst $18                                       ; $46f3: $df
    daa                                           ; $46f4: $27
    rst $38                                       ; $46f5: $ff
    ld b, b                                       ; $46f6: $40
    rst $38                                       ; $46f7: $ff
    xor a                                         ; $46f8: $af
    ei                                            ; $46f9: $fb
    ld [bc], a                                    ; $46fa: $02
    db $fc                                        ; $46fb: $fc
    ld [bc], a                                    ; $46fc: $02
    ret nz                                        ; $46fd: $c0

    ld [$0200], sp                                ; $46fe: $08 $00 $02
    add b                                         ; $4701: $80
    ld b, $00                                     ; $4702: $06 $00
    ld [bc], a                                    ; $4704: $02
    db $10                                        ; $4705: $10
    adc h                                         ; $4706: $8c
    jr c, jr_0ee_4731                             ; $4707: $38 $28

    ld a, [de]                                    ; $4709: $1a
    ld a, [hl-]                                   ; $470a: $3a
    rlca                                          ; $470b: $07
    dec a                                         ; $470c: $3d
    ld [bc], a                                    ; $470d: $02
    ld a, $3c                                     ; $470e: $3e $3c
    inc l                                         ; $4710: $2c
    jr nc, jr_0ee_4733                            ; $4711: $30 $20

    stop                                          ; $4713: $10 $00
    rst $38                                       ; $4715: $ff
    ld de, $f006                                  ; $4716: $11 $06 $f0
    dec e                                         ; $4719: $1d
    add sp, $01                                   ; $471a: $e8 $01
    ld a, [$f4f1]                                 ; $471c: $fa $f1 $f4
    ld sp, hl                                     ; $471f: $f9
    pop af                                        ; $4720: $f1
    ld bc, $09f0                                  ; $4721: $01 $f0 $09
    pop af                                        ; $4724: $f1
    ld c, $00                                     ; $4725: $0e $00
    ld a, [$3e02]                                 ; $4727: $fa $02 $3e
    adc d                                         ; $472a: $8a
    ld a, a                                       ; $472b: $7f
    ld b, a                                       ; $472c: $47
    rst $38                                       ; $472d: $ff
    or d                                          ; $472e: $b2
    rst $38                                       ; $472f: $ff
    sbc a                                         ; $4730: $9f

jr_0ee_4731:
    rst $38                                       ; $4731: $ff
    add b                                         ; $4732: $80

jr_0ee_4733:
    ld a, a                                       ; $4733: $7f
    ld d, l                                       ; $4734: $55
    ld [bc], a                                    ; $4735: $02
    ccf                                           ; $4736: $3f
    ld [de], a                                    ; $4737: $12
    nop                                           ; $4738: $00
    ld [bc], a                                    ; $4739: $02
    inc bc                                        ; $473a: $03
    sub e                                         ; $473b: $93
    inc c                                         ; $473c: $0c
    rrca                                          ; $473d: $0f
    ld [$110f], sp                                ; $473e: $08 $0f $11
    rra                                           ; $4741: $1f
    jr nz, jr_0ee_4783                            ; $4742: $20 $3f

    ld h, a                                       ; $4744: $67
    ld a, a                                       ; $4745: $7f
    ld b, b                                       ; $4746: $40
    ld a, a                                       ; $4747: $7f
    ret nz                                        ; $4748: $c0

    rst $38                                       ; $4749: $ff
    ret nc                                        ; $474a: $d0

    rst $38                                       ; $474b: $ff
    sub b                                         ; $474c: $90
    rst $38                                       ; $474d: $ff
    db $db                                        ; $474e: $db
    ld [bc], a                                    ; $474f: $02
    rst $38                                       ; $4750: $ff
    add e                                         ; $4751: $83
    ld a, b                                       ; $4752: $78
    rst $20                                       ; $4753: $e7
    push hl                                       ; $4754: $e5
    ld [bc], a                                    ; $4755: $02
    ld [bc], a                                    ; $4756: $02
    inc b                                         ; $4757: $04
    nop                                           ; $4758: $00
    ld [bc], a                                    ; $4759: $02
    inc de                                        ; $475a: $13
    sub a                                         ; $475b: $97
    ld e, [hl]                                    ; $475c: $5e
    ld e, a                                       ; $475d: $5f
    ldh [rIE], a                                  ; $475e: $e0 $ff
    nop                                           ; $4760: $00
    rst $38                                       ; $4761: $ff
    jr nz, @+$01                                  ; $4762: $20 $ff

    ld b, c                                       ; $4764: $41
    rst $38                                       ; $4765: $ff
    add a                                         ; $4766: $87
    rst $38                                       ; $4767: $ff
    adc a                                         ; $4768: $8f
    rst $38                                       ; $4769: $ff
    ld b, e                                       ; $476a: $43
    rst $38                                       ; $476b: $ff
    or a                                          ; $476c: $b7
    rst $38                                       ; $476d: $ff
    ld l, a                                       ; $476e: $6f
    ld hl, sp+$57                                 ; $476f: $f8 $57
    ld sp, hl                                     ; $4771: $f9
    rst $28                                       ; $4772: $ef
    ld [bc], a                                    ; $4773: $02
    rst $38                                       ; $4774: $ff
    add l                                         ; $4775: $85
    ld sp, hl                                     ; $4776: $f9
    rst $30                                       ; $4777: $f7
    halt                                          ; $4778: $76
    pop bc                                        ; $4779: $c1
    ld b, c                                       ; $477a: $41
    ld [bc], a                                    ; $477b: $02
    ldh [$89], a                                  ; $477c: $e0 $89
    db $fc                                        ; $477e: $fc
    inc e                                         ; $477f: $1c
    di                                            ; $4780: $f3
    sbc a                                         ; $4781: $9f
    db $fc                                        ; $4782: $fc

jr_0ee_4783:
    cp a                                          ; $4783: $bf
    ld c, [hl]                                    ; $4784: $4e
    ei                                            ; $4785: $fb
    or b                                          ; $4786: $b0
    ld [bc], a                                    ; $4787: $02
    rst $38                                       ; $4788: $ff
    add e                                         ; $4789: $83
    rst $20                                       ; $478a: $e7
    ei                                            ; $478b: $fb
    ld a, [$8002]                                 ; $478c: $fa $02 $80
    ld [bc], a                                    ; $478f: $02
    call nz, $cc02                                ; $4790: $c4 $02 $cc
    ld [bc], a                                    ; $4793: $02
    db $ec                                        ; $4794: $ec
    add d                                         ; $4795: $82
    ld hl, sp+$78                                 ; $4796: $f8 $78
    ld [bc], a                                    ; $4798: $02
    ld hl, sp-$7c                                 ; $4799: $f8 $84
    inc a                                         ; $479b: $3c
    inc h                                         ; $479c: $24
    sbc [hl]                                      ; $479d: $9e
    sbc d                                         ; $479e: $9a
    ld [bc], a                                    ; $479f: $02
    db $10                                        ; $47a0: $10
    add d                                         ; $47a1: $82
    jr @+$0a                                      ; $47a2: $18 $08

    ld [bc], a                                    ; $47a4: $02
    inc e                                         ; $47a5: $1c
    add [hl]                                      ; $47a6: $86
    ld [bc], a                                    ; $47a7: $02
    ld e, $07                                     ; $47a8: $1e $07
    dec e                                         ; $47aa: $1d
    ld e, $0e                                     ; $47ab: $1e $0e
    ld [bc], a                                    ; $47ad: $02
    db $10                                        ; $47ae: $10
    stop                                          ; $47af: $10 $00
    ld [bc], a                                    ; $47b1: $02
    add b                                         ; $47b2: $80
    ld [bc], a                                    ; $47b3: $02
    nop                                           ; $47b4: $00
    ld [bc], a                                    ; $47b5: $02
    ld bc, $001c                                  ; $47b6: $01 $1c $00
    rst $38                                       ; $47b9: $ff
    inc de                                        ; $47ba: $13
    rlca                                          ; $47bb: $07
    ldh a, [rNR33]                                ; $47bc: $f0 $1d
    add sp, $01                                   ; $47be: $e8 $01
    ld a, [$f1f0]                                 ; $47c0: $fa $f0 $f1
    ld hl, sp-$13                                 ; $47c3: $f8 $ed
    nop                                           ; $47c5: $00
    db $fd                                        ; $47c6: $fd
    nop                                           ; $47c7: $00
    xor $08                                       ; $47c8: $ee $08
    cp $08                                        ; $47ca: $fe $08
    ldh a, [rNR10]                                ; $47cc: $f0 $10
    ld [bc], a                                    ; $47ce: $02
    rrca                                          ; $47cf: $0f
    adc d                                         ; $47d0: $8a
    rra                                           ; $47d1: $1f
    ld de, $2c3f                                  ; $47d2: $11 $3f $2c
    ccf                                           ; $47d5: $3f
    daa                                           ; $47d6: $27
    ccf                                           ; $47d7: $3f
    jr nz, jr_0ee_47f9                            ; $47d8: $20 $1f

    ld a, [de]                                    ; $47da: $1a
    ld [bc], a                                    ; $47db: $02
    rrca                                          ; $47dc: $0f
    ld [de], a                                    ; $47dd: $12
    nop                                           ; $47de: $00
    ld [bc], a                                    ; $47df: $02
    inc b                                         ; $47e0: $04
    ld [bc], a                                    ; $47e1: $02
    inc bc                                        ; $47e2: $03
    sbc d                                         ; $47e3: $9a
    inc b                                         ; $47e4: $04
    rlca                                          ; $47e5: $07
    ld [$180f], sp                                ; $47e6: $08 $0f $18
    rra                                           ; $47e9: $1f
    inc de                                        ; $47ea: $13
    rra                                           ; $47eb: $1f
    jr nz, @+$41                                  ; $47ec: $20 $3f

    ld hl, $273f                                  ; $47ee: $21 $3f $27
    ccf                                           ; $47f1: $3f
    xor b                                         ; $47f2: $a8
    cp a                                          ; $47f3: $bf
    ret nz                                        ; $47f4: $c0

    rst $38                                       ; $47f5: $ff
    ret nz                                        ; $47f6: $c0

    ld a, a                                       ; $47f7: $7f
    ret c                                         ; $47f8: $d8

jr_0ee_47f9:
    rst $38                                       ; $47f9: $ff
    bit 7, a                                      ; $47fa: $cb $7f
    rst $38                                       ; $47fc: $ff
    db $fc                                        ; $47fd: $fc
    ld [bc], a                                    ; $47fe: $02
    ei                                            ; $47ff: $fb
    ld [bc], a                                    ; $4800: $02
    inc bc                                        ; $4801: $03
    sbc a                                         ; $4802: $9f
    rlca                                          ; $4803: $07
    inc b                                         ; $4804: $04
    rlca                                          ; $4805: $07
    inc b                                         ; $4806: $04
    ld e, a                                       ; $4807: $5f
    ld e, [hl]                                    ; $4808: $5e
    pop hl                                        ; $4809: $e1
    rst $38                                       ; $480a: $ff
    ld [bc], a                                    ; $480b: $02
    rst $38                                       ; $480c: $ff
    ld b, e                                       ; $480d: $43
    rst $38                                       ; $480e: $ff
    add l                                         ; $480f: $85
    rst $38                                       ; $4810: $ff
    adc e                                         ; $4811: $8b
    rst $38                                       ; $4812: $ff
    rrca                                          ; $4813: $0f
    rst $38                                       ; $4814: $ff
    add a                                         ; $4815: $87
    rst $38                                       ; $4816: $ff
    ld l, a                                       ; $4817: $6f
    pop af                                        ; $4818: $f1
    ld e, a                                       ; $4819: $5f
    ld a, [c]                                     ; $481a: $f2
    xor a                                         ; $481b: $af
    ei                                            ; $481c: $fb
    ld d, [hl]                                    ; $481d: $56
    cp $6d                                        ; $481e: $fe $6d
    rst $38                                       ; $4820: $ff
    ld e, a                                       ; $4821: $5f
    ld [bc], a                                    ; $4822: $02
    rst $38                                       ; $4823: $ff
    add l                                         ; $4824: $85
    ld hl, sp-$01                                 ; $4825: $f8 $ff
    ccf                                           ; $4827: $3f
    pop af                                        ; $4828: $f1
    ld d, c                                       ; $4829: $51
    ld [bc], a                                    ; $482a: $02
    and b                                         ; $482b: $a0
    ld d, $00                                     ; $482c: $16 $00
    ld [bc], a                                    ; $482e: $02
    or d                                          ; $482f: $b2
    adc h                                         ; $4830: $8c
    rst $08                                       ; $4831: $cf
    ld a, l                                       ; $4832: $7d
    or e                                          ; $4833: $b3
    rst $38                                       ; $4834: $ff
    jr c, @-$0f                                   ; $4835: $38 $ef

    nop                                           ; $4837: $00
    rst $38                                       ; $4838: $ff
    ld a, a                                       ; $4839: $7f
    db $dd                                        ; $483a: $dd
    and $e4                                       ; $483b: $e6 $e4
    ld [bc], a                                    ; $483d: $02
    add b                                         ; $483e: $80
    ld [bc], a                                    ; $483f: $02
    nop                                           ; $4840: $00
    ld [bc], a                                    ; $4841: $02
    add h                                         ; $4842: $84
    ld [bc], a                                    ; $4843: $02
    add $02                                       ; $4844: $c6 $02
    db $e3                                        ; $4846: $e3
    adc h                                         ; $4847: $8c
    di                                            ; $4848: $f3
    sub e                                         ; $4849: $93
    ld [hl], e                                    ; $484a: $73
    ld d, e                                       ; $484b: $53
    and a                                         ; $484c: $a7
    and l                                         ; $484d: $a5
    cp $fa                                        ; $484e: $fe $fa
    db $fc                                        ; $4850: $fc
    call nc, Call_0ee_78f8                        ; $4851: $d4 $f8 $78
    ld [bc], a                                    ; $4854: $02
    add b                                         ; $4855: $80
    ld a, [de]                                    ; $4856: $1a
    nop                                           ; $4857: $00
    ld [bc], a                                    ; $4858: $02
    ld b, b                                       ; $4859: $40
    add h                                         ; $485a: $84
    ldh [$a0], a                                  ; $485b: $e0 $a0
    ld b, b                                       ; $485d: $40
    ret nz                                        ; $485e: $c0

    ld [bc], a                                    ; $485f: $02
    add b                                         ; $4860: $80
    jr jr_0ee_4863                                ; $4861: $18 $00

jr_0ee_4863:
    rst $38                                       ; $4863: $ff
    inc de                                        ; $4864: $13
    rlca                                          ; $4865: $07
    ldh a, [rNR33]                                ; $4866: $f0 $1d
    add sp, $01                                   ; $4868: $e8 $01
    ldh a, [$f3]                                  ; $486a: $f0 $f3
    db $ed                                        ; $486c: $ed
    ei                                            ; $486d: $fb
    db $ed                                        ; $486e: $ed
    inc bc                                        ; $486f: $03
    ldh a, [rTAC]                                 ; $4870: $f0 $07
    db $fd                                        ; $4872: $fd
    push af                                       ; $4873: $f5
    db $fd                                        ; $4874: $fd
    db $fd                                        ; $4875: $fd
    db $fd                                        ; $4876: $fd
    nop                                           ; $4877: $00
    ld [bc], a                                    ; $4878: $02
    ld bc, $0002                                  ; $4879: $01 $02 $00
    ld [bc], a                                    ; $487c: $02
    ld bc, $029a                                  ; $487d: $01 $9a $02
    inc bc                                        ; $4880: $03
    ld b, $07                                     ; $4881: $06 $07
    dec b                                         ; $4883: $05
    rlca                                          ; $4884: $07
    dec b                                         ; $4885: $05
    rlca                                          ; $4886: $07
    ld a, [bc]                                    ; $4887: $0a
    rrca                                          ; $4888: $0f
    ld [$100f], sp                                ; $4889: $08 $0f $10
    rra                                           ; $488c: $1f
    dec sp                                        ; $488d: $3b
    ccf                                           ; $488e: $3f
    ld a, b                                       ; $488f: $78
    ld a, a                                       ; $4890: $7f
    db $fc                                        ; $4891: $fc
    xor a                                         ; $4892: $af
    cp $9f                                        ; $4893: $fe $9f
    cp $8b                                        ; $4895: $fe $8b
    ld a, a                                       ; $4897: $7f
    ld c, a                                       ; $4898: $4f
    ld [bc], a                                    ; $4899: $02
    inc bc                                        ; $489a: $03
    sbc [hl]                                      ; $489b: $9e
    rlca                                          ; $489c: $07
    inc b                                         ; $489d: $04
    inc de                                        ; $489e: $13
    ld [de], a                                    ; $489f: $12
    cpl                                           ; $48a0: $2f
    ld a, $c1                                     ; $48a1: $3e $c1
    rst $38                                       ; $48a3: $ff
    ld [hl+], a                                   ; $48a4: $22
    rst $38                                       ; $48a5: $ff
    ld b, a                                       ; $48a6: $47
    rst $38                                       ; $48a7: $ff
    sbc a                                         ; $48a8: $9f
    rst $38                                       ; $48a9: $ff
    rrca                                          ; $48aa: $0f
    rst $38                                       ; $48ab: $ff
    rlca                                          ; $48ac: $07
    db $fc                                        ; $48ad: $fc
    rst $10                                       ; $48ae: $d7
    cp $3f                                        ; $48af: $fe $3f
    cp $e7                                        ; $48b1: $fe $e7
    rst $38                                       ; $48b3: $ff
    dec d                                         ; $48b4: $15
    rst $38                                       ; $48b5: $ff
    ld a, [bc]                                    ; $48b6: $0a
    rst $38                                       ; $48b7: $ff
    dec c                                         ; $48b8: $0d
    rst $38                                       ; $48b9: $ff
    ld [bc], a                                    ; $48ba: $02
    add b                                         ; $48bb: $80
    adc [hl]                                      ; $48bc: $8e
    ld a, [c]                                     ; $48bd: $f2
    ld [hl], d                                    ; $48be: $72
    rst $08                                       ; $48bf: $cf
    ld a, l                                       ; $48c0: $7d
    sub e                                         ; $48c1: $93
    rst $38                                       ; $48c2: $ff
    jr c, @+$01                                   ; $48c3: $38 $ff

    add b                                         ; $48c5: $80
    rst $38                                       ; $48c6: $ff
    cp l                                          ; $48c7: $bd
    rst $38                                       ; $48c8: $ff
    ld l, [hl]                                    ; $48c9: $6e
    ld [$e002], a                                 ; $48ca: $ea $02 $e0
    add [hl]                                      ; $48cd: $86
    db $fc                                        ; $48ce: $fc
    ld a, h                                       ; $48cf: $7c
    cp $b2                                        ; $48d0: $fe $b2
    cp $fa                                        ; $48d2: $fe $fa
    ld [bc], a                                    ; $48d4: $02
    call nz, $e002                                ; $48d5: $c4 $02 $e0
    add h                                         ; $48d8: $84
    or b                                          ; $48d9: $b0
    ldh a, [$fc]                                  ; $48da: $f0 $fc
    db $ec                                        ; $48dc: $ec
    ld [bc], a                                    ; $48dd: $02
    ld [$0681], sp                                ; $48de: $08 $81 $06
    ld [bc], a                                    ; $48e1: $02
    ld c, $81                                     ; $48e2: $0e $81
    ld a, [bc]                                    ; $48e4: $0a
    ld [bc], a                                    ; $48e5: $02
    inc c                                         ; $48e6: $0c
    ld b, $00                                     ; $48e7: $06 $00
    ld [bc], a                                    ; $48e9: $02
    ld b, $08                                     ; $48ea: $06 $08
    inc bc                                        ; $48ec: $03
    adc e                                         ; $48ed: $8b
    rlca                                          ; $48ee: $07
    dec b                                         ; $48ef: $05
    cp $7a                                        ; $48f0: $fe $7a
    db $fc                                        ; $48f2: $fc
    call nc, Call_0ee_78f8                        ; $48f3: $d4 $f8 $78
    nop                                           ; $48f6: $00
    inc bc                                        ; $48f7: $03
    ld bc, $0303                                  ; $48f8: $01 $03 $03
    ld [bc], a                                    ; $48fb: $02
    rst $38                                       ; $48fc: $ff
    jr jr_0ee_48ff                                ; $48fd: $18 $00

jr_0ee_48ff:
    add c                                         ; $48ff: $81
    ccf                                           ; $4900: $3f
    ld [bc], a                                    ; $4901: $02
    rst $38                                       ; $4902: $ff
    add l                                         ; $4903: $85
    cp $ff                                        ; $4904: $fe $ff
    add a                                         ; $4906: $87
    cp $ea                                        ; $4907: $fe $ea
    ld [bc], a                                    ; $4909: $02
    inc d                                         ; $490a: $14
    ld d, $00                                     ; $490b: $16 $00
    inc bc                                        ; $490d: $03
    ld b, $81                                     ; $490e: $06 $81
    nop                                           ; $4910: $00
    ld [bc], a                                    ; $4911: $02
    ld b, $02                                     ; $4912: $06 $02
    inc bc                                        ; $4914: $03
    jr jr_0ee_4917                                ; $4915: $18 $00

jr_0ee_4917:
    rst $38                                       ; $4917: $ff
    ld de, $f006                                  ; $4918: $11 $06 $f0
    dec e                                         ; $491b: $1d
    add sp, $01                                   ; $491c: $e8 $01
    di                                            ; $491e: $f3
    ld a, [c]                                     ; $491f: $f2
    jp hl                                         ; $4920: $e9


    ld a, [$faf9]                                 ; $4921: $fa $f9 $fa
    add sp, $02                                   ; $4924: $e8 $02
    ld hl, sp+$02                                 ; $4926: $f8 $02
    rst $30                                       ; $4928: $f7
    ld a, [bc]                                    ; $4929: $0a
    ld [bc], a                                    ; $492a: $02
    ld bc, $0302                                  ; $492b: $01 $02 $03
    sub [hl]                                      ; $492e: $96
    ld [bc], a                                    ; $492f: $02
    inc bc                                        ; $4930: $03
    inc b                                         ; $4931: $04
    rlca                                          ; $4932: $07
    inc b                                         ; $4933: $04
    rlca                                          ; $4934: $07
    inc b                                         ; $4935: $04
    rlca                                          ; $4936: $07
    ld [$190f], sp                                ; $4937: $08 $0f $19
    rra                                           ; $493a: $1f
    inc a                                         ; $493b: $3c
    ccf                                           ; $493c: $3f
    ld a, h                                       ; $493d: $7c
    ld d, a                                       ; $493e: $57
    ld a, [hl]                                    ; $493f: $7e
    ld c, a                                       ; $4940: $4f
    ld a, a                                       ; $4941: $7f
    ld b, l                                       ; $4942: $45
    ccf                                           ; $4943: $3f
    daa                                           ; $4944: $27
    ld [bc], a                                    ; $4945: $02
    rra                                           ; $4946: $1f
    inc b                                         ; $4947: $04
    nop                                           ; $4948: $00
    ld [bc], a                                    ; $4949: $02
    jr @-$55                                      ; $494a: $18 $a9

    ccf                                           ; $494c: $3f
    daa                                           ; $494d: $27
    ld a, l                                       ; $494e: $7d
    ld b, a                                       ; $494f: $47
    inc a                                         ; $4950: $3c
    daa                                           ; $4951: $27
    ld e, b                                       ; $4952: $58
    ld e, a                                       ; $4953: $5f
    jr nc, @+$41                                  ; $4954: $30 $3f

    inc [hl]                                      ; $4956: $34
    ccf                                           ; $4957: $3f
    jp z, Jump_0ee_45ff                           ; $4958: $ca $ff $45

    ld a, a                                       ; $495b: $7f
    sbc a                                         ; $495c: $9f
    rst $38                                       ; $495d: $ff
    ccf                                           ; $495e: $3f
    rst $20                                       ; $495f: $e7
    ld a, a                                       ; $4960: $7f
    rst $00                                       ; $4961: $c7
    cp a                                          ; $4962: $bf
    rst $28                                       ; $4963: $ef
    ld e, e                                       ; $4964: $5b
    rst $38                                       ; $4965: $ff
    ld h, a                                       ; $4966: $67
    rst $38                                       ; $4967: $ff
    ld a, [bc]                                    ; $4968: $0a
    rst $38                                       ; $4969: $ff
    ld h, l                                       ; $496a: $65
    rst $38                                       ; $496b: $ff
    sbc d                                         ; $496c: $9a
    rst $38                                       ; $496d: $ff
    dec c                                         ; $496e: $0d
    rst $38                                       ; $496f: $ff
    ld c, $ff                                     ; $4970: $0e $ff
    rrca                                          ; $4972: $0f
    rst $38                                       ; $4973: $ff
    rra                                           ; $4974: $1f
    ld [bc], a                                    ; $4975: $02
    rst $38                                       ; $4976: $ff
    add e                                         ; $4977: $83
    pop hl                                        ; $4978: $e1
    rst $38                                       ; $4979: $ff
    ld a, [$0502]                                 ; $497a: $fa $02 $05
    ld c, $00                                     ; $497d: $0e $00
    ld [bc], a                                    ; $497f: $02
    inc b                                         ; $4980: $04
    adc c                                         ; $4981: $89
    cp $fa                                        ; $4982: $fe $fa
    ld [bc], a                                    ; $4984: $02
    cp $c4                                        ; $4985: $fe $c4
    db $fc                                        ; $4987: $fc
    sbc b                                         ; $4988: $98
    add sp, $70                                   ; $4989: $e8 $70
    ld [bc], a                                    ; $498b: $02
    ldh a, [$83]                                  ; $498c: $f0 $83
    sub b                                         ; $498e: $90
    jr nz, @-$1e                                  ; $498f: $20 $e0

    ld b, $c0                                     ; $4991: $06 $c0
    ld [bc], a                                    ; $4993: $02
    call z, $de84                                 ; $4994: $cc $84 $de
    jp nc, $f2fe                                  ; $4997: $d2 $fe $f2

    ld [bc], a                                    ; $499a: $02
    db $fc                                        ; $499b: $fc
    ld [bc], a                                    ; $499c: $02
    ldh a, [rSC]                                  ; $499d: $f0 $02
    ldh [$86], a                                  ; $499f: $e0 $86
    ld h, b                                       ; $49a1: $60
    ldh [$d0], a                                  ; $49a2: $e0 $d0
    ldh a, [$d8]                                  ; $49a4: $f0 $d8
    ld hl, sp+$02                                 ; $49a6: $f8 $02
    cp $86                                        ; $49a8: $fe $86
    rst $38                                       ; $49aa: $ff
    ei                                            ; $49ab: $fb
    rst $38                                       ; $49ac: $ff
    push bc                                       ; $49ad: $c5
    rst $38                                       ; $49ae: $ff
    rst $30                                       ; $49af: $f7
    ld [bc], a                                    ; $49b0: $02
    adc b                                         ; $49b1: $88
    ld c, $00                                     ; $49b2: $0e $00
    ld [bc], a                                    ; $49b4: $02
    db $10                                        ; $49b5: $10
    ld [bc], a                                    ; $49b6: $02
    jr jr_0ee_49bf                                ; $49b7: $18 $06

    inc c                                         ; $49b9: $0c
    add [hl]                                      ; $49ba: $86
    inc e                                         ; $49bb: $1c
    inc d                                         ; $49bc: $14
    ld hl, sp-$18                                 ; $49bd: $f8 $e8

jr_0ee_49bf:
    ldh a, [$50]                                  ; $49bf: $f0 $50
    ld [bc], a                                    ; $49c1: $02
    ldh [$0e], a                                  ; $49c2: $e0 $0e
    nop                                           ; $49c4: $00
    rst $38                                       ; $49c5: $ff
    inc de                                        ; $49c6: $13
    rlca                                          ; $49c7: $07
    ldh a, [rNR33]                                ; $49c8: $f0 $1d
    add sp, $01                                   ; $49ca: $e8 $01
    jp hl                                         ; $49cc: $e9


    ld hl, sp-$17                                 ; $49cd: $f8 $e9
    nop                                           ; $49cf: $00
    add sp, $05                                   ; $49d0: $e8 $05
    ld hl, sp-$0d                                 ; $49d2: $f8 $f3
    ld hl, sp-$05                                 ; $49d4: $f8 $fb
    ld hl, sp+$03                                 ; $49d6: $f8 $03
    ld hl, sp+$08                                 ; $49d8: $f8 $08
    ld [bc], a                                    ; $49da: $02
    ld bc, $0386                                  ; $49db: $01 $86 $03
    ld [bc], a                                    ; $49de: $02
    rlca                                          ; $49df: $07
    inc b                                         ; $49e0: $04
    inc bc                                        ; $49e1: $03
    ld [bc], a                                    ; $49e2: $02
    ld [bc], a                                    ; $49e3: $02
    ld bc, $1302                                  ; $49e4: $01 $02 $13
    sub h                                         ; $49e7: $94
    dec c                                         ; $49e8: $0d
    rrca                                          ; $49e9: $0f
    jr jr_0ee_4a0b                                ; $49ea: $18 $1f

    ld de, $331f                                  ; $49ec: $11 $1f $33
    ccf                                           ; $49ef: $3f
    daa                                           ; $49f0: $27
    inc a                                         ; $49f1: $3c
    or a                                          ; $49f2: $b7
    cp b                                          ; $49f3: $b8
    ld [hl], a                                    ; $49f4: $77
    ld a, l                                       ; $49f5: $7d

Call_0ee_49f6:
    sub a                                         ; $49f6: $97
    rst $38                                       ; $49f7: $ff
    adc c                                         ; $49f8: $89
    rst $38                                       ; $49f9: $ff
    ld [bc], a                                    ; $49fa: $02
    rst $38                                       ; $49fb: $ff
    ld [bc], a                                    ; $49fc: $02
    rrca                                          ; $49fd: $0f
    adc a                                         ; $49fe: $8f
    cp $f3                                        ; $49ff: $fe $f3
    sbc $73                                       ; $4a01: $de $73
    call z, $877f                                 ; $4a03: $cc $7f $87
    rst $38                                       ; $4a06: $ff
    rrca                                          ; $4a07: $0f
    rst $38                                       ; $4a08: $ff
    ld c, [hl]                                    ; $4a09: $4e
    ld a, [c]                                     ; $4a0a: $f2

jr_0ee_4a0b:
    xor h                                         ; $4a0b: $ac
    db $fc                                        ; $4a0c: $fc
    ld [hl], b                                    ; $4a0d: $70
    inc bc                                        ; $4a0e: $03
    ldh a, [rSC]                                  ; $4a0f: $f0 $02
    or $86                                        ; $4a11: $f6 $86
    rst $38                                       ; $4a13: $ff
    ld sp, hl                                     ; $4a14: $f9
    rst $38                                       ; $4a15: $ff
    ld sp, hl                                     ; $4a16: $f9
    ld a, [hl]                                    ; $4a17: $7e
    cp $02                                        ; $4a18: $fe $02
    db $fc                                        ; $4a1a: $fc
    add d                                         ; $4a1b: $82
    cp b                                          ; $4a1c: $b8
    ld hl, sp+$02                                 ; $4a1d: $f8 $02
    ld [bc], a                                    ; $4a1f: $02
    adc d                                         ; $4a20: $8a
    rra                                           ; $4a21: $1f
    dec e                                         ; $4a22: $1d
    ld [bc], a                                    ; $4a23: $02
    ld e, $04                                     ; $4a24: $1e $04
    inc e                                         ; $4a26: $1c
    jr jr_0ee_4a31                                ; $4a27: $18 $08

    jr jr_0ee_4a33                                ; $4a29: $18 $08

    inc d                                         ; $4a2b: $14
    nop                                           ; $4a2c: $00
    ld [bc], a                                    ; $4a2d: $02
    ld [$108e], sp                                ; $4a2e: $08 $8e $10

jr_0ee_4a31:
    rra                                           ; $4a31: $1f
    inc sp                                        ; $4a32: $33

jr_0ee_4a33:
    ccf                                           ; $4a33: $3f
    ld a, b                                       ; $4a34: $78
    ld a, a                                       ; $4a35: $7f
    ld hl, sp-$51                                 ; $4a36: $f8 $af
    db $fc                                        ; $4a38: $fc
    sbc a                                         ; $4a39: $9f
    cp $8b                                        ; $4a3a: $fe $8b
    ld a, a                                       ; $4a3c: $7f
    ld c, a                                       ; $4a3d: $4f
    ld [bc], a                                    ; $4a3e: $02
    ccf                                           ; $4a3f: $3f
    stop                                          ; $4a40: $10 $00
    adc e                                         ; $4a42: $8b
    jp z, $35ff                                   ; $4a43: $ca $ff $35

    rst $38                                       ; $4a46: $ff
    dec de                                        ; $4a47: $1b
    rst $38                                       ; $4a48: $ff
    dec e                                         ; $4a49: $1d
    rst $38                                       ; $4a4a: $ff
    rra                                           ; $4a4b: $1f
    rst $38                                       ; $4a4c: $ff
    ccf                                           ; $4a4d: $3f
    ld [bc], a                                    ; $4a4e: $02
    rst $38                                       ; $4a4f: $ff
    add e                                         ; $4a50: $83
    jp $f5ff                                      ; $4a51: $c3 $ff $f5


    ld [bc], a                                    ; $4a54: $02
    ld a, [bc]                                    ; $4a55: $0a
    ld c, $00                                     ; $4a56: $0e $00
    ld [bc], a                                    ; $4a58: $02
    ret nz                                        ; $4a59: $c0

    add h                                         ; $4a5a: $84
    and b                                         ; $4a5b: $a0
    ldh [$b0], a                                  ; $4a5c: $e0 $b0
    ldh a, [rSC]                                  ; $4a5e: $f0 $02
    db $fc                                        ; $4a60: $fc
    add [hl]                                      ; $4a61: $86
    rst $38                                       ; $4a62: $ff
    rst $30                                       ; $4a63: $f7
    rst $38                                       ; $4a64: $ff
    adc d                                         ; $4a65: $8a
    rst $38                                       ; $4a66: $ff
    rst $28                                       ; $4a67: $ef
    ld [bc], a                                    ; $4a68: $02
    db $10                                        ; $4a69: $10
    ld c, $00                                     ; $4a6a: $0e $00
    ld [bc], a                                    ; $4a6c: $02
    inc c                                         ; $4a6d: $0c
    ld [bc], a                                    ; $4a6e: $02
    ld b, $04                                     ; $4a6f: $06 $04
    inc bc                                        ; $4a71: $03
    add [hl]                                      ; $4a72: $86
    rlca                                          ; $4a73: $07
    dec b                                         ; $4a74: $05
    ld e, $1a                                     ; $4a75: $1e $1a
    inc e                                         ; $4a77: $1c
    inc d                                         ; $4a78: $14
    ld [bc], a                                    ; $4a79: $02
    jr jr_0ee_4a8c                                ; $4a7a: $18 $10

    nop                                           ; $4a7c: $00
    rst $38                                       ; $4a7d: $ff
    inc de                                        ; $4a7e: $13
    rlca                                          ; $4a7f: $07
    ldh a, [rNR33]                                ; $4a80: $f0 $1d
    add sp, $01                                   ; $4a82: $e8 $01
    jp hl                                         ; $4a84: $e9


    ld hl, sp-$17                                 ; $4a85: $f8 $e9
    nop                                           ; $4a87: $00
    add sp, $05                                   ; $4a88: $e8 $05
    ld hl, sp-$0d                                 ; $4a8a: $f8 $f3

jr_0ee_4a8c:
    ld hl, sp-$05                                 ; $4a8c: $f8 $fb
    ld hl, sp+$03                                 ; $4a8e: $f8 $03
    ld hl, sp+$08                                 ; $4a90: $f8 $08
    ld [bc], a                                    ; $4a92: $02
    ld bc, $0386                                  ; $4a93: $01 $86 $03
    ld [bc], a                                    ; $4a96: $02
    rlca                                          ; $4a97: $07
    inc b                                         ; $4a98: $04
    inc bc                                        ; $4a99: $03
    ld [bc], a                                    ; $4a9a: $02
    ld [bc], a                                    ; $4a9b: $02
    ld bc, $1302                                  ; $4a9c: $01 $02 $13
    sub h                                         ; $4a9f: $94
    dec c                                         ; $4aa0: $0d
    rrca                                          ; $4aa1: $0f
    jr jr_0ee_4ac3                                ; $4aa2: $18 $1f

    ld de, $371f                                  ; $4aa4: $11 $1f $37
    ccf                                           ; $4aa7: $3f
    cpl                                           ; $4aa8: $2f
    add hl, sp                                    ; $4aa9: $39
    cp a                                          ; $4aaa: $bf
    or c                                          ; $4aab: $b1
    ld l, a                                       ; $4aac: $6f
    ld a, e                                       ; $4aad: $7b
    sub [hl]                                      ; $4aae: $96
    rst $38                                       ; $4aaf: $ff
    sbc c                                         ; $4ab0: $99
    rst $38                                       ; $4ab1: $ff
    ld [bc], a                                    ; $4ab2: $02
    rst $38                                       ; $4ab3: $ff
    ld [bc], a                                    ; $4ab4: $02
    rrca                                          ; $4ab5: $0f
    adc a                                         ; $4ab6: $8f
    cp $f3                                        ; $4ab7: $fe $f3
    sbc $73                                       ; $4ab9: $de $73
    call z, $877f                                 ; $4abb: $cc $7f $87
    rst $38                                       ; $4abe: $ff
    rrca                                          ; $4abf: $0f
    rst $38                                       ; $4ac0: $ff
    ld c, [hl]                                    ; $4ac1: $4e
    ld a, [c]                                     ; $4ac2: $f2

jr_0ee_4ac3:
    xor h                                         ; $4ac3: $ac
    db $fc                                        ; $4ac4: $fc
    ld [hl], b                                    ; $4ac5: $70
    inc bc                                        ; $4ac6: $03
    ldh a, [rSC]                                  ; $4ac7: $f0 $02
    di                                            ; $4ac9: $f3
    add h                                         ; $4aca: $84
    rst $30                                       ; $4acb: $f7
    db $f4                                        ; $4acc: $f4
    rst $38                                       ; $4acd: $ff
    db $fc                                        ; $4ace: $fc
    ld [bc], a                                    ; $4acf: $02
    rst $38                                       ; $4ad0: $ff
    ld [bc], a                                    ; $4ad1: $02
    db $fc                                        ; $4ad2: $fc
    add d                                         ; $4ad3: $82
    cp b                                          ; $4ad4: $b8
    ld hl, sp+$02                                 ; $4ad5: $f8 $02
    ld [bc], a                                    ; $4ad7: $02
    adc d                                         ; $4ad8: $8a
    rra                                           ; $4ad9: $1f
    dec e                                         ; $4ada: $1d
    ld [bc], a                                    ; $4adb: $02
    ld e, $04                                     ; $4adc: $1e $04
    inc e                                         ; $4ade: $1c
    jr jr_0ee_4ae9                                ; $4adf: $18 $08

    jr @+$0a                                      ; $4ae1: $18 $08

    inc c                                         ; $4ae3: $0c
    nop                                           ; $4ae4: $00
    inc b                                         ; $4ae5: $04
    db $10                                        ; $4ae6: $10
    inc b                                         ; $4ae7: $04
    nop                                           ; $4ae8: $00

jr_0ee_4ae9:
    ld [bc], a                                    ; $4ae9: $02
    ld [$108e], sp                                ; $4aea: $08 $8e $10
    rra                                           ; $4aed: $1f
    inc sp                                        ; $4aee: $33
    ccf                                           ; $4aef: $3f
    ld a, b                                       ; $4af0: $78
    ld a, a                                       ; $4af1: $7f
    ld hl, sp-$51                                 ; $4af2: $f8 $af
    db $fc                                        ; $4af4: $fc
    sbc a                                         ; $4af5: $9f
    cp $8b                                        ; $4af6: $fe $8b
    ld a, a                                       ; $4af8: $7f
    ld c, a                                       ; $4af9: $4f
    ld [bc], a                                    ; $4afa: $02
    ccf                                           ; $4afb: $3f
    stop                                          ; $4afc: $10 $00
    adc e                                         ; $4afe: $8b
    jp z, $35ff                                   ; $4aff: $ca $ff $35

    rst $38                                       ; $4b02: $ff
    dec de                                        ; $4b03: $1b
    rst $38                                       ; $4b04: $ff
    dec e                                         ; $4b05: $1d
    rst $38                                       ; $4b06: $ff
    rra                                           ; $4b07: $1f
    rst $38                                       ; $4b08: $ff
    ccf                                           ; $4b09: $3f
    ld [bc], a                                    ; $4b0a: $02
    rst $38                                       ; $4b0b: $ff
    add e                                         ; $4b0c: $83
    jp $f5ff                                      ; $4b0d: $c3 $ff $f5


    ld [bc], a                                    ; $4b10: $02
    ld a, [bc]                                    ; $4b11: $0a
    ld c, $00                                     ; $4b12: $0e $00
    ld [bc], a                                    ; $4b14: $02
    ret nz                                        ; $4b15: $c0

    add h                                         ; $4b16: $84
    and b                                         ; $4b17: $a0
    ldh [$b0], a                                  ; $4b18: $e0 $b0
    ldh a, [rSC]                                  ; $4b1a: $f0 $02
    db $fc                                        ; $4b1c: $fc
    add [hl]                                      ; $4b1d: $86
    rst $38                                       ; $4b1e: $ff
    rst $30                                       ; $4b1f: $f7
    rst $38                                       ; $4b20: $ff
    adc d                                         ; $4b21: $8a
    rst $38                                       ; $4b22: $ff
    rst $28                                       ; $4b23: $ef
    ld [bc], a                                    ; $4b24: $02
    db $10                                        ; $4b25: $10
    ld c, $00                                     ; $4b26: $0e $00
    ld [bc], a                                    ; $4b28: $02
    inc c                                         ; $4b29: $0c
    ld [bc], a                                    ; $4b2a: $02

jr_0ee_4b2b:
    ld b, $04                                     ; $4b2b: $06 $04
    inc bc                                        ; $4b2d: $03
    add [hl]                                      ; $4b2e: $86
    rlca                                          ; $4b2f: $07
    dec b                                         ; $4b30: $05
    ld e, $1a                                     ; $4b31: $1e $1a
    inc e                                         ; $4b33: $1c
    inc d                                         ; $4b34: $14
    ld [bc], a                                    ; $4b35: $02
    jr @+$12                                      ; $4b36: $18 $10

    nop                                           ; $4b38: $00
    rst $38                                       ; $4b39: $ff

    db $0d, $04, $f2

    jr jr_0ee_4b2b                                ; $4b3d: $18 $ec

    dec b                                         ; $4b3f: $05

    db $f8, $f3, $f8, $fb, $f8, $03, $f8, $05, $06, $00, $02, $0f, $86, $3e, $33, $7f
    db $4f, $f3, $b3, $04, $c0, $02, $61, $02, $3e, $0a, $00, $02, $10, $8b, $ae, $be
    db $c5, $ff, $0a, $ff, $80, $ff, $91, $ff, $da, $02, $ff, $81, $9f, $02, $71, $02
    db $80, $02, $40, $0c, $00, $02, $b2, $88, $fe, $ce, $ff, $db, $3b, $ff, $07, $fe
    db $02, $f8, $82, $f0, $70, $02, $a8, $12, $00, $02, $02, $82, $03, $01, $02, $02
    db $16, $00, $ff, $0d, $04, $f2

    jr @-$12                                      ; $4b96: $18 $ec

    dec b                                         ; $4b98: $05

    db $f8, $f3, $f8, $fb, $f8, $03, $f8, $05, $06, $00, $02, $0f, $86, $3e, $33, $7f
    db $4f, $f3, $b3, $04, $c0, $02, $61, $02, $3e, $0a, $00, $02, $11, $8b, $af, $bf
    db $cb, $ff, $05, $ff, $80, $ff, $91, $ff, $da, $02, $ff, $81, $9f, $02, $71, $02
    db $80, $02, $40, $0a, $00, $02, $32, $8a, $fe, $ce, $ff, $db, $3b, $ff, $0f, $fe
    db $38, $f8, $02, $e0, $82, $f0, $70, $02, $a8, $10, $00, $02, $02, $82, $03, $01
    db $02, $02, $18, $00, $ff, $0d, $04, $f2

    jr @-$12                                      ; $4bf1: $18 $ec

    dec b                                         ; $4bf3: $05

    db $f7, $f3, $f7, $fb, $f7, $03, $f7, $05, $06, $00, $02, $01, $02, $03, $88, $0e
    db $0f, $3f, $33, $7f, $4f, $f1, $b1, $02, $c0, $02, $e0, $02, $7f, $0a, $00, $02
    db $22, $02, $bf, $89, $c5, $ff, $0b, $ff, $80, $ff, $92, $ff, $da, $02, $ff, $81
    db $9f, $02, $71, $02, $c0, $02, $20, $08, $00, $02, $32, $8b, $7f, $4f, $ff, $db
    db $fb, $fe, $64, $fc, $18, $f8, $60, $03, $e0, $82, $f0, $70, $02, $a8, $0c, $00
    db $02, $02, $82, $03, $01, $02, $02, $1a, $00, $ff, $0d, $04, $f2

    jr @-$12                                      ; $4c51: $18 $ec

    dec b                                         ; $4c53: $05

    db $f8, $f3, $f8, $fb, $f8, $03, $f8, $05, $04, $00, $02, $01, $02, $03, $88, $0e
    db $0f, $3f, $33, $7f, $4f, $f1, $b1, $02, $c0, $02, $e0, $02, $7f, $0a, $00, $02
    db $21, $02, $bf, $89, $cb, $ff, $05, $ff, $80, $ff, $91, $ff, $da, $02, $ff, $81
    db $9f, $02, $71, $02, $c0, $02, $20, $0a, $00, $02, $32, $8a, $ff, $cf, $ff, $db
    db $3b, $fe, $0e, $fe, $30, $f0, $02, $e0, $82, $f0, $70, $02, $a8, $0e, $00, $02
    db $02, $82, $03, $01, $04, $02, $18, $00, $ff, $0d, $04, $f2

    jr @-$12                                      ; $4cb0: $18 $ec

    dec b                                         ; $4cb2: $05

    db $f7, $f3, $f7, $fb, $f7, $03, $f7, $05, $06, $00, $02, $01, $02, $03, $88, $0e
    db $0f, $3f, $33, $7f, $4f, $f1, $b1, $02, $c0, $02, $e0, $02, $7f, $0a, $00, $02
    db $22, $02, $bf, $89, $c5, $ff, $0b, $ff, $80, $ff, $92, $ff, $da, $02, $ff, $81
    db $9f, $02, $71, $02, $c0, $02, $20, $08, $00, $02, $32, $8b, $7f, $4f, $ff, $db
    db $fb, $fe, $64, $fc, $18, $f8, $60, $03, $e0, $82, $f0, $70, $02, $a8, $0c, $00
    db $02, $02, $82, $03, $01, $02, $02, $1a, $00, $ff, $0d, $04, $f2

    jr @-$12                                      ; $4d10: $18 $ec

    dec b                                         ; $4d12: $05

    db $f8, $f3, $f8, $fb, $f8, $03, $f8, $05, $04, $00, $02, $01, $02, $03, $88, $1e
    db $1f, $3f, $23, $7f, $5f, $e0, $a0, $02, $c0, $02, $61, $02, $7e, $0a, $00, $02
    db $11, $8b, $af, $bf, $cb, $ff, $05, $ff, $80, $ff, $91, $ff, $da, $02, $ff, $81
    db $9f, $02, $71, $02, $80, $02, $40, $0a, $00, $02, $32, $8a, $fe, $ce, $ff, $db
    db $3b, $ff, $0f, $fe, $38, $f8, $02, $e0, $82, $f0, $70, $02, $a8, $10, $00, $02
    db $02, $82, $03, $01, $02, $02, $18, $00, $ff

    dec c                                         ; $4d6c: $0d
    inc b                                         ; $4d6d: $04
    ld a, [c]                                     ; $4d6e: $f2
    jr @-$12                                      ; $4d6f: $18 $ec

    dec b                                         ; $4d71: $05
    ld hl, sp-$0d                                 ; $4d72: $f8 $f3
    ld hl, sp-$05                                 ; $4d74: $f8 $fb
    ld hl, sp+$03                                 ; $4d76: $f8 $03
    ld hl, sp+$05                                 ; $4d78: $f8 $05
    inc b                                         ; $4d7a: $04
    nop                                           ; $4d7b: $00
    ld [bc], a                                    ; $4d7c: $02
    rra                                           ; $4d7d: $1f
    add [hl]                                      ; $4d7e: $86
    ld a, $23                                     ; $4d7f: $3e $23
    ld a, [hl]                                    ; $4d81: $7e
    ld e, a                                       ; $4d82: $5f
    db $e3                                        ; $4d83: $e3
    and e                                         ; $4d84: $a3
    inc b                                         ; $4d85: $04
    ret nz                                        ; $4d86: $c0

    ld [bc], a                                    ; $4d87: $02
    ld b, b                                       ; $4d88: $40
    ld [bc], a                                    ; $4d89: $02
    ld h, b                                       ; $4d8a: $60
    ld [bc], a                                    ; $4d8b: $02
    ld a, $0a                                     ; $4d8c: $3e $0a
    nop                                           ; $4d8e: $00
    ld [bc], a                                    ; $4d8f: $02
    inc b                                         ; $4d90: $04
    adc e                                         ; $4d91: $8b
    ld a, e                                       ; $4d92: $7b
    ld a, a                                       ; $4d93: $7f
    add l                                         ; $4d94: $85
    rst $38                                       ; $4d95: $ff
    ld a, [bc]                                    ; $4d96: $0a
    rst $38                                       ; $4d97: $ff
    add b                                         ; $4d98: $80
    rst $38                                       ; $4d99: $ff
    adc h                                         ; $4d9a: $8c
    rst $38                                       ; $4d9b: $ff
    sbc l                                         ; $4d9c: $9d
    ld [bc], a                                    ; $4d9d: $02
    rst $38                                       ; $4d9e: $ff
    add c                                         ; $4d9f: $81
    sbc [hl]                                      ; $4da0: $9e
    ld [bc], a                                    ; $4da1: $02
    db $e3                                        ; $4da2: $e3
    stop                                          ; $4da3: $10 $00
    ld [bc], a                                    ; $4da5: $02
    and b                                         ; $4da6: $a0
    ld [bc], a                                    ; $4da7: $02
    ldh [rSC], a                                  ; $4da8: $e0 $02
    ld a, [$7e88]                                 ; $4daa: $fa $88 $7e
    adc $3f                                       ; $4dad: $ce $3f
    db $db                                        ; $4daf: $db
    cp e                                          ; $4db0: $bb
    rst $38                                       ; $4db1: $ff
    rst $18                                       ; $4db2: $df

jr_0ee_4db3:
    cp $02                                        ; $4db3: $fe $02
    jr z, jr_0ee_4dcd                             ; $4db5: $28 $16

    nop                                           ; $4db7: $00
    ld [bc], a                                    ; $4db8: $02
    ld [bc], a                                    ; $4db9: $02
    add d                                         ; $4dba: $82
    inc bc                                        ; $4dbb: $03
    ld bc, $0202                                  ; $4dbc: $01 $02 $02
    ld [de], a                                    ; $4dbf: $12
    nop                                           ; $4dc0: $00
    rst $38                                       ; $4dc1: $ff
    dec c                                         ; $4dc2: $0d
    inc b                                         ; $4dc3: $04
    ld a, [c]                                     ; $4dc4: $f2
    jr jr_0ee_4db3                                ; $4dc5: $18 $ec

    dec b                                         ; $4dc7: $05
    db $f4                                        ; $4dc8: $f4
    or $f4                                        ; $4dc9: $f6 $f4
    cp $f4                                        ; $4dcb: $fe $f4

jr_0ee_4dcd:
    ld b, $f4                                     ; $4dcd: $06 $f4
    ld a, [bc]                                    ; $4dcf: $0a
    ld c, $00                                     ; $4dd0: $0e $00
    ld [bc], a                                    ; $4dd2: $02
    inc bc                                        ; $4dd3: $03
    add h                                         ; $4dd4: $84
    rrca                                          ; $4dd5: $0f
    inc c                                         ; $4dd6: $0c
    ccf                                           ; $4dd7: $3f
    scf                                           ; $4dd8: $37
    ld [bc], a                                    ; $4dd9: $02
    ld a, b                                       ; $4dda: $78
    ld [bc], a                                    ; $4ddb: $02
    pop bc                                        ; $4ddc: $c1
    inc b                                         ; $4ddd: $04
    add b                                         ; $4dde: $80
    ld [bc], a                                    ; $4ddf: $02
    ld h, b                                       ; $4de0: $60
    ld [$0200], sp                                ; $4de1: $08 $00 $02
    inc bc                                        ; $4de4: $03
    sub b                                         ; $4de5: $90
    dec c                                         ; $4de6: $0d
    rrca                                          ; $4de7: $0f
    ld [de], a                                    ; $4de8: $12
    rra                                           ; $4de9: $1f
    ldh [rIE], a                                  ; $4dea: $e0 $ff
    ld b, [hl]                                    ; $4dec: $46
    rst $38                                       ; $4ded: $ff
    call $9fff                                    ; $4dee: $cd $ff $9f
    rst $38                                       ; $4df1: $ff
    cp a                                          ; $4df2: $bf
    rst $38                                       ; $4df3: $ff
    db $ec                                        ; $4df4: $ec
    inc l                                         ; $4df5: $2c
    ld [bc], a                                    ; $4df6: $02
    ret z                                         ; $4df7: $c8

    ld [$0200], sp                                ; $4df8: $08 $00 $02
    dec c                                         ; $4dfb: $0d
    sub b                                         ; $4dfc: $90
    ccf                                           ; $4dfd: $3f
    ld [hl-], a                                   ; $4dfe: $32
    rst $28                                       ; $4dff: $ef
    rst $38                                       ; $4e00: $ff
    ld b, h                                       ; $4e01: $44
    rst $38                                       ; $4e02: $ff
    ld bc, $9aff                                  ; $4e03: $01 $ff $9a
    cp $bc                                        ; $4e06: $fe $bc
    db $fc                                        ; $4e08: $fc
    ld a, h                                       ; $4e09: $7c
    db $fc                                        ; $4e0a: $fc
    xor $aa                                       ; $4e0b: $ee $aa
    ld [bc], a                                    ; $4e0d: $02
    ld b, h                                       ; $4e0e: $44
    ld a, [bc]                                    ; $4e0f: $0a
    nop                                           ; $4e10: $00
    ld [bc], a                                    ; $4e11: $02

jr_0ee_4e12:
    ld [bc], a                                    ; $4e12: $02
    add d                                         ; $4e13: $82
    rrca                                          ; $4e14: $0f
    dec c                                         ; $4e15: $0d
    inc bc                                        ; $4e16: $03
    ld c, $81                                     ; $4e17: $0e $81
    ld a, [bc]                                    ; $4e19: $0a
    ld [bc], a                                    ; $4e1a: $02
    ld [$0c02], sp                                ; $4e1b: $08 $02 $0c
    inc d                                         ; $4e1e: $14
    nop                                           ; $4e1f: $00
    rst $38                                       ; $4e20: $ff
    dec c                                         ; $4e21: $0d
    inc b                                         ; $4e22: $04
    ld a, [c]                                     ; $4e23: $f2
    jr jr_0ee_4e12                                ; $4e24: $18 $ec

    dec b                                         ; $4e26: $05
    di                                            ; $4e27: $f3
    or $f3                                        ; $4e28: $f6 $f3
    cp $f3                                        ; $4e2a: $fe $f3
    ld b, $f3                                     ; $4e2c: $06 $f3
    ld c, $0a                                     ; $4e2e: $0e $0a
    nop                                           ; $4e30: $00
    ld [bc], a                                    ; $4e31: $02
    ld bc, $0784                                  ; $4e32: $01 $84 $07
    ld b, $1f                                     ; $4e35: $06 $1f
    add hl, de                                    ; $4e37: $19
    ld [bc], a                                    ; $4e38: $02
    jr nc, jr_0ee_4e3f                            ; $4e39: $30 $04

    ld b, b                                       ; $4e3b: $40
    inc b                                         ; $4e3c: $04
    add b                                         ; $4e3d: $80
    inc c                                         ; $4e3e: $0c

jr_0ee_4e3f:
    nop                                           ; $4e3f: $00
    ld [bc], a                                    ; $4e40: $02
    inc bc                                        ; $4e41: $03
    adc h                                         ; $4e42: $8c
    inc l                                         ; $4e43: $2c
    cpl                                           ; $4e44: $2f
    ldh a, [rIE]                                  ; $4e45: $f0 $ff
    ldh a, [$3f]                                  ; $4e47: $f0 $3f
    db $e3                                        ; $4e49: $e3
    rst $38                                       ; $4e4a: $ff
    rst $28                                       ; $4e4b: $ef
    cp a                                          ; $4e4c: $bf
    ld [hl], a                                    ; $4e4d: $77
    ld d, a                                       ; $4e4e: $57
    ld [bc], a                                    ; $4e4f: $02
    ld h, $0e                                     ; $4e50: $26 $0e
    nop                                           ; $4e52: $00
    ld [bc], a                                    ; $4e53: $02
    cp a                                          ; $4e54: $bf
    adc h                                         ; $4e55: $8c
    call nc, $a0ff                                ; $4e56: $d4 $ff $a0
    rst $38                                       ; $4e59: $ff
    ld bc, $8aff                                  ; $4e5a: $01 $ff $8a
    rst $38                                       ; $4e5d: $ff
    ld e, e                                       ; $4e5e: $5b
    rst $38                                       ; $4e5f: $ff
    rst $28                                       ; $4e60: $ef
    db $fd                                        ; $4e61: $fd
    ld [bc], a                                    ; $4e62: $02
    ld a, [c]                                     ; $4e63: $f2
    inc c                                         ; $4e64: $0c
    nop                                           ; $4e65: $00
    ld [bc], a                                    ; $4e66: $02
    ld [bc], a                                    ; $4e67: $02
    adc d                                         ; $4e68: $8a
    rst $18                                       ; $4e69: $df
    db $dd                                        ; $4e6a: $dd
    cp $2e                                        ; $4e6b: $fe $2e
    cp $fa                                        ; $4e6d: $fe $fa
    ld e, b                                       ; $4e6f: $58

jr_0ee_4e70:
    ld hl, sp+$1c                                 ; $4e70: $f8 $1c
    db $f4                                        ; $4e72: $f4
    ld [bc], a                                    ; $4e73: $02
    ld hl, sp+$02                                 ; $4e74: $f8 $02
    add b                                         ; $4e76: $80
    add d                                         ; $4e77: $82
    ret nz                                        ; $4e78: $c0

    ld b, b                                       ; $4e79: $40
    ld [bc], a                                    ; $4e7a: $02
    add b                                         ; $4e7b: $80
    inc c                                         ; $4e7c: $0c
    nop                                           ; $4e7d: $00
    rst $38                                       ; $4e7e: $ff
    dec c                                         ; $4e7f: $0d
    inc b                                         ; $4e80: $04
    ld a, [c]                                     ; $4e81: $f2
    jr jr_0ee_4e70                                ; $4e82: $18 $ec

    dec b                                         ; $4e84: $05
    di                                            ; $4e85: $f3
    ld a, [$02f3]                                 ; $4e86: $fa $f3 $02
    di                                            ; $4e89: $f3
    ld a, [bc]                                    ; $4e8a: $0a
    di                                            ; $4e8b: $f3
    db $10                                        ; $4e8c: $10
    inc b                                         ; $4e8d: $04
    nop                                           ; $4e8e: $00
    ld [bc], a                                    ; $4e8f: $02
    rlca                                          ; $4e90: $07
    add d                                         ; $4e91: $82
    rra                                           ; $4e92: $1f
    jr jr_0ee_4e97                                ; $4e93: $18 $02

    jr nc, jr_0ee_4e99                            ; $4e95: $30 $02

jr_0ee_4e97:
    ld b, b                                       ; $4e97: $40
    inc b                                         ; $4e98: $04

jr_0ee_4e99:
    add b                                         ; $4e99: $80
    stop                                          ; $4e9a: $10 $00
    ld [bc], a                                    ; $4e9c: $02
    dec bc                                        ; $4e9d: $0b
    adc [hl]                                      ; $4e9e: $8e
    inc l                                         ; $4e9f: $2c
    cpl                                           ; $4ea0: $2f
    ldh a, [rIE]                                  ; $4ea1: $f0 $ff
    ld [c], a                                     ; $4ea3: $e2
    ccf                                           ; $4ea4: $3f
    pop af                                        ; $4ea5: $f1
    rst $38                                       ; $4ea6: $ff
    add hl, sp                                    ; $4ea7: $39
    ccf                                           ; $4ea8: $3f
    rrca                                          ; $4ea9: $0f
    dec c                                         ; $4eaa: $0d
    rrca                                          ; $4eab: $0f
    dec bc                                        ; $4eac: $0b
    ld [bc], a                                    ; $4ead: $02
    ld b, $0e                                     ; $4eae: $06 $0e

jr_0ee_4eb0:
    nop                                           ; $4eb0: $00
    ld [bc], a                                    ; $4eb1: $02
    ldh [$90], a                                  ; $4eb2: $e0 $90
    ld d, h                                       ; $4eb4: $54
    db $f4                                        ; $4eb5: $f4
    jr jr_0ee_4eb0                                ; $4eb6: $18 $f8

    dec c                                         ; $4eb8: $0d
    db $fd                                        ; $4eb9: $fd
    rlca                                          ; $4eba: $07
    cp $a7                                        ; $4ebb: $fe $a7
    db $fc                                        ; $4ebd: $fc
    ld d, e                                       ; $4ebe: $53
    rst $38                                       ; $4ebf: $ff
    ld [c], a                                     ; $4ec0: $e2
    rst $38                                       ; $4ec1: $ff
    ld l, b                                       ; $4ec2: $68
    ld a, a                                       ; $4ec3: $7f
    inc bc                                        ; $4ec4: $03
    rra                                           ; $4ec5: $1f
    add c                                         ; $4ec6: $81
    ld d, $02                                     ; $4ec7: $16 $02
    add hl, bc                                    ; $4ec9: $09
    stop                                          ; $4eca: $10 $00
    ld [bc], a                                    ; $4ecc: $02
    jr z, jr_0ee_4ed1                             ; $4ecd: $28 $02

jr_0ee_4ecf:
    ld a, [hl-]                                   ; $4ecf: $3a
    add [hl]                                      ; $4ed0: $86

jr_0ee_4ed1:
    cpl                                           ; $4ed1: $2f
    dec a                                         ; $4ed2: $3d
    ld e, $3e                                     ; $4ed3: $1e $3e
    inc a                                         ; $4ed5: $3c
    inc h                                         ; $4ed6: $24
    ld [bc], a                                    ; $4ed7: $02
    jr nc, jr_0ee_4edc                            ; $4ed8: $30 $02

    jr nz, jr_0ee_4ee6                            ; $4eda: $20 $0a

jr_0ee_4edc:
    nop                                           ; $4edc: $00
    rst $38                                       ; $4edd: $ff
    dec c                                         ; $4ede: $0d
    inc b                                         ; $4edf: $04
    ld a, [c]                                     ; $4ee0: $f2
    jr jr_0ee_4ecf                                ; $4ee1: $18 $ec

    dec b                                         ; $4ee3: $05
    rst $30                                       ; $4ee4: $f7
    ei                                            ; $4ee5: $fb

jr_0ee_4ee6:
    rst $30                                       ; $4ee6: $f7
    inc bc                                        ; $4ee7: $03
    rst $30                                       ; $4ee8: $f7
    dec bc                                        ; $4ee9: $0b
    rst $30                                       ; $4eea: $f7
    ld de, $f802                                  ; $4eeb: $11 $02 $f8
    add h                                         ; $4eee: $84
    ld e, $16                                     ; $4eef: $1e $16
    rlca                                          ; $4ef1: $07
    dec b                                         ; $4ef2: $05
    ld [bc], a                                    ; $4ef3: $02
    inc bc                                        ; $4ef4: $03
    inc e                                         ; $4ef5: $1c
    nop                                           ; $4ef6: $00
    ld [bc], a                                    ; $4ef7: $02
    adc e                                         ; $4ef8: $8b
    adc c                                         ; $4ef9: $89
    db $fc                                        ; $4efa: $fc
    ld a, a                                       ; $4efb: $7f
    ldh [$bf], a                                  ; $4efc: $e0 $bf
    ld l, b                                       ; $4efe: $68
    ld a, a                                       ; $4eff: $7f
    jr c, @+$41                                   ; $4f00: $38 $3f

    add hl, bc                                    ; $4f02: $09
    ld [bc], a                                    ; $4f03: $02
    rrca                                          ; $4f04: $0f
    add c                                         ; $4f05: $81
    add hl, bc                                    ; $4f06: $09
    ld [bc], a                                    ; $4f07: $02
    ld c, $0e                                     ; $4f08: $0e $0e
    nop                                           ; $4f0a: $00
    ld [bc], a                                    ; $4f0b: $02
    add b                                         ; $4f0c: $80
    adc e                                         ; $4f0d: $8b
    ld [hl], h                                    ; $4f0e: $74
    db $f4                                        ; $4f0f: $f4
    xor a                                         ; $4f10: $af
    rst $38                                       ; $4f11: $ff
    ld d, a                                       ; $4f12: $57
    db $fc                                        ; $4f13: $fc
    rlca                                          ; $4f14: $07
    db $fd                                        ; $4f15: $fd
    jp $d9ff                                      ; $4f16: $c3 $ff $d9


    ld [bc], a                                    ; $4f19: $02
    rst $38                                       ; $4f1a: $ff
    add c                                         ; $4f1b: $81
    rst $28                                       ; $4f1c: $ef
    ld [bc], a                                    ; $4f1d: $02
    ld [hl-], a                                   ; $4f1e: $32
    ld [de], a                                    ; $4f1f: $12
    nop                                           ; $4f20: $00
    ld [bc], a                                    ; $4f21: $02
    ld [$3a02], sp                                ; $4f22: $08 $02 $3a
    add [hl]                                      ; $4f25: $86
    ccf                                           ; $4f26: $3f
    dec l                                         ; $4f27: $2d
    ld l, $3e                                     ; $4f28: $2e $3e
    inc a                                         ; $4f2a: $3c
    jr nc, jr_0ee_4f2f                            ; $4f2b: $30 $02

    jr z, jr_0ee_4f31                             ; $4f2d: $28 $02

jr_0ee_4f2f:
    jr nz, @+$0e                                  ; $4f2f: $20 $0c

jr_0ee_4f31:
    nop                                           ; $4f31: $00
    rst $38                                       ; $4f32: $ff

    db $0d, $04, $f2

    jr @-$12                                      ; $4f36: $18 $ec

    dec b                                         ; $4f38: $05

    db $f8, $fa, $f8, $02, $f8, $0a, $f8, $0c, $04, $00, $02, $03, $88, $1e, $1f, $3e
    db $23, $7f, $5f, $e1, $a1, $02, $c1, $02, $c0, $02, $60, $02, $1e, $0a, $00, $02
    db $08, $89, $b7, $bf, $ca, $ff, $05, $ff, $80, $ff, $8c, $02, $ff, $81, $3f, $02
    db $fd, $02, $1c, $0e, $00, $02, $32, $8e, $fe, $ce, $ff, $db, $7b, $ff, $4f, $fe
    db $38, $f8, $60, $e0, $f0, $b0, $02, $e8, $10, $00, $02, $02, $82, $03, $01, $02
    db $02, $18, $00, $ff, $0d, $04, $f2

    jr @-$12                                      ; $4f90: $18 $ec

    dec b                                         ; $4f92: $05

    db $ee, $fb, $ec, $01, $fc, $f6, $fc, $fd, $02, $03, $84, $07, $04, $03, $02, $02
    db $03, $93, $06, $07, $0a, $0f, $15, $1f, $27, $3e, $27, $3f, $45, $7f, $62, $7f
    db $cd, $ff, $8b, $ff, $cf, $02, $ff, $83, $f7, $fb, $6a, $02, $08, $83, $1c, $14
    db $2c, $02, $3c, $81, $34, $02, $3c, $8a, $1c, $34, $0c, $3c, $18, $38, $0a, $3a
    db $2f, $3d, $02, $36, $82, $10, $30, $04, $20, $04, $00, $02, $08, $84, $38, $30
    db $7c, $5c, $02, $e0, $02, $c0, $02, $c7, $02, $78, $12, $00, $02, $02, $82, $03
    db $01, $02, $46, $06, $00, $02, $40, $12, $00, $ff, $0d, $04, $f2

    jr @-$12                                      ; $5000: $18 $ec

    dec b                                         ; $5002: $05

    db $ed, $f6, $ec, $fe, $f3, $04, $fc, $fc, $02, $70, $8c, $ff, $bf, $7c, $77, $18
    db $1f, $38, $2f, $15, $17, $02, $03, $02, $01, $10, $00, $02, $18, $82, $38, $28
    db $02, $30, $94, $e8, $f8, $18, $f8, $84, $fc, $ca, $7e, $e5, $ff, $0a, $ff, $c7
    db $ff, $a3, $ff, $49, $7f, $34, $3f, $02, $0f, $02, $07, $82, $03, $02, $02, $22
    db $88, $3f, $3d, $3f, $3d, $3e, $0e, $38, $18, $02, $30, $06, $20, $82, $e0, $a0
    db $03, $c0, $81, $40, $04, $80, $08, $00, $04, $01, $82, $03, $02, $02, $03, $02
    db $06, $02, $04, $02, $18, $02, $60, $0c, $00, $ff, $0b, $03, $f2

    jr @-$12                                      ; $5070: $18 $ec

    dec b                                         ; $5072: $05

    db $f4, $f2, $f4, $fa, $f4, $01, $06, $00, $02, $04, $90, $0e, $0a, $05, $07, $05
    db $07, $02, $03, $0c, $0f, $58, $5f, $e9, $bf, $7c, $77, $02, $3f, $06, $00, $02
    db $0f, $94, $3c, $3f, $5f, $73, $9f, $ff, $b5, $ff, $0a, $ff, $03, $ff, $3d, $ff
    db $76, $de, $28, $f8, $70, $f0, $02, $c1, $08, $00, $02, $78, $84, $7c, $44, $7e
    db $7a, $02, $66, $84, $77, $55, $7b, $6b, $02, $12, $02, $06, $02, $0c, $02, $18
    db $02, $60, $0a, $00, $ff, $0b, $03, $f2

    jr @-$12                                      ; $50cb: $18 $ec

    dec b                                         ; $50cd: $05

    db $f8, $f4, $f8, $fc, $f8, $01, $04, $00, $02, $01, $8a, $06, $07, $0f, $09, $1f
    db $1a, $34, $3f, $79, $5f, $02, $a7, $0e, $00, $02, $3c, $89, $d7, $ff, $a8, $ff
    db $40, $ff, $ea, $ff, $fc, $02, $ff, $83, $de, $fb, $7b, $02, $a0, $12, $00, $02
    db $18, $86, $0c, $1c, $0e, $1a, $17, $15, $02, $1e, $02, $1c, $10, $00, $ff

    rrca                                          ; $510d: $0f
    dec b                                         ; $510e: $05
    pop af                                        ; $510f: $f1
    inc de                                        ; $5110: $13
    ld [$f403], a                                 ; $5111: $ea $03 $f4
    rst $28                                       ; $5114: $ef
    ld a, [c]                                     ; $5115: $f2
    rst $30                                       ; $5116: $f7
    pop af                                        ; $5117: $f1
    rst $38                                       ; $5118: $ff
    ld bc, $f3ff                                  ; $5119: $01 $ff $f3
    rlca                                          ; $511c: $07
    ld [bc], a                                    ; $511d: $02
    ld bc, $068c                                  ; $511e: $01 $8c $06
    rlca                                          ; $5121: $07
    dec c                                         ; $5122: $0d
    ld a, [bc]                                    ; $5123: $0a
    ld a, [de]                                    ; $5124: $1a
    dec d                                         ; $5125: $15
    ld de, $1d1e                                  ; $5126: $11 $1e $1d
    rra                                           ; $5129: $1f
    ld b, $07                                     ; $512a: $06 $07
    inc b                                         ; $512c: $04
    ld bc, $0684                                  ; $512d: $01 $84 $06
    rlca                                          ; $5130: $07
    rrca                                          ; $5131: $0f
    add hl, bc                                    ; $5132: $09
    ld [bc], a                                    ; $5133: $02
    ld b, $08                                     ; $5134: $06 $08
    nop                                           ; $5136: $00
    ld [bc], a                                    ; $5137: $02
    dec c                                         ; $5138: $0d
    sbc h                                         ; $5139: $9c
    rra                                           ; $513a: $1f
    inc de                                        ; $513b: $13
    rst $38                                       ; $513c: $ff
    db $fd                                        ; $513d: $fd
    xor e                                         ; $513e: $ab
    ld e, e                                       ; $513f: $5b
    push af                                       ; $5140: $f5
    ld c, $eb                                     ; $5141: $0e $eb
    inc e                                         ; $5143: $1c
    sbc l                                         ; $5144: $9d
    ld a, [hl]                                    ; $5145: $7e
    dec sp                                        ; $5146: $3b
    rst $20                                       ; $5147: $e7
    reti                                          ; $5148: $d9


    rst $38                                       ; $5149: $ff
    rst $20                                       ; $514a: $e7
    and [hl]                                      ; $514b: $a6
    push bc                                       ; $514c: $c5
    ld b, a                                       ; $514d: $47
    adc [hl]                                      ; $514e: $8e
    adc d                                         ; $514f: $8a
    ld c, $0a                                     ; $5150: $0e $0a
    inc e                                         ; $5152: $1c
    inc d                                         ; $5153: $14
    inc [hl]                                      ; $5154: $34
    inc l                                         ; $5155: $2c
    ld [bc], a                                    ; $5156: $02
    jr jr_0ee_515b                                ; $5157: $18 $02

    adc b                                         ; $5159: $88
    sbc [hl]                                      ; $515a: $9e

jr_0ee_515b:
    call c, $f554                                 ; $515b: $dc $54 $f5
    ld l, l                                       ; $515e: $6d
    ld l, a                                       ; $515f: $6f
    cp $9d                                        ; $5160: $fe $9d
    rst $38                                       ; $5162: $ff
    rst $30                                       ; $5163: $f7
    rrca                                          ; $5164: $0f
    rst $38                                       ; $5165: $ff
    dec d                                         ; $5166: $15
    cp $bf                                        ; $5167: $fe $bf
    ld c, a                                       ; $5169: $4f
    db $fc                                        ; $516a: $fc
    cp $6b                                        ; $516b: $fe $6b
    db $fd                                        ; $516d: $fd
    db $ed                                        ; $516e: $ed
    jr z, jr_0ee_51a9                             ; $516f: $28 $38

    inc e                                         ; $5171: $1c
    inc d                                         ; $5172: $14
    inc e                                         ; $5173: $1c
    inc d                                         ; $5174: $14
    inc e                                         ; $5175: $1c
    inc d                                         ; $5176: $14
    ld d, $1a                                     ; $5177: $16 $1a
    ld [bc], a                                    ; $5179: $02
    inc c                                         ; $517a: $0c
    ld e, $00                                     ; $517b: $1e $00
    ld [bc], a                                    ; $517d: $02
    add b                                         ; $517e: $80
    add [hl]                                      ; $517f: $86
    ldh [$60], a                                  ; $5180: $e0 $60
    cp b                                          ; $5182: $b8
    ret c                                         ; $5183: $d8

    ld l, b                                       ; $5184: $68
    ld a, b                                       ; $5185: $78
    ld [bc], a                                    ; $5186: $02
    db $10                                        ; $5187: $10
    inc b                                         ; $5188: $04
    add b                                         ; $5189: $80
    adc b                                         ; $518a: $88
    ret nz                                        ; $518b: $c0

    ld b, b                                       ; $518c: $40
    or b                                          ; $518d: $b0
    ldh a, [$7c]                                  ; $518e: $f0 $7c
    ld c, h                                       ; $5190: $4c
    ld [hl], $3a                                  ; $5191: $36 $3a
    ld [bc], a                                    ; $5193: $02
    inc c                                         ; $5194: $0c
    ld [$ff00], sp                                ; $5195: $08 $00 $ff
    rrca                                          ; $5198: $0f
    dec b                                         ; $5199: $05
    pop af                                        ; $519a: $f1
    inc de                                        ; $519b: $13
    ld [$f403], a                                 ; $519c: $ea $03 $f4
    rst $28                                       ; $519f: $ef
    ld a, [c]                                     ; $51a0: $f2
    rst $30                                       ; $51a1: $f7
    pop af                                        ; $51a2: $f1
    rst $38                                       ; $51a3: $ff
    ld bc, $f3ff                                  ; $51a4: $01 $ff $f3
    rlca                                          ; $51a7: $07
    ld [bc], a                                    ; $51a8: $02

jr_0ee_51a9:
    ld bc, $068c                                  ; $51a9: $01 $8c $06
    rlca                                          ; $51ac: $07
    dec c                                         ; $51ad: $0d
    ld a, [bc]                                    ; $51ae: $0a
    ld a, [de]                                    ; $51af: $1a
    dec d                                         ; $51b0: $15
    ld de, $1d1e                                  ; $51b1: $11 $1e $1d
    rra                                           ; $51b4: $1f
    ld b, $07                                     ; $51b5: $06 $07
    inc b                                         ; $51b7: $04
    ld bc, $0684                                  ; $51b8: $01 $84 $06
    rlca                                          ; $51bb: $07
    rrca                                          ; $51bc: $0f
    add hl, bc                                    ; $51bd: $09
    ld [bc], a                                    ; $51be: $02
    ld b, $08                                     ; $51bf: $06 $08
    nop                                           ; $51c1: $00
    ld [bc], a                                    ; $51c2: $02
    dec c                                         ; $51c3: $0d
    sbc h                                         ; $51c4: $9c
    rra                                           ; $51c5: $1f
    inc de                                        ; $51c6: $13
    rst $38                                       ; $51c7: $ff
    db $fd                                        ; $51c8: $fd
    xor e                                         ; $51c9: $ab
    ld e, e                                       ; $51ca: $5b
    push af                                       ; $51cb: $f5
    ld c, $eb                                     ; $51cc: $0e $eb
    inc e                                         ; $51ce: $1c
    sbc l                                         ; $51cf: $9d
    ld a, [hl]                                    ; $51d0: $7e
    dec sp                                        ; $51d1: $3b
    rst $20                                       ; $51d2: $e7
    reti                                          ; $51d3: $d9


    rst $38                                       ; $51d4: $ff
    rst $20                                       ; $51d5: $e7
    and [hl]                                      ; $51d6: $a6
    push bc                                       ; $51d7: $c5
    ld b, a                                       ; $51d8: $47
    adc [hl]                                      ; $51d9: $8e
    adc d                                         ; $51da: $8a
    ld c, $0a                                     ; $51db: $0e $0a
    inc e                                         ; $51dd: $1c
    inc d                                         ; $51de: $14
    inc [hl]                                      ; $51df: $34
    inc l                                         ; $51e0: $2c
    ld [bc], a                                    ; $51e1: $02
    jr jr_0ee_51e6                                ; $51e2: $18 $02

    adc b                                         ; $51e4: $88
    sbc [hl]                                      ; $51e5: $9e

jr_0ee_51e6:
    call c, $f554                                 ; $51e6: $dc $54 $f5
    ld l, l                                       ; $51e9: $6d
    ld l, a                                       ; $51ea: $6f
    cp $1d                                        ; $51eb: $fe $1d
    rst $38                                       ; $51ed: $ff
    rst $30                                       ; $51ee: $f7
    rrca                                          ; $51ef: $0f
    rst $38                                       ; $51f0: $ff
    dec d                                         ; $51f1: $15
    cp $bf                                        ; $51f2: $fe $bf
    ld c, a                                       ; $51f4: $4f
    db $fc                                        ; $51f5: $fc
    rst $38                                       ; $51f6: $ff
    ld l, e                                       ; $51f7: $6b
    db $fc                                        ; $51f8: $fc
    db $ec                                        ; $51f9: $ec
    jr z, jr_0ee_5234                             ; $51fa: $28 $38

    inc e                                         ; $51fc: $1c
    inc d                                         ; $51fd: $14
    inc e                                         ; $51fe: $1c
    inc d                                         ; $51ff: $14
    inc e                                         ; $5200: $1c
    inc d                                         ; $5201: $14
    ld d, $1a                                     ; $5202: $16 $1a
    ld [bc], a                                    ; $5204: $02
    inc c                                         ; $5205: $0c
    ld e, $00                                     ; $5206: $1e $00
    ld [bc], a                                    ; $5208: $02
    ret nz                                        ; $5209: $c0

    add h                                         ; $520a: $84
    ld hl, sp+$38                                 ; $520b: $f8 $38
    ret c                                         ; $520d: $d8

    add sp, $02                                   ; $520e: $e8 $02
    jr nc, jr_0ee_5214                            ; $5210: $30 $02

    nop                                           ; $5212: $00
    ld [bc], a                                    ; $5213: $02

jr_0ee_5214:
    add b                                         ; $5214: $80
    adc b                                         ; $5215: $88
    ret nz                                        ; $5216: $c0

    ld b, b                                       ; $5217: $40

jr_0ee_5218:
    ld [hl], b                                    ; $5218: $70
    or b                                          ; $5219: $b0
    cp $ce                                        ; $521a: $fe $ce
    scf                                           ; $521c: $37
    add hl, sp                                    ; $521d: $39
    ld [bc], a                                    ; $521e: $02
    ld c, $0a                                     ; $521f: $0e $0a
    nop                                           ; $5221: $00
    rst $38                                       ; $5222: $ff
    rrca                                          ; $5223: $0f
    dec b                                         ; $5224: $05
    pop af                                        ; $5225: $f1
    inc de                                        ; $5226: $13
    ld [$f403], a                                 ; $5227: $ea $03 $f4
    ld a, [c]                                     ; $522a: $f2
    pop af                                        ; $522b: $f1
    ld a, [$02f2]                                 ; $522c: $fa $f2 $02
    di                                            ; $522f: $f3
    rlca                                          ; $5230: $07
    ld bc, $02f4                                  ; $5231: $01 $f4 $02

jr_0ee_5234:
    rrca                                          ; $5234: $0f
    sub h                                         ; $5235: $94
    dec [hl]                                      ; $5236: $35
    ld a, [hl-]                                   ; $5237: $3a
    ld c, a                                       ; $5238: $4f
    ld [hl], b                                    ; $5239: $70
    ld d, a                                       ; $523a: $57
    ld l, b                                       ; $523b: $68
    adc [hl]                                      ; $523c: $8e
    pop af                                        ; $523d: $f1
    db $eb                                        ; $523e: $eb
    rst $38                                       ; $523f: $ff
    ld [hl], $3f                                  ; $5240: $36 $3f
    rrca                                          ; $5242: $0f
    dec c                                         ; $5243: $0d
    ld c, $0a                                     ; $5244: $0e $0a
    inc [hl]                                      ; $5246: $34
    inc a                                         ; $5247: $3c
    ld a, b                                       ; $5248: $78
    ld c, b                                       ; $5249: $48
    ld [bc], a                                    ; $524a: $02
    jr nc, @+$04                                  ; $524b: $30 $02

    ld bc, $0006                                  ; $524d: $01 $06 $00
    ld [bc], a                                    ; $5250: $02
    inc b                                         ; $5251: $04
    sbc e                                         ; $5252: $9b
    ld l, d                                       ; $5253: $6a
    ld l, [hl]                                    ; $5254: $6e
    rst $38                                       ; $5255: $ff
    sbc e                                         ; $5256: $9b
    ei                                            ; $5257: $fb
    rst $28                                       ; $5258: $ef
    ld e, h                                       ; $5259: $5c
    rst $18                                       ; $525a: $df
    and a                                         ; $525b: $a7
    ld a, b                                       ; $525c: $78
    ld e, a                                       ; $525d: $5f
    ldh [$cf], a                                  ; $525e: $e0 $cf
    push af                                       ; $5260: $f5
    db $db                                        ; $5261: $db
    ccf                                           ; $5262: $3f
    adc $fb                                       ; $5263: $ce $fb
    ccf                                           ; $5265: $3f
    scf                                           ; $5266: $37
    add hl, hl                                    ; $5267: $29
    add hl, sp                                    ; $5268: $39
    ld [hl], c                                    ; $5269: $71
    ld d, c                                       ; $526a: $51
    ld [hl], b                                    ; $526b: $70
    ld d, b                                       ; $526c: $50
    ldh [rSC], a                                  ; $526d: $e0 $02
    and b                                         ; $526f: $a0
    add c                                         ; $5270: $81
    ld h, b                                       ; $5271: $60
    ld [bc], a                                    ; $5272: $02
    xor $93                                       ; $5273: $ee $93
    rst $38                                       ; $5275: $ff
    ld sp, $ffee                                  ; $5276: $31 $ee $ff
    ld [hl], c                                    ; $5279: $71
    pop af                                        ; $527a: $f1
    ld a, b                                       ; $527b: $78
    xor b                                         ; $527c: $a8
    db $f4                                        ; $527d: $f4
    cp h                                          ; $527e: $bc
    cp $e2                                        ; $527f: $fe $e2
    ld a, e                                       ; $5281: $7b
    db $dd                                        ; $5282: $dd
    rst $20                                       ; $5283: $e7
    ld h, [hl]                                    ; $5284: $66
    pop hl                                        ; $5285: $e1
    ld h, c                                       ; $5286: $61
    ret nz                                        ; $5287: $c0

    ld [bc], a                                    ; $5288: $02
    ld b, b                                       ; $5289: $40
    add a                                         ; $528a: $87
    ret nz                                        ; $528b: $c0

    ldh [$a0], a                                  ; $528c: $e0 $a0
    ldh [$a0], a                                  ; $528e: $e0 $a0
    or b                                          ; $5290: $b0
    ret nc                                        ; $5291: $d0

    ld [bc], a                                    ; $5292: $02
    ld [hl], b                                    ; $5293: $70
    inc bc                                        ; $5294: $03
    jr jr_0ee_5218                                ; $5295: $18 $81

    ld [$1002], sp                                ; $5297: $08 $02 $10
    ld b, $00                                     ; $529a: $06 $00
    ld [bc], a                                    ; $529c: $02
    db $10                                        ; $529d: $10
    add h                                         ; $529e: $84
    ld e, $0e                                     ; $529f: $1e $0e
    rla                                           ; $52a1: $17
    add hl, de                                    ; $52a2: $19
    ld [bc], a                                    ; $52a3: $02
    ld c, $0c                                     ; $52a4: $0e $0c
    nop                                           ; $52a6: $00
    ld [bc], a                                    ; $52a7: $02
    inc bc                                        ; $52a8: $03
    ld e, $00                                     ; $52a9: $1e $00
    rst $38                                       ; $52ab: $ff
    dec c                                         ; $52ac: $0d
    inc b                                         ; $52ad: $04
    pop af                                        ; $52ae: $f1
    inc de                                        ; $52af: $13
    ld [$f203], a                                 ; $52b0: $ea $03 $f2
    ld a, [c]                                     ; $52b3: $f2
    ld a, [c]                                     ; $52b4: $f2
    ld a, [$02f2]                                 ; $52b5: $fa $f2 $02
    ld a, [c]                                     ; $52b8: $f2
    ld b, $04                                     ; $52b9: $06 $04
    nop                                           ; $52bb: $00
    ld [bc], a                                    ; $52bc: $02
    rlca                                          ; $52bd: $07
    sub h                                         ; $52be: $94
    dec e                                         ; $52bf: $1d
    ld a, [de]                                    ; $52c0: $1a
    scf                                           ; $52c1: $37
    jr z, jr_0ee_5333                             ; $52c2: $28 $6f

    ld d, b                                       ; $52c4: $50
    sub [hl]                                      ; $52c5: $96
    jp hl                                         ; $52c6: $e9


    pop de                                        ; $52c7: $d1
    rst $38                                       ; $52c8: $ff
    ld l, d                                       ; $52c9: $6a
    ld a, a                                       ; $52ca: $7f
    rra                                           ; $52cb: $1f
    dec e                                         ; $52cc: $1d
    ld c, $0a                                     ; $52cd: $0e $0a
    inc [hl]                                      ; $52cf: $34
    inc a                                         ; $52d0: $3c
    ld a, b                                       ; $52d1: $78
    ld c, b                                       ; $52d2: $48
    ld [bc], a                                    ; $52d3: $02
    jr nc, jr_0ee_52da                            ; $52d4: $30 $04

    ld bc, $6e02                                  ; $52d6: $01 $02 $6e
    sbc c                                         ; $52d9: $99

jr_0ee_52da:
    rst $38                                       ; $52da: $ff
    sbc e                                         ; $52db: $9b
    ld a, e                                       ; $52dc: $7b
    rst $28                                       ; $52dd: $ef
    call c, $b7df                                 ; $52de: $dc $df $b7
    ld a, b                                       ; $52e1: $78
    ld a, a                                       ; $52e2: $7f
    ldh [$cb], a                                  ; $52e3: $e0 $cb
    push af                                       ; $52e5: $f5
    rst $18                                       ; $52e6: $df
    ccf                                           ; $52e7: $3f
    jp z, $bff7                                   ; $52e8: $ca $f7 $bf

    or a                                          ; $52eb: $b7
    add hl, hl                                    ; $52ec: $29
    add hl, sp                                    ; $52ed: $39
    ld [hl], c                                    ; $52ee: $71
    ld d, c                                       ; $52ef: $51
    ld [hl], b                                    ; $52f0: $70
    ld d, b                                       ; $52f1: $50
    ldh [rSC], a                                  ; $52f2: $e0 $02
    and b                                         ; $52f4: $a0
    add c                                         ; $52f5: $81
    ld h, b                                       ; $52f6: $60
    ld [bc], a                                    ; $52f7: $02
    ret nz                                        ; $52f8: $c0

    ld [bc], a                                    ; $52f9: $02
    adc $9c                                       ; $52fa: $ce $9c
    cp a                                          ; $52fc: $bf
    ld [hl], c                                    ; $52fd: $71
    ld l, [hl]                                    ; $52fe: $6e
    rst $38                                       ; $52ff: $ff
    add hl, sp                                    ; $5300: $39
    jp hl                                         ; $5301: $e9


    ld l, h                                       ; $5302: $6c
    cp h                                          ; $5303: $bc
    cp b                                          ; $5304: $b8
    ld hl, sp-$04                                 ; $5305: $f8 $fc
    db $e4                                        ; $5307: $e4
    or $da                                        ; $5308: $f6 $da
    ld l, l                                       ; $530a: $6d
    rst $28                                       ; $530b: $ef
    jp $c142                                      ; $530c: $c3 $42 $c1


    ld b, c                                       ; $530f: $41
    ld b, b                                       ; $5310: $40
    ret nz                                        ; $5311: $c0

    ldh [$a0], a                                  ; $5312: $e0 $a0
    ldh [$a0], a                                  ; $5314: $e0 $a0
    or b                                          ; $5316: $b0
    ret nc                                        ; $5317: $d0

    ld [bc], a                                    ; $5318: $02
    ld [hl], b                                    ; $5319: $70
    ld [bc], a                                    ; $531a: $02
    nop                                           ; $531b: $00
    inc bc                                        ; $531c: $03
    ld c, $81                                     ; $531d: $0e $81
    ld [bc], a                                    ; $531f: $02
    ld [bc], a                                    ; $5320: $02
    inc c                                         ; $5321: $0c
    ld [$0200], sp                                ; $5322: $08 $00 $02
    ld [$0e84], sp                                ; $5325: $08 $84 $0e
    ld b, $0b                                     ; $5328: $06 $0b
    dec c                                         ; $532a: $0d
    ld [bc], a                                    ; $532b: $02
    ld b, $08                                     ; $532c: $06 $08
    nop                                           ; $532e: $00
    rst $38                                       ; $532f: $ff
    rrca                                          ; $5330: $0f
    dec b                                         ; $5331: $05
    pop af                                        ; $5332: $f1

jr_0ee_5333:
    inc de                                        ; $5333: $13
    ld [$f403], a                                 ; $5334: $ea $03 $f4
    ld a, [c]                                     ; $5337: $f2
    pop af                                        ; $5338: $f1
    ld a, [$02f2]                                 ; $5339: $fa $f2 $02
    db $f4                                        ; $533c: $f4
    dec b                                         ; $533d: $05
    ld bc, $02f4                                  ; $533e: $01 $f4 $02
    rlca                                          ; $5341: $07
    sub h                                         ; $5342: $94
    dec e                                         ; $5343: $1d
    ld a, [de]                                    ; $5344: $1a
    scf                                           ; $5345: $37
    jr z, jr_0ee_53b7                             ; $5346: $28 $6f

    ld d, b                                       ; $5348: $50
    sub [hl]                                      ; $5349: $96
    jp hl                                         ; $534a: $e9


    pop de                                        ; $534b: $d1
    rst $38                                       ; $534c: $ff
    ld l, d                                       ; $534d: $6a
    ld a, a                                       ; $534e: $7f
    rra                                           ; $534f: $1f
    dec e                                         ; $5350: $1d
    ld c, $0a                                     ; $5351: $0e $0a
    inc [hl]                                      ; $5353: $34
    inc a                                         ; $5354: $3c
    ld a, b                                       ; $5355: $78
    ld c, b                                       ; $5356: $48
    ld [bc], a                                    ; $5357: $02
    jr nc, jr_0ee_535e                            ; $5358: $30 $04

    ld bc, $0004                                  ; $535a: $01 $04 $00
    ld [bc], a                                    ; $535d: $02

jr_0ee_535e:
    inc b                                         ; $535e: $04
    sbc e                                         ; $535f: $9b
    ld l, d                                       ; $5360: $6a
    ld l, [hl]                                    ; $5361: $6e
    rst $38                                       ; $5362: $ff
    sbc e                                         ; $5363: $9b
    ld a, e                                       ; $5364: $7b
    rst $28                                       ; $5365: $ef
    call c, $b7df                                 ; $5366: $dc $df $b7
    ld a, b                                       ; $5369: $78
    ld e, a                                       ; $536a: $5f
    ldh [$ef], a                                  ; $536b: $e0 $ef
    push af                                       ; $536d: $f5
    db $db                                        ; $536e: $db
    ccf                                           ; $536f: $3f
    adc $f7                                       ; $5370: $ce $f7
    cp a                                          ; $5372: $bf
    or a                                          ; $5373: $b7
    add hl, hl                                    ; $5374: $29
    add hl, sp                                    ; $5375: $39
    ld [hl], c                                    ; $5376: $71
    ld d, c                                       ; $5377: $51
    ld [hl], b                                    ; $5378: $70
    ld d, b                                       ; $5379: $50
    ldh [rSC], a                                  ; $537a: $e0 $02
    and b                                         ; $537c: $a0
    add c                                         ; $537d: $81
    ld h, b                                       ; $537e: $60
    ld [bc], a                                    ; $537f: $02
    ldh [$8a], a                                  ; $5380: $e0 $8a
    xor $2e                                       ; $5382: $ee $2e
    ld a, a                                       ; $5384: $7f
    pop af                                        ; $5385: $f1
    ld l, [hl]                                    ; $5386: $6e
    rst $38                                       ; $5387: $ff
    ld sp, hl                                     ; $5388: $f9
    add hl, hl                                    ; $5389: $29
    db $ec                                        ; $538a: $ec
    cp h                                          ; $538b: $bc
    ld [bc], a                                    ; $538c: $02
    ld hl, sp-$70                                 ; $538d: $f8 $90
    ld a, h                                       ; $538f: $7c
    db $e4                                        ; $5390: $e4
    or $5a                                        ; $5391: $f6 $5a
    ld [$c76e], a                                 ; $5393: $ea $6e $c7
    ld b, l                                       ; $5396: $45
    ld b, e                                       ; $5397: $43
    jp nz, $a1e1                                  ; $5398: $c2 $e1 $a1

    ldh [$a0], a                                  ; $539b: $e0 $a0
    or b                                          ; $539d: $b0
    ret nc                                        ; $539e: $d0

    ld [bc], a                                    ; $539f: $02
    ld [hl], b                                    ; $53a0: $70
    inc bc                                        ; $53a1: $03
    rlca                                          ; $53a2: $07
    add c                                         ; $53a3: $81
    ld bc, $0602                                  ; $53a4: $01 $02 $06
    inc c                                         ; $53a7: $0c
    nop                                           ; $53a8: $00
    ld [bc], a                                    ; $53a9: $02
    ld b, $82                                     ; $53aa: $06 $82
    inc bc                                        ; $53ac: $03
    dec b                                         ; $53ad: $05
    ld [bc], a                                    ; $53ae: $02
    rlca                                          ; $53af: $07
    ld [$0200], sp                                ; $53b0: $08 $00 $02
    inc bc                                        ; $53b3: $03
    ld e, $00                                     ; $53b4: $1e $00
    rst $38                                       ; $53b6: $ff

jr_0ee_53b7:
    rrca                                          ; $53b7: $0f
    dec b                                         ; $53b8: $05
    pop af                                        ; $53b9: $f1
    inc de                                        ; $53ba: $13
    ld [$f403], a                                 ; $53bb: $ea $03 $f4
    rst $28                                       ; $53be: $ef
    ld a, [c]                                     ; $53bf: $f2
    rst $30                                       ; $53c0: $f7
    pop af                                        ; $53c1: $f1
    rst $38                                       ; $53c2: $ff
    ld bc, $f3ff                                  ; $53c3: $01 $ff $f3
    rlca                                          ; $53c6: $07
    ld [bc], a                                    ; $53c7: $02
    ld bc, $068c                                  ; $53c8: $01 $8c $06
    rlca                                          ; $53cb: $07
    add hl, bc                                    ; $53cc: $09
    ld c, $0a                                     ; $53cd: $0e $0a
    dec c                                         ; $53cf: $0d
    ld de, $1d1e                                  ; $53d0: $11 $1e $1d
    rra                                           ; $53d3: $1f
    ld b, $07                                     ; $53d4: $06 $07
    inc b                                         ; $53d6: $04
    ld bc, $0684                                  ; $53d7: $01 $84 $06
    rlca                                          ; $53da: $07
    rrca                                          ; $53db: $0f
    add hl, bc                                    ; $53dc: $09
    ld [bc], a                                    ; $53dd: $02
    ld b, $08                                     ; $53de: $06 $08
    nop                                           ; $53e0: $00
    ld [bc], a                                    ; $53e1: $02
    dec c                                         ; $53e2: $0d
    sbc h                                         ; $53e3: $9c
    rra                                           ; $53e4: $1f
    inc de                                        ; $53e5: $13
    rst $38                                       ; $53e6: $ff
    db $fd                                        ; $53e7: $fd
    xor e                                         ; $53e8: $ab
    ld e, e                                       ; $53e9: $5b
    db $f4                                        ; $53ea: $f4
    rrca                                          ; $53eb: $0f
    db $eb                                        ; $53ec: $eb
    inc e                                         ; $53ed: $1c
    db $dd                                        ; $53ee: $dd
    ld a, $7b                                     ; $53ef: $3e $7b
    rst $20                                       ; $53f1: $e7
    reti                                          ; $53f2: $d9


    rst $38                                       ; $53f3: $ff
    rst $30                                       ; $53f4: $f7
    or [hl]                                       ; $53f5: $b6
    push bc                                       ; $53f6: $c5
    ld b, a                                       ; $53f7: $47
    adc [hl]                                      ; $53f8: $8e
    adc d                                         ; $53f9: $8a
    ld c, $0a                                     ; $53fa: $0e $0a
    inc e                                         ; $53fc: $1c
    inc d                                         ; $53fd: $14
    inc [hl]                                      ; $53fe: $34
    inc l                                         ; $53ff: $2c
    ld [bc], a                                    ; $5400: $02
    jr jr_0ee_5405                                ; $5401: $18 $02

    adc b                                         ; $5403: $88
    sbc [hl]                                      ; $5404: $9e

jr_0ee_5405:
    call c, $f554                                 ; $5405: $dc $54 $f5
    ld l, l                                       ; $5408: $6d
    ld l, a                                       ; $5409: $6f
    cp $9d                                        ; $540a: $fe $9d
    rst $38                                       ; $540c: $ff
    rst $30                                       ; $540d: $f7
    rrca                                          ; $540e: $0f
    rst $38                                       ; $540f: $ff
    dec d                                         ; $5410: $15
    cp $bf                                        ; $5411: $fe $bf
    ld c, a                                       ; $5413: $4f
    db $fc                                        ; $5414: $fc
    cp $6b                                        ; $5415: $fe $6b
    db $fd                                        ; $5417: $fd
    db $ed                                        ; $5418: $ed
    jr z, @+$3a                                   ; $5419: $28 $38

    inc e                                         ; $541b: $1c
    inc d                                         ; $541c: $14
    inc e                                         ; $541d: $1c
    inc d                                         ; $541e: $14
    inc e                                         ; $541f: $1c
    inc d                                         ; $5420: $14
    ld d, $1a                                     ; $5421: $16 $1a
    ld [bc], a                                    ; $5423: $02
    inc c                                         ; $5424: $0c
    ld e, $00                                     ; $5425: $1e $00
    ld [bc], a                                    ; $5427: $02
    add b                                         ; $5428: $80
    add [hl]                                      ; $5429: $86
    ret nz                                        ; $542a: $c0

    ld b, b                                       ; $542b: $40
    ldh a, [$b0]                                  ; $542c: $f0 $b0
    ld e, b                                       ; $542e: $58
    ld l, b                                       ; $542f: $68
    ld [bc], a                                    ; $5430: $02
    jr nc, jr_0ee_5437                            ; $5431: $30 $04

    add b                                         ; $5433: $80
    add c                                         ; $5434: $81
    ret nz                                        ; $5435: $c0

    ld [bc], a                                    ; $5436: $02

jr_0ee_5437:
    ld b, b                                       ; $5437: $40
    add a                                         ; $5438: $87
    ret nz                                        ; $5439: $c0

    ldh [$a0], a                                  ; $543a: $e0 $a0
    ld a, b                                       ; $543c: $78
    ld e, b                                       ; $543d: $58
    inc l                                         ; $543e: $2c
    inc [hl]                                      ; $543f: $34
    ld [bc], a                                    ; $5440: $02
    inc e                                         ; $5441: $1c
    ld b, $00                                     ; $5442: $06 $00
    rst $38                                       ; $5444: $ff
    dec c                                         ; $5445: $0d
    inc b                                         ; $5446: $04
    pop af                                        ; $5447: $f1
    inc de                                        ; $5448: $13
    ld [$f203], a                                 ; $5449: $ea $03 $f2
    ld a, [c]                                     ; $544c: $f2
    ld a, [c]                                     ; $544d: $f2
    ld a, [$02f2]                                 ; $544e: $fa $f2 $02
    ld a, [c]                                     ; $5451: $f2
    ld b, $04                                     ; $5452: $06 $04
    nop                                           ; $5454: $00
    ld [bc], a                                    ; $5455: $02
    rlca                                          ; $5456: $07
    sub h                                         ; $5457: $94
    dec e                                         ; $5458: $1d
    ld a, [de]                                    ; $5459: $1a
    scf                                           ; $545a: $37
    jr z, jr_0ee_54cc                             ; $545b: $28 $6f

    ld d, b                                       ; $545d: $50
    sub [hl]                                      ; $545e: $96
    jp hl                                         ; $545f: $e9


    pop de                                        ; $5460: $d1
    rst $38                                       ; $5461: $ff
    ld l, d                                       ; $5462: $6a
    ld a, a                                       ; $5463: $7f
    rra                                           ; $5464: $1f
    dec e                                         ; $5465: $1d
    ld c, $0a                                     ; $5466: $0e $0a
    inc [hl]                                      ; $5468: $34
    inc a                                         ; $5469: $3c
    ld a, b                                       ; $546a: $78
    ld c, b                                       ; $546b: $48
    ld [bc], a                                    ; $546c: $02
    jr nc, jr_0ee_5473                            ; $546d: $30 $04

    ld bc, $6e02                                  ; $546f: $01 $02 $6e
    sbc c                                         ; $5472: $99

jr_0ee_5473:
    rst $38                                       ; $5473: $ff
    sbc e                                         ; $5474: $9b
    ld a, e                                       ; $5475: $7b
    rst $28                                       ; $5476: $ef
    call c, $b7df                                 ; $5477: $dc $df $b7
    ld a, b                                       ; $547a: $78
    ld a, a                                       ; $547b: $7f
    ldh [$cb], a                                  ; $547c: $e0 $cb
    push af                                       ; $547e: $f5
    rst $18                                       ; $547f: $df
    ccf                                           ; $5480: $3f
    jp z, $bff7                                   ; $5481: $ca $f7 $bf

    or a                                          ; $5484: $b7
    add hl, hl                                    ; $5485: $29
    add hl, sp                                    ; $5486: $39
    ld [hl], c                                    ; $5487: $71
    ld d, c                                       ; $5488: $51
    ld [hl], b                                    ; $5489: $70
    ld d, b                                       ; $548a: $50
    ldh [rSC], a                                  ; $548b: $e0 $02
    and b                                         ; $548d: $a0
    add c                                         ; $548e: $81
    ld h, b                                       ; $548f: $60
    ld [bc], a                                    ; $5490: $02
    ret nz                                        ; $5491: $c0

    ld [bc], a                                    ; $5492: $02
    adc $9c                                       ; $5493: $ce $9c
    rst $38                                       ; $5495: $ff
    ld sp, $ff6e                                  ; $5496: $31 $6e $ff
    add hl, sp                                    ; $5499: $39
    jp hl                                         ; $549a: $e9


    ld l, h                                       ; $549b: $6c
    cp h                                          ; $549c: $bc
    cp b                                          ; $549d: $b8
    ld hl, sp-$04                                 ; $549e: $f8 $fc
    db $e4                                        ; $54a0: $e4
    or $da                                        ; $54a1: $f6 $da
    ld l, l                                       ; $54a3: $6d
    rst $28                                       ; $54a4: $ef
    jp $c142                                      ; $54a5: $c3 $42 $c1


    ld b, c                                       ; $54a8: $41
    ld b, b                                       ; $54a9: $40
    ret nz                                        ; $54aa: $c0

    ldh [$a0], a                                  ; $54ab: $e0 $a0
    ldh [$a0], a                                  ; $54ad: $e0 $a0
    or b                                          ; $54af: $b0
    ret nc                                        ; $54b0: $d0

    ld [bc], a                                    ; $54b1: $02
    ld [hl], b                                    ; $54b2: $70
    ld [bc], a                                    ; $54b3: $02
    nop                                           ; $54b4: $00
    inc bc                                        ; $54b5: $03
    ld c, $81                                     ; $54b6: $0e $81
    ld [bc], a                                    ; $54b8: $02
    ld [bc], a                                    ; $54b9: $02
    inc c                                         ; $54ba: $0c
    ld [$0200], sp                                ; $54bb: $08 $00 $02
    ld [$0e84], sp                                ; $54be: $08 $84 $0e
    ld b, $0b                                     ; $54c1: $06 $0b
    dec c                                         ; $54c3: $0d
    ld [bc], a                                    ; $54c4: $02
    ld b, $08                                     ; $54c5: $06 $08
    nop                                           ; $54c7: $00
    rst $38                                       ; $54c8: $ff
    dec c                                         ; $54c9: $0d
    inc b                                         ; $54ca: $04
    pop af                                        ; $54cb: $f1

jr_0ee_54cc:
    inc de                                        ; $54cc: $13
    ld [$f503], a                                 ; $54cd: $ea $03 $f5
    ldh a, [$f2]                                  ; $54d0: $f0 $f2
    ld hl, sp-$10                                 ; $54d2: $f8 $f0
    nop                                           ; $54d4: $00
    ldh a, [$08]                                  ; $54d5: $f0 $08
    ld [bc], a                                    ; $54d7: $02
    inc bc                                        ; $54d8: $03
    sub d                                         ; $54d9: $92
    dec c                                         ; $54da: $0d
    ld c, $1b                                     ; $54db: $0e $1b
    inc d                                         ; $54dd: $14
    dec [hl]                                      ; $54de: $35
    ld a, [hl+]                                   ; $54df: $2a
    ld d, e                                       ; $54e0: $53
    ld a, l                                       ; $54e1: $7d
    ld l, d                                       ; $54e2: $6a
    ld a, a                                       ; $54e3: $7f
    scf                                           ; $54e4: $37
    dec a                                         ; $54e5: $3d
    rrca                                          ; $54e6: $0f
    dec c                                         ; $54e7: $0d
    dec bc                                        ; $54e8: $0b
    rrca                                          ; $54e9: $0f
    ld e, $12                                     ; $54ea: $1e $12
    ld [bc], a                                    ; $54ec: $02
    inc c                                         ; $54ed: $0c
    ld a, [bc]                                    ; $54ee: $0a
    nop                                           ; $54ef: $00
    ld [bc], a                                    ; $54f0: $02
    ld h, a                                       ; $54f1: $67
    sbc h                                         ; $54f2: $9c
    rst $38                                       ; $54f3: $ff
    sbc e                                         ; $54f4: $9b
    cp d                                          ; $54f5: $ba
    rst $28                                       ; $54f6: $ef
    rst $18                                       ; $54f7: $df
    call c, $b87f                                 ; $54f8: $dc $7f $b8
    sub $39                                       ; $54fb: $d6 $39
    jp hl                                         ; $54fd: $e9


    rst $30                                       ; $54fe: $f7
    rst $18                                       ; $54ff: $df
    dec sp                                        ; $5500: $3b
    adc $f7                                       ; $5501: $ce $f7
    cp a                                          ; $5503: $bf

jr_0ee_5504:
    rst $30                                       ; $5504: $f7
    call nc, $1cdc                                ; $5505: $d4 $dc $1c
    inc d                                         ; $5508: $14
    jr c, jr_0ee_5533                             ; $5509: $38 $28

    jr c, jr_0ee_5535                             ; $550b: $38 $28

    ld [hl], b                                    ; $550d: $70
    ld d, b                                       ; $550e: $50
    ld [bc], a                                    ; $550f: $02
    ld [hl], b                                    ; $5510: $70
    ld [bc], a                                    ; $5511: $02
    rra                                           ; $5512: $1f
    adc [hl]                                      ; $5513: $8e
    db $fd                                        ; $5514: $fd
    ld [c], a                                     ; $5515: $e2
    sbc a                                         ; $5516: $9f
    ld a, a                                       ; $5517: $7f
    ldh a, [$d0]                                  ; $5518: $f0 $d0
    jr c, jr_0ee_5504                             ; $551a: $38 $e8

    cp [hl]                                       ; $551c: $be
    ld e, [hl]                                    ; $551d: $5e
    rst $18                                       ; $551e: $df
    ld [hl], c                                    ; $551f: $71
    dec a                                         ; $5520: $3d
    xor $02                                       ; $5521: $ee $02
    di                                            ; $5523: $f3
    adc h                                         ; $5524: $8c
    ld h, b                                       ; $5525: $60
    and b                                         ; $5526: $a0
    or b                                          ; $5527: $b0
    ret nc                                        ; $5528: $d0

    ld d, b                                       ; $5529: $50
    ld [hl], b                                    ; $552a: $70
    jr c, @+$2a                                   ; $552b: $38 $28

    ld e, $16                                     ; $552d: $1e $16
    dec bc                                        ; $552f: $0b
    dec c                                         ; $5530: $0d
    ld [bc], a                                    ; $5531: $02
    rlca                                          ; $5532: $07

jr_0ee_5533:
    inc bc                                        ; $5533: $03
    ret nz                                        ; $5534: $c0

jr_0ee_5535:
    add c                                         ; $5535: $81
    ld b, b                                       ; $5536: $40
    ld [bc], a                                    ; $5537: $02
    add b                                         ; $5538: $80
    ld b, $00                                     ; $5539: $06 $00
    ld [bc], a                                    ; $553b: $02
    add b                                         ; $553c: $80
    add h                                         ; $553d: $84
    ld hl, sp+$78                                 ; $553e: $f8 $78
    call c, $02a4                                 ; $5540: $dc $a4 $02
    ld a, b                                       ; $5543: $78
    inc c                                         ; $5544: $0c
    nop                                           ; $5545: $00
    rst $38                                       ; $5546: $ff
    ld de, $f106                                  ; $5547: $11 $06 $f1
    inc de                                        ; $554a: $13
    ld [$f203], a                                 ; $554b: $ea $03 $f2
    pop af                                        ; $554e: $f1
    db $ed                                        ; $554f: $ed
    ld sp, hl                                     ; $5550: $f9
    db $fd                                        ; $5551: $fd
    ld sp, hl                                     ; $5552: $f9
    ld [$fa01], a                                 ; $5553: $ea $01 $fa
    ld bc, $09f1                                  ; $5556: $01 $f1 $09
    ld [bc], a                                    ; $5559: $02
    ld bc, $0381                                  ; $555a: $01 $81 $03
    ld [bc], a                                    ; $555d: $02
    ld [bc], a                                    ; $555e: $02
    add c                                         ; $555f: $81
    inc bc                                        ; $5560: $03
    ld [bc], a                                    ; $5561: $02
    rlca                                          ; $5562: $07
    sub d                                         ; $5563: $92
    dec e                                         ; $5564: $1d
    ld a, [de]                                    ; $5565: $1a
    cpl                                           ; $5566: $2f
    jr nc, @+$59                                  ; $5567: $30 $57

    ld l, e                                       ; $5569: $6b
    ld l, a                                       ; $556a: $6f
    ld d, h                                       ; $556b: $54
    xor e                                         ; $556c: $ab
    rst $38                                       ; $556d: $ff
    rst $18                                       ; $556e: $df
    ei                                            ; $556f: $fb
    ld a, a                                       ; $5570: $7f
    ld a, e                                       ; $5571: $7b
    ld d, $1e                                     ; $5572: $16 $1e
    inc a                                         ; $5574: $3c
    inc h                                         ; $5575: $24
    ld [bc], a                                    ; $5576: $02
    inc e                                         ; $5577: $1c
    inc b                                         ; $5578: $04
    nop                                           ; $5579: $00
    ld [bc], a                                    ; $557a: $02
    ld bc, $0383                                  ; $557b: $01 $83 $03
    ld [bc], a                                    ; $557e: $02
    inc bc                                        ; $557f: $03
    ld [bc], a                                    ; $5580: $02
    ld [bc], a                                    ; $5581: $02
    sub [hl]                                      ; $5582: $96
    inc bc                                        ; $5583: $03
    rrca                                          ; $5584: $0f
    dec c                                         ; $5585: $0d
    sub a                                         ; $5586: $97
    sbc a                                         ; $5587: $9f
    db $eb                                        ; $5588: $eb
    ld a, l                                       ; $5589: $7d
    or e                                          ; $558a: $b3
    cp $6e                                        ; $558b: $fe $6e
    ld [hl], e                                    ; $558d: $73
    db $fd                                        ; $558e: $fd
    db $e3                                        ; $558f: $e3
    cp [hl]                                       ; $5590: $be
    ld h, a                                       ; $5591: $67
    db $ed                                        ; $5592: $ed
    sbc $7a                                       ; $5593: $de $7a
    rst $28                                       ; $5595: $ef
    sbc l                                         ; $5596: $9d
    db $ed                                        ; $5597: $ed
    ld a, b                                       ; $5598: $78
    ld [bc], a                                    ; $5599: $02
    add sp, -$7a                                  ; $559a: $e8 $86
    ld hl, sp+$38                                 ; $559c: $f8 $38
    jr z, jr_0ee_55d8                             ; $559e: $28 $38

    jr z, @+$52                                   ; $55a0: $28 $50

    ld [bc], a                                    ; $55a2: $02
    ld [hl], b                                    ; $55a3: $70
    add c                                         ; $55a4: $81
    ld d, b                                       ; $55a5: $50
    ld [bc], a                                    ; $55a6: $02
    ld [hl], b                                    ; $55a7: $70
    ld d, $00                                     ; $55a8: $16 $00
    ld [bc], a                                    ; $55aa: $02
    jr jr_0ee_5533                                ; $55ab: $18 $86

    jr c, jr_0ee_55d7                             ; $55ad: $38 $28

    ldh a, [$d0]                                  ; $55af: $f0 $d0
    and b                                         ; $55b1: $a0
    ld h, b                                       ; $55b2: $60
    ld [bc], a                                    ; $55b3: $02
    ret nz                                        ; $55b4: $c0

    inc b                                         ; $55b5: $04
    add b                                         ; $55b6: $80
    ld [bc], a                                    ; $55b7: $02
    ld bc, $bf88                                  ; $55b8: $01 $88 $bf
    cp [hl]                                       ; $55bb: $be
    rst $30                                       ; $55bc: $f7
    ld c, c                                       ; $55bd: $49
    cp [hl]                                       ; $55be: $be
    cp $60                                        ; $55bf: $fe $60
    ldh [rSC], a                                  ; $55c1: $e0 $02
    and b                                         ; $55c3: $a0
    inc b                                         ; $55c4: $04
    add b                                         ; $55c5: $80
    adc b                                         ; $55c6: $88
    ret nz                                        ; $55c7: $c0

    ld b, b                                       ; $55c8: $40
    or b                                          ; $55c9: $b0
    ldh a, [$7c]                                  ; $55ca: $f0 $7c
    ld c, h                                       ; $55cc: $4c
    ld [hl], $3a                                  ; $55cd: $36 $3a
    ld [bc], a                                    ; $55cf: $02
    inc c                                         ; $55d0: $0c
    jr jr_0ee_55d3                                ; $55d1: $18 $00

jr_0ee_55d3:
    ld [bc], a                                    ; $55d3: $02
    ldh a, [$82]                                  ; $55d4: $f0 $82
    ld [hl], b                                    ; $55d6: $70

jr_0ee_55d7:
    sub b                                         ; $55d7: $90

jr_0ee_55d8:
    ld [bc], a                                    ; $55d8: $02
    ldh [rNR30], a                                ; $55d9: $e0 $1a
    nop                                           ; $55db: $00
    rst $38                                       ; $55dc: $ff
    rrca                                          ; $55dd: $0f
    dec b                                         ; $55de: $05
    pop af                                        ; $55df: $f1
    inc de                                        ; $55e0: $13
    ld [$f603], a                                 ; $55e1: $ea $03 $f6
    xor $f2                                       ; $55e4: $ee $f2
    or $ea                                        ; $55e6: $f6 $ea
    cp $fa                                        ; $55e8: $fe $fa
    cp $ed                                        ; $55ea: $fe $ed
    ld b, $02                                     ; $55ec: $06 $02
    inc bc                                        ; $55ee: $03
    add e                                         ; $55ef: $83
    dec b                                         ; $55f0: $05
    ld b, $0a                                     ; $55f1: $06 $0a
    ld [bc], a                                    ; $55f3: $02
    dec c                                         ; $55f4: $0d
    add l                                         ; $55f5: $85
    ld a, [bc]                                    ; $55f6: $0a
    dec d                                         ; $55f7: $15
    rra                                           ; $55f8: $1f
    dec de                                        ; $55f9: $1b
    rra                                           ; $55fa: $1f
    ld [bc], a                                    ; $55fb: $02
    rrca                                          ; $55fc: $0f
    add h                                         ; $55fd: $84
    ld [bc], a                                    ; $55fe: $02
    inc bc                                        ; $55ff: $03
    rlca                                          ; $5600: $07
    inc b                                         ; $5601: $04
    ld [bc], a                                    ; $5602: $02
    inc bc                                        ; $5603: $03
    inc c                                         ; $5604: $0c
    nop                                           ; $5605: $00
    ld [bc], a                                    ; $5606: $02
    inc sp                                        ; $5607: $33
    sub a                                         ; $5608: $97
    ld a, l                                       ; $5609: $7d
    ld c, a                                       ; $560a: $4f
    ld d, [hl]                                    ; $560b: $56
    ld a, a                                       ; $560c: $7f
    db $ed                                        ; $560d: $ed
    xor $bf                                       ; $560e: $ee $bf
    ld e, h                                       ; $5610: $5c
    or $0d                                        ; $5611: $f6 $0d
    db $fd                                        ; $5613: $fd
    ld a, e                                       ; $5614: $7b
    rst $28                                       ; $5615: $ef
    sbc l                                         ; $5616: $9d
    ld [hl], e                                    ; $5617: $73
    db $fd                                        ; $5618: $fd
    rst $28                                       ; $5619: $ef
    ld a, l                                       ; $561a: $7d
    db $fd                                        ; $561b: $fd
    ld a, a                                       ; $561c: $7f
    rst $00                                       ; $561d: $c7
    push bc                                       ; $561e: $c5
    add a                                         ; $561f: $87
    ld [bc], a                                    ; $5620: $02
    add l                                         ; $5621: $85
    add e                                         ; $5622: $83
    add a                                         ; $5623: $87
    ld c, $0a                                     ; $5624: $0e $0a
    ld [bc], a                                    ; $5626: $02
    ld c, $02                                     ; $5627: $0e $02
    ld b, $a0                                     ; $5629: $06 $a0
    ld c, $0a                                     ; $562b: $0e $0a
    inc a                                         ; $562d: $3c
    inc [hl]                                      ; $562e: $34
    ld l, b                                       ; $562f: $68
    ld e, b                                       ; $5630: $58
    ld [hl], b                                    ; $5631: $70
    ld d, b                                       ; $5632: $50
    ld [hl], c                                    ; $5633: $71
    ld d, c                                       ; $5634: $51
    and a                                         ; $5635: $a7
    and $eb                                       ; $5636: $e6 $eb
    xor l                                         ; $5638: $ad
    cp $f2                                        ; $5639: $fe $f2
    ld d, h                                       ; $563b: $54
    cp h                                          ; $563c: $bc
    db $fc                                        ; $563d: $fc
    ld l, h                                       ; $563e: $6c
    call nc, $b074                                ; $563f: $d4 $74 $b0
    ld [hl], b                                    ; $5642: $70
    ret c                                         ; $5643: $d8

    ld hl, sp-$4a                                 ; $5644: $f8 $b6
    adc $7f                                       ; $5646: $ce $7f
    ld sp, hl                                     ; $5648: $f9
    add [hl]                                      ; $5649: $86
    add a                                         ; $564a: $87
    ld [bc], a                                    ; $564b: $02
    ld bc, $001c                                  ; $564c: $01 $1c $00
    ld [bc], a                                    ; $564f: $02
    jr c, jr_0ee_55d8                             ; $5650: $38 $86

    ld a, b                                       ; $5652: $78
    ld c, b                                       ; $5653: $48
    or b                                          ; $5654: $b0
    ldh a, [$c0]                                  ; $5655: $f0 $c0
    ld b, b                                       ; $5657: $40
    ld [bc], a                                    ; $5658: $02
    add b                                         ; $5659: $80
    ld c, $00                                     ; $565a: $0e $00
    ld [bc], a                                    ; $565c: $02
    add b                                         ; $565d: $80
    add d                                         ; $565e: $82
    ret nz                                        ; $565f: $c0

    ld b, b                                       ; $5660: $40
    ld [bc], a                                    ; $5661: $02
    add b                                         ; $5662: $80
    ld [bc], a                                    ; $5663: $02
    nop                                           ; $5664: $00
    rst $38                                       ; $5665: $ff
    ld de, $f106                                  ; $5666: $11 $06 $f1
    inc de                                        ; $5669: $13
    ld [$f303], a                                 ; $566a: $ea $03 $f3
    db $f4                                        ; $566d: $f4
    ld a, [c]                                     ; $566e: $f2
    db $fc                                        ; $566f: $fc
    db $ed                                        ; $5670: $ed
    inc b                                         ; $5671: $04
    db $f4                                        ; $5672: $f4
    inc c                                         ; $5673: $0c
    db $fd                                        ; $5674: $fd
    di                                            ; $5675: $f3
    db $fd                                        ; $5676: $fd
    nop                                           ; $5677: $00
    ld [bc], a                                    ; $5678: $02
    ld bc, $0282                                  ; $5679: $01 $82 $02
    inc bc                                        ; $567c: $03
    ld [bc], a                                    ; $567d: $02
    rrca                                          ; $567e: $0f
    sub d                                         ; $567f: $92
    dec [hl]                                      ; $5680: $35
    ld a, [hl-]                                   ; $5681: $3a
    ld l, a                                       ; $5682: $6f
    ld d, b                                       ; $5683: $50
    rst $10                                       ; $5684: $d7
    xor b                                         ; $5685: $a8
    adc l                                         ; $5686: $8d
    di                                            ; $5687: $f3
    ld l, d                                       ; $5688: $6a
    ld a, a                                       ; $5689: $7f
    ccf                                           ; $568a: $3f
    dec a                                         ; $568b: $3d
    ccf                                           ; $568c: $3f
    inc sp                                        ; $568d: $33
    call c, $f0fc                                 ; $568e: $dc $fc $f0
    jr nc, jr_0ee_5695                            ; $5691: $30 $02

    ret nz                                        ; $5693: $c0

    inc b                                         ; $5694: $04

jr_0ee_5695:
    ld bc, $0002                                  ; $5695: $01 $02 $00
    ld [bc], a                                    ; $5698: $02
    call nz, $eb99                                ; $5699: $c4 $99 $eb
    cpl                                           ; $569c: $2f
    rst $38                                       ; $569d: $ff
    db $db                                        ; $569e: $db
    cp h                                          ; $569f: $bc
    cp a                                          ; $56a0: $bf
    di                                            ; $56a1: $f3
    db $fc                                        ; $56a2: $fc
    sbc a                                         ; $56a3: $9f
    ld h, b                                       ; $56a4: $60
    ld l, a                                       ; $56a5: $6f
    db $f4                                        ; $56a6: $f4
    db $db                                        ; $56a7: $db
    ccf                                           ; $56a8: $3f
    xor $fa                                       ; $56a9: $ee $fa
    ld a, h                                       ; $56ab: $7c
    db $f4                                        ; $56ac: $f4
    xor b                                         ; $56ad: $a8
    cp b                                          ; $56ae: $b8
    ld [hl], b                                    ; $56af: $70
    ld d, b                                       ; $56b0: $50
    ld [hl], b                                    ; $56b1: $70
    ld d, b                                       ; $56b2: $50
    ldh [rSC], a                                  ; $56b3: $e0 $02
    and b                                         ; $56b5: $a0
    add c                                         ; $56b6: $81
    ld h, b                                       ; $56b7: $60
    ld [bc], a                                    ; $56b8: $02
    ret nz                                        ; $56b9: $c0

    ld [bc], a                                    ; $56ba: $02
    inc bc                                        ; $56bb: $03
    sbc [hl]                                      ; $56bc: $9e
    rlca                                          ; $56bd: $07
    dec b                                         ; $56be: $05
    ld e, $1a                                     ; $56bf: $1e $1a
    inc [hl]                                      ; $56c1: $34
    inc l                                         ; $56c2: $2c
    ld a, b                                       ; $56c3: $78
    ld e, b                                       ; $56c4: $58
    ld [hl], b                                    ; $56c5: $70
    ld d, b                                       ; $56c6: $50
    ret nc                                        ; $56c7: $d0

    ldh a, [$e0]                                  ; $56c8: $f0 $e0
    and b                                         ; $56ca: $a0
    ld a, e                                       ; $56cb: $7b
    ei                                            ; $56cc: $fb
    cp a                                          ; $56cd: $bf
    ld d, h                                       ; $56ce: $54
    cp e                                          ; $56cf: $bb
    ld l, a                                       ; $56d0: $6f
    ld h, [hl]                                    ; $56d1: $66
    cp $5a                                        ; $56d2: $fe $5a
    cp d                                          ; $56d4: $ba
    and b                                         ; $56d5: $a0
    ldh [rSVBK], a                                ; $56d6: $e0 $70
    ld d, b                                       ; $56d8: $50
    ld [hl], b                                    ; $56d9: $70
    ld d, b                                       ; $56da: $50
    ld [bc], a                                    ; $56db: $02
    ld a, $84                                     ; $56dc: $3e $84
    rst $30                                       ; $56de: $f7
    jp hl                                         ; $56df: $e9


    ld a, [hl]                                    ; $56e0: $7e
    sbc [hl]                                      ; $56e1: $9e
    ld [bc], a                                    ; $56e2: $02
    ldh [rNR30], a                                ; $56e3: $e0 $1a
    nop                                           ; $56e5: $00
    ld [bc], a                                    ; $56e6: $02
    add b                                         ; $56e7: $80
    inc e                                         ; $56e8: $1c
    nop                                           ; $56e9: $00
    add c                                         ; $56ea: $81
    rlca                                          ; $56eb: $07
    ld [bc], a                                    ; $56ec: $02
    dec b                                         ; $56ed: $05
    add l                                         ; $56ee: $85
    rlca                                          ; $56ef: $07
    ld c, $0a                                     ; $56f0: $0e $0a
    dec c                                         ; $56f2: $0d
    dec bc                                        ; $56f3: $0b
    ld [bc], a                                    ; $56f4: $02
    ld b, $16                                     ; $56f5: $06 $16
    nop                                           ; $56f7: $00
    rst $38                                       ; $56f8: $ff
    dec c                                         ; $56f9: $0d
    inc b                                         ; $56fa: $04
    pop af                                        ; $56fb: $f1
    inc de                                        ; $56fc: $13
    ld [$f203], a                                 ; $56fd: $ea $03 $f2
    di                                            ; $5700: $f3
    ld a, [c]                                     ; $5701: $f2
    ei                                            ; $5702: $fb
    ld a, [c]                                     ; $5703: $f2
    inc bc                                        ; $5704: $03
    ld a, [c]                                     ; $5705: $f2
    ld a, [bc]                                    ; $5706: $0a
    inc b                                         ; $5707: $04
    nop                                           ; $5708: $00
    ld [bc], a                                    ; $5709: $02
    rlca                                          ; $570a: $07
    sub h                                         ; $570b: $94
    ld a, [de]                                    ; $570c: $1a
    dec e                                         ; $570d: $1d
    scf                                           ; $570e: $37
    jr z, @+$6d                                   ; $570f: $28 $6b

    ld d, h                                       ; $5711: $54
    ld b, d                                       ; $5712: $42
    ld a, l                                       ; $5713: $7d
    jr nc, jr_0ee_5755                            ; $5714: $30 $3f

    dec e                                         ; $5716: $1d
    rra                                           ; $5717: $1f
    rlca                                          ; $5718: $07
    ld b, $1f                                     ; $5719: $06 $1f
    add hl, de                                    ; $571b: $19
    ld l, [hl]                                    ; $571c: $6e
    ld a, [hl]                                    ; $571d: $7e
    ld hl, sp-$68                                 ; $571e: $f8 $98
    ld [bc], a                                    ; $5720: $02
    ld h, b                                       ; $5721: $60
    inc b                                         ; $5722: $04
    nop                                           ; $5723: $00
    ld [bc], a                                    ; $5724: $02
    ld [hl-], a                                   ; $5725: $32
    sbc h                                         ; $5726: $9c
    ld a, l                                       ; $5727: $7d
    ld c, a                                       ; $5728: $4f
    rst $38                                       ; $5729: $ff
    push af                                       ; $572a: $f5
    rst $08                                       ; $572b: $cf
    ld c, a                                       ; $572c: $4f
    ld hl, sp+$3f                                 ; $572d: $f8 $3f
    adc a                                         ; $572f: $8f
    ld [hl], b                                    ; $5730: $70
    or a                                          ; $5731: $b7
    ld a, d                                       ; $5732: $7a
    db $ed                                        ; $5733: $ed
    sbc [hl]                                      ; $5734: $9e
    ld [hl], a                                    ; $5735: $77
    db $fd                                        ; $5736: $fd
    cp a                                          ; $5737: $bf
    ei                                            ; $5738: $fb
    call nc, $38dc                                ; $5739: $d4 $dc $38
    jr z, @+$3a                                   ; $573c: $28 $38

    jr z, jr_0ee_57b0                             ; $573e: $28 $70

    ld d, b                                       ; $5740: $50
    ret nc                                        ; $5741: $d0

    or b                                          ; $5742: $b0
    ld [bc], a                                    ; $5743: $02
    ldh [rSC], a                                  ; $5744: $e0 $02
    nop                                           ; $5746: $00
    ld [bc], a                                    ; $5747: $02
    sbc h                                         ; $5748: $9c
    sub e                                         ; $5749: $93
    ld a, a                                       ; $574a: $7f
    db $e3                                        ; $574b: $e3
    db $dd                                        ; $574c: $dd
    cp $7b                                        ; $574d: $fe $7b
    ei                                            ; $574f: $fb
    cp l                                          ; $5750: $bd
    ld d, a                                       ; $5751: $57
    cp a                                          ; $5752: $bf
    ld l, b                                       ; $5753: $68
    ld h, [hl]                                    ; $5754: $66

jr_0ee_5755:
    rst $38                                       ; $5755: $ff
    ld e, c                                       ; $5756: $59
    cp c                                          ; $5757: $b9
    ldh a, [$d0]                                  ; $5758: $f0 $d0
    ld [hl], b                                    ; $575a: $70
    ld d, b                                       ; $575b: $50
    ld [hl], b                                    ; $575c: $70
    ld [bc], a                                    ; $575d: $02
    ld d, b                                       ; $575e: $50
    add l                                         ; $575f: $85
    ld [hl], b                                    ; $5760: $70
    ldh [$a0], a                                  ; $5761: $e0 $a0
    ret nc                                        ; $5763: $d0

    or b                                          ; $5764: $b0
    ld [bc], a                                    ; $5765: $02
    ld h, b                                       ; $5766: $60
    inc b                                         ; $5767: $04
    nop                                           ; $5768: $00
    inc bc                                        ; $5769: $03
    ld h, b                                       ; $576a: $60
    add c                                         ; $576b: $81
    jr nz, jr_0ee_5770                            ; $576c: $20 $02

    ld b, b                                       ; $576e: $40
    ld [bc], a                                    ; $576f: $02

jr_0ee_5770:
    nop                                           ; $5770: $00
    ld [bc], a                                    ; $5771: $02
    ld b, b                                       ; $5772: $40
    add [hl]                                      ; $5773: $86
    ld [hl], b                                    ; $5774: $70
    jr nc, jr_0ee_57f5                            ; $5775: $30 $7e

    ld c, [hl]                                    ; $5777: $4e
    scf                                           ; $5778: $37
    add hl, sp                                    ; $5779: $39
    ld [bc], a                                    ; $577a: $02
    ld c, $0a                                     ; $577b: $0e $0a
    nop                                           ; $577d: $00
    rst $38                                       ; $577e: $ff
    ld de, $f106                                  ; $577f: $11 $06 $f1
    inc de                                        ; $5782: $13
    ld [$f203], a                                 ; $5783: $ea $03 $f2
    pop af                                        ; $5786: $f1
    pop af                                        ; $5787: $f1
    ld sp, hl                                     ; $5788: $f9
    pop af                                        ; $5789: $f1
    ld bc, $08f3                                  ; $578a: $01 $f3 $08
    ld bc, $01f6                                  ; $578d: $01 $f6 $01
    nop                                           ; $5790: $00
    ld [bc], a                                    ; $5791: $02
    inc bc                                        ; $5792: $03
    add d                                         ; $5793: $82
    rlca                                          ; $5794: $07
    inc b                                         ; $5795: $04
    ld [bc], a                                    ; $5796: $02
    inc bc                                        ; $5797: $03
    ld [bc], a                                    ; $5798: $02
    rlca                                          ; $5799: $07
    adc h                                         ; $579a: $8c
    ld a, [de]                                    ; $579b: $1a
    dec e                                         ; $579c: $1d
    scf                                           ; $579d: $37
    jr z, jr_0ee_580b                             ; $579e: $28 $6b

    ld d, h                                       ; $57a0: $54
    ld b, [hl]                                    ; $57a1: $46
    ld a, c                                       ; $57a2: $79
    inc [hl]                                      ; $57a3: $34
    ccf                                           ; $57a4: $3f
    dec de                                        ; $57a5: $1b
    rra                                           ; $57a6: $1f
    ld [bc], a                                    ; $57a7: $02
    rrca                                          ; $57a8: $0f
    add [hl]                                      ; $57a9: $86
    rra                                           ; $57aa: $1f
    jr jr_0ee_581c                                ; $57ab: $18 $6f

    ld [hl], a                                    ; $57ad: $77
    ld hl, sp-$68                                 ; $57ae: $f8 $98

jr_0ee_57b0:
    ld [bc], a                                    ; $57b0: $02
    ld h, b                                       ; $57b1: $60
    ld [bc], a                                    ; $57b2: $02
    nop                                           ; $57b3: $00
    ld [bc], a                                    ; $57b4: $02
    inc b                                         ; $57b5: $04
    sub c                                         ; $57b6: $91
    ld c, $0a                                     ; $57b7: $0e $0a
    xor $ea                                       ; $57b9: $ee $ea
    rst $38                                       ; $57bb: $ff
    dec e                                         ; $57bc: $1d
    db $ed                                        ; $57bd: $ed
    rst $30                                       ; $57be: $f7
    cp [hl]                                       ; $57bf: $be
    ld a, a                                       ; $57c0: $7f
    reti                                          ; $57c1: $d9


    ld a, $af                                     ; $57c2: $3e $af
    ld [hl], b                                    ; $57c4: $70
    ld [hl], a                                    ; $57c5: $77
    ld a, [$02fd]                                 ; $57c6: $fa $fd $02
    rst $38                                       ; $57c9: $ff
    adc e                                         ; $57ca: $8b
    call $bb7f                                    ; $57cb: $cd $7f $bb
    jp z, Jump_000_1cce                           ; $57ce: $ca $ce $1c

    inc d                                         ; $57d1: $14
    inc e                                         ; $57d2: $1c
    inc d                                         ; $57d3: $14
    jr c, jr_0ee_57fe                             ; $57d4: $38 $28

    ld [bc], a                                    ; $57d6: $02
    db $10                                        ; $57d7: $10
    sbc [hl]                                      ; $57d8: $9e
    jr c, jr_0ee_5803                             ; $57d9: $38 $28

    ld [hl], b                                    ; $57db: $70
    ld d, b                                       ; $57dc: $50
    ld [hl], e                                    ; $57dd: $73
    ld d, e                                       ; $57de: $53
    xor a                                         ; $57df: $af
    db $ec                                        ; $57e0: $ec
    ld [hl], e                                    ; $57e1: $73
    rst $38                                       ; $57e2: $ff
    call c, $fc3c                                 ; $57e3: $dc $3c $fc
    ld d, h                                       ; $57e6: $54
    ld a, [$2cfe]                                 ; $57e7: $fa $fe $2c
    db $fc                                        ; $57ea: $fc
    rst $20                                       ; $57eb: $e7
    cp e                                          ; $57ec: $bb
    rst $38                                       ; $57ed: $ff
    call c, Call_0ee_7353                         ; $57ee: $dc $53 $73
    jr c, @+$2a                                   ; $57f1: $38 $28

    jr c, jr_0ee_581d                             ; $57f3: $38 $28

jr_0ee_57f5:
    inc e                                         ; $57f5: $1c
    inc d                                         ; $57f6: $14
    ld [bc], a                                    ; $57f7: $02
    inc e                                         ; $57f8: $1c
    add h                                         ; $57f9: $84
    ld l, [hl]                                    ; $57fa: $6e
    ld [hl], d                                    ; $57fb: $72
    ld a, h                                       ; $57fc: $7c
    inc e                                         ; $57fd: $1c

jr_0ee_57fe:
    ld [bc], a                                    ; $57fe: $02
    ld h, b                                       ; $57ff: $60
    ld a, [bc]                                    ; $5800: $0a
    nop                                           ; $5801: $00
    ld [bc], a                                    ; $5802: $02

jr_0ee_5803:
    ld h, b                                       ; $5803: $60
    add [hl]                                      ; $5804: $86
    jr c, jr_0ee_585f                             ; $5805: $38 $58

    halt                                          ; $5807: $76
    ld l, [hl]                                    ; $5808: $6e
    rra                                           ; $5809: $1f
    add hl, de                                    ; $580a: $19

jr_0ee_580b:
    ld [bc], a                                    ; $580b: $02
    ld b, $04                                     ; $580c: $06 $04
    nop                                           ; $580e: $00
    add h                                         ; $580f: $84
    dec b                                         ; $5810: $05
    rlca                                          ; $5811: $07
    ld c, $0a                                     ; $5812: $0e $0a
    ld [bc], a                                    ; $5814: $02
    inc b                                         ; $5815: $04
    ld a, [de]                                    ; $5816: $1a
    nop                                           ; $5817: $00
    add h                                         ; $5818: $84
    ld a, [bc]                                    ; $5819: $0a
    ld c, $07                                     ; $581a: $0e $07

jr_0ee_581c:
    dec b                                         ; $581c: $05

jr_0ee_581d:
    ld [bc], a                                    ; $581d: $02
    ld [bc], a                                    ; $581e: $02
    ld a, [de]                                    ; $581f: $1a
    nop                                           ; $5820: $00
    rst $38                                       ; $5821: $ff
    ld de, $f106                                  ; $5822: $11 $06 $f1
    inc de                                        ; $5825: $13
    ld [$f003], a                                 ; $5826: $ea $03 $f0
    ld a, [c]                                     ; $5829: $f2
    rst $28                                       ; $582a: $ef
    ld a, [$02ef]                                 ; $582b: $fa $ef $02
    di                                            ; $582e: $f3
    ld b, $ff                                     ; $582f: $06 $ff
    di                                            ; $5831: $f3
    rst $38                                       ; $5832: $ff
    cp $02                                        ; $5833: $fe $02
    ld bc, $0702                                  ; $5835: $01 $02 $07
    sub [hl]                                      ; $5838: $96
    ld a, [de]                                    ; $5839: $1a
    dec e                                         ; $583a: $1d
    scf                                           ; $583b: $37
    jr z, jr_0ee_58ad                             ; $583c: $28 $6f

    ld d, b                                       ; $583e: $50
    rst $10                                       ; $583f: $d7
    xor b                                         ; $5840: $a8
    adc l                                         ; $5841: $8d
    di                                            ; $5842: $f3
    ld [hl], a                                    ; $5843: $77
    ld a, [hl]                                    ; $5844: $7e
    dec e                                         ; $5845: $1d
    rra                                           ; $5846: $1f
    ld c, $0a                                     ; $5847: $0e $0a
    inc e                                         ; $5849: $1c
    inc d                                         ; $584a: $14
    ld l, b                                       ; $584b: $68
    ld a, b                                       ; $584c: $78
    ldh a, [$90]                                  ; $584d: $f0 $90
    ld [bc], a                                    ; $584f: $02
    ld h, b                                       ; $5850: $60
    ld [bc], a                                    ; $5851: $02
    ld bc, $0002                                  ; $5852: $01 $02 $00
    ld [bc], a                                    ; $5855: $02
    xor $99                                       ; $5856: $ee $99
    scf                                           ; $5858: $37
    db $db                                        ; $5859: $db
    db $ec                                        ; $585a: $ec
    rst $38                                       ; $585b: $ff
    or e                                          ; $585c: $b3
    ld a, h                                       ; $585d: $7c
    xor a                                         ; $585e: $af

jr_0ee_585f:
    ld [hl], b                                    ; $585f: $70
    rst $20                                       ; $5860: $e7
    ld a, h                                       ; $5861: $7c
    ld a, e                                       ; $5862: $7b
    rst $38                                       ; $5863: $ff
    cp $93                                        ; $5864: $fe $93
    rst $38                                       ; $5866: $ff
    ld l, a                                       ; $5867: $6f
    xor b                                         ; $5868: $a8
    cp b                                          ; $5869: $b8
    ld [hl], b                                    ; $586a: $70
    ld d, b                                       ; $586b: $50
    ld [hl], b                                    ; $586c: $70
    ld d, b                                       ; $586d: $50
    ld [hl], b                                    ; $586e: $70
    ld d, b                                       ; $586f: $50
    ldh [rSC], a                                  ; $5870: $e0 $02
    and b                                         ; $5872: $a0
    add e                                         ; $5873: $83
    ldh [$c0], a                                  ; $5874: $e0 $c0
    ld b, b                                       ; $5876: $40
    ld [bc], a                                    ; $5877: $02
    ldh [$8a], a                                  ; $5878: $e0 $8a
    call c, $f6bc                                 ; $587a: $dc $bc $f6
    ld a, [$7daf]                                 ; $587d: $fa $af $7d
    db $db                                        ; $5880: $db
    ld a, [hl-]                                   ; $5881: $3a
    db $fd                                        ; $5882: $fd
    ld d, l                                       ; $5883: $55
    ld [bc], a                                    ; $5884: $02
    ld hl, sp-$73                                 ; $5885: $f8 $8d
    ld e, h                                       ; $5887: $5c
    db $e4                                        ; $5888: $e4
    jp c, $a73e                                   ; $5889: $da $3e $a7

    push af                                       ; $588c: $f5
    db $e3                                        ; $588d: $e3
    and d                                         ; $588e: $a2
    pop hl                                        ; $588f: $e1
    and c                                         ; $5890: $a1
    ld [hl], b                                    ; $5891: $70
    ld d, b                                       ; $5892: $50
    ld [hl], b                                    ; $5893: $70
    ld [bc], a                                    ; $5894: $02
    ld d, b                                       ; $5895: $50
    add e                                         ; $5896: $83
    ld [hl], b                                    ; $5897: $70
    jr c, @+$2a                                   ; $5898: $38 $28

    ld [bc], a                                    ; $589a: $02
    inc c                                         ; $589b: $0c
    add d                                         ; $589c: $82
    ld b, $0a                                     ; $589d: $06 $0a
    ld [bc], a                                    ; $589f: $02
    inc c                                         ; $58a0: $0c
    ld b, $00                                     ; $58a1: $06 $00
    ld [bc], a                                    ; $58a3: $02
    ld [$0684], sp                                ; $58a4: $08 $84 $06
    ld c, $0f                                     ; $58a7: $0e $0f
    add hl, bc                                    ; $58a9: $09
    ld [bc], a                                    ; $58aa: $02
    ld b, $0c                                     ; $58ab: $06 $0c

jr_0ee_58ad:
    nop                                           ; $58ad: $00
    ld [bc], a                                    ; $58ae: $02
    ld bc, $001e                                  ; $58af: $01 $1e $00
    ld [bc], a                                    ; $58b2: $02
    ld bc, $001e                                  ; $58b3: $01 $1e $00
    rst $38                                       ; $58b6: $ff
    ld de, $f106                                  ; $58b7: $11 $06 $f1
    inc de                                        ; $58ba: $13
    ld [$ef03], a                                 ; $58bb: $ea $03 $ef
    ld a, [c]                                     ; $58be: $f2
    xor $fa                                       ; $58bf: $ee $fa
    xor $02                                       ; $58c1: $ee $02
    db $f4                                        ; $58c3: $f4
    inc b                                         ; $58c4: $04
    cp $f5                                        ; $58c5: $fe $f5
    cp $fc                                        ; $58c7: $fe $fc
    ld [bc], a                                    ; $58c9: $02
    ld bc, $0702                                  ; $58ca: $01 $02 $07
    adc h                                         ; $58cd: $8c
    ld a, [de]                                    ; $58ce: $1a
    dec e                                         ; $58cf: $1d
    scf                                           ; $58d0: $37
    jr z, jr_0ee_5942                             ; $58d1: $28 $6f

    ld d, b                                       ; $58d3: $50
    rst $10                                       ; $58d4: $d7
    xor b                                         ; $58d5: $a8
    adc h                                         ; $58d6: $8c
    di                                            ; $58d7: $f3
    ld [hl], l                                    ; $58d8: $75
    ld a, a                                       ; $58d9: $7f
    ld [bc], a                                    ; $58da: $02
    rra                                           ; $58db: $1f
    adc d                                         ; $58dc: $8a
    inc bc                                        ; $58dd: $03
    ld [bc], a                                    ; $58de: $02
    inc bc                                        ; $58df: $03
    ld [bc], a                                    ; $58e0: $02
    dec b                                         ; $58e1: $05
    rlca                                          ; $58e2: $07
    ld c, $0a                                     ; $58e3: $0e $0a
    inc e                                         ; $58e5: $1c
    inc d                                         ; $58e6: $14
    ld [bc], a                                    ; $58e7: $02
    ld [$0002], sp                                ; $58e8: $08 $02 $00
    ld [bc], a                                    ; $58eb: $02
    ld h, [hl]                                    ; $58ec: $66
    sbc c                                         ; $58ed: $99
    sbc e                                         ; $58ee: $9b
    rst $38                                       ; $58ef: $ff
    db $ec                                        ; $58f0: $ec
    rst $38                                       ; $58f1: $ff
    or e                                          ; $58f2: $b3
    ld a, h                                       ; $58f3: $7c
    cp a                                          ; $58f4: $bf
    ld h, b                                       ; $58f5: $60
    rst $20                                       ; $58f6: $e7
    ld a, h                                       ; $58f7: $7c
    ld a, e                                       ; $58f8: $7b
    rst $38                                       ; $58f9: $ff
    cp $cb                                        ; $58fa: $fe $cb
    rst $38                                       ; $58fc: $ff
    or a                                          ; $58fd: $b7
    ld d, l                                       ; $58fe: $55
    db $dd                                        ; $58ff: $dd
    cp c                                          ; $5900: $b9
    xor c                                         ; $5901: $a9
    cp b                                          ; $5902: $b8
    xor b                                         ; $5903: $a8
    ld [hl], b                                    ; $5904: $70
    ld d, b                                       ; $5905: $50
    ld [hl], b                                    ; $5906: $70
    ld [bc], a                                    ; $5907: $02
    ld d, b                                       ; $5908: $50
    add e                                         ; $5909: $83
    ld [hl], b                                    ; $590a: $70
    ldh [$a0], a                                  ; $590b: $e0 $a0
    ld [bc], a                                    ; $590d: $02
    ret nz                                        ; $590e: $c0

    add d                                         ; $590f: $82
    and b                                         ; $5910: $a0
    ld h, b                                       ; $5911: $60
    ld [bc], a                                    ; $5912: $02
    ld hl, sp-$66                                 ; $5913: $f8 $9a
    xor [hl]                                      ; $5915: $ae
    halt                                          ; $5916: $76
    db $dd                                        ; $5917: $dd
    dec sp                                        ; $5918: $3b
    rst $30                                       ; $5919: $f7
    ld d, l                                       ; $591a: $55
    ld a, [$5dfb]                                 ; $591b: $fa $fb $5d
    push hl                                       ; $591e: $e5
    jp c, $ce7e                                   ; $591f: $da $7e $ce

    ld c, d                                       ; $5922: $4a
    ld b, a                                       ; $5923: $47
    push bc                                       ; $5924: $c5
    db $e3                                        ; $5925: $e3
    and d                                         ; $5926: $a2
    ld [c], a                                     ; $5927: $e2
    and e                                         ; $5928: $a3
    pop hl                                        ; $5929: $e1
    and c                                         ; $592a: $a1
    and b                                         ; $592b: $a0
    ldh [rSVBK], a                                ; $592c: $e0 $70
    ld d, b                                       ; $592e: $50
    ld [bc], a                                    ; $592f: $02
    ld [bc], a                                    ; $5930: $02
    add d                                         ; $5931: $82
    inc bc                                        ; $5932: $03
    ld bc, $0202                                  ; $5933: $01 $02 $02
    inc b                                         ; $5936: $04
    nop                                           ; $5937: $00
    inc b                                         ; $5938: $04
    ld [bc], a                                    ; $5939: $02
    add d                                         ; $593a: $82
    inc bc                                        ; $593b: $03
    ld bc, $0202                                  ; $593c: $01 $02 $02
    ld [bc], a                                    ; $593f: $02
    nop                                           ; $5940: $00
    add d                                         ; $5941: $82

jr_0ee_5942:
    ret nz                                        ; $5942: $c0

    ld b, b                                       ; $5943: $40
    ld [bc], a                                    ; $5944: $02
    add b                                         ; $5945: $80
    ld [$8200], sp                                ; $5946: $08 $00 $82
    rlca                                          ; $5949: $07
    dec b                                         ; $594a: $05
    ld [bc], a                                    ; $594b: $02
    ld [bc], a                                    ; $594c: $02
    inc e                                         ; $594d: $1c
    nop                                           ; $594e: $00
    ld [bc], a                                    ; $594f: $02
    ld bc, $001e                                  ; $5950: $01 $1e $00
    rst $38                                       ; $5953: $ff
    rrca                                          ; $5954: $0f
    dec b                                         ; $5955: $05
    pop af                                        ; $5956: $f1
    inc de                                        ; $5957: $13
    ld [$f303], a                                 ; $5958: $ea $03 $f3
    rst $28                                       ; $595b: $ef
    ldh a, [$f7]                                  ; $595c: $f0 $f7
    rst $28                                       ; $595e: $ef
    rst $38                                       ; $595f: $ff
    rst $38                                       ; $5960: $ff
    rst $38                                       ; $5961: $ff
    pop af                                        ; $5962: $f1
    rlca                                          ; $5963: $07
    ld [bc], a                                    ; $5964: $02
    inc bc                                        ; $5965: $03
    adc d                                         ; $5966: $8a
    ld b, $05                                     ; $5967: $06 $05
    dec c                                         ; $5969: $0d
    ld a, [bc]                                    ; $596a: $0a
    ld [de], a                                    ; $596b: $12
    dec e                                         ; $596c: $1d
    ld a, [de]                                    ; $596d: $1a
    rra                                           ; $596e: $1f
    dec c                                         ; $596f: $0d
    rrca                                          ; $5970: $0f
    ld [bc], a                                    ; $5971: $02
    inc bc                                        ; $5972: $03
    ld [bc], a                                    ; $5973: $02
    ld bc, $0684                                  ; $5974: $01 $84 $06
    rlca                                          ; $5977: $07
    rrca                                          ; $5978: $0f
    add hl, bc                                    ; $5979: $09
    ld [bc], a                                    ; $597a: $02
    ld b, $0a                                     ; $597b: $06 $0a
    nop                                           ; $597d: $00
    ld [bc], a                                    ; $597e: $02
    dec c                                         ; $597f: $0d
    sbc h                                         ; $5980: $9c
    rra                                           ; $5981: $1f
    inc de                                        ; $5982: $13
    rst $28                                       ; $5983: $ef
    db $fd                                        ; $5984: $fd
    cp e                                          ; $5985: $bb
    ld e, e                                       ; $5986: $5b
    or $0f                                        ; $5987: $f6 $0f
    db $eb                                        ; $5989: $eb
    inc e                                         ; $598a: $1c
    db $dd                                        ; $598b: $dd
    ld a, $3b                                     ; $598c: $3e $3b
    rst $20                                       ; $598e: $e7
    ld e, c                                       ; $598f: $59
    rst $38                                       ; $5990: $ff
    rst $30                                       ; $5991: $f7
    or [hl]                                       ; $5992: $b6
    push bc                                       ; $5993: $c5
    ld b, a                                       ; $5994: $47
    adc [hl]                                      ; $5995: $8e
    adc d                                         ; $5996: $8a
    ld c, $0a                                     ; $5997: $0e $0a
    inc e                                         ; $5999: $1c
    inc d                                         ; $599a: $14
    inc [hl]                                      ; $599b: $34
    inc l                                         ; $599c: $2c
    ld [bc], a                                    ; $599d: $02
    jr jr_0ee_59a2                                ; $599e: $18 $02

    adc b                                         ; $59a0: $88
    sbc [hl]                                      ; $59a1: $9e

jr_0ee_59a2:
    call c, $f554                                 ; $59a2: $dc $54 $f5
    ld l, l                                       ; $59a5: $6d
    ld l, a                                       ; $59a6: $6f
    cp $9d                                        ; $59a7: $fe $9d
    rst $38                                       ; $59a9: $ff
    rst $30                                       ; $59aa: $f7
    rrca                                          ; $59ab: $0f
    rst $38                                       ; $59ac: $ff
    dec d                                         ; $59ad: $15
    cp $bf                                        ; $59ae: $fe $bf
    ld c, a                                       ; $59b0: $4f
    db $fc                                        ; $59b1: $fc
    cp $6b                                        ; $59b2: $fe $6b
    db $fd                                        ; $59b4: $fd
    db $ed                                        ; $59b5: $ed
    jr z, jr_0ee_59f0                             ; $59b6: $28 $38

    inc e                                         ; $59b8: $1c
    inc d                                         ; $59b9: $14

jr_0ee_59ba:
    inc e                                         ; $59ba: $1c
    inc d                                         ; $59bb: $14
    inc e                                         ; $59bc: $1c
    inc d                                         ; $59bd: $14
    ld d, $1a                                     ; $59be: $16 $1a
    ld [bc], a                                    ; $59c0: $02
    inc c                                         ; $59c1: $0c
    ld e, $00                                     ; $59c2: $1e $00
    ld [bc], a                                    ; $59c4: $02
    add b                                         ; $59c5: $80
    add [hl]                                      ; $59c6: $86
    ret nz                                        ; $59c7: $c0

    ld b, b                                       ; $59c8: $40
    ldh a, [$b0]                                  ; $59c9: $f0 $b0
    ld e, b                                       ; $59cb: $58
    ld l, b                                       ; $59cc: $68
    ld [bc], a                                    ; $59cd: $02
    jr nc, jr_0ee_59d4                            ; $59ce: $30 $04

    add b                                         ; $59d0: $80
    add c                                         ; $59d1: $81
    ret nz                                        ; $59d2: $c0

    ld [bc], a                                    ; $59d3: $02

jr_0ee_59d4:
    ld b, b                                       ; $59d4: $40
    add a                                         ; $59d5: $87
    ret nz                                        ; $59d6: $c0

    ldh [$a0], a                                  ; $59d7: $e0 $a0
    ld a, b                                       ; $59d9: $78
    ld e, b                                       ; $59da: $58
    inc l                                         ; $59db: $2c
    inc [hl]                                      ; $59dc: $34
    ld [bc], a                                    ; $59dd: $02
    inc e                                         ; $59de: $1c
    ld b, $00                                     ; $59df: $06 $00
    rst $38                                       ; $59e1: $ff
    rrca                                          ; $59e2: $0f
    dec b                                         ; $59e3: $05
    ld a, [$ec0a]                                 ; $59e4: $fa $0a $ec
    nop                                           ; $59e7: $00
    rst $20                                       ; $59e8: $e7
    ei                                            ; $59e9: $fb
    push hl                                       ; $59ea: $e5
    inc bc                                        ; $59eb: $03
    and $0b                                       ; $59ec: $e6 $0b
    jp hl                                         ; $59ee: $e9


    dec c                                         ; $59ef: $0d

jr_0ee_59f0:
    push af                                       ; $59f0: $f5
    ei                                            ; $59f1: $fb
    xor e                                         ; $59f2: $ab
    ld bc, $0600                                  ; $59f3: $01 $00 $06
    ld bc, $070b                                  ; $59f6: $01 $0b $07
    inc d                                         ; $59f9: $14
    rrca                                          ; $59fa: $0f
    add hl, sp                                    ; $59fb: $39
    ld e, $2a                                     ; $59fc: $1e $2a
    inc e                                         ; $59fe: $1c
    ld e, d                                       ; $59ff: $5a
    inc a                                         ; $5a00: $3c
    ld [hl], h                                    ; $5a01: $74
    jr c, jr_0ee_5a58                             ; $5a02: $38 $54

    jr c, jr_0ee_59ba                             ; $5a04: $38 $b4

    ld a, b                                       ; $5a06: $78
    xor b                                         ; $5a07: $a8
    ld [hl], b                                    ; $5a08: $70
    add sp, $70                                   ; $5a09: $e8 $70
    add sp, $70                                   ; $5a0b: $e8 $70
    xor b                                         ; $5a0d: $a8
    ld [hl], b                                    ; $5a0e: $70
    ret z                                         ; $5a0f: $c8

    ld [hl], b                                    ; $5a10: $70
    xor b                                         ; $5a11: $a8
    ld [hl], b                                    ; $5a12: $70
    ld a, $00                                     ; $5a13: $3e $00
    db $fd                                        ; $5a15: $fd
    ld a, $da                                     ; $5a16: $3e $da
    rst $38                                       ; $5a18: $ff
    ld b, a                                       ; $5a19: $47
    rst $38                                       ; $5a1a: $ff
    add hl, sp                                    ; $5a1b: $39
    rst $00                                       ; $5a1c: $c7
    call nz, Call_000_0302                        ; $5a1d: $c4 $02 $03
    inc de                                        ; $5a20: $13
    nop                                           ; $5a21: $00

jr_0ee_5a22:
    adc l                                         ; $5a22: $8d
    ldh [rP1], a                                  ; $5a23: $e0 $00
    sbc h                                         ; $5a25: $9c
    ldh [$f7], a                                  ; $5a26: $e0 $f7
    db $fc                                        ; $5a28: $fc
    cp $ff                                        ; $5a29: $fe $ff
    cp a                                          ; $5a2b: $bf
    rst $38                                       ; $5a2c: $ff
    inc d                                         ; $5a2d: $14
    rst $38                                       ; $5a2e: $ff
    pop hl                                        ; $5a2f: $e1
    ld [bc], a                                    ; $5a30: $02
    ld e, $11                                     ; $5a31: $1e $11
    nop                                           ; $5a33: $00
    add l                                         ; $5a34: $85
    ld [bc], a                                    ; $5a35: $02
    nop                                           ; $5a36: $00
    ld bc, $0102                                  ; $5a37: $01 $02 $01
    ld [bc], a                                    ; $5a3a: $02
    ld [bc], a                                    ; $5a3b: $02
    dec e                                         ; $5a3c: $1d
    nop                                           ; $5a3d: $00
    sub h                                         ; $5a3e: $94
    xor b                                         ; $5a3f: $a8
    ld [hl], b                                    ; $5a40: $70
    xor b                                         ; $5a41: $a8
    ld [hl], b                                    ; $5a42: $70
    ld b, h                                       ; $5a43: $44
    jr c, jr_0ee_5a9a                             ; $5a44: $38 $54

    jr c, jr_0ee_5a9c                             ; $5a46: $38 $54

    jr c, jr_0ee_5a76                             ; $5a48: $38 $2c

    jr jr_0ee_5a76                                ; $5a4a: $18 $2a

    inc e                                         ; $5a4c: $1c
    ld [hl+], a                                   ; $5a4d: $22
    inc e                                         ; $5a4e: $1c
    ld de, $000e                                  ; $5a4f: $11 $0e $00
    ld c, $08                                     ; $5a52: $0e $08
    nop                                           ; $5a54: $00
    rst $38                                       ; $5a55: $ff
    rrca                                          ; $5a56: $0f
    dec b                                         ; $5a57: $05

jr_0ee_5a58:
    ld a, [$ec0a]                                 ; $5a58: $fa $0a $ec
    nop                                           ; $5a5b: $00
    jp hl                                         ; $5a5c: $e9


    db $fc                                        ; $5a5d: $fc
    rst $20                                       ; $5a5e: $e7
    inc b                                         ; $5a5f: $04
    rst $20                                       ; $5a60: $e7
    inc c                                         ; $5a61: $0c
    db $ec                                        ; $5a62: $ec
    dec c                                         ; $5a63: $0d
    rst $30                                       ; $5a64: $f7
    db $fc                                        ; $5a65: $fc
    xor e                                         ; $5a66: $ab
    ld bc, $0600                                  ; $5a67: $01 $00 $06
    ld bc, $0709                                  ; $5a6a: $01 $09 $07
    ld d, $0f                                     ; $5a6d: $16 $0f
    add hl, hl                                    ; $5a6f: $29
    ld e, $3a                                     ; $5a70: $1e $3a
    inc e                                         ; $5a72: $1c
    ld d, h                                       ; $5a73: $54
    jr c, jr_0ee_5aca                             ; $5a74: $38 $54

jr_0ee_5a76:
    jr c, jr_0ee_5aec                             ; $5a76: $38 $74

    jr c, jr_0ee_5a22                             ; $5a78: $38 $a8

    ld [hl], b                                    ; $5a7a: $70
    add sp, $70                                   ; $5a7b: $e8 $70
    xor b                                         ; $5a7d: $a8
    ld [hl], b                                    ; $5a7e: $70
    ret z                                         ; $5a7f: $c8

    ld [hl], b                                    ; $5a80: $70
    add sp, $70                                   ; $5a81: $e8 $70
    xor b                                         ; $5a83: $a8
    ld [hl], b                                    ; $5a84: $70
    xor b                                         ; $5a85: $a8
    ld [hl], b                                    ; $5a86: $70
    rra                                           ; $5a87: $1f
    nop                                           ; $5a88: $00
    push hl                                       ; $5a89: $e5
    rra                                           ; $5a8a: $1f
    ld e, e                                       ; $5a8b: $5b

jr_0ee_5a8c:
    rst $38                                       ; $5a8c: $ff
    rst $30                                       ; $5a8d: $f7
    rst $38                                       ; $5a8e: $ff
    ld [hl], d                                    ; $5a8f: $72
    adc a                                         ; $5a90: $8f
    adc h                                         ; $5a91: $8c
    ld [bc], a                                    ; $5a92: $02
    inc bc                                        ; $5a93: $03
    inc de                                        ; $5a94: $13
    nop                                           ; $5a95: $00
    adc a                                         ; $5a96: $8f
    add b                                         ; $5a97: $80
    nop                                           ; $5a98: $00
    ld h, b                                       ; $5a99: $60

jr_0ee_5a9a:
    add b                                         ; $5a9a: $80
    ld a, b                                       ; $5a9b: $78

jr_0ee_5a9c:
    ldh [$ae], a                                  ; $5a9c: $e0 $ae
    ld hl, sp-$03                                 ; $5a9e: $f8 $fd
    cp $ba                                        ; $5aa0: $fe $ba
    rst $38                                       ; $5aa2: $ff
    inc d                                         ; $5aa3: $14
    rst $38                                       ; $5aa4: $ff
    db $e3                                        ; $5aa5: $e3
    ld [bc], a                                    ; $5aa6: $02
    inc e                                         ; $5aa7: $1c
    rrca                                          ; $5aa8: $0f
    nop                                           ; $5aa9: $00
    add e                                         ; $5aaa: $83
    ld bc, $0100                                  ; $5aab: $01 $00 $01
    ld hl, $9000                                  ; $5aae: $21 $00 $90
    xor b                                         ; $5ab1: $a8
    ld [hl], b                                    ; $5ab2: $70
    ld e, b                                       ; $5ab3: $58
    jr nc, jr_0ee_5b0a                            ; $5ab4: $30 $54

    jr c, jr_0ee_5afc                             ; $5ab6: $38 $44

    jr c, jr_0ee_5b0e                             ; $5ab8: $38 $54

    jr c, jr_0ee_5ade                             ; $5aba: $38 $22

    inc e                                         ; $5abc: $1c
    ld [hl+], a                                   ; $5abd: $22
    inc e                                         ; $5abe: $1c
    nop                                           ; $5abf: $00
    inc e                                         ; $5ac0: $1c
    inc c                                         ; $5ac1: $0c
    nop                                           ; $5ac2: $00
    rst $38                                       ; $5ac3: $ff
    dec c                                         ; $5ac4: $0d
    inc b                                         ; $5ac5: $04
    ld a, [$ec0a]                                 ; $5ac6: $fa $0a $ec
    nop                                           ; $5ac9: $00

jr_0ee_5aca:
    ld [$e8fd], a                                 ; $5aca: $ea $fd $e8
    dec b                                         ; $5acd: $05
    add sp, $0d                                   ; $5ace: $e8 $0d
    ld hl, sp-$03                                 ; $5ad0: $f8 $fd
    xor l                                         ; $5ad2: $ad
    inc bc                                        ; $5ad3: $03
    nop                                           ; $5ad4: $00
    dec b                                         ; $5ad5: $05
    inc bc                                        ; $5ad6: $03
    dec bc                                        ; $5ad7: $0b
    rlca                                          ; $5ad8: $07
    inc e                                         ; $5ad9: $1c
    rrca                                          ; $5ada: $0f
    add hl, hl                                    ; $5adb: $29
    ld e, $3a                                     ; $5adc: $1e $3a

jr_0ee_5ade:
    inc e                                         ; $5ade: $1c
    ld [hl], h                                    ; $5adf: $74
    jr c, jr_0ee_5b36                             ; $5ae0: $38 $54

    jr c, jr_0ee_5a8c                             ; $5ae2: $38 $a8

    ld [hl], b                                    ; $5ae4: $70
    add sp, $70                                   ; $5ae5: $e8 $70
    xor b                                         ; $5ae7: $a8
    ld [hl], b                                    ; $5ae8: $70
    xor b                                         ; $5ae9: $a8
    ld [hl], b                                    ; $5aea: $70
    xor b                                         ; $5aeb: $a8

jr_0ee_5aec:
    ld [hl], b                                    ; $5aec: $70
    add sp, $70                                   ; $5aed: $e8 $70
    xor b                                         ; $5aef: $a8
    ld [hl], b                                    ; $5af0: $70
    adc b                                         ; $5af1: $88
    ld [hl], b                                    ; $5af2: $70
    rra                                           ; $5af3: $1f

jr_0ee_5af4:
    nop                                           ; $5af4: $00
    db $ed                                        ; $5af5: $ed
    rra                                           ; $5af6: $1f
    ld a, a                                       ; $5af7: $7f
    rst $38                                       ; $5af8: $ff
    sbc c                                         ; $5af9: $99
    rst $38                                       ; $5afa: $ff
    ld c, a                                       ; $5afb: $4f

jr_0ee_5afc:
    cp a                                          ; $5afc: $bf
    and l                                         ; $5afd: $a5
    rra                                           ; $5afe: $1f
    jr @+$04                                      ; $5aff: $18 $02

    rlca                                          ; $5b01: $07
    ld de, $8f00                                  ; $5b02: $11 $00 $8f
    ret nz                                        ; $5b05: $c0

    nop                                           ; $5b06: $00
    or b                                          ; $5b07: $b0
    ret nz                                        ; $5b08: $c0

    ret z                                         ; $5b09: $c8

jr_0ee_5b0a:
    ldh a, [$f4]                                  ; $5b0a: $f0 $f4
    ld hl, sp+$6a                                 ; $5b0c: $f8 $6a

jr_0ee_5b0e:
    db $fc                                        ; $5b0e: $fc
    db $ed                                        ; $5b0f: $ed
    cp $b9                                        ; $5b10: $fe $b9
    cp $26                                        ; $5b12: $fe $26
    ld [bc], a                                    ; $5b14: $02
    ld hl, sp+$13                                 ; $5b15: $f8 $13
    nop                                           ; $5b17: $00
    adc [hl]                                      ; $5b18: $8e
    xor b                                         ; $5b19: $a8
    ld [hl], b                                    ; $5b1a: $70
    xor b                                         ; $5b1b: $a8
    ld [hl], b                                    ; $5b1c: $70
    ld b, h                                       ; $5b1d: $44
    jr c, jr_0ee_5b74                             ; $5b1e: $38 $54

    jr c, jr_0ee_5b66                             ; $5b20: $38 $44

    jr c, jr_0ee_5b68                             ; $5b22: $38 $44

    jr c, jr_0ee_5b26                             ; $5b24: $38 $00

jr_0ee_5b26:
    jr c, jr_0ee_5b36                             ; $5b26: $38 $0e

    nop                                           ; $5b28: $00
    rst $38                                       ; $5b29: $ff
    dec c                                         ; $5b2a: $0d
    inc b                                         ; $5b2b: $04
    ld a, [$ec0a]                                 ; $5b2c: $fa $0a $ec
    nop                                           ; $5b2f: $00
    add sp, -$05                                  ; $5b30: $e8 $fb
    and $03                                       ; $5b32: $e6 $03
    rst $20                                       ; $5b34: $e7
    dec bc                                        ; $5b35: $0b

jr_0ee_5b36:
    or $fb                                        ; $5b36: $f6 $fb
    xor l                                         ; $5b38: $ad
    inc bc                                        ; $5b39: $03
    nop                                           ; $5b3a: $00
    dec b                                         ; $5b3b: $05
    inc bc                                        ; $5b3c: $03
    ld a, [bc]                                    ; $5b3d: $0a
    rlca                                          ; $5b3e: $07
    inc e                                         ; $5b3f: $1c
    rrca                                          ; $5b40: $0f
    dec l                                         ; $5b41: $2d
    ld e, $3a                                     ; $5b42: $1e $3a
    inc e                                         ; $5b44: $1c
    ld [hl], h                                    ; $5b45: $74
    jr c, @+$56                                   ; $5b46: $38 $54

    jr c, jr_0ee_5bae                             ; $5b48: $38 $64

    jr c, jr_0ee_5af4                             ; $5b4a: $38 $a8

    ld [hl], b                                    ; $5b4c: $70
    xor b                                         ; $5b4d: $a8
    ld [hl], b                                    ; $5b4e: $70
    add sp, $70                                   ; $5b4f: $e8 $70
    xor b                                         ; $5b51: $a8
    ld [hl], b                                    ; $5b52: $70
    add sp, $70                                   ; $5b53: $e8 $70
    xor b                                         ; $5b55: $a8
    ld [hl], b                                    ; $5b56: $70
    xor b                                         ; $5b57: $a8
    ld [hl], b                                    ; $5b58: $70
    ld e, $00                                     ; $5b59: $1e $00
    db $ed                                        ; $5b5b: $ed
    ld e, $7f                                     ; $5b5c: $1e $7f
    rst $38                                       ; $5b5e: $ff
    adc e                                         ; $5b5f: $8b
    rst $38                                       ; $5b60: $ff
    ld h, a                                       ; $5b61: $67

jr_0ee_5b62:
    sbc a                                         ; $5b62: $9f
    sub d                                         ; $5b63: $92
    rrca                                          ; $5b64: $0f
    inc c                                         ; $5b65: $0c

jr_0ee_5b66:
    ld [bc], a                                    ; $5b66: $02
    inc bc                                        ; $5b67: $03

jr_0ee_5b68:
    ld de, $8d00                                  ; $5b68: $11 $00 $8d
    ldh [rP1], a                                  ; $5b6b: $e0 $00
    sbc b                                         ; $5b6d: $98
    ldh [$e4], a                                  ; $5b6e: $e0 $e4
    ld hl, sp-$06                                 ; $5b70: $f8 $fa
    db $fc                                        ; $5b72: $fc
    or l                                          ; $5b73: $b5

jr_0ee_5b74:
    cp $49                                        ; $5b74: $fe $49
    cp $86                                        ; $5b76: $fe $86
    ld [bc], a                                    ; $5b78: $02
    ld a, b                                       ; $5b79: $78
    dec d                                         ; $5b7a: $15
    nop                                           ; $5b7b: $00
    sub d                                         ; $5b7c: $92
    xor b                                         ; $5b7d: $a8
    ld [hl], b                                    ; $5b7e: $70
    xor b                                         ; $5b7f: $a8
    ld [hl], b                                    ; $5b80: $70
    ld d, h                                       ; $5b81: $54
    jr c, jr_0ee_5bd8                             ; $5b82: $38 $54

    jr c, jr_0ee_5bb0                             ; $5b84: $38 $2a

    inc e                                         ; $5b86: $1c
    add hl, hl                                    ; $5b87: $29
    ld e, $11                                     ; $5b88: $1e $11
    ld c, $11                                     ; $5b8a: $0e $11
    ld c, $00                                     ; $5b8c: $0e $00
    ld c, $0a                                     ; $5b8e: $0e $0a
    nop                                           ; $5b90: $00
    rst $38                                       ; $5b91: $ff
    ld de, $fa06                                  ; $5b92: $11 $06 $fa
    ld a, [bc]                                    ; $5b95: $0a
    db $ec                                        ; $5b96: $ec
    nop                                           ; $5b97: $00
    push hl                                       ; $5b98: $e5
    ld sp, hl                                     ; $5b99: $f9
    ld [c], a                                     ; $5b9a: $e2
    ld bc, $09e2                                  ; $5b9b: $01 $e2 $09
    push hl                                       ; $5b9e: $e5
    inc c                                         ; $5b9f: $0c
    ld a, [c]                                     ; $5ba0: $f2
    ld sp, hl                                     ; $5ba1: $f9
    ld a, [c]                                     ; $5ba2: $f2
    ei                                            ; $5ba3: $fb
    xor l                                         ; $5ba4: $ad
    ld bc, $0200                                  ; $5ba5: $01 $00 $02
    ld bc, $0305                                  ; $5ba8: $01 $05 $03
    ld a, [bc]                                    ; $5bab: $0a
    rlca                                          ; $5bac: $07
    inc d                                         ; $5bad: $14

jr_0ee_5bae:
    rrca                                          ; $5bae: $0f
    dec l                                         ; $5baf: $2d

jr_0ee_5bb0:
    ld e, $3a                                     ; $5bb0: $1e $3a
    inc e                                         ; $5bb2: $1c
    ld c, d                                       ; $5bb3: $4a
    inc a                                         ; $5bb4: $3c
    ld d, h                                       ; $5bb5: $54
    jr c, jr_0ee_5c2c                             ; $5bb6: $38 $74

    jr c, jr_0ee_5b62                             ; $5bb8: $38 $a8

    ld [hl], b                                    ; $5bba: $70
    xor b                                         ; $5bbb: $a8
    ld [hl], b                                    ; $5bbc: $70
    add sp, $70                                   ; $5bbd: $e8 $70
    xor b                                         ; $5bbf: $a8
    ld [hl], b                                    ; $5bc0: $70
    add sp, $70                                   ; $5bc1: $e8 $70
    xor b                                         ; $5bc3: $a8
    ld [hl], b                                    ; $5bc4: $70
    inc bc                                        ; $5bc5: $03
    nop                                           ; $5bc6: $00
    inc e                                         ; $5bc7: $1c
    inc bc                                        ; $5bc8: $03
    ld l, l                                       ; $5bc9: $6d
    rra                                           ; $5bca: $1f
    cp a                                          ; $5bcb: $bf
    ld a, a                                       ; $5bcc: $7f
    ld [c], a                                     ; $5bcd: $e2
    rst $38                                       ; $5bce: $ff
    sbc l                                         ; $5bcf: $9d
    db $e3                                        ; $5bd0: $e3
    ld h, d                                       ; $5bd1: $62
    ld [bc], a                                    ; $5bd2: $02
    add c                                         ; $5bd3: $81
    ld de, $8f00                                  ; $5bd4: $11 $00 $8f
    ret nz                                        ; $5bd7: $c0

jr_0ee_5bd8:
    nop                                           ; $5bd8: $00
    ld hl, sp-$40                                 ; $5bd9: $f8 $c0
    ld a, a                                       ; $5bdb: $7f
    ld hl, sp-$04                                 ; $5bdc: $f8 $fc
    rst $38                                       ; $5bde: $ff
    db $ed                                        ; $5bdf: $ed
    rst $38                                       ; $5be0: $ff
    cp a                                          ; $5be1: $bf
    rst $38                                       ; $5be2: $ff
    inc l                                         ; $5be3: $2c
    rst $38                                       ; $5be4: $ff
    jp Jump_000_3c02                              ; $5be5: $c3 $02 $3c


    rrca                                          ; $5be8: $0f
    nop                                           ; $5be9: $00
    add a                                         ; $5bea: $87
    ld b, $00                                     ; $5beb: $06 $00
    ld bc, $0506                                  ; $5bed: $01 $06 $05
    ld b, $02                                     ; $5bf0: $06 $02
    ld [bc], a                                    ; $5bf2: $02
    inc b                                         ; $5bf3: $04
    dec e                                         ; $5bf4: $1d
    nop                                           ; $5bf5: $00
    sbc b                                         ; $5bf6: $98

jr_0ee_5bf7:
    xor b                                         ; $5bf7: $a8
    ld [hl], b                                    ; $5bf8: $70
    ld d, h                                       ; $5bf9: $54
    jr c, @+$76                                   ; $5bfa: $38 $74

    jr c, @+$56                                   ; $5bfc: $38 $54

    jr c, @+$3c                                   ; $5bfe: $38 $3a

    inc e                                         ; $5c00: $1c
    ld a, [hl+]                                   ; $5c01: $2a
    inc e                                         ; $5c02: $1c
    add hl, hl                                    ; $5c03: $29
    ld e, $15                                     ; $5c04: $1e $15
    ld c, $12                                     ; $5c06: $0e $12
    rrca                                          ; $5c08: $0f
    ld [$0407], sp                                ; $5c09: $08 $07 $04
    inc bc                                        ; $5c0c: $03
    nop                                           ; $5c0d: $00
    inc bc                                        ; $5c0e: $03
    jr jr_0ee_5c11                                ; $5c0f: $18 $00

jr_0ee_5c11:
    adc b                                         ; $5c11: $88
    ld [bc], a                                    ; $5c12: $02
    nop                                           ; $5c13: $00
    ld bc, $0102                                  ; $5c14: $01 $02 $01
    ld [bc], a                                    ; $5c17: $02
    nop                                           ; $5c18: $00
    ld [bc], a                                    ; $5c19: $02
    ld [bc], a                                    ; $5c1a: $02
    nop                                           ; $5c1b: $00
    rst $38                                       ; $5c1c: $ff
    rrca                                          ; $5c1d: $0f
    dec b                                         ; $5c1e: $05
    ld a, [$ec0a]                                 ; $5c1f: $fa $0a $ec
    nop                                           ; $5c22: $00
    push hl                                       ; $5c23: $e5
    ei                                            ; $5c24: $fb
    db $e4                                        ; $5c25: $e4
    inc bc                                        ; $5c26: $03
    push hl                                       ; $5c27: $e5
    dec bc                                        ; $5c28: $0b
    jp hl                                         ; $5c29: $e9


    inc c                                         ; $5c2a: $0c
    db $f4                                        ; $5c2b: $f4

jr_0ee_5c2c:
    ei                                            ; $5c2c: $fb
    xor l                                         ; $5c2d: $ad
    ld bc, $0200                                  ; $5c2e: $01 $00 $02
    ld bc, $0305                                  ; $5c31: $01 $05 $03
    ld c, $07                                     ; $5c34: $0e $07
    inc d                                         ; $5c36: $14
    rrca                                          ; $5c37: $0f
    dec l                                         ; $5c38: $2d
    ld e, $3a                                     ; $5c39: $1e $3a
    inc e                                         ; $5c3b: $1c
    ld a, [hl+]                                   ; $5c3c: $2a
    inc e                                         ; $5c3d: $1c
    ld d, h                                       ; $5c3e: $54
    jr c, @+$56                                   ; $5c3f: $38 $54

    jr c, jr_0ee_5bf7                             ; $5c41: $38 $b4

    ld a, b                                       ; $5c43: $78
    xor b                                         ; $5c44: $a8
    ld [hl], b                                    ; $5c45: $70
    add sp, $70                                   ; $5c46: $e8 $70
    add sp, $70                                   ; $5c48: $e8 $70
    xor b                                         ; $5c4a: $a8
    ld [hl], b                                    ; $5c4b: $70
    xor b                                         ; $5c4c: $a8
    ld [hl], b                                    ; $5c4d: $70
    ld a, $00                                     ; $5c4e: $3e $00
    call $bf3e                                    ; $5c50: $cd $3e $bf
    rst $38                                       ; $5c53: $ff
    rst $08                                       ; $5c54: $cf
    rst $38                                       ; $5c55: $ff
    inc [hl]                                      ; $5c56: $34
    rst $08                                       ; $5c57: $cf
    ret                                           ; $5c58: $c9


    rlca                                          ; $5c59: $07
    ld b, $02                                     ; $5c5a: $06 $02
    ld bc, $0011                                  ; $5c5c: $01 $11 $00
    adc l                                         ; $5c5f: $8d
    ret nz                                        ; $5c60: $c0

jr_0ee_5c61:
    nop                                           ; $5c61: $00
    cp b                                          ; $5c62: $b8
    ret nz                                        ; $5c63: $c0

    and $f8                                       ; $5c64: $e6 $f8
    cp l                                          ; $5c66: $bd
    cp $de                                        ; $5c67: $fe $de
    rst $38                                       ; $5c69: $ff
    inc [hl]                                      ; $5c6a: $34
    rst $38                                       ; $5c6b: $ff
    jp Jump_000_3c02                              ; $5c6c: $c3 $02 $3c


    ld de, $8300                                  ; $5c6f: $11 $00 $83
    ld bc, $0100                                  ; $5c72: $01 $00 $01
    rra                                           ; $5c75: $1f
    nop                                           ; $5c76: $00
    sbc b                                         ; $5c77: $98
    add sp, $70                                   ; $5c78: $e8 $70
    xor b                                         ; $5c7a: $a8
    ld [hl], b                                    ; $5c7b: $70
    xor b                                         ; $5c7c: $a8
    ld [hl], b                                    ; $5c7d: $70
    xor b                                         ; $5c7e: $a8
    ld [hl], b                                    ; $5c7f: $70
    ld e, b                                       ; $5c80: $58
    jr nc, jr_0ee_5cd7                            ; $5c81: $30 $54

    jr c, jr_0ee_5cd9                             ; $5c83: $38 $54

    jr c, jr_0ee_5cd3                             ; $5c85: $38 $4c

    jr c, jr_0ee_5cb3                             ; $5c87: $38 $2a

    inc e                                         ; $5c89: $1c
    ld hl, $111e                                  ; $5c8a: $21 $1e $11
    ld c, $00                                     ; $5c8d: $0e $00
    ld c, $06                                     ; $5c8f: $0e $06
    nop                                           ; $5c91: $00
    rst $38                                       ; $5c92: $ff
    ld de, $fa06                                  ; $5c93: $11 $06 $fa
    ld a, [bc]                                    ; $5c96: $0a
    db $ec                                        ; $5c97: $ec
    nop                                           ; $5c98: $00
    and $f4                                       ; $5c99: $e6 $f4
    db $e3                                        ; $5c9b: $e3
    db $fc                                        ; $5c9c: $fc
    db $e3                                        ; $5c9d: $e3
    inc b                                         ; $5c9e: $04
    and $06                                       ; $5c9f: $e6 $06
    di                                            ; $5ca1: $f3
    push af                                       ; $5ca2: $f5
    di                                            ; $5ca3: $f3
    ei                                            ; $5ca4: $fb
    xor e                                         ; $5ca5: $ab
    inc bc                                        ; $5ca6: $03
    nop                                           ; $5ca7: $00
    dec b                                         ; $5ca8: $05
    inc bc                                        ; $5ca9: $03
    ld a, [bc]                                    ; $5caa: $0a
    rlca                                          ; $5cab: $07
    inc d                                         ; $5cac: $14
    rrca                                          ; $5cad: $0f
    dec a                                         ; $5cae: $3d
    ld e, $2a                                     ; $5caf: $1e $2a
    inc e                                         ; $5cb1: $1c
    ld d, h                                       ; $5cb2: $54

jr_0ee_5cb3:
    jr c, jr_0ee_5d09                             ; $5cb3: $38 $54

    jr c, @+$5a                                   ; $5cb5: $38 $58

    jr nc, jr_0ee_5c61                            ; $5cb7: $30 $a8

    ld [hl], b                                    ; $5cb9: $70
    add sp, $70                                   ; $5cba: $e8 $70
    xor b                                         ; $5cbc: $a8
    ld [hl], b                                    ; $5cbd: $70
    add sp, $70                                   ; $5cbe: $e8 $70
    xor b                                         ; $5cc0: $a8
    ld [hl], b                                    ; $5cc1: $70
    and h                                         ; $5cc2: $a4
    ld a, b                                       ; $5cc3: $78
    ld d, h                                       ; $5cc4: $54
    jr c, jr_0ee_5cce                             ; $5cc5: $38 $07

    nop                                           ; $5cc7: $00
    dec a                                         ; $5cc8: $3d
    rlca                                          ; $5cc9: $07
    sbc $3f                                       ; $5cca: $de $3f
    ld [hl], c                                    ; $5ccc: $71
    rst $38                                       ; $5ccd: $ff

jr_0ee_5cce:
    sbc h                                         ; $5cce: $9c
    db $e3                                        ; $5ccf: $e3
    ld h, e                                       ; $5cd0: $63
    ld [bc], a                                    ; $5cd1: $02
    add b                                         ; $5cd2: $80

jr_0ee_5cd3:
    inc de                                        ; $5cd3: $13
    nop                                           ; $5cd4: $00
    adc l                                         ; $5cd5: $8d
    ret nz                                        ; $5cd6: $c0

jr_0ee_5cd7:
    nop                                           ; $5cd7: $00
    inc a                                         ; $5cd8: $3c

jr_0ee_5cd9:
    ret nz                                        ; $5cd9: $c0

    db $db                                        ; $5cda: $db
    db $fc                                        ; $5cdb: $fc
    db $f4                                        ; $5cdc: $f4
    rst $38                                       ; $5cdd: $ff
    ld e, a                                       ; $5cde: $5f
    rst $38                                       ; $5cdf: $ff
    inc a                                         ; $5ce0: $3c
    rst $38                                       ; $5ce1: $ff
    jp Jump_000_3c02                              ; $5ce2: $c3 $02 $3c


    ld de, $8700                                  ; $5ce5: $11 $00 $87
    ld [bc], a                                    ; $5ce8: $02
    nop                                           ; $5ce9: $00
    ld bc, $0302                                  ; $5cea: $01 $02 $03
    nop                                           ; $5ced: $00
    ld [bc], a                                    ; $5cee: $02
    rra                                           ; $5cef: $1f
    nop                                           ; $5cf0: $00
    adc c                                         ; $5cf1: $89
    or h                                          ; $5cf2: $b4
    ld a, b                                       ; $5cf3: $78
    ld d, h                                       ; $5cf4: $54
    jr c, jr_0ee_5d61                             ; $5cf5: $38 $6a

    inc e                                         ; $5cf7: $1c
    dec l                                         ; $5cf8: $2d
    ld e, $24                                     ; $5cf9: $1e $24
    ld [bc], a                                    ; $5cfb: $02
    rra                                           ; $5cfc: $1f
    add [hl]                                      ; $5cfd: $86
    rlca                                          ; $5cfe: $07
    add hl, bc                                    ; $5cff: $09
    rlca                                          ; $5d00: $07
    inc b                                         ; $5d01: $04
    inc bc                                        ; $5d02: $03
    ld [bc], a                                    ; $5d03: $02
    ld [bc], a                                    ; $5d04: $02
    ld bc, $0015                                  ; $5d05: $01 $15 $00
    adc [hl]                                      ; $5d08: $8e

jr_0ee_5d09:
    jr nz, jr_0ee_5d0b                            ; $5d09: $20 $00

jr_0ee_5d0b:
    db $10                                        ; $5d0b: $10
    jr nz, jr_0ee_5d36                            ; $5d0c: $20 $28

    jr nc, jr_0ee_5d34                            ; $5d0e: $30 $24

    jr c, @+$14                                   ; $5d10: $38 $12

    inc a                                         ; $5d12: $3c
    ld hl, $001e                                  ; $5d13: $21 $1e $00
    ld e, $04                                     ; $5d16: $1e $04
    nop                                           ; $5d18: $00
    rst $38                                       ; $5d19: $ff
    dec c                                         ; $5d1a: $0d
    inc b                                         ; $5d1b: $04
    ld a, [$ec0a]                                 ; $5d1c: $fa $0a $ec
    nop                                           ; $5d1f: $00
    call c, $e3ec                                 ; $5d20: $dc $ec $e3
    ldh a, [$f3]                                  ; $5d23: $f0 $f3
    db $f4                                        ; $5d25: $f4
    ld sp, hl                                     ; $5d26: $f9
    ei                                            ; $5d27: $fb
    and c                                         ; $5d28: $a1
    jr c, jr_0ee_5d2b                             ; $5d29: $38 $00

jr_0ee_5d2b:
    ld b, h                                       ; $5d2b: $44
    jr c, jr_0ee_5d88                             ; $5d2c: $38 $5a

    inc a                                         ; $5d2e: $3c
    cp h                                          ; $5d2f: $bc
    ld [hl], d                                    ; $5d30: $72
    rst $38                                       ; $5d31: $ff
    ld h, b                                       ; $5d32: $60
    cp a                                          ; $5d33: $bf

jr_0ee_5d34:
    ld h, b                                       ; $5d34: $60
    cp l                                          ; $5d35: $bd

jr_0ee_5d36:
    ld [hl], d                                    ; $5d36: $72
    ld a, d                                       ; $5d37: $7a
    ccf                                           ; $5d38: $3f
    ld c, a                                       ; $5d39: $4f
    inc a                                         ; $5d3a: $3c
    ld e, a                                       ; $5d3b: $5f
    jr c, @+$31                                   ; $5d3c: $38 $2f

    jr jr_0ee_5d7f                                ; $5d3e: $18 $3f

    inc e                                         ; $5d40: $1c
    rla                                           ; $5d41: $17
    rrca                                          ; $5d42: $0f
    inc de                                        ; $5d43: $13
    rrca                                          ; $5d44: $0f
    add hl, bc                                    ; $5d45: $09
    rlca                                          ; $5d46: $07
    inc b                                         ; $5d47: $04
    inc bc                                        ; $5d48: $03
    ld [$0002], sp                                ; $5d49: $08 $02 $00
    ld [bc], a                                    ; $5d4c: $02
    ld [$00b0], sp                                ; $5d4d: $08 $b0 $00
    ld [$0400], sp                                ; $5d50: $08 $00 $04
    ld [$0804], sp                                ; $5d53: $08 $04 $08
    inc c                                         ; $5d56: $0c
    ld [$0804], sp                                ; $5d57: $08 $04 $08
    ld a, [bc]                                    ; $5d5a: $0a
    inc c                                         ; $5d5b: $0c
    ld [hl-], a                                   ; $5d5c: $32
    inc e                                         ; $5d5d: $1c
    ld a, [hl+]                                   ; $5d5e: $2a
    inc e                                         ; $5d5f: $1c
    dec l                                         ; $5d60: $2d

jr_0ee_5d61:
    ld e, $15                                     ; $5d61: $1e $15
    ld c, $19                                     ; $5d63: $0e $19
    ld c, $15                                     ; $5d65: $0e $15
    ld c, $0f                                     ; $5d67: $0e $0f
    ld b, $c8                                     ; $5d69: $06 $c8
    ld [hl], b                                    ; $5d6b: $70
    ld hl, sp+$70                                 ; $5d6c: $f8 $70
    and h                                         ; $5d6e: $a4
    ld a, b                                       ; $5d6f: $78
    ld e, d                                       ; $5d70: $5a
    inc a                                         ; $5d71: $3c
    ld a, [hl+]                                   ; $5d72: $2a
    inc e                                         ; $5d73: $1c
    dec [hl]                                      ; $5d74: $35
    ld c, $16                                     ; $5d75: $0e $16
    rrca                                          ; $5d77: $0f
    inc de                                        ; $5d78: $13
    rrca                                          ; $5d79: $0f
    dec c                                         ; $5d7a: $0d
    inc bc                                        ; $5d7b: $03
    inc b                                         ; $5d7c: $04
    inc bc                                        ; $5d7d: $03
    ld [bc], a                                    ; $5d7e: $02

jr_0ee_5d7f:
    ld [bc], a                                    ; $5d7f: $02
    ld bc, $0009                                  ; $5d80: $01 $09 $00
    sub b                                         ; $5d83: $90
    ld b, b                                       ; $5d84: $40
    nop                                           ; $5d85: $00
    jr nz, @+$42                                  ; $5d86: $20 $40

jr_0ee_5d88:
    ld d, b                                       ; $5d88: $50
    ld h, b                                       ; $5d89: $60
    ld l, b                                       ; $5d8a: $68
    ld [hl], b                                    ; $5d8b: $70
    inc h                                         ; $5d8c: $24
    ld a, b                                       ; $5d8d: $78
    ld [de], a                                    ; $5d8e: $12
    ld a, h                                       ; $5d8f: $7c
    ld h, c                                       ; $5d90: $61
    ld e, $00                                     ; $5d91: $1e $00
    ld e, $10                                     ; $5d93: $1e $10
    nop                                           ; $5d95: $00
    rst $38                                       ; $5d96: $ff
    rrca                                          ; $5d97: $0f
    dec b                                         ; $5d98: $05
    ld a, [$ec0a]                                 ; $5d99: $fa $0a $ec
    nop                                           ; $5d9c: $00
    add sp, -$21                                  ; $5d9d: $e8 $df
    add sp, -$19                                  ; $5d9f: $e8 $e7
    db $eb                                        ; $5da1: $eb
    rst $28                                       ; $5da2: $ef
    rst $28                                       ; $5da3: $ef
    rst $30                                       ; $5da4: $f7
    rst $30                                       ; $5da5: $f7
    ei                                            ; $5da6: $fb
    adc e                                         ; $5da7: $8b
    rra                                           ; $5da8: $1f
    nop                                           ; $5da9: $00
    ld a, a                                       ; $5daa: $7f
    db $10                                        ; $5dab: $10
    rst $38                                       ; $5dac: $ff
    ld [hl], b                                    ; $5dad: $70
    sbc a                                         ; $5dae: $9f
    ld a, c                                       ; $5daf: $79
    ld c, [hl]                                    ; $5db0: $4e
    ccf                                           ; $5db1: $3f
    jr c, jr_0ee_5db6                             ; $5db2: $38 $02

    rlca                                          ; $5db4: $07
    inc de                                        ; $5db5: $13

jr_0ee_5db6:
    nop                                           ; $5db6: $00
    adc l                                         ; $5db7: $8d
    add b                                         ; $5db8: $80
    nop                                           ; $5db9: $00
    ld a, h                                       ; $5dba: $7c
    add b                                         ; $5dbb: $80
    cp a                                          ; $5dbc: $bf
    ret nz                                        ; $5dbd: $c0

    cp $c3                                        ; $5dbe: $fe $c3
    rst $38                                       ; $5dc0: $ff
    rst $20                                       ; $5dc1: $e7
    ld e, l                                       ; $5dc2: $5d
    rst $38                                       ; $5dc3: $ff
    add b                                         ; $5dc4: $80
    ld [bc], a                                    ; $5dc5: $02
    ld a, a                                       ; $5dc6: $7f
    ld de, $8f00                                  ; $5dc7: $11 $00 $8f
    add b                                         ; $5dca: $80
    nop                                           ; $5dcb: $00
    ld h, b                                       ; $5dcc: $60
    add b                                         ; $5dcd: $80
    xor h                                         ; $5dce: $ac
    ldh a, [rPCM34]                               ; $5dcf: $f0 $77
    db $fc                                        ; $5dd1: $fc
    adc h                                         ; $5dd2: $8c
    ld a, a                                       ; $5dd3: $7f
    ld [hl], e                                    ; $5dd4: $73
    rrca                                          ; $5dd5: $0f
    inc c                                         ; $5dd6: $0c
    inc bc                                        ; $5dd7: $03
    ld [bc], a                                    ; $5dd8: $02
    ld [bc], a                                    ; $5dd9: $02
    ld bc, $000f                                  ; $5dda: $01 $0f $00
    or h                                          ; $5ddd: $b4
    ret nz                                        ; $5dde: $c0

    nop                                           ; $5ddf: $00
    and b                                         ; $5de0: $a0
    ret nz                                        ; $5de1: $c0

    ret nc                                        ; $5de2: $d0

    ldh [rBCPS], a                                ; $5de3: $e0 $68
    ldh a, [rNR14]                                ; $5de5: $f0 $14
    ld hl, sp-$46                                 ; $5de7: $f8 $ba
    ld a, h                                       ; $5de9: $7c
    ld b, l                                       ; $5dea: $45
    ld a, $2f                                     ; $5deb: $3e $2f
    ld e, $13                                     ; $5ded: $1e $13
    rrca                                          ; $5def: $0f
    ld [de], a                                    ; $5df0: $12
    rrca                                          ; $5df1: $0f
    add hl, bc                                    ; $5df2: $09
    rlca                                          ; $5df3: $07
    add hl, bc                                    ; $5df4: $09
    rlca                                          ; $5df5: $07
    dec b                                         ; $5df6: $05
    inc bc                                        ; $5df7: $03
    inc b                                         ; $5df8: $04
    inc bc                                        ; $5df9: $03
    ld [bc], a                                    ; $5dfa: $02
    ld bc, $0102                                  ; $5dfb: $01 $02 $01
    ld [$0800], sp                                ; $5dfe: $08 $00 $08
    nop                                           ; $5e01: $00
    inc b                                         ; $5e02: $04
    ld [$0804], sp                                ; $5e03: $08 $04 $08
    ld c, $0c                                     ; $5e06: $0e $0c
    ld a, [bc]                                    ; $5e08: $0a
    inc c                                         ; $5e09: $0c
    dec c                                         ; $5e0a: $0d
    ld c, $05                                     ; $5e0b: $0e $05
    ld c, $21                                     ; $5e0d: $0e $21
    ld e, $00                                     ; $5e0f: $1e $00
    ld e, $0c                                     ; $5e11: $1e $0c
    nop                                           ; $5e13: $00
    rst $38                                       ; $5e14: $ff
    ld de, $fa06                                  ; $5e15: $11 $06 $fa
    ld a, [bc]                                    ; $5e18: $0a
    db $ec                                        ; $5e19: $ec
    nop                                           ; $5e1a: $00
    di                                            ; $5e1b: $f3
    ret c                                         ; $5e1c: $d8

    rst $28                                       ; $5e1d: $ef
    ldh [$ee], a                                  ; $5e1e: $e0 $ee
    add sp, -$11                                  ; $5e20: $e8 $ef
    ldh a, [$f2]                                  ; $5e22: $f0 $f2
    ld hl, sp-$06                                 ; $5e24: $f8 $fa
    ei                                            ; $5e26: $fb
    sub l                                         ; $5e27: $95
    inc bc                                        ; $5e28: $03
    nop                                           ; $5e29: $00
    ld b, $03                                     ; $5e2a: $06 $03
    dec c                                         ; $5e2c: $0d
    inc bc                                        ; $5e2d: $03
    ld e, $03                                     ; $5e2e: $1e $03
    ld a, $07                                     ; $5e30: $3e $07
    dec [hl]                                      ; $5e32: $35
    ld c, $75                                     ; $5e33: $0e $75
    ld c, $7a                                     ; $5e35: $0e $7a
    inc c                                         ; $5e37: $0c
    ld [c], a                                     ; $5e38: $e2
    inc e                                         ; $5e39: $1c
    and h                                         ; $5e3a: $a4
    ld a, b                                       ; $5e3b: $78
    sbc b                                         ; $5e3c: $98
    ld [bc], a                                    ; $5e3d: $02
    ld h, b                                       ; $5e3e: $60
    add hl, bc                                    ; $5e3f: $09
    nop                                           ; $5e40: $00
    adc l                                         ; $5e41: $8d
    rlca                                          ; $5e42: $07
    nop                                           ; $5e43: $00
    add hl, de                                    ; $5e44: $19
    rlca                                          ; $5e45: $07
    ld l, a                                       ; $5e46: $6f
    rra                                           ; $5e47: $1f
    cp b                                          ; $5e48: $b8
    ld a, a                                       ; $5e49: $7f
    ld b, a                                       ; $5e4a: $47
    ld hl, sp-$68                                 ; $5e4b: $f8 $98
    ldh [$60], a                                  ; $5e4d: $e0 $60
    ld [bc], a                                    ; $5e4f: $02
    add b                                         ; $5e50: $80
    add d                                         ; $5e51: $82
    nop                                           ; $5e52: $00
    add b                                         ; $5e53: $80
    rrca                                          ; $5e54: $0f
    nop                                           ; $5e55: $00
    add h                                         ; $5e56: $84
    ccf                                           ; $5e57: $3f
    nop                                           ; $5e58: $00
    jp z, $023f                                   ; $5e59: $ca $3f $02

    rst $38                                       ; $5e5c: $ff
    add e                                         ; $5e5d: $83
    ld b, h                                       ; $5e5e: $44
    rst $38                                       ; $5e5f: $ff
    ccf                                           ; $5e60: $3f
    ld [bc], a                                    ; $5e61: $02
    ret nz                                        ; $5e62: $c0

    dec d                                         ; $5e63: $15
    nop                                           ; $5e64: $00
    adc l                                         ; $5e65: $8d
    ldh [rP1], a                                  ; $5e66: $e0 $00
    ld e, h                                       ; $5e68: $5c
    ldh [$eb], a                                  ; $5e69: $e0 $eb
    db $fc                                        ; $5e6b: $fc
    dec e                                         ; $5e6c: $1d
    rst $38                                       ; $5e6d: $ff
    db $e3                                        ; $5e6e: $e3
    rra                                           ; $5e6f: $1f
    jr jr_0ee_5e79                                ; $5e70: $18 $07

    ld b, $02                                     ; $5e72: $06 $02
    ld bc, $0011                                  ; $5e74: $01 $11 $00
    sbc [hl]                                      ; $5e77: $9e
    ret nz                                        ; $5e78: $c0

jr_0ee_5e79:
    nop                                           ; $5e79: $00
    and b                                         ; $5e7a: $a0
    ret nz                                        ; $5e7b: $c0

    ret nc                                        ; $5e7c: $d0

    ldh [rBCPS], a                                ; $5e7d: $e0 $68
    ldh a, [$3c]                                  ; $5e7f: $f0 $3c
    ld hl, sp-$76                                 ; $5e81: $f8 $8a
    ld a, h                                       ; $5e83: $7c
    ld e, l                                       ; $5e84: $5d
    ld a, $25                                     ; $5e85: $3e $25
    ld e, $13                                     ; $5e87: $1e $13
    rrca                                          ; $5e89: $0f
    ld [de], a                                    ; $5e8a: $12
    rrca                                          ; $5e8b: $0f
    add hl, bc                                    ; $5e8c: $09
    rlca                                          ; $5e8d: $07
    add hl, bc                                    ; $5e8e: $09
    rlca                                          ; $5e8f: $07
    inc b                                         ; $5e90: $04
    inc bc                                        ; $5e91: $03
    inc b                                         ; $5e92: $04
    inc bc                                        ; $5e93: $03
    nop                                           ; $5e94: $00
    inc bc                                        ; $5e95: $03
    ld [bc], a                                    ; $5e96: $02
    nop                                           ; $5e97: $00
    adc [hl]                                      ; $5e98: $8e
    inc b                                         ; $5e99: $04
    nop                                           ; $5e9a: $00
    inc b                                         ; $5e9b: $04
    nop                                           ; $5e9c: $00
    ld [bc], a                                    ; $5e9d: $02
    inc b                                         ; $5e9e: $04
    ld [bc], a                                    ; $5e9f: $02
    inc b                                         ; $5ea0: $04
    dec b                                         ; $5ea1: $05
    ld b, $01                                     ; $5ea2: $06 $01
    ld b, $00                                     ; $5ea4: $06 $00
    ld b, $12                                     ; $5ea6: $06 $12
    nop                                           ; $5ea8: $00
    rst $38                                       ; $5ea9: $ff
    rrca                                          ; $5eaa: $0f
    dec b                                         ; $5eab: $05
    ld a, [$ec0a]                                 ; $5eac: $fa $0a $ec
    nop                                           ; $5eaf: $00
    ld [c], a                                     ; $5eb0: $e2
    db $e4                                        ; $5eb1: $e4
    pop hl                                        ; $5eb2: $e1
    db $ec                                        ; $5eb3: $ec
    db $e3                                        ; $5eb4: $e3
    db $f4                                        ; $5eb5: $f4
    add sp, -$06                                  ; $5eb6: $e8 $fa
    pop af                                        ; $5eb8: $f1
    ei                                            ; $5eb9: $fb
    adc e                                         ; $5eba: $8b
    ld bc, $0f00                                  ; $5ebb: $01 $00 $0f
    nop                                           ; $5ebe: $00
    ld a, l                                       ; $5ebf: $7d
    ld [bc], a                                    ; $5ec0: $02
    rst $38                                       ; $5ec1: $ff
    ld b, a                                       ; $5ec2: $47
    sbc [hl]                                      ; $5ec3: $9e
    ld a, a                                       ; $5ec4: $7f
    ld h, c                                       ; $5ec5: $61
    ld [bc], a                                    ; $5ec6: $02
    ld e, $13                                     ; $5ec7: $1e $13
    nop                                           ; $5ec9: $00
    adc e                                         ; $5eca: $8b
    jr c, jr_0ee_5ecd                             ; $5ecb: $38 $00

jr_0ee_5ecd:
    adc $38                                       ; $5ecd: $ce $38
    ei                                            ; $5ecf: $fb
    ld a, $e5                                     ; $5ed0: $3e $e5
    ld a, a                                       ; $5ed2: $7f
    sbc b                                         ; $5ed3: $98
    rst $20                                       ; $5ed4: $e7
    ld h, a                                       ; $5ed5: $67
    ld [bc], a                                    ; $5ed6: $02
    add b                                         ; $5ed7: $80
    inc de                                        ; $5ed8: $13
    nop                                           ; $5ed9: $00
    sub l                                         ; $5eda: $95
    ldh [rP1], a                                  ; $5edb: $e0 $00
    cp b                                          ; $5edd: $b8
    ldh [$6c], a                                  ; $5ede: $e0 $6c
    ld hl, sp-$66                                 ; $5ee0: $f8 $9a
    ld a, h                                       ; $5ee2: $7c
    ld h, a                                       ; $5ee3: $67
    ld e, $12                                     ; $5ee4: $1e $12
    rrca                                          ; $5ee6: $0f
    add hl, bc                                    ; $5ee7: $09
    rlca                                          ; $5ee8: $07
    dec b                                         ; $5ee9: $05
    inc bc                                        ; $5eea: $03
    inc b                                         ; $5eeb: $04
    inc bc                                        ; $5eec: $03
    ld [bc], a                                    ; $5eed: $02
    ld bc, $0202                                  ; $5eee: $01 $02 $02
    ld bc, $00a9                                  ; $5ef1: $01 $a9 $00
    ld bc, $0100                                  ; $5ef4: $01 $00 $01
    nop                                           ; $5ef7: $00
    ld bc, $0100                                  ; $5ef8: $01 $00 $01
    nop                                           ; $5efb: $00
    jr nz, jr_0ee_5efe                            ; $5efc: $20 $00

jr_0ee_5efe:
    jr nc, jr_0ee_5f20                            ; $5efe: $30 $20

jr_0ee_5f00:
    db $10                                        ; $5f00: $10
    jr nz, @+$2a                                  ; $5f01: $20 $28

    jr nc, @+$3a                                  ; $5f03: $30 $38

    jr nc, @+$2a                                  ; $5f05: $30 $28

    jr nc, jr_0ee_5f1d                            ; $5f07: $30 $14

    jr c, @+$1e                                   ; $5f09: $38 $1c

    jr c, jr_0ee_5f21                             ; $5f0b: $38 $14

    jr c, @+$1c                                   ; $5f0d: $38 $1a

    inc a                                         ; $5f0f: $3c
    ld c, $3c                                     ; $5f10: $0e $3c
    ld a, [hl+]                                   ; $5f12: $2a
    inc e                                         ; $5f13: $1c
    ld l, $1c                                     ; $5f14: $2e $1c
    ld l, $1c                                     ; $5f16: $2e $1c
    ld h, $1c                                     ; $5f18: $26 $1c
    dec l                                         ; $5f1a: $2d
    ld e, $0e                                     ; $5f1b: $1e $0e

jr_0ee_5f1d:
    nop                                           ; $5f1d: $00
    sub d                                         ; $5f1e: $92
    ld e, d                                       ; $5f1f: $5a

jr_0ee_5f20:
    inc a                                         ; $5f20: $3c

jr_0ee_5f21:
    ld c, [hl]                                    ; $5f21: $4e
    inc a                                         ; $5f22: $3c
    ld a, [hl+]                                   ; $5f23: $2a
    inc e                                         ; $5f24: $1c
    dec l                                         ; $5f25: $2d
    ld e, $25                                     ; $5f26: $1e $25
    ld e, $2d                                     ; $5f28: $1e $2d
    ld e, $25                                     ; $5f2a: $1e $25
    ld e, $21                                     ; $5f2c: $1e $21
    ld e, $00                                     ; $5f2e: $1e $00
    ld e, $ff                                     ; $5f30: $1e $ff
    ld de, $fa06                                  ; $5f32: $11 $06 $fa
    ld a, [bc]                                    ; $5f35: $0a
    db $ec                                        ; $5f36: $ec
    nop                                           ; $5f37: $00
    di                                            ; $5f38: $f3
    db $fd                                        ; $5f39: $fd
    rst $28                                       ; $5f3a: $ef
    dec b                                         ; $5f3b: $05
    xor $0d                                       ; $5f3c: $ee $0d
    xor $15                                       ; $5f3e: $ee $15
    rst $28                                       ; $5f40: $ef
    dec e                                         ; $5f41: $1d
    rst $28                                       ; $5f42: $ef
    dec h                                         ; $5f43: $25
    sbc h                                         ; $5f44: $9c
    ld bc, $0200                                  ; $5f45: $01 $00 $02
    ld bc, $0307                                  ; $5f48: $01 $07 $03
    dec bc                                        ; $5f4b: $0b
    rlca                                          ; $5f4c: $07
    ld d, $0f                                     ; $5f4d: $16 $0f

jr_0ee_5f4f:
    inc d                                         ; $5f4f: $14
    rrca                                          ; $5f50: $0f
    add hl, hl                                    ; $5f51: $29
    ld e, $29                                     ; $5f52: $1e $29
    ld e, $52                                     ; $5f54: $1e $52
    inc a                                         ; $5f56: $3c
    ld d, [hl]                                    ; $5f57: $56
    jr c, jr_0ee_5fae                             ; $5f58: $38 $54

    jr c, jr_0ee_5f00                             ; $5f5a: $38 $a4

    ld a, b                                       ; $5f5c: $78
    adc h                                         ; $5f5d: $8c
    ld [hl], b                                    ; $5f5e: $70
    nop                                           ; $5f5f: $00
    ld a, b                                       ; $5f60: $78
    inc b                                         ; $5f61: $04
    nop                                           ; $5f62: $00
    sub e                                         ; $5f63: $93
    inc bc                                        ; $5f64: $03
    nop                                           ; $5f65: $00
    dec c                                         ; $5f66: $0d
    inc bc                                        ; $5f67: $03
    inc sp                                        ; $5f68: $33
    rrca                                          ; $5f69: $0f
    rst $28                                       ; $5f6a: $ef
    ccf                                           ; $5f6b: $3f
    inc a                                         ; $5f6c: $3c
    rst $38                                       ; $5f6d: $ff
    di                                            ; $5f6e: $f3
    db $fc                                        ; $5f6f: $fc
    call z, $10f0                                 ; $5f70: $cc $f0 $10
    ldh [$60], a                                  ; $5f73: $e0 $60
    add b                                         ; $5f75: $80
    ld b, b                                       ; $5f76: $40
    ld [bc], a                                    ; $5f77: $02
    add b                                         ; $5f78: $80
    dec bc                                        ; $5f79: $0b
    nop                                           ; $5f7a: $00
    add e                                         ; $5f7b: $83
    ccf                                           ; $5f7c: $3f
    nop                                           ; $5f7d: $00
    push hl                                       ; $5f7e: $e5
    ld [bc], a                                    ; $5f7f: $02
    ccf                                           ; $5f80: $3f
    add [hl]                                      ; $5f81: $86
    rst $38                                       ; $5f82: $ff
    ld [c], a                                     ; $5f83: $e2
    db $fd                                        ; $5f84: $fd
    ld e, a                                       ; $5f85: $5f
    and b                                         ; $5f86: $a0
    ldh [$15], a                                  ; $5f87: $e0 $15
    nop                                           ; $5f89: $00
    adc e                                         ; $5f8a: $8b
    ret nz                                        ; $5f8b: $c0

    nop                                           ; $5f8c: $00
    jr c, jr_0ee_5f4f                             ; $5f8d: $38 $c0

    and $f8                                       ; $5f8f: $e6 $f8
    add hl, de                                    ; $5f91: $19
    cp $e7                                        ; $5f92: $fe $e7
    dec de                                        ; $5f94: $1b
    jr c, jr_0ee_5f99                             ; $5f95: $38 $02

    rlca                                          ; $5f97: $07
    inc de                                        ; $5f98: $13

jr_0ee_5f99:
    nop                                           ; $5f99: $00
    adc a                                         ; $5f9a: $8f
    rrca                                          ; $5f9b: $0f
    nop                                           ; $5f9c: $00
    ld [hl], b                                    ; $5f9d: $70
    rrca                                          ; $5f9e: $0f
    adc [hl]                                      ; $5f9f: $8e
    ld a, a                                       ; $5fa0: $7f
    rst $10                                       ; $5fa1: $d7
    rst $38                                       ; $5fa2: $ff
    ld a, a                                       ; $5fa3: $7f
    rst $38                                       ; $5fa4: $ff
    adc l                                         ; $5fa5: $8d
    ld a, a                                       ; $5fa6: $7f
    ld h, d                                       ; $5fa7: $62
    dec e                                         ; $5fa8: $1d
    rra                                           ; $5fa9: $1f
    ld de, $8d00                                  ; $5faa: $11 $00 $8d
    add b                                         ; $5fad: $80

jr_0ee_5fae:
    nop                                           ; $5fae: $00
    ld [hl], b                                    ; $5faf: $70
    add b                                         ; $5fb0: $80
    adc b                                         ; $5fb1: $88
    ldh a, [$f4]                                  ; $5fb2: $f0 $f4
    ld hl, sp-$2c                                 ; $5fb4: $f8 $d4
    ld hl, sp-$78                                 ; $5fb6: $f8 $88
    ldh a, [rSVBK]                                ; $5fb8: $f0 $70
    ld [bc], a                                    ; $5fba: $02
    add b                                         ; $5fbb: $80
    ld de, $ff00                                  ; $5fbc: $11 $00 $ff
    ld de, $fa06                                  ; $5fbf: $11 $06 $fa
    ld a, [bc]                                    ; $5fc2: $0a
    db $ec                                        ; $5fc3: $ec
    nop                                           ; $5fc4: $00
    ldh [$f9], a                                  ; $5fc5: $e0 $f9
    rst $18                                       ; $5fc7: $df
    ld bc, $06e1                                  ; $5fc8: $01 $e1 $06
    pop af                                        ; $5fcb: $f1
    rst $30                                       ; $5fcc: $f7
    rst $28                                       ; $5fcd: $ef
    cp $ff                                        ; $5fce: $fe $ff
    ei                                            ; $5fd0: $fb
    sbc e                                         ; $5fd1: $9b
    rrca                                          ; $5fd2: $0f
    nop                                           ; $5fd3: $00
    ld [hl-], a                                   ; $5fd4: $32
    rrca                                          ; $5fd5: $0f
    ld d, a                                       ; $5fd6: $57
    ccf                                           ; $5fd7: $3f
    ld e, h                                       ; $5fd8: $5c
    ccf                                           ; $5fd9: $3f
    and e                                         ; $5fda: $a3
    ld a, h                                       ; $5fdb: $7c
    or h                                          ; $5fdc: $b4
    ld a, b                                       ; $5fdd: $78
    xor b                                         ; $5fde: $a8
    ld [hl], b                                    ; $5fdf: $70
    xor b                                         ; $5fe0: $a8
    ld [hl], b                                    ; $5fe1: $70
    sub [hl]                                      ; $5fe2: $96
    ld a, b                                       ; $5fe3: $78
    ld c, l                                       ; $5fe4: $4d
    ld a, $46                                     ; $5fe5: $3e $46
    ccf                                           ; $5fe7: $3f
    inc sp                                        ; $5fe8: $33
    rrca                                          ; $5fe9: $0f
    ld [$0607], sp                                ; $5fea: $08 $07 $06
    ld [bc], a                                    ; $5fed: $02
    ld bc, $0092                                  ; $5fee: $01 $92 $00
    ld bc, $fc00                                  ; $5ff1: $01 $00 $fc
    nop                                           ; $5ff4: $00
    ld l, e                                       ; $5ff5: $6b
    db $fc                                        ; $5ff6: $fc
    or l                                          ; $5ff7: $b5
    rst $38                                       ; $5ff8: $ff
    db $dd                                        ; $5ff9: $dd
    rst $38                                       ; $5ffa: $ff
    rra                                           ; $5ffb: $1f
    rst $38                                       ; $5ffc: $ff
    rst $28                                       ; $5ffd: $ef
    rra                                           ; $5ffe: $1f
    ld de, $0c0f                                  ; $5fff: $11 $0f $0c
    ld [bc], a                                    ; $6002: $02
    inc bc                                        ; $6003: $03
    inc bc                                        ; $6004: $03
    nop                                           ; $6005: $00
    sub a                                         ; $6006: $97
    add b                                         ; $6007: $80
    nop                                           ; $6008: $00
    ret nz                                        ; $6009: $c0

    add b                                         ; $600a: $80
    and b                                         ; $600b: $a0
    ret nz                                        ; $600c: $c0

    ret nc                                        ; $600d: $d0

    ldh [rSVBK], a                                ; $600e: $e0 $70
    ldh [rBCPS], a                                ; $6010: $e0 $68
    ldh a, [rNR23]                                ; $6012: $f0 $18
    nop                                           ; $6014: $00
    inc d                                         ; $6015: $14
    jr jr_0ee_6032                                ; $6016: $18 $1a

    inc e                                         ; $6018: $1c
    dec d                                         ; $6019: $15
    ld e, $1d                                     ; $601a: $1e $1d
    ld e, $02                                     ; $601c: $1e $02
    ld [bc], a                                    ; $601e: $02
    inc e                                         ; $601f: $1c
    inc de                                        ; $6020: $13
    nop                                           ; $6021: $00
    xor e                                         ; $6022: $ab
    ld bc, $0600                                  ; $6023: $01 $00 $06
    ld bc, $0719                                  ; $6026: $01 $19 $07
    ld h, $1f                                     ; $6029: $26 $1f
    ld e, l                                       ; $602b: $5d
    ld a, $5a                                     ; $602c: $3e $5a
    inc a                                         ; $602e: $3c
    or h                                          ; $602f: $b4
    ld a, b                                       ; $6030: $78
    sub h                                         ; $6031: $94

jr_0ee_6032:
    ld a, b                                       ; $6032: $78
    cp d                                          ; $6033: $ba
    ld a, h                                       ; $6034: $7c
    ld e, c                                       ; $6035: $59
    ld a, $44                                     ; $6036: $3e $44
    ccf                                           ; $6038: $3f
    ld h, $1f                                     ; $6039: $26 $1f
    inc de                                        ; $603b: $13
    rrca                                          ; $603c: $0f
    ld [$0607], sp                                ; $603d: $08 $07 $06
    ld bc, $0100                                  ; $6040: $01 $00 $01
    dec c                                         ; $6043: $0d
    ld e, $2d                                     ; $6044: $1e $2d
    ld e, $59                                     ; $6046: $1e $59
    ld a, $32                                     ; $6048: $3e $32
    ld a, h                                       ; $604a: $7c
    inc b                                         ; $604b: $04
    ld a, b                                       ; $604c: $78
    jr c, jr_0ee_6051                             ; $604d: $38 $02

    ld b, b                                       ; $604f: $40
    dec bc                                        ; $6050: $0b

jr_0ee_6051:
    nop                                           ; $6051: $00
    adc h                                         ; $6052: $8c
    ld b, b                                       ; $6053: $40
    nop                                           ; $6054: $00
    jr nz, jr_0ee_6097                            ; $6055: $20 $40

    db $10                                        ; $6057: $10
    ld h, b                                       ; $6058: $60
    ld c, b                                       ; $6059: $48
    ld [hl], b                                    ; $605a: $70
    ld bc, $000e                                  ; $605b: $01 $0e $00
    ld c, $1c                                     ; $605e: $0e $1c
    nop                                           ; $6060: $00
    rst $38                                       ; $6061: $ff
    rrca                                          ; $6062: $0f
    dec b                                         ; $6063: $05
    ld a, [$ec0a]                                 ; $6064: $fa $0a $ec
    nop                                           ; $6067: $00
    push hl                                       ; $6068: $e5
    ld sp, hl                                     ; $6069: $f9
    push hl                                       ; $606a: $e5
    ld bc, $04e9                                  ; $606b: $01 $e9 $04
    push af                                       ; $606e: $f5
    rst $30                                       ; $606f: $f7
    push af                                       ; $6070: $f5
    ei                                            ; $6071: $fb
    rst $08                                       ; $6072: $cf
    rlca                                          ; $6073: $07
    nop                                           ; $6074: $00
    add hl, de                                    ; $6075: $19
    rlca                                          ; $6076: $07
    ld h, $1f                                     ; $6077: $26 $1f
    ld d, h                                       ; $6079: $54
    ccf                                           ; $607a: $3f
    ld e, e                                       ; $607b: $5b
    inc a                                         ; $607c: $3c
    and h                                         ; $607d: $a4
    ld a, b                                       ; $607e: $78
    or h                                          ; $607f: $b4
    ld a, b                                       ; $6080: $78
    and h                                         ; $6081: $a4
    ld a, b                                       ; $6082: $78
    ld e, d                                       ; $6083: $5a
    inc a                                         ; $6084: $3c
    ld c, l                                       ; $6085: $4d
    ld a, $36                                     ; $6086: $3e $36
    rrca                                          ; $6088: $0f
    dec bc                                        ; $6089: $0b
    rlca                                          ; $608a: $07
    dec b                                         ; $608b: $05
    inc bc                                        ; $608c: $03
    dec b                                         ; $608d: $05
    inc bc                                        ; $608e: $03
    dec bc                                        ; $608f: $0b
    rlca                                          ; $6090: $07
    ld [hl], $0f                                  ; $6091: $36 $0f
    ret nz                                        ; $6093: $c0

    nop                                           ; $6094: $00
    cp b                                          ; $6095: $b8
    ret nz                                        ; $6096: $c0

jr_0ee_6097:
    sub $f8                                       ; $6097: $d6 $f8
    dec sp                                        ; $6099: $3b
    cp $de                                        ; $609a: $fe $de
    ccf                                           ; $609c: $3f
    dec hl                                        ; $609d: $2b
    rra                                           ; $609e: $1f
    ld l, $1f                                     ; $609f: $2e $1f
    rla                                           ; $60a1: $17
    rrca                                          ; $60a2: $0f
    dec d                                         ; $60a3: $15
    rrca                                          ; $60a4: $0f
    dec bc                                        ; $60a5: $0b
    rlca                                          ; $60a6: $07
    adc e                                         ; $60a7: $8b
    rlca                                          ; $60a8: $07
    ld b, l                                       ; $60a9: $45
    add e                                         ; $60aa: $83
    and d                                         ; $60ab: $a2
    pop bc                                        ; $60ac: $c1
    ld [hl+], a                                   ; $60ad: $22
    pop bc                                        ; $60ae: $c1
    and l                                         ; $60af: $a5
    jp $c0a7                                      ; $60b0: $c3 $a7 $c0


    inc b                                         ; $60b3: $04
    nop                                           ; $60b4: $00
    ld [bc], a                                    ; $60b5: $02
    inc b                                         ; $60b6: $04
    ld [bc], a                                    ; $60b7: $02
    inc b                                         ; $60b8: $04
    dec b                                         ; $60b9: $05
    ld b, $07                                     ; $60ba: $06 $07
    ld b, $05                                     ; $60bc: $06 $05
    ld b, $03                                     ; $60be: $06 $03
    ld b, $05                                     ; $60c0: $06 $05
    ld [bc], a                                    ; $60c2: $02
    ld b, $82                                     ; $60c3: $06 $82
    inc b                                         ; $60c5: $04
    ld b, $02                                     ; $60c6: $06 $02
    inc b                                         ; $60c8: $04
    dec bc                                        ; $60c9: $0b
    nop                                           ; $60ca: $00
    sbc b                                         ; $60cb: $98
    scf                                           ; $60cc: $37
    rrca                                          ; $60cd: $0f
    ld c, b                                       ; $60ce: $48

jr_0ee_60cf:
    ccf                                           ; $60cf: $3f
    and e                                         ; $60d0: $a3
    ld a, h                                       ; $60d1: $7c
    or h                                          ; $60d2: $b4
    ld a, b                                       ; $60d3: $78
    sbc d                                         ; $60d4: $9a
    ld a, h                                       ; $60d5: $7c
    ld c, e                                       ; $60d6: $4b
    ld a, $4e                                     ; $60d7: $3e $4e
    ccf                                           ; $60d9: $3f
    dec h                                         ; $60da: $25
    rra                                           ; $60db: $1f
    ld de, $080f                                  ; $60dc: $11 $0f $08
    rlca                                          ; $60df: $07
    ld b, $01                                     ; $60e0: $06 $01
    nop                                           ; $60e2: $00
    ld bc, $0008                                  ; $60e3: $01 $08 $00
    add c                                         ; $60e6: $81
    ld bc, $0e02                                  ; $60e7: $01 $02 $0e
    add hl, bc                                    ; $60ea: $09
    nop                                           ; $60eb: $00
    adc h                                         ; $60ec: $8c
    ld [$0400], sp                                ; $60ed: $08 $00 $04
    ld [$0c02], sp                                ; $60f0: $08 $02 $0c
    add hl, bc                                    ; $60f3: $09
    ld c, $01                                     ; $60f4: $0e $01
    ld c, $00                                     ; $60f6: $0e $00
    ld c, $08                                     ; $60f8: $0e $08
    nop                                           ; $60fa: $00
    rst $38                                       ; $60fb: $ff
    dec c                                         ; $60fc: $0d
    inc b                                         ; $60fd: $04
    ld a, [$ec0a]                                 ; $60fe: $fa $0a $ec
    nop                                           ; $6101: $00
    rst $20                                       ; $6102: $e7
    ei                                            ; $6103: $fb
    rst $20                                       ; $6104: $e7
    inc bc                                        ; $6105: $03
    db $ed                                        ; $6106: $ed
    inc b                                         ; $6107: $04
    rst $30                                       ; $6108: $f7
    db $fc                                        ; $6109: $fc
    sbc c                                         ; $610a: $99
    ld bc, $0600                                  ; $610b: $01 $00 $06
    ld bc, $070d                                  ; $610e: $01 $0d $07
    ld a, [de]                                    ; $6111: $1a
    rrca                                          ; $6112: $0f
    dec l                                         ; $6113: $2d
    ld e, $53                                     ; $6114: $1e $53
    inc a                                         ; $6116: $3c
    ld d, l                                       ; $6117: $55
    jr c, jr_0ee_60cf                             ; $6118: $38 $b5

    ld a, b                                       ; $611a: $78
    or a                                          ; $611b: $b7
    ld a, b                                       ; $611c: $78
    sbc d                                         ; $611d: $9a
    ld a, a                                       ; $611e: $7f
    ld b, a                                       ; $611f: $47
    ccf                                           ; $6120: $3f
    jr c, @+$09                                   ; $6121: $38 $07

    ld b, $02                                     ; $6123: $06 $02
    ld bc, $0005                                  ; $6125: $01 $05 $00
    xor e                                         ; $6128: $ab
    ldh [rP1], a                                  ; $6129: $e0 $00
    ret nc                                        ; $612b: $d0

    ldh [$ec], a                                  ; $612c: $e0 $ec
    ldh a, [$f2]                                  ; $612e: $f0 $f2
    inc a                                         ; $6130: $3c
    dec [hl]                                      ; $6131: $35
    cp $77                                        ; $6132: $fe $77
    cp $5c                                        ; $6134: $fe $5c
    rst $38                                       ; $6136: $ff
    ld a, e                                       ; $6137: $7b
    rst $38                                       ; $6138: $ff
    cp [hl]                                       ; $6139: $be
    ld a, a                                       ; $613a: $7f
    xor h                                         ; $613b: $ac
    ld a, a                                       ; $613c: $7f
    ld e, a                                       ; $613d: $5f
    cp a                                          ; $613e: $bf
    ld [$2ddf], a                                 ; $613f: $ea $df $2d
    sbc $b3                                       ; $6142: $de $b3
    ld l, [hl]                                    ; $6144: $6e
    ld d, d                                       ; $6145: $52

jr_0ee_6146:
    dec l                                         ; $6146: $2d
    ld e, [hl]                                    ; $6147: $5e
    inc sp                                        ; $6148: $33
    ld bc, $0100                                  ; $6149: $01 $00 $01
    nop                                           ; $614c: $00
    ld bc, $0100                                  ; $614d: $01 $00 $01
    nop                                           ; $6150: $00
    ld bc, $0100                                  ; $6151: $01 $00 $01
    dec b                                         ; $6154: $05
    nop                                           ; $6155: $00
    adc c                                         ; $6156: $89
    ld bc, $0100                                  ; $6157: $01 $00 $01
    nop                                           ; $615a: $00
    ld h, d                                       ; $615b: $62
    db $fc                                        ; $615c: $fc
    adc h                                         ; $615d: $8c
    ldh a, [$30]                                  ; $615e: $f0 $30
    ld [bc], a                                    ; $6160: $02
    ret nz                                        ; $6161: $c0

    dec b                                         ; $6162: $05
    nop                                           ; $6163: $00
    sub h                                         ; $6164: $94
    inc bc                                        ; $6165: $03
    nop                                           ; $6166: $00
    dec c                                         ; $6167: $0d
    inc bc                                        ; $6168: $03
    dec sp                                        ; $6169: $3b
    rrca                                          ; $616a: $0f
    ld c, h                                       ; $616b: $4c
    ccf                                           ; $616c: $3f
    or e                                          ; $616d: $b3
    ld a, h                                       ; $616e: $7c
    and h                                         ; $616f: $a4
    ld a, b                                       ; $6170: $78
    or h                                          ; $6171: $b4
    ld a, b                                       ; $6172: $78
    ld d, h                                       ; $6173: $54
    jr c, @+$44                                   ; $6174: $38 $42

    inc a                                         ; $6176: $3c
    nop                                           ; $6177: $00
    inc a                                         ; $6178: $3c
    inc c                                         ; $6179: $0c
    nop                                           ; $617a: $00
    rst $38                                       ; $617b: $ff
    rrca                                          ; $617c: $0f
    dec b                                         ; $617d: $05
    ld a, [$ec0a]                                 ; $617e: $fa $0a $ec
    nop                                           ; $6181: $00
    db $e4                                        ; $6182: $e4
    cp $e3                                        ; $6183: $fe $e3
    ld b, $e4                                     ; $6185: $06 $e4
    ld a, [bc]                                    ; $6187: $0a
    di                                            ; $6188: $f3
    cp $f3                                        ; $6189: $fe $f3
    inc bc                                        ; $618b: $03
    xor a                                         ; $618c: $af
    ld bc, $0600                                  ; $618d: $01 $00 $06
    ld bc, $070f                                  ; $6190: $01 $0f $07
    ld d, $0f                                     ; $6193: $16 $0f
    add hl, sp                                    ; $6195: $39
    ld e, $32                                     ; $6196: $1e $32
    inc e                                         ; $6198: $1c
    ld d, h                                       ; $6199: $54
    jr c, jr_0ee_61e4                             ; $619a: $38 $48

    jr nc, jr_0ee_6146                            ; $619c: $30 $a8

    ld [hl], b                                    ; $619e: $70
    cp b                                          ; $619f: $b8
    ld [hl], b                                    ; $61a0: $70
    or h                                          ; $61a1: $b4
    ld a, b                                       ; $61a2: $78
    ld e, e                                       ; $61a3: $5b
    inc a                                         ; $61a4: $3c
    ld c, h                                       ; $61a5: $4c
    ccf                                           ; $61a6: $3f
    ld sp, $0c0f                                  ; $61a7: $31 $0f $0c
    inc bc                                        ; $61aa: $03
    ld [bc], a                                    ; $61ab: $02
    ld bc, $007c                                  ; $61ac: $01 $7c $00
    xor e                                         ; $61af: $ab
    ld a, h                                       ; $61b0: $7c
    push af                                       ; $61b1: $f5
    rst $38                                       ; $61b2: $ff
    rrca                                          ; $61b3: $0f
    rst $38                                       ; $61b4: $ff
    db $e3                                        ; $61b5: $e3
    rra                                           ; $61b6: $1f
    jr jr_0ee_61c0                                ; $61b7: $18 $07

    inc b                                         ; $61b9: $04
    inc bc                                        ; $61ba: $03
    ld [bc], a                                    ; $61bb: $02
    ld [bc], a                                    ; $61bc: $02
    ld bc, $0082                                  ; $61bd: $01 $82 $00

jr_0ee_61c0:
    ld bc, $0007                                  ; $61c0: $01 $07 $00
    sub a                                         ; $61c3: $97
    add b                                         ; $61c4: $80
    nop                                           ; $61c5: $00
    ld h, b                                       ; $61c6: $60
    add b                                         ; $61c7: $80
    sub b                                         ; $61c8: $90
    ldh [$08], a                                  ; $61c9: $e0 $08
    nop                                           ; $61cb: $00
    inc b                                         ; $61cc: $04
    ld [$0c06], sp                                ; $61cd: $08 $06 $0c
    ld a, [bc]                                    ; $61d0: $0a
    inc c                                         ; $61d1: $0c
    dec c                                         ; $61d2: $0d
    ld c, $0d                                     ; $61d3: $0e $0d
    ld c, $06                                     ; $61d5: $0e $06
    inc c                                         ; $61d7: $0c
    ld b, $0c                                     ; $61d8: $06 $0c
    ld [bc], a                                    ; $61da: $02
    ld [bc], a                                    ; $61db: $02

jr_0ee_61dc:
    inc c                                         ; $61dc: $0c
    dec bc                                        ; $61dd: $0b
    nop                                           ; $61de: $00
    add c                                         ; $61df: $81
    add b                                         ; $61e0: $80
    inc bc                                        ; $61e1: $03
    nop                                           ; $61e2: $00
    sbc d                                         ; $61e3: $9a

jr_0ee_61e4:
    ld bc, $0100                                  ; $61e4: $01 $00 $01
    nop                                           ; $61e7: $00
    ld bc, $0600                                  ; $61e8: $01 $00 $06
    ld bc, $071d                                  ; $61eb: $01 $1d $07
    ld [hl], $1f                                  ; $61ee: $36 $1f
    ld e, c                                       ; $61f0: $59
    ld a, $72                                     ; $61f1: $3e $72
    inc a                                         ; $61f3: $3c
    or h                                          ; $61f4: $b4
    ld a, b                                       ; $61f5: $78
    add sp, $70                                   ; $61f6: $e8 $70
    xor b                                         ; $61f8: $a8
    ld [hl], b                                    ; $61f9: $70
    adc b                                         ; $61fa: $88
    ld [hl], b                                    ; $61fb: $70
    nop                                           ; $61fc: $00
    ld [hl], b                                    ; $61fd: $70
    inc b                                         ; $61fe: $04
    nop                                           ; $61ff: $00
    adc l                                         ; $6200: $8d
    inc c                                         ; $6201: $0c
    ld e, $0d                                     ; $6202: $1e $0d
    ld e, $0d                                     ; $6204: $1e $0d
    ld e, $0a                                     ; $6206: $1e $0a
    inc e                                         ; $6208: $1c
    ld a, [de]                                    ; $6209: $1a
    inc e                                         ; $620a: $1c
    inc b                                         ; $620b: $04
    jr jr_0ee_6216                                ; $620c: $18 $08

    ld [bc], a                                    ; $620e: $02
    db $10                                        ; $620f: $10
    ld de, $ff00                                  ; $6210: $11 $00 $ff
    dec bc                                        ; $6213: $0b
    inc bc                                        ; $6214: $03
    ld sp, hl                                     ; $6215: $f9

jr_0ee_6216:
    ld [$f8e8], sp                                ; $6216: $08 $e8 $f8
    jp hl                                         ; $6219: $e9


    or $e9                                        ; $621a: $f6 $e9
    cp $e9                                        ; $621c: $fe $e9
    nop                                           ; $621e: $00
    adc l                                         ; $621f: $8d
    ld [hl], b                                    ; $6220: $70
    nop                                           ; $6221: $00
    call z, Call_0ee_7230                         ; $6222: $cc $30 $72
    inc c                                         ; $6225: $0c
    dec e                                         ; $6226: $1d
    ld [bc], a                                    ; $6227: $02
    rlca                                          ; $6228: $07
    nop                                           ; $6229: $00
    inc bc                                        ; $622a: $03
    nop                                           ; $622b: $00
    ld bc, $0302                                  ; $622c: $01 $02 $03
    adc d                                         ; $622f: $8a
    rrca                                          ; $6230: $0f
    ld c, $1f                                     ; $6231: $0e $1f

Call_0ee_6233:
    inc e                                         ; $6233: $1c
    ld a, $30                                     ; $6234: $3e $30
    ld a, l                                       ; $6236: $7d
    ld bc, $0133                                  ; $6237: $01 $33 $01
    ld [bc], a                                    ; $623a: $02
    inc bc                                        ; $623b: $03
    add l                                         ; $623c: $85
    rlca                                          ; $623d: $07
    inc bc                                        ; $623e: $03
    rlca                                          ; $623f: $07
    nop                                           ; $6240: $00
    inc bc                                        ; $6241: $03
    ld [$8100], sp                                ; $6242: $08 $00 $81
    ret nz                                        ; $6245: $c0

    ld [bc], a                                    ; $6246: $02
    jr nc, jr_0ee_61dc                            ; $6247: $30 $93

    call z, $f08f                                 ; $6249: $cc $8f $f0
    ld d, a                                       ; $624c: $57
    cp b                                          ; $624d: $b8
    inc [hl]                                      ; $624e: $34
    ld a, e                                       ; $624f: $7b
    ld l, e                                       ; $6250: $6b
    rst $30                                       ; $6251: $f7
    db $eb                                        ; $6252: $eb
    rst $30                                       ; $6253: $f7
    call z, $cbe3                                 ; $6254: $cc $e3 $cb
    ldh [$b2], a                                  ; $6257: $e0 $b2
    ret nz                                        ; $6259: $c0

    inc c                                         ; $625a: $0c
    add b                                         ; $625b: $80
    ld c, $00                                     ; $625c: $0e $00
    add l                                         ; $625e: $85
    ld [bc], a                                    ; $625f: $02
    nop                                           ; $6260: $00
    ld bc, $0302                                  ; $6261: $01 $02 $03
    ld [bc], a                                    ; $6264: $02
    nop                                           ; $6265: $00
    adc b                                         ; $6266: $88
    ld [bc], a                                    ; $6267: $02
    ld bc, $0302                                  ; $6268: $01 $02 $03
    nop                                           ; $626b: $00
    ld bc, $0200                                  ; $626c: $01 $00 $02
    dec b                                         ; $626f: $05
    nop                                           ; $6270: $00
    rst $38                                       ; $6271: $ff
    dec bc                                        ; $6272: $0b
    inc bc                                        ; $6273: $03
    ld sp, hl                                     ; $6274: $f9
    ld [$f8e8], sp                                ; $6275: $08 $e8 $f8
    add sp, -$0a                                  ; $6278: $e8 $f6
    add sp, -$02                                  ; $627a: $e8 $fe
    add sp, $00                                   ; $627c: $e8 $00
    add a                                         ; $627e: $87
    ld [hl], b                                    ; $627f: $70
    ld [bc], a                                    ; $6280: $02
    jp z, Jump_0ee_7b37                           ; $6281: $ca $37 $7b

    rlca                                          ; $6284: $07
    dec bc                                        ; $6285: $0b
    ld [bc], a                                    ; $6286: $02
    rlca                                          ; $6287: $07
    add h                                         ; $6288: $84
    inc bc                                        ; $6289: $03
    ld bc, $0203                                  ; $628a: $01 $03 $02
    ld [bc], a                                    ; $628d: $02
    ld bc, $0012                                  ; $628e: $01 $12 $00
    ld [bc], a                                    ; $6291: $02
    db $10                                        ; $6292: $10
    adc [hl]                                      ; $6293: $8e
    jr c, jr_0ee_62ae                             ; $6294: $38 $18

    cp h                                          ; $6296: $bc
    jr @-$41                                      ; $6297: $18 $bd

    cp c                                          ; $6299: $b9
    rst $38                                       ; $629a: $ff
    cp e                                          ; $629b: $bb
    rst $38                                       ; $629c: $ff
    rst $18                                       ; $629d: $df
    ld hl, sp+$57                                 ; $629e: $f8 $57
    ld hl, sp-$3c                                 ; $62a0: $f8 $c4
    ld [bc], a                                    ; $62a2: $02
    dec sp                                        ; $62a3: $3b
    adc d                                         ; $62a4: $8a
    rlca                                          ; $62a5: $07
    dec bc                                        ; $62a6: $0b
    rlca                                          ; $62a7: $07
    inc c                                         ; $62a8: $0c
    inc bc                                        ; $62a9: $03
    dec bc                                        ; $62aa: $0b
    nop                                           ; $62ab: $00
    ld [hl-], a                                   ; $62ac: $32
    nop                                           ; $62ad: $00

jr_0ee_62ae:
    inc c                                         ; $62ae: $0c
    ld [$0200], sp                                ; $62af: $08 $00 $02
    ld [bc], a                                    ; $62b2: $02
    add h                                         ; $62b3: $84
    inc bc                                        ; $62b4: $03
    nop                                           ; $62b5: $00
    ld [bc], a                                    ; $62b6: $02
    nop                                           ; $62b7: $00
    ld [bc], a                                    ; $62b8: $02
    ld [bc], a                                    ; $62b9: $02
    add h                                         ; $62ba: $84
    nop                                           ; $62bb: $00
    ld bc, $0302                                  ; $62bc: $01 $02 $03
    ld [bc], a                                    ; $62bf: $02
    nop                                           ; $62c0: $00
    adc b                                         ; $62c1: $88
    ld [bc], a                                    ; $62c2: $02
    ld bc, $0302                                  ; $62c3: $01 $02 $03
    nop                                           ; $62c6: $00
    ld bc, $0200                                  ; $62c7: $01 $00 $02
    dec b                                         ; $62ca: $05
    nop                                           ; $62cb: $00
    rst $38                                       ; $62cc: $ff
    dec bc                                        ; $62cd: $0b
    inc bc                                        ; $62ce: $03
    ld sp, hl                                     ; $62cf: $f9
    ld [$f8e8], sp                                ; $62d0: $08 $e8 $f8
    add sp, -$0b                                  ; $62d3: $e8 $f5
    db $eb                                        ; $62d5: $eb
    db $fd                                        ; $62d6: $fd
    rst $28                                       ; $62d7: $ef
    dec b                                         ; $62d8: $05
    adc e                                         ; $62d9: $8b
    jr nc, jr_0ee_62dc                            ; $62da: $30 $00

jr_0ee_62dc:
    inc l                                         ; $62dc: $2c

jr_0ee_62dd:
    db $10                                        ; $62dd: $10
    ld [de], a                                    ; $62de: $12
    inc c                                         ; $62df: $0c
    dec c                                         ; $62e0: $0d
    ld [bc], a                                    ; $62e1: $02
    inc bc                                        ; $62e2: $03
    nop                                           ; $62e3: $00
    ld bc, $0006                                  ; $62e4: $01 $06 $00
    ld [bc], a                                    ; $62e7: $02
    inc bc                                        ; $62e8: $03
    add a                                         ; $62e9: $87
    rlca                                          ; $62ea: $07
    ld b, $0f                                     ; $62eb: $06 $0f
    inc c                                         ; $62ed: $0c
    ld e, $00                                     ; $62ee: $1e $00
    inc c                                         ; $62f0: $0c
    inc bc                                        ; $62f1: $03
    nop                                           ; $62f2: $00
    sbc a                                         ; $62f3: $9f
    ld bc, $0100                                  ; $62f4: $01 $00 $01
    add b                                         ; $62f7: $80
    nop                                           ; $62f8: $00
    ld h, b                                       ; $62f9: $60
    add b                                         ; $62fa: $80
    ldh a, [$0c]                                  ; $62fb: $f0 $0c
    call z, Call_0ee_6233                         ; $62fd: $cc $33 $62
    db $fd                                        ; $6300: $fd
    push de                                       ; $6301: $d5
    xor $8e                                       ; $6302: $ee $8e
    db $dd                                        ; $6304: $dd
    dec de                                        ; $6305: $1b
    cp l                                          ; $6306: $bd
    dec [hl]                                      ; $6307: $35
    ld a, e                                       ; $6308: $7b
    halt                                          ; $6309: $76
    ld sp, hl                                     ; $630a: $f9
    ld h, l                                       ; $630b: $65
    ldh a, [$d9]                                  ; $630c: $f0 $d9
    ldh [$c6], a                                  ; $630e: $e0 $c6
    ldh [rP1], a                                  ; $6310: $e0 $00
    ret nz                                        ; $6312: $c0

    inc b                                         ; $6313: $04
    nop                                           ; $6314: $00
    add l                                         ; $6315: $85
    ret nz                                        ; $6316: $c0

    nop                                           ; $6317: $00
    and b                                         ; $6318: $a0
    ld b, b                                       ; $6319: $40
    ld h, b                                       ; $631a: $60
    ld [bc], a                                    ; $631b: $02
    add b                                         ; $631c: $80
    adc b                                         ; $631d: $88
    ret nz                                        ; $631e: $c0

    and b                                         ; $631f: $a0
    ret nz                                        ; $6320: $c0

    ld h, b                                       ; $6321: $60
    add b                                         ; $6322: $80
    and b                                         ; $6323: $a0
    nop                                           ; $6324: $00
    ld b, b                                       ; $6325: $40
    ld de, $ff00                                  ; $6326: $11 $00 $ff
    dec bc                                        ; $6329: $0b
    inc bc                                        ; $632a: $03
    ld sp, hl                                     ; $632b: $f9
    ld [$f8e8], sp                                ; $632c: $08 $e8 $f8
    jp hl                                         ; $632f: $e9


    rst $30                                       ; $6330: $f7
    jp hl                                         ; $6331: $e9


    rst $38                                       ; $6332: $ff
    jp hl                                         ; $6333: $e9


    nop                                           ; $6334: $00
    adc c                                         ; $6335: $89
    ld b, b                                       ; $6336: $40
    nop                                           ; $6337: $00
    ldh [rDIV], a                                 ; $6338: $e0 $04
    ld d, h                                       ; $633a: $54
    ld l, $36                                     ; $633b: $2e $36
    rrca                                          ; $633d: $0f
    ld d, $02                                     ; $633e: $16 $02
    rrca                                          ; $6340: $0f
    add [hl]                                      ; $6341: $86
    rlca                                          ; $6342: $07
    inc bc                                        ; $6343: $03
    rlca                                          ; $6344: $07
    dec b                                         ; $6345: $05
    inc bc                                        ; $6346: $03
    ld [bc], a                                    ; $6347: $02
    ld [bc], a                                    ; $6348: $02
    ld bc, $0010                                  ; $6349: $01 $10 $00
    ld [bc], a                                    ; $634c: $02
    jr nz, jr_0ee_62dd                            ; $634d: $20 $8e

    ld [hl], b                                    ; $634f: $70
    jr nc, @+$7b                                  ; $6350: $30 $79

    or c                                          ; $6352: $b1
    ld a, e                                       ; $6353: $7b
    ld [hl], d                                    ; $6354: $72
    rst $38                                       ; $6355: $ff
    halt                                          ; $6356: $76
    rst $38                                       ; $6357: $ff
    cp e                                          ; $6358: $bb
    db $f4                                        ; $6359: $f4
    and [hl]                                      ; $635a: $a6
    ld sp, hl                                     ; $635b: $f9
    adc c                                         ; $635c: $89
    ld [bc], a                                    ; $635d: $02
    halt                                          ; $635e: $76
    adc d                                         ; $635f: $8a
    rrca                                          ; $6360: $0f
    ld d, $0f                                     ; $6361: $16 $0f
    add hl, de                                    ; $6363: $19
    ld b, $16                                     ; $6364: $06 $16
    nop                                           ; $6366: $00
    ld h, l                                       ; $6367: $65
    nop                                           ; $6368: $00
    jr jr_0ee_6375                                ; $6369: $18 $0a

    nop                                           ; $636b: $00
    add c                                         ; $636c: $81
    ld bc, $0006                                  ; $636d: $01 $06 $00
    add e                                         ; $6370: $83
    ld bc, $0100                                  ; $6371: $01 $00 $01
    inc bc                                        ; $6374: $03

jr_0ee_6375:
    nop                                           ; $6375: $00
    add l                                         ; $6376: $85
    ld bc, $0100                                  ; $6377: $01 $00 $01
    nop                                           ; $637a: $00
    ld bc, $0005                                  ; $637b: $01 $05 $00
    rst $38                                       ; $637e: $ff
    dec bc                                        ; $637f: $0b
    inc bc                                        ; $6380: $03
    ld sp, hl                                     ; $6381: $f9
    ld [$f8e8], sp                                ; $6382: $08 $e8 $f8
    add sp, -$0c                                  ; $6385: $e8 $f4
    db $ec                                        ; $6387: $ec
    db $fc                                        ; $6388: $fc
    rst $28                                       ; $6389: $ef
    inc b                                         ; $638a: $04
    adc c                                         ; $638b: $89
    stop                                          ; $638c: $10 $00
    jr z, jr_0ee_63a0                             ; $638e: $28 $10

    ld [de], a                                    ; $6390: $12
    inc c                                         ; $6391: $0c
    dec c                                         ; $6392: $0d
    ld [bc], a                                    ; $6393: $02
    ld b, $02                                     ; $6394: $06 $02
    ld bc, $0006                                  ; $6396: $01 $06 $00
    ld [bc], a                                    ; $6399: $02
    inc bc                                        ; $639a: $03
    ld [bc], a                                    ; $639b: $02
    rlca                                          ; $639c: $07
    add l                                         ; $639d: $85
    rrca                                          ; $639e: $0f
    inc c                                         ; $639f: $0c

jr_0ee_63a0:
    ld e, $00                                     ; $63a0: $1e $00
    inc c                                         ; $63a2: $0c
    inc bc                                        ; $63a3: $03
    nop                                           ; $63a4: $00
    adc b                                         ; $63a5: $88
    ld bc, $0100                                  ; $63a6: $01 $00 $01
    ld b, b                                       ; $63a9: $40
    add b                                         ; $63aa: $80
    ldh [rNR23], a                                ; $63ab: $e0 $18
    call c, Call_000_2302                         ; $63ad: $dc $02 $23
    sub e                                         ; $63b0: $93
    db $fc                                        ; $63b1: $fc
    call nc, $8def                                ; $63b2: $d4 $ef $8d
    sbc $1e                                       ; $63b5: $de $1e
    cp l                                          ; $63b7: $bd
    ld a, [hl-]                                   ; $63b8: $3a
    ld a, l                                       ; $63b9: $7d
    ld [hl], l                                    ; $63ba: $75
    ld hl, sp+$75                                 ; $63bb: $f8 $75
    ld hl, sp-$1b                                 ; $63bd: $f8 $e5
    ldh a, [$ca]                                  ; $63bf: $f0 $ca
    ldh [rP1], a                                  ; $63c1: $e0 $00
    ret nz                                        ; $63c3: $c0

    ld b, $00                                     ; $63c4: $06 $00
    add l                                         ; $63c6: $85
    ld h, b                                       ; $63c7: $60
    add b                                         ; $63c8: $80
    ret nc                                        ; $63c9: $d0

    jr nz, @+$32                                  ; $63ca: $20 $30

    ld [bc], a                                    ; $63cc: $02
    ret nz                                        ; $63cd: $c0

    adc b                                         ; $63ce: $88
    ldh [$d0], a                                  ; $63cf: $e0 $d0
    ldh [$30], a                                  ; $63d1: $e0 $30
    ret nz                                        ; $63d3: $c0

    ret nc                                        ; $63d4: $d0

    nop                                           ; $63d5: $00
    jr nz, jr_0ee_63e9                            ; $63d6: $20 $11

    nop                                           ; $63d8: $00
    rst $38                                       ; $63d9: $ff
    add hl, bc                                    ; $63da: $09
    ld [bc], a                                    ; $63db: $02
    ld sp, hl                                     ; $63dc: $f9
    ld [$f8e8], sp                                ; $63dd: $08 $e8 $f8
    and $f8                                       ; $63e0: $e6 $f8
    jp hl                                         ; $63e2: $e9


    nop                                           ; $63e3: $00
    sub a                                         ; $63e4: $97
    ld b, b                                       ; $63e5: $40
    nop                                           ; $63e6: $00
    and b                                         ; $63e7: $a0
    ld b, b                                       ; $63e8: $40

jr_0ee_63e9:
    and b                                         ; $63e9: $a0
    ld b, b                                       ; $63ea: $40
    ld d, b                                       ; $63eb: $50
    jr nz, jr_0ee_643e                            ; $63ec: $20 $50

    add hl, sp                                    ; $63ee: $39
    ld a, b                                       ; $63ef: $78
    dec e                                         ; $63f0: $1d
    jr c, jr_0ee_6410                             ; $63f1: $38 $1d

    dec a                                         ; $63f3: $3d
    rra                                           ; $63f4: $1f
    dec c                                         ; $63f5: $0d
    rra                                           ; $63f6: $1f
    ld d, $0f                                     ; $63f7: $16 $0f
    ld a, [bc]                                    ; $63f9: $0a
    rlca                                          ; $63fa: $07
    ld b, $02                                     ; $63fb: $06 $02
    ld bc, $0008                                  ; $63fd: $01 $08 $00
    ld [bc], a                                    ; $6400: $02
    add b                                         ; $6401: $80
    ld [bc], a                                    ; $6402: $02
    ret nz                                        ; $6403: $c0

    sbc b                                         ; $6404: $98
    db $e4                                        ; $6405: $e4
    call nz, $c8ee                                ; $6406: $c4 $ee $c8
    db $fc                                        ; $6409: $fc
    ret c                                         ; $640a: $d8

    db $fc                                        ; $640b: $fc
    xor $d0                                       ; $640c: $ee $d0
    sbc l                                         ; $640e: $9d
    ld [c], a                                     ; $640f: $e2

jr_0ee_6410:
    inc sp                                        ; $6410: $33
    call z, Call_000_1eec                         ; $6411: $cc $ec $1e
    ld l, l                                       ; $6414: $6d
    ld e, $33                                     ; $6415: $1e $33
    inc c                                         ; $6417: $0c
    ld c, a                                       ; $6418: $4f
    nop                                           ; $6419: $00
    ld c, d                                       ; $641a: $4a
    nop                                           ; $641b: $00
    sub b                                         ; $641c: $90
    inc bc                                        ; $641d: $03
    nop                                           ; $641e: $00
    rst $38                                       ; $641f: $ff
    add hl, bc                                    ; $6420: $09
    ld [bc], a                                    ; $6421: $02
    ld sp, hl                                     ; $6422: $f9
    ld [$f8e8], sp                                ; $6423: $08 $e8 $f8
    xor $f7                                       ; $6426: $ee $f7
    xor $fb                                       ; $6428: $ee $fb
    sbc e                                         ; $642a: $9b
    jr nz, jr_0ee_642d                            ; $642b: $20 $00

jr_0ee_642d:
    ld d, b                                       ; $642d: $50
    jr nz, @+$72                                  ; $642e: $20 $70

    nop                                           ; $6430: $00
    jr z, jr_0ee_6443                             ; $6431: $28 $10

    inc a                                         ; $6433: $3c
    nop                                           ; $6434: $00
    ld d, $0d                                     ; $6435: $16 $0d
    dec bc                                        ; $6437: $0b
    ld a, l                                       ; $6438: $7d
    ld [hl], l                                    ; $6439: $75
    cp $0e                                        ; $643a: $fe $0e
    ld a, a                                       ; $643c: $7f
    ld [hl], c                                    ; $643d: $71

jr_0ee_643e:
    db $fc                                        ; $643e: $fc
    add hl, bc                                    ; $643f: $09
    ld [hl], b                                    ; $6440: $70
    rlca                                          ; $6441: $07
    nop                                           ; $6442: $00

jr_0ee_6443:
    ld [bc], a                                    ; $6443: $02
    nop                                           ; $6444: $00
    ld bc, $0012                                  ; $6445: $01 $12 $00
    inc bc                                        ; $6448: $03
    ld [$0e87], sp                                ; $6449: $08 $87 $0e
    nop                                           ; $644c: $00
    dec c                                         ; $644d: $0d
    ld [bc], a                                    ; $644e: $02

jr_0ee_644f:
    ld c, $0c                                     ; $644f: $0e $0c
    ld [bc], a                                    ; $6451: $02
    ld [bc], a                                    ; $6452: $02
    inc c                                         ; $6453: $0c
    rlca                                          ; $6454: $07
    nop                                           ; $6455: $00
    rst $38                                       ; $6456: $ff
    add hl, bc                                    ; $6457: $09
    ld [bc], a                                    ; $6458: $02
    ld sp, hl                                     ; $6459: $f9
    ld [$f8e8], sp                                ; $645a: $08 $e8 $f8
    ld a, [c]                                     ; $645d: $f2
    inc b                                         ; $645e: $04
    ld a, [c]                                     ; $645f: $f2
    dec bc                                        ; $6460: $0b
    ld b, $00                                     ; $6461: $06 $00
    add c                                         ; $6463: $81
    ld bc, $0302                                  ; $6464: $01 $02 $03
    add d                                         ; $6467: $82
    ld b, $01                                     ; $6468: $06 $01
    ld [bc], a                                    ; $646a: $02
    ld [bc], a                                    ; $646b: $02
    adc h                                         ; $646c: $8c
    ld bc, $0106                                  ; $646d: $01 $06 $01
    rrca                                          ; $6470: $0f
    nop                                           ; $6471: $00
    ld a, [de]                                    ; $6472: $1a
    inc b                                         ; $6473: $04
    ld h, h                                       ; $6474: $64
    jr jr_0ee_644f                                ; $6475: $18 $d8

    jr nz, jr_0ee_64d9                            ; $6477: $20 $60

    rlca                                          ; $6479: $07
    nop                                           ; $647a: $00
    sub h                                         ; $647b: $94
    jr nz, jr_0ee_647e                            ; $647c: $20 $00

jr_0ee_647e:
    ld e, b                                       ; $647e: $58
    jr nz, jr_0ee_64f7                            ; $647f: $20 $76

    jr @+$77                                      ; $6481: $18 $75

    jr jr_0ee_64e3                                ; $6483: $18 $5e

    ld h, b                                       ; $6485: $60
    ld sp, $5c78                                  ; $6486: $31 $78 $5c
    ld a, [hl]                                    ; $6489: $7e
    ld l, [hl]                                    ; $648a: $6e
    ld a, a                                       ; $648b: $7f
    ld [hl], $7f                                  ; $648c: $36 $7f
    nop                                           ; $648e: $00
    ld [hl], $0c                                  ; $648f: $36 $0c
    nop                                           ; $6491: $00
    rst $38                                       ; $6492: $ff
    add hl, bc                                    ; $6493: $09
    ld [bc], a                                    ; $6494: $02
    ld sp, hl                                     ; $6495: $f9
    ld [$f8e8], sp                                ; $6496: $08 $e8 $f8
    ldh [rTAC], a                                 ; $6499: $e0 $07
    ldh [$0b], a                                  ; $649b: $e0 $0b
    sub e                                         ; $649d: $93
    nop                                           ; $649e: $00
    ld bc, $0331                                  ; $649f: $01 $31 $03
    ld c, e                                       ; $64a2: $4b
    scf                                           ; $64a3: $37
    ld a, e                                       ; $64a4: $7b
    scf                                           ; $64a5: $37
    cp h                                          ; $64a6: $bc
    ld b, a                                       ; $64a7: $47
    ld [hl], d                                    ; $64a8: $72
    dec c                                         ; $64a9: $0d
    dec de                                        ; $64aa: $1b
    cpl                                           ; $64ab: $2f
    inc c                                         ; $64ac: $0c
    rla                                           ; $64ad: $17
    rlca                                          ; $64ae: $07
    ld [$0e01], sp                                ; $64af: $08 $01 $0e
    nop                                           ; $64b2: $00
    ld [bc], a                                    ; $64b3: $02
    ld [$0c8a], sp                                ; $64b4: $08 $8a $0c
    ld [$000c], sp                                ; $64b7: $08 $0c $00
    ld a, [bc]                                    ; $64ba: $0a
    ld [bc], a                                    ; $64bb: $02
    rlca                                          ; $64bc: $07
    inc c                                         ; $64bd: $0c
    ld c, $00                                     ; $64be: $0e $00
    ld [bc], a                                    ; $64c0: $02
    ld [$008c], sp                                ; $64c1: $08 $8c $00
    inc c                                         ; $64c4: $0c
    nop                                           ; $64c5: $00
    inc b                                         ; $64c6: $04
    ld [$040a], sp                                ; $64c7: $08 $0a $04
    dec b                                         ; $64ca: $05
    ld [bc], a                                    ; $64cb: $02
    rlca                                          ; $64cc: $07
    nop                                           ; $64cd: $00
    ld [bc], a                                    ; $64ce: $02
    dec b                                         ; $64cf: $05
    nop                                           ; $64d0: $00
    rst $38                                       ; $64d1: $ff
    add hl, bc                                    ; $64d2: $09
    ld [bc], a                                    ; $64d3: $02
    ld sp, hl                                     ; $64d4: $f9
    ld [$f8e8], sp                                ; $64d5: $08 $e8 $f8
    rst $18                                       ; $64d8: $df

jr_0ee_64d9:
    ld sp, hl                                     ; $64d9: $f9
    rst $18                                       ; $64da: $df
    nop                                           ; $64db: $00
    add c                                         ; $64dc: $81
    nop                                           ; $64dd: $00
    ld [bc], a                                    ; $64de: $02
    inc b                                         ; $64df: $04
    sub b                                         ; $64e0: $90
    ld c, [hl]                                    ; $64e1: $4e
    ld b, h                                       ; $64e2: $44

jr_0ee_64e3:
    xor $64                                       ; $64e3: $ee $64
    cp $3d                                        ; $64e5: $fe $3d
    ld a, [hl]                                    ; $64e7: $7e
    scf                                           ; $64e8: $37
    ld c, $5d                                     ; $64e9: $0e $5d
    ld [hl-], a                                   ; $64eb: $32
    ld e, a                                       ; $64ec: $5f
    ld sp, $0a34                                  ; $64ed: $31 $34 $0a
    ld [$0015], sp                                ; $64f0: $08 $15 $00
    adc b                                         ; $64f3: $88
    ld a, b                                       ; $64f4: $78
    nop                                           ; $64f5: $00
    ld b, [hl]                                    ; $64f6: $46

jr_0ee_64f7:
    jr c, jr_0ee_6574                             ; $64f7: $38 $7b

    inc b                                         ; $64f9: $04
    ld b, $40                                     ; $64fa: $06 $40
    stop                                          ; $64fc: $10 $00
    rst $38                                       ; $64fe: $ff
    add hl, bc                                    ; $64ff: $09
    ld [bc], a                                    ; $6500: $02
    ld sp, hl                                     ; $6501: $f9
    ld [$f8e8], sp                                ; $6502: $08 $e8 $f8
    db $ec                                        ; $6505: $ec
    push af                                       ; $6506: $f5
    db $ec                                        ; $6507: $ec
    ld a, [$208f]                                 ; $6508: $fa $8f $20
    nop                                           ; $650b: $00
    ld [hl], b                                    ; $650c: $70
    nop                                           ; $650d: $00
    ld d, b                                       ; $650e: $50
    jr nz, jr_0ee_6539                            ; $650f: $20 $28

    db $10                                        ; $6511: $10
    inc d                                         ; $6512: $14
    ld [$011e], sp                                ; $6513: $08 $1e $01
    dec bc                                        ; $6516: $0b
    inc b                                         ; $6517: $04
    inc c                                         ; $6518: $0c
    ld [bc], a                                    ; $6519: $02
    rra                                           ; $651a: $1f
    adc l                                         ; $651b: $8d
    ld a, a                                       ; $651c: $7f
    ld [hl], e                                    ; $651d: $73
    rst $38                                       ; $651e: $ff
    ld h, d                                       ; $651f: $62
    rst $30                                       ; $6520: $f7
    ld b, $6f                                     ; $6521: $06 $6f
    inc c                                         ; $6523: $0c
    ld e, $0c                                     ; $6524: $1e $0c
    ld e, $00                                     ; $6526: $1e $00
    inc c                                         ; $6528: $0c
    inc c                                         ; $6529: $0c
    nop                                           ; $652a: $00
    ld [bc], a                                    ; $652b: $02
    db $10                                        ; $652c: $10
    adc a                                         ; $652d: $8f
    ld [$1618], sp                                ; $652e: $08 $18 $16
    ld [$120d], sp                                ; $6531: $08 $0d $12
    rra                                           ; $6534: $1f
    inc c                                         ; $6535: $0c
    inc de                                        ; $6536: $13
    inc c                                         ; $6537: $0c
    dec c                                         ; $6538: $0d

jr_0ee_6539:
    nop                                           ; $6539: $00
    ld a, [bc]                                    ; $653a: $0a
    nop                                           ; $653b: $00
    db $10                                        ; $653c: $10
    dec b                                         ; $653d: $05
    nop                                           ; $653e: $00
    rst $38                                       ; $653f: $ff
    add hl, bc                                    ; $6540: $09
    ld [bc], a                                    ; $6541: $02
    ld sp, hl                                     ; $6542: $f9
    ld [$f8e8], sp                                ; $6543: $08 $e8 $f8
    ldh a, [$fc]                                  ; $6546: $f0 $fc
    ldh a, [$03]                                  ; $6548: $f0 $03
    add a                                         ; $654a: $87
    ld b, b                                       ; $654b: $40
    db $10                                        ; $654c: $10
    sub b                                         ; $654d: $90
    ld a, c                                       ; $654e: $79

jr_0ee_654f:
    ld e, b                                       ; $654f: $58
    dec a                                         ; $6550: $3d
    jr jr_0ee_6555                                ; $6551: $18 $02

    dec a                                         ; $6553: $3d
    adc b                                         ; $6554: $88

jr_0ee_6555:
    rra                                           ; $6555: $1f
    dec c                                         ; $6556: $0d
    rra                                           ; $6557: $1f
    ld d, $0f                                     ; $6558: $16 $0f
    ld a, [bc]                                    ; $655a: $0a
    rlca                                          ; $655b: $07
    ld b, $02                                     ; $655c: $06 $02
    ld bc, $0007                                  ; $655e: $01 $07 $00
    add c                                         ; $6561: $81
    ld bc, $0006                                  ; $6562: $01 $06 $00
    ld [bc], a                                    ; $6565: $02
    ld b, b                                       ; $6566: $40
    ld [bc], a                                    ; $6567: $02
    ld h, b                                       ; $6568: $60
    sbc b                                         ; $6569: $98
    ld [hl], d                                    ; $656a: $72
    ld h, d                                       ; $656b: $62
    ld [hl], a                                    ; $656c: $77
    ld h, h                                       ; $656d: $64
    ld a, [hl]                                    ; $656e: $7e
    ld l, h                                       ; $656f: $6c
    ld a, [hl]                                    ; $6570: $7e
    ld l, [hl]                                    ; $6571: $6e
    ld [hl], b                                    ; $6572: $70
    ld e, l                                       ; $6573: $5d

jr_0ee_6574:
    ld h, d                                       ; $6574: $62
    inc de                                        ; $6575: $13
    ld l, h                                       ; $6576: $6c
    ld l, l                                       ; $6577: $6d
    ld e, $2d                                     ; $6578: $1e $2d
    ld e, $33                                     ; $657a: $1e $33
    inc c                                         ; $657c: $0c
    dec l                                         ; $657d: $2d
    nop                                           ; $657e: $00
    ld c, d                                       ; $657f: $4a
    nop                                           ; $6580: $00
    jr nc, jr_0ee_6586                            ; $6581: $30 $03

    nop                                           ; $6583: $00
    rst $38                                       ; $6584: $ff
    add hl, bc                                    ; $6585: $09

jr_0ee_6586:
    ld [bc], a                                    ; $6586: $02
    ld sp, hl                                     ; $6587: $f9
    ld [$f8e8], sp                                ; $6588: $08 $e8 $f8

jr_0ee_658b:
    db $f4                                        ; $658b: $f4
    rst $30                                       ; $658c: $f7
    db $f4                                        ; $658d: $f4
    db $fd                                        ; $658e: $fd
    adc e                                         ; $658f: $8b
    jr c, jr_0ee_6592                             ; $6590: $38 $00

jr_0ee_6592:
    ld h, h                                       ; $6592: $64
    jr jr_0ee_654f                                ; $6593: $18 $ba

    ld b, h                                       ; $6595: $44
    ld b, l                                       ; $6596: $45
    ld [bc], a                                    ; $6597: $02
    rlca                                          ; $6598: $07
    nop                                           ; $6599: $00
    ld bc, $1f02                                  ; $659a: $01 $02 $1f
    adc a                                         ; $659d: $8f
    ld a, [hl]                                    ; $659e: $7e
    ld a, h                                       ; $659f: $7c
    rst $38                                       ; $65a0: $ff
    ld sp, $037f                                  ; $65a1: $31 $7f $03
    scf                                           ; $65a4: $37
    ld b, $0f                                     ; $65a5: $06 $0f
    ld c, $1f                                     ; $65a7: $0e $1f
    rrca                                          ; $65a9: $0f
    inc e                                         ; $65aa: $1c
    nop                                           ; $65ab: $00
    inc c                                         ; $65ac: $0c
    ld a, [bc]                                    ; $65ad: $0a
    nop                                           ; $65ae: $00
    sub l                                         ; $65af: $95
    ld b, $00                                     ; $65b0: $06 $00
    dec hl                                        ; $65b2: $2b
    ld b, $1d                                     ; $65b3: $06 $1d
    ld [hl+], a                                   ; $65b5: $22
    ld [hl-], a                                   ; $65b6: $32
    inc c                                         ; $65b7: $0c
    dec a                                         ; $65b8: $3d
    ld l, $2d                                     ; $65b9: $2e $2d
    ld a, $12                                     ; $65bb: $3e $12
    inc l                                         ; $65bd: $2c
    dec a                                         ; $65be: $3d
    nop                                           ; $65bf: $00
    add hl, hl                                    ; $65c0: $29
    nop                                           ; $65c1: $00
    ld a, [bc]                                    ; $65c2: $0a
    nop                                           ; $65c3: $00
    jr nc, jr_0ee_65cb                            ; $65c4: $30 $05

    nop                                           ; $65c6: $00
    rst $38                                       ; $65c7: $ff
    add hl, bc                                    ; $65c8: $09
    ld [bc], a                                    ; $65c9: $02
    ld sp, hl                                     ; $65ca: $f9

jr_0ee_65cb:
    ld [$f8e8], sp                                ; $65cb: $08 $e8 $f8
    or $f1                                        ; $65ce: $f6 $f1
    or $f8                                        ; $65d0: $f6 $f8
    add c                                         ; $65d2: $81
    nop                                           ; $65d3: $00
    ld [bc], a                                    ; $65d4: $02
    db $10                                        ; $65d5: $10
    sub h                                         ; $65d6: $94
    add hl, sp                                    ; $65d7: $39
    jr @+$3f                                      ; $65d8: $18 $3d

    jr jr_0ee_661b                                ; $65da: $18 $3f

    dec a                                         ; $65dc: $3d
    rra                                           ; $65dd: $1f
    dec c                                         ; $65de: $0d
    rra                                           ; $65df: $1f
    ld d, $0f                                     ; $65e0: $16 $0f
    ld a, [bc]                                    ; $65e2: $0a
    rlca                                          ; $65e3: $07
    ld e, $01                                     ; $65e4: $1e $01
    daa                                           ; $65e6: $27
    jr jr_0ee_6641                                ; $65e7: $18 $58

    jr nz, jr_0ee_658b                            ; $65e9: $20 $a0

    ld [bc], a                                    ; $65eb: $02
    ld b, b                                       ; $65ec: $40
    ld [$0200], sp                                ; $65ed: $08 $00 $02
    ld b, b                                       ; $65f0: $40
    ld [bc], a                                    ; $65f1: $02
    ld h, b                                       ; $65f2: $60
    sbc e                                         ; $65f3: $9b
    ld [hl], d                                    ; $65f4: $72
    ld h, d                                       ; $65f5: $62
    ld [hl], a                                    ; $65f6: $77
    ld h, h                                       ; $65f7: $64
    ld a, [hl]                                    ; $65f8: $7e
    ld l, h                                       ; $65f9: $6c
    ld a, [hl]                                    ; $65fa: $7e
    ld l, [hl]                                    ; $65fb: $6e
    ld [hl], b                                    ; $65fc: $70
    ld e, l                                       ; $65fd: $5d
    ld h, d                                       ; $65fe: $62
    inc de                                        ; $65ff: $13
    ld l, h                                       ; $6600: $6c
    ld l, l                                       ; $6601: $6d
    ld e, $0d                                     ; $6602: $1e $0d
    ld e, $12                                     ; $6604: $1e $12
    inc c                                         ; $6606: $0c
    dec e                                         ; $6607: $1d
    nop                                           ; $6608: $00
    ld l, d                                       ; $6609: $6a
    nop                                           ; $660a: $00
    ld [$1000], sp                                ; $660b: $08 $00 $10
    nop                                           ; $660e: $00
    rst $38                                       ; $660f: $ff
    add hl, bc                                    ; $6610: $09
    ld [bc], a                                    ; $6611: $02
    ld sp, hl                                     ; $6612: $f9
    ld [$f8e8], sp                                ; $6613: $08 $e8 $f8
    ld a, [$faee]                                 ; $6616: $fa $ee $fa
    db $f4                                        ; $6619: $f4
    inc b                                         ; $661a: $04

jr_0ee_661b:
    nop                                           ; $661b: $00
    sub [hl]                                      ; $661c: $96
    inc bc                                        ; $661d: $03
    nop                                           ; $661e: $00
    inc b                                         ; $661f: $04
    inc bc                                        ; $6620: $03
    dec bc                                        ; $6621: $0b
    rlca                                          ; $6622: $07
    ld de, $140f                                  ; $6623: $11 $0f $14
    dec c                                         ; $6626: $0d
    inc e                                         ; $6627: $1c
    ld b, $2a                                     ; $6628: $06 $2a
    rla                                           ; $662a: $17
    ld [hl], e                                    ; $662b: $73
    rlca                                          ; $662c: $07
    sub c                                         ; $662d: $91
    ld h, e                                       ; $662e: $63
    ld h, c                                       ; $662f: $61
    inc bc                                        ; $6630: $03
    nop                                           ; $6631: $00
    ld bc, $0006                                  ; $6632: $01 $06 $00
    sbc d                                         ; $6635: $9a
    ld c, $00                                     ; $6636: $0e $00
    dec a                                         ; $6638: $3d
    ld [bc], a                                    ; $6639: $02
    inc de                                        ; $663a: $13
    inc l                                         ; $663b: $2c
    dec l                                         ; $663c: $2d
    ld e, $2d                                     ; $663d: $1e $2d
    ld e, $3a                                     ; $663f: $1e $3a

jr_0ee_6641:
    inc h                                         ; $6641: $24
    dec a                                         ; $6642: $3d
    jr nc, jr_0ee_665f                            ; $6643: $30 $1a

    inc a                                         ; $6645: $3c
    inc c                                         ; $6646: $0c
    ld e, $00                                     ; $6647: $1e $00
    inc l                                         ; $6649: $2c
    jr nz, @+$32                                  ; $664a: $20 $30

    jr nz, @+$32                                  ; $664c: $20 $30

    nop                                           ; $664e: $00
    jr nz, @+$08                                  ; $664f: $20 $06

    nop                                           ; $6651: $00
    rst $38                                       ; $6652: $ff
    add hl, bc                                    ; $6653: $09
    ld [bc], a                                    ; $6654: $02
    ld sp, hl                                     ; $6655: $f9
    ld [$f8e8], sp                                ; $6656: $08 $e8 $f8
    di                                            ; $6659: $f3
    pop af                                        ; $665a: $f1
    di                                            ; $665b: $f3
    ld sp, hl                                     ; $665c: $f9
    add c                                         ; $665d: $81
    nop                                           ; $665e: $00

jr_0ee_665f:
    ld [bc], a                                    ; $665f: $02
    inc b                                         ; $6660: $04
    adc a                                         ; $6661: $8f
    rrca                                          ; $6662: $0f
    ld b, $0f                                     ; $6663: $06 $0f
    ld b, $0f                                     ; $6665: $06 $0f
    ld [bc], a                                    ; $6667: $02
    rlca                                          ; $6668: $07
    ld [hl], d                                    ; $6669: $72
    rlca                                          ; $666a: $07
    adc e                                         ; $666b: $8b
    ld [hl], a                                    ; $666c: $77
    ld a, a                                       ; $666d: $7f
    inc bc                                        ; $666e: $03
    ld e, $01                                     ; $666f: $1e $01
    rrca                                          ; $6671: $0f
    nop                                           ; $6672: $00
    ld [bc], a                                    ; $6673: $02
    add b                                         ; $6674: $80
    add d                                         ; $6675: $82
    ret nz                                        ; $6676: $c0

    add b                                         ; $6677: $80
    ld [bc], a                                    ; $6678: $02
    ret nc                                        ; $6679: $d0

    sub d                                         ; $667a: $92
    ld hl, sp-$2a                                 ; $667b: $f8 $d6
    ld hl, sp-$23                                 ; $667d: $f8 $dd
    ld [c], a                                     ; $667f: $e2
    db $d3                                        ; $6680: $d3
    db $ec                                        ; $6681: $ec
    call $adfe                                    ; $6682: $cd $fe $ad
    sbc $12                                       ; $6685: $de $12
    inc c                                         ; $6687: $0c
    xor l                                         ; $6688: $ad
    nop                                           ; $6689: $00
    ld b, l                                       ; $668a: $45
    nop                                           ; $668b: $00
    ld a, [de]                                    ; $668c: $1a
    rlca                                          ; $668d: $07
    nop                                           ; $668e: $00
    rst $38                                       ; $668f: $ff
    dec bc                                        ; $6690: $0b
    inc bc                                        ; $6691: $03
    ld sp, hl                                     ; $6692: $f9
    rlca                                          ; $6693: $07
    rst $30                                       ; $6694: $f7
    ld [bc], a                                    ; $6695: $02
    rst $30                                       ; $6696: $f7
    push af                                       ; $6697: $f5
    rst $30                                       ; $6698: $f7
    db $fd                                        ; $6699: $fd
    rst $30                                       ; $669a: $f7
    nop                                           ; $669b: $00
    ld [bc], a                                    ; $669c: $02
    nop                                           ; $669d: $00
    adc e                                         ; $669e: $8b
    ld bc, $0200                                  ; $669f: $01 $00 $02
    ld bc, $0305                                  ; $66a2: $01 $05 $03
    ld [$0e07], sp                                ; $66a5: $08 $07 $0e
    ld bc, $020b                                  ; $66a8: $01 $0b $02
    inc b                                         ; $66ab: $04
    add e                                         ; $66ac: $83
    inc bc                                        ; $66ad: $03
    or d                                          ; $66ae: $b2
    or c                                          ; $66af: $b1
    ld c, $00                                     ; $66b0: $0e $00
    adc l                                         ; $66b2: $8d
    ld a, h                                       ; $66b3: $7c
    nop                                           ; $66b4: $00
    add e                                         ; $66b5: $83
    ld a, h                                       ; $66b6: $7c
    ld e, h                                       ; $66b7: $5c
    rst $38                                       ; $66b8: $ff
    rst $30                                       ; $66b9: $f7
    rst $38                                       ; $66ba: $ff
    xor b                                         ; $66bb: $a8
    rst $38                                       ; $66bc: $ff
    inc bc                                        ; $66bd: $03
    db $fc                                        ; $66be: $fc
    or h                                          ; $66bf: $b4
    ld [bc], a                                    ; $66c0: $02
    ld c, e                                       ; $66c1: $4b
    add e                                         ; $66c2: $83
    rst $38                                       ; $66c3: $ff
    nop                                           ; $66c4: $00
    rst $38                                       ; $66c5: $ff
    ld [bc], a                                    ; $66c6: $02
    nop                                           ; $66c7: $00
    ld [bc], a                                    ; $66c8: $02
    dec c                                         ; $66c9: $0d
    ld c, $00                                     ; $66ca: $0e $00
    add l                                         ; $66cc: $85
    inc b                                         ; $66cd: $04
    nop                                           ; $66ce: $00
    ld [bc], a                                    ; $66cf: $02
    inc b                                         ; $66d0: $04
    ld bc, $0602                                  ; $66d1: $01 $02 $06
    add h                                         ; $66d4: $84
    nop                                           ; $66d5: $00
    ld bc, $0206                                  ; $66d6: $01 $06 $02
    ld [bc], a                                    ; $66d9: $02
    inc b                                         ; $66da: $04
    rrca                                          ; $66db: $0f
    nop                                           ; $66dc: $00
    rst $38                                       ; $66dd: $ff
    dec bc                                        ; $66de: $0b
    inc bc                                        ; $66df: $03
    ld sp, hl                                     ; $66e0: $f9
    rlca                                          ; $66e1: $07
    rst $30                                       ; $66e2: $f7
    ld [bc], a                                    ; $66e3: $02
    push af                                       ; $66e4: $f5
    rst $30                                       ; $66e5: $f7
    push af                                       ; $66e6: $f5
    rst $38                                       ; $66e7: $ff
    push af                                       ; $66e8: $f5
    nop                                           ; $66e9: $00
    adc l                                         ; $66ea: $8d
    ld bc, $0600                                  ; $66eb: $01 $00 $06
    ld bc, $0709                                  ; $66ee: $01 $09 $07
    rla                                           ; $66f1: $17
    rrca                                          ; $66f2: $0f
    ld [hl+], a                                   ; $66f3: $22
    rra                                           ; $66f4: $1f
    jr c, jr_0ee_66fe                             ; $66f5: $38 $07

    cpl                                           ; $66f7: $2f
    ld [bc], a                                    ; $66f8: $02
    db $10                                        ; $66f9: $10
    add a                                         ; $66fa: $87
    rrca                                          ; $66fb: $0f
    ld a, [bc]                                    ; $66fc: $0a
    rlca                                          ; $66fd: $07

jr_0ee_66fe:
    ld b, $01                                     ; $66fe: $06 $01
    or c                                          ; $6700: $b1
    or b                                          ; $6701: $b0
    ld [bc], a                                    ; $6702: $02
    nop                                           ; $6703: $00
    ld [bc], a                                    ; $6704: $02
    inc bc                                        ; $6705: $03
    ld b, $00                                     ; $6706: $06 $00
    adc e                                         ; $6708: $8b
    ldh a, [rP1]                                  ; $6709: $f0 $00
    inc c                                         ; $670b: $0c
    ldh a, [$72]                                  ; $670c: $f0 $72
    db $fc                                        ; $670e: $fc
    db $dd                                        ; $670f: $dd
    cp $b0                                        ; $6710: $fe $b0
    rst $38                                       ; $6712: $ff
    rrca                                          ; $6713: $0f
    ld [bc], a                                    ; $6714: $02
    ldh a, [$86]                                  ; $6715: $f0 $86
    rrca                                          ; $6717: $0f
    dec c                                         ; $6718: $0d
    cp $d2                                        ; $6719: $fe $d2
    db $fc                                        ; $671b: $fc
    inc l                                         ; $671c: $2c
    ld [bc], a                                    ; $671d: $02
    ldh a, [$81]                                  ; $671e: $f0 $81
    nop                                           ; $6720: $00
    ld [bc], a                                    ; $6721: $02
    ld b, $10                                     ; $6722: $06 $10
    nop                                           ; $6724: $00
    add c                                         ; $6725: $81
    ld bc, $0003                                  ; $6726: $01 $03 $00
    add c                                         ; $6729: $81
    ld bc, $0009                                  ; $672a: $01 $09 $00
    ld [bc], a                                    ; $672d: $02
    ld bc, $0008                                  ; $672e: $01 $08 $00
    rst $38                                       ; $6731: $ff
    dec bc                                        ; $6732: $0b
    inc bc                                        ; $6733: $03
    ld sp, hl                                     ; $6734: $f9
    rlca                                          ; $6735: $07
    rst $30                                       ; $6736: $f7
    ld [bc], a                                    ; $6737: $02
    di                                            ; $6738: $f3
    ld hl, sp-$0d                                 ; $6739: $f8 $f3
    nop                                           ; $673b: $00
    di                                            ; $673c: $f3
    ld [bc], a                                    ; $673d: $02
    sbc d                                         ; $673e: $9a
    ld bc, $0600                                  ; $673f: $01 $00 $06
    ld bc, $0709                                  ; $6742: $01 $09 $07
    inc de                                        ; $6745: $13
    rrca                                          ; $6746: $0f
    rla                                           ; $6747: $17
    rrca                                          ; $6748: $0f
    jr z, jr_0ee_676a                             ; $6749: $28 $1f

    inc sp                                        ; $674b: $33
    inc c                                         ; $674c: $0c
    ccf                                           ; $674d: $3f
    nop                                           ; $674e: $00
    ld hl, $161e                                  ; $674f: $21 $1e $16
    rrca                                          ; $6752: $0f
    add hl, bc                                    ; $6753: $09
    rlca                                          ; $6754: $07
    ld b, $01                                     ; $6755: $06 $01
    or c                                          ; $6757: $b1
    or b                                          ; $6758: $b0
    ld b, $00                                     ; $6759: $06 $00
    sub a                                         ; $675b: $97
    ldh a, [rP1]                                  ; $675c: $f0 $00
    inc c                                         ; $675e: $0c
    ldh a, [$ea]                                  ; $675f: $f0 $ea
    db $fc                                        ; $6761: $fc
    cp l                                          ; $6762: $bd
    cp $6a                                        ; $6763: $fe $6a
    rst $38                                       ; $6765: $ff
    rrca                                          ; $6766: $0f
    ldh a, [rIE]                                  ; $6767: $f0 $ff
    nop                                           ; $6769: $00

jr_0ee_676a:
    xor a                                         ; $676a: $af
    ld [hl], b                                    ; $676b: $70
    ld a, [c]                                     ; $676c: $f2
    rrca                                          ; $676d: $0f
    dec b                                         ; $676e: $05
    cp $b2                                        ; $676f: $fe $b2
    db $fc                                        ; $6771: $fc
    inc c                                         ; $6772: $0c
    ld [bc], a                                    ; $6773: $02
    ldh a, [$03]                                  ; $6774: $f0 $03
    nop                                           ; $6776: $00
    ld [bc], a                                    ; $6777: $02
    ld l, b                                       ; $6778: $68
    ld a, [bc]                                    ; $6779: $0a
    nop                                           ; $677a: $00
    add e                                         ; $677b: $83
    ld [bc], a                                    ; $677c: $02
    nop                                           ; $677d: $00
    ld [bc], a                                    ; $677e: $02
    inc bc                                        ; $677f: $03
    nop                                           ; $6780: $00
    add e                                         ; $6781: $83
    ld [bc], a                                    ; $6782: $02
    nop                                           ; $6783: $00
    ld [bc], a                                    ; $6784: $02
    dec b                                         ; $6785: $05
    nop                                           ; $6786: $00
    ld [bc], a                                    ; $6787: $02
    inc bc                                        ; $6788: $03
    ld [$ff00], sp                                ; $6789: $08 $00 $ff
    dec bc                                        ; $678c: $0b
    inc bc                                        ; $678d: $03
    ld sp, hl                                     ; $678e: $f9
    rlca                                          ; $678f: $07
    rst $30                                       ; $6790: $f7
    ld [bc], a                                    ; $6791: $02
    push af                                       ; $6792: $f5
    ld a, [$01f5]                                 ; $6793: $fa $f5 $01
    push af                                       ; $6796: $f5
    inc bc                                        ; $6797: $03
    sub a                                         ; $6798: $97
    rlca                                          ; $6799: $07
    nop                                           ; $679a: $00
    jr jr_0ee_67a4                                ; $679b: $18 $07

    ld h, $1f                                     ; $679d: $26 $1f
    ld c, a                                       ; $679f: $4f
    ccf                                           ; $67a0: $3f
    ld d, l                                       ; $67a1: $55
    ccf                                           ; $67a2: $3f
    add e                                         ; $67a3: $83

jr_0ee_67a4:
    ld a, h                                       ; $67a4: $7c
    cp $01                                        ; $67a5: $fe $01
    add a                                         ; $67a7: $87
    ld a, b                                       ; $67a8: $78
    ld e, b                                       ; $67a9: $58
    ccf                                           ; $67aa: $3f
    inc h                                         ; $67ab: $24
    rra                                           ; $67ac: $1f
    cp e                                          ; $67ad: $bb
    and a                                         ; $67ae: $a7
    rlca                                          ; $67af: $07
    inc bc                                        ; $67b0: $03
    nop                                           ; $67b1: $00
    ld [bc], a                                    ; $67b2: $02
    ld [bc], a                                    ; $67b3: $02
    inc b                                         ; $67b4: $04
    nop                                           ; $67b5: $00
    sub a                                         ; $67b6: $97
    ld h, b                                       ; $67b7: $60
    nop                                           ; $67b8: $00
    jr jr_0ee_681b                                ; $67b9: $18 $60

    ld d, h                                       ; $67bb: $54
    ld a, b                                       ; $67bc: $78
    ld a, d                                       ; $67bd: $7a
    ld a, h                                       ; $67be: $7c
    ld d, l                                       ; $67bf: $55
    ld a, [hl]                                    ; $67c0: $7e

jr_0ee_67c1:
    ld c, a                                       ; $67c1: $4f
    jr nc, jr_0ee_6802                            ; $67c2: $30 $3e

    ld b, b                                       ; $67c4: $40
    ld [hl], l                                    ; $67c5: $75
    ld c, $0a                                     ; $67c6: $0e $0a
    ld a, h                                       ; $67c8: $7c
    ld h, h                                       ; $67c9: $64
    ld a, b                                       ; $67ca: $78
    ld e, e                                       ; $67cb: $5b
    ld h, e                                       ; $67cc: $63
    ld h, b                                       ; $67cd: $60
    inc bc                                        ; $67ce: $03
    nop                                           ; $67cf: $00
    ld [bc], a                                    ; $67d0: $02
    ld h, b                                       ; $67d1: $60
    jr jr_0ee_67d4                                ; $67d2: $18 $00

jr_0ee_67d4:
    ld [bc], a                                    ; $67d4: $02
    ld bc, $000a                                  ; $67d5: $01 $0a $00
    rst $38                                       ; $67d8: $ff
    add hl, bc                                    ; $67d9: $09
    ld [bc], a                                    ; $67da: $02
    ld sp, hl                                     ; $67db: $f9
    rlca                                          ; $67dc: $07
    rst $30                                       ; $67dd: $f7
    ld [bc], a                                    ; $67de: $02
    or $fa                                        ; $67df: $f6 $fa
    or $02                                        ; $67e1: $f6 $02
    sub [hl]                                      ; $67e3: $96
    rlca                                          ; $67e4: $07
    nop                                           ; $67e5: $00
    jr @+$09                                      ; $67e6: $18 $07

    dec h                                         ; $67e8: $25
    rra                                           ; $67e9: $1f
    ld e, a                                       ; $67ea: $5f
    ccf                                           ; $67eb: $3f
    adc d                                         ; $67ec: $8a
    ld a, a                                       ; $67ed: $7f
    ldh [$1f], a                                  ; $67ee: $e0 $1f
    sbc l                                         ; $67f0: $9d
    ld h, d                                       ; $67f1: $62
    ld d, b                                       ; $67f2: $50
    ccf                                           ; $67f3: $3f
    ld h, $1f                                     ; $67f4: $26 $1f
    jr jr_0ee_67ff                                ; $67f6: $18 $07

    or a                                          ; $67f8: $b7
    or b                                          ; $67f9: $b0
    ld a, [bc]                                    ; $67fa: $0a
    nop                                           ; $67fb: $00
    sub e                                         ; $67fc: $93
    ret nz                                        ; $67fd: $c0

    nop                                           ; $67fe: $00

jr_0ee_67ff:
    jr nc, jr_0ee_67c1                            ; $67ff: $30 $c0

    ret z                                         ; $6801: $c8

jr_0ee_6802:
    ldh a, [$74]                                  ; $6802: $f0 $74
    ld hl, sp-$3e                                 ; $6804: $f8 $c2
    db $fc                                        ; $6806: $fc
    inc a                                         ; $6807: $3c
    ret nz                                        ; $6808: $c0

    ld c, d                                       ; $6809: $4a
    cp h                                          ; $680a: $bc
    inc [hl]                                      ; $680b: $34
    ld hl, sp-$37                                 ; $680c: $f8 $c9
    pop af                                        ; $680e: $f1
    jr nc, jr_0ee_6813                            ; $680f: $30 $02

    ret nz                                        ; $6811: $c0

    add c                                         ; $6812: $81

jr_0ee_6813:
    nop                                           ; $6813: $00
    ld [bc], a                                    ; $6814: $02
    ld l, b                                       ; $6815: $68
    ld [$ff00], sp                                ; $6816: $08 $00 $ff
    dec bc                                        ; $6819: $0b
    inc bc                                        ; $681a: $03

jr_0ee_681b:
    ld sp, hl                                     ; $681b: $f9
    rlca                                          ; $681c: $07
    rst $30                                       ; $681d: $f7
    ld [bc], a                                    ; $681e: $02
    rst $30                                       ; $681f: $f7
    ld hl, sp-$09                                 ; $6820: $f8 $f7
    nop                                           ; $6822: $00
    rst $30                                       ; $6823: $f7
    ld bc, $018d                                  ; $6824: $01 $8d $01
    nop                                           ; $6827: $00
    ld b, $01                                     ; $6828: $06 $01
    add hl, bc                                    ; $682a: $09
    rlca                                          ; $682b: $07
    rla                                           ; $682c: $17
    rrca                                          ; $682d: $0f
    ld [hl+], a                                   ; $682e: $22
    rra                                           ; $682f: $1f
    jr c, jr_0ee_6839                             ; $6830: $38 $07

    cpl                                           ; $6832: $2f
    ld [bc], a                                    ; $6833: $02
    db $10                                        ; $6834: $10
    add l                                         ; $6835: $85
    rrca                                          ; $6836: $0f
    add hl, bc                                    ; $6837: $09
    rlca                                          ; $6838: $07

jr_0ee_6839:
    or [hl]                                       ; $6839: $b6
    or c                                          ; $683a: $b1
    inc c                                         ; $683b: $0c
    nop                                           ; $683c: $00
    sub h                                         ; $683d: $94
    ldh a, [rP1]                                  ; $683e: $f0 $00
    inc c                                         ; $6840: $0c
    ldh a, [$72]                                  ; $6841: $f0 $72
    db $fc                                        ; $6843: $fc
    db $ed                                        ; $6844: $ed
    cp $90                                        ; $6845: $fe $90
    rst $38                                       ; $6847: $ff
    rrca                                          ; $6848: $0f
    ldh a, [rHDMA2]                               ; $6849: $f0 $52
    xor a                                         ; $684b: $af
    dec a                                         ; $684c: $3d
    cp $e2                                        ; $684d: $fe $e2
    db $fc                                        ; $684f: $fc
    inc c                                         ; $6850: $0c
    ldh a, [rSC]                                  ; $6851: $f0 $02
    nop                                           ; $6853: $00
    ld [bc], a                                    ; $6854: $02
    inc l                                         ; $6855: $2c
    stop                                          ; $6856: $10 $00
    add c                                         ; $6858: $81
    ld bc, $0003                                  ; $6859: $01 $03 $00
    add c                                         ; $685c: $81
    ld bc, $0003                                  ; $685d: $01 $03 $00
    ld [bc], a                                    ; $6860: $02
    ld bc, $000e                                  ; $6861: $01 $0e $00
    rst $38                                       ; $6864: $ff
    dec bc                                        ; $6865: $0b
    inc bc                                        ; $6866: $03
    ld sp, hl                                     ; $6867: $f9
    rlca                                          ; $6868: $07
    rst $30                                       ; $6869: $f7
    ld [bc], a                                    ; $686a: $02
    ld hl, sp-$0c                                 ; $686b: $f8 $f4
    ld hl, sp-$04                                 ; $686d: $f8 $fc
    ld hl, sp-$02                                 ; $686f: $f8 $fe
    sub d                                         ; $6871: $92
    rlca                                          ; $6872: $07
    nop                                           ; $6873: $00
    jr jr_0ee_687d                                ; $6874: $18 $07

    dec h                                         ; $6876: $25
    rra                                           ; $6877: $1f
    ld b, e                                       ; $6878: $43
    ccf                                           ; $6879: $3f
    ld l, l                                       ; $687a: $6d
    rra                                           ; $687b: $1f
    ld h, b                                       ; $687c: $60

jr_0ee_687d:
    rra                                           ; $687d: $1f
    ld e, c                                       ; $687e: $59
    daa                                           ; $687f: $27
    ld h, $19                                     ; $6880: $26 $19
    ret nc                                        ; $6882: $d0

    rst $08                                       ; $6883: $cf
    ld c, $00                                     ; $6884: $0e $00
    sub d                                         ; $6886: $92
    add b                                         ; $6887: $80
    nop                                           ; $6888: $00
    ld h, b                                       ; $6889: $60
    add b                                         ; $688a: $80
    ret nc                                        ; $688b: $d0

    ldh [$a8], a                                  ; $688c: $e0 $a8
    ldh a, [$f4]                                  ; $688e: $f0 $f4
    ld hl, sp-$4c                                 ; $6890: $f8 $b4
    ld hl, sp+$58                                 ; $6892: $f8 $58
    ldh [$b7], a                                  ; $6894: $e0 $b7
    ld e, e                                       ; $6896: $5b
    ld [$02f0], sp                                ; $6897: $08 $f0 $02
    nop                                           ; $689a: $00
    ld [bc], a                                    ; $689b: $02
    dec bc                                        ; $689c: $0b
    jr jr_0ee_689f                                ; $689d: $18 $00

jr_0ee_689f:
    ld [bc], a                                    ; $689f: $02
    ld bc, $0010                                  ; $68a0: $01 $10 $00
    rst $38                                       ; $68a3: $ff
    dec bc                                        ; $68a4: $0b
    inc bc                                        ; $68a5: $03
    ld sp, hl                                     ; $68a6: $f9
    rlca                                          ; $68a7: $07
    rst $30                                       ; $68a8: $f7
    ld [bc], a                                    ; $68a9: $02
    di                                            ; $68aa: $f3
    ei                                            ; $68ab: $fb
    di                                            ; $68ac: $f3
    inc bc                                        ; $68ad: $03
    di                                            ; $68ae: $f3
    inc b                                         ; $68af: $04
    ld [bc], a                                    ; $68b0: $02
    nop                                           ; $68b1: $00
    sbc d                                         ; $68b2: $9a
    ld bc, $0200                                  ; $68b3: $01 $00 $02
    ld bc, $0305                                  ; $68b6: $01 $05 $03
    dec bc                                        ; $68b9: $0b
    rlca                                          ; $68ba: $07
    dec bc                                        ; $68bb: $0b
    rlca                                          ; $68bc: $07
    dec d                                         ; $68bd: $15
    rrca                                          ; $68be: $0f
    ld [$1f07], sp                                ; $68bf: $08 $07 $1f
    nop                                           ; $68c2: $00
    rla                                           ; $68c3: $17
    ld [$b4bb], sp                                ; $68c4: $08 $bb $b4
    add hl, de                                    ; $68c7: $19
    rla                                           ; $68c8: $17
    cp h                                          ; $68c9: $bc
    cp e                                          ; $68ca: $bb
    rrca                                          ; $68cb: $0f
    inc c                                         ; $68cc: $0c
    inc b                                         ; $68cd: $04
    nop                                           ; $68ce: $00
    adc l                                         ; $68cf: $8d
    ld a, h                                       ; $68d0: $7c
    nop                                           ; $68d1: $00
    xor e                                         ; $68d2: $ab
    ld a, h                                       ; $68d3: $7c
    sbc $ff                                       ; $68d4: $de $ff
    ld a, h                                       ; $68d6: $7c
    rst $38                                       ; $68d7: $ff
    or c                                          ; $68d8: $b1
    cp $06                                        ; $68d9: $fe $06
    ld hl, sp+$38                                 ; $68db: $f8 $38
    ld [bc], a                                    ; $68dd: $02
    ret nz                                        ; $68de: $c0

    adc l                                         ; $68df: $8d
    nop                                           ; $68e0: $00
    ret c                                         ; $68e1: $d8

    jr nc, @-$40                                  ; $68e2: $30 $be

    ld a, b                                       ; $68e4: $78
    or l                                          ; $68e5: $b5
    ld a, d                                       ; $68e6: $7a
    adc $31                                       ; $68e7: $ce $31
    ld a, [hl]                                    ; $68e9: $7e
    rst $38                                       ; $68ea: $ff
    inc bc                                        ; $68eb: $03
    db $fc                                        ; $68ec: $fc
    ld [$8300], sp                                ; $68ed: $08 $00 $83
    ld bc, $0100                                  ; $68f0: $01 $00 $01
    rrca                                          ; $68f3: $0f
    nop                                           ; $68f4: $00
    add e                                         ; $68f5: $83
    ld bc, $0100                                  ; $68f6: $01 $00 $01
    rlca                                          ; $68f9: $07
    nop                                           ; $68fa: $00
    rst $38                                       ; $68fb: $ff
    dec c                                         ; $68fc: $0d
    inc b                                         ; $68fd: $04
    ld sp, hl                                     ; $68fe: $f9
    rlca                                          ; $68ff: $07
    rst $30                                       ; $6900: $f7
    ld [bc], a                                    ; $6901: $02
    db $f4                                        ; $6902: $f4
    db $fd                                        ; $6903: $fd
    ldh a, [rTIMA]                                ; $6904: $f0 $05
    pop af                                        ; $6906: $f1
    ld [$0000], sp                                ; $6907: $08 $00 $00
    adc c                                         ; $690a: $89
    ld bc, $0100                                  ; $690b: $01 $00 $01
    nop                                           ; $690e: $00
    ld bc, $0200                                  ; $690f: $01 $00 $02
    ld bc, $0202                                  ; $6912: $01 $02 $02
    ld bc, $008d                                  ; $6915: $01 $8d $00
    inc bc                                        ; $6918: $03
    nop                                           ; $6919: $00
    ld [bc], a                                    ; $691a: $02
    ld bc, $0103                                  ; $691b: $01 $03 $01
    ld e, d                                       ; $691e: $5a
    ld e, c                                       ; $691f: $59
    dec c                                         ; $6920: $0d
    inc c                                         ; $6921: $0c
    cp l                                          ; $6922: $bd
    cp h                                          ; $6923: $bc
    ld [bc], a                                    ; $6924: $02
    ld a, [bc]                                    ; $6925: $0a
    ld b, $00                                     ; $6926: $06 $00
    xor c                                         ; $6928: $a9
    rrca                                          ; $6929: $0f
    nop                                           ; $692a: $00
    ld [hl-], a                                   ; $692b: $32
    rrca                                          ; $692c: $0f
    ld c, a                                       ; $692d: $4f
    ccf                                           ; $692e: $3f
    or [hl]                                       ; $692f: $b6
    ld a, a                                       ; $6930: $7f
    ld e, b                                       ; $6931: $58
    rst $38                                       ; $6932: $ff
    ld h, e                                       ; $6933: $63
    db $fc                                        ; $6934: $fc
    ld c, [hl]                                    ; $6935: $4e
    ldh a, [$98]                                  ; $6936: $f0 $98
    ldh [rSVBK], a                                ; $6938: $e0 $70
    add b                                         ; $693a: $80
    ldh [rP1], a                                  ; $693b: $e0 $00
    ldh a, [rP1]                                  ; $693d: $f0 $00
    ld a, [$7706]                                 ; $693f: $fa $06 $77
    adc a                                         ; $6942: $8f
    or [hl]                                       ; $6943: $b6
    rst $08                                       ; $6944: $cf
    reti                                          ; $6945: $d9


    and $77                                       ; $6946: $e6 $77
    ld hl, sp+$06                                 ; $6948: $f8 $06
    nop                                           ; $694a: $00
    ld bc, $0306                                  ; $694b: $01 $06 $03
    inc b                                         ; $694e: $04
    ld b, $00                                     ; $694f: $06 $00
    inc b                                         ; $6951: $04
    rrca                                          ; $6952: $0f
    nop                                           ; $6953: $00
    adc d                                         ; $6954: $8a
    inc b                                         ; $6955: $04
    nop                                           ; $6956: $00
    ld b, $00                                     ; $6957: $06 $00
    rlca                                          ; $6959: $07
    nop                                           ; $695a: $00
    ld c, $f0                                     ; $695b: $0e $f0
    ld b, $01                                     ; $695d: $06 $01
    ld e, $00                                     ; $695f: $1e $00
    rst $38                                       ; $6961: $ff
    dec bc                                        ; $6962: $0b
    inc bc                                        ; $6963: $03
    ld sp, hl                                     ; $6964: $f9
    rlca                                          ; $6965: $07
    rst $30                                       ; $6966: $f7
    ld [bc], a                                    ; $6967: $02
    ld a, [c]                                     ; $6968: $f2
    ld bc, $09f2                                  ; $6969: $01 $f2 $09
    ld a, [c]                                     ; $696c: $f2
    dec c                                         ; $696d: $0d
    inc c                                         ; $696e: $0c
    nop                                           ; $696f: $00
    add e                                         ; $6970: $83
    ld bc, $0100                                  ; $6971: $01 $00 $01
    inc bc                                        ; $6974: $03
    nop                                           ; $6975: $00
    add [hl]                                      ; $6976: $86
    ld bc, $0100                                  ; $6977: $01 $00 $01
    nop                                           ; $697a: $00
    ld e, l                                       ; $697b: $5d
    ld e, h                                       ; $697c: $5c
    ld [bc], a                                    ; $697d: $02
    ld b, $02                                     ; $697e: $06 $02
    cp [hl]                                       ; $6980: $be
    ld [bc], a                                    ; $6981: $02
    add hl, bc                                    ; $6982: $09
    ld [bc], a                                    ; $6983: $02
    nop                                           ; $6984: $00
    sbc [hl]                                      ; $6985: $9e
    rlca                                          ; $6986: $07
    nop                                           ; $6987: $00
    ld a, [de]                                    ; $6988: $1a
    rlca                                          ; $6989: $07
    daa                                           ; $698a: $27
    rra                                           ; $698b: $1f
    ld e, l                                       ; $698c: $5d
    ccf                                           ; $698d: $3f
    or h                                          ; $698e: $b4
    ld a, a                                       ; $698f: $7f
    or e                                          ; $6990: $b3
    ld a, h                                       ; $6991: $7c
    ld c, $f0                                     ; $6992: $0e $f0
    ld a, b                                       ; $6994: $78
    add b                                         ; $6995: $80
    ldh a, [rP1]                                  ; $6996: $f0 $00
    db $fd                                        ; $6998: $fd
    inc bc                                        ; $6999: $03
    ld a, e                                       ; $699a: $7b
    add a                                         ; $699b: $87
    dec sp                                        ; $699c: $3b
    rst $00                                       ; $699d: $c7
    call z, $b373                                 ; $699e: $cc $73 $b3
    ld a, h                                       ; $69a1: $7c
    ld l, h                                       ; $69a2: $6c
    rra                                           ; $69a3: $1f
    ld [bc], a                                    ; $69a4: $02
    nop                                           ; $69a5: $00
    adc c                                         ; $69a6: $89
    ld [$0600], sp                                ; $69a7: $08 $00 $06
    ld [$0e05], sp                                ; $69aa: $08 $05 $0e
    ld bc, $060e                                  ; $69ad: $01 $0e $06
    ld [bc], a                                    ; $69b0: $02
    ld [$0009], sp                                ; $69b1: $08 $09 $00
    ld [bc], a                                    ; $69b4: $02
    ld [$0688], sp                                ; $69b5: $08 $88 $06
    ld [$000f], sp                                ; $69b8: $08 $0f $00
    rrca                                          ; $69bb: $0f
    nop                                           ; $69bc: $00
    ld a, [bc]                                    ; $69bd: $0a
    inc b                                         ; $69be: $04
    ld [bc], a                                    ; $69bf: $02
    nop                                           ; $69c0: $00
    rst $38                                       ; $69c1: $ff
    dec bc                                        ; $69c2: $0b
    inc bc                                        ; $69c3: $03
    ld sp, hl                                     ; $69c4: $f9
    rlca                                          ; $69c5: $07
    rst $30                                       ; $69c6: $f7
    ld [bc], a                                    ; $69c7: $02
    rst $30                                       ; $69c8: $f7
    ld a, [bc]                                    ; $69c9: $0a
    rst $30                                       ; $69ca: $f7
    ld [de], a                                    ; $69cb: $12
    rst $30                                       ; $69cc: $f7
    dec d                                         ; $69cd: $15
    ld [bc], a                                    ; $69ce: $02
    nop                                           ; $69cf: $00
    sub d                                         ; $69d0: $92
    ld bc, $0200                                  ; $69d1: $01 $00 $02
    ld bc, $0305                                  ; $69d4: $01 $05 $03
    ld [$0e07], sp                                ; $69d7: $08 $07 $0e
    ld bc, $1619                                  ; $69da: $01 $19 $16
    or h                                          ; $69dd: $b4
    or e                                          ; $69de: $b3
    ld a, [de]                                    ; $69df: $1a
    add hl, de                                    ; $69e0: $19
    dec l                                         ; $69e1: $2d
    inc l                                         ; $69e2: $2c
    inc c                                         ; $69e3: $0c
    nop                                           ; $69e4: $00
    sub h                                         ; $69e5: $94
    ld a, h                                       ; $69e6: $7c
    nop                                           ; $69e7: $00
    add e                                         ; $69e8: $83
    ld a, h                                       ; $69e9: $7c
    ld e, h                                       ; $69ea: $5c
    rst $38                                       ; $69eb: $ff
    ei                                            ; $69ec: $fb
    rst $38                                       ; $69ed: $ff
    and h                                         ; $69ee: $a4
    rst $38                                       ; $69ef: $ff
    inc bc                                        ; $69f0: $03
    db $fc                                        ; $69f1: $fc
    call nc, Call_000_032b                        ; $69f2: $d4 $2b $03
    rst $38                                       ; $69f5: $ff
    or h                                          ; $69f6: $b4
    rst $38                                       ; $69f7: $ff
    add e                                         ; $69f8: $83
    ld a, h                                       ; $69f9: $7c
    stop                                          ; $69fa: $10 $00
    adc e                                         ; $69fc: $8b
    inc b                                         ; $69fd: $04
    nop                                           ; $69fe: $00
    ld [bc], a                                    ; $69ff: $02
    inc b                                         ; $6a00: $04
    ld bc, $0706                                  ; $6a01: $01 $06 $07
    nop                                           ; $6a04: $00
    ld bc, $0206                                  ; $6a05: $01 $06 $02
    ld [bc], a                                    ; $6a08: $02
    inc b                                         ; $6a09: $04
    rrca                                          ; $6a0a: $0f
    nop                                           ; $6a0b: $00
    rst $38                                       ; $6a0c: $ff
    dec bc                                        ; $6a0d: $0b

jr_0ee_6a0e:
    inc bc                                        ; $6a0e: $03
    ld sp, hl                                     ; $6a0f: $f9
    rlca                                          ; $6a10: $07
    rst $30                                       ; $6a11: $f7
    ld [bc], a                                    ; $6a12: $02
    ld sp, hl                                     ; $6a13: $f9
    ld b, $f9                                     ; $6a14: $06 $f9
    ld c, $f9                                     ; $6a16: $0e $f9
    ld [de], a                                    ; $6a18: $12
    sub d                                         ; $6a19: $92
    rlca                                          ; $6a1a: $07
    nop                                           ; $6a1b: $00
    jr @+$09                                      ; $6a1c: $18 $07

    daa                                           ; $6a1e: $27
    rra                                           ; $6a1f: $1f
    ld e, a                                       ; $6a20: $5f
    ccf                                           ; $6a21: $3f
    adc e                                         ; $6a22: $8b
    ld a, a                                       ; $6a23: $7f
    ldh [$1f], a                                  ; $6a24: $e0 $1f
    sbc h                                         ; $6a26: $9c
    ld h, e                                       ; $6a27: $63
    ld b, e                                       ; $6a28: $43
    inc a                                         ; $6a29: $3c
    jr nc, @+$11                                  ; $6a2a: $30 $0f

    stop                                          ; $6a2c: $10 $00
    sub b                                         ; $6a2e: $90
    ret nz                                        ; $6a2f: $c0

    nop                                           ; $6a30: $00
    jr nc, @-$3e                                  ; $6a31: $30 $c0

    ret z                                         ; $6a33: $c8

    ldh a, [$b4]                                  ; $6a34: $f0 $b4
    ld hl, sp+$42                                 ; $6a36: $f8 $42
    db $fc                                        ; $6a38: $fc
    inc c                                         ; $6a39: $0c
    ldh a, [rHDMA2]                               ; $6a3a: $f0 $52
    xor h                                         ; $6a3c: $ac
    dec b                                         ; $6a3d: $05
    ld sp, hl                                     ; $6a3e: $f9
    jr jr_0ee_6a41                                ; $6a3f: $18 $00

jr_0ee_6a41:
    ld [bc], a                                    ; $6a41: $02
    dec c                                         ; $6a42: $0d
    inc b                                         ; $6a43: $04
    nop                                           ; $6a44: $00
    ld [bc], a                                    ; $6a45: $02
    ld [$000e], sp                                ; $6a46: $08 $0e $00
    rst $38                                       ; $6a49: $ff
    dec bc                                        ; $6a4a: $0b
    inc bc                                        ; $6a4b: $03
    ld sp, hl                                     ; $6a4c: $f9
    rlca                                          ; $6a4d: $07
    rst $30                                       ; $6a4e: $f7
    ld [bc], a                                    ; $6a4f: $02
    ld sp, hl                                     ; $6a50: $f9
    push af                                       ; $6a51: $f5
    ld sp, hl                                     ; $6a52: $f9
    db $fd                                        ; $6a53: $fd
    ld sp, hl                                     ; $6a54: $f9
    ld [bc], a                                    ; $6a55: $02
    ld [bc], a                                    ; $6a56: $02
    nop                                           ; $6a57: $00
    adc c                                         ; $6a58: $89
    ld bc, $0600                                  ; $6a59: $01 $00 $06
    ld bc, $0709                                  ; $6a5c: $01 $09 $07
    ld c, $01                                     ; $6a5f: $0e $01
    add hl, bc                                    ; $6a61: $09
    ld [bc], a                                    ; $6a62: $02
    ld b, $83                                     ; $6a63: $06 $83
    ld bc, $b0b1                                  ; $6a65: $01 $b1 $b0
    ld [bc], a                                    ; $6a68: $02
    nop                                           ; $6a69: $00
    ld [bc], a                                    ; $6a6a: $02
    inc bc                                        ; $6a6b: $03
    inc c                                         ; $6a6c: $0c
    nop                                           ; $6a6d: $00
    add e                                         ; $6a6e: $83
    ld a, h                                       ; $6a6f: $7c
    nop                                           ; $6a70: $00
    xor e                                         ; $6a71: $ab
    ld [bc], a                                    ; $6a72: $02
    ld a, h                                       ; $6a73: $7c
    adc d                                         ; $6a74: $8a
    rst $38                                       ; $6a75: $ff
    db $db                                        ; $6a76: $db
    rst $38                                       ; $6a77: $ff
    inc bc                                        ; $6a78: $03
    db $fc                                        ; $6a79: $fc
    ld e, l                                       ; $6a7a: $5d
    and e                                         ; $6a7b: $a3
    ld c, $ff                                     ; $6a7c: $0e $ff
    add b                                         ; $6a7e: $80
    ld [bc], a                                    ; $6a7f: $02
    ld a, h                                       ; $6a80: $7c
    inc de                                        ; $6a81: $13
    nop                                           ; $6a82: $00
    add e                                         ; $6a83: $83
    jr jr_0ee_6a86                                ; $6a84: $18 $00

jr_0ee_6a86:
    inc b                                         ; $6a86: $04
    ld [bc], a                                    ; $6a87: $02
    jr jr_0ee_6a0e                                ; $6a88: $18 $84

    nop                                           ; $6a8a: $00
    inc b                                         ; $6a8b: $04
    jr jr_0ee_6a9e                                ; $6a8c: $18 $10

    inc bc                                        ; $6a8e: $03
    nop                                           ; $6a8f: $00
    ld [bc], a                                    ; $6a90: $02
    dec c                                         ; $6a91: $0d
    ld c, $00                                     ; $6a92: $0e $00
    rst $38                                       ; $6a94: $ff
    dec bc                                        ; $6a95: $0b
    inc bc                                        ; $6a96: $03
    ld sp, hl                                     ; $6a97: $f9
    rlca                                          ; $6a98: $07
    rst $30                                       ; $6a99: $f7
    ld [bc], a                                    ; $6a9a: $02
    rst $30                                       ; $6a9b: $f7
    or $f7                                        ; $6a9c: $f6 $f7

jr_0ee_6a9e:
    db $fd                                        ; $6a9e: $fd
    rst $30                                       ; $6a9f: $f7
    ld [bc], a                                    ; $6aa0: $02
    sub [hl]                                      ; $6aa1: $96
    rrca                                          ; $6aa2: $0f
    nop                                           ; $6aa3: $00
    db $10                                        ; $6aa4: $10
    rrca                                          ; $6aa5: $0f
    ld a, [hl+]                                   ; $6aa6: $2a
    rla                                           ; $6aa7: $17
    add hl, hl                                    ; $6aa8: $29
    rla                                           ; $6aa9: $17
    dec h                                         ; $6aaa: $25
    dec de                                        ; $6aab: $1b
    ld a, [hl+]                                   ; $6aac: $2a
    dec e                                         ; $6aad: $1d
    inc d                                         ; $6aae: $14
    rrca                                          ; $6aaf: $0f
    ld d, $0f                                     ; $6ab0: $16 $0f
    add hl, bc                                    ; $6ab2: $09
    rlca                                          ; $6ab3: $07
    or [hl]                                       ; $6ab4: $b6
    or c                                          ; $6ab5: $b1
    ld bc, $0200                                  ; $6ab6: $01 $00 $02
    inc c                                         ; $6ab9: $0c
    ld [$9600], sp                                ; $6aba: $08 $00 $96
    ld b, b                                       ; $6abd: $40
    nop                                           ; $6abe: $00
    jr nc, jr_0ee_6b01                            ; $6abf: $30 $40

    ld c, b                                       ; $6ac1: $48
    ld [hl], b                                    ; $6ac2: $70
    ld [hl], h                                    ; $6ac3: $74
    ld a, b                                       ; $6ac4: $78
    inc a                                         ; $6ac5: $3c
    ld a, b                                       ; $6ac6: $78
    ld [hl-], a                                   ; $6ac7: $32
    ld a, h                                       ; $6ac8: $7c
    ld e, $7c                                     ; $6ac9: $1e $7c
    ld c, c                                       ; $6acb: $49
    ld a, $15                                     ; $6acc: $3e $15
    ld l, [hl]                                    ; $6ace: $6e
    dec c                                         ; $6acf: $0d
    ld [hl], d                                    ; $6ad0: $72
    ld b, d                                       ; $6ad1: $42
    inc a                                         ; $6ad2: $3c
    jr nz, jr_0ee_6ad5                            ; $6ad3: $20 $00

jr_0ee_6ad5:
    ld [bc], a                                    ; $6ad5: $02
    dec c                                         ; $6ad6: $0d
    ld [$ff00], sp                                ; $6ad7: $08 $00 $ff
    dec bc                                        ; $6ada: $0b
    inc bc                                        ; $6adb: $03
    ld sp, hl                                     ; $6adc: $f9
    rlca                                          ; $6add: $07
    rst $30                                       ; $6ade: $f7
    ld [bc], a                                    ; $6adf: $02
    ld hl, sp-$0c                                 ; $6ae0: $f8 $f4
    ld hl, sp-$04                                 ; $6ae2: $f8 $fc
    ld hl, sp-$02                                 ; $6ae4: $f8 $fe
    sub h                                         ; $6ae6: $94
    ld c, $00                                     ; $6ae7: $0e $00
    dec d                                         ; $6ae9: $15
    ld a, [bc]                                    ; $6aea: $0a
    dec l                                         ; $6aeb: $2d
    dec de                                        ; $6aec: $1b
    ld b, a                                       ; $6aed: $47
    dec sp                                        ; $6aee: $3b
    ld e, c                                       ; $6aef: $59
    scf                                           ; $6af0: $37
    ld e, [hl]                                    ; $6af1: $5e
    scf                                           ; $6af2: $37
    ld e, e                                       ; $6af3: $5b
    scf                                           ; $6af4: $37
    ld d, h                                       ; $6af5: $54
    dec sp                                        ; $6af6: $3b
    and a                                         ; $6af7: $a7
    sbc e                                         ; $6af8: $9b
    inc h                                         ; $6af9: $24
    dec de                                        ; $6afa: $1b
    ld c, $00                                     ; $6afb: $0e $00
    sub d                                         ; $6afd: $92
    add b                                         ; $6afe: $80
    nop                                           ; $6aff: $00
    ld b, b                                       ; $6b00: $40

jr_0ee_6b01:
    add b                                         ; $6b01: $80
    and b                                         ; $6b02: $a0
    ret nz                                        ; $6b03: $c0

    and b                                         ; $6b04: $a0
    ret nz                                        ; $6b05: $c0

    and b                                         ; $6b06: $a0
    ret nz                                        ; $6b07: $c0

    ld d, b                                       ; $6b08: $50
    ldh [$d0], a                                  ; $6b09: $e0 $d0
    ldh [rSVBK], a                                ; $6b0b: $e0 $70
    ldh [rNR10], a                                ; $6b0d: $e0 $10
    ldh [rSC], a                                  ; $6b0f: $e0 $02
    inc bc                                        ; $6b11: $03
    ld e, $00                                     ; $6b12: $1e $00
    ld [bc], a                                    ; $6b14: $02
    ld bc, $000a                                  ; $6b15: $01 $0a $00
    rst $38                                       ; $6b18: $ff
    dec bc                                        ; $6b19: $0b
    inc bc                                        ; $6b1a: $03
    ld sp, hl                                     ; $6b1b: $f9
    rlca                                          ; $6b1c: $07
    rst $30                                       ; $6b1d: $f7
    ld [bc], a                                    ; $6b1e: $02
    ld sp, hl                                     ; $6b1f: $f9

jr_0ee_6b20:
    push af                                       ; $6b20: $f5
    ld sp, hl                                     ; $6b21: $f9
    db $fd                                        ; $6b22: $fd
    ld sp, hl                                     ; $6b23: $f9
    ld bc, $018b                                  ; $6b24: $01 $8b $01
    nop                                           ; $6b27: $00
    ld b, $01                                     ; $6b28: $06 $01
    add hl, bc                                    ; $6b2a: $09
    rlca                                          ; $6b2b: $07
    ld [$1407], sp                                ; $6b2c: $08 $07 $14
    dec bc                                        ; $6b2f: $0b
    inc de                                        ; $6b30: $13
    ld [bc], a                                    ; $6b31: $02
    inc c                                         ; $6b32: $0c
    add l                                         ; $6b33: $85
    rlca                                          ; $6b34: $07
    cp e                                          ; $6b35: $bb
    or a                                          ; $6b36: $b7
    inc b                                         ; $6b37: $04
    inc bc                                        ; $6b38: $03
    ld c, $00                                     ; $6b39: $0e $00
    sub d                                         ; $6b3b: $92
    ldh [rP1], a                                  ; $6b3c: $e0 $00
    jr jr_0ee_6b20                                ; $6b3e: $18 $e0

    ld h, [hl]                                    ; $6b40: $66
    ld hl, sp-$2b                                 ; $6b41: $f8 $d5
    cp $7e                                        ; $6b43: $fe $7e
    rst $38                                       ; $6b45: $ff
    ld l, $ff                                     ; $6b46: $2e $ff
    add l                                         ; $6b48: $85

jr_0ee_6b49:
    ld a, a                                       ; $6b49: $7f
    ld h, d                                       ; $6b4a: $62
    rst $18                                       ; $6b4b: $df
    ld [$02f7], sp                                ; $6b4c: $08 $f7 $02
    nop                                           ; $6b4f: $00
    ld [bc], a                                    ; $6b50: $02
    dec bc                                        ; $6b51: $0b
    ld [de], a                                    ; $6b52: $12
    nop                                           ; $6b53: $00
    adc b                                         ; $6b54: $88
    ld [$0800], sp                                ; $6b55: $08 $00 $08
    nop                                           ; $6b58: $00
    inc b                                         ; $6b59: $04
    ld [$0800], sp                                ; $6b5a: $08 $00 $08
    ld [bc], a                                    ; $6b5d: $02
    ld bc, $000e                                  ; $6b5e: $01 $0e $00
    rst $38                                       ; $6b61: $ff
    rrca                                          ; $6b62: $0f
    dec b                                         ; $6b63: $05
    pop af                                        ; $6b64: $f1
    jr nz, jr_0ee_6b49                            ; $6b65: $20 $e2

    ld bc, $f8e3                                  ; $6b67: $01 $e3 $f8
    ld [c], a                                     ; $6b6a: $e2
    nop                                           ; $6b6b: $00
    ld [c], a                                     ; $6b6c: $e2
    rlca                                          ; $6b6d: $07
    ld a, [c]                                     ; $6b6e: $f2
    ei                                            ; $6b6f: $fb
    ld a, [c]                                     ; $6b70: $f2
    ld [bc], a                                    ; $6b71: $02
    ld [bc], a                                    ; $6b72: $02
    ld bc, $0286                                  ; $6b73: $01 $86 $02
    inc bc                                        ; $6b76: $03
    ld [bc], a                                    ; $6b77: $02
    inc bc                                        ; $6b78: $03
    ld [bc], a                                    ; $6b79: $02
    inc bc                                        ; $6b7a: $03
    inc b                                         ; $6b7b: $04
    ld bc, $0294                                  ; $6b7c: $01 $94 $02
    inc bc                                        ; $6b7f: $03
    ld a, d                                       ; $6b80: $7a
    ld a, e                                       ; $6b81: $7b
    rst $30                                       ; $6b82: $f7
    adc a                                         ; $6b83: $8f
    db $fd                                        ; $6b84: $fd
    add [hl]                                      ; $6b85: $86
    push af                                       ; $6b86: $f5
    adc [hl]                                      ; $6b87: $8e
    db $eb                                        ; $6b88: $eb
    sbc [hl]                                      ; $6b89: $9e
    ld [hl], a                                    ; $6b8a: $77
    ld a, d                                       ; $6b8b: $7a
    dec a                                         ; $6b8c: $3d
    inc sp                                        ; $6b8d: $33
    dec de                                        ; $6b8e: $1b
    ld e, $0f                                     ; $6b8f: $1e $0f
    inc c                                         ; $6b91: $0c
    ld [bc], a                                    ; $6b92: $02
    ldh a, [$9e]                                  ; $6b93: $f0 $9e
    ld a, b                                       ; $6b95: $78
    adc b                                         ; $6b96: $88
    db $f4                                        ; $6b97: $f4
    inc c                                         ; $6b98: $0c
    db $fc                                        ; $6b99: $fc
    inc b                                         ; $6b9a: $04
    ld b, [hl]                                    ; $6b9b: $46
    cp [hl]                                       ; $6b9c: $be
    ld a, [hl]                                    ; $6b9d: $7e
    cp $7e                                        ; $6b9e: $fe $7e
    xor d                                         ; $6ba0: $aa
    ld a, h                                       ; $6ba1: $7c
    call nc, Call_0ee_7e8e                        ; $6ba2: $d4 $8e $7e
    rst $38                                       ; $6ba5: $ff
    add hl, bc                                    ; $6ba6: $09
    ld sp, hl                                     ; $6ba7: $f9
    rst $30                                       ; $6ba8: $f7
    db $fd                                        ; $6ba9: $fd
    rlca                                          ; $6baa: $07
    cp $17                                        ; $6bab: $fe $17
    db $fd                                        ; $6bad: $fd
    ld d, $fb                                     ; $6bae: $16 $fb
    ld l, e                                       ; $6bb0: $6b
    cp [hl]                                       ; $6bb1: $be
    rst $18                                       ; $6bb2: $df
    ld [bc], a                                    ; $6bb3: $02
    ld [bc], a                                    ; $6bb4: $02
    xor h                                         ; $6bb5: $ac
    ld b, $05                                     ; $6bb6: $06 $05
    ld b, $05                                     ; $6bb8: $06 $05
    ld b, $05                                     ; $6bba: $06 $05
    inc c                                         ; $6bbc: $0c
    ld a, [bc]                                    ; $6bbd: $0a
    inc c                                         ; $6bbe: $0c
    ld a, [bc]                                    ; $6bbf: $0a
    inc c                                         ; $6bc0: $0c
    ld a, [bc]                                    ; $6bc1: $0a
    jr jr_0ee_6bd8                                ; $6bc2: $18 $14

    jr jr_0ee_6bda                                ; $6bc4: $18 $14

    jr jr_0ee_6bdc                                ; $6bc6: $18 $14

    jr nc, jr_0ee_6bf2                            ; $6bc8: $30 $28

    jr nc, @+$2a                                  ; $6bca: $30 $28

    ld [hl], b                                    ; $6bcc: $70
    ld l, b                                       ; $6bcd: $68
    ld h, b                                       ; $6bce: $60
    ld d, b                                       ; $6bcf: $50
    ld h, b                                       ; $6bd0: $60
    ld d, b                                       ; $6bd1: $50
    ld a, b                                       ; $6bd2: $78
    jr c, jr_0ee_6bdc                             ; $6bd3: $38 $07

    inc b                                         ; $6bd5: $04
    ld e, h                                       ; $6bd6: $5c
    ld a, a                                       ; $6bd7: $7f

jr_0ee_6bd8:
    or e                                          ; $6bd8: $b3
    rst $08                                       ; $6bd9: $cf

jr_0ee_6bda:
    and [hl]                                      ; $6bda: $a6
    rst $18                                       ; $6bdb: $df

jr_0ee_6bdc:
    db $fc                                        ; $6bdc: $fc
    adc a                                         ; $6bdd: $8f
    rst $30                                       ; $6bde: $f7
    rst $38                                       ; $6bdf: $ff
    ld e, [hl]                                    ; $6be0: $5e
    ld h, a                                       ; $6be1: $67
    ld [bc], a                                    ; $6be2: $02
    ld a, a                                       ; $6be3: $7f
    add d                                         ; $6be4: $82
    ld a, c                                       ; $6be5: $79
    ld c, c                                       ; $6be6: $49
    inc bc                                        ; $6be7: $03
    ld a, e                                       ; $6be8: $7b
    add h                                         ; $6be9: $84
    ld c, d                                       ; $6bea: $4a
    ld l, l                                       ; $6beb: $6d
    ld e, [hl]                                    ; $6bec: $5e
    ld [hl], a                                    ; $6bed: $77
    ld [bc], a                                    ; $6bee: $02
    ld d, l                                       ; $6bef: $55
    add h                                         ; $6bf0: $84
    ld [hl], a                                    ; $6bf1: $77

jr_0ee_6bf2:
    cp [hl]                                       ; $6bf2: $be
    bit 5, a                                      ; $6bf3: $cb $6f
    ld [bc], a                                    ; $6bf5: $02
    ld a, a                                       ; $6bf6: $7f
    adc l                                         ; $6bf7: $8d
    add hl, bc                                    ; $6bf8: $09
    dec a                                         ; $6bf9: $3d
    ld a, a                                       ; $6bfa: $7f
    ld a, e                                       ; $6bfb: $7b
    ld e, l                                       ; $6bfc: $5d
    ld d, [hl]                                    ; $6bfd: $56
    halt                                          ; $6bfe: $76
    ld a, [hl]                                    ; $6bff: $7e
    ld a, d                                       ; $6c00: $7a

jr_0ee_6c01:
    inc h                                         ; $6c01: $24
    ld h, h                                       ; $6c02: $64
    ld h, b                                       ; $6c03: $60
    jr nz, jr_0ee_6c08                            ; $6c04: $20 $02

    ld h, b                                       ; $6c06: $60
    add d                                         ; $6c07: $82

jr_0ee_6c08:
    ld d, b                                       ; $6c08: $50
    jr nc, @+$05                                  ; $6c09: $30 $03

    ld h, b                                       ; $6c0b: $60
    add c                                         ; $6c0c: $81
    jr nz, jr_0ee_6c11                            ; $6c0d: $20 $02

    ld b, b                                       ; $6c0f: $40
    ld [bc], a                                    ; $6c10: $02

jr_0ee_6c11:
    nop                                           ; $6c11: $00
    ld [bc], a                                    ; $6c12: $02
    ld h, b                                       ; $6c13: $60
    add d                                         ; $6c14: $82
    ld [hl], b                                    ; $6c15: $70
    db $10                                        ; $6c16: $10
    ld [bc], a                                    ; $6c17: $02
    ld h, b                                       ; $6c18: $60
    rst $38                                       ; $6c19: $ff
    rrca                                          ; $6c1a: $0f
    dec b                                         ; $6c1b: $05
    pop af                                        ; $6c1c: $f1
    jr nz, jr_0ee_6c01                            ; $6c1d: $20 $e2

    ld bc, $f8e3                                  ; $6c1f: $01 $e3 $f8
    ld [c], a                                     ; $6c22: $e2
    nop                                           ; $6c23: $00
    db $e3                                        ; $6c24: $e3
    rlca                                          ; $6c25: $07
    ld a, [c]                                     ; $6c26: $f2
    ei                                            ; $6c27: $fb
    ld a, [c]                                     ; $6c28: $f2
    ld [bc], a                                    ; $6c29: $02
    ld [bc], a                                    ; $6c2a: $02
    ld bc, $0288                                  ; $6c2b: $01 $88 $02
    inc bc                                        ; $6c2e: $03
    ld [bc], a                                    ; $6c2f: $02
    inc bc                                        ; $6c30: $03
    ld [bc], a                                    ; $6c31: $02
    inc bc                                        ; $6c32: $03
    ld [bc], a                                    ; $6c33: $02
    inc bc                                        ; $6c34: $03
    inc b                                         ; $6c35: $04
    ld bc, $7a8d                                  ; $6c36: $01 $8d $7a
    ld a, e                                       ; $6c39: $7b
    rst $30                                       ; $6c3a: $f7
    adc a                                         ; $6c3b: $8f
    ei                                            ; $6c3c: $fb
    add [hl]                                      ; $6c3d: $86
    db $fd                                        ; $6c3e: $fd
    add [hl]                                      ; $6c3f: $86
    db $ed                                        ; $6c40: $ed
    sbc [hl]                                      ; $6c41: $9e
    ld a, e                                       ; $6c42: $7b
    halt                                          ; $6c43: $76
    dec hl                                        ; $6c44: $2b
    ld [bc], a                                    ; $6c45: $02
    scf                                           ; $6c46: $37
    add e                                         ; $6c47: $83
    inc a                                         ; $6c48: $3c
    dec de                                        ; $6c49: $1b
    dec e                                         ; $6c4a: $1d
    ld [bc], a                                    ; $6c4b: $02
    ldh a, [$9e]                                  ; $6c4c: $f0 $9e
    ld a, b                                       ; $6c4e: $78
    adc b                                         ; $6c4f: $88
    db $fc                                        ; $6c50: $fc
    inc b                                         ; $6c51: $04
    db $fc                                        ; $6c52: $fc
    inc b                                         ; $6c53: $04
    ld a, [hl]                                    ; $6c54: $7e
    cp $7e                                        ; $6c55: $fe $7e
    xor d                                         ; $6c57: $aa
    ld a, h                                       ; $6c58: $7c
    sub h                                         ; $6c59: $94
    ld l, b                                       ; $6c5a: $68
    cp b                                          ; $6c5b: $b8
    or $0e                                        ; $6c5c: $f6 $0e
    rst $38                                       ; $6c5e: $ff
    ld sp, hl                                     ; $6c5f: $f9
    rst $38                                       ; $6c60: $ff
    dec d                                         ; $6c61: $15
    db $fd                                        ; $6c62: $fd
    rlca                                          ; $6c63: $07
    rst $38                                       ; $6c64: $ff
    rla                                           ; $6c65: $17
    db $fd                                        ; $6c66: $fd
    ld d, $fd                                     ; $6c67: $16 $fd
    ld l, [hl]                                    ; $6c69: $6e
    rst $38                                       ; $6c6a: $ff
    sbc a                                         ; $6c6b: $9f
    ld [bc], a                                    ; $6c6c: $02
    ld [bc], a                                    ; $6c6d: $02
    xor h                                         ; $6c6e: $ac
    ld b, $05                                     ; $6c6f: $06 $05
    ld b, $05                                     ; $6c71: $06 $05
    ld b, $05                                     ; $6c73: $06 $05
    inc c                                         ; $6c75: $0c
    ld a, [bc]                                    ; $6c76: $0a
    inc c                                         ; $6c77: $0c
    ld a, [bc]                                    ; $6c78: $0a
    inc c                                         ; $6c79: $0c
    ld a, [bc]                                    ; $6c7a: $0a
    jr jr_0ee_6c91                                ; $6c7b: $18 $14

    jr jr_0ee_6c93                                ; $6c7d: $18 $14

    jr jr_0ee_6c95                                ; $6c7f: $18 $14

    jr nc, jr_0ee_6cab                            ; $6c81: $30 $28

    jr nc, jr_0ee_6cad                            ; $6c83: $30 $28

    ld [hl], b                                    ; $6c85: $70
    ld l, b                                       ; $6c86: $68
    ld h, b                                       ; $6c87: $60
    ld d, b                                       ; $6c88: $50
    ld h, b                                       ; $6c89: $60
    ld d, b                                       ; $6c8a: $50
    cp b                                          ; $6c8b: $b8
    ld a, b                                       ; $6c8c: $78
    inc bc                                        ; $6c8d: $03
    inc b                                         ; $6c8e: $04
    ld l, c                                       ; $6c8f: $69
    ld a, a                                       ; $6c90: $7f

jr_0ee_6c91:
    or a                                          ; $6c91: $b7
    rst $08                                       ; $6c92: $cf

jr_0ee_6c93:
    and [hl]                                      ; $6c93: $a6
    rst $18                                       ; $6c94: $df

jr_0ee_6c95:
    db $fc                                        ; $6c95: $fc
    adc a                                         ; $6c96: $8f
    rst $30                                       ; $6c97: $f7
    rst $38                                       ; $6c98: $ff
    ld e, [hl]                                    ; $6c99: $5e
    ld h, a                                       ; $6c9a: $67
    ld [bc], a                                    ; $6c9b: $02
    ld a, a                                       ; $6c9c: $7f
    add d                                         ; $6c9d: $82
    ld a, $27                                     ; $6c9e: $3e $27
    ld [bc], a                                    ; $6ca0: $02
    ld a, e                                       ; $6ca1: $7b
    add l                                         ; $6ca2: $85
    ld e, l                                       ; $6ca3: $5d
    ld l, [hl]                                    ; $6ca4: $6e
    ld a, a                                       ; $6ca5: $7f
    ld c, h                                       ; $6ca6: $4c
    ld [hl], a                                    ; $6ca7: $77
    ld [bc], a                                    ; $6ca8: $02
    ld d, l                                       ; $6ca9: $55
    adc l                                         ; $6caa: $8d

jr_0ee_6cab:
    ld [hl], a                                    ; $6cab: $77
    cp [hl]                                       ; $6cac: $be

jr_0ee_6cad:
    bit 5, a                                      ; $6cad: $cb $6f
    ld a, a                                       ; $6caf: $7f
    ld a, b                                       ; $6cb0: $78
    ld [$7967], sp                                ; $6cb1: $08 $67 $79
    ld a, l                                       ; $6cb4: $7d
    ld e, a                                       ; $6cb5: $5f
    ld e, e                                       ; $6cb6: $5b

jr_0ee_6cb7:
    ld a, l                                       ; $6cb7: $7d
    ld [bc], a                                    ; $6cb8: $02
    halt                                          ; $6cb9: $76
    add h                                         ; $6cba: $84
    ld l, $6a                                     ; $6cbb: $2e $6a
    ld h, h                                       ; $6cbd: $64
    inc h                                         ; $6cbe: $24
    ld [bc], a                                    ; $6cbf: $02
    ld b, b                                       ; $6cc0: $40
    add d                                         ; $6cc1: $82
    ld h, b                                       ; $6cc2: $60
    jr nz, jr_0ee_6ccb                            ; $6cc3: $20 $06

    ld b, b                                       ; $6cc5: $40
    ld [bc], a                                    ; $6cc6: $02
    nop                                           ; $6cc7: $00
    ld [bc], a                                    ; $6cc8: $02
    ld h, b                                       ; $6cc9: $60
    add d                                         ; $6cca: $82

jr_0ee_6ccb:
    ld [hl], b                                    ; $6ccb: $70
    db $10                                        ; $6ccc: $10
    ld [bc], a                                    ; $6ccd: $02
    ld h, b                                       ; $6cce: $60
    rst $38                                       ; $6ccf: $ff
    ld de, $f106                                  ; $6cd0: $11 $06 $f1
    jr nz, jr_0ee_6cb7                            ; $6cd3: $20 $e2

    ld bc, $f7e3                                  ; $6cd5: $01 $e3 $f7
    ld [c], a                                     ; $6cd8: $e2
    rst $38                                       ; $6cd9: $ff
    push hl                                       ; $6cda: $e5
    rlca                                          ; $6cdb: $07
    and $08                                       ; $6cdc: $e6 $08
    ld a, [c]                                     ; $6cde: $f2
    ld a, [$00f2]                                 ; $6cdf: $fa $f2 $00
    ld [bc], a                                    ; $6ce2: $02
    ld bc, $0288                                  ; $6ce3: $01 $88 $02
    inc bc                                        ; $6ce6: $03
    ld [bc], a                                    ; $6ce7: $02
    inc bc                                        ; $6ce8: $03
    ld [bc], a                                    ; $6ce9: $02
    inc bc                                        ; $6cea: $03
    ld [bc], a                                    ; $6ceb: $02
    inc bc                                        ; $6cec: $03
    inc b                                         ; $6ced: $04
    ld bc, $3b92                                  ; $6cee: $01 $92 $3b
    ld a, [hl-]                                   ; $6cf1: $3a
    ld a, a                                       ; $6cf2: $7f
    ld b, a                                       ; $6cf3: $47
    ld a, [$ff87]                                 ; $6cf4: $fa $87 $ff
    add [hl]                                      ; $6cf7: $86
    db $ed                                        ; $6cf8: $ed
    sbc [hl]                                      ; $6cf9: $9e
    ld a, e                                       ; $6cfa: $7b
    halt                                          ; $6cfb: $76
    ld l, $33                                     ; $6cfc: $2e $33
    inc de                                        ; $6cfe: $13
    rra                                           ; $6cff: $1f
    rla                                           ; $6d00: $17
    inc e                                         ; $6d01: $1c
    ld [bc], a                                    ; $6d02: $02
    ldh a, [$93]                                  ; $6d03: $f0 $93
    add sp, $18                                   ; $6d05: $e8 $18
    db $f4                                        ; $6d07: $f4
    inc c                                         ; $6d08: $0c
    db $fc                                        ; $6d09: $fc
    ld a, h                                       ; $6d0a: $7c
    cp $2a                                        ; $6d0b: $fe $2a

jr_0ee_6d0d:
    ld a, h                                       ; $6d0d: $7c
    sub h                                         ; $6d0e: $94
    ld l, b                                       ; $6d0f: $68
    cp b                                          ; $6d10: $b8
    ld hl, sp+$08                                 ; $6d11: $f8 $08
    ld c, $f6                                     ; $6d13: $0e $f6
    ei                                            ; $6d15: $fb
    db $fd                                        ; $6d16: $fd
    rla                                           ; $6d17: $17
    ld [bc], a                                    ; $6d18: $02
    db $fd                                        ; $6d19: $fd
    adc c                                         ; $6d1a: $89
    rlca                                          ; $6d1b: $07
    rst $38                                       ; $6d1c: $ff
    rla                                           ; $6d1d: $17
    db $fc                                        ; $6d1e: $fc
    rla                                           ; $6d1f: $17
    or $2d                                        ; $6d20: $f6 $2d
    cp $6f                                        ; $6d22: $fe $6f
    ld [bc], a                                    ; $6d24: $02
    ld bc, $03a2                                  ; $6d25: $01 $a2 $03
    ld [bc], a                                    ; $6d28: $02
    inc bc                                        ; $6d29: $03
    ld [bc], a                                    ; $6d2a: $02
    ld b, $05                                     ; $6d2b: $06 $05
    ld b, $05                                     ; $6d2d: $06 $05
    inc c                                         ; $6d2f: $0c
    ld a, [bc]                                    ; $6d30: $0a
    inc c                                         ; $6d31: $0c
    ld a, [bc]                                    ; $6d32: $0a
    jr jr_0ee_6d49                                ; $6d33: $18 $14

    jr jr_0ee_6d4b                                ; $6d35: $18 $14

    jr nc, jr_0ee_6d61                            ; $6d37: $30 $28

    or b                                          ; $6d39: $b0
    xor b                                         ; $6d3a: $a8
    ldh [$d0], a                                  ; $6d3b: $e0 $d0
    ldh [$d0], a                                  ; $6d3d: $e0 $d0
    ret nz                                        ; $6d3f: $c0

    and b                                         ; $6d40: $a0
    ldh [$60], a                                  ; $6d41: $e0 $60
    ldh a, [rSVBK]                                ; $6d43: $f0 $70
    nop                                           ; $6d45: $00
    ld bc, $0100                                  ; $6d46: $01 $00 $01

jr_0ee_6d49:
    ld a, [de]                                    ; $6d49: $1a
    nop                                           ; $6d4a: $00

jr_0ee_6d4b:
    ld [bc], a                                    ; $6d4b: $02
    add b                                         ; $6d4c: $80
    adc [hl]                                      ; $6d4d: $8e
    rlca                                          ; $6d4e: $07
    inc b                                         ; $6d4f: $04
    ld a, e                                       ; $6d50: $7b
    ld l, h                                       ; $6d51: $6c
    ld sp, hl                                     ; $6d52: $f9
    rst $18                                       ; $6d53: $df
    and a                                         ; $6d54: $a7
    rst $18                                       ; $6d55: $df
    db $fc                                        ; $6d56: $fc
    adc a                                         ; $6d57: $8f
    ld [hl], a                                    ; $6d58: $77
    ld a, a                                       ; $6d59: $7f
    ld c, [hl]                                    ; $6d5a: $4e

Jump_0ee_6d5b:
    ld [hl], a                                    ; $6d5b: $77
    ld [bc], a                                    ; $6d5c: $02
    ccf                                           ; $6d5d: $3f
    add d                                         ; $6d5e: $82
    ld a, $27                                     ; $6d5f: $3e $27

jr_0ee_6d61:
    ld [bc], a                                    ; $6d61: $02
    ccf                                           ; $6d62: $3f
    add l                                         ; $6d63: $85
    scf                                           ; $6d64: $37
    ld l, $37                                     ; $6d65: $2e $37
    ld l, $3b                                     ; $6d67: $2e $3b
    ld [bc], a                                    ; $6d69: $02
    ld a, [hl+]                                   ; $6d6a: $2a
    add l                                         ; $6d6b: $85
    dec sp                                        ; $6d6c: $3b
    ld e, a                                       ; $6d6d: $5f
    ld h, l                                       ; $6d6e: $65
    scf                                           ; $6d6f: $37
    ccf                                           ; $6d70: $3f
    ld [bc], a                                    ; $6d71: $02
    ld a, $88                                     ; $6d72: $3e $88
    inc a                                         ; $6d74: $3c
    ld b, $36                                     ; $6d75: $06 $36
    inc a                                         ; $6d77: $3c
    ld l, $3f                                     ; $6d78: $2e $3f
    cpl                                           ; $6d7a: $2f
    dec a                                         ; $6d7b: $3d
    ld [bc], a                                    ; $6d7c: $02
    scf                                           ; $6d7d: $37

jr_0ee_6d7e:
    add d                                         ; $6d7e: $82
    ld a, $1a                                     ; $6d7f: $3e $1a
    ld [bc], a                                    ; $6d81: $02
    inc [hl]                                      ; $6d82: $34
    add d                                         ; $6d83: $82
    jr nc, @+$12                                  ; $6d84: $30 $10

    ld [bc], a                                    ; $6d86: $02
    jr nz, jr_0ee_6d0d                            ; $6d87: $20 $84

    db $10                                        ; $6d89: $10
    jr nc, jr_0ee_6d9c                            ; $6d8a: $30 $10

    jr nc, jr_0ee_6d90                            ; $6d8c: $30 $02

    jr nz, jr_0ee_6d92                            ; $6d8e: $20 $02

jr_0ee_6d90:
    jr c, @-$7c                                   ; $6d90: $38 $82

jr_0ee_6d92:
    inc e                                         ; $6d92: $1c
    inc h                                         ; $6d93: $24
    ld [bc], a                                    ; $6d94: $02
    jr c, @+$01                                   ; $6d95: $38 $ff

    ld de, $f106                                  ; $6d97: $11 $06 $f1
    jr nz, jr_0ee_6d7e                            ; $6d9a: $20 $e2

jr_0ee_6d9c:
    ld bc, $f8e3                                  ; $6d9c: $01 $e3 $f8
    db $e3                                        ; $6d9f: $e3
    nop                                           ; $6da0: $00
    db $e4                                        ; $6da1: $e4
    ld [$09e5], sp                                ; $6da2: $08 $e5 $09
    di                                            ; $6da5: $f3
    ei                                            ; $6da6: $fb
    di                                            ; $6da7: $f3
    ld bc, $0102                                  ; $6da8: $01 $02 $01
    adc e                                         ; $6dab: $8b
    inc bc                                        ; $6dac: $03
    ld [bc], a                                    ; $6dad: $02
    dec b                                         ; $6dae: $05
    ld b, $05                                     ; $6daf: $06 $05
    ld b, $05                                     ; $6db1: $06 $05
    ld b, $04                                     ; $6db3: $06 $04
    rlca                                          ; $6db5: $07
    ld [bc], a                                    ; $6db6: $02
    ld [bc], a                                    ; $6db7: $02
    inc bc                                        ; $6db8: $03

jr_0ee_6db9:
    sub c                                         ; $6db9: $91
    ld [bc], a                                    ; $6dba: $02
    ld a, [hl]                                    ; $6dbb: $7e
    ld a, l                                       ; $6dbc: $7d
    or a                                          ; $6dbd: $b7
    rst $08                                       ; $6dbe: $cf
    db $fd                                        ; $6dbf: $fd
    add [hl]                                      ; $6dc0: $86
    push af                                       ; $6dc1: $f5
    adc [hl]                                      ; $6dc2: $8e
    db $eb                                        ; $6dc3: $eb
    sbc [hl]                                      ; $6dc4: $9e
    ld a, e                                       ; $6dc5: $7b
    ld a, l                                       ; $6dc6: $7d
    ld e, $19                                     ; $6dc7: $1e $19
    dec de                                        ; $6dc9: $1b
    ld e, $02                                     ; $6dca: $1e $02
    ldh [$84], a                                  ; $6dcc: $e0 $84
    ret nc                                        ; $6dce: $d0

    jr nc, jr_0ee_6db9                            ; $6dcf: $30 $e8

    jr jr_0ee_6dd5                                ; $6dd1: $18 $02

    ld hl, sp-$68                                 ; $6dd3: $f8 $98

jr_0ee_6dd5:
    db $fc                                        ; $6dd5: $fc

jr_0ee_6dd6:
    ld d, h                                       ; $6dd6: $54
    ld hl, sp+$28                                 ; $6dd7: $f8 $28
    ret nc                                        ; $6dd9: $d0

    ld [hl], b                                    ; $6dda: $70
    ldh a, [rNR10]                                ; $6ddb: $f0 $10
    ld e, $ee                                     ; $6ddd: $1e $ee
    ei                                            ; $6ddf: $fb
    db $fd                                        ; $6de0: $fd
    rst $38                                       ; $6de1: $ff
    dec d                                         ; $6de2: $15
    db $fd                                        ; $6de3: $fd
    rlca                                          ; $6de4: $07
    rst $38                                       ; $6de5: $ff
    ld d, $dd                                     ; $6de6: $16 $dd
    ld [hl], $fb                                  ; $6de8: $36 $fb
    ld l, e                                       ; $6dea: $6b
    cp [hl]                                       ; $6deb: $be
    rst $18                                       ; $6dec: $df
    ld [bc], a                                    ; $6ded: $02
    ld bc, $03a2                                  ; $6dee: $01 $a2 $03
    ld [bc], a                                    ; $6df1: $02
    inc bc                                        ; $6df2: $03
    ld [bc], a                                    ; $6df3: $02
    ld b, $05                                     ; $6df4: $06 $05
    ld b, $05                                     ; $6df6: $06 $05
    inc c                                         ; $6df8: $0c
    ld a, [bc]                                    ; $6df9: $0a
    inc c                                         ; $6dfa: $0c
    ld a, [bc]                                    ; $6dfb: $0a
    jr jr_0ee_6e12                                ; $6dfc: $18 $14

    jr jr_0ee_6e14                                ; $6dfe: $18 $14

    jr nc, jr_0ee_6e2a                            ; $6e00: $30 $28

    jr nc, jr_0ee_6e2c                            ; $6e02: $30 $28

    ldh [$d0], a                                  ; $6e04: $e0 $d0
    ldh [$d0], a                                  ; $6e06: $e0 $d0
    ret nz                                        ; $6e08: $c0

    and b                                         ; $6e09: $a0
    ldh [$60], a                                  ; $6e0a: $e0 $60
    ldh a, [rSVBK]                                ; $6e0c: $f0 $70
    nop                                           ; $6e0e: $00
    ld bc, $0100                                  ; $6e0f: $01 $00 $01

jr_0ee_6e12:
    ld a, [de]                                    ; $6e12: $1a
    nop                                           ; $6e13: $00

jr_0ee_6e14:
    ld [bc], a                                    ; $6e14: $02
    add b                                         ; $6e15: $80
    adc h                                         ; $6e16: $8c
    ld a, a                                       ; $6e17: $7f
    ld h, h                                       ; $6e18: $64
    ld e, h                                       ; $6e19: $5c
    ld a, a                                       ; $6e1a: $7f
    or e                                          ; $6e1b: $b3
    rst $08                                       ; $6e1c: $cf
    and l                                         ; $6e1d: $a5
    rst $18                                       ; $6e1e: $df
    rst $38                                       ; $6e1f: $ff
    adc a                                         ; $6e20: $8f
    or $ff                                        ; $6e21: $f6 $ff
    ld [bc], a                                    ; $6e23: $02
    ld a, a                                       ; $6e24: $7f
    add d                                         ; $6e25: $82
    ld a, $27                                     ; $6e26: $3e $27
    ld [bc], a                                    ; $6e28: $02
    ld a, e                                       ; $6e29: $7b

jr_0ee_6e2a:
    add l                                         ; $6e2a: $85
    ld e, l                                       ; $6e2b: $5d

jr_0ee_6e2c:
    ld l, [hl]                                    ; $6e2c: $6e
    ld a, a                                       ; $6e2d: $7f
    ld c, h                                       ; $6e2e: $4c
    ld [hl], a                                    ; $6e2f: $77
    ld [bc], a                                    ; $6e30: $02
    ld d, l                                       ; $6e31: $55
    add l                                         ; $6e32: $85
    ld [hl], a                                    ; $6e33: $77
    cp [hl]                                       ; $6e34: $be
    bit 5, a                                      ; $6e35: $cb $6f
    ld a, a                                       ; $6e37: $7f
    ld [bc], a                                    ; $6e38: $02
    nop                                           ; $6e39: $00
    add e                                         ; $6e3a: $83
    ld a, $04                                     ; $6e3b: $3e $04
    ld d, $02                                     ; $6e3d: $16 $02
    ccf                                           ; $6e3f: $3f
    add a                                         ; $6e40: $87
    dec l                                         ; $6e41: $2d

jr_0ee_6e42:
    cpl                                           ; $6e42: $2f
    ccf                                           ; $6e43: $3f
    ld a, $3a                                     ; $6e44: $3e $3a
    inc d                                         ; $6e46: $14
    inc [hl]                                      ; $6e47: $34
    ld [bc], a                                    ; $6e48: $02
    jr nz, @-$7c                                  ; $6e49: $20 $82

    jr nc, jr_0ee_6e5d                            ; $6e4b: $30 $10

    ld b, $20                                     ; $6e4d: $06 $20
    ld [bc], a                                    ; $6e4f: $02
    nop                                           ; $6e50: $00
    ld [bc], a                                    ; $6e51: $02
    jr nc, jr_0ee_6dd6                            ; $6e52: $30 $82

    jr c, jr_0ee_6e5e                             ; $6e54: $38 $08

    ld [bc], a                                    ; $6e56: $02
    jr nc, jr_0ee_6e5b                            ; $6e57: $30 $02

    nop                                           ; $6e59: $00
    rst $38                                       ; $6e5a: $ff

jr_0ee_6e5b:
    rrca                                          ; $6e5b: $0f
    dec b                                         ; $6e5c: $05

jr_0ee_6e5d:
    pop af                                        ; $6e5d: $f1

jr_0ee_6e5e:
    jr nz, jr_0ee_6e42                            ; $6e5e: $20 $e2

    ld bc, $f8e2                                  ; $6e60: $01 $e2 $f8
    ld [c], a                                     ; $6e63: $e2
    nop                                           ; $6e64: $00
    ld [c], a                                     ; $6e65: $e2
    ld [$fbf2], sp                                ; $6e66: $08 $f2 $fb
    ld a, [c]                                     ; $6e69: $f2
    inc bc                                        ; $6e6a: $03
    ld [bc], a                                    ; $6e6b: $02
    ld bc, $0290                                  ; $6e6c: $01 $90 $02
    inc bc                                        ; $6e6f: $03
    dec b                                         ; $6e70: $05
    ld b, $05                                     ; $6e71: $06 $05
    ld b, $04                                     ; $6e73: $06 $04
    rlca                                          ; $6e75: $07
    inc b                                         ; $6e76: $04
    rlca                                          ; $6e77: $07
    ld [bc], a                                    ; $6e78: $02
    inc bc                                        ; $6e79: $03
    ld [bc], a                                    ; $6e7a: $02
    inc bc                                        ; $6e7b: $03
    dec b                                         ; $6e7c: $05
    ld b, $02                                     ; $6e7d: $06 $02
    ld a, a                                       ; $6e7f: $7f
    adc h                                         ; $6e80: $8c
    db $fd                                        ; $6e81: $fd
    add [hl]                                      ; $6e82: $86
    push af                                       ; $6e83: $f5
    adc [hl]                                      ; $6e84: $8e
    rst $30                                       ; $6e85: $f7
    adc [hl]                                      ; $6e86: $8e
    ld a, d                                       ; $6e87: $7a
    ld c, l                                       ; $6e88: $4d
    ld [hl], l                                    ; $6e89: $75
    ld a, e                                       ; $6e8a: $7b
    dec de                                        ; $6e8b: $1b
    inc e                                         ; $6e8c: $1c
    ld [bc], a                                    ; $6e8d: $02
    ldh [$86], a                                  ; $6e8e: $e0 $86
    ldh a, [rNR10]                                ; $6e90: $f0 $10
    ld hl, sp+$08                                 ; $6e92: $f8 $08
    ld hl, sp+$08                                 ; $6e94: $f8 $08
    inc bc                                        ; $6e96: $03
    db $fc                                        ; $6e97: $fc
    add a                                         ; $6e98: $87
    ld d, h                                       ; $6e99: $54
    ld hl, sp+$28                                 ; $6e9a: $f8 $28
    ret nc                                        ; $6e9c: $d0

    ld [hl], b                                    ; $6e9d: $70
    add sp, $18                                   ; $6e9e: $e8 $18
    ld [bc], a                                    ; $6ea0: $02
    cp $8c                                        ; $6ea1: $fe $8c
    ei                                            ; $6ea3: $fb
    dec d                                         ; $6ea4: $15
    ei                                            ; $6ea5: $fb
    dec b                                         ; $6ea6: $05
    db $fd                                        ; $6ea7: $fd
    rla                                           ; $6ea8: $17
    rst $38                                       ; $6ea9: $ff
    ld d, $fb                                     ; $6eaa: $16 $fb
    ld l, e                                       ; $6eac: $6b
    cp [hl]                                       ; $6ead: $be
    rst $18                                       ; $6eae: $df
    ld [bc], a                                    ; $6eaf: $02
    ld [bc], a                                    ; $6eb0: $02
    xor h                                         ; $6eb1: $ac
    ld b, $05                                     ; $6eb2: $06 $05
    ld b, $05                                     ; $6eb4: $06 $05
    ld b, $05                                     ; $6eb6: $06 $05
    inc c                                         ; $6eb8: $0c
    ld a, [bc]                                    ; $6eb9: $0a
    inc c                                         ; $6eba: $0c
    ld a, [bc]                                    ; $6ebb: $0a
    jr jr_0ee_6ed2                                ; $6ebc: $18 $14

    jr jr_0ee_6ed4                                ; $6ebe: $18 $14

    jr jr_0ee_6ed6                                ; $6ec0: $18 $14

    jr nc, jr_0ee_6eec                            ; $6ec2: $30 $28

    jr nc, jr_0ee_6eee                            ; $6ec4: $30 $28

    ld h, b                                       ; $6ec6: $60
    ld d, b                                       ; $6ec7: $50
    ldh [$d0], a                                  ; $6ec8: $e0 $d0
    ldh [$d0], a                                  ; $6eca: $e0 $d0
    ret nz                                        ; $6ecc: $c0

    and b                                         ; $6ecd: $a0
    ldh a, [rSVBK]                                ; $6ece: $f0 $70
    ld a, a                                       ; $6ed0: $7f
    ld l, h                                       ; $6ed1: $6c

jr_0ee_6ed2:
    ld e, h                                       ; $6ed2: $5c
    ld a, a                                       ; $6ed3: $7f

jr_0ee_6ed4:
    or e                                          ; $6ed4: $b3
    rst $08                                       ; $6ed5: $cf

jr_0ee_6ed6:
    and [hl]                                      ; $6ed6: $a6
    rst $18                                       ; $6ed7: $df
    db $fc                                        ; $6ed8: $fc
    adc a                                         ; $6ed9: $8f
    rst $30                                       ; $6eda: $f7
    rst $38                                       ; $6edb: $ff
    ld e, [hl]                                    ; $6edc: $5e
    ld h, a                                       ; $6edd: $67
    ld [bc], a                                    ; $6ede: $02
    ld a, a                                       ; $6edf: $7f
    add d                                         ; $6ee0: $82
    ld [hl], l                                    ; $6ee1: $75
    ld c, l                                       ; $6ee2: $4d
    inc bc                                        ; $6ee3: $03
    ld a, e                                       ; $6ee4: $7b
    add h                                         ; $6ee5: $84
    ld c, d                                       ; $6ee6: $4a
    ld l, l                                       ; $6ee7: $6d
    ld e, [hl]                                    ; $6ee8: $5e
    ld [hl], a                                    ; $6ee9: $77
    ld [bc], a                                    ; $6eea: $02
    ld d, l                                       ; $6eeb: $55

jr_0ee_6eec:
    sub e                                         ; $6eec: $93
    ld [hl], a                                    ; $6eed: $77

jr_0ee_6eee:
    cp [hl]                                       ; $6eee: $be
    bit 5, a                                      ; $6eef: $cb $6f
    ld a, a                                       ; $6ef1: $7f
    rst $38                                       ; $6ef2: $ff
    inc de                                        ; $6ef3: $13
    ld a, d                                       ; $6ef4: $7a
    cp $f6                                        ; $6ef5: $fe $f6
    cp d                                          ; $6ef7: $ba
    xor h                                         ; $6ef8: $ac
    db $ec                                        ; $6ef9: $ec
    db $fc                                        ; $6efa: $fc
    db $f4                                        ; $6efb: $f4

jr_0ee_6efc:
    ld c, b                                       ; $6efc: $48
    ret z                                         ; $6efd: $c8

    ret nz                                        ; $6efe: $c0

    ld b, b                                       ; $6eff: $40
    ld [bc], a                                    ; $6f00: $02
    ret nz                                        ; $6f01: $c0

Jump_0ee_6f02:
    add d                                         ; $6f02: $82
    and b                                         ; $6f03: $a0
    ld h, b                                       ; $6f04: $60
    inc bc                                        ; $6f05: $03
    ret nz                                        ; $6f06: $c0

    add c                                         ; $6f07: $81
    ld b, b                                       ; $6f08: $40
    ld [bc], a                                    ; $6f09: $02
    add b                                         ; $6f0a: $80
    ld [bc], a                                    ; $6f0b: $02
    nop                                           ; $6f0c: $00
    ld [bc], a                                    ; $6f0d: $02
    ret nz                                        ; $6f0e: $c0

    add d                                         ; $6f0f: $82
    ldh [rNR41], a                                ; $6f10: $e0 $20
    ld [bc], a                                    ; $6f12: $02
    ret nz                                        ; $6f13: $c0

    rst $38                                       ; $6f14: $ff
    rrca                                          ; $6f15: $0f
    dec b                                         ; $6f16: $05
    pop af                                        ; $6f17: $f1
    jr nz, jr_0ee_6efc                            ; $6f18: $20 $e2

    ld bc, $f9e2                                  ; $6f1a: $01 $e2 $f9
    ld [c], a                                     ; $6f1d: $e2
    ld bc, $08e2                                  ; $6f1e: $01 $e2 $08
    ld a, [c]                                     ; $6f21: $f2
    ei                                            ; $6f22: $fb
    ld a, [c]                                     ; $6f23: $f2
    inc bc                                        ; $6f24: $03
    ld [bc], a                                    ; $6f25: $02
    ld bc, $029e                                  ; $6f26: $01 $9e $02
    inc bc                                        ; $6f29: $03
    dec b                                         ; $6f2a: $05
    ld b, $05                                     ; $6f2b: $06 $05
    ld b, $04                                     ; $6f2d: $06 $04
    rlca                                          ; $6f2f: $07
    inc b                                         ; $6f30: $04
    rlca                                          ; $6f31: $07
    ld [bc], a                                    ; $6f32: $02
    inc bc                                        ; $6f33: $03
    ld [bc], a                                    ; $6f34: $02
    inc bc                                        ; $6f35: $03
    ld a, l                                       ; $6f36: $7d
    ld a, [hl]                                    ; $6f37: $7e
    rst $20                                       ; $6f38: $e7
    sbc a                                         ; $6f39: $9f
    db $fd                                        ; $6f3a: $fd
    add [hl]                                      ; $6f3b: $86
    push af                                       ; $6f3c: $f5
    adc [hl]                                      ; $6f3d: $8e
    db $eb                                        ; $6f3e: $eb
    sbc [hl]                                      ; $6f3f: $9e
    halt                                          ; $6f40: $76
    ld a, e                                       ; $6f41: $7b
    dec a                                         ; $6f42: $3d
    inc sp                                        ; $6f43: $33
    dec de                                        ; $6f44: $1b
    ld e, $02                                     ; $6f45: $1e $02
    ldh [$86], a                                  ; $6f47: $e0 $86
    ldh a, [rNR10]                                ; $6f49: $f0 $10
    ld hl, sp+$08                                 ; $6f4b: $f8 $08
    ld hl, sp+$08                                 ; $6f4d: $f8 $08
    inc bc                                        ; $6f4f: $03
    db $fc                                        ; $6f50: $fc
    sub l                                         ; $6f51: $95
    ld d, h                                       ; $6f52: $54
    ld hl, sp+$28                                 ; $6f53: $f8 $28
    ret nc                                        ; $6f55: $d0

    ld [hl], b                                    ; $6f56: $70
    xor $1e                                       ; $6f57: $ee $1e
    db $fd                                        ; $6f59: $fd
    ei                                            ; $6f5a: $fb
    rst $38                                       ; $6f5b: $ff
    dec d                                         ; $6f5c: $15
    db $fd                                        ; $6f5d: $fd
    rlca                                          ; $6f5e: $07
    cp $17                                        ; $6f5f: $fe $17
    db $dd                                        ; $6f61: $dd
    ld [hl], $fb                                  ; $6f62: $36 $fb
    ld l, e                                       ; $6f64: $6b
    cp [hl]                                       ; $6f65: $be
    rst $18                                       ; $6f66: $df
    ld [bc], a                                    ; $6f67: $02
    ld [bc], a                                    ; $6f68: $02
    xor b                                         ; $6f69: $a8
    ld b, $05                                     ; $6f6a: $06 $05
    ld b, $05                                     ; $6f6c: $06 $05
    ld b, $05                                     ; $6f6e: $06 $05
    inc c                                         ; $6f70: $0c
    ld a, [bc]                                    ; $6f71: $0a
    inc c                                         ; $6f72: $0c
    ld a, [bc]                                    ; $6f73: $0a
    inc c                                         ; $6f74: $0c
    ld a, [bc]                                    ; $6f75: $0a
    jr jr_0ee_6f8c                                ; $6f76: $18 $14

    jr jr_0ee_6f8e                                ; $6f78: $18 $14

    jr jr_0ee_6f90                                ; $6f7a: $18 $14

    jr nc, jr_0ee_6fa6                            ; $6f7c: $30 $28

    jr nc, jr_0ee_6fa8                            ; $6f7e: $30 $28

    ld [hl], b                                    ; $6f80: $70
    ld l, b                                       ; $6f81: $68
    ld h, b                                       ; $6f82: $60
    ld d, b                                       ; $6f83: $50
    ld h, b                                       ; $6f84: $60
    ld d, b                                       ; $6f85: $50
    ld a, b                                       ; $6f86: $78
    jr c, jr_0ee_6fc8                             ; $6f87: $38 $3f

    ld [hl-], a                                   ; $6f89: $32
    ld l, $3f                                     ; $6f8a: $2e $3f

jr_0ee_6f8c:
    ld e, c                                       ; $6f8c: $59
    ld h, a                                       ; $6f8d: $67

jr_0ee_6f8e:
    ld d, e                                       ; $6f8e: $53
    ld l, a                                       ; $6f8f: $6f

jr_0ee_6f90:
    ld a, [hl]                                    ; $6f90: $7e
    ld b, a                                       ; $6f91: $47
    ld [bc], a                                    ; $6f92: $02
    ld a, a                                       ; $6f93: $7f
    add d                                         ; $6f94: $82
    dec hl                                        ; $6f95: $2b
    scf                                           ; $6f96: $37
    ld [bc], a                                    ; $6f97: $02
    ccf                                           ; $6f98: $3f
    add d                                         ; $6f99: $82
    dec hl                                        ; $6f9a: $2b
    scf                                           ; $6f9b: $37
    ld [bc], a                                    ; $6f9c: $02
    ccf                                           ; $6f9d: $3f
    sub [hl]                                      ; $6f9e: $96
    ld d, l                                       ; $6f9f: $55
    ld l, [hl]                                    ; $6fa0: $6e
    ld e, a                                       ; $6fa1: $5f
    ld l, h                                       ; $6fa2: $6c
    ld l, [hl]                                    ; $6fa3: $6e
    ld e, l                                       ; $6fa4: $5d
    ld d, l                                       ; $6fa5: $55

jr_0ee_6fa6:
    ld [hl], a                                    ; $6fa6: $77
    cp [hl]                                       ; $6fa7: $be

jr_0ee_6fa8:
    bit 5, a                                      ; $6fa8: $cb $6f
    ld a, a                                       ; $6faa: $7f
    rst $38                                       ; $6fab: $ff
    add hl, bc                                    ; $6fac: $09
    dec a                                         ; $6fad: $3d
    rst $38                                       ; $6fae: $ff
    ei                                            ; $6faf: $fb
    db $dd                                        ; $6fb0: $dd

jr_0ee_6fb1:
    ld d, [hl]                                    ; $6fb1: $56
    or $7e                                        ; $6fb2: $f6 $7e
    ld a, [$e402]                                 ; $6fb4: $fa $02 $e4
    add d                                         ; $6fb7: $82
    ld h, b                                       ; $6fb8: $60
    and b                                         ; $6fb9: $a0
    inc bc                                        ; $6fba: $03
    ret nz                                        ; $6fbb: $c0

    add c                                         ; $6fbc: $81
    ld b, b                                       ; $6fbd: $40
    ld [bc], a                                    ; $6fbe: $02
    ret nz                                        ; $6fbf: $c0

    ld b, $80                                     ; $6fc0: $06 $80
    ld [bc], a                                    ; $6fc2: $02
    ret nz                                        ; $6fc3: $c0

    add d                                         ; $6fc4: $82
    ldh [rNR41], a                                ; $6fc5: $e0 $20
    ld [bc], a                                    ; $6fc7: $02

jr_0ee_6fc8:
    ret nz                                        ; $6fc8: $c0

    rst $38                                       ; $6fc9: $ff
    rrca                                          ; $6fca: $0f
    dec b                                         ; $6fcb: $05
    pop af                                        ; $6fcc: $f1
    jr nz, jr_0ee_6fb1                            ; $6fcd: $20 $e2

    ld bc, $f8e2                                  ; $6fcf: $01 $e2 $f8
    db $e3                                        ; $6fd2: $e3
    nop                                           ; $6fd3: $00
    db $ed                                        ; $6fd4: $ed
    inc bc                                        ; $6fd5: $03
    ld a, [c]                                     ; $6fd6: $f2
    ld a, [$fef2]                                 ; $6fd7: $fa $f2 $fe
    adc d                                         ; $6fda: $8a
    nop                                           ; $6fdb: $00
    ld [bc], a                                    ; $6fdc: $02
    ld b, $05                                     ; $6fdd: $06 $05
    ld b, $05                                     ; $6fdf: $06 $05
    inc bc                                        ; $6fe1: $03
    ld [bc], a                                    ; $6fe2: $02
    inc bc                                        ; $6fe3: $03
    ld [bc], a                                    ; $6fe4: $02
    ld [bc], a                                    ; $6fe5: $02
    inc bc                                        ; $6fe6: $03
    inc b                                         ; $6fe7: $04
    ld bc, $0290                                  ; $6fe8: $01 $90 $02
    inc bc                                        ; $6feb: $03
    ld a, [hl]                                    ; $6fec: $7e
    ld a, a                                       ; $6fed: $7f
    push hl                                       ; $6fee: $e5
    sbc a                                         ; $6fef: $9f
    db $fd                                        ; $6ff0: $fd
    add [hl]                                      ; $6ff1: $86
    push af                                       ; $6ff2: $f5
    adc [hl]                                      ; $6ff3: $8e
    cp h                                          ; $6ff4: $bc
    rst $08                                       ; $6ff5: $cf
    ld [hl], h                                    ; $6ff6: $74
    ld a, a                                       ; $6ff7: $7f
    ld a, [hl-]                                   ; $6ff8: $3a
    daa                                           ; $6ff9: $27
    ld [bc], a                                    ; $6ffa: $02
    ldh a, [$9e]                                  ; $6ffb: $f0 $9e
    ld a, b                                       ; $6ffd: $78
    adc b                                         ; $6ffe: $88
    ld [hl], h                                    ; $6fff: $74
    adc h                                         ; $7000: $8c
    ld a, h                                       ; $7001: $7c
    add h                                         ; $7002: $84
    add [hl]                                      ; $7003: $86
    ld a, [hl]                                    ; $7004: $7e
    cp [hl]                                       ; $7005: $be
    ld a, [hl]                                    ; $7006: $7e
    cp $aa                                        ; $7007: $fe $aa
    rst $18                                       ; $7009: $df
    or l                                          ; $700a: $b5
    rst $08                                       ; $700b: $cf
    cp l                                          ; $700c: $bd
    db $ed                                        ; $700d: $ed
    ld e, a                                       ; $700e: $5f
    xor $d7                                       ; $700f: $ee $d7
    push af                                       ; $7011: $f5
    ld l, $f6                                     ; $7012: $2e $f6
    cpl                                           ; $7014: $2f
    ld sp, hl                                     ; $7015: $f9
    dec [hl]                                      ; $7016: $35
    ld a, [$75b7]                                 ; $7017: $fa $b7 $75
    ei                                            ; $701a: $fb
    inc b                                         ; $701b: $04
    inc b                                         ; $701c: $04
    add d                                         ; $701d: $82
    ld b, $02                                     ; $701e: $06 $02
    ld [bc], a                                    ; $7020: $02
    ld b, $90                                     ; $7021: $06 $90
    dec b                                         ; $7023: $05
    inc bc                                        ; $7024: $03
    ld b, $02                                     ; $7025: $06 $02
    db $fc                                        ; $7027: $fc
    sbc h                                         ; $7028: $9c
    db $f4                                        ; $7029: $f4
    db $ec                                        ; $702a: $ec
    xor h                                         ; $702b: $ac
    db $fc                                        ; $702c: $fc
    ld a, [$4cf6]                                 ; $702d: $fa $f6 $4c
    call z, Call_0ee_40c0                         ; $7030: $cc $c0 $40
    ld [bc], a                                    ; $7033: $02
    ret nz                                        ; $7034: $c0

    add d                                         ; $7035: $82
    and b                                         ; $7036: $a0
    ld h, b                                       ; $7037: $60
    inc bc                                        ; $7038: $03
    ret nz                                        ; $7039: $c0

    adc a                                         ; $703a: $8f
    ld b, b                                       ; $703b: $40
    sub h                                         ; $703c: $94
    db $fc                                        ; $703d: $fc
    ld [hl], a                                    ; $703e: $77
    ld l, b                                       ; $703f: $68
    ld a, d                                       ; $7040: $7a
    ld l, l                                       ; $7041: $6d
    ld d, a                                       ; $7042: $57
    ld a, a                                       ; $7043: $7f
    ld a, [hl]                                    ; $7044: $7e
    ld b, a                                       ; $7045: $47
    ld a, e                                       ; $7046: $7b
    ld a, a                                       ; $7047: $7f
    cpl                                           ; $7048: $2f
    inc sp                                        ; $7049: $33
    ld [bc], a                                    ; $704a: $02
    ccf                                           ; $704b: $3f
    add d                                         ; $704c: $82
    ld e, $12                                     ; $704d: $1e $12
    ld [bc], a                                    ; $704f: $02
    dec a                                         ; $7050: $3d
    adc h                                         ; $7051: $8c
    dec l                                         ; $7052: $2d
    dec [hl]                                      ; $7053: $35
    ld a, $27                                     ; $7054: $3e $27
    ld a, [hl-]                                   ; $7056: $3a
    dec hl                                        ; $7057: $2b
    cpl                                           ; $7058: $2f
    dec a                                         ; $7059: $3d
    ld e, a                                       ; $705a: $5f
    ld h, a                                       ; $705b: $67
    inc [hl]                                      ; $705c: $34
    inc a                                         ; $705d: $3c
    ld [bc], a                                    ; $705e: $02
    nop                                           ; $705f: $00
    add d                                         ; $7060: $82
    ld [$0200], sp                                ; $7061: $08 $00 $02

jr_0ee_7064:
    ld [$0083], sp                                ; $7064: $08 $83 $00
    ld [$0300], sp                                ; $7067: $08 $00 $03
    ld [$0081], sp                                ; $706a: $08 $81 $00
    ld [$8308], sp                                ; $706d: $08 $08 $83
    nop                                           ; $7070: $00
    inc c                                         ; $7071: $0c
    inc b                                         ; $7072: $04
    ld [bc], a                                    ; $7073: $02
    ld [$0684], sp                                ; $7074: $08 $84 $06
    ld c, $05                                     ; $7077: $0e $05
    dec bc                                        ; $7079: $0b
    ld [bc], a                                    ; $707a: $02
    ld c, $ff                                     ; $707b: $0e $ff
    rrca                                          ; $707d: $0f
    dec b                                         ; $707e: $05
    pop af                                        ; $707f: $f1
    jr nz, jr_0ee_7064                            ; $7080: $20 $e2

    ld bc, $f4e3                                  ; $7082: $01 $e3 $f4
    ld [c], a                                     ; $7085: $e2
    db $fc                                        ; $7086: $fc
    db $e4                                        ; $7087: $e4
    inc b                                         ; $7088: $04
    ld a, [c]                                     ; $7089: $f2
    ld a, [$00f2]                                 ; $708a: $fa $f2 $00
    add c                                         ; $708d: $81
    add b                                         ; $708e: $80
    ld [bc], a                                    ; $708f: $02
    ret nz                                        ; $7090: $c0

    adc l                                         ; $7091: $8d
    and b                                         ; $7092: $a0
    ld h, b                                       ; $7093: $60
    ld d, b                                       ; $7094: $50
    jr nc, jr_0ee_70bf                            ; $7095: $30 $28

    jr jr_0ee_70ad                                ; $7097: $18 $14

    inc c                                         ; $7099: $0c
    ld a, [bc]                                    ; $709a: $0a
    ld b, $05                                     ; $709b: $06 $05
    inc bc                                        ; $709d: $03
    ld [bc], a                                    ; $709e: $02
    ld [bc], a                                    ; $709f: $02
    rlca                                          ; $70a0: $07
    adc b                                         ; $70a1: $88
    rrca                                          ; $70a2: $0f
    ld [$080f], sp                                ; $70a3: $08 $0f $08
    rrca                                          ; $70a6: $0f

jr_0ee_70a7:
    ld [$090e], sp                                ; $70a7: $08 $0e $09
    ld [bc], a                                    ; $70aa: $02
    rlca                                          ; $70ab: $07
    add h                                         ; $70ac: $84

jr_0ee_70ad:
    dec b                                         ; $70ad: $05
    ld b, $05                                     ; $70ae: $06 $05
    rlca                                          ; $70b0: $07
    ld [bc], a                                    ; $70b1: $02
    ld e, $9e                                     ; $70b2: $1e $9e

jr_0ee_70b4:
    cpl                                           ; $70b4: $2f
    ld sp, $605f                                  ; $70b5: $31 $5f $60
    ld e, a                                       ; $70b8: $5f
    ld h, b                                       ; $70b9: $60
    ld c, a                                       ; $70ba: $4f
    ld a, a                                       ; $70bb: $7f
    ld c, a                                       ; $70bc: $4f
    ld [hl], l                                    ; $70bd: $75
    cpl                                           ; $70be: $2f

jr_0ee_70bf:
    ld [hl-], a                                   ; $70bf: $32
    dec l                                         ; $70c0: $2d
    scf                                           ; $70c1: $37
    ld e, [hl]                                    ; $70c2: $5e
    pop hl                                        ; $70c3: $e1
    cp a                                          ; $70c4: $bf
    ld a, a                                       ; $70c5: $7f
    adc $b1                                       ; $70c6: $ce $b1
    rst $28                                       ; $70c8: $ef
    ld d, b                                       ; $70c9: $50
    ld [hl], a                                    ; $70ca: $77
    jp hl                                         ; $70cb: $e9


    rst $18                                       ; $70cc: $df
    rst $30                                       ; $70cd: $f7
    set 7, l                                      ; $70ce: $cb $fd
    ld [hl], a                                    ; $70d0: $77
    ld sp, hl                                     ; $70d1: $f9
    inc b                                         ; $70d2: $04
    add b                                         ; $70d3: $80
    inc bc                                        ; $70d4: $03
    ret nz                                        ; $70d5: $c0

    add c                                         ; $70d6: $81
    ld b, b                                       ; $70d7: $40
    ld [bc], a                                    ; $70d8: $02
    add b                                         ; $70d9: $80
    ld [bc], a                                    ; $70da: $02
    ld [hl], b                                    ; $70db: $70
    and d                                         ; $70dc: $a2
    cp b                                          ; $70dd: $b8
    ret z                                         ; $70de: $c8

    ret c                                         ; $70df: $d8

    add sp, $64                                   ; $70e0: $e8 $64
    cp h                                          ; $70e2: $bc
    db $fc                                        ; $70e3: $fc
    inc [hl]                                      ; $70e4: $34
    or $3a                                        ; $70e5: $f6 $3a
    xor c                                         ; $70e7: $a9
    ld l, a                                       ; $70e8: $6f
    rst $10                                       ; $70e9: $d7
    ld e, l                                       ; $70ea: $5d
    xor $f2                                       ; $70eb: $ee $f2
    ld d, h                                       ; $70ed: $54
    db $ec                                        ; $70ee: $ec
    ld hl, sp+$78                                 ; $70ef: $f8 $78
    ld [hl], $3b                                  ; $70f1: $36 $3b
    cp e                                          ; $70f3: $bb
    rst $20                                       ; $70f4: $e7
    db $fd                                        ; $70f5: $fd
    xor a                                         ; $70f6: $af
    ld a, c                                       ; $70f7: $79
    ld [hl], a                                    ; $70f8: $77
    ccf                                           ; $70f9: $3f
    inc hl                                        ; $70fa: $23
    dec a                                         ; $70fb: $3d
    ccf                                           ; $70fc: $3f
    ld d, $19                                     ; $70fd: $16 $19
    inc bc                                        ; $70ff: $03
    rrca                                          ; $7100: $0f
    add c                                         ; $7101: $81
    add hl, bc                                    ; $7102: $09
    ld [bc], a                                    ; $7103: $02
    ld c, $89                                     ; $7104: $0e $89
    ld d, $1a                                     ; $7106: $16 $1a
    rra                                           ; $7108: $1f
    inc de                                        ; $7109: $13
    dec de                                        ; $710a: $1b
    ld d, $2d                                     ; $710b: $16 $2d
    dec a                                         ; $710d: $3d
    inc a                                         ; $710e: $3c
    ld [bc], a                                    ; $710f: $02
    inc h                                         ; $7110: $24
    add c                                         ; $7111: $81
    inc a                                         ; $7112: $3c
    ld [bc], a                                    ; $7113: $02
    jr nc, jr_0ee_70a7                            ; $7114: $30 $91

    jr nz, jr_0ee_7148                            ; $7116: $20 $30

    ccf                                           ; $7118: $3f
    dec a                                         ; $7119: $3d
    ld l, $3e                                     ; $711a: $2e $3e
    ld e, $3e                                     ; $711c: $1e $3e

jr_0ee_711e:
    inc a                                         ; $711e: $3c
    inc [hl]                                      ; $711f: $34
    ld a, [hl+]                                   ; $7120: $2a
    ld [hl], $3a                                  ; $7121: $36 $3a
    ld a, $16                                     ; $7123: $3e $16
    ld a, [de]                                    ; $7125: $1a
    inc l                                         ; $7126: $2c
    ld [bc], a                                    ; $7127: $02
    inc a                                         ; $7128: $3c
    add e                                         ; $7129: $83
    inc h                                         ; $712a: $24
    jr jr_0ee_7155                                ; $712b: $18 $28

    ld [bc], a                                    ; $712d: $02
    jr nc, jr_0ee_70b4                            ; $712e: $30 $84

    ld [$3c38], sp                                ; $7130: $08 $38 $3c
    inc h                                         ; $7133: $24
    ld [bc], a                                    ; $7134: $02
    jr @+$01                                      ; $7135: $18 $ff

    ld de, $f106                                  ; $7137: $11 $06 $f1
    jr nz, jr_0ee_711e                            ; $713a: $20 $e2

    ld bc, $f1e2                                  ; $713c: $01 $e2 $f1
    ld [c], a                                     ; $713f: $e2
    ld sp, hl                                     ; $7140: $f9
    ld [c], a                                     ; $7141: $e2
    ld bc, $06e7                                  ; $7142: $01 $e7 $06
    ld a, [c]                                     ; $7145: $f2
    db $fc                                        ; $7146: $fc
    ld a, [c]                                     ; $7147: $f2

jr_0ee_7148:
    inc bc                                        ; $7148: $03
    add [hl]                                      ; $7149: $86
    nop                                           ; $714a: $00
    ld [hl], b                                    ; $714b: $70
    ldh a, [$8f]                                  ; $714c: $f0 $8f
    ld a, a                                       ; $714e: $7f
    ld [hl], b                                    ; $714f: $70
    ld [bc], a                                    ; $7150: $02
    rrca                                          ; $7151: $0f
    jr jr_0ee_7154                                ; $7152: $18 $00

jr_0ee_7154:
    ld [bc], a                                    ; $7154: $02

jr_0ee_7155:
    ld bc, $0393                                  ; $7155: $01 $93 $03
    ld [bc], a                                    ; $7158: $02
    dec b                                         ; $7159: $05
    or $f1                                        ; $715a: $f6 $f1
    rrca                                          ; $715c: $0f
    rst $38                                       ; $715d: $ff
    di                                            ; $715e: $f3
    ld c, $0d                                     ; $715f: $0e $0d
    dec a                                         ; $7161: $3d
    inc sp                                        ; $7162: $33
    ld l, e                                       ; $7163: $6b
    halt                                          ; $7164: $76

jr_0ee_7165:
    ld [hl], a                                    ; $7165: $77
    ld e, a                                       ; $7166: $5f
    ld a, e                                       ; $7167: $7b
    ld a, [hl]                                    ; $7168: $7e
    dec l                                         ; $7169: $2d
    ld [bc], a                                    ; $716a: $02
    inc sp                                        ; $716b: $33
    add c                                         ; $716c: $81
    dec a                                         ; $716d: $3d
    ld [bc], a                                    ; $716e: $02
    rra                                           ; $716f: $1f
    add h                                         ; $7170: $84
    ld c, $0f                                     ; $7171: $0e $0f
    ld [bc], a                                    ; $7173: $02
    inc bc                                        ; $7174: $03
    ld [bc], a                                    ; $7175: $02
    ld bc, $e002                                  ; $7176: $01 $02 $e0
    sbc [hl]                                      ; $7179: $9e
    ret nc                                        ; $717a: $d0

    jr nc, jr_0ee_7165                            ; $717b: $30 $e8

    ret c                                         ; $717d: $d8

    ld hl, sp+$38                                 ; $717e: $f8 $38
    cp h                                          ; $7180: $bc
    ld [hl], h                                    ; $7181: $74
    xor a                                         ; $7182: $af
    db $db                                        ; $7183: $db
    rst $10                                       ; $7184: $d7
    ld a, b                                       ; $7185: $78
    cp $3f                                        ; $7186: $fe $3f
    sbc e                                         ; $7188: $9b
    db $eb                                        ; $7189: $eb
    rst $38                                       ; $718a: $ff
    ld a, [hl]                                    ; $718b: $7e
    cp l                                          ; $718c: $bd
    srl a                                         ; $718d: $cb $3f
    pop bc                                        ; $718f: $c1
    ld a, a                                       ; $7190: $7f
    adc c                                         ; $7191: $89
    ld a, l                                       ; $7192: $7d
    adc e                                         ; $7193: $8b
    ld a, $ca                                     ; $7194: $3e $ca
    ld a, $ca                                     ; $7196: $3e $ca
    ld [bc], a                                    ; $7198: $02
    db $10                                        ; $7199: $10
    adc h                                         ; $719a: $8c
    ld c, $1e                                     ; $719b: $0e $1e
    rla                                           ; $719d: $17
    dec c                                         ; $719e: $0d
    dec de                                        ; $719f: $1b
    dec e                                         ; $71a0: $1d
    ld d, $1e                                     ; $71a1: $16 $1e
    ld a, [bc]                                    ; $71a3: $0a
    ld d, $1c                                     ; $71a4: $16 $1c
    inc c                                         ; $71a6: $0c
    ld [bc], a                                    ; $71a7: $02
    db $10                                        ; $71a8: $10
    ld b, $00                                     ; $71a9: $06 $00
    add l                                         ; $71ab: $85
    ld b, b                                       ; $71ac: $40
    ret nz                                        ; $71ad: $c0

    ld h, b                                       ; $71ae: $60
    and b                                         ; $71af: $a0
    ldh [rSC], a                                  ; $71b0: $e0 $02
    and b                                         ; $71b2: $a0
    inc bc                                        ; $71b3: $03
    ldh [$92], a                                  ; $71b4: $e0 $92
    ld [$160f], sp                                ; $71b6: $08 $0f $16
    add hl, de                                    ; $71b9: $19
    inc e                                         ; $71ba: $1c
    inc de                                        ; $71bb: $13
    add hl, sp                                    ; $71bc: $39
    daa                                           ; $71bd: $27
    dec sp                                        ; $71be: $3b
    daa                                           ; $71bf: $27
    dec a                                         ; $71c0: $3d
    ccf                                           ; $71c1: $3f
    rla                                           ; $71c2: $17
    add hl, de                                    ; $71c3: $19
    dec e                                         ; $71c4: $1d
    rra                                           ; $71c5: $1f
    ld d, $1a                                     ; $71c6: $16 $1a
    ld [bc], a                                    ; $71c8: $02
    ld a, $8f                                     ; $71c9: $3e $8f
    inc l                                         ; $71cb: $2c
    inc [hl]                                      ; $71cc: $34
    inc a                                         ; $71cd: $3c
    inc h                                         ; $71ce: $24
    jr c, jr_0ee_71f9                             ; $71cf: $38 $28

    ld d, b                                       ; $71d1: $50
    ld [hl], b                                    ; $71d2: $70
    cp b                                          ; $71d3: $b8
    ret z                                         ; $71d4: $c8

    ld e, b                                       ; $71d5: $58
    ld a, b                                       ; $71d6: $78
    ld h, b                                       ; $71d7: $60
    ld b, b                                       ; $71d8: $40
    nop                                           ; $71d9: $00
    inc bc                                        ; $71da: $03
    ld h, b                                       ; $71db: $60
    adc d                                         ; $71dc: $8a
    ld b, b                                       ; $71dd: $40
    ld h, b                                       ; $71de: $60
    jr nz, jr_0ee_7241                            ; $71df: $20 $60

jr_0ee_71e1:
    ld l, h                                       ; $71e1: $6c
    ld [hl], h                                    ; $71e2: $74
    inc l                                         ; $71e3: $2c
    inc a                                         ; $71e4: $3c
    ld e, $12                                     ; $71e5: $1e $12
    ld [bc], a                                    ; $71e7: $02
    inc e                                         ; $71e8: $1c
    add c                                         ; $71e9: $81
    inc l                                         ; $71ea: $2c
    ld [bc], a                                    ; $71eb: $02
    inc [hl]                                      ; $71ec: $34
    add a                                         ; $71ed: $87
    inc l                                         ; $71ee: $2c
    ld a, $2e                                     ; $71ef: $3e $2e
    cpl                                           ; $71f1: $2f
    add hl, sp                                    ; $71f2: $39
    halt                                          ; $71f3: $76
    ld e, [hl]                                    ; $71f4: $5e
    ld [bc], a                                    ; $71f5: $02
    jr c, jr_0ee_71fa                             ; $71f6: $38 $02

    nop                                           ; $71f8: $00

jr_0ee_71f9:
    rst $38                                       ; $71f9: $ff

jr_0ee_71fa:
    rrca                                          ; $71fa: $0f
    dec b                                         ; $71fb: $05
    pop af                                        ; $71fc: $f1
    jr nz, jr_0ee_71e1                            ; $71fd: $20 $e2

    ld bc, $fde2                                  ; $71ff: $01 $e2 $fd
    ld [c], a                                     ; $7202: $e2
    dec b                                         ; $7203: $05
    db $ed                                        ; $7204: $ed
    ld b, $f2                                     ; $7205: $06 $f2
    db $fd                                        ; $7207: $fd
    ld a, [c]                                     ; $7208: $f2
    inc b                                         ; $7209: $04
    sub d                                         ; $720a: $92
    ld b, $07                                     ; $720b: $06 $07
    rrca                                          ; $720d: $0f
    inc c                                         ; $720e: $0c
    rla                                           ; $720f: $17
    ld a, [de]                                    ; $7210: $1a
    rla                                           ; $7211: $17
    dec de                                        ; $7212: $1b
    rla                                           ; $7213: $17
    add hl, de                                    ; $7214: $19
    inc de                                        ; $7215: $13
    inc e                                         ; $7216: $1c
    dec bc                                        ; $7217: $0b
    dec c                                         ; $7218: $0d
    rrca                                          ; $7219: $0f
    ld [$1718], sp                                ; $721a: $08 $18 $17
    ld [bc], a                                    ; $721d: $02
    ld a, a                                       ; $721e: $7f
    adc h                                         ; $721f: $8c
    rst $28                                       ; $7220: $ef
    sbc a                                         ; $7221: $9f
    ld sp, hl                                     ; $7222: $f9
    and a                                         ; $7223: $a7
    or $cb                                        ; $7224: $f6 $cb

jr_0ee_7226:
    rst $10                                       ; $7226: $d7
    ld [$7d7f], a                                 ; $7227: $ea $7f $7d
    db $10                                        ; $722a: $10
    rra                                           ; $722b: $1f
    ld [bc], a                                    ; $722c: $02
    add b                                         ; $722d: $80
    sbc [hl]                                      ; $722e: $9e
    ld b, b                                       ; $722f: $40

Call_0ee_7230:
    ret nz                                        ; $7230: $c0

    and b                                         ; $7231: $a0
    ld h, b                                       ; $7232: $60
    ret nc                                        ; $7233: $d0

    jr nc, jr_0ee_7226                            ; $7234: $30 $f0

    sub b                                         ; $7236: $90
    add sp, -$28                                  ; $7237: $e8 $d8

jr_0ee_7239:
    ld a, b                                       ; $7239: $78
    add sp, -$23                                  ; $723a: $e8 $dd
    ld d, l                                       ; $723c: $55
    ld a, [hl]                                    ; $723d: $7e
    or [hl]                                       ; $723e: $b6
    db $dd                                        ; $723f: $dd
    rst $18                                       ; $7240: $df

jr_0ee_7241:
    db $fd                                        ; $7241: $fd
    ei                                            ; $7242: $fb
    sub e                                         ; $7243: $93
    db $ed                                        ; $7244: $ed
    rst $28                                       ; $7245: $ef
    ld e, $bd                                     ; $7246: $1e $bd
    ld a, a                                       ; $7248: $7f
    rst $10                                       ; $7249: $d7
    db $fd                                        ; $724a: $fd
    ld a, [hl]                                    ; $724b: $7e
    sbc $04                                       ; $724c: $de $04
    ld bc, $0006                                  ; $724e: $01 $06 $00
    add c                                         ; $7251: $81
    ldh [rSC], a                                  ; $7252: $e0 $02
    and b                                         ; $7254: $a0
    add [hl]                                      ; $7255: $86
    ld h, b                                       ; $7256: $60
    jr nz, jr_0ee_7239                            ; $7257: $20 $e0

    or b                                          ; $7259: $b0
    ret nc                                        ; $725a: $d0

    ld d, b                                       ; $725b: $50
    inc bc                                        ; $725c: $03
    ldh a, [$86]                                  ; $725d: $f0 $86
    ld h, b                                       ; $725f: $60
    and b                                         ; $7260: $a0
    ld h, b                                       ; $7261: $60
    ldh [$b0], a                                  ; $7262: $e0 $b0
    ret nc                                        ; $7264: $d0

    ld [bc], a                                    ; $7265: $02
    ldh [$94], a                                  ; $7266: $e0 $94
    ret nc                                        ; $7268: $d0

    or b                                          ; $7269: $b0
    add hl, bc                                    ; $726a: $09
    ld c, $08                                     ; $726b: $0e $08
    rrca                                          ; $726d: $0f
    ld d, $19                                     ; $726e: $16 $19
    dec l                                         ; $7270: $2d
    inc sp                                        ; $7271: $33
    dec a                                         ; $7272: $3d
    inc hl                                        ; $7273: $23
    cpl                                           ; $7274: $2f
    scf                                           ; $7275: $37
    dec e                                         ; $7276: $1d
    dec de                                        ; $7277: $1b
    ld a, [hl-]                                   ; $7278: $3a
    ld a, $2e                                     ; $7279: $3e $2e
    ld [hl], $02                                  ; $727b: $36 $02
    inc a                                         ; $727d: $3c
    add l                                         ; $727e: $85
    ld e, b                                       ; $727f: $58
    ld l, b                                       ; $7280: $68
    ld a, b                                       ; $7281: $78
    ld c, b                                       ; $7282: $48
    ld [hl], b                                    ; $7283: $70
    ld [bc], a                                    ; $7284: $02
    ld d, b                                       ; $7285: $50
    add a                                         ; $7286: $87
    ld [hl], b                                    ; $7287: $70
    ldh a, [$90]                                  ; $7288: $f0 $90
    or b                                          ; $728a: $b0
    ldh a, [rLCDC]                                ; $728b: $f0 $40

jr_0ee_728d:
    nop                                           ; $728d: $00
    ld [bc], a                                    ; $728e: $02
    ld b, b                                       ; $728f: $40
    add c                                         ; $7290: $81
    nop                                           ; $7291: $00
    inc bc                                        ; $7292: $03
    ld b, b                                       ; $7293: $40
    add c                                         ; $7294: $81
    nop                                           ; $7295: $00
    rlca                                          ; $7296: $07
    ld b, b                                       ; $7297: $40
    ld b, $00                                     ; $7298: $06 $00
    adc b                                         ; $729a: $88
    inc [hl]                                      ; $729b: $34
    inc l                                         ; $729c: $2c
    jr c, @+$2a                                   ; $729d: $38 $28

    ld l, $3e                                     ; $729f: $2e $3e
    ld [hl], a                                    ; $72a1: $77
    ld e, c                                       ; $72a2: $59
    ld [bc], a                                    ; $72a3: $02
    ld a, $ff                                     ; $72a4: $3e $ff
    inc de                                        ; $72a6: $13
    rlca                                          ; $72a7: $07
    pop af                                        ; $72a8: $f1
    jr nz, jr_0ee_728d                            ; $72a9: $20 $e2

    ld bc, $fde2                                  ; $72ab: $01 $e2 $fd
    ld [c], a                                     ; $72ae: $e2
    dec b                                         ; $72af: $05
    db $ec                                        ; $72b0: $ec
    dec c                                         ; $72b1: $0d
    ld [$e915], a                                 ; $72b2: $ea $15 $e9
    add hl, de                                    ; $72b5: $19
    ld a, [c]                                     ; $72b6: $f2
    db $fd                                        ; $72b7: $fd
    ld a, [c]                                     ; $72b8: $f2
    dec b                                         ; $72b9: $05
    ld [bc], a                                    ; $72ba: $02
    inc bc                                        ; $72bb: $03
    sbc [hl]                                      ; $72bc: $9e
    dec b                                         ; $72bd: $05
    ld b, $0b                                     ; $72be: $06 $0b
    inc c                                         ; $72c0: $0c
    dec bc                                        ; $72c1: $0b
    inc c                                         ; $72c2: $0c
    add hl, bc                                    ; $72c3: $09
    rrca                                          ; $72c4: $0f
    add hl, bc                                    ; $72c5: $09
    ld c, $05                                     ; $72c6: $0e $05
    ld b, $05                                     ; $72c8: $06 $05
    ld b, $3b                                     ; $72ca: $06 $3b
    inc a                                         ; $72cc: $3c
    ld l, a                                       ; $72cd: $6f
    ld e, a                                       ; $72ce: $5f
    push de                                       ; $72cf: $d5
    cp e                                          ; $72d0: $bb
    cp $a3                                        ; $72d1: $fe $a3
    xor l                                         ; $72d3: $ad
    di                                            ; $72d4: $f3
    ld e, a                                       ; $72d5: $5f
    ld a, [hl]                                    ; $72d6: $7e
    ld sp, $093e                                  ; $72d7: $31 $3e $09
    ld c, $02                                     ; $72da: $0e $02
    ret nz                                        ; $72dc: $c0

    add [hl]                                      ; $72dd: $86
    ldh [rNR41], a                                ; $72de: $e0 $20
    ldh a, [rNR10]                                ; $72e0: $f0 $10
    ldh a, [rNR10]                                ; $72e2: $f0 $10
    inc bc                                        ; $72e4: $03
    ld hl, sp-$79                                 ; $72e5: $f8 $87
    xor b                                         ; $72e7: $a8
    ldh a, [$50]                                  ; $72e8: $f0 $50
    and b                                         ; $72ea: $a0
    ldh [$d0], a                                  ; $72eb: $e0 $d0
    jr nc, jr_0ee_72f1                            ; $72ed: $30 $02

    cp $94                                        ; $72ef: $fe $94

jr_0ee_72f1:
    ld e, l                                       ; $72f1: $5d
    ei                                            ; $72f2: $fb
    or a                                          ; $72f3: $b7
    ld c, a                                       ; $72f4: $4f
    cp $41                                        ; $72f5: $fe $41
    rst $38                                       ; $72f7: $ff
    cp [hl]                                       ; $72f8: $be
    push af                                       ; $72f9: $f5
    ld d, a                                       ; $72fa: $57
    ld a, [c]                                     ; $72fb: $f2
    ld d, e                                       ; $72fc: $53
    ld b, b                                       ; $72fd: $40
    ld c, a                                       ; $72fe: $4f
    rst $08                                       ; $72ff: $cf
    ldh a, [rIE]                                  ; $7300: $f0 $ff
    ld c, a                                       ; $7302: $4f
    ldh a, [rSVBK]                                ; $7303: $f0 $70
    ld [bc], a                                    ; $7305: $02
    ldh [rSC], a                                  ; $7306: $e0 $02
    and b                                         ; $7308: $a0
    dec d                                         ; $7309: $15
    nop                                           ; $730a: $00
    ld [bc], a                                    ; $730b: $02
    rrca                                          ; $730c: $0f
    add e                                         ; $730d: $83
    ldh a, [rIE]                                  ; $730e: $f0 $ff
    rrca                                          ; $7310: $0f
    ld [bc], a                                    ; $7311: $02
    ldh a, [rNR24]                                ; $7312: $f0 $19
    nop                                           ; $7314: $00
    add e                                         ; $7315: $83
    ld c, $0f                                     ; $7316: $0e $0f
    ld bc, $0e02                                  ; $7318: $01 $02 $0e
    ld a, [de]                                    ; $731b: $1a
    nop                                           ; $731c: $00
    sub d                                         ; $731d: $92
    ld [$160f], sp                                ; $731e: $08 $0f $16
    add hl, de                                    ; $7321: $19
    inc l                                         ; $7322: $2c
    inc sp                                        ; $7323: $33
    add hl, hl                                    ; $7324: $29
    scf                                           ; $7325: $37
    ccf                                           ; $7326: $3f
    inc hl                                        ; $7327: $23
    dec a                                         ; $7328: $3d
    ccf                                           ; $7329: $3f
    rla                                           ; $732a: $17
    dec de                                        ; $732b: $1b

jr_0ee_732c:
    ld a, [hl-]                                   ; $732c: $3a
    ld a, $2e                                     ; $732d: $3e $2e
    ld [hl], $02                                  ; $732f: $36 $02
    inc a                                         ; $7331: $3c
    add l                                         ; $7332: $85
    ld e, b                                       ; $7333: $58
    ld l, b                                       ; $7334: $68
    ld a, b                                       ; $7335: $78
    ld c, b                                       ; $7336: $48
    ld [hl], b                                    ; $7337: $70
    ld [bc], a                                    ; $7338: $02
    ld d, b                                       ; $7339: $50
    sub a                                         ; $733a: $97
    ld [hl], b                                    ; $733b: $70
    ldh a, [$90]                                  ; $733c: $f0 $90
    or b                                          ; $733e: $b0
    ldh a, [$d1]                                  ; $733f: $f0 $d1
    ld [hl], c                                    ; $7341: $71
    jr jr_0ee_732c                                ; $7342: $18 $e8

    ld hl, sp-$18                                 ; $7344: $f8 $e8
    xor b                                         ; $7346: $a8
    ld hl, sp+$30                                 ; $7347: $f8 $30

jr_0ee_7349:
    ldh a, [$d0]                                  ; $7349: $f0 $d0
    ldh a, [$b0]                                  ; $734b: $f0 $b0
    ret nc                                        ; $734d: $d0

    or b                                          ; $734e: $b0
    ldh a, [$58]                                  ; $734f: $f0 $58
    ld l, b                                       ; $7351: $68
    ld [bc], a                                    ; $7352: $02

Call_0ee_7353:
    ld [hl], b                                    ; $7353: $70
    adc d                                         ; $7354: $8a
    ld l, b                                       ; $7355: $68
    ld e, b                                       ; $7356: $58
    ld l, b                                       ; $7357: $68
    ld e, b                                       ; $7358: $58
    ld [hl], b                                    ; $7359: $70
    ld d, b                                       ; $735a: $50
    ld e, h                                       ; $735b: $5c
    ld a, h                                       ; $735c: $7c
    xor $b2                                       ; $735d: $ee $b2
    ld [bc], a                                    ; $735f: $02
    ld a, h                                       ; $7360: $7c
    rst $38                                       ; $7361: $ff
    ld de, $f106                                  ; $7362: $11 $06 $f1
    jr nz, jr_0ee_7349                            ; $7365: $20 $e2

    ld bc, $f9e4                                  ; $7367: $01 $e4 $f9
    ld [c], a                                     ; $736a: $e2
    ld bc, $09ee                                  ; $736b: $01 $ee $09
    db $eb                                        ; $736e: $eb
    db $10                                        ; $736f: $10
    ld a, [c]                                     ; $7370: $f2
    ei                                            ; $7371: $fb
    ld a, [c]                                     ; $7372: $f2
    ld bc, $0106                                  ; $7373: $01 $06 $01
    inc b                                         ; $7376: $04
    nop                                           ; $7377: $00
    inc b                                         ; $7378: $04
    ld bc, $7f02                                  ; $7379: $01 $02 $7f
    sub b                                         ; $737c: $90
    or [hl]                                       ; $737d: $b6
    rst $08                                       ; $737e: $cf

Call_0ee_737f:
    db $fd                                        ; $737f: $fd

jr_0ee_7380:
    add [hl]                                      ; $7380: $86
    push af                                       ; $7381: $f5
    adc [hl]                                      ; $7382: $8e
    db $eb                                        ; $7383: $eb
    sbc [hl]                                      ; $7384: $9e
    ld a, e                                       ; $7385: $7b
    ld a, l                                       ; $7386: $7d

jr_0ee_7387:
    ld e, $19                                     ; $7387: $1e $19
    dec de                                        ; $7389: $1b
    ld e, $0f                                     ; $738a: $1e $0f
    inc c                                         ; $738c: $0c
    ld [bc], a                                    ; $738d: $02

jr_0ee_738e:
    ld a, b                                       ; $738e: $78
    xor c                                         ; $738f: $a9
    cp h                                          ; $7390: $bc
    call nz, $867a                                ; $7391: $c4 $7a $86
    ld a, [hl]                                    ; $7394: $7e
    add d                                         ; $7395: $82
    inc hl                                        ; $7396: $23
    rst $18                                       ; $7397: $df
    cp a                                          ; $7398: $bf
    rst $38                                       ; $7399: $ff
    cp a                                          ; $739a: $bf
    push de                                       ; $739b: $d5
    ld a, $ea                                     ; $739c: $3e $ea
    ld b, [hl]                                    ; $739e: $46
    cp [hl]                                       ; $739f: $be
    cp $86                                        ; $73a0: $fe $86
    ld a, e                                       ; $73a2: $7b
    db $fd                                        ; $73a3: $fd
    rst $28                                       ; $73a4: $ef
    dec d                                         ; $73a5: $15
    db $fd                                        ; $73a6: $fd
    rlca                                          ; $73a7: $07
    rst $38                                       ; $73a8: $ff
    ld d, $dd                                     ; $73a9: $16 $dd
    ld [hl], $fb                                  ; $73ab: $36 $fb
    ld l, e                                       ; $73ad: $6b
    nop                                           ; $73ae: $00
    ld bc, $8681                                  ; $73af: $01 $81 $86
    add a                                         ; $73b2: $87
    sbc c                                         ; $73b3: $99
    sbc [hl]                                      ; $73b4: $9e
    and $f8                                       ; $73b5: $e6 $f8
    ld e, b                                       ; $73b7: $58
    ldh [rSC], a                                  ; $73b8: $e0 $02
    ld h, b                                       ; $73ba: $60
    add c                                         ; $73bb: $81
    ldh [rSC], a                                  ; $73bc: $e0 $02
    ret nc                                        ; $73be: $d0

    ld de, $8900                                  ; $73bf: $11 $00 $89
    ld [bc], a                                    ; $73c2: $02
    inc bc                                        ; $73c3: $03
    dec c                                         ; $73c4: $0d
    ld c, $32                                     ; $73c5: $0e $32
    inc a                                         ; $73c7: $3c
    ld c, h                                       ; $73c8: $4c
    ld [hl], b                                    ; $73c9: $70
    jr nc, jr_0ee_73ce                            ; $73ca: $30 $02

    ld b, b                                       ; $73cc: $40
    inc d                                         ; $73cd: $14

jr_0ee_73ce:
    nop                                           ; $73ce: $00
    add c                                         ; $73cf: $81
    ld [bc], a                                    ; $73d0: $02
    ld [bc], a                                    ; $73d1: $02
    inc bc                                        ; $73d2: $03
    and d                                         ; $73d3: $a2
    ld [bc], a                                    ; $73d4: $02
    ld l, $3f                                     ; $73d5: $2e $3f
    ld e, c                                       ; $73d7: $59
    ld h, a                                       ; $73d8: $67
    and l                                         ; $73d9: $a5
    rst $18                                       ; $73da: $df
    rst $38                                       ; $73db: $ff
    adc a                                         ; $73dc: $8f
    rst $30                                       ; $73dd: $f7
    rst $38                                       ; $73de: $ff
    ld a, [hl]                                    ; $73df: $7e
    ld a, a                                       ; $73e0: $7f
    ccf                                           ; $73e1: $3f
    daa                                           ; $73e2: $27
    ld a, d                                       ; $73e3: $7a
    ld a, e                                       ; $73e4: $7b
    ld e, e                                       ; $73e5: $5b
    ld l, d                                       ; $73e6: $6a
    ld a, e                                       ; $73e7: $7b
    ld c, d                                       ; $73e8: $4a
    ld [hl], d                                    ; $73e9: $72
    ld d, e                                       ; $73ea: $53
    ld d, a                                       ; $73eb: $57
    ld [hl], l                                    ; $73ec: $75
    cp e                                          ; $73ed: $bb
    bit 5, b                                      ; $73ee: $cb $68
    ld a, b                                       ; $73f0: $78
    ld a, $1f                                     ; $73f1: $3e $1f
    ccf                                           ; $73f3: $3f
    ld [bc], a                                    ; $73f4: $02
    dec bc                                        ; $73f5: $0b
    ld [bc], a                                    ; $73f6: $02
    ccf                                           ; $73f7: $3f
    add e                                         ; $73f8: $83
    ld [hl], $2f                                  ; $73f9: $36 $2f
    ccf                                           ; $73fb: $3f
    dec b                                         ; $73fc: $05
    jr nc, jr_0ee_7380                            ; $73fd: $30 $81

    db $10                                        ; $73ff: $10
    ld [bc], a                                    ; $7400: $02
    jr nz, jr_0ee_7387                            ; $7401: $20 $84

    jr nc, @+$12                                  ; $7403: $30 $10

    jr nc, @+$12                                  ; $7405: $30 $10

    ld [bc], a                                    ; $7407: $02
    jr nz, jr_0ee_740c                            ; $7408: $20 $02

    jr c, jr_0ee_738e                             ; $740a: $38 $82

jr_0ee_740c:
    inc e                                         ; $740c: $1c
    inc h                                         ; $740d: $24
    ld [bc], a                                    ; $740e: $02
    jr c, jr_0ee_7413                             ; $740f: $38 $02

    nop                                           ; $7411: $00
    rst $38                                       ; $7412: $ff

jr_0ee_7413:
    ld de, $f106                                  ; $7413: $11 $06 $f1
    jr nz, @-$1c                                  ; $7416: $20 $e2

    ld bc, $f7e2                                  ; $7418: $01 $e2 $f7
    db $e3                                        ; $741b: $e3
    rst $38                                       ; $741c: $ff
    ld [$e507], a                                 ; $741d: $ea $07 $e5
    inc c                                         ; $7420: $0c
    ld a, [c]                                     ; $7421: $f2
    ld a, [$fff2]                                 ; $7422: $fa $f2 $ff
    ld [bc], a                                    ; $7425: $02
    rrca                                          ; $7426: $0f
    sub b                                         ; $7427: $90
    rla                                           ; $7428: $17
    jr jr_0ee_745a                                ; $7429: $18 $2f

    jr nc, jr_0ee_745a                            ; $742b: $30 $2d

    inc sp                                        ; $742d: $33
    daa                                           ; $742e: $27
    add hl, sp                                    ; $742f: $39
    daa                                           ; $7430: $27
    jr c, jr_0ee_7449                             ; $7431: $38 $16

    add hl, de                                    ; $7433: $19
    rrca                                          ; $7434: $0f
    ld [$1718], sp                                ; $7435: $08 $18 $17
    ld [bc], a                                    ; $7438: $02
    ld a, a                                       ; $7439: $7f
    adc h                                         ; $743a: $8c
    rst $30                                       ; $743b: $f7
    adc a                                         ; $743c: $8f
    db $fd                                        ; $743d: $fd
    add [hl]                                      ; $743e: $86
    push af                                       ; $743f: $f5
    adc [hl]                                      ; $7440: $8e
    cp h                                          ; $7441: $bc
    rst $18                                       ; $7442: $df
    ld l, e                                       ; $7443: $6b
    ld [hl], a                                    ; $7444: $77
    ccf                                           ; $7445: $3f
    inc h                                         ; $7446: $24
    ld [bc], a                                    ; $7447: $02
    add b                                         ; $7448: $80

jr_0ee_7449:
    add d                                         ; $7449: $82
    ret nz                                        ; $744a: $c0

    ld b, b                                       ; $744b: $40
    ld [bc], a                                    ; $744c: $02
    ret nz                                        ; $744d: $c0

    add h                                         ; $744e: $84
    ldh [$60], a                                  ; $744f: $e0 $60
    ldh [$a0], a                                  ; $7451: $e0 $a0
    inc bc                                        ; $7453: $03

jr_0ee_7454:
    ret nz                                        ; $7454: $c0

    sub e                                         ; $7455: $93
    ld b, b                                       ; $7456: $40
    ld h, b                                       ; $7457: $60
    and b                                         ; $7458: $a0
    ld b, a                                       ; $7459: $47

jr_0ee_745a:
    rst $00                                       ; $745a: $c7

jr_0ee_745b:
    ei                                            ; $745b: $fb
    db $fc                                        ; $745c: $fc
    db $fd                                        ; $745d: $fd
    ld d, $fd                                     ; $745e: $16 $fd
    rlca                                          ; $7460: $07
    cp $17                                        ; $7461: $fe $17
    ld a, [hl]                                    ; $7463: $7e
    rst $30                                       ; $7464: $f7
    ld sp, hl                                     ; $7465: $f9
    sbc c                                         ; $7466: $99
    ld [hl], a                                    ; $7467: $77
    adc a                                         ; $7468: $8f
    ld [bc], a                                    ; $7469: $02
    ld bc, $0398                                  ; $746a: $01 $98 $03
    ld [bc], a                                    ; $746d: $02
    add e                                         ; $746e: $83
    add d                                         ; $746f: $82
    add [hl]                                      ; $7470: $86
    add l                                         ; $7471: $85
    inc c                                         ; $7472: $0c
    ld a, [bc]                                    ; $7473: $0a
    sbc b                                         ; $7474: $98
    sub h                                         ; $7475: $94
    ret c                                         ; $7476: $d8

    ld d, h                                       ; $7477: $54
    ld [hl], b                                    ; $7478: $70
    xor b                                         ; $7479: $a8
    ldh [$d0], a                                  ; $747a: $e0 $d0
    ldh a, [$30]                                  ; $747c: $f0 $30
    ld a, b                                       ; $747e: $78
    ld hl, sp-$20                                 ; $747f: $f8 $e0
    and b                                         ; $7481: $a0
    ld b, b                                       ; $7482: $40
    ret nz                                        ; $7483: $c0

    ld [bc], a                                    ; $7484: $02
    add b                                         ; $7485: $80
    inc b                                         ; $7486: $04
    nop                                           ; $7487: $00
    sub b                                         ; $7488: $90
    ld [bc], a                                    ; $7489: $02
    inc bc                                        ; $748a: $03
    ld b, $05                                     ; $748b: $06 $05
    inc c                                         ; $748d: $0c
    ld a, [bc]                                    ; $748e: $0a
    inc c                                         ; $748f: $0c
    ld a, [bc]                                    ; $7490: $0a
    jr jr_0ee_74a7                                ; $7491: $18 $14

    db $10                                        ; $7493: $10
    ld [$1000], sp                                ; $7494: $08 $00 $10
    nop                                           ; $7497: $00
    db $10                                        ; $7498: $10
    stop                                          ; $7499: $10 $00
    adc [hl]                                      ; $749b: $8e
    cp b                                          ; $749c: $b8
    add sp, $5c                                   ; $749d: $e8 $5c
    ld [hl], a                                    ; $749f: $77
    or e                                          ; $74a0: $b3
    rst $08                                       ; $74a1: $cf
    and h                                         ; $74a2: $a4
    rst $18                                       ; $74a3: $df
    db $fd                                        ; $74a4: $fd
    adc a                                         ; $74a5: $8f
    rst $30                                       ; $74a6: $f7

jr_0ee_74a7:
    rst $38                                       ; $74a7: $ff
    ld e, [hl]                                    ; $74a8: $5e
    ld h, a                                       ; $74a9: $67
    ld [bc], a                                    ; $74aa: $02
    ccf                                           ; $74ab: $3f
    add d                                         ; $74ac: $82
    ld [hl], l                                    ; $74ad: $75
    ld c, l                                       ; $74ae: $4d
    ld [bc], a                                    ; $74af: $02
    dec sp                                        ; $74b0: $3b
    add l                                         ; $74b1: $85
    dec a                                         ; $74b2: $3d
    dec h                                         ; $74b3: $25
    ld [hl], $2f                                  ; $74b4: $36 $2f
    dec sp                                        ; $74b6: $3b
    ld [bc], a                                    ; $74b7: $02
    ld a, [hl+]                                   ; $74b8: $2a
    add l                                         ; $74b9: $85
    dec sp                                        ; $74ba: $3b
    ld e, a                                       ; $74bb: $5f
    ld h, l                                       ; $74bc: $65
    scf                                           ; $74bd: $37
    ccf                                           ; $74be: $3f
    ld [bc], a                                    ; $74bf: $02
    nop                                           ; $74c0: $00
    add [hl]                                      ; $74c1: $86
    ld e, $03                                     ; $74c2: $1e $03
    rra                                           ; $74c4: $1f
    ld e, $1b                                     ; $74c5: $1e $1b
    rra                                           ; $74c7: $1f
    ld [bc], a                                    ; $74c8: $02
    dec d                                         ; $74c9: $15
    add h                                         ; $74ca: $84
    dec bc                                        ; $74cb: $0b

jr_0ee_74cc:
    ld a, [de]                                    ; $74cc: $1a
    add hl, de                                    ; $74cd: $19
    add hl, bc                                    ; $74ce: $09
    ld [bc], a                                    ; $74cf: $02
    jr jr_0ee_7454                                ; $74d0: $18 $82

    inc d                                         ; $74d2: $14
    inc c                                         ; $74d3: $0c
    ld [bc], a                                    ; $74d4: $02
    jr jr_0ee_745b                                ; $74d5: $18 $84

    inc e                                         ; $74d7: $1c
    inc b                                         ; $74d8: $04
    jr jr_0ee_74e3                                ; $74d9: $18 $08

    ld [bc], a                                    ; $74db: $02
    db $10                                        ; $74dc: $10
    ld [bc], a                                    ; $74dd: $02
    inc e                                         ; $74de: $1c
    add d                                         ; $74df: $82
    ld c, $12                                     ; $74e0: $0e $12
    ld [bc], a                                    ; $74e2: $02

jr_0ee_74e3:
    inc e                                         ; $74e3: $1c
    rst $38                                       ; $74e4: $ff
    ld de, $f106                                  ; $74e5: $11 $06 $f1
    jr nz, jr_0ee_74cc                            ; $74e8: $20 $e2

    ld bc, $f8e2                                  ; $74ea: $01 $e2 $f8
    ld [c], a                                     ; $74ed: $e2
    nop                                           ; $74ee: $00
    db $ed                                        ; $74ef: $ed
    ld [$0fed], sp                                ; $74f0: $08 $ed $0f
    ld a, [c]                                     ; $74f3: $f2
    ld a, [$00f2]                                 ; $74f4: $fa $f2 $00
    ld [bc], a                                    ; $74f7: $02
    ld bc, $028b                                  ; $74f8: $01 $8b $02
    inc bc                                        ; $74fb: $03
    dec b                                         ; $74fc: $05
    ld b, $05                                     ; $74fd: $06 $05
    ld b, $05                                     ; $74ff: $06 $05
    ld b, $04                                     ; $7501: $06 $04
    rlca                                          ; $7503: $07
    ld [bc], a                                    ; $7504: $02
    ld [bc], a                                    ; $7505: $02
    inc bc                                        ; $7506: $03
    add e                                         ; $7507: $83

jr_0ee_7508:
    ld [bc], a                                    ; $7508: $02
    ld b, $05                                     ; $7509: $06 $05
    ld [bc], a                                    ; $750b: $02
    inc bc                                        ; $750c: $03
    adc h                                         ; $750d: $8c
    ld a, h                                       ; $750e: $7c
    ld a, a                                       ; $750f: $7f
    or h                                          ; $7510: $b4
    rst $08                                       ; $7511: $cf
    db $fc                                        ; $7512: $fc
    add a                                         ; $7513: $87
    cp $9f                                        ; $7514: $fe $9f
    cp d                                          ; $7516: $ba
    rst $20                                       ; $7517: $e7
    ld d, a                                       ; $7518: $57
    ld l, a                                       ; $7519: $6f

jr_0ee_751a:
    ld [bc], a                                    ; $751a: $02
    ldh [$90], a                                  ; $751b: $e0 $90
    ret nc                                        ; $751d: $d0

    jr nc, jr_0ee_7508                            ; $751e: $30 $e8

    jr jr_0ee_751a                                ; $7520: $18 $f8

    ld [$08f8], sp                                ; $7522: $08 $f8 $08
    add sp, $18                                   ; $7525: $e8 $18

Call_0ee_7527:
    ldh a, [rNR10]                                ; $7527: $f0 $10
    ldh a, [rNR10]                                ; $7529: $f0 $10
    jr @-$16                                      ; $752b: $18 $e8

    ld [bc], a                                    ; $752d: $02
    db $fc                                        ; $752e: $fc
    adc h                                         ; $752f: $8c
    rst $20                                       ; $7530: $e7
    dec de                                        ; $7531: $1b
    rst $38                                       ; $7532: $ff
    ld [bc], a                                    ; $7533: $02
    rst $38                                       ; $7534: $ff
    ld [de], a                                    ; $7535: $12
    ld a, e                                       ; $7536: $7b
    sub a                                         ; $7537: $97
    ld l, d                                       ; $7538: $6a
    sub [hl]                                      ; $7539: $96
    ld a, a                                       ; $753a: $7f
    or a                                          ; $753b: $b7
    inc b                                         ; $753c: $04
    add b                                         ; $753d: $80
    ld [bc], a                                    ; $753e: $02
    nop                                           ; $753f: $00
    add c                                         ; $7540: $81
    ret nz                                        ; $7541: $c0

    ld [bc], a                                    ; $7542: $02
    pop bc                                        ; $7543: $c1
    adc c                                         ; $7544: $89
    ld b, [hl]                                    ; $7545: $46
    daa                                           ; $7546: $27
    ld sp, hl                                     ; $7547: $f9
    sbc [hl]                                      ; $7548: $9e
    and $f8                                       ; $7549: $e6 $f8
    ret c                                         ; $754b: $d8

    ld h, b                                       ; $754c: $60
    ldh [rSC], a                                  ; $754d: $e0 $02
    and b                                         ; $754f: $a0
    ld [bc], a                                    ; $7550: $02
    sub b                                         ; $7551: $90
    dec bc                                        ; $7552: $0b
    nop                                           ; $7553: $00
    adc c                                         ; $7554: $89
    ld [bc], a                                    ; $7555: $02
    inc bc                                        ; $7556: $03
    dec c                                         ; $7557: $0d
    ld c, $32                                     ; $7558: $0e $32
    inc a                                         ; $755a: $3c
    ld c, h                                       ; $755b: $4c
    ld [hl], b                                    ; $755c: $70
    jr nc, jr_0ee_7561                            ; $755d: $30 $02

    ld b, b                                       ; $755f: $40
    inc d                                         ; $7560: $14

jr_0ee_7561:
    nop                                           ; $7561: $00
    adc d                                         ; $7562: $8a
    cp a                                          ; $7563: $bf
    di                                            ; $7564: $f3
    ld a, [hl]                                    ; $7565: $7e
    ld [hl], a                                    ; $7566: $77
    dec a                                         ; $7567: $3d
    ccf                                           ; $7568: $3f
    ld d, e                                       ; $7569: $53
    ld l, a                                       ; $756a: $6f
    or a                                          ; $756b: $b7
    rst $08                                       ; $756c: $cf
    ld [bc], a                                    ; $756d: $02
    ld a, a                                       ; $756e: $7f
    add d                                         ; $756f: $82
    scf                                           ; $7570: $37
    cpl                                           ; $7571: $2f
    ld [bc], a                                    ; $7572: $02
    ld a, a                                       ; $7573: $7f
    add d                                         ; $7574: $82
    ld [hl], l                                    ; $7575: $75
    ld c, l                                       ; $7576: $4d
    ld [bc], a                                    ; $7577: $02
    ld a, b                                       ; $7578: $78
    sbc d                                         ; $7579: $9a
    ld a, c                                       ; $757a: $79
    ld c, c                                       ; $757b: $49
    ld e, c                                       ; $757c: $59
    ld l, c                                       ; $757d: $69
    add hl, sp                                    ; $757e: $39
    add hl, hl                                    ; $757f: $29
    ld l, e                                       ; $7580: $6b
    ld a, d                                       ; $7581: $7a
    ld a, a                                       ; $7582: $7f
    ld c, a                                       ; $7583: $4f
    jr z, @+$3a                                   ; $7584: $28 $38

    dec a                                         ; $7586: $3d
    dec e                                         ; $7587: $1d
    ld [hl], $0e                                  ; $7588: $36 $0e
    dec c                                         ; $758a: $0d
    inc sp                                        ; $758b: $33
    dec a                                         ; $758c: $3d
    ld a, $1b                                     ; $758d: $3e $1b
    ld a, $3d                                     ; $758f: $3e $3d
    ccf                                           ; $7591: $3f
    ld a, [de]                                    ; $7592: $1a
    ld a, [hl+]                                   ; $7593: $2a
    ld [bc], a                                    ; $7594: $02
    inc a                                         ; $7595: $3c
    add d                                         ; $7596: $82
    inc e                                         ; $7597: $1c
    inc h                                         ; $7598: $24
    ld [bc], a                                    ; $7599: $02
    inc a                                         ; $759a: $3c
    adc d                                         ; $759b: $8a
    inc d                                         ; $759c: $14
    inc l                                         ; $759d: $2c
    jr c, @+$0a                                   ; $759e: $38 $08

    jr nc, jr_0ee_75b2                            ; $75a0: $30 $10

    jr @+$3a                                      ; $75a2: $18 $38

    inc e                                         ; $75a4: $1c
    inc h                                         ; $75a5: $24
    ld [bc], a                                    ; $75a6: $02
    jr c, @+$01                                   ; $75a7: $38 $ff

    ld de, $f106                                  ; $75a9: $11 $06 $f1
    jr nz, @-$1c                                  ; $75ac: $20 $e2

    ld bc, $f8e4                                  ; $75ae: $01 $e4 $f8
    ld [c], a                                     ; $75b1: $e2

jr_0ee_75b2:
    nop                                           ; $75b2: $00
    ld [$e508], a                                 ; $75b3: $ea $08 $e5
    dec c                                         ; $75b6: $0d
    ld a, [c]                                     ; $75b7: $f2
    ei                                            ; $75b8: $fb
    ld a, [c]                                     ; $75b9: $f2
    nop                                           ; $75ba: $00
    inc b                                         ; $75bb: $04
    ld bc, $0282                                  ; $75bc: $01 $82 $02
    inc bc                                        ; $75bf: $03
    ld [bc], a                                    ; $75c0: $02
    ld bc, $0002                                  ; $75c1: $01 $02 $00
    ld [bc], a                                    ; $75c4: $02
    ld bc, $0282                                  ; $75c5: $01 $82 $02
    inc bc                                        ; $75c8: $03
    ld [bc], a                                    ; $75c9: $02
    ld a, l                                       ; $75ca: $7d
    sub b                                         ; $75cb: $90
    rst $30                                       ; $75cc: $f7
    adc a                                         ; $75cd: $8f
    db $fd                                        ; $75ce: $fd
    add [hl]                                      ; $75cf: $86
    push af                                       ; $75d0: $f5
    adc [hl]                                      ; $75d1: $8e
    cp h                                          ; $75d2: $bc
    rst $18                                       ; $75d3: $df
    ld l, e                                       ; $75d4: $6b
    ld [hl], a                                    ; $75d5: $77
    ccf                                           ; $75d6: $3f
    inc h                                         ; $75d7: $24
    rla                                           ; $75d8: $17
    dec e                                         ; $75d9: $1d
    dec bc                                        ; $75da: $0b
    ld c, $02                                     ; $75db: $0e $02
    ld a, b                                       ; $75dd: $78
    sbc [hl]                                      ; $75de: $9e
    cp h                                          ; $75df: $bc
    call nz, $827e                                ; $75e0: $c4 $7e $82
    ld a, [hl]                                    ; $75e3: $7e
    add d                                         ; $75e4: $82
    ld a, [hl]                                    ; $75e5: $7e
    add d                                         ; $75e6: $82
    ld a, [hl-]                                   ; $75e7: $3a

jr_0ee_75e8:
    add $b4                                       ; $75e8: $c6 $b4
    call z, Call_000_08f8                         ; $75ea: $cc $f8 $08
    inc c                                         ; $75ed: $0c
    db $f4                                        ; $75ee: $f4
    rst $28                                       ; $75ef: $ef
    rst $38                                       ; $75f0: $ff
    ei                                            ; $75f1: $fb
    db $fc                                        ; $75f2: $fc
    db $fd                                        ; $75f3: $fd
    ld d, $fd                                     ; $75f4: $16 $fd
    rlca                                          ; $75f6: $07
    cp $17                                        ; $75f7: $fe $17
    ld a, [hl]                                    ; $75f9: $7e
    rst $30                                       ; $75fa: $f7
    ld sp, hl                                     ; $75fb: $f9
    sbc c                                         ; $75fc: $99
    ld [bc], a                                    ; $75fd: $02
    ld bc, $0398                                  ; $75fe: $01 $98 $03
    ld [bc], a                                    ; $7601: $02
    add e                                         ; $7602: $83
    add d                                         ; $7603: $82
    add [hl]                                      ; $7604: $86
    add l                                         ; $7605: $85
    inc c                                         ; $7606: $0c
    ld a, [bc]                                    ; $7607: $0a
    sbc b                                         ; $7608: $98
    sub h                                         ; $7609: $94
    ret c                                         ; $760a: $d8

    ld d, h                                       ; $760b: $54
    ld [hl], b                                    ; $760c: $70
    xor b                                         ; $760d: $a8
    ldh [$d0], a                                  ; $760e: $e0 $d0
    ldh a, [$30]                                  ; $7610: $f0 $30
    ld a, b                                       ; $7612: $78
    ld hl, sp-$20                                 ; $7613: $f8 $e0
    and b                                         ; $7615: $a0
    ld b, b                                       ; $7616: $40
    ret nz                                        ; $7617: $c0

    ld [bc], a                                    ; $7618: $02
    add b                                         ; $7619: $80
    inc b                                         ; $761a: $04
    nop                                           ; $761b: $00
    sub b                                         ; $761c: $90
    ld [bc], a                                    ; $761d: $02
    inc bc                                        ; $761e: $03
    ld b, $05                                     ; $761f: $06 $05
    inc c                                         ; $7621: $0c
    ld a, [bc]                                    ; $7622: $0a
    inc c                                         ; $7623: $0c
    ld a, [bc]                                    ; $7624: $0a
    jr jr_0ee_763b                                ; $7625: $18 $14

    db $10                                        ; $7627: $10
    ld [$1000], sp                                ; $7628: $08 $00 $10
    nop                                           ; $762b: $00
    db $10                                        ; $762c: $10
    stop                                          ; $762d: $10 $00
    add c                                         ; $762f: $81
    inc bc                                        ; $7630: $03
    ld [bc], a                                    ; $7631: $02
    inc b                                         ; $7632: $04
    adc e                                         ; $7633: $8b
    rlca                                          ; $7634: $07
    or e                                          ; $7635: $b3
    rst $08                                       ; $7636: $cf
    and h                                         ; $7637: $a4
    rst $18                                       ; $7638: $df
    db $fd                                        ; $7639: $fd
    adc a                                         ; $763a: $8f

jr_0ee_763b:
    rst $30                                       ; $763b: $f7
    rst $38                                       ; $763c: $ff
    ld e, [hl]                                    ; $763d: $5e
    ld h, a                                       ; $763e: $67
    ld [bc], a                                    ; $763f: $02
    ccf                                           ; $7640: $3f
    add d                                         ; $7641: $82
    dec [hl]                                      ; $7642: $35
    dec l                                         ; $7643: $2d
    ld [bc], a                                    ; $7644: $02
    ld a, l                                       ; $7645: $7d
    add l                                         ; $7646: $85
    ld a, e                                       ; $7647: $7b
    ld c, d                                       ; $7648: $4a
    ld l, l                                       ; $7649: $6d
    ld e, [hl]                                    ; $764a: $5e
    ld [hl], a                                    ; $764b: $77
    ld [bc], a                                    ; $764c: $02
    ld d, l                                       ; $764d: $55
    adc l                                         ; $764e: $8d
    ld [hl], a                                    ; $764f: $77
    cp [hl]                                       ; $7650: $be
    bit 5, a                                      ; $7651: $cb $6f
    ld a, a                                       ; $7653: $7f
    rla                                           ; $7654: $17
    rrca                                          ; $7655: $0f
    ld e, $03                                     ; $7656: $1e $03
    rra                                           ; $7658: $1f
    ld e, $1b                                     ; $7659: $1e $1b
    rra                                           ; $765b: $1f
    ld [bc], a                                    ; $765c: $02
    dec d                                         ; $765d: $15
    add h                                         ; $765e: $84

jr_0ee_765f:
    dec bc                                        ; $765f: $0b
    ld a, [de]                                    ; $7660: $1a
    add hl, de                                    ; $7661: $19
    add hl, bc                                    ; $7662: $09
    ld [bc], a                                    ; $7663: $02
    jr jr_0ee_75e8                                ; $7664: $18 $82

    inc e                                         ; $7666: $1c
    inc b                                         ; $7667: $04
    inc bc                                        ; $7668: $03
    jr @-$7d                                      ; $7669: $18 $81

    ld [$1002], sp                                ; $766b: $08 $02 $10
    ld [bc], a                                    ; $766e: $02
    nop                                           ; $766f: $00
    ld [bc], a                                    ; $7670: $02
    jr @-$7c                                      ; $7671: $18 $82

    inc e                                         ; $7673: $1c
    inc b                                         ; $7674: $04

Jump_0ee_7675:
    ld [bc], a                                    ; $7675: $02
    jr @+$01                                      ; $7676: $18 $ff

    rrca                                          ; $7678: $0f
    dec b                                         ; $7679: $05
    pop af                                        ; $767a: $f1
    jr nz, jr_0ee_765f                            ; $767b: $20 $e2

    ld bc, $f9e2                                  ; $767d: $01 $e2 $f9
    ld [c], a                                     ; $7680: $e2

jr_0ee_7681:
    ld bc, $08e2                                  ; $7681: $01 $e2 $08
    ld a, [c]                                     ; $7684: $f2
    ei                                            ; $7685: $fb
    ld a, [c]                                     ; $7686: $f2
    inc bc                                        ; $7687: $03
    ld [bc], a                                    ; $7688: $02
    inc bc                                        ; $7689: $03
    sbc [hl]                                      ; $768a: $9e
    rlca                                          ; $768b: $07
    inc b                                         ; $768c: $04
    rrca                                          ; $768d: $0f
    ld [$0f0b], sp                                ; $768e: $08 $0b $0f
    rra                                           ; $7691: $1f
    dec e                                         ; $7692: $1d
    rra                                           ; $7693: $1f
    ld d, $0d                                     ; $7694: $16 $0d
    ld a, [bc]                                    ; $7696: $0a
    rlca                                          ; $7697: $07
    inc b                                         ; $7698: $04
    ld a, e                                       ; $7699: $7b
    ld a, h                                       ; $769a: $7c
    rst $20                                       ; $769b: $e7
    sbc a                                         ; $769c: $9f
    db $fd                                        ; $769d: $fd
    add [hl]                                      ; $769e: $86
    push af                                       ; $769f: $f5
    adc [hl]                                      ; $76a0: $8e
    db $eb                                        ; $76a1: $eb
    sbc [hl]                                      ; $76a2: $9e
    halt                                          ; $76a3: $76
    ld a, e                                       ; $76a4: $7b
    dec a                                         ; $76a5: $3d
    inc sp                                        ; $76a6: $33
    dec de                                        ; $76a7: $1b
    ld e, $02                                     ; $76a8: $1e $02
    ret nz                                        ; $76aa: $c0

    sbc [hl]                                      ; $76ab: $9e
    and b                                         ; $76ac: $a0
    ld h, b                                       ; $76ad: $60
    ret nc                                        ; $76ae: $d0

    jr nc, jr_0ee_7681                            ; $76af: $30 $d0

    or b                                          ; $76b1: $b0
    sub b                                         ; $76b2: $90
    ld [hl], b                                    ; $76b3: $70
    sub b                                         ; $76b4: $90
    ld [hl], b                                    ; $76b5: $70
    and b                                         ; $76b6: $a0
    ld h, b                                       ; $76b7: $60
    and b                                         ; $76b8: $a0
    ld h, b                                       ; $76b9: $60
    sub $36                                       ; $76ba: $d6 $36
    db $fd                                        ; $76bc: $fd
    ei                                            ; $76bd: $fb
    rst $38                                       ; $76be: $ff
    dec d                                         ; $76bf: $15
    db $fd                                        ; $76c0: $fd
    rlca                                          ; $76c1: $07
    cp $17                                        ; $76c2: $fe $17
    db $dd                                        ; $76c4: $dd
    ld [hl], $fb                                  ; $76c5: $36 $fb
    ld l, e                                       ; $76c7: $6b
    cp [hl]                                       ; $76c8: $be
    rst $18                                       ; $76c9: $df
    ld [bc], a                                    ; $76ca: $02
    ld [bc], a                                    ; $76cb: $02
    xor b                                         ; $76cc: $a8
    ld b, $05                                     ; $76cd: $06 $05
    ld b, $05                                     ; $76cf: $06 $05
    ld b, $05                                     ; $76d1: $06 $05
    inc c                                         ; $76d3: $0c
    ld a, [bc]                                    ; $76d4: $0a
    inc c                                         ; $76d5: $0c
    ld a, [bc]                                    ; $76d6: $0a
    inc c                                         ; $76d7: $0c
    ld a, [bc]                                    ; $76d8: $0a
    jr jr_0ee_76ef                                ; $76d9: $18 $14

    jr jr_0ee_76f1                                ; $76db: $18 $14

    jr jr_0ee_76f3                                ; $76dd: $18 $14

    jr nc, jr_0ee_7709                            ; $76df: $30 $28

    jr nc, jr_0ee_770b                            ; $76e1: $30 $28

    ld [hl], b                                    ; $76e3: $70
    ld l, b                                       ; $76e4: $68
    ld h, b                                       ; $76e5: $60
    ld d, b                                       ; $76e6: $50
    ld h, b                                       ; $76e7: $60
    ld d, b                                       ; $76e8: $50
    ld a, b                                       ; $76e9: $78
    jr c, jr_0ee_772b                             ; $76ea: $38 $3f

    ld [hl-], a                                   ; $76ec: $32
    ld l, $3f                                     ; $76ed: $2e $3f

jr_0ee_76ef:
    ld e, c                                       ; $76ef: $59
    ld h, a                                       ; $76f0: $67

jr_0ee_76f1:
    ld d, e                                       ; $76f1: $53
    ld l, a                                       ; $76f2: $6f

jr_0ee_76f3:
    ld a, [hl]                                    ; $76f3: $7e
    ld b, a                                       ; $76f4: $47
    ld [bc], a                                    ; $76f5: $02
    ld a, a                                       ; $76f6: $7f
    add d                                         ; $76f7: $82
    dec hl                                        ; $76f8: $2b
    scf                                           ; $76f9: $37
    ld [bc], a                                    ; $76fa: $02
    ccf                                           ; $76fb: $3f
    add d                                         ; $76fc: $82
    dec hl                                        ; $76fd: $2b
    scf                                           ; $76fe: $37
    ld [bc], a                                    ; $76ff: $02
    ccf                                           ; $7700: $3f
    sub [hl]                                      ; $7701: $96
    ld d, l                                       ; $7702: $55
    ld l, [hl]                                    ; $7703: $6e
    ld e, a                                       ; $7704: $5f
    ld l, h                                       ; $7705: $6c
    ld l, [hl]                                    ; $7706: $6e
    ld e, l                                       ; $7707: $5d
    ld d, l                                       ; $7708: $55

jr_0ee_7709:
    ld [hl], a                                    ; $7709: $77
    cp [hl]                                       ; $770a: $be

jr_0ee_770b:
    bit 5, a                                      ; $770b: $cb $6f
    ld a, a                                       ; $770d: $7f
    rst $38                                       ; $770e: $ff
    add hl, bc                                    ; $770f: $09
    dec a                                         ; $7710: $3d
    rst $38                                       ; $7711: $ff
    ei                                            ; $7712: $fb
    db $dd                                        ; $7713: $dd
    ld d, [hl]                                    ; $7714: $56
    or $7e                                        ; $7715: $f6 $7e
    ld a, [$e402]                                 ; $7717: $fa $02 $e4
    add d                                         ; $771a: $82
    ld h, b                                       ; $771b: $60
    and b                                         ; $771c: $a0
    inc bc                                        ; $771d: $03
    ret nz                                        ; $771e: $c0

    add c                                         ; $771f: $81
    ld b, b                                       ; $7720: $40
    ld [bc], a                                    ; $7721: $02
    ret nz                                        ; $7722: $c0

    ld b, $80                                     ; $7723: $06 $80
    ld [bc], a                                    ; $7725: $02
    ret nz                                        ; $7726: $c0

    add d                                         ; $7727: $82
    ldh [rNR41], a                                ; $7728: $e0 $20
    ld [bc], a                                    ; $772a: $02

jr_0ee_772b:
    ret nz                                        ; $772b: $c0

    rst $38                                       ; $772c: $ff
    ld de, $f406                                  ; $772d: $11 $06 $f4
    db $10                                        ; $7730: $10
    rst $28                                       ; $7731: $ef
    ld [bc], a                                    ; $7732: $02
    db $f4                                        ; $7733: $f4
    db $f4                                        ; $7734: $f4
    rst $28                                       ; $7735: $ef
    db $fc                                        ; $7736: $fc
    xor $04                                       ; $7737: $ee $04
    ldh a, [rTMA]                                 ; $7739: $f0 $06
    cp $fd                                        ; $773b: $fe $fd
    cp $04                                        ; $773d: $fe $04
    ld [bc], a                                    ; $773f: $02
    inc bc                                        ; $7740: $03
    ld [bc], a                                    ; $7741: $02
    rrca                                          ; $7742: $0f
    sub b                                         ; $7743: $90
    rra                                           ; $7744: $1f
    inc d                                         ; $7745: $14
    ccf                                           ; $7746: $3f
    jr c, jr_0ee_77ae                             ; $7747: $38 $65

    ld a, d                                       ; $7749: $7a
    db $fc                                        ; $774a: $fc
    cp a                                          ; $774b: $bf
    cp $e1                                        ; $774c: $fe $e1
    di                                            ; $774e: $f3
    rst $08                                       ; $774f: $cf
    adc a                                         ; $7750: $8f
    ldh a, [$73]                                  ; $7751: $f0 $73
    ld a, a                                       ; $7753: $7f
    ld [bc], a                                    ; $7754: $02
    inc c                                         ; $7755: $0c
    ld a, [bc]                                    ; $7756: $0a
    nop                                           ; $7757: $00
    ld [bc], a                                    ; $7758: $02
    ld bc, $0f97                                  ; $7759: $01 $97 $0f
    ld c, $37                                     ; $775c: $0e $37
    add hl, sp                                    ; $775e: $39
    ld e, a                                       ; $775f: $5f
    ld [hl], c                                    ; $7760: $71
    push af                                       ; $7761: $f5
    db $eb                                        ; $7762: $eb
    db $ed                                        ; $7763: $ed
    or e                                          ; $7764: $b3
    ldh [$bf], a                                  ; $7765: $e0 $bf
    ld [hl], d                                    ; $7767: $72
    rst $18                                       ; $7768: $df
    cp a                                          ; $7769: $bf
    ld l, a                                       ; $776a: $6f
    sub $3f                                       ; $776b: $d6 $3f
    ld d, a                                       ; $776d: $57
    cp h                                          ; $776e: $bc
    rst $28                                       ; $776f: $ef
    inc a                                         ; $7770: $3c
    db $fd                                        ; $7771: $fd
    ld [bc], a                                    ; $7772: $02
    cp $85                                        ; $7773: $fe $85
    ccf                                           ; $7775: $3f
    ld a, l                                       ; $7776: $7d
    add l                                         ; $7777: $85
    or [hl]                                       ; $7778: $b6
    jp c, Jump_000_1c02                           ; $7779: $da $02 $1c

    sbc [hl]                                      ; $777c: $9e
    ei                                            ; $777d: $fb
    rst $20                                       ; $777e: $e7
    rst $38                                       ; $777f: $ff
    sbc $bd                                       ; $7780: $de $bd
    or $ff                                        ; $7782: $f6 $ff
    ld e, h                                       ; $7784: $5c
    ld l, [hl]                                    ; $7785: $6e
    pop de                                        ; $7786: $d1
    reti                                          ; $7787: $d9


    and $ff                                       ; $7788: $e6 $ff
    cp h                                          ; $778a: $bc
    rst $08                                       ; $778b: $cf
    ld hl, sp-$09                                 ; $778c: $f8 $f7
    ld hl, sp-$35                                 ; $778e: $f8 $cb
    db $f4                                        ; $7790: $f4
    ld b, l                                       ; $7791: $45
    ld a, [$fcc3]                                 ; $7792: $fa $c3 $fc
    pop bc                                        ; $7795: $c1
    rst $38                                       ; $7796: $ff
    ld [c], a                                     ; $7797: $e2
    ld a, $fc                                     ; $7798: $3e $fc
    call c, Call_000_0206                         ; $779a: $dc $06 $02
    inc bc                                        ; $779d: $03
    nop                                           ; $779e: $00
    add d                                         ; $779f: $82
    ld [bc], a                                    ; $77a0: $02
    nop                                           ; $77a1: $00
    ld [bc], a                                    ; $77a2: $02
    ld [bc], a                                    ; $77a3: $02
    adc c                                         ; $77a4: $89
    ld bc, $0102                                  ; $77a5: $01 $02 $01
    ld [bc], a                                    ; $77a8: $02
    ld bc, $0200                                  ; $77a9: $01 $00 $02
    nop                                           ; $77ac: $00
    ld [bc], a                                    ; $77ad: $02

jr_0ee_77ae:
    ld b, $00                                     ; $77ae: $06 $00
    add h                                         ; $77b0: $84
    db $f4                                        ; $77b1: $f4
    sub h                                         ; $77b2: $94
    cp $fa                                        ; $77b3: $fe $fa
    ld [bc], a                                    ; $77b5: $02
    ld bc, $de82                                  ; $77b6: $01 $82 $de
    rst $18                                       ; $77b9: $df
    ld [bc], a                                    ; $77ba: $02
    add hl, bc                                    ; $77bb: $09
    inc e                                         ; $77bc: $1c
    nop                                           ; $77bd: $00
    ld [bc], a                                    ; $77be: $02
    ld b, b                                       ; $77bf: $40
    add d                                         ; $77c0: $82
    add hl, sp                                    ; $77c1: $39
    add hl, hl                                    ; $77c2: $29
    ld [bc], a                                    ; $77c3: $02
    db $10                                        ; $77c4: $10
    jr jr_0ee_77c7                                ; $77c5: $18 $00

jr_0ee_77c7:
    rst $38                                       ; $77c7: $ff
    rrca                                          ; $77c8: $0f
    dec b                                         ; $77c9: $05
    db $f4                                        ; $77ca: $f4
    db $10                                        ; $77cb: $10
    rst $28                                       ; $77cc: $ef
    ld [bc], a                                    ; $77cd: $02
    push af                                       ; $77ce: $f5
    db $f4                                        ; $77cf: $f4
    ldh a, [$fc]                                  ; $77d0: $f0 $fc
    rst $28                                       ; $77d2: $ef
    inc b                                         ; $77d3: $04
    pop af                                        ; $77d4: $f1
    ld b, $ff                                     ; $77d5: $06 $ff
    nop                                           ; $77d7: $00
    ld [bc], a                                    ; $77d8: $02
    inc bc                                        ; $77d9: $03
    sub b                                         ; $77da: $90
    rrca                                          ; $77db: $0f
    dec c                                         ; $77dc: $0d
    rra                                           ; $77dd: $1f
    jr jr_0ee_7815                                ; $77de: $18 $35

    ld a, [hl-]                                   ; $77e0: $3a
    ld a, h                                       ; $77e1: $7c
    ld a, a                                       ; $77e2: $7f
    rst $38                                       ; $77e3: $ff
    and b                                         ; $77e4: $a0
    di                                            ; $77e5: $f3
    rst $08                                       ; $77e6: $cf
    adc a                                         ; $77e7: $8f
    ldh a, [$73]                                  ; $77e8: $f0 $73
    ld a, a                                       ; $77ea: $7f
    ld [bc], a                                    ; $77eb: $02
    inc c                                         ; $77ec: $0c
    inc c                                         ; $77ed: $0c
    nop                                           ; $77ee: $00
    ld [bc], a                                    ; $77ef: $02
    ld bc, $079c                                  ; $77f0: $01 $9c $07
    ld b, $1f                                     ; $77f3: $06 $1f

Jump_0ee_77f5:
    add hl, de                                    ; $77f5: $19
    ld a, l                                       ; $77f6: $7d
    ld h, e                                       ; $77f7: $63
    rst $30                                       ; $77f8: $f7
    jp hl                                         ; $77f9: $e9


    db $ed                                        ; $77fa: $ed
    or e                                          ; $77fb: $b3
    ldh [$bf], a                                  ; $77fc: $e0 $bf
    ld [hl], e                                    ; $77fe: $73
    rst $18                                       ; $77ff: $df
    xor $3f                                       ; $7800: $ee $3f
    ld [hl], a                                    ; $7802: $77
    sbc h                                         ; $7803: $9c
    rst $18                                       ; $7804: $df
    inc a                                         ; $7805: $3c
    db $fd                                        ; $7806: $fd
    cp $be                                        ; $7807: $fe $be
    ld a, a                                       ; $7809: $7f
    ld a, l                                       ; $780a: $7d
    add l                                         ; $780b: $85
    or [hl]                                       ; $780c: $b6
    jp c, Jump_0ee_6f02                           ; $780d: $da $02 $6f

    ld [bc], a                                    ; $7810: $02
    inc e                                         ; $7811: $1c
    sbc [hl]                                      ; $7812: $9e
    rst $38                                       ; $7813: $ff
    db $e3                                        ; $7814: $e3

jr_0ee_7815:
    rst $38                                       ; $7815: $ff
    sbc $bd                                       ; $7816: $de $bd
    or $ff                                        ; $7818: $f6 $ff
    ld e, h                                       ; $781a: $5c
    ld l, [hl]                                    ; $781b: $6e
    pop de                                        ; $781c: $d1
    reti                                          ; $781d: $d9


    and $ff                                       ; $781e: $e6 $ff
    cp h                                          ; $7820: $bc
    set 7, h                                      ; $7821: $cb $fc
    rst $30                                       ; $7823: $f7
    ld hl, sp+$4a                                 ; $7824: $f8 $4a
    push af                                       ; $7826: $f5
    jp $c1fc                                      ; $7827: $c3 $fc $c1


    cp $e1                                        ; $782a: $fe $e1
    ccf                                           ; $782c: $3f
    cp $de                                        ; $782d: $fe $de
    cp l                                          ; $782f: $bd
    and l                                         ; $7830: $a5
    ld b, $02                                     ; $7831: $06 $02
    inc bc                                        ; $7833: $03
    nop                                           ; $7834: $00
    add d                                         ; $7835: $82
    ld [bc], a                                    ; $7836: $02
    nop                                           ; $7837: $00
    ld [bc], a                                    ; $7838: $02
    ld [bc], a                                    ; $7839: $02
    add [hl]                                      ; $783a: $86
    ld bc, $0102                                  ; $783b: $01 $02 $01
    ld [bc], a                                    ; $783e: $02
    ld bc, $0300                                  ; $783f: $01 $00 $03
    ld [bc], a                                    ; $7842: $02
    ld b, $00                                     ; $7843: $06 $00
    add [hl]                                      ; $7845: $86
    cp $fa                                        ; $7846: $fe $fa
    db $e4                                        ; $7848: $e4
    and h                                         ; $7849: $a4
    inc b                                         ; $784a: $04
    inc c                                         ; $784b: $0c
    ld [bc], a                                    ; $784c: $02
    ld c, b                                       ; $784d: $48
    ld [bc], a                                    ; $784e: $02
    ld bc, $001a                                  ; $784f: $01 $1a $00
    rst $38                                       ; $7852: $ff
    rrca                                          ; $7853: $0f
    dec b                                         ; $7854: $05
    db $f4                                        ; $7855: $f4
    db $10                                        ; $7856: $10
    rst $28                                       ; $7857: $ef
    ld [bc], a                                    ; $7858: $02
    push af                                       ; $7859: $f5
    db $f4                                        ; $785a: $f4
    pop af                                        ; $785b: $f1
    db $fc                                        ; $785c: $fc
    ldh a, [rDIV]                                 ; $785d: $f0 $04
    ld a, [c]                                     ; $785f: $f2
    ld b, $00                                     ; $7860: $06 $00
    db $fd                                        ; $7862: $fd
    ld [bc], a                                    ; $7863: $02
    ld bc, $0302                                  ; $7864: $01 $02 $03
    adc [hl]                                      ; $7867: $8e
    rrca                                          ; $7868: $0f
    inc c                                         ; $7869: $0c
    dec e                                         ; $786a: $1d
    ld a, [de]                                    ; $786b: $1a
    inc a                                         ; $786c: $3c
    ccf                                           ; $786d: $3f
    ld l, a                                       ; $786e: $6f
    ld [hl], b                                    ; $786f: $70
    di                                            ; $7870: $f3
    rst $08                                       ; $7871: $cf
    adc a                                         ; $7872: $8f
    ldh a, [$73]                                  ; $7873: $f0 $73
    ld a, a                                       ; $7875: $7f
    ld [bc], a                                    ; $7876: $02
    inc c                                         ; $7877: $0c
    inc c                                         ; $7878: $0c
    nop                                           ; $7879: $00
    ld [bc], a                                    ; $787a: $02
    ld bc, $079a                                  ; $787b: $01 $9a $07
    ld b, $1f                                     ; $787e: $06 $1f
    add hl, de                                    ; $7880: $19
    ld [hl], l                                    ; $7881: $75
    ld a, e                                       ; $7882: $7b
    ei                                            ; $7883: $fb
    push hl                                       ; $7884: $e5
    db $ed                                        ; $7885: $ed
    or e                                          ; $7886: $b3
    halt                                          ; $7887: $76
    reti                                          ; $7888: $d9


    di                                            ; $7889: $f3
    ccf                                           ; $788a: $3f
    ld a, [hl]                                    ; $788b: $7e
    sbc a                                         ; $788c: $9f
    ld e, a                                       ; $788d: $5f
    cp h                                          ; $788e: $bc
    rst $38                                       ; $788f: $ff
    db $fc                                        ; $7890: $fc
    cp a                                          ; $7891: $bf
    ld a, [hl]                                    ; $7892: $7e
    ld [hl], l                                    ; $7893: $75
    adc l                                         ; $7894: $8d
    or [hl]                                       ; $7895: $b6
    jp c, Jump_0ee_6f02                           ; $7896: $da $02 $6f

    ld [bc], a                                    ; $7899: $02
    inc b                                         ; $789a: $04
    ld [bc], a                                    ; $789b: $02
    inc e                                         ; $789c: $1c
    sbc [hl]                                      ; $789d: $9e
    ei                                            ; $789e: $fb
    rst $20                                       ; $789f: $e7
    rst $38                                       ; $78a0: $ff
    sbc $bd                                       ; $78a1: $de $bd
    or $7b                                        ; $78a3: $f6 $7b
    call c, $59e6                                 ; $78a5: $dc $e6 $59
    ret c                                         ; $78a8: $d8

    rst $20                                       ; $78a9: $e7
    cp l                                          ; $78aa: $bd
    cp $eb                                        ; $78ab: $fe $eb
    call c, $fef1                                 ; $78ad: $dc $f1 $fe
    ld c, a                                       ; $78b0: $4f
    ldh a, [$c5]                                  ; $78b1: $f0 $c5
    ld a, [$ffc0]                                 ; $78b3: $fa $c0 $ff
    db $e3                                        ; $78b6: $e3
    ccf                                           ; $78b7: $3f
    db $fd                                        ; $78b8: $fd
    call $fe7f                                    ; $78b9: $cd $7f $fe
    ld b, $02                                     ; $78bc: $06 $02
    dec b                                         ; $78be: $05
    nop                                           ; $78bf: $00
    add d                                         ; $78c0: $82
    ld [bc], a                                    ; $78c1: $02
    nop                                           ; $78c2: $00
    ld [bc], a                                    ; $78c3: $02
    ld [bc], a                                    ; $78c4: $02
    add h                                         ; $78c5: $84
    ld bc, $0102                                  ; $78c6: $01 $02 $01
    nop                                           ; $78c9: $00
    inc bc                                        ; $78ca: $03
    ld [bc], a                                    ; $78cb: $02
    inc b                                         ; $78cc: $04
    nop                                           ; $78cd: $00
    ld [bc], a                                    ; $78ce: $02
    ld [bc], a                                    ; $78cf: $02
    add d                                         ; $78d0: $82
    db $e4                                        ; $78d1: $e4
    and h                                         ; $78d2: $a4
    ld [bc], a                                    ; $78d3: $02
    ld b, b                                       ; $78d4: $40
    ld [bc], a                                    ; $78d5: $02
    ld bc, $001e                                  ; $78d6: $01 $1e $00
    rst $38                                       ; $78d9: $ff
    dec c                                         ; $78da: $0d
    inc b                                         ; $78db: $04

jr_0ee_78dc:
    db $f4                                        ; $78dc: $f4
    db $10                                        ; $78dd: $10
    rst $28                                       ; $78de: $ef
    ld [bc], a                                    ; $78df: $02
    push af                                       ; $78e0: $f5
    db $f4                                        ; $78e1: $f4
    pop af                                        ; $78e2: $f1
    db $fc                                        ; $78e3: $fc
    pop af                                        ; $78e4: $f1
    inc b                                         ; $78e5: $04
    di                                            ; $78e6: $f3
    dec b                                         ; $78e7: $05
    ld [bc], a                                    ; $78e8: $02
    ld bc, $0702                                  ; $78e9: $01 $02 $07
    adc [hl]                                      ; $78ec: $8e
    rra                                           ; $78ed: $1f
    inc e                                         ; $78ee: $1c
    dec l                                         ; $78ef: $2d
    ld a, [hl-]                                   ; $78f0: $3a
    ld a, h                                       ; $78f1: $7c
    ld e, a                                       ; $78f2: $5f
    ld l, a                                       ; $78f3: $6f
    ld [hl], b                                    ; $78f4: $70
    di                                            ; $78f5: $f3
    rst $08                                       ; $78f6: $cf
    adc a                                         ; $78f7: $8f

Call_0ee_78f8:
    ldh a, [$73]                                  ; $78f8: $f0 $73
    ld a, a                                       ; $78fa: $7f
    ld [bc], a                                    ; $78fb: $02
    inc c                                         ; $78fc: $0c
    inc c                                         ; $78fd: $0c
    nop                                           ; $78fe: $00
    ld [bc], a                                    ; $78ff: $02
    ld bc, $079a                                  ; $7900: $01 $9a $07
    ld b, $3f                                     ; $7903: $06 $3f
    jr c, jr_0ee_78dc                             ; $7905: $38 $d5

    ei                                            ; $7907: $fb
    rst $30                                       ; $7908: $f7
    ld l, c                                       ; $7909: $69
    db $fd                                        ; $790a: $fd
    and e                                         ; $790b: $a3
    ld l, c                                       ; $790c: $69
    rst $10                                       ; $790d: $d7
    di                                            ; $790e: $f3
    ccf                                           ; $790f: $3f
    ld a, [hl]                                    ; $7910: $7e
    sbc a                                         ; $7911: $9f
    rst $18                                       ; $7912: $df
    inc a                                         ; $7913: $3c
    rst $38                                       ; $7914: $ff
    db $fc                                        ; $7915: $fc
    cp a                                          ; $7916: $bf
    ld a, [hl]                                    ; $7917: $7e
    ld l, l                                       ; $7918: $6d
    sub l                                         ; $7919: $95
    or [hl]                                       ; $791a: $b6
    jp c, Jump_0ee_6f02                           ; $791b: $da $02 $6f

    ld [bc], a                                    ; $791e: $02
    inc b                                         ; $791f: $04
    ld [bc], a                                    ; $7920: $02
    call c, $bf9e                                 ; $7921: $dc $9e $bf
    ld h, e                                       ; $7924: $63
    ld a, a                                       ; $7925: $7f
    sbc $bd                                       ; $7926: $de $bd
    or $7b                                        ; $7928: $f6 $7b
    call c, $c976                                 ; $792a: $dc $76 $c9
    ret c                                         ; $792d: $d8

    ld h, a                                       ; $792e: $67
    cp a                                          ; $792f: $bf
    db $fc                                        ; $7930: $fc
    db $eb                                        ; $7931: $eb
    call c, $f976                                 ; $7932: $dc $76 $f9
    jp $c2fd                                      ; $7935: $c3 $fd $c2


    cp $fc                                        ; $7938: $fe $fc
    inc a                                         ; $793a: $3c
    ld sp, hl                                     ; $793b: $f9
    ret                                           ; $793c: $c9


    ld a, a                                       ; $793d: $7f
    cp $b9                                        ; $793e: $fe $b9
    xor c                                         ; $7940: $a9
    ld b, $01                                     ; $7941: $06 $01
    dec b                                         ; $7943: $05
    nop                                           ; $7944: $00
    add e                                         ; $7945: $83
    ld bc, $0100                                  ; $7946: $01 $00 $01
    ld a, [bc]                                    ; $7949: $0a
    nop                                           ; $794a: $00
    ld [bc], a                                    ; $794b: $02
    ld bc, $0002                                  ; $794c: $01 $02 $00
    ld [bc], a                                    ; $794f: $02
    jr nz, jr_0ee_7954                            ; $7950: $20 $02

    nop                                           ; $7952: $00
    rst $38                                       ; $7953: $ff

jr_0ee_7954:
    rrca                                          ; $7954: $0f
    dec b                                         ; $7955: $05
    db $f4                                        ; $7956: $f4
    db $10                                        ; $7957: $10
    rst $28                                       ; $7958: $ef
    ld [bc], a                                    ; $7959: $02
    db $f4                                        ; $795a: $f4
    db $f4                                        ; $795b: $f4
    ldh a, [$fc]                                  ; $795c: $f0 $fc
    ldh a, [rDIV]                                 ; $795e: $f0 $04
    ld a, [c]                                     ; $7960: $f2
    dec b                                         ; $7961: $05
    nop                                           ; $7962: $00
    db $fd                                        ; $7963: $fd
    ld [bc], a                                    ; $7964: $02
    ld bc, $0302                                  ; $7965: $01 $02 $03
    sub b                                         ; $7968: $90
    rrca                                          ; $7969: $0f
    inc c                                         ; $796a: $0c
    rra                                           ; $796b: $1f
    jr jr_0ee_79a3                                ; $796c: $18 $35

    ld a, [hl-]                                   ; $796e: $3a
    ld a, h                                       ; $796f: $7c
    ld e, a                                       ; $7970: $5f
    ld a, a                                       ; $7971: $7f
    ld h, b                                       ; $7972: $60
    di                                            ; $7973: $f3
    rst $08                                       ; $7974: $cf
    adc a                                         ; $7975: $8f
    ldh a, [$73]                                  ; $7976: $f0 $73
    ld a, a                                       ; $7978: $7f
    ld [bc], a                                    ; $7979: $02
    inc c                                         ; $797a: $0c
    ld a, [bc]                                    ; $797b: $0a
    nop                                           ; $797c: $00
    ld [bc], a                                    ; $797d: $02
    ld bc, $0795                                  ; $797e: $01 $95 $07
    ld b, $1f                                     ; $7981: $06 $1f
    jr jr_0ee_79f4                                ; $7983: $18 $6f

    ld [hl], c                                    ; $7985: $71
    rst $30                                       ; $7986: $f7
    jp hl                                         ; $7987: $e9


    db $ed                                        ; $7988: $ed
    or e                                          ; $7989: $b3
    pop hl                                        ; $798a: $e1
    cp a                                          ; $798b: $bf
    ld [hl], e                                    ; $798c: $73
    rst $18                                       ; $798d: $df
    xor [hl]                                      ; $798e: $ae
    ld a, a                                       ; $798f: $7f
    ld [hl], a                                    ; $7990: $77
    sbc h                                         ; $7991: $9c
    ld e, a                                       ; $7992: $5f
    cp h                                          ; $7993: $bc
    db $fd                                        ; $7994: $fd
    ld [bc], a                                    ; $7995: $02
    cp $85                                        ; $7996: $fe $85
    ccf                                           ; $7998: $3f
    ld a, l                                       ; $7999: $7d
    add l                                         ; $799a: $85
    or [hl]                                       ; $799b: $b6
    jp c, Jump_0ee_6f02                           ; $799c: $da $02 $6f

    ld [bc], a                                    ; $799f: $02
    call c, $bb9e                                 ; $79a0: $dc $9e $bb

jr_0ee_79a3:
    ld h, a                                       ; $79a3: $67
    ld a, a                                       ; $79a4: $7f
    sbc $bd                                       ; $79a5: $de $bd
    or $7b                                        ; $79a7: $f6 $7b
    call c, Call_0ee_49f6                         ; $79a9: $dc $f6 $49
    ret c                                         ; $79ac: $d8

    rst $20                                       ; $79ad: $e7
    cp a                                          ; $79ae: $bf
    db $fc                                        ; $79af: $fc
    db $eb                                        ; $79b0: $eb
    call c, $fc73                                 ; $79b1: $dc $73 $fc
    rst $08                                       ; $79b4: $cf
    pop af                                        ; $79b5: $f1
    jp nz, $f4fe                                  ; $79b6: $c2 $fe $f4

    inc a                                         ; $79b9: $3c
    ldh a, [$d0]                                  ; $79ba: $f0 $d0
    cp c                                          ; $79bc: $b9
    xor c                                         ; $79bd: $a9
    ld a, a                                       ; $79be: $7f
    cp $06                                        ; $79bf: $fe $06
    ld bc, $0005                                  ; $79c1: $01 $05 $00
    add l                                         ; $79c4: $85
    ld bc, $0100                                  ; $79c5: $01 $00 $01
    nop                                           ; $79c8: $00
    ld bc, $000a                                  ; $79c9: $01 $0a $00
    ld [bc], a                                    ; $79cc: $02
    ld bc, $7282                                  ; $79cd: $01 $82 $72
    ld d, d                                       ; $79d0: $52
    ld [bc], a                                    ; $79d1: $02
    jr nz, @+$04                                  ; $79d2: $20 $02

    add hl, bc                                    ; $79d4: $09
    ld e, $00                                     ; $79d5: $1e $00
    rst $38                                       ; $79d7: $ff
    rrca                                          ; $79d8: $0f
    dec b                                         ; $79d9: $05
    db $f4                                        ; $79da: $f4
    db $10                                        ; $79db: $10
    rst $28                                       ; $79dc: $ef
    ld [bc], a                                    ; $79dd: $02
    db $f4                                        ; $79de: $f4
    db $f4                                        ; $79df: $f4
    ldh a, [$fc]                                  ; $79e0: $f0 $fc
    rst $28                                       ; $79e2: $ef
    inc b                                         ; $79e3: $04
    pop af                                        ; $79e4: $f1
    dec b                                         ; $79e5: $05
    rst $38                                       ; $79e6: $ff
    nop                                           ; $79e7: $00
    ld [bc], a                                    ; $79e8: $02
    ld bc, $0302                                  ; $79e9: $01 $02 $03
    sub b                                         ; $79ec: $90
    ld c, $0d                                     ; $79ed: $0e $0d
    rra                                           ; $79ef: $1f
    jr jr_0ee_7a27                                ; $79f0: $18 $35

    ld a, [hl-]                                   ; $79f2: $3a
    ld a, h                                       ; $79f3: $7c

jr_0ee_79f4:
    ld e, a                                       ; $79f4: $5f
    ld a, a                                       ; $79f5: $7f
    ld h, b                                       ; $79f6: $60
    di                                            ; $79f7: $f3
    rst $08                                       ; $79f8: $cf
    adc a                                         ; $79f9: $8f
    ldh a, [$73]                                  ; $79fa: $f0 $73
    ld a, a                                       ; $79fc: $7f
    ld [bc], a                                    ; $79fd: $02
    inc c                                         ; $79fe: $0c
    ld a, [bc]                                    ; $79ff: $0a
    nop                                           ; $7a00: $00
    ld [bc], a                                    ; $7a01: $02
    ld bc, $0795                                  ; $7a02: $01 $95 $07
    ld b, $1e                                     ; $7a05: $06 $1e
    add hl, de                                    ; $7a07: $19
    ld l, a                                       ; $7a08: $6f
    ld [hl], c                                    ; $7a09: $71
    rst $30                                       ; $7a0a: $f7
    jp hl                                         ; $7a0b: $e9


    db $ed                                        ; $7a0c: $ed
    or e                                          ; $7a0d: $b3
    db $e4                                        ; $7a0e: $e4
    cp e                                          ; $7a0f: $bb
    di                                            ; $7a10: $f3
    ld e, a                                       ; $7a11: $5f
    xor [hl]                                      ; $7a12: $ae
    ld a, a                                       ; $7a13: $7f
    ld d, a                                       ; $7a14: $57
    cp h                                          ; $7a15: $bc
    rst $18                                       ; $7a16: $df
    inc a                                         ; $7a17: $3c
    db $fd                                        ; $7a18: $fd
    ld [bc], a                                    ; $7a19: $02
    cp $85                                        ; $7a1a: $fe $85
    ccf                                           ; $7a1c: $3f
    ld a, l                                       ; $7a1d: $7d
    add l                                         ; $7a1e: $85
    or [hl]                                       ; $7a1f: $b6
    jp c, Jump_0ee_6f02                           ; $7a20: $da $02 $6f

    ld [bc], a                                    ; $7a23: $02
    inc e                                         ; $7a24: $1c
    sbc [hl]                                      ; $7a25: $9e
    ei                                            ; $7a26: $fb

jr_0ee_7a27:
    rst $20                                       ; $7a27: $e7
    rst $38                                       ; $7a28: $ff
    sbc $bd                                       ; $7a29: $de $bd
    or $7b                                        ; $7a2b: $f6 $7b
    call c, Call_0ee_41fe                         ; $7a2d: $dc $fe $41
    ret c                                         ; $7a30: $d8

    rst $20                                       ; $7a31: $e7
    cp e                                          ; $7a32: $bb
    db $fc                                        ; $7a33: $fc
    db $eb                                        ; $7a34: $eb
    call c, $f8f7                                 ; $7a35: $dc $f7 $f8
    ld b, e                                       ; $7a38: $43
    db $fc                                        ; $7a39: $fc
    rst $08                                       ; $7a3a: $cf
    pop af                                        ; $7a3b: $f1
    add $fa                                       ; $7a3c: $c6 $fa
    db $f4                                        ; $7a3e: $f4
    inc a                                         ; $7a3f: $3c
    ld hl, sp-$28                                 ; $7a40: $f8 $d8
    cp l                                          ; $7a42: $bd
    and l                                         ; $7a43: $a5
    ld b, $01                                     ; $7a44: $06 $01
    dec b                                         ; $7a46: $05
    nop                                           ; $7a47: $00
    add l                                         ; $7a48: $85
    ld bc, $0100                                  ; $7a49: $01 $00 $01
    nop                                           ; $7a4c: $00
    ld bc, $000c                                  ; $7a4d: $01 $0c $00
    add [hl]                                      ; $7a50: $86
    rst $38                                       ; $7a51: $ff
    db $fd                                        ; $7a52: $fd
    ld [hl], d                                    ; $7a53: $72
    ld d, d                                       ; $7a54: $52
    nop                                           ; $7a55: $00
    ld [$4802], sp                                ; $7a56: $08 $02 $48
    ld [bc], a                                    ; $7a59: $02
    ld bc, $001a                                  ; $7a5a: $01 $1a $00
    rst $38                                       ; $7a5d: $ff
    dec c                                         ; $7a5e: $0d
    inc b                                         ; $7a5f: $04

jr_0ee_7a60:
    db $f4                                        ; $7a60: $f4
    db $10                                        ; $7a61: $10
    rst $28                                       ; $7a62: $ef
    ld [bc], a                                    ; $7a63: $02
    ld a, [c]                                     ; $7a64: $f2
    db $f4                                        ; $7a65: $f4
    ld a, [c]                                     ; $7a66: $f2
    db $fc                                        ; $7a67: $fc
    ld a, [c]                                     ; $7a68: $f2
    inc b                                         ; $7a69: $04
    ld a, [c]                                     ; $7a6a: $f2
    add hl, bc                                    ; $7a6b: $09
    ld b, $00                                     ; $7a6c: $06 $00
    ld [bc], a                                    ; $7a6e: $02
    inc bc                                        ; $7a6f: $03
    ld [bc], a                                    ; $7a70: $02
    rrca                                          ; $7a71: $0f
    adc [hl]                                      ; $7a72: $8e
    dec d                                         ; $7a73: $15
    ld e, $3f                                     ; $7a74: $1e $3f
    jr z, jr_0ee_7af4                             ; $7a76: $28 $7c

    ld e, a                                       ; $7a78: $5f
    ld a, [hl]                                    ; $7a79: $7e
    ld h, c                                       ; $7a7a: $61
    di                                            ; $7a7b: $f3
    rst $08                                       ; $7a7c: $cf
    adc a                                         ; $7a7d: $8f
    ldh a, [$73]                                  ; $7a7e: $f0 $73
    ld a, a                                       ; $7a80: $7f
    ld [bc], a                                    ; $7a81: $02
    inc c                                         ; $7a82: $0c
    ld b, $00                                     ; $7a83: $06 $00
    ld [bc], a                                    ; $7a85: $02
    inc bc                                        ; $7a86: $03
    adc c                                         ; $7a87: $89
    rrca                                          ; $7a88: $0f
    inc c                                         ; $7a89: $0c
    ld a, [hl]                                    ; $7a8a: $7e
    ld a, c                                       ; $7a8b: $79
    xor c                                         ; $7a8c: $a9
    sub $b4                                       ; $7a8d: $d6 $b4
    db $db                                        ; $7a8f: $db
    ld e, e                                       ; $7a90: $5b
    ld [bc], a                                    ; $7a91: $02
    rst $28                                       ; $7a92: $ef
    add [hl]                                      ; $7a93: $86
    ccf                                           ; $7a94: $3f
    ld [hl], e                                    ; $7a95: $73
    sbc a                                         ; $7a96: $9f
    reti                                          ; $7a97: $d9


    ccf                                           ; $7a98: $3f
    ei                                            ; $7a99: $fb
    ld [bc], a                                    ; $7a9a: $02
    rst $38                                       ; $7a9b: $ff
    add l                                         ; $7a9c: $85
    ccf                                           ; $7a9d: $3f
    ld a, a                                       ; $7a9e: $7f
    add a                                         ; $7a9f: $87
    or [hl]                                       ; $7aa0: $b6
    jp c, Jump_0ee_6f02                           ; $7aa1: $da $02 $6f

    ld [bc], a                                    ; $7aa4: $02
    inc b                                         ; $7aa5: $04
    ld [bc], a                                    ; $7aa6: $02
    nop                                           ; $7aa7: $00
    ld [bc], a                                    ; $7aa8: $02
    pop af                                        ; $7aa9: $f1
    sbc h                                         ; $7aaa: $9c
    rst $38                                       ; $7aab: $ff
    ld c, $ff                                     ; $7aac: $0e $ff
    add hl, bc                                    ; $7aae: $09
    cp e                                          ; $7aaf: $bb
    ld e, a                                       ; $7ab0: $5f
    cpl                                           ; $7ab1: $2f
    db $fc                                        ; $7ab2: $fc
    rst $30                                       ; $7ab3: $f7
    db $fc                                        ; $7ab4: $fc
    or l                                          ; $7ab5: $b5
    cp $df                                        ; $7ab6: $fe $df
    scf                                           ; $7ab8: $37
    db $fc                                        ; $7ab9: $fc
    dec sp                                        ; $7aba: $3b
    ld h, a                                       ; $7abb: $67
    cp a                                          ; $7abc: $bf
    db $fd                                        ; $7abd: $fd
    cp a                                          ; $7abe: $bf
    cp $de                                        ; $7abf: $fe $de
    cp l                                          ; $7ac1: $bd
    and l                                         ; $7ac2: $a5
    ld a, a                                       ; $7ac3: $7f
    cp $b9                                        ; $7ac4: $fe $b9
    xor c                                         ; $7ac6: $a9
    ld [bc], a                                    ; $7ac7: $02
    db $10                                        ; $7ac8: $10
    ld [bc], a                                    ; $7ac9: $02
    jr jr_0ee_7a60                                ; $7aca: $18 $94

    ld c, $16                                     ; $7acc: $0e $16
    rra                                           ; $7ace: $1f
    add hl, de                                    ; $7acf: $19
    rra                                           ; $7ad0: $1f
    dec c                                         ; $7ad1: $0d
    dec de                                        ; $7ad2: $1b
    dec e                                         ; $7ad3: $1d
    inc e                                         ; $7ad4: $1c
    ld [bc], a                                    ; $7ad5: $02
    db $10                                        ; $7ad6: $10
    inc c                                         ; $7ad7: $0c
    db $10                                        ; $7ad8: $10
    inc e                                         ; $7ad9: $1c
    jr jr_0ee_7af0                                ; $7ada: $18 $14

    db $10                                        ; $7adc: $10
    ld [$1000], sp                                ; $7add: $08 $00 $10
    inc b                                         ; $7ae0: $04

jr_0ee_7ae1:
    nop                                           ; $7ae1: $00
    ld [bc], a                                    ; $7ae2: $02
    db $10                                        ; $7ae3: $10
    inc b                                         ; $7ae4: $04
    nop                                           ; $7ae5: $00
    rst $38                                       ; $7ae6: $ff
    dec c                                         ; $7ae7: $0d
    inc b                                         ; $7ae8: $04
    db $f4                                        ; $7ae9: $f4
    db $10                                        ; $7aea: $10
    rst $28                                       ; $7aeb: $ef
    ld [bc], a                                    ; $7aec: $02
    di                                            ; $7aed: $f3
    db $f4                                        ; $7aee: $f4
    di                                            ; $7aef: $f3

jr_0ee_7af0:
    db $fc                                        ; $7af0: $fc
    di                                            ; $7af1: $f3
    inc b                                         ; $7af2: $04
    di                                            ; $7af3: $f3

jr_0ee_7af4:
    ld [$0004], sp                                ; $7af4: $08 $04 $00
    ld [bc], a                                    ; $7af7: $02
    ld bc, $0f02                                  ; $7af8: $01 $02 $0f
    adc [hl]                                      ; $7afb: $8e
    dec a                                         ; $7afc: $3d
    ld a, $6f                                     ; $7afd: $3e $6f
    ld e, b                                       ; $7aff: $58
    ld a, h                                       ; $7b00: $7c
    ld a, a                                       ; $7b01: $7f
    db $fd                                        ; $7b02: $fd
    jp nz, $cfb3                                  ; $7b03: $c2 $b3 $cf

    adc a                                         ; $7b06: $8f
    ldh a, [$73]                                  ; $7b07: $f0 $73
    ld a, a                                       ; $7b09: $7f
    ld [bc], a                                    ; $7b0a: $02
    inc c                                         ; $7b0b: $0c
    ld [$0200], sp                                ; $7b0c: $08 $00 $02
    rrca                                          ; $7b0f: $0f
    adc a                                         ; $7b10: $8f
    scf                                           ; $7b11: $37
    jr c, jr_0ee_7ae1                             ; $7b12: $38 $cd

    ld a, [c]                                     ; $7b14: $f2
    sub d                                         ; $7b15: $92
    db $ed                                        ; $7b16: $ed
    ld h, a                                       ; $7b17: $67
    ei                                            ; $7b18: $fb
    rst $38                                       ; $7b19: $ff
    dec a                                         ; $7b1a: $3d
    ld a, a                                       ; $7b1b: $7f
    sbc b                                         ; $7b1c: $98
    db $db                                        ; $7b1d: $db
    inc a                                         ; $7b1e: $3c
    rst $38                                       ; $7b1f: $ff
    ld [bc], a                                    ; $7b20: $02
    cp $85                                        ; $7b21: $fe $85
    ccf                                           ; $7b23: $3f
    ld a, a                                       ; $7b24: $7f
    add a                                         ; $7b25: $87
    or a                                          ; $7b26: $b7
    db $db                                        ; $7b27: $db
    ld [bc], a                                    ; $7b28: $02
    ld l, a                                       ; $7b29: $6f
    ld [bc], a                                    ; $7b2a: $02
    inc b                                         ; $7b2b: $04
    inc b                                         ; $7b2c: $04
    nop                                           ; $7b2d: $00
    sub l                                         ; $7b2e: $95
    add b                                         ; $7b2f: $80
    ret nz                                        ; $7b30: $c0

    or e                                          ; $7b31: $b3
    ld [hl], e                                    ; $7b32: $73
    db $fd                                        ; $7b33: $fd
    ld c, $ff                                     ; $7b34: $0e $ff
    inc de                                        ; $7b36: $13

Jump_0ee_7b37:
    ld [hl], a                                    ; $7b37: $77
    sbc [hl]                                      ; $7b38: $9e
    cp a                                          ; $7b39: $bf
    reti                                          ; $7b3a: $d9


    xor a                                         ; $7b3b: $af
    ld hl, sp-$15                                 ; $7b3c: $f8 $eb
    db $fc                                        ; $7b3e: $fc
    ld a, a                                       ; $7b3f: $7f
    rst $28                                       ; $7b40: $ef
    ei                                            ; $7b41: $fb
    scf                                           ; $7b42: $37
    cp a                                          ; $7b43: $bf
    ld [bc], a                                    ; $7b44: $02
    rst $18                                       ; $7b45: $df
    add l                                         ; $7b46: $85
    rst $20                                       ; $7b47: $e7
    ld a, a                                       ; $7b48: $7f
    cp $b9                                        ; $7b49: $fe $b9
    xor c                                         ; $7b4b: $a9
    ld [bc], a                                    ; $7b4c: $02
    db $10                                        ; $7b4d: $10
    inc b                                         ; $7b4e: $04
    nop                                           ; $7b4f: $00
    ld [bc], a                                    ; $7b50: $02
    ld [$0e89], sp                                ; $7b51: $08 $89 $0e
    ld b, $0f                                     ; $7b54: $06 $0f
    add hl, bc                                    ; $7b56: $09
    rrca                                          ; $7b57: $0f
    dec c                                         ; $7b58: $0d
    dec bc                                        ; $7b59: $0b
    dec c                                         ; $7b5a: $0d
    inc c                                         ; $7b5b: $0c
    ld [bc], a                                    ; $7b5c: $02
    ld [bc], a                                    ; $7b5d: $02
    add e                                         ; $7b5e: $83
    ld c, $04                                     ; $7b5f: $0e $04
    inc c                                         ; $7b61: $0c
    ld [bc], a                                    ; $7b62: $02
    ld [$0004], sp                                ; $7b63: $08 $04 $00
    ld [bc], a                                    ; $7b66: $02
    ld [$0006], sp                                ; $7b67: $08 $06 $00
    rst $38                                       ; $7b6a: $ff
    dec c                                         ; $7b6b: $0d
    inc b                                         ; $7b6c: $04
    db $f4                                        ; $7b6d: $f4
    db $10                                        ; $7b6e: $10
    rst $28                                       ; $7b6f: $ef
    ld [bc], a                                    ; $7b70: $02
    di                                            ; $7b71: $f3
    db $f4                                        ; $7b72: $f4
    di                                            ; $7b73: $f3
    db $fc                                        ; $7b74: $fc
    di                                            ; $7b75: $f3
    inc b                                         ; $7b76: $04
    di                                            ; $7b77: $f3
    rlca                                          ; $7b78: $07
    ld [bc], a                                    ; $7b79: $02
    nop                                           ; $7b7a: $00
    ld [bc], a                                    ; $7b7b: $02
    ld bc, $0682                                  ; $7b7c: $01 $82 $06
    rlca                                          ; $7b7f: $07
    ld [bc], a                                    ; $7b80: $02
    rra                                           ; $7b81: $1f
    adc [hl]                                      ; $7b82: $8e
    ccf                                           ; $7b83: $3f
    inc [hl]                                      ; $7b84: $34
    ld l, e                                       ; $7b85: $6b
    ld e, h                                       ; $7b86: $5c
    ld a, h                                       ; $7b87: $7c
    ld a, a                                       ; $7b88: $7f
    rst $30                                       ; $7b89: $f7
    ret z                                         ; $7b8a: $c8

    or e                                          ; $7b8b: $b3
    rst $08                                       ; $7b8c: $cf
    adc a                                         ; $7b8d: $8f
    ldh a, [$73]                                  ; $7b8e: $f0 $73
    ld a, a                                       ; $7b90: $7f
    ld [bc], a                                    ; $7b91: $02
    inc c                                         ; $7b92: $0c
    ld [$0200], sp                                ; $7b93: $08 $00 $02
    ccf                                           ; $7b96: $3f
    adc a                                         ; $7b97: $8f
    jp z, Jump_0ee_77f5                           ; $7b98: $ca $f5 $77

    adc b                                         ; $7b9b: $88
    cp a                                          ; $7b9c: $bf
    ld [c], a                                     ; $7b9d: $e2
    ld l, d                                       ; $7b9e: $6a
    rst $30                                       ; $7b9f: $f7
    rst $38                                       ; $7ba0: $ff
    dec a                                         ; $7ba1: $3d
    ld a, a                                       ; $7ba2: $7f
    sbc b                                         ; $7ba3: $98
    db $db                                        ; $7ba4: $db
    inc a                                         ; $7ba5: $3c
    rst $38                                       ; $7ba6: $ff
    ld [bc], a                                    ; $7ba7: $02
    cp $85                                        ; $7ba8: $fe $85
    ccf                                           ; $7baa: $3f
    ld a, a                                       ; $7bab: $7f
    add a                                         ; $7bac: $87
    or a                                          ; $7bad: $b7
    db $db                                        ; $7bae: $db
    ld [bc], a                                    ; $7baf: $02
    ld l, a                                       ; $7bb0: $6f
    ld [bc], a                                    ; $7bb1: $02
    inc b                                         ; $7bb2: $04
    ld b, $00                                     ; $7bb3: $06 $00
    ld [bc], a                                    ; $7bb5: $02
    rst $20                                       ; $7bb6: $e7
    sub c                                         ; $7bb7: $91
    ei                                            ; $7bb8: $fb
    inc e                                         ; $7bb9: $1c
    rst $38                                       ; $7bba: $ff
    daa                                           ; $7bbb: $27
    ld l, a                                       ; $7bbc: $6f
    cp l                                          ; $7bbd: $bd
    rst $38                                       ; $7bbe: $ff
    inc sp                                        ; $7bbf: $33
    ld e, e                                       ; $7bc0: $5b
    db $f4                                        ; $7bc1: $f4
    sub $f9                                       ; $7bc2: $d6 $f9
    ld a, [hl]                                    ; $7bc4: $7e
    rst $18                                       ; $7bc5: $df
    pop af                                        ; $7bc6: $f1
    cpl                                           ; $7bc7: $2f
    cp h                                          ; $7bc8: $bc
    ld [bc], a                                    ; $7bc9: $02
    rst $18                                       ; $7bca: $df
    add l                                         ; $7bcb: $85
    rst $20                                       ; $7bcc: $e7
    ld a, a                                       ; $7bcd: $7f
    cp $b9                                        ; $7bce: $fe $b9
    xor c                                         ; $7bd0: $a9
    ld [bc], a                                    ; $7bd1: $02
    db $10                                        ; $7bd2: $10
    ld b, $00                                     ; $7bd3: $06 $00
    ld [bc], a                                    ; $7bd5: $02
    ld b, $89                                     ; $7bd6: $06 $89
    dec b                                         ; $7bd8: $05
    inc bc                                        ; $7bd9: $03
    rlca                                          ; $7bda: $07
    dec b                                         ; $7bdb: $05
    inc bc                                        ; $7bdc: $03
    dec b                                         ; $7bdd: $05
    ld b, $02                                     ; $7bde: $06 $02
    inc bc                                        ; $7be0: $03
    ld [bc], a                                    ; $7be1: $02
    dec b                                         ; $7be2: $05
    add c                                         ; $7be3: $81
    inc bc                                        ; $7be4: $03
    ld [bc], a                                    ; $7be5: $02
    ld b, $04                                     ; $7be6: $06 $04
    nop                                           ; $7be8: $00
    ld [bc], a                                    ; $7be9: $02
    inc b                                         ; $7bea: $04
    ld b, $00                                     ; $7beb: $06 $00
    rst $38                                       ; $7bed: $ff
    dec c                                         ; $7bee: $0d
    inc b                                         ; $7bef: $04
    db $f4                                        ; $7bf0: $f4
    db $10                                        ; $7bf1: $10
    rst $28                                       ; $7bf2: $ef
    ld [bc], a                                    ; $7bf3: $02
    ld a, [c]                                     ; $7bf4: $f2
    db $f4                                        ; $7bf5: $f4
    pop af                                        ; $7bf6: $f1
    db $fc                                        ; $7bf7: $fc
    db $f4                                        ; $7bf8: $f4
    inc b                                         ; $7bf9: $04
    push af                                       ; $7bfa: $f5
    rlca                                          ; $7bfb: $07
    ld [bc], a                                    ; $7bfc: $02
    rlca                                          ; $7bfd: $07
    sub [hl]                                      ; $7bfe: $96
    add hl, de                                    ; $7bff: $19
    ld e, $22                                     ; $7c00: $1e $22
    dec a                                         ; $7c02: $3d
    ld e, [hl]                                    ; $7c03: $5e
    ld a, a                                       ; $7c04: $7f
    ld d, l                                       ; $7c05: $55
    ld a, e                                       ; $7c06: $7b
    ld a, a                                       ; $7c07: $7f
    ld [hl], b                                    ; $7c08: $70
    ld [c], a                                     ; $7c09: $e2
    cp l                                          ; $7c0a: $bd
    ld hl, sp-$01                                 ; $7c0b: $f8 $ff
    rst $28                                       ; $7c0d: $ef
    ret nc                                        ; $7c0e: $d0

    or e                                          ; $7c0f: $b3
    rst $08                                       ; $7c10: $cf
    adc a                                         ; $7c11: $8f
    ldh a, [$73]                                  ; $7c12: $f0 $73
    ld a, a                                       ; $7c14: $7f
    ld [bc], a                                    ; $7c15: $02
    inc c                                         ; $7c16: $0c
    ld b, $00                                     ; $7c17: $06 $00
    ld [bc], a                                    ; $7c19: $02
    ldh a, [$92]                                  ; $7c1a: $f0 $92
    ld l, $de                                     ; $7c1c: $2e $de
    di                                            ; $7c1e: $f3
    dec c                                         ; $7c1f: $0d
    sub h                                         ; $7c20: $94
    ld l, e                                       ; $7c21: $6b
    ld l, a                                       ; $7c22: $6f
    sub b                                         ; $7c23: $90
    sub $e9                                       ; $7c24: $d6 $e9
    rst $30                                       ; $7c26: $f7
    cpl                                           ; $7c27: $2f
    rst $38                                       ; $7c28: $ff
    dec a                                         ; $7c29: $3d
    ld a, a                                       ; $7c2a: $7f
    sbc b                                         ; $7c2b: $98
    db $db                                        ; $7c2c: $db
    inc a                                         ; $7c2d: $3c
    ld [bc], a                                    ; $7c2e: $02
    rst $38                                       ; $7c2f: $ff
    add [hl]                                      ; $7c30: $86
    cp $3f                                        ; $7c31: $fe $3f
    ld a, a                                       ; $7c33: $7f
    add a                                         ; $7c34: $87
    or a                                          ; $7c35: $b7
    db $db                                        ; $7c36: $db
    ld [bc], a                                    ; $7c37: $02
    ld l, a                                       ; $7c38: $6f
    ld [bc], a                                    ; $7c39: $02
    inc b                                         ; $7c3a: $04
    ld [bc], a                                    ; $7c3b: $02
    rst $18                                       ; $7c3c: $df
    sub c                                         ; $7c3d: $91
    cp d                                          ; $7c3e: $ba
    ld h, l                                       ; $7c3f: $65
    rst $38                                       ; $7c40: $ff
    ld c, [hl]                                    ; $7c41: $4e
    rst $18                                       ; $7c42: $df
    ei                                            ; $7c43: $fb
    cp $e7                                        ; $7c44: $fe $e7
    xor a                                         ; $7c46: $af
    db $d3                                        ; $7c47: $d3
    db $fc                                        ; $7c48: $fc
    call nz, $fb6b                                ; $7c49: $c4 $6b $fb
    rst $38                                       ; $7c4c: $ff
    inc a                                         ; $7c4d: $3c
    cp l                                          ; $7c4e: $bd
    ld [bc], a                                    ; $7c4f: $02
    rst $18                                       ; $7c50: $df
    add l                                         ; $7c51: $85
    rst $20                                       ; $7c52: $e7
    ld a, a                                       ; $7c53: $7f
    cp $b9                                        ; $7c54: $fe $b9
    xor c                                         ; $7c56: $a9
    ld [bc], a                                    ; $7c57: $02
    db $10                                        ; $7c58: $10
    inc b                                         ; $7c59: $04
    nop                                           ; $7c5a: $00
    ld [bc], a                                    ; $7c5b: $02
    inc b                                         ; $7c5c: $04
    add h                                         ; $7c5d: $84
    ld b, $02                                     ; $7c5e: $06 $02
    ld b, $02                                     ; $7c60: $06 $02
    ld [bc], a                                    ; $7c62: $02
    ld b, $02                                     ; $7c63: $06 $02
    nop                                           ; $7c65: $00
    ld [bc], a                                    ; $7c66: $02
    rlca                                          ; $7c67: $07
    add h                                         ; $7c68: $84
    ld b, $01                                     ; $7c69: $06 $01
    ld [bc], a                                    ; $7c6b: $02
    ld b, $02                                     ; $7c6c: $06 $02
    inc b                                         ; $7c6e: $04
    ld [bc], a                                    ; $7c6f: $02
    nop                                           ; $7c70: $00
    ld [bc], a                                    ; $7c71: $02
    inc b                                         ; $7c72: $04
    ld a, [bc]                                    ; $7c73: $0a
    nop                                           ; $7c74: $00
    rst $38                                       ; $7c75: $ff
    dec c                                         ; $7c76: $0d
    inc b                                         ; $7c77: $04
    db $f4                                        ; $7c78: $f4
    db $10                                        ; $7c79: $10
    rst $28                                       ; $7c7a: $ef
    ld [bc], a                                    ; $7c7b: $02
    ld a, [c]                                     ; $7c7c: $f2
    di                                            ; $7c7d: $f3
    pop af                                        ; $7c7e: $f1
    ei                                            ; $7c7f: $fb
    ld a, [c]                                     ; $7c80: $f2
    inc bc                                        ; $7c81: $03
    push af                                       ; $7c82: $f5
    ld b, $02                                     ; $7c83: $06 $02
    rlca                                          ; $7c85: $07
    sub [hl]                                      ; $7c86: $96
    ld a, [de]                                    ; $7c87: $1a
    dec e                                         ; $7c88: $1d
    scf                                           ; $7c89: $37
    jr z, @+$71                                   ; $7c8a: $28 $6f

    ld e, a                                       ; $7c8c: $5f
    ld e, l                                       ; $7c8d: $5d
    ld [hl], d                                    ; $7c8e: $72
    ld e, e                                       ; $7c8f: $5b
    ld [hl], h                                    ; $7c90: $74
    ld h, l                                       ; $7c91: $65
    ld a, d                                       ; $7c92: $7a
    inc a                                         ; $7c93: $3c
    ccf                                           ; $7c94: $3f
    ld d, a                                       ; $7c95: $57
    ld l, e                                       ; $7c96: $6b
    or b                                          ; $7c97: $b0
    rst $08                                       ; $7c98: $cf
    xor a                                         ; $7c99: $af
    ret nc                                        ; $7c9a: $d0

    add e                                         ; $7c9b: $83
    rst $38                                       ; $7c9c: $ff
    ld [bc], a                                    ; $7c9d: $02
    ld a, l                                       ; $7c9e: $7d
    ld b, $00                                     ; $7c9f: $06 $00
    ld [bc], a                                    ; $7ca1: $02
    db $fc                                        ; $7ca2: $fc
    sbc d                                         ; $7ca3: $9a
    cpl                                           ; $7ca4: $2f
    db $d3                                        ; $7ca5: $d3
    ld d, h                                       ; $7ca6: $54
    xor e                                         ; $7ca7: $ab
    xor [hl]                                      ; $7ca8: $ae
    ld d, c                                       ; $7ca9: $51
    cp a                                          ; $7caa: $bf
    ret nz                                        ; $7cab: $c0

    ld a, a                                       ; $7cac: $7f
    ldh [$db], a                                  ; $7cad: $e0 $db
    scf                                           ; $7caf: $37
    rst $18                                       ; $7cb0: $df
    ld a, $7e                                     ; $7cb1: $3e $7e
    sbc l                                         ; $7cb3: $9d
    db $fd                                        ; $7cb4: $fd
    ld c, $ef                                     ; $7cb5: $0e $ef
    rst $18                                       ; $7cb7: $df
    rst $38                                       ; $7cb8: $ff
    rra                                           ; $7cb9: $1f
    cp a                                          ; $7cba: $bf
    jp Jump_0ee_6d5b                              ; $7cbb: $c3 $5b $6d


    ld [bc], a                                    ; $7cbe: $02
    scf                                           ; $7cbf: $37
    ld [bc], a                                    ; $7cc0: $02
    ld [bc], a                                    ; $7cc1: $02
    ld [bc], a                                    ; $7cc2: $02
    add b                                         ; $7cc3: $80
    sub l                                         ; $7cc4: $95
    ret nz                                        ; $7cc5: $c0

    ld b, b                                       ; $7cc6: $40
    ccf                                           ; $7cc7: $3f
    rst $38                                       ; $7cc8: $ff
    xor $31                                       ; $7cc9: $ee $31
    ld a, a                                       ; $7ccb: $7f
    adc $df                                       ; $7ccc: $ce $df
    rst $38                                       ; $7cce: $ff
    ld hl, sp-$19                                 ; $7ccf: $f8 $e7
    sub a                                         ; $7cd1: $97
    db $eb                                        ; $7cd2: $eb
    db $fc                                        ; $7cd3: $fc
    ld c, h                                       ; $7cd4: $4c
    or b                                          ; $7cd5: $b0
    ldh a, [$71]                                  ; $7cd6: $f0 $71
    sub c                                         ; $7cd8: $91
    rst $18                                       ; $7cd9: $df
    ld [bc], a                                    ; $7cda: $02
    xor $85                                       ; $7cdb: $ee $85
    pop af                                        ; $7cdd: $f1
    cp a                                          ; $7cde: $bf
    rst $38                                       ; $7cdf: $ff
    ld e, h                                       ; $7ce0: $5c
    ld d, h                                       ; $7ce1: $54
    ld [bc], a                                    ; $7ce2: $02
    ld [$0402], sp                                ; $7ce3: $08 $02 $04
    add c                                         ; $7ce6: $81
    ld [bc], a                                    ; $7ce7: $02
    ld [bc], a                                    ; $7ce8: $02
    ld b, $81                                     ; $7ce9: $06 $81
    ld [bc], a                                    ; $7ceb: $02
    ld [bc], a                                    ; $7cec: $02
    ld b, $04                                     ; $7ced: $06 $04
    nop                                           ; $7cef: $00
    ld [bc], a                                    ; $7cf0: $02
    inc bc                                        ; $7cf1: $03
    add h                                         ; $7cf2: $84
    ld b, $05                                     ; $7cf3: $06 $05
    ld [bc], a                                    ; $7cf5: $02
    ld b, $02                                     ; $7cf6: $06 $02
    inc b                                         ; $7cf8: $04
    add d                                         ; $7cf9: $82
    ld b, $02                                     ; $7cfa: $06 $02
    ld [bc], a                                    ; $7cfc: $02
    inc b                                         ; $7cfd: $04
    ld [$ff00], sp                                ; $7cfe: $08 $00 $ff
    rrca                                          ; $7d01: $0f
    dec b                                         ; $7d02: $05
    db $f4                                        ; $7d03: $f4
    db $10                                        ; $7d04: $10
    rst $28                                       ; $7d05: $ef
    ld [bc], a                                    ; $7d06: $02
    db $f4                                        ; $7d07: $f4
    db $f4                                        ; $7d08: $f4
    db $f4                                        ; $7d09: $f4
    db $fc                                        ; $7d0a: $fc
    db $f4                                        ; $7d0b: $f4
    inc b                                         ; $7d0c: $04
    db $f4                                        ; $7d0d: $f4
    inc c                                         ; $7d0e: $0c
    db $f4                                        ; $7d0f: $f4
    dec c                                         ; $7d10: $0d
    inc b                                         ; $7d11: $04
    nop                                           ; $7d12: $00
    ld [bc], a                                    ; $7d13: $02
    ld bc, $0681                                  ; $7d14: $01 $81 $06
    ld [bc], a                                    ; $7d17: $02
    rlca                                          ; $7d18: $07
    adc l                                         ; $7d19: $8d
    inc b                                         ; $7d1a: $04
    add hl, de                                    ; $7d1b: $19
    ld e, $6f                                     ; $7d1c: $1e $6f
    ld [hl], a                                    ; $7d1e: $77
    rst $38                                       ; $7d1f: $ff
    add b                                         ; $7d20: $80
    or e                                          ; $7d21: $b3
    rst $08                                       ; $7d22: $cf
    sbc a                                         ; $7d23: $9f
    ldh [$63], a                                  ; $7d24: $e0 $63
    ld a, a                                       ; $7d26: $7f
    ld [bc], a                                    ; $7d27: $02
    inc e                                         ; $7d28: $1c
    ld [$0200], sp                                ; $7d29: $08 $00 $02
    rlca                                          ; $7d2c: $07
    adc [hl]                                      ; $7d2d: $8e
    ld a, d                                       ; $7d2e: $7a
    ld a, l                                       ; $7d2f: $7d
    cp l                                          ; $7d30: $bd
    jp nz, $2dfa                                  ; $7d31: $c2 $fa $2d

    rst $38                                       ; $7d34: $ff
    rra                                           ; $7d35: $1f
    ld l, l                                       ; $7d36: $6d
    sbc a                                         ; $7d37: $9f
    call c, Call_0ee_7527                         ; $7d38: $dc $27 $75
    adc a                                         ; $7d3b: $8f
    ld [bc], a                                    ; $7d3c: $02
    rst $38                                       ; $7d3d: $ff
    add h                                         ; $7d3e: $84
    ld sp, hl                                     ; $7d3f: $f9
    add hl, bc                                    ; $7d40: $09
    ld l, h                                       ; $7d41: $6c
    or h                                          ; $7d42: $b4
    ld [bc], a                                    ; $7d43: $02
    db $dd                                        ; $7d44: $dd
    ld [bc], a                                    ; $7d45: $02
    ld [$0006], sp                                ; $7d46: $08 $06 $00
    ld [bc], a                                    ; $7d49: $02
    ld hl, sp-$71                                 ; $7d4a: $f8 $8f
    rst $10                                       ; $7d4c: $d7
    cpl                                           ; $7d4d: $2f
    ld a, l                                       ; $7d4e: $7d
    ld a, [c]                                     ; $7d4f: $f2
    add sp, -$21                                  ; $7d50: $e8 $df
    push hl                                       ; $7d52: $e5
    cp a                                          ; $7d53: $bf
    cp c                                          ; $7d54: $b9
    ld e, a                                       ; $7d55: $5f
    db $fd                                        ; $7d56: $fd
    ccf                                           ; $7d57: $3f
    ld a, l                                       ; $7d58: $7d
    cp a                                          ; $7d59: $bf
    ld e, d                                       ; $7d5a: $5a
    ld [bc], a                                    ; $7d5b: $02
    cp a                                          ; $7d5c: $bf
    add a                                         ; $7d5d: $87
    rst $18                                       ; $7d5e: $df
    push de                                       ; $7d5f: $d5
    db $ed                                        ; $7d60: $ed
    ld a, a                                       ; $7d61: $7f
    cp $b9                                        ; $7d62: $fe $b9
    xor c                                         ; $7d64: $a9
    ld [bc], a                                    ; $7d65: $02
    db $10                                        ; $7d66: $10
    inc b                                         ; $7d67: $04
    nop                                           ; $7d68: $00
    ld [bc], a                                    ; $7d69: $02
    inc e                                         ; $7d6a: $1c
    sub b                                         ; $7d6b: $90
    rst $28                                       ; $7d6c: $ef
    di                                            ; $7d6d: $f3
    xor $9d                                       ; $7d6e: $ee $9d
    sbc a                                         ; $7d70: $9f
    cp $61                                        ; $7d71: $fe $61
    sbc $6e                                       ; $7d73: $de $6e
    pop de                                        ; $7d75: $d1
    db $db                                        ; $7d76: $db
    ld h, a                                       ; $7d77: $67
    db $fd                                        ; $7d78: $fd
    ld a, [hl]                                    ; $7d79: $7e
    db $d3                                        ; $7d7a: $d3
    cp l                                          ; $7d7b: $bd
    ld [bc], a                                    ; $7d7c: $02
    cp $02                                        ; $7d7d: $fe $02
    nop                                           ; $7d7f: $00
    ld [bc], a                                    ; $7d80: $02
    add b                                         ; $7d81: $80
    inc c                                         ; $7d82: $0c
    nop                                           ; $7d83: $00
    ld [$0201], sp                                ; $7d84: $08 $01 $02
    nop                                           ; $7d87: $00
    ld [bc], a                                    ; $7d88: $02
    ld bc, $0010                                  ; $7d89: $01 $10 $00
    rst $38                                       ; $7d8c: $ff
    dec c                                         ; $7d8d: $0d
    inc b                                         ; $7d8e: $04
    db $f4                                        ; $7d8f: $f4
    db $10                                        ; $7d90: $10
    rst $28                                       ; $7d91: $ef
    ld [bc], a                                    ; $7d92: $02
    push af                                       ; $7d93: $f5
    db $f4                                        ; $7d94: $f4
    ld a, [c]                                     ; $7d95: $f2
    db $fc                                        ; $7d96: $fc
    pop af                                        ; $7d97: $f1
    inc b                                         ; $7d98: $04
    di                                            ; $7d99: $f3
    dec b                                         ; $7d9a: $05
    ld [bc], a                                    ; $7d9b: $02
    rlca                                          ; $7d9c: $07
    sub b                                         ; $7d9d: $90
    rrca                                          ; $7d9e: $0f
    inc c                                         ; $7d9f: $0c
    ld e, $19                                     ; $7da0: $1e $19
    dec h                                         ; $7da2: $25
    ld a, [hl-]                                   ; $7da3: $3a
    ld a, h                                       ; $7da4: $7c
    ld a, a                                       ; $7da5: $7f
    ld e, a                                       ; $7da6: $5f
    ld h, b                                       ; $7da7: $60
    di                                            ; $7da8: $f3
    rst $08                                       ; $7da9: $cf
    adc a                                         ; $7daa: $8f
    ldh a, [$73]                                  ; $7dab: $f0 $73
    ld a, a                                       ; $7dad: $7f
    ld [bc], a                                    ; $7dae: $02
    inc c                                         ; $7daf: $0c
    inc c                                         ; $7db0: $0c
    nop                                           ; $7db1: $00

jr_0ee_7db2:
    ld [bc], a                                    ; $7db2: $02
    rlca                                          ; $7db3: $07
    sbc b                                         ; $7db4: $98
    rra                                           ; $7db5: $1f
    jr jr_0ee_7db2                                ; $7db6: $18 $fa

    push af                                       ; $7db8: $f5
    db $ed                                        ; $7db9: $ed
    or e                                          ; $7dba: $b3
    push hl                                       ; $7dbb: $e5
    ld a, e                                       ; $7dbc: $7b
    rst $30                                       ; $7dbd: $f7
    ccf                                           ; $7dbe: $3f
    cp a                                          ; $7dbf: $bf
    ld e, a                                       ; $7dc0: $5f
    ld e, e                                       ; $7dc1: $5b
    cp l                                          ; $7dc2: $bd
    rst $38                                       ; $7dc3: $ff
    add hl, sp                                    ; $7dc4: $39
    ei                                            ; $7dc5: $fb
    db $fc                                        ; $7dc6: $fc
    cp $3f                                        ; $7dc7: $fe $3f
    ld e, a                                       ; $7dc9: $5f
    and a                                         ; $7dca: $a7
    or a                                          ; $7dcb: $b7
    db $db                                        ; $7dcc: $db
    ld [bc], a                                    ; $7dcd: $02
    ld l, a                                       ; $7dce: $6f
    ld [bc], a                                    ; $7dcf: $02
    inc b                                         ; $7dd0: $04
    ld [bc], a                                    ; $7dd1: $02
    nop                                           ; $7dd2: $00
    ld [bc], a                                    ; $7dd3: $02
    inc e                                         ; $7dd4: $1c
    adc h                                         ; $7dd5: $8c
    ei                                            ; $7dd6: $fb
    rst $20                                       ; $7dd7: $e7
    cp $9d                                        ; $7dd8: $fe $9d
    cp a                                          ; $7dda: $bf
    or $fd                                        ; $7ddb: $f6 $fd
    adc $6e                                       ; $7ddd: $ce $6e
    pop de                                        ; $7ddf: $d1
    ret c                                         ; $7de0: $d8

    ld h, [hl]                                    ; $7de1: $66
    ld [bc], a                                    ; $7de2: $02
    db $fc                                        ; $7de3: $fc
    sub b                                         ; $7de4: $90
    add sp, -$24                                  ; $7de5: $e8 $dc
    ld hl, sp-$0c                                 ; $7de7: $f8 $f4
    ldh a, [$e8]                                  ; $7de9: $f0 $e8
    ldh [rSVBK], a                                ; $7deb: $e0 $70
    ld hl, sp-$68                                 ; $7ded: $f8 $98
    cp l                                          ; $7def: $bd
    and l                                         ; $7df0: $a5
    ld a, a                                       ; $7df1: $7f
    cp $b9                                        ; $7df2: $fe $b9
    xor c                                         ; $7df4: $a9
    ld b, $01                                     ; $7df5: $06 $01
    ld [de], a                                    ; $7df7: $12
    nop                                           ; $7df8: $00
    ld [bc], a                                    ; $7df9: $02
    ld bc, $0002                                  ; $7dfa: $01 $02 $00
    ld [bc], a                                    ; $7dfd: $02
    jr nz, jr_0ee_7e02                            ; $7dfe: $20 $02

    nop                                           ; $7e00: $00
    rst $38                                       ; $7e01: $ff

jr_0ee_7e02:
    dec c                                         ; $7e02: $0d
    inc b                                         ; $7e03: $04
    db $f4                                        ; $7e04: $f4
    db $10                                        ; $7e05: $10
    rst $28                                       ; $7e06: $ef
    ld [bc], a                                    ; $7e07: $02
    di                                            ; $7e08: $f3
    db $f4                                        ; $7e09: $f4
    di                                            ; $7e0a: $f3
    db $fc                                        ; $7e0b: $fc
    di                                            ; $7e0c: $f3
    inc b                                         ; $7e0d: $04
    di                                            ; $7e0e: $f3
    ld b, $04                                     ; $7e0f: $06 $04
    nop                                           ; $7e11: $00
    ld [bc], a                                    ; $7e12: $02
    rrca                                          ; $7e13: $0f
    add l                                         ; $7e14: $85
    ld e, $19                                     ; $7e15: $1e $19
    scf                                           ; $7e17: $37
    jr c, jr_0ee_7e5d                             ; $7e18: $38 $43

    ld [bc], a                                    ; $7e1a: $02
    ld a, h                                       ; $7e1b: $7c
    adc c                                         ; $7e1c: $89
    ld a, a                                       ; $7e1d: $7f
    rst $28                                       ; $7e1e: $ef
    ret nc                                        ; $7e1f: $d0

    di                                            ; $7e20: $f3
    rst $08                                       ; $7e21: $cf
    adc a                                         ; $7e22: $8f
    ldh a, [$73]                                  ; $7e23: $f0 $73
    ld a, a                                       ; $7e25: $7f
    ld [bc], a                                    ; $7e26: $02
    inc c                                         ; $7e27: $0c
    ld [$0200], sp                                ; $7e28: $08 $00 $02
    rra                                           ; $7e2b: $1f
    sub [hl]                                      ; $7e2c: $96
    rst $38                                       ; $7e2d: $ff
    db $e3                                        ; $7e2e: $e3
    ld a, a                                       ; $7e2f: $7f
    add a                                         ; $7e30: $87
    db $eb                                        ; $7e31: $eb
    sbc $f9                                       ; $7e32: $de $f9
    ld e, [hl]                                    ; $7e34: $5e
    db $db                                        ; $7e35: $db
    inc a                                         ; $7e36: $3c
    ld d, [hl]                                    ; $7e37: $56
    cp l                                          ; $7e38: $bd
    rst $38                                       ; $7e39: $ff
    inc sp                                        ; $7e3a: $33
    ei                                            ; $7e3b: $fb
    db $fc                                        ; $7e3c: $fc
    cp $3f                                        ; $7e3d: $fe $3f
    ld a, h                                       ; $7e3f: $7c
    add a                                         ; $7e40: $87
    or a                                          ; $7e41: $b7
    db $db                                        ; $7e42: $db
    ld [bc], a                                    ; $7e43: $02
    ld l, h                                       ; $7e44: $6c
    ld [bc], a                                    ; $7e45: $02
    inc b                                         ; $7e46: $04
    inc b                                         ; $7e47: $04
    nop                                           ; $7e48: $00
    ld [bc], a                                    ; $7e49: $02
    ret nz                                        ; $7e4a: $c0

    sbc d                                         ; $7e4b: $9a
    ld [hl], b                                    ; $7e4c: $70
    or b                                          ; $7e4d: $b0
    ld hl, sp+$38                                 ; $7e4e: $f8 $38
    db $fc                                        ; $7e50: $fc
    ld b, h                                       ; $7e51: $44
    ld a, [$eefe]                                 ; $7e52: $fa $fe $ee
    halt                                          ; $7e55: $76
    cp $0e                                        ; $7e56: $fe $0e
    cp a                                          ; $7e58: $bf
    ld a, e                                       ; $7e59: $7b
    sbc $e7                                       ; $7e5a: $de $e7
    db $fd                                        ; $7e5c: $fd

jr_0ee_7e5d:
    dec [hl]                                      ; $7e5d: $35
    db $fc                                        ; $7e5e: $fc
    call z, Call_0ee_737f                         ; $7e5f: $cc $7f $73
    cp a                                          ; $7e62: $bf
    rst $38                                       ; $7e63: $ff
    ld e, h                                       ; $7e64: $5c
    ld d, h                                       ; $7e65: $54
    ld [bc], a                                    ; $7e66: $02
    ld [$0012], sp                                ; $7e67: $08 $12 $00
    ld [bc], a                                    ; $7e6a: $02
    ld [bc], a                                    ; $7e6b: $02
    inc b                                         ; $7e6c: $04
    nop                                           ; $7e6d: $00
    ld [bc], a                                    ; $7e6e: $02
    ld [bc], a                                    ; $7e6f: $02
    add d                                         ; $7e70: $82
    inc bc                                        ; $7e71: $03
    ld bc, $0202                                  ; $7e72: $01 $02 $02
    inc b                                         ; $7e75: $04
    nop                                           ; $7e76: $00
    rst $38                                       ; $7e77: $ff
    dec bc                                        ; $7e78: $0b
    inc bc                                        ; $7e79: $03
    db $f4                                        ; $7e7a: $f4
    db $10                                        ; $7e7b: $10
    rst $28                                       ; $7e7c: $ef
    ld [bc], a                                    ; $7e7d: $02
    db $f4                                        ; $7e7e: $f4
    di                                            ; $7e7f: $f3
    db $f4                                        ; $7e80: $f4
    ei                                            ; $7e81: $fb
    db $f4                                        ; $7e82: $f4
    inc bc                                        ; $7e83: $03
    inc b                                         ; $7e84: $04
    nop                                           ; $7e85: $00
    ld [bc], a                                    ; $7e86: $02
    rlca                                          ; $7e87: $07
    sub b                                         ; $7e88: $90
    dec e                                         ; $7e89: $1d
    ld a, [de]                                    ; $7e8a: $1a
    scf                                           ; $7e8b: $37
    jr c, jr_0ee_7ec1                             ; $7e8c: $38 $33

Call_0ee_7e8e:
    inc a                                         ; $7e8e: $3c
    ld a, h                                       ; $7e8f: $7c
    ld a, a                                       ; $7e90: $7f
    rst $30                                       ; $7e91: $f7
    ret z                                         ; $7e92: $c8

    ldh [$df], a                                  ; $7e93: $e0 $df
    adc h                                         ; $7e95: $8c
    di                                            ; $7e96: $f3
    ld [hl], e                                    ; $7e97: $73
    ld a, a                                       ; $7e98: $7f
    ld [bc], a                                    ; $7e99: $02
    inc c                                         ; $7e9a: $0c
    ld [$0200], sp                                ; $7e9b: $08 $00 $02
    rra                                           ; $7e9e: $1f
    sub h                                         ; $7e9f: $94
    cp $e7                                        ; $7ea0: $fe $e7
    ld a, [hl]                                    ; $7ea2: $7e
    add a                                         ; $7ea3: $87
    db $eb                                        ; $7ea4: $eb
    sbc $79                                       ; $7ea5: $de $79
    sbc $db                                       ; $7ea7: $de $db
    inc [hl]                                      ; $7ea9: $34
    ld a, [hl]                                    ; $7eaa: $7e
    or l                                          ; $7eab: $b5
    ei                                            ; $7eac: $fb
    rra                                           ; $7ead: $1f
    ei                                            ; $7eae: $fb
    db $fd                                        ; $7eaf: $fd
    ld a, [hl]                                    ; $7eb0: $7e
    add a                                         ; $7eb1: $87
    or a                                          ; $7eb2: $b7
    db $db                                        ; $7eb3: $db
    ld [bc], a                                    ; $7eb4: $02
    ld l, [hl]                                    ; $7eb5: $6e
    ld [bc], a                                    ; $7eb6: $02
    inc b                                         ; $7eb7: $04
    ld b, $00                                     ; $7eb8: $06 $00
    ld [bc], a                                    ; $7eba: $02
    ret nz                                        ; $7ebb: $c0

    sbc b                                         ; $7ebc: $98
    ld [hl], b                                    ; $7ebd: $70
    or b                                          ; $7ebe: $b0
    ld hl, sp+$38                                 ; $7ebf: $f8 $38

jr_0ee_7ec1:
    db $fc                                        ; $7ec1: $fc
    inc b                                         ; $7ec2: $04
    ld a, [$eefe]                                 ; $7ec3: $fa $fe $ee
    halt                                          ; $7ec6: $76
    ld e, h                                       ; $7ec7: $5c
    xor h                                         ; $7ec8: $ac
    cp $3e                                        ; $7ec9: $fe $3e
    db $dd                                        ; $7ecb: $dd
    rst $38                                       ; $7ecc: $ff
    ld a, [hl]                                    ; $7ecd: $7e
    sbc [hl]                                      ; $7ece: $9e
    cp $e6                                        ; $7ecf: $fe $e6
    cp a                                          ; $7ed1: $bf
    db $fd                                        ; $7ed2: $fd
    ld e, [hl]                                    ; $7ed3: $5e
    ld d, [hl]                                    ; $7ed4: $56
    ld [bc], a                                    ; $7ed5: $02
    ld [$0004], sp                                ; $7ed6: $08 $04 $00
    rst $38                                       ; $7ed9: $ff
    dec c                                         ; $7eda: $0d
    inc b                                         ; $7edb: $04
    db $f4                                        ; $7edc: $f4
    db $10                                        ; $7edd: $10
    rst $28                                       ; $7ede: $ef
    ld [bc], a                                    ; $7edf: $02
    push af                                       ; $7ee0: $f5
    db $f4                                        ; $7ee1: $f4
    ld a, [c]                                     ; $7ee2: $f2
    db $fc                                        ; $7ee3: $fc
    pop af                                        ; $7ee4: $f1
    inc b                                         ; $7ee5: $04
    di                                            ; $7ee6: $f3
    ld b, $02                                     ; $7ee7: $06 $02
    inc bc                                        ; $7ee9: $03
    add l                                         ; $7eea: $85
    ld b, $05                                     ; $7eeb: $06 $05
    rra                                           ; $7eed: $1f
    inc e                                         ; $7eee: $1c
    ld sp, $3e02                                  ; $7eef: $31 $02 $3e
    adc c                                         ; $7ef2: $89
    ccf                                           ; $7ef3: $3f
    ld a, l                                       ; $7ef4: $7d
    ld h, d                                       ; $7ef5: $62
    di                                            ; $7ef6: $f3
    rst $08                                       ; $7ef7: $cf
    adc a                                         ; $7ef8: $8f
    ldh a, [$73]                                  ; $7ef9: $f0 $73
    ld a, a                                       ; $7efb: $7f
    ld [bc], a                                    ; $7efc: $02
    inc c                                         ; $7efd: $0c
    inc c                                         ; $7efe: $0c
    nop                                           ; $7eff: $00
    ld [bc], a                                    ; $7f00: $02
    inc bc                                        ; $7f01: $03
    adc c                                         ; $7f02: $89
    rrca                                          ; $7f03: $0f
    inc c                                         ; $7f04: $0c
    ld a, [hl]                                    ; $7f05: $7e
    ld a, c                                       ; $7f06: $79
    db $fc                                        ; $7f07: $fc
    db $d3                                        ; $7f08: $d3
    ldh a, [$bf]                                  ; $7f09: $f0 $bf
    ld a, e                                       ; $7f0b: $7b
    ld [bc], a                                    ; $7f0c: $02
    rst $38                                       ; $7f0d: $ff
    ld [bc], a                                    ; $7f0e: $02
    cpl                                           ; $7f0f: $2f
    adc e                                         ; $7f10: $8b
    call c, Call_000_1cfb                         ; $7f11: $dc $fb $1c
    push af                                       ; $7f14: $f5
    cp $ff                                        ; $7f15: $fe $ff
    ccf                                           ; $7f17: $3f
    ld a, a                                       ; $7f18: $7f
    add a                                         ; $7f19: $87
    or a                                          ; $7f1a: $b7
    db $db                                        ; $7f1b: $db
    ld [bc], a                                    ; $7f1c: $02
    ld l, l                                       ; $7f1d: $6d
    ld [bc], a                                    ; $7f1e: $02
    inc b                                         ; $7f1f: $04
    ld [bc], a                                    ; $7f20: $02
    nop                                           ; $7f21: $00
    ld [bc], a                                    ; $7f22: $02
    ld [hl], b                                    ; $7f23: $70
    sbc [hl]                                      ; $7f24: $9e
    cp [hl]                                       ; $7f25: $be
    sbc $f1                                       ; $7f26: $de $f1
    rra                                           ; $7f28: $1f
    ld a, a                                       ; $7f29: $7f
    cp [hl]                                       ; $7f2a: $be
    ld e, a                                       ; $7f2b: $5f
    push af                                       ; $7f2c: $f5
    db $db                                        ; $7f2d: $db
    rst $30                                       ; $7f2e: $f7
    ld a, l                                       ; $7f2f: $7d
    db $d3                                        ; $7f30: $d3
    ld h, a                                       ; $7f31: $67
    ld hl, sp-$47                                 ; $7f32: $f8 $b9
    cp $86                                        ; $7f34: $fe $86
    rst $38                                       ; $7f36: $ff
    jp z, Jump_0ee_7675                           ; $7f37: $ca $75 $76

    cp c                                          ; $7f3a: $b9
    db $fc                                        ; $7f3b: $fc
    adc $fe                                       ; $7f3c: $ce $fe
    ld a, [c]                                     ; $7f3e: $f2
    cp a                                          ; $7f3f: $bf
    rst $38                                       ; $7f40: $ff
    ld e, h                                       ; $7f41: $5c
    ld d, h                                       ; $7f42: $54
    inc b                                         ; $7f43: $04
    ld [bc], a                                    ; $7f44: $02
    add l                                         ; $7f45: $85
    inc bc                                        ; $7f46: $03
    ld bc, $0103                                  ; $7f47: $01 $03 $01
    inc bc                                        ; $7f4a: $03
    ld [bc], a                                    ; $7f4b: $02
    ld bc, $0381                                  ; $7f4c: $01 $81 $03
    ld [bc], a                                    ; $7f4f: $02
    ld [bc], a                                    ; $7f50: $02
    ld [$0200], sp                                ; $7f51: $08 $00 $02
    ld [bc], a                                    ; $7f54: $02
    add d                                         ; $7f55: $82
    inc bc                                        ; $7f56: $03
    ld bc, $0202                                  ; $7f57: $01 $02 $02
    ld [bc], a                                    ; $7f5a: $02
    jr nz, jr_0ee_7f5f                            ; $7f5b: $20 $02

    nop                                           ; $7f5d: $00
    rst $38                                       ; $7f5e: $ff

jr_0ee_7f5f:
    rlca                                          ; $7f5f: $07
    ld bc, $01fb                                  ; $7f60: $01 $fb $01
    db $fd                                        ; $7f63: $fd
    inc bc                                        ; $7f64: $03
    rst $38                                       ; $7f65: $ff
    ld a, [$0486]                                 ; $7f66: $fa $86 $04
    ld e, d                                       ; $7f69: $5a
    sub d                                         ; $7f6a: $92
    db $ed                                        ; $7f6b: $ed
    ld b, h                                       ; $7f6c: $44
    ld c, [hl]                                    ; $7f6d: $4e
    ld a, [de]                                    ; $7f6e: $1a
    nop                                           ; $7f6f: $00
    rst $38                                       ; $7f70: $ff
    add hl, bc                                    ; $7f71: $09
    ld [bc], a                                    ; $7f72: $02
    ei                                            ; $7f73: $fb
    ld bc, $03fd                                  ; $7f74: $01 $fd $03
    rst $38                                       ; $7f77: $ff
    ld sp, hl                                     ; $7f78: $f9
    rst $38                                       ; $7f79: $ff
    ld a, [$0a86]                                 ; $7f7a: $fa $86 $0a
    ld e, l                                       ; $7f7d: $5d
    rst $18                                       ; $7f7e: $df
    and b                                         ; $7f7f: $a0
    ld bc, $1d17                                  ; $7f80: $01 $17 $1d
    nop                                           ; $7f83: $00
    add c                                         ; $7f84: $81
    ld bc, $001c                                  ; $7f85: $01 $1c $00
    rst $38                                       ; $7f88: $ff
    add hl, bc                                    ; $7f89: $09
    ld [bc], a                                    ; $7f8a: $02
    ei                                            ; $7f8b: $fb
    ld bc, $03fd                                  ; $7f8c: $01 $fd $03
    rst $38                                       ; $7f8f: $ff
    ld sp, hl                                     ; $7f90: $f9
    rst $38                                       ; $7f91: $ff
    ld a, [$1886]                                 ; $7f92: $fa $86 $18
    rla                                           ; $7f95: $17
    rst $10                                       ; $7f96: $d7
    add sp, $0c                                   ; $7f97: $e8 $0c
    dec l                                         ; $7f99: $2d
    dec e                                         ; $7f9a: $1d
    nop                                           ; $7f9b: $00
    add c                                         ; $7f9c: $81
    ld bc, $001c                                  ; $7f9d: $01 $1c $00
    rst $38                                       ; $7fa0: $ff
    add hl, bc                                    ; $7fa1: $09
    ld [bc], a                                    ; $7fa2: $02
    ei                                            ; $7fa3: $fb
    ld bc, $03fd                                  ; $7fa4: $01 $fd $03
    rst $38                                       ; $7fa7: $ff
    ld hl, sp-$01                                 ; $7fa8: $f8 $ff
    ld a, [$1586]                                 ; $7faa: $fa $86 $15
    ld a, [de]                                    ; $7fad: $1a
    or a                                          ; $7fae: $b7
    adc b                                         ; $7faf: $88
    inc l                                         ; $7fb0: $2c
    dec l                                         ; $7fb1: $2d
    dec de                                        ; $7fb2: $1b
    nop                                           ; $7fb3: $00
    ld [bc], a                                    ; $7fb4: $02
    ld [bc], a                                    ; $7fb5: $02
    add c                                         ; $7fb6: $81
    ld bc, $0202                                  ; $7fb7: $01 $02 $02
    ld a, [de]                                    ; $7fba: $1a
    nop                                           ; $7fbb: $00
    rst $38                                       ; $7fbc: $ff
    add hl, bc                                    ; $7fbd: $09
    ld [bc], a                                    ; $7fbe: $02
    ei                                            ; $7fbf: $fb
    ld bc, $03fd                                  ; $7fc0: $01 $fd $03
    rst $38                                       ; $7fc3: $ff
    rst $30                                       ; $7fc4: $f7
    rst $38                                       ; $7fc5: $ff
    ld a, [$0286]                                 ; $7fc6: $fa $86 $02
    rlca                                          ; $7fc9: $07
    rla                                           ; $7fca: $17
    adc b                                         ; $7fcb: $88
    ld a, [hl+]                                   ; $7fcc: $2a
    ld l, $1a                                     ; $7fcd: $2e $1a
    nop                                           ; $7fcf: $00
    add [hl]                                      ; $7fd0: $86
    inc b                                         ; $7fd1: $04
    ld [bc], a                                    ; $7fd2: $02
    ld b, $01                                     ; $7fd3: $06 $01
    ld [bc], a                                    ; $7fd5: $02
    ld b, $1a                                     ; $7fd6: $06 $1a
    nop                                           ; $7fd8: $00
    rst $38                                       ; $7fd9: $ff
    add hl, bc                                    ; $7fda: $09
    ld [bc], a                                    ; $7fdb: $02
    pop af                                        ; $7fdc: $f1
    nop                                           ; $7fdd: $00
    ld a, [$fb07]                                 ; $7fde: $fa $07 $fb
    push af                                       ; $7fe1: $f5
    ei                                            ; $7fe2: $fb
    rst $30                                       ; $7fe3: $f7
    add h                                         ; $7fe4: $84
    ld b, b                                       ; $7fe5: $40
    ld h, b                                       ; $7fe6: $60
    ldh [$90], a                                  ; $7fe7: $e0 $90
    ld b, $00                                     ; $7fe9: $06 $00
    ld [bc], a                                    ; $7feb: $02
    ld bc, $0382                                  ; $7fec: $01 $82 $03
    ld [bc], a                                    ; $7fef: $02
    inc b                                         ; $7ff0: $04
    nop                                           ; $7ff1: $00
    add h                                         ; $7ff2: $84
    ld b, b                                       ; $7ff3: $40
    ld h, b                                       ; $7ff4: $60
    ldh [$90], a                                  ; $7ff5: $e0 $90
    dec d                                         ; $7ff7: $15
    nop                                           ; $7ff8: $00
    ld [bc], a                                    ; $7ff9: $02
    ld [bc], a                                    ; $7ffa: $02
    add c                                         ; $7ffb: $81
    ld bc, $0012                                  ; $7ffc: $01 $12 $00
    rst $38                                       ; $7fff: $ff
