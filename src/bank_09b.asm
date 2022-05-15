; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $09b", ROMX[$4000], BANK[$9b]

    sbc e                                         ; $4000: $9b
    nop                                           ; $4001: $00
    dec d                                         ; $4002: $15
    adc c                                         ; $4003: $89
    inc c                                         ; $4004: $0c
    ld b, d                                       ; $4005: $42
    rst $38                                       ; $4006: $ff

Call_09b_4007:
    ld bc, $8360                                  ; $4007: $01 $60 $83
    rst $38                                       ; $400a: $ff
    pop bc                                        ; $400b: $c1
    cp a                                          ; $400c: $bf
    inc b                                         ; $400d: $04
    ld c, b                                       ; $400e: $48
    ld d, l                                       ; $400f: $55
    nop                                           ; $4010: $00
    xor d                                         ; $4011: $aa
    cp a                                          ; $4012: $bf
    ld b, b                                       ; $4013: $40
    db $fd                                        ; $4014: $fd
    nop                                           ; $4015: $00
    xor h                                         ; $4016: $ac
    nop                                           ; $4017: $00
    ld e, h                                       ; $4018: $5c
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    ld a, [bc]                                    ; $401b: $0a
    nop                                           ; $401c: $00

jr_09b_401d:
    add h                                         ; $401d: $84
    nop                                           ; $401e: $00
    ld b, c                                       ; $401f: $41
    nop                                           ; $4020: $00
    ld e, e                                       ; $4021: $5b
    nop                                           ; $4022: $00
    and l                                         ; $4023: $a5
    or l                                          ; $4024: $b5
    ld b, e                                       ; $4025: $43
    ld a, e                                       ; $4026: $7b
    add c                                         ; $4027: $81
    or l                                          ; $4028: $b5
    ld b, e                                       ; $4029: $43
    ld l, e                                       ; $402a: $6b
    nop                                           ; $402b: $00
    ld bc, $03a5                                  ; $402c: $01 $a5 $03
    ld b, e                                       ; $402f: $43
    ld bc, $0127                                  ; $4030: $01 $27 $01
    ld a, e                                       ; $4033: $7b
    nop                                           ; $4034: $00
    add h                                         ; $4035: $84
    ld [hl], a                                    ; $4036: $77
    adc b                                         ; $4037: $88
    ld l, [hl]                                    ; $4038: $6e
    sub b                                         ; $4039: $90
    ld e, l                                       ; $403a: $5d
    and b                                         ; $403b: $a0
    ld a, d                                       ; $403c: $7a
    nop                                           ; $403d: $00
    add b                                         ; $403e: $80
    ld [hl], l                                    ; $403f: $75
    add b                                         ; $4040: $80
    ld l, e                                       ; $4041: $6b
    add b                                         ; $4042: $80
    ld d, [hl]                                    ; $4043: $56
    add c                                         ; $4044: $81
    xor h                                         ; $4045: $ac
    nop                                           ; $4046: $00
    inc bc                                        ; $4047: $03
    ld e, c                                       ; $4048: $59
    ld b, $b3                                     ; $4049: $06 $b3
    inc c                                         ; $404b: $0c
    ld h, a                                       ; $404c: $67
    jr jr_09b_401d                                ; $404d: $18 $ce

    nop                                           ; $404f: $00
    db $30, $9d                                   ; $4050: $30 $9d
    ld h, b                                       ; $4052: $60
    ld a, [hl-]                                   ; $4053: $3a
    ret nz                                        ; $4054: $c0

    ld [hl], h                                    ; $4055: $74
    add b                                         ; $4056: $80
    db $10                                        ; $4057: $10
    ld b, b                                       ; $4058: $40
    nop                                           ; $4059: $00
    ld bc, $0358                                  ; $405a: $01 $58 $03
    ld bc, $0187                                  ; $405d: $01 $87 $01
    inc bc                                        ; $4060: $03
    ld bc, $0740                                  ; $4061: $01 $40 $07
    inc b                                         ; $4064: $04
    jr nc, @+$6e                                  ; $4065: $30 $6c

    add e                                         ; $4067: $83
    ld e, c                                       ; $4068: $59
    add [hl]                                      ; $4069: $86
    ld [hl], e                                    ; $406a: $73
    adc h                                         ; $406b: $8c
    ld [$9867], sp                                ; $406c: $08 $67 $98
    ld c, [hl]                                    ; $406f: $4e
    or b                                          ; $4070: $b0
    ld b, h                                       ; $4071: $44
    ld [$8074], sp                                ; $4072: $08 $74 $80
    jp hl                                         ; $4075: $e9


    nop                                           ; $4076: $00
    nop                                           ; $4077: $00
    db $d3                                        ; $4078: $d3
    nop                                           ; $4079: $00
    and a                                         ; $407a: $a7
    nop                                           ; $407b: $00
    ld c, [hl]                                    ; $407c: $4e
    nop                                           ; $407d: $00
    sbc l                                         ; $407e: $9d
    ld [bc], a                                    ; $407f: $02
    nop                                           ; $4080: $00
    ld a, [hl-]                                   ; $4081: $3a
    nop                                           ; $4082: $00
    ld [hl], h                                    ; $4083: $74
    nop                                           ; $4084: $00
    add sp, $3e                                   ; $4085: $e8 $3e
    nop                                           ; $4087: $00
    inc b                                         ; $4088: $04
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00
    ld b, d                                       ; $408b: $42
    nop                                           ; $408c: $00
    add b                                         ; $408d: $80
    nop                                           ; $408e: $00
    ld bc, $2200                                  ; $408f: $01 $00 $22
    ld [hl+], a                                   ; $4092: $22
    nop                                           ; $4093: $00
    ld b, b                                       ; $4094: $40
    ld b, b                                       ; $4095: $40
    db $10                                        ; $4096: $10
    rlca                                          ; $4097: $07
    ld bc, $7813                                  ; $4098: $01 $13 $78
    nop                                           ; $409b: $00
    ld bc, $0308                                  ; $409c: $01 $08 $03
    rla                                           ; $409f: $17
    ld bc, $0429                                  ; $40a0: $01 $29 $04
    nop                                           ; $40a3: $00
    ld l, c                                       ; $40a4: $69
    add b                                         ; $40a5: $80
    ld d, e                                       ; $40a6: $53
    ld bc, $6780                                  ; $40a7: $01 $80 $67
    add b                                         ; $40aa: $80
    ld c, [hl]                                    ; $40ab: $4e
    add b                                         ; $40ac: $80
    ld e, l                                       ; $40ad: $5d
    add b                                         ; $40ae: $80
    ld a, $08                                     ; $40af: $3e $08
    nop                                           ; $40b1: $00
    ld l, b                                       ; $40b2: $68
    add b                                         ; $40b3: $80
    pop de                                        ; $40b4: $d1
    nop                                           ; $40b5: $00
    and e                                         ; $40b6: $a3
    nop                                           ; $40b7: $00
    ld b, [hl]                                    ; $40b8: $46
    nop                                           ; $40b9: $00
    nop                                           ; $40ba: $00
    adc h                                         ; $40bb: $8c
    nop                                           ; $40bc: $00
    jr jr_09b_40bf                                ; $40bd: $18 $00

jr_09b_40bf:
    ld sp, $6300                                  ; $40bf: $31 $00 $63
    nop                                           ; $40c2: $00
    nop                                           ; $40c3: $00
    rst $00                                       ; $40c4: $c7
    nop                                           ; $40c5: $00
    inc d                                         ; $40c6: $14
    nop                                           ; $40c7: $00
    dec b                                         ; $40c8: $05
    nop                                           ; $40c9: $00
    xor [hl]                                      ; $40ca: $ae
    nop                                           ; $40cb: $00
    nop                                           ; $40cc: $00
    ld e, l                                       ; $40cd: $5d
    ld [bc], a                                    ; $40ce: $02
    ld a, [$d105]                                 ; $40cf: $fa $05 $d1
    ld l, $a0                                     ; $40d2: $2e $a0
    ld e, c                                       ; $40d4: $59
    nop                                           ; $40d5: $00
    push de                                       ; $40d6: $d5
    jr z, @+$27                                   ; $40d7: $28 $25

    inc bc                                        ; $40d9: $03
    rrca                                          ; $40da: $0f
    ld bc, $0355                                  ; $40db: $01 $55 $03
    nop                                           ; $40de: $00
    xor a                                         ; $40df: $af
    ld bc, $07d9                                  ; $40e0: $01 $d9 $07
    rst $30                                       ; $40e3: $f7
    dec bc                                        ; $40e4: $0b
    xor c                                         ; $40e5: $a9
    ld d, e                                       ; $40e6: $53
    nop                                           ; $40e7: $00
    ld b, a                                       ; $40e8: $47
    cp e                                          ; $40e9: $bb
    ld d, c                                       ; $40ea: $51
    add b                                         ; $40eb: $80
    ld h, e                                       ; $40ec: $63
    add b                                         ; $40ed: $80
    ld b, [hl]                                    ; $40ee: $46
    add b                                         ; $40ef: $80
    inc b                                         ; $40f0: $04
    ld c, h                                       ; $40f1: $4c
    add b                                         ; $40f2: $80
    ld e, b                                       ; $40f3: $58
    add b                                         ; $40f4: $80
    ld [hl], c                                    ; $40f5: $71
    ld a, [bc]                                    ; $40f6: $0a
    nop                                           ; $40f7: $00
    ld b, a                                       ; $40f8: $47
    add b                                         ; $40f9: $80
    nop                                           ; $40fa: $00
    adc [hl]                                      ; $40fb: $8e
    ld bc, $021d                                  ; $40fc: $01 $1d $02
    ld a, [hl-]                                   ; $40ff: $3a
    dec b                                         ; $4100: $05
    ld [hl], l                                    ; $4101: $75
    ld a, [bc]                                    ; $4102: $0a
    nop                                           ; $4103: $00
    db $eb                                        ; $4104: $eb
    inc d                                         ; $4105: $14
    sub $28                                       ; $4106: $d6 $28
    xor l                                         ; $4108: $ad
    ld d, b                                       ; $4109: $50
    ld e, d                                       ; $410a: $5a
    and b                                         ; $410b: $a0
    nop                                           ; $410c: $00
    jp hl                                         ; $410d: $e9


    inc bc                                        ; $410e: $03
    pop de                                        ; $410f: $d1
    inc bc                                        ; $4110: $03
    and l                                         ; $4111: $a5
    inc bc                                        ; $4112: $03
    ld c, l                                       ; $4113: $4d
    inc bc                                        ; $4114: $03
    nop                                           ; $4115: $00
    sbc l                                         ; $4116: $9d
    inc bc                                        ; $4117: $03
    add hl, sp                                    ; $4118: $39
    inc bc                                        ; $4119: $03
    ld [hl], l                                    ; $411a: $75
    inc bc                                        ; $411b: $03
    jp hl                                         ; $411c: $e9


    inc bc                                        ; $411d: $03
    nop                                           ; $411e: $00
    xor d                                         ; $411f: $aa
    ld d, l                                       ; $4120: $55
    ld e, a                                       ; $4121: $5f
    add b                                         ; $4122: $80
    xor e                                         ; $4123: $ab
    nop                                           ; $4124: $00
    ld [de], a                                    ; $4125: $12
    add b                                         ; $4126: $80
    nop                                           ; $4127: $00
    add b                                         ; $4128: $80
    nop                                           ; $4129: $00
    ld [$a480], sp                                ; $412a: $08 $80 $a4
    nop                                           ; $412d: $00
    ld [bc], a                                    ; $412e: $02
    add b                                         ; $412f: $80
    ld bc, $56a9                                  ; $4130: $01 $a9 $56
    db $db                                        ; $4133: $db
    jr nz, jr_09b_41ab                            ; $4134: $20 $75

    nop                                           ; $4136: $00
    xor b                                         ; $4137: $a8
    and h                                         ; $4138: $a4
    db $10                                        ; $4139: $10
    ld b, b                                       ; $413a: $40
    ld [$00ec], sp                                ; $413b: $08 $ec $00
    pop de                                        ; $413e: $d1
    inc bc                                        ; $413f: $03
    and c                                         ; $4140: $a1
    inc bc                                        ; $4141: $03
    ld b, l                                       ; $4142: $45
    inc bc                                        ; $4143: $03
    nop                                           ; $4144: $00
    adc l                                         ; $4145: $8d
    inc bc                                        ; $4146: $03
    add hl, de                                    ; $4147: $19
    inc bc                                        ; $4148: $03
    ld sp, $6103                                  ; $4149: $31 $03 $61
    inc bc                                        ; $414c: $03
    dec de                                        ; $414d: $1b
    push bc                                       ; $414e: $c5
    inc bc                                        ; $414f: $03
    sub b                                         ; $4150: $90
    cp h                                          ; $4151: $bc
    nop                                           ; $4152: $00
    ld [bc], a                                    ; $4153: $02
    ld c, b                                       ; $4154: $48
    nop                                           ; $4155: $00
    ld h, $10                                     ; $4156: $26 $10
    dec d                                         ; $4158: $15
    add hl, sp                                    ; $4159: $39
    nop                                           ; $415a: $00
    adc l                                         ; $415b: $8d
    inc bc                                        ; $415c: $03
    dec e                                         ; $415d: $1d
    inc bc                                        ; $415e: $03
    add hl, sp                                    ; $415f: $39
    rlca                                          ; $4160: $07
    ld [hl], l                                    ; $4161: $75
    dec bc                                        ; $4162: $0b
    nop                                           ; $4163: $00
    jp hl                                         ; $4164: $e9


    rla                                           ; $4165: $17
    push de                                       ; $4166: $d5
    dec hl                                        ; $4167: $2b
    xor l                                         ; $4168: $ad
    ld d, e                                       ; $4169: $53
    ld e, c                                       ; $416a: $59
    and e                                         ; $416b: $a3
    ld d, b                                       ; $416c: $50
    add b                                         ; $416d: $80
    ld h, [hl]                                    ; $416e: $66
    ld bc, $f088                                  ; $416f: $01 $88 $f0
    nop                                           ; $4172: $00
    ret nz                                        ; $4173: $c0

    nop                                           ; $4174: $00
    and d                                         ; $4175: $a2
    nop                                           ; $4176: $00
    inc d                                         ; $4177: $14
    ld b, l                                       ; $4178: $45
    add b                                         ; $4179: $80
    add e                                         ; $417a: $83
    nop                                           ; $417b: $00
    ld de, $5c01                                  ; $417c: $11 $01 $5c
    db $10                                        ; $417f: $10
    sub h                                         ; $4180: $94

jr_09b_4181:
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    jr c, jr_09b_4185                             ; $4183: $38 $00

jr_09b_4185:
    ld d, h                                       ; $4185: $54
    nop                                           ; $4186: $00
    or l                                          ; $4187: $b5
    ld b, e                                       ; $4188: $43
    ld l, c                                       ; $4189: $69
    add e                                         ; $418a: $83
    add b                                         ; $418b: $80
    sub d                                         ; $418c: $92
    jr z, @+$3f                                   ; $418d: $28 $3d

    inc bc                                        ; $418f: $03
    ld a, c                                       ; $4190: $79
    inc bc                                        ; $4191: $03
    dec h                                         ; $4192: $25
    add b                                         ; $4193: $80
    rlc b                                         ; $4194: $cb $00
    nop                                           ; $4196: $00
    scf                                           ; $4197: $37
    add b                                         ; $4198: $80
    ei                                            ; $4199: $fb
    nop                                           ; $419a: $00
    ld a, a                                       ; $419b: $7f
    add b                                         ; $419c: $80
    adc a                                         ; $419d: $8f
    nop                                           ; $419e: $00
    ld [hl], b                                    ; $419f: $70
    ld d, l                                       ; $41a0: $55
    adc d                                         ; $41a1: $8a
    adc d                                         ; $41a2: $8a
    dec b                                         ; $41a3: $05
    cp b                                          ; $41a4: $b8
    nop                                           ; $41a5: $00
    db $fd                                        ; $41a6: $fd
    jr nz, jr_09b_41a9                            ; $41a7: $20 $00

jr_09b_41a9:
    ld e, d                                       ; $41a9: $5a
    inc b                                         ; $41aa: $04

jr_09b_41ab:
    nop                                           ; $41ab: $00
    ld l, [hl]                                    ; $41ac: $6e
    sub b                                         ; $41ad: $90
    or a                                          ; $41ae: $b7
    ld c, b                                       ; $41af: $48
    ei                                            ; $41b0: $fb
    ld [bc], a                                    ; $41b1: $02
    inc b                                         ; $41b2: $04
    or c                                          ; $41b3: $b1
    ld c, [hl]                                    ; $41b4: $4e
    rst $38                                       ; $41b5: $ff
    rst $38                                       ; $41b6: $ff
    add b                                         ; $41b7: $80
    ld [bc], a                                    ; $41b8: $02
    nop                                           ; $41b9: $00
    ret nz                                        ; $41ba: $c0

    ld b, b                                       ; $41bb: $40
    cp a                                          ; $41bc: $bf
    inc b                                         ; $41bd: $04
    jr jr_09b_4181                                ; $41be: $18 $c1

    cp a                                          ; $41c0: $bf
    rst $38                                       ; $41c1: $ff
    rst $38                                       ; $41c2: $ff
    nop                                           ; $41c3: $00
    rst $38                                       ; $41c4: $ff
    inc e                                         ; $41c5: $1c
    xor d                                         ; $41c6: $aa
    ld d, l                                       ; $41c7: $55
    nop                                           ; $41c8: $00

jr_09b_41c9:
    ld b, $00                                     ; $41c9: $06 $00
    ld [$f000], sp                                ; $41cb: $08 $00 $f0
    ld de, $bf41                                  ; $41ce: $11 $41 $bf
    nop                                           ; $41d1: $00
    add e                                         ; $41d2: $83
    ld a, a                                       ; $41d3: $7f
    ld bc, $03ff                                  ; $41d4: $01 $ff $03
    rst $38                                       ; $41d7: $ff
    ld bc, $40ff                                  ; $41d8: $01 $ff $40
    xor e                                         ; $41db: $ab
    dec c                                         ; $41dc: $0d
    ld [bc], a                                    ; $41dd: $02
    ld e, d                                       ; $41de: $5a
    and l                                         ; $41df: $a5
    or a                                          ; $41e0: $b7
    ld b, b                                       ; $41e1: $40
    ld a, d                                       ; $41e2: $7a
    add c                                         ; $41e3: $81
    nop                                           ; $41e4: $00
    or c                                          ; $41e5: $b1
    ld b, b                                       ; $41e6: $40
    ld l, b                                       ; $41e7: $68
    ld bc, $00a1                                  ; $41e8: $01 $a1 $00
    ld b, l                                       ; $41eb: $45
    nop                                           ; $41ec: $00
    ld [bc], a                                    ; $41ed: $02
    ld hl, $c300                                  ; $41ee: $21 $00 $c3
    rst $38                                       ; $41f1: $ff
    rst $10                                       ; $41f2: $d7
    rst $28                                       ; $41f3: $ef
    inc b                                         ; $41f4: $04
    ld c, b                                       ; $41f5: $48
    ld bc, $0030                                  ; $41f6: $01 $30 $00
    add c                                         ; $41f9: $81
    adc h                                         ; $41fa: $8c
    ld bc, $3802                                  ; $41fb: $01 $02 $38
    add a                                         ; $41fe: $87
    ld a, b                                       ; $41ff: $78
    jr z, jr_09b_41c9                             ; $4200: $28 $c7

    nop                                           ; $4202: $00
    and l                                         ; $4203: $a5
    ld b, d                                       ; $4204: $42
    db $fd                                        ; $4205: $fd
    ld b, d                                       ; $4206: $42
    xor e                                         ; $4207: $ab
    ld d, [hl]                                    ; $4208: $56
    ld [de], a                                    ; $4209: $12
    rst $28                                       ; $420a: $ef
    nop                                           ; $420b: $00
    add c                                         ; $420c: $81
    rst $38                                       ; $420d: $ff
    rst $10                                       ; $420e: $d7
    rst $38                                       ; $420f: $ff
    add hl, sp                                    ; $4210: $39
    rst $10                                       ; $4211: $d7
    sub a                                         ; $4212: $97
    ld a, e                                       ; $4213: $7b
    nop                                           ; $4214: $00
    pop bc                                        ; $4215: $c1
    ccf                                           ; $4216: $3f
    or a                                          ; $4217: $b7
    ld c, a                                       ; $4218: $4f
    ld b, l                                       ; $4219: $45
    adc e                                         ; $421a: $8b
    dec sp                                        ; $421b: $3b
    rst $08                                       ; $421c: $cf
    nop                                           ; $421d: $00
    dec bc                                        ; $421e: $0b
    rst $38                                       ; $421f: $ff
    rst $18                                       ; $4220: $df
    rst $38                                       ; $4221: $ff
    ld c, [hl]                                    ; $4222: $4e
    add c                                         ; $4223: $81
    ld e, l                                       ; $4224: $5d
    add d                                         ; $4225: $82
    nop                                           ; $4226: $00
    ld a, d                                       ; $4227: $7a
    add l                                         ; $4228: $85
    ld [hl], l                                    ; $4229: $75
    adc d                                         ; $422a: $8a
    ld l, e                                       ; $422b: $6b
    sub h                                         ; $422c: $94
    ld a, a                                       ; $422d: $7f
    add b                                         ; $422e: $80
    ld b, d                                       ; $422f: $42
    nop                                           ; $4230: $00
    ld l, l                                       ; $4231: $6d
    ld [bc], a                                    ; $4232: $02
    or h                                          ; $4233: $b4
    ld b, b                                       ; $4234: $40
    ld l, c                                       ; $4235: $69
    add b                                         ; $4236: $80
    ld [c], a                                     ; $4237: $e2
    add hl, bc                                    ; $4238: $09
    ld c, a                                       ; $4239: $4f
    ret nz                                        ; $423a: $c0

    add e                                         ; $423b: $83
    nop                                           ; $423c: $00
    db $10                                        ; $423d: $10
    ld [$b05a], sp                                ; $423e: $08 $5a $b0
    and l                                         ; $4241: $a5
    ld d, b                                       ; $4242: $50
    ret c                                         ; $4243: $d8

    jr nc, jr_09b_4246                            ; $4244: $30 $00

jr_09b_4246:
    ld hl, $d590                                  ; $4246: $21 $90 $d5
    ld a, [hl-]                                   ; $4249: $3a
    ld a, [hl-]                                   ; $424a: $3a
    add b                                         ; $424b: $80
    and l                                         ; $424c: $a5
    ld d, b                                       ; $424d: $50
    nop                                           ; $424e: $00
    xor d                                         ; $424f: $aa
    push af                                       ; $4250: $f5
    xor e                                         ; $4251: $ab
    rrca                                          ; $4252: $0f
    ld b, l                                       ; $4253: $45
    dec bc                                        ; $4254: $0b
    add hl, bc                                    ; $4255: $09
    rrca                                          ; $4256: $0f
    nop                                           ; $4257: $00
    ld d, l                                       ; $4258: $55
    dec bc                                        ; $4259: $0b
    dec bc                                        ; $425a: $0b
    rst $38                                       ; $425b: $ff
    dec h                                         ; $425c: $25
    db $db                                        ; $425d: $db
    sbc e                                         ; $425e: $9b
    ld l, a                                       ; $425f: $6f
    nop                                           ; $4260: $00
    ld h, l                                       ; $4261: $65
    db $db                                        ; $4262: $db
    ld l, d                                       ; $4263: $6a
    sub l                                         ; $4264: $95
    or l                                          ; $4265: $b5
    nop                                           ; $4266: $00
    ld e, l                                       ; $4267: $5d
    and d                                         ; $4268: $a2
    nop                                           ; $4269: $00
    xor d                                         ; $426a: $aa
    ld d, l                                       ; $426b: $55
    ld a, b                                       ; $426c: $78
    ldh a, [$a4]                                  ; $426d: $f0 $a4
    ld [hl], b                                    ; $426f: $70
    ld e, b                                       ; $4270: $58
    ldh a, [rP1]                                  ; $4271: $f0 $00
    ld a, [c]                                     ; $4273: $f2
    ldh a, [$60]                                  ; $4274: $f0 $60
    sub b                                         ; $4276: $90
    sub c                                         ; $4277: $91
    jr nz, jr_09b_42de                            ; $4278: $20 $64

    sub b                                         ; $427a: $90
    nop                                           ; $427b: $00
    cp d                                          ; $427c: $ba
    nop                                           ; $427d: $00
    ld l, e                                       ; $427e: $6b
    sbc a                                         ; $427f: $9f
    db $dd                                        ; $4280: $dd
    cpl                                           ; $4281: $2f
    xor e                                         ; $4282: $ab
    rra                                           ; $4283: $1f
    db $10                                        ; $4284: $10
    ld d, l                                       ; $4285: $55
    xor e                                         ; $4286: $ab
    dec d                                         ; $4287: $15
    inc e                                         ; $4288: $1c
    ld [bc], a                                    ; $4289: $02
    ld d, h                                       ; $428a: $54
    nop                                           ; $428b: $00
    xor d                                         ; $428c: $aa
    nop                                           ; $428d: $00
    nop                                           ; $428e: $00
    ld e, l                                       ; $428f: $5d
    xor a                                         ; $4290: $af
    xor d                                         ; $4291: $aa
    ld e, l                                       ; $4292: $5d
    push de                                       ; $4293: $d5
    cpl                                           ; $4294: $2f
    xor a                                         ; $4295: $af
    rra                                           ; $4296: $1f
    nop                                           ; $4297: $00
    sub b                                         ; $4298: $90
    ld l, a                                       ; $4299: $6f
    ld c, d                                       ; $429a: $4a
    push af                                       ; $429b: $f5
    or l                                          ; $429c: $b5
    ld l, d                                       ; $429d: $6a
    ld c, b                                       ; $429e: $48
    rst $38                                       ; $429f: $ff
    nop                                           ; $42a0: $00
    ld [hl], l                                    ; $42a1: $75
    rst $38                                       ; $42a2: $ff
    and l                                         ; $42a3: $a5
    ld a, d                                       ; $42a4: $7a
    ld e, h                                       ; $42a5: $5c
    pop af                                        ; $42a6: $f1
    ei                                            ; $42a7: $fb
    db $fc                                        ; $42a8: $fc
    nop                                           ; $42a9: $00
    ld e, b                                       ; $42aa: $58
    and b                                         ; $42ab: $a0
    and d                                         ; $42ac: $a2
    nop                                           ; $42ad: $00
    ld d, b                                       ; $42ae: $50
    nop                                           ; $42af: $00
    and d                                         ; $42b0: $a2
    ld d, b                                       ; $42b1: $50
    ld bc, $aa55                                  ; $42b2: $01 $55 $aa
    ld a, [bc]                                    ; $42b5: $0a
    push af                                       ; $42b6: $f5
    and c                                         ; $42b7: $a1
    cp $54                                        ; $42b8: $fe $54
    rst $28                                       ; $42ba: $ef
    ld [bc], a                                    ; $42bb: $02
    nop                                           ; $42bc: $00
    adc d                                         ; $42bd: $8a
    rst $38                                       ; $42be: $ff
    ld d, l                                       ; $42bf: $55
    xor d                                         ; $42c0: $aa
    xor d                                         ; $42c1: $aa
    rst $38                                       ; $42c2: $ff
    ld [de], a                                    ; $42c3: $12
    dec c                                         ; $42c4: $0d
    nop                                           ; $42c5: $00
    add l                                         ; $42c6: $85
    ld a, [bc]                                    ; $42c7: $0a
    ld d, c                                       ; $42c8: $51
    rrca                                          ; $42c9: $0f
    add d                                         ; $42ca: $82
    dec c                                         ; $42cb: $0d
    and b                                         ; $42cc: $a0
    ld e, a                                       ; $42cd: $5f
    nop                                           ; $42ce: $00
    ld d, l                                       ; $42cf: $55
    ld a, [bc]                                    ; $42d0: $0a
    xor d                                         ; $42d1: $aa
    dec b                                         ; $42d2: $05
    ld d, b                                       ; $42d3: $50
    xor a                                         ; $42d4: $af
    dec l                                         ; $42d5: $2d
    ld a, [c]                                     ; $42d6: $f2
    nop                                           ; $42d7: $00
    adc d                                         ; $42d8: $8a
    ld [hl], l                                    ; $42d9: $75
    ld e, l                                       ; $42da: $5d
    and b                                         ; $42db: $a0
    xor d                                         ; $42dc: $aa
    ld d, l                                       ; $42dd: $55

jr_09b_42de:
    sbc e                                         ; $42de: $9b
    rrca                                          ; $42df: $0f
    nop                                           ; $42e0: $00
    ld b, l                                       ; $42e1: $45
    cp e                                          ; $42e2: $bb
    add hl, hl                                    ; $42e3: $29
    rst $38                                       ; $42e4: $ff
    ld d, l                                       ; $42e5: $55
    ei                                            ; $42e6: $fb
    ld e, e                                       ; $42e7: $5b
    cp a                                          ; $42e8: $bf
    nop                                           ; $42e9: $00
    and l                                         ; $42ea: $a5
    ld e, e                                       ; $42eb: $5b
    db $db                                        ; $42ec: $db
    ccf                                           ; $42ed: $3f
    dec h                                         ; $42ee: $25
    sbc e                                         ; $42ef: $9b
    jp c, Jump_000_00f5                           ; $42f0: $da $f5 $00

    or l                                          ; $42f3: $b5
    ld hl, sp+$5a                                 ; $42f4: $f8 $5a
    push af                                       ; $42f6: $f5
    or l                                          ; $42f7: $b5
    rst $38                                       ; $42f8: $ff
    ld h, l                                       ; $42f9: $65
    ldh a, [rP1]                                  ; $42fa: $f0 $00
    cp d                                          ; $42fc: $ba
    ldh a, [$e1]                                  ; $42fd: $f0 $e1
    ldh a, [$b8]                                  ; $42ff: $f0 $b8
    ldh a, [$d6]                                  ; $4301: $f0 $d6
    xor c                                         ; $4303: $a9
    nop                                           ; $4304: $00
    dec d                                         ; $4305: $15
    jp nz, $95ea                                  ; $4306: $c2 $ea $95

    dec [hl]                                      ; $4309: $35
    rst $18                                       ; $430a: $df
    and l                                         ; $430b: $a5
    db $10                                        ; $430c: $10
    ld bc, $8052                                  ; $430d: $01 $52 $80
    and c                                         ; $4310: $a1
    db $10                                        ; $4311: $10
    ld e, d                                       ; $4312: $5a
    add b                                         ; $4313: $80
    push af                                       ; $4314: $f5
    inc d                                         ; $4315: $14
    ld [bc], a                                    ; $4316: $02
    nop                                           ; $4317: $00
    push de                                       ; $4318: $d5
    inc bc                                        ; $4319: $03
    xor l                                         ; $431a: $ad
    inc bc                                        ; $431b: $03
    ld e, l                                       ; $431c: $5d
    inc bc                                        ; $431d: $03
    db $fd                                        ; $431e: $fd
    inc bc                                        ; $431f: $03
    ld b, b                                       ; $4320: $40
    ld bc, $034d                                  ; $4321: $01 $4d $03
    ld a, c                                       ; $4324: $79
    add [hl]                                      ; $4325: $86
    ld e, h                                       ; $4326: $5c
    and e                                         ; $4327: $a3
    add hl, hl                                    ; $4328: $29

jr_09b_4329:
    sub $00                                       ; $4329: $d6 $00
    ret nz                                        ; $432b: $c0

    rst $38                                       ; $432c: $ff
    xor h                                         ; $432d: $ac
    rra                                           ; $432e: $1f
    and l                                         ; $432f: $a5
    jr @+$4d                                      ; $4330: $18 $4b

    cp h                                          ; $4332: $bc
    nop                                           ; $4333: $00
    ld e, d                                       ; $4334: $5a
    rst $38                                       ; $4335: $ff
    ld c, h                                       ; $4336: $4c
    or e                                          ; $4337: $b3
    and e                                         ; $4338: $a3
    ld b, b                                       ; $4339: $40
    ld c, c                                       ; $433a: $49
    add b                                         ; $433b: $80
    nop                                           ; $433c: $00
    ld [hl], a                                    ; $433d: $77
    add b                                         ; $433e: $80
    cpl                                           ; $433f: $2f
    ret nc                                        ; $4340: $d0

    sub a                                         ; $4341: $97
    add sp, -$7e                                  ; $4342: $e8 $82
    db $fd                                        ; $4344: $fd
    nop                                           ; $4345: $00
    rst $20                                       ; $4346: $e7
    rst $38                                       ; $4347: $ff
    ld a, [bc]                                    ; $4348: $0a
    dec b                                         ; $4349: $05
    ld d, h                                       ; $434a: $54
    dec bc                                        ; $434b: $0b
    add hl, bc                                    ; $434c: $09
    rlca                                          ; $434d: $07
    ld [bc], a                                    ; $434e: $02
    add h                                         ; $434f: $84
    dec bc                                        ; $4350: $0b
    xor c                                         ; $4351: $a9
    rla                                           ; $4352: $17
    ld d, d                                       ; $4353: $52
    adc a                                         ; $4354: $8f
    inc b                                         ; $4355: $04
    ld [$00eb], sp                                ; $4356: $08 $eb $00
    rst $38                                       ; $4359: $ff
    ld d, l                                       ; $435a: $55
    rst $38                                       ; $435b: $ff
    ld a, [$afff]                                 ; $435c: $fa $ff $af
    rst $38                                       ; $435f: $ff
    and l                                         ; $4360: $a5
    nop                                           ; $4361: $00
    ld a, [bc]                                    ; $4362: $0a
    ld a, [de]                                    ; $4363: $1a
    dec c                                         ; $4364: $0d
    dec h                                         ; $4365: $25
    ld [$0d5a], sp                                ; $4366: $08 $5a $0d
    ld c, d                                       ; $4369: $4a
    nop                                           ; $436a: $00
    or l                                          ; $436b: $b5
    dec h                                         ; $436c: $25
    ret c                                         ; $436d: $d8

    ld c, d                                       ; $436e: $4a
    or l                                          ; $436f: $b5
    cpl                                           ; $4370: $2f
    ret nc                                        ; $4371: $d0

    ld d, d                                       ; $4372: $52
    nop                                           ; $4373: $00
    adc l                                         ; $4374: $8d
    xor c                                         ; $4375: $a9
    ld e, $52                                     ; $4376: $1e $52
    adc l                                         ; $4378: $8d
    and l                                         ; $4379: $a5
    ld a, [de]                                    ; $437a: $1a
    ld [$1000], a                                 ; $437b: $ea $00 $10
    ld d, h                                       ; $437e: $54
    jr nz, jr_09b_4329                            ; $437f: $20 $a8

    ld d, b                                       ; $4381: $50
    ld d, l                                       ; $4382: $55
    and b                                         ; $4383: $a0
    cp b                                          ; $4384: $b8
    nop                                           ; $4385: $00
    ldh a, [$d5]                                  ; $4386: $f0 $d5
    ldh a, [$a8]                                  ; $4388: $f0 $a8
    ret nc                                        ; $438a: $d0

    pop de                                        ; $438b: $d1
    ldh a, [$2d]                                  ; $438c: $f0 $2d
    nop                                           ; $438e: $00
    jp c, $bc41                                   ; $438f: $da $41 $bc

    ld l, $d9                                     ; $4392: $2e $d9
    ld d, e                                       ; $4394: $53
    cp l                                          ; $4395: $bd
    xor e                                         ; $4396: $ab
    nop                                           ; $4397: $00
    ld e, a                                       ; $4398: $5f
    dec l                                         ; $4399: $2d
    rst $38                                       ; $439a: $ff
    ld e, e                                       ; $439b: $5b
    rst $38                                       ; $439c: $ff
    and l                                         ; $439d: $a5
    ld e, e                                       ; $439e: $5b
    ld h, c                                       ; $439f: $61
    nop                                           ; $43a0: $00
    sbc [hl]                                      ; $43a1: $9e
    ld e, d                                       ; $43a2: $5a
    inc l                                         ; $43a3: $2c
    and h                                         ; $43a4: $a4
    ld e, [hl]                                    ; $43a5: $5e
    ld e, c                                       ; $43a6: $59
    cp $55                                        ; $43a7: $fe $55
    or h                                          ; $43a9: $b4
    sub $01                                       ; $43aa: $d6 $01
    ld d, c                                       ; $43ac: $51
    call $9c03                                    ; $43ad: $cd $03 $9c
    add hl, bc                                    ; $43b0: $09
    ld de, $01b8                                  ; $43b1: $11 $b8 $01
    inc bc                                        ; $43b4: $03
    nop                                           ; $43b5: $00
    nop                                           ; $43b6: $00
    dec d                                         ; $43b7: $15
    nop                                           ; $43b8: $00
    ld a, [hl+]                                   ; $43b9: $2a
    ld bc, $0015                                  ; $43ba: $01 $15 $00
    ld h, $01                                     ; $43bd: $26 $01
    nop                                           ; $43bf: $00
    rrca                                          ; $43c0: $0f
    nop                                           ; $43c1: $00
    ld d, [hl]                                    ; $43c2: $56
    ld bc, $00af                                  ; $43c3: $01 $af $00
    ret c                                         ; $43c6: $d8

    rlca                                          ; $43c7: $07
    nop                                           ; $43c8: $00
    or $09                                        ; $43c9: $f6 $09
    xor c                                         ; $43cb: $a9
    ld d, c                                       ; $43cc: $51
    ld b, h                                       ; $43cd: $44
    cp c                                          ; $43ce: $b9
    add hl, sp                                    ; $43cf: $39
    rst $10                                       ; $43d0: $d7
    nop                                           ; $43d1: $00
    sub l                                         ; $43d2: $95
    ld a, e                                       ; $43d3: $7b
    ret nz                                        ; $43d4: $c0

    ccf                                           ; $43d5: $3f
    or [hl]                                       ; $43d6: $b6
    ld c, a                                       ; $43d7: $4f
    ld b, l                                       ; $43d8: $45
    adc c                                         ; $43d9: $89
    nop                                           ; $43da: $00
    dec sp                                        ; $43db: $3b
    call $ff08                                    ; $43dc: $cd $08 $ff
    reti                                          ; $43df: $d9


    rst $38                                       ; $43e0: $ff
    rst $38                                       ; $43e1: $ff
    add sp, -$2d                                  ; $43e2: $e8 $d3
    add c                                         ; $43e4: $81
    nop                                           ; $43e5: $00
    inc b                                         ; $43e6: $04
    ld b, b                                       ; $43e7: $40
    add c                                         ; $43e8: $81
    inc l                                         ; $43e9: $2c
    ld [hl-], a                                   ; $43ea: $32
    ret nz                                        ; $43eb: $c0

    cp a                                          ; $43ec: $bf
    jr nz, jr_09b_43f9                            ; $43ed: $20 $0a

    ld d, d                                       ; $43ef: $52
    nop                                           ; $43f0: $00
    ld [hl], b                                    ; $43f1: $70
    rst $38                                       ; $43f2: $ff
    jr nz, jr_09b_441f                            ; $43f3: $20 $2a

    inc e                                         ; $43f5: $1c
    inc c                                         ; $43f6: $0c
    jr nz, jr_09b_4403                            ; $43f7: $20 $0a

jr_09b_43f9:
    ld a, e                                       ; $43f9: $7b
    add b                                         ; $43fa: $80
    or b                                          ; $43fb: $b0
    ld b, b                                       ; $43fc: $40
    inc b                                         ; $43fd: $04
    ld l, c                                       ; $43fe: $69
    nop                                           ; $43ff: $00
    and b                                         ; $4400: $a0
    nop                                           ; $4401: $00
    ld b, h                                       ; $4402: $44

jr_09b_4403:
    jr nz, jr_09b_4407                            ; $4403: $20 $02

    push de                                       ; $4405: $d5
    ld a, [hl+]                                   ; $4406: $2a

jr_09b_4407:
    inc b                                         ; $4407: $04
    db $ed                                        ; $4408: $ed
    db $10                                        ; $4409: $10
    ld a, d                                       ; $440a: $7a
    nop                                           ; $440b: $00
    sub b                                         ; $440c: $90
    ld a, [hl+]                                   ; $440d: $2a
    ld [bc], a                                    ; $440e: $02
    ld [bc], a                                    ; $440f: $02
    nop                                           ; $4410: $00
    ld bc, $0010                                  ; $4411: $01 $10 $00
    jr nz, jr_09b_4416                            ; $4414: $20 $00

jr_09b_4416:
    ld e, d                                       ; $4416: $5a
    and l                                         ; $4417: $a5
    ld c, a                                       ; $4418: $4f
    ld [hl], d                                    ; $4419: $72
    inc bc                                        ; $441a: $03
    inc d                                         ; $441b: $14
    ld [de], a                                    ; $441c: $12
    nop                                           ; $441d: $00
    dec h                                         ; $441e: $25

jr_09b_441f:
    ld c, $03                                     ; $441f: $0e $03
    ld [bc], a                                    ; $4421: $02
    or d                                          ; $4422: $b2
    inc bc                                        ; $4423: $03
    xor d                                         ; $4424: $aa
    ld d, l                                       ; $4425: $55
    ld bc, $a059                                  ; $4426: $01 $59 $a0
    ld a, [c]                                     ; $4429: $f2
    nop                                           ; $442a: $00
    ret z                                         ; $442b: $c8

    jr nz, jr_09b_449f                            ; $442c: $20 $71

    ret nc                                        ; $442e: $d0

    ld [bc], a                                    ; $442f: $02
    ld e, [hl]                                    ; $4430: $5e
    ld b, b                                       ; $4431: $40
    call nz, $0003                                ; $4432: $c4 $03 $00
    inc b                                         ; $4435: $04
    inc de                                        ; $4436: $13
    inc bc                                        ; $4437: $03
    xor b                                         ; $4438: $a8
    db $ec                                        ; $4439: $ec
    ld a, [bc]                                    ; $443a: $0a
    rra                                           ; $443b: $1f
    ld a, b                                       ; $443c: $78
    db $10                                        ; $443d: $10
    ld [$105e], a                                 ; $443e: $ea $5e $10
    ret nc                                        ; $4441: $d0

    nop                                           ; $4442: $00
    call nc, RST_00                               ; $4443: $d4 $00 $00
    ld a, [bc]                                    ; $4446: $0a
    inc b                                         ; $4447: $04
    db $10                                        ; $4448: $10
    ld a, [bc]                                    ; $4449: $0a
    nop                                           ; $444a: $00
    sbc h                                         ; $444b: $9c
    ld a, [hl+]                                   ; $444c: $2a
    nop                                           ; $444d: $00
    add hl, sp                                    ; $444e: $39
    sub [hl]                                      ; $444f: $96
    inc b                                         ; $4450: $04
    call c, $145e                                 ; $4451: $dc $5e $14
    ld [$041a], sp                                ; $4454: $08 $1a $04
    inc h                                         ; $4457: $24
    and d                                         ; $4458: $a2
    ld a, [hl]                                    ; $4459: $7e
    inc bc                                        ; $445a: $03
    add b                                         ; $445b: $80
    sub d                                         ; $445c: $92
    nop                                           ; $445d: $00
    nop                                           ; $445e: $00
    nop                                           ; $445f: $00
    add d                                         ; $4460: $82
    ld b, $10                                     ; $4461: $06 $10
    db $10                                        ; $4463: $10
    add c                                         ; $4464: $81
    ld b, b                                       ; $4465: $40
    inc bc                                        ; $4466: $03
    ld e, b                                       ; $4467: $58
    nop                                           ; $4468: $00
    cp h                                          ; $4469: $bc
    nop                                           ; $446a: $00
    daa                                           ; $446b: $27
    nop                                           ; $446c: $00
    nop                                           ; $446d: $00
    add hl, hl                                    ; $446e: $29
    nop                                           ; $446f: $00
    rst $30                                       ; $4470: $f7
    ld [$50a8], sp                                ; $4471: $08 $a8 $50
    ld b, h                                       ; $4474: $44
    cp b                                          ; $4475: $b8
    ld a, [$0000]                                 ; $4476: $fa $00 $00
    or a                                          ; $4479: $b7
    ld b, b                                       ; $447a: $40
    db $db                                        ; $447b: $db
    jr nz, @+$80                                  ; $447c: $20 $7e

    add c                                         ; $447e: $81
    or l                                          ; $447f: $b5
    ld c, d                                       ; $4480: $4a
    nop                                           ; $4481: $00
    ld a, [hl+]                                   ; $4482: $2a
    push de                                       ; $4483: $d5
    ld d, l                                       ; $4484: $55
    ld a, [hl+]                                   ; $4485: $2a
    jp nz, $893c                                  ; $4486: $c2 $3c $89

    nop                                           ; $4489: $00
    nop                                           ; $448a: $00
    ld b, a                                       ; $448b: $47
    nop                                           ; $448c: $00
    xor e                                         ; $448d: $ab
    nop                                           ; $448e: $00
    cp $01                                        ; $448f: $fe $01
    db $ed                                        ; $4491: $ed
    ld [de], a                                    ; $4492: $12
    nop                                           ; $4493: $00
    ld d, a                                       ; $4494: $57
    xor b                                         ; $4495: $a8
    and d                                         ; $4496: $a2
    ld e, l                                       ; $4497: $5d
    ld d, l                                       ; $4498: $55
    ld [hl+], a                                   ; $4499: $22
    ld l, d                                       ; $449a: $6a
    nop                                           ; $449b: $00
    nop                                           ; $449c: $00
    db $dd                                        ; $449d: $dd
    nop                                           ; $449e: $00

jr_09b_449f:
    ei                                            ; $449f: $fb
    nop                                           ; $44a0: $00
    db $ed                                        ; $44a1: $ed
    db $10                                        ; $44a2: $10
    rst $30                                       ; $44a3: $f7
    ld [$de02], sp                                ; $44a4: $08 $02 $de
    ld hl, $52ad                                  ; $44a7: $21 $ad $52
    ld b, d                                       ; $44aa: $42
    cp l                                          ; $44ab: $bd
    ldh a, [$03]                                  ; $44ac: $f0 $03
    nop                                           ; $44ae: $00
    ld l, b                                       ; $44af: $68
    dec hl                                        ; $44b0: $2b
    ret nc                                        ; $44b1: $d0

    nop                                           ; $44b2: $00
    cp b                                          ; $44b3: $b8
    dec bc                                        ; $44b4: $0b
    inc h                                         ; $44b5: $24
    db $e4                                        ; $44b6: $e4
    nop                                           ; $44b7: $00
    add b                                         ; $44b8: $80
    ret z                                         ; $44b9: $c8

    ret nz                                        ; $44ba: $c0

    nop                                           ; $44bb: $00
    ret nz                                        ; $44bc: $c0

    add b                                         ; $44bd: $80
    ret nc                                        ; $44be: $d0

    ret nz                                        ; $44bf: $c0

    jp z, $d483                                   ; $44c0: $ca $83 $d4

    jp $c848                                      ; $44c3: $c3 $48 $c8


    inc b                                         ; $44c6: $04
    ld [$9200], sp                                ; $44c7: $08 $00 $92
    ld [hl], c                                    ; $44ca: $71
    nop                                           ; $44cb: $00
    nop                                           ; $44cc: $00
    nop                                           ; $44cd: $00

jr_09b_44ce:
    xor d                                         ; $44ce: $aa
    add d                                         ; $44cf: $82
    ld d, c                                       ; $44d0: $51
    inc de                                        ; $44d1: $13
    rlca                                          ; $44d2: $07
    rst $38                                       ; $44d3: $ff
    rlca                                          ; $44d4: $07
    add e                                         ; $44d5: $83
    call nz, RST_18                               ; $44d6: $c4 $18 $00
    call nz, $c33f                                ; $44d9: $c4 $3f $c3
    ret nc                                        ; $44dc: $d0

    inc b                                         ; $44dd: $04
    jr z, jr_09b_44f4                             ; $44de: $28 $14

    ld [$0018], sp                                ; $44e0: $08 $18 $00
    ld h, a                                       ; $44e3: $67
    dec [hl]                                      ; $44e4: $35
    ret nc                                        ; $44e5: $d0

    inc c                                         ; $44e6: $0c
    jr z, @+$0e                                   ; $44e7: $28 $0c

    or l                                          ; $44e9: $b5
    inc c                                         ; $44ea: $0c
    add hl, bc                                    ; $44eb: $09
    ld b, l                                       ; $44ec: $45
    and [hl]                                      ; $44ed: $a6
    ld bc, $0030                                  ; $44ee: $01 $30 $00
    ret nz                                        ; $44f1: $c0

    jr nc, jr_09b_4504                            ; $44f2: $30 $10

jr_09b_44f4:
    call nc, RST_08                               ; $44f4: $d4 $08 $00
    inc e                                         ; $44f7: $1c
    call nc, $cac0                                ; $44f8: $d4 $c0 $ca
    jr nc, jr_09b_451d                            ; $44fb: $30 $20

    ld [hl], $08                                  ; $44fd: $36 $08
    ld [hl+], a                                   ; $44ff: $22
    dec bc                                        ; $4500: $0b
    xor d                                         ; $4501: $aa
    and l                                         ; $4502: $a5
    add hl, bc                                    ; $4503: $09

jr_09b_4504:
    nop                                           ; $4504: $00
    ld c, e                                       ; $4505: $4b
    nop                                           ; $4506: $00
    or a                                          ; $4507: $b7
    sub d                                         ; $4508: $92
    nop                                           ; $4509: $00
    rst $38                                       ; $450a: $ff
    nop                                           ; $450b: $00
    ldh [rNR31], a                                ; $450c: $e0 $1b
    ret nz                                        ; $450e: $c0

    ld a, h                                       ; $450f: $7c
    ld [$0080], sp                                ; $4510: $08 $80 $00
    ld a, [c]                                     ; $4513: $f2
    add b                                         ; $4514: $80
    jp z, $f0c0                                   ; $4515: $ca $c0 $f0

    add b                                         ; $4518: $80
    dec d                                         ; $4519: $15
    jp nz, $eac0                                  ; $451a: $c2 $c0 $ea

jr_09b_451d:
    add hl, de                                    ; $451d: $19
    dec b                                         ; $451e: $05
    ld c, c                                       ; $451f: $49
    sub a                                         ; $4520: $97
    dec b                                         ; $4521: $05
    ld [$03ab], sp                                ; $4522: $08 $ab $03
    dec d                                         ; $4525: $15
    ld bc, $2800                                  ; $4526: $01 $00 $28
    or c                                          ; $4529: $b1
    inc bc                                        ; $452a: $03
    inc h                                         ; $452b: $24
    add l                                         ; $452c: $85
    ld bc, $9004                                  ; $452d: $01 $04 $90
    jr nz, @+$06                                  ; $4530: $20 $04

    ret nz                                        ; $4532: $c0

    rst $38                                       ; $4533: $ff
    ret nz                                        ; $4534: $c0

    ld bc, $f157                                  ; $4535: $01 $57 $f1
    inc b                                         ; $4538: $04
    daa                                           ; $4539: $27
    inc bc                                        ; $453a: $03
    dec b                                         ; $453b: $05
    and a                                         ; $453c: $a7
    add c                                         ; $453d: $81
    ld c, a                                       ; $453e: $4f
    add e                                         ; $453f: $83
    rlca                                          ; $4540: $07
    inc b                                         ; $4541: $04
    nop                                           ; $4542: $00
    cpl                                           ; $4543: $2f
    inc d                                         ; $4544: $14
    ld [$18a1], sp                                ; $4545: $08 $a1 $18
    nop                                           ; $4548: $00
    cp $02                                        ; $4549: $fe $02
    jr z, jr_09b_44ce                             ; $454b: $28 $81

    ld b, a                                       ; $454d: $47
    add e                                         ; $454e: $83
    daa                                           ; $454f: $27
    inc e                                         ; $4550: $1c
    db $10                                        ; $4551: $10
    rra                                           ; $4552: $1f
    ld b, a                                       ; $4553: $47
    add e                                         ; $4554: $83
    rrca                                          ; $4555: $0f
    inc b                                         ; $4556: $04
    ld [$2020], sp                                ; $4557: $08 $20 $20
    ld h, $08                                     ; $455a: $26 $08
    add b                                         ; $455c: $80
    db $10                                        ; $455d: $10
    jr c, jr_09b_4560                             ; $455e: $38 $00

jr_09b_4560:
    jp nz, $1018                                  ; $4560: $c2 $18 $10

    jr nz, @+$0a                                  ; $4563: $20 $08

    and c                                         ; $4565: $a1
    ld b, a                                       ; $4566: $47
    inc de                                        ; $4567: $13
    rst $20                                       ; $4568: $e7

jr_09b_4569:
    db $fc                                        ; $4569: $fc
    inc de                                        ; $456a: $13
    inc b                                         ; $456b: $04
    jr nz, @+$03                                  ; $456c: $20 $01

    jr nz, @+$6a                                  ; $456e: $20 $68

    db $10                                        ; $4570: $10
    ld [bc], a                                    ; $4571: $02
    nop                                           ; $4572: $00
    ld [hl+], a                                   ; $4573: $22
    ld l, c                                       ; $4574: $69
    rst $30                                       ; $4575: $f7
    nop                                           ; $4576: $00
    db $db                                        ; $4577: $db
    sub a                                         ; $4578: $97
    ld sp, hl                                     ; $4579: $f9
    rst $10                                       ; $457a: $d7
    ld h, e                                       ; $457b: $63
    rst $38                                       ; $457c: $ff
    pop af                                        ; $457d: $f1
    rrca                                          ; $457e: $0f
    nop                                           ; $457f: $00
    inc bc                                        ; $4580: $03
    rlca                                          ; $4581: $07
    ld bc, $038f                                  ; $4582: $01 $8f $03
    rla                                           ; $4585: $17
    dec sp                                        ; $4586: $3b
    call nc, $9620                                ; $4587: $d4 $20 $96
    ld a, c                                       ; $458a: $79
    ld h, b                                       ; $458b: $60
    ld a, [bc]                                    ; $458c: $0a
    ld b, h                                       ; $458d: $44
    adc b                                         ; $458e: $88
    dec sp                                        ; $458f: $3b
    call z, Call_000_0009                         ; $4590: $cc $09 $00
    cp $d9                                        ; $4593: $fe $d9
    rst $38                                       ; $4595: $ff
    add l                                         ; $4596: $85
    ld a, [hl]                                    ; $4597: $7e
    jr nc, jr_09b_4569                            ; $4598: $30 $cf

    ld b, l                                       ; $459a: $45
    nop                                           ; $459b: $00
    add e                                         ; $459c: $83
    or $81                                        ; $459d: $f6 $81
    cp l                                          ; $459f: $bd
    ld b, d                                       ; $45a0: $42
    adc d                                         ; $45a1: $8a
    ld [hl], a                                    ; $45a2: $77
    ld b, b                                       ; $45a3: $40
    nop                                           ; $45a4: $00
    rst $38                                       ; $45a5: $ff
    rst $20                                       ; $45a6: $e7
    rst $38                                       ; $45a7: $ff
    ld e, b                                       ; $45a8: $58
    daa                                           ; $45a9: $27
    add $3f                                       ; $45aa: $c6 $3f
    adc $00                                       ; $45ac: $ce $00
    ld sp, hl                                     ; $45ae: $f9

jr_09b_45af:
    xor h                                         ; $45af: $ac
    inc de                                        ; $45b0: $13
    dec l                                         ; $45b1: $2d
    rra                                           ; $45b2: $1f
    ld [$5511], a                                 ; $45b3: $ea $11 $55
    nop                                           ; $45b6: $00
    cp b                                          ; $45b7: $b8
    inc a                                         ; $45b8: $3c
    rst $38                                       ; $45b9: $ff
    and h                                         ; $45ba: $a4
    ld b, e                                       ; $45bb: $43
    ld c, d                                       ; $45bc: $4a
    add c                                         ; $45bd: $81
    rst $30                                       ; $45be: $f7
    nop                                           ; $45bf: $00
    ld bc, $43bc                                  ; $45c0: $01 $bc $43
    ld d, l                                       ; $45c3: $55
    xor d                                         ; $45c4: $aa
    adc c                                         ; $45c5: $89
    or $42                                        ; $45c6: $f6 $42
    inc b                                         ; $45c8: $04
    rst $38                                       ; $45c9: $ff
    rst $30                                       ; $45ca: $f7
    rst $38                                       ; $45cb: $ff
    ld sp, hl                                     ; $45cc: $f9
    ld b, $40                                     ; $45cd: $06 $40
    dec sp                                        ; $45cf: $3b
    srl h                                         ; $45d0: $cb $3c
    jr nz, jr_09b_462e                            ; $45d2: $20 $5a

    rst $38                                       ; $45d4: $ff
    db $e4                                        ; $45d5: $e4
    nop                                           ; $45d6: $00
    add sp, -$80                                  ; $45d7: $e8 $80

jr_09b_45d9:
    ret nz                                        ; $45d9: $c0

    ret nz                                        ; $45da: $c0

    ld [c], a                                     ; $45db: $e2

jr_09b_45dc:
    sub l                                         ; $45dc: $95
    ldh a, [rP1]                                  ; $45dd: $f0 $00
    ldh [$80], a                                  ; $45df: $e0 $80
    ld b, b                                       ; $45e1: $40
    add hl, bc                                    ; $45e2: $09
    ld a, [hl+]                                   ; $45e3: $2a
    adc c                                         ; $45e4: $89
    ld b, $40                                     ; $45e5: $06 $40

jr_09b_45e7:
    inc b                                         ; $45e7: $04
    db $10                                        ; $45e8: $10
    ld a, d                                       ; $45e9: $7a
    ld b, d                                       ; $45ea: $42
    ld d, b                                       ; $45eb: $50
    inc c                                         ; $45ec: $0c
    ld [hl], a                                    ; $45ed: $77
    ld [bc], a                                    ; $45ee: $02
    adc b                                         ; $45ef: $88
    ld [$0806], sp                                ; $45f0: $08 $06 $08
    inc h                                         ; $45f3: $24
    ld h, b                                       ; $45f4: $60
    inc c                                         ; $45f5: $0c
    ld bc, $9740                                  ; $45f6: $01 $40 $97
    adc b                                         ; $45f9: $88
    nop                                           ; $45fa: $00
    sub a                                         ; $45fb: $97
    inc bc                                        ; $45fc: $03
    add a                                         ; $45fd: $87
    ld bc, $0307                                  ; $45fe: $01 $07 $03
    ld b, b                                       ; $4601: $40
    sub a                                         ; $4602: $97
    sub b                                         ; $4603: $90
    dec bc                                        ; $4604: $0b
    sub b                                         ; $4605: $90
    add a                                         ; $4606: $87
    ret nc                                        ; $4607: $d0

    add a                                         ; $4608: $87
    jr z, @-$77                                   ; $4609: $28 $87

    nop                                           ; $460b: $00
    ret nc                                        ; $460c: $d0

    adc a                                         ; $460d: $8f
    jr nz, jr_09b_45af                            ; $460e: $20 $9f

    add b                                         ; $4610: $80
    rst $18                                       ; $4611: $df
    db $10                                        ; $4612: $10
    rst $08                                       ; $4613: $cf
    nop                                           ; $4614: $00
    adc b                                         ; $4615: $88
    rst $00                                       ; $4616: $c7
    sbc h                                         ; $4617: $9c
    rrca                                          ; $4618: $0f
    ret c                                         ; $4619: $d8

    rrca                                          ; $461a: $0f
    sbc h                                         ; $461b: $9c
    rrca                                          ; $461c: $0f
    jr nz, jr_09b_45e7                            ; $461d: $20 $c8

    rra                                           ; $461f: $1f
    inc b                                         ; $4620: $04
    ld [$8f50], sp                                ; $4621: $08 $50 $8f
    ret z                                         ; $4624: $c8

    rra                                           ; $4625: $1f
    ret nc                                        ; $4626: $d0

    ld b, b                                       ; $4627: $40
    rst $28                                       ; $4628: $ef
    ld [bc], a                                    ; $4629: $02
    jr c, jr_09b_467c                             ; $462a: $38 $50

    rst $28                                       ; $462c: $ef
    ret z                                         ; $462d: $c8

jr_09b_462e:
    rst $20                                       ; $462e: $e7
    sub c                                         ; $462f: $91
    jp $9500                                      ; $4630: $c3 $00 $95


    jp $c3a9                                      ; $4633: $c3 $a9 $c3


    sub l                                         ; $4636: $95
    db $e3                                        ; $4637: $e3
    adc c                                         ; $4638: $89
    di                                            ; $4639: $f3
    nop                                           ; $463a: $00
    add l                                         ; $463b: $85
    ei                                            ; $463c: $fb
    add b                                         ; $463d: $80
    ei                                            ; $463e: $fb

Jump_09b_463f:
    dec b                                         ; $463f: $05
    di                                            ; $4640: $f3

jr_09b_4641:
    inc d                                         ; $4641: $14
    jp $8840                                      ; $4642: $c3 $40 $88


    ld [bc], a                                    ; $4645: $02
    jr nz, jr_09b_45dc                            ; $4646: $20 $94

    jp $c788                                      ; $4648: $c3 $88 $c7


    or c                                          ; $464b: $b1
    rst $08                                       ; $464c: $cf
    add c                                         ; $464d: $81
    inc [hl]                                      ; $464e: $34
    ld [$8f50], sp                                ; $464f: $08 $50 $8f
    ret nz                                        ; $4652: $c0

    rra                                           ; $4653: $1f
    ld b, b                                       ; $4654: $40
    sbc a                                         ; $4655: $9f
    ld [bc], a                                    ; $4656: $02
    jr jr_09b_45d9                                ; $4657: $18 $80

    inc [hl]                                      ; $4659: $34
    ld [$ef50], sp                                ; $465a: $08 $50 $ef
    ld e, b                                       ; $465d: $58
    rst $20                                       ; $465e: $e7
    ld b, b                                       ; $465f: $40
    rst $28                                       ; $4660: $ef
    ld c, b                                       ; $4661: $48
    add b                                         ; $4662: $80
    inc b                                         ; $4663: $04
    nop                                           ; $4664: $00
    ld [$88e7], sp                                ; $4665: $08 $e7 $88
    db $e3                                        ; $4668: $e3
    dec d                                         ; $4669: $15
    jp $4090                                      ; $466a: $c3 $90 $40


    jp $0804                                      ; $466d: $c3 $04 $08


    add hl, hl                                    ; $4670: $29
    jp $e310                                      ; $4671: $c3 $10 $e3


    add l                                         ; $4674: $85
    ld sp, hl                                     ; $4675: $f9
    ld de, $df80                                  ; $4676: $11 $80 $df
    or c                                          ; $4679: $b1
    halt                                          ; $467a: $76
    nop                                           ; $467b: $00

jr_09b_467c:
    or l                                          ; $467c: $b5
    jp Jump_09b_5689                              ; $467d: $c3 $89 $56


    nop                                           ; $4680: $00
    add h                                         ; $4681: $84
    inc b                                         ; $4682: $04
    ld [$9f50], sp                                ; $4683: $08 $50 $9f
    ld h, b                                       ; $4686: $60
    sbc a                                         ; $4687: $9f
    inc b                                         ; $4688: $04
    jr c, jr_09b_46ab                             ; $4689: $38 $20

    rst $18                                       ; $468b: $df
    adc b                                         ; $468c: $88
    inc [hl]                                      ; $468d: $34
    ld [$e748], sp                                ; $468e: $08 $48 $e7
    jr @+$06                                      ; $4691: $18 $04

    db $10                                        ; $4693: $10
    ld e, b                                       ; $4694: $58
    rst $20                                       ; $4695: $e7
    ld [$e700], sp                                ; $4696: $08 $00 $e7
    nop                                           ; $4699: $00
    db $fd                                        ; $469a: $fd
    ld b, l                                       ; $469b: $45
    ld sp, hl                                     ; $469c: $f9
    ld a, [bc]                                    ; $469d: $0a
    pop af                                        ; $469e: $f1
    ld d, h                                       ; $469f: $54
    nop                                           ; $46a0: $00
    pop hl                                        ; $46a1: $e1
    adc d                                         ; $46a2: $8a
    pop hl                                        ; $46a3: $e1
    ld c, b                                       ; $46a4: $48
    pop hl                                        ; $46a5: $e1
    jp z, $08e1                                   ; $46a6: $ca $e1 $08

    nop                                           ; $46a9: $00
    pop hl                                        ; $46aa: $e1

jr_09b_46ab:
    sub l                                         ; $46ab: $95
    jp $c789                                      ; $46ac: $c3 $89 $c7


    db $10                                        ; $46af: $10
    rst $08                                       ; $46b0: $cf

jr_09b_46b1:
    add c                                         ; $46b1: $81
    nop                                           ; $46b2: $00
    rst $18                                       ; $46b3: $df
    nop                                           ; $46b4: $00
    rst $18                                       ; $46b5: $df
    sub c                                         ; $46b6: $91
    rst $08                                       ; $46b7: $cf
    jr z, jr_09b_4641                             ; $46b8: $28 $87

    pop de                                        ; $46ba: $d1
    nop                                           ; $46bb: $00
    add a                                         ; $46bc: $87
    ld [hl], b                                    ; $46bd: $70
    sbc a                                         ; $46be: $9f
    db $10                                        ; $46bf: $10
    rst $18                                       ; $46c0: $df
    ld a, b                                       ; $46c1: $78
    sbc a                                         ; $46c2: $9f
    jr nc, jr_09b_46d5                            ; $46c3: $30 $10

    rst $18                                       ; $46c5: $df
    jr c, @-$1f                                   ; $46c6: $38 $df

    inc b                                         ; $46c8: $04
    ld [$df38], sp                                ; $46c9: $08 $38 $df
    inc e                                         ; $46cc: $1c
    db $e3                                        ; $46cd: $e3
    ld b, $08                                     ; $46ce: $06 $08
    rst $20                                       ; $46d0: $e7
    ld e, h                                       ; $46d1: $5c
    db $e3                                        ; $46d2: $e3
    jr jr_09b_46d9                                ; $46d3: $18 $04

jr_09b_46d5:
    nop                                           ; $46d5: $00
    ld [$5c08], sp                                ; $46d6: $08 $08 $5c

jr_09b_46d9:
    nop                                           ; $46d9: $00
    db $e3                                        ; $46da: $e3
    ld d, [hl]                                    ; $46db: $56

jr_09b_46dc:
    pop hl                                        ; $46dc: $e1
    adc b                                         ; $46dd: $88
    pop af                                        ; $46de: $f1
    add $f9                                       ; $46df: $c6 $f9
    call nz, $f902                                ; $46e1: $c4 $02 $f9
    ld c, b                                       ; $46e4: $48
    pop af                                        ; $46e5: $f1
    call nc, $c8e1                                ; $46e6: $d4 $e1 $c8
    ld b, d                                       ; $46e9: $42
    nop                                           ; $46ea: $00
    ld de, $3480                                  ; $46eb: $11 $80 $34
    nop                                           ; $46ee: $00
    ld de, $1187                                  ; $46ef: $11 $87 $11
    add b                                         ; $46f2: $80
    ld c, a                                       ; $46f3: $4f
    add b                                         ; $46f4: $80
    ld bc, $8022                                  ; $46f5: $01 $22 $80
    ld b, l                                       ; $46f8: $45
    add d                                         ; $46f9: $82
    dec b                                         ; $46fa: $05
    jr c, jr_09b_46dc                             ; $46fb: $38 $df

    jr @+$06                                      ; $46fd: $18 $04

    nop                                           ; $46ff: $00
    inc d                                         ; $4700: $14
    nop                                           ; $4701: $00
    ld hl, sp+$2b                                 ; $4702: $f8 $2b

Jump_09b_4704:
    ld d, b                                       ; $4704: $50
    sub h                                         ; $4705: $94
    jr nz, @+$17                                  ; $4706: $20 $15

    nop                                           ; $4708: $00
    dec b                                         ; $4709: $05
    ld b, c                                       ; $470a: $41
    rst $38                                       ; $470b: $ff
    inc [hl]                                      ; $470c: $34
    ld [$e21d], sp                                ; $470d: $08 $1d $e2
    ld e, [hl]                                    ; $4710: $5e
    nop                                           ; $4711: $00
    db $ed                                        ; $4712: $ed
    ld e, [hl]                                    ; $4713: $5e
    rlca                                          ; $4714: $07
    ld [$235c], sp                                ; $4715: $08 $5c $23
    ld d, a                                       ; $4718: $57
    rst $38                                       ; $4719: $ff
    inc [hl]                                      ; $471a: $34
    ld [$0180], sp                                ; $471b: $08 $80 $01
    db $e3                                        ; $471e: $e3
    inc b                                         ; $471f: $04
    ld bc, $0180                                  ; $4720: $01 $80 $01
    xor e                                         ; $4723: $ab
    ld bc, $0db0                                  ; $4724: $01 $b0 $0d
    ld a, a                                       ; $4727: $7f
    add b                                         ; $4728: $80
    ld b, b                                       ; $4729: $40
    ld b, b                                       ; $472a: $40
    pop bc                                        ; $472b: $c1
    ld d, $40                                     ; $472c: $16 $40
    add b                                         ; $472e: $80
    jr nz, jr_09b_46b1                            ; $472f: $20 $80

    ld d, b                                       ; $4731: $50
    add b                                         ; $4732: $80
    ld bc, $806a                                  ; $4733: $01 $6a $80
    cp $01                                        ; $4736: $fe $01
    inc d                                         ; $4738: $14
    ld bc, $0102                                  ; $4739: $01 $02 $01
    ld h, $40                                     ; $473c: $26 $40
    ld [bc], a                                    ; $473e: $02
    add hl, bc                                    ; $473f: $09
    ld [bc], a                                    ; $4740: $02
    push de                                       ; $4741: $d5
    xor d                                         ; $4742: $aa
    adc e                                         ; $4743: $8b
    db $f4                                        ; $4744: $f4
    add l                                         ; $4745: $85
    ld a, [$ca01]                                 ; $4746: $fa $01 $ca
    push af                                       ; $4749: $f5
    add c                                         ; $474a: $81
    cp $d0                                        ; $474b: $fe $d0
    rst $38                                       ; $474d: $ff
    xor b                                         ; $474e: $a8
    ld d, b                                       ; $474f: $50
    ld b, $00                                     ; $4750: $06 $00
    ld d, l                                       ; $4752: $55
    xor e                                         ; $4753: $ab
    ld b, e                                       ; $4754: $43
    cp a                                          ; $4755: $bf
    pop hl                                        ; $4756: $e1
    rra                                           ; $4757: $1f
    di                                            ; $4758: $f3
    rrca                                          ; $4759: $0f
    rrca                                          ; $475a: $0f
    ld d, c                                       ; $475b: $51
    xor a                                         ; $475c: $af
    add hl, hl                                    ; $475d: $29
    rst $10                                       ; $475e: $d7
    db $10                                        ; $475f: $10
    dec c                                         ; $4760: $0d
    ld d, b                                       ; $4761: $50
    ld c, h                                       ; $4762: $4c
    add b                                         ; $4763: $80
    ld d, $02                                     ; $4764: $16 $02
    inc d                                         ; $4766: $14
    ld c, b                                       ; $4767: $48
    ld bc, $01c5                                  ; $4768: $01 $c5 $01
    dec d                                         ; $476b: $15
    ld [bc], a                                    ; $476c: $02
    ld e, a                                       ; $476d: $5f
    inc c                                         ; $476e: $0c
    rst $18                                       ; $476f: $df
    jr nz, jr_09b_479a                            ; $4770: $20 $28

jr_09b_4772:
    add c                                         ; $4772: $81
    ld a, $04                                     ; $4773: $3e $04
    inc bc                                        ; $4775: $03
    nop                                           ; $4776: $00
    inc b                                         ; $4777: $04
    ld [bc], a                                    ; $4778: $02
    add hl, bc                                    ; $4779: $09
    inc b                                         ; $477a: $04
    ld hl, $051b                                  ; $477b: $21 $1b $05
    ld d, l                                       ; $477e: $55
    ld [bc], a                                    ; $477f: $02
    adc d                                         ; $4780: $8a
    inc b                                         ; $4781: $04
    jr jr_09b_4772                                ; $4782: $18 $ee

    ld b, $0a                                     ; $4784: $06 $0a
    ld c, a                                       ; $4786: $4f
    dec c                                         ; $4787: $0d
    and b                                         ; $4788: $a0
    xor a                                         ; $4789: $af
    ld b, $09                                     ; $478a: $06 $09
    ld c, [hl]                                    ; $478c: $4e
    inc b                                         ; $478d: $04
    ld [hl], h                                    ; $478e: $74
    nop                                           ; $478f: $00
    ld e, d                                       ; $4790: $5a
    add b                                         ; $4791: $80
    or h                                          ; $4792: $b4
    ld b, c                                       ; $4793: $41
    ld b, b                                       ; $4794: $40
    ld b, [hl]                                    ; $4795: $46
    dec de                                        ; $4796: $1b
    ld bc, $a9ff                                  ; $4797: $01 $ff $a9

jr_09b_479a:
    ld d, a                                       ; $479a: $57
    ld bc, $06ae                                  ; $479b: $01 $ae $06
    or c                                          ; $479e: $b1
    or b                                          ; $479f: $b0
    ld e, $ff                                     ; $47a0: $1e $ff
    ld h, h                                       ; $47a2: $64
    inc b                                         ; $47a3: $04
    inc d                                         ; $47a4: $14
    inc c                                         ; $47a5: $0c
    inc b                                         ; $47a6: $04
    ld [bc], a                                    ; $47a7: $02
    ld a, [hl+]                                   ; $47a8: $2a
    ld b, b                                       ; $47a9: $40
    stop                                          ; $47aa: $10 $00
    and h                                         ; $47ac: $a4
    ld e, c                                       ; $47ad: $59
    ld d, b                                       ; $47ae: $50
    add hl, hl                                    ; $47af: $29
    inc h                                         ; $47b0: $24
    add hl, de                                    ; $47b1: $19
    or b                                          ; $47b2: $b0
    add hl, bc                                    ; $47b3: $09
    ld b, e                                       ; $47b4: $43
    ld b, h                                       ; $47b5: $44
    inc b                                         ; $47b6: $04
    nop                                           ; $47b7: $00
    db $f4                                        ; $47b8: $f4
    ld sp, hl                                     ; $47b9: $f9
    ldh a, [$f9]                                  ; $47ba: $f0 $f9
    ld [hl], b                                    ; $47bc: $70
    ld [$1f71], sp                                ; $47bd: $08 $71 $1f
    ld d, h                                       ; $47c0: $54
    ld bc, $049e                                  ; $47c1: $01 $9e $04
    ld b, b                                       ; $47c4: $40
    ld sp, hl                                     ; $47c5: $f9
    ld b, $01                                     ; $47c6: $06 $01
    xor d                                         ; $47c8: $aa
    inc b                                         ; $47c9: $04
    dec b                                         ; $47ca: $05
    nop                                           ; $47cb: $00
    dec d                                         ; $47cc: $15
    adc d                                         ; $47cd: $8a
    nop                                           ; $47ce: $00
    inc d                                         ; $47cf: $14
    cpl                                           ; $47d0: $2f
    inc bc                                        ; $47d1: $03
    ret nc                                        ; $47d2: $d0

    add hl, bc                                    ; $47d3: $09
    rlca                                          ; $47d4: $07
    ld h, b                                       ; $47d5: $60
    ld l, h                                       ; $47d6: $6c
    rlca                                          ; $47d7: $07
    adc l                                         ; $47d8: $8d
    jr nz, jr_09b_47f3                            ; $47d9: $20 $18

    ld b, $00                                     ; $47db: $06 $00
    inc c                                         ; $47dd: $0c
    add hl, de                                    ; $47de: $19
    rlca                                          ; $47df: $07
    add $0c                                       ; $47e0: $c6 $0c
    ld b, b                                       ; $47e2: $40
    and [hl]                                      ; $47e3: $a6
    inc [hl]                                      ; $47e4: $34
    nop                                           ; $47e5: $00
    add c                                         ; $47e6: $81
    nop                                           ; $47e7: $00
    ld [bc], a                                    ; $47e8: $02
    ld bc, $0006                                  ; $47e9: $01 $06 $00
    ld [$0a04], sp                                ; $47ec: $08 $04 $0a
    db $10                                        ; $47ef: $10
    ld [$1020], sp                                ; $47f0: $08 $20 $10

jr_09b_47f3:
    ld a, [hl+]                                   ; $47f3: $2a
    ld [$1ca0], sp                                ; $47f4: $08 $a0 $1c
    jr nz, jr_09b_47fa                            ; $47f7: $20 $01

    xor e                                         ; $47f9: $ab

jr_09b_47fa:
    or h                                          ; $47fa: $b4
    db $10                                        ; $47fb: $10
    dec bc                                        ; $47fc: $0b
    xor d                                         ; $47fd: $aa
    nop                                           ; $47fe: $00
    jr nc, jr_09b_4843                            ; $47ff: $30 $42

    nop                                           ; $4801: $00
    ret nc                                        ; $4802: $d0

    jr jr_09b_4835                                ; $4803: $18 $30

    db $dd                                        ; $4805: $dd
    ccf                                           ; $4806: $3f
    pop bc                                        ; $4807: $c1
    ld [hl], b                                    ; $4808: $70
    jr z, jr_09b_47fa                             ; $4809: $28 $ef

    ld e, h                                       ; $480b: $5c
    pop af                                        ; $480c: $f1
    ld c, $0f                                     ; $480d: $0e $0f
    nop                                           ; $480f: $00
    rlca                                          ; $4810: $07
    sub h                                         ; $4811: $94
    inc b                                         ; $4812: $04
    nop                                           ; $4813: $00
    dec de                                        ; $4814: $1b
    nop                                           ; $4815: $00
    inc sp                                        ; $4816: $33
    nop                                           ; $4817: $00
    ld h, e                                       ; $4818: $63
    nop                                           ; $4819: $00
    jp nz, $f001                                  ; $481a: $c2 $01 $f0

    jr nz, jr_09b_4867                            ; $481d: $20 $48

    sub a                                         ; $481f: $97
    rrca                                          ; $4820: $0f
    ldh [$0c], a                                  ; $4821: $e0 $0c
    and b                                         ; $4823: $a0
    ld c, b                                       ; $4824: $48
    or d                                          ; $4825: $b2
    ld bc, $0162                                  ; $4826: $01 $62 $01
    inc e                                         ; $4829: $1c
    jp $0301                                      ; $482a: $c3 $01 $03


    inc [hl]                                      ; $482d: $34
    dec a                                         ; $482e: $3d
    ret nz                                        ; $482f: $c0

    rlca                                          ; $4830: $07
    call nc, Call_09b_7f07                        ; $4831: $d4 $07 $7f
    ld a, [hl]                                    ; $4834: $7e

jr_09b_4835:
    dec l                                         ; $4835: $2d
    add c                                         ; $4836: $81
    add b                                         ; $4837: $80
    adc e                                         ; $4838: $8b
    rlca                                          ; $4839: $07
    add d                                         ; $483a: $82
    and h                                         ; $483b: $a4
    ld bc, $0f56                                  ; $483c: $01 $56 $0f
    rst $38                                       ; $483f: $ff
    call z, Call_09b_4007                         ; $4840: $cc $07 $40

jr_09b_4843:
    cp $b4                                        ; $4843: $fe $b4
    ld bc, $0180                                  ; $4845: $01 $80 $01
    ccf                                           ; $4848: $3f
    ret nz                                        ; $4849: $c0

    ld b, l                                       ; $484a: $45
    add b                                         ; $484b: $80
    ld b, b                                       ; $484c: $40
    ld d, c                                       ; $484d: $51
    ld [$5001], a                                 ; $484e: $ea $01 $50
    add b                                         ; $4851: $80
    ld b, h                                       ; $4852: $44
    add b                                         ; $4853: $80
    ld d, e                                       ; $4854: $53
    add b                                         ; $4855: $80
    dec b                                         ; $4856: $05
    ld b, d                                       ; $4857: $42
    add b                                         ; $4858: $80
    db $fc                                        ; $4859: $fc
    inc bc                                        ; $485a: $03
    ld d, d                                       ; $485b: $52
    or b                                          ; $485c: $b0
    ld bc, $044a                                  ; $485d: $01 $4a $04
    stop                                          ; $4860: $10 $00
    ld c, d                                       ; $4862: $4a
    ld bc, $0142                                  ; $4863: $01 $42 $01
    ld l, c                                       ; $4866: $69

jr_09b_4867:
    add b                                         ; $4867: $80
    ld c, b                                       ; $4868: $48
    add b                                         ; $4869: $80
    ld bc, $806b                                  ; $486a: $01 $6b $80
    ld b, c                                       ; $486d: $41
    add b                                         ; $486e: $80
    ld l, b                                       ; $486f: $68
    add b                                         ; $4870: $80
    ld c, d                                       ; $4871: $4a
    inc b                                         ; $4872: $04
    nop                                           ; $4873: $00
    ld [hl+], a                                   ; $4874: $22

jr_09b_4875:
    ld b, c                                       ; $4875: $41
    add b                                         ; $4876: $80
    inc d                                         ; $4877: $14
    ld [$0102], sp                                ; $4878: $08 $02 $01
    ld d, $1a                                     ; $487b: $16 $1a
    nop                                           ; $487d: $00
    ld d, $8a                                     ; $487e: $16 $8a
    ret c                                         ; $4880: $d8

    ld bc, $0156                                  ; $4881: $01 $56 $01
    ld h, h                                       ; $4884: $64
    jr nz, jr_09b_4887                            ; $4885: $20 $00

jr_09b_4887:
    ld h, l                                       ; $4887: $65
    inc h                                         ; $4888: $24
    nop                                           ; $4889: $00
    ld h, h                                       ; $488a: $64
    or b                                          ; $488b: $b0
    ld hl, sp+$01                                 ; $488c: $f8 $01
    ld l, b                                       ; $488e: $68
    ld b, h                                       ; $488f: $44
    nop                                           ; $4890: $00
    inc d                                         ; $4891: $14
    ld [$0112], sp                                ; $4892: $08 $12 $01
    ld b, [hl]                                    ; $4895: $46
    ld bc, $8241                                  ; $4896: $01 $41 $82
    inc h                                         ; $4899: $24
    nop                                           ; $489a: $00
    add d                                         ; $489b: $82
    ld bc, $0196                                  ; $489c: $01 $96 $01
    ld h, b                                       ; $489f: $60
    ld e, b                                       ; $48a0: $58
    nop                                           ; $48a1: $00
    ld d, b                                       ; $48a2: $50
    ld c, b                                       ; $48a3: $48
    ld e, h                                       ; $48a4: $5c
    nop                                           ; $48a5: $00
    ld c, c                                       ; $48a6: $49
    inc b                                         ; $48a7: $04
    db $10                                        ; $48a8: $10
    ld c, b                                       ; $48a9: $48
    add b                                         ; $48aa: $80
    ld [de], a                                    ; $48ab: $12
    ld bc, $8648                                  ; $48ac: $01 $48 $86
    jr nz, jr_09b_48c1                            ; $48af: $20 $10

    ld [bc], a                                    ; $48b1: $02
    ld bc, $0868                                  ; $48b2: $01 $68 $08
    ld d, d                                       ; $48b5: $52
    ld bc, $6dfe                                  ; $48b6: $01 $fe $6d
    ld bc, $221d                                  ; $48b9: $01 $1d $22
    adc b                                         ; $48bc: $88
    ld b, $55                                     ; $48bd: $06 $55
    ld e, b                                       ; $48bf: $58
    dec b                                         ; $48c0: $05

jr_09b_48c1:
    and b                                         ; $48c1: $a0
    jr c, @+$01                                   ; $48c2: $38 $ff

    and d                                         ; $48c4: $a2
    db $10                                        ; $48c5: $10
    xor [hl]                                      ; $48c6: $ae
    or b                                          ; $48c7: $b0
    jr z, jr_09b_4875                             ; $48c8: $28 $ab

    ld hl, sp+$06                                 ; $48ca: $f8 $06
    ld a, a                                       ; $48cc: $7f
    or h                                          ; $48cd: $b4
    nop                                           ; $48ce: $00
    jp z, $1609                                   ; $48cf: $ca $09 $16

    dec b                                         ; $48d2: $05
    rst $38                                       ; $48d3: $ff
    ld de, $817e                                  ; $48d4: $11 $7e $81
    ld b, d                                       ; $48d7: $42
    ld [bc], a                                    ; $48d8: $02
    nop                                           ; $48d9: $00
    inc a                                         ; $48da: $3c
    jp $944a                                      ; $48db: $c3 $4a $94


    ld [$a08d], sp                                ; $48de: $08 $8d $a0
    nop                                           ; $48e1: $00
    ld d, d                                       ; $48e2: $52
    add b                                         ; $48e3: $80

Call_09b_48e4:
    ld b, e                                       ; $48e4: $43
    inc b                                         ; $48e5: $04
    nop                                           ; $48e6: $00
    ld h, b                                       ; $48e7: $60
    ld [$be42], sp                                ; $48e8: $08 $42 $be
    nop                                           ; $48eb: $00
    ld d, c                                       ; $48ec: $51
    ld d, d                                       ; $48ed: $52
    inc b                                         ; $48ee: $04
    db $10                                        ; $48ef: $10
    ld a, [bc]                                    ; $48f0: $0a
    ld h, h                                       ; $48f1: $64
    nop                                           ; $48f2: $00
    ld e, l                                       ; $48f3: $5d
    add b                                         ; $48f4: $80
    ld e, e                                       ; $48f5: $5b
    ld a, h                                       ; $48f6: $7c
    nop                                           ; $48f7: $00
    ld [hl], l                                    ; $48f8: $75
    ld d, d                                       ; $48f9: $52
    ld [hl+], a                                   ; $48fa: $22
    db $10                                        ; $48fb: $10
    ld h, $08                                     ; $48fc: $26 $08
    inc d                                         ; $48fe: $14
    ld [$a202], sp                                ; $48ff: $08 $02 $a2
    nop                                           ; $4902: $00
    ld b, d                                       ; $4903: $42
    inc b                                         ; $4904: $04
    db $10                                        ; $4905: $10
    jr @+$04                                      ; $4906: $18 $02

    ld bc, $dc50                                  ; $4908: $01 $50 $dc
    nop                                           ; $490b: $00
    cp $08                                        ; $490c: $fe $08
    ld b, l                                       ; $490e: $45
    add b                                         ; $490f: $80
    ld d, h                                       ; $4910: $54
    or l                                          ; $4911: $b5
    ld [bc], a                                    ; $4912: $02
    nop                                           ; $4913: $00
    ld b, b                                       ; $4914: $40
    and b                                         ; $4915: $a0
    nop                                           ; $4916: $00
    sbc b                                         ; $4917: $98
    jr jr_09b_4930                                ; $4918: $18 $16

    add $00                                       ; $491a: $c6 $00
    sub [hl]                                      ; $491c: $96
    ld a, [bc]                                    ; $491d: $0a
    add hl, bc                                    ; $491e: $09
    xor e                                         ; $491f: $ab
    ret c                                         ; $4920: $d8

    db $10                                        ; $4921: $10

jr_09b_4922:
    ld b, d                                       ; $4922: $42
    nop                                           ; $4923: $00
    ld de, $0464                                  ; $4924: $11 $64 $04
    ld bc, $d686                                  ; $4927: $01 $86 $d6
    db $10                                        ; $492a: $10
    sbc $18                                       ; $492b: $de $18
    ld b, b                                       ; $492d: $40
    ld b, $c4                                     ; $492e: $06 $c4

jr_09b_4930:
    nop                                           ; $4930: $00
    ld a, [$f510]                                 ; $4931: $fa $10 $f5
    nop                                           ; $4934: $00
    ld a, [$0010]                                 ; $4935: $fa $10 $00
    ld [hl], l                                    ; $4938: $75
    add b                                         ; $4939: $80
    rst $38                                       ; $493a: $ff
    db $10                                        ; $493b: $10
    ld a, a                                       ; $493c: $7f
    add b                                         ; $493d: $80
    xor a                                         ; $493e: $af
    ld d, b                                       ; $493f: $50
    ld [bc], a                                    ; $4940: $02
    rst $38                                       ; $4941: $ff
    and b                                         ; $4942: $a0
    xor e                                         ; $4943: $ab
    dec b                                         ; $4944: $05
    ld d, l                                       ; $4945: $55
    ld a, [bc]                                    ; $4946: $0a
    inc b                                         ; $4947: $04
    db $10                                        ; $4948: $10
    ld d, l                                       ; $4949: $55
    nop                                           ; $494a: $00
    ld [hl], l                                    ; $494b: $75
    adc d                                         ; $494c: $8a
    cp e                                          ; $494d: $bb
    ld b, l                                       ; $494e: $45
    ld [hl], l                                    ; $494f: $75
    adc d                                         ; $4950: $8a
    ld a, [$2000]                                 ; $4951: $fa $00 $20
    rst $30                                       ; $4954: $f7
    nop                                           ; $4955: $00
    inc b                                         ; $4956: $04
    ld [$00ff], sp                                ; $4957: $08 $ff $00
    ld e, a                                       ; $495a: $5f
    and b                                         ; $495b: $a0
    xor e                                         ; $495c: $ab
    nop                                           ; $495d: $00
    ld d, h                                       ; $495e: $54
    ld d, l                                       ; $495f: $55
    xor d                                         ; $4960: $aa
    ld [$7515], a                                 ; $4961: $ea $15 $75
    adc b                                         ; $4964: $88
    ld [$1500], a                                 ; $4965: $ea $00 $15
    ld a, a                                       ; $4968: $7f
    add b                                         ; $4969: $80
    ld a, [$fd05]                                 ; $496a: $fa $05 $fd
    ld [bc], a                                    ; $496d: $02

jr_09b_496e:
    ld a, [$0500]                                 ; $496e: $fa $00 $05
    push af                                       ; $4971: $f5
    ld a, [bc]                                    ; $4972: $0a
    ld [$5510], a                                 ; $4973: $ea $10 $55
    jr nz, jr_09b_4922                            ; $4976: $20 $aa

    adc b                                         ; $4978: $88
    or b                                          ; $4979: $b0
    rlca                                          ; $497a: $07
    cp d                                          ; $497b: $ba
    ld b, b                                       ; $497c: $40
    push de                                       ; $497d: $d5
    ld [$d500], sp                                ; $497e: $08 $00 $d5
    jr nz, jr_09b_496e                            ; $4981: $20 $eb

    ld bc, $df10                                  ; $4983: $01 $10 $df
    jr nz, @-$53                                  ; $4986: $20 $ab

    ld d, b                                       ; $4988: $50
    ld e, l                                       ; $4989: $5d

jr_09b_498a:
    and b                                         ; $498a: $a0
    jr nz, jr_09b_499b                            ; $498b: $20 $0e

    jr nz, jr_09b_498a                            ; $498d: $20 $fb

    inc b                                         ; $498f: $04
    rst $38                                       ; $4990: $ff
    dec b                                         ; $4991: $05
    ld bc, $3601                                  ; $4992: $01 $01 $36
    scf                                           ; $4995: $37
    jr z, jr_09b_4998                             ; $4996: $28 $00

jr_09b_4998:
    inc e                                         ; $4998: $1c
    inc de                                        ; $4999: $13
    add hl, bc                                    ; $499a: $09

jr_09b_499b:
    ld [hl], $2e                                  ; $499b: $36 $2e
    scf                                           ; $499d: $37
    ccf                                           ; $499e: $3f
    ld sp, $1f00                                  ; $499f: $31 $00 $1f
    ld h, h                                       ; $49a2: $64
    nop                                           ; $49a3: $00
    ldh [$e0], a                                  ; $49a4: $e0 $e0
    jr @-$06                                      ; $49a6: $18 $f8

    inc b                                         ; $49a8: $04
    nop                                           ; $49a9: $00
    db $fc                                        ; $49aa: $fc
    ld [bc], a                                    ; $49ab: $02
    ld a, h                                       ; $49ac: $7c
    add d                                         ; $49ad: $82
    cp a                                          ; $49ae: $bf
    ld b, c                                       ; $49af: $41
    ld a, l                                       ; $49b0: $7d
    jp $f900                                      ; $49b1: $c3 $00 $f9


    add a                                         ; $49b4: $87
    xor d                                         ; $49b5: $aa
    ld d, l                                       ; $49b6: $55
    push de                                       ; $49b7: $d5
    jr z, @-$43                                   ; $49b8: $28 $bb

    ld b, h                                       ; $49ba: $44
    nop                                           ; $49bb: $00
    rst $10                                       ; $49bc: $d7
    jr z, @+$01                                   ; $49bd: $28 $ff

    nop                                           ; $49bf: $00
    ld [hl], a                                    ; $49c0: $77
    ld [$04ab], sp                                ; $49c1: $08 $ab $04
    nop                                           ; $49c4: $00
    ld d, a                                       ; $49c5: $57
    ld [$8e77], sp                                ; $49c6: $08 $77 $8e
    xor a                                         ; $49c9: $af
    sbc $73                                       ; $49ca: $de $73
    ld a, h                                       ; $49cc: $7c
    nop                                           ; $49cd: $00
    rla                                           ; $49ce: $17
    jr jr_09b_49ee                                ; $49cf: $18 $1d

    ld a, [hl-]                                   ; $49d1: $3a
    dec hl                                        ; $49d2: $2b
    ld e, h                                       ; $49d3: $5c
    ld a, [hl]                                    ; $49d4: $7e
    ld b, c                                       ; $49d5: $41

jr_09b_49d6:
    nop                                           ; $49d6: $00
    ld e, b                                       ; $49d7: $58
    ld h, a                                       ; $49d8: $67
    push af                                       ; $49d9: $f5
    dec sp                                        ; $49da: $3b
    ld sp, hl                                     ; $49db: $f9
    rrca                                          ; $49dc: $0f
    ld a, [$000e]                                 ; $49dd: $fa $0e $00
    db $f4                                        ; $49e0: $f4
    inc e                                         ; $49e1: $1c
    add sp, $78                                   ; $49e2: $e8 $78
    jr nc, jr_09b_49d6                            ; $49e4: $30 $f0

    ld l, h                                       ; $49e6: $6c
    db $fc                                        ; $49e7: $fc
    inc b                                         ; $49e8: $04
    xor d                                         ; $49e9: $aa
    or $ea                                        ; $49ea: $f6 $ea
    dec d                                         ; $49ec: $15
    push af                                       ; $49ed: $f5

jr_09b_49ee:
    ld a, d                                       ; $49ee: $7a
    ld c, $00                                     ; $49ef: $0e $00

jr_09b_49f1:
    ld a, [$5000]                                 ; $49f1: $fa $00 $50
    push af                                       ; $49f4: $f5
    jr nz, jr_09b_49f1                            ; $49f5: $20 $fa

    ld d, b                                       ; $49f7: $50
    rst $30                                       ; $49f8: $f7
    and b                                         ; $49f9: $a0
    cp a                                          ; $49fa: $bf
    nop                                           ; $49fb: $00
    rst $38                                       ; $49fc: $ff
    pop bc                                        ; $49fd: $c1
    cp $e7                                        ; $49fe: $fe $e7
    ld hl, sp+$7f                                 ; $4a00: $f8 $7f
    ld a, a                                       ; $4a02: $7f
    ccf                                           ; $4a03: $3f
    nop                                           ; $4a04: $00
    ccf                                           ; $4a05: $3f
    jr c, jr_09b_4a47                             ; $4a06: $38 $3f

    ld sp, $233e                                  ; $4a08: $31 $3e $23
    inc a                                         ; $4a0b: $3c
    ld e, l                                       ; $4a0c: $5d
    nop                                           ; $4a0d: $00
    and e                                         ; $4a0e: $a3
    ei                                            ; $4a0f: $fb
    rlca                                          ; $4a10: $07
    rst $08                                       ; $4a11: $cf
    ccf                                           ; $4a12: $3f
    cp $fe                                        ; $4a13: $fe $fe
    db $fc                                        ; $4a15: $fc
    nop                                           ; $4a16: $00
    db $fc                                        ; $4a17: $fc
    inc d                                         ; $4a18: $14

jr_09b_4a19:
    db $fc                                        ; $4a19: $fc
    call z, $e43c                                 ; $4a1a: $cc $3c $e4
    inc e                                         ; $4a1d: $1c
    dec [hl]                                      ; $4a1e: $35
    inc e                                         ; $4a1f: $1c
    ld a, [hl-]                                   ; $4a20: $3a
    inc hl                                        ; $4a21: $23
    inc a                                         ; $4a22: $3c
    inc b                                         ; $4a23: $04
    ld c, b                                       ; $4a24: $48
    inc d                                         ; $4a25: $14
    ld [$4804], sp                                ; $4a26: $08 $04 $48
    cp a                                          ; $4a29: $bf
    dec b                                         ; $4a2a: $05
    nop                                           ; $4a2b: $00
    rst $10                                       ; $4a2c: $d7
    ld a, [bc]                                    ; $4a2d: $0a
    rst $38                                       ; $4a2e: $ff
    dec b                                         ; $4a2f: $05
    rst $30                                       ; $4a30: $f7
    ld a, [bc]                                    ; $4a31: $0a
    xor a                                         ; $4a32: $af
    ld d, l                                       ; $4a33: $55
    inc b                                         ; $4a34: $04
    ld e, a                                       ; $4a35: $5f
    xor d                                         ; $4a36: $aa
    xor a                                         ; $4a37: $af
    dec d                                         ; $4a38: $15
    ld e, a                                       ; $4a39: $5f
    ret c                                         ; $4a3a: $d8

    ld d, $fb                                     ; $4a3b: $16 $fb
    inc b                                         ; $4a3d: $04
    ld [bc], a                                    ; $4a3e: $02
    push af                                       ; $4a3f: $f5
    ld a, [bc]                                    ; $4a40: $0a
    xor d                                         ; $4a41: $aa
    ld d, l                                       ; $4a42: $55
    ld d, l                                       ; $4a43: $55
    and b                                         ; $4a44: $a0
    ret c                                         ; $4a45: $d8

    nop                                           ; $4a46: $00

jr_09b_4a47:
    xor d                                         ; $4a47: $aa
    ld [$01fe], sp                                ; $4a48: $08 $fe $01
    ld d, l                                       ; $4a4b: $55
    add d                                         ; $4a4c: $82
    db $f4                                        ; $4a4d: $f4
    nop                                           ; $4a4e: $00
    adc d                                         ; $4a4f: $8a
    xor a                                         ; $4a50: $af
    db $10                                        ; $4a51: $10
    ld [bc], a                                    ; $4a52: $02
    ld d, a                                       ; $4a53: $57

jr_09b_4a54:
    add b                                         ; $4a54: $80
    xor e                                         ; $4a55: $ab
    db $10                                        ; $4a56: $10
    ld e, a                                       ; $4a57: $5f
    add b                                         ; $4a58: $80
    ld d, b                                       ; $4a59: $50
    jr @+$55                                      ; $4a5a: $18 $53

    nop                                           ; $4a5c: $00
    ld e, h                                       ; $4a5d: $5c
    xor a                                         ; $4a5e: $af
    xor [hl]                                      ; $4a5f: $ae
    ld d, l                                       ; $4a60: $55
    ld d, l                                       ; $4a61: $55
    ld a, [bc]                                    ; $4a62: $0a
    ld a, [bc]                                    ; $4a63: $0a
    nop                                           ; $4a64: $00
    ld b, b                                       ; $4a65: $40
    nop                                           ; $4a66: $00

jr_09b_4a67:
    ld h, h                                       ; $4a67: $64
    ld [$3ec6], sp                                ; $4a68: $08 $c6 $3e
    db $ed                                        ; $4a6b: $ed
    dec e                                         ; $4a6c: $1d
    ld a, [$0c3a]                                 ; $4a6d: $fa $3a $0c
    ld d, h                                       ; $4a70: $54
    ld d, h                                       ; $4a71: $54
    xor b                                         ; $4a72: $a8
    xor b                                         ; $4a73: $a8
    xor a                                         ; $4a74: $af
    ld [bc], a                                    ; $4a75: $02
    or b                                          ; $4a76: $b0
    inc bc                                        ; $4a77: $03
    add e                                         ; $4a78: $83
    ld a, a                                       ; $4a79: $7f
    inc d                                         ; $4a7a: $14
    ld bc, $03ff                                  ; $4a7b: $01 $ff $03
    cp b                                          ; $4a7e: $b8
    inc bc                                        ; $4a7f: $03
    inc bc                                        ; $4a80: $03
    nop                                           ; $4a81: $00
    inc b                                         ; $4a82: $04
    ld d, l                                       ; $4a83: $55
    xor d                                         ; $4a84: $aa
    nop                                           ; $4a85: $00
    cp a                                          ; $4a86: $bf
    ld b, b                                       ; $4a87: $40
    ld a, l                                       ; $4a88: $7d
    add b                                         ; $4a89: $80
    xor h                                         ; $4a8a: $ac
    nop                                           ; $4a8b: $00
    ld e, h                                       ; $4a8c: $5c
    add b                                         ; $4a8d: $80
    inc b                                         ; $4a8e: $04
    adc d                                         ; $4a8f: $8a
    nop                                           ; $4a90: $00
    inc b                                         ; $4a91: $04
    add b                                         ; $4a92: $80
    pop bc                                        ; $4a93: $c1
    ld [hl], $07                                  ; $4a94: $36 $07
    rst $18                                       ; $4a96: $df
    jr nz, jr_09b_4a19                            ; $4a97: $20 $80

    inc a                                         ; $4a99: $3c
    rrca                                          ; $4a9a: $0f
    cp d                                          ; $4a9b: $ba
    ld b, l                                       ; $4a9c: $45
    ld [hl], l                                    ; $4a9d: $75
    ld a, [bc]                                    ; $4a9e: $0a
    ld a, [$d704]                                 ; $4a9f: $fa $04 $d7
    nop                                           ; $4aa2: $00
    jr z, jr_09b_4a54                             ; $4aa3: $28 $af

    ld d, b                                       ; $4aa5: $50
    rst $18                                       ; $4aa6: $df
    jr nz, jr_09b_4a67                            ; $4aa7: $20 $be

    ld b, c                                       ; $4aa9: $41
    push de                                       ; $4aaa: $d5
    ld b, b                                       ; $4aab: $40
    ld a, [hl+]                                   ; $4aac: $2a
    ld h, h                                       ; $4aad: $64
    ld [$15aa], sp                                ; $4aae: $08 $aa $15
    push af                                       ; $4ab1: $f5
    ld a, [bc]                                    ; $4ab2: $0a
    cp a                                          ; $4ab3: $bf
    nop                                           ; $4ab4: $00
    ld de, $00d5                                  ; $4ab5: $11 $d5 $00
    cp $5c                                        ; $4ab8: $fe $5c
    rrca                                          ; $4aba: $0f
    dec b                                         ; $4abb: $05
    rst $38                                       ; $4abc: $ff
    ld [$0004], sp                                ; $4abd: $08 $04 $00
    nop                                           ; $4ac0: $00
    ld a, [bc]                                    ; $4ac1: $0a
    cp d                                          ; $4ac2: $ba
    ld b, l                                       ; $4ac3: $45
    ld e, a                                       ; $4ac4: $5f
    and b                                         ; $4ac5: $a0
    cp a                                          ; $4ac6: $bf
    ld b, b                                       ; $4ac7: $40
    ld e, l                                       ; $4ac8: $5d
    nop                                           ; $4ac9: $00
    xor d                                         ; $4aca: $aa
    rst $38                                       ; $4acb: $ff
    ld d, l                                       ; $4acc: $55
    push af                                       ; $4acd: $f5
    ld a, [hl+]                                   ; $4ace: $2a
    cp $51                                        ; $4acf: $fe $51
    rst $38                                       ; $4ad1: $ff
    ld [bc], a                                    ; $4ad2: $02
    xor b                                         ; $4ad3: $a8
    add b                                         ; $4ad4: $80
    nop                                           ; $4ad5: $00
    add h                                         ; $4ad6: $84
    nop                                           ; $4ad7: $00
    jp nz, Jump_000_07fa                          ; $4ad8: $c2 $fa $07

    add c                                         ; $4adb: $81
    ret nz                                        ; $4adc: $c0

    ldh a, [rTAC]                                 ; $4add: $f0 $07
    ret z                                         ; $4adf: $c8

    inc bc                                        ; $4ae0: $03
    add b                                         ; $4ae1: $80
    sub h                                         ; $4ae2: $94
    nop                                           ; $4ae3: $00
    dec b                                         ; $4ae4: $05
    add b                                         ; $4ae5: $80
    xor [hl]                                      ; $4ae6: $ae
    nop                                           ; $4ae7: $00
    nop                                           ; $4ae8: $00
    ld e, l                                       ; $4ae9: $5d
    add d                                         ; $4aea: $82
    ld a, [$5105]                                 ; $4aeb: $fa $05 $51
    xor [hl]                                      ; $4aee: $ae
    and b                                         ; $4aef: $a0
    nop                                           ; $4af0: $00
    reti                                          ; $4af1: $d9


    ld d, l                                       ; $4af2: $55
    xor b                                         ; $4af3: $a8
    add a                                         ; $4af4: $87
    ld hl, sp+$28                                 ; $4af5: $f8 $28
    rst $00                                       ; $4af7: $c7
    and l                                         ; $4af8: $a5
    nop                                           ; $4af9: $00
    jp nz, $c2fd                                  ; $4afa: $c2 $fd $c2

    xor e                                         ; $4afd: $ab

jr_09b_4afe:
    sub $12                                       ; $4afe: $d6 $12
    rst $28                                       ; $4b00: $ef
    add c                                         ; $4b01: $81
    rlca                                          ; $4b02: $07
    rst $38                                       ; $4b03: $ff
    rst $10                                       ; $4b04: $d7
    rst $38                                       ; $4b05: $ff
    ld a, [$e000]                                 ; $4b06: $fa $00 $e0
    ld bc, $0004                                  ; $4b09: $01 $04 $00
    ret nz                                        ; $4b0c: $c0

    add hl, bc                                    ; $4b0d: $09
    ld bc, $55aa                                  ; $4b0e: $01 $aa $55
    rst $10                                       ; $4b11: $d7
    jr z, jr_09b_4afe                             ; $4b12: $28 $ea

    ld de, $04d5                                  ; $4b14: $11 $d5 $04
    db $10                                        ; $4b17: $10
    ld h, b                                       ; $4b18: $60
    xor e                                         ; $4b19: $ab
    xor h                                         ; $4b1a: $ac
    ld bc, $09b8                                  ; $4b1b: $01 $b8 $09
    nop                                           ; $4b1e: $00
    rlca                                          ; $4b1f: $07
    inc hl                                        ; $4b20: $23
    inc a                                         ; $4b21: $3c
    ld [hl], $00                                  ; $4b22: $36 $00
    dec a                                         ; $4b24: $3d
    ld a, [de]                                    ; $4b25: $1a
    rra                                           ; $4b26: $1f
    inc c                                         ; $4b27: $0c
    rla                                           ; $4b28: $17
    rrca                                          ; $4b29: $0f
    inc sp                                        ; $4b2a: $33
    scf                                           ; $4b2b: $37
    nop                                           ; $4b2c: $00
    jr c, jr_09b_4b6e                             ; $4b2d: $38 $3f

    ccf                                           ; $4b2f: $3f
    nop                                           ; $4b30: $00
    ret nz                                        ; $4b31: $c0

    ret nz                                        ; $4b32: $c0

    jr c, @-$46                                   ; $4b33: $38 $b8

    nop                                           ; $4b35: $00
    ld b, h                                       ; $4b36: $44
    inc e                                         ; $4b37: $1c
    ld [c], a                                     ; $4b38: $e2
    cp h                                          ; $4b39: $bc
    jp nz, $71cf                                  ; $4b3a: $c2 $cf $71

    db $eb                                        ; $4b3d: $eb
    nop                                           ; $4b3e: $00
    ld a, l                                       ; $4b3f: $7d
    push af                                       ; $4b40: $f5
    rst $38                                       ; $4b41: $ff
    ld e, $1f                                     ; $4b42: $1e $1f
    cpl                                           ; $4b44: $2f
    ld a, $25                                     ; $4b45: $3e $25
    nop                                           ; $4b47: $00
    ld a, $1f                                     ; $4b48: $3e $1f
    db $10                                        ; $4b4a: $10
    rra                                           ; $4b4b: $1f
    db $10                                        ; $4b4c: $10
    dec de                                        ; $4b4d: $1b
    inc e                                         ; $4b4e: $1c
    ccf                                           ; $4b4f: $3f

jr_09b_4b50:
    nop                                           ; $4b50: $00
    jr nc, jr_09b_4ba4                            ; $4b51: $30 $51

    ld a, a                                       ; $4b53: $7f
    dec sp                                        ; $4b54: $3b
    rst $08                                       ; $4b55: $cf
    xor $1e                                       ; $4b56: $ee $1e
    jp c, $3e00                                   ; $4b58: $da $00 $3e

    db $fc                                        ; $4b5b: $fc
    inc a                                         ; $4b5c: $3c
    add sp, $38                                   ; $4b5d: $e8 $38
    xor b                                         ; $4b5f: $a8
    ld a, b                                       ; $4b60: $78
    ld e, h                                       ; $4b61: $5c
    jr jr_09b_4b50                                ; $4b62: $18 $ec

    xor d                                         ; $4b64: $aa
    sbc $04                                       ; $4b65: $de $04
    inc a                                         ; $4b67: $3c
    ld l, b                                       ; $4b68: $68
    inc b                                         ; $4b69: $04
    ld bc, $0205                                  ; $4b6a: $01 $05 $02
    nop                                           ; $4b6d: $00

jr_09b_4b6e:
    ld e, $00                                     ; $4b6e: $1e $00
    inc l                                         ; $4b70: $2c
    db $10                                        ; $4b71: $10
    ld e, b                                       ; $4b72: $58
    jr nz, jr_09b_4ba5                            ; $4b73: $20 $30

    ld b, b                                       ; $4b75: $40
    ld a, [bc]                                    ; $4b76: $0a
    ldh [rP1], a                                  ; $4b77: $e0 $00
    ld b, b                                       ; $4b79: $40
    add b                                         ; $4b7a: $80
    ld d, h                                       ; $4b7b: $54
    inc c                                         ; $4b7c: $0c
    ld a, [bc]                                    ; $4b7d: $0a
    ld a, b                                       ; $4b7e: $78
    inc d                                         ; $4b7f: $14
    ld d, b                                       ; $4b80: $50
    ldh a, [$30]                                  ; $4b81: $f0 $30
    ld b, h                                       ; $4b83: $44
    sub b                                         ; $4b84: $90
    ld c, h                                       ; $4b85: $4c
    jr jr_09b_4be8                                ; $4b86: $18 $60

    ld b, b                                       ; $4b88: $40
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    add c                                         ; $4b8b: $81
    ret nz                                        ; $4b8c: $c0

    ld bc, $2055                                  ; $4b8d: $01 $55 $20
    inc b                                         ; $4b90: $04
    nop                                           ; $4b91: $00
    ld [bc], a                                    ; $4b92: $02
    inc b                                         ; $4b93: $04
    db $10                                        ; $4b94: $10
    add h                                         ; $4b95: $84
    db $e4                                        ; $4b96: $e4
    inc de                                        ; $4b97: $13
    add d                                         ; $4b98: $82
    ld b, $30                                     ; $4b99: $06 $30
    ld sp, $01d0                                  ; $4b9b: $31 $d0 $01
    ld l, [hl]                                    ; $4b9e: $6e
    ld b, b                                       ; $4b9f: $40
    sub $04                                       ; $4ba0: $d6 $04
    ld [bc], a                                    ; $4ba2: $02
    nop                                           ; $4ba3: $00

jr_09b_4ba4:
    ld a, [bc]                                    ; $4ba4: $0a

jr_09b_4ba5:
    jr jr_09b_4bab                                ; $4ba5: $18 $04

    and b                                         ; $4ba7: $a0
    jr z, jr_09b_4bb2                             ; $4ba8: $28 $08

    ld [bc], a                                    ; $4baa: $02

jr_09b_4bab:
    jr nz, @+$16                                  ; $4bab: $20 $14

    add b                                         ; $4bad: $80
    ld bc, $01a2                                  ; $4bae: $01 $a2 $01
    ret nz                                        ; $4bb1: $c0

jr_09b_4bb2:
    cp d                                          ; $4bb2: $ba
    cp h                                          ; $4bb3: $bc
    inc bc                                        ; $4bb4: $03
    call nz, Call_000_2034                        ; $4bb5: $c4 $34 $20
    inc [hl]                                      ; $4bb8: $34
    inc b                                         ; $4bb9: $04
    and h                                         ; $4bba: $a4
    ld b, h                                       ; $4bbb: $44
    dec b                                         ; $4bbc: $05
    ld c, e                                       ; $4bbd: $4b
    rlca                                          ; $4bbe: $07
    inc b                                         ; $4bbf: $04
    ld a, $00                                     ; $4bc0: $3e $00
    ld [$14f2], sp                                ; $4bc2: $08 $f2 $14
    sub d                                         ; $4bc5: $92
    jr nc, jr_09b_4c28                            ; $4bc6: $30 $60

    inc d                                         ; $4bc8: $14
    sub b                                         ; $4bc9: $90
    dec sp                                        ; $4bca: $3b
    or b                                          ; $4bcb: $b0
    ld b, e                                       ; $4bcc: $43
    cp $c0                                        ; $4bcd: $fe $c0
    adc $1b                                       ; $4bcf: $ce $1b
    ret nz                                        ; $4bd1: $c0

    dec hl                                        ; $4bd2: $2b
    push de                                       ; $4bd3: $d5
    cp $7e                                        ; $4bd4: $fe $7e
    add c                                         ; $4bd6: $81
    nop                                           ; $4bd7: $00
    rst $38                                       ; $4bd8: $ff
    add e                                         ; $4bd9: $83
    ld d, [hl]                                    ; $4bda: $56
    jr @-$3e                                      ; $4bdb: $18 $c0

    ld bc, $01a0                                  ; $4bdd: $01 $a0 $01
    jp nz, $0634                                  ; $4be0: $c2 $34 $06

    inc b                                         ; $4be3: $04
    ld [$1280], sp                                ; $4be4: $08 $80 $12
    ld e, b                                       ; $4be7: $58

jr_09b_4be8:
    db $eb                                        ; $4be8: $eb
    rrca                                          ; $4be9: $0f
    dec b                                         ; $4bea: $05
    ld c, e                                       ; $4beb: $4b
    ret                                           ; $4bec: $c9


    rrca                                          ; $4bed: $0f
    dec d                                         ; $4bee: $15
    nop                                           ; $4bef: $00
    ld c, e                                       ; $4bf0: $4b
    srl a                                         ; $4bf1: $cb $3f
    dec h                                         ; $4bf3: $25
    ld e, e                                       ; $4bf4: $5b
    db $db                                        ; $4bf5: $db
    cpl                                           ; $4bf6: $2f
    dec h                                         ; $4bf7: $25
    rrca                                          ; $4bf8: $0f
    ld e, e                                       ; $4bf9: $5b
    add h                                         ; $4bfa: $84
    ld bc, $928a                                  ; $4bfb: $01 $8a $92
    nop                                           ; $4bfe: $00
    sub [hl]                                      ; $4bff: $96
    ld [$0836], sp                                ; $4c00: $08 $36 $08
    ld [hl-], a                                   ; $4c03: $32
    ld [$12c0], sp                                ; $4c04: $08 $c0 $12
    ld [$28d4], sp                                ; $4c07: $08 $d4 $28
    add b                                         ; $4c0a: $80
    ld bc, $758a                                  ; $4c0b: $01 $8a $75
    ld d, h                                       ; $4c0e: $54
    dec hl                                        ; $4c0f: $2b
    nop                                           ; $4c10: $00
    adc c                                         ; $4c11: $89
    ld [hl], a                                    ; $4c12: $77
    ld b, h                                       ; $4c13: $44
    dec sp                                        ; $4c14: $3b
    xor c                                         ; $4c15: $a9
    ld d, a                                       ; $4c16: $57
    ld d, d                                       ; $4c17: $52
    cpl                                           ; $4c18: $2f
    add b                                         ; $4c19: $80
    inc b                                         ; $4c1a: $04
    ld [$5aad], sp                                ; $4c1b: $08 $ad $5a
    ld b, c                                       ; $4c1e: $41
    inc a                                         ; $4c1f: $3c
    xor [hl]                                      ; $4c20: $ae
    ld e, c                                       ; $4c21: $59
    ld d, e                                       ; $4c22: $53
    nop                                           ; $4c23: $00
    dec a                                         ; $4c24: $3d
    xor e                                         ; $4c25: $ab
    ld e, a                                       ; $4c26: $5f
    ld l, l                                       ; $4c27: $6d

jr_09b_4c28:
    ccf                                           ; $4c28: $3f
    sbc e                                         ; $4c29: $9b
    ld a, a                                       ; $4c2a: $7f
    ld b, l                                       ; $4c2b: $45
    ld a, [hl+]                                   ; $4c2c: $2a
    dec sp                                        ; $4c2d: $3b
    ld h, l                                       ; $4c2e: $65
    cp b                                          ; $4c2f: $b8
    inc b                                         ; $4c30: $04
    ld h, l                                       ; $4c31: $65
    ret c                                         ; $4c32: $d8

    inc b                                         ; $4c33: $04
    ld b, l                                       ; $4c34: $45
    and d                                         ; $4c35: $a2
    inc b                                         ; $4c36: $04
    ld d, c                                       ; $4c37: $51
    xor l                                         ; $4c38: $ad
    sub b                                         ; $4c39: $90
    ld b, $16                                     ; $4c3a: $06 $16
    call c, $5213                                 ; $4c3c: $dc $13 $52
    and d                                         ; $4c3f: $a2
    inc b                                         ; $4c40: $04
    add sp, $0c                                   ; $4c41: $e8 $0c
    ld b, [hl]                                    ; $4c43: $46
    sub b                                         ; $4c44: $90
    ld b, $40                                     ; $4c45: $06 $40
    add b                                         ; $4c47: $80
    or $07                                        ; $4c48: $f6 $07
    push de                                       ; $4c4a: $d5
    ld [$c0bf], a                                 ; $4c4b: $ea $bf $c0
    ld [$2880], a                                 ; $4c4e: $ea $80 $28
    ret nz                                        ; $4c51: $c0

    sbc a                                         ; $4c52: $9f
    sub b                                         ; $4c53: $90
    ld c, $03                                     ; $4c54: $0e $03
    add $06                                       ; $4c56: $c6 $06
    ld e, e                                       ; $4c58: $5b
    and a                                         ; $4c59: $a7
    db $fd                                        ; $4c5a: $fd
    ld b, $03                                     ; $4c5b: $06 $03
    and a                                         ; $4c5d: $a7
    ld bc, $f903                                  ; $4c5e: $01 $03 $f9
    ld a, $0e                                     ; $4c61: $3e $0e
    sub [hl]                                      ; $4c63: $96
    ld c, $01                                     ; $4c64: $0e $01
    ld [$7dff], sp                                ; $4c66: $08 $ff $7d
    add e                                         ; $4c69: $83
    ld b, l                                       ; $4c6a: $45
    ld [bc], a                                    ; $4c6b: $02
    nop                                           ; $4c6c: $00
    add hl, sp                                    ; $4c6d: $39
    rst $00                                       ; $4c6e: $c7
    xor [hl]                                      ; $4c6f: $ae
    inc de                                        ; $4c70: $13
    rst $18                                       ; $4c71: $df
    rst $18                                       ; $4c72: $df
    ldh [$30], a                                  ; $4c73: $e0 $30
    ld c, e                                       ; $4c75: $4b
    ld a, l                                       ; $4c76: $7d
    add e                                         ; $4c77: $83
    jr nc, jr_09b_4cd5                            ; $4c78: $30 $5b

    jr nc, @+$10                                  ; $4c7a: $30 $0e

    add c                                         ; $4c7c: $81
    jp nc, $c13c                                  ; $4c7d: $d2 $3c $c1

    nop                                           ; $4c80: $00
    and c                                         ; $4c81: $a1
    ret nz                                        ; $4c82: $c0

    pop bc                                        ; $4c83: $c1
    add b                                         ; $4c84: $80
    inc b                                         ; $4c85: $04
    ld c, b                                       ; $4c86: $48
    ret nz                                        ; $4c87: $c0

    sub h                                         ; $4c88: $94
    ld e, $72                                     ; $4c89: $1e $72
    nop                                           ; $4c8b: $00
    rst $38                                       ; $4c8c: $ff
    add b                                         ; $4c8d: $80

jr_09b_4c8e:
    rst $38                                       ; $4c8e: $ff
    add hl, bc                                    ; $4c8f: $09
    rst $38                                       ; $4c90: $ff
    ld [de], a                                    ; $4c91: $12
    pop bc                                        ; $4c92: $c1
    rrca                                          ; $4c93: $0f
    jr z, @-$20                                   ; $4c94: $28 $de

    inc b                                         ; $4c96: $04
    ld a, [bc]                                    ; $4c97: $0a
    rst $38                                       ; $4c98: $ff
    ld d, a                                       ; $4c99: $57
    rst $38                                       ; $4c9a: $ff
    adc [hl]                                      ; $4c9b: $8e
    db $10                                        ; $4c9c: $10
    ld b, b                                       ; $4c9d: $40
    add b                                         ; $4c9e: $80
    jr nz, jr_09b_4cb9                            ; $4c9f: $20 $18

    ld [hl], h                                    ; $4ca1: $74
    rst $38                                       ; $4ca2: $ff
    jp c, Jump_09b_55ff                           ; $4ca3: $da $ff $55

    xor d                                         ; $4ca6: $aa
    xor e                                         ; $4ca7: $ab
    nop                                           ; $4ca8: $00
    ld [hl], h                                    ; $4ca9: $74
    rst $10                                       ; $4caa: $d7
    jr z, jr_09b_4d1c                             ; $4cab: $28 $6f

    sub b                                         ; $4cad: $90
    db $fc                                        ; $4cae: $fc
    inc bc                                        ; $4caf: $03
    rst $38                                       ; $4cb0: $ff
    inc c                                         ; $4cb1: $0c
    nop                                           ; $4cb2: $00
    jr @+$01                                      ; $4cb3: $18 $ff

    sub h                                         ; $4cb5: $94
    stop                                          ; $4cb6: $10 $00
    ld h, b                                       ; $4cb8: $60

jr_09b_4cb9:
    inc bc                                        ; $4cb9: $03
    ld d, a                                       ; $4cba: $57
    ld [hl], l                                    ; $4cbb: $75
    jr @-$70                                      ; $4cbc: $18 $8e

    rst $20                                       ; $4cbe: $e7
    jr jr_09b_4c8e                                ; $4cbf: $18 $cd

    dec h                                         ; $4cc1: $25
    ld a, b                                       ; $4cc2: $78
    rlca                                          ; $4cc3: $07
    ld e, l                                       ; $4cc4: $5d
    rst $38                                       ; $4cc5: $ff
    ld sp, hl                                     ; $4cc6: $f9
    inc b                                         ; $4cc7: $04
    rst $38                                       ; $4cc8: $ff
    ld a, l                                       ; $4cc9: $7d
    rst $38                                       ; $4cca: $ff
    dec sp                                        ; $4ccb: $3b
    db $fd                                        ; $4ccc: $fd
    jr nc, jr_09b_4ce7                            ; $4ccd: $30 $18

    ld a, a                                       ; $4ccf: $7f
    add b                                         ; $4cd0: $80
    nop                                           ; $4cd1: $00
    or $09                                        ; $4cd2: $f6 $09
    db $ed                                        ; $4cd4: $ed

jr_09b_4cd5:
    ld [de], a                                    ; $4cd5: $12
    adc e                                         ; $4cd6: $8b
    ld [hl], h                                    ; $4cd7: $74
    rst $38                                       ; $4cd8: $ff
    nop                                           ; $4cd9: $00
    nop                                           ; $4cda: $00
    cp l                                          ; $4cdb: $bd
    rst $38                                       ; $4cdc: $ff
    ld e, a                                       ; $4cdd: $5f
    ld sp, hl                                     ; $4cde: $f9
    ld b, $f9                                     ; $4cdf: $06 $f9
    ld e, e                                       ; $4ce1: $5b
    db $fd                                        ; $4ce2: $fd
    nop                                           ; $4ce3: $00
    xor h                                         ; $4ce4: $ac
    ld a, c                                       ; $4ce5: $79
    db $db                                        ; $4ce6: $db

jr_09b_4ce7:
    dec a                                         ; $4ce7: $3d
    ld c, b                                       ; $4ce8: $48
    cp c                                          ; $4ce9: $b9
    ldh [rNR24], a                                ; $4cea: $e0 $19
    ld bc, $00d6                                  ; $4cec: $01 $d6 $00
    xor l                                         ; $4cef: $ad
    db $10                                        ; $4cf0: $10
    jp c, $d720                                   ; $4cf1: $da $20 $d7

    ret c                                         ; $4cf4: $d8

    ld b, $10                                     ; $4cf5: $06 $10
    ld d, l                                       ; $4cf7: $55
    nop                                           ; $4cf8: $00
    xor d                                         ; $4cf9: $aa
    inc l                                         ; $4cfa: $2c
    inc bc                                        ; $4cfb: $03
    xor l                                         ; $4cfc: $ad
    nop                                           ; $4cfd: $00
    ld e, a                                       ; $4cfe: $5f
    nop                                           ; $4cff: $00
    ld [hl], b                                    ; $4d00: $70

jr_09b_4d01:
    cp d                                          ; $4d01: $ba
    ldh [rNR12], a                                ; $4d02: $e0 $12
    adc b                                         ; $4d04: $88
    inc b                                         ; $4d05: $04
    inc a                                         ; $4d06: $3c
    inc bc                                        ; $4d07: $03
    xor $00                                       ; $4d08: $ee $00
    ld d, c                                       ; $4d0a: $51
    ld [bc], a                                    ; $4d0b: $02
    db $10                                        ; $4d0c: $10
    xor a                                         ; $4d0d: $af
    nop                                           ; $4d0e: $00
    ld e, [hl]                                    ; $4d0f: $5e
    ld hl, sp+$06                                 ; $4d10: $f8 $06
    ld e, d                                       ; $4d12: $5a
    nop                                           ; $4d13: $00
    push af                                       ; $4d14: $f5
    ld [bc], a                                    ; $4d15: $02
    ld bc, $04db                                  ; $4d16: $01 $db $04
    push de                                       ; $4d19: $d5
    ld [bc], a                                    ; $4d1a: $02
    xor d                                         ; $4d1b: $aa

jr_09b_4d1c:
    nop                                           ; $4d1c: $00
    ld e, l                                       ; $4d1d: $5d
    jp nz, Jump_09b_4704                          ; $4d1e: $c2 $04 $47

    rst $38                                       ; $4d21: $ff
    ld e, b                                       ; $4d22: $58
    inc bc                                        ; $4d23: $03
    xor e                                         ; $4d24: $ab
    nop                                           ; $4d25: $00
    ld d, a                                       ; $4d26: $57
    inc b                                         ; $4d27: $04
    nop                                           ; $4d28: $00
    ld [hl+], a                                   ; $4d29: $22
    rra                                           ; $4d2a: $1f
    sub h                                         ; $4d2b: $94
    rrca                                          ; $4d2c: $0f
    ld l, d                                       ; $4d2d: $6a
    rst $38                                       ; $4d2e: $ff
    ld a, [de]                                    ; $4d2f: $1a
    rlca                                          ; $4d30: $07
    db $10                                        ; $4d31: $10
    ld [$9454], sp                                ; $4d32: $08 $54 $94
    daa                                           ; $4d35: $27
    rst $38                                       ; $4d36: $ff
    xor $06                                       ; $4d37: $ee $06
    cp d                                          ; $4d39: $ba
    and d                                         ; $4d3a: $a2
    ld [hl-], a                                   ; $4d3b: $32
    rlca                                          ; $4d3c: $07
    ld a, [bc]                                    ; $4d3d: $0a
    sub h                                         ; $4d3e: $94
    daa                                           ; $4d3f: $27
    rst $38                                       ; $4d40: $ff
    nop                                           ; $4d41: $00
    ld a, [hl+]                                   ; $4d42: $2a
    adc h                                         ; $4d43: $8c
    inc de                                        ; $4d44: $13
    add b                                         ; $4d45: $80
    pop bc                                        ; $4d46: $c1
    sub h                                         ; $4d47: $94
    daa                                           ; $4d48: $27
    call z, $150f                                 ; $4d49: $cc $0f $15
    nop                                           ; $4d4c: $00
    and d                                         ; $4d4d: $a2
    ld bc, $4446                                  ; $4d4e: $01 $46 $44
    ld b, b                                       ; $4d51: $40
    dec b                                         ; $4d52: $05
    ld b, d                                       ; $4d53: $42
    add b                                         ; $4d54: $80
    add h                                         ; $4d55: $84
    nop                                           ; $4d56: $00
    dec e                                         ; $4d57: $1d
    ld b, h                                       ; $4d58: $44
    ld b, b                                       ; $4d59: $40
    ld d, b                                       ; $4d5a: $50

jr_09b_4d5b:
    ld c, d                                       ; $4d5b: $4a
    rla                                           ; $4d5c: $17
    rst $38                                       ; $4d5d: $ff
    ld b, h                                       ; $4d5e: $44
    jr c, @-$74                                   ; $4d5f: $38 $8a

    rra                                           ; $4d61: $1f
    ld b, h                                       ; $4d62: $44
    jr c, jr_09b_4ddb                             ; $4d63: $38 $76

    jr jr_09b_4dad                                ; $4d65: $18 $46

    jr c, @+$78                                   ; $4d67: $38 $76

    jr @+$48                                      ; $4d69: $18 $46

    jr c, jr_09b_4dd3                             ; $4d6b: $38 $66

    jr jr_09b_4d01                                ; $4d6d: $18 $92

    ld [hl], $38                                  ; $4d6f: $36 $38
    ld d, l                                       ; $4d71: $55
    nop                                           ; $4d72: $00
    sbc $03                                       ; $4d73: $de $03
    nop                                           ; $4d75: $00
    cp e                                          ; $4d76: $bb
    ret z                                         ; $4d77: $c8

    rlca                                          ; $4d78: $07
    cp l                                          ; $4d79: $bd
    jr nc, jr_09b_4d7c                            ; $4d7a: $30 $00

jr_09b_4d7c:
    ld [$0732], a                                 ; $4d7c: $ea $32 $07
    ldh a, [rIF]                                  ; $4d7f: $f0 $0f
    and h                                         ; $4d81: $a4
    add hl, de                                    ; $4d82: $19
    ldh a, [$09]                                  ; $4d83: $f0 $09

jr_09b_4d85:
    ld [hl], $e0                                  ; $4d85: $36 $e0
    add hl, de                                    ; $4d87: $19
    ld a, [bc]                                    ; $4d88: $0a
    jr jr_09b_4d5b                                ; $4d89: $18 $d0

    ld [$e8a8], sp                                ; $4d8b: $08 $a8 $e8
    rlca                                          ; $4d8e: $07
    ld h, [hl]                                    ; $4d8f: $66
    jr @+$56                                      ; $4d90: $18 $54

    nop                                           ; $4d92: $00
    jr nz, jr_09b_4d85                            ; $4d93: $20 $f0

    add hl, bc                                    ; $4d95: $09
    ldh a, [$09]                                  ; $4d96: $f0 $09
    inc b                                         ; $4d98: $04
    add hl, de                                    ; $4d99: $19
    db $10                                        ; $4d9a: $10
    and a                                         ; $4d9b: $a7
    inc b                                         ; $4d9c: $04
    nop                                           ; $4d9d: $00
    or b                                          ; $4d9e: $b0
    inc h                                         ; $4d9f: $24
    nop                                           ; $4da0: $00
    inc b                                         ; $4da1: $04

jr_09b_4da2:
    add hl, de                                    ; $4da2: $19
    jp c, $3508                                   ; $4da3: $da $08 $35

    rrca                                          ; $4da6: $0f
    inc h                                         ; $4da7: $24
    jr z, jr_09b_4da2                             ; $4da8: $28 $f8

    ld a, [de]                                    ; $4daa: $1a
    jr c, @+$26                                   ; $4dab: $38 $24

jr_09b_4dad:
    jr jr_09b_4dbb                                ; $4dad: $18 $0c

    ld c, b                                       ; $4daf: $48
    jr nc, jr_09b_4dba                            ; $4db0: $30 $08

    sub e                                         ; $4db2: $93
    ld [$0403], sp                                ; $4db3: $08 $03 $04
    ld a, [bc]                                    ; $4db6: $0a
    nop                                           ; $4db7: $00
    dec c                                         ; $4db8: $0d
    dec bc                                        ; $4db9: $0b

jr_09b_4dba:
    inc c                                         ; $4dba: $0c

jr_09b_4dbb:
    add hl, bc                                    ; $4dbb: $09

jr_09b_4dbc:
    ld e, $1d                                     ; $4dbc: $1e $1d
    daa                                           ; $4dbe: $27
    ld a, [hl-]                                   ; $4dbf: $3a
    ld b, b                                       ; $4dc0: $40
    ld b, a                                       ; $4dc1: $47
    ei                                            ; $4dc2: $fb

jr_09b_4dc3:
    rlca                                          ; $4dc3: $07
    ldh a, [$f0]                                  ; $4dc4: $f0 $f0
    ld [$14e8], sp                                ; $4dc6: $08 $e8 $14
    ld a, b                                       ; $4dc9: $78
    nop                                           ; $4dca: $00
    add h                                         ; $4dcb: $84
    call c, Call_000_2c22                         ; $4dcc: $dc $22 $2c
    jp nc, $e2dc                                  ; $4dcf: $d2 $dc $e2

    xor [hl]                                      ; $4dd2: $ae

jr_09b_4dd3:
    inc d                                         ; $4dd3: $14
    ld d, c                                       ; $4dd4: $51
    rst $18                                       ; $4dd5: $df
    xor b                                         ; $4dd6: $a8
    or h                                          ; $4dd7: $b4
    inc b                                         ; $4dd8: $04
    xor b                                         ; $4dd9: $a8
    cp b                                          ; $4dda: $b8

jr_09b_4ddb:
    dec b                                         ; $4ddb: $05
    xor d                                         ; $4ddc: $aa
    xor d                                         ; $4ddd: $aa
    jr @+$57                                      ; $4dde: $18 $55

    db $dd                                        ; $4de0: $dd
    and b                                         ; $4de1: $a0
    ld a, [$0117]                                 ; $4de2: $fa $17 $01
    ld [$130f], sp                                ; $4de5: $08 $0f $13
    inc e                                         ; $4de8: $1c
    nop                                           ; $4de9: $00
    ld de, $1b1e                                  ; $4dea: $11 $1e $1b
    ld e, $b3                                     ; $4ded: $1e $b3

jr_09b_4def:
    adc $e2                                       ; $4def: $ce $e2
    sbc l                                         ; $4df1: $9d
    nop                                           ; $4df2: $00
    ld l, [hl]                                    ; $4df3: $6e
    sub c                                         ; $4df4: $91
    ld [hl], a                                    ; $4df5: $77
    sbc b                                         ; $4df6: $98
    ld c, e                                       ; $4df7: $4b
    cp h                                          ; $4df8: $bc
    add a                                         ; $4df9: $87
    db $fc                                        ; $4dfa: $fc
    nop                                           ; $4dfb: $00
    cpl                                           ; $4dfc: $2f

Jump_09b_4dfd:
    ld hl, sp-$24                                 ; $4dfd: $f8 $dc
    ld a, a                                       ; $4dff: $7f
    xor $31                                       ; $4e00: $ee $31
    or a                                          ; $4e02: $b7
    ld e, b                                       ; $4e03: $58
    nop                                           ; $4e04: $00
    ld a, e                                       ; $4e05: $7b
    sub h                                         ; $4e06: $94
    dec [hl]                                      ; $4e07: $35
    jp c, Jump_000_1cfb                           ; $4e08: $da $fb $1c

    db $ed                                        ; $4e0b: $ed
    ld e, $00                                     ; $4e0c: $1e $00
    push af                                       ; $4e0e: $f5
    ld c, $7c                                     ; $4e0f: $0e $7c
    add a                                         ; $4e11: $87
    nop                                           ; $4e12: $00
    add b                                         ; $4e13: $80
    add b                                         ; $4e14: $80
    ld b, b                                       ; $4e15: $40
    nop                                           ; $4e16: $00
    ld b, b                                       ; $4e17: $40

jr_09b_4e18:
    and b                                         ; $4e18: $a0
    ret nz                                        ; $4e19: $c0

    jr nz, jr_09b_4dbc                            ; $4e1a: $20 $a0

    ld d, b                                       ; $4e1c: $50
    ldh a, [rNR10]                                ; $4e1d: $f0 $10
    nop                                           ; $4e1f: $00
    ret nc                                        ; $4e20: $d0

    jr nc, jr_09b_4dc3                            ; $4e21: $30 $a0

    ld h, b                                       ; $4e23: $60
    ld de, $0d1e                                  ; $4e24: $11 $1e $0d
    rrca                                          ; $4e27: $0f
    ld bc, $0f08                                  ; $4e28: $01 $08 $0f
    ld a, [bc]                                    ; $4e2b: $0a
    rrca                                          ; $4e2c: $0f
    inc b                                         ; $4e2d: $04
    rlca                                          ; $4e2e: $07
    inc bc                                        ; $4e2f: $03
    push af                                       ; $4e30: $f5
    rrca                                          ; $4e31: $0f
    nop                                           ; $4e32: $00
    ld bc, $7fab                                  ; $4e33: $01 $ab $7f
    rst $30                                       ; $4e36: $f7
    ccf                                           ; $4e37: $3f
    srl a                                         ; $4e38: $cb $3f
    call nc, $bf00                                ; $4e3a: $d4 $00 $bf
    ld l, e                                       ; $4e3d: $6b
    cp h                                          ; $4e3e: $bc
    rst $18                                       ; $4e3f: $df
    rst $38                                       ; $4e40: $ff
    ld a, [$70ff]                                 ; $4e41: $fa $ff $70
    nop                                           ; $4e44: $00
    rst $38                                       ; $4e45: $ff
    push af                                       ; $4e46: $f5
    adc $bb                                       ; $4e47: $ce $bb
    call z, $996e                                 ; $4e49: $cc $6e $99
    push de                                       ; $4e4c: $d5
    nop                                           ; $4e4d: $00
    ld a, [hl-]                                   ; $4e4e: $3a
    xor a                                         ; $4e4f: $af
    ld [hl], b                                    ; $4e50: $70
    and $f9                                       ; $4e51: $e6 $f9
    cp a                                          ; $4e53: $bf
    ldh a, [$66]                                  ; $4e54: $f0 $66
    nop                                           ; $4e56: $00

jr_09b_4e57:
    ld sp, hl                                     ; $4e57: $f9
    ld h, b                                       ; $4e58: $60
    ldh [$a0], a                                  ; $4e59: $e0 $a0
    ld h, b                                       ; $4e5b: $60
    ret nc                                        ; $4e5c: $d0

    jr nc, jr_09b_4def                            ; $4e5d: $30 $90

    nop                                           ; $4e5f: $00
    ld [hl], b                                    ; $4e60: $70
    ld d, b                                       ; $4e61: $50
    or b                                          ; $4e62: $b0
    ldh a, [$30]                                  ; $4e63: $f0 $30
    ret nc                                        ; $4e65: $d0

    jr nc, jr_09b_4e18                            ; $4e66: $30 $b0

    ld b, b                                       ; $4e68: $40
    ld [hl], b                                    ; $4e69: $70
    db $ed                                        ; $4e6a: $ed
    rlca                                          ; $4e6b: $07
    ld [bc], a                                    ; $4e6c: $02
    ld [bc], a                                    ; $4e6d: $02
    inc bc                                        ; $4e6e: $03
    pop bc                                        ; $4e6f: $c1

jr_09b_4e70:
    rst $38                                       ; $4e70: $ff
    cp a                                          ; $4e71: $bf
    ld b, b                                       ; $4e72: $40
    ret nz                                        ; $4e73: $c0

    ld [bc], a                                    ; $4e74: $02
    jr jr_09b_4e57                                ; $4e75: $18 $e0

    ccf                                           ; $4e77: $3f
    add sp, $7f                                   ; $4e78: $e8 $7f
    dec l                                         ; $4e7a: $2d
    ei                                            ; $4e7b: $fb
    nop                                           ; $4e7c: $00
    inc [hl]                                      ; $4e7d: $34

jr_09b_4e7e:
    ei                                            ; $4e7e: $fb
    rst $18                                       ; $4e7f: $df
    ldh [$7d], a                                  ; $4e80: $e0 $7d
    add e                                         ; $4e82: $83
    ld c, e                                       ; $4e83: $4b
    or a                                          ; $4e84: $b7
    nop                                           ; $4e85: $00
    rst $20                                       ; $4e86: $e7
    rst $18                                       ; $4e87: $df
    cp e                                          ; $4e88: $bb
    db $f4                                        ; $4e89: $f4
    ld h, l                                       ; $4e8a: $65
    ld a, [$fdf2]                                 ; $4e8b: $fa $f2 $fd
    nop                                           ; $4e8e: $00
    jr c, jr_09b_4e70                             ; $4e8f: $38 $df

    push de                                       ; $4e91: $d5
    ccf                                           ; $4e92: $3f
    ei                                            ; $4e93: $fb
    rst $38                                       ; $4e94: $ff
    rst $18                                       ; $4e95: $df
    db $fc                                        ; $4e96: $fc
    nop                                           ; $4e97: $00
    cp a                                          ; $4e98: $bf
    ld hl, sp-$70                                 ; $4e99: $f8 $90
    ld [hl], b                                    ; $4e9b: $70
    jr nz, jr_09b_4e7e                            ; $4e9c: $20 $e0

    ld h, b                                       ; $4e9e: $60
    ldh [$03], a                                  ; $4e9f: $e0 $03
    jp $fdff                                      ; $4ea1: $c3 $ff $fd


    add e                                         ; $4ea4: $83
    db $fd                                        ; $4ea5: $fd
    inc bc                                        ; $4ea6: $03
    ld [bc], a                                    ; $4ea7: $02
    ld [$2838], sp                                ; $4ea8: $08 $38 $28
    add b                                         ; $4eab: $80
    ld b, b                                       ; $4eac: $40
    ld [$c1be], sp                                ; $4ead: $08 $be $c1
    cp a                                          ; $4eb0: $bf
    ret nz                                        ; $4eb1: $c0

    rst $38                                       ; $4eb2: $ff
    ld a, a                                       ; $4eb3: $7f
    or $00                                        ; $4eb4: $f6 $00
    rra                                           ; $4eb6: $1f
    db $fc                                        ; $4eb7: $fc
    rrca                                          ; $4eb8: $0f
    db $ed                                        ; $4eb9: $ed
    rra                                           ; $4eba: $1f
    jp z, Jump_09b_463f                           ; $4ebb: $ca $3f $46

    nop                                           ; $4ebe: $00
    cp a                                          ; $4ebf: $bf
    sub [hl]                                      ; $4ec0: $96
    ld l, a                                       ; $4ec1: $6f
    ld c, l                                       ; $4ec2: $4d
    rst $30                                       ; $4ec3: $f7
    ld e, a                                       ; $4ec4: $5f
    add sp, -$79                                  ; $4ec5: $e8 $87
    nop                                           ; $4ec7: $00
    ld hl, sp+$17                                 ; $4ec8: $f8 $17
    add sp, $1b                                   ; $4eca: $e8 $1b
    db $e4                                        ; $4ecc: $e4
    ld c, c                                       ; $4ecd: $49
    or $2c                                        ; $4ece: $f6 $2c
    inc b                                         ; $4ed0: $04
    db $d3                                        ; $4ed1: $d3
    ld b, [hl]                                    ; $4ed2: $46
    ld sp, hl                                     ; $4ed3: $f9
    ld [$36f7], sp                                ; $4ed4: $08 $f7 $36
    jr @-$01                                      ; $4ed7: $18 $fd

    inc bc                                        ; $4ed9: $03
    nop                                           ; $4eda: $00
    ld a, l                                       ; $4edb: $7d
    add e                                         ; $4edc: $83
    cp l                                          ; $4edd: $bd
    ld b, e                                       ; $4ede: $43
    ld e, l                                       ; $4edf: $5d
    and e                                         ; $4ee0: $a3
    cp l                                          ; $4ee1: $bd
    jp Jump_000_34c8                              ; $4ee2: $c3 $c8 $34


    ld [$207c], sp                                ; $4ee5: $08 $7c $20
    ld [$fac0], a                                 ; $4ee8: $ea $c0 $fa
    rlca                                          ; $4eeb: $07
    db $d3                                        ; $4eec: $d3
    ld l, a                                       ; $4eed: $6f
    ld [hl], e                                    ; $4eee: $73
    nop                                           ; $4eef: $00
    cp a                                          ; $4ef0: $bf
    xor [hl]                                      ; $4ef1: $ae
    ld e, a                                       ; $4ef2: $5f
    pop de                                        ; $4ef3: $d1
    cpl                                           ; $4ef4: $2f
    ld a, [$ff05]                                 ; $4ef5: $fa $05 $ff
    ld b, b                                       ; $4ef8: $40
    xor d                                         ; $4ef9: $aa
    ld a, [$250f]                                 ; $4efa: $fa $0f $25
    ei                                            ; $4efd: $fb
    ld d, [hl]                                    ; $4efe: $56
    rst $38                                       ; $4eff: $ff
    ld sp, hl                                     ; $4f00: $f9
    cp $39                                        ; $4f01: $fe $39
    sub l                                         ; $4f03: $95
    ld [$075c], a                                 ; $4f04: $ea $5c $07
    db $10                                        ; $4f07: $10
    db $10                                        ; $4f08: $10
    inc [hl]                                      ; $4f09: $34
    nop                                           ; $4f0a: $00
    ld b, e                                       ; $4f0b: $43
    ld a, l                                       ; $4f0c: $7d
    ld a, h                                       ; $4f0d: $7c
    db $10                                        ; $4f0e: $10
    ccf                                           ; $4f0f: $3f
    rst $38                                       ; $4f10: $ff
    xor e                                         ; $4f11: $ab
    sbc d                                         ; $4f12: $9a
    dec bc                                        ; $4f13: $0b
    adc d                                         ; $4f14: $8a
    ld a, [hl+]                                   ; $4f15: $2a
    sub h                                         ; $4f16: $94
    ld a, [hl+]                                   ; $4f17: $2a
    adc d                                         ; $4f18: $8a
    ld a, [hl+]                                   ; $4f19: $2a
    sub h                                         ; $4f1a: $94

jr_09b_4f1b:
    ld a, [hl+]                                   ; $4f1b: $2a
    ld a, d                                       ; $4f1c: $7a
    ld a, [hl+]                                   ; $4f1d: $2a
    ret c                                         ; $4f1e: $d8

    add h                                         ; $4f1f: $84
    ld a, [hl-]                                   ; $4f20: $3a
    ld a, $3a                                     ; $4f21: $3e $3a
    ld h, b                                       ; $4f23: $60
    ld l, d                                       ; $4f24: $6a
    ld [de], a                                    ; $4f25: $12
    ld a, $3a                                     ; $4f26: $3e $3a
    inc bc                                        ; $4f28: $03
    nop                                           ; $4f29: $00
    ld b, $fa                                     ; $4f2a: $06 $fa
    ld e, [hl]                                    ; $4f2c: $5e
    ld d, d                                       ; $4f2d: $52
    ld [hl], d                                    ; $4f2e: $72
    dec c                                         ; $4f2f: $0d
    ld c, [hl]                                    ; $4f30: $4e
    ld c, d                                       ; $4f31: $4a
    and d                                         ; $4f32: $a2
    dec c                                         ; $4f33: $0d
    db $10                                        ; $4f34: $10
    dec a                                         ; $4f35: $3d
    ld bc, $1030                                  ; $4f36: $01 $30 $10
    dec c                                         ; $4f39: $0d
    nop                                           ; $4f3a: $00
    nop                                           ; $4f3b: $00
    ld a, [de]                                    ; $4f3c: $1a
    nop                                           ; $4f3d: $00
    inc [hl]                                      ; $4f3e: $34
    nop                                           ; $4f3f: $00
    ld l, b                                       ; $4f40: $68
    nop                                           ; $4f41: $00
    ret nc                                        ; $4f42: $d0

    ldh [$a2], a                                  ; $4f43: $e0 $a2
    dec b                                         ; $4f45: $05
    ld bc, $d268                                  ; $4f46: $01 $68 $d2
    dec c                                         ; $4f49: $0d
    rlca                                          ; $4f4a: $07
    nop                                           ; $4f4b: $00
    inc c                                         ; $4f4c: $0c
    ld [bc], a                                    ; $4f4d: $02
    ld a, [de]                                    ; $4f4e: $1a
    ld bc, $3404                                  ; $4f4f: $01 $04 $34
    ld [$0078], sp                                ; $4f52: $08 $78 $00
    and b                                         ; $4f55: $a0
    ld b, b                                       ; $4f56: $40
    jp nc, $1f0d                                  ; $4f57: $d2 $0d $1f

    inc c                                         ; $4f5a: $0c
    nop                                           ; $4f5b: $00
    jr jr_09b_4f9e                                ; $4f5c: $18 $40

    dec d                                         ; $4f5e: $15
    ld [hl], d                                    ; $4f5f: $72
    ld a, [bc]                                    ; $4f60: $0a
    inc l                                         ; $4f61: $2c
    ld e, b                                       ; $4f62: $58
    ld [$7a1d], a                                 ; $4f63: $ea $1d $7a
    ld a, [de]                                    ; $4f66: $1a
    add l                                         ; $4f67: $85
    add h                                         ; $4f68: $84
    ld a, [hl-]                                   ; $4f69: $3a
    and b                                         ; $4f6a: $a0
    ret nz                                        ; $4f6b: $c0

    ret nz                                        ; $4f6c: $c0

    add b                                         ; $4f6d: $80
    inc b                                         ; $4f6e: $04
    jr z, jr_09b_4f1b                             ; $4f6f: $28 $aa

jr_09b_4f71:
    and h                                         ; $4f71: $a4

jr_09b_4f72:
    ld bc, $a0e0                                  ; $4f72: $01 $e0 $a0
    ld d, b                                       ; $4f75: $50
    ld [hl+], a                                   ; $4f76: $22
    ld b, $8a                                     ; $4f77: $06 $8a
    ld a, [hl-]                                   ; $4f79: $3a
    ld sp, hl                                     ; $4f7a: $f9
    ld b, $17                                     ; $4f7b: $06 $17
    nop                                           ; $4f7d: $00
    add hl, hl                                    ; $4f7e: $29
    ld a, [hl-]                                   ; $4f7f: $3a
    nop                                           ; $4f80: $00
    ld d, c                                       ; $4f81: $51
    ld a, [hl+]                                   ; $4f82: $2a
    ld b, [hl]                                    ; $4f83: $46
    ld e, e                                       ; $4f84: $5b
    ld c, $90                                     ; $4f85: $0e $90
    ld e, h                                       ; $4f87: $5c
    inc bc                                        ; $4f88: $03
    jr nz, @+$42                                  ; $4f89: $20 $40

    ld [bc], a                                    ; $4f8b: $02
    db $ec                                        ; $4f8c: $ec

jr_09b_4f8d:
    call z, Call_09b_7e05                         ; $4f8d: $cc $05 $7e
    ld a, $5a                                     ; $4f90: $3e $5a
    ld a, $0b                                     ; $4f92: $3e $0b
    and h                                         ; $4f94: $a4
    inc bc                                        ; $4f95: $03
    ld c, b                                       ; $4f96: $48
    ld [$00a1], sp                                ; $4f97: $08 $a1 $00
    ld h, c                                       ; $4f9a: $61
    ld b, c                                       ; $4f9b: $41
    ld h, $07                                     ; $4f9c: $26 $07

jr_09b_4f9e:
    ret nz                                        ; $4f9e: $c0

    jr c, jr_09b_4f71                             ; $4f9f: $38 $d0

    jr nz, jr_09b_4fc3                            ; $4fa1: $20 $20

    ld b, b                                       ; $4fa3: $40
    ld [hl-], a                                   ; $4fa4: $32
    rlca                                          ; $4fa5: $07
    sub a                                         ; $4fa6: $97
    cp $50                                        ; $4fa7: $fe $50
    inc b                                         ; $4fa9: $04
    ld [$0830], sp                                ; $4faa: $08 $30 $08
    ld b, $d6                                     ; $4fad: $06 $d6
    db $10                                        ; $4faf: $10
    ret                                           ; $4fb0: $c9


    ld e, $d0                                     ; $4fb1: $1e $d0
    ld c, $c1                                     ; $4fb3: $0e $c1
    ld c, b                                       ; $4fb5: $48
    jr z, jr_09b_4f72                             ; $4fb6: $28 $ba

    ld c, $08                                     ; $4fb8: $0e $08
    db $10                                        ; $4fba: $10
    db $10                                        ; $4fbb: $10
    jr nz, @+$62                                  ; $4fbc: $20 $60

    call z, Call_09b_7d06                         ; $4fbe: $cc $06 $7d
    add c                                         ; $4fc1: $81
    ld [hl], b                                    ; $4fc2: $70

jr_09b_4fc3:
    jr nz, jr_09b_5009                            ; $4fc3: $20 $44

    ld c, $d2                                     ; $4fc5: $0e $d2
    ld h, $10                                     ; $4fc7: $26 $10
    ld de, $489c                                  ; $4fc9: $11 $9c $48
    rlca                                          ; $4fcc: $07
    ld c, [hl]                                    ; $4fcd: $4e
    ld bc, $1905                                  ; $4fce: $01 $05 $19
    nop                                           ; $4fd1: $00
    ld sp, $6100                                  ; $4fd2: $31 $00 $61
    jr c, @+$07                                   ; $4fd5: $38 $05

    add c                                         ; $4fd7: $81
    ld c, b                                       ; $4fd8: $48
    dec h                                         ; $4fd9: $25

jr_09b_4fda:
    dec l                                         ; $4fda: $2d
    cp $01                                        ; $4fdb: $fe $01
    ld d, b                                       ; $4fdd: $50
    dec a                                         ; $4fde: $3d
    xor e                                         ; $4fdf: $ab
    ld c, $00                                     ; $4fe0: $0e $00
    ld [hl], b                                    ; $4fe2: $70
    ld l, $7f                                     ; $4fe3: $2e $7f
    sbc a                                         ; $4fe5: $9f
    ld d, $23                                     ; $4fe6: $16 $23
    ld b, c                                       ; $4fe8: $41
    add b                                         ; $4fe9: $80
    and b                                         ; $4fea: $a0
    dec e                                         ; $4feb: $1d
    ld a, [hl]                                    ; $4fec: $7e
    add c                                         ; $4fed: $81
    ld bc, $07d3                                  ; $4fee: $01 $d3 $07
    inc b                                         ; $4ff1: $04
    jr jr_09b_5009                                ; $4ff2: $18 $15

    inc bc                                        ; $4ff4: $03
    add b                                         ; $4ff5: $80
    dec b                                         ; $4ff6: $05
    inc b                                         ; $4ff7: $04
    nop                                           ; $4ff8: $00
    ld b, c                                       ; $4ff9: $41
    inc b                                         ; $4ffa: $04
    db $10                                        ; $4ffb: $10
    ld hl, $0022                                  ; $4ffc: $21 $22 $00
    and b                                         ; $4fff: $a0
    jr jr_09b_500a                                ; $5000: $18 $08

jr_09b_5002:
    ld b, b                                       ; $5002: $40
    jr nz, jr_09b_5005                            ; $5003: $20 $00

jr_09b_5005:
    ld a, [bc]                                    ; $5005: $0a
    add c                                         ; $5006: $81
    ld b, l                                       ; $5007: $45
    add b                                         ; $5008: $80

jr_09b_5009:
    ld [bc], a                                    ; $5009: $02

jr_09b_500a:
    jr c, jr_09b_4f8d                             ; $500a: $38 $81

    ld d, c                                       ; $500c: $51
    ld [hl], $10                                  ; $500d: $36 $10
    jr jr_09b_5019                                ; $500f: $18 $08

    pop hl                                        ; $5011: $e1
    ld e, $41                                     ; $5012: $1e $41
    add b                                         ; $5014: $80
    ld [hl+], a                                   ; $5015: $22
    ld [hl], b                                    ; $5016: $70
    add c                                         ; $5017: $81
    inc h                                         ; $5018: $24

jr_09b_5019:
    jr jr_09b_505b                                ; $5019: $18 $40

    jr jr_09b_4fda                                ; $501b: $18 $bd

    ld c, $00                                     ; $501d: $0e $00
    rst $38                                       ; $501f: $ff
    xor d                                         ; $5020: $aa
    ld d, l                                       ; $5021: $55
    call nc, Call_000_0004                        ; $5022: $d4 $04 $00
    sbc c                                         ; $5025: $99
    dec l                                         ; $5026: $2d
    nop                                           ; $5027: $00
    sbc l                                         ; $5028: $9d
    dec b                                         ; $5029: $05
    xor d                                         ; $502a: $aa
    inc b                                         ; $502b: $04
    db $10                                        ; $502c: $10
    rst $38                                       ; $502d: $ff
    rst $38                                       ; $502e: $ff
    nop                                           ; $502f: $00
    xor d                                         ; $5030: $aa
    nop                                           ; $5031: $00
    dec d                                         ; $5032: $15
    ldh [$0d], a                                  ; $5033: $e0 $0d
    ld d, d                                       ; $5035: $52
    rst $38                                       ; $5036: $ff
    ld bc, $8070                                  ; $5037: $01 $70 $80
    ld [bc], a                                    ; $503a: $02
    nop                                           ; $503b: $00
    ret nz                                        ; $503c: $c0

    cp a                                          ; $503d: $bf
    inc b                                         ; $503e: $04
    jr jr_09b_5002                                ; $503f: $18 $c1

    ld hl, $83bf                                  ; $5041: $21 $bf $83
    inc b                                         ; $5044: $04
    ld h, b                                       ; $5045: $60
    jp $d7ff                                      ; $5046: $c3 $ff $d7


    rst $28                                       ; $5049: $ef
    inc b                                         ; $504a: $04
    ld c, b                                       ; $504b: $48
    ld bc, $ffff                                  ; $504c: $01 $ff $ff
    nop                                           ; $504f: $00
    rst $38                                       ; $5050: $ff
    xor d                                         ; $5051: $aa
    ld d, l                                       ; $5052: $55
    nop                                           ; $5053: $00
    ld b, $00                                     ; $5054: $06 $00
    push de                                       ; $5056: $d5
    ld [$4d00], sp                                ; $5057: $08 $00 $4d
    ld d, b                                       ; $505a: $50

jr_09b_505b:
    ld hl, sp+$5b                                 ; $505b: $f8 $5b
    nop                                           ; $505d: $00
    ld a, [$405f]                                 ; $505e: $fa $5f $40
    nop                                           ; $5061: $00
    inc b                                         ; $5062: $04
    stop                                          ; $5063: $10 $00
    add e                                         ; $5065: $83
    rst $38                                       ; $5066: $ff
    ld b, c                                       ; $5067: $41
    cp a                                          ; $5068: $bf
    add e                                         ; $5069: $83
    ld a, a                                       ; $506a: $7f
    ld bc, $05ff                                  ; $506b: $01 $ff $05
    inc bc                                        ; $506e: $03
    rst $38                                       ; $506f: $ff
    ld bc, $abff                                  ; $5070: $01 $ff $ab
    ld a, l                                       ; $5073: $7d
    db $10                                        ; $5074: $10
    ei                                            ; $5075: $fb
    inc b                                         ; $5076: $04
    ld h, b                                       ; $5077: $60
    nop                                           ; $5078: $00
    jp hl                                         ; $5079: $e9


    jp hl                                         ; $507a: $e9


    db $d3                                        ; $507b: $d3
    db $d3                                        ; $507c: $d3
    and a                                         ; $507d: $a7
    and b                                         ; $507e: $a0
    ld c, a                                       ; $507f: $4f
    ld b, [hl]                                    ; $5080: $46
    ld [bc], a                                    ; $5081: $02
    sbc a                                         ; $5082: $9f
    sub b                                         ; $5083: $90
    ccf                                           ; $5084: $3f
    dec [hl]                                      ; $5085: $35
    ld a, a                                       ; $5086: $7f
    ld [hl], b                                    ; $5087: $70
    and b                                         ; $5088: $a0
    ld [$00fe], sp                                ; $5089: $08 $fe $00
    cp $fd                                        ; $508c: $fe $fd
    nop                                           ; $508e: $00
    ld a, [$f5aa]                                 ; $508f: $fa $aa $f5
    nop                                           ; $5092: $00
    db $eb                                        ; $5093: $eb
    nop                                           ; $5094: $00
    ld b, c                                       ; $5095: $41
    rst $10                                       ; $5096: $d7
    nop                                           ; $5097: $00
    rst $38                                       ; $5098: $ff
    or $ff                                        ; $5099: $f6 $ff
    ldh a, [$f0]                                  ; $509b: $f0 $f0
    ld [$fffe], sp                                ; $509d: $08 $fe $ff
    rst $38                                       ; $50a0: $ff
    ld d, l                                       ; $50a1: $55
    ld l, l                                       ; $50a2: $6d
    nop                                           ; $50a3: $00
    ldh a, [rIE]                                  ; $50a4: $f0 $ff
    add sp, $01                                   ; $50a6: $e8 $01
    rst $38                                       ; $50a8: $ff
    xor a                                         ; $50a9: $af
    xor d                                         ; $50aa: $aa
    ld e, a                                       ; $50ab: $5f
    nop                                           ; $50ac: $00
    nop                                           ; $50ad: $00
    cp a                                          ; $50ae: $bf
    db $10                                        ; $50af: $10
    jr jr_09b_50d0                                ; $50b0: $18 $1e

    dec a                                         ; $50b2: $3d
    db $fd                                        ; $50b3: $fd
    dec de                                        ; $50b4: $1b
    ld c, l                                       ; $50b5: $4d
    ld [$40d3], sp                                ; $50b6: $08 $d3 $40
    sub d                                         ; $50b9: $92
    ld [$4860], sp                                ; $50ba: $08 $60 $48
    xor e                                         ; $50bd: $ab
    nop                                           ; $50be: $00
    rst $38                                       ; $50bf: $ff
    push hl                                       ; $50c0: $e5
    rst $38                                       ; $50c1: $ff
    ld [$efff], a                                 ; $50c2: $ea $ff $ef
    rst $30                                       ; $50c5: $f7
    rst $20                                       ; $50c6: $e7
    nop                                           ; $50c7: $00
    ld hl, sp-$10                                 ; $50c8: $f8 $f0
    rst $38                                       ; $50ca: $ff
    ld hl, sp-$02                                 ; $50cb: $f8 $fe
    db $fd                                        ; $50cd: $fd
    db $fd                                        ; $50ce: $fd
    rst $38                                       ; $50cf: $ff

jr_09b_50d0:
    nop                                           ; $50d0: $00
    rst $38                                       ; $50d1: $ff
    ld d, a                                       ; $50d2: $57
    rst $30                                       ; $50d3: $f7
    adc $ee                                       ; $50d4: $ce $ee
    sbc h                                         ; $50d6: $9c
    call c, $0199                                 ; $50d7: $dc $99 $01
    add hl, sp                                    ; $50da: $39
    inc sp                                        ; $50db: $33
    ld [hl], e                                    ; $50dc: $73
    ld h, a                                       ; $50dd: $67
    rst $20                                       ; $50de: $e7
    rst $08                                       ; $50df: $cf
    rst $08                                       ; $50e0: $cf
    cp $08                                        ; $50e1: $fe $08
    nop                                           ; $50e3: $00
    cp a                                          ; $50e4: $bf
    ret nz                                        ; $50e5: $c0

    sub l                                         ; $50e6: $95
    ld [$d5aa], a                                 ; $50e7: $ea $aa $d5
    sub c                                         ; $50ea: $91
    xor $00                                       ; $50eb: $ee $00
    and b                                         ; $50ed: $a0
    rst $18                                       ; $50ee: $df
    add h                                         ; $50ef: $84
    ei                                            ; $50f0: $fb
    adc b                                         ; $50f1: $88
    rst $30                                       ; $50f2: $f7
    ld bc, $00ff                                  ; $50f3: $01 $ff $00
    db $fd                                        ; $50f6: $fd
    inc bc                                        ; $50f7: $03
    ld d, l                                       ; $50f8: $55
    xor e                                         ; $50f9: $ab
    xor c                                         ; $50fa: $a9
    ld d, a                                       ; $50fb: $57
    dec d                                         ; $50fc: $15
    db $eb                                        ; $50fd: $eb
    inc b                                         ; $50fe: $04
    add hl, hl                                    ; $50ff: $29
    rst $10                                       ; $5100: $d7
    ld b, c                                       ; $5101: $41
    cp a                                          ; $5102: $bf
    ld bc, $1078                                  ; $5103: $01 $78 $10
    jp nc, Jump_000_00df                          ; $5106: $d2 $df $00

    or a                                          ; $5109: $b7
    cp a                                          ; $510a: $bf
    ld a, d                                       ; $510b: $7a
    ld a, l                                       ; $510c: $7d
    rst $30                                       ; $510d: $f7
    db $fc                                        ; $510e: $fc
    rst $28                                       ; $510f: $ef
    cp $20                                        ; $5110: $fe $20
    rst $18                                       ; $5112: $df
    xor $88                                       ; $5113: $ee $88
    ld [$f939], sp                                ; $5115: $08 $39 $f9
    di                                            ; $5118: $f3
    inc de                                        ; $5119: $13
    rst $20                                       ; $511a: $e7
    nop                                           ; $511b: $00
    add a                                         ; $511c: $87
    ld c, a                                       ; $511d: $4f
    rst $00                                       ; $511e: $c7
    sbc e                                         ; $511f: $9b
    rlca                                          ; $5120: $07
    dec sp                                        ; $5121: $3b
    rlca                                          ; $5122: $07
    rst $38                                       ; $5123: $ff
    ld bc, $5fff                                  ; $5124: $01 $ff $5f
    ld e, a                                       ; $5127: $5f
    cp a                                          ; $5128: $bf
    cp a                                          ; $5129: $bf
    ld a, e                                       ; $512a: $7b
    rlca                                          ; $512b: $07
    db $dd                                        ; $512c: $dd
    nop                                           ; $512d: $00
    nop                                           ; $512e: $00
    inc bc                                        ; $512f: $03
    rst $38                                       ; $5130: $ff
    ld e, e                                       ; $5131: $5b
    cp $02                                        ; $5132: $fe $02
    rst $38                                       ; $5134: $ff
    rst $38                                       ; $5135: $ff
    ld sp, hl                                     ; $5136: $f9
    nop                                           ; $5137: $00
    ld sp, hl                                     ; $5138: $f9
    ld a, [c]                                     ; $5139: $f2
    ld a, [c]                                     ; $513a: $f2
    push hl                                       ; $513b: $e5
    push hl                                       ; $513c: $e5
    set 1, e                                      ; $513d: $cb $cb
    sub a                                         ; $513f: $97
    nop                                           ; $5140: $00
    sub a                                         ; $5141: $97
    cpl                                           ; $5142: $2f
    cpl                                           ; $5143: $2f
    ld e, a                                       ; $5144: $5f
    ld e, a                                       ; $5145: $5f
    rst $38                                       ; $5146: $ff
    rst $38                                       ; $5147: $ff
    ld l, d                                       ; $5148: $6a
    ld bc, $d57f                                  ; $5149: $01 $7f $d5
    ld [$d5ea], a                                 ; $514c: $ea $ea $d5
    rst $38                                       ; $514f: $ff
    ret nz                                        ; $5150: $c0

    ld [bc], a                                    ; $5151: $02
    jr nz, jr_09b_5154                            ; $5152: $20 $00

jr_09b_5154:
    rst $38                                       ; $5154: $ff

jr_09b_5155:
    cp a                                          ; $5155: $bf
    rst $38                                       ; $5156: $ff
    ld e, a                                       ; $5157: $5f
    cp a                                          ; $5158: $bf
    or l                                          ; $5159: $b5
    ld e, a                                       ; $515a: $5f
    ld a, [$1f20]                                 ; $515b: $fa $20 $1f
    ldh a, [rSC]                                  ; $515e: $f0 $02
    db $10                                        ; $5160: $10
    db $fc                                        ; $5161: $fc
    cp b                                          ; $5162: $b8
    ld sp, hl                                     ; $5163: $f9
    ld bc, $4002                                  ; $5164: $01 $02 $40
    ld a, [c]                                     ; $5167: $f2
    ldh [rNR23], a                                ; $5168: $e0 $18
    call $9dcf                                    ; $516a: $cd $cf $9d
    sbc a                                         ; $516d: $9f
    cp a                                          ; $516e: $bf
    cp a                                          ; $516f: $bf
    jr nc, jr_09b_51f1                            ; $5170: $30 $7f

    ld a, a                                       ; $5172: $7f
    and h                                         ; $5173: $a4
    add hl, bc                                    ; $5174: $09
    ldh a, [$08]                                  ; $5175: $f0 $08
    rst $38                                       ; $5177: $ff
    rst $18                                       ; $5178: $df
    rst $38                                       ; $5179: $ff
    rst $00                                       ; $517a: $c7
    ld a, [c]                                     ; $517b: $f2
    ld [hl-], a                                   ; $517c: $32
    ld [$3010], sp                                ; $517d: $08 $10 $30
    cp l                                          ; $5180: $bd
    ld bc, $0036                                  ; $5181: $01 $36 $00
    rst $38                                       ; $5184: $ff
    add b                                         ; $5185: $80
    db $10                                        ; $5186: $10
    ld hl, $00a0                                  ; $5187: $21 $a0 $00
    cp c                                          ; $518a: $b9
    inc sp                                        ; $518b: $33
    ld h, b                                       ; $518c: $60
    inc a                                         ; $518d: $3c
    ccf                                           ; $518e: $3f
    ld a, h                                       ; $518f: $7c
    ld a, a                                       ; $5190: $7f
    db $fc                                        ; $5191: $fc
    ld [hl], b                                    ; $5192: $70
    rst $38                                       ; $5193: $ff
    ld [bc], a                                    ; $5194: $02
    ld [$0125], sp                                ; $5195: $08 $25 $01
    db $dd                                        ; $5198: $dd
    add hl, bc                                    ; $5199: $09
    sub a                                         ; $519a: $97
    rst $38                                       ; $519b: $ff
    rla                                           ; $519c: $17
    rst $38                                       ; $519d: $ff
    inc bc                                        ; $519e: $03
    rrca                                          ; $519f: $0f
    rst $38                                       ; $51a0: $ff
    rra                                           ; $51a1: $1f
    rst $18                                       ; $51a2: $df
    ccf                                           ; $51a3: $3f
    ccf                                           ; $51a4: $3f
    db $eb                                        ; $51a5: $eb
    ld de, HeaderMaskROMVersion                   ; $51a6: $11 $4c $01
    nop                                           ; $51a9: $00
    db $fd                                        ; $51aa: $fd
    ei                                            ; $51ab: $fb
    ei                                            ; $51ac: $fb
    rst $30                                       ; $51ad: $f7
    rst $30                                       ; $51ae: $f7
    xor $ee                                       ; $51af: $ee $ee
    call c, $dc00                                 ; $51b1: $dc $00 $dc
    cp c                                          ; $51b4: $b9
    cp c                                          ; $51b5: $b9
    rst $38                                       ; $51b6: $ff
    rst $38                                       ; $51b7: $ff
    and a                                         ; $51b8: $a7
    ldh [$83], a                                  ; $51b9: $e0 $83
    nop                                           ; $51bb: $00
    call z, $9689                                 ; $51bc: $cc $89 $96
    inc d                                         ; $51bf: $14
    dec sp                                        ; $51c0: $3b
    rrca                                          ; $51c1: $0f
    ld a, a                                       ; $51c2: $7f
    add b                                         ; $51c3: $80
    add b                                         ; $51c4: $80
    ld e, b                                       ; $51c5: $58
    ld d, b                                       ; $51c6: $50
    rst $38                                       ; $51c7: $ff
    ld hl, sp-$03                                 ; $51c8: $f8 $fd
    or $fa                                        ; $51ca: $f6 $fa
    rst $30                                       ; $51cc: $f7
    db $fd                                        ; $51cd: $fd
    ld h, b                                       ; $51ce: $60
    rst $30                                       ; $51cf: $f7
    ld l, b                                       ; $51d0: $68
    jr jr_09b_5155                                ; $51d1: $18 $82

    ld bc, $5b1d                                  ; $51d3: $01 $1d $5b
    xor e                                         ; $51d6: $ab
    or a                                          ; $51d7: $b7
    rst $20                                       ; $51d8: $e7
    ld hl, $ef6f                                  ; $51d9: $21 $6f $ef
    ld a, b                                       ; $51dc: $78
    add hl, bc                                    ; $51dd: $09
    ld a, a                                       ; $51de: $7f
    ld [hl], e                                    ; $51df: $73
    rst $38                                       ; $51e0: $ff
    jp hl                                         ; $51e1: $e9


    ld c, c                                       ; $51e2: $49
    ld bc, $e904                                  ; $51e3: $01 $04 $e9
    db $ed                                        ; $51e6: $ed
    di                                            ; $51e7: $f3
    rst $38                                       ; $51e8: $ff
    jp hl                                         ; $51e9: $e9


    adc b                                         ; $51ea: $88
    add hl, bc                                    ; $51eb: $09
    cp $fe                                        ; $51ec: $fe $fe
    nop                                           ; $51ee: $00
    db $fc                                        ; $51ef: $fc
    db $fc                                        ; $51f0: $fc

jr_09b_51f1:
    ld sp, hl                                     ; $51f1: $f9
    ld sp, hl                                     ; $51f2: $f9
    di                                            ; $51f3: $f3
    di                                            ; $51f4: $f3
    and $e6                                       ; $51f5: $e6 $e6

jr_09b_51f7:
    nop                                           ; $51f7: $00
    call $aacd                                    ; $51f8: $cd $cd $aa

jr_09b_51fb:
    ld d, l                                       ; $51fb: $55
    ld d, h                                       ; $51fc: $54
    ld [$00b9], sp                                ; $51fd: $08 $b9 $00
    ld [bc], a                                    ; $5200: $02
    inc d                                         ; $5201: $14
    nop                                           ; $5202: $00
    ld c, b                                       ; $5203: $48
    nop                                           ; $5204: $00
    stop                                          ; $5205: $10 $00
    ld bc, $aa08                                  ; $5207: $01 $08 $aa
    nop                                           ; $520a: $00
    ld d, l                                       ; $520b: $55
    call nc, Call_09b_6920                        ; $520c: $d4 $20 $69
    db $10                                        ; $520f: $10
    sub h                                         ; $5210: $94
    nop                                           ; $5211: $00
    jr z, jr_09b_51f7                             ; $5212: $28 $e3

    db $10                                        ; $5214: $10
    db $10                                        ; $5215: $10
    inc d                                         ; $5216: $14
    jr jr_09b_521e                                ; $5217: $18 $05

    jr z, @+$0a                                   ; $5219: $28 $08

    nop                                           ; $521b: $00
    inc b                                         ; $521c: $04
    db $10                                        ; $521d: $10

jr_09b_521e:
    ld b, b                                       ; $521e: $40
    jr nc, jr_09b_5229                            ; $521f: $30 $08

    ld b, b                                       ; $5221: $40
    ld de, $0014                                  ; $5222: $11 $14 $00
    inc d                                         ; $5225: $14
    nop                                           ; $5226: $00
    ld a, [bc]                                    ; $5227: $0a
    nop                                           ; $5228: $00

jr_09b_5229:
    dec d                                         ; $5229: $15

jr_09b_522a:
    nop                                           ; $522a: $00
    nop                                           ; $522b: $00
    xor e                                         ; $522c: $ab
    nop                                           ; $522d: $00
    inc d                                         ; $522e: $14
    ld bc, $01ae                                  ; $522f: $01 $ae $01
    ld e, a                                       ; $5232: $5f
    nop                                           ; $5233: $00
    nop                                           ; $5234: $00
    rra                                           ; $5235: $1f
    jr nz, jr_09b_5258                            ; $5236: $20 $20

    ld b, b                                       ; $5238: $40
    dec [hl]                                      ; $5239: $35
    ld b, b                                       ; $523a: $40
    add sp, $17                                   ; $523b: $e8 $17
    nop                                           ; $523d: $00
    nop                                           ; $523e: $00
    ld bc, $01a0                                  ; $523f: $01 $a0 $01
    sub $01                                       ; $5242: $d6 $01
    nop                                           ; $5244: $00
    rst $38                                       ; $5245: $ff
    nop                                           ; $5246: $00
    cp a                                          ; $5247: $bf
    nop                                           ; $5248: $00
    rst $28                                       ; $5249: $ef
    db $10                                        ; $524a: $10
    cp e                                          ; $524b: $bb
    inc b                                         ; $524c: $04
    rst $28                                       ; $524d: $ef
    stop                                          ; $524e: $10 $00
    ld [hl], l                                    ; $5250: $75
    adc d                                         ; $5251: $8a
    xor e                                         ; $5252: $ab
    ld d, h                                       ; $5253: $54
    ld d, l                                       ; $5254: $55
    xor d                                         ; $5255: $aa
    jr nz, @-$1f                                  ; $5256: $20 $df

jr_09b_5258:
    nop                                           ; $5258: $00
    xor e                                         ; $5259: $ab
    ld d, h                                       ; $525a: $54
    ld a, [hl]                                    ; $525b: $7e
    nop                                           ; $525c: $00
    cp a                                          ; $525d: $bf
    ld b, b                                       ; $525e: $40
    or $08                                        ; $525f: $f6 $08
    nop                                           ; $5261: $00
    ld l, a                                       ; $5262: $6f
    sub b                                         ; $5263: $90
    or $09                                        ; $5264: $f6 $09
    ld e, l                                       ; $5266: $5d
    and d                                         ; $5267: $a2
    xor d                                         ; $5268: $aa
    ld d, l                                       ; $5269: $55
    ld bc, $54ab                                  ; $526a: $01 $ab $54
    sub $20                                       ; $526d: $d6 $20
    ld l, d                                       ; $526f: $6a
    nop                                           ; $5270: $00
    or l                                          ; $5271: $b5
    ld [hl], b                                    ; $5272: $70
    nop                                           ; $5273: $00
    stop                                          ; $5274: $10 $00
    nop                                           ; $5276: $00
    jr nz, jr_09b_51fb                            ; $5277: $20 $82

    nop                                           ; $5279: $00
    ld d, a                                       ; $527a: $57
    jr z, jr_09b_522a                             ; $527b: $28 $ad

    db $10                                        ; $527d: $10
    inc b                                         ; $527e: $04
    ld e, d                                       ; $527f: $5a
    nop                                           ; $5280: $00
    inc h                                         ; $5281: $24
    db $10                                        ; $5282: $10
    ld d, b                                       ; $5283: $50
    ld a, d                                       ; $5284: $7a
    jr nz, @-$54                                  ; $5285: $20 $aa

    ld d, l                                       ; $5287: $55
    inc d                                         ; $5288: $14
    ld e, d                                       ; $5289: $5a
    jr nz, @-$5a                                  ; $528a: $20 $a4

    ld [de], a                                    ; $528c: $12
    nop                                           ; $528d: $00
    inc d                                         ; $528e: $14
    sbc [hl]                                      ; $528f: $9e
    db $10                                        ; $5290: $10
    ld b, b                                       ; $5291: $40
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    xor e                                         ; $5294: $ab
    ld d, l                                       ; $5295: $55
    ld d, h                                       ; $5296: $54
    dec bc                                        ; $5297: $0b
    xor a                                         ; $5298: $af
    ld bc, HeaderGlobalChecksum                   ; $5299: $01 $4e $01
    nop                                           ; $529c: $00
    rla                                           ; $529d: $17
    ld bc, $0182                                  ; $529e: $01 $82 $01
    ld [bc], a                                    ; $52a1: $02
    ld bc, $0100                                  ; $52a2: $01 $00 $01
    xor b                                         ; $52a5: $a8
    and c                                         ; $52a6: $a1
    ld c, b                                       ; $52a7: $48
    add b                                         ; $52a8: $80
    jr nz, jr_09b_52ab                            ; $52a9: $20 $00

jr_09b_52ab:
    nop                                           ; $52ab: $00
    inc de                                        ; $52ac: $13
    db $10                                        ; $52ad: $10
    ld bc, $0300                                  ; $52ae: $01 $00 $03
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    ld [bc], a                                    ; $52b3: $02

jr_09b_52b4:
    inc b                                         ; $52b4: $04
    add c                                         ; $52b5: $81
    ld b, $46                                     ; $52b6: $06 $46
    ld bc, $0080                                  ; $52b8: $01 $80 $00
    nop                                           ; $52bb: $00
    ld e, a                                       ; $52bc: $5f
    nop                                           ; $52bd: $00
    and b                                         ; $52be: $a0
    nop                                           ; $52bf: $00
    ld e, b                                       ; $52c0: $58
    jr nz, jr_09b_52b4                            ; $52c1: $20 $f1

    nop                                           ; $52c3: $00
    ld c, $0c                                     ; $52c4: $0e $0c
    nop                                           ; $52c6: $00
    sbc b                                         ; $52c7: $98
    nop                                           ; $52c8: $00
    dec b                                         ; $52c9: $05
    ld hl, sp+$22                                 ; $52ca: $f8 $22
    ld [$1001], sp                                ; $52cc: $08 $01 $10
    ld bc, $9aaa                                  ; $52cf: $01 $aa $9a
    nop                                           ; $52d2: $00
    ld l, d                                       ; $52d3: $6a
    add c                                         ; $52d4: $81
    stop                                          ; $52d5: $10 $00
    ld bc, $011a                                  ; $52d7: $01 $1a $01
    jr nz, jr_09b_52ed                            ; $52da: $20 $11

    ldh [rP1], a                                  ; $52dc: $e0 $00
    add hl, bc                                    ; $52de: $09
    ld [$3d40], sp                                ; $52df: $08 $40 $3d
    jp nz, Jump_000_1400                          ; $52e2: $c2 $00 $14

    nop                                           ; $52e5: $00
    db $dd                                        ; $52e6: $dd
    ld [bc], a                                    ; $52e7: $02
    inc bc                                        ; $52e8: $03
    nop                                           ; $52e9: $00
    db $fc                                        ; $52ea: $fc
    xor e                                         ; $52eb: $ab
    ld d, h                                       ; $52ec: $54

jr_09b_52ed:
    add b                                         ; $52ed: $80
    nop                                           ; $52ee: $00
    ld b, c                                       ; $52ef: $41
    nop                                           ; $52f0: $00
    ret nz                                        ; $52f1: $c0

    ld [bc], a                                    ; $52f2: $02
    nop                                           ; $52f3: $00
    ld h, c                                       ; $52f4: $61
    nop                                           ; $52f5: $00
    db $d3                                        ; $52f6: $d3
    nop                                           ; $52f7: $00
    ld h, l                                       ; $52f8: $65
    inc b                                         ; $52f9: $04
    db $10                                        ; $52fa: $10
    sub d                                         ; $52fb: $92
    nop                                           ; $52fc: $00
    inc c                                         ; $52fd: $0c
    jr z, jr_09b_5307                             ; $52fe: $28 $07

    sub e                                         ; $5300: $93
    nop                                           ; $5301: $00
    and c                                         ; $5302: $a1
    nop                                           ; $5303: $00
    jp nc, $04a0                                  ; $5304: $d2 $a0 $04

jr_09b_5307:
    nop                                           ; $5307: $00
    db $eb                                        ; $5308: $eb
    xor b                                         ; $5309: $a8
    nop                                           ; $530a: $00
    jp nz, $1031                                  ; $530b: $c2 $31 $10

    pop hl                                        ; $530e: $e1
    ld [$0100], a                                 ; $530f: $ea $00 $01
    ld h, $01                                     ; $5312: $26 $01
    jp z, Jump_09b_6601                           ; $5314: $ca $01 $66

    ld bc, $08ee                                  ; $5317: $01 $ee $08
    ld bc, $01f6                                  ; $531a: $01 $f6 $01
    ld a, a                                       ; $531d: $7f
    ldh [rP1], a                                  ; $531e: $e0 $00
    rst $18                                       ; $5320: $df
    jr nz, @+$01                                  ; $5321: $20 $ff

    ld [hl+], a                                   ; $5323: $22
    nop                                           ; $5324: $00
    ei                                            ; $5325: $fb
    db $e4                                        ; $5326: $e4
    nop                                           ; $5327: $00
    or [hl]                                       ; $5328: $b6
    ld c, c                                       ; $5329: $49
    rst $38                                       ; $532a: $ff
    inc h                                         ; $532b: $24
    nop                                           ; $532c: $00
    rst $30                                       ; $532d: $f7
    nop                                           ; $532e: $00
    nop                                           ; $532f: $00
    cp $01                                        ; $5330: $fe $01
    db $e3                                        ; $5332: $e3
    ld e, $de                                     ; $5333: $1e $de
    inc hl                                        ; $5335: $23
    ld l, l                                       ; $5336: $6d
    nop                                           ; $5337: $00
    or e                                          ; $5338: $b3
    and b                                         ; $5339: $a0
    ld a, a                                       ; $533a: $7f
    rst $38                                       ; $533b: $ff
    rra                                           ; $533c: $1f
    ei                                            ; $533d: $fb
    nop                                           ; $533e: $00
    ld [hl], a                                    ; $533f: $77
    nop                                           ; $5340: $00
    add b                                         ; $5341: $80
    rrca                                          ; $5342: $0f
    ldh a, [$f3]                                  ; $5343: $f0 $f3
    inc c                                         ; $5345: $0c
    ld [hl], a                                    ; $5346: $77
    adc b                                         ; $5347: $88
    db $fd                                        ; $5348: $fd
    nop                                           ; $5349: $00
    ld a, [c]                                     ; $534a: $f2
    ccf                                           ; $534b: $3f
    ldh [$f7], a                                  ; $534c: $e0 $f7
    ret z                                         ; $534e: $c8

    xor $01                                       ; $534f: $ee $01
    cp [hl]                                       ; $5351: $be
    nop                                           ; $5352: $00
    ld b, c                                       ; $5353: $41
    ld a, l                                       ; $5354: $7d
    add e                                         ; $5355: $83
    ld [$dd15], a                                 ; $5356: $ea $15 $dd
    inc hl                                        ; $5359: $23
    xor b                                         ; $535a: $a8
    nop                                           ; $535b: $00
    ld d, a                                       ; $535c: $57
    ld d, l                                       ; $535d: $55
    xor e                                         ; $535e: $ab
    xor b                                         ; $535f: $a8
    ld d, a                                       ; $5360: $57
    and c                                         ; $5361: $a1
    sbc $80                                       ; $5362: $de $80
    ld [hl], b                                    ; $5364: $70
    rst $38                                       ; $5365: $ff
    cp b                                          ; $5366: $b8
    ld a, [bc]                                    ; $5367: $0a
    add $0b                                       ; $5368: $c6 $0b
    jp z, Jump_000_250b                           ; $536a: $ca $0b $25

    db $db                                        ; $536d: $db
    ld b, c                                       ; $536e: $41
    cp a                                          ; $536f: $bf
    jr jr_09b_5383                                ; $5370: $18 $11

    rst $28                                       ; $5372: $ef
    ld bc, $036e                                  ; $5373: $01 $6e $03
    inc b                                         ; $5376: $04

jr_09b_5377:
    jr jr_09b_5377                                ; $5377: $18 $fe

    call nz, $08fc                                ; $5379: $c4 $fc $08
    ret nz                                        ; $537c: $c0

    reti                                          ; $537d: $d9


    pop hl                                        ; $537e: $e1
    db $e3                                        ; $537f: $e3
    ld h, d                                       ; $5380: $62
    ld [hl+], a                                   ; $5381: $22
    rst $38                                       ; $5382: $ff

jr_09b_5383:
    rst $38                                       ; $5383: $ff
    ld h, a                                       ; $5384: $67
    ld [hl], b                                    ; $5385: $70
    ld a, a                                       ; $5386: $7f
    add c                                         ; $5387: $81
    ld [bc], a                                    ; $5388: $02
    ld h, d                                       ; $5389: $62
    ld a, [hl-]                                   ; $538a: $3a
    cp $1b                                        ; $538b: $fe $1b
    rst $38                                       ; $538d: $ff
    add h                                         ; $538e: $84
    rst $38                                       ; $538f: $ff
    ret z                                         ; $5390: $c8

    adc d                                         ; $5391: $8a
    ld [$d204], sp                                ; $5392: $08 $04 $d2
    rst $38                                       ; $5395: $ff
    and h                                         ; $5396: $a4
    xor b                                         ; $5397: $a8
    inc bc                                        ; $5398: $03
    ld de, $03ac                                  ; $5399: $11 $ac $03
    ld b, l                                       ; $539c: $45
    adc b                                         ; $539d: $88
    cp b                                          ; $539e: $b8
    inc bc                                        ; $539f: $03
    dec h                                         ; $53a0: $25
    rst $38                                       ; $53a1: $ff
    ld c, c                                       ; $53a2: $49
    inc b                                         ; $53a3: $04
    nop                                           ; $53a4: $00
    ld [hl], a                                    ; $53a5: $77
    ret z                                         ; $53a6: $c8

    ld l, l                                       ; $53a7: $6d
    nop                                           ; $53a8: $00
    sub b                                         ; $53a9: $90
    sub [hl]                                      ; $53aa: $96
    pop hl                                        ; $53ab: $e1
    ld e, d                                       ; $53ac: $5a
    db $e4                                        ; $53ad: $e4
    and [hl]                                      ; $53ae: $a6
    ld sp, hl                                     ; $53af: $f9
    ld d, e                                       ; $53b0: $53
    nop                                           ; $53b1: $00
    cp a                                          ; $53b2: $bf
    sbc a                                         ; $53b3: $9f
    ld a, h                                       ; $53b4: $7c
    ld a, [hl-]                                   ; $53b5: $3a
    pop af                                        ; $53b6: $f1
    sub [hl]                                      ; $53b7: $96
    ld h, c                                       ; $53b8: $61
    ld e, e                                       ; $53b9: $5b
    nop                                           ; $53ba: $00
    add a                                         ; $53bb: $87
    xor a                                         ; $53bc: $af
    inc e                                         ; $53bd: $1c
    or l                                          ; $53be: $b5
    ld a, d                                       ; $53bf: $7a
    ld a, [$95cc]                                 ; $53c0: $fa $cc $95
    ld [bc], a                                    ; $53c3: $02
    ld l, [hl]                                    ; $53c4: $6e
    ld c, [hl]                                    ; $53c5: $4e
    sub e                                         ; $53c6: $93
    or e                                          ; $53c7: $b3
    add hl, bc                                    ; $53c8: $09
    jp z, Jump_000_0034                           ; $53c9: $ca $34 $00

    jp z, $ff00                                   ; $53cc: $ca $00 $ff

    or l                                          ; $53cf: $b5
    rst $38                                       ; $53d0: $ff
    sbc $ff                                       ; $53d1: $de $ff
    push af                                       ; $53d3: $f5
    rst $38                                       ; $53d4: $ff
    xor $00                                       ; $53d5: $ee $00
    rst $38                                       ; $53d7: $ff
    rst $10                                       ; $53d8: $d7

jr_09b_53d9:
    rst $38                                       ; $53d9: $ff
    ld c, e                                       ; $53da: $4b
    rst $38                                       ; $53db: $ff
    sbc l                                         ; $53dc: $9d
    rst $38                                       ; $53dd: $ff
    scf                                           ; $53de: $37
    jr nz, @+$01                                  ; $53df: $20 $ff

    ld e, e                                       ; $53e1: $5b
    ld h, l                                       ; $53e2: $65
    jr z, @+$01                                   ; $53e3: $28 $ff

    rst $20                                       ; $53e5: $e7
    ret c                                         ; $53e6: $d8

    jp c, $0024                                   ; $53e7: $da $24 $00

    xor h                                         ; $53ea: $ac
    ld d, e                                       ; $53eb: $53
    sub d                                         ; $53ec: $92
    inc h                                         ; $53ed: $24
    ld [hl], $c9                                  ; $53ee: $36 $c9
    xor e                                         ; $53f0: $ab
    rla                                           ; $53f1: $17
    inc b                                         ; $53f2: $04
    ld c, a                                       ; $53f3: $4f
    cp h                                          ; $53f4: $bc
    or l                                          ; $53f5: $b5
    ld a, d                                       ; $53f6: $7a
    ld d, $40                                     ; $53f7: $16 $40
    nop                                           ; $53f9: $00
    xor $1d                                       ; $53fa: $ee $1d
    nop                                           ; $53fc: $00
    cp e                                          ; $53fd: $bb
    ld [hl], b                                    ; $53fe: $70
    push af                                       ; $53ff: $f5
    ret z                                         ; $5400: $c8

    ld [$2b01], a                                 ; $5401: $ea $01 $2b
    call nc, $b538                                ; $5404: $d4 $38 $b5
    ld [$03cb], sp                                ; $5407: $08 $cb $03
    ld [de], a                                    ; $540a: $12
    inc bc                                        ; $540b: $03
    sub [hl]                                      ; $540c: $96

Jump_09b_540d:
    inc a                                         ; $540d: $3c
    ei                                            ; $540e: $fb
    call z, Call_000_009d                         ; $540f: $cc $9d $00
    ld b, [hl]                                    ; $5412: $46
    ld h, [hl]                                    ; $5413: $66
    sub e                                         ; $5414: $93
    sub e                                         ; $5415: $93
    dec l                                         ; $5416: $2d
    ld c, [hl]                                    ; $5417: $4e
    sub c                                         ; $5418: $91
    cp e                                          ; $5419: $bb
    nop                                           ; $541a: $00
    ld b, a                                       ; $541b: $47
    ld l, [hl]                                    ; $541c: $6e
    dec e                                         ; $541d: $1d
    or c                                          ; $541e: $b1
    ld [hl], h                                    ; $541f: $74
    ld c, d                                       ; $5420: $4a
    and c                                         ; $5421: $a1
    sbc e                                         ; $5422: $9b
    nop                                           ; $5423: $00
    ld b, a                                       ; $5424: $47
    xor $1c                                       ; $5425: $ee $1c
    add hl, sp                                    ; $5427: $39
    ldh a, [$cc]                                  ; $5428: $f0 $cc
    pop bc                                        ; $542a: $c1
    or c                                          ; $542b: $b1
    nop                                           ; $542c: $00
    inc b                                         ; $542d: $04
    ld b, [hl]                                    ; $542e: $46
    jr jr_09b_53d9                                ; $542f: $18 $a8

    ld [bc], a                                    ; $5431: $02
    rst $38                                       ; $5432: $ff
    di                                            ; $5433: $f3
    rst $30                                       ; $5434: $f7
    inc c                                         ; $5435: $0c
    ld hl, sp-$05                                 ; $5436: $f8 $fb
    db $fc                                        ; $5438: $fc
    db $fc                                        ; $5439: $fc
    ld [de], a                                    ; $543a: $12
    inc h                                         ; $543b: $24
    inc hl                                        ; $543c: $23
    inc bc                                        ; $543d: $03
    rst $08                                       ; $543e: $cf
    xor a                                         ; $543f: $af
    ld c, $1f                                     ; $5440: $0e $1f
    ld e, a                                       ; $5442: $5f
    ccf                                           ; $5443: $3f
    cp a                                          ; $5444: $bf
    inc [hl]                                      ; $5445: $34
    inc bc                                        ; $5446: $03
    ld [hl+], a                                   ; $5447: $22
    inc hl                                        ; $5448: $23
    xor b                                         ; $5449: $a8
    ld [bc], a                                    ; $544a: $02
    cp $10                                        ; $544b: $fe $10
    db $e4                                        ; $544d: $e4
    db $ec                                        ; $544e: $ec
    ldh a, [$32]                                  ; $544f: $f0 $32
    dec hl                                        ; $5451: $2b
    sbc e                                         ; $5452: $9b
    sbc e                                         ; $5453: $9b
    scf                                           ; $5454: $37
    scf                                           ; $5455: $37
    ld [$6f6f], sp                                ; $5456: $08 $6f $6f
    rst $18                                       ; $5459: $df
    rst $18                                       ; $545a: $df
    ld b, d                                       ; $545b: $42
    dec hl                                        ; $545c: $2b
    or $c9                                        ; $545d: $f6 $c9
    push de                                       ; $545f: $d5
    nop                                           ; $5460: $00
    ld [bc], a                                    ; $5461: $02
    ld d, d                                       ; $5462: $52
    xor l                                         ; $5463: $ad
    ld l, c                                       ; $5464: $69
    ld [de], a                                    ; $5465: $12
    or [hl]                                       ; $5466: $b6
    ld b, c                                       ; $5467: $41
    ld c, e                                       ; $5468: $4b
    nop                                           ; $5469: $00
    and a                                         ; $546a: $a7
    db $ec                                        ; $546b: $ec
    rra                                           ; $546c: $1f
    ld a, $f3                                     ; $546d: $3e $f3
    ld e, d                                       ; $546f: $5a
    ld hl, $006b                                  ; $5470: $21 $6b $00
    sub a                                         ; $5473: $97
    adc h                                         ; $5474: $8c
    ccf                                           ; $5475: $3f
    or c                                          ; $5476: $b1
    ld a, a                                       ; $5477: $7f
    add $fb                                       ; $5478: $c6 $fb
    add hl, de                                    ; $547a: $19
    nop                                           ; $547b: $00
    or $a2                                        ; $547c: $f6 $a2
    rst $38                                       ; $547e: $ff
    ld d, l                                       ; $547f: $55
    xor a                                         ; $5480: $af
    jp z, Jump_000_25fc                           ; $5481: $ca $fc $25

    nop                                           ; $5484: $00
    sbc $aa                                       ; $5485: $de $aa
    rst $30                                       ; $5487: $f7
    ld e, c                                       ; $5488: $59
    rst $28                                       ; $5489: $ef
    sub h                                         ; $548a: $94
    ld a, e                                       ; $548b: $7b
    ld c, e                                       ; $548c: $4b
    nop                                           ; $548d: $00
    rst $30                                       ; $548e: $f7
    xor [hl]                                      ; $548f: $ae
    call c, $f936                                 ; $5490: $dc $36 $f9
    jp z, $ab31                                   ; $5493: $ca $31 $ab

    add b                                         ; $5496: $80
    add b                                         ; $5497: $80
    nop                                           ; $5498: $00
    ccf                                           ; $5499: $3f
    ld a, [c]                                     ; $549a: $f2
    di                                            ; $549b: $f3
    call Call_000_10ed                            ; $549c: $cd $ed $10
    sub d                                         ; $549f: $92
    nop                                           ; $54a0: $00
    ld c, c                                       ; $54a1: $49
    xor b                                         ; $54a2: $a8
    ld d, $f7                                     ; $54a3: $16 $f7
    ret                                           ; $54a5: $c9


    sub l                                         ; $54a6: $95
    ld h, b                                       ; $54a7: $60
    ld sp, hl                                     ; $54a8: $f9
    nop                                           ; $54a9: $00
    ld b, $4d                                     ; $54aa: $06 $4d
    sub b                                         ; $54ac: $90
    or [hl]                                       ; $54ad: $b6
    add hl, bc                                    ; $54ae: $09
    adc e                                         ; $54af: $8b
    ld b, a                                       ; $54b0: $47
    ld l, [hl]                                    ; $54b1: $6e
    nop                                           ; $54b2: $00
    sbc h                                         ; $54b3: $9c
    or c                                          ; $54b4: $b1
    ld [hl], b                                    ; $54b5: $70
    ld a, [hl+]                                   ; $54b6: $2a
    db $dd                                        ; $54b7: $dd
    xor e                                         ; $54b8: $ab
    rst $30                                       ; $54b9: $f7
    call z, $7d00                                 ; $54ba: $cc $00 $7d
    cp c                                          ; $54bd: $b9
    ld [hl], b                                    ; $54be: $70
    db $e4                                        ; $54bf: $e4
    pop bc                                        ; $54c0: $c1
    add hl, bc                                    ; $54c1: $09
    ld d, d                                       ; $54c2: $52
    ld [hl-], a                                   ; $54c3: $32
    nop                                           ; $54c4: $00
    add b                                         ; $54c5: $80
    ld b, c                                       ; $54c6: $41
    ld a, [de]                                    ; $54c7: $1a
    set 1, h                                      ; $54c8: $cb $cc
    dec d                                         ; $54ca: $15
    ld h, $4a                                     ; $54cb: $26 $4a
    nop                                           ; $54cd: $00
    inc de                                        ; $54ce: $13
    xor l                                         ; $54cf: $ad
    ld bc, $1049                                  ; $54d0: $01 $49 $10
    dec h                                         ; $54d3: $25
    add e                                         ; $54d4: $83
    rla                                           ; $54d5: $17
    nop                                           ; $54d6: $00
    ld c, h                                       ; $54d7: $4c
    ld d, [hl]                                    ; $54d8: $56
    add hl, sp                                    ; $54d9: $39
    ld d, d                                       ; $54da: $52
    add hl, hl                                    ; $54db: $29

jr_09b_54dc:
    dec hl                                        ; $54dc: $2b
    rst $10                                       ; $54dd: $d7
    xor a                                         ; $54de: $af
    nop                                           ; $54df: $00
    inc e                                         ; $54e0: $1c
    inc a                                         ; $54e1: $3c
    di                                            ; $54e2: $f3
    or $c9                                        ; $54e3: $f6 $c9
    or e                                          ; $54e5: $b3
    inc c                                         ; $54e6: $0c
    ld a, [bc]                                    ; $54e7: $0a
    nop                                           ; $54e8: $00
    pop de                                        ; $54e9: $d1
    or l                                          ; $54ea: $b5
    ld [bc], a                                    ; $54eb: $02
    jp z, $04c0                                   ; $54ec: $ca $c0 $04

    ld hl, $002b                                  ; $54ef: $21 $2b $00
    sub b                                         ; $54f2: $90
    db $10                                        ; $54f3: $10
    ld h, [hl]                                    ; $54f4: $66
    xor c                                         ; $54f5: $a9
    nop                                           ; $54f6: $00
    ld b, l                                       ; $54f7: $45
    inc de                                        ; $54f8: $13
    inc d                                         ; $54f9: $14
    nop                                           ; $54fa: $00
    rst $08                                       ; $54fb: $cf
    ld e, [hl]                                    ; $54fc: $5e
    inc sp                                        ; $54fd: $33
    add hl, bc                                    ; $54fe: $09
    and b                                         ; $54ff: $a0
    push bc                                       ; $5500: $c5

Call_09b_5501:
    inc de                                        ; $5501: $13
    inc d                                         ; $5502: $14
    nop                                           ; $5503: $00
    ld c, a                                       ; $5504: $4f

Call_09b_5505:
    ld d, c                                       ; $5505: $51
    ld a, $4c                                     ; $5506: $3e $4c
    di                                            ; $5508: $f3
    ld [hl], $ef                                  ; $5509: $36 $ef
    push af                                       ; $550b: $f5
    nop                                           ; $550c: $00
    cp d                                          ; $550d: $ba
    sbc e                                         ; $550e: $9b
    rst $20                                       ; $550f: $e7
    ld c, e                                       ; $5510: $4b
    db $fc                                        ; $5511: $fc
    ld d, l                                       ; $5512: $55
    xor [hl]                                      ; $5513: $ae
    jp z, Jump_09b_7f00                           ; $5514: $ca $00 $7f

    add hl, hl                                    ; $5517: $29
    rst $10                                       ; $5518: $d7
    sub h                                         ; $5519: $94
    ei                                            ; $551a: $fb
    swap a                                        ; $551b: $cb $37
    ld l, [hl]                                    ; $551d: $6e
    nop                                           ; $551e: $00
    db $dd                                        ; $551f: $dd
    dec [hl]                                      ; $5520: $35
    ld a, [$4d32]                                 ; $5521: $fa $32 $4d
    adc e                                         ; $5524: $8b
    ld d, a                                       ; $5525: $57
    rst $28                                       ; $5526: $ef
    nop                                           ; $5527: $00
    inc e                                         ; $5528: $1c
    ld a, [hl-]                                   ; $5529: $3a
    pop af                                        ; $552a: $f1
    add sp, -$3a                                  ; $552b: $e8 $c6
    push hl                                       ; $552d: $e5
    jr @+$59                                      ; $552e: $18 $57

    nop                                           ; $5530: $00
    jr nz, jr_09b_54dc                            ; $5531: $20 $a9

    ld b, [hl]                                    ; $5533: $46
    inc b                                         ; $5534: $04
    ei                                            ; $5535: $fb
    ld b, d                                       ; $5536: $42
    cp l                                          ; $5537: $bd
    jr z, jr_09b_5562                             ; $5538: $28 $28

    rst $18                                       ; $553a: $df
    add d                                         ; $553b: $82
    sbc [hl]                                      ; $553c: $9e
    ld bc, $cb5e                                  ; $553d: $01 $5e $cb
    dec d                                         ; $5540: $15
    dec d                                         ; $5541: $15
    ld [$0048], a                                 ; $5542: $ea $48 $00
    or a                                          ; $5545: $b7
    inc d                                         ; $5546: $14
    ei                                            ; $5547: $fb
    ld [bc], a                                    ; $5548: $02
    db $fd                                        ; $5549: $fd
    ld c, c                                       ; $554a: $49
    rst $38                                       ; $554b: $ff
    and [hl]                                      ; $554c: $a6
    add b                                         ; $554d: $80
    rst $10                                       ; $554e: $d7
    ld de, $fad5                                  ; $554f: $11 $d5 $fa
    ld a, [hl+]                                   ; $5552: $2a
    push af                                       ; $5553: $f5
    push hl                                       ; $5554: $e5
    sbc [hl]                                      ; $5555: $9e
    ld [hl], $00                                  ; $5556: $36 $00
    ei                                            ; $5558: $fb
    reti                                          ; $5559: $d9


    ld h, a                                       ; $555a: $67
    db $d3                                        ; $555b: $d3
    cp a                                          ; $555c: $bf
    adc h                                         ; $555d: $8c
    ld a, h                                       ; $555e: $7c
    ld [hl], c                                    ; $555f: $71
    nop                                           ; $5560: $00
    db $f4                                        ; $5561: $f4

jr_09b_5562:
    inc [hl]                                      ; $5562: $34
    rst $18                                       ; $5563: $df
    rst $00                                       ; $5564: $c7
    cp a                                          ; $5565: $bf
    adc a                                         ; $5566: $8f
    ld a, h                                       ; $5567: $7c
    jr c, jr_09b_556a                             ; $5568: $38 $00

jr_09b_556a:
    pop af                                        ; $556a: $f1
    db $eb                                        ; $556b: $eb
    call nz, $9865                                ; $556c: $c4 $65 $98
    or h                                          ; $556f: $b4
    jp $005a                                      ; $5570: $c3 $5a $00


    ld h, h                                       ; $5573: $64
    add $c8                                       ; $5574: $c6 $c8
    ld c, c                                       ; $5576: $49
    nop                                           ; $5577: $00
    db $10                                        ; $5578: $10
    ld [hl+], a                                   ; $5579: $22
    ld h, $00                                     ; $557a: $26 $00
    adc b                                         ; $557c: $88
    and c                                         ; $557d: $a1
    db $10                                        ; $557e: $10
    dec b                                         ; $557f: $05
    inc hl                                        ; $5580: $23
    rla                                           ; $5581: $17
    adc h                                         ; $5582: $8c
    ld e, d                                       ; $5583: $5a
    nop                                           ; $5584: $00
    ld sp, $312e                                  ; $5585: $31 $2e $31
    sub e                                         ; $5588: $93
    rra                                           ; $5589: $1f
    rra                                           ; $558a: $1f
    ld c, h                                       ; $558b: $4c
    ld e, [hl]                                    ; $558c: $5e
    nop                                           ; $558d: $00
    ld sp, $c679                                  ; $558e: $31 $79 $c6
    call Call_09b_5a30                            ; $5591: $cd $30 $5a
    dec b                                         ; $5594: $05
    xor e                                         ; $5595: $ab
    ld b, b                                       ; $5596: $40
    db $10                                        ; $5597: $10
    ld d, h                                       ; $5598: $54
    dec bc                                        ; $5599: $0b
    ld b, h                                       ; $559a: $44
    cp e                                          ; $559b: $bb
    ld [de], a                                    ; $559c: $12
    db $fd                                        ; $559d: $fd
    nop                                           ; $559e: $00
    rst $38                                       ; $559f: $ff
    ld b, b                                       ; $55a0: $40
    xor [hl]                                      ; $55a1: $ae
    ld a, a                                       ; $55a2: $7f
    inc b                                         ; $55a3: $04
    rst $38                                       ; $55a4: $ff
    rst $38                                       ; $55a5: $ff
    ld d, b                                       ; $55a6: $50
    xor a                                         ; $55a7: $af
    and h                                         ; $55a8: $a4
    ld e, e                                       ; $55a9: $5b
    nop                                           ; $55aa: $00
    add hl, bc                                    ; $55ab: $09
    rst $30                                       ; $55ac: $f7
    nop                                           ; $55ad: $00
    rst $38                                       ; $55ae: $ff
    add c                                         ; $55af: $81
    rst $38                                       ; $55b0: $ff
    ld d, h                                       ; $55b1: $54
    rst $38                                       ; $55b2: $ff
    ld b, b                                       ; $55b3: $40
    cpl                                           ; $55b4: $2f
    dec a                                         ; $55b5: $3d
    ld b, $ba                                     ; $55b6: $06 $ba
    ld b, l                                       ; $55b8: $45
    ld d, h                                       ; $55b9: $54
    xor e                                         ; $55ba: $ab
    add hl, hl                                    ; $55bb: $29
    sub $18                                       ; $55bc: $d6 $18
    add b                                         ; $55be: $80
    rst $38                                       ; $55bf: $ff
    ld b, b                                       ; $55c0: $40
    ld e, d                                       ; $55c1: $5a
    dec b                                         ; $55c2: $05
    jp z, $530d                                   ; $55c3: $ca $0d $53

    xor l                                         ; $55c6: $ad
    add b                                         ; $55c7: $80
    add d                                         ; $55c8: $82
    sbc $05                                       ; $55c9: $de $05
    ld [de], a                                    ; $55cb: $12
    rst $38                                       ; $55cc: $ff
    ld l, c                                       ; $55cd: $69
    rst $38                                       ; $55ce: $ff
    ld [hl], a                                    ; $55cf: $77
    ld e, e                                       ; $55d0: $5b
    ld d, $f5                                     ; $55d1: $16 $f5
    ld bc, $cbca                                  ; $55d3: $01 $ca $cb
    inc b                                         ; $55d6: $04
    ld c, b                                       ; $55d7: $48
    or e                                          ; $55d8: $b3
    and h                                         ; $55d9: $a4
    ld c, b                                       ; $55da: $48
    ret nz                                        ; $55db: $c0

    add hl, bc                                    ; $55dc: $09
    ld [bc], a                                    ; $55dd: $02
    ld l, h                                       ; $55de: $6c
    dec e                                         ; $55df: $1d
    or b                                          ; $55e0: $b0
    ld [hl], d                                    ; $55e1: $72
    cpl                                           ; $55e2: $2f
    ld b, h                                       ; $55e3: $44
    ldh a, [rSB]                                  ; $55e4: $f0 $01
    inc e                                         ; $55e6: $1c
    nop                                           ; $55e7: $00
    cp d                                          ; $55e8: $ba
    ld [hl], c                                    ; $55e9: $71
    ret nz                                        ; $55ea: $c0

    jp nc, $2488                                  ; $55eb: $d2 $88 $24

    ld d, e                                       ; $55ee: $53
    nop                                           ; $55ef: $00
    nop                                           ; $55f0: $00
    adc b                                         ; $55f1: $88
    ld [hl+], a                                   ; $55f2: $22
    db $e4                                        ; $55f3: $e4
    jp z, Jump_000_2448                           ; $55f4: $ca $48 $24

    sub d                                         ; $55f7: $92
    ld bc, $0c01                                  ; $55f8: $01 $01 $0c
    ld d, d                                       ; $55fb: $52
    ld h, c                                       ; $55fc: $61
    inc c                                         ; $55fd: $0c
    add l                                         ; $55fe: $85

Jump_09b_55ff:
    inc hl                                        ; $55ff: $23
    rla                                           ; $5600: $17
    ld a, b                                       ; $5601: $78
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    ld h, h                                       ; $5604: $64
    rlca                                          ; $5605: $07
    add a                                         ; $5606: $87
    inc hl                                        ; $5607: $23
    inc d                                         ; $5608: $14
    rrca                                          ; $5609: $0f
    ld d, c                                       ; $560a: $51
    ld a, $00                                     ; $560b: $3e $00
    ld a, e                                       ; $560d: $7b
    call $27cc                                    ; $560e: $cd $cc $27
    or [hl]                                       ; $5611: $b6
    inc bc                                        ; $5612: $03
    xor e                                         ; $5613: $ab
    dec d                                         ; $5614: $15
    nop                                           ; $5615: $00
    pop hl                                        ; $5616: $e1
    call nz, Call_000_21f4                        ; $5617: $c4 $f4 $21
    cp c                                          ; $561a: $b9
    ld d, d                                       ; $561b: $52
    cp h                                          ; $561c: $bc
    ld [$5f00], sp                                ; $561d: $08 $00 $5f
    inc h                                         ; $5620: $24
    ei                                            ; $5621: $fb
    rlca                                          ; $5622: $07
    xor $1d                                       ; $5623: $ee $1d
    cp c                                          ; $5625: $b9
    halt                                          ; $5626: $76
    nop                                           ; $5627: $00
    ld sp, $4544                                  ; $5628: $31 $44 $45
    inc de                                        ; $562b: $13
    rla                                           ; $562c: $17
    ld c, h                                       ; $562d: $4c
    ld e, h                                       ; $562e: $5c
    ld sp, $7300                                  ; $562f: $31 $00 $73
    call z, $12a4                                 ; $5632: $cc $a4 $12
    ld c, d                                       ; $5635: $4a
    dec h                                         ; $5636: $25
    or l                                          ; $5637: $b5
    ld [$7600], sp                                ; $5638: $08 $00 $76
    ret z                                         ; $563b: $c8

    ld l, e                                       ; $563c: $6b
    sub b                                         ; $563d: $90
    or l                                          ; $563e: $b5
    jp nz, $64db                                  ; $563f: $c2 $db $64

    nop                                           ; $5642: $00
    ld l, d                                       ; $5643: $6a
    ld sp, $5fb3                                  ; $5644: $31 $b3 $5f
    ld l, [hl]                                    ; $5647: $6e
    sbc l                                         ; $5648: $9d
    or a                                          ; $5649: $b7
    ld a, b                                       ; $564a: $78
    nop                                           ; $564b: $00
    and [hl]                                      ; $564c: $a6
    ld c, c                                       ; $564d: $49
    ld e, e                                       ; $564e: $5b
    and a                                         ; $564f: $a7
    ld l, $5c                                     ; $5650: $2e $5c
    ld a, [hl-]                                   ; $5652: $3a
    pop af                                        ; $5653: $f1
    nop                                           ; $5654: $00
    ld sp, hl                                     ; $5655: $f9
    add $d6                                       ; $5656: $c6 $d6
    add hl, hl                                    ; $5658: $29
    or h                                          ; $5659: $b4
    ld b, d                                       ; $565a: $42
    sub a                                         ; $565b: $97
    ld [$f700], sp                                ; $565c: $08 $00 $f7
    ret                                           ; $565f: $c9


    call $aa32                                    ; $5660: $cd $32 $aa
    ld b, b                                       ; $5663: $40
    ld d, l                                       ; $5664: $55
    ld a, [hl+]                                   ; $5665: $2a
    nop                                           ; $5666: $00
    xor d                                         ; $5667: $aa
    ld d, c                                       ; $5668: $51
    ld e, e                                       ; $5669: $5b
    add a                                         ; $566a: $87
    xor l                                         ; $566b: $ad
    ld e, $b2                                     ; $566c: $1e $b2
    ld a, l                                       ; $566e: $7d
    nop                                           ; $566f: $00
    ld h, [hl]                                    ; $5670: $66
    sbc c                                         ; $5671: $99
    cp e                                          ; $5672: $bb
    rst $00                                       ; $5673: $c7
    adc $7c                                       ; $5674: $ce $7c
    or e                                          ; $5676: $b3
    ld a, [hl]                                    ; $5677: $7e
    nop                                           ; $5678: $00
    ret                                           ; $5679: $c9


    rst $38                                       ; $567a: $ff
    dec [hl]                                      ; $567b: $35
    jp c, $fd0e                                   ; $567c: $da $0e $fd

    or c                                          ; $567f: $b1
    rst $18                                       ; $5680: $df
    nop                                           ; $5681: $00
    call z, $b3c1                                 ; $5682: $cc $c1 $b3
    ld [$104c], sp                                ; $5685: $08 $4c $10
    db $10                                        ; $5688: $10

Jump_09b_5689:
    ld h, $00                                     ; $5689: $26 $00
    adc c                                         ; $568b: $89
    nop                                           ; $568c: $00
    push de                                       ; $568d: $d5
    add e                                         ; $568e: $83
    ld [hl], h                                    ; $568f: $74

jr_09b_5690:
    rst $08                                       ; $5690: $cf
    ld [hl-], a                                   ; $5691: $32
    db $fd                                        ; $5692: $fd
    nop                                           ; $5693: $00
    ld de, $4588                                  ; $5694: $11 $88 $45
    inc hl                                        ; $5697: $23
    sub [hl]                                      ; $5698: $96
    ld c, h                                       ; $5699: $4c
    ld e, c                                       ; $569a: $59
    ld [hl], $00                                  ; $569b: $36 $00
    ld d, [hl]                                    ; $569d: $56
    ldh [$2a], a                                  ; $569e: $e0 $2a
    push af                                       ; $56a0: $f5
    ld [hl], l                                    ; $56a1: $75
    ret c                                         ; $56a2: $d8

    jp z, $00bc                                   ; $56a3: $ca $bc $00

    pop bc                                        ; $56a6: $c1
    rst $38                                       ; $56a7: $ff
    inc e                                         ; $56a8: $1c
    ei                                            ; $56a9: $fb
    ld d, d                                       ; $56aa: $52
    db $ed                                        ; $56ab: $ed
    add l                                         ; $56ac: $85
    rst $38                                       ; $56ad: $ff
    nop                                           ; $56ae: $00
    jr z, jr_09b_5690                             ; $56af: $28 $df

    ld d, e                                       ; $56b1: $53
    rst $38                                       ; $56b2: $ff
    adc a                                         ; $56b3: $8f
    ld a, h                                       ; $56b4: $7c
    dec a                                         ; $56b5: $3d
    ldh a, [rP1]                                  ; $56b6: $f0 $00
    ld h, h                                       ; $56b8: $64
    rst $38                                       ; $56b9: $ff
    sub e                                         ; $56ba: $93
    rst $28                                       ; $56bb: $ef
    ld c, h                                       ; $56bc: $4c
    cp a                                          ; $56bd: $bf
    ld sp, $00ff                                  ; $56be: $31 $ff $00
    sub $f9                                       ; $56c1: $d6 $f9
    ld a, [hl+]                                   ; $56c3: $2a
    rst $10                                       ; $56c4: $d7
    adc d                                         ; $56c5: $8a
    db $fd                                        ; $56c6: $fd
    adc $73                                       ; $56c7: $ce $73
    nop                                           ; $56c9: $00
    ld [$e5c5], a                                 ; $56ca: $ea $c5 $e5

jr_09b_56cd:
    jr jr_09b_5721                                ; $56cd: $18 $52

    ld hl, $449b                                  ; $56cf: $21 $9b $44
    nop                                           ; $56d2: $00
    ld h, [hl]                                    ; $56d3: $66
    sbc c                                         ; $56d4: $99
    ld e, e                                       ; $56d5: $5b
    daa                                           ; $56d6: $27
    xor h                                         ; $56d7: $ac
    ld e, h                                       ; $56d8: $5c
    jr nc, jr_09b_56cd                            ; $56d9: $30 $f2

    nop                                           ; $56db: $00
    pop hl                                        ; $56dc: $e1
    ccf                                           ; $56dd: $3f
    cp e                                          ; $56de: $bb
    ld e, a                                       ; $56df: $5f
    xor $1c                                       ; $56e0: $ee $1c
    or b                                          ; $56e2: $b0
    ld [hl], d                                    ; $56e3: $72
    nop                                           ; $56e4: $00
    jp hl                                         ; $56e5: $e9


    call nz, Call_000_2032                        ; $56e6: $c4 $32 $20
    sbc c                                         ; $56e9: $99
    db $10                                        ; $56ea: $10
    inc l                                         ; $56eb: $2c
    adc c                                         ; $56ec: $89
    nop                                           ; $56ed: $00
    ret                                           ; $56ee: $c9


    ret nz                                        ; $56ef: $c0

    inc b                                         ; $56f0: $04
    ld sp, $4428                                  ; $56f1: $31 $28 $44
    inc d                                         ; $56f4: $14
    ld [$a900], sp                                ; $56f5: $08 $00 $a9
    nop                                           ; $56f8: $00
    push bc                                       ; $56f9: $c5
    add e                                         ; $56fa: $83
    push af                                       ; $56fb: $f5
    ld c, a                                       ; $56fc: $4f
    or b                                          ; $56fd: $b0
    ld a, a                                       ; $56fe: $7f
    nop                                           ; $56ff: $00
    ld b, a                                       ; $5700: $47
    inc d                                         ; $5701: $14
    rlca                                          ; $5702: $07
    inc hl                                        ; $5703: $23
    sub h                                         ; $5704: $94
    rrca                                          ; $5705: $0f
    ld d, d                                       ; $5706: $52
    ccf                                           ; $5707: $3f
    nop                                           ; $5708: $00
    ld c, d                                       ; $5709: $4a
    db $fd                                        ; $570a: $fd
    ld [de], a                                    ; $570b: $12
    rst $38                                       ; $570c: $ff
    ld c, c                                       ; $570d: $49
    or [hl]                                       ; $570e: $b6
    adc h                                         ; $570f: $8c
    ld a, e                                       ; $5710: $7b
    nop                                           ; $5711: $00
    ld [hl], e                                    ; $5712: $73
    call $10ab                                    ; $5713: $cd $ab $10
    sub h                                         ; $5716: $94
    ld h, d                                       ; $5717: $62
    ld d, c                                       ; $5718: $51
    adc h                                         ; $5719: $8c
    nop                                           ; $571a: $00
    or [hl]                                       ; $571b: $b6
    ld b, c                                       ; $571c: $41
    sbc e                                         ; $571d: $9b
    daa                                           ; $571e: $27
    ld l, [hl]                                    ; $571f: $6e
    sbc h                                         ; $5720: $9c

jr_09b_5721:
    cp [hl]                                       ; $5721: $be
    ld [hl], c                                    ; $5722: $71
    jr nz, jr_09b_576f                            ; $5723: $20 $4a

    cp l                                          ; $5725: $bd
    ld b, b                                       ; $5726: $40
    ld [bc], a                                    ; $5727: $02
    ld a, h                                       ; $5728: $7c
    or e                                          ; $5729: $b3
    ld [hl], b                                    ; $572a: $70
    ldh [$ca], a                                  ; $572b: $e0 $ca
    nop                                           ; $572d: $00
    db $f4                                        ; $572e: $f4
    ld hl, $7299                                  ; $572f: $21 $99 $72
    inc a                                         ; $5732: $3c
    adc c                                         ; $5733: $89
    set 1, h                                      ; $5734: $cb $cc
    nop                                           ; $5736: $00
    dec [hl]                                      ; $5737: $35
    ld b, $82                                     ; $5738: $06 $82
    inc sp                                        ; $573a: $33
    dec bc                                        ; $573b: $0b
    ld b, c                                       ; $573c: $41
    or c                                          ; $573d: $b1
    ld [$c700], sp                                ; $573e: $08 $00 $c7
    inc de                                        ; $5741: $13
    sbc l                                         ; $5742: $9d
    inc c                                         ; $5743: $0c
    ld a, d                                       ; $5744: $7a
    jr nc, jr_09b_579d                            ; $5745: $30 $56

    xor c                                         ; $5747: $a9
    nop                                           ; $5748: $00
    sbc e                                         ; $5749: $9b
    daa                                           ; $574a: $27
    xor $1c                                       ; $574b: $ee $1c
    dec sp                                        ; $574d: $3b
    ldh a, [$d4]                                  ; $574e: $f0 $d4
    db $e3                                        ; $5750: $e3
    ld [bc], a                                    ; $5751: $02
    dec hl                                        ; $5752: $2b
    inc [hl]                                      ; $5753: $34
    ld d, [hl]                                    ; $5754: $56
    add hl, de                                    ; $5755: $19
    adc e                                         ; $5756: $8b
    inc l                                         ; $5757: $2c
    jr nz, jr_09b_5779                            ; $5758: $20 $1f

    ld a, h                                       ; $575a: $7c
    nop                                           ; $575b: $00
    db $fc                                        ; $575c: $fc
    cp c                                          ; $575d: $b9
    ld sp, hl                                     ; $575e: $f9
    inc sp                                        ; $575f: $33
    di                                            ; $5760: $f3
    ld h, $e6                                     ; $5761: $26 $e6
    dec c                                         ; $5763: $0d
    db $10                                        ; $5764: $10
    call $ffff                                    ; $5765: $cd $ff $ff
    ldh [rNR30], a                                ; $5768: $e0 $1a
    cp a                                          ; $576a: $bf
    cp a                                          ; $576b: $bf
    ld a, [hl]                                    ; $576c: $7e
    ld a, [hl]                                    ; $576d: $7e
    inc b                                         ; $576e: $04

jr_09b_576f:
    db $fd                                        ; $576f: $fd
    db $fd                                        ; $5770: $fd
    ld a, [$1bfa]                                 ; $5771: $fa $fa $1b
    ldh a, [rSC]                                  ; $5774: $f0 $02
    cpl                                           ; $5776: $2f
    ld l, a                                       ; $5777: $6f
    add c                                         ; $5778: $81

jr_09b_5779:
    jr nc, jr_09b_579a                            ; $5779: $30 $1f

    ld bc, $afff                                  ; $577b: $01 $ff $af
    ld d, c                                       ; $577e: $51
    db $f4                                        ; $577f: $f4
    db $f4                                        ; $5780: $f4
    ld h, b                                       ; $5781: $60
    rrca                                          ; $5782: $0f
    add b                                         ; $5783: $80
    ld b, b                                       ; $5784: $40
    rra                                           ; $5785: $1f
    ld d, e                                       ; $5786: $53
    db $d3                                        ; $5787: $d3
    rlca                                          ; $5788: $07
    and a                                         ; $5789: $a7
    rst $10                                       ; $578a: $d7
    add hl, hl                                    ; $578b: $29
    ld [$1400], a                                 ; $578c: $ea $00 $14
    push af                                       ; $578f: $f5
    add hl, bc                                    ; $5790: $09
    ld a, [$f402]                                 ; $5791: $fa $02 $f4
    db $f4                                        ; $5794: $f4
    nop                                           ; $5795: $00
    add b                                         ; $5796: $80
    jr jr_09b_57a9                                ; $5797: $18 $10

    rrca                                          ; $5799: $0f

jr_09b_579a:
    ld c, a                                       ; $579a: $4f
    rra                                           ; $579b: $1f
    sbc a                                         ; $579c: $9f

jr_09b_579d:
    rra                                           ; $579d: $1f
    ccf                                           ; $579e: $3f
    ld e, a                                       ; $579f: $5f
    ld [$1f7f], sp                                ; $57a0: $08 $7f $1f
    rst $38                                       ; $57a3: $ff
    rra                                           ; $57a4: $1f
    ld l, b                                       ; $57a5: $68
    ld [hl], $6e                                  ; $57a6: $36 $6e
    ld l, a                                       ; $57a8: $6f

jr_09b_57a9:
    rst $18                                       ; $57a9: $df
    nop                                           ; $57aa: $00
    ret c                                         ; $57ab: $d8

    cp c                                          ; $57ac: $b9
    or [hl]                                       ; $57ad: $b6
    ld a, [hl]                                    ; $57ae: $7e
    ld h, c                                       ; $57af: $61
    rst $38                                       ; $57b0: $ff
    ret nz                                        ; $57b1: $c0

    rst $28                                       ; $57b2: $ef
    ld b, b                                       ; $57b3: $40
    ldh a, [$78]                                  ; $57b4: $f0 $78
    rrca                                          ; $57b6: $0f
    ccf                                           ; $57b7: $3f
    rst $38                                       ; $57b8: $ff
    rst $08                                       ; $57b9: $cf
    ccf                                           ; $57ba: $3f
    rst $20                                       ; $57bb: $e7
    rra                                           ; $57bc: $1f
    ld b, b                                       ; $57bd: $40
    inc bc                                        ; $57be: $03
    inc b                                         ; $57bf: $04
    ld [bc], a                                    ; $57c0: $02
    add e                                         ; $57c1: $83
    rst $38                                       ; $57c2: $ff
    ei                                            ; $57c3: $fb
    db $fc                                        ; $57c4: $fc
    and $ff                                       ; $57c5: $e6 $ff
    ld h, d                                       ; $57c7: $62
    pop af                                        ; $57c8: $f1
    ld [hl], b                                    ; $57c9: $70
    ld b, $92                                     ; $57ca: $06 $92
    ld l, $8f                                     ; $57cc: $2e $8f
    rst $38                                       ; $57ce: $ff
    or e                                          ; $57cf: $b3
    and l                                         ; $57d0: $a5
    ld b, $9f                                     ; $57d1: $06 $9f
    add b                                         ; $57d3: $80
    and d                                         ; $57d4: $a2
    ld [hl], $c5                                  ; $57d5: $36 $c5
    cp $e6                                        ; $57d7: $fe $e6
    dec sp                                        ; $57d9: $3b
    ld [hl], h                                    ; $57da: $74
    rra                                           ; $57db: $1f
    cp c                                          ; $57dc: $b9
    nop                                           ; $57dd: $00
    ld c, a                                       ; $57de: $4f
    call z, Call_09b_5b27                         ; $57df: $cc $27 $5b
    add a                                         ; $57e2: $87
    xor [hl]                                      ; $57e3: $ae
    inc e                                         ; $57e4: $1c
    cp d                                          ; $57e5: $ba
    ld [bc], a                                    ; $57e6: $02
    ld [hl], l                                    ; $57e7: $75
    ld d, b                                       ; $57e8: $50
    rst $28                                       ; $57e9: $ef
    and e                                         ; $57ea: $a3
    rst $38                                       ; $57eb: $ff
    adc [hl]                                      ; $57ec: $8e
    jr c, @+$06                                   ; $57ed: $38 $04

    reti                                          ; $57ef: $d9


    nop                                           ; $57f0: $00
    db $e4                                        ; $57f1: $e4
    xor $30                                       ; $57f2: $ee $30
    or l                                          ; $57f4: $b5
    ld e, d                                       ; $57f5: $5a
    ld e, e                                       ; $57f6: $5b
    adc h                                         ; $57f7: $8c
    push de                                       ; $57f8: $d5
    nop                                           ; $57f9: $00
    ld [c], a                                     ; $57fa: $e2
    or [hl]                                       ; $57fb: $b6
    ld c, b                                       ; $57fc: $48
    xor l                                         ; $57fd: $ad
    ld [de], a                                    ; $57fe: $12
    or d                                          ; $57ff: $b2
    ld c, h                                       ; $5800: $4c
    sub $00                                       ; $5801: $d6 $00
    ld hl, $47ab                                  ; $5803: $21 $ab $47
    ld l, l                                       ; $5806: $6d
    sbc [hl]                                      ; $5807: $9e
    cp [hl]                                       ; $5808: $be
    ld [hl], e                                    ; $5809: $73
    ld l, h                                       ; $580a: $6c
    nop                                           ; $580b: $00
    rla                                           ; $580c: $17
    cp e                                          ; $580d: $bb
    ld b, a                                       ; $580e: $47
    ld l, a                                       ; $580f: $6f
    sbc h                                         ; $5810: $9c
    cp h                                          ; $5811: $bc
    ld [hl], e                                    ; $5812: $73
    ei                                            ; $5813: $fb
    nop                                           ; $5814: $00
    ret nz                                        ; $5815: $c0

    jp nz, $b535                                  ; $5816: $c2 $35 $b5

    ld c, d                                       ; $5819: $4a
    push de                                       ; $581a: $d5
    nop                                           ; $581b: $00
    sbc a                                         ; $581c: $9f
    nop                                           ; $581d: $00
    db $e3                                        ; $581e: $e3
    dec l                                         ; $581f: $2d
    jp $8365                                      ; $5820: $c3 $65 $83


    xor c                                         ; $5823: $a9
    jp $0045                                      ; $5824: $c3 $45 $00


    add e                                         ; $5827: $83
    and c                                         ; $5828: $a1
    jp $b54a                                      ; $5829: $c3 $4a $b5


    ldh a, [$80]                                  ; $582c: $f0 $80
    ld a, [hl-]                                   ; $582e: $3a
    nop                                           ; $582f: $00
    ret nz                                        ; $5830: $c0

    ld d, h                                       ; $5831: $54
    add b                                         ; $5832: $80
    and b                                         ; $5833: $a0
    ld b, b                                       ; $5834: $40
    ld d, b                                       ; $5835: $50
    add b                                         ; $5836: $80
    ldh [rP1], a                                  ; $5837: $e0 $00
    nop                                           ; $5839: $00
    ld d, b                                       ; $583a: $50
    add b                                         ; $583b: $80
    and l                                         ; $583c: $a5
    ld e, d                                       ; $583d: $5a
    ld l, e                                       ; $583e: $6b
    nop                                           ; $583f: $00
    ret                                           ; $5840: $c9


    nop                                           ; $5841: $00
    ld a, $63                                     ; $5842: $3e $63
    inc e                                         ; $5844: $1c
    ld a, [hl-]                                   ; $5845: $3a
    inc c                                         ; $5846: $0c
    ld d, a                                       ; $5847: $57
    ld [$0034], sp                                ; $5848: $08 $34 $00
    ld [$087f], sp                                ; $584b: $08 $7f $08
    sub a                                         ; $584e: $97
    ld l, b                                       ; $584f: $68
    ld a, [bc]                                    ; $5850: $0a
    nop                                           ; $5851: $00
    rst $38                                       ; $5852: $ff
    jr nc, jr_09b_5855                            ; $5853: $30 $00

jr_09b_5855:
    ld b, l                                       ; $5855: $45
    cp b                                          ; $5856: $b8
    dec b                                         ; $5857: $05
    ld a, e                                       ; $5858: $7b
    ld c, $8d                                     ; $5859: $0e $8d
    nop                                           ; $585b: $00
    ld h, c                                       ; $585c: $61
    sbc [hl]                                      ; $585d: $9e
    ld a, [hl+]                                   ; $585e: $2a
    jr nz, jr_09b_5861                            ; $585f: $20 $00

jr_09b_5861:
    or $08                                        ; $5861: $f6 $08
    add e                                         ; $5863: $83
    sub d                                         ; $5864: $92
    ld [bc], a                                    ; $5865: $02
    inc bc                                        ; $5866: $03
    ld [bc], a                                    ; $5867: $02
    dec b                                         ; $5868: $05
    inc bc                                        ; $5869: $03
    ld bc, $c1ff                                  ; $586a: $01 $ff $c1
    cp a                                          ; $586d: $bf
    add c                                         ; $586e: $81
    rst $38                                       ; $586f: $ff
    ret nz                                        ; $5870: $c0

    cp a                                          ; $5871: $bf
    ld [c], a                                     ; $5872: $e2
    inc b                                         ; $5873: $04
    ret nz                                        ; $5874: $c0

    inc b                                         ; $5875: $04
    db $10                                        ; $5876: $10
    ld d, e                                       ; $5877: $53
    rrca                                          ; $5878: $0f
    xor d                                         ; $5879: $aa
    push de                                       ; $587a: $d5
    ld d, l                                       ; $587b: $55
    adc d                                         ; $587c: $8a
    xor l                                         ; $587d: $ad
    ret nz                                        ; $587e: $c0

    inc bc                                        ; $587f: $03
    ld c, [hl]                                    ; $5880: $4e
    add b                                         ; $5881: $80
    sub h                                         ; $5882: $94
    ret nz                                        ; $5883: $c0

    ld b, b                                       ; $5884: $40
    add b                                         ; $5885: $80
    ld [bc], a                                    ; $5886: $02
    ld [$07c0], sp                                ; $5887: $08 $c0 $07
    add b                                         ; $588a: $80
    ld [bc], a                                    ; $588b: $02
    ld d, b                                       ; $588c: $50
    ld h, b                                       ; $588d: $60
    add b                                         ; $588e: $80
    ld d, b                                       ; $588f: $50
    add b                                         ; $5890: $80
    ld l, b                                       ; $5891: $68
    add b                                         ; $5892: $80
    ld d, h                                       ; $5893: $54
    add c                                         ; $5894: $81
    inc b                                         ; $5895: $04
    nop                                           ; $5896: $00
    ld d, b                                       ; $5897: $50
    add b                                         ; $5898: $80
    ld e, d                                       ; $5899: $5a
    add b                                         ; $589a: $80
    ld h, b                                       ; $589b: $60
    sub b                                         ; $589c: $90
    ld e, $38                                     ; $589d: $1e $38
    ld b, b                                       ; $589f: $40
    ld b, b                                       ; $58a0: $40
    scf                                           ; $58a1: $37
    dec b                                         ; $58a2: $05
    nop                                           ; $58a3: $00
    rst $38                                       ; $58a4: $ff
    ld b, d                                       ; $58a5: $42
    or b                                          ; $58a6: $b0
    db $10                                        ; $58a7: $10
    ldh [rP1], a                                  ; $58a8: $e0 $00
    ld l, d                                       ; $58aa: $6a
    add b                                         ; $58ab: $80
    ld h, l                                       ; $58ac: $65
    add b                                         ; $58ad: $80
    ld c, e                                       ; $58ae: $4b
    add b                                         ; $58af: $80
    ld h, a                                       ; $58b0: $67
    add b                                         ; $58b1: $80
    nop                                           ; $58b2: $00
    ld l, a                                       ; $58b3: $6f
    add b                                         ; $58b4: $80
    scf                                           ; $58b5: $37
    ret nz                                        ; $58b6: $c0

    ld l, a                                       ; $58b7: $6f
    add b                                         ; $58b8: $80
    ld a, $c1                                     ; $58b9: $3e $c1
    nop                                           ; $58bb: $00
    ld a, h                                       ; $58bc: $7c
    add e                                         ; $58bd: $83
    xor d                                         ; $58be: $aa
    push de                                       ; $58bf: $d5
    ld e, h                                       ; $58c0: $5c
    and e                                         ; $58c1: $a3
    xor b                                         ; $58c2: $a8
    rst $10                                       ; $58c3: $d7
    ld bc, $ab54                                  ; $58c4: $01 $54 $ab
    xor c                                         ; $58c7: $a9
    sub $52                                       ; $58c8: $d6 $52
    xor l                                         ; $58ca: $ad
    add b                                         ; $58cb: $80
    ld a, h                                       ; $58cc: $7c
    dec b                                         ; $58cd: $05
    ld d, c                                       ; $58ce: $51
    sub d                                         ; $58cf: $92
    db $10                                        ; $58d0: $10
    inc bc                                        ; $58d1: $03
    rst $30                                       ; $58d2: $f7
    cp c                                          ; $58d3: $b9
    rra                                           ; $58d4: $1f
    add sp, -$01                                  ; $58d5: $e8 $ff
    ld d, l                                       ; $58d7: $55
    inc b                                         ; $58d8: $04
    ld d, b                                       ; $58d9: $50
    and b                                         ; $58da: $a0
    and b                                         ; $58db: $a0
    ld b, b                                       ; $58dc: $40
    add e                                         ; $58dd: $83
    and b                                         ; $58de: $a0
    nop                                           ; $58df: $00
    sbc l                                         ; $58e0: $9d
    ld h, d                                       ; $58e1: $62
    ld [hl], $c1                                  ; $58e2: $36 $c1
    and d                                         ; $58e4: $a2
    ld [$32c1], sp                                ; $58e5: $08 $c1 $32
    pop bc                                        ; $58e8: $c1
    add e                                         ; $58e9: $83
    inc b                                         ; $58ea: $04
    nop                                           ; $58eb: $00
    cp a                                          ; $58ec: $bf
    pop bc                                        ; $58ed: $c1
    push de                                       ; $58ee: $d5
    ld [hl+], a                                   ; $58ef: $22
    db $eb                                        ; $58f0: $eb
    or [hl]                                       ; $58f1: $b6
    inc c                                         ; $58f2: $0c
    nop                                           ; $58f3: $00
    and [hl]                                      ; $58f4: $a6
    pop bc                                        ; $58f5: $c1
    or d                                          ; $58f6: $b2
    inc b                                         ; $58f7: $04
    nop                                           ; $58f8: $00
    or e                                          ; $58f9: $b3
    ld [hl+], a                                   ; $58fa: $22
    pop bc                                        ; $58fb: $c1
    cp [hl]                                       ; $58fc: $be
    stop                                          ; $58fd: $10 $00
    add hl, hl                                    ; $58ff: $29
    sub $aa                                       ; $5900: $d6 $aa
    or [hl]                                       ; $5902: $b6
    ld b, $f5                                     ; $5903: $06 $f5
    ld [bc], a                                    ; $5905: $02
    nop                                           ; $5906: $00
    ld e, d                                       ; $5907: $5a
    and l                                         ; $5908: $a5
    nop                                           ; $5909: $00
    rst $38                                       ; $590a: $ff
    xor d                                         ; $590b: $aa
    ld h, h                                       ; $590c: $64
    dec b                                         ; $590d: $05
    or [hl]                                       ; $590e: $b6
    inc c                                         ; $590f: $0c
    pop bc                                        ; $5910: $c1
    ld [hl+], a                                   ; $5911: $22
    pop bc                                        ; $5912: $c1
    or [hl]                                       ; $5913: $b6
    ld [hl-], a                                   ; $5914: $32
    nop                                           ; $5915: $00
    inc h                                         ; $5916: $24
    ld [$e19e], sp                                ; $5917: $08 $9e $e1
    nop                                           ; $591a: $00
    call $d2f3                                    ; $591b: $cd $f3 $d2
    db $ed                                        ; $591e: $ed
    cp a                                          ; $591f: $bf
    ret nz                                        ; $5920: $c0

    or d                                          ; $5921: $b2
    ret nz                                        ; $5922: $c0

    nop                                           ; $5923: $00
    xor b                                         ; $5924: $a8
    ret nz                                        ; $5925: $c0

    or c                                          ; $5926: $b1
    ret nz                                        ; $5927: $c0

    jp c, $95e0                                   ; $5928: $da $e0 $95

    ld [$d201], a                                 ; $592b: $ea $01 $d2
    rst $38                                       ; $592e: $ff
    sbc d                                         ; $592f: $9a
    pop hl                                        ; $5930: $e1
    or b                                          ; $5931: $b0
    pop bc                                        ; $5932: $c1
    and b                                         ; $5933: $a0
    ld b, b                                       ; $5934: $40
    nop                                           ; $5935: $00
    db $10                                        ; $5936: $10
    xor b                                         ; $5937: $a8
    pop bc                                        ; $5938: $c1
    or b                                          ; $5939: $b0
    ld [hl+], a                                   ; $593a: $22
    db $10                                        ; $593b: $10
    ld [$ddfd], a                                 ; $593c: $ea $fd $dd
    ldh [rP1], a                                  ; $593f: $e0 $00
    xor b                                         ; $5941: $a8
    ret nz                                        ; $5942: $c0

    or b                                          ; $5943: $b0
    ret nz                                        ; $5944: $c0

    or l                                          ; $5945: $b5
    ret nz                                        ; $5946: $c0

    xor [hl]                                      ; $5947: $ae
    ret nc                                        ; $5948: $d0

    ld a, [bc]                                    ; $5949: $0a
    sub a                                         ; $594a: $97
    add sp, -$3e                                  ; $594b: $e8 $c2
    db $fd                                        ; $594d: $fd
    add sp, $1e                                   ; $594e: $e8 $1e
    ld bc, $0f74                                  ; $5950: $01 $74 $0f
    ld [bc], a                                    ; $5953: $02
    add d                                         ; $5954: $82
    ld a, [$540f]                                 ; $5955: $fa $0f $54
    jr nz, jr_09b_5982                            ; $5958: $20 $28

    nop                                           ; $595a: $00
    sub b                                         ; $595b: $90
    xor $06                                       ; $595c: $ee $06
    inc b                                         ; $595e: $04
    inc d                                         ; $595f: $14
    ld [bc], a                                    ; $5960: $02
    add hl, bc                                    ; $5961: $09
    inc b                                         ; $5962: $04
    ld a, [$a80f]                                 ; $5963: $fa $0f $a8
    inc b                                         ; $5966: $04
    daa                                           ; $5967: $27
    inc b                                         ; $5968: $04
    ld [bc], a                                    ; $5969: $02
    ld b, b                                       ; $596a: $40
    ld a, [hl+]                                   ; $596b: $2a
    db $10                                        ; $596c: $10
    db $10                                        ; $596d: $10
    ld a, [bc]                                    ; $596e: $0a
    nop                                           ; $596f: $00
    ld d, l                                       ; $5970: $55
    ld [bc], a                                    ; $5971: $02
    adc d                                         ; $5972: $8a
    inc b                                         ; $5973: $04
    ld [bc], a                                    ; $5974: $02
    jr jr_09b_5977                                ; $5975: $18 $00

jr_09b_5977:
    sub h                                         ; $5977: $94
    nop                                           ; $5978: $00
    ld a, [bc]                                    ; $5979: $0a
    ld bc, $1630                                  ; $597a: $01 $30 $16
    nop                                           ; $597d: $00
    nop                                           ; $597e: $00
    add hl, bc                                    ; $597f: $09
    nop                                           ; $5980: $00
    ld [de], a                                    ; $5981: $12

jr_09b_5982:
    nop                                           ; $5982: $00
    ld [hl], h                                    ; $5983: $74
    nop                                           ; $5984: $00
    ld e, d                                       ; $5985: $5a
    add b                                         ; $5986: $80
    jr nc, @-$4a                                  ; $5987: $30 $b4

    ld b, b                                       ; $5989: $40
    ld d, b                                       ; $598a: $50
    ld c, $e0                                     ; $598b: $0e $e0
    ld e, h                                       ; $598d: $5c
    or b                                          ; $598e: $b0
    rrca                                          ; $598f: $0f
    and h                                         ; $5990: $a4
    ld e, c                                       ; $5991: $59
    ld bc, $2950                                  ; $5992: $01 $50 $29

jr_09b_5995:
    inc h                                         ; $5995: $24
    add hl, de                                    ; $5996: $19
    or b                                          ; $5997: $b0
    add hl, bc                                    ; $5998: $09
    ld b, h                                       ; $5999: $44
    inc b                                         ; $599a: $04
    nop                                           ; $599b: $00
    nop                                           ; $599c: $00
    db $f4                                        ; $599d: $f4
    ld sp, hl                                     ; $599e: $f9
    ldh a, [$f9]                                  ; $599f: $f0 $f9
    cp h                                          ; $59a1: $bc
    jp $81c0                                      ; $59a2: $c3 $c0 $81


    ld [$c0a1], sp                                ; $59a5: $08 $a1 $c0
    pop bc                                        ; $59a8: $c1
    add b                                         ; $59a9: $80
    inc b                                         ; $59aa: $04
    xor b                                         ; $59ab: $a8
    xor l                                         ; $59ac: $ad

jr_09b_59ad:
    db $d3                                        ; $59ad: $d3
    jp nc, $e100                                  ; $59ae: $d2 $00 $e1

    call nz, $aae3                                ; $59b1: $c4 $e3 $aa
    push bc                                       ; $59b4: $c5
    call nc, $a8e3                                ; $59b5: $d4 $e3 $a8
    nop                                           ; $59b8: $00
    rst $00                                       ; $59b9: $c7
    sub h                                         ; $59ba: $94
    db $eb                                        ; $59bb: $eb
    and b                                         ; $59bc: $a0
    rst $08                                       ; $59bd: $cf
    ld [$d5ff], a                                 ; $59be: $ea $ff $d5
    jr nz, jr_09b_59ad                            ; $59c1: $20 $ea

    ld a, [$00ce]                                 ; $59c3: $fa $ce $00
    xor b                                         ; $59c6: $a8
    ret nz                                        ; $59c7: $c0

    cp d                                          ; $59c8: $ba
    ret nz                                        ; $59c9: $c0

    cp l                                          ; $59ca: $bd
    nop                                           ; $59cb: $00
    ret nz                                        ; $59cc: $c0

    sbc a                                         ; $59cd: $9f
    ldh [$98], a                                  ; $59ce: $e0 $98
    rst $20                                       ; $59d0: $e7
    sub h                                         ; $59d1: $94
    db $eb                                        ; $59d2: $eb
    ret nz                                        ; $59d3: $c0

    ret nz                                        ; $59d4: $c0

    and h                                         ; $59d5: $a4
    ld d, $aa                                     ; $59d6: $16 $aa
    ld e, $c5                                     ; $59d8: $1e $c5
    ld a, [$ffea]                                 ; $59da: $fa $ea $ff
    rst $10                                       ; $59dd: $d7
    add sp, $00                                   ; $59de: $e8 $00

jr_09b_59e0:
    ldh [$80], a                                  ; $59e0: $e0 $80
    ld c, b                                       ; $59e2: $48
    add b                                         ; $59e3: $80
    push af                                       ; $59e4: $f5
    add b                                         ; $59e5: $80
    ld e, a                                       ; $59e6: $5f
    and b                                         ; $59e7: $a0
    jr z, jr_09b_5995                             ; $59e8: $28 $ab

    call nc, Call_000_0ebe                        ; $59ea: $d4 $be $0e
    and b                                         ; $59ed: $a0
    inc b                                         ; $59ee: $04
    db $10                                        ; $59ef: $10
    call nc, $faff                                ; $59f0: $d4 $ff $fa
    inc hl                                        ; $59f3: $23
    rst $38                                       ; $59f4: $ff
    db $fd                                        ; $59f5: $fd
    and d                                         ; $59f6: $a2
    ld bc, $ff52                                  ; $59f7: $01 $52 $ff
    ld hl, $01a8                                  ; $59fa: $21 $a8 $01
    ld [bc], a                                    ; $59fd: $02
    jr jr_09b_5a00                                ; $59fe: $18 $00

jr_09b_5a00:
    ld d, d                                       ; $5a00: $52
    rst $38                                       ; $5a01: $ff
    and b                                         ; $5a02: $a0
    ret nz                                        ; $5a03: $c0

    ld [c], a                                     ; $5a04: $e2
    add b                                         ; $5a05: $80
    or l                                          ; $5a06: $b5
    ret nz                                        ; $5a07: $c0

    ld [bc], a                                    ; $5a08: $02
    sub l                                         ; $5a09: $95
    ld [$ff80], a                                 ; $5a0a: $ea $80 $ff
    adc d                                         ; $5a0d: $8a
    push af                                       ; $5a0e: $f5
    ld [$000e], a                                 ; $5a0f: $ea $0e $00
    ld bc, $8600                                  ; $5a12: $01 $00 $86
    nop                                           ; $5a15: $00
    ld l, l                                       ; $5a16: $6d
    nop                                           ; $5a17: $00
    ld l, d                                       ; $5a18: $6a
    sub l                                         ; $5a19: $95
    ld c, [hl]                                    ; $5a1a: $4e
    ld bc, $5540                                  ; $5a1b: $01 $40 $55
    ld h, $08                                     ; $5a1e: $26 $08
    ld [$b800], sp                                ; $5a20: $08 $00 $b8
    nop                                           ; $5a23: $00
    halt                                          ; $5a24: $76
    ld [$aa03], sp                                ; $5a25: $08 $03 $aa
    ld e, l                                       ; $5a28: $5d
    ld [$aaff], sp                                ; $5a29: $08 $ff $aa
    ld e, l                                       ; $5a2c: $5d
    ld c, $00                                     ; $5a2d: $0e $00
    ld l, d                                       ; $5a2f: $6a

Call_09b_5a30:
    jr nz, jr_09b_59e0                            ; $5a30: $20 $ae

    ld [hl], d                                    ; $5a32: $72
    ld [$70d0], sp                                ; $5a33: $08 $d0 $70
    ld bc, $4aff                                  ; $5a36: $01 $ff $4a
    jr nc, jr_09b_5a8d                            ; $5a39: $30 $52

    jr jr_09b_5a4d                                ; $5a3b: $18 $10

    jr c, jr_09b_5a47                             ; $5a3d: $38 $08

    sbc a                                         ; $5a3f: $9f
    inc b                                         ; $5a40: $04
    db $10                                        ; $5a41: $10
    rst $38                                       ; $5a42: $ff
    rst $38                                       ; $5a43: $ff
    and h                                         ; $5a44: $a4
    ld a, [bc]                                    ; $5a45: $0a
    ld h, h                                       ; $5a46: $64

jr_09b_5a47:
    ld c, b                                       ; $5a47: $48
    and h                                         ; $5a48: $a4
    ld a, [bc]                                    ; $5a49: $0a
    ld h, h                                       ; $5a4a: $64
    ld c, b                                       ; $5a4b: $48
    and h                                         ; $5a4c: $a4

jr_09b_5a4d:
    ld a, [bc]                                    ; $5a4d: $0a
    ld [bc], a                                    ; $5a4e: $02
    nop                                           ; $5a4f: $00

jr_09b_5a50:
    nop                                           ; $5a50: $00
    or b                                          ; $5a51: $b0
    nop                                           ; $5a52: $00
    ld a, d                                       ; $5a53: $7a
    nop                                           ; $5a54: $00
    ld h, h                                       ; $5a55: $64
    jr jr_09b_5a59                                ; $5a56: $18 $01

    add b                                         ; $5a58: $80

jr_09b_5a59:
    xor h                                         ; $5a59: $ac
    ld [bc], a                                    ; $5a5a: $02
    cp c                                          ; $5a5b: $b9
    nop                                           ; $5a5c: $00
    cp d                                          ; $5a5d: $ba
    ld b, l                                       ; $5a5e: $45
    nop                                           ; $5a5f: $00
    rst $38                                       ; $5a60: $ff
    and l                                         ; $5a61: $a5
    ld b, b                                       ; $5a62: $40
    ld e, d                                       ; $5a63: $5a
    and [hl]                                      ; $5a64: $a6
    ld [$0010], sp                                ; $5a65: $08 $10 $00
    dec [hl]                                      ; $5a68: $35
    nop                                           ; $5a69: $00
    ld l, [hl]                                    ; $5a6a: $6e
    db $10                                        ; $5a6b: $10
    ld [bc], a                                    ; $5a6c: $02
    ld d, l                                       ; $5a6d: $55
    cp d                                          ; $5a6e: $ba
    db $10                                        ; $5a6f: $10
    rst $38                                       ; $5a70: $ff
    ld d, l                                       ; $5a71: $55
    cp d                                          ; $5a72: $ba
    ld c, $00                                     ; $5a73: $0e $00
    rst $38                                       ; $5a75: $ff
    push bc                                       ; $5a76: $c5
    call nz, Call_000_240a                        ; $5a77: $c4 $0a $24
    ld c, b                                       ; $5a7a: $48
    ret nc                                        ; $5a7b: $d0

    rst $38                                       ; $5a7c: $ff
    ld [$06d3], a                                 ; $5a7d: $ea $d3 $06
    sbc [hl]                                      ; $5a80: $9e
    ld d, $33                                     ; $5a81: $16 $33
    and b                                         ; $5a83: $a0
    jp c, $8018                                   ; $5a84: $da $18 $80

    adc d                                         ; $5a87: $8a
    ld [bc], a                                    ; $5a88: $02
    ld [bc], a                                    ; $5a89: $02
    rst $38                                       ; $5a8a: $ff
    and c                                         ; $5a8b: $a1
    rst $38                                       ; $5a8c: $ff

jr_09b_5a8d:
    ld a, [hl-]                                   ; $5a8d: $3a
    jr nz, jr_09b_5a50                            ; $5a8e: $20 $c0

    ld [$00b4], sp                                ; $5a90: $08 $b4 $00
    ld [$28ff], sp                                ; $5a93: $08 $ff $28
    rst $38                                       ; $5a96: $ff
    jr jr_09b_5ab9                                ; $5a97: $18 $20

    rst $38                                       ; $5a99: $ff
    xor h                                         ; $5a9a: $ac
    jp z, $c902                                   ; $5a9b: $ca $02 $c9

    ld a, $a1                                     ; $5a9e: $3e $a1
    jp Jump_000_0085                              ; $5aa0: $c3 $85 $00


    jp $c3a1                                      ; $5aa3: $c3 $a1 $c3


    sbc l                                         ; $5aa6: $9d
    jp $c3bd                                      ; $5aa7: $c3 $bd $c3


    db $d3                                        ; $5aaa: $d3
    dec b                                         ; $5aab: $05
    rst $28                                       ; $5aac: $ef
    or l                                          ; $5aad: $b5
    res 5, c                                      ; $5aae: $cb $a9
    rst $10                                       ; $5ab0: $d7
    ld a, $3b                                     ; $5ab1: $3e $3b
    and b                                         ; $5ab3: $a0
    ld b, d                                       ; $5ab4: $42

jr_09b_5ab5:
    inc bc                                        ; $5ab5: $03
    ld [hl+], a                                   ; $5ab6: $22
    ld l, d                                       ; $5ab7: $6a
    sub b                                         ; $5ab8: $90

jr_09b_5ab9:
    ld a, $2b                                     ; $5ab9: $3e $2b
    ld e, [hl]                                    ; $5abb: $5e
    ld [$4235], sp                                ; $5abc: $08 $35 $42
    inc bc                                        ; $5abf: $03
    jp c, $2d00                                   ; $5ac0: $da $00 $2d

    sub c                                         ; $5ac3: $91
    rst $28                                       ; $5ac4: $ef
    xor c                                         ; $5ac5: $a9
    rst $10                                       ; $5ac6: $d7
    add c                                         ; $5ac7: $81
    rst $38                                       ; $5ac8: $ff
    sub c                                         ; $5ac9: $91
    ld [bc], a                                    ; $5aca: $02
    rst $28                                       ; $5acb: $ef
    add e                                         ; $5acc: $83
    rst $38                                       ; $5acd: $ff
    add l                                         ; $5ace: $85
    rst $38                                       ; $5acf: $ff
    res 6, d                                      ; $5ad0: $cb $b2
    rlca                                          ; $5ad2: $07
    scf                                           ; $5ad3: $37
    ld [bc], a                                    ; $5ad4: $02
    ret z                                         ; $5ad5: $c8

    add b                                         ; $5ad6: $80
    rst $38                                       ; $5ad7: $ff
    ld [$d4f5], a                                 ; $5ad8: $ea $f5 $d4
    cp h                                          ; $5adb: $bc
    rlca                                          ; $5adc: $07
    ld a, [hl+]                                   ; $5add: $2a
    jr nz, jr_09b_5ab5                            ; $5ade: $20 $d5

    xor b                                         ; $5ae0: $a8
    jp nz, $a907                                  ; $5ae1: $c2 $07 $a9

    ld e, [hl]                                    ; $5ae4: $5e
    inc e                                         ; $5ae5: $1c
    rst $38                                       ; $5ae6: $ff
    call c, $7f77                                 ; $5ae7: $dc $77 $7f
    ld a, [hl-]                                   ; $5aea: $3a
    inc de                                        ; $5aeb: $13
    jr nc, jr_09b_5aef                            ; $5aec: $30 $01

    db $10                                        ; $5aee: $10

jr_09b_5aef:
    ld e, c                                       ; $5aef: $59
    jr z, @+$21                                   ; $5af0: $28 $1f

    ld bc, $2b7e                                  ; $5af2: $01 $7e $2b
    add h                                         ; $5af5: $84
    dec bc                                        ; $5af6: $0b
    ld bc, $008d                                  ; $5af7: $01 $8d $00
    jp c, Jump_09b_7f00                           ; $5afa: $da $00 $7f

    add b                                         ; $5afd: $80
    nop                                           ; $5afe: $00
    ld a, [hl-]                                   ; $5aff: $3a
    nop                                           ; $5b00: $00
    ret nz                                        ; $5b01: $c0

    ld d, a                                       ; $5b02: $57
    inc bc                                        ; $5b03: $03
    ldh [rNR10], a                                ; $5b04: $e0 $10
    rst $38                                       ; $5b06: $ff
    rst $38                                       ; $5b07: $ff
    ld l, c                                       ; $5b08: $69
    sub [hl]                                      ; $5b09: $96
    and [hl]                                      ; $5b0a: $a6
    ld bc, $0300                                  ; $5b0b: $01 $00 $03
    nop                                           ; $5b0e: $00
    or [hl]                                       ; $5b0f: $b6
    ld bc, $26d9                                  ; $5b10: $01 $d9 $26
    ld [bc], a                                    ; $5b13: $02
    db $fd                                        ; $5b14: $fd
    nop                                           ; $5b15: $00
    xor c                                         ; $5b16: $a9
    rst $38                                       ; $5b17: $ff
    ld d, a                                       ; $5b18: $57
    rst $38                                       ; $5b19: $ff
    xor e                                         ; $5b1a: $ab
    ld d, a                                       ; $5b1b: $57
    ld c, l                                       ; $5b1c: $4d
    inc bc                                        ; $5b1d: $03
    nop                                           ; $5b1e: $00

jr_09b_5b1f:
    add [hl]                                      ; $5b1f: $86
    ld bc, $0122                                  ; $5b20: $01 $22 $01
    ld d, a                                       ; $5b23: $57
    ld bc, $01aa                                  ; $5b24: $01 $aa $01

Call_09b_5b27:
    nop                                           ; $5b27: $00
    ld d, l                                       ; $5b28: $55
    xor e                                         ; $5b29: $ab
    xor e                                         ; $5b2a: $ab
    rst $38                                       ; $5b2b: $ff
    xor c                                         ; $5b2c: $a9
    ld d, a                                       ; $5b2d: $57
    ld e, l                                       ; $5b2e: $5d
    inc bc                                        ; $5b2f: $03
    nop                                           ; $5b30: $00
    ld a, [hl+]                                   ; $5b31: $2a
    ld bc, $0116                                  ; $5b32: $01 $16 $01
    inc bc                                        ; $5b35: $03
    ld bc, $01b6                                  ; $5b36: $01 $b6 $01
    ld [$03fc], sp                                ; $5b39: $08 $fc $03
    xor c                                         ; $5b3c: $a9
    ld d, a                                       ; $5b3d: $57
    ld [hl+], a                                   ; $5b3e: $22
    ld [$03ad], sp                                ; $5b3f: $08 $ad $03
    ld b, $00                                     ; $5b42: $06 $00
    ld bc, HeaderOldLicenseeCode                  ; $5b44: $01 $4b $01
    sub [hl]                                      ; $5b47: $96
    ld bc, $017e                                  ; $5b48: $01 $7e $01
    xor l                                         ; $5b4b: $ad
    nop                                           ; $5b4c: $00
    ld d, e                                       ; $5b4d: $53
    ld d, l                                       ; $5b4e: $55
    xor a                                         ; $5b4f: $af
    cp a                                          ; $5b50: $bf
    rst $38                                       ; $5b51: $ff
    jp hl                                         ; $5b52: $e9


    rla                                           ; $5b53: $17
    ld d, a                                       ; $5b54: $57
    nop                                           ; $5b55: $00
    ld bc, $010a                                  ; $5b56: $01 $0a $01
    ld e, [hl]                                    ; $5b59: $5e
    ld bc, $03fd                                  ; $5b5a: $01 $fd $03
    ld [$1708], a                                 ; $5b5d: $ea $08 $17
    dec b                                         ; $5b60: $05
    rst $38                                       ; $5b61: $ff
    xor a                                         ; $5b62: $af
    ld d, c                                       ; $5b63: $51
    inc bc                                        ; $5b64: $03
    inc bc                                        ; $5b65: $03
    rst $38                                       ; $5b66: $ff
    dec b                                         ; $5b67: $05
    dec hl                                        ; $5b68: $2b
    rst $38                                       ; $5b69: $ff
    dec bc                                        ; $5b6a: $0b
    ld c, [hl]                                    ; $5b6b: $4e
    nop                                           ; $5b6c: $00
    cp a                                          ; $5b6d: $bf
    di                                            ; $5b6e: $f3
    rlca                                          ; $5b6f: $07
    ret nz                                        ; $5b70: $c0

    rst $30                                       ; $5b71: $f7
    rlca                                          ; $5b72: $07
    xor d                                         ; $5b73: $aa
    ld c, $f8                                     ; $5b74: $0e $f8
    inc b                                         ; $5b76: $04
    jr z, jr_09b_5b1f                             ; $5b77: $28 $a6

    add hl, bc                                    ; $5b79: $09
    inc bc                                        ; $5b7a: $03
    ld c, b                                       ; $5b7b: $48
    ret c                                         ; $5b7c: $d8

    inc e                                         ; $5b7d: $1c
    dec d                                         ; $5b7e: $15
    jr z, jr_09b_5bd6                             ; $5b7f: $28 $55

    nop                                           ; $5b81: $00
    xor d                                         ; $5b82: $aa
    nop                                           ; $5b83: $00
    nop                                           ; $5b84: $00
    push de                                       ; $5b85: $d5
    nop                                           ; $5b86: $00
    xor e                                         ; $5b87: $ab
    nop                                           ; $5b88: $00
    ld e, a                                       ; $5b89: $5f
    nop                                           ; $5b8a: $00
    or l                                          ; $5b8b: $b5
    sub c                                         ; $5b8c: $91
    nop                                           ; $5b8d: $00
    inc de                                        ; $5b8e: $13
    ld d, l                                       ; $5b8f: $55
    jr nz, @+$12                                  ; $5b90: $20 $10

    jr jr_09b_5be8                                ; $5b92: $18 $54

    ld [bc], a                                    ; $5b94: $02
    xor c                                         ; $5b95: $a9
    nop                                           ; $5b96: $00
    inc de                                        ; $5b97: $13
    nop                                           ; $5b98: $00
    xor e                                         ; $5b99: $ab
    ld [hl], h                                    ; $5b9a: $74
    rst $10                                       ; $5b9b: $d7
    jr z, jr_09b_5c0d                             ; $5b9c: $28 $6f

    sub b                                         ; $5b9e: $90
    db $fc                                        ; $5b9f: $fc
    inc bc                                        ; $5ba0: $03
    ld [$06fb], sp                                ; $5ba1: $08 $fb $06
    or $0d                                        ; $5ba4: $f6 $0d
    ret nc                                        ; $5ba6: $d0

    ld d, $0a                                     ; $5ba7: $16 $0a
    xor d                                         ; $5ba9: $aa
    ld d, a                                       ; $5baa: $57
    nop                                           ; $5bab: $00
    ld [hl], l                                    ; $5bac: $75
    adc [hl]                                      ; $5bad: $8e
    rst $20                                       ; $5bae: $e7
    jr jr_09b_5c1c                                ; $5baf: $18 $6b

    sub h                                         ; $5bb1: $94
    push af                                       ; $5bb2: $f5
    dec bc                                        ; $5bb3: $0b
    sub b                                         ; $5bb4: $90
    nop                                           ; $5bb5: $00
    inc de                                        ; $5bb6: $13
    rst $38                                       ; $5bb7: $ff
    add hl, bc                                    ; $5bb8: $09
    xor $06                                       ; $5bb9: $ee $06
    ld [hl], h                                    ; $5bbb: $74
    rst $38                                       ; $5bbc: $ff
    jp c, Jump_09b_55ff                           ; $5bbd: $da $ff $55

    db $f4                                        ; $5bc0: $f4
    add b                                         ; $5bc1: $80
    rla                                           ; $5bc2: $17
    ld a, [bc]                                    ; $5bc3: $0a
    call nc, $8e00                                ; $5bc4: $d4 $00 $8e
    ld a, [hl]                                    ; $5bc7: $7e
    ld bc, $9094                                  ; $5bc8: $01 $94 $90
    nop                                           ; $5bcb: $00
    add b                                         ; $5bcc: $80
    sub c                                         ; $5bcd: $91
    rrca                                          ; $5bce: $0f
    ld e, d                                       ; $5bcf: $5a
    nop                                           ; $5bd0: $00
    push af                                       ; $5bd1: $f5
    ld [bc], a                                    ; $5bd2: $02
    db $db                                        ; $5bd3: $db
    inc b                                         ; $5bd4: $04
    cp d                                          ; $5bd5: $ba

jr_09b_5bd6:
    or b                                          ; $5bd6: $b0
    ld h, h                                       ; $5bd7: $64
    nop                                           ; $5bd8: $00
    xor d                                         ; $5bd9: $aa
    jr nc, jr_09b_5bef                            ; $5bda: $30 $13

    ld l, h                                       ; $5bdc: $6c
    ld [$0057], sp                                ; $5bdd: $08 $57 $00
    cp $00                                        ; $5be0: $fe $00
    db $10                                        ; $5be2: $10
    ld e, e                                       ; $5be3: $5b
    add b                                         ; $5be4: $80
    or [hl]                                       ; $5be5: $b6
    jr nc, @+$15                                  ; $5be6: $30 $13

jr_09b_5be8:
    cp l                                          ; $5be8: $bd
    nop                                           ; $5be9: $00
    ld [$4600], a                                 ; $5bea: $ea $00 $46
    ld d, l                                       ; $5bed: $55
    add b                                         ; $5bee: $80

jr_09b_5bef:
    nop                                           ; $5bef: $00
    ld d, l                                       ; $5bf0: $55
    ld [bc], a                                    ; $5bf1: $02
    xor d                                         ; $5bf2: $aa
    ld [hl], b                                    ; $5bf3: $70
    inc de                                        ; $5bf4: $13
    jr nc, jr_09b_5c02                            ; $5bf5: $30 $0b

    and h                                         ; $5bf7: $a4
    jr nz, jr_09b_5c13                            ; $5bf8: $20 $19

    ldh a, [$30]                                  ; $5bfa: $f0 $30
    inc sp                                        ; $5bfc: $33
    ld a, a                                       ; $5bfd: $7f
    add b                                         ; $5bfe: $80
    or $09                                        ; $5bff: $f6 $09
    db $ed                                        ; $5c01: $ed

jr_09b_5c02:
    ld [bc], a                                    ; $5c02: $02
    ld [de], a                                    ; $5c03: $12
    adc e                                         ; $5c04: $8b
    ld [hl], h                                    ; $5c05: $74
    and l                                         ; $5c06: $a5
    jp c, Jump_09b_614b                           ; $5c07: $da $4b $61

    db $10                                        ; $5c0a: $10
    ld e, e                                       ; $5c0b: $5b
    nop                                           ; $5c0c: $00

jr_09b_5c0d:
    db $fd                                        ; $5c0d: $fd
    xor h                                         ; $5c0e: $ac
    ld a, c                                       ; $5c0f: $79
    db $db                                        ; $5c10: $db
    dec a                                         ; $5c11: $3d
    ld c, [hl]                                    ; $5c12: $4e

jr_09b_5c13:
    cp c                                          ; $5c13: $b9
    cp e                                          ; $5c14: $bb
    nop                                           ; $5c15: $00
    ld e, l                                       ; $5c16: $5d
    ld c, a                                       ; $5c17: $4f
    cp c                                          ; $5c18: $b9
    ei                                            ; $5c19: $fb
    db $fd                                        ; $5c1a: $fd
    rst $38                                       ; $5c1b: $ff

jr_09b_5c1c:
    ld sp, hl                                     ; $5c1c: $f9
    db $fd                                        ; $5c1d: $fd
    nop                                           ; $5c1e: $00
    rst $38                                       ; $5c1f: $ff
    ld a, e                                       ; $5c20: $7b
    db $fd                                        ; $5c21: $fd
    dec a                                         ; $5c22: $3d
    rst $38                                       ; $5c23: $ff
    cp c                                          ; $5c24: $b9
    rst $38                                       ; $5c25: $ff
    ld e, l                                       ; $5c26: $5d
    db $fc                                        ; $5c27: $fc
    inc b                                         ; $5c28: $04
    nop                                           ; $5c29: $00
    rrca                                          ; $5c2a: $0f
    nop                                           ; $5c2b: $00
    and c                                         ; $5c2c: $a1
    ld [bc], a                                    ; $5c2d: $02
    ld bc, $d138                                  ; $5c2e: $01 $38 $d1
    ld a, [bc]                                    ; $5c31: $0a
    and [hl]                                      ; $5c32: $a6
    ld a, [hl+]                                   ; $5c33: $2a
    ld a, [hl]                                    ; $5c34: $7e
    add c                                         ; $5c35: $81
    ld c, h                                       ; $5c36: $4c
    ld b, d                                       ; $5c37: $42
    ld [bc], a                                    ; $5c38: $02
    nop                                           ; $5c39: $00
    inc a                                         ; $5c3a: $3c
    jp $1ab6                                      ; $5c3b: $c3 $b6 $1a


    ret c                                         ; $5c3e: $d8

    nop                                           ; $5c3f: $00
    rst $38                                       ; $5c40: $ff
    ld d, l                                       ; $5c41: $55

jr_09b_5c42:
    jr jr_09b_5c42                                ; $5c42: $18 $fe

    cp $01                                        ; $5c44: $fe $01
    add $2a                                       ; $5c46: $c6 $2a
    db $10                                        ; $5c48: $10
    ld [$fed5], sp                                ; $5c49: $08 $d5 $fe
    ld a, [hl]                                    ; $5c4c: $7e
    inc c                                         ; $5c4d: $0c
    add c                                         ; $5c4e: $81
    nop                                           ; $5c4f: $00
    rst $38                                       ; $5c50: $ff
    pop bc                                        ; $5c51: $c1
    inc c                                         ; $5c52: $0c
    inc b                                         ; $5c53: $04
    ld [bc], a                                    ; $5c54: $02
    jr z, jr_09b_5cac                             ; $5c55: $28 $55

    nop                                           ; $5c57: $00

jr_09b_5c58:
    jr jr_09b_5c58                                ; $5c58: $18 $fe

    ld bc, $3601                                  ; $5c5a: $01 $01 $36
    ld b, $3a                                     ; $5c5d: $06 $3a
    ld c, $7d                                     ; $5c5f: $0e $7d
    add e                                         ; $5c61: $83
    ld b, l                                       ; $5c62: $45
    sbc h                                         ; $5c63: $9c
    ld [bc], a                                    ; $5c64: $02
    nop                                           ; $5c65: $00
    add hl, sp                                    ; $5c66: $39
    rst $00                                       ; $5c67: $c7
    ret nc                                        ; $5c68: $d0

    ld bc, $0528                                  ; $5c69: $01 $28 $05
    inc b                                         ; $5c6c: $04
    jr jr_09b_5cb0                                ; $5c6d: $18 $41

    add b                                         ; $5c6f: $80
    nop                                           ; $5c70: $00
    ld [$7f80], sp                                ; $5c71: $08 $80 $7f
    add b                                         ; $5c74: $80
    ld bc, $4280                                  ; $5c75: $01 $80 $42
    add c                                         ; $5c78: $81
    nop                                           ; $5c79: $00
    ld bc, $4982                                  ; $5c7a: $01 $82 $49
    add d                                         ; $5c7d: $82
    ld bc, $4182                                  ; $5c7e: $01 $82 $41
    add d                                         ; $5c81: $82
    nop                                           ; $5c82: $00
    dec b                                         ; $5c83: $05
    add d                                         ; $5c84: $82
    add a                                         ; $5c85: $87
    ld a, b                                       ; $5c86: $78
    ld a, c                                       ; $5c87: $79
    add [hl]                                      ; $5c88: $86
    sbc [hl]                                      ; $5c89: $9e
    ld bc, $3741                                  ; $5c8a: $01 $41 $37
    ld d, h                                       ; $5c8d: $54
    inc bc                                        ; $5c8e: $03
    rst $30                                       ; $5c8f: $f7
    nop                                           ; $5c90: $00
    xor [hl]                                      ; $5c91: $ae
    nop                                           ; $5c92: $00
    rst $00                                       ; $5c93: $c7
    ld b, d                                       ; $5c94: $42
    nop                                           ; $5c95: $00
    inc b                                         ; $5c96: $04
    nop                                           ; $5c97: $00
    ld bc, $0182                                  ; $5c98: $01 $82 $01
    nop                                           ; $5c9b: $00
    ld a, [hl]                                    ; $5c9c: $7e
    nop                                           ; $5c9d: $00
    sub b                                         ; $5c9e: $90
    ld b, c                                       ; $5c9f: $41
    ld a, [bc]                                    ; $5ca0: $0a
    adc d                                         ; $5ca1: $8a
    ld b, c                                       ; $5ca2: $41
    add b                                         ; $5ca3: $80
    ld b, c                                       ; $5ca4: $41
    ld b, b                                       ; $5ca5: $40
    ld [$3442], sp                                ; $5ca6: $08 $42 $34
    nop                                           ; $5ca9: $00
    ld d, b                                       ; $5caa: $50
    add b                                         ; $5cab: $80

jr_09b_5cac:
    ld c, b                                       ; $5cac: $48
    nop                                           ; $5cad: $00
    ld d, h                                       ; $5cae: $54
    xor b                                         ; $5caf: $a8

jr_09b_5cb0:
    nop                                           ; $5cb0: $00
    call nz, $048f                                ; $5cb1: $c4 $8f $04
    ld a, [de]                                    ; $5cb4: $1a
    nop                                           ; $5cb5: $00
    inc c                                         ; $5cb6: $0c
    dec d                                         ; $5cb7: $15
    jr jr_09b_5cf5                                ; $5cb8: $18 $3b

    db $10                                        ; $5cba: $10
    ld l, $31                                     ; $5cbb: $2e $31
    ld l, l                                       ; $5cbd: $6d
    nop                                           ; $5cbe: $00
    inc sp                                        ; $5cbf: $33
    ld h, d                                       ; $5cc0: $62
    ccf                                           ; $5cc1: $3f
    ld l, e                                       ; $5cc2: $6b
    ld [hl], $ee                                  ; $5cc3: $36 $ee
    ld bc, $00fd                                  ; $5cc5: $01 $fd $00
    nop                                           ; $5cc8: $00
    ld e, e                                       ; $5cc9: $5b
    and b                                         ; $5cca: $a0
    xor d                                         ; $5ccb: $aa
    push de                                       ; $5ccc: $d5
    call nz, $69fb                                ; $5ccd: $c4 $fb $69
    nop                                           ; $5cd0: $00
    cp a                                          ; $5cd1: $bf
    rst $38                                       ; $5cd2: $ff
    rra                                           ; $5cd3: $1f
    add hl, sp                                    ; $5cd4: $39
    rlca                                          ; $5cd5: $07
    add c                                         ; $5cd6: $81
    ld b, b                                       ; $5cd7: $40
    jr nz, jr_09b_5cda                            ; $5cd8: $20 $00

jr_09b_5cda:
    ret nz                                        ; $5cda: $c0

    ret z                                         ; $5cdb: $c8

    or b                                          ; $5cdc: $b0
    ld [hl], h                                    ; $5cdd: $74
    adc b                                         ; $5cde: $88
    jp z, Jump_09b_7484                           ; $5cdf: $ca $84 $74

    nop                                           ; $5ce2: $00
    add d                                         ; $5ce3: $82
    dec l                                         ; $5ce4: $2d
    jp nz, $e295                                  ; $5ce5: $c2 $95 $e2

    jp z, Jump_000_1204                           ; $5ce8: $ca $04 $12

    nop                                           ; $5ceb: $00
    adc d                                         ; $5cec: $8a
    ld b, [hl]                                    ; $5ced: $46
    sub d                                         ; $5cee: $92
    xor [hl]                                      ; $5cef: $ae
    call nz, Call_09b_48e4                        ; $5cf0: $c4 $e4 $48
    ld h, b                                       ; $5cf3: $60
    nop                                           ; $5cf4: $00

jr_09b_5cf5:
    jr z, jr_09b_5d58                             ; $5cf5: $28 $61

    jr z, @+$76                                   ; $5cf7: $28 $74

    jr z, @+$26                                   ; $5cf9: $28 $24

    ld a, $37                                     ; $5cfb: $3e $37
    nop                                           ; $5cfd: $00
    inc e                                         ; $5cfe: $1c
    inc c                                         ; $5cff: $0c
    ld e, $16                                     ; $5d00: $1e $16
    rrca                                          ; $5d02: $0f
    dec bc                                        ; $5d03: $0b
    rlca                                          ; $5d04: $07
    add l                                         ; $5d05: $85
    jr nz, jr_09b_5d0b                            ; $5d06: $20 $03

    jr nz, @+$4f                                  ; $5d08: $20 $4d

    inc bc                                        ; $5d0a: $03

jr_09b_5d0b:
    add l                                         ; $5d0b: $85
    nop                                           ; $5d0c: $00
    ld [bc], a                                    ; $5d0d: $02
    ld bc, $0087                                  ; $5d0e: $01 $87 $00
    inc bc                                        ; $5d11: $03
    add a                                         ; $5d12: $87
    rrca                                          ; $5d13: $0f
    sbc [hl]                                      ; $5d14: $9e
    rst $18                                       ; $5d15: $df
    adc h                                         ; $5d16: $8c
    sbc $40                                       ; $5d17: $de $40
    nop                                           ; $5d19: $00
    adc h                                         ; $5d1a: $8c
    ld bc, $5980                                  ; $5d1b: $01 $80 $59
    and $c3                                       ; $5d1e: $e6 $c3
    cp $e3                                        ; $5d20: $fe $e3
    nop                                           ; $5d22: $00
    cp [hl]                                       ; $5d23: $be
    or [hl]                                       ; $5d24: $b6
    ld a, $2a                                     ; $5d25: $3e $2a
    ld a, $74                                     ; $5d27: $3e $74
    inc a                                         ; $5d29: $3c
    ld l, $11                                     ; $5d2a: $2e $11
    ld a, h                                       ; $5d2c: $7c
    dec a                                         ; $5d2d: $3d
    ld a, d                                       ; $5d2e: $7a
    sub b                                         ; $5d2f: $90
    ld [$0102], sp                                ; $5d30: $08 $02 $01
    jr nz, @+$06                                  ; $5d33: $20 $04

    nop                                           ; $5d35: $00
    stop                                          ; $5d36: $10 $00
    ld bc, $0812                                  ; $5d38: $01 $12 $08
    nop                                           ; $5d3b: $00
    ld bc, $1000                                  ; $5d3c: $01 $00 $10
    nop                                           ; $5d3f: $00
    inc e                                         ; $5d40: $1c
    ld [$2000], sp                                ; $5d41: $08 $00 $20
    ld b, $10                                     ; $5d44: $06 $10
    scf                                           ; $5d46: $37
    ld c, $20                                     ; $5d47: $0e $20
    jr jr_09b_5d4b                                ; $5d49: $18 $00

jr_09b_5d4b:
    ld bc, $4210                                  ; $5d4b: $01 $10 $42
    ld bc, $2480                                  ; $5d4e: $01 $80 $24
    db $10                                        ; $5d51: $10
    xor d                                         ; $5d52: $aa
    ld d, l                                       ; $5d53: $55
    ld d, l                                       ; $5d54: $55
    ld a, [bc]                                    ; $5d55: $0a
    ld b, $ad                                     ; $5d56: $06 $ad

jr_09b_5d58:
    nop                                           ; $5d58: $00
    ld c, [hl]                                    ; $5d59: $4e
    nop                                           ; $5d5a: $00
    inc d                                         ; $5d5b: $14
    ld d, [hl]                                    ; $5d5c: $56
    ld h, $2a                                     ; $5d5d: $26 $2a
    ld [$00a8], sp                                ; $5d5f: $08 $a8 $00
    nop                                           ; $5d62: $00
    call nc, $6800                                ; $5d63: $d4 $00 $68
    add b                                         ; $5d66: $80
    stop                                          ; $5d67: $10 $00
    ld a, [de]                                    ; $5d69: $1a
    nop                                           ; $5d6a: $00
    nop                                           ; $5d6b: $00
    jr nz, jr_09b_5d7e                            ; $5d6c: $20 $10

    jp nz, Jump_000_1030                          ; $5d6e: $c2 $30 $10

    ldh [$ea], a                                  ; $5d71: $e0 $ea
    nop                                           ; $5d73: $00
    nop                                           ; $5d74: $00
    dec h                                         ; $5d75: $25
    nop                                           ; $5d76: $00
    rlc b                                         ; $5d77: $cb $00
    ld h, a                                       ; $5d79: $67
    nop                                           ; $5d7a: $00
    rst $28                                       ; $5d7b: $ef
    add b                                         ; $5d7c: $80
    db $f4                                        ; $5d7d: $f4

jr_09b_5d7e:
    nop                                           ; $5d7e: $00
    rst $28                                       ; $5d7f: $ef
    nop                                           ; $5d80: $00
    cp [hl]                                       ; $5d81: $be
    ld b, c                                       ; $5d82: $41
    ld a, h                                       ; $5d83: $7c
    add e                                         ; $5d84: $83
    ld [$1505], a                                 ; $5d85: $ea $05 $15
    call c, $a823                                 ; $5d88: $dc $23 $a8
    ld d, a                                       ; $5d8b: $57
    nop                                           ; $5d8c: $00
    ld b, $56                                     ; $5d8d: $06 $56
    nop                                           ; $5d8f: $00
    ld b, $aa                                     ; $5d90: $06 $aa
    ld a, [hl]                                    ; $5d92: $7e
    ld b, $12                                     ; $5d93: $06 $12
    nop                                           ; $5d95: $00
    ld b, $77                                     ; $5d96: $06 $77
    ld d, b                                       ; $5d98: $50
    rla                                           ; $5d99: $17
    ld b, h                                       ; $5d9a: $44
    ld b, b                                       ; $5d9b: $40
    ld de, $a802                                  ; $5d9c: $11 $02 $a8
    ld d, d                                       ; $5d9f: $52
    ld b, $08                                     ; $5da0: $06 $08
    ld c, b                                       ; $5da2: $48
    ld de, $5042                                  ; $5da3: $11 $42 $50
    ld de, $8008                                  ; $5da6: $11 $08 $80
    ld b, h                                       ; $5da9: $44
    call c, Call_000_0014                         ; $5daa: $dc $14 $00
    db $10                                        ; $5dad: $10
    jr jr_09b_5db4                                ; $5dae: $18 $04

    ld h, b                                       ; $5db0: $60
    ld de, $0b38                                  ; $5db1: $11 $38 $0b

jr_09b_5db4:
    add c                                         ; $5db4: $81
    rla                                           ; $5db5: $17
    nop                                           ; $5db6: $00
    ld [bc], a                                    ; $5db7: $02
    inc bc                                        ; $5db8: $03
    nop                                           ; $5db9: $00
    dec d                                         ; $5dba: $15
    nop                                           ; $5dbb: $00
    and d                                         ; $5dbc: $a2
    ld bc, $cc46                                  ; $5dbd: $01 $46 $cc
    add hl, bc                                    ; $5dc0: $09
    ret c                                         ; $5dc1: $d8

    ld b, $00                                     ; $5dc2: $06 $00
    rst $38                                       ; $5dc4: $ff
    nop                                           ; $5dc5: $00
    and b                                         ; $5dc6: $a0
    nop                                           ; $5dc7: $00
    ld b, d                                       ; $5dc8: $42
    add b                                         ; $5dc9: $80
    add h                                         ; $5dca: $84
    nop                                           ; $5dcb: $00
    ld h, b                                       ; $5dcc: $60
    dec e                                         ; $5dcd: $1d
    ld [$ac06], a                                 ; $5dce: $ea $06 $ac
    dec c                                         ; $5dd1: $0d
    rst $38                                       ; $5dd2: $ff
    nop                                           ; $5dd3: $00
    ld a, [hl+]                                   ; $5dd4: $2a
    nop                                           ; $5dd5: $00
    ld d, b                                       ; $5dd6: $50
    and a                                         ; $5dd7: $a7
    ld a, [c]                                     ; $5dd8: $f2
    ld d, $ff                                     ; $5dd9: $16 $ff
    call nz, Call_09b_5505                        ; $5ddb: $c4 $05 $55
    ld [bc], a                                    ; $5dde: $02
    nop                                           ; $5ddf: $00
    ld a, [hl+]                                   ; $5de0: $2a
    db $db                                        ; $5de1: $db
    add hl, bc                                    ; $5de2: $09
    sbc h                                         ; $5de3: $9c
    dec c                                         ; $5de4: $0d
    or b                                          ; $5de5: $b0
    ld h, $18                                     ; $5de6: $26 $18
    sub b                                         ; $5de8: $90
    db $10                                        ; $5de9: $10
    db $10                                        ; $5dea: $10
    call z, $e00d                                 ; $5deb: $cc $0d $e0
    add hl, de                                    ; $5dee: $19
    inc b                                         ; $5def: $04
    add hl, de                                    ; $5df0: $19
    jr jr_09b_5e03                                ; $5df1: $18 $10

    add hl, bc                                    ; $5df3: $09
    inc b                                         ; $5df4: $04
    sub d                                         ; $5df5: $92
    dec b                                         ; $5df6: $05
    ld a, [bc]                                    ; $5df7: $0a
    jr jr_09b_5e2e                                ; $5df8: $18 $34

    jr z, jr_09b_5e2c                             ; $5dfa: $28 $30

    nop                                           ; $5dfc: $00
    inc h                                         ; $5dfd: $24
    jr nz, jr_09b_5e34                            ; $5dfe: $20 $34

    ld a, [hl+]                                   ; $5e00: $2a

Jump_09b_5e01:
    inc d                                         ; $5e01: $14
    dec hl                                        ; $5e02: $2b

jr_09b_5e03:
    inc d                                         ; $5e03: $14
    add hl, de                                    ; $5e04: $19
    nop                                           ; $5e05: $00
    ld [de], a                                    ; $5e06: $12

Call_09b_5e07:
    sub b                                         ; $5e07: $90
    dec de                                        ; $5e08: $1b
    inc e                                         ; $5e09: $1c
    ld [$0085], sp                                ; $5e0a: $08 $85 $00
    jr z, jr_09b_5e0f                             ; $5e0d: $28 $00

jr_09b_5e0f:
    inc bc                                        ; $5e0f: $03
    ld e, e                                       ; $5e10: $5b
    inc b                                         ; $5e11: $04
    and [hl]                                      ; $5e12: $a6
    add hl, de                                    ; $5e13: $19
    db $db                                        ; $5e14: $db
    inc h                                         ; $5e15: $24
    inc e                                         ; $5e16: $1c
    nop                                           ; $5e17: $00
    db $e3                                        ; $5e18: $e3
    ld h, e                                       ; $5e19: $63
    ccf                                           ; $5e1a: $3f
    cp a                                          ; $5e1b: $bf
    ld a, h                                       ; $5e1c: $7c
    inc e                                         ; $5e1d: $1c
    sub b                                         ; $5e1e: $90
    cp $00                                        ; $5e1f: $fe $00
    sbc [hl]                                      ; $5e21: $9e
    cp [hl]                                       ; $5e22: $be
    cp $bd                                        ; $5e23: $fe $bd
    ld e, h                                       ; $5e25: $5c
    db $e3                                        ; $5e26: $e3
    ld b, c                                       ; $5e27: $41
    ld b, $00                                     ; $5e28: $06 $00
    db $e3                                        ; $5e2a: $e3
    cp h                                          ; $5e2b: $bc

jr_09b_5e2c:
    rst $20                                       ; $5e2c: $e7
    sbc c                                         ; $5e2d: $99

jr_09b_5e2e:
    cp $de                                        ; $5e2e: $fe $de
    ld h, c                                       ; $5e30: $61
    cp $00                                        ; $5e31: $fe $00
    ld b, c                                       ; $5e33: $41

jr_09b_5e34:
    inc [hl]                                      ; $5e34: $34
    set 7, l                                      ; $5e35: $cb $fd
    add e                                         ; $5e37: $83
    ld d, a                                       ; $5e38: $57
    xor d                                         ; $5e39: $aa
    ld a, [$0e00]                                 ; $5e3a: $fa $00 $0e
    cp a                                          ; $5e3d: $bf
    ld c, h                                       ; $5e3e: $4c
    ld c, b                                       ; $5e3f: $48
    cp a                                          ; $5e40: $bf
    xor d                                         ; $5e41: $aa
    dec c                                         ; $5e42: $0d
    ld e, a                                       ; $5e43: $5f
    ld [bc], a                                    ; $5e44: $02
    rlca                                          ; $5e45: $07
    jr z, jr_09b_5e48                             ; $5e46: $28 $00

jr_09b_5e48:
    ld d, c                                       ; $5e48: $51
    nop                                           ; $5e49: $00
    ld [hl+], a                                   ; $5e4a: $22
    ld a, b                                       ; $5e4b: $78
    ld [hl+], a                                   ; $5e4c: $22
    db $fd                                        ; $5e4d: $fd

jr_09b_5e4e:
    ld [$cae0], sp                                ; $5e4e: $08 $e0 $ca
    nop                                           ; $5e51: $00
    sub l                                         ; $5e52: $95
    inc e                                         ; $5e53: $1c
    ld b, $16                                     ; $5e54: $06 $16
    ld bc, $0009                                  ; $5e56: $01 $09 $00
    ld [bc], a                                    ; $5e59: $02
    dec b                                         ; $5e5a: $05
    ld [bc], a                                    ; $5e5b: $02
    dec bc                                        ; $5e5c: $0b
    inc b                                         ; $5e5d: $04
    add e                                         ; $5e5e: $83
    db $fc                                        ; $5e5f: $fc
    cp d                                          ; $5e60: $ba
    nop                                           ; $5e61: $00
    push bc                                       ; $5e62: $c5
    rst $10                                       ; $5e63: $d7
    add sp, $3f                                   ; $5e64: $e8 $3f
    rst $38                                       ; $5e66: $ff
    call nc, $fb2b                                ; $5e67: $d4 $2b $fb
    nop                                           ; $5e6a: $00
    inc b                                         ; $5e6b: $04
    cp $01                                        ; $5e6c: $fe $01
    ld l, a                                       ; $5e6e: $6f
    sub b                                         ; $5e6f: $90
    ld hl, sp+$10                                 ; $5e70: $f8 $10
    rst $18                                       ; $5e72: $df
    nop                                           ; $5e73: $00
    ccf                                           ; $5e74: $3f
    scf                                           ; $5e75: $37
    ldh [$ea], a                                  ; $5e76: $e0 $ea
    ldh [$15], a                                  ; $5e78: $e0 $15
    ldh [rNR31], a                                ; $5e7a: $e0 $1b
    nop                                           ; $5e7c: $00
    pop hl                                        ; $5e7d: $e1
    sub a                                         ; $5e7e: $97
    ld h, c                                       ; $5e7f: $61
    swap e                                        ; $5e80: $cb $33
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    ld de, $ae8a                                  ; $5e84: $11 $8a $ae
    rlca                                          ; $5e87: $07
    ld [$c000], sp                                ; $5e88: $08 $00 $c0
    add a                                         ; $5e8b: $87
    ld b, $40                                     ; $5e8c: $06 $40
    ld c, h                                       ; $5e8e: $4c
    ld [bc], a                                    ; $5e8f: $02
    add e                                         ; $5e90: $83
    nop                                           ; $5e91: $00
    inc c                                         ; $5e92: $0c
    ld hl, $4b0e                                  ; $5e93: $21 $0e $4b
    inc c                                         ; $5e96: $0c

jr_09b_5e97:
    dec e                                         ; $5e97: $1d
    ld b, $2f                                     ; $5e98: $06 $2f
    nop                                           ; $5e9a: $00
    inc bc                                        ; $5e9b: $03
    ld d, l                                       ; $5e9c: $55
    ld [bc], a                                    ; $5e9d: $02
    jr z, jr_09b_5ea4                             ; $5e9e: $28 $04

    ld d, c                                       ; $5ea0: $51
    dec b                                         ; $5ea1: $05
    rst $38                                       ; $5ea2: $ff
    nop                                           ; $5ea3: $00

jr_09b_5ea4:
    nop                                           ; $5ea4: $00
    cp l                                          ; $5ea5: $bd
    ld b, d                                       ; $5ea6: $42
    dec de                                        ; $5ea7: $1b
    db $e4                                        ; $5ea8: $e4
    cp [hl]                                       ; $5ea9: $be
    ld b, c                                       ; $5eaa: $41
    jr c, jr_09b_5eed                             ; $5eab: $38 $40

    rst $00                                       ; $5ead: $c7
    inc a                                         ; $5eae: $3c
    inc bc                                        ; $5eaf: $03
    add c                                         ; $5eb0: $81
    xor e                                         ; $5eb1: $ab
    nop                                           ; $5eb2: $00
    xor a                                         ; $5eb3: $af
    ld d, e                                       ; $5eb4: $53
    rst $00                                       ; $5eb5: $c7
    nop                                           ; $5eb6: $00
    scf                                           ; $5eb7: $37
    ld e, a                                       ; $5eb8: $5f
    or [hl]                                       ; $5eb9: $b6
    or l                                          ; $5eba: $b5
    ld h, b                                       ; $5ebb: $60
    ld a, [$c8e0]                                 ; $5ebc: $fa $e0 $c8
    ld [bc], a                                    ; $5ebf: $02
    jr nz, jr_09b_5ed6                            ; $5ec0: $20 $14

    jr nz, jr_09b_5e4e                            ; $5ec2: $20 $8a

    and b                                         ; $5ec4: $a0
    ld b, b                                       ; $5ec5: $40
    jr nc, @+$63                                  ; $5ec6: $30 $61

    ccf                                           ; $5ec8: $3f
    nop                                           ; $5ec9: $00
    rra                                           ; $5eca: $1f
    ld a, a                                       ; $5ecb: $7f
    ccf                                           ; $5ecc: $3f
    ccf                                           ; $5ecd: $3f
    ld a, $3e                                     ; $5ece: $3e $3e
    jr jr_09b_5e97                                ; $5ed0: $18 $c5

    ld sp, $0a00                                  ; $5ed2: $31 $00 $0a
    xor b                                         ; $5ed5: $a8

jr_09b_5ed6:
    ld [de], a                                    ; $5ed6: $12
    ldh [$0b], a                                  ; $5ed7: $e0 $0b
    ld d, l                                       ; $5ed9: $55
    nop                                           ; $5eda: $00
    and d                                         ; $5edb: $a2
    inc [hl]                                      ; $5edc: $34
    rlca                                          ; $5edd: $07
    ld b, b                                       ; $5ede: $40
    ld [bc], a                                    ; $5edf: $02
    ld c, b                                       ; $5ee0: $48
    dec d                                         ; $5ee1: $15
    push af                                       ; $5ee2: $f5
    ldh [$fe], a                                  ; $5ee3: $e0 $fe
    ld hl, sp-$04                                 ; $5ee5: $f8 $fc
    ld a, h                                       ; $5ee7: $7c
    ld de, $18bc                                  ; $5ee8: $11 $bc $18
    ld d, e                                       ; $5eeb: $53
    push de                                       ; $5eec: $d5

jr_09b_5eed:
    ld b, $02                                     ; $5eed: $06 $02
    ld bc, $7f40                                  ; $5eef: $01 $40 $7f
    dec b                                         ; $5ef2: $05
    nop                                           ; $5ef3: $00
    add d                                         ; $5ef4: $82
    nop                                           ; $5ef5: $00
    ld c, a                                       ; $5ef6: $4f
    rlca                                          ; $5ef7: $07
    xor a                                         ; $5ef8: $af
    rrca                                          ; $5ef9: $0f
    ld e, l                                       ; $5efa: $5d
    dec c                                         ; $5efb: $0d
    ld bc, $7d8d                                  ; $5efc: $01 $8d $7d
    ld c, a                                       ; $5eff: $4f
    adc c                                         ; $5f00: $89
    dec bc                                        ; $5f01: $0b
    bit 2, d                                      ; $5f02: $cb $52
    or b                                          ; $5f04: $b0
    ld [de], a                                    ; $5f05: $12
    nop                                           ; $5f06: $00
    adc b                                         ; $5f07: $88
    add c                                         ; $5f08: $81
    jp nz, $c081                                  ; $5f09: $c2 $81 $c0

    add c                                         ; $5f0c: $81
    add d                                         ; $5f0d: $82
    add c                                         ; $5f0e: $81
    nop                                           ; $5f0f: $00
    adc b                                         ; $5f10: $88
    add c                                         ; $5f11: $81
    sbc e                                         ; $5f12: $9b
    adc e                                         ; $5f13: $8b
    ld hl, sp-$70                                 ; $5f14: $f8 $90
    pop af                                        ; $5f16: $f1
    ld [hl], b                                    ; $5f17: $70
    nop                                           ; $5f18: $00
    ldh a, [$e0]                                  ; $5f19: $f0 $e0
    add sp, -$40                                  ; $5f1b: $e8 $c0
    call nc, $e0c0                                ; $5f1d: $d4 $c0 $e0
    add b                                         ; $5f20: $80
    ld [hl], $d0                                  ; $5f21: $36 $d0

Call_09b_5f23:
    add b                                         ; $5f23: $80
    call z, Call_09b_7c02                         ; $5f24: $cc $02 $7c
    inc b                                         ; $5f27: $04
    jr nz, @+$22                                  ; $5f28: $20 $20

    ld [bc], a                                    ; $5f2a: $02
    ret c                                         ; $5f2b: $d8

    ld a, [bc]                                    ; $5f2c: $0a
    ld b, b                                       ; $5f2d: $40
    dec hl                                        ; $5f2e: $2b
    ld bc, $8ea0                                  ; $5f2f: $01 $a0 $8e

jr_09b_5f32:
    rlca                                          ; $5f32: $07
    add b                                         ; $5f33: $80
    ld b, d                                       ; $5f34: $42
    ld [bc], a                                    ; $5f35: $02
    inc bc                                        ; $5f36: $03
    dec h                                         ; $5f37: $25
    rlca                                          ; $5f38: $07
    inc [hl]                                      ; $5f39: $34
    ld a, [bc]                                    ; $5f3a: $0a
    ld e, a                                       ; $5f3b: $5f
    and d                                         ; $5f3c: $a2
    ld d, h                                       ; $5f3d: $54
    nop                                           ; $5f3e: $00
    ld [hl+], a                                   ; $5f3f: $22
    inc a                                         ; $5f40: $3c
    ld [bc], a                                    ; $5f41: $02
    ld e, h                                       ; $5f42: $5c
    dec bc                                        ; $5f43: $0b
    pop af                                        ; $5f44: $f1
    rrca                                          ; $5f45: $0f
    ld c, b                                       ; $5f46: $48
    ld a, [hl+]                                   ; $5f47: $2a
    db $10                                        ; $5f48: $10
    jr z, jr_09b_5f62                             ; $5f49: $28 $17

    ld b, b                                       ; $5f4b: $40
    add b                                         ; $5f4c: $80
    add hl, bc                                    ; $5f4d: $09
    db $fc                                        ; $5f4e: $fc
    ld [bc], a                                    ; $5f4f: $02
    jr z, jr_09b_5f32                             ; $5f50: $28 $e0

    ld sp, $1d2e                                  ; $5f52: $31 $2e $1d
    and a                                         ; $5f55: $a7
    dec bc                                        ; $5f56: $0b
    or b                                          ; $5f57: $b0
    xor b                                         ; $5f58: $a8
    inc e                                         ; $5f59: $1c
    ld [hl+], a                                   ; $5f5a: $22
    add b                                         ; $5f5b: $80
    ld [hl+], a                                   ; $5f5c: $22
    ld b, b                                       ; $5f5d: $40
    jr z, @-$14                                   ; $5f5e: $28 $ea

    ld b, l                                       ; $5f60: $45
    push af                                       ; $5f61: $f5

jr_09b_5f62:
    ld [$fa00], sp                                ; $5f62: $08 $00 $fa
    ld bc, $00df                                  ; $5f65: $01 $df $00
    xor $11                                       ; $5f68: $ee $11
    ld e, a                                       ; $5f6a: $5f
    ld [hl+], a                                   ; $5f6b: $22
    nop                                           ; $5f6c: $00
    xor [hl]                                      ; $5f6d: $ae
    ld d, h                                       ; $5f6e: $54
    ld [hl], l                                    ; $5f6f: $75
    and d                                         ; $5f70: $a2
    db $eb                                        ; $5f71: $eb
    dec d                                         ; $5f72: $15
    rst $38                                       ; $5f73: $ff
    ld a, [bc]                                    ; $5f74: $0a
    nop                                           ; $5f75: $00
    xor $14                                       ; $5f76: $ee $14
    push af                                       ; $5f78: $f5
    ld [hl+], a                                   ; $5f79: $22
    db $eb                                        ; $5f7a: $eb
    ld b, h                                       ; $5f7b: $44
    ld [hl], a                                    ; $5f7c: $77
    jr nz, jr_09b_5f7f                            ; $5f7d: $20 $00

jr_09b_5f7f:
    cp e                                          ; $5f7f: $bb
    db $10                                        ; $5f80: $10

jr_09b_5f81:
    ld a, l                                       ; $5f81: $7d
    adc b                                         ; $5f82: $88
    ld [$ff11], a                                 ; $5f83: $ea $11 $ff
    ld [bc], a                                    ; $5f86: $02
    nop                                           ; $5f87: $00
    xor $14                                       ; $5f88: $ee $14
    ld a, a                                       ; $5f8a: $7f
    and d                                         ; $5f8b: $a2
    ei                                            ; $5f8c: $fb
    ld b, l                                       ; $5f8d: $45
    db $fd                                        ; $5f8e: $fd
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    cp d                                          ; $5f91: $ba
    ld b, c                                       ; $5f92: $41
    db $fd                                        ; $5f93: $fd
    ld [bc], a                                    ; $5f94: $02
    jp hl                                         ; $5f95: $e9


    ld d, $d5                                     ; $5f96: $16 $d5
    cpl                                           ; $5f98: $2f
    nop                                           ; $5f99: $00
    sbc a                                         ; $5f9a: $9f
    ld a, a                                       ; $5f9b: $7f
    db $fc                                        ; $5f9c: $fc
    jr c, jr_09b_5f7f                             ; $5f9d: $38 $e0

    jr jr_09b_5f81                                ; $5f9f: $18 $e0

    dec d                                         ; $5fa1: $15
    nop                                           ; $5fa2: $00
    db $ec                                        ; $5fa3: $ec
    dec e                                         ; $5fa4: $1d
    db $fc                                        ; $5fa5: $fc
    dec c                                         ; $5fa6: $0d
    ld e, e                                       ; $5fa7: $5b
    and h                                         ; $5fa8: $a4
    ld h, l                                       ; $5fa9: $65
    ld a, [$f900]                                 ; $5faa: $fa $00 $f9
    cp $7c                                        ; $5fad: $fe $7c
    ccf                                           ; $5faf: $3f
    ld e, a                                       ; $5fb0: $5f
    rst $08                                       ; $5fb1: $cf
    rrca                                          ; $5fb2: $0f
    daa                                           ; $5fb3: $27
    nop                                           ; $5fb4: $00
    xor a                                         ; $5fb5: $af
    and a                                         ; $5fb6: $a7
    adc a                                         ; $5fb7: $8f
    rst $08                                       ; $5fb8: $cf
    ld a, [$7f01]                                 ; $5fb9: $fa $01 $7f
    add d                                         ; $5fbc: $82
    nop                                           ; $5fbd: $00
    xor a                                         ; $5fbe: $af
    inc d                                         ; $5fbf: $14
    ld a, l                                       ; $5fc0: $7d
    and d                                         ; $5fc1: $a2
    cp $41                                        ; $5fc2: $fe $41
    rst $30                                       ; $5fc4: $f7
    ld [$aa00], sp                                ; $5fc5: $08 $00 $aa
    ld d, c                                       ; $5fc8: $51
    push af                                       ; $5fc9: $f5
    ld [bc], a                                    ; $5fca: $02
    ldh a, [rNR10]                                ; $5fcb: $f0 $10
    sbc $32                                       ; $5fcd: $de $32
    nop                                           ; $5fcf: $00
    adc a                                         ; $5fd0: $8f
    ld c, h                                       ; $5fd1: $4c
    xor a                                         ; $5fd2: $af
    ld c, a                                       ; $5fd3: $4f
    reti                                          ; $5fd4: $d9


    ld l, c                                       ; $5fd5: $69
    xor $3e                                       ; $5fd6: $ee $3e
    nop                                           ; $5fd8: $00
    cp h                                          ; $5fd9: $bc
    ld e, b                                       ; $5fda: $58
    ld e, e                                       ; $5fdb: $5b
    adc h                                         ; $5fdc: $8c
    rlca                                          ; $5fdd: $07
    ld c, $17                                     ; $5fde: $0e $17
    inc c                                         ; $5fe0: $0c
    nop                                           ; $5fe1: $00
    add a                                         ; $5fe2: $87
    add d                                         ; $5fe3: $82
    rst $00                                       ; $5fe4: $c7
    add d                                         ; $5fe5: $82
    add e                                         ; $5fe6: $83
    add $57                                       ; $5fe7: $c6 $57
    ld l, h                                       ; $5fe9: $6c
    nop                                           ; $5fea: $00
    cp l                                          ; $5feb: $bd
    ld a, d                                       ; $5fec: $7a
    ld a, d                                       ; $5fed: $7a
    pop bc                                        ; $5fee: $c1
    cp d                                          ; $5fef: $ba
    ld b, l                                       ; $5ff0: $45
    rst $18                                       ; $5ff1: $df
    ld [bc], a                                    ; $5ff2: $02
    ld bc, $14ef                                  ; $5ff3: $01 $ef $14
    ld a, a                                       ; $5ff6: $7f
    and b                                         ; $5ff7: $a0
    ld [$f544], a                                 ; $5ff8: $ea $44 $f5
    db $e3                                        ; $5ffb: $e3
    ld b, $00                                     ; $5ffc: $06 $00
    db $fd                                        ; $5ffe: $fd
    ld [bc], a                                    ; $5fff: $02
    ld c, a                                       ; $6000: $4f
    add a                                         ; $6001: $87
    ldh [$c0], a                                  ; $6002: $e0 $c0
    db $ec                                        ; $6004: $ec
    ldh a, [rP1]                                  ; $6005: $f0 $00
    rst $38                                       ; $6007: $ff
    ld a, a                                       ; $6008: $7f
    rst $38                                       ; $6009: $ff
    ccf                                           ; $600a: $3f
    ld sp, hl                                     ; $600b: $f9
    ld a, $f2                                     ; $600c: $3e $f2
    inc a                                         ; $600e: $3c
    nop                                           ; $600f: $00
    db $e4                                        ; $6010: $e4
    jr c, @-$1c                                   ; $6011: $38 $e2

    add c                                         ; $6013: $81
    rlca                                          ; $6014: $07
    inc bc                                        ; $6015: $03
    ld l, a                                       ; $6016: $6f
    rra                                           ; $6017: $1f
    nop                                           ; $6018: $00
    rst $38                                       ; $6019: $ff
    cp $ff                                        ; $601a: $fe $ff
    db $fc                                        ; $601c: $fc
    sub a                                         ; $601d: $97
    ld a, h                                       ; $601e: $7c
    rrca                                          ; $601f: $0f

jr_09b_6020:
    inc a                                         ; $6020: $3c
    ld [bc], a                                    ; $6021: $02
    daa                                           ; $6022: $27
    inc e                                         ; $6023: $1c
    cp $01                                        ; $6024: $fe $01
    rst $18                                       ; $6026: $df
    ld [hl+], a                                   ; $6027: $22
    sub b                                         ; $6028: $90
    nop                                           ; $6029: $00
    and b                                         ; $602a: $a0
    nop                                           ; $602b: $00
    cp $41                                        ; $602c: $fe $41
    ld a, a                                       ; $602e: $7f

jr_09b_602f:
    jr nz, jr_09b_602f                            ; $602f: $20 $fe

    ld de, $28df                                  ; $6031: $11 $df $28
    ld [$34fa], sp                                ; $6034: $08 $fa $34
    db $e4                                        ; $6037: $e4
    jr c, jr_09b_603e                             ; $6038: $38 $04

    ld c, b                                       ; $603a: $48
    rra                                           ; $603b: $1f
    inc l                                         ; $603c: $2c
    daa                                           ; $603d: $27

jr_09b_603e:
    ld b, b                                       ; $603e: $40
    inc e                                         ; $603f: $1c
    inc b                                         ; $6040: $04
    ld c, b                                       ; $6041: $48
    xor $05                                       ; $6042: $ee $05
    rst $10                                       ; $6044: $d7
    ld [hl+], a                                   ; $6045: $22
    cp [hl]                                       ; $6046: $be
    dec b                                         ; $6047: $05
    nop                                           ; $6048: $00
    ld d, l                                       ; $6049: $55
    ld a, [hl+]                                   ; $604a: $2a
    ei                                            ; $604b: $fb
    ld b, l                                       ; $604c: $45
    db $dd                                        ; $604d: $dd
    ld [hl+], a                                   ; $604e: $22
    cp [hl]                                       ; $604f: $be
    ld bc, $ff00                                  ; $6050: $01 $00 $ff
    nop                                           ; $6053: $00
    xor [hl]                                      ; $6054: $ae
    ld b, c                                       ; $6055: $41
    ld e, a                                       ; $6056: $5f
    and d                                         ; $6057: $a2
    xor [hl]                                      ; $6058: $ae

jr_09b_6059:
    ld d, h                                       ; $6059: $54
    nop                                           ; $605a: $00
    ld a, a                                       ; $605b: $7f
    and b                                         ; $605c: $a0
    ei                                            ; $605d: $fb
    ld b, h                                       ; $605e: $44
    rst $10                                       ; $605f: $d7
    jr z, jr_09b_6020                             ; $6060: $28 $be

    ld b, b                                       ; $6062: $40
    ld hl, $08d7                                  ; $6063: $21 $d7 $08
    ld b, b                                       ; $6066: $40
    jr jr_09b_6059                                ; $6067: $18 $f0

    ld e, h                                       ; $6069: $5c
    db $fd                                        ; $606a: $fd
    xor [hl]                                      ; $606b: $ae
    rst $20                                       ; $606c: $e7
    dec b                                         ; $606d: $05

jr_09b_606e:
    db $10                                        ; $606e: $10
    ld a, [bc]                                    ; $606f: $0a
    rst $38                                       ; $6070: $ff
    nop                                           ; $6071: $00
    ld b, b                                       ; $6072: $40
    ld [$2e17], sp                                ; $6073: $08 $17 $2e
    cpl                                           ; $6076: $2f
    dec e                                         ; $6077: $1d
    nop                                           ; $6078: $00
    cp a                                          ; $6079: $bf
    ld a, d                                       ; $607a: $7a
    rst $38                                       ; $607b: $ff
    ld d, h                                       ; $607c: $54
    rst $38                                       ; $607d: $ff
    xor b                                         ; $607e: $a8
    rst $38                                       ; $607f: $ff
    nop                                           ; $6080: $00
    jr nz, jr_09b_606e                            ; $6081: $20 $eb

    ld b, b                                       ; $6083: $40
    or d                                          ; $6084: $b2
    dec b                                         ; $6085: $05
    ld b, h                                       ; $6086: $44
    ld d, l                                       ; $6087: $55
    ld [$00ab], sp                                ; $6088: $08 $ab $00
    nop                                           ; $608b: $00
    push de                                       ; $608c: $d5
    add d                                         ; $608d: $82
    rst $38                                       ; $608e: $ff
    ld b, l                                       ; $608f: $45
    push af                                       ; $6090: $f5
    ld a, [hl+]                                   ; $6091: $2a
    rst $28                                       ; $6092: $ef

jr_09b_6093:
    inc d                                         ; $6093: $14
    ld b, b                                       ; $6094: $40
    ld d, a                                       ; $6095: $57
    ld d, b                                       ; $6096: $50
    nop                                           ; $6097: $00
    ld d, a                                       ; $6098: $57
    ld a, [hl+]                                   ; $6099: $2a
    ld [$5755], a                                 ; $609a: $ea $55 $57
    xor d                                         ; $609d: $aa
    ld b, $eb                                     ; $609e: $06 $eb
    inc d                                         ; $60a0: $14
    db $dd                                        ; $60a1: $dd
    ld a, [hl+]                                   ; $60a2: $2a

jr_09b_60a3:
    add b                                         ; $60a3: $80
    ld a, [bc]                                    ; $60a4: $0a
    inc de                                        ; $60a5: $13
    ld b, h                                       ; $60a6: $44
    dec sp                                        ; $60a7: $3b
    sub b                                         ; $60a8: $90
    rst $38                                       ; $60a9: $ff
    xor d                                         ; $60aa: $aa
    ld bc, $4b44                                  ; $60ab: $01 $44 $4b
    xor h                                         ; $60ae: $ac
    ld e, $09                                     ; $60af: $1e $09
    dec c                                         ; $60b1: $0d
    or [hl]                                       ; $60b2: $b6
    ld e, $2e                                     ; $60b3: $1e $2e
    dec de                                        ; $60b5: $1b
    inc h                                         ; $60b6: $24
    ld [$3b38], sp                                ; $60b7: $08 $38 $3b
    xor a                                         ; $60ba: $af
    add d                                         ; $60bb: $82
    dec sp                                        ; $60bc: $3b
    ld [bc], a                                    ; $60bd: $02
    ld a, $60                                     ; $60be: $3e $60
    and b                                         ; $60c0: $a0
    sbc h                                         ; $60c1: $9c
    ld d, e                                       ; $60c2: $53
    ld l, h                                       ; $60c3: $6c
    ld [$4b9c], sp                                ; $60c4: $08 $9c $4b
    ld l, h                                       ; $60c7: $6c
    ld [$8a23], sp                                ; $60c8: $08 $23 $8a
    inc b                                         ; $60cb: $04
    add b                                         ; $60cc: $80
    ld e, b                                       ; $60cd: $58
    ld [de], a                                    ; $60ce: $12
    nop                                           ; $60cf: $00
    ld [hl], h                                    ; $60d0: $74
    jp z, $a423                                   ; $60d1: $ca $23 $a4

    dec de                                        ; $60d4: $1b
    rst $38                                       ; $60d5: $ff
    xor d                                         ; $60d6: $aa
    dec de                                        ; $60d7: $1b
    db $e4                                        ; $60d8: $e4
    dec sp                                        ; $60d9: $3b
    sbc d                                         ; $60da: $9a

jr_09b_60db:
    dec sp                                        ; $60db: $3b
    and h                                         ; $60dc: $a4
    dec de                                        ; $60dd: $1b
    call nz, $340b                                ; $60de: $c4 $0b $34
    jr @+$0c                                      ; $60e1: $18 $0a

    jr jr_09b_60a3                                ; $60e3: $18 $be

    dec hl                                        ; $60e5: $2b
    ld [hl], h                                    ; $60e6: $74
    ldh a, [$c4]                                  ; $60e7: $f0 $c4
    inc bc                                        ; $60e9: $03
    ret z                                         ; $60ea: $c8

    dec bc                                        ; $60eb: $0b
    sbc $58                                       ; $60ec: $de $58
    ld a, [hl+]                                   ; $60ee: $2a
    ld e, [hl]                                    ; $60ef: $5e
    ldh [rHDMA4], a                               ; $60f0: $e0 $54
    jr nz, jr_09b_6093                            ; $60f2: $20 $9f

    ld e, [hl]                                    ; $60f4: $5e
    ld e, b                                       ; $60f5: $58
    inc b                                         ; $60f6: $04
    add hl, de                                    ; $60f7: $19
    inc a                                         ; $60f8: $3c
    ld c, h                                       ; $60f9: $4c
    xor h                                         ; $60fa: $ac
    ld [$4c3c], sp                                ; $60fb: $08 $3c $4c
    xor h                                         ; $60fe: $ac
    ld [$4c3c], sp                                ; $60ff: $08 $3c $4c
    cp $56                                        ; $6102: $fe $56
    inc c                                         ; $6104: $0c
    inc a                                         ; $6105: $3c
    ld c, h                                       ; $6106: $4c
    ld b, [hl]                                    ; $6107: $46
    inc c                                         ; $6108: $0c
    inc a                                         ; $6109: $3c
    ld c, c                                       ; $610a: $49
    ld c, a                                       ; $610b: $4f
    ld c, $3c                                     ; $610c: $0e $3c
    ld c, c                                       ; $610e: $49
    ld l, d                                       ; $610f: $6a
    add hl, bc                                    ; $6110: $09
    add e                                         ; $6111: $83
    add hl, bc                                    ; $6112: $09
    rst $38                                       ; $6113: $ff
    ret nz                                        ; $6114: $c0

    cp a                                          ; $6115: $bf
    add b                                         ; $6116: $80
    inc b                                         ; $6117: $04
    jr nc, jr_09b_60db                            ; $6118: $30 $c1

    cp a                                          ; $611a: $bf
    call z, $f248                                 ; $611b: $cc $48 $f2
    ld a, [bc]                                    ; $611e: $0a
    add hl, bc                                    ; $611f: $09
    call z, $9448                                 ; $6120: $cc $48 $94
    inc c                                         ; $6123: $0c
    ld l, h                                       ; $6124: $6c
    ld c, $a9                                     ; $6125: $0e $a9
    ld d, a                                       ; $6127: $57
    halt                                          ; $6128: $76
    ld c, $01                                     ; $6129: $0e $01
    adc l                                         ; $612b: $8d
    and h                                         ; $612c: $a4
    ld b, $ff                                     ; $612d: $06 $ff
    rst $38                                       ; $612f: $ff
    ld a, a                                       ; $6130: $7f
    ld l, [hl]                                    ; $6131: $6e
    ld d, $74                                     ; $6132: $16 $74
    ld c, $20                                     ; $6134: $0e $20
    inc [hl]                                      ; $6136: $34
    ld b, $06                                     ; $6137: $06 $06
    ld l, d                                       ; $6139: $6a
    add b                                         ; $613a: $80
    cp $01                                        ; $613b: $fe $01
    inc d                                         ; $613d: $14
    cp h                                          ; $613e: $bc
    dec d                                         ; $613f: $15
    and a                                         ; $6140: $a7
    ld c, $02                                     ; $6141: $0e $02
    nop                                           ; $6143: $00
    ld bc, HeaderLogo                             ; $6144: $01 $04 $01
    push de                                       ; $6147: $d5
    xor d                                         ; $6148: $aa
    adc e                                         ; $6149: $8b
    db $f4                                        ; $614a: $f4

Jump_09b_614b:
    add l                                         ; $614b: $85
    inc bc                                        ; $614c: $03
    ld a, [$f5ca]                                 ; $614d: $fa $ca $f5
    add c                                         ; $6150: $81
    cp $d0                                        ; $6151: $fe $d0
    rrca                                          ; $6153: $0f
    ld [bc], a                                    ; $6154: $02
    ret nc                                        ; $6155: $d0

    rlca                                          ; $6156: $07
    nop                                           ; $6157: $00
    xor e                                         ; $6158: $ab
    ld b, e                                       ; $6159: $43
    cp a                                          ; $615a: $bf
    pop hl                                        ; $615b: $e1
    rra                                           ; $615c: $1f
    di                                            ; $615d: $f3
    rrca                                          ; $615e: $0f
    ld d, c                                       ; $615f: $51
    ld a, [de]                                    ; $6160: $1a
    xor a                                         ; $6161: $af
    add hl, hl                                    ; $6162: $29
    rst $10                                       ; $6163: $d7
    ld [hl], c                                    ; $6164: $71
    rla                                           ; $6165: $17
    cp $16                                        ; $6166: $fe $16
    xor d                                         ; $6168: $aa
    dec bc                                        ; $6169: $0b
    rlca                                          ; $616a: $07
    xor d                                         ; $616b: $aa
    ret c                                         ; $616c: $d8

    pop af                                        ; $616d: $f1
    daa                                           ; $616e: $27
    ld de, $5507                                  ; $616f: $11 $07 $55
    dec c                                         ; $6172: $0d
    nop                                           ; $6173: $00
    inc b                                         ; $6174: $04
    ld [$ffff], sp                                ; $6175: $08 $ff $ff
    xor d                                         ; $6178: $aa
    ret nc                                        ; $6179: $d0

    ld d, $88                                     ; $617a: $16 $88
    dec c                                         ; $617c: $0d
    ld b, d                                       ; $617d: $42
    rst $38                                       ; $617e: $ff
    ld bc, $8360                                  ; $617f: $01 $60 $83
    rst $38                                       ; $6182: $ff
    pop bc                                        ; $6183: $c1
    cp a                                          ; $6184: $bf
    inc b                                         ; $6185: $04
    ld c, b                                       ; $6186: $48
    ld b, h                                       ; $6187: $44
    nop                                           ; $6188: $00
    rst $00                                       ; $6189: $c7
    add h                                         ; $618a: $84
    rst $00                                       ; $618b: $c7
    inc b                                         ; $618c: $04
    rst $00                                       ; $618d: $c7
    ld d, l                                       ; $618e: $55

jr_09b_618f:
    rst $38                                       ; $618f: $ff
    rst $38                                       ; $6190: $ff
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    ld d, l                                       ; $6193: $55
    xor d                                         ; $6194: $aa

jr_09b_6195:
    nop                                           ; $6195: $00
    rst $38                                       ; $6196: $ff
    push de                                       ; $6197: $d5
    rst $38                                       ; $6198: $ff
    ld sp, hl                                     ; $6199: $f9
    inc b                                         ; $619a: $04
    add hl, bc                                    ; $619b: $09
    ld hl, sp+$09                                 ; $619c: $f8 $09
    nop                                           ; $619e: $00
    ld sp, hl                                     ; $619f: $f9
    db $10                                        ; $61a0: $10
    jr z, jr_09b_61f8                             ; $61a1: $28 $55

    rst $38                                       ; $61a3: $ff
    inc c                                         ; $61a4: $0c
    ld d, [hl]                                    ; $61a5: $56
    db $fc                                        ; $61a6: $fc
    xor d                                         ; $61a7: $aa
    db $fc                                        ; $61a8: $fc
    ld [$1008], sp                                ; $61a9: $08 $08 $10
    jr z, jr_09b_618f                             ; $61ac: $28 $e1

    sub e                                         ; $61ae: $93
    ld [$93e2], sp                                ; $61af: $08 $e2 $93
    ldh [$93], a                                  ; $61b2: $e0 $93
    jr nz, jr_09b_61ee                            ; $61b4: $20 $38

    rst $38                                       ; $61b6: $ff
    rst $38                                       ; $61b7: $ff
    rrca                                          ; $61b8: $0f
    add b                                         ; $61b9: $80
    inc bc                                        ; $61ba: $03
    ld [$5909], sp                                ; $61bb: $08 $09 $59
    add hl, bc                                    ; $61be: $09
    adc c                                         ; $61bf: $89
    add hl, bc                                    ; $61c0: $09
    ld e, b                                       ; $61c1: $58

jr_09b_61c2:
    add hl, bc                                    ; $61c2: $09
    nop                                           ; $61c3: $00
    ld sp, hl                                     ; $61c4: $f9
    add hl, bc                                    ; $61c5: $09
    rst $38                                       ; $61c6: $ff
    rst $38                                       ; $61c7: $ff
    pop hl                                        ; $61c8: $e1
    cp $ef                                        ; $61c9: $fe $ef
    ldh a, [rP1]                                  ; $61cb: $f0 $00
    ld a, $e0                                     ; $61cd: $3e $e0
    pop hl                                        ; $61cf: $e1
    jr nc, jr_09b_61c2                            ; $61d0: $30 $f0

    jr nz, @-$1d                                  ; $61d2: $20 $e1

    jr nc, jr_09b_61d6                            ; $61d4: $30 $00

jr_09b_61d6:
    rst $28                                       ; $61d6: $ef
    jr nc, @+$01                                  ; $61d7: $30 $ff

    rst $38                                       ; $61d9: $ff
    rst $28                                       ; $61da: $ef
    adc a                                         ; $61db: $8f
    rst $18                                       ; $61dc: $df
    adc a                                         ; $61dd: $8f
    or d                                          ; $61de: $b2
    inc b                                         ; $61df: $04
    jr @-$24                                      ; $61e0: $18 $da

    ld [$9000], sp                                ; $61e2: $08 $00 $90
    nop                                           ; $61e5: $00
    db $fc                                        ; $61e6: $fc
    cp $02                                        ; $61e7: $fe $02
    jr nz, jr_09b_6195                            ; $61e9: $20 $aa

    add h                                         ; $61eb: $84
    ld a, [bc]                                    ; $61ec: $0a
    nop                                           ; $61ed: $00

jr_09b_61ee:
    ld d, l                                       ; $61ee: $55
    rst $38                                       ; $61ef: $ff
    xor d                                         ; $61f0: $aa
    rst $38                                       ; $61f1: $ff
    ld h, b                                       ; $61f2: $60
    ld c, b                                       ; $61f3: $48
    rst $38                                       ; $61f4: $ff
    rst $38                                       ; $61f5: $ff

jr_09b_61f6:
    dec bc                                        ; $61f6: $0b
    sbc a                                         ; $61f7: $9f

jr_09b_61f8:
    pop af                                        ; $61f8: $f1
    ld sp, hl                                     ; $61f9: $f9
    sub c                                         ; $61fa: $91
    ld [bc], a                                    ; $61fb: $02
    jr jr_09b_61f6                                ; $61fc: $18 $f8

    ld [$c000], sp                                ; $61fe: $08 $00 $c0
    ld [$1f00], sp                                ; $6201: $08 $00 $1f
    ccf                                           ; $6204: $3f

Call_09b_6205:
    cp a                                          ; $6205: $bf
    rra                                           ; $6206: $1f
    cp a                                          ; $6207: $bf
    rra                                           ; $6208: $1f
    rrca                                          ; $6209: $0f
    sbc a                                         ; $620a: $9f
    ld b, b                                       ; $620b: $40
    jp c, $004a                                   ; $620c: $da $4a $00

    rst $38                                       ; $620f: $ff
    rst $38                                       ; $6210: $ff
    rst $30                                       ; $6211: $f7
    rst $38                                       ; $6212: $ff
    db $eb                                        ; $6213: $eb

jr_09b_6214:
    rst $38                                       ; $6214: $ff
    db $10                                        ; $6215: $10
    rst $28                                       ; $6216: $ef
    di                                            ; $6217: $f3
    db $e3                                        ; $6218: $e3
    ld [bc], a                                    ; $6219: $02
    nop                                           ; $621a: $00
    ld [c], a                                     ; $621b: $e2
    sub e                                         ; $621c: $93
    db $e3                                        ; $621d: $e3
    sub e                                         ; $621e: $93
    ld c, b                                       ; $621f: $48
    rst $28                                       ; $6220: $ef
    ld h, h                                       ; $6221: $64
    nop                                           ; $6222: $00
    rst $28                                       ; $6223: $ef
    jr nc, jr_09b_61d6                            ; $6224: $30 $b0

    jr c, @-$29                                   ; $6226: $38 $d5

    adc a                                         ; $6228: $8f
    ld [$8f14], a                                 ; $6229: $ea $14 $8f
    ret nc                                        ; $622c: $d0

    adc a                                         ; $622d: $8f
    ret nz                                        ; $622e: $c0

    jr c, jr_09b_62aa                             ; $622f: $38 $79

    ld b, [hl]                                    ; $6231: $46
    nop                                           ; $6232: $00
    ld [$20f1], sp                                ; $6233: $08 $f1 $20
    ld e, c                                       ; $6236: $59
    pop af                                        ; $6237: $f1
    ret nc                                        ; $6238: $d0

    jr z, jr_09b_6240                             ; $6239: $28 $05

    rst $08                                       ; $623b: $cf
    xor d                                         ; $623c: $aa
    rst $08                                       ; $623d: $cf
    jr z, jr_09b_6214                             ; $623e: $28 $d4

jr_09b_6240:
    ldh a, [$30]                                  ; $6240: $f0 $30
    ret nz                                        ; $6242: $c0

    ld [$03c7], sp                                ; $6243: $08 $c7 $03
    nop                                           ; $6246: $00
    call nz, $0002                                ; $6247: $c4 $02 $00
    db $fc                                        ; $624a: $fc
    rst $00                                       ; $624b: $c7
    ld [$c7a4], sp                                ; $624c: $08 $a4 $c7
    db $f4                                        ; $624f: $f4
    rst $00                                       ; $6250: $c7
    db $10                                        ; $6251: $10
    ld e, c                                       ; $6252: $59
    ld d, l                                       ; $6253: $55
    rst $38                                       ; $6254: $ff
    ld c, d                                       ; $6255: $4a
    nop                                           ; $6256: $00
    or b                                          ; $6257: $b0
    dec hl                                        ; $6258: $2b
    ret nc                                        ; $6259: $d0

    ld c, $f0                                     ; $625a: $0e $f0
    db $db                                        ; $625c: $db
    nop                                           ; $625d: $00
    db $ed                                        ; $625e: $ed
    nop                                           ; $625f: $00
    nop                                           ; $6260: $00
    cp [hl]                                       ; $6261: $be
    nop                                           ; $6262: $00
    db $eb                                        ; $6263: $eb
    nop                                           ; $6264: $00
    cp l                                          ; $6265: $bd
    nop                                           ; $6266: $00
    db $dd                                        ; $6267: $dd
    nop                                           ; $6268: $00
    ldh a, [$ba]                                  ; $6269: $f0 $ba
    ldh a, [$fe]                                  ; $626b: $f0 $fe
    ldh a, [rNR33]                                ; $626d: $f0 $1d
    ldh [rWY], a                                  ; $626f: $e0 $4a
    ld b, b                                       ; $6271: $40
    or b                                          ; $6272: $b0
    inc b                                         ; $6273: $04
    ld [$d02f], sp                                ; $6274: $08 $2f $d0
    ld a, [c]                                     ; $6277: $f2
    db $fd                                        ; $6278: $fd
    ldh a, [rIE]                                  ; $6279: $f0 $ff
    nop                                           ; $627b: $00
    db $f4                                        ; $627c: $f4
    dec bc                                        ; $627d: $0b
    and b                                         ; $627e: $a0
    rrca                                          ; $627f: $0f
    pop de                                        ; $6280: $d1
    ld c, $b4                                     ; $6281: $0e $b4
    dec bc                                        ; $6283: $0b
    nop                                           ; $6284: $00
    jp nc, $b50d                                  ; $6285: $d2 $0d $b5

    ld a, [bc]                                    ; $6288: $0a
    cp e                                          ; $6289: $bb
    rrca                                          ; $628a: $0f
    rst $28                                       ; $628b: $ef
    rrca                                          ; $628c: $0f
    db $10                                        ; $628d: $10
    cp l                                          ; $628e: $bd
    rrca                                          ; $628f: $0f
    db $eb                                        ; $6290: $eb
    inc b                                         ; $6291: $04
    nop                                           ; $6292: $00
    cp [hl]                                       ; $6293: $be
    rrca                                          ; $6294: $0f
    jp c, Jump_000_000f                           ; $6295: $da $0f $00

    xor e                                         ; $6298: $ab
    rrca                                          ; $6299: $0f
    xor d                                         ; $629a: $aa
    nop                                           ; $629b: $00
    rst $18                                       ; $629c: $df
    nop                                           ; $629d: $00
    and b                                         ; $629e: $a0
    rrca                                          ; $629f: $0f
    ld b, b                                       ; $62a0: $40
    pop hl                                        ; $62a1: $e1
    ld e, $10                                     ; $62a2: $1e $10
    ldh a, [rIE]                                  ; $62a4: $f0 $ff
    jp nc, Jump_09b_4dfd                          ; $62a6: $d2 $fd $4d

    or b                                          ; $62a9: $b0

jr_09b_62aa:
    add b                                         ; $62aa: $80
    ld a, [hl-]                                   ; $62ab: $3a
    ld [$f00b], sp                                ; $62ac: $08 $0b $f0
    ld e, a                                       ; $62af: $5f
    and b                                         ; $62b0: $a0
    ld a, [hl+]                                   ; $62b1: $2a
    ret nc                                        ; $62b2: $d0

    dec c                                         ; $62b3: $0d
    nop                                           ; $62b4: $00
    ldh a, [$5d]                                  ; $62b5: $f0 $5d
    and b                                         ; $62b7: $a0
    and h                                         ; $62b8: $a4
    dec bc                                        ; $62b9: $0b
    ldh a, [rIF]                                  ; $62ba: $f0 $0f
    and b                                         ; $62bc: $a0
    nop                                           ; $62bd: $00
    rrca                                          ; $62be: $0f
    ld [c], a                                     ; $62bf: $e2
    dec c                                         ; $62c0: $0d
    and b                                         ; $62c1: $a0
    rrca                                          ; $62c2: $0f
    call nc, $e20b                                ; $62c3: $d4 $0b $e2
    nop                                           ; $62c6: $00
    dec c                                         ; $62c7: $0d
    or b                                          ; $62c8: $b0
    rrca                                          ; $62c9: $0f
    rst $18                                       ; $62ca: $df
    rrca                                          ; $62cb: $0f
    ld [$ad0f], a                                 ; $62cc: $ea $0f $ad
    add b                                         ; $62cf: $80
    ld a, [hl-]                                   ; $62d0: $3a
    nop                                           ; $62d1: $00
    rst $38                                       ; $62d2: $ff
    rrca                                          ; $62d3: $0f
    db $dd                                        ; $62d4: $dd
    rrca                                          ; $62d5: $0f
    ei                                            ; $62d6: $fb
    rrca                                          ; $62d7: $0f
    dec c                                         ; $62d8: $0d
    nop                                           ; $62d9: $00
    rst $38                                       ; $62da: $ff
    or l                                          ; $62db: $b5
    ld a, [$fda2]                                 ; $62dc: $fa $a2 $fd
    jp nc, $a4fd                                  ; $62df: $d2 $fd $a4

    nop                                           ; $62e2: $00
    ei                                            ; $62e3: $fb
    pop af                                        ; $62e4: $f1
    cp $d2                                        ; $62e5: $fe $d2
    db $fd                                        ; $62e7: $fd
    ret nc                                        ; $62e8: $d0

    rst $38                                       ; $62e9: $ff
    ld [c], a                                     ; $62ea: $e2
    nop                                           ; $62eb: $00
    db $fd                                        ; $62ec: $fd
    cpl                                           ; $62ed: $2f
    ret nc                                        ; $62ee: $d0

    ld e, d                                       ; $62ef: $5a
    and b                                         ; $62f0: $a0
    dec l                                         ; $62f1: $2d
    ret nc                                        ; $62f2: $d0

    dec bc                                        ; $62f3: $0b
    ld hl, $2ef0                                  ; $62f4: $21 $f0 $2e
    ld a, $00                                     ; $62f7: $3e $00
    rst $38                                       ; $62f9: $ff
    ldh a, [$fa]                                  ; $62fa: $f0 $fa
    ldh a, [rLCDC]                                ; $62fc: $f0 $40
    ld [$bb40], sp                                ; $62fe: $08 $40 $bb
    ld [hl], $00                                  ; $6301: $36 $00
    cp d                                          ; $6303: $ba
    rrca                                          ; $6304: $0f
    db $fd                                        ; $6305: $fd
    rrca                                          ; $6306: $0f
    cp a                                          ; $6307: $bf
    rst $38                                       ; $6308: $ff
    nop                                           ; $6309: $00
    sbc $ff                                       ; $630a: $de $ff
    dec hl                                        ; $630c: $2b
    rst $18                                       ; $630d: $df
    ld e, a                                       ; $630e: $5f
    xor a                                         ; $630f: $af
    cpl                                           ; $6310: $2f
    ret nc                                        ; $6311: $d0

    ld d, b                                       ; $6312: $50
    ld c, e                                       ; $6313: $4b
    sbc d                                         ; $6314: $9a
    nop                                           ; $6315: $00
    ld c, e                                       ; $6316: $4b
    and d                                         ; $6317: $a2
    nop                                           ; $6318: $00
    dec hl                                        ; $6319: $2b
    ret nc                                        ; $631a: $d0

    ld c, e                                       ; $631b: $4b
    cp a                                          ; $631c: $bf
    nop                                           ; $631d: $00
    add hl, hl                                    ; $631e: $29
    rst $18                                       ; $631f: $df
    ld c, e                                       ; $6320: $4b
    cp a                                          ; $6321: $bf
    dec c                                         ; $6322: $0d
    rst $38                                       ; $6323: $ff
    ei                                            ; $6324: $fb
    rst $38                                       ; $6325: $ff
    db $10                                        ; $6326: $10
    db $dd                                        ; $6327: $dd
    rst $38                                       ; $6328: $ff
    cp a                                          ; $6329: $bf
    inc b                                         ; $632a: $04
    nop                                           ; $632b: $00
    ld [de], a                                    ; $632c: $12
    db $ed                                        ; $632d: $ed
    ld b, h                                       ; $632e: $44
    cp e                                          ; $632f: $bb
    inc b                                         ; $6330: $04
    inc d                                         ; $6331: $14
    db $eb                                        ; $6332: $eb
    ld b, d                                       ; $6333: $42
    cp l                                          ; $6334: $bd
    or h                                          ; $6335: $b4
    ld l, [hl]                                    ; $6336: $6e
    nop                                           ; $6337: $00
    ret nc                                        ; $6338: $d0

    rrca                                          ; $6339: $0f
    inc b                                         ; $633a: $04
    or b                                          ; $633b: $b0
    rrca                                          ; $633c: $0f
    cp d                                          ; $633d: $ba
    nop                                           ; $633e: $00
    db $db                                        ; $633f: $db
    jp c, $ad00                                   ; $6340: $da $00 $ad

    nop                                           ; $6343: $00
    db $10                                        ; $6344: $10
    jp c, $af00                                   ; $6345: $da $00 $af

    inc b                                         ; $6348: $04
    nop                                           ; $6349: $00
    rst $28                                       ; $634a: $ef
    nop                                           ; $634b: $00
    ldh a, [rIE]                                  ; $634c: $f0 $ff
    nop                                           ; $634e: $00
    or h                                          ; $634f: $b4
    ei                                            ; $6350: $fb
    jp nc, $b4fd                                  ; $6351: $d2 $fd $b4

    ei                                            ; $6354: $fb
    push af                                       ; $6355: $f5
    ld a, [$d000]                                 ; $6356: $fa $00 $d0
    rst $38                                       ; $6359: $ff
    or d                                          ; $635a: $b2
    db $fd                                        ; $635b: $fd
    or b                                          ; $635c: $b0
    rst $38                                       ; $635d: $ff
    jp nc, Jump_09b_540d                          ; $635e: $d2 $0d $54

    call nc, Call_000_00a2                        ; $6361: $d4 $a2 $00
    xor e                                         ; $6364: $ab
    sub b                                         ; $6365: $90
    nop                                           ; $6366: $00
    xor e                                         ; $6367: $ab
    sub d                                         ; $6368: $92
    nop                                           ; $6369: $00
    xor a                                         ; $636a: $af
    rrca                                          ; $636b: $0f
    ld bc, $f0dd                                  ; $636c: $01 $dd $f0
    db $fd                                        ; $636f: $fd
    ldh a, [$de]                                  ; $6370: $f0 $de

jr_09b_6372:
    ldh a, [$bb]                                  ; $6372: $f0 $bb
    ld a, d                                       ; $6374: $7a
    nop                                           ; $6375: $00
    ld d, b                                       ; $6376: $50
    db $dd                                        ; $6377: $dd
    ld [$f501], sp                                ; $6378: $08 $01 $f5
    ld b, $00                                     ; $637b: $06 $00
    ei                                            ; $637d: $fb
    ldh a, [$bd]                                  ; $637e: $f0 $bd
    ldh a, [rNR11]                                ; $6380: $f0 $11
    db $db                                        ; $6382: $db
    ldh a, [$be]                                  ; $6383: $f0 $be
    db $10                                        ; $6385: $10
    db $10                                        ; $6386: $10
    add hl, bc                                    ; $6387: $09
    ldh a, [$df]                                  ; $6388: $f0 $df
    cp [hl]                                       ; $638a: $be
    nop                                           ; $638b: $00
    ld b, h                                       ; $638c: $44
    db $db                                        ; $638d: $db
    cp h                                          ; $638e: $bc
    nop                                           ; $638f: $00
    cp e                                          ; $6390: $bb
    rrca                                          ; $6391: $0f
    db $ed                                        ; $6392: $ed
    sbc b                                         ; $6393: $98
    nop                                           ; $6394: $00
    rst $28                                       ; $6395: $ef
    rrca                                          ; $6396: $0f
    ld b, d                                       ; $6397: $42
    xor e                                         ; $6398: $ab
    ld l, $01                                     ; $6399: $2e $01
    cp l                                          ; $639b: $bd
    ldh a, [$f0]                                  ; $639c: $f0 $f0
    rst $38                                       ; $639e: $ff
    ld c, [hl]                                    ; $639f: $4e
    ld [$02b4], sp                                ; $63a0: $08 $b4 $02
    ei                                            ; $63a3: $fb
    ld a, [c]                                     ; $63a4: $f2
    db $fd                                        ; $63a5: $fd
    rst $38                                       ; $63a6: $ff
    rst $38                                       ; $63a7: $ff
    add b                                         ; $63a8: $80
    ld [bc], a                                    ; $63a9: $02
    nop                                           ; $63aa: $00
    ret nz                                        ; $63ab: $c0

    ld c, b                                       ; $63ac: $48
    cp a                                          ; $63ad: $bf
    inc b                                         ; $63ae: $04
    jr jr_09b_6372                                ; $63af: $18 $c1

    cp a                                          ; $63b1: $bf
    ld a, c                                       ; $63b2: $79
    ld [bc], a                                    ; $63b3: $02
    rst $38                                       ; $63b4: $ff
    xor d                                         ; $63b5: $aa
    ld d, l                                       ; $63b6: $55
    ld [hl], b                                    ; $63b7: $70
    nop                                           ; $63b8: $00
    inc b                                         ; $63b9: $04
    ld [bc], a                                    ; $63ba: $02
    ld [$a000], sp                                ; $63bb: $08 $00 $a0
    ld [de], a                                    ; $63be: $12
    ld b, c                                       ; $63bf: $41
    cp a                                          ; $63c0: $bf
    add e                                         ; $63c1: $83
    ld a, a                                       ; $63c2: $7f
    ld bc, $ff01                                  ; $63c3: $01 $01 $ff
    inc bc                                        ; $63c6: $03
    rst $38                                       ; $63c7: $ff
    ld bc, $abff                                  ; $63c8: $01 $ff $ab
    cp l                                          ; $63cb: $bd
    ld [bc], a                                    ; $63cc: $02
    nop                                           ; $63cd: $00
    ld [$fd15], a                                 ; $63ce: $ea $15 $fd
    ld [bc], a                                    ; $63d1: $02
    ld a, $c1                                     ; $63d2: $3e $c1
    rlca                                          ; $63d4: $07
    jr jr_09b_63d7                                ; $63d5: $18 $00

jr_09b_63d7:
    ccf                                           ; $63d7: $3f
    ret nz                                        ; $63d8: $c0

    rst $38                                       ; $63d9: $ff
    nop                                           ; $63da: $00
    ccf                                           ; $63db: $3f
    ret nz                                        ; $63dc: $c0

    rlca                                          ; $63dd: $07
    jr jr_09b_63e0                                ; $63de: $18 $00

jr_09b_63e0:
    sub a                                         ; $63e0: $97
    add sp, -$51                                  ; $63e1: $e8 $af
    ret nc                                        ; $63e3: $d0

    sbc a                                         ; $63e4: $9f
    ldh [$b8], a                                  ; $63e5: $e0 $b8
    add $00                                       ; $63e7: $c6 $00
    sbc a                                         ; $63e9: $9f
    ldh [$3f], a                                  ; $63ea: $e0 $3f
    ret nz                                        ; $63ec: $c0

    sbc a                                         ; $63ed: $9f
    ldh [$28], a                                  ; $63ee: $e0 $28
    sub $08                                       ; $63f0: $d6 $08
    jp $d7ff                                      ; $63f2: $c3 $ff $d7


    rst $28                                       ; $63f5: $ef
    inc b                                         ; $63f6: $04
    ld c, b                                       ; $63f7: $48
    ld a, $c1                                     ; $63f8: $3e $c1
    rst $38                                       ; $63fa: $ff
    nop                                           ; $63fb: $00
    nop                                           ; $63fc: $00
    ld a, [$bd05]                                 ; $63fd: $fa $05 $bd
    ld b, d                                       ; $6400: $42
    ld e, [hl]                                    ; $6401: $5e
    and c                                         ; $6402: $a1
    sbc l                                         ; $6403: $9d
    inc b                                         ; $6404: $04
    ld b, d                                       ; $6405: $42
    sbc $01                                       ; $6406: $de $01
    sbc a                                         ; $6408: $9f
    ld b, b                                       ; $6409: $40
    jr z, jr_09b_6424                             ; $640a: $28 $18

    ccf                                           ; $640c: $3f
    ret nz                                        ; $640d: $c0

    nop                                           ; $640e: $00
    cp a                                          ; $640f: $bf
    ret nz                                        ; $6410: $c0

    ld a, $c1                                     ; $6411: $3e $c1
    cp [hl]                                       ; $6413: $be
    ret nz                                        ; $6414: $c0

    ld a, $c0                                     ; $6415: $3e $c0
    inc b                                         ; $6417: $04
    sbc $21                                       ; $6418: $de $21
    xor a                                         ; $641a: $af
    ld b, b                                       ; $641b: $40
    rst $08                                       ; $641c: $cf
    db $ec                                        ; $641d: $ec
    nop                                           ; $641e: $00
    rst $18                                       ; $641f: $df
    nop                                           ; $6420: $00
    ld [bc], a                                    ; $6421: $02
    cp a                                          ; $6422: $bf
    nop                                           ; $6423: $00

jr_09b_6424:
    ld a, a                                       ; $6424: $7f
    add b                                         ; $6425: $80
    ld a, a                                       ; $6426: $7f
    add b                                         ; $6427: $80
    inc d                                         ; $6428: $14
    ld [$409e], sp                                ; $6429: $08 $9e $40
    ldh [rDIV], a                                 ; $642c: $e0 $04
    ld [$d0ae], sp                                ; $642e: $08 $ae $d0
    sub [hl]                                      ; $6431: $96
    add sp, -$52                                  ; $6432: $e8 $ae
    ret nc                                        ; $6434: $d0

    nop                                           ; $6435: $00
    jp nc, $e5fd                                  ; $6436: $d2 $fd $e5

    ld a, [$fdd2]                                 ; $6439: $fa $d2 $fd
    and b                                         ; $643c: $a0
    rst $38                                       ; $643d: $ff
    add h                                         ; $643e: $84
    and $08                                       ; $643f: $e6 $08
    ei                                            ; $6441: $fb
    ldh a, [$4e]                                  ; $6442: $f0 $4e
    or b                                          ; $6444: $b0
    ld c, $09                                     ; $6445: $0e $09
    and l                                         ; $6447: $a5
    ld a, [$b410]                                 ; $6448: $fa $10 $b4
    ei                                            ; $644b: $fb
    pop hl                                        ; $644c: $e1
    add b                                         ; $644d: $80
    ld bc, $faa5                                  ; $644e: $01 $a5 $fa
    ld a, [c]                                     ; $6451: $f2
    db $fd                                        ; $6452: $fd
    db $10                                        ; $6453: $10
    db $ed                                        ; $6454: $ed
    rst $38                                       ; $6455: $ff
    cp d                                          ; $6456: $ba
    ld c, d                                       ; $6457: $4a
    ld bc, $ffaa                                  ; $6458: $01 $aa $ff
    cp l                                          ; $645b: $bd
    rst $38                                       ; $645c: $ff
    db $10                                        ; $645d: $10
    db $db                                        ; $645e: $db
    rst $38                                       ; $645f: $ff
    xor $54                                       ; $6460: $ee $54
    ld bc, $b04b                                  ; $6462: $01 $4b $b0
    rra                                           ; $6465: $1f
    ldh [rNR10], a                                ; $6466: $e0 $10
    ld c, l                                       ; $6468: $4d
    or b                                          ; $6469: $b0
    ld c, l                                       ; $646a: $4d
    ld h, $02                                     ; $646b: $26 $02
    dec c                                         ; $646d: $0d
    ldh a, [$2f]                                  ; $646e: $f0 $2f
    ret nc                                        ; $6470: $d0

    inc b                                         ; $6471: $04
    ei                                            ; $6472: $fb
    ldh a, [$2b]                                  ; $6473: $f0 $2b
    ret nc                                        ; $6475: $d0

    ld a, [bc]                                    ; $6476: $0a
    sub $01                                       ; $6477: $d6 $01
    ld a, [hl+]                                   ; $6479: $2a
    ret nc                                        ; $647a: $d0

    nop                                           ; $647b: $00
    ld e, [hl]                                    ; $647c: $5e
    and b                                         ; $647d: $a0
    dec de                                        ; $647e: $1b
    ldh [$2d], a                                  ; $647f: $e0 $2d
    ret nc                                        ; $6481: $d0

    ld a, [de]                                    ; $6482: $1a
    ldh [rP1], a                                  ; $6483: $e0 $00
    ret nc                                        ; $6485: $d0

    rst $38                                       ; $6486: $ff
    and d                                         ; $6487: $a2
    db $fd                                        ; $6488: $fd
    call nc, $e0fb                                ; $6489: $d4 $fb $e0
    rst $38                                       ; $648c: $ff
    dec b                                         ; $648d: $05
    cp a                                          ; $648e: $bf
    ldh a, [$da]                                  ; $648f: $f0 $da
    ldh a, [$ad]                                  ; $6491: $f0 $ad
    ld a, [hl-]                                   ; $6493: $3a
    ld [bc], a                                    ; $6494: $02
    rst $28                                       ; $6495: $ef
    adc b                                         ; $6496: $88
    ld bc, $db40                                  ; $6497: $01 $40 $db
    adc d                                         ; $649a: $8a
    ld bc, $ffed                                  ; $649b: $01 $ed $ff
    rst $18                                       ; $649e: $df
    rst $38                                       ; $649f: $ff
    pop af                                        ; $64a0: $f1
    cp $04                                        ; $64a1: $fe $04
    db $e4                                        ; $64a3: $e4
    ei                                            ; $64a4: $fb
    xor a                                         ; $64a5: $af
    ldh a, [$fd]                                  ; $64a6: $f0 $fd
    add sp, $00                                   ; $64a8: $e8 $00
    sbc $ff                                       ; $64aa: $de $ff
    ld d, b                                       ; $64ac: $50
    cp e                                          ; $64ad: $bb
    and b                                         ; $64ae: $a0
    ld bc, $54fd                                  ; $64af: $01 $fd $54
    nop                                           ; $64b2: $00
    ld c, l                                       ; $64b3: $4d
    or b                                          ; $64b4: $b0
    ld a, [hl+]                                   ; $64b5: $2a
    ret nc                                        ; $64b6: $d0

    ld bc, $b04d                                  ; $64b7: $01 $4d $b0
    ld c, e                                       ; $64ba: $4b
    or b                                          ; $64bb: $b0
    ld c, $f0                                     ; $64bc: $0e $f0
    add hl, hl                                    ; $64be: $29
    ld [$1000], sp                                ; $64bf: $08 $00 $10
    ld l, $d0                                     ; $64c2: $2e $d0
    xor l                                         ; $64c4: $ad
    ld a, [bc]                                    ; $64c5: $0a
    ld [bc], a                                    ; $64c6: $02
    pop de                                        ; $64c7: $d1
    ld c, $c4                                     ; $64c8: $0e $c4
    dec bc                                        ; $64ca: $0b
    nop                                           ; $64cb: $00
    ld a, [c]                                     ; $64cc: $f2
    dec c                                         ; $64cd: $0d
    push de                                       ; $64ce: $d5
    ld a, [bc]                                    ; $64cf: $0a
    inc b                                         ; $64d0: $04
    ei                                            ; $64d1: $fb
    ld d, b                                       ; $64d2: $50
    xor a                                         ; $64d3: $af
    ld bc, $0fd0                                  ; $64d4: $01 $d0 $0f
    ld a, [c]                                     ; $64d7: $f2
    dec c                                         ; $64d8: $0d
    pop af                                        ; $64d9: $f1
    ld c, $d4                                     ; $64da: $0e $d4
    stop                                          ; $64dc: $10 $00
    nop                                           ; $64de: $00
    or l                                          ; $64df: $b5
    ld a, [bc]                                    ; $64e0: $0a
    or d                                          ; $64e1: $b2
    dec c                                         ; $64e2: $0d
    and d                                         ; $64e3: $a2
    dec c                                         ; $64e4: $0d
    ld e, e                                       ; $64e5: $5b
    and b                                         ; $64e6: $a0
    ld b, b                                       ; $64e7: $40
    cpl                                           ; $64e8: $2f
    and b                                         ; $64e9: $a0
    ld [bc], a                                    ; $64ea: $02
    dec hl                                        ; $64eb: $2b
    ret nc                                        ; $64ec: $d0

    ld c, d                                       ; $64ed: $4a
    or b                                          ; $64ee: $b0
    rrca                                          ; $64ef: $0f
    ldh a, [rNR10]                                ; $64f0: $f0 $10
    dec l                                         ; $64f2: $2d
    rst $18                                       ; $64f3: $df
    dec bc                                        ; $64f4: $0b
    ld c, h                                       ; $64f5: $4c
    inc bc                                        ; $64f6: $03
    ld h, d                                       ; $64f7: $62
    sbc l                                         ; $64f8: $9d
    nop                                           ; $64f9: $00
    rst $38                                       ; $64fa: $ff
    nop                                           ; $64fb: $00
    inc b                                         ; $64fc: $04
    ei                                            ; $64fd: $fb
    ld [hl+], a                                   ; $64fe: $22
    db $dd                                        ; $64ff: $dd
    nop                                           ; $6500: $00
    rst $38                                       ; $6501: $ff
    ld b, h                                       ; $6502: $44

jr_09b_6503:
    cp e                                          ; $6503: $bb
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    rst $38                                       ; $6506: $ff
    push af                                       ; $6507: $f5
    ld a, [bc]                                    ; $6508: $0a
    and b                                         ; $6509: $a0
    rrca                                          ; $650a: $0f
    push de                                       ; $650b: $d5
    ld a, [bc]                                    ; $650c: $0a
    jr nz, jr_09b_6503                            ; $650d: $20 $f4

    dec bc                                        ; $650f: $0b
    jr c, jr_09b_651a                             ; $6510: $38 $08

    xor [hl]                                      ; $6512: $ae
    nop                                           ; $6513: $00
    db $dd                                        ; $6514: $dd
    nop                                           ; $6515: $00
    ei                                            ; $6516: $fb
    nop                                           ; $6517: $00
    inc b                                         ; $6518: $04
    db $fd                                        ; $6519: $fd

jr_09b_651a:
    ld [bc], a                                    ; $651a: $02
    cp $01                                        ; $651b: $fe $01
    rrca                                          ; $651d: $0f
    sub b                                         ; $651e: $90
    ld h, [hl]                                    ; $651f: $66
    nop                                           ; $6520: $00
    sbc c                                         ; $6521: $99
    ld e, a                                       ; $6522: $5f
    and b                                         ; $6523: $a0
    sbc [hl]                                      ; $6524: $9e
    ld b, c                                       ; $6525: $41
    sbc a                                         ; $6526: $9f
    jr nz, @-$67                                  ; $6527: $20 $97

    ld [bc], a                                    ; $6529: $02
    add sp, -$45                                  ; $652a: $e8 $bb
    call nz, $c1be                                ; $652c: $c4 $be $c1
    cp a                                          ; $652f: $bf
    jr nz, jr_09b_6533                            ; $6530: $20 $01

    cp [hl]                                       ; $6532: $be

jr_09b_6533:
    nop                                           ; $6533: $00
    pop bc                                        ; $6534: $c1
    cp l                                          ; $6535: $bd
    jp nz, $c4bb                                  ; $6536: $c2 $bb $c4

    cp a                                          ; $6539: $bf
    nop                                           ; $653a: $00
    ccf                                           ; $653b: $3f
    nop                                           ; $653c: $00
    ld b, b                                       ; $653d: $40
    db $dd                                        ; $653e: $dd
    ld [bc], a                                    ; $653f: $02
    ld c, [hl]                                    ; $6540: $4e
    sub c                                         ; $6541: $91
    xor l                                         ; $6542: $ad
    ld d, d                                       ; $6543: $52
    ld a, [$0500]                                 ; $6544: $fa $00 $05
    ld [hl], l                                    ; $6547: $75
    adc d                                         ; $6548: $8a
    xor d                                         ; $6549: $aa
    rst $38                                       ; $654a: $ff
    cp e                                          ; $654b: $bb
    ret nz                                        ; $654c: $c0

    cp e                                          ; $654d: $bb
    nop                                           ; $654e: $00
    ret nz                                        ; $654f: $c0

    sbc b                                         ; $6550: $98
    push hl                                       ; $6551: $e5
    cp d                                          ; $6552: $ba
    call nz, $e29d                                ; $6553: $c4 $9d $e2
    xor a                                         ; $6556: $af
    rla                                           ; $6557: $17
    ret nc                                        ; $6558: $d0

    sub l                                         ; $6559: $95
    ld [$01a2], a                                 ; $655a: $ea $a2 $01
    rla                                           ; $655d: $17
    or c                                          ; $655e: $b1
    inc bc                                        ; $655f: $03
    inc b                                         ; $6560: $04
    ld c, b                                       ; $6561: $48
    ld h, c                                       ; $6562: $61
    ld b, h                                       ; $6563: $44
    add $c0                                       ; $6564: $c6 $c0
    add hl, bc                                    ; $6566: $09
    jr nc, jr_09b_65a4                            ; $6567: $30 $3b

    or b                                          ; $6569: $b0
    rrca                                          ; $656a: $0f
    ldh [$60], a                                  ; $656b: $e0 $60
    ld [bc], a                                    ; $656d: $02
    jr nc, jr_09b_65bb                            ; $656e: $30 $4b

    ld b, b                                       ; $6570: $40
    ld [$20bf], sp                                ; $6571: $08 $bf $20
    rst $18                                       ; $6574: $df
    nop                                           ; $6575: $00
    ld bc, $0100                                  ; $6576: $01 $00 $01
    ld bc, $0002                                  ; $6579: $01 $02 $00
    inc bc                                        ; $657c: $03
    dec b                                         ; $657d: $05
    ld b, $0b                                     ; $657e: $06 $0b
    inc c                                         ; $6580: $0c
    dec d                                         ; $6581: $15
    ld a, [de]                                    ; $6582: $1a
    ld [bc], a                                    ; $6583: $02
    nop                                           ; $6584: $00
    dec e                                         ; $6585: $1d
    nop                                           ; $6586: $00
    rrca                                          ; $6587: $0f
    dec c                                         ; $6588: $0d
    ld [hl], d                                    ; $6589: $72
    ld a, a                                       ; $658a: $7f
    add b                                         ; $658b: $80
    cp l                                          ; $658c: $bd
    nop                                           ; $658d: $00
    ld b, d                                       ; $658e: $42
    cp a                                          ; $658f: $bf
    ld b, b                                       ; $6590: $40
    db $dd                                        ; $6591: $dd
    ld [hl+], a                                   ; $6592: $22
    add sp, $17                                   ; $6593: $e8 $17
    cp a                                          ; $6595: $bf
    ld b, b                                       ; $6596: $40
    ld a, a                                       ; $6597: $7f
    ld d, b                                       ; $6598: $50
    dec bc                                        ; $6599: $0b
    inc b                                         ; $659a: $04
    ei                                            ; $659b: $fb
    nop                                           ; $659c: $00
    rst $38                                       ; $659d: $ff
    ld bc, $02fe                                  ; $659e: $01 $fe $02
    inc b                                         ; $65a1: $04
    ei                                            ; $65a2: $fb
    ld [bc], a                                    ; $65a3: $02

jr_09b_65a4:
    db $fd                                        ; $65a4: $fd
    dec b                                         ; $65a5: $05
    ld a, [$4b50]                                 ; $65a6: $fa $50 $4b
    ld a, [bc]                                    ; $65a9: $0a
    ld b, b                                       ; $65aa: $40
    rst $38                                       ; $65ab: $ff
    ldh [rP1], a                                  ; $65ac: $e0 $00
    ldh a, [$b0]                                  ; $65ae: $f0 $b0
    ld c, [hl]                                    ; $65b0: $4e
    cp $01                                        ; $65b1: $fe $01
    cp l                                          ; $65b3: $bd
    nop                                           ; $65b4: $00
    ld b, d                                       ; $65b5: $42
    push de                                       ; $65b6: $d5
    ld a, [hl+]                                   ; $65b7: $2a
    xor e                                         ; $65b8: $ab
    ld d, h                                       ; $65b9: $54
    rla                                           ; $65ba: $17

jr_09b_65bb:
    add sp, -$03                                  ; $65bb: $e8 $fd
    nop                                           ; $65bd: $00
    cp $27                                        ; $65be: $fe $27
    jr c, jr_09b_65d1                             ; $65c0: $38 $0f

    ld sp, $3b24                                  ; $65c2: $31 $24 $3b
    ld c, [hl]                                    ; $65c5: $4e
    nop                                           ; $65c6: $00
    ld [hl], e                                    ; $65c7: $73
    ld l, [hl]                                    ; $65c8: $6e
    ld [hl], e                                    ; $65c9: $73
    ld c, [hl]                                    ; $65ca: $4e
    ld [hl], e                                    ; $65cb: $73
    ld c, $73                                     ; $65cc: $0e $73
    ld c, l                                       ; $65ce: $4d
    nop                                           ; $65cf: $00
    ld [hl], e                                    ; $65d0: $73

jr_09b_65d1:
    set 6, h                                      ; $65d1: $cb $f4
    ld [hl], l                                    ; $65d3: $75
    adc d                                         ; $65d4: $8a
    cp $01                                        ; $65d5: $fe $01
    rst $38                                       ; $65d7: $ff
    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    db $ed                                        ; $65da: $ed
    ld e, [hl]                                    ; $65db: $5e
    cp $33                                        ; $65dc: $fe $33
    cp $0f                                        ; $65de: $fe $0f
    ld a, a                                       ; $65e0: $7f
    nop                                           ; $65e1: $00
    add d                                         ; $65e2: $82
    sbc a                                         ; $65e3: $9f
    pop hl                                        ; $65e4: $e1
    adc $f1                                       ; $65e5: $ce $f1
    sbc a                                         ; $65e7: $9f
    ldh [$ce], a                                  ; $65e8: $e0 $ce
    ld [$fdf1], sp                                ; $65ea: $08 $f1 $fd
    ld [c], a                                     ; $65ed: $e2
    ld hl, sp+$0b                                 ; $65ee: $f8 $0b
    dec d                                         ; $65f0: $15
    ld e, l                                       ; $65f1: $5d
    and d                                         ; $65f2: $a2
    xor h                                         ; $65f3: $ac
    nop                                           ; $65f4: $00
    db $d3                                        ; $65f5: $d3
    ld d, e                                       ; $65f6: $53
    rst $28                                       ; $65f7: $ef
    xor e                                         ; $65f8: $ab
    ld [hl], h                                    ; $65f9: $74
    ld h, [hl]                                    ; $65fa: $66
    cp c                                          ; $65fb: $b9
    or d                                          ; $65fc: $b2
    ld [bc], a                                    ; $65fd: $02
    ld a, a                                       ; $65fe: $7f
    db $ec                                        ; $65ff: $ec
    rst $38                                       ; $6600: $ff

Jump_09b_6601:
    xor $f3                                       ; $6601: $ee $f3
    rst $38                                       ; $6603: $ff
    ld d, $03                                     ; $6604: $16 $03
    rst $18                                       ; $6606: $df
    nop                                           ; $6607: $00
    rst $38                                       ; $6608: $ff
    adc a                                         ; $6609: $8f
    rst $38                                       ; $660a: $ff
    jp z, $9ff5                                   ; $660b: $ca $f5 $9f

    ldh [$d7], a                                  ; $660e: $e0 $d7
    db $10                                        ; $6610: $10
    add sp, -$68                                  ; $6611: $e8 $98
    rst $20                                       ; $6613: $e7
    ld [de], a                                    ; $6614: $12
    nop                                           ; $6615: $00
    di                                            ; $6616: $f3
    xor $fb                                       ; $6617: $ee $fb
    or $00                                        ; $6619: $f6 $00
    rst $38                                       ; $661b: $ff
    ld l, d                                       ; $661c: $6a
    rst $38                                       ; $661d: $ff
    and a                                         ; $661e: $a7
    ld a, a                                       ; $661f: $7f
    or b                                          ; $6620: $b0
    ld a, a                                       ; $6621: $7f
    ld a, b                                       ; $6622: $78
    ld bc, $dfff                                  ; $6623: $01 $ff $df
    ldh [$97], a                                  ; $6626: $e0 $97
    add sp, -$28                                  ; $6628: $e8 $d8
    rst $20                                       ; $662a: $e7
    inc e                                         ; $662b: $1c
    jr jr_09b_662e                                ; $662c: $18 $00

jr_09b_662e:
    set 6, h                                      ; $662e: $cb $f4
    adc b                                         ; $6630: $88
    rst $38                                       ; $6631: $ff
    xor l                                         ; $6632: $ad
    ld a, a                                       ; $6633: $7f
    or a                                          ; $6634: $b7
    ld l, a                                       ; $6635: $6f
    nop                                           ; $6636: $00
    ld l, c                                       ; $6637: $69
    rst $30                                       ; $6638: $f7
    cp a                                          ; $6639: $bf
    ld h, b                                       ; $663a: $60
    xor [hl]                                      ; $663b: $ae
    ld [hl], c                                    ; $663c: $71
    ld a, h                                       ; $663d: $7c
    db $e3                                        ; $663e: $e3
    ld [bc], a                                    ; $663f: $02
    xor h                                         ; $6640: $ac
    ld [hl], e                                    ; $6641: $73
    cp h                                          ; $6642: $bc
    ld h, e                                       ; $6643: $63
    di                                            ; $6644: $f3
    rrca                                          ; $6645: $0f
    ld l, [hl]                                    ; $6646: $6e
    ld [$007f], sp                                ; $6647: $08 $7f $00
    add b                                         ; $664a: $80
    or a                                          ; $664b: $b7
    ld a, d                                       ; $664c: $7a
    rst $38                                       ; $664d: $ff
    ld c, h                                       ; $664e: $4c
    or a                                          ; $664f: $b7
    ld a, b                                       ; $6650: $78
    xor [hl]                                      ; $6651: $ae
    nop                                           ; $6652: $00
    ld d, c                                       ; $6653: $51
    cp $01                                        ; $6654: $fe $01
    dec a                                         ; $6656: $3d
    jp $e7da                                      ; $6657: $c3 $da $e7


    push af                                       ; $665a: $f5
    nop                                           ; $665b: $00
    ld c, $67                                     ; $665c: $0e $67
    sbc h                                         ; $665e: $9c
    call $b77e                                    ; $665f: $cd $7e $b7
    ld a, a                                       ; $6662: $7f
    or $04                                        ; $6663: $f6 $04
    ld c, a                                       ; $6665: $4f
    ld sp, hl                                     ; $6666: $f9
    add a                                         ; $6667: $87
    ld [hl], e                                    ; $6668: $73
    adc a                                         ; $6669: $8f
    inc b                                         ; $666a: $04
    nop                                           ; $666b: $00
    rst $08                                       ; $666c: $cf
    rst $18                                       ; $666d: $df
    nop                                           ; $666e: $00
    ld h, a                                       ; $666f: $67
    sbc a                                         ; $6670: $9f
    ld a, a                                       ; $6671: $7f
    ei                                            ; $6672: $fb
    rst $38                                       ; $6673: $ff
    xor a                                         ; $6674: $af
    rst $38                                       ; $6675: $ff
    ld [hl], a                                    ; $6676: $77
    nop                                           ; $6677: $00
    rst $08                                       ; $6678: $cf
    xor $df                                       ; $6679: $ee $df
    ld d, a                                       ; $667b: $57
    rst $38                                       ; $667c: $ff
    ld l, a                                       ; $667d: $6f
    rst $38                                       ; $667e: $ff
    ld d, [hl]                                    ; $667f: $56
    ld [bc], a                                    ; $6680: $02
    rst $38                                       ; $6681: $ff
    push hl                                       ; $6682: $e5
    cp $0c                                        ; $6683: $fe $0c
    rst $38                                       ; $6685: $ff
    ld e, $9f                                     ; $6686: $1e $9f
    dec b                                         ; $6688: $05
    db $fd                                        ; $6689: $fd
    add b                                         ; $668a: $80
    sbc h                                         ; $668b: $9c
    inc bc                                        ; $668c: $03
    pop af                                        ; $668d: $f1
    rst $38                                       ; $668e: $ff
    inc de                                        ; $668f: $13
    rst $28                                       ; $6690: $ef
    ld a, c                                       ; $6691: $79
    add a                                         ; $6692: $87
    xor e                                         ; $6693: $ab
    nop                                           ; $6694: $00
    ld d, a                                       ; $6695: $57
    add hl, de                                    ; $6696: $19
    rst $20                                       ; $6697: $e7
    or l                                          ; $6698: $b5
    cp $ec                                        ; $6699: $fe $ec
    rst $30                                       ; $669b: $f7
    sub [hl]                                      ; $669c: $96
    nop                                           ; $669d: $00
    rst $28                                       ; $669e: $ef
    db $fd                                        ; $669f: $fd
    ld b, $f4                                     ; $66a0: $06 $f4
    rrca                                          ; $66a2: $0f
    cp $87                                        ; $66a3: $fe $87
    ld [hl], l                                    ; $66a5: $75
    nop                                           ; $66a6: $00
    adc [hl]                                      ; $66a7: $8e
    db $fd                                        ; $66a8: $fd
    add [hl]                                      ; $66a9: $86
    ld a, e                                       ; $66aa: $7b
    add a                                         ; $66ab: $87
    jp hl                                         ; $66ac: $e9


    rla                                           ; $66ad: $17
    dec de                                        ; $66ae: $1b
    nop                                           ; $66af: $00
    rst $20                                       ; $66b0: $e7
    ld sp, hl                                     ; $66b1: $f9
    rlca                                          ; $66b2: $07
    db $eb                                        ; $66b3: $eb
    rla                                           ; $66b4: $17
    add hl, de                                    ; $66b5: $19
    rst $20                                       ; $66b6: $e7
    ei                                            ; $66b7: $fb
    add hl, bc                                    ; $66b8: $09
    rlca                                          ; $66b9: $07

jr_09b_66ba:
    jp hl                                         ; $66ba: $e9


    rla                                           ; $66bb: $17
    add c                                         ; $66bc: $81
    inc a                                         ; $66bd: $3c
    inc sp                                        ; $66be: $33
    ret nz                                        ; $66bf: $c0

    cp a                                          ; $66c0: $bf
    ld a, l                                       ; $66c1: $7d
    add hl, de                                    ; $66c2: $19
    cpl                                           ; $66c3: $2f
    ld bc, $30ff                                  ; $66c4: $01 $ff $30
    dec hl                                        ; $66c7: $2b
    inc bc                                        ; $66c8: $03
    ld d, b                                       ; $66c9: $50
    inc de                                        ; $66ca: $13
    db $10                                        ; $66cb: $10
    jr c, jr_09b_66ba                             ; $66cc: $38 $ec

    dec c                                         ; $66ce: $0d
    ld [hl], b                                    ; $66cf: $70
    add hl, bc                                    ; $66d0: $09
    add b                                         ; $66d1: $80
    ld [hl], h                                    ; $66d2: $74
    add hl, bc                                    ; $66d3: $09
    inc bc                                        ; $66d4: $03
    inc bc                                        ; $66d5: $03
    inc c                                         ; $66d6: $0c
    rrca                                          ; $66d7: $0f
    jr c, jr_09b_6719                             ; $66d8: $38 $3f

    ret nc                                        ; $66da: $d0

    nop                                           ; $66db: $00
    rst $38                                       ; $66dc: $ff
    inc bc                                        ; $66dd: $03
    inc bc                                        ; $66de: $03
    ld c, $0f                                     ; $66df: $0e $0f
    dec [hl]                                      ; $66e1: $35
    ld a, $c7                                     ; $66e2: $3e $c7
    nop                                           ; $66e4: $00
    db $fc                                        ; $66e5: $fc
    rrca                                          ; $66e6: $0f
    ld hl, sp+$1f                                 ; $66e7: $f8 $1f
    ldh a, [$34]                                  ; $66e9: $f0 $34
    db $eb                                        ; $66eb: $eb
    ld [$f700], sp                                ; $66ec: $08 $00 $f7
    ret nz                                        ; $66ef: $c0

    ret nz                                        ; $66f0: $c0

    ld [hl], b                                    ; $66f1: $70
    ldh a, [$ac]                                  ; $66f2: $f0 $ac
    ld a, h                                       ; $66f4: $7c
    db $e3                                        ; $66f5: $e3
    nop                                           ; $66f6: $00
    ccf                                           ; $66f7: $3f
    pop af                                        ; $66f8: $f1
    rra                                           ; $66f9: $1f
    ld hl, sp+$0f                                 ; $66fa: $f8 $0f
    inc a                                         ; $66fc: $3c
    rst $00                                       ; $66fd: $c7
    add hl, de                                    ; $66fe: $19
    ld [bc], a                                    ; $66ff: $02
    rst $20                                       ; $6700: $e7
    and c                                         ; $6701: $a1
    rst $38                                       ; $6702: $ff
    jp nz, $95ff                                  ; $6703: $c2 $ff $95

    sub h                                         ; $6706: $94
    dec b                                         ; $6707: $05
    pop de                                        ; $6708: $d1
    nop                                           ; $6709: $00
    cp $86                                        ; $670a: $fe $86
    db $fd                                        ; $670c: $fd
    adc a                                         ; $670d: $8f
    ld hl, sp-$62                                 ; $670e: $f8 $9e
    pop af                                        ; $6710: $f1
    ld d, b                                       ; $6711: $50
    nop                                           ; $6712: $00
    rst $28                                       ; $6713: $ef
    or b                                          ; $6714: $b0
    rst $08                                       ; $6715: $cf
    ld d, b                                       ; $6716: $50
    xor a                                         ; $6717: $af
    or b                                          ; $6718: $b0

jr_09b_6719:
    ld c, a                                       ; $6719: $4f
    ld a, b                                       ; $671a: $78
    nop                                           ; $671b: $00
    add a                                         ; $671c: $87
    cp h                                          ; $671d: $bc
    ld b, e                                       ; $671e: $43
    ld a, a                                       ; $671f: $7f
    add b                                         ; $6720: $80
    rst $38                                       ; $6721: $ff
    nop                                           ; $6722: $00
    ld c, $00                                     ; $6723: $0e $00
    di                                            ; $6725: $f3
    rrca                                          ; $6726: $0f
    pop af                                        ; $6727: $f1
    dec c                                         ; $6728: $0d
    ld a, [c]                                     ; $6729: $f2
    ld c, $f1                                     ; $672a: $0e $f1
    dec e                                         ; $672c: $1d
    ld b, b                                       ; $672d: $40
    ld [c], a                                     ; $672e: $e2
    sub d                                         ; $672f: $92
    dec bc                                        ; $6730: $0b
    cp $01                                        ; $6731: $fe $01
    adc a                                         ; $6733: $8f
    ldh a, [$be]                                  ; $6734: $f0 $be
    pop hl                                        ; $6736: $e1
    nop                                           ; $6737: $00
    db $fd                                        ; $6738: $fd
    jp nz, $d5aa                                  ; $6739: $c2 $aa $d5

    push de                                       ; $673c: $d5
    xor d                                         ; $673d: $aa
    ld [$88ff], a                                 ; $673e: $ea $ff $88
    ld b, [hl]                                    ; $6741: $46
    ld a, [bc]                                    ; $6742: $0a
    cp $01                                        ; $6743: $fe $01
    ldh a, [rNR12]                                ; $6745: $f0 $12
    ld de, $00ff                                  ; $6747: $11 $ff $00
    nop                                           ; $674a: $00
    add b                                         ; $674b: $80
    ld d, h                                       ; $674c: $54
    ld b, $df                                     ; $674d: $06 $df
    jr nz, jr_09b_67d0                            ; $674f: $20 $7f

    add b                                         ; $6751: $80
    ld c, $f1                                     ; $6752: $0e $f1
    ld a, l                                       ; $6754: $7d
    inc b                                         ; $6755: $04

jr_09b_6756:
    add d                                         ; $6756: $82
    ld a, [$f505]                                 ; $6757: $fa $05 $f5
    ld a, [bc]                                    ; $675a: $0a
    db $10                                        ; $675b: $10
    ld [$44bb], sp                                ; $675c: $08 $bb $44
    ld [bc], a                                    ; $675f: $02
    cp c                                          ; $6760: $b9
    add $b0                                       ; $6761: $c6 $b0
    rst $08                                       ; $6763: $cf
    and b                                         ; $6764: $a0
    rst $18                                       ; $6765: $df
    ld [bc], a                                    ; $6766: $02
    ld [$00b0], sp                                ; $6767: $08 $b0 $00
    rst $08                                       ; $676a: $cf
    ld sp, hl                                     ; $676b: $f9
    add [hl]                                      ; $676c: $86
    cp a                                          ; $676d: $bf
    ret nz                                        ; $676e: $c0

    ret c                                         ; $676f: $d8

    daa                                           ; $6770: $27
    db $d3                                        ; $6771: $d3
    nop                                           ; $6772: $00
    inc l                                         ; $6773: $2c
    ld e, l                                       ; $6774: $5d
    and d                                         ; $6775: $a2
    ld e, h                                       ; $6776: $5c
    and e                                         ; $6777: $a3
    ld e, h                                       ; $6778: $5c
    and e                                         ; $6779: $a3
    sbc $00                                       ; $677a: $de $00
    ld hl, $21de                                  ; $677c: $21 $de $21
    db $dd                                        ; $677f: $dd
    ld [hl+], a                                   ; $6780: $22
    ld a, e                                       ; $6781: $7b
    add h                                         ; $6782: $84
    ld a, e                                       ; $6783: $7b
    nop                                           ; $6784: $00
    add h                                         ; $6785: $84
    ld a, [hl-]                                   ; $6786: $3a
    push bc                                       ; $6787: $c5
    jp c, $ea25                                   ; $6788: $da $25 $ea

    dec d                                         ; $678b: $15
    db $eb                                        ; $678c: $eb
    inc b                                         ; $678d: $04
    inc d                                         ; $678e: $14
    ld l, e                                       ; $678f: $6b
    sub h                                         ; $6790: $94
    adc e                                         ; $6791: $8b
    ld [hl], h                                    ; $6792: $74
    ret nz                                        ; $6793: $c0

    jr z, jr_09b_6756                             ; $6794: $28 $c0

    ret nz                                        ; $6796: $c0

    inc b                                         ; $6797: $04
    or b                                          ; $6798: $b0
    ldh a, [$4c]                                  ; $6799: $f0 $4c
    db $fc                                        ; $679b: $fc
    inc hl                                        ; $679c: $23
    sbc h                                         ; $679d: $9c
    nop                                           ; $679e: $00
    ld c, e                                       ; $679f: $4b
    rst $38                                       ; $67a0: $ff
    nop                                           ; $67a1: $00
    and c                                         ; $67a2: $a1
    rst $38                                       ; $67a3: $ff
    push de                                       ; $67a4: $d5
    ld a, a                                       ; $67a5: $7f
    adc e                                         ; $67a6: $8b
    ld a, a                                       ; $67a7: $7f
    and l                                         ; $67a8: $a5
    ld a, a                                       ; $67a9: $7f
    nop                                           ; $67aa: $00
    ld d, e                                       ; $67ab: $53
    cp a                                          ; $67ac: $bf
    cp c                                          ; $67ad: $b9
    ld c, a                                       ; $67ae: $4f
    ld [hl], e                                    ; $67af: $73
    adc a                                         ; $67b0: $8f
    db $fd                                        ; $67b1: $fd
    rlca                                          ; $67b2: $07
    nop                                           ; $67b3: $00
    ld [hl], a                                    ; $67b4: $77
    adc e                                         ; $67b5: $8b
    db $ed                                        ; $67b6: $ed
    inc de                                        ; $67b7: $13
    rst $38                                       ; $67b8: $ff
    ld bc, $ff57                                  ; $67b9: $01 $57 $ff
    nop                                           ; $67bc: $00
    db $fd                                        ; $67bd: $fd
    inc bc                                        ; $67be: $03
    db $fd                                        ; $67bf: $fd
    inc bc                                        ; $67c0: $03
    call nz, $94ff                                ; $67c1: $c4 $ff $94
    db $eb                                        ; $67c4: $eb
    nop                                           ; $67c5: $00
    set 7, h                                      ; $67c6: $cb $fc
    sub h                                         ; $67c8: $94
    rst $28                                       ; $67c9: $ef
    db $dd                                        ; $67ca: $dd
    ld [c], a                                     ; $67cb: $e2
    adc b                                         ; $67cc: $88
    rst $30                                       ; $67cd: $f7
    ld b, b                                       ; $67ce: $40
    push de                                       ; $67cf: $d5

jr_09b_67d0:
    ld l, h                                       ; $67d0: $6c
    inc b                                         ; $67d1: $04
    ld l, [hl]                                    ; $67d2: $6e
    pop af                                        ; $67d3: $f1
    ccf                                           ; $67d4: $3f
    ldh [$2f], a                                  ; $67d5: $e0 $2f
    ldh a, [rSB]                                  ; $67d7: $f0 $01
    ld a, c                                       ; $67d9: $79
    and $ad                                       ; $67da: $e6 $ad
    halt                                          ; $67dc: $76
    ccf                                           ; $67dd: $3f
    ldh [rHDMA5], a                               ; $67de: $e0 $55
    ld l, d                                       ; $67e0: $6a
    ld b, $00                                     ; $67e1: $06 $00
    cp a                                          ; $67e3: $bf
    ret nz                                        ; $67e4: $c0

    cp e                                          ; $67e5: $bb
    call c, $dca3                                 ; $67e6: $dc $a3 $dc
    cp a                                          ; $67e9: $bf
    ret nz                                        ; $67ea: $c0

    ld bc, $e996                                  ; $67eb: $01 $96 $e9
    and c                                         ; $67ee: $a1
    sbc $91                                       ; $67ef: $de $91
    xor $c0                                       ; $67f1: $ee $c0
    ld hl, sp+$06                                 ; $67f3: $f8 $06
    nop                                           ; $67f5: $00
    sbc a                                         ; $67f6: $9f
    ld h, c                                       ; $67f7: $61
    ld h, [hl]                                    ; $67f8: $66
    sbc e                                         ; $67f9: $9b
    ld a, b                                       ; $67fa: $78
    add a                                         ; $67fb: $87
    db $fc                                        ; $67fc: $fc
    inc sp                                        ; $67fd: $33
    nop                                           ; $67fe: $00
    adc $31                                       ; $67ff: $ce $31
    ld a, a                                       ; $6801: $7f
    add b                                         ; $6802: $80
    nop                                           ; $6803: $00
    rst $38                                       ; $6804: $ff
    halt                                          ; $6805: $76
    adc a                                         ; $6806: $8f
    nop                                           ; $6807: $00
    db $fd                                        ; $6808: $fd
    add [hl]                                      ; $6809: $86
    ld [hl], l                                    ; $680a: $75
    adc [hl]                                      ; $680b: $8e
    sbc [hl]                                      ; $680c: $9e
    ld h, a                                       ; $680d: $67
    or l                                          ; $680e: $b5
    ld l, [hl]                                    ; $680f: $6e
    ld sp, $07fc                                  ; $6810: $31 $fc $07
    jr nc, jr_09b_681d                            ; $6813: $30 $08

    ld a, h                                       ; $6815: $7c
    add hl, sp                                    ; $6816: $39
    pop af                                        ; $6817: $f1
    rrca                                          ; $6818: $0f
    ld d, l                                       ; $6819: $55
    sub h                                         ; $681a: $94
    inc b                                         ; $681b: $04
    nop                                           ; $681c: $00

jr_09b_681d:
    pop de                                        ; $681d: $d1
    ld l, $e1                                     ; $681e: $2e $e1
    sbc [hl]                                      ; $6820: $9e
    ld h, [hl]                                    ; $6821: $66
    reti                                          ; $6822: $d9


    ld e, $e1                                     ; $6823: $1e $e1
    ld [$cc3f], sp                                ; $6825: $08 $3f $cc
    ld [hl], e                                    ; $6828: $73
    adc h                                         ; $6829: $8c
    db $e4                                        ; $682a: $e4
    ld [$837d], sp                                ; $682b: $08 $7d $83
    db $dd                                        ; $682e: $dd
    nop                                           ; $682f: $00
    dec sp                                        ; $6830: $3b
    push bc                                       ; $6831: $c5
    dec sp                                        ; $6832: $3b
    db $fd                                        ; $6833: $fd
    inc bc                                        ; $6834: $03
    ld l, l                                       ; $6835: $6d
    sub e                                         ; $6836: $93
    sbc l                                         ; $6837: $9d
    ld [$fd63], sp                                ; $6838: $08 $63 $fd
    inc bc                                        ; $683b: $03
    inc bc                                        ; $683c: $03
    sbc $04                                       ; $683d: $de $04
    ld a, a                                       ; $683f: $7f
    add b                                         ; $6840: $80
    cp a                                          ; $6841: $bf
    ld c, [hl]                                    ; $6842: $4e
    ret nz                                        ; $6843: $c0

    inc b                                         ; $6844: $04
    ld [$827d], sp                                ; $6845: $08 $7d $82
    ld [$0608], sp                                ; $6848: $08 $08 $06
    add hl, bc                                    ; $684b: $09

jr_09b_684c:
    ld [bc], a                                    ; $684c: $02
    jr jr_09b_6864                                ; $684d: $18 $15

    sbc [hl]                                      ; $684f: $9e
    ld h, h                                       ; $6850: $64
    rlca                                          ; $6851: $07
    adc h                                         ; $6852: $8c
    ld [hl], e                                    ; $6853: $73
    db $10                                        ; $6854: $10
    jr c, @+$76                                   ; $6855: $38 $74

    rrca                                          ; $6857: $0f
    jr nz, jr_09b_68a2                            ; $6858: $20 $48

    add h                                         ; $685a: $84

jr_09b_685b:
    rrca                                          ; $685b: $0f
    cp $50                                        ; $685c: $fe $50
    ld bc, $3830                                  ; $685e: $01 $30 $38
    ld d, h                                       ; $6861: $54
    sub h                                         ; $6862: $94
    rlca                                          ; $6863: $07

jr_09b_6864:
    ld sp, $01ce                                  ; $6864: $31 $ce $01
    rst $38                                       ; $6867: $ff
    ld [$01fe], sp                                ; $6868: $08 $fe $01
    db $fd                                        ; $686b: $fd
    inc bc                                        ; $686c: $03
    inc b                                         ; $686d: $04
    ld [$41be], sp                                ; $686e: $08 $be $41
    db $fd                                        ; $6871: $fd
    db $10                                        ; $6872: $10
    inc bc                                        ; $6873: $03
    ld a, [$5c05]                                 ; $6874: $fa $05 $5c
    jr c, jr_09b_68f0                             ; $6877: $38 $77

    adc b                                         ; $6879: $88
    xor a                                         ; $687a: $af
    ret nc                                        ; $687b: $d0

    inc bc                                        ; $687c: $03
    ld e, l                                       ; $687d: $5d
    and d                                         ; $687e: $a2
    adc h                                         ; $687f: $8c
    ld [hl], e                                    ; $6880: $73
    adc h                                         ; $6881: $8c
    ld [hl], e                                    ; $6882: $73
    ld e, h                                       ; $6883: $5c
    jr @-$70                                      ; $6884: $18 $8e

    add hl, bc                                    ; $6886: $09
    ret nz                                        ; $6887: $c0

    adc d                                         ; $6888: $8a
    ld a, [bc]                                    ; $6889: $0a
    and [hl]                                      ; $688a: $a6
    add hl, bc                                    ; $688b: $09
    ld d, l                                       ; $688c: $55
    rst $38                                       ; $688d: $ff
    xor a                                         ; $688e: $af
    ld d, b                                       ; $688f: $50
    ld e, a                                       ; $6890: $5f
    and b                                         ; $6891: $a0
    nop                                           ; $6892: $00
    cp a                                          ; $6893: $bf
    ld b, b                                       ; $6894: $40
    db $fc                                        ; $6895: $fc
    inc bc                                        ; $6896: $03
    add b                                         ; $6897: $80
    rst $38                                       ; $6898: $ff
    ld a, l                                       ; $6899: $7d
    add d                                         ; $689a: $82
    jr nz, jr_09b_685b                            ; $689b: $20 $be

    pop bc                                        ; $689d: $c1
    inc b                                         ; $689e: $04
    jr c, jr_09b_684c                             ; $689f: $38 $ab

    db $f4                                        ; $68a1: $f4

jr_09b_68a2:
    ld d, a                                       ; $68a2: $57
    ld hl, sp-$51                                 ; $68a3: $f8 $af
    nop                                           ; $68a5: $00
    ret nc                                        ; $68a6: $d0

    ld e, a                                       ; $68a7: $5f
    and b                                         ; $68a8: $a0
    cp h                                          ; $68a9: $bc
    ret nz                                        ; $68aa: $c0

    ld [hl], b                                    ; $68ab: $70
    add b                                         ; $68ac: $80
    cp c                                          ; $68ad: $b9
    nop                                           ; $68ae: $00
    ret nz                                        ; $68af: $c0

    ld [hl], b                                    ; $68b0: $70
    adc b                                         ; $68b1: $88
    rst $38                                       ; $68b2: $ff
    nop                                           ; $68b3: $00
    ld sp, hl                                     ; $68b4: $f9
    nop                                           ; $68b5: $00
    ldh [rP1], a                                  ; $68b6: $e0 $00
    nop                                           ; $68b8: $00
    inc b                                         ; $68b9: $04
    nop                                           ; $68ba: $00
    ld [de], a                                    ; $68bb: $12
    nop                                           ; $68bc: $00
    ld b, b                                       ; $68bd: $40
    nop                                           ; $68be: $00
    ld c, c                                       ; $68bf: $49
    jr nc, jr_09b_68c2                            ; $68c0: $30 $00

jr_09b_68c2:
    ld c, h                                       ; $68c2: $4c
    inc a                                         ; $68c3: $3c
    dec b                                         ; $68c4: $05
    ld [bc], a                                    ; $68c5: $02
    ld [$09f6], sp                                ; $68c6: $08 $f6 $09
    ld b, a                                       ; $68c9: $47
    jr c, jr_09b_68cf                             ; $68ca: $38 $03

    ld b, b                                       ; $68cc: $40
    ccf                                           ; $68cd: $3f
    ccf                                           ; $68ce: $3f

jr_09b_68cf:
    nop                                           ; $68cf: $00

jr_09b_68d0:
    ccf                                           ; $68d0: $3f
    nop                                           ; $68d1: $00
    inc a                                         ; $68d2: $3c
    ld c, b                                       ; $68d3: $48
    ld c, b                                       ; $68d4: $48
    ld [$b801], sp                                ; $68d5: $08 $01 $b8
    ret nz                                        ; $68d8: $c0

    ld a, h                                       ; $68d9: $7c
    add b                                         ; $68da: $80
    cp b                                          ; $68db: $b8
    call nz, $387c                                ; $68dc: $c4 $7c $38
    dec b                                         ; $68df: $05
    nop                                           ; $68e0: $00
    ld a, h                                       ; $68e1: $7c
    add d                                         ; $68e2: $82
    cp [hl]                                       ; $68e3: $be
    ret nz                                        ; $68e4: $c0

    ld a, [hl]                                    ; $68e5: $7e
    add c                                         ; $68e6: $81
    inc h                                         ; $68e7: $24
    nop                                           ; $68e8: $00
    ld b, b                                       ; $68e9: $40
    add b                                         ; $68ea: $80
    db $d3                                        ; $68eb: $d3
    inc bc                                        ; $68ec: $03
    ld b, c                                       ; $68ed: $41
    nop                                           ; $68ee: $00
    inc b                                         ; $68ef: $04

jr_09b_68f0:
    inc bc                                        ; $68f0: $03
    inc hl                                        ; $68f1: $23
    inc e                                         ; $68f2: $1c
    nop                                           ; $68f3: $00
    sbc a                                         ; $68f4: $9f
    ld h, b                                       ; $68f5: $60
    ld a, a                                       ; $68f6: $7f
    add b                                         ; $68f7: $80
    rra                                           ; $68f8: $1f
    nop                                           ; $68f9: $00
    rra                                           ; $68fa: $1f
    nop                                           ; $68fb: $00
    dec [hl]                                      ; $68fc: $35
    ld e, a                                       ; $68fd: $5f
    jr nz, jr_09b_68d0                            ; $68fe: $20 $d0

    rrca                                          ; $6900: $0f
    ld hl, sp+$18                                 ; $6901: $f8 $18
    xor d                                         ; $6903: $aa
    ldh a, [rTIMA]                                ; $6904: $f0 $05
    add c                                         ; $6906: $81
    ld [bc], a                                    ; $6907: $02
    nop                                           ; $6908: $00
    inc e                                         ; $6909: $1c
    add l                                         ; $690a: $85
    rst $38                                       ; $690b: $ff
    adc e                                         ; $690c: $8b
    ld e, b                                       ; $690d: $58
    ld [bc], a                                    ; $690e: $02
    ld l, [hl]                                    ; $690f: $6e
    inc bc                                        ; $6910: $03
    inc e                                         ; $6911: $1c
    ld bc, $c1be                                  ; $6912: $01 $be $c1
    jr nc, @+$80                                  ; $6915: $30 $7e

    add c                                         ; $6917: $81
    inc b                                         ; $6918: $04
    ld [$08c4], sp                                ; $6919: $08 $c4 $08
    add a                                         ; $691c: $87
    ld a, b                                       ; $691d: $78
    ld a, e                                       ; $691e: $7b

jr_09b_691f:
    add h                                         ; $691f: $84

Call_09b_6920:
    jr nz, jr_09b_691f                            ; $6920: $20 $fd

    ld [bc], a                                    ; $6922: $02
    ld [bc], a                                    ; $6923: $02
    jr @+$7d                                      ; $6924: $18 $7b

    add h                                         ; $6926: $84
    add a                                         ; $6927: $87
    ld a, b                                       ; $6928: $78
    rst $28                                       ; $6929: $ef
    nop                                           ; $692a: $00
    db $10                                        ; $692b: $10
    rst $30                                       ; $692c: $f7
    ld [$0cf3], sp                                ; $692d: $08 $f3 $0c
    db $ec                                        ; $6930: $ec
    inc de                                        ; $6931: $13
    push af                                       ; $6932: $f5
    rlca                                          ; $6933: $07
    ld a, [bc]                                    ; $6934: $0a
    di                                            ; $6935: $f3
    inc c                                         ; $6936: $0c
    db $eb                                        ; $6937: $eb
    inc d                                         ; $6938: $14
    ld c, h                                       ; $6939: $4c
    ld a, [bc]                                    ; $693a: $0a
    adc $0b                                       ; $693b: $ce $0b
    ld d, b                                       ; $693d: $50
    jr c, jr_09b_694c                             ; $693e: $38 $0c

    ld sp, $31ce                                  ; $6940: $31 $ce $31
    adc $1c                                       ; $6943: $ce $1c
    add hl, de                                    ; $6945: $19

jr_09b_6946:
    inc sp                                        ; $6946: $33
    ld c, $f0                                     ; $6947: $0e $f0
    rrca                                          ; $6949: $0f
    inc c                                         ; $694a: $0c
    push af                                       ; $694b: $f5

jr_09b_694c:
    dec bc                                        ; $694c: $0b
    ld a, [$1c05]                                 ; $694d: $fa $05 $1c
    add hl, de                                    ; $6950: $19
    jr z, jr_09b_696c                             ; $6951: $28 $19

    rrca                                          ; $6953: $0f
    ldh a, [rP1]                                  ; $6954: $f0 $00
    and c                                         ; $6956: $a1
    ld e, [hl]                                    ; $6957: $5e
    xor d                                         ; $6958: $aa
    ld d, l                                       ; $6959: $55
    xor d                                         ; $695a: $aa
    ld d, l                                       ; $695b: $55
    db $fd                                        ; $695c: $fd
    ld [bc], a                                    ; $695d: $02
    ld hl, $fc03                                  ; $695e: $21 $03 $fc
    ld d, l                                       ; $6961: $55
    ld c, $e0                                     ; $6962: $0e $e0
    rra                                           ; $6964: $1f
    ret nz                                        ; $6965: $c0

    ccf                                           ; $6966: $3f
    ld [bc], a                                    ; $6967: $02
    jr jr_09b_696a                                ; $6968: $18 $00

jr_09b_696a:
    ldh [$1f], a                                  ; $696a: $e0 $1f

jr_09b_696c:
    ldh a, [rIF]                                  ; $696c: $f0 $0f
    rst $38                                       ; $696e: $ff
    nop                                           ; $696f: $00
    ld a, l                                       ; $6970: $7d
    add e                                         ; $6971: $83
    ld [$c13e], sp                                ; $6972: $08 $3e $c1
    dec a                                         ; $6975: $3d
    jp $0804                                      ; $6976: $c3 $04 $08


    ld a, [hl]                                    ; $6979: $7e
    add c                                         ; $697a: $81
    db $fd                                        ; $697b: $fd
    inc e                                         ; $697c: $1c

jr_09b_697d:
    inc bc                                        ; $697d: $03
    xor $11                                       ; $697e: $ee $11
    adc h                                         ; $6980: $8c
    add hl, sp                                    ; $6981: $39
    ld [bc], a                                    ; $6982: $02
    ld c, b                                       ; $6983: $48
    ld h, b                                       ; $6984: $60
    jr z, @+$01                                   ; $6985: $28 $ff

    nop                                           ; $6987: $00
    add b                                         ; $6988: $80
    ld h, b                                       ; $6989: $60
    jr jr_09b_6946                                ; $698a: $18 $ba

    ld b, l                                       ; $698c: $45
    db $fd                                        ; $698d: $fd
    inc bc                                        ; $698e: $03
    ld [$f517], a                                 ; $698f: $ea $17 $f5
    nop                                           ; $6992: $00
    rrca                                          ; $6993: $0f
    ld a, [$ef05]                                 ; $6994: $fa $05 $ef
    db $10                                        ; $6997: $10
    rst $20                                       ; $6998: $e7
    jr jr_09b_69b2                                ; $6999: $18 $17

    nop                                           ; $699b: $00
    add sp, $37                                   ; $699c: $e8 $37
    ret z                                         ; $699e: $c8

    rst $00                                       ; $699f: $c7
    jr c, jr_09b_697d                             ; $69a0: $38 $db

    inc h                                         ; $69a2: $24
    cp [hl]                                       ; $69a3: $be
    nop                                           ; $69a4: $00
    ld b, b                                       ; $69a5: $40
    ld a, [hl]                                    ; $69a6: $7e
    add b                                         ; $69a7: $80
    ldh a, [rIF]                                  ; $69a8: $f0 $0f
    rst $28                                       ; $69aa: $ef
    db $10                                        ; $69ab: $10
    rst $18                                       ; $69ac: $df
    jr z, jr_09b_69cf                             ; $69ad: $28 $20

    rra                                           ; $69af: $1f
    rst $10                                       ; $69b0: $d7
    inc b                                         ; $69b1: $04

jr_09b_69b2:
    jr nz, jr_09b_69bc                            ; $69b2: $20 $08

    ld de, $03fd                                  ; $69b4: $11 $fd $03
    ld a, [hl]                                    ; $69b7: $7e
    nop                                           ; $69b8: $00
    add c                                         ; $69b9: $81
    cp l                                          ; $69ba: $bd
    ld b, e                                       ; $69bb: $43

jr_09b_69bc:
    cp [hl]                                       ; $69bc: $be
    ld b, c                                       ; $69bd: $41
    cp l                                          ; $69be: $bd
    ld b, e                                       ; $69bf: $43
    ld c, $04                                     ; $69c0: $0e $04
    ld bc, $031d                                  ; $69c2: $01 $1d $03
    ld e, $01                                     ; $69c5: $1e $01
    ld l, h                                       ; $69c7: $6c
    add hl, bc                                    ; $69c8: $09
    xor a                                         ; $69c9: $af
    ldh a, [rIF]                                  ; $69ca: $f0 $0f
    ld e, l                                       ; $69cc: $5d
    ld [c], a                                     ; $69cd: $e2
    cp a                                          ; $69ce: $bf

jr_09b_69cf:
    ret nz                                        ; $69cf: $c0

    sub b                                         ; $69d0: $90
    ld bc, $0218                                  ; $69d1: $01 $18 $02
    inc c                                         ; $69d4: $0c
    ld a, [hl-]                                   ; $69d5: $3a

jr_09b_69d6:
    jr @+$1c                                      ; $69d6: $18 $1a

    ldh [$2c], a                                  ; $69d8: $e0 $2c
    ld a, [de]                                    ; $69da: $1a
    inc c                                         ; $69db: $0c
    add hl, bc                                    ; $69dc: $09
    jr c, jr_09b_69f9                             ; $69dd: $38 $1a

    ld [hl], b                                    ; $69df: $70
    adc a                                         ; $69e0: $8f
    ld [hl], a                                    ; $69e1: $77
    adc b                                         ; $69e2: $88
    halt                                          ; $69e3: $76
    ld bc, $3589                                  ; $69e4: $01 $89 $35
    jp z, $8b74                                   ; $69e7: $ca $74 $8b

    ld [hl], c                                    ; $69ea: $71
    adc [hl]                                      ; $69eb: $8e
    and d                                         ; $69ec: $a2
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    ld [bc], a                                    ; $69ef: $02
    ld bc, $00fe                                  ; $69f0: $01 $fe $00
    rst $38                                       ; $69f3: $ff
    ld [bc], a                                    ; $69f4: $02
    db $fd                                        ; $69f5: $fd
    ldh a, [rSB]                                  ; $69f6: $f0 $01
    rrca                                          ; $69f8: $0f

jr_09b_69f9:
    ld sp, hl                                     ; $69f9: $f9
    ld b, $39                                     ; $69fa: $06 $39
    add $1b                                       ; $69fc: $c6 $1b
    db $e4                                        ; $69fe: $e4
    jr nc, @+$2a                                  ; $69ff: $30 $28

    ret nz                                        ; $6a01: $c0

    ld e, h                                       ; $6a02: $5c
    ld a, [de]                                    ; $6a03: $1a
    inc b                                         ; $6a04: $04
    ld a, [bc]                                    ; $6a05: $0a
    cp $01                                        ; $6a06: $fe $01
    push af                                       ; $6a08: $f5
    ld a, [bc]                                    ; $6a09: $0a
    ld a, [$e005]                                 ; $6a0a: $fa $05 $e0
    ld e, h                                       ; $6a0d: $5c
    ld a, [de]                                    ; $6a0e: $1a
    inc c                                         ; $6a0f: $0c
    ld a, [de]                                    ; $6a10: $1a
    add b                                         ; $6a11: $80
    ld [bc], a                                    ; $6a12: $02
    ld b, b                                       ; $6a13: $40
    ld d, l                                       ; $6a14: $55
    rst $38                                       ; $6a15: $ff
    rst $28                                       ; $6a16: $ef
    db $10                                        ; $6a17: $10
    inc a                                         ; $6a18: $3c
    ld [hl], a                                    ; $6a19: $77
    adc b                                         ; $6a1a: $88
    ldh [$0e], a                                  ; $6a1b: $e0 $0e
    inc h                                         ; $6a1d: $24
    ld a, [bc]                                    ; $6a1e: $0a
    ldh a, [$09]                                  ; $6a1f: $f0 $09
    sub h                                         ; $6a21: $94
    ld a, [bc]                                    ; $6a22: $0a
    xor d                                         ; $6a23: $aa
    ret nz                                        ; $6a24: $c0

    ld l, [hl]                                    ; $6a25: $6e
    ld b, b                                       ; $6a26: $40
    jp nz, Jump_09b_7c03                          ; $6a27: $c2 $03 $7c

    jr c, jr_09b_69d6                             ; $6a2a: $38 $aa

    adc l                                         ; $6a2c: $8d
    dec b                                         ; $6a2d: $05
    ld e, h                                       ; $6a2e: $5c
    ld c, c                                       ; $6a2f: $49
    db $10                                        ; $6a30: $10
    ld [$84fe], sp                                ; $6a31: $08 $fe $84
    ld [bc], a                                    ; $6a34: $02
    db $10                                        ; $6a35: $10
    ld d, h                                       ; $6a36: $54
    db $fc                                        ; $6a37: $fc
    db $fc                                        ; $6a38: $fc
    nop                                           ; $6a39: $00
    ld [bc], a                                    ; $6a3a: $02
    nop                                           ; $6a3b: $00
    inc bc                                        ; $6a3c: $03
    rst $38                                       ; $6a3d: $ff
    nop                                           ; $6a3e: $00
    nop                                           ; $6a3f: $00
    dec bc                                        ; $6a40: $0b
    nop                                           ; $6a41: $00
    ld d, d                                       ; $6a42: $52
    nop                                           ; $6a43: $00
    ld c, d                                       ; $6a44: $4a
    nop                                           ; $6a45: $00
    and $80                                       ; $6a46: $e6 $80
    ld [hl+], a                                   ; $6a48: $22
    ld [bc], a                                    ; $6a49: $02
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    ld h, b                                       ; $6a4c: $60
    add b                                         ; $6a4d: $80
    add e                                         ; $6a4e: $83
    ld a, h                                       ; $6a4f: $7c
    dec c                                         ; $6a50: $0d
    nop                                           ; $6a51: $00
    inc de                                        ; $6a52: $13
    ld c, [hl]                                    ; $6a53: $4e
    ld de, $031d                                  ; $6a54: $11 $1d $03
    cp [hl]                                       ; $6a57: $be
    ld bc, $003d                                  ; $6a58: $01 $3d $00
    inc bc                                        ; $6a5b: $03
    sbc [hl]                                      ; $6a5c: $9e
    ld hl, $231d                                  ; $6a5d: $21 $1d $23
    ld a, $01                                     ; $6a60: $3e $01
    rst $30                                       ; $6a62: $f7
    nop                                           ; $6a63: $00
    ld [$1ce3], sp                                ; $6a64: $08 $e3 $1c
    db $e3                                        ; $6a67: $e3
    inc e                                         ; $6a68: $1c
    ldh [rNR34], a                                ; $6a69: $e0 $1e
    db $e4                                        ; $6a6b: $e4
    inc e                                         ; $6a6c: $1c
    ld a, [de]                                    ; $6a6d: $1a
    ldh [rNR34], a                                ; $6a6e: $e0 $1e
    inc a                                         ; $6a70: $3c
    ld [$0834], sp                                ; $6a71: $08 $34 $08
    db $fc                                        ; $6a74: $fc
    inc bc                                        ; $6a75: $03
    nop                                           ; $6a76: $00
    ld e, $a5                                     ; $6a77: $1e $a5
    jr c, jr_09b_6a7b                             ; $6a79: $38 $00

jr_09b_6a7b:
    ld d, d                                       ; $6a7b: $52
    ld b, $00                                     ; $6a7c: $06 $00
    dec a                                         ; $6a7e: $3d
    jp $0ac0                                      ; $6a7f: $c3 $c0 $0a


    ld a, $30                                     ; $6a82: $3e $30
    nop                                           ; $6a84: $00
    dec de                                        ; $6a85: $1b
    ld a, $01                                     ; $6a86: $3e $01
    cp l                                          ; $6a88: $bd
    ld [$6000], sp                                ; $6a89: $08 $00 $60

jr_09b_6a8c:
    jr nz, jr_09b_6a8c                            ; $6a8c: $20 $fe

    inc a                                         ; $6a8e: $3c
    inc c                                         ; $6a8f: $0c
    call c, Call_000_0409                         ; $6a90: $dc $09 $04
    add b                                         ; $6a93: $80
    nop                                           ; $6a94: $00
    ld d, b                                       ; $6a95: $50
    nop                                           ; $6a96: $00
    ld d, c                                       ; $6a97: $51
    adc b                                         ; $6a98: $88
    stop                                          ; $6a99: $10 $00
    rst $38                                       ; $6a9b: $ff
    xor b                                         ; $6a9c: $a8
    call c, Call_000_3d09                         ; $6a9d: $dc $09 $3d
    ld e, h                                       ; $6aa0: $5c
    db $10                                        ; $6aa1: $10
    ld a, $f4                                     ; $6aa2: $3e $f4
    ld [bc], a                                    ; $6aa4: $02
    ld a, [hl-]                                   ; $6aa5: $3a
    rst $00                                       ; $6aa6: $c7
    push af                                       ; $6aa7: $f5
    inc e                                         ; $6aa8: $1c
    rrca                                          ; $6aa9: $0f
    ld [$8c15], a                                 ; $6aaa: $ea $15 $8c

jr_09b_6aad:
    ld c, c                                       ; $6aad: $49
    or b                                          ; $6aae: $b0
    ld [$49ec], sp                                ; $6aaf: $08 $ec $49
    xor c                                         ; $6ab2: $a9
    inc bc                                        ; $6ab3: $03
    jr @+$04                                      ; $6ab4: $18 $02

    ld bc, $6eff                                  ; $6ab6: $01 $ff $6e
    inc bc                                        ; $6ab9: $03
    inc b                                         ; $6aba: $04
    ld [$94eb], sp                                ; $6abb: $08 $eb $94
    db $e3                                        ; $6abe: $e3
    nop                                           ; $6abf: $00
    sbc h                                         ; $6ac0: $9c
    add sp, -$69                                  ; $6ac1: $e8 $97
    ldh [$9f], a                                  ; $6ac3: $e0 $9f
    reti                                          ; $6ac5: $d9


jr_09b_6ac6:
    ld h, $d6                                     ; $6ac6: $26 $d6
    nop                                           ; $6ac8: $00
    add hl, hl                                    ; $6ac9: $29
    rst $18                                       ; $6aca: $df
    jr nz, @-$1f                                  ; $6acb: $20 $df

    jr nz, jr_09b_6aad                            ; $6acd: $20 $de

    ld hl, $00d0                                  ; $6acf: $21 $d0 $00
    cpl                                           ; $6ad2: $2f
    sbc $21                                       ; $6ad3: $de $21
    ld e, a                                       ; $6ad5: $5f
    and b                                         ; $6ad6: $a0
    dec hl                                        ; $6ad7: $2b
    call nc, Call_000_00db                        ; $6ad8: $d4 $db $00
    inc h                                         ; $6adb: $24
    ei                                            ; $6adc: $fb
    inc b                                         ; $6add: $04
    ei                                            ; $6ade: $fb
    inc b                                         ; $6adf: $04
    ld a, e                                       ; $6ae0: $7b
    add h                                         ; $6ae1: $84
    dec bc                                        ; $6ae2: $0b
    ld bc, $7bf4                                  ; $6ae3: $01 $f4 $7b
    add h                                         ; $6ae6: $84
    ld a, [$e005]                                 ; $6ae7: $fa $05 $e0
    sbc a                                         ; $6aea: $9f
    add $04                                       ; $6aeb: $c6 $04
    add b                                         ; $6aed: $80
    ld hl, sp+$07                                 ; $6aee: $f8 $07

jr_09b_6af0:
    ld hl, sp-$79                                 ; $6af0: $f8 $87
    ld h, d                                       ; $6af2: $62
    sbc l                                         ; $6af3: $9d
    ret nz                                        ; $6af4: $c0

    cp a                                          ; $6af5: $bf
    ld a, b                                       ; $6af6: $78
    ld b, b                                       ; $6af7: $40
    add a                                         ; $6af8: $87
    ld a, [hl+]                                   ; $6af9: $2a
    ld [$22dd], sp                                ; $6afa: $08 $dd $22
    call c, $dd23                                 ; $6afd: $dc $23 $dd
    ld [hl+], a                                   ; $6b00: $22
    ld [bc], a                                    ; $6b01: $02
    ld e, h                                       ; $6b02: $5c
    and e                                         ; $6b03: $a3
    ld e, l                                       ; $6b04: $5d
    and d                                         ; $6b05: $a2
    ld e, d                                       ; $6b06: $5a
    and l                                         ; $6b07: $a5
    inc l                                         ; $6b08: $2c
    jr jr_09b_6ac6                                ; $6b09: $18 $bb

    inc b                                         ; $6b0b: $04
    ld b, h                                       ; $6b0c: $44
    cp e                                          ; $6b0d: $bb
    ld b, h                                       ; $6b0e: $44
    cp d                                          ; $6b0f: $ba
    ld b, l                                       ; $6b10: $45
    ld [bc], a                                    ; $6b11: $02
    ld [$837c], sp                                ; $6b12: $08 $7c $83
    nop                                           ; $6b15: $00
    ld e, h                                       ; $6b16: $5c
    and e                                         ; $6b17: $a3
    ld c, h                                       ; $6b18: $4c
    or e                                          ; $6b19: $b3
    ld c, h                                       ; $6b1a: $4c
    or e                                          ; $6b1b: $b3
    ld d, l                                       ; $6b1c: $55
    xor d                                         ; $6b1d: $aa
    nop                                           ; $6b1e: $00
    ld h, e                                       ; $6b1f: $63
    sbc h                                         ; $6b20: $9c
    ld l, a                                       ; $6b21: $6f
    sub b                                         ; $6b22: $90
    ldh [$1f], a                                  ; $6b23: $e0 $1f
    ld e, c                                       ; $6b25: $59
    and [hl]                                      ; $6b26: $a6
    nop                                           ; $6b27: $00
    ld e, d                                       ; $6b28: $5a
    and l                                         ; $6b29: $a5
    ld e, l                                       ; $6b2a: $5d
    and d                                         ; $6b2b: $a2
    ld e, [hl]                                    ; $6b2c: $5e
    and c                                         ; $6b2d: $a1
    ld e, a                                       ; $6b2e: $5f
    and b                                         ; $6b2f: $a0
    ret nz                                        ; $6b30: $c0

    ld [bc], a                                    ; $6b31: $02
    jr jr_09b_6b5a                                ; $6b32: $18 $26

    jr jr_09b_6af0                                ; $6b34: $18 $ba

    ld b, l                                       ; $6b36: $45
    ld a, [hl-]                                   ; $6b37: $3a
    push bc                                       ; $6b38: $c5
    ld a, [hl-]                                   ; $6b39: $3a
    push bc                                       ; $6b3a: $c5
    ret nz                                        ; $6b3b: $c0

    inc a                                         ; $6b3c: $3c
    dec bc                                        ; $6b3d: $0b
    inc h                                         ; $6b3e: $24
    dec c                                         ; $6b3f: $0d
    ld a, e                                       ; $6b40: $7b
    add h                                         ; $6b41: $84
    ret nz                                        ; $6b42: $c0

    ccf                                           ; $6b43: $3f
    ld a, e                                       ; $6b44: $7b
    add h                                         ; $6b45: $84
    add b                                         ; $6b46: $80
    inc b                                         ; $6b47: $04
    dec e                                         ; $6b48: $1d
    ret nc                                        ; $6b49: $d0

    cpl                                           ; $6b4a: $2f
    db $db                                        ; $6b4b: $db
    inc h                                         ; $6b4c: $24
    call c, Call_09b_5f23                         ; $6b4d: $dc $23 $5f
    db $10                                        ; $6b50: $10
    and b                                         ; $6b51: $a0
    rst $18                                       ; $6b52: $df
    jr nz, jr_09b_6b69                            ; $6b53: $20 $14

    dec e                                         ; $6b55: $1d
    cp a                                          ; $6b56: $bf
    ret nz                                        ; $6b57: $c0

    xor d                                         ; $6b58: $aa
    rst $38                                       ; $6b59: $ff

jr_09b_6b5a:
    add b                                         ; $6b5a: $80
    or c                                          ; $6b5b: $b1
    nop                                           ; $6b5c: $00
    rst $38                                       ; $6b5d: $ff
    add d                                         ; $6b5e: $82
    db $fd                                        ; $6b5f: $fd
    sub h                                         ; $6b60: $94
    db $eb                                        ; $6b61: $eb
    xor d                                         ; $6b62: $aa
    push de                                       ; $6b63: $d5
    jr nc, @-$69                                  ; $6b64: $30 $95

    ld [$0b22], a                                 ; $6b66: $ea $22 $0b

jr_09b_6b69:
    ld hl, $201c                                  ; $6b69: $21 $1c $20
    rst $38                                       ; $6b6c: $ff
    and b                                         ; $6b6d: $a0
    ld a, a                                       ; $6b6e: $7f
    ld d, b                                       ; $6b6f: $50
    ld hl, $0534                                  ; $6b70: $21 $34 $05
    xor d                                         ; $6b73: $aa
    db $fc                                        ; $6b74: $fc
    ld b, $02                                     ; $6b75: $06 $02
    db $fd                                        ; $6b77: $fd
    inc b                                         ; $6b78: $04
    ei                                            ; $6b79: $fb
    nop                                           ; $6b7a: $00
    ld c, d                                       ; $6b7b: $4a
    push af                                       ; $6b7c: $f5
    add h                                         ; $6b7d: $84
    ei                                            ; $6b7e: $fb
    ld [$a2f7], sp                                ; $6b7f: $08 $f7 $a2
    db $dd                                        ; $6b82: $dd
    ld sp, $fb84                                  ; $6b83: $31 $84 $fb
    ldh a, [rTIMA]                                ; $6b86: $f0 $05
    jp z, $c004                                   ; $6b88: $ca $04 $c0

    rst $38                                       ; $6b8b: $ff
    xor c                                         ; $6b8c: $a9
    ld l, l                                       ; $6b8d: $6d
    rlca                                          ; $6b8e: $07
    nop                                           ; $6b8f: $00
    ld l, $ff                                     ; $6b90: $2e $ff
    db $10                                        ; $6b92: $10
    rst $38                                       ; $6b93: $ff
    ld hl, $42fe                                  ; $6b94: $21 $fe $42
    db $fd                                        ; $6b97: $fd
    db $10                                        ; $6b98: $10
    add b                                         ; $6b99: $80
    rst $38                                       ; $6b9a: $ff
    add h                                         ; $6b9b: $84
    ld h, $07                                     ; $6b9c: $26 $07
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    inc d                                         ; $6ba0: $14
    db $eb                                        ; $6ba1: $eb
    ld [bc], a                                    ; $6ba2: $02
    adc b                                         ; $6ba3: $88
    ld [hl], a                                    ; $6ba4: $77
    nop                                           ; $6ba5: $00
    rst $38                                       ; $6ba6: $ff
    db $10                                        ; $6ba7: $10
    rst $28                                       ; $6ba8: $ef
    ld [hl-], a                                   ; $6ba9: $32
    rlca                                          ; $6baa: $07
    rst $38                                       ; $6bab: $ff
    ld a, b                                       ; $6bac: $78
    ld [bc], a                                    ; $6bad: $02
    adc l                                         ; $6bae: $8d
    rrca                                          ; $6baf: $0f
    ld d, b                                       ; $6bb0: $50
    jr nc, jr_09b_6c2a                            ; $6bb1: $30 $77

    inc e                                         ; $6bb3: $1c
    ld h, b                                       ; $6bb4: $60
    jr jr_09b_6bd7                                ; $6bb5: $18 $20

    rst $18                                       ; $6bb7: $df
    ld b, l                                       ; $6bb8: $45
    nop                                           ; $6bb9: $00
    cp d                                          ; $6bba: $ba
    adc d                                         ; $6bbb: $8a
    ld [hl], l                                    ; $6bbc: $75
    ld b, h                                       ; $6bbd: $44
    cp e                                          ; $6bbe: $bb
    add b                                         ; $6bbf: $80
    ld a, a                                       ; $6bc0: $7f
    rst $38                                       ; $6bc1: $ff
    jr z, @+$05                                   ; $6bc2: $28 $03

    xor e                                         ; $6bc4: $ab
    ld [hl-], a                                   ; $6bc5: $32
    ld b, $81                                     ; $6bc6: $06 $81
    ld [hl-], a                                   ; $6bc8: $32
    ld b, $87                                     ; $6bc9: $06 $87
    ld a, a                                       ; $6bcb: $7f
    add hl, de                                    ; $6bcc: $19
    jr nz, @+$01                                  ; $6bcd: $20 $ff

    ld hl, $0768                                  ; $6bcf: $21 $68 $07
    nop                                           ; $6bd2: $00
    rst $38                                       ; $6bd3: $ff
    ld b, h                                       ; $6bd4: $44
    ei                                            ; $6bd5: $fb
    add c                                         ; $6bd6: $81

jr_09b_6bd7:
    db $10                                        ; $6bd7: $10
    cp $82                                        ; $6bd8: $fe $82
    db $fd                                        ; $6bda: $fd
    ld l, $10                                     ; $6bdb: $2e $10
    rst $38                                       ; $6bdd: $ff
    ld [$00f7], sp                                ; $6bde: $08 $f7 $00
    add b                                         ; $6be1: $80
    ld e, $00                                     ; $6be2: $1e $00
    ld [bc], a                                    ; $6be4: $02
    rst $38                                       ; $6be5: $ff
    dec b                                         ; $6be6: $05
    rst $38                                       ; $6be7: $ff
    add hl, bc                                    ; $6be8: $09
    rst $38                                       ; $6be9: $ff
    ld de, $dd8b                                  ; $6bea: $11 $8b $dd
    rlca                                          ; $6bed: $07
    ld b, c                                       ; $6bee: $41
    rst $38                                       ; $6bef: $ff
    ld b, e                                       ; $6bf0: $43
    ret nz                                        ; $6bf1: $c0

    inc bc                                        ; $6bf2: $03
    inc bc                                        ; $6bf3: $03

jr_09b_6bf4:
    stop                                          ; $6bf4: $10 $00
    inc b                                         ; $6bf6: $04
    ld [$ff00], sp                                ; $6bf7: $08 $00 $ff
    rst $38                                       ; $6bfa: $ff
    push de                                       ; $6bfb: $d5
    rst $38                                       ; $6bfc: $ff
    xor l                                         ; $6bfd: $ad
    jp nc, $c4ba                                  ; $6bfe: $d2 $ba $c4

    nop                                           ; $6c01: $00
    or h                                          ; $6c02: $b4
    ret z                                         ; $6c03: $c8

    sub h                                         ; $6c04: $94
    add sp, -$50                                  ; $6c05: $e8 $b0
    ret z                                         ; $6c07: $c8

    xor b                                         ; $6c08: $a8
    ret nc                                        ; $6c09: $d0

    ld [$f890], sp                                ; $6c0a: $08 $90 $f8
    rra                                           ; $6c0d: $1f
    ldh [$d2], a                                  ; $6c0e: $e0 $d2
    rrca                                          ; $6c10: $0f
    ld b, d                                       ; $6c11: $42
    nop                                           ; $6c12: $00
    ld bc, $0003                                  ; $6c13: $01 $03 $00
    stop                                          ; $6c16: $10 $00
    inc d                                         ; $6c18: $14
    nop                                           ; $6c19: $00
    jr @-$06                                      ; $6c1a: $18 $f8

    dec b                                         ; $6c1c: $05
    ld [$540b], sp                                ; $6c1d: $08 $0b $54
    nop                                           ; $6c20: $00
    jr nc, @+$14                                  ; $6c21: $30 $12

    nop                                           ; $6c23: $00
    ld d, h                                       ; $6c24: $54
    inc b                                         ; $6c25: $04
    xor c                                         ; $6c26: $a9

jr_09b_6c27:
    inc h                                         ; $6c27: $24
    nop                                           ; $6c28: $00
    xor b                                         ; $6c29: $a8

jr_09b_6c2a:
    ret nc                                        ; $6c2a: $d0

    nop                                           ; $6c2b: $00
    sub h                                         ; $6c2c: $94
    ld hl, sp-$57                                 ; $6c2d: $f8 $a9
    call nc, $fc92                                ; $6c2f: $d4 $92 $fc
    xor a                                         ; $6c32: $af
    call nc, $9500                                ; $6c33: $d4 $00 $95
    cp $14                                        ; $6c36: $fe $14
    nop                                           ; $6c38: $00
    ld [$9d10], sp                                ; $6c39: $08 $10 $9d
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    ld a, [bc]                                    ; $6c3e: $0a
    db $10                                        ; $6c3f: $10
    inc d                                         ; $6c40: $14
    nop                                           ; $6c41: $00
    xor d                                         ; $6c42: $aa
    db $10                                        ; $6c43: $10
    ld h, h                                       ; $6c44: $64
    jr c, jr_09b_6c5f                             ; $6c45: $38 $18

    ld a, e                                       ; $6c47: $7b
    or b                                          ; $6c48: $b0
    add b                                         ; $6c49: $80
    jr c, jr_09b_6c4c                             ; $6c4a: $38 $00

jr_09b_6c4c:
    and h                                         ; $6c4c: $a4
    ld c, $1f                                     ; $6c4d: $0e $1f
    nop                                           ; $6c4f: $00
    ld c, d                                       ; $6c50: $4a
    nop                                           ; $6c51: $00
    jr nc, jr_09b_6bf4                            ; $6c52: $30 $a0

    ld b, b                                       ; $6c54: $40
    ld d, b                                       ; $6c55: $50
    add b                                         ; $6c56: $80
    xor d                                         ; $6c57: $aa
    rst $10                                       ; $6c58: $d7
    sub l                                         ; $6c59: $95
    ld [bc], a                                    ; $6c5a: $02
    ei                                            ; $6c5b: $fb
    xor b                                         ; $6c5c: $a8
    db $d3                                        ; $6c5d: $d3
    sub d                                         ; $6c5e: $92

jr_09b_6c5f:
    ld sp, hl                                     ; $6c5f: $f9
    xor c                                         ; $6c60: $a9
    inc [hl]                                      ; $6c61: $34
    nop                                           ; $6c62: $00
    xor d                                         ; $6c63: $aa
    add b                                         ; $6c64: $80
    ld h, b                                       ; $6c65: $60
    nop                                           ; $6c66: $00
    and [hl]                                      ; $6c67: $a6
    ld a, c                                       ; $6c68: $79
    ld sp, hl                                     ; $6c69: $f9
    di                                            ; $6c6a: $f3
    ld h, l                                       ; $6c6b: $65
    ld a, [$003a]                                 ; $6c6c: $fa $3a $00
    push af                                       ; $6c6f: $f5
    ld [$f737], a                                 ; $6c70: $ea $37 $f7
    jr c, @+$6c                                   ; $6c73: $38 $6a

    dec a                                         ; $6c75: $3d
    ld l, a                                       ; $6c76: $6f
    nop                                           ; $6c77: $00
    jr nc, jr_09b_6cda                            ; $6c78: $30 $60

    add b                                         ; $6c7a: $80
    ld d, b                                       ; $6c7b: $50
    add b                                         ; $6c7c: $80
    xor b                                         ; $6c7d: $a8
    ret nz                                        ; $6c7e: $c0

    push de                                       ; $6c7f: $d5
    nop                                           ; $6c80: $00
    ld h, b                                       ; $6c81: $60
    ld h, $f8                                     ; $6c82: $26 $f8
    db $d3                                        ; $6c84: $d3
    jr nz, jr_09b_6c27                            ; $6c85: $20 $a0

    ret nz                                        ; $6c87: $c0

    add h                                         ; $6c88: $84
    ld d, h                                       ; $6c89: $54
    ld b, b                                       ; $6c8a: $40
    ld l, h                                       ; $6c8b: $6c
    ld a, [bc]                                    ; $6c8c: $0a
    add b                                         ; $6c8d: $80
    ret nz                                        ; $6c8e: $c0

jr_09b_6c8f:
    inc b                                         ; $6c8f: $04
    ld [bc], a                                    ; $6c90: $02
    jp hl                                         ; $6c91: $e9


    ld d, $88                                     ; $6c92: $16 $88
    nop                                           ; $6c94: $00
    jr c, jr_09b_6c8f                             ; $6c95: $38 $f8

    rlca                                          ; $6c97: $07
    ld d, b                                       ; $6c98: $50
    jr jr_09b_6cab                                ; $6c99: $18 $10

    ld [$0b92], sp                                ; $6c9b: $08 $92 $0b
    xor e                                         ; $6c9e: $ab
    rst $38                                       ; $6c9f: $ff
    cp l                                          ; $6ca0: $bd
    nop                                           ; $6ca1: $00
    ld b, c                                       ; $6ca2: $41
    ld d, l                                       ; $6ca3: $55
    add hl, hl                                    ; $6ca4: $29
    dec l                                         ; $6ca5: $2d
    ld de, $112d                                  ; $6ca6: $11 $2d $11
    dec c                                         ; $6ca9: $0d
    inc b                                         ; $6caa: $04

jr_09b_6cab:
    ld de, $0915                                  ; $6cab: $11 $15 $09
    add l                                         ; $6cae: $85
    add hl, de                                    ; $6caf: $19
    sub [hl]                                      ; $6cb0: $96
    jr jr_09b_6cb4                                ; $6cb1: $18 $01

    nop                                           ; $6cb3: $00

jr_09b_6cb4:
    ld bc, $00f8                                  ; $6cb4: $01 $f8 $00
    ld d, b                                       ; $6cb7: $50
    inc c                                         ; $6cb8: $0c
    dec b                                         ; $6cb9: $05
    ld [bc], a                                    ; $6cba: $02
    ld [bc], a                                    ; $6cbb: $02
    add b                                         ; $6cbc: $80
    ld [bc], a                                    ; $6cbd: $02
    ld d, b                                       ; $6cbe: $50
    ld [$003c], sp                                ; $6cbf: $08 $3c $00
    ld [$003a], sp                                ; $6cc2: $08 $3a $00
    inc d                                         ; $6cc5: $14
    ld [$0c14], sp                                ; $6cc6: $08 $14 $0c
    ld [$0d96], sp                                ; $6cc9: $08 $96 $0d
    dec d                                         ; $6ccc: $15
    add hl, bc                                    ; $6ccd: $09
    ld [bc], a                                    ; $6cce: $02
    ld [$0935], sp                                ; $6ccf: $08 $35 $09
    dec d                                         ; $6cd2: $15
    nop                                           ; $6cd3: $00
    add hl, hl                                    ; $6cd4: $29
    ld d, l                                       ; $6cd5: $55
    add hl, hl                                    ; $6cd6: $29
    push af                                       ; $6cd7: $f5
    add hl, hl                                    ; $6cd8: $29
    or l                                          ; $6cd9: $b5

jr_09b_6cda:
    ld l, c                                       ; $6cda: $69
    ld [bc], a                                    ; $6cdb: $02
    nop                                           ; $6cdc: $00
    ld bc, $010a                                  ; $6cdd: $01 $0a $01
    dec d                                         ; $6ce0: $15
    inc bc                                        ; $6ce1: $03
    ld c, e                                       ; $6ce2: $4b
    ld b, $a4                                     ; $6ce3: $06 $a4
    nop                                           ; $6ce5: $00
    rra                                           ; $6ce6: $1f
    rlc h                                         ; $6ce7: $cb $04
    dec b                                         ; $6ce9: $05
    inc bc                                        ; $6cea: $03
    ld de, $5502                                  ; $6ceb: $11 $02 $55
    nop                                           ; $6cee: $00
    adc [hl]                                      ; $6cef: $8e
    sub a                                         ; $6cf0: $97
    rst $08                                       ; $6cf1: $cf
    or [hl]                                       ; $6cf2: $b6
    ld c, a                                       ; $6cf3: $4f
    ld d, h                                       ; $6cf4: $54
    xor a                                         ; $6cf5: $af
    ld d, a                                       ; $6cf6: $57
    nop                                           ; $6cf7: $00
    db $ec                                        ; $6cf8: $ec
    rst $20                                       ; $6cf9: $e7
    inc e                                         ; $6cfa: $1c
    ld d, [hl]                                    ; $6cfb: $56
    cp h                                          ; $6cfc: $bc
    or $0c                                        ; $6cfd: $f6 $0c
    ld d, l                                       ; $6cff: $55

jr_09b_6d00:
    nop                                           ; $6d00: $00
    jp hl                                         ; $6d01: $e9


    or l                                          ; $6d02: $b5
    ret                                           ; $6d03: $c9


    dec d                                         ; $6d04: $15
    ret                                           ; $6d05: $c9


    ld d, l                                       ; $6d06: $55
    adc c                                         ; $6d07: $89
    sub l                                         ; $6d08: $95
    ld bc, $5509                                  ; $6d09: $01 $09 $55
    add hl, bc                                    ; $6d0c: $09
    sub l                                         ; $6d0d: $95
    add hl, bc                                    ; $6d0e: $09
    dec b                                         ; $6d0f: $05
    add hl, de                                    ; $6d10: $19
    db $fc                                        ; $6d11: $fc
    ld a, [bc]                                    ; $6d12: $0a
    or b                                          ; $6d13: $b0
    ld [hl], h                                    ; $6d14: $74
    cpl                                           ; $6d15: $2f
    ld d, l                                       ; $6d16: $55
    ld b, $17                                     ; $6d17: $06 $17
    and [hl]                                      ; $6d19: $a6
    add hl, bc                                    ; $6d1a: $09
    nop                                           ; $6d1b: $00
    rst $38                                       ; $6d1c: $ff
    ld a, [hl]                                    ; $6d1d: $7e
    add c                                         ; $6d1e: $81
    ld c, b                                       ; $6d1f: $48
    ld b, d                                       ; $6d20: $42
    ld [bc], a                                    ; $6d21: $02
    nop                                           ; $6d22: $00
    inc a                                         ; $6d23: $3c
    jp $1966                                      ; $6d24: $c3 $66 $19


    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    xor e                                         ; $6d29: $ab
    dec b                                         ; $6d2a: $05
    rst $38                                       ; $6d2b: $ff
    push de                                       ; $6d2c: $d5
    cp $7e                                        ; $6d2d: $fe $7e
    add c                                         ; $6d2f: $81
    inc h                                         ; $6d30: $24
    rrca                                          ; $6d31: $0f
    ld bc, $4002                                  ; $6d32: $01 $02 $40

jr_09b_6d35:
    inc bc                                        ; $6d35: $03
    pop bc                                        ; $6d36: $c1
    nop                                           ; $6d37: $00
    and c                                         ; $6d38: $a1
    ret nz                                        ; $6d39: $c0

    pop bc                                        ; $6d3a: $c1
    add b                                         ; $6d3b: $80
    inc b                                         ; $6d3c: $04
    ld c, b                                       ; $6d3d: $48
    db $e3                                        ; $6d3e: $e3
    rla                                           ; $6d3f: $17
    xor b                                         ; $6d40: $a8
    ld a, b                                       ; $6d41: $78
    ld de, $9280                                  ; $6d42: $11 $80 $92
    ld bc, $0f12                                  ; $6d45: $01 $12 $0f
    jr z, @+$01                                   ; $6d48: $28 $ff

    ld d, l                                       ; $6d4a: $55
    rst $38                                       ; $6d4b: $ff
    ld b, $0a                                     ; $6d4c: $06 $0a
    rst $38                                       ; $6d4e: $ff
    ld d, a                                       ; $6d4f: $57
    rst $38                                       ; $6d50: $ff
    adc [hl]                                      ; $6d51: $8e
    db $10                                        ; $6d52: $10
    ld b, b                                       ; $6d53: $40
    jr nz, jr_09b_6d6e                            ; $6d54: $20 $18

    ld [hl], h                                    ; $6d56: $74
    nop                                           ; $6d57: $00
    rst $38                                       ; $6d58: $ff
    jp c, Jump_09b_55ff                           ; $6d59: $da $ff $55

    xor d                                         ; $6d5c: $aa
    xor e                                         ; $6d5d: $ab
    ld [hl], h                                    ; $6d5e: $74
    rst $10                                       ; $6d5f: $d7
    ld de, $6f28                                  ; $6d60: $11 $28 $6f
    sub b                                         ; $6d63: $90
    ret nz                                        ; $6d64: $c0

    dec bc                                        ; $6d65: $0b
    jr @+$01                                      ; $6d66: $18 $ff

    sub h                                         ; $6d68: $94
    stop                                          ; $6d69: $10 $00
    nop                                           ; $6d6b: $00
    push af                                       ; $6d6c: $f5
    ld a, [bc]                                    ; $6d6d: $0a

jr_09b_6d6e:
    xor d                                         ; $6d6e: $aa
    ld d, a                                       ; $6d6f: $57
    ld [hl], l                                    ; $6d70: $75
    adc [hl]                                      ; $6d71: $8e
    rst $20                                       ; $6d72: $e7
    jr jr_09b_6d35                                ; $6d73: $18 $c0

    ld a, l                                       ; $6d75: $7d
    jr nz, jr_09b_6d00                            ; $6d76: $20 $88

    dec b                                         ; $6d78: $05
    ld e, l                                       ; $6d79: $5d
    rst $38                                       ; $6d7a: $ff
    ld sp, hl                                     ; $6d7b: $f9
    rst $38                                       ; $6d7c: $ff
    ld a, l                                       ; $6d7d: $7d
    rst $38                                       ; $6d7e: $ff
    jr nz, jr_09b_6dbc                            ; $6d7f: $20 $3b

    db $fd                                        ; $6d81: $fd
    jr nc, jr_09b_6d9c                            ; $6d82: $30 $18

    ld a, a                                       ; $6d84: $7f
    add b                                         ; $6d85: $80
    or $09                                        ; $6d86: $f6 $09
    db $ed                                        ; $6d88: $ed
    nop                                           ; $6d89: $00
    ld [de], a                                    ; $6d8a: $12
    adc e                                         ; $6d8b: $8b
    ld [hl], h                                    ; $6d8c: $74
    rst $38                                       ; $6d8d: $ff
    nop                                           ; $6d8e: $00
    cp l                                          ; $6d8f: $bd
    rst $38                                       ; $6d90: $ff
    ld e, a                                       ; $6d91: $5f
    nop                                           ; $6d92: $00
    ld sp, hl                                     ; $6d93: $f9
    ld b, $f9                                     ; $6d94: $06 $f9
    ld e, e                                       ; $6d96: $5b
    db $fd                                        ; $6d97: $fd
    xor h                                         ; $6d98: $ac
    ld a, c                                       ; $6d99: $79
    db $db                                        ; $6d9a: $db
    nop                                           ; $6d9b: $00

jr_09b_6d9c:
    dec a                                         ; $6d9c: $3d
    ld c, b                                       ; $6d9d: $48
    cp c                                          ; $6d9e: $b9
    ldh [rNR24], a                                ; $6d9f: $e0 $19
    sub $00                                       ; $6da1: $d6 $00
    xor l                                         ; $6da3: $ad
    inc c                                         ; $6da4: $0c
    db $10                                        ; $6da5: $10
    jp c, $d720                                   ; $6da6: $da $20 $d7

    or b                                          ; $6da9: $b0
    ld c, $30                                     ; $6daa: $0e $30
    inc b                                         ; $6dac: $04
    push de                                       ; $6dad: $d5
    nop                                           ; $6dae: $00
    ld bc, $00ad                                  ; $6daf: $01 $ad $00
    ld e, a                                       ; $6db2: $5f

jr_09b_6db3:
    nop                                           ; $6db3: $00
    cp d                                          ; $6db4: $ba
    nop                                           ; $6db5: $00
    push af                                       ; $6db6: $f5
    ret nz                                        ; $6db7: $c0

    ld c, $40                                     ; $6db8: $0e $40
    jr nz, jr_09b_6dcc                            ; $6dba: $20 $10

jr_09b_6dbc:
    ld [$00ee], sp                                ; $6dbc: $08 $ee $00
    ld d, c                                       ; $6dbf: $51
    ld [bc], a                                    ; $6dc0: $02
    xor a                                         ; $6dc1: $af
    nop                                           ; $6dc2: $00
    ld b, b                                       ; $6dc3: $40
    ld e, [hl]                                    ; $6dc4: $5e
    ldh a, [rTAC]                                 ; $6dc5: $f0 $07
    ld e, d                                       ; $6dc7: $5a
    nop                                           ; $6dc8: $00
    push af                                       ; $6dc9: $f5
    ld [bc], a                                    ; $6dca: $02
    db $db                                        ; $6dcb: $db

jr_09b_6dcc:
    inc b                                         ; $6dcc: $04
    ld bc, $02d5                                  ; $6dcd: $01 $d5 $02
    xor d                                         ; $6dd0: $aa
    nop                                           ; $6dd1: $00
    ld e, l                                       ; $6dd2: $5d
    nop                                           ; $6dd3: $00
    ld a, [$06f4]                                 ; $6dd4: $fa $f4 $06
    ld b, $d5                                     ; $6dd7: $06 $d5
    nop                                           ; $6dd9: $00
    xor e                                         ; $6dda: $ab
    nop                                           ; $6ddb: $00
    ld d, a                                       ; $6ddc: $57
    inc b                                         ; $6ddd: $04
    nop                                           ; $6dde: $00
    ld [de], a                                    ; $6ddf: $12
    add hl, de                                    ; $6de0: $19
    add b                                         ; $6de1: $80
    or b                                          ; $6de2: $b0
    ld [hl+], a                                   ; $6de3: $22
    ld [bc], a                                    ; $6de4: $02
    rst $38                                       ; $6de5: $ff
    and [hl]                                      ; $6de6: $a6
    ld bc, $0810                                  ; $6de7: $01 $10 $08
    ld d, h                                       ; $6dea: $54
    jr nz, @+$2a                                  ; $6deb: $20 $28

    nop                                           ; $6ded: $00
    inc d                                         ; $6dee: $14
    sub b                                         ; $6def: $90
    nop                                           ; $6df0: $00
    inc bc                                        ; $6df1: $03
    jr jr_09b_6dfb                                ; $6df2: $18 $07

    and b                                         ; $6df4: $a0
    ld c, h                                       ; $6df5: $4c
    nop                                           ; $6df6: $00
    rst $38                                       ; $6df7: $ff
    nop                                           ; $6df8: $00
    ld [bc], a                                    ; $6df9: $02
    ld a, [bc]                                    ; $6dfa: $0a

jr_09b_6dfb:
    nop                                           ; $6dfb: $00
    ld d, l                                       ; $6dfc: $55
    ld [bc], a                                    ; $6dfd: $02
    adc d                                         ; $6dfe: $8a
    inc b                                         ; $6dff: $04
    inc a                                         ; $6e00: $3c
    ld a, [bc]                                    ; $6e01: $0a
    ld a, [hl+]                                   ; $6e02: $2a
    xor d                                         ; $6e03: $aa
    add b                                         ; $6e04: $80
    inc b                                         ; $6e05: $04
    rst $38                                       ; $6e06: $ff
    ld d, d                                       ; $6e07: $52
    ld b, $09                                     ; $6e08: $06 $09
    sub b                                         ; $6e0a: $90
    ld b, $74                                     ; $6e0b: $06 $74
    ld c, b                                       ; $6e0d: $48
    inc d                                         ; $6e0e: $14
    dec d                                         ; $6e0f: $15
    ld [$a200], sp                                ; $6e10: $08 $00 $a2
    ld bc, $4446                                  ; $6e13: $01 $46 $44
    ld b, b                                       ; $6e16: $40
    ld b, d                                       ; $6e17: $42
    add b                                         ; $6e18: $80
    add h                                         ; $6e19: $84
    cpl                                           ; $6e1a: $2f
    nop                                           ; $6e1b: $00
    dec e                                         ; $6e1c: $1d
    ld b, h                                       ; $6e1d: $44
    ld b, b                                       ; $6e1e: $40
    ld d, b                                       ; $6e1f: $50
    add b                                         ; $6e20: $80
    ld d, $44                                     ; $6e21: $16 $44
    jr c, jr_09b_6db3                             ; $6e23: $38 $8e

    ld a, [bc]                                    ; $6e25: $0a
    ld l, d                                       ; $6e26: $6a
    ld [$44fe], sp                                ; $6e27: $08 $fe $44
    jr z, jr_09b_6ea2                             ; $6e2a: $28 $76

    jr jr_09b_6e74                                ; $6e2c: $18 $46

    jr c, jr_09b_6ea6                             ; $6e2e: $38 $76

    jr jr_09b_6e78                                ; $6e30: $18 $46

    jr c, jr_09b_6e9a                             ; $6e32: $38 $66

    jr jr_09b_6e6c                                ; $6e34: $18 $36

    jr c, jr_09b_6e8d                             ; $6e36: $38 $55

    jr z, jr_09b_6e3a                             ; $6e38: $28 $00

jr_09b_6e3a:
    xor [hl]                                      ; $6e3a: $ae
    ret nz                                        ; $6e3b: $c0

    nop                                           ; $6e3c: $00
    cp e                                          ; $6e3d: $bb
    or h                                          ; $6e3e: $b4
    rlca                                          ; $6e3f: $07
    cp l                                          ; $6e40: $bd
    nop                                           ; $6e41: $00
    ld [$c280], a                                 ; $6e42: $ea $80 $c2
    ld bc, $59a4                                  ; $6e45: $01 $a4 $59
    ld d, b                                       ; $6e48: $50
    add hl, hl                                    ; $6e49: $29
    and h                                         ; $6e4a: $a4
    add hl, de                                    ; $6e4b: $19
    ldh a, [rNR31]                                ; $6e4c: $f0 $1b

jr_09b_6e4e:
    add hl, bc                                    ; $6e4e: $09
    ldh [rNR24], a                                ; $6e4f: $e0 $19
    ld a, [bc]                                    ; $6e51: $0a
    jr @-$2e                                      ; $6e52: $18 $d0

    ld [$2ca8], sp                                ; $6e54: $08 $a8 $2c
    rlca                                          ; $6e57: $07
    ld h, [hl]                                    ; $6e58: $66
    jr jr_09b_6e5b                                ; $6e59: $18 $00

jr_09b_6e5b:
    ld d, h                                       ; $6e5b: $54
    jr nz, jr_09b_6e4e                            ; $6e5c: $20 $f0

    add hl, bc                                    ; $6e5e: $09
    ldh a, [$09]                                  ; $6e5f: $f0 $09
    inc b                                         ; $6e61: $04
    add hl, de                                    ; $6e62: $19
    ld d, e                                       ; $6e63: $53
    db $10                                        ; $6e64: $10
    inc b                                         ; $6e65: $04
    nop                                           ; $6e66: $00
    or b                                          ; $6e67: $b0
    inc h                                         ; $6e68: $24
    nop                                           ; $6e69: $00
    inc b                                         ; $6e6a: $04
    add hl, de                                    ; $6e6b: $19

jr_09b_6e6c:
    jp c, $ea08                                   ; $6e6c: $da $08 $ea

    ld [$24f8], sp                                ; $6e6f: $08 $f8 $24
    jr z, jr_09b_6e8e                             ; $6e72: $28 $1a

jr_09b_6e74:
    jr c, jr_09b_6e9a                             ; $6e74: $38 $24

    jr jr_09b_6e84                                ; $6e76: $18 $0c

jr_09b_6e78:
    ld c, b                                       ; $6e78: $48
    jr nc, @+$0a                                  ; $6e79: $30 $08

    xor h                                         ; $6e7b: $ac
    ret nc                                        ; $6e7c: $d0

    sub b                                         ; $6e7d: $90
    nop                                           ; $6e7e: $00
    db $fc                                        ; $6e7f: $fc
    xor a                                         ; $6e80: $af
    call c, $ff87                                 ; $6e81: $dc $87 $ff

jr_09b_6e84:
    and b                                         ; $6e84: $a0
    rst $18                                       ; $6e85: $df
    or c                                          ; $6e86: $b1
    nop                                           ; $6e87: $00
    rst $08                                       ; $6e88: $cf
    cp e                                          ; $6e89: $bb
    push bc                                       ; $6e8a: $c5
    cp [hl]                                       ; $6e8b: $be
    pop bc                                        ; $6e8c: $c1

jr_09b_6e8d:
    ret c                                         ; $6e8d: $d8

jr_09b_6e8e:
    ccf                                           ; $6e8e: $3f
    ccf                                           ; $6e8f: $3f
    nop                                           ; $6e90: $00
    pop bc                                        ; $6e91: $c1
    jp nc, $beff                                  ; $6e92: $d2 $ff $be

    pop bc                                        ; $6e95: $c1
    sub c                                         ; $6e96: $91
    rst $28                                       ; $6e97: $ef
    ld a, [hl]                                    ; $6e98: $7e
    nop                                           ; $6e99: $00

jr_09b_6e9a:
    add c                                         ; $6e9a: $81
    and h                                         ; $6e9b: $a4

jr_09b_6e9c:
    ei                                            ; $6e9c: $fb
    cp $81                                        ; $6e9d: $fe $81
    ldh [$80], a                                  ; $6e9f: $e0 $80
    adc l                                         ; $6ea1: $8d

jr_09b_6ea2:
    nop                                           ; $6ea2: $00
    nop                                           ; $6ea3: $00
    ld [hl-], a                                   ; $6ea4: $32
    inc c                                         ; $6ea5: $0c

jr_09b_6ea6:
    adc h                                         ; $6ea6: $8c
    ld e, $84                                     ; $6ea7: $1e $84
    ld b, d                                       ; $6ea9: $42
    and d                                         ; $6eaa: $a2
    ld [bc], a                                    ; $6eab: $02
    ret nz                                        ; $6eac: $c0

    ld a, [bc]                                    ; $6ead: $0a
    ret nz                                        ; $6eae: $c0

    ld h, e                                       ; $6eaf: $63
    ret nz                                        ; $6eb0: $c0

    cp a                                          ; $6eb1: $bf
    ld [bc], a                                    ; $6eb2: $02
    nop                                           ; $6eb3: $00
    sbc a                                         ; $6eb4: $9f
    inc b                                         ; $6eb5: $04
    ldh [$bd], a                                  ; $6eb6: $e0 $bd
    jp nz, $c0bf                                  ; $6eb8: $c2 $bf $c0

    inc b                                         ; $6ebb: $04
    ld [$c1be], sp                                ; $6ebc: $08 $be $c1
    nop                                           ; $6ebf: $00
    adc e                                         ; $6ec0: $8b
    rst $38                                       ; $6ec1: $ff
    ld a, a                                       ; $6ec2: $7f
    ret nz                                        ; $6ec3: $c0

    call nc, $bf7f                                ; $6ec4: $d4 $7f $bf
    ld h, b                                       ; $6ec7: $60
    nop                                           ; $6ec8: $00
    cp d                                          ; $6ec9: $ba
    ld a, a                                       ; $6eca: $7f
    adc l                                         ; $6ecb: $8d
    ld [hl], d                                    ; $6ecc: $72
    sub d                                         ; $6ecd: $92
    ld h, b                                       ; $6ece: $60
    and c                                         ; $6ecf: $a1
    ld b, b                                       ; $6ed0: $40
    nop                                           ; $6ed1: $00
    ldh [$c0], a                                  ; $6ed2: $e0 $c0
    ld d, h                                       ; $6ed4: $54
    db $e3                                        ; $6ed5: $e3
    dec bc                                        ; $6ed6: $0b
    db $e4                                        ; $6ed7: $e4
    jr nc, @-$1e                                  ; $6ed8: $30 $e0

    nop                                           ; $6eda: $00
    pop hl                                        ; $6edb: $e1
    di                                            ; $6edc: $f3
    ld d, [hl]                                    ; $6edd: $56
    ei                                            ; $6ede: $fb
    xor a                                         ; $6edf: $af
    ld e, a                                       ; $6ee0: $5f
    ld d, [hl]                                    ; $6ee1: $56
    dec hl                                        ; $6ee2: $2b
    jr nz, jr_09b_6e9c                            ; $6ee3: $20 $b7

    ret z                                         ; $6ee5: $c8

    ld h, $08                                     ; $6ee6: $26 $08
    cp h                                          ; $6ee8: $bc
    jp $c6b9                                      ; $6ee9: $c3 $b9 $c6


    or h                                          ; $6eec: $b4
    nop                                           ; $6eed: $00
    res 7, e                                      ; $6eee: $cb $bb
    add $b0                                       ; $6ef0: $c6 $b0
    rst $08                                       ; $6ef2: $cf
    add b                                         ; $6ef3: $80
    ld b, b                                       ; $6ef4: $40
    ld b, c                                       ; $6ef5: $41
    ld [hl+], a                                   ; $6ef6: $22
    add b                                         ; $6ef7: $80
    sub b                                         ; $6ef8: $90
    ld h, b                                       ; $6ef9: $60
    ld bc, $0010                                  ; $6efa: $01 $10 $00
    add c                                         ; $6efd: $81
    cp b                                          ; $6efe: $b8
    rlca                                          ; $6eff: $07
    add c                                         ; $6f00: $81
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    ei                                            ; $6f03: $fb
    rlca                                          ; $6f04: $07
    ld a, [hl]                                    ; $6f05: $7e
    inc bc                                        ; $6f06: $03
    ld a, a                                       ; $6f07: $7f
    add e                                         ; $6f08: $83
    cp a                                          ; $6f09: $bf
    ld b, b                                       ; $6f0a: $40
    ld b, b                                       ; $6f0b: $40
    ld a, [hl+]                                   ; $6f0c: $2a
    dec c                                         ; $6f0d: $0d
    ccf                                           ; $6f0e: $3f
    rst $38                                       ; $6f0f: $ff
    ld b, b                                       ; $6f10: $40
    rst $38                                       ; $6f11: $ff
    sbc e                                         ; $6f12: $9b
    and $24                                       ; $6f13: $e6 $24
    or b                                          ; $6f15: $b0
    rst $08                                       ; $6f16: $cf
    jr z, jr_09b_6f21                             ; $6f17: $28 $08

    xor e                                         ; $6f19: $ab
    sub $08                                       ; $6f1a: $d6 $08
    jr jr_09b_6f1e                                ; $6f1c: $18 $00

jr_09b_6f1e:
    nop                                           ; $6f1e: $00
    ld e, b                                       ; $6f1f: $58
    add l                                         ; $6f20: $85

jr_09b_6f21:
    ldh [rTAC], a                                 ; $6f21: $e0 $07
    adc c                                         ; $6f23: $89
    inc l                                         ; $6f24: $2c
    db $10                                        ; $6f25: $10
    inc [hl]                                      ; $6f26: $34
    db $10                                        ; $6f27: $10
    rst $38                                       ; $6f28: $ff
    dec d                                         ; $6f29: $15
    ld [$3f60], a                                 ; $6f2a: $ea $60 $3f
    call nz, Call_09b_5e07                        ; $6f2d: $c4 $07 $5e
    ld e, $7f                                     ; $6f30: $1e $7f
    add b                                         ; $6f32: $80
    rlca                                          ; $6f33: $07
    ld bc, $0031                                  ; $6f34: $01 $31 $00
    nop                                           ; $6f37: $00
    ld c, h                                       ; $6f38: $4c
    jr nc, @+$33                                  ; $6f39: $30 $31

    ld a, b                                       ; $6f3b: $78
    ld hl, $4542                                  ; $6f3c: $21 $42 $45
    nop                                           ; $6f3f: $00
    inc bc                                        ; $6f40: $03
    ld b, b                                       ; $6f41: $40
    inc bc                                        ; $6f42: $03
    sub $03                                       ; $6f43: $d6 $03
    dec [hl]                                      ; $6f45: $35
    add hl, bc                                    ; $6f46: $09
    dec c                                         ; $6f47: $0d
    nop                                           ; $6f48: $00
    add hl, sp                                    ; $6f49: $39
    push af                                       ; $6f4a: $f5
    add hl, sp                                    ; $6f4b: $39
    push hl                                       ; $6f4c: $e5
    ld sp, hl                                     ; $6f4d: $f9
    dec b                                         ; $6f4e: $05
    ld sp, hl                                     ; $6f4f: $f9
    adc l                                         ; $6f50: $8d
    nop                                           ; $6f51: $00
    pop af                                        ; $6f52: $f1
    db $fd                                        ; $6f53: $fd
    add c                                         ; $6f54: $81
    ld a, l                                       ; $6f55: $7d
    add c                                         ; $6f56: $81
    rlca                                          ; $6f57: $07
    inc bc                                        ; $6f58: $03
    ld a, [hl+]                                   ; $6f59: $2a
    nop                                           ; $6f5a: $00
    rst $00                                       ; $6f5b: $c7
    ret nc                                        ; $6f5c: $d0

    daa                                           ; $6f5d: $27
    inc c                                         ; $6f5e: $0c
    rlca                                          ; $6f5f: $07
    add a                                         ; $6f60: $87
    rst $08                                       ; $6f61: $cf
    ld l, d                                       ; $6f62: $6a
    nop                                           ; $6f63: $00
    rst $18                                       ; $6f64: $df
    pop af                                        ; $6f65: $f1
    cp $53                                        ; $6f66: $fe $53
    db $ec                                        ; $6f68: $ec
    pop de                                        ; $6f69: $d1
    rst $38                                       ; $6f6a: $ff
    cp $00                                        ; $6f6b: $fe $00
    inc bc                                        ; $6f6d: $03
    dec hl                                        ; $6f6e: $2b
    cp $fd                                        ; $6f6f: $fe $fd
    ld b, $5f                                     ; $6f71: $06 $5f
    db $fc                                        ; $6f73: $fc
    or d                                          ; $6f74: $b2
    nop                                           ; $6f75: $00
    ld c, l                                       ; $6f76: $4d
    ld c, e                                       ; $6f77: $4b
    inc b                                         ; $6f78: $04
    add l                                         ; $6f79: $85
    ld [bc], a                                    ; $6f7a: $02
    ld sp, hl                                     ; $6f7b: $f9
    dec b                                         ; $6f7c: $05
    db $fd                                        ; $6f7d: $fd
    nop                                           ; $6f7e: $00
    ld bc, $21dd                                  ; $6f7f: $01 $dd $21
    db $fd                                        ; $6f82: $fd
    ld bc, $01fd                                  ; $6f83: $01 $fd $01
    push af                                       ; $6f86: $f5
    nop                                           ; $6f87: $00
    add hl, bc                                    ; $6f88: $09
    ld a, l                                       ; $6f89: $7d
    add c                                         ; $6f8a: $81
    db $ed                                        ; $6f8b: $ed
    ld de, $dfea                                  ; $6f8c: $11 $ea $df
    ld d, l                                       ; $6f8f: $55
    nop                                           ; $6f90: $00
    rst $28                                       ; $6f91: $ef
    db $eb                                        ; $6f92: $eb
    rst $10                                       ; $6f93: $d7
    push af                                       ; $6f94: $f5
    rrca                                          ; $6f95: $0f
    db $eb                                        ; $6f96: $eb
    rla                                           ; $6f97: $17
    db $f4                                        ; $6f98: $f4
    jr nz, jr_09b_6faa                            ; $6f99: $20 $0f

    rst $38                                       ; $6f9b: $ff
    jp nc, $0104                                  ; $6f9c: $d2 $04 $01

    ld [bc], a                                    ; $6f9f: $02
    add d                                         ; $6fa0: $82
    ld bc, $0291                                  ; $6fa1: $01 $91 $02
    nop                                           ; $6fa4: $00
    ld b, b                                       ; $6fa5: $40
    add b                                         ; $6fa6: $80
    add b                                         ; $6fa7: $80
    nop                                           ; $6fa8: $00
    ld b, h                                       ; $6fa9: $44

jr_09b_6faa:
    inc b                                         ; $6faa: $04
    nop                                           ; $6fab: $00
    ld b, b                                       ; $6fac: $40
    ld b, b                                       ; $6fad: $40
    add b                                         ; $6fae: $80
    ld a, [hl+]                                   ; $6faf: $2a
    ld [$817d], sp                                ; $6fb0: $08 $7d $81
    ld e, l                                       ; $6fb3: $5d
    and c                                         ; $6fb4: $a1
    ld a, l                                       ; $6fb5: $7d
    add c                                         ; $6fb6: $81
    nop                                           ; $6fb7: $00
    cp l                                          ; $6fb8: $bd
    ld b, c                                       ; $6fb9: $41
    cp l                                          ; $6fba: $bd
    ld b, c                                       ; $6fbb: $41
    dec [hl]                                      ; $6fbc: $35
    ld c, c                                       ; $6fbd: $49
    ld bc, $00ff                                  ; $6fbe: $01 $ff $00
    ld d, h                                       ; $6fc1: $54
    xor e                                         ; $6fc2: $ab
    jp hl                                         ; $6fc3: $e9


    rla                                           ; $6fc4: $17
    db $f4                                        ; $6fc5: $f4
    dec bc                                        ; $6fc6: $0b
    ld sp, hl                                     ; $6fc7: $f9
    rlca                                          ; $6fc8: $07
    ld bc, $43bc                                  ; $6fc9: $01 $bc $43
    ld sp, hl                                     ; $6fcc: $f9
    rlca                                          ; $6fcd: $07
    db $fc                                        ; $6fce: $fc
    inc bc                                        ; $6fcf: $03
    sub b                                         ; $6fd0: $90
    jr z, jr_09b_6ff3                             ; $6fd1: $28 $20

    adc b                                         ; $6fd3: $88
    jr nc, jr_09b_6ffe                            ; $6fd4: $30 $28

    cp l                                          ; $6fd6: $bd
    ld b, c                                       ; $6fd7: $41
    dec a                                         ; $6fd8: $3d
    jr z, jr_09b_6fdb                             ; $6fd9: $28 $00

jr_09b_6fdb:
    dec a                                         ; $6fdb: $3d
    ld b, c                                       ; $6fdc: $41
    sbc l                                         ; $6fdd: $9d
    ld a, b                                       ; $6fde: $78
    ld h, c                                       ; $6fdf: $61
    ld [$0418], sp                                ; $6fe0: $08 $18 $04
    add hl, bc                                    ; $6fe3: $09
    ldh [rOBP0], a                                ; $6fe4: $e0 $48
    ld [$0429], sp                                ; $6fe6: $08 $29 $04
    nop                                           ; $6fe9: $00
    and c                                         ; $6fea: $a1
    and $10                                       ; $6feb: $e6 $10
    ld de, $18d6                                  ; $6fed: $11 $d6 $18
    inc a                                         ; $6ff0: $3c
    rrca                                          ; $6ff1: $0f
    ld e, a                                       ; $6ff2: $5f

jr_09b_6ff3:
    and b                                         ; $6ff3: $a0
    ld b, b                                       ; $6ff4: $40
    rrca                                          ; $6ff5: $0f
    db $10                                        ; $6ff6: $10
    add hl, sp                                    ; $6ff7: $39
    or d                                          ; $6ff8: $b2

jr_09b_6ff9:
    inc b                                         ; $6ff9: $04
    rst $08                                       ; $6ffa: $cf
    cp c                                          ; $6ffb: $b9
    rst $00                                       ; $6ffc: $c7
    cp l                                          ; $6ffd: $bd

jr_09b_6ffe:
    jp Jump_000_1938                              ; $6ffe: $c3 $38 $19


    ret                                           ; $7001: $c9


    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    ld c, b                                       ; $7005: $48
    add c                                         ; $7006: $81
    ld c, b                                       ; $7007: $48
    add l                                         ; $7008: $85
    ld c, b                                       ; $7009: $48
    ld a, e                                       ; $700a: $7b
    call $cb83                                    ; $700b: $cd $83 $cb
    dec b                                         ; $700e: $05
    add b                                         ; $700f: $80
    rst $30                                       ; $7010: $f7
    adc b                                         ; $7011: $88
    cp l                                          ; $7012: $bd
    jp nz, Jump_000_0808                          ; $7013: $c2 $08 $08

    ld e, b                                       ; $7016: $58
    ld c, $03                                     ; $7017: $0e $03
    cp h                                          ; $7019: $bc
    jp $c5ba                                      ; $701a: $c3 $ba $c5


    sbc a                                         ; $701d: $9f
    ldh [$a6], a                                  ; $701e: $e0 $a6
    add hl, bc                                    ; $7020: $09
    cp e                                          ; $7021: $bb
    dec de                                        ; $7022: $1b
    nop                                           ; $7023: $00
    adc $ff                                       ; $7024: $ce $ff
    ld a, b                                       ; $7026: $78
    rst $38                                       ; $7027: $ff
    inc bc                                        ; $7028: $03
    db $fc                                        ; $7029: $fc
    rst $38                                       ; $702a: $ff
    nop                                           ; $702b: $00
    ld hl, $08f7                                  ; $702c: $21 $f7 $08
    ld hl, sp+$1b                                 ; $702f: $f8 $1b
    ld l, a                                       ; $7031: $6f

jr_09b_7032:
    sub b                                         ; $7032: $90

jr_09b_7033:
    rst $38                                       ; $7033: $ff
    nop                                           ; $7034: $00
    inc c                                         ; $7035: $0c
    ld l, $e0                                     ; $7036: $2e $e0
    xor a                                         ; $7038: $af
    dec c                                         ; $7039: $0d
    cp b                                          ; $703a: $b8
    jr z, jr_09b_6ff9                             ; $703b: $28 $bc

    ld [$27d9], sp                                ; $703d: $08 $d9 $27
    ld a, h                                       ; $7040: $7c
    add e                                         ; $7041: $83
    add b                                         ; $7042: $80
    add hl, bc                                    ; $7043: $09
    nop                                           ; $7044: $00
    ld b, c                                       ; $7045: $41
    add b                                         ; $7046: $80
    adc b                                         ; $7047: $88
    ret nz                                        ; $7048: $c0

    ld [hl], b                                    ; $7049: $70
    add hl, sp                                    ; $704a: $39
    ld b, l                                       ; $704b: $45

jr_09b_704c:
    ret z                                         ; $704c: $c8

    jr z, jr_09b_7068                             ; $704d: $28 $19

    ld sp, hl                                     ; $704f: $f9
    rlca                                          ; $7050: $07
    db $fd                                        ; $7051: $fd
    inc l                                         ; $7052: $2c
    nop                                           ; $7053: $00
    inc b                                         ; $7054: $04
    jr z, jr_09b_7033                             ; $7055: $28 $dc

    inc hl                                        ; $7057: $23
    ld b, b                                       ; $7058: $40
    rlca                                          ; $7059: $07
    add b                                         ; $705a: $80
    inc e                                         ; $705b: $1c
    ld bc, $8052                                  ; $705c: $01 $52 $80
    add b                                         ; $705f: $80
    ld [de], a                                    ; $7060: $12
    ld b, b                                       ; $7061: $40
    sub d                                         ; $7062: $92
    ld h, c                                       ; $7063: $61
    nop                                           ; $7064: $00
    sub d                                         ; $7065: $92
    sbc [hl]                                      ; $7066: $9e
    di                                            ; $7067: $f3

jr_09b_7068:
    cp l                                          ; $7068: $bd
    ld b, c                                       ; $7069: $41
    ld a, l                                       ; $706a: $7d
    ld b, c                                       ; $706b: $41
    or l                                          ; $706c: $b5
    nop                                           ; $706d: $00
    ld c, c                                       ; $706e: $49
    ld a, l                                       ; $706f: $7d
    ld b, c                                       ; $7070: $41
    xor l                                         ; $7071: $ad
    ld d, c                                       ; $7072: $51
    ld a, l                                       ; $7073: $7d
    pop bc                                        ; $7074: $c1
    cp l                                          ; $7075: $bd
    add b                                         ; $7076: $80
    ld [bc], a                                    ; $7077: $02
    nop                                           ; $7078: $00
    cp $01                                        ; $7079: $fe $01
    rst $38                                       ; $707b: $ff
    nop                                           ; $707c: $00
    ei                                            ; $707d: $fb
    inc b                                         ; $707e: $04
    ld a, a                                       ; $707f: $7f
    db $10                                        ; $7080: $10
    add b                                         ; $7081: $80
    db $fd                                        ; $7082: $fd
    ld [bc], a                                    ; $7083: $02
    ld a, b                                       ; $7084: $78
    inc e                                         ; $7085: $1c
    ld [hl], e                                    ; $7086: $73
    rst $38                                       ; $7087: $ff
    ld e, $ff                                     ; $7088: $1e $ff
    jr z, jr_09b_704c                             ; $708a: $28 $c0

    ccf                                           ; $708c: $3f
    add b                                         ; $708d: $80
    jr c, @+$7f                                   ; $708e: $38 $7d

    and h                                         ; $7090: $a4
    ld bc, $25d9                                  ; $7091: $01 $d9 $25
    ld a, l                                       ; $7094: $7d
    ld [$fd81], sp                                ; $7095: $08 $81 $fd
    ld bc, $6b01                                  ; $7098: $01 $01 $6b
    inc h                                         ; $709b: $24
    add b                                         ; $709c: $80
    rst $38                                       ; $709d: $ff
    xor d                                         ; $709e: $aa
    ld c, d                                       ; $709f: $4a
    push de                                       ; $70a0: $d5
    call $ff10                                    ; $70a1: $cd $10 $ff
    xor d                                         ; $70a4: $aa
    ld [hl], b                                    ; $70a5: $70
    ld b, $83                                     ; $70a6: $06 $83
    ld e, b                                       ; $70a8: $58
    ld b, $03                                     ; $70a9: $06 $03
    add b                                         ; $70ab: $80
    inc b                                         ; $70ac: $04
    jr nz, jr_09b_7032                            ; $70ad: $20 $83

    rst $38                                       ; $70af: $ff
    pop bc                                        ; $70b0: $c1
    cp a                                          ; $70b1: $bf
    dec h                                         ; $70b2: $25
    sbc d                                         ; $70b3: $9a
    ld a, [bc]                                    ; $70b4: $0a
    ld [bc], a                                    ; $70b5: $02
    sub h                                         ; $70b6: $94
    inc h                                         ; $70b7: $24
    sbc b                                         ; $70b8: $98
    dec c                                         ; $70b9: $0d
    sub b                                         ; $70ba: $90
    ld [hl+], a                                   ; $70bb: $22
    inc b                                         ; $70bc: $04
    nop                                           ; $70bd: $00
    cpl                                           ; $70be: $2f
    dec d                                         ; $70bf: $15
    sbc a                                         ; $70c0: $9f
    rrca                                          ; $70c1: $0f
    sbc a                                         ; $70c2: $9f
    add b                                         ; $70c3: $80
    dec e                                         ; $70c4: $1d
    ld bc, $03c4                                  ; $70c5: $01 $c4 $03
    dec d                                         ; $70c8: $15
    ld a, a                                       ; $70c9: $7f
    ld d, $43                                     ; $70ca: $16 $43
    rst $38                                       ; $70cc: $ff
    inc e                                         ; $70cd: $1c
    inc hl                                        ; $70ce: $23
    inc b                                         ; $70cf: $04
    ld [bc], a                                    ; $70d0: $02
    ld a, [hl+]                                   ; $70d1: $2a
    inc b                                         ; $70d2: $04
    db $10                                        ; $70d3: $10
    jr @-$32                                      ; $70d4: $18 $cc

    dec de                                        ; $70d6: $1b
    ld a, [bc]                                    ; $70d7: $0a
    ld e, d                                       ; $70d8: $5a
    add b                                         ; $70d9: $80
    or h                                          ; $70da: $b4
    ld b, b                                       ; $70db: $40
    sbc a                                         ; $70dc: $9f
    ld c, $df                                     ; $70dd: $0e $df
    db $fc                                        ; $70df: $fc
    inc hl                                        ; $70e0: $23
    inc b                                         ; $70e1: $04
    ld sp, $0902                                  ; $70e2: $31 $02 $09
    jr nz, jr_09b_7107                            ; $70e5: $20 $20

    db $fc                                        ; $70e7: $fc
    dec de                                        ; $70e8: $1b
    sub h                                         ; $70e9: $94
    nop                                           ; $70ea: $00
    ld a, [bc]                                    ; $70eb: $0a
    add c                                         ; $70ec: $81
    db $10                                        ; $70ed: $10
    cp $2a                                        ; $70ee: $fe $2a
    inc l                                         ; $70f0: $2c
    inc [hl]                                      ; $70f1: $34
    inc l                                         ; $70f2: $2c
    ld a, [hl+]                                   ; $70f3: $2a
    inc l                                         ; $70f4: $2c
    inc [hl]                                      ; $70f5: $34
    inc l                                         ; $70f6: $2c
    ld a, [de]                                    ; $70f7: $1a
    inc l                                         ; $70f8: $2c
    inc h                                         ; $70f9: $24
    inc a                                         ; $70fa: $3c
    sbc $3b                                       ; $70fb: $de $3b

jr_09b_70fd:
    ld h, b                                       ; $70fd: $60
    push bc                                       ; $70fe: $c5
    ld a, [bc]                                    ; $70ff: $0a
    inc d                                         ; $7100: $14
    sbc $3b                                       ; $7101: $de $3b
    inc bc                                        ; $7103: $03
    nop                                           ; $7104: $00
    ld b, $fe                                     ; $7105: $06 $fe

jr_09b_7107:
    ld d, e                                       ; $7107: $53
    ld b, b                                       ; $7108: $40
    ld a, [hl+]                                   ; $7109: $2a
    ld b, $85                                     ; $710a: $06 $85
    xor $4b                                       ; $710c: $ee $4b
    ld bc, $0200                                  ; $710e: $01 $00 $02
    ld bc, $3daf                                  ; $7111: $01 $af $3d
    ld bc, $1030                                  ; $7114: $01 $30 $10
    nop                                           ; $7117: $00
    dec c                                         ; $7118: $0d
    nop                                           ; $7119: $00
    ld a, [de]                                    ; $711a: $1a
    nop                                           ; $711b: $00
    inc [hl]                                      ; $711c: $34
    nop                                           ; $711d: $00
    ld l, b                                       ; $711e: $68
    nop                                           ; $711f: $00
    ld [hl], b                                    ; $7120: $70
    ret nc                                        ; $7121: $d0

    sbc h                                         ; $7122: $9c
    inc b                                         ; $7123: $04
    ld bc, $3068                                  ; $7124: $01 $68 $30
    ld [$0007], sp                                ; $7127: $08 $07 $00
    inc c                                         ; $712a: $0c
    ld [bc], a                                    ; $712b: $02
    nop                                           ; $712c: $00
    ld a, [de]                                    ; $712d: $1a
    inc b                                         ; $712e: $04
    inc [hl]                                      ; $712f: $34
    ld [$0078], sp                                ; $7130: $08 $78 $00
    and b                                         ; $7133: $a0
    ld b, b                                       ; $7134: $40
    xor [hl]                                      ; $7135: $ae
    sub [hl]                                      ; $7136: $96
    ld a, [bc]                                    ; $7137: $0a
    inc c                                         ; $7138: $0c
    db $f4                                        ; $7139: $f4
    ld b, $10                                     ; $713a: $06 $10
    db $f4                                        ; $713c: $f4
    ld b, $12                                     ; $713d: $06 $12
    inc c                                         ; $713f: $0c
    inc l                                         ; $7140: $2c
    ld e, b                                       ; $7141: $58
    ld a, [bc]                                    ; $7142: $0a
    or b                                          ; $7143: $b0
    db $10                                        ; $7144: $10
    rlca                                          ; $7145: $07
    jr z, jr_09b_7148                             ; $7146: $28 $00

jr_09b_7148:
    inc h                                         ; $7148: $24
    inc h                                         ; $7149: $24
    inc a                                         ; $714a: $3c
    and b                                         ; $714b: $a0
    ret nz                                        ; $714c: $c0

    ret nz                                        ; $714d: $c0

    add b                                         ; $714e: $80
    cp h                                          ; $714f: $bc
    inc b                                         ; $7150: $04
    jr z, jr_09b_70fd                             ; $7151: $28 $aa

    adc $03                                       ; $7153: $ce $03
    and b                                         ; $7155: $a0
    ld d, b                                       ; $7156: $50
    and $02                                       ; $7157: $e6 $02
    ld a, [hl+]                                   ; $7159: $2a
    inc a                                         ; $715a: $3c
    ld sp, hl                                     ; $715b: $f9
    ld b, $0d                                     ; $715c: $06 $0d
    rla                                           ; $715e: $17
    nop                                           ; $715f: $00
    add hl, hl                                    ; $7160: $29
    nop                                           ; $7161: $00
    ld d, a                                       ; $7162: $57
    ld a, [bc]                                    ; $7163: $0a
    ld b, b                                       ; $7164: $40
    adc [hl]                                      ; $7165: $8e
    push de                                       ; $7166: $d5
    sbc [hl]                                      ; $7167: $9e
    ld bc, $fe07                                  ; $7168: $01 $07 $fe
    rst $38                                       ; $716b: $ff
    ld a, a                                       ; $716c: $7f
    add b                                         ; $716d: $80
    ld d, c                                       ; $716e: $51
    ld b, h                                       ; $716f: $44
    dec b                                         ; $7170: $05
    ret c                                         ; $7171: $d8

    ld [$2e77], sp                                ; $7172: $08 $77 $2e
    add h                                         ; $7175: $84
    ld d, b                                       ; $7176: $50
    ld e, [hl]                                    ; $7177: $5e
    inc bc                                        ; $7178: $03
    nop                                           ; $7179: $00
    ld bc, $0280                                  ; $717a: $01 $80 $02
    jr jr_09b_7182                                ; $717d: $18 $03

    add b                                         ; $717f: $80
    dec de                                        ; $7180: $1b
    dec b                                         ; $7181: $05

jr_09b_7182:
    add b                                         ; $7182: $80
    ld b, e                                       ; $7183: $43
    inc c                                         ; $7184: $0c
    nop                                           ; $7185: $00
    jr nc, jr_09b_71c0                            ; $7186: $30 $38

    ld [bc], a                                    ; $7188: $02
    and h                                         ; $7189: $a4
    rlca                                          ; $718a: $07
    jr c, @+$3a                                   ; $718b: $38 $38

    add h                                         ; $718d: $84
    ldh [rNR41], a                                ; $718e: $e0 $20
    nop                                           ; $7190: $00
    dec b                                         ; $7191: $05
    nop                                           ; $7192: $00
    dec bc                                        ; $7193: $0b
    ld [hl], h                                    ; $7194: $74
    dec b                                         ; $7195: $05
    add hl, hl                                    ; $7196: $29
    nop                                           ; $7197: $00
    ld d, b                                       ; $7198: $50
    ld d, c                                       ; $7199: $51
    db $10                                        ; $719a: $10
    inc bc                                        ; $719b: $03
    ld b, c                                       ; $719c: $41
    inc h                                         ; $719d: $24
    inc b                                         ; $719e: $04
    ld b, e                                       ; $719f: $43
    add b                                         ; $71a0: $80
    ld hl, $5880                                  ; $71a1: $21 $80 $58
    ld d, c                                       ; $71a4: $51
    ld b, h                                       ; $71a5: $44
    nop                                           ; $71a6: $00
    ld b, c                                       ; $71a7: $41
    ld c, b                                       ; $71a8: $48
    jr nz, jr_09b_71ab                            ; $71a9: $20 $00

jr_09b_71ab:
    add hl, sp                                    ; $71ab: $39
    ret nc                                        ; $71ac: $d0

    jr nz, @+$22                                  ; $71ad: $20 $20

    dec h                                         ; $71af: $25
    ld b, b                                       ; $71b0: $40
    ret nz                                        ; $71b1: $c0

    ld a, $61                                     ; $71b2: $3e $61
    inc b                                         ; $71b4: $04
    ld [$0840], sp                                ; $71b5: $08 $40 $08
    ld b, $16                                     ; $71b8: $06 $16
    ld de, $09f0                                  ; $71ba: $11 $f0 $09
    rra                                           ; $71bd: $1f
    sbc [hl]                                      ; $71be: $9e
    dec c                                         ; $71bf: $0d

jr_09b_71c0:
    ld e, b                                       ; $71c0: $58
    jr z, jr_09b_71d3                             ; $71c1: $28 $10

    add hl, bc                                    ; $71c3: $09
    ld [$1010], sp                                ; $71c4: $08 $10 $10
    jr nz, @+$57                                  ; $71c7: $20 $55

    ld h, b                                       ; $71c9: $60
    ret nc                                        ; $71ca: $d0

    inc bc                                        ; $71cb: $03
    add c                                         ; $71cc: $81
    add b                                         ; $71cd: $80
    jr nz, @+$07                                  ; $71ce: $20 $05

    jr z, jr_09b_71f3                             ; $71d0: $28 $21

    ld d, b                                       ; $71d2: $50

jr_09b_71d3:
    ld d, b                                       ; $71d3: $50
    ld hl, $bca0                                  ; $71d4: $21 $a0 $bc
    ld c, b                                       ; $71d7: $48
    rlca                                          ; $71d8: $07
    adc [hl]                                      ; $71d9: $8e
    ld bc, $0019                                  ; $71da: $01 $19 $00
    ld sp, $6100                                  ; $71dd: $31 $00 $61
    and l                                         ; $71e0: $a5
    jr jr_09b_71ea                                ; $71e1: $18 $07

    add c                                         ; $71e3: $81
    jr z, @+$29                                   ; $71e4: $28 $27

    cp $01                                        ; $71e6: $fe $01
    jr nc, @+$41                                  ; $71e8: $30 $3f

jr_09b_71ea:
    xor e                                         ; $71ea: $ab
    ld c, $00                                     ; $71eb: $0e $00
    xor a                                         ; $71ed: $af
    ld d, b                                       ; $71ee: $50
    cpl                                           ; $71ef: $2f
    ld d, l                                       ; $71f0: $55
    ld h, [hl]                                    ; $71f1: $66
    rlca                                          ; $71f2: $07

jr_09b_71f3:
    ld a, a                                       ; $71f3: $7f
    db $ec                                        ; $71f4: $ec
    nop                                           ; $71f5: $00
    db $10                                        ; $71f6: $10
    jr c, jr_09b_7207                             ; $71f7: $38 $0e

    ld [$2810], sp                                ; $71f9: $08 $10 $28
    ld [hl], a                                    ; $71fc: $77
    nop                                           ; $71fd: $00

jr_09b_71fe:
    ld c, $20                                     ; $71fe: $0e $20

jr_09b_7200:
    add $00                                       ; $7200: $c6 $00
    ret nc                                        ; $7202: $d0

    ld [bc], a                                    ; $7203: $02
    rst $38                                       ; $7204: $ff

jr_09b_7205:
    adc [hl]                                      ; $7205: $8e
    rlca                                          ; $7206: $07

jr_09b_7207:
    ld sp, hl                                     ; $7207: $f9
    rlca                                          ; $7208: $07
    inc b                                         ; $7209: $04
    jr nz, @-$09                                  ; $720a: $20 $f5

    ld e, $49                                     ; $720c: $1e $49
    ld [hl+], a                                   ; $720e: $22
    add hl, bc                                    ; $720f: $09
    db $ec                                        ; $7210: $ec
    jr z, jr_09b_7205                             ; $7211: $28 $f2

    ld [$3a0b], sp                                ; $7213: $08 $0b $3a
    ld hl, $0003                                  ; $7216: $21 $03 $00
    ld bc, $04b4                                  ; $7219: $01 $b4 $04
    ld [$0821], sp                                ; $721c: $08 $21 $08
    ld bc, $0838                                  ; $721f: $01 $38 $08
    ld b, b                                       ; $7222: $40
    ld b, b                                       ; $7223: $40
    nop                                           ; $7224: $00
    ld a, [bc]                                    ; $7225: $0a
    add c                                         ; $7226: $81
    ld [$8045], sp                                ; $7227: $08 $45 $80
    ld [bc], a                                    ; $722a: $02
    add c                                         ; $722b: $81
    ld e, $09                                     ; $722c: $1e $09
    inc bc                                        ; $722e: $03
    add b                                         ; $722f: $80
    ld b, l                                       ; $7230: $45
    pop de                                        ; $7231: $d1
    ld h, b                                       ; $7232: $60
    ld bc, $0964                                  ; $7233: $01 $64 $09
    ld bc, $100a                                  ; $7236: $01 $0a $10
    ld b, c                                       ; $7239: $41
    add b                                         ; $723a: $80
    inc hl                                        ; $723b: $23
    jr nc, jr_09b_726f                            ; $723c: $30 $31

    pop hl                                        ; $723e: $e1
    inc a                                         ; $723f: $3c
    add hl, de                                    ; $7240: $19
    jr c, @+$0a                                   ; $7241: $38 $08

    adc d                                         ; $7243: $8a
    add hl, de                                    ; $7244: $19
    ld b, c                                       ; $7245: $41
    add b                                         ; $7246: $80
    ld [hl+], a                                   ; $7247: $22
    add c                                         ; $7248: $81
    ld b, h                                       ; $7249: $44
    jr jr_09b_7200                                ; $724a: $18 $b4

    add b                                         ; $724c: $80
    jr jr_09b_72ce                                ; $724d: $18 $7f

    jp c, $0204                                   ; $724f: $da $04 $02

    jr z, jr_09b_71fe                             ; $7252: $28 $aa

    ld a, [hl]                                    ; $7254: $7e
    inc b                                         ; $7255: $04
    adc a                                         ; $7256: $8f
    ld [hl], b                                    ; $7257: $70
    inc b                                         ; $7258: $04
    ldh a, [rP1]                                  ; $7259: $f0 $00
    ldh [rP1], a                                  ; $725b: $e0 $00
    ldh a, [$80]                                  ; $725d: $f0 $80
    ld [bc], a                                    ; $725f: $02
    pop bc                                        ; $7260: $c1
    nop                                           ; $7261: $00
    ld [hl], l                                    ; $7262: $75
    ret nz                                        ; $7263: $c0

    ld hl, sp+$04                                 ; $7264: $f8 $04
    and [hl]                                      ; $7266: $a6
    ld [de], a                                    ; $7267: $12
    sub [hl]                                      ; $7268: $96
    ld bc, $4e8a                                  ; $7269: $01 $8a $4e
    ld [de], a                                    ; $726c: $12
    ret nc                                        ; $726d: $d0

    db $eb                                        ; $726e: $eb

jr_09b_726f:
    ld c, $94                                     ; $726f: $0e $94
    rst $38                                       ; $7271: $ff
    rlca                                          ; $7272: $07
    ld bc, $c2fe                                  ; $7273: $01 $fe $c2
    jr jr_09b_72b9                                ; $7276: $18 $41

    sbc b                                         ; $7278: $98
    ld bc, $8142                                  ; $7279: $01 $42 $81
    nop                                           ; $727c: $00
    add $80                                       ; $727d: $c6 $80
    ret z                                         ; $727f: $c8

    inc b                                         ; $7280: $04
    db $10                                        ; $7281: $10
    ld [$1020], sp                                ; $7282: $08 $20 $10
    ld [hl], b                                    ; $7285: $70
    ld h, b                                       ; $7286: $60
    ld [hl-], a                                   ; $7287: $32
    nop                                           ; $7288: $00
    ld c, $2a                                     ; $7289: $0e $2a
    adc $0a                                       ; $728b: $ce $0a
    inc b                                         ; $728d: $04
    ld [bc], a                                    ; $728e: $02
    dec bc                                        ; $728f: $0b
    inc b                                         ; $7290: $04
    dec b                                         ; $7291: $05
    nop                                           ; $7292: $00
    add c                                         ; $7293: $81
    inc bc                                        ; $7294: $03
    add b                                         ; $7295: $80
    inc b                                         ; $7296: $04
    inc b                                         ; $7297: $04
    nop                                           ; $7298: $00
    ld b, b                                       ; $7299: $40
    inc b                                         ; $729a: $04
    db $10                                        ; $729b: $10
    rla                                           ; $729c: $17
    ld hl, $5080                                  ; $729d: $21 $80 $50
    cp [hl]                                       ; $72a0: $be
    db $10                                        ; $72a1: $10
    ld hl, $10c2                                  ; $72a2: $21 $c2 $10
    ld [bc], a                                    ; $72a5: $02
    add hl, bc                                    ; $72a6: $09
    ld [hl], $0b                                  ; $72a7: $36 $0b
    xor a                                         ; $72a9: $af
    add $19                                       ; $72aa: $c6 $19
    ld bc, $11b8                                  ; $72ac: $01 $b8 $11
    rst $38                                       ; $72af: $ff
    adc $22                                       ; $72b0: $ce $22
    ld d, d                                       ; $72b2: $52
    ld a, [hl+]                                   ; $72b3: $2a
    ld e, $2f                                     ; $72b4: $1e $2f
    jr z, jr_09b_72e3                             ; $72b6: $28 $2b

    scf                                           ; $72b8: $37

jr_09b_72b9:
    pop af                                        ; $72b9: $f1
    ld c, $56                                     ; $72ba: $0e $56
    dec bc                                        ; $72bc: $0b
    or $0a                                        ; $72bd: $f6 $0a
    jr nc, jr_09b_72fb                            ; $72bf: $30 $3a

    db $10                                        ; $72c1: $10
    ld [$2e18], sp                                ; $72c2: $08 $18 $2e
    dec bc                                        ; $72c5: $0b
    or $86                                        ; $72c6: $f6 $86
    ld c, d                                       ; $72c8: $4a
    add [hl]                                      ; $72c9: $86
    rra                                           ; $72ca: $1f
    ld d, $1b                                     ; $72cb: $16 $1b
    ret nz                                        ; $72cd: $c0

jr_09b_72ce:
    ld e, b                                       ; $72ce: $58
    or b                                          ; $72cf: $b0
    ld [hl], b                                    ; $72d0: $70
    jr nz, @+$70                                  ; $72d1: $20 $6e

    dec de                                        ; $72d3: $1b
    inc c                                         ; $72d4: $0c
    xor a                                         ; $72d5: $af
    ld a, h                                       ; $72d6: $7c
    ld h, d                                       ; $72d7: $62
    ld a, [bc]                                    ; $72d8: $0a
    adc b                                         ; $72d9: $88
    dec b                                         ; $72da: $05
    ld [$1350], sp                                ; $72db: $08 $50 $13
    db $10                                        ; $72de: $10
    ld [bc], a                                    ; $72df: $02
    ld d, d                                       ; $72e0: $52
    ld [hl], b                                    ; $72e1: $70
    db $dd                                        ; $72e2: $dd

jr_09b_72e3:
    rrca                                          ; $72e3: $0f
    ret nc                                        ; $72e4: $d0

    ld c, $fb                                     ; $72e5: $0e $fb
    ld [$ff42], sp                                ; $72e7: $08 $42 $ff
    ld bc, $8360                                  ; $72ea: $01 $60 $83
    rst $38                                       ; $72ed: $ff
    pop bc                                        ; $72ee: $c1
    cp a                                          ; $72ef: $bf
    inc b                                         ; $72f0: $04
    ld c, b                                       ; $72f1: $48
    inc de                                        ; $72f2: $13
    nop                                           ; $72f3: $00
    nop                                           ; $72f4: $00
    inc de                                        ; $72f5: $13
    nop                                           ; $72f6: $00
    cp c                                          ; $72f7: $b9
    ld [bc], a                                    ; $72f8: $02
    ld d, [hl]                                    ; $72f9: $56
    xor e                                         ; $72fa: $ab

jr_09b_72fb:
    db $fc                                        ; $72fb: $fc
    ld b, d                                       ; $72fc: $42
    inc bc                                        ; $72fd: $03
    ld [bc], a                                    ; $72fe: $02
    jr @-$44                                      ; $72ff: $18 $ba

    pop bc                                        ; $7301: $c1
    sub d                                         ; $7302: $92
    pop hl                                        ; $7303: $e1
    inc b                                         ; $7304: $04
    ld c, b                                       ; $7305: $48
    ret nc                                        ; $7306: $d0

    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    ret nc                                        ; $7309: $d0

    nop                                           ; $730a: $00
    ld a, d                                       ; $730b: $7a
    add b                                         ; $730c: $80
    sub l                                         ; $730d: $95
    ld [$403f], a                                 ; $730e: $ea $3f $40
    ret nz                                        ; $7311: $c0

    ld [bc], a                                    ; $7312: $02
    jr jr_09b_7319                                ; $7313: $18 $04

    nop                                           ; $7315: $00
    inc b                                         ; $7316: $04

jr_09b_7317:
    nop                                           ; $7317: $00
    xor [hl]                                      ; $7318: $ae

jr_09b_7319:
    nop                                           ; $7319: $00
    ld [$eb14], sp                                ; $731a: $08 $14 $eb
    cp [hl]                                       ; $731d: $be

jr_09b_731e:
    ld b, c                                       ; $731e: $41
    ld [bc], a                                    ; $731f: $02

jr_09b_7320:
    jr jr_09b_731e                                ; $7320: $18 $fc

    inc bc                                        ; $7322: $03
    ld d, [hl]                                    ; $7323: $56
    ld [$ebab], sp                                ; $7324: $08 $ab $eb
    rst $38                                       ; $7327: $ff
    ld b, e                                       ; $7328: $43
    ld [bc], a                                    ; $7329: $02
    jr nz, jr_09b_7317                            ; $732a: $20 $eb

    rst $38                                       ; $732c: $ff
    cp h                                          ; $732d: $bc
    inc b                                         ; $732e: $04
    jp $ffe1                                      ; $732f: $c3 $e1 $ff


    call z, $44f3                                 ; $7332: $cc $f3 $44
    jr c, jr_09b_7376                             ; $7335: $38 $3f

    ret nz                                        ; $7337: $c0

    inc b                                         ; $7338: $04
    sub l                                         ; $7339: $95
    ld [$ffee], a                                 ; $733a: $ea $ee $ff
    call nz, Call_000_2002                        ; $733d: $c4 $02 $20
    xor $ff                                       ; $7340: $ee $ff
    ld bc, $41be                                  ; $7342: $01 $be $41
    inc d                                         ; $7345: $14
    db $eb                                        ; $7346: $eb
    xor d                                         ; $7347: $aa
    rst $38                                       ; $7348: $ff
    nop                                           ; $7349: $00
    ld [bc], a                                    ; $734a: $02
    jr nz, jr_09b_734f                            ; $734b: $20 $02

    xor d                                         ; $734d: $aa
    rst $38                                       ; $734e: $ff

jr_09b_734f:
    ld d, d                                       ; $734f: $52
    xor a                                         ; $7350: $af
    ld hl, sp+$07                                 ; $7351: $f8 $07
    ld [bc], a                                    ; $7353: $02
    ld [$0052], sp                                ; $7354: $08 $52 $00
    xor a                                         ; $7357: $af
    xor c                                         ; $7358: $a9
    ld [bc], a                                    ; $7359: $02
    dec bc                                        ; $735a: $0b
    nop                                           ; $735b: $00
    dec bc                                        ; $735c: $0b
    nop                                           ; $735d: $00
    sub h                                         ; $735e: $94
    db $10                                        ; $735f: $10
    db $eb                                        ; $7360: $eb
    ld a, $c1                                     ; $7361: $3e $c1
    ld [bc], a                                    ; $7363: $02
    ld [$eb94], sp                                ; $7364: $08 $94 $eb
    ld a, d                                       ; $7367: $7a
    add b                                         ; $7368: $80
    add h                                         ; $7369: $84
    ld a, h                                       ; $736a: $7c
    ld [$ae51], sp                                ; $736b: $08 $51 $ae
    ei                                            ; $736e: $fb
    inc b                                         ; $736f: $04
    ld [bc], a                                    ; $7370: $02
    ld [$ae51], sp                                ; $7371: $08 $51 $ae
    jr jr_09b_7320                                ; $7374: $18 $aa

jr_09b_7376:
    nop                                           ; $7376: $00
    jr nz, jr_09b_737b                            ; $7377: $20 $02

    nop                                           ; $7379: $00
    inc h                                         ; $737a: $24

jr_09b_737b:
    ld [$000b], sp                                ; $737b: $08 $0b $00
    ld e, [hl]                                    ; $737e: $5e
    ld b, $01                                     ; $737f: $06 $01
    ld d, $eb                                     ; $7381: $16 $eb
    cp h                                          ; $7383: $bc
    ld b, e                                       ; $7384: $43
    ld [bc], a                                    ; $7385: $02
    ld [$08a0], sp                                ; $7386: $08 $a0 $08
    ret nc                                        ; $7389: $d0

    jr jr_09b_738c                                ; $738a: $18 $00

jr_09b_738c:
    sub l                                         ; $738c: $95
    ld b, b                                       ; $738d: $40
    jr c, jr_09b_73b8                             ; $738e: $38 $28

    inc h                                         ; $7390: $24
    ld [$0020], sp                                ; $7391: $08 $20 $00
    ld [hl], l                                    ; $7394: $75
    jr nz, jr_09b_7397                            ; $7395: $20 $00

jr_09b_7397:
    ld d, l                                       ; $7397: $55
    ld h, l                                       ; $7398: $65
    jr nz, @+$03                                  ; $7399: $20 $01

    ld bc, $c2be                                  ; $739b: $01 $be $c2
    ld a, a                                       ; $739e: $7f
    nop                                           ; $739f: $00
    inc bc                                        ; $73a0: $03
    ldh a, [$80]                                  ; $73a1: $f0 $80
    ld h, l                                       ; $73a3: $65
    nop                                           ; $73a4: $00
    res 0, b                                      ; $73a5: $cb $80
    ld d, a                                       ; $73a7: $57
    nop                                           ; $73a8: $00
    nop                                           ; $73a9: $00
    rst $08                                       ; $73aa: $cf
    add b                                         ; $73ab: $80
    jr jr_09b_73c6                                ; $73ac: $18 $18

    rst $30                                       ; $73ae: $f7
    xor l                                         ; $73af: $ad
    rst $30                                       ; $73b0: $f7
    nop                                           ; $73b1: $00
    xor l                                         ; $73b2: $ad
    inc [hl]                                      ; $73b3: $34
    inc l                                         ; $73b4: $2c
    ld h, [hl]                                    ; $73b5: $66
    inc l                                         ; $73b6: $2c
    db $db                                        ; $73b7: $db

jr_09b_73b8:
    jr @+$01                                      ; $73b8: $18 $ff

    nop                                           ; $73ba: $00
    nop                                           ; $73bb: $00
    db $fd                                        ; $73bc: $fd
    ld [bc], a                                    ; $73bd: $02

jr_09b_73be:
    add b                                         ; $73be: $80
    add b                                         ; $73bf: $80
    ld a, l                                       ; $73c0: $7d
    ld b, e                                       ; $73c1: $43
    cp $00                                        ; $73c2: $fe $00
    ret nz                                        ; $73c4: $c0

    rrca                                          ; $73c5: $0f

jr_09b_73c6:
    ld bc, $00a6                                  ; $73c6: $01 $a6 $00
    db $d3                                        ; $73c9: $d3
    ld hl, $00ca                                  ; $73ca: $21 $ca $00
    jr nc, @+$45                                  ; $73cd: $30 $43

    cp c                                          ; $73cf: $b9
    or d                                          ; $73d0: $b2
    pop bc                                        ; $73d1: $c1
    sbc d                                         ; $73d2: $9a
    pop hl                                        ; $73d3: $e1
    or e                                          ; $73d4: $b3
    ld [$9ac0], sp                                ; $73d5: $08 $c0 $9a
    ldh [$b1], a                                  ; $73d8: $e0 $b1
    inc b                                         ; $73da: $04
    jr jr_09b_73be                                ; $73db: $18 $e1

    ld e, d                                       ; $73dd: $5a
    add l                                         ; $73de: $85
    nop                                           ; $73df: $00
    or l                                          ; $73e0: $b5
    dec bc                                        ; $73e1: $0b
    ld l, e                                       ; $73e2: $6b
    rla                                           ; $73e3: $17
    rst $10                                       ; $73e4: $d7
    cpl                                           ; $73e5: $2f
    xor a                                         ; $73e6: $af
    ld e, a                                       ; $73e7: $5f
    nop                                           ; $73e8: $00
    ld e, a                                       ; $73e9: $5f
    cp a                                          ; $73ea: $bf
    cp a                                          ; $73eb: $bf
    ld a, a                                       ; $73ec: $7f
    cp a                                          ; $73ed: $bf
    ld a, a                                       ; $73ee: $7f
    adc h                                         ; $73ef: $8c
    pop af                                        ; $73f0: $f1
    inc hl                                        ; $73f1: $23
    call z, $04f1                                 ; $73f2: $cc $f1 $04

jr_09b_73f5:
    ld c, b                                       ; $73f5: $48
    ld a, a                                       ; $73f6: $7f
    rst $38                                       ; $73f7: $ff
    ld a, a                                       ; $73f8: $7f
    ld h, e                                       ; $73f9: $63
    ld d, c                                       ; $73fa: $51
    jr nz, jr_09b_7435                            ; $73fb: $20 $38

    nop                                           ; $73fd: $00
    ret nz                                        ; $73fe: $c0

    db $fd                                        ; $73ff: $fd
    sbc h                                         ; $7400: $9c
    pop hl                                        ; $7401: $e1
    ld [c], a                                     ; $7402: $e2
    pop bc                                        ; $7403: $c1
    add b                                         ; $7404: $80
    db $e3                                        ; $7405: $e3
    nop                                           ; $7406: $00
    ld [c], a                                     ; $7407: $e2
    rst $38                                       ; $7408: $ff
    sbc [hl]                                      ; $7409: $9e
    db $fd                                        ; $740a: $fd
    ret nz                                        ; $740b: $c0

    db $fd                                        ; $740c: $fd
    adc h                                         ; $740d: $8c
    pop af                                        ; $740e: $f1
    ld b, b                                       ; $740f: $40
    ld c, h                                       ; $7410: $4c
    jr c, jr_09b_7413                             ; $7411: $38 $00

jr_09b_7413:
    ld e, h                                       ; $7413: $5c
    pop hl                                        ; $7414: $e1
    cp h                                          ; $7415: $bc
    ld b, e                                       ; $7416: $43
    ld d, $eb                                     ; $7417: $16 $eb
    ld d, $ab                                     ; $7419: $16 $ab
    rst $38                                       ; $741b: $ff
    inc bc                                        ; $741c: $03
    ld [bc], a                                    ; $741d: $02
    db $10                                        ; $741e: $10
    xor e                                         ; $741f: $ab
    sbc l                                         ; $7420: $9d
    ld bc, $5970                                  ; $7421: $01 $70 $59
    call $f345                                    ; $7424: $cd $45 $f3
    ld a, [$fa08]                                 ; $7427: $fa $08 $fa
    rst $38                                       ; $742a: $ff
    ret nc                                        ; $742b: $d0

    ld [bc], a                                    ; $742c: $02
    db $10                                        ; $742d: $10
    ld a, [$09bd]                                 ; $742e: $fa $bd $09
    adc d                                         ; $7431: $8a
    jp z, $ae00                                   ; $7432: $ca $00 $ae

jr_09b_7435:
    rst $38                                       ; $7435: $ff
    inc b                                         ; $7436: $04
    ld [bc], a                                    ; $7437: $02
    db $10                                        ; $7438: $10
    xor [hl]                                      ; $7439: $ae
    call Call_09b_5501                            ; $743a: $cd $01 $55
    nop                                           ; $743d: $00
    xor d                                         ; $743e: $aa
    add hl, de                                    ; $743f: $19
    nop                                           ; $7440: $00
    ld e, d                                       ; $7441: $5a
    nop                                           ; $7442: $00
    and l                                         ; $7443: $a5
    ld e, d                                       ; $7444: $5a
    or d                                          ; $7445: $b2
    nop                                           ; $7446: $00
    dec c                                         ; $7447: $0d
    ld d, a                                       ; $7448: $57
    ld [$0815], sp                                ; $7449: $08 $15 $08
    ld d, a                                       ; $744c: $57
    ld [$0052], sp                                ; $744d: $08 $52 $00
    xor l                                         ; $7450: $ad

jr_09b_7451:
    jr @+$11                                      ; $7451: $18 $0f

    or b                                          ; $7453: $b0
    rrca                                          ; $7454: $0f
    ld e, a                                       ; $7455: $5f
    xor a                                         ; $7456: $af
    xor d                                         ; $7457: $aa
    nop                                           ; $7458: $00
    ld d, l                                       ; $7459: $55
    push af                                       ; $745a: $f5
    nop                                           ; $745b: $00
    cp d                                          ; $745c: $ba
    dec b                                         ; $745d: $05
    ld c, l                                       ; $745e: $4d
    jr nz, jr_09b_73f5                            ; $745f: $20 $94

    ld [$a26b], sp                                ; $7461: $08 $6b $a2
    ld e, l                                       ; $7464: $5d
    nop                                           ; $7465: $00
    push af                                       ; $7466: $f5
    ld bc, $5fa0                                  ; $7467: $01 $a0 $5f
    xor b                                         ; $746a: $a8
    nop                                           ; $746b: $00
    rra                                           ; $746c: $1f
    ld h, d                                       ; $746d: $62
    dec e                                         ; $746e: $1d
    xor b                                         ; $746f: $a8
    rra                                           ; $7470: $1f
    add l                                         ; $7471: $85
    ld a, d                                       ; $7472: $7a
    sub [hl]                                      ; $7473: $96
    ld [$0578], sp                                ; $7474: $08 $78 $05
    ld a, [$72fa]                                 ; $7477: $fa $fa $72
    ld bc, $56a9                                  ; $747a: $01 $a9 $56
    or h                                          ; $747d: $b4
    nop                                           ; $747e: $00
    nop                                           ; $747f: $00
    nop                                           ; $7480: $00
    rst $38                                       ; $7481: $ff
    ld d, h                                       ; $7482: $54
    add hl, bc                                    ; $7483: $09

Jump_09b_7484:
    rla                                           ; $7484: $17
    ld [$00b4], sp                                ; $7485: $08 $b4 $00
    add hl, bc                                    ; $7488: $09
    ld d, a                                       ; $7489: $57
    xor b                                         ; $748a: $a8
    ld b, $f9                                     ; $748b: $06 $f9
    sub l                                         ; $748d: $95
    ld a, b                                       ; $748e: $78
    rlca                                          ; $748f: $07
    nop                                           ; $7490: $00
    ld a, b                                       ; $7491: $78

jr_09b_7492:
    sub a                                         ; $7492: $97
    ld a, b                                       ; $7493: $78
    sub b                                         ; $7494: $90
    dec h                                         ; $7495: $25
    ld l, e                                       ; $7496: $6b
    inc b                                         ; $7497: $04

jr_09b_7498:
    sub b                                         ; $7498: $90
    nop                                           ; $7499: $00
    dec h                                         ; $749a: $25
    or h                                          ; $749b: $b4
    nop                                           ; $749c: $00
    cp a                                          ; $749d: $bf
    nop                                           ; $749e: $00
    ret z                                         ; $749f: $c8

    dec h                                         ; $74a0: $25
    or e                                          ; $74a1: $b3
    nop                                           ; $74a2: $00
    inc b                                         ; $74a3: $04
    ld e, d                                       ; $74a4: $5a
    inc h                                         ; $74a5: $24
    ld h, l                                       ; $74a6: $65
    jr jr_09b_7451                                ; $74a7: $18 $a8

    rra                                           ; $74a9: $1f
    push hl                                       ; $74aa: $e5
    nop                                           ; $74ab: $00
    jr jr_09b_7498                                ; $74ac: $18 $ea

    dec e                                         ; $74ae: $1d
    and c                                         ; $74af: $a1
    ld e, $aa                                     ; $74b0: $1e $aa
    dec e                                         ; $74b2: $1d
    ld h, l                                       ; $74b3: $65
    nop                                           ; $74b4: $00
    ld a, [de]                                    ; $74b5: $1a
    xor b                                         ; $74b6: $a8
    rra                                           ; $74b7: $1f
    ld d, h                                       ; $74b8: $54
    and e                                         ; $74b9: $a3
    ld a, [bc]                                    ; $74ba: $0a
    push af                                       ; $74bb: $f5
    ld b, l                                       ; $74bc: $45
    nop                                           ; $74bd: $00
    add b                                         ; $74be: $80
    nop                                           ; $74bf: $00
    rst $38                                       ; $74c0: $ff
    ld d, d                                       ; $74c1: $52
    dec c                                         ; $74c2: $0d
    xor c                                         ; $74c3: $a9
    ld d, [hl]                                    ; $74c4: $56
    ld b, h                                       ; $74c5: $44
    nop                                           ; $74c6: $00
    jr c, jr_09b_74de                             ; $74c7: $38 $15

    ld [c], a                                     ; $74c9: $e2
    ld b, l                                       ; $74ca: $45
    jr c, @-$69                                   ; $74cb: $38 $95

    ld a, b                                       ; $74cd: $78
    ld b, l                                       ; $74ce: $45
    nop                                           ; $74cf: $00
    ld a, [hl-]                                   ; $74d0: $3a
    ld a, [de]                                    ; $74d1: $1a
    ld a, a                                       ; $74d2: $7f
    ld a, [bc]                                    ; $74d3: $0a
    ld [hl], b                                    ; $74d4: $70
    sbc c                                         ; $74d5: $99
    ld [hl], b                                    ; $74d6: $70
    ld a, [bc]                                    ; $74d7: $0a
    ld [bc], a                                    ; $74d8: $02
    ldh a, [$99]                                  ; $74d9: $f0 $99
    ld [hl], b                                    ; $74db: $70
    xor l                                         ; $74dc: $ad

jr_09b_74dd:
    nop                                           ; $74dd: $00

jr_09b_74de:
    ld l, a                                       ; $74de: $6f
    ld l, h                                       ; $74df: $6c
    ld bc, $00aa                                  ; $74e0: $01 $aa $00
    rst $38                                       ; $74e3: $ff
    or b                                          ; $74e4: $b0
    rrca                                          ; $74e5: $0f
    ld e, d                                       ; $74e6: $5a
    inc c                                         ; $74e7: $0c
    db $10                                        ; $74e8: $10
    rrca                                          ; $74e9: $0f
    ld e, d                                       ; $74ea: $5a
    nop                                           ; $74eb: $00
    dec c                                         ; $74ec: $0d
    ld h, l                                       ; $74ed: $65
    jr jr_09b_7559                                ; $74ee: $18 $69

    ld e, $40                                     ; $74f0: $1e $40
    cp a                                          ; $74f2: $bf
    cp a                                          ; $74f3: $bf
    add b                                         ; $74f4: $80
    call c, Call_000_1409                         ; $74f5: $dc $09 $14
    inc b                                         ; $74f8: $04
    ei                                            ; $74f9: $fb
    xor b                                         ; $74fa: $a8
    ld b, a                                       ; $74fb: $47
    jr nz, jr_09b_74dd                            ; $74fc: $20 $df

    jr nz, jr_09b_7555                            ; $74fe: $20 $55

    jr z, jr_09b_7492                             ; $7500: $28 $90

    ld [$fd02], sp                                ; $7502: $08 $02 $fd
    sub a                                         ; $7505: $97
    ld a, b                                       ; $7506: $78
    and [hl]                                      ; $7507: $a6
    nop                                           ; $7508: $00
    jr jr_09b_751f                                ; $7509: $18 $14

    ei                                            ; $750b: $fb
    ld l, a                                       ; $750c: $6f
    nop                                           ; $750d: $00
    ldh a, [$80]                                  ; $750e: $f0 $80
    ccf                                           ; $7510: $3f
    nop                                           ; $7511: $00
    ld b, b                                       ; $7512: $40
    add b                                         ; $7513: $80
    cp a                                          ; $7514: $bf
    add b                                         ; $7515: $80
    add b                                         ; $7516: $80
    push de                                       ; $7517: $d5
    push de                                       ; $7518: $d5
    xor d                                         ; $7519: $aa
    ld b, $aa                                     ; $751a: $06 $aa
    ld a, a                                       ; $751c: $7f
    ld a, a                                       ; $751d: $7f
    xor b                                         ; $751e: $a8

jr_09b_751f:
    ld d, a                                       ; $751f: $57

Jump_09b_7520:
    sub l                                         ; $7520: $95
    nop                                           ; $7521: $00
    inc bc                                        ; $7522: $03
    db $10                                        ; $7523: $10
    ld d, l                                       ; $7524: $55
    add b                                         ; $7525: $80
    ld b, a                                       ; $7526: $47
    ld [$06ff], sp                                ; $7527: $08 $ff $06
    ldh a, [rIF]                                  ; $752a: $f0 $0f
    ld bc, $02fc                                  ; $752c: $01 $fc $02
    nop                                           ; $752f: $00
    ld bc, $01fd                                  ; $7530: $01 $fd $01
    ld bc, $5555                                  ; $7533: $01 $55 $55
    xor e                                         ; $7536: $ab
    xor e                                         ; $7537: $ab
    inc b                                         ; $7538: $04
    cp $fe                                        ; $7539: $fe $fe
    ld d, l                                       ; $753b: $55
    xor d                                         ; $753c: $aa
    or $60                                        ; $753d: $f6 $60
    db $10                                        ; $753f: $10
    ld a, [bc]                                    ; $7540: $0a
    ldh a, [rP1]                                  ; $7541: $f0 $00
    ld e, c                                       ; $7543: $59
    or b                                          ; $7544: $b0
    adc d                                         ; $7545: $8a
    ld [hl], b                                    ; $7546: $70
    add hl, de                                    ; $7547: $19
    ldh a, [$7e]                                  ; $7548: $f0 $7e
    cp l                                          ; $754a: $bd
    nop                                           ; $754b: $00
    or a                                          ; $754c: $b7
    inc a                                         ; $754d: $3c
    ld [hl], h                                    ; $754e: $74
    cp l                                          ; $754f: $bd
    cp a                                          ; $7550: $bf
    ld hl, sp-$4a                                 ; $7551: $f8 $b6
    add hl, bc                                    ; $7553: $09
    ld [de], a                                    ; $7554: $12

jr_09b_7555:
    ld d, l                                       ; $7555: $55
    ld [$0017], sp                                ; $7556: $08 $17 $00

jr_09b_7559:
    ld bc, $758a                                  ; $7559: $01 $8a $75
    ret nz                                        ; $755c: $c0

    ld e, b                                       ; $755d: $58
    xor d                                         ; $755e: $aa
    nop                                           ; $755f: $00
    ld d, l                                       ; $7560: $55

jr_09b_7561:
    xor b                                         ; $7561: $a8
    db $10                                        ; $7562: $10
    db $ed                                        ; $7563: $ed
    db $10                                        ; $7564: $10
    ld [$aa15], a                                 ; $7565: $ea $15 $aa
    ld [$a910], sp                                ; $7568: $08 $10 $a9
    db $10                                        ; $756b: $10
    ld l, d                                       ; $756c: $6a
    inc b                                         ; $756d: $04
    nop                                           ; $756e: $00
    jp z, $1930                                   ; $756f: $ca $30 $19

    nop                                           ; $7572: $00
    ldh a, [rWY]                                  ; $7573: $f0 $4a
    jr nc, jr_09b_758c                            ; $7575: $30 $15

    ld a, [$bd42]                                 ; $7577: $fa $42 $bd
    rla                                           ; $757a: $17
    ld [bc], a                                    ; $757b: $02
    ld hl, sp-$7a                                 ; $757c: $f8 $86
    ld a, b                                       ; $757e: $78
    ld d, l                                       ; $757f: $55
    cp d                                          ; $7580: $ba
    ld d, l                                       ; $7581: $55
    ld [hl], $01                                  ; $7582: $36 $01
    or l                                          ; $7584: $b5
    jr nz, jr_09b_7591                            ; $7585: $20 $0a

    ld e, d                                       ; $7587: $5a
    jr nc, jr_09b_758b                            ; $7588: $30 $01

    rst $38                                       ; $758a: $ff

jr_09b_758b:
    nop                                           ; $758b: $00

jr_09b_758c:
    xor l                                         ; $758c: $ad
    nop                                           ; $758d: $00
    ld c, d                                       ; $758e: $4a
    ld b, b                                       ; $758f: $40
    or l                                          ; $7590: $b5

jr_09b_7591:
    ret nz                                        ; $7591: $c0

    jr z, @-$54                                   ; $7592: $28 $aa

    ld d, b                                       ; $7594: $50
    jp hl                                         ; $7595: $e9


    db $10                                        ; $7596: $10
    xor d                                         ; $7597: $aa
    db $10                                        ; $7598: $10
    ld b, b                                       ; $7599: $40
    jp hl                                         ; $759a: $e9


    inc [hl]                                      ; $759b: $34
    nop                                           ; $759c: $00
    ld l, c                                       ; $759d: $69
    db $10                                        ; $759e: $10

jr_09b_759f:
    ld c, d                                       ; $759f: $4a
    or b                                          ; $75a0: $b0
    or l                                          ; $75a1: $b5
    ld a, [$d080]                                 ; $75a2: $fa $80 $d0
    nop                                           ; $75a5: $00
    dec c                                         ; $75a6: $0d
    db $10                                        ; $75a7: $10
    rrca                                          ; $75a8: $0f
    ld e, b                                       ; $75a9: $58
    rrca                                          ; $75aa: $0f
    rlca                                          ; $75ab: $07
    ld hl, sp+$00                                 ; $75ac: $f8 $00
    ld d, [hl]                                    ; $75ae: $56
    jr c, jr_09b_75b8                             ; $75af: $38 $07

    ld hl, sp-$09                                 ; $75b1: $f8 $f7
    ld hl, sp-$5b                                 ; $75b3: $f8 $a5
    ld e, b                                       ; $75b5: $58
    nop                                           ; $75b6: $00
    rst $20                                       ; $75b7: $e7

jr_09b_75b8:
    jr jr_09b_759f                                ; $75b8: $18 $e5

    jr jr_09b_7561                                ; $75ba: $18 $a5

    ld e, d                                       ; $75bc: $5a
    ld e, a                                       ; $75bd: $5f
    nop                                           ; $75be: $00
    nop                                           ; $75bf: $00
    and d                                         ; $75c0: $a2
    nop                                           ; $75c1: $00
    ld c, [hl]                                    ; $75c2: $4e
    or c                                          ; $75c3: $b1
    ld e, l                                       ; $75c4: $5d
    nop                                           ; $75c5: $00
    and [hl]                                      ; $75c6: $a6
    nop                                           ; $75c7: $00
    ld [bc], a                                    ; $75c8: $02
    push af                                       ; $75c9: $f5
    ld a, [bc]                                    ; $75ca: $0a
    dec h                                         ; $75cb: $25
    nop                                           ; $75cc: $00
    ld d, l                                       ; $75cd: $55
    and d                                         ; $75ce: $a2
    ld h, h                                       ; $75cf: $64
    ld [$00ea], sp                                ; $75d0: $08 $ea $00
    db $10                                        ; $75d3: $10
    and l                                         ; $75d4: $a5
    ld a, [de]                                    ; $75d5: $1a
    ld [c], a                                     ; $75d6: $e2
    dec e                                         ; $75d7: $1d
    and a                                         ; $75d8: $a7
    ld e, b                                       ; $75d9: $58
    and a                                         ; $75da: $a7
    inc b                                         ; $75db: $04
    jr jr_09b_7644                                ; $75dc: $18 $66

    add hl, de                                    ; $75de: $19
    ld d, d                                       ; $75df: $52
    dec c                                         ; $75e0: $0d
    sub b                                         ; $75e1: $90
    add hl, bc                                    ; $75e2: $09
    ld e, d                                       ; $75e3: $5a
    xor l                                         ; $75e4: $ad
    nop                                           ; $75e5: $00
    and b                                         ; $75e6: $a0
    ld e, l                                       ; $75e7: $5d
    ld [$601d], a                                 ; $75e8: $ea $1d $60
    dec e                                         ; $75eb: $1d
    xor d                                         ; $75ec: $aa
    ld e, l                                       ; $75ed: $5d
    ld b, l                                       ; $75ee: $45
    cp $81                                        ; $75ef: $fe $81
    inc bc                                        ; $75f1: $03
    cp $ff                                        ; $75f2: $fe $ff
    db $fd                                        ; $75f4: $fd
    call z, $d501                                 ; $75f5: $cc $01 $d5
    xor $02                                       ; $75f8: $ee $02
    adc b                                         ; $75fa: $88
    jr nz, @+$0c                                  ; $75fb: $20 $0a

    ld e, h                                       ; $75fd: $5c
    pop hl                                        ; $75fe: $e1
    adc b                                         ; $75ff: $88
    ld [$a802], sp                                ; $7600: $08 $02 $a8
    pop de                                        ; $7603: $d1
    ld d, h                                       ; $7604: $54
    ld bc, $a8a1                                  ; $7605: $01 $a1 $a8
    ld b, c                                       ; $7608: $41
    rst $38                                       ; $7609: $ff

jr_09b_760a:
    rst $38                                       ; $760a: $ff
    xor d                                         ; $760b: $aa
    ld d, l                                       ; $760c: $55
    ret nc                                        ; $760d: $d0

    ld e, c                                       ; $760e: $59
    ld [hl-], a                                   ; $760f: $32
    and d                                         ; $7610: $a2
    ld e, l                                       ; $7611: $5d
    ret nc                                        ; $7612: $d0

    ld e, c                                       ; $7613: $59
    ld l, b                                       ; $7614: $68
    add hl, de                                    ; $7615: $19
    push af                                       ; $7616: $f5
    ld a, [$08b0]                                 ; $7617: $fa $b0 $08
    or l                                          ; $761a: $b5
    nop                                           ; $761b: $00
    nop                                           ; $761c: $00
    ld d, d                                       ; $761d: $52
    xor l                                         ; $761e: $ad
    ld d, c                                       ; $761f: $51
    ld c, $18                                     ; $7620: $0e $18
    rrca                                          ; $7622: $0f
    or d                                          ; $7623: $b2
    nop                                           ; $7624: $00
    dec c                                         ; $7625: $0d
    ld e, b                                       ; $7626: $58
    xor a                                         ; $7627: $af
    and d                                         ; $7628: $a2
    ld e, h                                       ; $7629: $5c
    add sp, $1f                                   ; $762a: $e8 $1f
    ld h, e                                       ; $762c: $63
    nop                                           ; $762d: $00
    inc e                                         ; $762e: $1c
    xor b                                         ; $762f: $a8
    ld e, a                                       ; $7630: $5f
    ld [hl+], a                                   ; $7631: $22
    inc e                                         ; $7632: $1c
    sub l                                         ; $7633: $95
    ld l, d                                       ; $7634: $6a
    ld c, d                                       ; $7635: $4a
    nop                                           ; $7636: $00
    or b                                          ; $7637: $b0
    nop                                           ; $7638: $00
    rst $38                                       ; $7639: $ff
    and d                                         ; $763a: $a2

jr_09b_763b:
    ld bc, $af50                                  ; $763b: $01 $50 $af
    ld a, [hl+]                                   ; $763e: $2a
    nop                                           ; $763f: $00
    push bc                                       ; $7640: $c5
    nop                                           ; $7641: $00
    rst $38                                       ; $7642: $ff
    and l                                         ; $7643: $a5

jr_09b_7644:
    ld e, b                                       ; $7644: $58
    ld d, [hl]                                    ; $7645: $56
    cp b                                          ; $7646: $b8
    add h                                         ; $7647: $84
    nop                                           ; $7648: $00
    ld a, e                                       ; $7649: $7b
    ld d, l                                       ; $764a: $55
    cp b                                          ; $764b: $b8
    and [hl]                                      ; $764c: $a6
    jr jr_09b_7666                                ; $764d: $18 $17

    ld hl, sp-$5a                                 ; $764f: $f8 $a6
    nop                                           ; $7651: $00
    jr jr_09b_7669                                ; $7652: $18 $15

    ld a, [$1ee1]                                 ; $7654: $fa $e1 $1e
    ld l, d                                       ; $7657: $6a
    dec e                                         ; $7658: $1d
    ldh [rP1], a                                  ; $7659: $e0 $00
    rra                                           ; $765b: $1f
    rst $28                                       ; $765c: $ef
    rra                                           ; $765d: $1f
    and d                                         ; $765e: $a2
    dec e                                         ; $765f: $1d
    rst $20                                       ; $7660: $e7
    jr jr_09b_760a                                ; $7661: $18 $a7

    ld bc, $a618                                  ; $7663: $01 $18 $a6

jr_09b_7666:
    ld e, c                                       ; $7666: $59
    dec l                                         ; $7667: $2d
    nop                                           ; $7668: $00

jr_09b_7669:
    sub l                                         ; $7669: $95
    ld l, d                                       ; $766a: $6a
    jr nz, jr_09b_7677                            ; $766b: $20 $0a

    db $10                                        ; $766d: $10
    xor l                                         ; $766e: $ad
    ld d, b                                       ; $766f: $50
    add sp, $20                                   ; $7670: $e8 $20
    ld bc, $50a8                                  ; $7672: $01 $a8 $50
    ld b, a                                       ; $7675: $47

jr_09b_7676:
    cp b                                          ; $7676: $b8

jr_09b_7677:
    jr nz, jr_09b_768e                            ; $7677: $20 $15

    ld hl, sp+$20                                 ; $7679: $f8 $20
    ld a, [bc]                                    ; $767b: $0a
    ld d, d                                       ; $767c: $52
    dec c                                         ; $767d: $0d
    sub a                                         ; $767e: $97
    ld [$0256], sp                                ; $767f: $08 $56 $02
    ld [$0a95], sp                                ; $7682: $08 $95 $0a
    ld a, l                                       ; $7685: $7d
    nop                                           ; $7686: $00
    sbc d                                         ; $7687: $9a
    ret nc                                        ; $7688: $d0

    ld de, $0000                                  ; $7689: $11 $00 $00
    rst $38                                       ; $768c: $ff
    add hl, de                                    ; $768d: $19

jr_09b_768e:
    cp $00                                        ; $768e: $fe $00

jr_09b_7690:
    cp $19                                        ; $7690: $fe $19
    cp $67                                        ; $7692: $fe $67
    nop                                           ; $7694: $00
    jr jr_09b_763b                                ; $7695: $18 $a4

    jr jr_09b_76e0                                ; $7697: $18 $47

    cp b                                          ; $7699: $b8
    or a                                          ; $769a: $b7
    ld hl, sp+$05                                 ; $769b: $f8 $05
    nop                                           ; $769d: $00
    ld hl, sp+$55                                 ; $769e: $f8 $55
    cp d                                          ; $76a0: $ba
    dec b                                         ; $76a1: $05
    ld hl, sp+$15                                 ; $76a2: $f8 $15
    ld hl, sp-$16                                 ; $76a4: $f8 $ea
    jr nc, @+$12                                  ; $76a6: $30 $10

    xor b                                         ; $76a8: $a8
    ld [hl], $00                                  ; $76a9: $36 $00
    ld a, [hl-]                                   ; $76ab: $3a
    nop                                           ; $76ac: $00
    db $10                                        ; $76ad: $10
    ld l, d                                       ; $76ae: $6a
    sub b                                         ; $76af: $90
    ld l, d                                       ; $76b0: $6a
    nop                                           ; $76b1: $00
    db $10                                        ; $76b2: $10
    ld l, b                                       ; $76b3: $68
    sub b                                         ; $76b4: $90
    rst $10                                       ; $76b5: $d7
    ld [$0896], sp                                ; $76b6: $08 $96 $08
    rst $10                                       ; $76b9: $d7
    ld [$9708], sp                                ; $76ba: $08 $08 $97
    ld [$0455], sp                                ; $76bd: $08 $55 $04
    db $10                                        ; $76c0: $10
    sub l                                         ; $76c1: $95
    ld a, [bc]                                    ; $76c2: $0a
    ld [bc], a                                    ; $76c3: $02
    nop                                           ; $76c4: $00
    db $fc                                        ; $76c5: $fc
    add hl, de                                    ; $76c6: $19
    cp $02                                        ; $76c7: $fe $02
    db $fc                                        ; $76c9: $fc
    ld hl, sp-$02                                 ; $76ca: $f8 $fe
    or b                                          ; $76cc: $b0
    nop                                           ; $76cd: $00
    ld c, $19                                     ; $76ce: $0e $19
    ld c, $50                                     ; $76d0: $0e $50
    rrca                                          ; $76d2: $0f
    add hl, de                                    ; $76d3: $19
    ld c, $47                                     ; $76d4: $0e $47
    jr nz, jr_09b_7690                            ; $76d6: $20 $b8

    ld d, $60                                     ; $76d8: $16 $60
    nop                                           ; $76da: $00
    ld e, d                                       ; $76db: $5a
    cp a                                          ; $76dc: $bf
    nop                                           ; $76dd: $00
    cp a                                          ; $76de: $bf
    ld e, b                                       ; $76df: $58

jr_09b_76e0:
    nop                                           ; $76e0: $00
    cp a                                          ; $76e1: $bf
    ld [bc], a                                    ; $76e2: $02
    cp l                                          ; $76e3: $bd
    ld e, b                                       ; $76e4: $58
    cp l                                          ; $76e5: $bd
    xor d                                         ; $76e6: $aa
    db $10                                        ; $76e7: $10
    ld l, b                                       ; $76e8: $68
    ret nz                                        ; $76e9: $c0

jr_09b_76ea:
    ld h, b                                       ; $76ea: $60
    ld de, $0a90                                  ; $76eb: $11 $90 $0a
    add d                                         ; $76ee: $82
    ld e, l                                       ; $76ef: $5d
    dec h                                         ; $76f0: $25
    ret c                                         ; $76f1: $d8

    nop                                           ; $76f2: $00
    ld a, a                                       ; $76f3: $7f
    jr nz, jr_09b_7676                            ; $76f4: $20 $80

    rst $38                                       ; $76f6: $ff
    inc b                                         ; $76f7: $04
    jr @-$62                                      ; $76f8: $18 $9c

    rst $38                                       ; $76fa: $ff
    ld [de], a                                    ; $76fb: $12
    ld [hl], e                                    ; $76fc: $73
    sub c                                         ; $76fd: $91
    nop                                           ; $76fe: $00
    push af                                       ; $76ff: $f5
    and $18                                       ; $7700: $e6 $18
    dec h                                         ; $7702: $25
    jr jr_09b_76ea                                ; $7703: $18 $e5

    ld a, [de]                                    ; $7705: $1a
    ld [$1f48], a                                 ; $7706: $ea $48 $1f
    adc b                                         ; $7709: $88
    ld bc, $6b90                                  ; $770a: $01 $90 $6b
    adc h                                         ; $770d: $8c
    ld bc, $00be                                  ; $770e: $01 $be $00
    ld e, c                                       ; $7711: $59
    add b                                         ; $7712: $80
    ld h, b                                       ; $7713: $60
    ld [hl+], a                                   ; $7714: $22
    ld a, [de]                                    ; $7715: $1a
    dec c                                         ; $7716: $0d
    ld d, b                                       ; $7717: $50
    rrca                                          ; $7718: $0f
    ld a, [de]                                    ; $7719: $1a
    inc c                                         ; $771a: $0c
    and a                                         ; $771b: $a7
    jr nz, @+$1a                                  ; $771c: $20 $18

    ld h, h                                       ; $771e: $64
    sub b                                         ; $771f: $90
    jr nz, @-$69                                  ; $7720: $20 $95

    ld a, d                                       ; $7722: $7a
    ld b, l                                       ; $7723: $45
    cp b                                          ; $7724: $b8
    sub l                                         ; $7725: $95
    nop                                           ; $7726: $00
    ld a, b                                       ; $7727: $78
    pop hl                                        ; $7728: $e1
    ld e, $a8                                     ; $7729: $1e $a8
    rra                                           ; $772b: $1f
    and b                                         ; $772c: $a0
    ld e, a                                       ; $772d: $5f
    ld l, a                                       ; $772e: $6f

jr_09b_772f:
    add b                                         ; $772f: $80
    ldh [rP1], a                                  ; $7730: $e0 $00
    ld h, a                                       ; $7732: $67
    sbc b                                         ; $7733: $98
    ld h, l                                       ; $7734: $65
    jr jr_09b_779e                                ; $7735: $18 $67

    sbc b                                         ; $7737: $98
    db $eb                                        ; $7738: $eb
    ldh [$f8], a                                  ; $7739: $e0 $f8
    ld bc, $09c0                                  ; $773b: $01 $c0 $09
    ldh [$29], a                                  ; $773e: $e0 $29
    ld a, a                                       ; $7740: $7f
    nop                                           ; $7741: $00
    add b                                         ; $7742: $80
    nop                                           ; $7743: $00

jr_09b_7744:
    cp a                                          ; $7744: $bf
    ld [bc], a                                    ; $7745: $02
    ccf                                           ; $7746: $3f
    or c                                          ; $7747: $b1
    ccf                                           ; $7748: $3f
    and h                                         ; $7749: $a4
    ccf                                           ; $774a: $3f
    and b                                         ; $774b: $a0
    ld b, $00                                     ; $774c: $06 $00
    cp a                                          ; $774e: $bf
    ld [$a63f], sp                                ; $774f: $08 $3f $a6
    jr @+$67                                      ; $7752: $18 $65

    ret nc                                        ; $7754: $d0

    nop                                           ; $7755: $00
    or l                                          ; $7756: $b5
    ld hl, sp+$57                                 ; $7757: $f8 $57
    or l                                          ; $7759: $b5
    db $ec                                        ; $775a: $ec
    nop                                           ; $775b: $00
    ld d, l                                       ; $775c: $55
    cp h                                          ; $775d: $bc
    nop                                           ; $775e: $00
    ld a, [de]                                    ; $775f: $1a
    jr jr_09b_7793                                ; $7760: $18 $31

    ld a, [de]                                    ; $7762: $1a
    nop                                           ; $7763: $00
    ld sp, $0024                                  ; $7764: $31 $24 $00
    db $10                                        ; $7767: $10
    ld h, b                                       ; $7768: $60
    ld a, a                                       ; $7769: $7f
    push de                                       ; $776a: $d5
    ret nc                                        ; $776b: $d0

    nop                                           ; $776c: $00
    push de                                       ; $776d: $d5
    ld a, [bc]                                    ; $776e: $0a
    sbc d                                         ; $776f: $9a
    rrca                                          ; $7770: $0f
    jr jr_09b_77c3                                ; $7771: $18 $50

    rrca                                          ; $7773: $0f
    sbc b                                         ; $7774: $98
    inc b                                         ; $7775: $04
    db $10                                        ; $7776: $10
    xor d                                         ; $7777: $aa
    inc b                                         ; $7778: $04
    ldh a, [rTMA]                                 ; $7779: $f0 $06
    rst $30                                       ; $777b: $f7
    ld [hl], $0e                                  ; $777c: $36 $0e
    rst $38                                       ; $777e: $ff
    inc b                                         ; $777f: $04
    jr z, jr_09b_772f                             ; $7780: $28 $ad

    ld a, [de]                                    ; $7782: $1a
    rst $30                                       ; $7783: $f7
    ld [bc], a                                    ; $7784: $02
    jr nc, jr_09b_7744                            ; $7785: $30 $bd

    ld a, [de]                                    ; $7787: $1a
    ld [hl], a                                    ; $7788: $77
    add l                                         ; $7789: $85
    ld [bc], a                                    ; $778a: $02
    jr nc, jr_09b_778f                            ; $778b: $30 $02

    db $fc                                        ; $778d: $fc
    inc bc                                        ; $778e: $03

jr_09b_778f:
    db $fd                                        ; $778f: $fd
    inc b                                         ; $7790: $04
    ld c, b                                       ; $7791: $48
    ld d, [hl]                                    ; $7792: $56

jr_09b_7793:
    ld [hl], b                                    ; $7793: $70
    ld [hl+], a                                   ; $7794: $22
    nop                                           ; $7795: $00
    ld [bc], a                                    ; $7796: $02
    db $fd                                        ; $7797: $fd
    ld d, l                                       ; $7798: $55
    cp b                                          ; $7799: $b8
    ld b, $b8                                     ; $779a: $06 $b8
    ld d, l                                       ; $779c: $55
    cp b                                          ; $779d: $b8

jr_09b_779e:
    ld b, c                                       ; $779e: $41
    ld d, b                                       ; $779f: $50
    jr jr_09b_77a3                                ; $77a0: $18 $01

    db $10                                        ; $77a2: $10

jr_09b_77a3:
    rrca                                          ; $77a3: $0f
    ld e, a                                       ; $77a4: $5f
    rrca                                          ; $77a5: $0f
    ld a, [de]                                    ; $77a6: $1a
    ret c                                         ; $77a7: $d8

    nop                                           ; $77a8: $00
    nop                                           ; $77a9: $00
    ld e, d                                       ; $77aa: $5a
    nop                                           ; $77ab: $00
    add hl, de                                    ; $77ac: $19
    nop                                           ; $77ad: $00
    add b                                         ; $77ae: $80
    ld a, l                                       ; $77af: $7d
    ld a, [de]                                    ; $77b0: $1a
    db $fd                                        ; $77b1: $fd
    ld [$fd00], sp                                ; $77b2: $08 $00 $fd
    ld a, [$d4fd]                                 ; $77b5: $fa $fd $d4
    ld bc, $120d                                  ; $77b8: $01 $0d $12
    dec c                                         ; $77bb: $0d
    nop                                           ; $77bc: $00
    ld e, b                                       ; $77bd: $58
    rrca                                          ; $77be: $0f
    ld c, b                                       ; $77bf: $48
    sub l                                         ; $77c0: $95
    and e                                         ; $77c1: $a3
    ld e, h                                       ; $77c2: $5c

jr_09b_77c3:
    ld b, h                                       ; $77c3: $44
    ld a, [de]                                    ; $77c4: $1a
    nop                                           ; $77c5: $00
    adc c                                         ; $77c6: $89
    ld d, [hl]                                    ; $77c7: $56
    inc b                                         ; $77c8: $04
    db $d3                                        ; $77c9: $d3
    xor d                                         ; $77ca: $aa
    ld d, l                                       ; $77cb: $55
    inc b                                         ; $77cc: $04
    pop af                                        ; $77cd: $f1
    nop                                           ; $77ce: $00
    xor d                                         ; $77cf: $aa

jr_09b_77d0:
    ld d, l                                       ; $77d0: $55
    ld [de], a                                    ; $77d1: $12
    ld [hl], h                                    ; $77d2: $74
    sub b                                         ; $77d3: $90
    di                                            ; $77d4: $f3
    add hl, bc                                    ; $77d5: $09
    ld l, b                                       ; $77d6: $68
    ld bc, $f988                                  ; $77d7: $01 $88 $f9
    inc b                                         ; $77da: $04
    ld a, h                                       ; $77db: $7c
    add d                                         ; $77dc: $82
    cp $01                                        ; $77dd: $fe $01
    inc l                                         ; $77df: $2c
    ld bc, $34f2                                  ; $77e0: $01 $f2 $34
    ld [$5400], sp                                ; $77e3: $08 $00 $54
    ld [hl], b                                    ; $77e6: $70
    ld [de], a                                    ; $77e7: $12
    nop                                           ; $77e8: $00
    inc a                                         ; $77e9: $3c
    inc d                                         ; $77ea: $14
    ld c, e                                       ; $77eb: $4b
    nop                                           ; $77ec: $00
    ld e, h                                       ; $77ed: $5c
    ld bc, $7f10                                  ; $77ee: $01 $10 $7f
    add c                                         ; $77f1: $81
    rst $38                                       ; $77f2: $ff
    jr c, jr_09b_77f5                             ; $77f3: $38 $00

jr_09b_77f5:
    cp $00                                        ; $77f5: $fe $00
    ld a, a                                       ; $77f7: $7f
    xor d                                         ; $77f8: $aa
    jr nz, jr_09b_77d0                            ; $77f9: $20 $d5

    ld a, a                                       ; $77fb: $7f
    add hl, de                                    ; $77fc: $19
    inc b                                         ; $77fd: $04
    ld b, b                                       ; $77fe: $40
    ld b, b                                       ; $77ff: $40
    ld c, a                                       ; $7800: $4f
    ld l, a                                       ; $7801: $6f
    ld d, a                                       ; $7802: $57
    db $10                                        ; $7803: $10
    ld [hl], b                                    ; $7804: $70
    ld d, b                                       ; $7805: $50
    ld [hl], a                                    ; $7806: $77
    ld [bc], a                                    ; $7807: $02
    jr c, @+$51                                   ; $7808: $38 $4f

    ld l, a                                       ; $780a: $6f
    ld b, b                                       ; $780b: $40
    ld d, b                                       ; $780c: $50
    inc b                                         ; $780d: $04
    ld l, d                                       ; $780e: $6a
    ld l, d                                       ; $780f: $6a
    ld b, b                                       ; $7810: $40
    ld d, l                                       ; $7811: $55
    ld b, b                                       ; $7812: $40
    sub [hl]                                      ; $7813: $96
    inc bc                                        ; $7814: $03
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    nop                                           ; $7817: $00
    add [hl]                                      ; $7818: $86
    rst $30                                       ; $7819: $f7
    adc [hl]                                      ; $781a: $8e
    rst $38                                       ; $781b: $ff
    add [hl]                                      ; $781c: $86
    or a                                          ; $781d: $b7
    ld c, [hl]                                    ; $781e: $4e
    ld a, a                                       ; $781f: $7f
    nop                                           ; $7820: $00
    ld b, [hl]                                    ; $7821: $46
    rst $30                                       ; $7822: $f7
    ld c, [hl]                                    ; $7823: $4e
    ld a, a                                       ; $7824: $7f
    add $f6                                       ; $7825: $c6 $f6
    rst $28                                       ; $7827: $ef
    rst $38                                       ; $7828: $ff
    or l                                          ; $7829: $b5
    ld [$4008], a                                 ; $782a: $ea $08 $40
    xor a                                         ; $782d: $af
    dec d                                         ; $782e: $15
    and a                                         ; $782f: $a7
    inc de                                        ; $7830: $13
    rst $38                                       ; $7831: $ff
    ld [$0108], a                                 ; $7832: $ea $08 $01
    db $10                                        ; $7835: $10
    ld b, b                                       ; $7836: $40
    inc bc                                        ; $7837: $03
    ld h, b                                       ; $7838: $60
    rst $28                                       ; $7839: $ef
    ld [hl], b                                    ; $783a: $70
    rst $38                                       ; $783b: $ff
    ld h, b                                       ; $783c: $60
    ld l, a                                       ; $783d: $6f
    inc b                                         ; $783e: $04
    nop                                           ; $783f: $00
    ld [$0010], sp                                ; $7840: $08 $10 $00
    ldh a, [rIE]                                  ; $7843: $f0 $ff
    ld d, b                                       ; $7845: $50
    ld a, d                                       ; $7846: $7a
    db $10                                        ; $7847: $10
    rra                                           ; $7848: $1f
    ldh a, [rIE]                                  ; $7849: $f0 $ff
    dec sp                                        ; $784b: $3b
    ldh [$ef], a                                  ; $784c: $e0 $ef
    call c, Call_09b_6205                         ; $784e: $dc $05 $62
    inc bc                                        ; $7851: $03
    cp a                                          ; $7852: $bf
    inc b                                         ; $7853: $04
    xor d                                         ; $7854: $aa
    db $ec                                        ; $7855: $ec
    dec [hl]                                      ; $7856: $35
    db $10                                        ; $7857: $10
    jr @+$42                                      ; $7858: $18 $40

    cp a                                          ; $785a: $bf
    db $10                                        ; $785b: $10
    ld h, b                                       ; $785c: $60
    nop                                           ; $785d: $00
    db $e3                                        ; $785e: $e3
    db $eb                                        ; $785f: $eb
    push af                                       ; $7860: $f5
    inc e                                         ; $7861: $1c
    inc [hl]                                      ; $7862: $34
    ld b, b                                       ; $7863: $40
    db $dd                                        ; $7864: $dd
    ld [bc], a                                    ; $7865: $02
    jr z, jr_09b_7868                             ; $7866: $28 $00

jr_09b_7868:
    nop                                           ; $7868: $00
    ld sp, hl                                     ; $7869: $f9
    ei                                            ; $786a: $fb
    db $fc                                        ; $786b: $fc
    ld b, $08                                     ; $786c: $06 $08
    dec c                                         ; $786e: $0d
    rst $30                                       ; $786f: $f7
    inc c                                         ; $7870: $0c
    or $04                                        ; $7871: $f6 $04

jr_09b_7873:
    jr jr_09b_7875                                ; $7873: $18 $00

jr_09b_7875:
    nop                                           ; $7875: $00
    rra                                           ; $7876: $1f
    inc b                                         ; $7877: $04
    ld e, a                                       ; $7878: $5f
    cpl                                           ; $7879: $2f
    ld h, b                                       ; $787a: $60
    jr nz, jr_09b_78ec                            ; $787b: $20 $6f

    ld [bc], a                                    ; $787d: $02
    jr z, jr_09b_7880                             ; $787e: $28 $00

jr_09b_7880:
    nop                                           ; $7880: $00
    ld [bc], a                                    ; $7881: $02
    rst $00                                       ; $7882: $c7

jr_09b_7883:
    rst $10                                       ; $7883: $d7
    db $eb                                        ; $7884: $eb
    jr c, jr_09b_78ef                             ; $7885: $38 $68

    cp e                                          ; $7887: $bb
    ld [bc], a                                    ; $7888: $02
    jr z, jr_09b_78bf                             ; $7889: $28 $34

    nop                                           ; $788b: $00
    db $dd                                        ; $788c: $dd
    db $e3                                        ; $788d: $e3
    db $eb                                        ; $788e: $eb
    nop                                           ; $788f: $00
    inc e                                         ; $7890: $1c
    xor d                                         ; $7891: $aa
    xor d                                         ; $7892: $aa
    nop                                           ; $7893: $00
    jr nz, jr_09b_78eb                            ; $7894: $20 $55

    nop                                           ; $7896: $00
    sbc a                                         ; $7897: $9f
    ld [$0cff], sp                                ; $7898: $08 $ff $0c
    or $f9                                        ; $789b: $f6 $f9
    ei                                            ; $789d: $fb
    jr nz, jr_09b_78a0                            ; $789e: $20 $00

jr_09b_78a0:
    ld b, $10                                     ; $78a0: $06 $10
    jr c, jr_09b_78c4                             ; $78a2: $38 $20

    ld l, a                                       ; $78a4: $6f
    rra                                           ; $78a5: $1f
    ld e, a                                       ; $78a6: $5f
    nop                                           ; $78a7: $00
    ld b, b                                       ; $78a8: $40
    ld h, b                                       ; $78a9: $60
    jr nz, jr_09b_78e4                            ; $78aa: $20 $38

    ld l, b                                       ; $78ac: $68
    cp e                                          ; $78ad: $bb
    rst $00                                       ; $78ae: $c7
    rst $10                                       ; $78af: $d7
    nop                                           ; $78b0: $00
    jr c, jr_09b_7873                             ; $78b1: $38 $c0

    jr nc, jr_09b_78ed                            ; $78b3: $30 $38

    sub h                                         ; $78b5: $94
    add hl, bc                                    ; $78b6: $09
    rlca                                          ; $78b7: $07
    ld hl, sp+$57                                 ; $78b8: $f8 $57
    cp b                                          ; $78ba: $b8
    add l                                         ; $78bb: $85
    ld a, b                                       ; $78bc: $78
    sub c                                         ; $78bd: $91
    and b                                         ; $78be: $a0

jr_09b_78bf:
    add hl, bc                                    ; $78bf: $09
    push de                                       ; $78c0: $d5
    jr c, jr_09b_7883                             ; $78c1: $38 $c0

    add hl, sp                                    ; $78c3: $39

jr_09b_78c4:
    xor e                                         ; $78c4: $ab
    ld d, l                                       ; $78c5: $55
    cp $49                                        ; $78c6: $fe $49
    dec b                                         ; $78c8: $05
    jr nz, jr_09b_78d1                            ; $78c9: $20 $06

    ld a, b                                       ; $78cb: $78

jr_09b_78cc:
    ld b, b                                       ; $78cc: $40
    ld e, l                                       ; $78cd: $5d
    ld [bc], a                                    ; $78ce: $02
    ld [bc], a                                    ; $78cf: $02
    ld a, [c]                                     ; $78d0: $f2

jr_09b_78d1:
    or $fa                                        ; $78d1: $f6 $fa
    db $10                                        ; $78d3: $10
    ld c, $1a                                     ; $78d4: $0e $1a
    xor $02                                       ; $78d6: $ee $02
    jr c, jr_09b_78cc                             ; $78d8: $38 $f2

    or $02                                        ; $78da: $f6 $02
    ld a, [bc]                                    ; $78dc: $0a
    inc b                                         ; $78dd: $04
    xor d                                         ; $78de: $aa
    xor d                                         ; $78df: $aa
    ld [bc], a                                    ; $78e0: $02
    ld d, [hl]                                    ; $78e1: $56
    ld [bc], a                                    ; $78e2: $02
    or [hl]                                       ; $78e3: $b6

jr_09b_78e4:
    inc b                                         ; $78e4: $04
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    ld [$1f63], sp                                ; $78e7: $08 $63 $1f
    ld h, a                                       ; $78ea: $67

jr_09b_78eb:
    rra                                           ; $78eb: $1f

jr_09b_78ec:
    inc b                                         ; $78ec: $04

jr_09b_78ed:
    sbc b                                         ; $78ed: $98
    rlca                                          ; $78ee: $07

jr_09b_78ef:
    ld a, a                                       ; $78ef: $7f
    ld [hl], e                                    ; $78f0: $73
    nop                                           ; $78f1: $00
    rrca                                          ; $78f2: $0f
    adc a                                         ; $78f3: $8f
    rlca                                          ; $78f4: $07
    inc bc                                        ; $78f5: $03
    adc a                                         ; $78f6: $8f
    adc a                                         ; $78f7: $8f
    rst $38                                       ; $78f8: $ff
    di                                            ; $78f9: $f3
    ld [bc], a                                    ; $78fa: $02
    ld a, a                                       ; $78fb: $7f
    rlca                                          ; $78fc: $07
    ld a, a                                       ; $78fd: $7f
    ld h, e                                       ; $78fe: $63
    rra                                           ; $78ff: $1f
    ld h, l                                       ; $7900: $65
    jr z, jr_09b_7903                             ; $7901: $28 $00

jr_09b_7903:
    ld [hl], l                                    ; $7903: $75
    ld a, [$0260]                                 ; $7904: $fa $60 $02
    nop                                           ; $7907: $00
    inc bc                                        ; $7908: $03
    inc b                                         ; $7909: $04
    ld d, b                                       ; $790a: $50
    ld [bc], a                                    ; $790b: $02
    ld l, b                                       ; $790c: $68
    jr nz, jr_09b_7917                            ; $790d: $20 $08

    add c                                         ; $790f: $81
    ld d, h                                       ; $7910: $54
    inc bc                                        ; $7911: $03
    add b                                         ; $7912: $80
    ld [$02fe], sp                                ; $7913: $08 $fe $02
    rst $38                                       ; $7916: $ff

jr_09b_7917:
    add c                                         ; $7917: $81
    ld a, [hl-]                                   ; $7918: $3a
    daa                                           ; $7919: $27
    ret nz                                        ; $791a: $c0

    ccf                                           ; $791b: $3f
    jr nz, jr_09b_7921                            ; $791c: $20 $03

    rra                                           ; $791e: $1f
    nop                                           ; $791f: $00
    ccf                                           ; $7920: $3f

jr_09b_7921:
    jr nz, @+$01                                  ; $7921: $20 $ff

    ret nz                                        ; $7923: $c0

    inc a                                         ; $7924: $3c
    ld b, b                                       ; $7925: $40
    ldh [rSB], a                                  ; $7926: $e0 $01
    ld [hl], e                                    ; $7928: $73
    add b                                         ; $7929: $80
    cpl                                           ; $792a: $2f
    ld b, $5c                                     ; $792b: $06 $5c
    ccf                                           ; $792d: $3f
    add b                                         ; $792e: $80
    ld de, $fd02                                  ; $792f: $11 $02 $fd
    sub b                                         ; $7932: $90
    ld [bc], a                                    ; $7933: $02
    inc b                                         ; $7934: $04
    sub b                                         ; $7935: $90
    add l                                         ; $7936: $85
    ldh [rP1], a                                  ; $7937: $e0 $00
    ld bc, $ffff                                  ; $7939: $01 $ff $ff
    ld h, d                                       ; $793c: $62
    add h                                         ; $793d: $84
    nop                                           ; $793e: $00
    ld [hl+], a                                   ; $793f: $22
    adc b                                         ; $7940: $88
    nop                                           ; $7941: $00
    ld [bc], a                                    ; $7942: $02
    ld a, [hl+]                                   ; $7943: $2a
    rla                                           ; $7944: $17
    ld d, l                                       ; $7945: $55
    dec bc                                        ; $7946: $0b
    ld a, [hl+]                                   ; $7947: $2a
    dec b                                         ; $7948: $05
    sra [hl]                                      ; $7949: $cb $2e
    ld a, a                                       ; $794b: $7f
    ld [$bfff], sp                                ; $794c: $08 $ff $bf
    rst $38                                       ; $794f: $ff
    ld d, a                                       ; $7950: $57
    and b                                         ; $7951: $a0
    ld d, $42                                     ; $7952: $16 $42
    cp l                                          ; $7954: $bd
    and a                                         ; $7955: $a7
    ld a, [bc]                                    ; $7956: $0a
    jr jr_09b_799d                                ; $7957: $18 $44

    cp c                                          ; $7959: $b9
    or a                                          ; $795a: $b7
    ld [hl], b                                    ; $795b: $70
    dec [hl]                                      ; $795c: $35
    add b                                         ; $795d: $80
    or h                                          ; $795e: $b4
    dec b                                         ; $795f: $05
    ld b, b                                       ; $7960: $40
    nop                                           ; $7961: $00
    ld d, h                                       ; $7962: $54
    ld b, c                                       ; $7963: $41
    ld a, l                                       ; $7964: $7d
    ld b, e                                       ; $7965: $43
    ld a, d                                       ; $7966: $7a
    ld b, [hl]                                    ; $7967: $46
    ld [hl], l                                    ; $7968: $75
    ld c, b                                       ; $7969: $48
    inc c                                         ; $796a: $0c
    ld a, e                                       ; $796b: $7b
    ld c, b                                       ; $796c: $48
    ld l, a                                       ; $796d: $6f
    nop                                           ; $796e: $00
    or h                                          ; $796f: $b4
    dec b                                         ; $7970: $05
    ld a, h                                       ; $7971: $7c
    ld bc, $807f                                  ; $7972: $01 $7f $80
    ld bc, $c1be                                  ; $7975: $01 $be $c1
    ld e, l                                       ; $7978: $5d
    ld h, d                                       ; $7979: $62
    cp [hl]                                       ; $797a: $be
    ld [hl+], a                                   ; $797b: $22
    db $eb                                        ; $797c: $eb
    ld e, d                                       ; $797d: $5a
    ld c, d                                       ; $797e: $4a
    ret nz                                        ; $797f: $c0

    ld h, [hl]                                    ; $7980: $66
    ld a, [bc]                                    ; $7981: $0a
    jp c, $3439                                   ; $7982: $da $39 $34

    db $dd                                        ; $7985: $dd
    inc d                                         ; $7986: $14
    sbc h                                         ; $7987: $9c
    ld h, e                                       ; $7988: $63
    ld [$9408], sp                                ; $7989: $08 $08 $94
    cp l                                          ; $798c: $bd
    ld [hl], a                                    ; $798d: $77
    rst $38                                       ; $798e: $ff
    inc d                                         ; $798f: $14
    ld c, b                                       ; $7990: $48
    ld d, b                                       ; $7991: $50
    ld [hl], b                                    ; $7992: $70
    ld e, a                                       ; $7993: $5f
    ld b, b                                       ; $7994: $40
    ld a, a                                       ; $7995: $7f
    add b                                         ; $7996: $80
    ld [de], a                                    ; $7997: $12
    ld a, a                                       ; $7998: $7f
    ld b, b                                       ; $7999: $40
    ld a, [hl]                                    ; $799a: $7e
    add e                                         ; $799b: $83
    cp e                                          ; $799c: $bb

jr_09b_799d:
    inc b                                         ; $799d: $04
    rlca                                          ; $799e: $07
    ld [hl], h                                    ; $799f: $74
    inc d                                         ; $79a0: $14
    inc a                                         ; $79a1: $3c
    rst $30                                       ; $79a2: $f7
    rst $38                                       ; $79a3: $ff
    ret nc                                        ; $79a4: $d0

    ld de, $126e                                  ; $79a5: $11 $6e $12
    call nc, $8001                                ; $79a8: $d4 $01 $80
    ld h, b                                       ; $79ab: $60
    ld [$4114], sp                                ; $79ac: $08 $14 $41
    ld e, a                                       ; $79af: $5f
    ldh [$ae], a                                  ; $79b0: $e0 $ae
    or c                                          ; $79b2: $b1
    ld d, a                                       ; $79b3: $57
    ld [$ee18], sp                                ; $79b4: $08 $18 $ee
    add hl, bc                                    ; $79b7: $09
    ei                                            ; $79b8: $fb
    ld [hl], b                                    ; $79b9: $70
    jr jr_09b_79be                                ; $79ba: $18 $02

    ld a, d                                       ; $79bc: $7a
    rlca                                          ; $79bd: $07

jr_09b_79be:
    ld bc, $0d75                                  ; $79be: $01 $75 $0d
    ld l, d                                       ; $79c1: $6a
    db $10                                        ; $79c2: $10
    ld [hl], a                                    ; $79c3: $77
    db $10                                        ; $79c4: $10
    ld e, a                                       ; $79c5: $5f
    add b                                         ; $79c6: $80

jr_09b_79c7:
    jr nz, jr_09b_79c9                            ; $79c7: $20 $00

jr_09b_79c9:
    cp $01                                        ; $79c9: $fe $01
    ld a, l                                       ; $79cb: $7d
    add e                                         ; $79cc: $83
    cp d                                          ; $79cd: $ba
    call nz, $447d                                ; $79ce: $c4 $7d $44
    jr nz, @-$27                                  ; $79d1: $20 $d7

    ld bc, $0634                                  ; $79d3: $01 $34 $06
    ld [bc], a                                    ; $79d6: $02
    ld d, [hl]                                    ; $79d7: $56
    add d                                         ; $79d8: $82
    cp [hl]                                       ; $79d9: $be
    jp nz, Jump_09b_5e01                          ; $79da: $c2 $01 $5e

    ld h, d                                       ; $79dd: $62
    xor [hl]                                      ; $79de: $ae
    ld [hl-], a                                   ; $79df: $32
    sbc $12                                       ; $79e0: $de $12
    or $48                                        ; $79e2: $f6 $48
    ld a, [hl+]                                   ; $79e4: $2a
    or h                                          ; $79e5: $b4
    ld d, b                                       ; $79e6: $50
    ld [hl+], a                                   ; $79e7: $22
    ld [hl], a                                    ; $79e8: $77
    ld c, d                                       ; $79e9: $4a
    ld a, [hl-]                                   ; $79ea: $3a
    ld d, h                                       ; $79eb: $54
    ld [de], a                                    ; $79ec: $12
    ld l, [hl]                                    ; $79ed: $6e
    ld c, d                                       ; $79ee: $4a
    ld a, [hl-]                                   ; $79ef: $3a
    ld l, b                                       ; $79f0: $68
    cp e                                          ; $79f1: $bb
    dec c                                         ; $79f2: $0d
    jr z, jr_09b_7a2e                             ; $79f3: $28 $39

    add $10                                       ; $79f5: $c6 $10
    jp c, $e649                                   ; $79f7: $da $49 $e6

    add hl, bc                                    ; $79fa: $09
    adc h                                         ; $79fb: $8c
    ld b, b                                       ; $79fc: $40
    ld e, b                                       ; $79fd: $58
    ld hl, $21f7                                  ; $79fe: $21 $f7 $21
    ld b, b                                       ; $7a01: $40
    ld e, b                                       ; $7a02: $58
    ld l, a                                       ; $7a03: $6f
    add hl, hl                                    ; $7a04: $29
    ld a, e                                       ; $7a05: $7b
    xor $54                                       ; $7a06: $ee $54
    ld [bc], a                                    ; $7a08: $02
    add h                                         ; $7a09: $84
    sub b                                         ; $7a0a: $90
    ld a, [hl-]                                   ; $7a0b: $3a
    inc b                                         ; $7a0c: $04
    ld c, $fd                                     ; $7a0d: $0e $fd
    rst $38                                       ; $7a0f: $ff
    add b                                         ; $7a10: $80
    ld [de], a                                    ; $7a11: $12
    rst $38                                       ; $7a12: $ff
    nop                                           ; $7a13: $00
    nop                                           ; $7a14: $00
    rrca                                          ; $7a15: $0f
    ld sp, hl                                     ; $7a16: $f9
    ei                                            ; $7a17: $fb
    inc b                                         ; $7a18: $04
    dec b                                         ; $7a19: $05
    jr nz, jr_09b_7a7c                            ; $7a1a: $20 $60

    ccf                                           ; $7a1c: $3f
    ld h, b                                       ; $7a1d: $60
    ld a, a                                       ; $7a1e: $7f
    add b                                         ; $7a1f: $80
    ld [de], a                                    ; $7a20: $12
    ld c, b                                       ; $7a21: $48
    inc b                                         ; $7a22: $04
    rra                                           ; $7a23: $1f
    rst $18                                       ; $7a24: $df
    jr nz, jr_09b_79c7                            ; $7a25: $20 $a0

    jr z, jr_09b_7a41                             ; $7a27: $28 $18

    ld a, b                                       ; $7a29: $78
    rst $28                                       ; $7a2a: $ef
    rst $38                                       ; $7a2b: $ff
    add b                                         ; $7a2c: $80
    ld [de], a                                    ; $7a2d: $12

jr_09b_7a2e:
    ldh [rNR41], a                                ; $7a2e: $e0 $20
    ld a, [bc]                                    ; $7a30: $0a
    ld e, $fa                                     ; $7a31: $1e $fa
    ld b, b                                       ; $7a33: $40
    cp $40                                        ; $7a34: $fe $40
    ld [de], a                                    ; $7a36: $12
    cp $02                                        ; $7a37: $fe $02
    ld a, [hl]                                    ; $7a39: $7e
    pop bc                                        ; $7a3a: $c1
    db $dd                                        ; $7a3b: $dd
    jr nz, jr_09b_7a41                            ; $7a3c: $20 $03

    ld l, $81                                     ; $7a3e: $2e $81
    rst $38                                       ; $7a40: $ff

jr_09b_7a41:
    ret nz                                        ; $7a41: $c0

    cp a                                          ; $7a42: $bf
    add b                                         ; $7a43: $80
    inc b                                         ; $7a44: $04
    jr nz, jr_09b_7a77                            ; $7a45: $20 $30

    ld c, $98                                     ; $7a47: $0e $98
    jp nc, $aa09                                  ; $7a49: $d2 $09 $aa

    ld d, l                                       ; $7a4c: $55
    ld b, d                                       ; $7a4d: $42
    inc hl                                        ; $7a4e: $23
    sbc a                                         ; $7a4f: $9f
    ld de, $ff01                                  ; $7a50: $11 $01 $ff
    add e                                         ; $7a53: $83
    ld [$017f], sp                                ; $7a54: $08 $7f $01
    rst $38                                       ; $7a57: $ff
    inc bc                                        ; $7a58: $03
    ld [$0300], sp                                ; $7a59: $08 $00 $03
    rst $38                                       ; $7a5c: $ff
    pop bc                                        ; $7a5d: $c1
    inc b                                         ; $7a5e: $04
    cp a                                          ; $7a5f: $bf
    jp $d7ff                                      ; $7a60: $c3 $ff $d7


    rst $28                                       ; $7a63: $ef
    inc b                                         ; $7a64: $04
    ld c, b                                       ; $7a65: $48
    ld [de], a                                    ; $7a66: $12
    dec c                                         ; $7a67: $0d
    ld [$0e59], sp                                ; $7a68: $08 $59 $0e
    or b                                          ; $7a6b: $b0
    rrca                                          ; $7a6c: $0f
    jr nz, jr_09b_7a7d                            ; $7a6d: $20 $0e

    jp hl                                         ; $7a6f: $e9


    ld e, $a2                                     ; $7a70: $1e $a2
    db $10                                        ; $7a72: $10
    inc e                                         ; $7a73: $1c
    add sp, $1f                                   ; $7a74: $e8 $1f
    ret nz                                        ; $7a76: $c0

jr_09b_7a77:
    ld b, $b8                                     ; $7a77: $06 $b8
    add l                                         ; $7a79: $85
    ld a, [hl-]                                   ; $7a7a: $3a
    ld a, [de]                                    ; $7a7b: $1a

jr_09b_7a7c:
    nop                                           ; $7a7c: $00

jr_09b_7a7d:
    rst $38                                       ; $7a7d: $ff
    dec c                                         ; $7a7e: $0d
    jr nc, jr_09b_7a99                            ; $7a7f: $30 $18

    ldh a, [$8a]                                  ; $7a81: $f0 $8a
    ld [hl], b                                    ; $7a83: $70

jr_09b_7a84:
    jr jr_09b_7a86                                ; $7a84: $18 $00

jr_09b_7a86:
    ldh a, [$62]                                  ; $7a86: $f0 $62
    inc e                                         ; $7a88: $1c
    xor c                                         ; $7a89: $a9
    ld e, $e0                                     ; $7a8a: $1e $e0
    rra                                           ; $7a8c: $1f
    xor a                                         ; $7a8d: $af
    ld [bc], a                                    ; $7a8e: $02
    rra                                           ; $7a8f: $1f
    ld [$a910], a                                 ; $7a90: $ea $10 $a9
    ld d, b                                       ; $7a93: $50
    xor d                                         ; $7a94: $aa
    db $ec                                        ; $7a95: $ec
    ld b, $a0                                     ; $7a96: $06 $a0
    nop                                           ; $7a98: $00

jr_09b_7a99:
    and b                                         ; $7a99: $a0
    jr nz, jr_09b_7afc                            ; $7a9a: $20 $60

    ld a, a                                       ; $7a9c: $7f
    inc l                                         ; $7a9d: $2c
    ld l, a                                       ; $7a9e: $6f
    inc l                                         ; $7a9f: $2c
    ld [hl], a                                    ; $7aa0: $77
    ld bc, $6b24                                  ; $7aa1: $01 $24 $6b
    jr z, jr_09b_7b25                             ; $7aa4: $28 $7f

    jr z, jr_09b_7ad7                             ; $7aa6: $28 $2f

    ld l, b                                       ; $7aa8: $68
    ld b, [hl]                                    ; $7aa9: $46
    inc bc                                        ; $7aaa: $03
    add b                                         ; $7aab: $80
    ld e, a                                       ; $7aac: $5f
    ld [bc], a                                    ; $7aad: $02
    ld hl, sp-$30                                 ; $7aae: $f8 $d0
    ld a, e                                       ; $7ab0: $7b
    ld e, b                                       ; $7ab1: $58
    rst $30                                       ; $7ab2: $f7
    ld d, a                                       ; $7ab3: $57
    ldh [rNR10], a                                ; $7ab4: $e0 $10
    ld b, b                                       ; $7ab6: $40
    rst $38                                       ; $7ab7: $ff
    ld b, b                                       ; $7ab8: $40
    add b                                         ; $7ab9: $80
    dec l                                         ; $7aba: $2d
    xor d                                         ; $7abb: $aa
    ld d, l                                       ; $7abc: $55
    xor a                                         ; $7abd: $af
    nop                                           ; $7abe: $00
    inc b                                         ; $7abf: $04
    ld e, l                                       ; $7ac0: $5d
    and b                                         ; $7ac1: $a0
    or d                                          ; $7ac2: $b2
    inc b                                         ; $7ac3: $04
    xor e                                         ; $7ac4: $ab
    jr nz, jr_09b_7ace                            ; $7ac5: $20 $07

    ld c, e                                       ; $7ac7: $4b
    or b                                          ; $7ac8: $b0
    jr nz, jr_09b_7a84                            ; $7ac9: $20 $b9

    ldh a, [$30]                                  ; $7acb: $f0 $30
    cpl                                           ; $7acd: $2f

jr_09b_7ace:
    ld [hl], a                                    ; $7ace: $77
    inc h                                         ; $7acf: $24
    dec hl                                        ; $7ad0: $2b
    ld h, e                                       ; $7ad1: $63
    ld a, l                                       ; $7ad2: $7d
    nop                                           ; $7ad3: $00
    ld hl, $622f                                  ; $7ad4: $21 $2f $62

jr_09b_7ad7:
    ld a, a                                       ; $7ad7: $7f

jr_09b_7ad8:
    ld [hl+], a                                   ; $7ad8: $22
    dec l                                         ; $7ad9: $2d
    ld h, c                                       ; $7ada: $61
    ccf                                           ; $7adb: $3f
    nop                                           ; $7adc: $00
    ld h, b                                       ; $7add: $60
    jr nz, jr_09b_7b40                            ; $7ade: $20 $60

    cp h                                          ; $7ae0: $bc
    add b                                         ; $7ae1: $80
    ld a, h                                       ; $7ae2: $7c
    rlca                                          ; $7ae3: $07
    ei                                            ; $7ae4: $fb
    nop                                           ; $7ae5: $00
    inc sp                                        ; $7ae6: $33
    rst $38                                       ; $7ae7: $ff
    jr nc, jr_09b_7ad8                            ; $7ae8: $30 $ee

    jr nz, @-$20                                  ; $7aea: $20 $de

    jp Jump_000_00fd                              ; $7aec: $c3 $fd $00


    ld bc, $0000                                  ; $7aef: $01 $00 $00
    dec b                                         ; $7af2: $05
    dec b                                         ; $7af3: $05
    inc b                                         ; $7af4: $04
    ld b, $fe                                     ; $7af5: $06 $fe
    nop                                           ; $7af7: $00
    inc b                                         ; $7af8: $04
    ld [hl], $04                                  ; $7af9: $36 $04
    ld a, [hl]                                    ; $7afb: $7e

jr_09b_7afc:
    ld [hl], h                                    ; $7afc: $74
    or $84                                        ; $7afd: $f6 $84
    ld c, $00                                     ; $7aff: $0e $00
    inc b                                         ; $7b01: $04
    db $f4                                        ; $7b02: $f4
    ld b, $1e                                     ; $7b03: $06 $1e
    inc b                                         ; $7b05: $04
    inc d                                         ; $7b06: $14
    or $ee                                        ; $7b07: $f6 $ee
    nop                                           ; $7b09: $00
    db $e4                                        ; $7b0a: $e4
    db $f4                                        ; $7b0b: $f4
    ld b, $0e                                     ; $7b0c: $06 $0e
    inc b                                         ; $7b0e: $04
    inc c                                         ; $7b0f: $0c
    cp $f4                                        ; $7b10: $fe $f4
    nop                                           ; $7b12: $00
    or $04                                        ; $7b13: $f6 $04
    ld b, $ca                                     ; $7b15: $06 $ca
    jr nc, jr_09b_7b71                            ; $7b17: $30 $58

    or b                                          ; $7b19: $b0
    ld [$f002], sp                                ; $7b1a: $08 $02 $f0
    ld a, [$b8f0]                                 ; $7b1d: $fa $f0 $b8
    nop                                           ; $7b20: $00
    ld a, [de]                                    ; $7b21: $1a
    ld [$1807], sp                                ; $7b22: $08 $07 $18

jr_09b_7b25:
    add h                                         ; $7b25: $84
    inc b                                         ; $7b26: $04
    db $10                                        ; $7b27: $10
    ld a, [de]                                    ; $7b28: $1a
    nop                                           ; $7b29: $00
    ld d, l                                       ; $7b2a: $55
    ld a, [bc]                                    ; $7b2b: $0a
    ld a, h                                       ; $7b2c: $7c
    rrca                                          ; $7b2d: $0f
    ld d, b                                       ; $7b2e: $50
    rrca                                          ; $7b2f: $0f
    ld h, c                                       ; $7b30: $61
    jr jr_09b_7b37                                ; $7b31: $18 $04

    db $10                                        ; $7b33: $10
    db $10                                        ; $7b34: $10
    rrca                                          ; $7b35: $0f
    ld a, [bc]                                    ; $7b36: $0a

jr_09b_7b37:
    ldh a, [rNR24]                                ; $7b37: $f0 $19
    ldh a, [rDIV]                                 ; $7b39: $f0 $04
    ld [$ff30], sp                                ; $7b3b: $08 $30 $ff
    rla                                           ; $7b3e: $17
    ld b, a                                       ; $7b3f: $47

jr_09b_7b40:
    rlca                                          ; $7b40: $07
    inc b                                         ; $7b41: $04
    ld b, b                                       ; $7b42: $40
    ld a, [hl+]                                   ; $7b43: $2a
    sub b                                         ; $7b44: $90
    add sp, $10                                   ; $7b45: $e8 $10

jr_09b_7b47:
    ld bc, $902d                                  ; $7b47: $01 $2d $90
    ld [$6215], a                                 ; $7b4a: $ea $15 $62
    sbc l                                         ; $7b4d: $9d
    and a                                         ; $7b4e: $a7
    and b                                         ; $7b4f: $a0
    rlca                                          ; $7b50: $07
    nop                                           ; $7b51: $00
    rst $20                                       ; $7b52: $e7
    jr jr_09b_7bb5                                ; $7b53: $18 $60

    cp a                                          ; $7b55: $bf
    ld h, b                                       ; $7b56: $60
    cp a                                          ; $7b57: $bf
    jr nz, @+$01                                  ; $7b58: $20 $ff

    cp b                                          ; $7b5a: $b8

jr_09b_7b5b:
    inc b                                         ; $7b5b: $04
    ld [$047f], sp                                ; $7b5c: $08 $7f $04
    db $10                                        ; $7b5f: $10
    ld d, b                                       ; $7b60: $50
    dec sp                                        ; $7b61: $3b
    inc e                                         ; $7b62: $1c
    dec bc                                        ; $7b63: $0b
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    or l                                          ; $7b66: $b5
    jr nz, jr_09b_7b69                            ; $7b67: $20 $00

jr_09b_7b69:
    or $f0                                        ; $7b69: $f6 $f0
    rla                                           ; $7b6b: $17
    ld a, [bc]                                    ; $7b6c: $0a
    ldh a, [$59]                                  ; $7b6d: $f0 $59
    or b                                          ; $7b6f: $b0
    adc d                                         ; $7b70: $8a

jr_09b_7b71:
    inc b                                         ; $7b71: $04
    ld [hl], b                                    ; $7b72: $70
    add hl, de                                    ; $7b73: $19
    ldh a, [$a4]                                  ; $7b74: $f0 $a4
    add hl, de                                    ; $7b76: $19
    ldh [$5a], a                                  ; $7b77: $e0 $5a
    jr nz, jr_09b_7b5b                            ; $7b79: $20 $e0

    add b                                         ; $7b7b: $80

jr_09b_7b7c:
    ld [bc], a                                    ; $7b7c: $02
    ld [$f030], sp                                ; $7b7d: $08 $30 $f0
    jr c, @-$06                                   ; $7b80: $38 $f8

    jr c, jr_09b_7b7c                             ; $7b82: $38 $f8

    jr nc, jr_09b_7b96                            ; $7b84: $30 $10

    ldh a, [rLCDC]                                ; $7b86: $f0 $40
    ld b, b                                       ; $7b88: $40
    ld [$ed0e], a                                 ; $7b89: $ea $0e $ed
    db $10                                        ; $7b8c: $10
    ld [$7215], a                                 ; $7b8d: $ea $15 $72
    xor d                                         ; $7b90: $aa
    add sp, $07                                   ; $7b91: $e8 $07
    db $ec                                        ; $7b93: $ec
    rrca                                          ; $7b94: $0f
    sub h                                         ; $7b95: $94

jr_09b_7b96:
    jr jr_09b_7b47                                ; $7b96: $18 $af

    ld e, a                                       ; $7b98: $5f
    and b                                         ; $7b99: $a0
    cpl                                           ; $7b9a: $2f
    dec bc                                        ; $7b9b: $0b
    adc l                                         ; $7b9c: $8d
    sbc b                                         ; $7b9d: $98
    nop                                           ; $7b9e: $00
    dec bc                                        ; $7b9f: $0b
    ldh a, [$f9]                                  ; $7ba0: $f0 $f9
    db $10                                        ; $7ba2: $10
    ld bc, $1820                                  ; $7ba3: $01 $20 $18
    rst $38                                       ; $7ba6: $ff
    ret nc                                        ; $7ba7: $d0

    inc bc                                        ; $7ba8: $03
    and c                                         ; $7ba9: $a1
    ret nz                                        ; $7baa: $c0

    add hl, hl                                    ; $7bab: $29
    add b                                         ; $7bac: $80
    and b                                         ; $7bad: $a0
    ld bc, $ff83                                  ; $7bae: $01 $83 $ff
    ld b, c                                       ; $7bb1: $41
    cp a                                          ; $7bb2: $bf
    or b                                          ; $7bb3: $b0
    add hl, hl                                    ; $7bb4: $29

jr_09b_7bb5:
    add b                                         ; $7bb5: $80
    ld d, b                                       ; $7bb6: $50
    dec bc                                        ; $7bb7: $0b
    nop                                           ; $7bb8: $00
    nop                                           ; $7bb9: $00
    ccf                                           ; $7bba: $3f
    nop                                           ; $7bbb: $00
    ld a, a                                       ; $7bbc: $7f
    rra                                           ; $7bbd: $1f
    ret nz                                        ; $7bbe: $c0

    nop                                           ; $7bbf: $00
    add b                                         ; $7bc0: $80
    ret nz                                        ; $7bc1: $c0

jr_09b_7bc2:
    add b                                         ; $7bc2: $80

jr_09b_7bc3:
    rst $38                                       ; $7bc3: $ff
    cp a                                          ; $7bc4: $bf
    ld [c], a                                     ; $7bc5: $e2
    cp a                                          ; $7bc6: $bf
    add sp, $40                                   ; $7bc7: $e8 $40
    cp a                                          ; $7bc9: $bf
    ld h, c                                       ; $7bca: $61
    ld b, $07                                     ; $7bcb: $06 $07
    ld hl, sp-$08                                 ; $7bcd: $f8 $f8
    nop                                           ; $7bcf: $00
    nop                                           ; $7bd0: $00
    rrca                                          ; $7bd1: $0f
    nop                                           ; $7bd2: $00
    rrca                                          ; $7bd3: $0f
    ld hl, sp-$01                                 ; $7bd4: $f8 $ff
    ld de, $8bff                                  ; $7bd6: $11 $ff $8b
    rst $38                                       ; $7bd9: $ff
    db $fc                                        ; $7bda: $fc
    nop                                           ; $7bdb: $00
    nop                                           ; $7bdc: $00
    cp $fc                                        ; $7bdd: $fe $fc
    inc bc                                        ; $7bdf: $03
    ld [bc], a                                    ; $7be0: $02
    inc bc                                        ; $7be1: $03
    ld [bc], a                                    ; $7be2: $02
    rst $38                                       ; $7be3: $ff
    nop                                           ; $7be4: $00
    cp $07                                        ; $7be5: $fe $07
    cp $13                                        ; $7be7: $fe $13
    cp $bf                                        ; $7be9: $fe $bf
    cp $fd                                        ; $7beb: $fe $fd
    db $10                                        ; $7bed: $10
    cp a                                          ; $7bee: $bf
    xor $bf                                       ; $7bef: $ee $bf
    adc l                                         ; $7bf1: $8d
    inc bc                                        ; $7bf2: $03
    cp a                                          ; $7bf3: $bf
    cp $bf                                        ; $7bf4: $fe $bf
    db $f4                                        ; $7bf6: $f4
    add b                                         ; $7bf7: $80
    ld a, [bc]                                    ; $7bf8: $0a
    nop                                           ; $7bf9: $00
    db $f4                                        ; $7bfa: $f4
    cp a                                          ; $7bfb: $bf
    rst $28                                       ; $7bfc: $ef
    rst $38                                       ; $7bfd: $ff
    rst $18                                       ; $7bfe: $df
    rst $38                                       ; $7bff: $ff
    ei                                            ; $7c00: $fb
    add d                                         ; $7c01: $82

Call_09b_7c02:
    ld [bc], a                                    ; $7c02: $02

Jump_09b_7c03:
    nop                                           ; $7c03: $00
    db $db                                        ; $7c04: $db
    rst $38                                       ; $7c05: $ff
    set 7, a                                      ; $7c06: $cb $ff
    ld e, c                                       ; $7c08: $59
    inc b                                         ; $7c09: $04
    nop                                           ; $7c0a: $00
    ld [hl], a                                    ; $7c0b: $77
    nop                                           ; $7c0c: $00
    cp $ff                                        ; $7c0d: $fe $ff
    cp $f7                                        ; $7c0f: $fe $f7
    cp $77                                        ; $7c11: $fe $77
    cp $6b                                        ; $7c13: $fe $6b
    and l                                         ; $7c15: $a5
    inc b                                         ; $7c16: $04
    nop                                           ; $7c17: $00
    inc hl                                        ; $7c18: $23
    ld [$e400], sp                                ; $7c19: $08 $00 $e4
    cp a                                          ; $7c1c: $bf
    ld [bc], a                                    ; $7c1d: $02
    jr @-$0a                                      ; $7c1e: $18 $f4

    inc b                                         ; $7c20: $04
    jr nz, jr_09b_7bc3                            ; $7c21: $20 $a0

    inc h                                         ; $7c23: $24
    ld [$02d9], sp                                ; $7c24: $08 $d9 $02
    jr nc, jr_09b_7bc2                            ; $7c27: $30 $99

jr_09b_7c29:
    rst $38                                       ; $7c29: $ff
    inc hl                                        ; $7c2a: $23
    cp $67                                        ; $7c2b: $fe $67
    xor b                                         ; $7c2d: $a8
    jr z, jr_09b_7c30                             ; $7c2e: $28 $00

jr_09b_7c30:
    daa                                           ; $7c30: $27
    ld [bc], a                                    ; $7c31: $02
    db $10                                        ; $7c32: $10
    scf                                           ; $7c33: $37
    ld [$f400], sp                                ; $7c34: $08 $00 $f4
    rst $38                                       ; $7c37: $ff
    or $08                                        ; $7c38: $f6 $08
    cp a                                          ; $7c3a: $bf
    db $f4                                        ; $7c3b: $f4
    sbc a                                         ; $7c3c: $9f
    or $02                                        ; $7c3d: $f6 $02
    db $10                                        ; $7c3f: $10
    cp $9f                                        ; $7c40: $fe $9f
    rst $38                                       ; $7c42: $ff
    dec b                                         ; $7c43: $05
    sbc a                                         ; $7c44: $9f
    db $dd                                        ; $7c45: $dd
    rst $38                                       ; $7c46: $ff
    sbc l                                         ; $7c47: $9d
    rst $38                                       ; $7c48: $ff
    inc b                                         ; $7c49: $04
    jr jr_09b_7c29                                ; $7c4a: $18 $dd

    ld l, d                                       ; $7c4c: $6a
    nop                                           ; $7c4d: $00
    ld a, [hl+]                                   ; $7c4e: $2a
    rst $38                                       ; $7c4f: $ff
    rst $38                                       ; $7c50: $ff
    inc h                                         ; $7c51: $24
    ld [$2ab7], sp                                ; $7c52: $08 $b7 $2a
    nop                                           ; $7c55: $00
    or a                                          ; $7c56: $b7
    ld [bc], a                                    ; $7c57: $02
    db $10                                        ; $7c58: $10
    cp a                                          ; $7c59: $bf
    nop                                           ; $7c5a: $00
    cp $d8                                        ; $7c5b: $fe $d8
    and b                                         ; $7c5d: $a0
    db $db                                        ; $7c5e: $db
    xor h                                         ; $7c5f: $ac
    db $d3                                        ; $7c60: $d3
    or b                                          ; $7c61: $b0
    rst $10                                       ; $7c62: $d7
    ld b, b                                       ; $7c63: $40
    or b                                          ; $7c64: $b0
    inc b                                         ; $7c65: $04
    jr z, @+$3a                                   ; $7c66: $28 $38

    nop                                           ; $7c68: $00
    sbc b                                         ; $7c69: $98
    ld b, d                                       ; $7c6a: $42
    ret z                                         ; $7c6b: $c8

    ld hl, $c802                                  ; $7c6c: $21 $02 $c8
    inc hl                                        ; $7c6f: $23
    ret z                                         ; $7c70: $c8

    ld hl, $22c9                                  ; $7c71: $21 $c9 $22
    ld b, $00                                     ; $7c74: $06 $00
    inc hl                                        ; $7c76: $23
    add b                                         ; $7c77: $80

jr_09b_7c78:
    jr nc, jr_09b_7c81                            ; $7c78: $30 $07

    ccf                                           ; $7c7a: $3f
    jr z, jr_09b_7cc4                             ; $7c7b: $28 $47

    ld d, l                                       ; $7c7d: $55
    xor d                                         ; $7c7e: $aa
    ld a, [bc]                                    ; $7c7f: $0a
    push af                                       ; $7c80: $f5

jr_09b_7c81:
    nop                                           ; $7c81: $00
    ld b, c                                       ; $7c82: $41
    cp [hl]                                       ; $7c83: $be
    xor b                                         ; $7c84: $a8
    ld d, a                                       ; $7c85: $57
    dec d                                         ; $7c86: $15
    ld [$ff00], a                                 ; $7c87: $ea $00 $ff
    nop                                           ; $7c8a: $00
    ld d, h                                       ; $7c8b: $54
    xor e                                         ; $7c8c: $ab
    ld [$40f4], sp                                ; $7c8d: $08 $f4 $40
    cp a                                          ; $7c90: $bf
    xor b                                         ; $7c91: $a8
    ld d, a                                       ; $7c92: $57
    ld [bc], a                                    ; $7c93: $02
    ld d, h                                       ; $7c94: $54
    xor e                                         ; $7c95: $ab
    ld hl, $00de                                  ; $7c96: $21 $de $00
    rst $38                                       ; $7c99: $ff
    inc a                                         ; $7c9a: $3c
    ld [$00db], sp                                ; $7c9b: $08 $db $00
    cp b                                          ; $7c9e: $b8
    sub $b6                                       ; $7c9f: $d6 $b6
    adc b                                         ; $7ca1: $88
    jp hl                                         ; $7ca2: $e9


    add a                                         ; $7ca3: $87
    rst $00                                       ; $7ca4: $c7
    sbc a                                         ; $7ca5: $9f
    nop                                           ; $7ca6: $00
    and b                                         ; $7ca7: $a0
    adc d                                         ; $7ca8: $8a
    ret nz                                        ; $7ca9: $c0

    ret z                                         ; $7caa: $c8

    inc hl                                        ; $7cab: $23
    ret                                           ; $7cac: $c9


    jr nz, jr_09b_7cb7                            ; $7cad: $20 $08

    nop                                           ; $7caf: $00
    jp $a188                                      ; $7cb0: $c3 $88 $a1


    jr jr_09b_7c78                                ; $7cb3: $18 $c3

    ld a, b                                       ; $7cb5: $78
    ld b, d                                       ; $7cb6: $42

jr_09b_7cb7:
    ld hl, sp+$20                                 ; $7cb7: $f8 $20
    nop                                           ; $7cb9: $00
    xor b                                         ; $7cba: $a8
    ld e, e                                       ; $7cbb: $5b
    ld b, $54                                     ; $7cbc: $06 $54
    xor e                                         ; $7cbe: $ab
    ld a, [hl+]                                   ; $7cbf: $2a
    push de                                       ; $7cc0: $d5
    ld bc, $be01                                  ; $7cc1: $01 $01 $be

jr_09b_7cc4:
    nop                                           ; $7cc4: $00
    ld h, a                                       ; $7cc5: $67
    nop                                           ; $7cc6: $00
    sbc a                                         ; $7cc7: $9f
    nop                                           ; $7cc8: $00
    ld a, a                                       ; $7cc9: $7f
    sub $05                                       ; $7cca: $d6 $05
    nop                                           ; $7ccc: $00
    rst $38                                       ; $7ccd: $ff
    ld b, h                                       ; $7cce: $44
    cp e                                          ; $7ccf: $bb
    xor d                                         ; $7cd0: $aa
    ld d, l                                       ; $7cd1: $55
    ld d, l                                       ; $7cd2: $55
    xor d                                         ; $7cd3: $aa
    and b                                         ; $7cd4: $a0
    db $10                                        ; $7cd5: $10
    ld e, a                                       ; $7cd6: $5f
    nop                                           ; $7cd7: $00
    db $fc                                        ; $7cd8: $fc
    adc h                                         ; $7cd9: $8c
    rlca                                          ; $7cda: $07
    ld d, l                                       ; $7cdb: $55
    sbc a                                         ; $7cdc: $9f
    ldh [$df], a                                  ; $7cdd: $e0 $df
    nop                                           ; $7cdf: $00
    and b                                         ; $7ce0: $a0
    sbc a                                         ; $7ce1: $9f
    ldh a, [$df]                                  ; $7ce2: $f0 $df
    or h                                          ; $7ce4: $b4
    sbc a                                         ; $7ce5: $9f
    ld hl, sp-$21                                 ; $7ce6: $f8 $df
    nop                                           ; $7ce8: $00
    cp a                                          ; $7ce9: $bf
    sub l                                         ; $7cea: $95

jr_09b_7ceb:
    rst $38                                       ; $7ceb: $ff
    rst $18                                       ; $7cec: $df
    cp a                                          ; $7ced: $bf
    db $fc                                        ; $7cee: $fc
    rlca                                          ; $7cef: $07
    db $fd                                        ; $7cf0: $fd
    adc h                                         ; $7cf1: $8c
    ld [bc], a                                    ; $7cf2: $02
    ld [$ff17], sp                                ; $7cf3: $08 $17 $ff
    rrca                                          ; $7cf6: $0f
    ldh [rNR24], a                                ; $7cf7: $e0 $19
    ld l, [hl]                                    ; $7cf9: $6e
    ld e, $12                                     ; $7cfa: $1e $12
    rst $38                                       ; $7cfc: $ff
    ld l, d                                       ; $7cfd: $6a
    inc b                                         ; $7cfe: $04
    ldh a, [rNR42]                                ; $7cff: $f0 $21
    cp e                                          ; $7d01: $bb
    ld c, $20                                     ; $7d02: $0e $20
    stop                                          ; $7d04: $10 $00

Call_09b_7d06:
    inc d                                         ; $7d06: $14
    db $10                                        ; $7d07: $10
    jr z, @+$04                                   ; $7d08: $28 $02

    inc h                                         ; $7d0a: $24
    ld b, $05                                     ; $7d0b: $06 $05
    ld [bc], a                                    ; $7d0d: $02
    ld c, b                                       ; $7d0e: $48
    ld c, $ed                                     ; $7d0f: $0e $ed
    stop                                          ; $7d11: $10 $00
    db $ed                                        ; $7d13: $ed
    ld b, $00                                     ; $7d14: $06 $00
    push de                                       ; $7d16: $d5
    ld b, $fd                                     ; $7d17: $06 $fd
    add [hl]                                      ; $7d19: $86
    ld [hl], l                                    ; $7d1a: $75
    ld b, [hl]                                    ; $7d1b: $46
    cp l                                          ; $7d1c: $bd
    ld b, $00                                     ; $7d1d: $06 $00
    push af                                       ; $7d1f: $f5
    ld b, $fd                                     ; $7d20: $06 $fd
    ld b, [hl]                                    ; $7d22: $46
    or l                                          ; $7d23: $b5
    and [hl]                                      ; $7d24: $a6
    ld e, l                                       ; $7d25: $5d
    inc b                                         ; $7d26: $04
    nop                                           ; $7d27: $00
    rst $30                                       ; $7d28: $f7
    inc b                                         ; $7d29: $04
    cp a                                          ; $7d2a: $bf
    inc b                                         ; $7d2b: $04
    push de                                       ; $7d2c: $d5
    inc b                                         ; $7d2d: $04
    ld c, $04                                     ; $7d2e: $0e $04
    nop                                           ; $7d30: $00
    ld d, l                                       ; $7d31: $55
    inc b                                         ; $7d32: $04
    rst $38                                       ; $7d33: $ff
    ld b, $fd                                     ; $7d34: $06 $fd
    inc d                                         ; $7d36: $14
    rst $38                                       ; $7d37: $ff
    ld d, $02                                     ; $7d38: $16 $02
    db $fd                                        ; $7d3a: $fd
    inc c                                         ; $7d3b: $0c
    rst $38                                       ; $7d3c: $ff
    cp $fd                                        ; $7d3d: $fe $fd
    ld d, h                                       ; $7d3f: $54
    inc b                                         ; $7d40: $04
    nop                                           ; $7d41: $00
    add b                                         ; $7d42: $80
    ld h, b                                       ; $7d43: $60
    ldh [rSC], a                                  ; $7d44: $e0 $02
    ld c, b                                       ; $7d46: $48
    inc [hl]                                      ; $7d47: $34
    rlca                                          ; $7d48: $07
    add b                                         ; $7d49: $80
    ld [bc], a                                    ; $7d4a: $02
    ld a, a                                       ; $7d4b: $7f
    add l                                         ; $7d4c: $85
    db $fd                                        ; $7d4d: $fd
    inc b                                         ; $7d4e: $04
    rlca                                          ; $7d4f: $07
    ld a, a                                       ; $7d50: $7f
    add d                                         ; $7d51: $82
    rst $38                                       ; $7d52: $ff
    ld [bc], a                                    ; $7d53: $02
    inc b                                         ; $7d54: $04
    nop                                           ; $7d55: $00
    dec b                                         ; $7d56: $05
    ld a, l                                       ; $7d57: $7d
    jr z, @+$03                                   ; $7d58: $28 $01

    ld bc, $048c                                  ; $7d5a: $01 $8c $04
    rst $38                                       ; $7d5d: $ff
    inc b                                         ; $7d5e: $04
    jr c, jr_09b_7ceb                             ; $7d5f: $38 $8a

    db $fc                                        ; $7d61: $fc
    dec bc                                        ; $7d62: $0b
    nop                                           ; $7d63: $00
    ld a, h                                       ; $7d64: $7c
    adc c                                         ; $7d65: $89
    xor $11                                       ; $7d66: $ee $11
    ld [hl], d                                    ; $7d68: $72
    adc a                                         ; $7d69: $8f
    rst $28                                       ; $7d6a: $ef
    nop                                           ; $7d6b: $00
    ld h, b                                       ; $7d6c: $60
    ld [hl], b                                    ; $7d6d: $70
    sbc a                                         ; $7d6e: $9f
    dec b                                         ; $7d6f: $05
    jp nz, $8005                                  ; $7d70: $c2 $05 $80

    cp $81                                        ; $7d73: $fe $81
    cp a                                          ; $7d75: $bf
    ld b, b                                       ; $7d76: $40
    dec e                                         ; $7d77: $1d
    ld a, [hl]                                    ; $7d78: $7e
    add c                                         ; $7d79: $81
    cp a                                          ; $7d7a: $bf
    jr z, jr_09b_7d85                             ; $7d7b: $28 $08

    ld l, $02                                     ; $7d7d: $2e $02
    ld b, b                                       ; $7d7f: $40
    dec b                                         ; $7d80: $05
    ret nz                                        ; $7d81: $c0

    ld [bc], a                                    ; $7d82: $02
    db $10                                        ; $7d83: $10
    db $ec                                        ; $7d84: $ec

jr_09b_7d85:
    ld a, [hl-]                                   ; $7d85: $3a
    ld a, [bc]                                    ; $7d86: $0a
    sbc $03                                       ; $7d87: $de $03
    ld [hl], l                                    ; $7d89: $75
    dec b                                         ; $7d8a: $05
    inc bc                                        ; $7d8b: $03
    ld [bc], a                                    ; $7d8c: $02
    db $10                                        ; $7d8d: $10
    ld [$ff0b], a                                 ; $7d8e: $ea $0b $ff
    rst $38                                       ; $7d91: $ff
    jr nz, jr_09b_7d98                            ; $7d92: $20 $04

    rlca                                          ; $7d94: $07
    ld [bc], a                                    ; $7d95: $02
    ld c, b                                       ; $7d96: $48
    ld [bc], a                                    ; $7d97: $02

jr_09b_7d98:
    ld [bc], a                                    ; $7d98: $02
    jr nz, @+$37                                  ; $7d99: $20 $35

    ld e, a                                       ; $7d9b: $5f
    ld bc, $9f40                                  ; $7d9c: $01 $40 $9f
    and b                                         ; $7d9f: $a0
    cp a                                          ; $7da0: $bf
    ret nz                                        ; $7da1: $c0

    sbc a                                         ; $7da2: $9f
    ldh [rDIV], a                                 ; $7da3: $e0 $04
    ld [$af00], sp                                ; $7da5: $08 $00 $af
    ret nc                                        ; $7da8: $d0

    sub a                                         ; $7da9: $97
    add sp, -$80                                  ; $7daa: $e8 $80
    cp a                                          ; $7dac: $bf
    ret nz                                        ; $7dad: $c0

    jp z, Jump_09b_7520                           ; $7dae: $ca $20 $75

    ld [hl], l                                    ; $7db1: $75
    sub [hl]                                      ; $7db2: $96
    dec b                                         ; $7db3: $05
    ld b, l                                       ; $7db4: $45
    ld b, c                                       ; $7db5: $41
    ld e, [hl]                                    ; $7db6: $5e
    ld b, d                                       ; $7db7: $42
    ld l, l                                       ; $7db8: $6d
    nop                                           ; $7db9: $00
    ld b, c                                       ; $7dba: $41
    ld e, [hl]                                    ; $7dbb: $5e
    jp nz, $c1ed                                  ; $7dbc: $c2 $ed $c1

    sbc $c2                                       ; $7dbf: $de $c2
    db $ed                                        ; $7dc1: $ed
    nop                                           ; $7dc2: $00
    ret nz                                        ; $7dc3: $c0

    rst $18                                       ; $7dc4: $df
    pop hl                                        ; $7dc5: $e1
    rst $28                                       ; $7dc6: $ef
    ld hl, sp-$06                                 ; $7dc7: $f8 $fa
    ld a, h                                       ; $7dc9: $7c
    ld a, h                                       ; $7dca: $7c
    inc bc                                        ; $7dcb: $03
    inc b                                         ; $7dcc: $04
    ld d, h                                       ; $7dcd: $54
    ld a, [$fd06]                                 ; $7dce: $fa $06 $fd
    ld bc, $0605                                  ; $7dd1: $01 $05 $06
    ld sp, $910c                                  ; $7dd4: $31 $0c $91
    ld [$f900], sp                                ; $7dd7: $08 $00 $f9
    rlca                                          ; $7dda: $07
    dec c                                         ; $7ddb: $0d
    nop                                           ; $7ddc: $00
    xor e                                         ; $7ddd: $ab
    ld d, [hl]                                    ; $7dde: $56
    ld d, [hl]                                    ; $7ddf: $56
    ld h, $05                                     ; $7de0: $26 $05
    ld [de], a                                    ; $7de2: $12
    ld d, d                                       ; $7de3: $52
    ld a, [c]                                     ; $7de4: $f2
    ld a, [bc]                                    ; $7de5: $0a
    ld [bc], a                                    ; $7de6: $02

jr_09b_7de7:
    ld [$0bf3], sp                                ; $7de7: $08 $f3 $0b
    ld [bc], a                                    ; $7dea: $02
    db $10                                        ; $7deb: $10
    db $eb                                        ; $7dec: $eb
    nop                                           ; $7ded: $00
    rst $30                                       ; $7dee: $f7
    rst $30                                       ; $7def: $f7
    rst $28                                       ; $7df0: $ef
    rst $28                                       ; $7df1: $ef
    ld a, $3e                                     ; $7df2: $3e $3e
    db $f4                                        ; $7df4: $f4
    cp a                                          ; $7df5: $bf
    call c, Call_000_0210                         ; $7df6: $dc $10 $02
    inc b                                         ; $7df9: $04
    jr nz, @-$02                                  ; $7dfa: $20 $fc

    halt                                          ; $7dfc: $76
    ld [bc], a                                    ; $7dfd: $02
    db $10                                        ; $7dfe: $10
    ld a, [hl-]                                   ; $7dff: $3a
    jr jr_09b_7e0c                                ; $7e00: $18 $0a

    sbc c                                         ; $7e02: $99
    rst $38                                       ; $7e03: $ff
    adc d                                         ; $7e04: $8a

Call_09b_7e05:
    jr nz, @+$2a                                  ; $7e05: $20 $28

    or $bf                                        ; $7e07: $f6 $bf
    rst $30                                       ; $7e09: $f7
    sub h                                         ; $7e0a: $94
    ld [bc], a                                    ; $7e0b: $02

jr_09b_7e0c:
    rst $38                                       ; $7e0c: $ff
    jr nz, jr_09b_7e0f                            ; $7e0d: $20 $00

jr_09b_7e0f:
    sbc c                                         ; $7e0f: $99
    cp c                                          ; $7e10: $b9
    jr nz, jr_09b_7e43                            ; $7e11: $20 $30

    rst $18                                       ; $7e13: $df
    ld a, [hl-]                                   ; $7e14: $3a
    ld [bc], a                                    ; $7e15: $02
    jr nc, @+$3c                                  ; $7e16: $30 $3a

    inc [hl]                                      ; $7e18: $34
    ld a, [bc]                                    ; $7e19: $0a
    ccf                                           ; $7e1a: $3f
    cp $24                                        ; $7e1b: $fe $24
    ld [$ff29], sp                                ; $7e1d: $08 $29 $ff
    cp a                                          ; $7e20: $bf
    ldh a, [$0a]                                  ; $7e21: $f0 $0a
    ret nz                                        ; $7e23: $c0

    dec sp                                        ; $7e24: $3b
    add hl, bc                                    ; $7e25: $09
    and b                                         ; $7e26: $a0
    db $fd                                        ; $7e27: $fd
    ret nz                                        ; $7e28: $c0

    ld [bc], a                                    ; $7e29: $02
    reti                                          ; $7e2a: $d9


    ldh a, [$0a]                                  ; $7e2b: $f0 $0a
    ld [bc], a                                    ; $7e2d: $02
    jr z, jr_09b_7de7                             ; $7e2e: $28 $b7

    ret nz                                        ; $7e30: $c0

    ld [bc], a                                    ; $7e31: $02
    ldh a, [$0a]                                  ; $7e32: $f0 $0a
    inc bc                                        ; $7e34: $03
    ld [bc], a                                    ; $7e35: $02
    jp hl                                         ; $7e36: $e9


    nop                                           ; $7e37: $00
    ld a, l                                       ; $7e38: $7d
    ld b, $c3                                     ; $7e39: $06 $c3
    rla                                           ; $7e3b: $17
    ld a, [c]                                     ; $7e3c: $f2
    inc h                                         ; $7e3d: $24
    cp $1c                                        ; $7e3e: $fe $1c
    push af                                       ; $7e40: $f5
    inc b                                         ; $7e41: $04
    ld sp, hl                                     ; $7e42: $f9

jr_09b_7e43:
    inc c                                         ; $7e43: $0c
    ld d, l                                       ; $7e44: $55
    inc b                                         ; $7e45: $04
    stop                                          ; $7e46: $10 $00
    rst $38                                       ; $7e48: $ff
    rst $38                                       ; $7e49: $ff
    ld d, l                                       ; $7e4a: $55
    ld bc, $ff00                                  ; $7e4b: $01 $00 $ff
    ld a, a                                       ; $7e4e: $7f
    ld l, [hl]                                    ; $7e4f: $6e

jr_09b_7e50:
    ld sp, $0843                                  ; $7e50: $31 $43 $08
    rst $38                                       ; $7e53: $ff
    ld a, a                                       ; $7e54: $7f
    dec [hl]                                      ; $7e55: $35
    ld b, [hl]                                    ; $7e56: $46
    inc c                                         ; $7e57: $0c
    dec h                                         ; $7e58: $25
    inc bc                                        ; $7e59: $03
    inc b                                         ; $7e5a: $04
    sbc a                                         ; $7e5b: $9f
    ld [bc], a                                    ; $7e5c: $02
    ld a, a                                       ; $7e5d: $7f
    nop                                           ; $7e5e: $00
    inc d                                         ; $7e5f: $14
    nop                                           ; $7e60: $00
    ld b, $00                                     ; $7e61: $06 $00
    rst $38                                       ; $7e63: $ff
    ld a, a                                       ; $7e64: $7f
    rst $28                                       ; $7e65: $ef
    dec a                                         ; $7e66: $3d
    ld h, $29                                     ; $7e67: $26 $29
    ld bc, $3700                                  ; $7e69: $01 $00 $37
    ld [hl], a                                    ; $7e6c: $77
    ld c, $52                                     ; $7e6d: $0e $52

jr_09b_7e6f:
    ld c, b                                       ; $7e6f: $48
    add hl, sp                                    ; $7e70: $39
    ld b, c                                       ; $7e71: $41
    jr jr_09b_7e6f                                ; $7e72: $18 $fb

    ld l, e                                       ; $7e74: $6b
    ld l, [hl]                                    ; $7e75: $6e
    ld a, $a8                                     ; $7e76: $3e $a8
    ld hl, $0443                                  ; $7e78: $21 $43 $04
    ld a, e                                       ; $7e7b: $7b
    ld l, e                                       ; $7e7c: $6b
    xor $3d                                       ; $7e7d: $ee $3d
    ld a, [hl+]                                   ; $7e7f: $2a
    ld hl, $0c85                                  ; $7e80: $21 $85 $0c
    xor $3d                                       ; $7e83: $ee $3d
    ld a, [hl+]                                   ; $7e85: $2a
    ld hl, $0c85                                  ; $7e86: $21 $85 $0c
    ld bc, $0100                                  ; $7e89: $01 $00 $01
    nop                                           ; $7e8c: $00
    rst $38                                       ; $7e8d: $ff
    ld a, a                                       ; $7e8e: $7f
    adc [hl]                                      ; $7e8f: $8e
    ld sp, $0c64                                  ; $7e90: $31 $64 $0c
    ret c                                         ; $7e93: $d8

    ld [hl], d                                    ; $7e94: $72
    ld sp, $6a5a                                  ; $7e95: $31 $5a $6a
    dec a                                         ; $7e98: $3d
    jp Jump_000_3124                              ; $7e99: $c3 $24 $31


    ld e, d                                       ; $7e9c: $5a
    cp l                                          ; $7e9d: $bd
    ld [hl], a                                    ; $7e9e: $77
    call Call_000_0039                            ; $7e9f: $cd $39 $00
    nop                                           ; $7ea2: $00
    ld sp, $de5a                                  ; $7ea3: $31 $5a $de
    ld [hl+], a                                   ; $7ea6: $22
    inc de                                        ; $7ea7: $13
    dec c                                         ; $7ea8: $0d
    ld [hl+], a                                   ; $7ea9: $22
    nop                                           ; $7eaa: $00
    ld sp, $7f5a                                  ; $7eab: $31 $5a $7f
    inc bc                                        ; $7eae: $03
    ld a, b                                       ; $7eaf: $78
    nop                                           ; $7eb0: $00
    inc bc                                        ; $7eb1: $03
    nop                                           ; $7eb2: $00
    call c, Call_000_3162                         ; $7eb3: $dc $62 $31
    ld e, d                                       ; $7eb6: $5a
    ld l, [hl]                                    ; $7eb7: $6e
    dec l                                         ; $7eb8: $2d
    rst $00                                       ; $7eb9: $c7
    inc d                                         ; $7eba: $14
    ld e, a                                       ; $7ebb: $5f
    rra                                           ; $7ebc: $1f
    add hl, de                                    ; $7ebd: $19
    ld a, [de]                                    ; $7ebe: $1a
    db $d3                                        ; $7ebf: $d3
    jr z, jr_09b_7f27                             ; $7ec0: $28 $65

    jr jr_09b_7e50                                ; $7ec2: $18 $8c

    ld d, c                                       ; $7ec4: $51

jr_09b_7ec5:
    ld l, c                                       ; $7ec5: $69
    ld b, c                                       ; $7ec6: $41
    add d                                         ; $7ec7: $82
    inc h                                         ; $7ec8: $24
    ld b, b                                       ; $7ec9: $40
    inc c                                         ; $7eca: $0c
    ld bc, $ff00                                  ; $7ecb: $01 $00 $ff
    ld a, a                                       ; $7ece: $7f
    ld l, [hl]                                    ; $7ecf: $6e
    ld sp, $0c64                                  ; $7ed0: $31 $64 $0c
    ld a, [de]                                    ; $7ed3: $1a
    ld [hl], a                                    ; $7ed4: $77
    rst $08                                       ; $7ed5: $cf
    ld d, c                                       ; $7ed6: $51
    jp z, Jump_000_2330                           ; $7ed7: $ca $30 $23

    db $10                                        ; $7eda: $10
    cp $7a                                        ; $7edb: $fe $7a
    ld h, $02                                     ; $7edd: $26 $02
    db $fc                                        ; $7edf: $fc
    ld [bc], a                                    ; $7ee0: $02
    ld h, a                                       ; $7ee1: $67
    inc h                                         ; $7ee2: $24

jr_09b_7ee3:
    cp l                                          ; $7ee3: $bd
    ld [hl], a                                    ; $7ee4: $77
    ld [hl], b                                    ; $7ee5: $70
    ld [hl-], a                                   ; $7ee6: $32
    ld l, d                                       ; $7ee7: $6a
    dec c                                         ; $7ee8: $0d
    and l                                         ; $7ee9: $a5
    ld [$1598], sp                                ; $7eea: $08 $98 $15
    jr z, jr_09b_7f52                             ; $7eed: $28 $63

    add d                                         ; $7eef: $82
    add hl, sp                                    ; $7ef0: $39
    ld b, c                                       ; $7ef1: $41
    inc c                                         ; $7ef2: $0c
    cp a                                          ; $7ef3: $bf
    ld b, e                                       ; $7ef4: $43
    sub a                                         ; $7ef5: $97
    dec d                                         ; $7ef6: $15
    sub a                                         ; $7ef7: $97
    jr nz, jr_09b_7ec5                            ; $7ef8: $20 $cb

    inc [hl]                                      ; $7efa: $34
    cp a                                          ; $7efb: $bf
    ld [hl+], a                                   ; $7efc: $22
    sub a                                         ; $7efd: $97
    dec d                                         ; $7efe: $15
    adc a                                         ; $7eff: $8f

Jump_09b_7f00:
    jr @+$49                                      ; $7f00: $18 $47

    db $10                                        ; $7f02: $10
    or a                                          ; $7f03: $b7
    ld bc, $008f                                  ; $7f04: $01 $8f $00

Call_09b_7f07:
    rlca                                          ; $7f07: $07
    nop                                           ; $7f08: $00
    nop                                           ; $7f09: $00
    nop                                           ; $7f0a: $00
    ld bc, $ff00                                  ; $7f0b: $01 $00 $ff
    ld a, a                                       ; $7f0e: $7f
    dec d                                         ; $7f0f: $15
    ld d, h                                       ; $7f10: $54
    ld bc, $4e18                                  ; $7f11: $01 $18 $4e
    ld l, [hl]                                    ; $7f14: $6e
    ld c, c                                       ; $7f15: $49
    ld c, c                                       ; $7f16: $49
    and l                                         ; $7f17: $a5
    jr nc, @+$03                                  ; $7f18: $30 $01

    jr jr_09b_7f9b                                ; $7f1a: $18 $7f

    ld d, [hl]                                    ; $7f1c: $56
    rst $10                                       ; $7f1d: $d7
    ld b, l                                       ; $7f1e: $45
    ld c, $31                                     ; $7f1f: $0e $31
    ld h, [hl]                                    ; $7f21: $66
    jr nz, jr_09b_7ee3                            ; $7f22: $20 $bf

    inc bc                                        ; $7f24: $03
    cp b                                          ; $7f25: $b8
    dec e                                         ; $7f26: $1d

jr_09b_7f27:
    jp z, $0110                                   ; $7f27: $ca $10 $01

    inc c                                         ; $7f2a: $0c
    dec a                                         ; $7f2b: $3d
    ld b, e                                       ; $7f2c: $43
    db $db                                        ; $7f2d: $db
    dec c                                         ; $7f2e: $0d
    ld l, $0d                                     ; $7f2f: $2e $0d
    ld [hl+], a                                   ; $7f31: $22
    nop                                           ; $7f32: $00
    ld a, e                                       ; $7f33: $7b
    ld a, [hl]                                    ; $7f34: $7e
    db $d3                                        ; $7f35: $d3
    ld c, l                                       ; $7f36: $4d
    ld a, [bc]                                    ; $7f37: $0a
    add hl, sp                                    ; $7f38: $39
    ld h, h                                       ; $7f39: $64
    jr z, jr_09b_7fb3                             ; $7f3a: $28 $77

    dec a                                         ; $7f3c: $3d
    rst $08                                       ; $7f3d: $cf
    inc l                                         ; $7f3e: $2c
    ld b, $18                                     ; $7f3f: $06 $18
    nop                                           ; $7f41: $00
    ld [$630d], sp                                ; $7f42: $08 $0d $63
    ld [c], a                                     ; $7f45: $e2
    dec a                                         ; $7f46: $3d
    ld bc, $6021                                  ; $7f47: $01 $21 $60
    db $10                                        ; $7f4a: $10
    ld bc, $ff00                                  ; $7f4b: $01 $00 $ff
    ld a, a                                       ; $7f4e: $7f
    ld h, l                                       ; $7f4f: $65
    add hl, de                                    ; $7f50: $19
    inc b                                         ; $7f51: $04

jr_09b_7f52:
    nop                                           ; $7f52: $00
    sbc $7f                                       ; $7f53: $de $7f
    ld [hl], c                                    ; $7f55: $71
    ld e, d                                       ; $7f56: $5a
    ld c, b                                       ; $7f57: $48
    add hl, sp                                    ; $7f58: $39
    and e                                         ; $7f59: $a3
    inc e                                         ; $7f5a: $1c
    ld a, c                                       ; $7f5b: $79
    ld l, $f2                                     ; $7f5c: $2e $f2
    inc l                                         ; $7f5e: $2c
    inc c                                         ; $7f5f: $0c
    inc a                                         ; $7f60: $3c
    ld b, l                                       ; $7f61: $45
    inc e                                         ; $7f62: $1c
    or c                                          ; $7f63: $b1
    dec c                                         ; $7f64: $0d
    xor d                                         ; $7f65: $aa
    inc d                                         ; $7f66: $14
    inc b                                         ; $7f67: $04
    inc e                                         ; $7f68: $1c
    nop                                           ; $7f69: $00
    nop                                           ; $7f6a: $00
    sbc l                                         ; $7f6b: $9d
    dec sp                                        ; $7f6c: $3b
    inc d                                         ; $7f6d: $14
    ld a, [hl-]                                   ; $7f6e: $3a
    ld l, b                                       ; $7f6f: $68
    dec [hl]                                      ; $7f70: $35
    and e                                         ; $7f71: $a3
    jr z, jr_09b_7fbe                             ; $7f72: $28 $4a

    inc [hl]                                      ; $7f74: $34
    jp c, $ee42                                   ; $7f75: $da $42 $ee

    inc c                                         ; $7f78: $0c
    inc hl                                        ; $7f79: $23
    nop                                           ; $7f7a: $00
    ld l, h                                       ; $7f7b: $6c
    inc a                                         ; $7f7c: $3c
    ld a, a                                       ; $7f7d: $7f
    ld b, a                                       ; $7f7e: $47
    sub e                                         ; $7f7f: $93
    dec e                                         ; $7f80: $1d
    add a                                         ; $7f81: $87
    ld [$2c08], sp                                ; $7f82: $08 $08 $2c
    ld [hl], a                                    ; $7f85: $77
    ld [hl], $8b                                  ; $7f86: $36 $8b
    inc b                                         ; $7f88: $04
    ld bc, $0100                                  ; $7f89: $01 $00 $01
    nop                                           ; $7f8c: $00
    rst $38                                       ; $7f8d: $ff
    ld a, a                                       ; $7f8e: $7f
    ld h, l                                       ; $7f8f: $65
    add hl, de                                    ; $7f90: $19
    inc b                                         ; $7f91: $04
    nop                                           ; $7f92: $00
    ld a, [hl]                                    ; $7f93: $7e
    inc bc                                        ; $7f94: $03
    inc e                                         ; $7f95: $1c
    inc d                                         ; $7f96: $14
    ld c, $30                                     ; $7f97: $0e $30
    inc hl                                        ; $7f99: $23
    inc d                                         ; $7f9a: $14

jr_09b_7f9b:
    ld a, d                                       ; $7f9b: $7a
    inc bc                                        ; $7f9c: $03
    db $10                                        ; $7f9d: $10
    ld [hl+], a                                   ; $7f9e: $22
    adc e                                         ; $7f9f: $8b
    ld b, b                                       ; $7fa0: $40
    ld hl, $ff14                                  ; $7fa1: $21 $14 $ff
    ld b, [hl]                                    ; $7fa4: $46
    rla                                           ; $7fa5: $17
    ld e, $2e                                     ; $7fa6: $1e $2e
    dec d                                         ; $7fa8: $15
    ld h, l                                       ; $7fa9: $65
    nop                                           ; $7faa: $00
    inc [hl]                                      ; $7fab: $34
    ld e, [hl]                                    ; $7fac: $5e
    rst $28                                       ; $7fad: $ef
    ccf                                           ; $7fae: $3f
    add l                                         ; $7faf: $85
    ld sp, $1060                                  ; $7fb0: $31 $60 $10

jr_09b_7fb3:
    sbc [hl]                                      ; $7fb3: $9e
    ld h, a                                       ; $7fb4: $67
    scf                                           ; $7fb5: $37
    ld c, [hl]                                    ; $7fb6: $4e
    adc [hl]                                      ; $7fb7: $8e
    add hl, sp                                    ; $7fb8: $39
    ret                                           ; $7fb9: $c9


    db $10                                        ; $7fba: $10
    sbc d                                         ; $7fbb: $9a
    ld [hl], a                                    ; $7fbc: $77
    inc sp                                        ; $7fbd: $33

jr_09b_7fbe:
    ld e, [hl]                                    ; $7fbe: $5e
    ld c, $49                                     ; $7fbf: $0e $49
    ld c, c                                       ; $7fc1: $49
    jr nc, @-$10                                  ; $7fc2: $30 $ee

    ld c, l                                       ; $7fc4: $4d
    add hl, hl                                    ; $7fc5: $29
    ld b, l                                       ; $7fc6: $45
    inc b                                         ; $7fc7: $04
    jr nc, jr_09b_7fcb                            ; $7fc8: $30 $01

    inc e                                         ; $7fca: $1c

jr_09b_7fcb:
    rrca                                          ; $7fcb: $0f
    nop                                           ; $7fcc: $00
    nop                                           ; $7fcd: $00
    rrca                                          ; $7fce: $0f
    nop                                           ; $7fcf: $00
    nop                                           ; $7fd0: $00
    dec de                                        ; $7fd1: $1b
    nop                                           ; $7fd2: $00
    ld [bc], a                                    ; $7fd3: $02
    dec de                                        ; $7fd4: $1b
    nop                                           ; $7fd5: $00
    ld [bc], a                                    ; $7fd6: $02
    dec de                                        ; $7fd7: $1b
    nop                                           ; $7fd8: $00
    ld [bc], a                                    ; $7fd9: $02
    rlca                                          ; $7fda: $07
    nop                                           ; $7fdb: $00
    ld d, b                                       ; $7fdc: $50
    nop                                           ; $7fdd: $00
    ld sp, $0700                                  ; $7fde: $31 $00 $07
    ld [bc], a                                    ; $7fe1: $02
    ld d, h                                       ; $7fe2: $54
    nop                                           ; $7fe3: $00
    ld a, a                                       ; $7fe4: $7f
    nop                                           ; $7fe5: $00
    ld [bc], a                                    ; $7fe6: $02
    nop                                           ; $7fe7: $00
    daa                                           ; $7fe8: $27
    ld bc, $00a7                                  ; $7fe9: $01 $a7 $00
    rst $38                                       ; $7fec: $ff
    rst $38                                       ; $7fed: $ff
    rst $38                                       ; $7fee: $ff
    rst $38                                       ; $7fef: $ff
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff
    xor l                                         ; $7ff2: $ad
    dec [hl]                                      ; $7ff3: $35
    call $a002                                    ; $7ff4: $cd $02 $a0
    ld e, l                                       ; $7ff7: $5d
    nop                                           ; $7ff8: $00
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
